; ModuleID = 'blender/source/blender/render/intern/source/rendercore.c'
source_filename = "blender/source/blender/render/intern/source/rendercore.c"
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
%struct.RenderPart = type { ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i32, i32, i32, i16, i16, i16, i16, ptr }
%struct.RenderResult = type { ptr, ptr, i32, i32, i16, i16, ptr, ptr, ptr, %struct.rcti, i32, i32, %struct.ListBase, %struct.rcti, ptr, i32, i32, i32, ptr }
%struct.ShadeSample = type { i32, [16 x ptr], [16 x %struct.ShadeInput], [16 x %struct.ShadeResult] }
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }
%struct.ShadeResult = type { [4 x float], [4 x float], float, float, float, [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float] }
%struct.ZbufSolidData = type { ptr, ptr, ptr }
%struct.RenderLayer = type { ptr, ptr, [74 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase }
%struct.PixStrMain = type { ptr, ptr, ptr, i32 }
%struct.RenderPass = type { ptr, ptr, i32, i32, [64 x i8], [8 x i8], ptr, i32, i32, i32 }
%struct.ObjectRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [2 x [3 x float]], i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], ptr, ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.PixStr = type { ptr, i32, i32, i32, i32, i16, i16 }
%struct.ZSpan = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, float, i32, i32, i32, float, ptr, ptr, ptr, ptr }
%struct.HaloRen = type { i16, i16, float, float, float, float, float, float, float, [3 x float], [3 x float], float, float, float, float, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, float, i32, i32, ptr, ptr }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.LampRen = type { ptr, ptr, float, float, float, [3 x float], i16, i32, float, float, float, float, float, float, float, float, float, i32, float, float, [3 x float], float, float, float, float, float, float, i16, float, float, ptr, i16, i16, float, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, [1 x i16], [1 x i16], float, float, float, float, ptr, ptr, ptr, [3 x [3 x float]], float, [3 x float], float, [4 x [4 x float]], [3 x [3 x float]], [8 x [3 x float]], float, ptr, [1 x ptr], [18 x ptr], i32, i32 }
%struct.ZBufSSSHandle = type { ptr, %struct.ListBase, i32 }
%struct.ObjectInstanceRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], [4 x [4 x float]], [3 x [3 x float]], i16, [3 x float], [2 x float], ptr, ptr, ptr, i32, ptr, i32 }

@R = external global %struct.Render, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"recto\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"rectp\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"rectz\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"rectmask\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"zbufDArectd\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"rectedge\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"alpha layer\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"rectbacko\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"rectbackp\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"rectbackz\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"SSSCo\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"SSSColor\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"SSSArea\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"pixstrMain\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"pixstr\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"solidmask\00", align 1
@hashvectf = external local_unnamed_addr constant [0 x float], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @calc_view_vector(ptr nocapture noundef writeonly %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 36), align 8
  %5 = fcmp olt float %4, 0.000000e+00
  %6 = fneg float %4
  %7 = select i1 %5, float %4, float %6
  %8 = getelementptr inbounds float, ptr %0, i64 2
  store float %7, ptr %8, align 4, !tbaa !34
  %9 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float 0.000000e+00, ptr %13, align 4, !tbaa !34
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  br label %47

14:                                               ; preds = %3
  %15 = and i32 %9, 1024
  %16 = icmp eq i32 %15, 0
  %17 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 28), align 8
  %18 = select i1 %16, float 0.000000e+00, float %17
  %19 = fsub float %1, %18
  %20 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !57
  %21 = sitofp i32 %20 to float
  %22 = fdiv float %19, %21
  %23 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 16), align 4, !tbaa !58
  %24 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 16, i32 1), align 8, !tbaa !59
  %25 = fsub float %24, %23
  %26 = tail call float @llvm.fmuladd.f32(float %22, float %25, float %23)
  store float %26, ptr %0, align 4, !tbaa !34
  %27 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !60
  %28 = sitofp i32 %27 to float
  %29 = fdiv float %2, %28
  %30 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 16, i32 2), align 4, !tbaa !61
  %31 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 16, i32 3), align 8, !tbaa !62
  %32 = fsub float %31, %30
  %33 = tail call float @llvm.fmuladd.f32(float %29, float %32, float %30)
  %34 = getelementptr inbounds float, ptr %0, i64 1
  store float %33, ptr %34, align 4, !tbaa !34
  br i1 %16, label %47, label %35

35:                                               ; preds = %14
  %36 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 29), align 4, !tbaa !63
  %37 = fadd float %26, %36
  %38 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 27), align 4, !tbaa !64
  %39 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 26), align 8, !tbaa !65
  %40 = fmul float %7, %39
  %41 = tail call float @llvm.fmuladd.f32(float %38, float %37, float %40)
  store float %41, ptr %0, align 4, !tbaa !34
  %42 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 26), align 8, !tbaa !65
  %43 = fneg float %42
  %44 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 27), align 4, !tbaa !64
  %45 = fmul float %7, %44
  %46 = tail call float @llvm.fmuladd.f32(float %43, float %37, float %45)
  store float %46, ptr %8, align 4, !tbaa !34
  br label %47

47:                                               ; preds = %14, %35, %12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @calc_renderco_ortho(ptr nocapture noundef writeonly %0, float noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !57
  %6 = sitofp i32 %5 to float
  %7 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35), align 8, !tbaa !34
  %8 = fmul float %7, %6
  %9 = fdiv float 2.000000e+00, %8
  %10 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !60
  %11 = sitofp i32 %10 to float
  %12 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 1, i64 1), align 4, !tbaa !34
  %13 = fmul float %12, %11
  %14 = fdiv float 2.000000e+00, %13
  %15 = tail call float @llvm.fmuladd.f32(float %6, float -5.000000e-01, float %1)
  %16 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 3), align 8, !tbaa !34
  %17 = fneg float %16
  %18 = fdiv float %17, %7
  %19 = tail call float @llvm.fmuladd.f32(float %15, float %9, float %18)
  store float %19, ptr %0, align 4, !tbaa !34
  %20 = tail call float @llvm.fmuladd.f32(float %11, float -5.000000e-01, float %2)
  %21 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 3, i64 1), align 4, !tbaa !34
  %22 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 1, i64 1), align 4, !tbaa !34
  %23 = fneg float %21
  %24 = fdiv float %23, %22
  %25 = tail call float @llvm.fmuladd.f32(float %20, float %14, float %24)
  %26 = getelementptr inbounds float, ptr %0, i64 1
  store float %25, ptr %26, align 4, !tbaa !34
  %27 = sitofp i32 %3 to float
  %28 = fmul float %27, 0x3E00000000000000
  %29 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 3, i64 2), align 8, !tbaa !34
  %30 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 2, i64 3), align 4, !tbaa !34
  %31 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 2, i64 2), align 8, !tbaa !34
  %32 = fneg float %31
  %33 = tail call float @llvm.fmuladd.f32(float %30, float %28, float %32)
  %34 = fdiv float %29, %33
  %35 = getelementptr inbounds float, ptr %0, i64 2
  store float %34, ptr %35, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @calc_renderco_zbuf(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = sitofp i32 %2 to float
  %5 = fmul float %4, 0x3E00000000000000
  %6 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 3, i64 2), align 8, !tbaa !34
  %7 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 2, i64 3), align 4, !tbaa !34
  %8 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 2, i64 2), align 8, !tbaa !34
  %9 = fneg float %8
  %10 = tail call float @llvm.fmuladd.f32(float %7, float %5, float %9)
  %11 = fdiv float %6, %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fdiv float %11, %14
  %16 = load float, ptr %1, align 4, !tbaa !34
  %17 = fmul float %15, %16
  store float %17, ptr %0, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fmul float %15, %19
  %21 = getelementptr inbounds float, ptr %0, i64 1
  store float %20, ptr %21, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @count_mask(i16 noundef zeroext %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 38), align 8, !tbaa !66
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = zext i16 %0 to i32
  %6 = and i32 %5, 255
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds %struct.SampleTables, ptr %2, i64 0, i32 3, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !67
  %10 = zext i8 %9 to i32
  %11 = lshr i32 %5, 8
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds %struct.SampleTables, ptr %2, i64 0, i32 3, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !67
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %15, %10
  br label %17

17:                                               ; preds = %1, %4
  %18 = phi i32 [ %16, %4 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_sample_layers(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = getelementptr inbounds %struct.RenderResult, ptr %9, i64 0, i32 12
  %11 = tail call i32 @BLI_findindex(ptr noundef nonnull %10, ptr noundef %1) #12
  %12 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %13 = sext i16 %12 to i32
  %14 = icmp sgt i16 %12, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %7, %15
  %16 = phi i64 [ %22, %15 ], [ 0, %7 ]
  %17 = trunc i64 %16 to i32
  %18 = tail call ptr @BLI_findlink(ptr noundef nonnull %4, i32 noundef %17) #12
  %19 = getelementptr inbounds %struct.RenderResult, ptr %18, i64 0, i32 12
  %20 = tail call ptr @BLI_findlink(ptr noundef nonnull %19, i32 noundef %11) #12
  %21 = getelementptr inbounds ptr, ptr %2, i64 %16
  store ptr %20, ptr %21, align 8, !tbaa !72
  %22 = add nuw nsw i64 %16, 1
  %23 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %24 = sext i16 %23 to i64
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %15, label %27, !llvm.loop !73

26:                                               ; preds = %3
  store ptr %1, ptr %2, align 8, !tbaa !72
  br label %29

27:                                               ; preds = %15
  %28 = sext i16 %23 to i32
  br label %29

29:                                               ; preds = %27, %7, %26
  %30 = phi i32 [ 1, %26 ], [ %13, %7 ], [ %28, %27 ]
  ret i32 %30
}

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @zbufshadeDA_tile(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca [16 x ptr], align 16
  %3 = alloca [4 x float], align 16
  %4 = alloca [16 x ptr], align 16
  %5 = alloca %struct.ShadeSample, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.ZbufSolidData, align 8
  %8 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %11 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %12 = load i32, ptr %11, align 8, !tbaa !76
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  %15 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %16 = load i32, ptr %15, align 4, !tbaa !77
  %17 = sext i32 %16 to i64
  %18 = mul i64 %14, %17
  %19 = tail call ptr %10(i64 noundef %18, ptr noundef nonnull @.str) #12
  %20 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 4
  store ptr %19, ptr %20, align 8, !tbaa !78
  %21 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %22 = load i32, ptr %11, align 8, !tbaa !76
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 2
  %25 = load i32, ptr %15, align 4, !tbaa !77
  %26 = sext i32 %25 to i64
  %27 = mul i64 %24, %26
  %28 = tail call ptr %21(i64 noundef %27, ptr noundef nonnull @.str.1) #12
  %29 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 5
  store ptr %28, ptr %29, align 8, !tbaa !79
  %30 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %31 = load i32, ptr %11, align 8, !tbaa !76
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 2
  %34 = load i32, ptr %15, align 4, !tbaa !77
  %35 = sext i32 %34 to i64
  %36 = mul i64 %33, %35
  %37 = tail call ptr %30(i64 noundef %36, ptr noundef nonnull @.str.2) #12
  %38 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 6
  store ptr %37, ptr %38, align 8, !tbaa !80
  %39 = getelementptr inbounds %struct.RenderResult, ptr %9, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !72
  %41 = icmp eq ptr %40, null
  br i1 %41, label %906, label %42

42:                                               ; preds = %1
  %43 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 7
  %44 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 8
  %45 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 19
  %46 = getelementptr inbounds %struct.ZbufSolidData, ptr %7, i64 0, i32 1
  %47 = getelementptr inbounds %struct.ZbufSolidData, ptr %7, i64 0, i32 2
  %48 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13
  %49 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 2
  %50 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 17
  %51 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 3
  %52 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 1
  %53 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 20
  %54 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 3
  %55 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 3
  %56 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 1
  %57 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 2
  %58 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 3
  %59 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 3
  %60 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 3
  %61 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 7
  br label %62

62:                                               ; preds = %42, %903
  %63 = phi ptr [ %40, %42 ], [ %904, %903 ]
  %64 = getelementptr inbounds %struct.RenderLayer, ptr %63, i64 0, i32 6
  %65 = load i32, ptr %64, align 8, !tbaa !81
  %66 = and i32 %65, 786432
  %67 = icmp eq i32 %66, 786432
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %70 = load i32, ptr %11, align 8, !tbaa !76
  %71 = sext i32 %70 to i64
  %72 = shl nsw i64 %71, 2
  %73 = load i32, ptr %15, align 4, !tbaa !77
  %74 = sext i32 %73 to i64
  %75 = mul i64 %72, %74
  %76 = call ptr %69(i64 noundef %75, ptr noundef nonnull @.str.3) #12
  store ptr %76, ptr %43, align 8, !tbaa !83
  br label %77

77:                                               ; preds = %68, %62
  %78 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %79 = call ptr %78(i64 noundef 32, ptr noundef nonnull @.str.13) #12
  call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %79) #12
  %80 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %81 = call ptr %80(i64 noundef 131072, ptr noundef nonnull @.str.14) #12
  %82 = getelementptr inbounds %struct.PixStrMain, ptr %79, i64 0, i32 2
  store ptr %81, ptr %82, align 8, !tbaa !84
  %83 = getelementptr inbounds %struct.PixStrMain, ptr %79, i64 0, i32 3
  store i32 0, ptr %83, align 8, !tbaa !86
  %84 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %85 = load i32, ptr %11, align 8, !tbaa !76
  %86 = sext i32 %85 to i64
  %87 = shl nsw i64 %86, 3
  %88 = load i32, ptr %15, align 4, !tbaa !77
  %89 = sext i32 %88 to i64
  %90 = mul i64 %87, %89
  %91 = or disjoint i64 %90, 4
  %92 = call ptr %84(i64 noundef %91, ptr noundef nonnull @.str.4) #12
  store ptr %92, ptr %44, align 8, !tbaa !87
  %93 = load i32, ptr %64, align 8, !tbaa !81
  %94 = and i32 %93, 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %109, label %96

96:                                               ; preds = %77
  %97 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %98 = and i32 %97, 32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %102 = load i32, ptr %11, align 8, !tbaa !76
  %103 = sext i32 %102 to i64
  %104 = shl nsw i64 %103, 2
  %105 = load i32, ptr %15, align 4, !tbaa !77
  %106 = sext i32 %105 to i64
  %107 = mul i64 %104, %106
  %108 = call ptr %101(i64 noundef %107, ptr noundef nonnull @.str.5) #12
  br label %109

109:                                              ; preds = %96, %100, %77
  %110 = phi ptr [ %108, %100 ], [ null, %96 ], [ null, %77 ]
  store i16 0, ptr %45, align 8, !tbaa !88
  %111 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %112 = icmp sgt i16 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %109, %118
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
  store ptr %63, ptr %7, align 8, !tbaa !89
  store ptr %6, ptr %46, align 8, !tbaa !91
  store ptr %110, ptr %47, align 8, !tbaa !92
  call void @zbuffer_solid(ptr noundef %0, ptr noundef nonnull %63, ptr noundef nonnull @make_pixelstructs, ptr noundef nonnull %7) #12
  %114 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !93
  %115 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !94
  %116 = call i32 %114(ptr noundef %115) #12
  %117 = icmp eq i32 %116, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load i16, ptr %45, align 8, !tbaa !88
  %120 = add i16 %119, 4
  store i16 %120, ptr %45, align 8, !tbaa !88
  %121 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %122 = icmp slt i16 %120, %121
  br i1 %122, label %113, label %123, !llvm.loop !95

123:                                              ; preds = %118, %113, %109
  %124 = load i32, ptr %64, align 8, !tbaa !81
  %125 = and i32 %124, 1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %474, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr %8, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 27080, ptr nonnull %5) #12
  %129 = load ptr, ptr %44, align 8, !tbaa !87
  %130 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !93
  %131 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !94
  %132 = call i32 %130(ptr noundef %131) #12
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %473

134:                                              ; preds = %127
  %135 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %136 = and i32 %135, 2
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  call void @ISB_create(ptr noundef %0, ptr noundef null) #12
  br label %139

139:                                              ; preds = %138, %134
  %140 = load i32, ptr %11, align 8, !tbaa !76
  %141 = load i32, ptr %49, align 8, !tbaa !96
  %142 = mul nsw i32 %141, %140
  call void @shade_sample_initialize(ptr noundef nonnull %5, ptr noundef %0, ptr noundef nonnull %63) #12
  %143 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 56), align 8, !tbaa !97
  %144 = icmp eq ptr %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %139
  call void @cache_occ_samples(ptr noundef nonnull @R, ptr noundef %0, ptr noundef nonnull %5) #12
  br label %146

146:                                              ; preds = %145, %139
  %147 = load i16, ptr %50, align 4, !tbaa !98
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %146
  %150 = load i32, ptr %11, align 8, !tbaa !76
  %151 = add nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, ptr %129, i64 %152
  br label %154

154:                                              ; preds = %149, %146
  %155 = phi i32 [ 1, %149 ], [ 0, %146 ]
  %156 = phi i32 [ %151, %149 ], [ 0, %146 ]
  %157 = phi ptr [ %153, %149 ], [ %129, %146 ]
  %158 = getelementptr inbounds %struct.RenderResult, ptr %128, i64 0, i32 13, i32 2
  store volatile i32 0, ptr %158, align 8, !tbaa !99
  %159 = mul nuw nsw i32 %155, -2
  %160 = getelementptr inbounds %struct.RenderResult, ptr %128, i64 0, i32 13, i32 3
  store volatile i32 %159, ptr %160, align 4, !tbaa !101
  %161 = getelementptr inbounds %struct.RenderResult, ptr %128, i64 0, i32 14
  store ptr %63, ptr %161, align 8, !tbaa !102
  %162 = load i32, ptr %49, align 8, !tbaa !96
  %163 = add nsw i32 %162, %155
  %164 = load i32, ptr %51, align 4, !tbaa !103
  %165 = sub nsw i32 %164, %155
  %166 = icmp slt i32 %163, %165
  br i1 %166, label %167, label %464

167:                                              ; preds = %154
  %168 = getelementptr inbounds %struct.RenderLayer, ptr %63, i64 0, i32 11
  %169 = getelementptr inbounds %struct.RenderLayer, ptr %63, i64 0, i32 18
  br label %170

170:                                              ; preds = %167, %457
  %171 = phi ptr [ %157, %167 ], [ %448, %457 ]
  %172 = phi i32 [ %156, %167 ], [ %449, %457 ]
  %173 = phi i32 [ %142, %167 ], [ %445, %457 ]
  %174 = phi i32 [ %163, %167 ], [ %458, %457 ]
  %175 = load i32, ptr %48, align 8, !tbaa !104
  %176 = add nsw i32 %175, %155
  %177 = load i32, ptr %52, align 4, !tbaa !105
  %178 = sub nsw i32 %177, %155
  %179 = icmp slt i32 %176, %178
  br i1 %179, label %180, label %444

180:                                              ; preds = %170
  %181 = sext i32 %172 to i64
  br label %182

182:                                              ; preds = %180, %437
  %183 = phi i64 [ %181, %180 ], [ %440, %437 ]
  %184 = phi ptr [ %171, %180 ], [ %439, %437 ]
  %185 = phi i32 [ %173, %180 ], [ %189, %437 ]
  %186 = phi i32 [ %176, %180 ], [ %438, %437 ]
  %187 = load i16, ptr %53, align 2, !tbaa !106
  %188 = sext i16 %187 to i32
  %189 = add nsw i32 %185, 1
  call void @BLI_thread_srandom(i32 noundef %188, i32 noundef %185) #12
  %190 = load i64, ptr %184, align 8, !tbaa !107
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %437, label %192

192:                                              ; preds = %182
  %193 = inttoptr i64 %190 to ptr
  %194 = call i32 @shade_samples(ptr noundef nonnull %5, ptr noundef nonnull %193, i32 noundef %186, i32 noundef %174) #12
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %437, label %196

196:                                              ; preds = %192
  %197 = load ptr, ptr %54, align 8, !tbaa !68
  %198 = icmp eq ptr %197, null
  %199 = load i32, ptr %5, align 8, !tbaa !109
  %200 = icmp sgt i32 %199, 0
  br i1 %198, label %204, label %201

201:                                              ; preds = %196
  br i1 %200, label %202, label %437

202:                                              ; preds = %201
  %203 = trunc i64 %183 to i32
  br label %210

204:                                              ; preds = %196
  br i1 %200, label %205, label %437

205:                                              ; preds = %204
  %206 = trunc i64 %183 to i32
  %207 = shl nsw i32 %206, 2
  %208 = sext i32 %207 to i64
  %209 = mul nsw i64 %183, 3
  br label %238

210:                                              ; preds = %202, %233
  %211 = phi i64 [ %234, %233 ], [ 0, %202 ]
  %212 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 2, i64 %211
  %213 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 2, i64 %211, i32 105
  %214 = load i32, ptr %213, align 4, !tbaa !111
  %215 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %216 = icmp sgt i16 %215, 0
  br i1 %216, label %217, label %233

217:                                              ; preds = %210
  %218 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 3, i64 %211
  br label %219

219:                                              ; preds = %217, %228
  %220 = phi i64 [ 0, %217 ], [ %229, %228 ]
  %221 = trunc i64 %220 to i32
  %222 = shl nuw i32 1, %221
  %223 = and i32 %222, %214
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %219
  %226 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 1, i64 %220
  %227 = load ptr, ptr %226, align 8, !tbaa !72
  call fastcc void @add_passes(ptr noundef %227, i32 noundef %203, ptr noundef nonnull %212, ptr noundef nonnull %218)
  br label %228

228:                                              ; preds = %225, %219
  %229 = add nuw nsw i64 %220, 1
  %230 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %231 = sext i16 %230 to i64
  %232 = icmp slt i64 %229, %231
  br i1 %232, label %219, label %233, !llvm.loop !113

233:                                              ; preds = %228, %210
  %234 = add nuw nsw i64 %211, 1
  %235 = load i32, ptr %5, align 8, !tbaa !109
  %236 = sext i32 %235 to i64
  %237 = icmp slt i64 %234, %236
  br i1 %237, label %210, label %437, !llvm.loop !114

238:                                              ; preds = %205, %432
  %239 = phi i64 [ 0, %205 ], [ %433, %432 ]
  %240 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 2, i64 %239
  %241 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 2, i64 %239, i32 105
  %242 = load i32, ptr %241, align 4, !tbaa !111
  %243 = load i32, ptr %11, align 8, !tbaa !76
  %244 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 3, i64 %239
  %245 = load ptr, ptr %168, align 8, !tbaa !115
  %246 = getelementptr inbounds float, ptr %245, i64 %208
  call void @add_filt_fmask(i32 noundef %242, ptr noundef nonnull %244, ptr noundef %246, i32 noundef %243) #12
  %247 = load ptr, ptr %169, align 8, !tbaa !72
  %248 = icmp eq ptr %247, null
  br i1 %248, label %432, label %249

249:                                              ; preds = %238
  %250 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 3, i64 %239, i32 17
  %251 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 3, i64 %239, i32 16
  %252 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 3, i64 %239, i32 16, i64 1
  %253 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 3, i64 %239, i32 16, i64 2
  %254 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 3, i64 %239, i32 16, i64 3
  %255 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 3, i64 %239, i32 3
  %256 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 2, i64 %239, i32 1
  %257 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 2, i64 %239, i32 1
  %258 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 2, i64 %239, i32 4
  %259 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 2, i64 %239, i32 74
  %260 = and i32 %242, 255
  %261 = zext nneg i32 %260 to i64
  %262 = lshr i32 %242, 8
  %263 = and i32 %262, 255
  %264 = zext nneg i32 %263 to i64
  %265 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 2, i64 %239, i32 76
  %266 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 3, i64 %239, i32 15
  %267 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 3, i64 %239, i32 14
  %268 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 3, i64 %239, i32 13
  %269 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 3, i64 %239, i32 12
  %270 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 3, i64 %239, i32 11
  %271 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 3, i64 %239, i32 10
  %272 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 3, i64 %239, i32 9
  %273 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 3, i64 %239, i32 8
  %274 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 3, i64 %239, i32 6
  %275 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 3, i64 %239, i32 5
  %276 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 3, i64 %239, i32 1
  %277 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 3, i64 %239, i32 4
  br label %278

278:                                              ; preds = %249, %429
  %279 = phi ptr [ %247, %249 ], [ %430, %429 ]
  %280 = getelementptr inbounds %struct.RenderPass, ptr %279, i64 0, i32 2
  %281 = load i32, ptr %280, align 8, !tbaa !116
  switch i32 %281, label %419 [
    i32 2, label %282
    i32 4, label %287
    i32 65536, label %288
    i32 8, label %289
    i32 16, label %290
    i32 32, label %291
    i32 64, label %292
    i32 131072, label %293
    i32 8192, label %294
    i32 128, label %295
    i32 1024, label %296
    i32 256, label %297
    i32 4096, label %298
    i32 2048, label %337
    i32 262144, label %353
    i32 16384, label %367
    i32 512, label %368
    i32 32768, label %418
  ]

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.RenderPass, ptr %279, i64 0, i32 6
  %284 = load ptr, ptr %283, align 8, !tbaa !118
  %285 = getelementptr inbounds float, ptr %284, i64 %183
  %286 = load float, ptr %277, align 4, !tbaa !119
  store float %286, ptr %285, align 4, !tbaa !34
  br label %419

287:                                              ; preds = %278
  br label %419

288:                                              ; preds = %278
  br label %419

289:                                              ; preds = %278
  br label %419

290:                                              ; preds = %278
  br label %419

291:                                              ; preds = %278
  br label %419

292:                                              ; preds = %278
  br label %419

293:                                              ; preds = %278
  br label %419

294:                                              ; preds = %278
  br label %419

295:                                              ; preds = %278
  br label %419

296:                                              ; preds = %278
  br label %419

297:                                              ; preds = %278
  br label %419

298:                                              ; preds = %278
  %299 = load i32, ptr %259, align 8, !tbaa !121
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %419, label %301

301:                                              ; preds = %298
  %302 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 38), align 8, !tbaa !66
  %303 = icmp eq ptr %302, null
  br i1 %303, label %312, label %304

304:                                              ; preds = %301
  %305 = getelementptr inbounds %struct.SampleTables, ptr %302, i64 0, i32 3, i64 %261
  %306 = load i8, ptr %305, align 1, !tbaa !67
  %307 = zext i8 %306 to i32
  %308 = getelementptr inbounds %struct.SampleTables, ptr %302, i64 0, i32 3, i64 %264
  %309 = load i8, ptr %308, align 1, !tbaa !67
  %310 = zext i8 %309 to i32
  %311 = add nuw nsw i32 %310, %307
  br label %312

312:                                              ; preds = %304, %301
  %313 = phi i32 [ %311, %304 ], [ 0, %301 ]
  %314 = sitofp i32 %313 to float
  %315 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %316 = sitofp i16 %315 to float
  %317 = fdiv float %314, %316
  %318 = getelementptr inbounds %struct.RenderPass, ptr %279, i64 0, i32 6
  %319 = load ptr, ptr %318, align 8, !tbaa !118
  %320 = getelementptr inbounds float, ptr %319, i64 %209
  %321 = load i32, ptr %265, align 8, !tbaa !122
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 2, i64 %239, i32 72, i64 %322, i32 2
  %324 = load float, ptr %323, align 8, !tbaa !34
  %325 = call float @llvm.fmuladd.f32(float %324, float 5.000000e-01, float 5.000000e-01)
  %326 = load float, ptr %320, align 4, !tbaa !34
  %327 = call float @llvm.fmuladd.f32(float %317, float %325, float %326)
  store float %327, ptr %320, align 4, !tbaa !34
  %328 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 2, i64 %239, i32 72, i64 %322, i32 2, i64 1
  %329 = load float, ptr %328, align 4, !tbaa !34
  %330 = call float @llvm.fmuladd.f32(float %329, float 5.000000e-01, float 5.000000e-01)
  %331 = getelementptr inbounds float, ptr %320, i64 1
  %332 = load float, ptr %331, align 4, !tbaa !34
  %333 = call float @llvm.fmuladd.f32(float %317, float %330, float %332)
  store float %333, ptr %331, align 4, !tbaa !34
  %334 = getelementptr inbounds float, ptr %320, i64 2
  %335 = load float, ptr %334, align 4, !tbaa !34
  %336 = fadd float %317, %335
  store float %336, ptr %334, align 4, !tbaa !34
  br label %419

337:                                              ; preds = %278
  %338 = load ptr, ptr %257, align 8, !tbaa !123
  %339 = icmp eq ptr %338, null
  br i1 %339, label %419, label %340

340:                                              ; preds = %337
  %341 = getelementptr inbounds %struct.RenderPass, ptr %279, i64 0, i32 6
  %342 = load ptr, ptr %341, align 8, !tbaa !118
  %343 = getelementptr inbounds float, ptr %342, i64 %183
  %344 = load float, ptr %343, align 4, !tbaa !34
  %345 = fcmp oeq float %344, 0.000000e+00
  br i1 %345, label %346, label %419

346:                                              ; preds = %340
  %347 = load ptr, ptr %258, align 8, !tbaa !124
  %348 = getelementptr inbounds %struct.ObjectRen, ptr %347, i64 0, i32 2
  %349 = load ptr, ptr %348, align 8, !tbaa !125
  %350 = getelementptr inbounds %struct.Object, ptr %349, i64 0, i32 96
  %351 = load i16, ptr %350, align 4, !tbaa !127
  %352 = sitofp i16 %351 to float
  store float %352, ptr %343, align 4, !tbaa !34
  br label %419

353:                                              ; preds = %278
  %354 = load ptr, ptr %256, align 8, !tbaa !123
  %355 = icmp eq ptr %354, null
  br i1 %355, label %419, label %356

356:                                              ; preds = %353
  %357 = getelementptr inbounds %struct.RenderPass, ptr %279, i64 0, i32 6
  %358 = load ptr, ptr %357, align 8, !tbaa !118
  %359 = getelementptr inbounds float, ptr %358, i64 %183
  %360 = load float, ptr %359, align 4, !tbaa !34
  %361 = fcmp oeq float %360, 0.000000e+00
  br i1 %361, label %362, label %419

362:                                              ; preds = %356
  %363 = load ptr, ptr %240, align 8, !tbaa !130
  %364 = getelementptr inbounds %struct.Material, ptr %363, i64 0, i32 127
  %365 = load i16, ptr %364, align 2, !tbaa !131
  %366 = sitofp i16 %365 to float
  store float %366, ptr %359, align 4, !tbaa !34
  br label %419

367:                                              ; preds = %278
  br label %419

368:                                              ; preds = %278
  %369 = getelementptr inbounds %struct.RenderPass, ptr %279, i64 0, i32 6
  %370 = load ptr, ptr %369, align 8, !tbaa !118
  %371 = getelementptr inbounds float, ptr %370, i64 %208
  %372 = load float, ptr %251, align 4, !tbaa !34
  %373 = fcmp olt float %372, 0.000000e+00
  %374 = fneg float %372
  %375 = select i1 %373, float %374, float %372
  %376 = load float, ptr %252, align 4, !tbaa !34
  %377 = fcmp olt float %376, 0.000000e+00
  %378 = fneg float %376
  %379 = select i1 %377, float %378, float %376
  %380 = fadd float %375, %379
  %381 = load float, ptr %371, align 4, !tbaa !34
  %382 = fcmp olt float %381, 0.000000e+00
  %383 = fneg float %381
  %384 = select i1 %382, float %383, float %381
  %385 = getelementptr inbounds float, ptr %371, i64 1
  %386 = load float, ptr %385, align 4, !tbaa !34
  %387 = fcmp olt float %386, 0.000000e+00
  %388 = fneg float %386
  %389 = select i1 %387, float %388, float %386
  %390 = fadd float %384, %389
  %391 = fcmp olt float %380, %390
  br i1 %391, label %392, label %394

392:                                              ; preds = %368
  store float %372, ptr %371, align 4, !tbaa !34
  %393 = load float, ptr %252, align 4, !tbaa !34
  store float %393, ptr %385, align 4, !tbaa !34
  br label %394

394:                                              ; preds = %392, %368
  %395 = load float, ptr %253, align 4, !tbaa !34
  %396 = fcmp olt float %395, 0.000000e+00
  %397 = fneg float %395
  %398 = select i1 %396, float %397, float %395
  %399 = load float, ptr %254, align 4, !tbaa !34
  %400 = fcmp olt float %399, 0.000000e+00
  %401 = fneg float %399
  %402 = select i1 %400, float %401, float %399
  %403 = fadd float %398, %402
  %404 = getelementptr inbounds float, ptr %371, i64 2
  %405 = load float, ptr %404, align 4, !tbaa !34
  %406 = fcmp olt float %405, 0.000000e+00
  %407 = fneg float %405
  %408 = select i1 %406, float %407, float %405
  %409 = getelementptr inbounds float, ptr %371, i64 3
  %410 = load float, ptr %409, align 4, !tbaa !34
  %411 = fcmp olt float %410, 0.000000e+00
  %412 = fneg float %410
  %413 = select i1 %411, float %412, float %410
  %414 = fadd float %408, %413
  %415 = fcmp olt float %403, %414
  br i1 %415, label %416, label %419

416:                                              ; preds = %394
  store float %395, ptr %404, align 4, !tbaa !34
  %417 = load float, ptr %254, align 4, !tbaa !34
  store float %417, ptr %409, align 4, !tbaa !34
  br label %419

418:                                              ; preds = %278
  br label %419

419:                                              ; preds = %418, %416, %394, %367, %362, %356, %353, %346, %340, %337, %312, %298, %297, %296, %295, %294, %293, %292, %291, %290, %289, %288, %287, %282, %278
  %420 = phi ptr [ null, %278 ], [ %250, %418 ], [ null, %416 ], [ null, %394 ], [ %255, %367 ], [ null, %362 ], [ null, %356 ], [ null, %353 ], [ null, %346 ], [ null, %340 ], [ null, %337 ], [ null, %312 ], [ null, %298 ], [ %266, %297 ], [ %267, %296 ], [ %268, %295 ], [ %269, %294 ], [ %270, %293 ], [ %271, %292 ], [ %272, %291 ], [ %273, %290 ], [ %274, %289 ], [ %275, %288 ], [ %276, %287 ], [ null, %282 ]
  %421 = phi i32 [ 3, %278 ], [ 4, %418 ], [ 3, %416 ], [ 3, %394 ], [ 1, %367 ], [ 3, %362 ], [ 3, %356 ], [ 3, %353 ], [ 3, %346 ], [ 3, %340 ], [ 3, %337 ], [ 3, %312 ], [ 3, %298 ], [ 3, %297 ], [ 3, %296 ], [ 3, %295 ], [ 3, %294 ], [ 3, %293 ], [ 3, %292 ], [ 3, %291 ], [ 3, %290 ], [ 3, %289 ], [ 3, %288 ], [ 4, %287 ], [ 3, %282 ]
  %422 = icmp eq ptr %420, null
  br i1 %422, label %429, label %423

423:                                              ; preds = %419
  %424 = getelementptr inbounds %struct.RenderPass, ptr %279, i64 0, i32 6
  %425 = load ptr, ptr %424, align 8, !tbaa !118
  %426 = zext nneg i32 %421 to i64
  %427 = mul nsw i64 %183, %426
  %428 = getelementptr inbounds float, ptr %425, i64 %427
  call void @add_filt_fmask_pixsize(i32 noundef %242, ptr noundef nonnull %420, ptr noundef %428, i32 noundef %243, i32 noundef %421) #12
  br label %429

429:                                              ; preds = %423, %419
  %430 = load ptr, ptr %279, align 8, !tbaa !72
  %431 = icmp eq ptr %430, null
  br i1 %431, label %432, label %278, !llvm.loop !135

432:                                              ; preds = %429, %238
  %433 = add nuw nsw i64 %239, 1
  %434 = load i32, ptr %5, align 8, !tbaa !109
  %435 = sext i32 %434 to i64
  %436 = icmp slt i64 %433, %435
  br i1 %436, label %238, label %437, !llvm.loop !136

437:                                              ; preds = %233, %432, %201, %204, %192, %182
  %438 = add nsw i32 %186, 1
  %439 = getelementptr inbounds i64, ptr %184, i64 1
  %440 = add nsw i64 %183, 1
  %441 = load i32, ptr %52, align 4, !tbaa !105
  %442 = sub nsw i32 %441, %155
  %443 = icmp slt i32 %438, %442
  br i1 %443, label %182, label %444, !llvm.loop !137

444:                                              ; preds = %437, %170
  %445 = phi i32 [ %173, %170 ], [ %189, %437 ]
  %446 = load i32, ptr %11, align 8, !tbaa !76
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i64, ptr %171, i64 %447
  %449 = add nsw i32 %446, %172
  %450 = and i32 %174, 1
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %457, label %452

452:                                              ; preds = %444
  %453 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !93
  %454 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !94
  %455 = call i32 %453(ptr noundef %454) #12
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %457, label %464

457:                                              ; preds = %452, %444
  %458 = add nsw i32 %174, 1
  %459 = load volatile i32, ptr %160, align 4, !tbaa !101
  %460 = add nsw i32 %459, 1
  store volatile i32 %460, ptr %160, align 4, !tbaa !101
  %461 = load i32, ptr %51, align 4, !tbaa !103
  %462 = sub nsw i32 %461, %155
  %463 = icmp slt i32 %458, %462
  br i1 %463, label %170, label %464, !llvm.loop !138

464:                                              ; preds = %457, %452, %154
  store ptr null, ptr %161, align 8, !tbaa !102
  %465 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %466 = and i32 %465, 2
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %469, label %468

468:                                              ; preds = %464
  call void @ISB_free(ptr noundef %0) #12
  br label %469

469:                                              ; preds = %468, %464
  %470 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 56), align 8, !tbaa !97
  %471 = icmp eq ptr %470, null
  br i1 %471, label %473, label %472

472:                                              ; preds = %469
  call void @free_occ_samples(ptr noundef nonnull @R, ptr noundef %0) #12
  br label %473

473:                                              ; preds = %127, %469, %472
  call void @llvm.lifetime.end.p0(i64 27080, ptr nonnull %5) #12
  br label %474

474:                                              ; preds = %473, %123
  %475 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !139
  %476 = and i16 %475, 8
  %477 = icmp eq i16 %476, 0
  br i1 %477, label %483, label %478

478:                                              ; preds = %474
  %479 = load i32, ptr %64, align 8, !tbaa !81
  %480 = and i32 %479, 4
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %483, label %482

482:                                              ; preds = %478
  call fastcc void @lamphalo_tile(ptr noundef %0, ptr noundef nonnull %63)
  br label %483

483:                                              ; preds = %478, %482, %474
  %484 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !139
  %485 = and i16 %484, 2
  %486 = icmp eq i16 %485, 0
  br i1 %486, label %492, label %487

487:                                              ; preds = %483
  %488 = load i32, ptr %64, align 8, !tbaa !81
  %489 = and i32 %488, 4
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %492, label %491

491:                                              ; preds = %487
  call fastcc void @halo_tile(ptr noundef %0, ptr noundef nonnull %63)
  br label %492

492:                                              ; preds = %487, %491, %483
  %493 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !139
  %494 = and i16 %493, 1
  %495 = icmp ne i16 %494, 0
  %496 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 63), align 4
  %497 = icmp ne i32 %496, 0
  %498 = select i1 %495, i1 true, i1 %497
  br i1 %498, label %499, label %710

499:                                              ; preds = %492
  %500 = load i32, ptr %64, align 8, !tbaa !81
  %501 = and i32 %500, 34
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %710, label %503

503:                                              ; preds = %499
  %504 = load ptr, ptr %55, align 8, !tbaa !68
  %505 = icmp eq ptr %504, null
  br i1 %505, label %510, label %506

506:                                              ; preds = %503
  %507 = getelementptr inbounds %struct.RenderLayer, ptr %63, i64 0, i32 11
  %508 = load ptr, ptr %507, align 8, !tbaa !115
  %509 = call ptr @zbuffer_transp_shade(ptr noundef %0, ptr noundef nonnull %63, ptr noundef %508, ptr noundef nonnull %6) #12
  br label %710

510:                                              ; preds = %503
  %511 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %512 = load i32, ptr %11, align 8, !tbaa !76
  %513 = sext i32 %512 to i64
  %514 = shl nsw i64 %513, 4
  %515 = load i32, ptr %15, align 4, !tbaa !77
  %516 = sext i32 %515 to i64
  %517 = mul i64 %514, %516
  %518 = call ptr %511(i64 noundef %517, ptr noundef nonnull @.str.6) #12
  %519 = getelementptr inbounds %struct.RenderLayer, ptr %63, i64 0, i32 12
  store ptr %518, ptr %519, align 8, !tbaa !140
  %520 = getelementptr inbounds %struct.RenderLayer, ptr %63, i64 0, i32 11
  %521 = load ptr, ptr %520, align 8, !tbaa !115
  store ptr %521, ptr %519, align 8, !tbaa !140
  store ptr %518, ptr %520, align 8, !tbaa !115
  %522 = call ptr @zbuffer_transp_shade(ptr noundef %0, ptr noundef nonnull %63, ptr noundef %518, ptr noundef nonnull %6) #12
  %523 = load ptr, ptr %519, align 8, !tbaa !140
  %524 = load ptr, ptr %520, align 8, !tbaa !115
  store ptr %524, ptr %519, align 8, !tbaa !140
  store ptr %523, ptr %520, align 8, !tbaa !115
  %525 = icmp ne ptr %522, null
  br i1 %525, label %526, label %568

526:                                              ; preds = %510
  %527 = load ptr, ptr %44, align 8, !tbaa !87
  %528 = icmp eq ptr %527, null
  br i1 %528, label %568, label %529

529:                                              ; preds = %526
  %530 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %531 = load i32, ptr %11, align 8, !tbaa !76
  %532 = sext i32 %531 to i64
  %533 = shl nsw i64 %532, 1
  %534 = load i32, ptr %15, align 4, !tbaa !77
  %535 = sext i32 %534 to i64
  %536 = mul i64 %533, %535
  %537 = call ptr %530(i64 noundef %536, ptr noundef nonnull @.str.15) #12
  %538 = load i32, ptr %11, align 8, !tbaa !76
  %539 = load i32, ptr %15, align 4, !tbaa !77
  %540 = mul nsw i32 %539, %538
  %541 = icmp sgt i32 %540, 0
  br i1 %541, label %542, label %568

542:                                              ; preds = %529, %563
  %543 = phi i32 [ %564, %563 ], [ %540, %529 ]
  %544 = phi ptr [ %566, %563 ], [ %537, %529 ]
  %545 = phi ptr [ %565, %563 ], [ %527, %529 ]
  %546 = load i64, ptr %545, align 8, !tbaa !107
  %547 = icmp eq i64 %546, 0
  br i1 %547, label %562, label %548

548:                                              ; preds = %542
  %549 = inttoptr i64 %546 to ptr
  %550 = getelementptr inbounds %struct.PixStr, ptr %549, i64 0, i32 5
  %551 = load i16, ptr %550, align 8, !tbaa !141
  store i16 %551, ptr %544, align 2, !tbaa !143
  %552 = load ptr, ptr %549, align 8, !tbaa !144
  %553 = icmp eq ptr %552, null
  br i1 %553, label %563, label %554

554:                                              ; preds = %548, %554
  %555 = phi ptr [ %560, %554 ], [ %552, %548 ]
  %556 = phi i16 [ %559, %554 ], [ %551, %548 ]
  %557 = getelementptr inbounds %struct.PixStr, ptr %555, i64 0, i32 5
  %558 = load i16, ptr %557, align 8, !tbaa !141
  %559 = or i16 %558, %556
  store i16 %559, ptr %544, align 2, !tbaa !143
  %560 = load ptr, ptr %555, align 8, !tbaa !144
  %561 = icmp eq ptr %560, null
  br i1 %561, label %563, label %554, !llvm.loop !145

562:                                              ; preds = %542
  store i16 0, ptr %544, align 2, !tbaa !143
  br label %563

563:                                              ; preds = %554, %548, %562
  %564 = add nsw i32 %543, -1
  %565 = getelementptr inbounds i64, ptr %545, i64 1
  %566 = getelementptr inbounds i16, ptr %544, i64 1
  %567 = icmp sgt i32 %543, 1
  br i1 %567, label %542, label %568, !llvm.loop !146

568:                                              ; preds = %563, %529, %526, %510
  %569 = phi ptr [ null, %510 ], [ null, %526 ], [ %537, %529 ], [ %537, %563 ]
  %570 = icmp ne ptr %569, null
  %571 = select i1 %525, i1 %570, i1 false
  %572 = load i32, ptr %11, align 8, !tbaa !76
  %573 = load i32, ptr %15, align 4, !tbaa !77
  %574 = mul nsw i32 %573, %572
  %575 = icmp sgt i32 %574, 0
  br i1 %571, label %576, label %692

576:                                              ; preds = %568
  br i1 %575, label %577, label %704

577:                                              ; preds = %576
  %578 = load ptr, ptr %519, align 8, !tbaa !140
  %579 = load ptr, ptr %520, align 8, !tbaa !115
  %580 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %581 = zext nneg i16 %580 to i32
  %582 = shl nsw i32 -1, %581
  %583 = and i32 %582, 65535
  br label %584

584:                                              ; preds = %577, %685
  %585 = phi i32 [ %574, %577 ], [ %686, %685 ]
  %586 = phi ptr [ %578, %577 ], [ %687, %685 ]
  %587 = phi ptr [ %579, %577 ], [ %688, %685 ]
  %588 = phi ptr [ %522, %577 ], [ %690, %685 ]
  %589 = phi ptr [ %569, %577 ], [ %689, %685 ]
  %590 = load i16, ptr %589, align 2, !tbaa !143
  %591 = zext i16 %590 to i32
  %592 = xor i32 %583, %591
  %593 = icmp eq i32 %592, 65535
  br i1 %593, label %594, label %595

594:                                              ; preds = %584
  call void @addAlphaOverFloat(ptr noundef %587, ptr noundef %586) #12
  br label %685

595:                                              ; preds = %584
  %596 = load i16, ptr %588, align 2, !tbaa !143
  %597 = and i16 %596, %590
  %598 = getelementptr inbounds float, ptr %586, i64 3
  %599 = load float, ptr %598, align 4, !tbaa !34
  %600 = fsub float 1.000000e+00, %599
  %601 = icmp eq i16 %597, 0
  br i1 %601, label %644, label %602

602:                                              ; preds = %595
  %603 = icmp eq i16 %597, %590
  br i1 %603, label %666, label %604

604:                                              ; preds = %602
  %605 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 38), align 8, !tbaa !66
  %606 = icmp eq ptr %605, null
  br i1 %606, label %621, label %607

607:                                              ; preds = %604
  %608 = zext i16 %597 to i32
  %609 = and i32 %608, 255
  %610 = zext nneg i32 %609 to i64
  %611 = getelementptr inbounds %struct.SampleTables, ptr %605, i64 0, i32 3, i64 %610
  %612 = load i8, ptr %611, align 1, !tbaa !67
  %613 = zext i8 %612 to i32
  %614 = lshr i32 %608, 8
  %615 = zext nneg i32 %614 to i64
  %616 = getelementptr inbounds %struct.SampleTables, ptr %605, i64 0, i32 3, i64 %615
  %617 = load i8, ptr %616, align 1, !tbaa !67
  %618 = zext i8 %617 to i32
  %619 = add nuw nsw i32 %618, %613
  %620 = sitofp i32 %619 to float
  br label %621

621:                                              ; preds = %607, %604
  %622 = phi float [ %620, %607 ], [ 0.000000e+00, %604 ]
  br i1 %606, label %638, label %623

623:                                              ; preds = %621
  %624 = or i16 %596, %590
  %625 = zext i16 %624 to i32
  %626 = and i32 %625, 255
  %627 = zext nneg i32 %626 to i64
  %628 = getelementptr inbounds %struct.SampleTables, ptr %605, i64 0, i32 3, i64 %627
  %629 = load i8, ptr %628, align 1, !tbaa !67
  %630 = zext i8 %629 to i32
  %631 = lshr i32 %625, 8
  %632 = zext nneg i32 %631 to i64
  %633 = getelementptr inbounds %struct.SampleTables, ptr %605, i64 0, i32 3, i64 %632
  %634 = load i8, ptr %633, align 1, !tbaa !67
  %635 = zext i8 %634 to i32
  %636 = add nuw nsw i32 %635, %630
  %637 = sitofp i32 %636 to float
  br label %638

638:                                              ; preds = %623, %621
  %639 = phi float [ %637, %623 ], [ 0.000000e+00, %621 ]
  %640 = fsub float %639, %622
  %641 = fdiv float %640, %639
  %642 = fsub float 1.000000e+00, %641
  %643 = call float @llvm.fmuladd.f32(float %642, float %600, float %641)
  br label %666

644:                                              ; preds = %595
  %645 = icmp ne i16 %590, 0
  %646 = icmp ne i16 %596, 0
  %647 = and i1 %645, %646
  br i1 %647, label %648, label %666

648:                                              ; preds = %644
  %649 = load float, ptr %586, align 4, !tbaa !34
  %650 = load float, ptr %587, align 4, !tbaa !34
  %651 = fadd float %649, %650
  store float %651, ptr %587, align 4, !tbaa !34
  %652 = getelementptr inbounds float, ptr %586, i64 1
  %653 = load float, ptr %652, align 4, !tbaa !34
  %654 = getelementptr inbounds float, ptr %587, i64 1
  %655 = load float, ptr %654, align 4, !tbaa !34
  %656 = fadd float %653, %655
  store float %656, ptr %654, align 4, !tbaa !34
  %657 = getelementptr inbounds float, ptr %586, i64 2
  %658 = load float, ptr %657, align 4, !tbaa !34
  %659 = getelementptr inbounds float, ptr %587, i64 2
  %660 = load float, ptr %659, align 4, !tbaa !34
  %661 = fadd float %658, %660
  store float %661, ptr %659, align 4, !tbaa !34
  %662 = load float, ptr %598, align 4, !tbaa !34
  %663 = getelementptr inbounds float, ptr %587, i64 3
  %664 = load float, ptr %663, align 4, !tbaa !34
  %665 = fadd float %662, %664
  store float %665, ptr %663, align 4, !tbaa !34
  br label %685

666:                                              ; preds = %644, %638, %602
  %667 = phi float [ %643, %638 ], [ %600, %602 ], [ %600, %644 ]
  %668 = load float, ptr %587, align 4, !tbaa !34
  %669 = load float, ptr %586, align 4, !tbaa !34
  %670 = call float @llvm.fmuladd.f32(float %667, float %668, float %669)
  store float %670, ptr %587, align 4, !tbaa !34
  %671 = getelementptr inbounds float, ptr %587, i64 1
  %672 = load float, ptr %671, align 4, !tbaa !34
  %673 = getelementptr inbounds float, ptr %586, i64 1
  %674 = load float, ptr %673, align 4, !tbaa !34
  %675 = call float @llvm.fmuladd.f32(float %667, float %672, float %674)
  store float %675, ptr %671, align 4, !tbaa !34
  %676 = getelementptr inbounds float, ptr %587, i64 2
  %677 = load float, ptr %676, align 4, !tbaa !34
  %678 = getelementptr inbounds float, ptr %586, i64 2
  %679 = load float, ptr %678, align 4, !tbaa !34
  %680 = call float @llvm.fmuladd.f32(float %667, float %677, float %679)
  store float %680, ptr %676, align 4, !tbaa !34
  %681 = getelementptr inbounds float, ptr %587, i64 3
  %682 = load float, ptr %681, align 4, !tbaa !34
  %683 = load float, ptr %598, align 4, !tbaa !34
  %684 = call float @llvm.fmuladd.f32(float %667, float %682, float %683)
  store float %684, ptr %681, align 4, !tbaa !34
  br label %685

685:                                              ; preds = %666, %648, %594
  %686 = add nsw i32 %585, -1
  %687 = getelementptr inbounds float, ptr %586, i64 4
  %688 = getelementptr inbounds float, ptr %587, i64 4
  %689 = getelementptr inbounds i16, ptr %589, i64 1
  %690 = getelementptr inbounds i16, ptr %588, i64 1
  %691 = icmp sgt i32 %585, 1
  br i1 %691, label %584, label %704, !llvm.loop !147

692:                                              ; preds = %568
  br i1 %575, label %693, label %704

693:                                              ; preds = %692
  %694 = load ptr, ptr %519, align 8, !tbaa !140
  %695 = load ptr, ptr %520, align 8, !tbaa !115
  br label %696

696:                                              ; preds = %693, %696
  %697 = phi i32 [ %700, %696 ], [ %574, %693 ]
  %698 = phi ptr [ %701, %696 ], [ %694, %693 ]
  %699 = phi ptr [ %702, %696 ], [ %695, %693 ]
  call void @addAlphaOverFloat(ptr noundef %699, ptr noundef %698) #12
  %700 = add nsw i32 %697, -1
  %701 = getelementptr inbounds float, ptr %698, i64 4
  %702 = getelementptr inbounds float, ptr %699, i64 4
  %703 = icmp sgt i32 %697, 1
  br i1 %703, label %696, label %704, !llvm.loop !148

704:                                              ; preds = %696, %685, %692, %576
  br i1 %570, label %705, label %707

705:                                              ; preds = %704
  %706 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %706(ptr noundef nonnull %569) #12
  br label %707

707:                                              ; preds = %705, %704
  br i1 %525, label %708, label %710

708:                                              ; preds = %707
  %709 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %709(ptr noundef nonnull %522) #12
  br label %710

710:                                              ; preds = %707, %708, %499, %506, %492
  %711 = load i32, ptr %64, align 8, !tbaa !81
  %712 = and i32 %711, 16
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %715, label %714

714:                                              ; preds = %710
  call fastcc void @atm_tile(ptr noundef %0, ptr noundef nonnull %63)
  br label %715

715:                                              ; preds = %714, %710
  %716 = load i32, ptr %64, align 8, !tbaa !81
  %717 = and i32 %716, 16
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %720, label %719

719:                                              ; preds = %715
  call fastcc void @sky_tile(ptr noundef %0, ptr noundef nonnull %63)
  br label %720

720:                                              ; preds = %719, %715
  %721 = load i32, ptr %64, align 8, !tbaa !81
  %722 = and i32 %721, 8
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %756, label %724

724:                                              ; preds = %720
  %725 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %726 = and i32 %725, 32
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %756, label %728

728:                                              ; preds = %724
  %729 = getelementptr inbounds %struct.RenderLayer, ptr %63, i64 0, i32 11
  %730 = load ptr, ptr %729, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  %731 = icmp eq ptr %110, null
  br i1 %731, label %755, label %732

732:                                              ; preds = %728
  %733 = load i32, ptr %11, align 8, !tbaa !76
  %734 = load i32, ptr %15, align 4, !tbaa !77
  %735 = mul nsw i32 %734, %733
  %736 = icmp sgt i32 %735, 0
  br i1 %736, label %737, label %755

737:                                              ; preds = %732, %750
  %738 = phi i32 [ %751, %750 ], [ %735, %732 ]
  %739 = phi ptr [ %752, %750 ], [ %110, %732 ]
  %740 = phi ptr [ %753, %750 ], [ %730, %732 ]
  %741 = load float, ptr %739, align 4, !tbaa !34
  %742 = fcmp une float %741, 0.000000e+00
  br i1 %742, label %743, label %750

743:                                              ; preds = %737
  %744 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 17), align 4, !tbaa !149
  %745 = fmul float %741, %744
  store float %745, ptr %3, align 16, !tbaa !34
  %746 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 18), align 8, !tbaa !150
  %747 = fmul float %741, %746
  store float %747, ptr %56, align 4, !tbaa !34
  %748 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 19), align 4, !tbaa !151
  %749 = fmul float %741, %748
  store float %749, ptr %57, align 8, !tbaa !34
  store float %741, ptr %58, align 4, !tbaa !34
  call void @addAlphaOverFloat(ptr noundef %740, ptr noundef nonnull %3) #12
  br label %750

750:                                              ; preds = %743, %737
  %751 = add nsw i32 %738, -1
  %752 = getelementptr inbounds float, ptr %739, i64 1
  %753 = getelementptr inbounds float, ptr %740, i64 4
  %754 = icmp sgt i32 %738, 1
  br i1 %754, label %737, label %755, !llvm.loop !152

755:                                              ; preds = %750, %728, %732
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  br label %756

756:                                              ; preds = %724, %755, %720
  %757 = getelementptr inbounds %struct.RenderLayer, ptr %63, i64 0, i32 7
  %758 = load i32, ptr %757, align 4, !tbaa !153
  %759 = and i32 %758, 512
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %817, label %761

761:                                              ; preds = %756
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #12
  %762 = load ptr, ptr %59, align 8, !tbaa !68
  %763 = icmp eq ptr %762, null
  br i1 %763, label %782, label %764

764:                                              ; preds = %761
  %765 = load ptr, ptr %8, align 8, !tbaa !70
  %766 = getelementptr inbounds %struct.RenderResult, ptr %765, i64 0, i32 12
  %767 = call i32 @BLI_findindex(ptr noundef nonnull %766, ptr noundef nonnull %63) #12
  %768 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %769 = sext i16 %768 to i32
  %770 = icmp sgt i16 %768, 0
  br i1 %770, label %771, label %785

771:                                              ; preds = %764, %771
  %772 = phi i64 [ %778, %771 ], [ 0, %764 ]
  %773 = trunc i64 %772 to i32
  %774 = call ptr @BLI_findlink(ptr noundef nonnull %59, i32 noundef %773) #12
  %775 = getelementptr inbounds %struct.RenderResult, ptr %774, i64 0, i32 12
  %776 = call ptr @BLI_findlink(ptr noundef nonnull %775, i32 noundef %767) #12
  %777 = getelementptr inbounds ptr, ptr %2, i64 %772
  store ptr %776, ptr %777, align 8, !tbaa !72
  %778 = add nuw nsw i64 %772, 1
  %779 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %780 = sext i16 %779 to i64
  %781 = icmp slt i64 %778, %780
  br i1 %781, label %771, label %783, !llvm.loop !73

782:                                              ; preds = %761
  store ptr %63, ptr %2, align 16, !tbaa !72
  br label %785

783:                                              ; preds = %771
  %784 = sext i16 %779 to i32
  br label %785

785:                                              ; preds = %764, %782, %783
  %786 = phi i32 [ 1, %782 ], [ %769, %764 ], [ %784, %783 ]
  %787 = icmp sgt i32 %786, 0
  br i1 %787, label %788, label %816

788:                                              ; preds = %785
  %789 = zext nneg i32 %786 to i64
  br label %790

790:                                              ; preds = %813, %788
  %791 = phi i64 [ 0, %788 ], [ %814, %813 ]
  %792 = getelementptr inbounds [16 x ptr], ptr %2, i64 0, i64 %791
  %793 = load ptr, ptr %792, align 8, !tbaa !72
  %794 = call ptr @RE_RenderLayerGetPass(ptr noundef %793, i32 noundef 512) #12
  %795 = icmp eq ptr %794, null
  br i1 %795, label %816, label %796

796:                                              ; preds = %790
  %797 = load i32, ptr %11, align 8, !tbaa !76
  %798 = shl nsw i32 %797, 2
  %799 = load i32, ptr %15, align 4, !tbaa !77
  %800 = mul nsw i32 %798, %799
  %801 = icmp sgt i32 %800, 0
  br i1 %801, label %802, label %813

802:                                              ; preds = %796
  %803 = zext nneg i32 %800 to i64
  br label %804

804:                                              ; preds = %811, %802
  %805 = phi i64 [ %803, %802 ], [ %806, %811 ]
  %806 = add nsw i64 %805, -1
  %807 = getelementptr inbounds float, ptr %794, i64 %806
  %808 = load float, ptr %807, align 4, !tbaa !34
  %809 = fcmp oeq float %808, 1.000000e+04
  br i1 %809, label %810, label %811

810:                                              ; preds = %804
  store float 0.000000e+00, ptr %807, align 4, !tbaa !34
  br label %811

811:                                              ; preds = %810, %804
  %812 = icmp sgt i64 %805, 1
  br i1 %812, label %804, label %813, !llvm.loop !154

813:                                              ; preds = %811, %796
  %814 = add nuw nsw i64 %791, 1
  %815 = icmp eq i64 %814, %789
  br i1 %815, label %816, label %790, !llvm.loop !155

816:                                              ; preds = %790, %813, %785
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #12
  br label %817

817:                                              ; preds = %816, %756
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #12
  %818 = load ptr, ptr %60, align 8, !tbaa !68
  %819 = icmp eq ptr %818, null
  br i1 %819, label %838, label %820

820:                                              ; preds = %817
  %821 = load ptr, ptr %8, align 8, !tbaa !70
  %822 = getelementptr inbounds %struct.RenderResult, ptr %821, i64 0, i32 12
  %823 = call i32 @BLI_findindex(ptr noundef nonnull %822, ptr noundef nonnull %63) #12
  %824 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %825 = sext i16 %824 to i32
  %826 = icmp sgt i16 %824, 0
  br i1 %826, label %827, label %841

827:                                              ; preds = %820, %827
  %828 = phi i64 [ %834, %827 ], [ 0, %820 ]
  %829 = trunc i64 %828 to i32
  %830 = call ptr @BLI_findlink(ptr noundef nonnull %60, i32 noundef %829) #12
  %831 = getelementptr inbounds %struct.RenderResult, ptr %830, i64 0, i32 12
  %832 = call ptr @BLI_findlink(ptr noundef nonnull %831, i32 noundef %823) #12
  %833 = getelementptr inbounds ptr, ptr %4, i64 %828
  store ptr %832, ptr %833, align 8, !tbaa !72
  %834 = add nuw nsw i64 %828, 1
  %835 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %836 = sext i16 %835 to i64
  %837 = icmp slt i64 %834, %836
  br i1 %837, label %827, label %839, !llvm.loop !73

838:                                              ; preds = %817
  store ptr %63, ptr %4, align 16, !tbaa !72
  br label %841

839:                                              ; preds = %827
  %840 = sext i16 %835 to i32
  br label %841

841:                                              ; preds = %820, %838, %839
  %842 = phi i32 [ 1, %838 ], [ %825, %820 ], [ %840, %839 ]
  %843 = icmp eq i32 %842, 1
  br i1 %843, label %844, label %878

844:                                              ; preds = %841
  %845 = load i32, ptr %11, align 8, !tbaa !76
  %846 = load i32, ptr %15, align 4, !tbaa !77
  %847 = mul nsw i32 %846, %845
  %848 = icmp sgt i32 %847, 0
  br i1 %848, label %849, label %878

849:                                              ; preds = %844
  %850 = load ptr, ptr %4, align 16, !tbaa !72
  %851 = getelementptr inbounds %struct.RenderLayer, ptr %850, i64 0, i32 11
  %852 = load ptr, ptr %851, align 8, !tbaa !115
  br label %853

853:                                              ; preds = %849, %874
  %854 = phi ptr [ %876, %874 ], [ %852, %849 ]
  %855 = phi i32 [ %875, %874 ], [ %847, %849 ]
  %856 = load float, ptr %854, align 4, !tbaa !34
  %857 = fcmp ogt float %856, 0.000000e+00
  %858 = select i1 %857, float %856, float 0.000000e+00
  store float %858, ptr %854, align 4, !tbaa !34
  %859 = getelementptr inbounds float, ptr %854, i64 1
  %860 = load float, ptr %859, align 4, !tbaa !34
  %861 = fcmp ogt float %860, 0.000000e+00
  %862 = select i1 %861, float %860, float 0.000000e+00
  store float %862, ptr %859, align 4, !tbaa !34
  %863 = getelementptr inbounds float, ptr %854, i64 2
  %864 = load float, ptr %863, align 4, !tbaa !34
  %865 = fcmp ogt float %864, 0.000000e+00
  %866 = select i1 %865, float %864, float 0.000000e+00
  store float %866, ptr %863, align 4, !tbaa !34
  %867 = getelementptr inbounds float, ptr %854, i64 3
  %868 = load float, ptr %867, align 4, !tbaa !34
  %869 = fcmp olt float %868, 0.000000e+00
  br i1 %869, label %872, label %870

870:                                              ; preds = %853
  %871 = fcmp ogt float %868, 1.000000e+00
  br i1 %871, label %872, label %874

872:                                              ; preds = %870, %853
  %873 = phi float [ 0.000000e+00, %853 ], [ 1.000000e+00, %870 ]
  store float %873, ptr %867, align 4, !tbaa !34
  br label %874

874:                                              ; preds = %872, %870
  %875 = add nsw i32 %855, -1
  %876 = getelementptr inbounds float, ptr %854, i64 4
  %877 = icmp sgt i32 %855, 1
  br i1 %877, label %853, label %878, !llvm.loop !156

878:                                              ; preds = %874, %844, %841
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #12
  %879 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %880 = load ptr, ptr %44, align 8, !tbaa !87
  call void %879(ptr noundef %880) #12
  store ptr null, ptr %44, align 8, !tbaa !87
  %881 = load ptr, ptr %6, align 8, !tbaa !157
  %882 = icmp eq ptr %881, null
  br i1 %882, label %894, label %883

883:                                              ; preds = %878, %891
  %884 = phi ptr [ %885, %891 ], [ %881, %878 ]
  %885 = load ptr, ptr %884, align 8, !tbaa !158
  %886 = getelementptr inbounds %struct.PixStrMain, ptr %884, i64 0, i32 2
  %887 = load ptr, ptr %886, align 8, !tbaa !84
  %888 = icmp eq ptr %887, null
  br i1 %888, label %891, label %889

889:                                              ; preds = %883
  %890 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %890(ptr noundef nonnull %887) #12
  br label %891

891:                                              ; preds = %889, %883
  %892 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %892(ptr noundef nonnull %884) #12
  %893 = icmp eq ptr %885, null
  br i1 %893, label %894, label %883, !llvm.loop !159

894:                                              ; preds = %891, %878
  %895 = icmp eq ptr %110, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  br i1 %895, label %898, label %896

896:                                              ; preds = %894
  %897 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %897(ptr noundef nonnull %110) #12
  br label %898

898:                                              ; preds = %896, %894
  %899 = load ptr, ptr %61, align 8, !tbaa !83
  %900 = icmp eq ptr %899, null
  br i1 %900, label %903, label %901

901:                                              ; preds = %898
  %902 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %902(ptr noundef nonnull %899) #12
  store ptr null, ptr %61, align 8, !tbaa !83
  br label %903

903:                                              ; preds = %898, %901
  %904 = load ptr, ptr %63, align 8, !tbaa !72
  %905 = icmp eq ptr %904, null
  br i1 %905, label %906, label %62, !llvm.loop !160

906:                                              ; preds = %903, %1
  %907 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %908 = load ptr, ptr %20, align 8, !tbaa !78
  call void %907(ptr noundef %908) #12
  store ptr null, ptr %20, align 8, !tbaa !78
  %909 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %910 = load ptr, ptr %29, align 8, !tbaa !79
  call void %909(ptr noundef %910) #12
  store ptr null, ptr %29, align 8, !tbaa !79
  %911 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %912 = load ptr, ptr %38, align 8, !tbaa !80
  call void %911(ptr noundef %912) #12
  store ptr null, ptr %38, align 8, !tbaa !80
  %913 = getelementptr inbounds %struct.RenderResult, ptr %9, i64 0, i32 13, i32 3
  store volatile i32 0, ptr %913, align 4, !tbaa !101
  %914 = getelementptr inbounds %struct.RenderResult, ptr %9, i64 0, i32 13, i32 2
  store volatile i32 0, ptr %914, align 8, !tbaa !99
  %915 = call ptr @render_get_active_layer(ptr noundef nonnull @R, ptr noundef %9) #12
  %916 = getelementptr inbounds %struct.RenderResult, ptr %9, i64 0, i32 14
  store ptr %915, ptr %916, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare void @zbuffer_solid(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @make_pixelstructs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) #5 {
  %5 = getelementptr inbounds %struct.ZbufSolidData, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = getelementptr inbounds %struct.ZSpan, ptr %1, i64 0, i32 16
  %8 = getelementptr inbounds %struct.ZSpan, ptr %1, i64 0, i32 21
  %9 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %10 = load i32, ptr %9, align 4, !tbaa !77
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %69

12:                                               ; preds = %4
  %13 = shl nuw i32 1, %2
  %14 = load ptr, ptr %8, align 8, !tbaa !161
  %15 = load ptr, ptr %7, align 8, !tbaa !163
  %16 = getelementptr inbounds %struct.ZSpan, ptr %1, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !164
  %18 = getelementptr inbounds %struct.ZSpan, ptr %1, i64 0, i32 20
  %19 = load ptr, ptr %18, align 8, !tbaa !165
  %20 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !87
  %22 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %23 = trunc i32 %13 to i16
  br label %24

24:                                               ; preds = %12, %60
  %25 = phi ptr [ %21, %12 ], [ %65, %60 ]
  %26 = phi i32 [ 0, %12 ], [ %66, %60 ]
  %27 = phi ptr [ %14, %12 ], [ %64, %60 ]
  %28 = phi ptr [ %15, %12 ], [ %63, %60 ]
  %29 = phi ptr [ %17, %12 ], [ %62, %60 ]
  %30 = phi ptr [ %19, %12 ], [ %61, %60 ]
  %31 = load i32, ptr %22, align 8, !tbaa !76
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %24, %51
  %34 = phi ptr [ %53, %51 ], [ %25, %24 ]
  %35 = phi i32 [ %52, %51 ], [ 0, %24 ]
  %36 = phi ptr [ %57, %51 ], [ %27, %24 ]
  %37 = phi ptr [ %56, %51 ], [ %28, %24 ]
  %38 = phi ptr [ %54, %51 ], [ %29, %24 ]
  %39 = phi ptr [ %55, %51 ], [ %30, %24 ]
  %40 = load i32, ptr %38, align 4, !tbaa !166
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %33
  %43 = load i32, ptr %39, align 4, !tbaa !166
  %44 = load i32, ptr %37, align 4, !tbaa !166
  %45 = load ptr, ptr %8, align 8, !tbaa !161
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load i32, ptr %36, align 4, !tbaa !166
  br label %49

49:                                               ; preds = %42, %47
  %50 = phi i32 [ %48, %47 ], [ 0, %42 ]
  tail call fastcc void @addps(ptr noundef %6, ptr noundef %34, i32 noundef %43, i32 noundef %40, i32 noundef %44, i32 noundef %50, i16 noundef zeroext %23)
  br label %51

51:                                               ; preds = %33, %49
  %52 = add nuw nsw i32 %35, 1
  %53 = getelementptr inbounds i64, ptr %34, i64 1
  %54 = getelementptr inbounds i32, ptr %38, i64 1
  %55 = getelementptr inbounds i32, ptr %39, i64 1
  %56 = getelementptr inbounds i32, ptr %37, i64 1
  %57 = getelementptr inbounds i32, ptr %36, i64 1
  %58 = load i32, ptr %22, align 8, !tbaa !76
  %59 = icmp slt i32 %52, %58
  br i1 %59, label %33, label %60, !llvm.loop !167

60:                                               ; preds = %51, %24
  %61 = phi ptr [ %30, %24 ], [ %55, %51 ]
  %62 = phi ptr [ %29, %24 ], [ %54, %51 ]
  %63 = phi ptr [ %28, %24 ], [ %56, %51 ]
  %64 = phi ptr [ %27, %24 ], [ %57, %51 ]
  %65 = phi ptr [ %25, %24 ], [ %53, %51 ]
  %66 = add nuw nsw i32 %26, 1
  %67 = load i32, ptr %9, align 4, !tbaa !77
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %24, label %69, !llvm.loop !168

69:                                               ; preds = %60, %4
  %70 = load ptr, ptr %3, align 8, !tbaa !89
  %71 = getelementptr inbounds %struct.RenderLayer, ptr %70, i64 0, i32 6
  %72 = load i32, ptr %71, align 8, !tbaa !81
  %73 = and i32 %72, 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %69
  %76 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %77 = and i32 %76, 32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.ZbufSolidData, ptr %3, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !92
  %82 = load ptr, ptr %7, align 8, !tbaa !163
  tail call fastcc void @edge_enhance_tile(ptr noundef %0, ptr noundef %81, ptr noundef %82)
  br label %83

83:                                               ; preds = %75, %79, %69
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @lamphalo_tile(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca [16 x ptr], align 16
  %4 = alloca %struct.ShadeInput, align 8
  %5 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 1472, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  %6 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  %8 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  %16 = getelementptr inbounds %struct.RenderResult, ptr %15, i64 0, i32 12
  %17 = tail call i32 @BLI_findindex(ptr noundef nonnull %16, ptr noundef %1) #12
  %18 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %19 = sext i16 %18 to i32
  %20 = icmp sgt i16 %18, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %13, %21
  %22 = phi i64 [ %28, %21 ], [ 0, %13 ]
  %23 = trunc i64 %22 to i32
  %24 = tail call ptr @BLI_findlink(ptr noundef nonnull %10, i32 noundef %23) #12
  %25 = getelementptr inbounds %struct.RenderResult, ptr %24, i64 0, i32 12
  %26 = tail call ptr @BLI_findlink(ptr noundef nonnull %25, i32 noundef %17) #12
  %27 = getelementptr inbounds ptr, ptr %3, i64 %22
  store ptr %26, ptr %27, align 8, !tbaa !72
  %28 = add nuw nsw i64 %22, 1
  %29 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %30 = sext i16 %29 to i64
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %21, label %33, !llvm.loop !73

32:                                               ; preds = %2
  store ptr %1, ptr %3, align 16, !tbaa !72
  br label %35

33:                                               ; preds = %21
  %34 = sext i16 %29 to i32
  br label %35

35:                                               ; preds = %13, %32, %33
  %36 = phi i32 [ 1, %32 ], [ %19, %13 ], [ %34, %33 ]
  %37 = icmp sgt i32 %36, 1
  call void @shade_input_initialize(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1, i32 noundef 0) #12
  %38 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13
  %39 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !96
  %41 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !103
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %460

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 1
  %46 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 30
  %47 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 30, i64 2
  %48 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 30, i64 1
  %49 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 30, i64 1
  %50 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  %51 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  %52 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  %53 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 29
  %54 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 29, i64 1
  %55 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 29, i64 2
  %56 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 29
  %57 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 29, i64 2
  %58 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 30, i64 2
  %59 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 30, i64 1
  %60 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 29, i64 1
  %61 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 11
  %62 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 29, i64 2
  %63 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  %64 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  %65 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  %66 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 11
  %67 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 29
  %68 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 29, i64 1
  %69 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 29, i64 2
  %70 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 29
  %71 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 29, i64 2
  %72 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 30, i64 2
  %73 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 30, i64 1
  %74 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 29, i64 1
  %75 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  %76 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  %77 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  %78 = icmp sgt i32 %36, 0
  %79 = zext nneg i32 %36 to i64
  %80 = zext nneg i32 %36 to i64
  %81 = zext nneg i32 %36 to i64
  br label %82

82:                                               ; preds = %44, %456
  %83 = phi i32 [ 0, %44 ], [ %448, %456 ]
  %84 = phi ptr [ %7, %44 ], [ %447, %456 ]
  %85 = phi i32 [ %40, %44 ], [ %457, %456 ]
  %86 = phi ptr [ %9, %44 ], [ %446, %456 ]
  %87 = load i32, ptr %38, align 8, !tbaa !104
  %88 = load i32, ptr %45, align 4, !tbaa !105
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %445

90:                                               ; preds = %82
  %91 = sitofp i32 %85 to float
  %92 = zext i32 %83 to i64
  br label %93

93:                                               ; preds = %90, %435
  %94 = phi i64 [ %92, %90 ], [ %440, %435 ]
  %95 = phi ptr [ %84, %90 ], [ %437, %435 ]
  %96 = phi i32 [ %87, %90 ], [ %438, %435 ]
  %97 = phi ptr [ %86, %90 ], [ %439, %435 ]
  %98 = sitofp i32 %96 to float
  %99 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 36), align 8
  %100 = fcmp olt float %99, 0.000000e+00
  %101 = fneg float %99
  %102 = select i1 %100, float %99, float %101
  store float %102, ptr %47, align 4, !tbaa !34
  %103 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %104 = and i32 %103, 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %93
  store float 0.000000e+00, ptr %48, align 8, !tbaa !34
  store float 0.000000e+00, ptr %46, align 4, !tbaa !34
  br label %137

107:                                              ; preds = %93
  %108 = and i32 %103, 1024
  %109 = icmp eq i32 %108, 0
  %110 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 28), align 8
  %111 = select i1 %109, float 0.000000e+00, float %110
  %112 = fsub float %98, %111
  %113 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !57
  %114 = sitofp i32 %113 to float
  %115 = fdiv float %112, %114
  %116 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 16), align 4, !tbaa !58
  %117 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 16, i32 1), align 8, !tbaa !59
  %118 = fsub float %117, %116
  %119 = call float @llvm.fmuladd.f32(float %115, float %118, float %116)
  store float %119, ptr %46, align 4, !tbaa !34
  %120 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !60
  %121 = sitofp i32 %120 to float
  %122 = fdiv float %91, %121
  %123 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 16, i32 2), align 4, !tbaa !61
  %124 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 16, i32 3), align 8, !tbaa !62
  %125 = fsub float %124, %123
  %126 = call float @llvm.fmuladd.f32(float %122, float %125, float %123)
  store float %126, ptr %49, align 8, !tbaa !34
  br i1 %109, label %137, label %127

127:                                              ; preds = %107
  %128 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 29), align 4, !tbaa !63
  %129 = fadd float %119, %128
  %130 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 27), align 4, !tbaa !64
  %131 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 26), align 8, !tbaa !65
  %132 = fmul float %102, %131
  %133 = call float @llvm.fmuladd.f32(float %130, float %129, float %132)
  store float %133, ptr %46, align 4, !tbaa !34
  %134 = fneg float %131
  %135 = fmul float %102, %130
  %136 = call float @llvm.fmuladd.f32(float %134, float %129, float %135)
  store float %136, ptr %47, align 4, !tbaa !34
  br label %137

137:                                              ; preds = %106, %107, %127
  %138 = icmp eq ptr %95, null
  br i1 %138, label %358, label %139

139:                                              ; preds = %137
  %140 = load i64, ptr %95, align 8, !tbaa !107
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %358, label %142

142:                                              ; preds = %139
  %143 = inttoptr i64 %140 to ptr
  %144 = trunc i64 %94 to i32
  %145 = shl nsw i32 %144, 2
  %146 = sext i32 %145 to i64
  %147 = trunc i64 %94 to i32
  %148 = shl nsw i32 %147, 2
  %149 = sext i32 %148 to i64
  br label %150

150:                                              ; preds = %142, %286
  %151 = phi i32 [ 0, %142 ], [ %226, %286 ]
  %152 = phi i32 [ 0, %142 ], [ %223, %286 ]
  %153 = phi ptr [ %143, %142 ], [ %287, %286 ]
  %154 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %155 = and i32 %154, 8
  %156 = icmp eq i32 %155, 0
  %157 = getelementptr inbounds %struct.PixStr, ptr %153, i64 0, i32 3
  %158 = load i32, ptr %157, align 8, !tbaa !169
  br i1 %156, label %188, label %159

159:                                              ; preds = %150
  %160 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !57
  %161 = sitofp i32 %160 to float
  %162 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35), align 8, !tbaa !34
  %163 = fmul float %162, %161
  %164 = fdiv float 2.000000e+00, %163
  %165 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !60
  %166 = sitofp i32 %165 to float
  %167 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 1, i64 1), align 4, !tbaa !34
  %168 = fmul float %167, %166
  %169 = fdiv float 2.000000e+00, %168
  %170 = call float @llvm.fmuladd.f32(float %161, float -5.000000e-01, float %98)
  %171 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 3), align 8, !tbaa !34
  %172 = fneg float %171
  %173 = fdiv float %172, %162
  %174 = call float @llvm.fmuladd.f32(float %170, float %164, float %173)
  store float %174, ptr %53, align 8, !tbaa !34
  %175 = call float @llvm.fmuladd.f32(float %166, float -5.000000e-01, float %91)
  %176 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 3, i64 1), align 4, !tbaa !34
  %177 = fneg float %176
  %178 = fdiv float %177, %167
  %179 = call float @llvm.fmuladd.f32(float %175, float %169, float %178)
  store float %179, ptr %54, align 4, !tbaa !34
  %180 = sitofp i32 %158 to float
  %181 = fmul float %180, 0x3E00000000000000
  %182 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 3, i64 2), align 8, !tbaa !34
  %183 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 2, i64 3), align 4, !tbaa !34
  %184 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 2, i64 2), align 8, !tbaa !34
  %185 = fneg float %184
  %186 = call float @llvm.fmuladd.f32(float %183, float %181, float %185)
  %187 = fdiv float %182, %186
  store float %187, ptr %55, align 8, !tbaa !34
  br label %203

188:                                              ; preds = %150
  %189 = sitofp i32 %158 to float
  %190 = fmul float %189, 0x3E00000000000000
  %191 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 3, i64 2), align 8, !tbaa !34
  %192 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 2, i64 3), align 4, !tbaa !34
  %193 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 2, i64 2), align 8, !tbaa !34
  %194 = fneg float %193
  %195 = call float @llvm.fmuladd.f32(float %192, float %190, float %194)
  %196 = fdiv float %191, %195
  store float %196, ptr %57, align 8, !tbaa !34
  %197 = load float, ptr %58, align 4, !tbaa !34
  %198 = fdiv float %196, %197
  %199 = load float, ptr %46, align 4, !tbaa !34
  %200 = fmul float %198, %199
  store float %200, ptr %56, align 8, !tbaa !34
  %201 = load float, ptr %59, align 8, !tbaa !34
  %202 = fmul float %198, %201
  store float %202, ptr %60, align 4, !tbaa !34
  br label %203

203:                                              ; preds = %188, %159
  %204 = getelementptr inbounds %struct.PixStr, ptr %153, i64 0, i32 5
  %205 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 38), align 8, !tbaa !66
  %206 = icmp eq ptr %205, null
  br i1 %206, label %221, label %207

207:                                              ; preds = %203
  %208 = load i16, ptr %204, align 8, !tbaa !141
  %209 = zext i16 %208 to i32
  %210 = and i32 %209, 255
  %211 = zext nneg i32 %210 to i64
  %212 = getelementptr inbounds %struct.SampleTables, ptr %205, i64 0, i32 3, i64 %211
  %213 = load i8, ptr %212, align 1, !tbaa !67
  %214 = zext i8 %213 to i32
  %215 = lshr i32 %209, 8
  %216 = zext nneg i32 %215 to i64
  %217 = getelementptr inbounds %struct.SampleTables, ptr %205, i64 0, i32 3, i64 %216
  %218 = load i8, ptr %217, align 1, !tbaa !67
  %219 = zext i8 %218 to i32
  %220 = add nuw nsw i32 %219, %214
  br label %221

221:                                              ; preds = %203, %207
  %222 = phi i32 [ %220, %207 ], [ 0, %203 ]
  %223 = add nuw nsw i32 %222, %152
  %224 = load i16, ptr %204, align 8, !tbaa !141
  %225 = zext i16 %224 to i32
  %226 = or i32 %151, %225
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @renderspothalo(ptr noundef nonnull %4, ptr noundef nonnull %5, float noundef 1.000000e+00) #12
  br i1 %37, label %227, label %262

227:                                              ; preds = %221
  %228 = load i16, ptr %204, align 8, !tbaa !141
  %229 = zext i16 %228 to i32
  br label %230

230:                                              ; preds = %227, %259
  %231 = phi i64 [ 0, %227 ], [ %260, %259 ]
  %232 = trunc i64 %231 to i32
  %233 = shl nuw i32 1, %232
  %234 = and i32 %233, %229
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %259, label %236

236:                                              ; preds = %230
  %237 = getelementptr inbounds [16 x ptr], ptr %3, i64 0, i64 %231
  %238 = load ptr, ptr %237, align 8, !tbaa !72
  %239 = getelementptr inbounds %struct.RenderLayer, ptr %238, i64 0, i32 11
  %240 = load ptr, ptr %239, align 8, !tbaa !115
  %241 = getelementptr inbounds float, ptr %240, i64 %149
  %242 = load float, ptr %5, align 16, !tbaa !34
  %243 = load float, ptr %241, align 4, !tbaa !34
  %244 = fadd float %242, %243
  store float %244, ptr %241, align 4, !tbaa !34
  %245 = load float, ptr %52, align 4, !tbaa !34
  %246 = getelementptr inbounds float, ptr %241, i64 1
  %247 = load float, ptr %246, align 4, !tbaa !34
  %248 = fadd float %245, %247
  store float %248, ptr %246, align 4, !tbaa !34
  %249 = load float, ptr %51, align 8, !tbaa !34
  %250 = getelementptr inbounds float, ptr %241, i64 2
  %251 = load float, ptr %250, align 4, !tbaa !34
  %252 = fadd float %249, %251
  store float %252, ptr %250, align 4, !tbaa !34
  %253 = load float, ptr %50, align 4, !tbaa !34
  %254 = getelementptr inbounds float, ptr %241, i64 3
  %255 = load float, ptr %254, align 4, !tbaa !34
  %256 = fadd float %253, %255
  store float %256, ptr %254, align 4, !tbaa !34
  %257 = fcmp ogt float %256, 1.000000e+00
  br i1 %257, label %258, label %259

258:                                              ; preds = %236
  store float 1.000000e+00, ptr %254, align 4, !tbaa !34
  br label %259

259:                                              ; preds = %230, %258, %236
  %260 = add nuw nsw i64 %231, 1
  %261 = icmp eq i64 %260, %79
  br i1 %261, label %286, label %230, !llvm.loop !170

262:                                              ; preds = %221
  %263 = sitofp i32 %222 to float
  %264 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %265 = sitofp i16 %264 to float
  %266 = fdiv float %263, %265
  %267 = load ptr, ptr %61, align 8, !tbaa !115
  %268 = getelementptr inbounds float, ptr %267, i64 %146
  %269 = load float, ptr %5, align 16, !tbaa !34
  %270 = load float, ptr %268, align 4, !tbaa !34
  %271 = call float @llvm.fmuladd.f32(float %266, float %269, float %270)
  store float %271, ptr %268, align 4, !tbaa !34
  %272 = load float, ptr %52, align 4, !tbaa !34
  %273 = getelementptr inbounds float, ptr %268, i64 1
  %274 = load float, ptr %273, align 4, !tbaa !34
  %275 = call float @llvm.fmuladd.f32(float %266, float %272, float %274)
  store float %275, ptr %273, align 4, !tbaa !34
  %276 = load float, ptr %51, align 8, !tbaa !34
  %277 = getelementptr inbounds float, ptr %268, i64 2
  %278 = load float, ptr %277, align 4, !tbaa !34
  %279 = call float @llvm.fmuladd.f32(float %266, float %276, float %278)
  store float %279, ptr %277, align 4, !tbaa !34
  %280 = load float, ptr %50, align 4, !tbaa !34
  %281 = getelementptr inbounds float, ptr %268, i64 3
  %282 = load float, ptr %281, align 4, !tbaa !34
  %283 = call float @llvm.fmuladd.f32(float %266, float %280, float %282)
  store float %283, ptr %281, align 4, !tbaa !34
  %284 = fcmp ogt float %283, 1.000000e+00
  br i1 %284, label %285, label %286

285:                                              ; preds = %262
  store float 1.000000e+00, ptr %281, align 4, !tbaa !34
  br label %286

286:                                              ; preds = %259, %262, %285
  %287 = load ptr, ptr %153, align 8, !tbaa !144
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %150, !llvm.loop !171

289:                                              ; preds = %286
  %290 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %291 = sext i16 %290 to i32
  %292 = icmp slt i32 %223, %291
  br i1 %292, label %293, label %435

293:                                              ; preds = %289
  store float 0.000000e+00, ptr %62, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @renderspothalo(ptr noundef nonnull %4, ptr noundef nonnull %5, float noundef 1.000000e+00) #12
  br i1 %37, label %294, label %330

294:                                              ; preds = %293
  %295 = trunc i64 %94 to i32
  %296 = shl nsw i32 %295, 2
  %297 = sext i32 %296 to i64
  br label %298

298:                                              ; preds = %294, %327
  %299 = phi i64 [ 0, %294 ], [ %328, %327 ]
  %300 = trunc i64 %299 to i32
  %301 = shl nuw i32 1, %300
  %302 = and i32 %301, %226
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %327

304:                                              ; preds = %298
  %305 = getelementptr inbounds [16 x ptr], ptr %3, i64 0, i64 %299
  %306 = load ptr, ptr %305, align 8, !tbaa !72
  %307 = getelementptr inbounds %struct.RenderLayer, ptr %306, i64 0, i32 11
  %308 = load ptr, ptr %307, align 8, !tbaa !115
  %309 = getelementptr inbounds float, ptr %308, i64 %297
  %310 = load float, ptr %5, align 16, !tbaa !34
  %311 = load float, ptr %309, align 4, !tbaa !34
  %312 = fadd float %310, %311
  store float %312, ptr %309, align 4, !tbaa !34
  %313 = load float, ptr %65, align 4, !tbaa !34
  %314 = getelementptr inbounds float, ptr %309, i64 1
  %315 = load float, ptr %314, align 4, !tbaa !34
  %316 = fadd float %313, %315
  store float %316, ptr %314, align 4, !tbaa !34
  %317 = load float, ptr %64, align 8, !tbaa !34
  %318 = getelementptr inbounds float, ptr %309, i64 2
  %319 = load float, ptr %318, align 4, !tbaa !34
  %320 = fadd float %317, %319
  store float %320, ptr %318, align 4, !tbaa !34
  %321 = load float, ptr %63, align 4, !tbaa !34
  %322 = getelementptr inbounds float, ptr %309, i64 3
  %323 = load float, ptr %322, align 4, !tbaa !34
  %324 = fadd float %321, %323
  store float %324, ptr %322, align 4, !tbaa !34
  %325 = fcmp ogt float %324, 1.000000e+00
  br i1 %325, label %326, label %327

326:                                              ; preds = %304
  store float 1.000000e+00, ptr %322, align 4, !tbaa !34
  br label %327

327:                                              ; preds = %298, %326, %304
  %328 = add nuw nsw i64 %299, 1
  %329 = icmp eq i64 %328, %80
  br i1 %329, label %435, label %298, !llvm.loop !172

330:                                              ; preds = %293
  %331 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %332 = sitofp i16 %331 to float
  %333 = sitofp i32 %223 to float
  %334 = fsub float %332, %333
  %335 = fdiv float %334, %332
  %336 = load ptr, ptr %66, align 8, !tbaa !115
  %337 = trunc i64 %94 to i32
  %338 = shl nsw i32 %337, 2
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds float, ptr %336, i64 %339
  %341 = load float, ptr %5, align 16, !tbaa !34
  %342 = load float, ptr %340, align 4, !tbaa !34
  %343 = call float @llvm.fmuladd.f32(float %335, float %341, float %342)
  store float %343, ptr %340, align 4, !tbaa !34
  %344 = load float, ptr %65, align 4, !tbaa !34
  %345 = getelementptr inbounds float, ptr %340, i64 1
  %346 = load float, ptr %345, align 4, !tbaa !34
  %347 = call float @llvm.fmuladd.f32(float %335, float %344, float %346)
  store float %347, ptr %345, align 4, !tbaa !34
  %348 = load float, ptr %64, align 8, !tbaa !34
  %349 = getelementptr inbounds float, ptr %340, i64 2
  %350 = load float, ptr %349, align 4, !tbaa !34
  %351 = call float @llvm.fmuladd.f32(float %335, float %348, float %350)
  store float %351, ptr %349, align 4, !tbaa !34
  %352 = load float, ptr %63, align 4, !tbaa !34
  %353 = getelementptr inbounds float, ptr %340, i64 3
  %354 = load float, ptr %353, align 4, !tbaa !34
  %355 = call float @llvm.fmuladd.f32(float %335, float %352, float %354)
  store float %355, ptr %353, align 4, !tbaa !34
  %356 = fcmp ogt float %355, 1.000000e+00
  br i1 %356, label %357, label %435

357:                                              ; preds = %330
  store float 1.000000e+00, ptr %353, align 4, !tbaa !34
  br label %435

358:                                              ; preds = %139, %137
  %359 = load i32, ptr %97, align 4, !tbaa !166
  br i1 %105, label %389, label %360

360:                                              ; preds = %358
  %361 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !57
  %362 = sitofp i32 %361 to float
  %363 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35), align 8, !tbaa !34
  %364 = fmul float %363, %362
  %365 = fdiv float 2.000000e+00, %364
  %366 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !60
  %367 = sitofp i32 %366 to float
  %368 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 1, i64 1), align 4, !tbaa !34
  %369 = fmul float %368, %367
  %370 = fdiv float 2.000000e+00, %369
  %371 = call float @llvm.fmuladd.f32(float %362, float -5.000000e-01, float %98)
  %372 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 3), align 8, !tbaa !34
  %373 = fneg float %372
  %374 = fdiv float %373, %363
  %375 = call float @llvm.fmuladd.f32(float %371, float %365, float %374)
  store float %375, ptr %67, align 8, !tbaa !34
  %376 = call float @llvm.fmuladd.f32(float %367, float -5.000000e-01, float %91)
  %377 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 3, i64 1), align 4, !tbaa !34
  %378 = fneg float %377
  %379 = fdiv float %378, %368
  %380 = call float @llvm.fmuladd.f32(float %376, float %370, float %379)
  store float %380, ptr %68, align 4, !tbaa !34
  %381 = sitofp i32 %359 to float
  %382 = fmul float %381, 0x3E00000000000000
  %383 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 3, i64 2), align 8, !tbaa !34
  %384 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 2, i64 3), align 4, !tbaa !34
  %385 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 2, i64 2), align 8, !tbaa !34
  %386 = fneg float %385
  %387 = call float @llvm.fmuladd.f32(float %384, float %382, float %386)
  %388 = fdiv float %383, %387
  store float %388, ptr %69, align 8, !tbaa !34
  br label %404

389:                                              ; preds = %358
  %390 = sitofp i32 %359 to float
  %391 = fmul float %390, 0x3E00000000000000
  %392 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 3, i64 2), align 8, !tbaa !34
  %393 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 2, i64 3), align 4, !tbaa !34
  %394 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 2, i64 2), align 8, !tbaa !34
  %395 = fneg float %394
  %396 = call float @llvm.fmuladd.f32(float %393, float %391, float %395)
  %397 = fdiv float %392, %396
  store float %397, ptr %71, align 8, !tbaa !34
  %398 = load float, ptr %72, align 4, !tbaa !34
  %399 = fdiv float %397, %398
  %400 = load float, ptr %46, align 4, !tbaa !34
  %401 = fmul float %399, %400
  store float %401, ptr %70, align 8, !tbaa !34
  %402 = load float, ptr %73, align 8, !tbaa !34
  %403 = fmul float %399, %402
  store float %403, ptr %74, align 4, !tbaa !34
  br label %404

404:                                              ; preds = %389, %360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @renderspothalo(ptr noundef nonnull %4, ptr noundef nonnull %5, float noundef 1.000000e+00) #12
  br i1 %78, label %405, label %435

405:                                              ; preds = %404
  %406 = trunc i64 %94 to i32
  %407 = shl nsw i32 %406, 2
  %408 = sext i32 %407 to i64
  br label %409

409:                                              ; preds = %405, %409
  %410 = phi i64 [ 0, %405 ], [ %433, %409 ]
  %411 = getelementptr inbounds [16 x ptr], ptr %3, i64 0, i64 %410
  %412 = load ptr, ptr %411, align 8, !tbaa !72
  %413 = getelementptr inbounds %struct.RenderLayer, ptr %412, i64 0, i32 11
  %414 = load ptr, ptr %413, align 8, !tbaa !115
  %415 = getelementptr inbounds float, ptr %414, i64 %408
  %416 = load float, ptr %5, align 16, !tbaa !34
  %417 = load float, ptr %415, align 4, !tbaa !34
  %418 = fadd float %416, %417
  store float %418, ptr %415, align 4, !tbaa !34
  %419 = load float, ptr %77, align 4, !tbaa !34
  %420 = getelementptr inbounds float, ptr %415, i64 1
  %421 = load float, ptr %420, align 4, !tbaa !34
  %422 = fadd float %419, %421
  store float %422, ptr %420, align 4, !tbaa !34
  %423 = load float, ptr %76, align 8, !tbaa !34
  %424 = getelementptr inbounds float, ptr %415, i64 2
  %425 = load float, ptr %424, align 4, !tbaa !34
  %426 = fadd float %423, %425
  store float %426, ptr %424, align 4, !tbaa !34
  %427 = load float, ptr %75, align 4, !tbaa !34
  %428 = getelementptr inbounds float, ptr %415, i64 3
  %429 = load float, ptr %428, align 4, !tbaa !34
  %430 = fadd float %427, %429
  %431 = fcmp ogt float %430, 1.000000e+00
  %432 = select i1 %431, float 1.000000e+00, float %430
  store float %432, ptr %428, align 4, !tbaa !34
  %433 = add nuw nsw i64 %410, 1
  %434 = icmp eq i64 %433, %81
  br i1 %434, label %435, label %409, !llvm.loop !173

435:                                              ; preds = %327, %409, %404, %289, %330, %357
  %436 = getelementptr inbounds i64, ptr %95, i64 1
  %437 = select i1 %138, ptr null, ptr %436
  %438 = add nsw i32 %96, 1
  %439 = getelementptr inbounds i32, ptr %97, i64 1
  %440 = add i64 %94, 1
  %441 = load i32, ptr %45, align 4, !tbaa !105
  %442 = icmp slt i32 %438, %441
  br i1 %442, label %93, label %443, !llvm.loop !174

443:                                              ; preds = %435
  %444 = trunc i64 %440 to i32
  br label %445

445:                                              ; preds = %443, %82
  %446 = phi ptr [ %86, %82 ], [ %439, %443 ]
  %447 = phi ptr [ %84, %82 ], [ %437, %443 ]
  %448 = phi i32 [ %83, %82 ], [ %444, %443 ]
  %449 = and i32 %85, 1
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %456, label %451

451:                                              ; preds = %445
  %452 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !93
  %453 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !94
  %454 = call i32 %452(ptr noundef %453) #12
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %460

456:                                              ; preds = %445, %451
  %457 = add nsw i32 %85, 1
  %458 = load i32, ptr %41, align 4, !tbaa !103
  %459 = icmp slt i32 %457, %458
  br i1 %459, label %82, label %460, !llvm.loop !175

460:                                              ; preds = %456, %451, %35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1472, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @halo_tile(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca [4 x float], align 16
  %4 = alloca [16 x ptr], align 16
  %5 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #12
  %6 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 1
  %9 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 3
  %12 = load i32, ptr %8, align 4, !tbaa.struct !176
  %13 = load i32, ptr %11, align 4, !tbaa.struct !177
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  %14 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !178
  %16 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 17
  %17 = load i16, ptr %16, align 4, !tbaa !98
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = sext i16 %17 to i32
  %21 = add nsw i32 %7, %20
  %22 = sub nsw i32 %12, %20
  %23 = add nsw i32 %10, %20
  %24 = sub nsw i32 %13, %20
  br label %25

25:                                               ; preds = %19, %2
  %26 = phi i32 [ %21, %19 ], [ %7, %2 ]
  %27 = phi i32 [ %22, %19 ], [ %12, %2 ]
  %28 = phi i32 [ %23, %19 ], [ %10, %2 ]
  %29 = phi i32 [ %24, %19 ], [ %13, %2 ]
  %30 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !68
  %32 = icmp eq ptr %31, null
  br i1 %32, label %52, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !70
  %36 = getelementptr inbounds %struct.RenderResult, ptr %35, i64 0, i32 12
  %37 = tail call i32 @BLI_findindex(ptr noundef nonnull %36, ptr noundef %1) #12
  %38 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %39 = sext i16 %38 to i32
  %40 = icmp sgt i16 %38, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %33, %41
  %42 = phi i64 [ %48, %41 ], [ 0, %33 ]
  %43 = trunc i64 %42 to i32
  %44 = tail call ptr @BLI_findlink(ptr noundef nonnull %30, i32 noundef %43) #12
  %45 = getelementptr inbounds %struct.RenderResult, ptr %44, i64 0, i32 12
  %46 = tail call ptr @BLI_findlink(ptr noundef nonnull %45, i32 noundef %37) #12
  %47 = getelementptr inbounds ptr, ptr %4, i64 %42
  store ptr %46, ptr %47, align 8, !tbaa !72
  %48 = add nuw nsw i64 %42, 1
  %49 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %50 = sext i16 %49 to i64
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %41, label %53, !llvm.loop !73

52:                                               ; preds = %25
  store ptr %1, ptr %4, align 16, !tbaa !72
  br label %55

53:                                               ; preds = %41
  %54 = sext i16 %49 to i32
  br label %55

55:                                               ; preds = %33, %52, %53
  %56 = phi i32 [ 1, %52 ], [ %39, %33 ], [ %54, %53 ]
  %57 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 62), align 8, !tbaa !179
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %410

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %61 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 6
  %62 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 8
  %63 = icmp sgt i32 %56, 1
  %64 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 3
  %65 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 2
  %66 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 1
  %67 = icmp sgt i32 %56, 0
  %68 = load ptr, ptr %4, align 16
  %69 = getelementptr inbounds %struct.RenderLayer, ptr %68, i64 0, i32 11
  %70 = icmp sgt i32 %56, 1
  %71 = icmp slt i32 %56, 1
  %72 = zext nneg i32 %56 to i64
  %73 = zext nneg i32 %56 to i64
  %74 = zext i32 %56 to i64
  br label %80

75:                                               ; preds = %404
  %76 = add nuw nsw i64 %81, 1
  %77 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 62), align 8, !tbaa !179
  %78 = sext i32 %77 to i64
  %79 = icmp slt i64 %76, %78
  br i1 %79, label %80, label %410, !llvm.loop !180

80:                                               ; preds = %59, %75
  %81 = phi i64 [ 0, %59 ], [ %76, %75 ]
  %82 = phi ptr [ null, %59 ], [ %405, %75 ]
  %83 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 65), align 8, !tbaa !181
  %84 = getelementptr inbounds ptr, ptr %83, i64 %81
  %85 = load ptr, ptr %84, align 8, !tbaa !72
  %86 = getelementptr inbounds %struct.HaloRen, ptr %85, i64 0, i32 28
  %87 = load i32, ptr %86, align 8, !tbaa !182
  %88 = and i32 %87, %15
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %404, label %90

90:                                               ; preds = %80
  %91 = getelementptr inbounds %struct.HaloRen, ptr %85, i64 0, i32 1
  %92 = load i16, ptr %91, align 2, !tbaa !184
  %93 = sext i16 %92 to i32
  %94 = icmp sgt i32 %28, %93
  br i1 %94, label %404, label %95

95:                                               ; preds = %90
  %96 = load i16, ptr %85, align 8, !tbaa !185
  %97 = sext i16 %96 to i32
  %98 = icmp slt i32 %29, %97
  br i1 %98, label %404, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.HaloRen, ptr %85, i64 0, i32 3
  %101 = load float, ptr %100, align 8, !tbaa !186
  %102 = getelementptr inbounds %struct.HaloRen, ptr %85, i64 0, i32 5
  %103 = load float, ptr %102, align 8, !tbaa !187
  %104 = fadd float %101, %103
  %105 = call float @llvm.ceil.f32(float %104)
  %106 = fptosi float %105 to i16
  %107 = sext i16 %106 to i32
  %108 = icmp sgt i32 %26, %107
  br i1 %108, label %404, label %109

109:                                              ; preds = %99
  %110 = fsub float %101, %103
  %111 = call float @llvm.floor.f32(float %110)
  %112 = fptosi float %111 to i16
  %113 = sext i16 %112 to i32
  %114 = icmp slt i32 %27, %113
  br i1 %114, label %404, label %115

115:                                              ; preds = %109
  %116 = call i32 @llvm.smax.i32(i32 %26, i32 %113)
  %117 = trunc i32 %116 to i16
  %118 = call i32 @llvm.smax.i32(i32 %28, i32 %97)
  %119 = call i32 @llvm.smin.i32(i32 %93, i32 %29)
  %120 = shl i32 %118, 16
  %121 = ashr exact i32 %120, 16
  %122 = shl i32 %119, 16
  %123 = ashr exact i32 %122, 16
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %125, label %404

125:                                              ; preds = %115
  %126 = call i32 @llvm.smin.i32(i32 %107, i32 %27)
  %127 = shl i32 %116, 16
  %128 = ashr exact i32 %127, 16
  %129 = sub nsw i32 %128, %7
  %130 = getelementptr inbounds %struct.HaloRen, ptr %85, i64 0, i32 4
  %131 = shl i32 %126, 16
  %132 = ashr exact i32 %131, 16
  %133 = shl i32 %116, 16
  %134 = icmp sgt i32 %131, %133
  %135 = getelementptr inbounds %struct.HaloRen, ptr %85, i64 0, i32 6
  %136 = getelementptr inbounds %struct.HaloRen, ptr %85, i64 0, i32 25
  %137 = getelementptr inbounds %struct.HaloRen, ptr %85, i64 0, i32 19
  %138 = getelementptr inbounds %struct.HaloRen, ptr %85, i64 0, i32 15
  %139 = getelementptr inbounds %struct.HaloRen, ptr %85, i64 0, i32 29
  %140 = getelementptr inbounds %struct.HaloRen, ptr %85, i64 0, i32 20
  %141 = getelementptr inbounds %struct.HaloRen, ptr %85, i64 0, i32 20
  %142 = getelementptr inbounds %struct.HaloRen, ptr %85, i64 0, i32 20
  %143 = getelementptr inbounds %struct.HaloRen, ptr %85, i64 0, i32 19
  %144 = getelementptr inbounds %struct.HaloRen, ptr %85, i64 0, i32 15
  %145 = getelementptr inbounds %struct.HaloRen, ptr %85, i64 0, i32 29
  %146 = getelementptr inbounds %struct.HaloRen, ptr %85, i64 0, i32 25
  %147 = getelementptr inbounds %struct.HaloRen, ptr %85, i64 0, i32 20
  %148 = sub i32 %128, %7
  %149 = sub i32 %121, %10
  br label %150

150:                                              ; preds = %125, %399
  %151 = phi i32 [ %149, %125 ], [ %402, %399 ]
  %152 = phi ptr [ %82, %125 ], [ %400, %399 ]
  %153 = phi i32 [ %121, %125 ], [ %401, %399 ]
  %154 = sub nsw i32 %153, %10
  %155 = load i32, ptr %60, align 8, !tbaa !76
  %156 = mul nsw i32 %155, %154
  %157 = add nsw i32 %156, %129
  %158 = sext i32 %157 to i64
  %159 = load ptr, ptr %62, align 8, !tbaa !87
  %160 = icmp eq ptr %159, null
  %161 = getelementptr inbounds i64, ptr %159, i64 %158
  %162 = select i1 %160, ptr %152, ptr %161
  %163 = sitofp i32 %153 to float
  %164 = load float, ptr %130, align 4, !tbaa !188
  %165 = fsub float %163, %164
  %166 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 24), align 8, !tbaa !189
  %167 = fmul float %165, %166
  %168 = fmul float %167, %167
  br i1 %134, label %169, label %399

169:                                              ; preds = %150
  %170 = load ptr, ptr %61, align 8, !tbaa !80
  %171 = getelementptr inbounds i32, ptr %170, i64 %158
  %172 = mul i32 %155, %151
  %173 = add i32 %148, %172
  %174 = zext i32 %173 to i64
  br label %175

175:                                              ; preds = %169, %390
  %176 = phi i64 [ %174, %169 ], [ %396, %390 ]
  %177 = phi i16 [ %117, %169 ], [ %394, %390 ]
  %178 = phi ptr [ %162, %169 ], [ %393, %390 ]
  %179 = phi ptr [ %171, %169 ], [ %395, %390 ]
  %180 = sitofp i16 %177 to float
  %181 = load float, ptr %100, align 8, !tbaa !186
  %182 = fsub float %180, %181
  %183 = fmul float %182, %182
  %184 = fadd float %168, %183
  %185 = load float, ptr %135, align 4, !tbaa !190
  %186 = fcmp olt float %184, %185
  br i1 %186, label %187, label %390

187:                                              ; preds = %175
  %188 = icmp eq ptr %178, null
  br i1 %188, label %352, label %189

189:                                              ; preds = %187
  %190 = load i64, ptr %178, align 8, !tbaa !107
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %352, label %192

192:                                              ; preds = %189
  %193 = inttoptr i64 %190 to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %194 = load i16, ptr %136, align 4, !tbaa !191
  %195 = zext i16 %194 to i32
  %196 = trunc i64 %176 to i32
  %197 = shl nsw i32 %196, 2
  %198 = sext i32 %197 to i64
  br label %199

199:                                              ; preds = %192, %283
  %200 = phi i32 [ 0, %192 ], [ %291, %283 ]
  %201 = phi ptr [ %193, %192 ], [ %292, %283 ]
  %202 = phi i32 [ %195, %192 ], [ %288, %283 ]
  %203 = phi float [ 0.000000e+00, %192 ], [ %287, %283 ]
  %204 = phi float [ 0.000000e+00, %192 ], [ %286, %283 ]
  %205 = phi i32 [ 0, %192 ], [ %227, %283 ]
  %206 = phi float [ 0.000000e+00, %192 ], [ %285, %283 ]
  %207 = phi float [ 0.000000e+00, %192 ], [ %284, %283 ]
  %208 = getelementptr inbounds %struct.PixStr, ptr %201, i64 0, i32 5
  %209 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 38), align 8, !tbaa !66
  %210 = icmp eq ptr %209, null
  br i1 %210, label %225, label %211

211:                                              ; preds = %199
  %212 = load i16, ptr %208, align 8, !tbaa !141
  %213 = zext i16 %212 to i32
  %214 = and i32 %213, 255
  %215 = zext nneg i32 %214 to i64
  %216 = getelementptr inbounds %struct.SampleTables, ptr %209, i64 0, i32 3, i64 %215
  %217 = load i8, ptr %216, align 1, !tbaa !67
  %218 = zext i8 %217 to i32
  %219 = lshr i32 %213, 8
  %220 = zext nneg i32 %219 to i64
  %221 = getelementptr inbounds %struct.SampleTables, ptr %209, i64 0, i32 3, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !67
  %223 = zext i8 %222 to i32
  %224 = add nuw nsw i32 %223, %218
  br label %225

225:                                              ; preds = %211, %199
  %226 = phi i32 [ %224, %211 ], [ 0, %199 ]
  %227 = add nuw nsw i32 %226, %205
  %228 = getelementptr inbounds %struct.PixStr, ptr %201, i64 0, i32 3
  %229 = load i32, ptr %228, align 8, !tbaa !169
  %230 = load i8, ptr %137, align 1, !tbaa !192
  %231 = and i8 %230, 1
  %232 = icmp eq i8 %231, 0
  %233 = icmp slt i32 %229, 2147483632
  %234 = select i1 %233, i32 -8388607, i32 %229
  %235 = ashr i32 %229, 8
  %236 = select i1 %232, i32 %235, i32 %234
  %237 = load i32, ptr %138, align 8, !tbaa !193
  %238 = icmp sgt i32 %236, %237
  br i1 %238, label %247, label %239

239:                                              ; preds = %225
  %240 = load ptr, ptr %139, align 8, !tbaa !194
  %241 = icmp eq ptr %240, null
  br i1 %241, label %283, label %242

242:                                              ; preds = %239
  %243 = getelementptr inbounds %struct.Material, ptr %240, i64 0, i32 51
  %244 = load i32, ptr %243, align 4, !tbaa !195
  %245 = and i32 %244, 16
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %283, label %247

247:                                              ; preds = %242, %225
  %248 = trunc i32 %202 to i16
  %249 = call i32 @shadeHaloFloat(ptr noundef nonnull %85, ptr noundef nonnull %3, i32 noundef %236, float noundef %184, float noundef %182, float noundef %167, i16 noundef signext %248) #12
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %283, label %251

251:                                              ; preds = %247
  br i1 %63, label %252, label %270

252:                                              ; preds = %251, %267
  %253 = phi i64 [ %268, %267 ], [ 0, %251 ]
  %254 = load i16, ptr %208, align 8, !tbaa !141
  %255 = zext i16 %254 to i32
  %256 = trunc i64 %253 to i32
  %257 = shl nuw i32 1, %256
  %258 = and i32 %257, %255
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %267, label %260

260:                                              ; preds = %252
  %261 = getelementptr inbounds ptr, ptr %4, i64 %253
  %262 = load ptr, ptr %261, align 8, !tbaa !72
  %263 = getelementptr inbounds %struct.RenderLayer, ptr %262, i64 0, i32 11
  %264 = load ptr, ptr %263, align 8, !tbaa !115
  %265 = getelementptr inbounds float, ptr %264, i64 %198
  %266 = load i8, ptr %140, align 2, !tbaa !196
  call void @addalphaAddfacFloat(ptr noundef %265, ptr noundef nonnull %3, i8 noundef zeroext %266) #12
  br label %267

267:                                              ; preds = %260, %252
  %268 = add nuw nsw i64 %253, 1
  %269 = icmp eq i64 %268, %72
  br i1 %269, label %283, label %252, !llvm.loop !197

270:                                              ; preds = %251
  %271 = sitofp i32 %226 to float
  %272 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %273 = sitofp i16 %272 to float
  %274 = fdiv float %271, %273
  %275 = load float, ptr %3, align 16, !tbaa !34
  %276 = call float @llvm.fmuladd.f32(float %274, float %275, float %206)
  %277 = load float, ptr %66, align 4, !tbaa !34
  %278 = call float @llvm.fmuladd.f32(float %274, float %277, float %207)
  %279 = load float, ptr %65, align 8, !tbaa !34
  %280 = call float @llvm.fmuladd.f32(float %274, float %279, float %204)
  %281 = load float, ptr %64, align 4, !tbaa !34
  %282 = call float @llvm.fmuladd.f32(float %274, float %281, float %203)
  br label %283

283:                                              ; preds = %267, %270, %247, %242, %239
  %284 = phi float [ %278, %270 ], [ %207, %247 ], [ %207, %242 ], [ %207, %239 ], [ %207, %267 ]
  %285 = phi float [ %276, %270 ], [ %206, %247 ], [ %206, %242 ], [ %206, %239 ], [ %206, %267 ]
  %286 = phi float [ %280, %270 ], [ %204, %247 ], [ %204, %242 ], [ %204, %239 ], [ %204, %267 ]
  %287 = phi float [ %282, %270 ], [ %203, %247 ], [ %203, %242 ], [ %203, %239 ], [ %203, %267 ]
  %288 = phi i32 [ 0, %270 ], [ %202, %247 ], [ %202, %242 ], [ %202, %239 ], [ 0, %267 ]
  %289 = load i16, ptr %208, align 8, !tbaa !141
  %290 = zext i16 %289 to i32
  %291 = or i32 %200, %290
  %292 = load ptr, ptr %201, align 8, !tbaa !144
  %293 = icmp eq ptr %292, null
  br i1 %293, label %294, label %199, !llvm.loop !198

294:                                              ; preds = %283
  %295 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %296 = sext i16 %295 to i32
  %297 = sub nsw i32 %296, %227
  %298 = icmp eq i32 %227, %296
  br i1 %298, label %317, label %299

299:                                              ; preds = %294
  %300 = trunc i32 %288 to i16
  %301 = call i32 @shadeHaloFloat(ptr noundef nonnull %85, ptr noundef nonnull %3, i32 noundef 8388607, float noundef %184, float noundef %182, float noundef %167, i16 noundef signext %300) #12
  %302 = icmp eq i32 %301, 0
  %303 = or i1 %63, %302
  br i1 %303, label %317, label %304

304:                                              ; preds = %299
  %305 = sitofp i32 %297 to float
  %306 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %307 = sitofp i16 %306 to float
  %308 = fdiv float %305, %307
  %309 = load float, ptr %3, align 16, !tbaa !34
  %310 = call float @llvm.fmuladd.f32(float %308, float %309, float %285)
  %311 = load float, ptr %66, align 4, !tbaa !34
  %312 = call float @llvm.fmuladd.f32(float %308, float %311, float %284)
  %313 = load float, ptr %65, align 8, !tbaa !34
  %314 = call float @llvm.fmuladd.f32(float %308, float %313, float %286)
  %315 = load float, ptr %64, align 4, !tbaa !34
  %316 = call float @llvm.fmuladd.f32(float %308, float %315, float %287)
  br label %317

317:                                              ; preds = %304, %299, %294
  %318 = phi float [ %284, %299 ], [ %312, %304 ], [ %284, %294 ]
  %319 = phi float [ %285, %299 ], [ %310, %304 ], [ %285, %294 ]
  %320 = phi float [ %286, %299 ], [ %314, %304 ], [ %286, %294 ]
  %321 = phi float [ %287, %299 ], [ %316, %304 ], [ %287, %294 ]
  br i1 %63, label %322, label %342

322:                                              ; preds = %317
  %323 = trunc i64 %176 to i32
  %324 = shl nsw i32 %323, 2
  %325 = sext i32 %324 to i64
  br label %326

326:                                              ; preds = %322, %339
  %327 = phi i64 [ 0, %322 ], [ %340, %339 ]
  %328 = trunc i64 %327 to i32
  %329 = shl nuw i32 1, %328
  %330 = and i32 %329, %291
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %339

332:                                              ; preds = %326
  %333 = getelementptr inbounds ptr, ptr %4, i64 %327
  %334 = load ptr, ptr %333, align 8, !tbaa !72
  %335 = getelementptr inbounds %struct.RenderLayer, ptr %334, i64 0, i32 11
  %336 = load ptr, ptr %335, align 8, !tbaa !115
  %337 = getelementptr inbounds float, ptr %336, i64 %325
  %338 = load i8, ptr %142, align 2, !tbaa !196
  call void @addalphaAddfacFloat(ptr noundef %337, ptr noundef nonnull %3, i8 noundef zeroext %338) #12
  br label %339

339:                                              ; preds = %332, %326
  %340 = add nuw nsw i64 %327, 1
  %341 = icmp eq i64 %340, %73
  br i1 %341, label %351, label %326, !llvm.loop !199

342:                                              ; preds = %317
  store float %319, ptr %3, align 16, !tbaa !34
  store float %318, ptr %66, align 4, !tbaa !34
  store float %320, ptr %65, align 8, !tbaa !34
  store float %321, ptr %64, align 4, !tbaa !34
  br i1 %67, label %343, label %351

343:                                              ; preds = %342
  %344 = trunc i64 %176 to i32
  %345 = shl nsw i32 %344, 2
  %346 = sext i32 %345 to i64
  br label %347

347:                                              ; preds = %343, %347
  %348 = load ptr, ptr %69, align 8, !tbaa !115
  %349 = getelementptr inbounds float, ptr %348, i64 %346
  %350 = load i8, ptr %141, align 2, !tbaa !196
  call void @addalphaAddfacFloat(ptr noundef %349, ptr noundef nonnull %3, i8 noundef zeroext %350) #12
  br i1 %70, label %347, label %351, !llvm.loop !200

351:                                              ; preds = %347, %339, %342
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  br label %390

352:                                              ; preds = %189, %187
  %353 = load i32, ptr %179, align 4, !tbaa !166
  %354 = load i8, ptr %143, align 1, !tbaa !192
  %355 = and i8 %354, 1
  %356 = icmp eq i8 %355, 0
  %357 = icmp slt i32 %353, 2147483632
  %358 = select i1 %357, i32 -8388607, i32 %353
  %359 = ashr i32 %353, 8
  %360 = select i1 %356, i32 %359, i32 %358
  %361 = load i32, ptr %144, align 8, !tbaa !193
  %362 = icmp sgt i32 %360, %361
  br i1 %362, label %371, label %363

363:                                              ; preds = %352
  %364 = load ptr, ptr %145, align 8, !tbaa !194
  %365 = icmp eq ptr %364, null
  br i1 %365, label %390, label %366

366:                                              ; preds = %363
  %367 = getelementptr inbounds %struct.Material, ptr %364, i64 0, i32 51
  %368 = load i32, ptr %367, align 4, !tbaa !195
  %369 = and i32 %368, 16
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %390, label %371

371:                                              ; preds = %366, %352
  %372 = load i16, ptr %146, align 4, !tbaa !191
  %373 = call i32 @shadeHaloFloat(ptr noundef nonnull %85, ptr noundef nonnull %5, i32 noundef %360, float noundef %184, float noundef %182, float noundef %167, i16 noundef signext %372) #12
  %374 = icmp eq i32 %373, 0
  %375 = or i1 %374, %71
  br i1 %375, label %390, label %376

376:                                              ; preds = %371
  %377 = trunc i64 %176 to i32
  %378 = shl nsw i32 %377, 2
  %379 = sext i32 %378 to i64
  br label %380

380:                                              ; preds = %376, %380
  %381 = phi i64 [ 0, %376 ], [ %388, %380 ]
  %382 = getelementptr inbounds [16 x ptr], ptr %4, i64 0, i64 %381
  %383 = load ptr, ptr %382, align 8, !tbaa !72
  %384 = getelementptr inbounds %struct.RenderLayer, ptr %383, i64 0, i32 11
  %385 = load ptr, ptr %384, align 8, !tbaa !115
  %386 = getelementptr inbounds float, ptr %385, i64 %379
  %387 = load i8, ptr %147, align 2, !tbaa !196
  call void @addalphaAddfacFloat(ptr noundef %386, ptr noundef nonnull %5, i8 noundef zeroext %387) #12
  %388 = add nuw nsw i64 %381, 1
  %389 = icmp eq i64 %388, %74
  br i1 %389, label %390, label %380, !llvm.loop !201

390:                                              ; preds = %380, %371, %351, %366, %363, %175
  %391 = icmp eq ptr %178, null
  %392 = getelementptr inbounds i64, ptr %178, i64 1
  %393 = select i1 %391, ptr null, ptr %392
  %394 = add i16 %177, 1
  %395 = getelementptr inbounds i32, ptr %179, i64 1
  %396 = add i64 %176, 1
  %397 = sext i16 %394 to i32
  %398 = icmp sgt i32 %132, %397
  br i1 %398, label %175, label %399, !llvm.loop !202

399:                                              ; preds = %390, %150
  %400 = phi ptr [ %162, %150 ], [ %393, %390 ]
  %401 = add nsw i32 %153, 1
  %402 = add i32 %151, 1
  %403 = icmp eq i32 %401, %123
  br i1 %403, label %404, label %150, !llvm.loop !203

404:                                              ; preds = %399, %115, %90, %99, %109, %95, %80
  %405 = phi ptr [ %82, %80 ], [ %82, %90 ], [ %82, %95 ], [ %82, %99 ], [ %82, %109 ], [ %82, %115 ], [ %400, %399 ]
  %406 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !93
  %407 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !94
  %408 = call i32 %406(ptr noundef %407) #12
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %75, label %410

410:                                              ; preds = %75, %404, %55
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #12
  ret void
}

declare ptr @zbuffer_transp_shade(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @addAlphaOverFloat(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @atm_tile(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca [16 x ptr], align 16
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #12
  %5 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  %11 = getelementptr inbounds %struct.RenderResult, ptr %10, i64 0, i32 12
  %12 = tail call i32 @BLI_findindex(ptr noundef nonnull %11, ptr noundef %1) #12
  %13 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %14 = sext i16 %13 to i32
  %15 = icmp sgt i16 %13, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %8, %16
  %17 = phi i64 [ %23, %16 ], [ 0, %8 ]
  %18 = trunc i64 %17 to i32
  %19 = tail call ptr @BLI_findlink(ptr noundef nonnull %5, i32 noundef %18) #12
  %20 = getelementptr inbounds %struct.RenderResult, ptr %19, i64 0, i32 12
  %21 = tail call ptr @BLI_findlink(ptr noundef nonnull %20, i32 noundef %12) #12
  %22 = getelementptr inbounds ptr, ptr %3, i64 %17
  store ptr %21, ptr %22, align 8, !tbaa !72
  %23 = add nuw nsw i64 %17, 1
  %24 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %25 = sext i16 %24 to i64
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %16, label %28, !llvm.loop !73

27:                                               ; preds = %2
  store ptr %1, ptr %3, align 16, !tbaa !72
  br label %30

28:                                               ; preds = %16
  %29 = sext i16 %24 to i32
  br label %30

30:                                               ; preds = %8, %27, %28
  %31 = phi i32 [ 1, %27 ], [ %14, %8 ], [ %29, %28 ]
  %32 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !80
  %34 = icmp eq ptr %33, null
  br i1 %34, label %216, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 18
  br label %37

37:                                               ; preds = %41, %35
  %38 = phi ptr [ %36, %35 ], [ %39, %41 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !72
  %40 = icmp eq ptr %39, null
  br i1 %40, label %216, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.RenderPass, ptr %39, i64 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !116
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %37, !llvm.loop !204

45:                                               ; preds = %41
  %46 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), align 8, !tbaa !72
  %47 = icmp eq ptr %46, null
  br i1 %47, label %216, label %48

48:                                               ; preds = %45, %63
  %49 = phi ptr [ %64, %63 ], [ %46, %45 ]
  %50 = getelementptr inbounds %struct.GroupObject, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !205
  %52 = getelementptr inbounds %struct.LampRen, ptr %51, i64 0, i32 6
  %53 = load i16, ptr %52, align 8, !tbaa !207
  %54 = icmp eq i16 %53, 1
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.LampRen, ptr %51, i64 0, i32 56
  %57 = load ptr, ptr %56, align 8, !tbaa !209
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i16, ptr %57, align 4, !tbaa !210
  %61 = and i16 %60, 2
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %48, %55, %59
  %64 = load ptr, ptr %49, align 8, !tbaa !72
  %65 = icmp eq ptr %64, null
  br i1 %65, label %216, label %48, !llvm.loop !212

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13
  %68 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !96
  %70 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 3
  %71 = load i32, ptr %70, align 4, !tbaa !103
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %216

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 1
  %75 = icmp sgt i32 %31, 0
  %76 = getelementptr inbounds float, ptr %4, i64 1
  %77 = getelementptr inbounds float, ptr %4, i64 2
  %78 = zext nneg i32 %31 to i64
  br label %79

79:                                               ; preds = %73, %211
  %80 = phi i32 [ 0, %73 ], [ %212, %211 ]
  %81 = phi i32 [ %69, %73 ], [ %213, %211 ]
  %82 = load i32, ptr %67, align 8, !tbaa !104
  %83 = load i32, ptr %74, align 4, !tbaa !105
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %211

85:                                               ; preds = %79
  %86 = sitofp i32 %81 to float
  %87 = sext i32 %80 to i64
  br label %88

88:                                               ; preds = %85, %204
  %89 = phi i64 [ %87, %85 ], [ %206, %204 ]
  %90 = phi i32 [ %82, %85 ], [ %205, %204 ]
  br i1 %75, label %91, label %204

91:                                               ; preds = %88
  %92 = trunc i64 %89 to i32
  %93 = shl nsw i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = sitofp i32 %90 to float
  br label %96

96:                                               ; preds = %91, %201
  %97 = phi i64 [ 0, %91 ], [ %202, %201 ]
  %98 = getelementptr inbounds [16 x ptr], ptr %3, i64 0, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !72
  %100 = call ptr @RE_RenderLayerGetPass(ptr noundef %99, i32 noundef 2) #12
  %101 = getelementptr inbounds float, ptr %100, i64 %89
  %102 = getelementptr inbounds %struct.RenderLayer, ptr %99, i64 0, i32 11
  %103 = load ptr, ptr %102, align 8, !tbaa !115
  %104 = getelementptr inbounds float, ptr %103, i64 %94
  %105 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), align 8, !tbaa !72
  %106 = icmp eq ptr %105, null
  br i1 %106, label %192, label %107

107:                                              ; preds = %96
  %108 = getelementptr inbounds float, ptr %104, i64 3
  %109 = getelementptr inbounds float, ptr %104, i64 1
  %110 = getelementptr inbounds float, ptr %104, i64 2
  br label %111

111:                                              ; preds = %107, %185
  %112 = phi ptr [ %105, %107 ], [ %190, %185 ]
  %113 = phi i8 [ 0, %107 ], [ %189, %185 ]
  %114 = phi float [ 0.000000e+00, %107 ], [ %188, %185 ]
  %115 = phi float [ 0.000000e+00, %107 ], [ %187, %185 ]
  %116 = phi float [ 0.000000e+00, %107 ], [ %186, %185 ]
  %117 = getelementptr inbounds %struct.GroupObject, ptr %112, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !205
  %119 = getelementptr inbounds %struct.LampRen, ptr %118, i64 0, i32 6
  %120 = load i16, ptr %119, align 8, !tbaa !207
  %121 = icmp eq i16 %120, 1
  br i1 %121, label %122, label %185

122:                                              ; preds = %111
  %123 = getelementptr inbounds %struct.LampRen, ptr %118, i64 0, i32 56
  %124 = load ptr, ptr %123, align 8, !tbaa !209
  %125 = icmp eq ptr %124, null
  br i1 %125, label %185, label %126

126:                                              ; preds = %122
  %127 = load float, ptr %101, align 4, !tbaa !34
  %128 = fcmp ult float %127, 0x42370CDC20000000
  br i1 %128, label %129, label %185

129:                                              ; preds = %126
  %130 = load float, ptr %108, align 4, !tbaa !34
  %131 = fcmp oeq float %130, 0.000000e+00
  br i1 %131, label %185, label %132

132:                                              ; preds = %129
  %133 = load i16, ptr %124, align 4, !tbaa !210
  %134 = and i16 %133, 2
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %185, label %136

136:                                              ; preds = %132
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %137 = getelementptr inbounds %struct.GroupObject, ptr %112, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !213
  %139 = getelementptr inbounds %struct.Object, ptr %138, i64 0, i32 47, i64 2, i64 2
  %140 = load float, ptr %139, align 8, !tbaa !34
  %141 = fcmp olt float %140, 0.000000e+00
  br i1 %141, label %180, label %142

142:                                              ; preds = %136
  %143 = load float, ptr %104, align 4, !tbaa !34
  store float %143, ptr %4, align 4, !tbaa !34
  %144 = load float, ptr %109, align 4, !tbaa !34
  store float %144, ptr %76, align 4, !tbaa !34
  %145 = load float, ptr %110, align 4, !tbaa !34
  store float %145, ptr %77, align 4, !tbaa !34
  %146 = load float, ptr %108, align 4, !tbaa !34
  %147 = fcmp une float %146, 1.000000e+00
  br i1 %147, label %148, label %153

148:                                              ; preds = %142
  %149 = fdiv float 1.000000e+00, %146
  %150 = fmul float %143, %149
  store float %150, ptr %4, align 4, !tbaa !34
  %151 = fmul float %144, %149
  store float %151, ptr %76, align 4, !tbaa !34
  %152 = fmul float %145, %149
  store float %152, ptr %77, align 4, !tbaa !34
  br label %153

153:                                              ; preds = %148, %142
  %154 = load ptr, ptr %123, align 8, !tbaa !209
  %155 = load float, ptr %101, align 4, !tbaa !34
  call void @shadeAtmPixel(ptr noundef %154, ptr noundef nonnull %4, float noundef %95, float noundef %86, float noundef %155) #12
  %156 = load float, ptr %108, align 4, !tbaa !34
  %157 = fcmp une float %156, 1.000000e+00
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load float, ptr %4, align 4, !tbaa !34
  %160 = fmul float %156, %159
  store float %160, ptr %4, align 4, !tbaa !34
  %161 = load float, ptr %76, align 4, !tbaa !34
  %162 = fmul float %156, %161
  store float %162, ptr %76, align 4, !tbaa !34
  %163 = load float, ptr %77, align 4, !tbaa !34
  %164 = fmul float %156, %163
  store float %164, ptr %77, align 4, !tbaa !34
  br label %165

165:                                              ; preds = %158, %153
  %166 = icmp eq i8 %113, 0
  %167 = load float, ptr %4, align 4, !tbaa !34
  br i1 %166, label %168, label %171

168:                                              ; preds = %165
  %169 = load float, ptr %76, align 4, !tbaa !34
  %170 = load float, ptr %77, align 4, !tbaa !34
  br label %180

171:                                              ; preds = %165
  %172 = fmul float %167, 5.000000e-01
  %173 = call float @llvm.fmuladd.f32(float %116, float 5.000000e-01, float %172)
  %174 = load float, ptr %76, align 4, !tbaa !34
  %175 = fmul float %174, 5.000000e-01
  %176 = call float @llvm.fmuladd.f32(float %115, float 5.000000e-01, float %175)
  %177 = load float, ptr %77, align 4, !tbaa !34
  %178 = fmul float %177, 5.000000e-01
  %179 = call float @llvm.fmuladd.f32(float %114, float 5.000000e-01, float %178)
  br label %180

180:                                              ; preds = %168, %171, %136
  %181 = phi float [ %116, %136 ], [ %167, %168 ], [ %173, %171 ]
  %182 = phi float [ %115, %136 ], [ %169, %168 ], [ %176, %171 ]
  %183 = phi float [ %114, %136 ], [ %170, %168 ], [ %179, %171 ]
  %184 = phi i8 [ %113, %136 ], [ 1, %168 ], [ %113, %171 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  br label %185

185:                                              ; preds = %180, %111, %122, %132, %126, %129
  %186 = phi float [ %116, %122 ], [ %116, %129 ], [ %116, %132 ], [ %181, %180 ], [ %116, %126 ], [ %116, %111 ]
  %187 = phi float [ %115, %122 ], [ %115, %129 ], [ %115, %132 ], [ %182, %180 ], [ %115, %126 ], [ %115, %111 ]
  %188 = phi float [ %114, %122 ], [ %114, %129 ], [ %114, %132 ], [ %183, %180 ], [ %114, %126 ], [ %114, %111 ]
  %189 = phi i8 [ %113, %122 ], [ %113, %129 ], [ %113, %132 ], [ %184, %180 ], [ %113, %126 ], [ %113, %111 ]
  %190 = load ptr, ptr %112, align 8, !tbaa !72
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %111, !llvm.loop !214

192:                                              ; preds = %185, %96
  %193 = phi float [ 0.000000e+00, %96 ], [ %186, %185 ]
  %194 = phi float [ 0.000000e+00, %96 ], [ %187, %185 ]
  %195 = phi float [ 0.000000e+00, %96 ], [ %188, %185 ]
  %196 = phi i8 [ 0, %96 ], [ %189, %185 ]
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %192
  store float %193, ptr %104, align 4, !tbaa !34
  %199 = getelementptr inbounds float, ptr %104, i64 1
  store float %194, ptr %199, align 4, !tbaa !34
  %200 = getelementptr inbounds float, ptr %104, i64 2
  store float %195, ptr %200, align 4, !tbaa !34
  br label %201

201:                                              ; preds = %198, %192
  %202 = add nuw nsw i64 %97, 1
  %203 = icmp eq i64 %202, %78
  br i1 %203, label %204, label %96, !llvm.loop !215

204:                                              ; preds = %201, %88
  %205 = add nsw i32 %90, 1
  %206 = add nsw i64 %89, 1
  %207 = load i32, ptr %74, align 4, !tbaa !105
  %208 = icmp slt i32 %205, %207
  br i1 %208, label %88, label %209, !llvm.loop !216

209:                                              ; preds = %204
  %210 = trunc i64 %206 to i32
  br label %211

211:                                              ; preds = %209, %79
  %212 = phi i32 [ %80, %79 ], [ %210, %209 ]
  %213 = add nsw i32 %81, 1
  %214 = load i32, ptr %70, align 4, !tbaa !103
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %79, label %216, !llvm.loop !217

216:                                              ; preds = %37, %63, %211, %45, %66, %30
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sky_tile(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca [16 x ptr], align 16
  %4 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #12
  %5 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 53), align 8, !tbaa !218
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %113

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  %14 = getelementptr inbounds %struct.RenderResult, ptr %13, i64 0, i32 12
  %15 = tail call i32 @BLI_findindex(ptr noundef nonnull %14, ptr noundef %1) #12
  %16 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %17 = sext i16 %16 to i32
  %18 = icmp sgt i16 %16, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %11, %19
  %20 = phi i64 [ %26, %19 ], [ 0, %11 ]
  %21 = trunc i64 %20 to i32
  %22 = tail call ptr @BLI_findlink(ptr noundef nonnull %8, i32 noundef %21) #12
  %23 = getelementptr inbounds %struct.RenderResult, ptr %22, i64 0, i32 12
  %24 = tail call ptr @BLI_findlink(ptr noundef nonnull %23, i32 noundef %15) #12
  %25 = getelementptr inbounds ptr, ptr %3, i64 %20
  store ptr %24, ptr %25, align 8, !tbaa !72
  %26 = add nuw nsw i64 %20, 1
  %27 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %28 = sext i16 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %19, label %31, !llvm.loop !73

30:                                               ; preds = %7
  store ptr %1, ptr %3, align 16, !tbaa !72
  br label %33

31:                                               ; preds = %19
  %32 = sext i16 %27 to i32
  br label %33

33:                                               ; preds = %11, %30, %31
  %34 = phi i32 [ 1, %30 ], [ %17, %11 ], [ %32, %31 ]
  %35 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13
  %36 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !96
  %38 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !103
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %113

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 1
  %43 = icmp sgt i32 %34, 0
  %44 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 20
  %45 = getelementptr inbounds float, ptr %4, i64 1
  %46 = getelementptr inbounds float, ptr %4, i64 2
  %47 = zext nneg i32 %34 to i64
  br label %48

48:                                               ; preds = %41, %109
  %49 = phi i32 [ %37, %41 ], [ %110, %109 ]
  %50 = phi i32 [ 0, %41 ], [ %101, %109 ]
  %51 = load i32, ptr %35, align 8, !tbaa !104
  %52 = load i32, ptr %42, align 4, !tbaa !105
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %100

54:                                               ; preds = %48
  %55 = sitofp i32 %49 to float
  %56 = sext i32 %50 to i64
  br label %57

57:                                               ; preds = %54, %93
  %58 = phi i64 [ %56, %54 ], [ %95, %93 ]
  %59 = phi i32 [ %51, %54 ], [ %94, %93 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  br i1 %43, label %60, label %93

60:                                               ; preds = %57
  %61 = sitofp i32 %59 to float
  br label %62

62:                                               ; preds = %60, %89
  %63 = phi i64 [ 0, %60 ], [ %91, %89 ]
  %64 = phi i8 [ 0, %60 ], [ %90, %89 ]
  %65 = getelementptr inbounds [16 x ptr], ptr %3, i64 0, i64 %63
  %66 = load ptr, ptr %65, align 8, !tbaa !72
  %67 = getelementptr inbounds %struct.RenderLayer, ptr %66, i64 0, i32 11
  %68 = load ptr, ptr %67, align 8, !tbaa !115
  %69 = getelementptr inbounds float, ptr %68, i64 %58
  %70 = getelementptr inbounds float, ptr %69, i64 3
  %71 = load float, ptr %70, align 4, !tbaa !34
  %72 = fcmp olt float %71, 1.000000e+00
  br i1 %72, label %73, label %89

73:                                               ; preds = %62
  %74 = icmp eq i8 %64, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %73
  %76 = load i16, ptr %44, align 2, !tbaa !106
  call void @shadeSkyPixel(ptr noundef nonnull %4, float noundef %61, float noundef %55, i16 noundef signext %76) #12
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i8 [ 1, %75 ], [ %64, %73 ]
  %79 = load float, ptr %70, align 4, !tbaa !34
  %80 = fcmp oeq float %79, 0.000000e+00
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load float, ptr %4, align 16, !tbaa !34
  store float %82, ptr %69, align 4, !tbaa !34
  %83 = load float, ptr %45, align 4, !tbaa !34
  %84 = getelementptr inbounds float, ptr %69, i64 1
  store float %83, ptr %84, align 4, !tbaa !34
  %85 = load float, ptr %46, align 8, !tbaa !34
  %86 = getelementptr inbounds float, ptr %69, i64 2
  store float %85, ptr %86, align 4, !tbaa !34
  br label %88

87:                                               ; preds = %77
  call void @addAlphaUnderFloat(ptr noundef %69, ptr noundef nonnull %4) #12
  br label %88

88:                                               ; preds = %87, %81
  store float 1.000000e+00, ptr %70, align 4, !tbaa !34
  br label %89

89:                                               ; preds = %88, %62
  %90 = phi i8 [ %64, %62 ], [ %78, %88 ]
  %91 = add nuw nsw i64 %63, 1
  %92 = icmp eq i64 %91, %47
  br i1 %92, label %93, label %62, !llvm.loop !219

93:                                               ; preds = %89, %57
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  %94 = add nsw i32 %59, 1
  %95 = add nsw i64 %58, 4
  %96 = load i32, ptr %42, align 4, !tbaa !105
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %57, label %98, !llvm.loop !220

98:                                               ; preds = %93
  %99 = trunc i64 %95 to i32
  br label %100

100:                                              ; preds = %98, %48
  %101 = phi i32 [ %50, %48 ], [ %99, %98 ]
  %102 = and i32 %49, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !93
  %106 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !94
  %107 = call i32 %105(ptr noundef %106) #12
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %100, %104
  %110 = add nsw i32 %49, 1
  %111 = load i32, ptr %38, align 4, !tbaa !103
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %48, label %113, !llvm.loop !221

113:                                              ; preds = %104, %109, %33, %2
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #12
  ret void
}

declare ptr @render_get_active_layer(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @zbufshade_tile(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca [16 x ptr], align 16
  %3 = alloca [4 x float], align 16
  %4 = alloca %struct.ShadeSample, align 8
  %5 = alloca %struct.PixStr, align 8
  call void @llvm.lifetime.start.p0(i64 27080, ptr nonnull %4) #12
  %6 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #12
  store ptr null, ptr %5, align 8, !tbaa !144
  %8 = getelementptr inbounds %struct.PixStr, ptr %5, i64 0, i32 5
  store i16 -1, ptr %8, align 8, !tbaa !141
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %10 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %11 = load i32, ptr %10, align 8, !tbaa !76
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 2
  %14 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %15 = load i32, ptr %14, align 4, !tbaa !77
  %16 = sext i32 %15 to i64
  %17 = mul i64 %13, %16
  %18 = tail call ptr %9(i64 noundef %17, ptr noundef nonnull @.str) #12
  %19 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 4
  store ptr %18, ptr %19, align 8, !tbaa !78
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %21 = load i32, ptr %10, align 8, !tbaa !76
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 2
  %24 = load i32, ptr %14, align 4, !tbaa !77
  %25 = sext i32 %24 to i64
  %26 = mul i64 %23, %25
  %27 = tail call ptr %20(i64 noundef %26, ptr noundef nonnull @.str.1) #12
  %28 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 5
  store ptr %27, ptr %28, align 8, !tbaa !79
  %29 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %30 = load i32, ptr %10, align 8, !tbaa !76
  %31 = sext i32 %30 to i64
  %32 = shl nsw i64 %31, 2
  %33 = load i32, ptr %14, align 4, !tbaa !77
  %34 = sext i32 %33 to i64
  %35 = mul i64 %32, %34
  %36 = tail call ptr %29(i64 noundef %35, ptr noundef nonnull @.str.2) #12
  %37 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 6
  store ptr %36, ptr %37, align 8, !tbaa !80
  %38 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 12
  %39 = load ptr, ptr %38, align 8, !tbaa !72
  %40 = icmp eq ptr %39, null
  br i1 %40, label %370, label %41

41:                                               ; preds = %1
  %42 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 7
  %43 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 13, i32 2
  %44 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 14
  %45 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13
  %46 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 2
  %47 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 3
  %48 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 1
  %49 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 20
  %50 = getelementptr inbounds %struct.PixStr, ptr %5, i64 0, i32 1
  %51 = getelementptr inbounds %struct.PixStr, ptr %5, i64 0, i32 2
  %52 = getelementptr inbounds %struct.PixStr, ptr %5, i64 0, i32 3
  %53 = getelementptr inbounds %struct.ShadeSample, ptr %4, i64 0, i32 2
  %54 = getelementptr inbounds %struct.ShadeSample, ptr %4, i64 0, i32 3
  %55 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 13, i32 3
  %56 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 1
  %57 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 2
  %58 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 3
  %59 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 3
  %60 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 7
  br label %61

61:                                               ; preds = %41, %367
  %62 = phi ptr [ %39, %41 ], [ %368, %367 ]
  %63 = getelementptr inbounds %struct.RenderLayer, ptr %62, i64 0, i32 6
  %64 = load i32, ptr %63, align 8, !tbaa !81
  %65 = and i32 %64, 786432
  %66 = icmp eq i32 %65, 786432
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %69 = load i32, ptr %10, align 8, !tbaa !76
  %70 = sext i32 %69 to i64
  %71 = shl nsw i64 %70, 2
  %72 = load i32, ptr %14, align 4, !tbaa !77
  %73 = sext i32 %72 to i64
  %74 = mul i64 %71, %73
  %75 = call ptr %68(i64 noundef %74, ptr noundef nonnull @.str.3) #12
  store ptr %75, ptr %42, align 8, !tbaa !83
  br label %76

76:                                               ; preds = %67, %61
  call void @shade_sample_initialize(ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %62) #12
  call void @zbuffer_solid(ptr noundef %0, ptr noundef nonnull %62, ptr noundef null, ptr noundef null) #12
  %77 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !93
  %78 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !94
  %79 = call i32 %77(ptr noundef %78) #12
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %189

81:                                               ; preds = %76
  %82 = load i32, ptr %63, align 8, !tbaa !81
  %83 = and i32 %82, 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %99, label %85

85:                                               ; preds = %81
  %86 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %87 = and i32 %86, 32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %85
  %90 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %91 = load i32, ptr %10, align 8, !tbaa !76
  %92 = sext i32 %91 to i64
  %93 = shl nsw i64 %92, 2
  %94 = load i32, ptr %14, align 4, !tbaa !77
  %95 = sext i32 %94 to i64
  %96 = mul i64 %93, %95
  %97 = call ptr %90(i64 noundef %96, ptr noundef nonnull @.str.5) #12
  %98 = load ptr, ptr %37, align 8, !tbaa !80
  call fastcc void @edge_enhance_tile(ptr noundef %0, ptr noundef %97, ptr noundef %98)
  br label %99

99:                                               ; preds = %85, %89, %81
  %100 = phi ptr [ %97, %89 ], [ null, %85 ], [ null, %81 ]
  store volatile i32 0, ptr %43, align 8, !tbaa !99
  store ptr %62, ptr %44, align 8, !tbaa !102
  %101 = load i32, ptr %63, align 8, !tbaa !81
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %188, label %104

104:                                              ; preds = %99
  %105 = load ptr, ptr %19, align 8, !tbaa !78
  %106 = load ptr, ptr %28, align 8, !tbaa !79
  %107 = load ptr, ptr %37, align 8, !tbaa !80
  %108 = load i32, ptr %10, align 8, !tbaa !76
  %109 = load i32, ptr %46, align 8, !tbaa !96
  %110 = mul nsw i32 %109, %108
  %111 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %112 = and i32 %111, 2
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %104
  call void @ISB_create(ptr noundef %0, ptr noundef null) #12
  br label %115

115:                                              ; preds = %114, %104
  %116 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 56), align 8, !tbaa !97
  %117 = icmp eq ptr %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %115
  call void @cache_occ_samples(ptr noundef nonnull @R, ptr noundef %0, ptr noundef nonnull %4) #12
  br label %119

119:                                              ; preds = %118, %115
  %120 = load i32, ptr %46, align 8, !tbaa !96
  %121 = load i32, ptr %47, align 4, !tbaa !103
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %179

123:                                              ; preds = %119, %173
  %124 = phi i32 [ %165, %173 ], [ %110, %119 ]
  %125 = phi i32 [ %164, %173 ], [ 0, %119 ]
  %126 = phi i32 [ %174, %173 ], [ %120, %119 ]
  %127 = phi ptr [ %163, %173 ], [ %107, %119 ]
  %128 = phi ptr [ %162, %173 ], [ %106, %119 ]
  %129 = phi ptr [ %161, %173 ], [ %105, %119 ]
  %130 = load i32, ptr %45, align 8, !tbaa !104
  %131 = load i32, ptr %48, align 4, !tbaa !105
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %160

133:                                              ; preds = %123, %152
  %134 = phi i32 [ %142, %152 ], [ %124, %123 ]
  %135 = phi i32 [ %157, %152 ], [ %125, %123 ]
  %136 = phi i32 [ %153, %152 ], [ %130, %123 ]
  %137 = phi ptr [ %155, %152 ], [ %127, %123 ]
  %138 = phi ptr [ %156, %152 ], [ %128, %123 ]
  %139 = phi ptr [ %154, %152 ], [ %129, %123 ]
  %140 = load i16, ptr %49, align 2, !tbaa !106
  %141 = sext i16 %140 to i32
  %142 = add nsw i32 %134, 1
  call void @BLI_thread_srandom(i32 noundef %141, i32 noundef %134) #12
  %143 = load i32, ptr %138, align 4, !tbaa !166
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %133
  %146 = load i32, ptr %139, align 4, !tbaa !166
  store i32 %146, ptr %50, align 8, !tbaa !222
  %147 = load i32, ptr %138, align 4, !tbaa !166
  store i32 %147, ptr %51, align 4, !tbaa !223
  %148 = load i32, ptr %137, align 4, !tbaa !166
  store i32 %148, ptr %52, align 8, !tbaa !169
  %149 = call i32 @shade_samples(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %136, i32 noundef %126) #12
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %145
  call fastcc void @add_passes(ptr noundef nonnull %62, i32 noundef %135, ptr noundef nonnull %53, ptr noundef nonnull %54)
  br label %152

152:                                              ; preds = %133, %151, %145
  %153 = add nsw i32 %136, 1
  %154 = getelementptr inbounds i32, ptr %139, i64 1
  %155 = getelementptr inbounds i32, ptr %137, i64 1
  %156 = getelementptr inbounds i32, ptr %138, i64 1
  %157 = add nsw i32 %135, 1
  %158 = load i32, ptr %48, align 4, !tbaa !105
  %159 = icmp slt i32 %153, %158
  br i1 %159, label %133, label %160, !llvm.loop !224

160:                                              ; preds = %152, %123
  %161 = phi ptr [ %129, %123 ], [ %154, %152 ]
  %162 = phi ptr [ %128, %123 ], [ %156, %152 ]
  %163 = phi ptr [ %127, %123 ], [ %155, %152 ]
  %164 = phi i32 [ %125, %123 ], [ %157, %152 ]
  %165 = phi i32 [ %124, %123 ], [ %142, %152 ]
  %166 = and i32 %126, 1
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %160
  %169 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !93
  %170 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !94
  %171 = call i32 %169(ptr noundef %170) #12
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %160, %168
  %174 = add nsw i32 %126, 1
  %175 = load volatile i32, ptr %55, align 4, !tbaa !101
  %176 = add nsw i32 %175, 1
  store volatile i32 %176, ptr %55, align 4, !tbaa !101
  %177 = load i32, ptr %47, align 4, !tbaa !103
  %178 = icmp slt i32 %174, %177
  br i1 %178, label %123, label %179, !llvm.loop !225

179:                                              ; preds = %173, %168, %119
  %180 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 56), align 8, !tbaa !97
  %181 = icmp eq ptr %180, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %179
  call void @free_occ_samples(ptr noundef nonnull @R, ptr noundef %0) #12
  br label %183

183:                                              ; preds = %182, %179
  %184 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %185 = and i32 %184, 2
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %183
  call void @ISB_free(ptr noundef %0) #12
  br label %188

188:                                              ; preds = %183, %187, %99
  store ptr null, ptr %44, align 8, !tbaa !102
  br label %189

189:                                              ; preds = %188, %76
  %190 = phi ptr [ null, %76 ], [ %100, %188 ]
  %191 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !139
  %192 = and i16 %191, 8
  %193 = icmp eq i16 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %189
  %195 = load i32, ptr %63, align 8, !tbaa !81
  %196 = and i32 %195, 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %194
  call fastcc void @lamphalo_tile(ptr noundef %0, ptr noundef nonnull %62)
  br label %199

199:                                              ; preds = %194, %198, %189
  %200 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !139
  %201 = and i16 %200, 2
  %202 = icmp eq i16 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %199
  %204 = load i32, ptr %63, align 8, !tbaa !81
  %205 = and i32 %204, 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %203
  call fastcc void @halo_tile(ptr noundef %0, ptr noundef nonnull %62)
  br label %208

208:                                              ; preds = %203, %207, %199
  %209 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !139
  %210 = and i16 %209, 1
  %211 = icmp ne i16 %210, 0
  %212 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 63), align 4
  %213 = icmp ne i32 %212, 0
  %214 = select i1 %211, i1 true, i1 %213
  br i1 %214, label %215, label %246

215:                                              ; preds = %208
  %216 = load i32, ptr %63, align 8, !tbaa !81
  %217 = and i32 %216, 34
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %246, label %219

219:                                              ; preds = %215
  %220 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %221 = load i32, ptr %10, align 8, !tbaa !76
  %222 = sext i32 %221 to i64
  %223 = shl nsw i64 %222, 4
  %224 = load i32, ptr %14, align 4, !tbaa !77
  %225 = sext i32 %224 to i64
  %226 = mul i64 %223, %225
  %227 = call ptr %220(i64 noundef %226, ptr noundef nonnull @.str.6) #12
  %228 = getelementptr inbounds %struct.RenderLayer, ptr %62, i64 0, i32 12
  store ptr %227, ptr %228, align 8, !tbaa !140
  %229 = getelementptr inbounds %struct.RenderLayer, ptr %62, i64 0, i32 11
  %230 = load ptr, ptr %229, align 8, !tbaa !115
  store ptr %230, ptr %228, align 8, !tbaa !140
  store ptr %227, ptr %229, align 8, !tbaa !115
  %231 = call ptr @zbuffer_transp_shade(ptr noundef %0, ptr noundef nonnull %62, ptr noundef %227, ptr noundef null) #12
  %232 = load ptr, ptr %228, align 8, !tbaa !140
  %233 = load ptr, ptr %229, align 8, !tbaa !115
  store ptr %233, ptr %228, align 8, !tbaa !140
  store ptr %232, ptr %229, align 8, !tbaa !115
  %234 = load i32, ptr %10, align 8, !tbaa !76
  %235 = load i32, ptr %14, align 4, !tbaa !77
  %236 = mul nsw i32 %235, %234
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %246

238:                                              ; preds = %219, %238
  %239 = phi i32 [ %242, %238 ], [ %236, %219 ]
  %240 = phi ptr [ %243, %238 ], [ %233, %219 ]
  %241 = phi ptr [ %244, %238 ], [ %232, %219 ]
  call void @addAlphaOverFloat(ptr noundef %241, ptr noundef %240) #12
  %242 = add nsw i32 %239, -1
  %243 = getelementptr inbounds float, ptr %240, i64 4
  %244 = getelementptr inbounds float, ptr %241, i64 4
  %245 = icmp sgt i32 %239, 1
  br i1 %245, label %238, label %246, !llvm.loop !226

246:                                              ; preds = %238, %219, %215, %208
  %247 = load i32, ptr %63, align 8, !tbaa !81
  %248 = and i32 %247, 16
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %246
  call fastcc void @atm_tile(ptr noundef %0, ptr noundef nonnull %62)
  br label %251

251:                                              ; preds = %250, %246
  %252 = load i32, ptr %63, align 8, !tbaa !81
  %253 = and i32 %252, 16
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %251
  call fastcc void @sky_tile(ptr noundef %0, ptr noundef nonnull %62)
  br label %256

256:                                              ; preds = %255, %251
  %257 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !93
  %258 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !94
  %259 = call i32 %257(ptr noundef %258) #12
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %297

261:                                              ; preds = %256
  %262 = load i32, ptr %63, align 8, !tbaa !81
  %263 = and i32 %262, 8
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %297, label %265

265:                                              ; preds = %261
  %266 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %267 = and i32 %266, 32
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %297, label %269

269:                                              ; preds = %265
  %270 = getelementptr inbounds %struct.RenderLayer, ptr %62, i64 0, i32 11
  %271 = load ptr, ptr %270, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  %272 = icmp eq ptr %190, null
  br i1 %272, label %296, label %273

273:                                              ; preds = %269
  %274 = load i32, ptr %10, align 8, !tbaa !76
  %275 = load i32, ptr %14, align 4, !tbaa !77
  %276 = mul nsw i32 %275, %274
  %277 = icmp sgt i32 %276, 0
  br i1 %277, label %278, label %296

278:                                              ; preds = %273, %291
  %279 = phi i32 [ %292, %291 ], [ %276, %273 ]
  %280 = phi ptr [ %293, %291 ], [ %190, %273 ]
  %281 = phi ptr [ %294, %291 ], [ %271, %273 ]
  %282 = load float, ptr %280, align 4, !tbaa !34
  %283 = fcmp une float %282, 0.000000e+00
  br i1 %283, label %284, label %291

284:                                              ; preds = %278
  %285 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 17), align 4, !tbaa !149
  %286 = fmul float %282, %285
  store float %286, ptr %3, align 16, !tbaa !34
  %287 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 18), align 8, !tbaa !150
  %288 = fmul float %282, %287
  store float %288, ptr %56, align 4, !tbaa !34
  %289 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 19), align 4, !tbaa !151
  %290 = fmul float %282, %289
  store float %290, ptr %57, align 8, !tbaa !34
  store float %282, ptr %58, align 4, !tbaa !34
  call void @addAlphaOverFloat(ptr noundef %281, ptr noundef nonnull %3) #12
  br label %291

291:                                              ; preds = %284, %278
  %292 = add nsw i32 %279, -1
  %293 = getelementptr inbounds float, ptr %280, i64 1
  %294 = getelementptr inbounds float, ptr %281, i64 4
  %295 = icmp sgt i32 %279, 1
  br i1 %295, label %278, label %296, !llvm.loop !152

296:                                              ; preds = %291, %269, %273
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  br label %297

297:                                              ; preds = %261, %296, %265, %256
  %298 = getelementptr inbounds %struct.RenderLayer, ptr %62, i64 0, i32 7
  %299 = load i32, ptr %298, align 4, !tbaa !153
  %300 = and i32 %299, 512
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %358, label %302

302:                                              ; preds = %297
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #12
  %303 = load ptr, ptr %59, align 8, !tbaa !68
  %304 = icmp eq ptr %303, null
  br i1 %304, label %323, label %305

305:                                              ; preds = %302
  %306 = load ptr, ptr %6, align 8, !tbaa !70
  %307 = getelementptr inbounds %struct.RenderResult, ptr %306, i64 0, i32 12
  %308 = call i32 @BLI_findindex(ptr noundef nonnull %307, ptr noundef nonnull %62) #12
  %309 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %310 = sext i16 %309 to i32
  %311 = icmp sgt i16 %309, 0
  br i1 %311, label %312, label %326

312:                                              ; preds = %305, %312
  %313 = phi i64 [ %319, %312 ], [ 0, %305 ]
  %314 = trunc i64 %313 to i32
  %315 = call ptr @BLI_findlink(ptr noundef nonnull %59, i32 noundef %314) #12
  %316 = getelementptr inbounds %struct.RenderResult, ptr %315, i64 0, i32 12
  %317 = call ptr @BLI_findlink(ptr noundef nonnull %316, i32 noundef %308) #12
  %318 = getelementptr inbounds ptr, ptr %2, i64 %313
  store ptr %317, ptr %318, align 8, !tbaa !72
  %319 = add nuw nsw i64 %313, 1
  %320 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !71
  %321 = sext i16 %320 to i64
  %322 = icmp slt i64 %319, %321
  br i1 %322, label %312, label %324, !llvm.loop !73

323:                                              ; preds = %302
  store ptr %62, ptr %2, align 16, !tbaa !72
  br label %326

324:                                              ; preds = %312
  %325 = sext i16 %320 to i32
  br label %326

326:                                              ; preds = %305, %323, %324
  %327 = phi i32 [ 1, %323 ], [ %310, %305 ], [ %325, %324 ]
  %328 = icmp sgt i32 %327, 0
  br i1 %328, label %329, label %357

329:                                              ; preds = %326
  %330 = zext nneg i32 %327 to i64
  br label %331

331:                                              ; preds = %354, %329
  %332 = phi i64 [ 0, %329 ], [ %355, %354 ]
  %333 = getelementptr inbounds [16 x ptr], ptr %2, i64 0, i64 %332
  %334 = load ptr, ptr %333, align 8, !tbaa !72
  %335 = call ptr @RE_RenderLayerGetPass(ptr noundef %334, i32 noundef 512) #12
  %336 = icmp eq ptr %335, null
  br i1 %336, label %357, label %337

337:                                              ; preds = %331
  %338 = load i32, ptr %10, align 8, !tbaa !76
  %339 = shl nsw i32 %338, 2
  %340 = load i32, ptr %14, align 4, !tbaa !77
  %341 = mul nsw i32 %339, %340
  %342 = icmp sgt i32 %341, 0
  br i1 %342, label %343, label %354

343:                                              ; preds = %337
  %344 = zext nneg i32 %341 to i64
  br label %345

345:                                              ; preds = %352, %343
  %346 = phi i64 [ %344, %343 ], [ %347, %352 ]
  %347 = add nsw i64 %346, -1
  %348 = getelementptr inbounds float, ptr %335, i64 %347
  %349 = load float, ptr %348, align 4, !tbaa !34
  %350 = fcmp oeq float %349, 1.000000e+04
  br i1 %350, label %351, label %352

351:                                              ; preds = %345
  store float 0.000000e+00, ptr %348, align 4, !tbaa !34
  br label %352

352:                                              ; preds = %351, %345
  %353 = icmp sgt i64 %346, 1
  br i1 %353, label %345, label %354, !llvm.loop !154

354:                                              ; preds = %352, %337
  %355 = add nuw nsw i64 %332, 1
  %356 = icmp eq i64 %355, %330
  br i1 %356, label %357, label %331, !llvm.loop !155

357:                                              ; preds = %331, %354, %326
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #12
  br label %358

358:                                              ; preds = %357, %297
  %359 = icmp eq ptr %190, null
  br i1 %359, label %362, label %360

360:                                              ; preds = %358
  %361 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %361(ptr noundef nonnull %190) #12
  br label %362

362:                                              ; preds = %360, %358
  %363 = load ptr, ptr %60, align 8, !tbaa !83
  %364 = icmp eq ptr %363, null
  br i1 %364, label %367, label %365

365:                                              ; preds = %362
  %366 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %366(ptr noundef nonnull %363) #12
  store ptr null, ptr %60, align 8, !tbaa !83
  br label %367

367:                                              ; preds = %362, %365
  %368 = load ptr, ptr %62, align 8, !tbaa !72
  %369 = icmp eq ptr %368, null
  br i1 %369, label %370, label %61, !llvm.loop !227

370:                                              ; preds = %367, %1
  %371 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 13, i32 3
  store volatile i32 0, ptr %371, align 4, !tbaa !101
  %372 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 13, i32 2
  store volatile i32 0, ptr %372, align 8, !tbaa !99
  %373 = call ptr @render_get_active_layer(ptr noundef nonnull @R, ptr noundef %7) #12
  %374 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 14
  store ptr %373, ptr %374, align 8, !tbaa !102
  %375 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %376 = load ptr, ptr %19, align 8, !tbaa !78
  call void %375(ptr noundef %376) #12
  store ptr null, ptr %19, align 8, !tbaa !78
  %377 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %378 = load ptr, ptr %28, align 8, !tbaa !79
  call void %377(ptr noundef %378) #12
  store ptr null, ptr %28, align 8, !tbaa !79
  %379 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %380 = load ptr, ptr %37, align 8, !tbaa !80
  call void %379(ptr noundef %380) #12
  store ptr null, ptr %37, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 27080, ptr nonnull %4) #12
  ret void
}

declare void @shade_sample_initialize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @edge_enhance_tile(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #8 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %144, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %7 = load i32, ptr %6, align 4, !tbaa !77
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  br label %11

11:                                               ; preds = %9, %25
  %12 = phi i32 [ 0, %9 ], [ %27, %25 ]
  %13 = phi ptr [ %2, %9 ], [ %26, %25 ]
  %14 = load i32, ptr %10, align 8, !tbaa !76
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11, %16
  %17 = phi i32 [ %21, %16 ], [ 0, %11 ]
  %18 = phi ptr [ %22, %16 ], [ %13, %11 ]
  %19 = load i32, ptr %18, align 4, !tbaa !166
  %20 = ashr i32 %19, 4
  store i32 %20, ptr %18, align 4, !tbaa !166
  %21 = add nuw nsw i32 %17, 1
  %22 = getelementptr inbounds i32, ptr %18, i64 1
  %23 = load i32, ptr %10, align 8, !tbaa !76
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %16, label %25, !llvm.loop !228

25:                                               ; preds = %16, %11
  %26 = phi ptr [ %13, %11 ], [ %22, %16 ]
  %27 = add nuw nsw i32 %12, 1
  %28 = load i32, ptr %6, align 4, !tbaa !77
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %11, label %30, !llvm.loop !229

30:                                               ; preds = %25, %5
  %31 = phi i32 [ %7, %5 ], [ %28, %25 ]
  %32 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %33 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %34 = icmp sgt i32 %31, 2
  br i1 %34, label %35, label %55

35:                                               ; preds = %30
  %36 = load i32, ptr %33, align 8, !tbaa !76
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, ptr %1, i64 %37
  %39 = getelementptr inbounds float, ptr %38, i64 1
  %40 = getelementptr inbounds i32, ptr %2, i64 %37
  %41 = getelementptr inbounds i32, ptr %40, i64 %37
  %42 = icmp sgt i32 %36, 2
  %43 = add nsw i32 %36, -3
  %44 = add nsw i32 %31, -3
  br label %45

45:                                               ; preds = %35, %114
  %46 = phi ptr [ %39, %35 ], [ %122, %114 ]
  %47 = phi i32 [ 0, %35 ], [ %123, %114 ]
  %48 = phi ptr [ %41, %35 ], [ %121, %114 ]
  %49 = phi ptr [ %40, %35 ], [ %120, %114 ]
  %50 = phi ptr [ %2, %35 ], [ %119, %114 ]
  br i1 %42, label %51, label %114

51:                                               ; preds = %45
  %52 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %53 = icmp eq i16 %52, 0
  %54 = sitofp i16 %52 to float
  br label %58

55:                                               ; preds = %114, %30
  %56 = load i32, ptr %32, align 4, !tbaa !77
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %125, label %144

58:                                               ; preds = %51, %110
  %59 = phi ptr [ %46, %51 ], [ %112, %110 ]
  %60 = phi i32 [ 0, %51 ], [ %111, %110 ]
  %61 = phi ptr [ %48, %51 ], [ %73, %110 ]
  %62 = phi ptr [ %49, %51 ], [ %77, %110 ]
  %63 = phi ptr [ %50, %51 ], [ %65, %110 ]
  %64 = load i32, ptr %63, align 4, !tbaa !166
  %65 = getelementptr inbounds i32, ptr %63, i64 1
  %66 = load i32, ptr %65, align 4, !tbaa !166
  %67 = getelementptr inbounds i32, ptr %63, i64 2
  %68 = load i32, ptr %67, align 4, !tbaa !166
  %69 = load i32, ptr %62, align 4, !tbaa !166
  %70 = getelementptr inbounds i32, ptr %62, i64 2
  %71 = load i32, ptr %70, align 4, !tbaa !166
  %72 = load i32, ptr %61, align 4, !tbaa !166
  %73 = getelementptr inbounds i32, ptr %61, i64 1
  %74 = load i32, ptr %73, align 4, !tbaa !166
  %75 = getelementptr inbounds i32, ptr %61, i64 2
  %76 = load i32, ptr %75, align 4, !tbaa !166
  %77 = getelementptr inbounds i32, ptr %62, i64 1
  %78 = load i32, ptr %77, align 4, !tbaa !166
  %79 = shl nsw i32 %78, 2
  %80 = add i32 %69, %66
  %81 = add i32 %80, %71
  %82 = add i32 %81, %74
  %83 = shl i32 %82, 1
  %84 = add i32 %68, %64
  %85 = add i32 %84, %72
  %86 = add i32 %85, %76
  %87 = add i32 %86, %83
  %88 = sdiv i32 %87, -3
  %89 = add i32 %88, %79
  %90 = tail call i32 @llvm.abs.i32(i32 %89, i1 true)
  %91 = lshr i32 %90, 5
  %92 = icmp ugt i32 %90, 2097183
  %93 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 56), align 2
  %94 = sext i16 %93 to i32
  %95 = mul nsw i32 %91, %94
  %96 = ashr i32 %95, 8
  %97 = select i1 %92, i32 65536, i32 %96
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %58
  %100 = icmp sgt i32 %97, 255
  %101 = sitofp i32 %97 to float
  %102 = fdiv float %101, 2.550000e+02
  %103 = select i1 %100, float 1.000000e+00, float %102
  br i1 %53, label %108, label %104

104:                                              ; preds = %99
  %105 = fdiv float %103, %54
  %106 = load float, ptr %59, align 4, !tbaa !34
  %107 = fadd float %105, %106
  br label %108

108:                                              ; preds = %99, %104
  %109 = phi float [ %107, %104 ], [ %103, %99 ]
  store float %109, ptr %59, align 4, !tbaa !34
  br label %110

110:                                              ; preds = %58, %108
  %111 = add nuw nsw i32 %60, 1
  %112 = getelementptr inbounds float, ptr %59, i64 1
  %113 = icmp eq i32 %60, %43
  br i1 %113, label %114, label %58, !llvm.loop !230

114:                                              ; preds = %110, %45
  %115 = phi ptr [ %50, %45 ], [ %65, %110 ]
  %116 = phi ptr [ %49, %45 ], [ %77, %110 ]
  %117 = phi ptr [ %48, %45 ], [ %73, %110 ]
  %118 = phi ptr [ %46, %45 ], [ %112, %110 ]
  %119 = getelementptr inbounds i32, ptr %115, i64 2
  %120 = getelementptr inbounds i32, ptr %116, i64 2
  %121 = getelementptr inbounds i32, ptr %117, i64 2
  %122 = getelementptr inbounds float, ptr %118, i64 2
  %123 = add nuw nsw i32 %47, 1
  %124 = icmp eq i32 %47, %44
  br i1 %124, label %55, label %45, !llvm.loop !231

125:                                              ; preds = %55, %139
  %126 = phi i32 [ %141, %139 ], [ 0, %55 ]
  %127 = phi ptr [ %140, %139 ], [ %2, %55 ]
  %128 = load i32, ptr %33, align 8, !tbaa !76
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %125, %130
  %131 = phi i32 [ %135, %130 ], [ 0, %125 ]
  %132 = phi ptr [ %136, %130 ], [ %127, %125 ]
  %133 = load i32, ptr %132, align 4, !tbaa !166
  %134 = shl i32 %133, 4
  store i32 %134, ptr %132, align 4, !tbaa !166
  %135 = add nuw nsw i32 %131, 1
  %136 = getelementptr inbounds i32, ptr %132, i64 1
  %137 = load i32, ptr %33, align 8, !tbaa !76
  %138 = icmp slt i32 %135, %137
  br i1 %138, label %130, label %139, !llvm.loop !232

139:                                              ; preds = %130, %125
  %140 = phi ptr [ %127, %125 ], [ %136, %130 ]
  %141 = add nuw nsw i32 %126, 1
  %142 = load i32, ptr %32, align 4, !tbaa !77
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %125, label %144, !llvm.loop !233

144:                                              ; preds = %139, %55, %3
  ret void
}

declare void @ISB_create(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @cache_occ_samples(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @BLI_thread_srandom(i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @shade_samples(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @add_passes(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3) unnamed_addr #8 {
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.RenderLayer, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !115
  %8 = shl nsw i32 %1, 2
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds float, ptr %7, i64 %9
  %11 = load float, ptr %3, align 4, !tbaa !34
  store float %11, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %3, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %10, i64 1
  store float %13, ptr %14, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %3, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %10, i64 2
  store float %16, ptr %17, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %3, i64 3
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %10, i64 3
  store float %19, ptr %20, align 4, !tbaa !34
  %21 = getelementptr inbounds %struct.RenderLayer, ptr %0, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !72
  %23 = icmp eq ptr %22, null
  br i1 %23, label %135, label %24

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 17
  %26 = sext i32 %1 to i64
  %27 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 3
  %28 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 1
  %29 = sext i32 %1 to i64
  %30 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 1
  %31 = sext i32 %1 to i64
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 4
  %33 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 16
  %34 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 74
  %35 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 76
  %36 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %37 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %38 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 15
  %39 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 14
  %40 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 13
  %41 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 12
  %42 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 11
  %43 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 10
  %44 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 9
  %45 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 8
  %46 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 6
  %47 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 5
  %48 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 1
  %49 = sext i32 %1 to i64
  %50 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 4
  br label %51

51:                                               ; preds = %24, %132
  %52 = phi ptr [ %22, %24 ], [ %133, %132 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %53 = getelementptr inbounds %struct.RenderPass, ptr %52, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !116
  switch i32 %54, label %114 [
    i32 2, label %55
    i32 4, label %60
    i32 65536, label %61
    i32 8, label %62
    i32 16, label %63
    i32 32, label %64
    i32 64, label %65
    i32 131072, label %66
    i32 8192, label %67
    i32 128, label %68
    i32 1024, label %69
    i32 256, label %70
    i32 4096, label %71
    i32 512, label %83
    i32 2048, label %84
    i32 262144, label %97
    i32 16384, label %108
    i32 32768, label %113
  ]

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.RenderPass, ptr %52, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !118
  %58 = getelementptr inbounds float, ptr %57, i64 %49
  %59 = load float, ptr %50, align 4, !tbaa !119
  store float %59, ptr %58, align 4, !tbaa !34
  br label %114

60:                                               ; preds = %51
  br label %114

61:                                               ; preds = %51
  br label %114

62:                                               ; preds = %51
  br label %114

63:                                               ; preds = %51
  br label %114

64:                                               ; preds = %51
  br label %114

65:                                               ; preds = %51
  br label %114

66:                                               ; preds = %51
  br label %114

67:                                               ; preds = %51
  br label %114

68:                                               ; preds = %51
  br label %114

69:                                               ; preds = %51
  br label %114

70:                                               ; preds = %51
  br label %114

71:                                               ; preds = %51
  %72 = load i32, ptr %34, align 8, !tbaa !121
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %114, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr %35, align 8, !tbaa !122
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 72, i64 %76, i32 2
  %78 = load float, ptr %77, align 8, !tbaa !34
  %79 = call float @llvm.fmuladd.f32(float %78, float 5.000000e-01, float 5.000000e-01)
  store float %79, ptr %5, align 4, !tbaa !34
  %80 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 72, i64 %76, i32 2, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !34
  %82 = call float @llvm.fmuladd.f32(float %81, float 5.000000e-01, float 5.000000e-01)
  store float %82, ptr %36, align 4, !tbaa !34
  store float 1.000000e+00, ptr %37, align 4, !tbaa !34
  br label %114

83:                                               ; preds = %51
  br label %114

84:                                               ; preds = %51
  %85 = load ptr, ptr %30, align 8, !tbaa !123
  %86 = icmp eq ptr %85, null
  br i1 %86, label %114, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.RenderPass, ptr %52, i64 0, i32 6
  %89 = load ptr, ptr %88, align 8, !tbaa !118
  %90 = getelementptr inbounds float, ptr %89, i64 %31
  %91 = load ptr, ptr %32, align 8, !tbaa !124
  %92 = getelementptr inbounds %struct.ObjectRen, ptr %91, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !125
  %94 = getelementptr inbounds %struct.Object, ptr %93, i64 0, i32 96
  %95 = load i16, ptr %94, align 4, !tbaa !127
  %96 = sitofp i16 %95 to float
  store float %96, ptr %90, align 4, !tbaa !34
  br label %114

97:                                               ; preds = %51
  %98 = load ptr, ptr %28, align 8, !tbaa !123
  %99 = icmp eq ptr %98, null
  br i1 %99, label %114, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.RenderPass, ptr %52, i64 0, i32 6
  %102 = load ptr, ptr %101, align 8, !tbaa !118
  %103 = getelementptr inbounds float, ptr %102, i64 %29
  %104 = load ptr, ptr %2, align 8, !tbaa !130
  %105 = getelementptr inbounds %struct.Material, ptr %104, i64 0, i32 127
  %106 = load i16, ptr %105, align 2, !tbaa !131
  %107 = sitofp i16 %106 to float
  store float %107, ptr %103, align 4, !tbaa !34
  br label %114

108:                                              ; preds = %51
  %109 = getelementptr inbounds %struct.RenderPass, ptr %52, i64 0, i32 6
  %110 = load ptr, ptr %109, align 8, !tbaa !118
  %111 = getelementptr inbounds float, ptr %110, i64 %26
  %112 = load float, ptr %27, align 4, !tbaa !234
  store float %112, ptr %111, align 4, !tbaa !34
  br label %114

113:                                              ; preds = %51
  br label %114

114:                                              ; preds = %97, %100, %84, %87, %71, %74, %51, %113, %108, %83, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %55
  %115 = phi ptr [ null, %51 ], [ %25, %113 ], [ null, %108 ], [ null, %100 ], [ null, %97 ], [ null, %87 ], [ null, %84 ], [ %33, %83 ], [ %5, %74 ], [ null, %71 ], [ %38, %70 ], [ %39, %69 ], [ %40, %68 ], [ %41, %67 ], [ %42, %66 ], [ %43, %65 ], [ %44, %64 ], [ %45, %63 ], [ %46, %62 ], [ %47, %61 ], [ %48, %60 ], [ null, %55 ]
  %116 = phi i32 [ 3, %51 ], [ 4, %113 ], [ 3, %108 ], [ 3, %100 ], [ 3, %97 ], [ 3, %87 ], [ 3, %84 ], [ 4, %83 ], [ 3, %74 ], [ 3, %71 ], [ 3, %70 ], [ 3, %69 ], [ 3, %68 ], [ 3, %67 ], [ 3, %66 ], [ 3, %65 ], [ 3, %64 ], [ 3, %63 ], [ 3, %62 ], [ 3, %61 ], [ 4, %60 ], [ 3, %55 ]
  %117 = icmp eq ptr %115, null
  br i1 %117, label %132, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.RenderPass, ptr %52, i64 0, i32 6
  %120 = load ptr, ptr %119, align 8, !tbaa !118
  %121 = mul nsw i32 %116, %1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, ptr %120, i64 %122
  %124 = zext nneg i32 %116 to i64
  br label %125

125:                                              ; preds = %118, %125
  %126 = phi i64 [ 0, %118 ], [ %130, %125 ]
  %127 = getelementptr inbounds float, ptr %115, i64 %126
  %128 = load float, ptr %127, align 4, !tbaa !34
  %129 = getelementptr inbounds float, ptr %123, i64 %126
  store float %128, ptr %129, align 4, !tbaa !34
  %130 = add nuw nsw i64 %126, 1
  %131 = icmp eq i64 %130, %124
  br i1 %131, label %132, label %125, !llvm.loop !235

132:                                              ; preds = %125, %114
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  %133 = load ptr, ptr %52, align 8, !tbaa !72
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %51, !llvm.loop !236

135:                                              ; preds = %132, %4
  ret void
}

declare void @free_occ_samples(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @ISB_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @zbufshade_sss_tile(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca %struct.ShadeSample, align 8
  %3 = alloca %struct.ZBufSSSHandle, align 8
  call void @llvm.lifetime.start.p0(i64 27080, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #12
  %4 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 76), align 8, !tbaa !237
  %7 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !238
  %8 = and i32 %7, 524296
  %9 = icmp eq i32 %8, 0
  store ptr %0, ptr %3, align 8, !tbaa !239
  %10 = getelementptr inbounds %struct.ZBufSSSHandle, ptr %3, i64 0, i32 2
  store i32 0, ptr %10, align 8, !tbaa !241
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %12 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %13 = load i32, ptr %12, align 8, !tbaa !76
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 2
  %16 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %17 = load i32, ptr %16, align 4, !tbaa !77
  %18 = sext i32 %17 to i64
  %19 = mul i64 %15, %18
  %20 = tail call ptr %11(i64 noundef %19, ptr noundef nonnull @.str) #12
  %21 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 4
  store ptr %20, ptr %21, align 8, !tbaa !78
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %23 = load i32, ptr %12, align 8, !tbaa !76
  %24 = sext i32 %23 to i64
  %25 = shl nsw i64 %24, 2
  %26 = load i32, ptr %16, align 4, !tbaa !77
  %27 = sext i32 %26 to i64
  %28 = mul i64 %25, %27
  %29 = tail call ptr %22(i64 noundef %28, ptr noundef nonnull @.str.1) #12
  %30 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 5
  store ptr %29, ptr %30, align 8, !tbaa !79
  %31 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %32 = load i32, ptr %12, align 8, !tbaa !76
  %33 = sext i32 %32 to i64
  %34 = shl nsw i64 %33, 2
  %35 = load i32, ptr %16, align 4, !tbaa !77
  %36 = sext i32 %35 to i64
  %37 = mul i64 %34, %36
  %38 = tail call ptr %31(i64 noundef %37, ptr noundef nonnull @.str.2) #12
  %39 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 6
  store ptr %38, ptr %39, align 8, !tbaa !80
  %40 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %41 = load i32, ptr %12, align 8, !tbaa !76
  %42 = sext i32 %41 to i64
  %43 = shl nsw i64 %42, 2
  %44 = load i32, ptr %16, align 4, !tbaa !77
  %45 = sext i32 %44 to i64
  %46 = mul i64 %43, %45
  %47 = tail call ptr %40(i64 noundef %46, ptr noundef nonnull @.str.7) #12
  %48 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 9
  store ptr %47, ptr %48, align 8, !tbaa !242
  %49 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %50 = load i32, ptr %12, align 8, !tbaa !76
  %51 = sext i32 %50 to i64
  %52 = shl nsw i64 %51, 2
  %53 = load i32, ptr %16, align 4, !tbaa !77
  %54 = sext i32 %53 to i64
  %55 = mul i64 %52, %54
  %56 = tail call ptr %49(i64 noundef %55, ptr noundef nonnull @.str.8) #12
  %57 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 10
  store ptr %56, ptr %57, align 8, !tbaa !243
  %58 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %59 = load i32, ptr %12, align 8, !tbaa !76
  %60 = sext i32 %59 to i64
  %61 = shl nsw i64 %60, 2
  %62 = load i32, ptr %16, align 4, !tbaa !77
  %63 = sext i32 %62 to i64
  %64 = mul i64 %61, %63
  %65 = tail call ptr %58(i64 noundef %64, ptr noundef nonnull @.str.9) #12
  %66 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 11
  store ptr %65, ptr %66, align 8, !tbaa !244
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(27080) %2, i8 0, i64 27080, i1 false)
  %67 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 12
  %68 = load ptr, ptr %67, align 8, !tbaa !245
  call void @shade_sample_initialize(ptr noundef nonnull %2, ptr noundef %0, ptr noundef %68) #12
  store i32 1, ptr %2, align 8, !tbaa !109
  %69 = load ptr, ptr %67, align 8, !tbaa !72
  %70 = icmp eq ptr %69, null
  br i1 %70, label %102, label %71

71:                                               ; preds = %1
  %72 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 117
  %73 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 118
  %74 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 119
  %75 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 120
  %76 = load i32, ptr %72, align 8, !tbaa !246
  %77 = load i32, ptr %73, align 4, !tbaa !247
  %78 = load i32, ptr %74, align 8, !tbaa !248
  %79 = load i32, ptr %75, align 4, !tbaa !249
  br label %80

80:                                               ; preds = %71, %80
  %81 = phi i32 [ %79, %71 ], [ %98, %80 ]
  %82 = phi i32 [ %78, %71 ], [ %94, %80 ]
  %83 = phi i32 [ %77, %71 ], [ %91, %80 ]
  %84 = phi i32 [ %76, %71 ], [ %88, %80 ]
  %85 = phi ptr [ %69, %71 ], [ %99, %80 ]
  %86 = getelementptr inbounds %struct.RenderLayer, ptr %85, i64 0, i32 3
  %87 = load i32, ptr %86, align 4, !tbaa !178
  %88 = or i32 %84, %87
  %89 = getelementptr inbounds %struct.RenderLayer, ptr %85, i64 0, i32 6
  %90 = load i32, ptr %89, align 8, !tbaa !81
  %91 = or i32 %83, %90
  %92 = getelementptr inbounds %struct.RenderLayer, ptr %85, i64 0, i32 7
  %93 = load i32, ptr %92, align 4, !tbaa !153
  %94 = or i32 %82, %93
  %95 = getelementptr inbounds %struct.RenderLayer, ptr %85, i64 0, i32 8
  %96 = load i32, ptr %95, align 8, !tbaa !250
  %97 = xor i32 %96, -1
  %98 = or i32 %81, %97
  %99 = load ptr, ptr %85, align 8, !tbaa !72
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %80, !llvm.loop !251

101:                                              ; preds = %80
  store i32 %88, ptr %72, align 8, !tbaa !246
  store i32 %91, ptr %73, align 4, !tbaa !247
  store i32 %94, ptr %74, align 8, !tbaa !248
  store i32 %98, ptr %75, align 4, !tbaa !249
  br label %102

102:                                              ; preds = %101, %1
  %103 = load ptr, ptr %67, align 8, !tbaa !245
  %104 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 119
  %105 = load i32, ptr %104, align 8, !tbaa !248
  %106 = or i32 %105, 5
  store i32 %106, ptr %104, align 8, !tbaa !248
  %107 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 120
  %108 = load i32, ptr %107, align 4, !tbaa !249
  %109 = and i32 %108, -17
  store i32 %109, ptr %107, align 4, !tbaa !249
  %110 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 121
  %111 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 117
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %110, i8 0, i64 16, i1 false)
  %112 = load i32, ptr %111, align 8, !tbaa !246
  call void @zbuffer_sss(ptr noundef %0, i32 noundef %112, ptr noundef nonnull %3, ptr noundef nonnull @addps_sss) #12
  %113 = load i32, ptr %10, align 8, !tbaa !241
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %333, label %115

115:                                              ; preds = %102
  %116 = getelementptr inbounds %struct.RenderLayer, ptr %103, i64 0, i32 11
  %117 = load ptr, ptr %116, align 8, !tbaa !115
  %118 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %119 = sext i32 %113 to i64
  %120 = mul nsw i64 %119, 12
  %121 = call ptr %118(i64 noundef %120, ptr noundef nonnull @.str.10) #12
  %122 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %123 = load i32, ptr %10, align 8, !tbaa !241
  %124 = sext i32 %123 to i64
  %125 = mul nsw i64 %124, 12
  %126 = call ptr %122(i64 noundef %125, ptr noundef nonnull @.str.11) #12
  %127 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %128 = load i32, ptr %10, align 8, !tbaa !241
  %129 = sext i32 %128 to i64
  %130 = shl nsw i64 %129, 2
  %131 = call ptr %127(i64 noundef %130, ptr noundef nonnull @.str.12) #12
  br i1 %9, label %132, label %135

132:                                              ; preds = %115
  %133 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 13, i32 2
  store volatile i32 0, ptr %133, align 8, !tbaa !99
  %134 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 14
  store ptr %103, ptr %134, align 8, !tbaa !102
  br label %135

135:                                              ; preds = %132, %115
  %136 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13
  %137 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 2
  %138 = load i32, ptr %137, align 8, !tbaa !96
  %139 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 3
  %140 = load i32, ptr %139, align 4, !tbaa !103
  %141 = icmp slt i32 %138, %140
  br i1 %141, label %142, label %319

142:                                              ; preds = %135
  %143 = load ptr, ptr %48, align 8, !tbaa !242
  %144 = load ptr, ptr %57, align 8, !tbaa !243
  %145 = load ptr, ptr %66, align 8, !tbaa !244
  %146 = load ptr, ptr %21, align 8, !tbaa !78
  %147 = load ptr, ptr %30, align 8, !tbaa !79
  %148 = load ptr, ptr %39, align 8, !tbaa !80
  %149 = load i32, ptr %12, align 8, !tbaa !76
  %150 = mul nsw i32 %138, %149
  %151 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 1
  %152 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 20
  %153 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 13, i32 3
  br label %154

154:                                              ; preds = %142, %313
  %155 = phi ptr [ %117, %142 ], [ %305, %313 ]
  %156 = phi i32 [ %138, %142 ], [ %314, %313 ]
  %157 = phi ptr [ %144, %142 ], [ %304, %313 ]
  %158 = phi ptr [ %145, %142 ], [ %303, %313 ]
  %159 = phi ptr [ %143, %142 ], [ %302, %313 ]
  %160 = phi ptr [ %147, %142 ], [ %301, %313 ]
  %161 = phi ptr [ %148, %142 ], [ %300, %313 ]
  %162 = phi ptr [ %146, %142 ], [ %299, %313 ]
  %163 = phi i32 [ %150, %142 ], [ %298, %313 ]
  %164 = phi i32 [ 0, %142 ], [ %297, %313 ]
  %165 = load i32, ptr %136, align 8, !tbaa !104
  %166 = load i32, ptr %151, align 4, !tbaa !105
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %296

168:                                              ; preds = %154
  %169 = sitofp i32 %156 to float
  %170 = sitofp i32 %156 to float
  br label %171

171:                                              ; preds = %168, %287
  %172 = phi ptr [ %155, %168 ], [ %293, %287 ]
  %173 = phi i32 [ %165, %168 ], [ %292, %287 ]
  %174 = phi ptr [ %157, %168 ], [ %291, %287 ]
  %175 = phi ptr [ %158, %168 ], [ %290, %287 ]
  %176 = phi ptr [ %159, %168 ], [ %289, %287 ]
  %177 = phi ptr [ %160, %168 ], [ %232, %287 ]
  %178 = phi ptr [ %161, %168 ], [ %231, %287 ]
  %179 = phi ptr [ %162, %168 ], [ %230, %287 ]
  %180 = phi i32 [ %163, %168 ], [ %184, %287 ]
  %181 = phi i32 [ %164, %168 ], [ %288, %287 ]
  %182 = load i16, ptr %152, align 2, !tbaa !106
  %183 = sext i16 %182 to i32
  %184 = add nsw i32 %180, 1
  call void @BLI_thread_srandom(i32 noundef %183, i32 noundef %180) #12
  %185 = icmp eq ptr %177, null
  br i1 %185, label %228, label %186

186:                                              ; preds = %171
  %187 = load i32, ptr %177, align 4, !tbaa !166
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %223, label %189

189:                                              ; preds = %186
  %190 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !252
  %191 = load i32, ptr %179, align 4, !tbaa !166
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %190, i64 %192
  %194 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %190, i64 %192, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !253
  %196 = add i32 %187, 134217727
  %197 = and i32 %196, 134217727
  %198 = call ptr @RE_findOrAddVlak(ptr noundef %195, i32 noundef %197) #12
  %199 = load i32, ptr %177, align 4, !tbaa !166
  %200 = and i32 %199, 134217728
  %201 = sitofp i32 %173 to float
  %202 = load i32, ptr %178, align 4, !tbaa !166
  %203 = sitofp i32 %202 to float
  %204 = sext i32 %181 to i64
  %205 = getelementptr inbounds [3 x float], ptr %121, i64 %204
  %206 = getelementptr inbounds [3 x float], ptr %126, i64 %204
  %207 = getelementptr inbounds float, ptr %131, i64 %204
  call fastcc void @shade_sample_sss(ptr noundef nonnull %2, ptr noundef %6, ptr noundef %193, ptr noundef %198, i32 noundef %200, float noundef %201, float noundef %169, float noundef %203, ptr noundef %205, ptr noundef %206, ptr noundef %207)
  %208 = load float, ptr %206, align 4, !tbaa !34
  %209 = load float, ptr %172, align 4, !tbaa !34
  %210 = fadd float %208, %209
  store float %210, ptr %172, align 4, !tbaa !34
  %211 = getelementptr inbounds float, ptr %206, i64 1
  %212 = load float, ptr %211, align 4, !tbaa !34
  %213 = getelementptr inbounds float, ptr %172, i64 1
  %214 = load float, ptr %213, align 4, !tbaa !34
  %215 = fadd float %212, %214
  store float %215, ptr %213, align 4, !tbaa !34
  %216 = getelementptr inbounds float, ptr %206, i64 2
  %217 = load float, ptr %216, align 4, !tbaa !34
  %218 = getelementptr inbounds float, ptr %172, i64 2
  %219 = load float, ptr %218, align 4, !tbaa !34
  %220 = fadd float %217, %219
  store float %220, ptr %218, align 4, !tbaa !34
  %221 = getelementptr inbounds float, ptr %172, i64 3
  store float 1.000000e+00, ptr %221, align 4, !tbaa !34
  %222 = add nsw i32 %181, 1
  br label %223

223:                                              ; preds = %189, %186
  %224 = phi i32 [ %222, %189 ], [ %181, %186 ]
  %225 = getelementptr inbounds i32, ptr %177, i64 1
  %226 = getelementptr inbounds i32, ptr %178, i64 1
  %227 = getelementptr inbounds i32, ptr %179, i64 1
  br label %228

228:                                              ; preds = %223, %171
  %229 = phi i32 [ %224, %223 ], [ %181, %171 ]
  %230 = phi ptr [ %227, %223 ], [ %179, %171 ]
  %231 = phi ptr [ %226, %223 ], [ %178, %171 ]
  %232 = phi ptr [ %225, %223 ], [ null, %171 ]
  %233 = icmp eq ptr %174, null
  br i1 %233, label %287, label %234

234:                                              ; preds = %228
  %235 = load i32, ptr %174, align 4, !tbaa !166
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %282, label %237

237:                                              ; preds = %234
  %238 = getelementptr inbounds i32, ptr %232, i64 -1
  %239 = load i32, ptr %238, align 4, !tbaa !166
  %240 = icmp eq i32 %235, %239
  br i1 %240, label %241, label %246

241:                                              ; preds = %237
  %242 = load i32, ptr %176, align 4, !tbaa !166
  %243 = getelementptr inbounds i32, ptr %230, i64 -1
  %244 = load i32, ptr %243, align 4, !tbaa !166
  %245 = icmp eq i32 %242, %244
  br i1 %245, label %282, label %246

246:                                              ; preds = %241, %237
  %247 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !252
  %248 = load i32, ptr %176, align 4, !tbaa !166
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %247, i64 %249
  %251 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %247, i64 %249, i32 2
  %252 = load ptr, ptr %251, align 8, !tbaa !253
  %253 = add i32 %235, 134217727
  %254 = and i32 %253, 134217727
  %255 = call ptr @RE_findOrAddVlak(ptr noundef %252, i32 noundef %254) #12
  %256 = load i32, ptr %174, align 4, !tbaa !166
  %257 = and i32 %256, 134217728
  %258 = sitofp i32 %173 to float
  %259 = load i32, ptr %175, align 4, !tbaa !166
  %260 = sitofp i32 %259 to float
  %261 = sext i32 %229 to i64
  %262 = getelementptr inbounds [3 x float], ptr %121, i64 %261
  %263 = getelementptr inbounds [3 x float], ptr %126, i64 %261
  %264 = getelementptr inbounds float, ptr %131, i64 %261
  call fastcc void @shade_sample_sss(ptr noundef nonnull %2, ptr noundef %6, ptr noundef %250, ptr noundef %255, i32 noundef %257, float noundef %258, float noundef %170, float noundef %260, ptr noundef %262, ptr noundef %263, ptr noundef %264)
  %265 = load float, ptr %264, align 4, !tbaa !34
  %266 = fneg float %265
  store float %266, ptr %264, align 4, !tbaa !34
  %267 = load float, ptr %263, align 4, !tbaa !34
  %268 = load float, ptr %172, align 4, !tbaa !34
  %269 = fadd float %267, %268
  store float %269, ptr %172, align 4, !tbaa !34
  %270 = getelementptr inbounds float, ptr %263, i64 1
  %271 = load float, ptr %270, align 4, !tbaa !34
  %272 = getelementptr inbounds float, ptr %172, i64 1
  %273 = load float, ptr %272, align 4, !tbaa !34
  %274 = fadd float %271, %273
  store float %274, ptr %272, align 4, !tbaa !34
  %275 = getelementptr inbounds float, ptr %263, i64 2
  %276 = load float, ptr %275, align 4, !tbaa !34
  %277 = getelementptr inbounds float, ptr %172, i64 2
  %278 = load float, ptr %277, align 4, !tbaa !34
  %279 = fadd float %276, %278
  store float %279, ptr %277, align 4, !tbaa !34
  %280 = getelementptr inbounds float, ptr %172, i64 3
  store float 1.000000e+00, ptr %280, align 4, !tbaa !34
  %281 = add nsw i32 %229, 1
  br label %282

282:                                              ; preds = %246, %241, %234
  %283 = phi i32 [ %229, %241 ], [ %281, %246 ], [ %229, %234 ]
  %284 = getelementptr inbounds i32, ptr %175, i64 1
  %285 = getelementptr inbounds i32, ptr %174, i64 1
  %286 = getelementptr inbounds i32, ptr %176, i64 1
  br label %287

287:                                              ; preds = %228, %282
  %288 = phi i32 [ %283, %282 ], [ %229, %228 ]
  %289 = phi ptr [ %286, %282 ], [ %176, %228 ]
  %290 = phi ptr [ %284, %282 ], [ %175, %228 ]
  %291 = phi ptr [ %285, %282 ], [ null, %228 ]
  %292 = add nsw i32 %173, 1
  %293 = getelementptr inbounds float, ptr %172, i64 4
  %294 = load i32, ptr %151, align 4, !tbaa !105
  %295 = icmp slt i32 %292, %294
  br i1 %295, label %171, label %296, !llvm.loop !255

296:                                              ; preds = %287, %154
  %297 = phi i32 [ %164, %154 ], [ %288, %287 ]
  %298 = phi i32 [ %163, %154 ], [ %184, %287 ]
  %299 = phi ptr [ %162, %154 ], [ %230, %287 ]
  %300 = phi ptr [ %161, %154 ], [ %231, %287 ]
  %301 = phi ptr [ %160, %154 ], [ %232, %287 ]
  %302 = phi ptr [ %159, %154 ], [ %289, %287 ]
  %303 = phi ptr [ %158, %154 ], [ %290, %287 ]
  %304 = phi ptr [ %157, %154 ], [ %291, %287 ]
  %305 = phi ptr [ %155, %154 ], [ %293, %287 ]
  %306 = and i32 %156, 1
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %313, label %308

308:                                              ; preds = %296
  %309 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !93
  %310 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !94
  %311 = call i32 %309(ptr noundef %310) #12
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %319

313:                                              ; preds = %296, %308
  %314 = add nsw i32 %156, 1
  %315 = load volatile i32, ptr %153, align 4, !tbaa !101
  %316 = add nsw i32 %315, 1
  store volatile i32 %316, ptr %153, align 4, !tbaa !101
  %317 = load i32, ptr %139, align 4, !tbaa !103
  %318 = icmp slt i32 %314, %317
  br i1 %318, label %154, label %319, !llvm.loop !256

319:                                              ; preds = %313, %308, %135
  %320 = phi i32 [ 0, %135 ], [ %297, %308 ], [ %297, %313 ]
  %321 = icmp sgt i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %319
  call void @sss_add_points(ptr noundef nonnull @R, ptr noundef %121, ptr noundef %126, ptr noundef %131, i32 noundef %320) #12
  br label %327

323:                                              ; preds = %319
  %324 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %324(ptr noundef %121) #12
  %325 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %325(ptr noundef %126) #12
  %326 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %326(ptr noundef %131) #12
  br label %327

327:                                              ; preds = %323, %322
  br i1 %9, label %328, label %333

328:                                              ; preds = %327
  %329 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 13, i32 3
  store volatile i32 0, ptr %329, align 4, !tbaa !101
  %330 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 13, i32 2
  store volatile i32 0, ptr %330, align 8, !tbaa !99
  %331 = call ptr @render_get_active_layer(ptr noundef nonnull @R, ptr noundef %5) #12
  %332 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 14
  store ptr %331, ptr %332, align 8, !tbaa !102
  br label %333

333:                                              ; preds = %327, %328, %102
  %334 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %335 = load ptr, ptr %39, align 8, !tbaa !80
  call void %334(ptr noundef %335) #12
  store ptr null, ptr %39, align 8, !tbaa !80
  %336 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %337 = load ptr, ptr %30, align 8, !tbaa !79
  call void %336(ptr noundef %337) #12
  store ptr null, ptr %30, align 8, !tbaa !79
  %338 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %339 = load ptr, ptr %21, align 8, !tbaa !78
  call void %338(ptr noundef %339) #12
  store ptr null, ptr %21, align 8, !tbaa !78
  %340 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %341 = load ptr, ptr %66, align 8, !tbaa !244
  call void %340(ptr noundef %341) #12
  store ptr null, ptr %66, align 8, !tbaa !244
  %342 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %343 = load ptr, ptr %57, align 8, !tbaa !243
  call void %342(ptr noundef %343) #12
  store ptr null, ptr %57, align 8, !tbaa !243
  %344 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %345 = load ptr, ptr %48, align 8, !tbaa !242
  call void %344(ptr noundef %345) #12
  store ptr null, ptr %48, align 8, !tbaa !242
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 27080, ptr nonnull %2) #12
  ret void
}

declare void @zbuffer_sss(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @addps_sss(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #5 {
  %7 = load ptr, ptr %0, align 8, !tbaa !239
  %8 = getelementptr inbounds %struct.RenderPart, ptr %7, i64 0, i32 17
  %9 = load i16, ptr %8, align 4, !tbaa !98
  %10 = sext i16 %9 to i32
  %11 = icmp sgt i32 %10, %3
  br i1 %11, label %96, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.RenderPart, ptr %7, i64 0, i32 14
  %14 = load i32, ptr %13, align 8, !tbaa !76
  %15 = sub nsw i32 %14, %10
  %16 = icmp sle i32 %15, %3
  %17 = icmp sgt i32 %10, %4
  %18 = or i1 %17, %16
  br i1 %18, label %96, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.RenderPart, ptr %7, i64 0, i32 15
  %21 = load i32, ptr %20, align 4, !tbaa !77
  %22 = sub nsw i32 %21, %10
  %23 = icmp sgt i32 %22, %4
  br i1 %23, label %24, label %96

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.RenderPart, ptr %7, i64 0, i32 12
  %26 = load ptr, ptr %25, align 8, !tbaa !257
  %27 = icmp eq ptr %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = mul nsw i32 %14, %4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, ptr %26, i64 %30
  %32 = sext i32 %3 to i64
  %33 = getelementptr inbounds i64, ptr %31, i64 %32
  %34 = getelementptr inbounds %struct.ZBufSSSHandle, ptr %0, i64 0, i32 1
  tail call fastcc void @addps(ptr noundef nonnull %34, ptr noundef nonnull %33, i32 noundef %1, i32 noundef %2, i32 noundef %5, i32 noundef 0, i16 noundef zeroext 0)
  %35 = getelementptr inbounds %struct.ZBufSSSHandle, ptr %0, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !241
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %35, align 8, !tbaa !241
  br label %38

38:                                               ; preds = %28, %24
  %39 = getelementptr inbounds %struct.RenderPart, ptr %7, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !80
  %41 = icmp eq ptr %40, null
  br i1 %41, label %67, label %42

42:                                               ; preds = %38
  %43 = load i32, ptr %13, align 8, !tbaa !76
  %44 = mul nsw i32 %43, %4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, ptr %40, i64 %45
  %47 = sext i32 %3 to i64
  %48 = getelementptr inbounds i32, ptr %46, i64 %47
  %49 = getelementptr inbounds %struct.RenderPart, ptr %7, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !79
  %51 = getelementptr inbounds i32, ptr %50, i64 %45
  %52 = getelementptr inbounds i32, ptr %51, i64 %47
  %53 = getelementptr inbounds %struct.RenderPart, ptr %7, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !78
  %55 = getelementptr inbounds i32, ptr %54, i64 %45
  %56 = getelementptr inbounds i32, ptr %55, i64 %47
  %57 = load i32, ptr %48, align 4, !tbaa !166
  %58 = icmp sgt i32 %57, %5
  br i1 %58, label %59, label %67

59:                                               ; preds = %42
  %60 = load i32, ptr %52, align 4, !tbaa !166
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.ZBufSSSHandle, ptr %0, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !241
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %63, align 8, !tbaa !241
  br label %66

66:                                               ; preds = %62, %59
  store i32 %5, ptr %48, align 4, !tbaa !166
  store i32 %2, ptr %52, align 4, !tbaa !166
  store i32 %1, ptr %56, align 4, !tbaa !166
  br label %67

67:                                               ; preds = %42, %66, %38
  %68 = getelementptr inbounds %struct.RenderPart, ptr %7, i64 0, i32 11
  %69 = load ptr, ptr %68, align 8, !tbaa !244
  %70 = icmp eq ptr %69, null
  br i1 %70, label %96, label %71

71:                                               ; preds = %67
  %72 = load i32, ptr %13, align 8, !tbaa !76
  %73 = mul nsw i32 %72, %4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %69, i64 %74
  %76 = sext i32 %3 to i64
  %77 = getelementptr inbounds i32, ptr %75, i64 %76
  %78 = getelementptr inbounds %struct.RenderPart, ptr %7, i64 0, i32 10
  %79 = load ptr, ptr %78, align 8, !tbaa !243
  %80 = getelementptr inbounds i32, ptr %79, i64 %74
  %81 = getelementptr inbounds i32, ptr %80, i64 %76
  %82 = getelementptr inbounds %struct.RenderPart, ptr %7, i64 0, i32 9
  %83 = load ptr, ptr %82, align 8, !tbaa !242
  %84 = getelementptr inbounds i32, ptr %83, i64 %74
  %85 = getelementptr inbounds i32, ptr %84, i64 %76
  %86 = load i32, ptr %77, align 4, !tbaa !166
  %87 = icmp sgt i32 %86, %5
  br i1 %87, label %96, label %88

88:                                               ; preds = %71
  %89 = load i32, ptr %81, align 4, !tbaa !166
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.ZBufSSSHandle, ptr %0, i64 0, i32 2
  %93 = load i32, ptr %92, align 8, !tbaa !241
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr %92, align 8, !tbaa !241
  br label %95

95:                                               ; preds = %91, %88
  store i32 %5, ptr %77, align 4, !tbaa !166
  store i32 %2, ptr %81, align 4, !tbaa !166
  store i32 %1, ptr %85, align 4, !tbaa !166
  br label %96

96:                                               ; preds = %67, %95, %71, %19, %6, %12
  ret void
}

declare ptr @RE_findOrAddVlak(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @shade_sample_sss(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, float noundef %5, float noundef %6, float noundef %7, ptr nocapture noundef writeonly %8, ptr nocapture noundef writeonly %9, ptr nocapture noundef %10) unnamed_addr #5 {
  %12 = alloca %struct.ShadeResult, align 4
  %13 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 212, ptr nonnull %12) #12
  %14 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 114
  %15 = load i16, ptr %14, align 2, !tbaa !258
  %16 = sext i16 %15 to i64
  %17 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 42, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !166
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 4, !tbaa !166
  %20 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 107
  store i32 %18, ptr %20, align 4, !tbaa !259
  %21 = icmp eq i32 %4, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %11
  tail call void @shade_input_set_triangle_i(ptr noundef nonnull %13, ptr noundef %2, ptr noundef %3, i16 noundef signext 0, i16 noundef signext 2, i16 noundef signext 3) #12
  br label %24

23:                                               ; preds = %11
  tail call void @shade_input_set_triangle_i(ptr noundef nonnull %13, ptr noundef %2, ptr noundef %3, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 2) #12
  br label %24

24:                                               ; preds = %23, %22
  %25 = fadd float %5, 5.000000e-01
  %26 = fadd float %6, 5.000000e-01
  %27 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 15
  store i16 1, ptr %27, align 8, !tbaa !260
  %28 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 6
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 6, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 6, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 36), align 8
  %35 = fcmp olt float %34, 0.000000e+00
  %36 = fneg float %34
  %37 = select i1 %35, float %34, float %36
  %38 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 6, i64 2
  store float %37, ptr %38, align 4, !tbaa !34
  %39 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %24
  %43 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 6, i64 1
  store float 0.000000e+00, ptr %43, align 4, !tbaa !34
  store float 0.000000e+00, ptr %28, align 4, !tbaa !34
  br label %77

44:                                               ; preds = %24
  %45 = and i32 %39, 1024
  %46 = icmp eq i32 %45, 0
  %47 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 28), align 8
  %48 = select i1 %46, float 0.000000e+00, float %47
  %49 = fsub float %25, %48
  %50 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !57
  %51 = sitofp i32 %50 to float
  %52 = fdiv float %49, %51
  %53 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 16), align 4, !tbaa !58
  %54 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 16, i32 1), align 8, !tbaa !59
  %55 = fsub float %54, %53
  %56 = tail call float @llvm.fmuladd.f32(float %52, float %55, float %53)
  store float %56, ptr %28, align 4, !tbaa !34
  %57 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !60
  %58 = sitofp i32 %57 to float
  %59 = fdiv float %26, %58
  %60 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 16, i32 2), align 4, !tbaa !61
  %61 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 16, i32 3), align 8, !tbaa !62
  %62 = fsub float %61, %60
  %63 = tail call float @llvm.fmuladd.f32(float %59, float %62, float %60)
  %64 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 6, i64 1
  store float %63, ptr %64, align 4, !tbaa !34
  br i1 %46, label %77, label %65

65:                                               ; preds = %44
  %66 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 29), align 4, !tbaa !63
  %67 = fadd float %56, %66
  %68 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 27), align 4, !tbaa !64
  %69 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 26), align 8, !tbaa !65
  %70 = fmul float %37, %69
  %71 = tail call float @llvm.fmuladd.f32(float %68, float %67, float %70)
  store float %71, ptr %28, align 4, !tbaa !34
  %72 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 26), align 8, !tbaa !65
  %73 = fneg float %72
  %74 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 27), align 4, !tbaa !64
  %75 = fmul float %37, %74
  %76 = tail call float @llvm.fmuladd.f32(float %73, float %67, float %75)
  store float %76, ptr %38, align 4, !tbaa !34
  br label %77

77:                                               ; preds = %42, %44, %65
  %78 = load float, ptr %28, align 4, !tbaa !34
  %79 = load float, ptr %30, align 4, !tbaa !34
  %80 = fmul float %79, %79
  %81 = tail call float @llvm.fmuladd.f32(float %78, float %78, float %80)
  %82 = load float, ptr %32, align 4, !tbaa !34
  %83 = tail call float @llvm.fmuladd.f32(float %82, float %82, float %81)
  %84 = fcmp ogt float %83, 0x38AA95A5C0000000
  br i1 %84, label %85, label %94

85:                                               ; preds = %77
  %86 = tail call float @sqrtf(float noundef %83) #12
  %87 = fdiv float 1.000000e+00, %86
  %88 = load float, ptr %28, align 4, !tbaa !34
  %89 = fmul float %88, %87
  store float %89, ptr %28, align 4, !tbaa !34
  %90 = load float, ptr %30, align 4, !tbaa !34
  %91 = fmul float %87, %90
  store float %91, ptr %30, align 4, !tbaa !34
  %92 = load float, ptr %32, align 4, !tbaa !34
  %93 = fmul float %87, %92
  br label %95

94:                                               ; preds = %77
  store float 0.000000e+00, ptr %28, align 4, !tbaa !34
  store float 0.000000e+00, ptr %30, align 4, !tbaa !34
  br label %95

95:                                               ; preds = %85, %94
  %96 = phi float [ 0.000000e+00, %94 ], [ %93, %85 ]
  store float %96, ptr %32, align 4, !tbaa !34
  tail call void @shade_input_set_viewco(ptr noundef nonnull %13, float noundef %5, float noundef %6, float noundef %25, float noundef %26, float noundef %7) #12
  %97 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 78
  %98 = load float, ptr %97, align 4, !tbaa !34
  %99 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 78, i64 1
  %100 = load float, ptr %99, align 4, !tbaa !34
  %101 = fmul float %100, %100
  %102 = tail call float @llvm.fmuladd.f32(float %98, float %98, float %101)
  %103 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 78, i64 2
  %104 = load float, ptr %103, align 4, !tbaa !34
  %105 = tail call float @llvm.fmuladd.f32(float %104, float %104, float %102)
  %106 = tail call float @sqrtf(float noundef %105) #12
  %107 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 79
  %108 = load float, ptr %107, align 4, !tbaa !34
  %109 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 79, i64 1
  %110 = load float, ptr %109, align 4, !tbaa !34
  %111 = fmul float %110, %110
  %112 = tail call float @llvm.fmuladd.f32(float %108, float %108, float %111)
  %113 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 79, i64 2
  %114 = load float, ptr %113, align 4, !tbaa !34
  %115 = tail call float @llvm.fmuladd.f32(float %114, float %114, float %112)
  %116 = tail call float @sqrtf(float noundef %115) #12
  %117 = fmul float %106, %116
  store float %29, ptr %28, align 4, !tbaa !34
  store float %31, ptr %30, align 4, !tbaa !34
  store float %33, ptr %32, align 4, !tbaa !34
  tail call void @shade_input_set_viewco(ptr noundef nonnull %13, float noundef %5, float noundef %6, float noundef %25, float noundef %26, float noundef %7) #12
  %118 = load float, ptr %97, align 4, !tbaa !34
  %119 = load float, ptr %99, align 4, !tbaa !34
  %120 = fmul float %119, %119
  %121 = tail call float @llvm.fmuladd.f32(float %118, float %118, float %120)
  %122 = load float, ptr %103, align 4, !tbaa !34
  %123 = tail call float @llvm.fmuladd.f32(float %122, float %122, float %121)
  %124 = tail call float @sqrtf(float noundef %123) #12
  %125 = load float, ptr %107, align 4, !tbaa !34
  %126 = load float, ptr %109, align 4, !tbaa !34
  %127 = fmul float %126, %126
  %128 = tail call float @llvm.fmuladd.f32(float %125, float %125, float %127)
  %129 = load float, ptr %113, align 4, !tbaa !34
  %130 = tail call float @llvm.fmuladd.f32(float %129, float %129, float %128)
  %131 = tail call float @sqrtf(float noundef %130) #12
  %132 = fmul float %124, %131
  %133 = fmul float %117, 2.000000e+00
  %134 = fcmp olt float %132, %133
  %135 = select i1 %134, float %132, float %133
  store float %135, ptr %10, align 4, !tbaa !34
  tail call void @shade_input_set_uv(ptr noundef nonnull %13) #12
  tail call void @shade_input_set_normals(ptr noundef nonnull %13) #12
  %136 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 7
  %137 = load i16, ptr %136, align 8, !tbaa !261
  %138 = icmp eq i16 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %95
  tail call void @shade_input_flip_normals(ptr noundef nonnull %13) #12
  br label %140

140:                                              ; preds = %139, %95
  %141 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 4
  %142 = load ptr, ptr %141, align 8, !tbaa !124
  %143 = getelementptr inbounds %struct.ObjectRen, ptr %142, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !125
  %145 = icmp eq ptr %144, null
  br i1 %145, label %179, label %146

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.Object, ptr %144, i64 0, i32 55
  %148 = load i16, ptr %147, align 8, !tbaa !262
  %149 = and i16 %148, 4
  %150 = icmp eq i16 %149, 0
  br i1 %150, label %179, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 16
  %153 = load float, ptr %152, align 4, !tbaa !34
  %154 = fneg float %153
  store float %154, ptr %152, align 4, !tbaa !34
  %155 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 16, i64 1
  %156 = load float, ptr %155, align 4, !tbaa !34
  %157 = fneg float %156
  store float %157, ptr %155, align 4, !tbaa !34
  %158 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 16, i64 2
  %159 = load float, ptr %158, align 4, !tbaa !34
  %160 = fneg float %159
  store float %160, ptr %158, align 4, !tbaa !34
  %161 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 17
  %162 = load float, ptr %161, align 4, !tbaa !34
  %163 = fneg float %162
  store float %163, ptr %161, align 4, !tbaa !34
  %164 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 17, i64 1
  %165 = load float, ptr %164, align 4, !tbaa !34
  %166 = fneg float %165
  store float %166, ptr %164, align 4, !tbaa !34
  %167 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 17, i64 2
  %168 = load float, ptr %167, align 4, !tbaa !34
  %169 = fneg float %168
  store float %169, ptr %167, align 4, !tbaa !34
  %170 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 66
  %171 = load float, ptr %170, align 4, !tbaa !34
  %172 = fneg float %171
  store float %172, ptr %170, align 4, !tbaa !34
  %173 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 66, i64 1
  %174 = load float, ptr %173, align 4, !tbaa !34
  %175 = fneg float %174
  store float %175, ptr %173, align 4, !tbaa !34
  %176 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 66, i64 2
  %177 = load float, ptr %176, align 4, !tbaa !34
  %178 = fneg float %177
  store float %178, ptr %176, align 4, !tbaa !34
  br label %179

179:                                              ; preds = %151, %146, %140
  %180 = load ptr, ptr %13, align 8, !tbaa !130
  %181 = getelementptr inbounds %struct.Material, ptr %180, i64 0, i32 103
  %182 = load ptr, ptr %181, align 8, !tbaa !263
  %183 = icmp eq ptr %182, null
  br i1 %183, label %189, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.Material, ptr %180, i64 0, i32 77
  %186 = load i8, ptr %185, align 1, !tbaa !264
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %184
  store ptr %1, ptr %13, align 8, !tbaa !130
  br label %189

189:                                              ; preds = %188, %184, %179
  tail call void @shade_input_init_material(ptr noundef nonnull %13) #12
  tail call void @shade_input_set_shade_texco(ptr noundef nonnull %13) #12
  tail call void @shade_samples_do_AO(ptr noundef %0) #12
  call void @shade_material_loop(ptr noundef nonnull %13, ptr noundef nonnull %12) #12
  %190 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 29
  %191 = load float, ptr %190, align 4, !tbaa !34
  store float %191, ptr %8, align 4, !tbaa !34
  %192 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 29, i64 1
  %193 = load float, ptr %192, align 4, !tbaa !34
  %194 = getelementptr inbounds float, ptr %8, i64 1
  store float %193, ptr %194, align 4, !tbaa !34
  %195 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 29, i64 2
  %196 = load float, ptr %195, align 4, !tbaa !34
  %197 = getelementptr inbounds float, ptr %8, i64 2
  store float %196, ptr %197, align 4, !tbaa !34
  %198 = load float, ptr %12, align 4, !tbaa !34
  store float %198, ptr %9, align 4, !tbaa !34
  %199 = getelementptr inbounds float, ptr %12, i64 1
  %200 = load float, ptr %199, align 4, !tbaa !34
  %201 = getelementptr inbounds float, ptr %9, i64 1
  store float %200, ptr %201, align 4, !tbaa !34
  %202 = getelementptr inbounds float, ptr %12, i64 2
  %203 = load float, ptr %202, align 4, !tbaa !34
  %204 = getelementptr inbounds float, ptr %9, i64 2
  store float %203, ptr %204, align 4, !tbaa !34
  %205 = getelementptr inbounds [4 x float], ptr %12, i64 0, i64 3
  %206 = load float, ptr %205, align 4, !tbaa !34
  %207 = load float, ptr %10, align 4, !tbaa !34
  %208 = fmul float %206, %207
  store float %208, ptr %10, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 212, ptr nonnull %12) #12
  ret void
}

declare void @sss_add_points(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @add_halo_flare(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = alloca %struct.HaloRen, align 8
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !265
  %5 = getelementptr inbounds %struct.RenderResult, ptr %4, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = icmp eq ptr %6, null
  br i1 %7, label %227, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 25
  %10 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 23
  %11 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 22
  %12 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 15
  %13 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 14
  %14 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 13
  %15 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 12
  %16 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 2
  %17 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 11
  %18 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 21
  %19 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 5
  %20 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 6
  %21 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 3
  %22 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 4
  %23 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 19
  %24 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 19
  %25 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 19
  %26 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 19
  %27 = getelementptr inbounds %struct.RenderResult, ptr %4, i64 0, i32 14
  %28 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  %29 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 87
  br label %30

30:                                               ; preds = %8, %224
  %31 = phi ptr [ %6, %8 ], [ %225, %224 ]
  %32 = getelementptr inbounds %struct.RenderLayer, ptr %31, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !81
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %224, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.RenderLayer, ptr %31, i64 0, i32 11
  %38 = load ptr, ptr %37, align 8, !tbaa !115
  %39 = icmp eq ptr %38, null
  br i1 %39, label %224, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %42 = and i32 %41, -1025
  store i32 %42, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  call void @project_renderdata(ptr noundef nonnull @R, ptr noundef nonnull @projectverto, i8 noundef zeroext 0, float noundef 0.000000e+00, i8 noundef zeroext 0) #12
  %43 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 62), align 8, !tbaa !179
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %217

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.RenderLayer, ptr %31, i64 0, i32 3
  br label %47

47:                                               ; preds = %45, %211
  %48 = phi i64 [ 0, %45 ], [ %213, %211 ]
  %49 = phi i8 [ 0, %45 ], [ %212, %211 ]
  %50 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 65), align 8, !tbaa !181
  %51 = getelementptr inbounds ptr, ptr %50, i64 %48
  %52 = load ptr, ptr %51, align 8, !tbaa !72
  %53 = getelementptr inbounds %struct.HaloRen, ptr %52, i64 0, i32 25
  %54 = load i16, ptr %53, align 4, !tbaa !191
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %211, label %56

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.HaloRen, ptr %52, i64 0, i32 28
  %58 = load i32, ptr %57, align 8, !tbaa !182
  %59 = load i32, ptr %46, align 4, !tbaa !178
  %60 = and i32 %59, %58
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %211, label %62

62:                                               ; preds = %56
  %63 = load ptr, ptr %37, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(128) %52, i64 128, i1 false), !tbaa.struct !266
  store i16 0, ptr %9, align 4, !tbaa !191
  store i8 0, ptr %10, align 1, !tbaa !267
  store i8 0, ptr %11, align 8, !tbaa !268
  %64 = getelementptr inbounds %struct.HaloRen, ptr %52, i64 0, i32 5
  %65 = load float, ptr %64, align 8, !tbaa !187
  %66 = getelementptr inbounds %struct.HaloRen, ptr %52, i64 0, i32 2
  %67 = load float, ptr %66, align 4, !tbaa !269
  %68 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 24), align 8, !tbaa !189
  %69 = getelementptr inbounds %struct.HaloRen, ptr %52, i64 0, i32 27
  %70 = load i32, ptr %69, align 4, !tbaa !270
  %71 = sitofp i32 %70 to float
  %72 = fmul float %68, %71
  %73 = fmul float %65, %65
  %74 = fmul float %65, %73
  %75 = fdiv float %72, %74
  %76 = fmul float %75, %75
  %77 = getelementptr inbounds %struct.HaloRen, ptr %52, i64 0, i32 29
  %78 = load ptr, ptr %77, align 8, !tbaa !194
  %79 = getelementptr inbounds %struct.Material, ptr %78, i64 0, i32 60
  %80 = load float, ptr %79, align 8, !tbaa !271
  %81 = fmul float %65, %80
  %82 = fmul float %81, %76
  store float %82, ptr %64, align 8, !tbaa !187
  %83 = fmul float %82, %82
  %84 = getelementptr inbounds %struct.HaloRen, ptr %52, i64 0, i32 6
  store float %83, ptr %84, align 4, !tbaa !190
  store i32 0, ptr %12, align 8, !tbaa !193
  %85 = getelementptr inbounds %struct.HaloRen, ptr %52, i64 0, i32 15
  store i32 0, ptr %85, align 8, !tbaa !193
  %86 = fmul float %67, %76
  store float %86, ptr %66, align 4, !tbaa !269
  call fastcc void @renderhalo_post(ptr noundef %4, ptr noundef %63, ptr noundef %52)
  %87 = load i16, ptr %53, align 4, !tbaa !191
  %88 = icmp sgt i16 %87, 1
  br i1 %88, label %89, label %210

89:                                               ; preds = %62
  %90 = getelementptr inbounds %struct.Material, ptr %78, i64 0, i32 40
  %91 = load i8, ptr %90, align 1, !tbaa !272
  %92 = zext i8 %91 to i64
  %93 = getelementptr inbounds float, ptr @hashvectf, i64 %92
  %94 = getelementptr inbounds %struct.Material, ptr %78, i64 0, i32 62
  %95 = getelementptr inbounds %struct.Material, ptr %78, i64 0, i32 61
  %96 = getelementptr inbounds %struct.HaloRen, ptr %52, i64 0, i32 3
  %97 = getelementptr inbounds %struct.HaloRen, ptr %52, i64 0, i32 4
  br label %98

98:                                               ; preds = %89, %205
  %99 = phi ptr [ %93, %89 ], [ %115, %205 ]
  %100 = phi i32 [ 1, %89 ], [ %206, %205 ]
  %101 = load float, ptr %99, align 4, !tbaa !34
  %102 = call float @llvm.fabs.f32(float %101)
  store float %102, ptr %13, align 4, !tbaa !273
  %103 = getelementptr inbounds float, ptr %99, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !34
  %105 = call float @llvm.fabs.f32(float %104)
  store float %105, ptr %14, align 8, !tbaa !274
  %106 = getelementptr inbounds float, ptr %99, i64 2
  %107 = load float, ptr %106, align 4, !tbaa !34
  %108 = call float @llvm.fabs.f32(float %107)
  store float %108, ptr %15, align 4, !tbaa !275
  %109 = load float, ptr %94, align 8, !tbaa !276
  %110 = getelementptr inbounds float, ptr %99, i64 3
  %111 = load float, ptr %110, align 4, !tbaa !34
  %112 = fmul float %86, %111
  %113 = call float @llvm.fabs.f32(float %112)
  %114 = fmul float %109, %113
  store float %114, ptr %16, align 4, !tbaa !269
  %115 = getelementptr inbounds float, ptr %99, i64 7
  %116 = load float, ptr %115, align 4, !tbaa !34
  %117 = fmul float %116, 7.000000e+01
  %118 = call float @llvm.fabs.f32(float %117)
  %119 = fadd float %118, 2.000000e+01
  store float %119, ptr %17, align 8, !tbaa !277
  store i8 0, ptr %18, align 1, !tbaa !278
  %120 = getelementptr inbounds float, ptr %99, i64 6
  %121 = load float, ptr %120, align 4, !tbaa !34
  %122 = fmul float %121, 0x400F333340000000
  %123 = call float @llvm.fabs.f32(float %122)
  %124 = fptosi float %123 to i32
  %125 = load float, ptr %95, align 4, !tbaa !279
  %126 = load float, ptr %64, align 8, !tbaa !187
  %127 = fmul float %126, 2.000000e+00
  %128 = getelementptr inbounds float, ptr %99, i64 4
  %129 = load float, ptr %128, align 4, !tbaa !34
  %130 = fmul float %127, %129
  %131 = call float @llvm.fabs.f32(float %130)
  %132 = call float @sqrtf(float noundef %131) #12
  %133 = fmul float %125, %132
  store float %133, ptr %19, align 8, !tbaa !187
  %134 = icmp eq i32 %124, 3
  br i1 %134, label %135, label %141

135:                                              ; preds = %98
  %136 = fmul float %133, 3.000000e+00
  store float %136, ptr %19, align 8, !tbaa !187
  %137 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 20), align 8, !tbaa !280
  %138 = sdiv i32 %137, 10
  %139 = sitofp i32 %138 to float
  %140 = fadd float %136, %139
  store float %140, ptr %19, align 8, !tbaa !187
  br label %141

141:                                              ; preds = %135, %98
  %142 = load float, ptr %19, align 8, !tbaa !187
  %143 = fmul float %142, %142
  store float %143, ptr %20, align 4, !tbaa !190
  %144 = getelementptr inbounds float, ptr %99, i64 5
  %145 = load float, ptr %144, align 4, !tbaa !34
  %146 = fmul float %145, 0x3FF6666660000000
  %147 = load float, ptr %96, align 8, !tbaa !186
  %148 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !57
  %149 = sdiv i32 %148, 2
  %150 = sitofp i32 %149 to float
  %151 = fsub float %147, %150
  %152 = fmul float %146, %151
  %153 = load float, ptr %97, align 4, !tbaa !188
  %154 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !60
  %155 = sdiv i32 %154, 2
  %156 = sitofp i32 %155 to float
  %157 = fsub float %153, %156
  %158 = fmul float %146, %157
  %159 = fmul float %158, %158
  %160 = call float @llvm.fmuladd.f32(float %152, float %152, float %159)
  %161 = fadd float %160, 1.000000e+00
  %162 = call float @sqrtf(float noundef %161) #12
  %163 = fmul float %162, 3.200000e+01
  %164 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !57
  %165 = sdiv i32 %164, 2
  %166 = sitofp i32 %165 to float
  %167 = fadd float %152, %166
  %168 = getelementptr inbounds float, ptr %99, i64 8
  %169 = load float, ptr %168, align 4, !tbaa !34
  %170 = fadd float %169, 0x3FF3333340000000
  %171 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 20), align 8, !tbaa !280
  %172 = sitofp i32 %171 to float
  %173 = fmul float %170, %172
  %174 = fmul float %152, %173
  %175 = fdiv float %174, %163
  %176 = fadd float %167, %175
  store float %176, ptr %21, align 8, !tbaa !186
  %177 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !60
  %178 = sdiv i32 %177, 2
  %179 = sitofp i32 %178 to float
  %180 = fadd float %158, %179
  %181 = fmul float %158, %173
  %182 = fdiv float %181, %163
  %183 = fadd float %182, %180
  store float %183, ptr %22, align 4, !tbaa !188
  %184 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !139
  %185 = and i16 %184, 4
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %193, label %187

187:                                              ; preds = %141
  %188 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %189 = and i32 %188, 8192
  %190 = icmp eq i32 %189, 0
  %191 = select i1 %190, float -5.000000e-01, float 5.000000e-01
  %192 = fadd float %183, %191
  store float %192, ptr %22, align 4, !tbaa !188
  br label %193

193:                                              ; preds = %187, %141
  %194 = and i32 %124, 1
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  store i8 8, ptr %23, align 1, !tbaa !192
  br label %198

197:                                              ; preds = %193
  store i8 0, ptr %24, align 1, !tbaa !192
  br label %198

198:                                              ; preds = %197, %196
  call fastcc void @renderhalo_post(ptr noundef %4, ptr noundef %63, ptr noundef nonnull %2)
  %199 = load float, ptr %16, align 4, !tbaa !269
  %200 = fmul float %199, 5.000000e-01
  store float %200, ptr %16, align 4, !tbaa !269
  %201 = and i32 %124, 2
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %198
  store i8 8, ptr %25, align 1, !tbaa !192
  br label %205

204:                                              ; preds = %198
  store i8 0, ptr %26, align 1, !tbaa !192
  br label %205

205:                                              ; preds = %204, %203
  call fastcc void @renderhalo_post(ptr noundef %4, ptr noundef %63, ptr noundef nonnull %2)
  %206 = add nuw nsw i32 %100, 1
  %207 = load i16, ptr %53, align 4, !tbaa !191
  %208 = sext i16 %207 to i32
  %209 = icmp slt i32 %206, %208
  br i1 %209, label %98, label %210, !llvm.loop !281

210:                                              ; preds = %205, %62
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #12
  br label %211

211:                                              ; preds = %47, %56, %210
  %212 = phi i8 [ 1, %210 ], [ %49, %56 ], [ %49, %47 ]
  %213 = add nuw nsw i64 %48, 1
  %214 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 62), align 8, !tbaa !179
  %215 = sext i32 %214 to i64
  %216 = icmp slt i64 %213, %215
  br i1 %216, label %47, label %217, !llvm.loop !282

217:                                              ; preds = %211, %40
  %218 = phi i8 [ 0, %40 ], [ %212, %211 ]
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %217
  store ptr %31, ptr %27, align 8, !tbaa !102
  %221 = load ptr, ptr %28, align 8, !tbaa !283
  %222 = load ptr, ptr %29, align 8, !tbaa !284
  call void %221(ptr noundef %222, ptr noundef %4, ptr noundef null) #12
  br label %223

223:                                              ; preds = %220, %217
  store i32 %41, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  br label %224

224:                                              ; preds = %36, %30, %223
  %225 = load ptr, ptr %31, align 8, !tbaa !72
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %30, !llvm.loop !285

227:                                              ; preds = %224, %1
  ret void
}

declare void @project_renderdata(ptr noundef, ptr noundef, i8 noundef zeroext, float noundef, i8 noundef zeroext) local_unnamed_addr #6

declare void @projectverto(ptr noundef, ptr noundef, ptr noundef) #6

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @addps(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef zeroext %6) unnamed_addr #5 {
  %8 = load i64, ptr %1, align 8, !tbaa !107
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %7
  %11 = inttoptr i64 %8 to ptr
  br label %12

12:                                               ; preds = %10, %25
  %13 = phi ptr [ %11, %10 ], [ %26, %25 ]
  %14 = getelementptr inbounds %struct.PixStr, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !222
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.PixStr, ptr %13, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !223
  %20 = icmp eq i32 %19, %3
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.PixStr, ptr %13, i64 0, i32 5
  %23 = load i16, ptr %22, align 8, !tbaa !141
  %24 = or i16 %23, %6
  store i16 %24, ptr %22, align 8, !tbaa !141
  br label %62

25:                                               ; preds = %17, %12
  %26 = load ptr, ptr %13, align 8, !tbaa !144
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %12, !llvm.loop !286

28:                                               ; preds = %25, %7
  %29 = phi ptr [ null, %7 ], [ %13, %25 ]
  %30 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !287
  %32 = getelementptr inbounds %struct.PixStrMain, ptr %31, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !86
  %34 = icmp eq i32 %33, 4095
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %37 = tail call ptr %36(i64 noundef 32, ptr noundef nonnull @.str.13) #12
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %37) #12
  %38 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %39 = tail call ptr %38(i64 noundef 131072, ptr noundef nonnull @.str.14) #12
  %40 = getelementptr inbounds %struct.PixStrMain, ptr %37, i64 0, i32 2
  store ptr %39, ptr %40, align 8, !tbaa !84
  %41 = getelementptr inbounds %struct.PixStrMain, ptr %37, i64 0, i32 3
  store i32 0, ptr %41, align 8, !tbaa !86
  br label %42

42:                                               ; preds = %35, %28
  %43 = phi ptr [ %37, %35 ], [ %31, %28 ]
  %44 = getelementptr inbounds %struct.PixStrMain, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !84
  %46 = getelementptr inbounds %struct.PixStrMain, ptr %43, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !86
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %46, align 8, !tbaa !86
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds %struct.PixStr, ptr %45, i64 %49
  %51 = icmp eq ptr %29, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %42
  store ptr %50, ptr %29, align 8, !tbaa !144
  br label %55

53:                                               ; preds = %42
  %54 = ptrtoint ptr %50 to i64
  store i64 %54, ptr %1, align 8, !tbaa !107
  br label %55

55:                                               ; preds = %53, %52
  store ptr null, ptr %50, align 8, !tbaa !144
  %56 = getelementptr inbounds %struct.PixStr, ptr %45, i64 %49, i32 1
  store i32 %2, ptr %56, align 8, !tbaa !222
  %57 = getelementptr inbounds %struct.PixStr, ptr %45, i64 %49, i32 2
  store i32 %3, ptr %57, align 4, !tbaa !223
  %58 = getelementptr inbounds %struct.PixStr, ptr %45, i64 %49, i32 3
  store i32 %4, ptr %58, align 8, !tbaa !169
  %59 = getelementptr inbounds %struct.PixStr, ptr %45, i64 %49, i32 4
  store i32 %5, ptr %59, align 4, !tbaa !288
  %60 = getelementptr inbounds %struct.PixStr, ptr %45, i64 %49, i32 5
  store i16 %6, ptr %60, align 8, !tbaa !141
  %61 = getelementptr inbounds %struct.PixStr, ptr %45, i64 %49, i32 6
  store i16 0, ptr %61, align 2, !tbaa !289
  br label %62

62:                                               ; preds = %55, %21
  ret void
}

declare void @add_filt_fmask(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @add_filt_fmask_pixsize(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @shade_input_initialize(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @renderspothalo(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare i32 @shadeHaloFloat(ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, i16 noundef signext) local_unnamed_addr #6

declare void @addalphaAddfacFloat(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

declare ptr @RE_RenderLayerGetPass(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @shadeAtmPixel(ptr noundef, ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #6

declare void @shadeSkyPixel(ptr noundef, float noundef, float noundef, i16 noundef signext) local_unnamed_addr #6

declare void @addAlphaUnderFloat(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @shade_input_set_triangle_i(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #6

declare void @shade_input_set_viewco(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #6

declare void @shade_input_set_uv(ptr noundef) local_unnamed_addr #6

declare void @shade_input_set_normals(ptr noundef) local_unnamed_addr #6

declare void @shade_input_flip_normals(ptr noundef) local_unnamed_addr #6

declare void @shade_input_init_material(ptr noundef) local_unnamed_addr #6

declare void @shade_input_set_shade_texco(ptr noundef) local_unnamed_addr #6

declare void @shade_samples_do_AO(ptr noundef) local_unnamed_addr #6

declare void @shade_material_loop(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc void @renderhalo_post(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 {
  %4 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 3
  %6 = load float, ptr %5, align 8, !tbaa !186
  %7 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 15), align 4, !tbaa !290
  %8 = sitofp i32 %7 to float
  %9 = fsub float %6, %8
  %10 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 4
  %11 = load float, ptr %10, align 4, !tbaa !188
  %12 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 15, i32 2), align 4, !tbaa !291
  %13 = sitofp i32 %12 to float
  %14 = fsub float %11, %13
  %15 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 5
  %16 = load float, ptr %15, align 8, !tbaa !187
  %17 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 24), align 8, !tbaa !189
  %18 = fdiv float %16, %17
  %19 = fsub float %14, %18
  %20 = fptosi float %19 to i32
  %21 = trunc i32 %20 to i16
  store i16 %21, ptr %2, align 8, !tbaa !185
  %22 = fadd float %14, %18
  %23 = fptosi float %22 to i32
  %24 = trunc i32 %23 to i16
  %25 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 1
  store i16 %24, ptr %25, align 2, !tbaa !184
  %26 = icmp slt i32 %23, 0
  br i1 %26, label %103, label %27

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !292
  %30 = icmp slt i32 %29, %20
  br i1 %30, label %103, label %31

31:                                               ; preds = %27
  %32 = fsub float %9, %16
  %33 = tail call float @llvm.floor.f32(float %32)
  %34 = fptosi float %33 to i32
  %35 = fadd float %9, %16
  %36 = tail call float @llvm.ceil.f32(float %35)
  %37 = fptosi float %36 to i32
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %103, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !293
  %42 = icmp slt i32 %41, %34
  br i1 %42, label %103, label %43

43:                                               ; preds = %39
  %44 = tail call i32 @llvm.smax.i32(i32 %34, i32 0)
  %45 = tail call i32 @llvm.smax.i32(i32 %20, i32 0)
  %46 = tail call i32 @llvm.smin.i32(i32 %29, i32 %23)
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %103

48:                                               ; preds = %43
  %49 = icmp sgt i32 %41, %37
  %50 = add nsw i32 %41, -1
  %51 = select i1 %49, i32 %37, i32 %50
  %52 = shl i32 %45, 2
  %53 = mul i32 %52, %41
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, ptr %1, i64 %54
  %56 = shl nsw i32 %44, 2
  %57 = zext nneg i32 %56 to i64
  %58 = icmp sgt i32 %44, %51
  %59 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 6
  %60 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 25
  %61 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 20
  br label %62

62:                                               ; preds = %48, %97
  %63 = phi i32 [ %45, %48 ], [ %101, %97 ]
  %64 = phi ptr [ %55, %48 ], [ %100, %97 ]
  %65 = sitofp i32 %63 to float
  %66 = fsub float %65, %14
  %67 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 24), align 8, !tbaa !189
  %68 = fmul float %66, %67
  %69 = fmul float %68, %68
  br i1 %58, label %91, label %70

70:                                               ; preds = %62
  %71 = getelementptr inbounds float, ptr %64, i64 %57
  br label %72

72:                                               ; preds = %70, %87
  %73 = phi i32 [ %89, %87 ], [ %44, %70 ]
  %74 = phi ptr [ %88, %87 ], [ %71, %70 ]
  %75 = sitofp i32 %73 to float
  %76 = fsub float %75, %9
  %77 = fmul float %76, %76
  %78 = fadd float %69, %77
  %79 = load float, ptr %59, align 4, !tbaa !190
  %80 = fcmp olt float %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %72
  %82 = load i16, ptr %60, align 4, !tbaa !191
  %83 = call i32 @shadeHaloFloat(ptr noundef nonnull %2, ptr noundef nonnull %4, i32 noundef 8388607, float noundef %78, float noundef %76, float noundef %68, i16 noundef signext %82) #12
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = load i8, ptr %61, align 2, !tbaa !196
  call void @addalphaAddfacFloat(ptr noundef %74, ptr noundef nonnull %4, i8 noundef zeroext %86) #12
  br label %87

87:                                               ; preds = %81, %85, %72
  %88 = getelementptr inbounds float, ptr %74, i64 4
  %89 = add nuw i32 %73, 1
  %90 = icmp eq i32 %73, %51
  br i1 %90, label %91, label %72, !llvm.loop !294

91:                                               ; preds = %87, %62
  %92 = load i32, ptr %40, align 8, !tbaa !293
  %93 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !93
  %94 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !94
  %95 = call i32 %93(ptr noundef %94) #12
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = shl nsw i32 %92, 2
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, ptr %64, i64 %99
  %101 = add nuw i32 %63, 1
  %102 = icmp eq i32 %101, %46
  br i1 %102, label %103, label %62, !llvm.loop !295

103:                                              ; preds = %97, %91, %43, %27, %39, %31, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }

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
!38 = !{!39, !41, i64 1624}
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
!57 = !{!39, !41, i64 148}
!58 = !{!45, !35, i64 0}
!59 = !{!45, !35, i64 4}
!60 = !{!39, !41, i64 152}
!61 = !{!45, !35, i64 8}
!62 = !{!45, !35, i64 12}
!63 = !{!39, !35, i64 236}
!64 = !{!39, !35, i64 228}
!65 = !{!39, !35, i64 224}
!66 = !{!39, !40, i64 552}
!67 = !{!36, !36, i64 0}
!68 = !{!69, !40, i64 24}
!69 = !{!"RenderPart", !40, i64 0, !40, i64 8, !40, i64 16, !43, i64 24, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !44, i64 112, !41, i64 128, !41, i64 132, !41, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !40, i64 152}
!70 = !{!69, !40, i64 16}
!71 = !{!39, !42, i64 98}
!72 = !{!40, !40, i64 0}
!73 = distinct !{!73, !74, !75}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = !{!69, !41, i64 128}
!77 = !{!69, !41, i64 132}
!78 = !{!69, !40, i64 40}
!79 = !{!69, !40, i64 48}
!80 = !{!69, !40, i64 56}
!81 = !{!82, !41, i64 104}
!82 = !{!"RenderLayer", !40, i64 0, !40, i64 8, !36, i64 16, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !40, i64 152, !40, i64 160, !41, i64 168, !41, i64 172, !40, i64 176, !43, i64 184}
!83 = !{!69, !40, i64 64}
!84 = !{!85, !40, i64 16}
!85 = !{!"PixStrMain", !40, i64 0, !40, i64 8, !40, i64 16, !41, i64 24}
!86 = !{!85, !41, i64 24}
!87 = !{!69, !40, i64 72}
!88 = !{!69, !42, i64 144}
!89 = !{!90, !40, i64 0}
!90 = !{!"ZbufSolidData", !40, i64 0, !40, i64 8, !40, i64 16}
!91 = !{!90, !40, i64 8}
!92 = !{!90, !40, i64 16}
!93 = !{!39, !40, i64 6048}
!94 = !{!39, !40, i64 6056}
!95 = distinct !{!95, !74, !75}
!96 = !{!69, !41, i64 120}
!97 = !{!39, !40, i64 5688}
!98 = !{!69, !42, i64 140}
!99 = !{!100, !41, i64 104}
!100 = !{!"RenderResult", !40, i64 0, !40, i64 8, !41, i64 16, !41, i64 20, !42, i64 24, !42, i64 26, !40, i64 32, !40, i64 40, !40, i64 48, !44, i64 56, !41, i64 72, !41, i64 76, !43, i64 80, !44, i64 96, !40, i64 112, !41, i64 120, !41, i64 124, !41, i64 128, !40, i64 136}
!101 = !{!100, !41, i64 108}
!102 = !{!100, !40, i64 112}
!103 = !{!69, !41, i64 124}
!104 = !{!69, !41, i64 112}
!105 = !{!69, !41, i64 116}
!106 = !{!69, !42, i64 146}
!107 = !{!108, !108, i64 0}
!108 = !{!"long", !36, i64 0}
!109 = !{!110, !41, i64 0}
!110 = !{!"ShadeSample", !41, i64 0, !36, i64 8, !36, i64 136, !36, i64 23688}
!111 = !{!112, !41, i64 1388}
!112 = !{!"ShadeInput", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !41, i64 40, !36, i64 44, !42, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !42, i64 88, !42, i64 90, !42, i64 92, !42, i64 94, !42, i64 96, !36, i64 100, !36, i64 112, !36, i64 124, !36, i64 136, !36, i64 148, !41, i64 160, !41, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !36, i64 192, !36, i64 204, !36, i64 216, !35, i64 228, !35, i64 232, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !35, i64 252, !35, i64 256, !35, i64 260, !35, i64 264, !35, i64 268, !35, i64 272, !35, i64 276, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !35, i64 304, !35, i64 308, !35, i64 312, !35, i64 316, !41, i64 320, !36, i64 324, !36, i64 336, !36, i64 348, !36, i64 360, !36, i64 372, !36, i64 384, !36, i64 400, !36, i64 416, !35, i64 428, !36, i64 432, !36, i64 444, !36, i64 456, !35, i64 472, !36, i64 476, !36, i64 492, !36, i64 504, !36, i64 520, !36, i64 904, !41, i64 1096, !41, i64 1100, !41, i64 1104, !41, i64 1108, !36, i64 1112, !36, i64 1124, !36, i64 1136, !36, i64 1148, !36, i64 1160, !36, i64 1172, !36, i64 1184, !36, i64 1196, !36, i64 1208, !36, i64 1220, !36, i64 1232, !36, i64 1244, !35, i64 1256, !35, i64 1260, !36, i64 1264, !36, i64 1276, !36, i64 1288, !36, i64 1300, !36, i64 1312, !36, i64 1324, !35, i64 1336, !35, i64 1340, !36, i64 1344, !36, i64 1356, !36, i64 1368, !41, i64 1380, !41, i64 1384, !41, i64 1388, !36, i64 1392, !41, i64 1404, !41, i64 1408, !41, i64 1412, !36, i64 1416, !35, i64 1428, !36, i64 1432, !36, i64 1433, !42, i64 1434, !42, i64 1436, !42, i64 1438, !41, i64 1440, !41, i64 1444, !41, i64 1448, !41, i64 1452, !40, i64 1456, !40, i64 1464}
!113 = distinct !{!113, !74, !75}
!114 = distinct !{!114, !74, !75}
!115 = !{!82, !40, i64 136}
!116 = !{!117, !41, i64 16}
!117 = !{!"RenderPass", !40, i64 0, !40, i64 8, !41, i64 16, !41, i64 20, !36, i64 24, !36, i64 88, !40, i64 96, !41, i64 104, !41, i64 108, !41, i64 112}
!118 = !{!117, !40, i64 96}
!119 = !{!120, !35, i64 40}
!120 = !{!"ShadeResult", !36, i64 0, !36, i64 16, !35, i64 32, !35, i64 36, !35, i64 40, !36, i64 44, !36, i64 56, !36, i64 68, !36, i64 80, !36, i64 92, !36, i64 108, !36, i64 120, !36, i64 132, !36, i64 144, !36, i64 156, !36, i64 168, !36, i64 180, !36, i64 196}
!121 = !{!112, !41, i64 1096}
!122 = !{!112, !41, i64 1104}
!123 = !{!112, !40, i64 8}
!124 = !{!112, !40, i64 32}
!125 = !{!126, !40, i64 16}
!126 = !{!"ObjectRen", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !36, i64 56, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !40, i64 112, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !40, i64 152, !40, i64 160, !41, i64 168, !41, i64 172, !41, i64 176, !36, i64 180, !40, i64 248, !40, i64 256, !40, i64 264, !40, i64 272}
!127 = !{!128, !42, i64 1124}
!128 = !{!"Object", !54, i64 0, !40, i64 120, !40, i64 128, !42, i64 136, !42, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !36, i64 152, !40, i64 216, !40, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !40, i64 280, !40, i64 288, !40, i64 296, !40, i64 304, !129, i64 312, !40, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !41, i64 432, !41, i64 436, !40, i64 440, !40, i64 448, !41, i64 456, !41, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !35, i64 616, !35, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !41, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !36, i64 966, !36, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !35, i64 988, !35, i64 992, !35, i64 996, !35, i64 1000, !35, i64 1004, !35, i64 1008, !35, i64 1012, !35, i64 1016, !35, i64 1020, !35, i64 1024, !35, i64 1028, !35, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !36, i64 1042, !36, i64 1043, !42, i64 1044, !36, i64 1046, !36, i64 1047, !35, i64 1048, !35, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !35, i64 1120, !42, i64 1124, !42, i64 1126, !36, i64 1128, !41, i64 1144, !41, i64 1148, !40, i64 1152, !36, i64 1160, !36, i64 1161, !42, i64 1162, !36, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !40, i64 1240, !40, i64 1248, !40, i64 1256, !36, i64 1264, !36, i64 1265, !42, i64 1266, !35, i64 1268, !40, i64 1272, !40, i64 1280, !40, i64 1288, !40, i64 1296, !108, i64 1304, !108, i64 1312, !41, i64 1320, !41, i64 1324, !43, i64 1328, !43, i64 1344, !40, i64 1360, !40, i64 1368, !40, i64 1376, !36, i64 1384, !40, i64 1392, !43, i64 1400, !40, i64 1416}
!129 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!130 = !{!112, !40, i64 0}
!131 = !{!132, !42, i64 886}
!132 = !{!"Material", !54, i64 0, !40, i64 120, !42, i64 128, !42, i64 130, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !35, i64 216, !35, i64 220, !133, i64 224, !134, i64 312, !35, i64 328, !35, i64 332, !35, i64 336, !35, i64 340, !35, i64 344, !35, i64 348, !35, i64 352, !42, i64 356, !42, i64 358, !42, i64 360, !36, i64 362, !36, i64 363, !35, i64 364, !35, i64 368, !42, i64 372, !42, i64 374, !35, i64 376, !35, i64 380, !35, i64 384, !35, i64 388, !42, i64 392, !42, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !42, i64 412, !42, i64 414, !42, i64 416, !42, i64 418, !35, i64 420, !35, i64 424, !35, i64 428, !35, i64 432, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !35, i64 456, !36, i64 460, !35, i64 524, !35, i64 528, !35, i64 532, !41, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !42, i64 544, !42, i64 546, !42, i64 548, !36, i64 550, !36, i64 551, !42, i64 552, !42, i64 554, !35, i64 556, !35, i64 560, !36, i64 564, !35, i64 580, !35, i64 584, !42, i64 588, !42, i64 590, !40, i64 592, !40, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !42, i64 612, !42, i64 614, !35, i64 616, !35, i64 620, !36, i64 624, !40, i64 768, !40, i64 776, !40, i64 784, !40, i64 792, !35, i64 800, !35, i64 804, !35, i64 808, !35, i64 812, !35, i64 816, !42, i64 820, !42, i64 822, !36, i64 824, !36, i64 836, !35, i64 848, !35, i64 852, !35, i64 856, !35, i64 860, !35, i64 864, !35, i64 868, !35, i64 872, !42, i64 876, !42, i64 878, !41, i64 880, !42, i64 884, !42, i64 886, !36, i64 888, !42, i64 904, !42, i64 906, !42, i64 908, !42, i64 910, !42, i64 912, !36, i64 914, !40, i64 920, !43, i64 928}
!133 = !{!"VolumeSettings", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !35, i64 52, !35, i64 56, !35, i64 60, !42, i64 64, !42, i64 66, !42, i64 68, !42, i64 70, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84}
!134 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!135 = distinct !{!135, !74, !75}
!136 = distinct !{!136, !74, !75}
!137 = distinct !{!137, !74, !75}
!138 = distinct !{!138, !74, !75}
!139 = !{!39, !42, i64 96}
!140 = !{!82, !40, i64 144}
!141 = !{!142, !42, i64 24}
!142 = !{!"PixStr", !40, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !42, i64 24, !42, i64 26}
!143 = !{!42, !42, i64 0}
!144 = !{!142, !40, i64 0}
!145 = distinct !{!145, !74, !75}
!146 = distinct !{!146, !74, !75}
!147 = distinct !{!147, !74, !75}
!148 = distinct !{!148, !74, !75}
!149 = !{!39, !35, i64 1548}
!150 = !{!39, !35, i64 1552}
!151 = !{!39, !35, i64 1556}
!152 = distinct !{!152, !74, !75}
!153 = !{!82, !41, i64 108}
!154 = distinct !{!154, !74, !75}
!155 = distinct !{!155, !74, !75}
!156 = distinct !{!156, !74, !75}
!157 = !{!43, !40, i64 0}
!158 = !{!85, !40, i64 0}
!159 = distinct !{!159, !74, !75}
!160 = distinct !{!160, !74, !75}
!161 = !{!162, !40, i64 128}
!162 = !{!"ZSpan", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84, !40, i64 88, !40, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !40, i64 152, !40, i64 160, !41, i64 168, !35, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !35, i64 188, !40, i64 192, !40, i64 200, !40, i64 208, !40, i64 216}
!163 = !{!162, !40, i64 88}
!164 = !{!162, !40, i64 112}
!165 = !{!162, !40, i64 120}
!166 = !{!41, !41, i64 0}
!167 = distinct !{!167, !74, !75}
!168 = distinct !{!168, !74, !75}
!169 = !{!142, !41, i64 16}
!170 = distinct !{!170, !74, !75}
!171 = distinct !{!171, !74, !75}
!172 = distinct !{!172, !74, !75}
!173 = distinct !{!173, !74, !75}
!174 = distinct !{!174, !74, !75}
!175 = distinct !{!175, !74, !75}
!176 = !{i64 0, i64 4, !166, i64 4, i64 4, !166, i64 8, i64 4, !166}
!177 = !{i64 0, i64 4, !166}
!178 = !{!82, !41, i64 92}
!179 = !{!39, !41, i64 5728}
!180 = distinct !{!180, !74, !75}
!181 = !{!39, !40, i64 5744}
!182 = !{!183, !41, i64 104}
!183 = !{!"HaloRen", !42, i64 0, !42, i64 2, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !36, i64 32, !36, i64 44, !35, i64 56, !35, i64 60, !35, i64 64, !35, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !36, i64 84, !36, i64 85, !36, i64 86, !36, i64 87, !36, i64 88, !36, i64 89, !36, i64 90, !42, i64 92, !35, i64 96, !41, i64 100, !41, i64 104, !40, i64 112, !40, i64 120}
!184 = !{!183, !42, i64 2}
!185 = !{!183, !42, i64 0}
!186 = !{!183, !35, i64 8}
!187 = !{!183, !35, i64 16}
!188 = !{!183, !35, i64 12}
!189 = !{!39, !35, i64 216}
!190 = !{!183, !35, i64 20}
!191 = !{!183, !42, i64 92}
!192 = !{!183, !36, i64 85}
!193 = !{!183, !41, i64 72}
!194 = !{!183, !40, i64 112}
!195 = !{!132, !41, i64 396}
!196 = !{!183, !36, i64 86}
!197 = distinct !{!197, !74, !75}
!198 = distinct !{!198, !74, !75}
!199 = distinct !{!199, !74, !75}
!200 = distinct !{!200, !74, !75}
!201 = distinct !{!201, !74, !75}
!202 = distinct !{!202, !74, !75}
!203 = distinct !{!203, !74, !75}
!204 = distinct !{!204, !74, !75}
!205 = !{!206, !40, i64 24}
!206 = !{!"GroupObject", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !42, i64 32, !36, i64 34}
!207 = !{!208, !42, i64 40}
!208 = !{!"LampRen", !40, i64 0, !40, i64 8, !35, i64 16, !35, i64 20, !35, i64 24, !36, i64 28, !42, i64 40, !41, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !35, i64 60, !35, i64 64, !35, i64 68, !35, i64 72, !35, i64 76, !35, i64 80, !41, i64 84, !35, i64 88, !35, i64 92, !36, i64 96, !35, i64 108, !35, i64 112, !35, i64 116, !35, i64 120, !35, i64 124, !35, i64 128, !42, i64 132, !35, i64 136, !35, i64 140, !40, i64 144, !42, i64 152, !42, i64 154, !35, i64 156, !42, i64 160, !42, i64 162, !42, i64 164, !42, i64 166, !42, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !42, i64 188, !42, i64 190, !42, i64 192, !42, i64 194, !42, i64 196, !42, i64 198, !42, i64 200, !36, i64 202, !36, i64 204, !35, i64 208, !35, i64 212, !35, i64 216, !35, i64 220, !40, i64 224, !40, i64 232, !40, i64 240, !36, i64 248, !35, i64 284, !36, i64 288, !35, i64 300, !36, i64 304, !36, i64 368, !36, i64 404, !35, i64 500, !40, i64 504, !36, i64 512, !36, i64 520, !41, i64 664, !41, i64 668}
!209 = !{!208, !40, i64 224}
!210 = !{!211, !42, i64 0}
!211 = !{!"SunSky", !42, i64 0, !42, i64 2, !42, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !36, i64 20, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !36, i64 48, !36, i64 68, !36, i64 88, !35, i64 108, !35, i64 112, !35, i64 116, !35, i64 120, !35, i64 124, !35, i64 128, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !36, i64 164, !36, i64 176, !36, i64 188, !36, i64 200, !36, i64 212}
!212 = distinct !{!212, !74, !75}
!213 = !{!206, !40, i64 16}
!214 = distinct !{!214, !74, !75}
!215 = distinct !{!215, !74, !75}
!216 = distinct !{!216, !74, !75}
!217 = distinct !{!217, !74, !75}
!218 = !{!39, !42, i64 1640}
!219 = distinct !{!219, !74, !75}
!220 = distinct !{!220, !74, !75}
!221 = distinct !{!221, !74, !75}
!222 = !{!142, !41, i64 8}
!223 = !{!142, !41, i64 12}
!224 = distinct !{!224, !74, !75}
!225 = distinct !{!225, !74, !75}
!226 = distinct !{!226, !74, !75}
!227 = distinct !{!227, !74, !75}
!228 = distinct !{!228, !74, !75}
!229 = distinct !{!229, !74, !75}
!230 = distinct !{!230, !74, !75}
!231 = distinct !{!231, !74, !75}
!232 = distinct !{!232, !74, !75}
!233 = distinct !{!233, !74, !75}
!234 = !{!120, !35, i64 36}
!235 = distinct !{!235, !74, !75}
!236 = distinct !{!236, !74, !75}
!237 = !{!39, !40, i64 5864}
!238 = !{!39, !41, i64 1620}
!239 = !{!240, !40, i64 0}
!240 = !{!"ZBufSSSHandle", !40, i64 0, !43, i64 8, !41, i64 24}
!241 = !{!240, !41, i64 24}
!242 = !{!69, !40, i64 80}
!243 = !{!69, !40, i64 88}
!244 = !{!69, !40, i64 96}
!245 = !{!100, !40, i64 80}
!246 = !{!112, !41, i64 1440}
!247 = !{!112, !41, i64 1444}
!248 = !{!112, !41, i64 1448}
!249 = !{!112, !41, i64 1452}
!250 = !{!82, !41, i64 112}
!251 = distinct !{!251, !74, !75}
!252 = !{!39, !40, i64 5800}
!253 = !{!254, !40, i64 16}
!254 = !{!"ObjectInstanceRen", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !36, i64 52, !36, i64 116, !36, i64 180, !42, i64 216, !36, i64 220, !36, i64 232, !40, i64 240, !40, i64 248, !40, i64 256, !41, i64 264, !40, i64 272, !41, i64 280}
!255 = distinct !{!255, !74, !75}
!256 = distinct !{!256, !74, !75}
!257 = !{!69, !40, i64 104}
!258 = !{!112, !42, i64 1434}
!259 = !{!112, !41, i64 1404}
!260 = !{!112, !42, i64 96}
!261 = !{!112, !42, i64 56}
!262 = !{!128, !42, i64 952}
!263 = !{!132, !40, i64 768}
!264 = !{!132, !36, i64 543}
!265 = !{!39, !40, i64 112}
!266 = !{i64 0, i64 2, !143, i64 2, i64 2, !143, i64 4, i64 4, !34, i64 8, i64 4, !34, i64 12, i64 4, !34, i64 16, i64 4, !34, i64 20, i64 4, !34, i64 24, i64 4, !34, i64 28, i64 4, !34, i64 32, i64 12, !67, i64 44, i64 12, !67, i64 56, i64 4, !34, i64 60, i64 4, !34, i64 64, i64 4, !34, i64 68, i64 4, !34, i64 72, i64 4, !166, i64 76, i64 4, !166, i64 80, i64 4, !166, i64 84, i64 1, !67, i64 85, i64 1, !67, i64 86, i64 1, !67, i64 87, i64 1, !67, i64 88, i64 1, !67, i64 89, i64 1, !67, i64 90, i64 1, !67, i64 92, i64 2, !143, i64 96, i64 4, !34, i64 100, i64 4, !166, i64 104, i64 4, !166, i64 112, i64 8, !72, i64 120, i64 8, !72}
!267 = !{!183, !36, i64 89}
!268 = !{!183, !36, i64 88}
!269 = !{!183, !35, i64 4}
!270 = !{!183, !41, i64 100}
!271 = !{!132, !35, i64 424}
!272 = !{!132, !36, i64 363}
!273 = !{!183, !35, i64 68}
!274 = !{!183, !35, i64 64}
!275 = !{!183, !35, i64 60}
!276 = !{!132, !35, i64 432}
!277 = !{!183, !35, i64 56}
!278 = !{!183, !36, i64 87}
!279 = !{!132, !35, i64 428}
!280 = !{!39, !41, i64 200}
!281 = distinct !{!281, !74, !75}
!282 = distinct !{!282, !74, !75}
!283 = !{!39, !40, i64 5968}
!284 = !{!39, !40, i64 5976}
!285 = distinct !{!285, !74, !75}
!286 = distinct !{!286, !74, !75}
!287 = !{!43, !40, i64 8}
!288 = !{!142, !41, i64 20}
!289 = !{!142, !42, i64 26}
!290 = !{!39, !41, i64 156}
!291 = !{!39, !41, i64 164}
!292 = !{!100, !41, i64 20}
!293 = !{!100, !41, i64 16}
!294 = distinct !{!294, !74, !75}
!295 = distinct !{!295, !74, !75}
