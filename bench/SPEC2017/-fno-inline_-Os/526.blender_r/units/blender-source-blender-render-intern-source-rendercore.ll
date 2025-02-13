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
%struct.ZbufSolidData = type { ptr, ptr, ptr }
%struct.RenderLayer = type { ptr, ptr, [74 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase }
%struct.PixStrMain = type { ptr, ptr, ptr, i32 }
%struct.ZSpan = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, float, i32, i32, i32, float, ptr, ptr, ptr, ptr }
%struct.ShadeSample = type { i32, [16 x ptr], [16 x %struct.ShadeInput], [16 x %struct.ShadeResult] }
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }
%struct.ShadeResult = type { [4 x float], [4 x float], float, float, float, [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float] }
%struct.PixStr = type { ptr, i32, i32, i32, i32, i16, i16 }
%struct.HaloRen = type { i16, i16, float, float, float, float, float, float, float, [3 x float], [3 x float], float, float, float, float, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, float, i32, i32, ptr, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.RenderPass = type { ptr, ptr, i32, i32, [64 x i8], [8 x i8], ptr, i32, i32, i32 }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.LampRen = type { ptr, ptr, float, float, float, [3 x float], i16, i32, float, float, float, float, float, float, float, float, float, i32, float, float, [3 x float], float, float, float, float, float, float, i16, float, float, ptr, i16, i16, float, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, [1 x i16], [1 x i16], float, float, float, float, ptr, ptr, ptr, [3 x [3 x float]], float, [3 x float], float, [4 x [4 x float]], [3 x [3 x float]], [8 x [3 x float]], float, ptr, [1 x ptr], [18 x ptr], i32, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ObjectRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [2 x [3 x float]], i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], ptr, ptr, ptr, ptr }
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
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
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !34
  br label %44

13:                                               ; preds = %3
  %14 = and i32 %9, 1024
  %15 = icmp eq i32 %14, 0
  %16 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 28), align 8
  %17 = select i1 %15, float 0.000000e+00, float %16
  %18 = fsub float %1, %17
  %19 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !57
  %20 = sitofp i32 %19 to float
  %21 = fdiv float %18, %20
  %22 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 16), align 4, !tbaa !58
  %23 = tail call fastcc float @BLI_rctf_size_x() #18
  %24 = tail call float @llvm.fmuladd.f32(float %21, float %23, float %22)
  store float %24, ptr %0, align 4, !tbaa !34
  %25 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !59
  %26 = sitofp i32 %25 to float
  %27 = fdiv float %2, %26
  %28 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 16, i32 2), align 4, !tbaa !60
  %29 = tail call fastcc float @BLI_rctf_size_y() #18
  %30 = tail call float @llvm.fmuladd.f32(float %27, float %29, float %28)
  %31 = getelementptr inbounds float, ptr %0, i64 1
  store float %30, ptr %31, align 4, !tbaa !34
  br i1 %15, label %44, label %32

32:                                               ; preds = %13
  %33 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 29), align 4, !tbaa !61
  %34 = fadd float %24, %33
  %35 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 27), align 4, !tbaa !62
  %36 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 26), align 8, !tbaa !63
  %37 = fmul float %7, %36
  %38 = tail call float @llvm.fmuladd.f32(float %35, float %34, float %37)
  store float %38, ptr %0, align 4, !tbaa !34
  %39 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 26), align 8, !tbaa !63
  %40 = fneg float %39
  %41 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 27), align 4, !tbaa !62
  %42 = fmul float %7, %41
  %43 = tail call float @llvm.fmuladd.f32(float %40, float %34, float %42)
  store float %43, ptr %8, align 4, !tbaa !34
  br label %44

44:                                               ; preds = %13, %32, %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc float @BLI_rctf_size_x() unnamed_addr #1 !PGOFuncName !64 {
  %1 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 16, i32 1), align 8, !tbaa !65
  %2 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 16), align 4, !tbaa !66
  %3 = fsub float %1, %2
  ret float %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc float @BLI_rctf_size_y() unnamed_addr #1 !PGOFuncName !67 {
  %1 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 16, i32 3), align 8, !tbaa !68
  %2 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 16, i32 2), align 4, !tbaa !69
  %3 = fsub float %1, %2
  ret float %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @calc_renderco_ortho(ptr nocapture noundef writeonly %0, float noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !57
  %6 = sitofp i32 %5 to float
  %7 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35), align 8, !tbaa !34
  %8 = fmul float %7, %6
  %9 = fdiv float 2.000000e+00, %8
  %10 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !59
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @calc_renderco_zbuf(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @count_mask(i16 noundef zeroext %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 38), align 8, !tbaa !70
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = zext i16 %0 to i32
  %6 = and i32 %5, 255
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds %struct.SampleTables, ptr %2, i64 0, i32 3, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !71
  %10 = zext i8 %9 to i32
  %11 = lshr i32 %5, 8
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds %struct.SampleTables, ptr %2, i64 0, i32 3, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !71
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %15, %10
  br label %17

17:                                               ; preds = %1, %4
  %18 = phi i32 [ %16, %4 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_sample_layers(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = getelementptr inbounds %struct.RenderResult, ptr %9, i64 0, i32 12
  %11 = tail call i32 @BLI_findindex(ptr noundef nonnull %10, ptr noundef %1) #19
  %12 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !75
  %13 = sext i16 %12 to i32
  %14 = icmp sgt i16 %12, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %7, %15
  %16 = phi i64 [ %22, %15 ], [ 0, %7 ]
  %17 = trunc i64 %16 to i32
  %18 = tail call ptr @BLI_findlink(ptr noundef nonnull %4, i32 noundef %17) #19
  %19 = getelementptr inbounds %struct.RenderResult, ptr %18, i64 0, i32 12
  %20 = tail call ptr @BLI_findlink(ptr noundef nonnull %19, i32 noundef %11) #19
  %21 = getelementptr inbounds ptr, ptr %2, i64 %16
  store ptr %20, ptr %21, align 8, !tbaa !76
  %22 = add nuw nsw i64 %16, 1
  %23 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !75
  %24 = sext i16 %23 to i64
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %15, label %27, !llvm.loop !77

26:                                               ; preds = %3
  store ptr %1, ptr %2, align 8, !tbaa !76
  br label %29

27:                                               ; preds = %15
  %28 = sext i16 %23 to i32
  br label %29

29:                                               ; preds = %27, %7, %26
  %30 = phi i32 [ 1, %26 ], [ %13, %7 ], [ %28, %27 ]
  ret i32 %30
}

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @zbufshadeDA_tile(ptr noundef %0) local_unnamed_addr #6 {
  %2 = alloca %struct.ListBase, align 8
  %3 = alloca %struct.ZbufSolidData, align 8
  %4 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %7 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !79
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  %11 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %12 = load i32, ptr %11, align 4, !tbaa !80
  %13 = sext i32 %12 to i64
  %14 = mul i64 %10, %13
  %15 = tail call ptr %6(i64 noundef %14, ptr noundef nonnull @.str) #19
  %16 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 4
  store ptr %15, ptr %16, align 8, !tbaa !81
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %18 = load i32, ptr %7, align 8, !tbaa !79
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 2
  %21 = load i32, ptr %11, align 4, !tbaa !80
  %22 = sext i32 %21 to i64
  %23 = mul i64 %20, %22
  %24 = tail call ptr %17(i64 noundef %23, ptr noundef nonnull @.str.1) #19
  %25 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 5
  store ptr %24, ptr %25, align 8, !tbaa !82
  %26 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %27 = load i32, ptr %7, align 8, !tbaa !79
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 2
  %30 = load i32, ptr %11, align 4, !tbaa !80
  %31 = sext i32 %30 to i64
  %32 = mul i64 %29, %31
  %33 = tail call ptr %26(i64 noundef %32, ptr noundef nonnull @.str.2) #19
  %34 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 6
  store ptr %33, ptr %34, align 8, !tbaa !83
  %35 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 12
  %36 = load ptr, ptr %35, align 8, !tbaa !76
  %37 = icmp eq ptr %36, null
  br i1 %37, label %259, label %38

38:                                               ; preds = %1
  %39 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 7
  %40 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 8
  %41 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 19
  %42 = getelementptr inbounds %struct.ZbufSolidData, ptr %3, i64 0, i32 1
  %43 = getelementptr inbounds %struct.ZbufSolidData, ptr %3, i64 0, i32 2
  %44 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 3
  br label %45

45:                                               ; preds = %38, %256
  %46 = phi ptr [ %36, %38 ], [ %257, %256 ]
  %47 = getelementptr inbounds %struct.RenderLayer, ptr %46, i64 0, i32 6
  %48 = load i32, ptr %47, align 8, !tbaa !84
  %49 = and i32 %48, 786432
  %50 = icmp eq i32 %49, 786432
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %53 = load i32, ptr %7, align 8, !tbaa !79
  %54 = sext i32 %53 to i64
  %55 = shl nsw i64 %54, 2
  %56 = load i32, ptr %11, align 4, !tbaa !80
  %57 = sext i32 %56 to i64
  %58 = mul i64 %55, %57
  %59 = call ptr %52(i64 noundef %58, ptr noundef nonnull @.str.3) #19
  store ptr %59, ptr %39, align 8, !tbaa !86
  br label %60

60:                                               ; preds = %51, %45
  %61 = call fastcc ptr @addpsmain(ptr noundef nonnull %2) #18
  %62 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %63 = load i32, ptr %7, align 8, !tbaa !79
  %64 = sext i32 %63 to i64
  %65 = shl nsw i64 %64, 3
  %66 = load i32, ptr %11, align 4, !tbaa !80
  %67 = sext i32 %66 to i64
  %68 = mul i64 %65, %67
  %69 = or disjoint i64 %68, 4
  %70 = call ptr %62(i64 noundef %69, ptr noundef nonnull @.str.4) #19
  store ptr %70, ptr %40, align 8, !tbaa !87
  %71 = load i32, ptr %47, align 8, !tbaa !84
  %72 = and i32 %71, 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %60
  %75 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %76 = and i32 %75, 32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %80 = load i32, ptr %7, align 8, !tbaa !79
  %81 = sext i32 %80 to i64
  %82 = shl nsw i64 %81, 2
  %83 = load i32, ptr %11, align 4, !tbaa !80
  %84 = sext i32 %83 to i64
  %85 = mul i64 %82, %84
  %86 = call ptr %79(i64 noundef %85, ptr noundef nonnull @.str.5) #19
  br label %87

87:                                               ; preds = %74, %78, %60
  %88 = phi ptr [ %86, %78 ], [ null, %74 ], [ null, %60 ]
  store i16 0, ptr %41, align 8, !tbaa !88
  %89 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !75
  %90 = icmp sgt i16 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %87, %96
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  store ptr %46, ptr %3, align 8, !tbaa !89
  store ptr %2, ptr %42, align 8, !tbaa !91
  store ptr %88, ptr %43, align 8, !tbaa !92
  call void @zbuffer_solid(ptr noundef nonnull %0, ptr noundef nonnull %46, ptr noundef nonnull @make_pixelstructs, ptr noundef nonnull %3) #19
  %92 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !93
  %93 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !94
  %94 = call i32 %92(ptr noundef %93) #19
  %95 = icmp eq i32 %94, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load i16, ptr %41, align 8, !tbaa !88
  %98 = add i16 %97, 4
  store i16 %98, ptr %41, align 8, !tbaa !88
  %99 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !75
  %100 = icmp slt i16 %98, %99
  br i1 %100, label %91, label %101, !llvm.loop !95

101:                                              ; preds = %96, %91, %87
  %102 = load i32, ptr %47, align 8, !tbaa !84
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  call fastcc void @shadeDA_tile(ptr noundef %0, ptr noundef nonnull %46) #18
  br label %106

106:                                              ; preds = %105, %101
  %107 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !96
  %108 = and i16 %107, 8
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %106
  %111 = load i32, ptr %47, align 8, !tbaa !84
  %112 = and i32 %111, 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  call fastcc void @lamphalo_tile(ptr noundef %0, ptr noundef nonnull %46) #18
  %115 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !96
  br label %116

116:                                              ; preds = %110, %114, %106
  %117 = phi i16 [ %107, %110 ], [ %115, %114 ], [ %107, %106 ]
  %118 = and i16 %117, 2
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %116
  %121 = load i32, ptr %47, align 8, !tbaa !84
  %122 = and i32 %121, 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %120
  call fastcc void @halo_tile(ptr noundef %0, ptr noundef nonnull %46) #18
  %125 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !96
  br label %126

126:                                              ; preds = %120, %124, %116
  %127 = phi i16 [ %117, %120 ], [ %125, %124 ], [ %117, %116 ]
  %128 = and i16 %127, 1
  %129 = icmp ne i16 %128, 0
  %130 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 63), align 4
  %131 = icmp ne i32 %130, 0
  %132 = select i1 %129, i1 true, i1 %131
  br i1 %132, label %133, label %218

133:                                              ; preds = %126
  %134 = load i32, ptr %47, align 8, !tbaa !84
  %135 = and i32 %134, 34
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %218, label %137

137:                                              ; preds = %133
  %138 = load ptr, ptr %44, align 8, !tbaa !72
  %139 = icmp eq ptr %138, null
  br i1 %139, label %144, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.RenderLayer, ptr %46, i64 0, i32 11
  %142 = load ptr, ptr %141, align 8, !tbaa !97
  %143 = call ptr @zbuffer_transp_shade(ptr noundef nonnull %0, ptr noundef nonnull %46, ptr noundef %142, ptr noundef nonnull %2) #19
  br label %218

144:                                              ; preds = %137
  %145 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %146 = load i32, ptr %7, align 8, !tbaa !79
  %147 = sext i32 %146 to i64
  %148 = shl nsw i64 %147, 4
  %149 = load i32, ptr %11, align 4, !tbaa !80
  %150 = sext i32 %149 to i64
  %151 = mul i64 %148, %150
  %152 = call ptr %145(i64 noundef %151, ptr noundef nonnull @.str.6) #19
  %153 = getelementptr inbounds %struct.RenderLayer, ptr %46, i64 0, i32 12
  %154 = getelementptr inbounds %struct.RenderLayer, ptr %46, i64 0, i32 11
  %155 = load ptr, ptr %154, align 8, !tbaa !97
  store ptr %155, ptr %153, align 8, !tbaa !98
  store ptr %152, ptr %154, align 8, !tbaa !97
  %156 = call ptr @zbuffer_transp_shade(ptr noundef nonnull %0, ptr noundef nonnull %46, ptr noundef %152, ptr noundef nonnull %2) #19
  %157 = load ptr, ptr %153, align 8, !tbaa !98
  %158 = load ptr, ptr %154, align 8, !tbaa !97
  store ptr %158, ptr %153, align 8, !tbaa !98
  store ptr %157, ptr %154, align 8, !tbaa !97
  %159 = icmp eq ptr %156, null
  br i1 %159, label %198, label %160

160:                                              ; preds = %144
  %161 = call fastcc ptr @make_solid_mask(ptr noundef nonnull %0) #18
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load ptr, ptr %154, align 8, !tbaa !97
  %165 = load ptr, ptr %153, align 8, !tbaa !98
  br label %198

166:                                              ; preds = %160
  %167 = load i32, ptr %7, align 8, !tbaa !79
  %168 = load i32, ptr %11, align 4, !tbaa !80
  %169 = mul nsw i32 %168, %167
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %213

171:                                              ; preds = %166
  %172 = load ptr, ptr %153, align 8, !tbaa !98
  %173 = load ptr, ptr %154, align 8, !tbaa !97
  %174 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !75
  %175 = zext nneg i16 %174 to i32
  %176 = shl nsw i32 -1, %175
  %177 = and i32 %176, 65535
  br label %178

178:                                              ; preds = %171, %191
  %179 = phi i32 [ %169, %171 ], [ %192, %191 ]
  %180 = phi ptr [ %172, %171 ], [ %193, %191 ]
  %181 = phi ptr [ %173, %171 ], [ %194, %191 ]
  %182 = phi ptr [ %156, %171 ], [ %196, %191 ]
  %183 = phi ptr [ %161, %171 ], [ %195, %191 ]
  %184 = load i16, ptr %183, align 2, !tbaa !99
  %185 = zext i16 %184 to i32
  %186 = xor i32 %177, %185
  %187 = icmp eq i32 %186, 65535
  br i1 %187, label %188, label %189

188:                                              ; preds = %178
  call void @addAlphaOverFloat(ptr noundef %181, ptr noundef %180) #19
  br label %191

189:                                              ; preds = %178
  %190 = load i16, ptr %182, align 2, !tbaa !99
  call fastcc void @addAlphaOverFloatMask(ptr noundef %181, ptr noundef %180, i16 noundef zeroext %184, i16 noundef zeroext %190) #18
  br label %191

191:                                              ; preds = %188, %189
  %192 = add nsw i32 %179, -1
  %193 = getelementptr inbounds float, ptr %180, i64 4
  %194 = getelementptr inbounds float, ptr %181, i64 4
  %195 = getelementptr inbounds i16, ptr %183, i64 1
  %196 = getelementptr inbounds i16, ptr %182, i64 1
  %197 = icmp sgt i32 %179, 1
  br i1 %197, label %178, label %213, !llvm.loop !100

198:                                              ; preds = %163, %144
  %199 = phi ptr [ %165, %163 ], [ %158, %144 ]
  %200 = phi ptr [ %164, %163 ], [ %157, %144 ]
  %201 = load i32, ptr %7, align 8, !tbaa !79
  %202 = load i32, ptr %11, align 4, !tbaa !80
  %203 = mul nsw i32 %202, %201
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %198, %205
  %206 = phi i32 [ %209, %205 ], [ %203, %198 ]
  %207 = phi ptr [ %210, %205 ], [ %199, %198 ]
  %208 = phi ptr [ %211, %205 ], [ %200, %198 ]
  call void @addAlphaOverFloat(ptr noundef %208, ptr noundef %207) #19
  %209 = add nsw i32 %206, -1
  %210 = getelementptr inbounds float, ptr %207, i64 4
  %211 = getelementptr inbounds float, ptr %208, i64 4
  %212 = icmp ugt i32 %206, 1
  br i1 %212, label %205, label %215, !llvm.loop !101

213:                                              ; preds = %191, %166
  %214 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  call void %214(ptr noundef nonnull %161) #19
  br label %215

215:                                              ; preds = %205, %198, %213
  br i1 %159, label %218, label %216

216:                                              ; preds = %215
  %217 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  call void %217(ptr noundef nonnull %156) #19
  br label %218

218:                                              ; preds = %215, %216, %133, %140, %126
  %219 = load i32, ptr %47, align 8, !tbaa !84
  %220 = and i32 %219, 16
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %228, label %222

222:                                              ; preds = %218
  call fastcc void @atm_tile(ptr noundef %0, ptr noundef nonnull %46) #18
  %223 = load i32, ptr %47, align 8, !tbaa !84
  %224 = and i32 %223, 16
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %228, label %226

226:                                              ; preds = %222
  call fastcc void @sky_tile(ptr noundef %0, ptr noundef nonnull %46) #18
  %227 = load i32, ptr %47, align 8, !tbaa !84
  br label %228

228:                                              ; preds = %218, %226, %222
  %229 = phi i32 [ %227, %226 ], [ %223, %222 ], [ %219, %218 ]
  %230 = and i32 %229, 8
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %239, label %232

232:                                              ; preds = %228
  %233 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %234 = and i32 %233, 32
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.RenderLayer, ptr %46, i64 0, i32 11
  %238 = load ptr, ptr %237, align 8, !tbaa !97
  call fastcc void @edge_enhance_add(ptr noundef %0, ptr noundef %238, ptr noundef %88) #18
  br label %239

239:                                              ; preds = %232, %236, %228
  %240 = getelementptr inbounds %struct.RenderLayer, ptr %46, i64 0, i32 7
  %241 = load i32, ptr %240, align 4, !tbaa !102
  %242 = and i32 %241, 512
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %239
  call fastcc void @reset_sky_speed(ptr noundef %0, ptr noundef nonnull %46) #18
  br label %245

245:                                              ; preds = %244, %239
  call fastcc void @clamp_alpha_rgb_range(ptr noundef %0, ptr noundef nonnull %46) #18
  %246 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %247 = load ptr, ptr %40, align 8, !tbaa !87
  call void %246(ptr noundef %247) #19
  store ptr null, ptr %40, align 8, !tbaa !87
  call fastcc void @freeps(ptr noundef nonnull %2) #18
  %248 = icmp eq ptr %88, null
  br i1 %248, label %251, label %249

249:                                              ; preds = %245
  %250 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  call void %250(ptr noundef nonnull %88) #19
  br label %251

251:                                              ; preds = %249, %245
  %252 = load ptr, ptr %39, align 8, !tbaa !86
  %253 = icmp eq ptr %252, null
  br i1 %253, label %256, label %254

254:                                              ; preds = %251
  %255 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  call void %255(ptr noundef nonnull %252) #19
  store ptr null, ptr %39, align 8, !tbaa !86
  br label %256

256:                                              ; preds = %251, %254
  %257 = load ptr, ptr %46, align 8, !tbaa !76
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %45, !llvm.loop !103

259:                                              ; preds = %256, %1
  %260 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %261 = load ptr, ptr %16, align 8, !tbaa !81
  call void %260(ptr noundef %261) #19
  store ptr null, ptr %16, align 8, !tbaa !81
  %262 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %263 = load ptr, ptr %25, align 8, !tbaa !82
  call void %262(ptr noundef %263) #19
  store ptr null, ptr %25, align 8, !tbaa !82
  %264 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %265 = load ptr, ptr %34, align 8, !tbaa !83
  call void %264(ptr noundef %265) #19
  store ptr null, ptr %34, align 8, !tbaa !83
  %266 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 13, i32 3
  store volatile i32 0, ptr %266, align 4, !tbaa !104
  %267 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 13, i32 2
  store volatile i32 0, ptr %267, align 8, !tbaa !106
  %268 = call ptr @render_get_active_layer(ptr noundef nonnull @R, ptr noundef %5) #19
  %269 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 14
  store ptr %268, ptr %269, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @addpsmain(ptr noundef %0) unnamed_addr #6 !PGOFuncName !108 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %3 = tail call ptr %2(i64 noundef 32, ptr noundef nonnull @.str.13) #19
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %3) #19
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %5 = tail call ptr %4(i64 noundef 131072, ptr noundef nonnull @.str.14) #19
  %6 = getelementptr inbounds %struct.PixStrMain, ptr %3, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !109
  %7 = getelementptr inbounds %struct.PixStrMain, ptr %3, i64 0, i32 3
  store i32 0, ptr %7, align 8, !tbaa !111
  ret ptr %3
}

; Function Attrs: optsize
declare void @zbuffer_solid(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal void @make_pixelstructs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) #6 !PGOFuncName !112 {
  %5 = getelementptr inbounds %struct.ZbufSolidData, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = getelementptr inbounds %struct.ZSpan, ptr %1, i64 0, i32 16
  %8 = getelementptr inbounds %struct.ZSpan, ptr %1, i64 0, i32 21
  %9 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %10 = load i32, ptr %9, align 4, !tbaa !80
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %78

12:                                               ; preds = %4
  %13 = shl nuw i32 1, %2
  %14 = load ptr, ptr %8, align 8, !tbaa !113
  %15 = load ptr, ptr %7, align 8, !tbaa !115
  %16 = getelementptr inbounds %struct.ZSpan, ptr %1, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !116
  %18 = getelementptr inbounds %struct.ZSpan, ptr %1, i64 0, i32 20
  %19 = load ptr, ptr %18, align 8, !tbaa !117
  %20 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !87
  %22 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %23 = trunc i32 %13 to i16
  %24 = load i32, ptr %22, align 8, !tbaa !79
  br label %25

25:                                               ; preds = %12, %67
  %26 = phi i32 [ %10, %12 ], [ %68, %67 ]
  %27 = phi i32 [ %24, %12 ], [ %69, %67 ]
  %28 = phi i32 [ %24, %12 ], [ %70, %67 ]
  %29 = phi ptr [ %21, %12 ], [ %75, %67 ]
  %30 = phi i32 [ 0, %12 ], [ %76, %67 ]
  %31 = phi ptr [ %14, %12 ], [ %74, %67 ]
  %32 = phi ptr [ %15, %12 ], [ %73, %67 ]
  %33 = phi ptr [ %17, %12 ], [ %72, %67 ]
  %34 = phi ptr [ %19, %12 ], [ %71, %67 ]
  %35 = icmp sgt i32 %28, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %25, %56
  %37 = phi i32 [ %57, %56 ], [ %27, %25 ]
  %38 = phi ptr [ %59, %56 ], [ %29, %25 ]
  %39 = phi i32 [ %58, %56 ], [ 0, %25 ]
  %40 = phi ptr [ %63, %56 ], [ %31, %25 ]
  %41 = phi ptr [ %62, %56 ], [ %32, %25 ]
  %42 = phi ptr [ %60, %56 ], [ %33, %25 ]
  %43 = phi ptr [ %61, %56 ], [ %34, %25 ]
  %44 = load i32, ptr %42, align 4, !tbaa !118
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %36
  %47 = load i32, ptr %43, align 4, !tbaa !118
  %48 = load i32, ptr %41, align 4, !tbaa !118
  %49 = load ptr, ptr %8, align 8, !tbaa !113
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = load i32, ptr %40, align 4, !tbaa !118
  br label %53

53:                                               ; preds = %46, %51
  %54 = phi i32 [ %52, %51 ], [ 0, %46 ]
  tail call fastcc void @addps(ptr noundef %6, ptr noundef %38, i32 noundef %47, i32 noundef %44, i32 noundef %48, i32 noundef %54, i16 noundef zeroext %23) #18
  %55 = load i32, ptr %22, align 8, !tbaa !79
  br label %56

56:                                               ; preds = %36, %53
  %57 = phi i32 [ %37, %36 ], [ %55, %53 ]
  %58 = add nuw nsw i32 %39, 1
  %59 = getelementptr inbounds i64, ptr %38, i64 1
  %60 = getelementptr inbounds i32, ptr %42, i64 1
  %61 = getelementptr inbounds i32, ptr %43, i64 1
  %62 = getelementptr inbounds i32, ptr %41, i64 1
  %63 = getelementptr inbounds i32, ptr %40, i64 1
  %64 = icmp slt i32 %58, %57
  br i1 %64, label %36, label %65, !llvm.loop !119

65:                                               ; preds = %56
  %66 = load i32, ptr %9, align 4, !tbaa !80
  br label %67

67:                                               ; preds = %65, %25
  %68 = phi i32 [ %26, %25 ], [ %66, %65 ]
  %69 = phi i32 [ %27, %25 ], [ %57, %65 ]
  %70 = phi i32 [ %28, %25 ], [ %57, %65 ]
  %71 = phi ptr [ %34, %25 ], [ %61, %65 ]
  %72 = phi ptr [ %33, %25 ], [ %60, %65 ]
  %73 = phi ptr [ %32, %25 ], [ %62, %65 ]
  %74 = phi ptr [ %31, %25 ], [ %63, %65 ]
  %75 = phi ptr [ %29, %25 ], [ %59, %65 ]
  %76 = add nuw nsw i32 %30, 1
  %77 = icmp slt i32 %76, %68
  br i1 %77, label %25, label %78, !llvm.loop !120

78:                                               ; preds = %67, %4
  %79 = load ptr, ptr %3, align 8, !tbaa !89
  %80 = getelementptr inbounds %struct.RenderLayer, ptr %79, i64 0, i32 6
  %81 = load i32, ptr %80, align 8, !tbaa !84
  %82 = and i32 %81, 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %78
  %85 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %86 = and i32 %85, 32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.ZbufSolidData, ptr %3, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !92
  %91 = load ptr, ptr %7, align 8, !tbaa !115
  tail call fastcc void @edge_enhance_tile(ptr noundef nonnull %0, ptr noundef %90, ptr noundef %91) #18
  br label %92

92:                                               ; preds = %84, %88, %78
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shadeDA_tile(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !PGOFuncName !121 {
  %3 = alloca %struct.ShadeSample, align 8
  %4 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 27080, ptr nonnull %3) #20
  %6 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  %8 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !93
  %9 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !94
  %10 = tail call i32 %8(ptr noundef %9) #19
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %170

12:                                               ; preds = %2
  %13 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @ISB_create(ptr noundef nonnull %0, ptr noundef null) #19
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %19 = load i32, ptr %18, align 8, !tbaa !79
  %20 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13
  %21 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !122
  %23 = mul nsw i32 %22, %19
  call void @shade_sample_initialize(ptr noundef nonnull %3, ptr noundef nonnull %0, ptr noundef %1) #19
  %24 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 56), align 8, !tbaa !123
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  call void @cache_occ_samples(ptr noundef nonnull @R, ptr noundef nonnull %0, ptr noundef nonnull %3) #19
  br label %27

27:                                               ; preds = %26, %17
  %28 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 17
  %29 = load i16, ptr %28, align 4, !tbaa !124
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %18, align 8, !tbaa !79
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, ptr %7, i64 %34
  br label %36

36:                                               ; preds = %31, %27
  %37 = phi i32 [ 1, %31 ], [ 0, %27 ]
  %38 = phi i32 [ %33, %31 ], [ 0, %27 ]
  %39 = phi ptr [ %35, %31 ], [ %7, %27 ]
  %40 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 13, i32 2
  store volatile i32 0, ptr %40, align 8, !tbaa !106
  %41 = mul nuw nsw i32 %37, -2
  %42 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 13, i32 3
  store volatile i32 %41, ptr %42, align 4, !tbaa !104
  %43 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 14
  store ptr %1, ptr %43, align 8, !tbaa !107
  %44 = load i32, ptr %21, align 8, !tbaa !122
  %45 = add nsw i32 %44, %37
  %46 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 3
  %47 = load i32, ptr %46, align 4, !tbaa !125
  %48 = sub nsw i32 %47, %37
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %161

50:                                               ; preds = %36
  %51 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 1
  %52 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 20
  %53 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 3
  br label %54

54:                                               ; preds = %50, %154
  %55 = phi ptr [ %39, %50 ], [ %145, %154 ]
  %56 = phi i32 [ %38, %50 ], [ %146, %154 ]
  %57 = phi i32 [ %23, %50 ], [ %142, %154 ]
  %58 = phi i32 [ %45, %50 ], [ %155, %154 ]
  %59 = load i32, ptr %20, align 8, !tbaa !126
  %60 = add nsw i32 %59, %37
  %61 = load i32, ptr %51, align 4, !tbaa !127
  %62 = sub nsw i32 %61, %37
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %141

64:                                               ; preds = %54, %134
  %65 = phi ptr [ %136, %134 ], [ %55, %54 ]
  %66 = phi i32 [ %137, %134 ], [ %56, %54 ]
  %67 = phi i32 [ %71, %134 ], [ %57, %54 ]
  %68 = phi i32 [ %135, %134 ], [ %60, %54 ]
  %69 = load i16, ptr %52, align 2, !tbaa !128
  %70 = sext i16 %69 to i32
  %71 = add nsw i32 %67, 1
  call void @BLI_thread_srandom(i32 noundef %70, i32 noundef %67) #19
  %72 = load i64, ptr %65, align 8, !tbaa !129
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %134, label %74

74:                                               ; preds = %64
  %75 = inttoptr i64 %72 to ptr
  %76 = call i32 @shade_samples(ptr noundef nonnull %3, ptr noundef nonnull %75, i32 noundef %68, i32 noundef %58) #19
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %134, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %53, align 8, !tbaa !72
  %80 = icmp eq ptr %79, null
  %81 = load i32, ptr %3, align 8, !tbaa !131
  %82 = icmp sgt i32 %81, 0
  br i1 %80, label %86, label %83

83:                                               ; preds = %78
  br i1 %82, label %84, label %134

84:                                               ; preds = %83
  %85 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !75
  br label %87

86:                                               ; preds = %78
  br i1 %82, label %123, label %134

87:                                               ; preds = %84, %116
  %88 = phi i32 [ %81, %84 ], [ %117, %116 ]
  %89 = phi i16 [ %85, %84 ], [ %118, %116 ]
  %90 = phi i16 [ %85, %84 ], [ %119, %116 ]
  %91 = phi i64 [ 0, %84 ], [ %120, %116 ]
  %92 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 2, i64 %91
  %93 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 2, i64 %91, i32 105
  %94 = load i32, ptr %93, align 4, !tbaa !133
  %95 = icmp sgt i16 %90, 0
  br i1 %95, label %96, label %116

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 %91
  br label %98

98:                                               ; preds = %96, %109
  %99 = phi i16 [ %89, %96 ], [ %110, %109 ]
  %100 = phi i64 [ 0, %96 ], [ %111, %109 ]
  %101 = trunc i64 %100 to i32
  %102 = shl nuw i32 1, %101
  %103 = and i32 %102, %94
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 1, i64 %100
  %107 = load ptr, ptr %106, align 8, !tbaa !76
  call fastcc void @add_passes(ptr noundef %107, i32 noundef %66, ptr noundef nonnull %92, ptr noundef nonnull %97) #18
  %108 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !75
  br label %109

109:                                              ; preds = %105, %98
  %110 = phi i16 [ %108, %105 ], [ %99, %98 ]
  %111 = add nuw nsw i64 %100, 1
  %112 = sext i16 %110 to i64
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %98, label %114, !llvm.loop !135

114:                                              ; preds = %109
  %115 = load i32, ptr %3, align 8, !tbaa !131
  br label %116

116:                                              ; preds = %114, %87
  %117 = phi i32 [ %115, %114 ], [ %88, %87 ]
  %118 = phi i16 [ %110, %114 ], [ %89, %87 ]
  %119 = phi i16 [ %110, %114 ], [ %90, %87 ]
  %120 = add nuw nsw i64 %91, 1
  %121 = sext i32 %117 to i64
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %87, label %134, !llvm.loop !136

123:                                              ; preds = %86, %123
  %124 = phi i64 [ %130, %123 ], [ 0, %86 ]
  %125 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 2, i64 %124
  %126 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 2, i64 %124, i32 105
  %127 = load i32, ptr %126, align 4, !tbaa !133
  %128 = load i32, ptr %18, align 8, !tbaa !79
  %129 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 %124
  call fastcc void @add_filt_passes(ptr noundef %1, i32 noundef %127, i32 noundef %128, i32 noundef %66, ptr noundef nonnull %125, ptr noundef nonnull %129) #18
  %130 = add nuw nsw i64 %124, 1
  %131 = load i32, ptr %3, align 8, !tbaa !131
  %132 = sext i32 %131 to i64
  %133 = icmp slt i64 %130, %132
  br i1 %133, label %123, label %134, !llvm.loop !137

134:                                              ; preds = %116, %123, %83, %86, %64, %74
  %135 = add nsw i32 %68, 1
  %136 = getelementptr inbounds i64, ptr %65, i64 1
  %137 = add nsw i32 %66, 1
  %138 = load i32, ptr %51, align 4, !tbaa !127
  %139 = sub nsw i32 %138, %37
  %140 = icmp slt i32 %135, %139
  br i1 %140, label %64, label %141, !llvm.loop !138

141:                                              ; preds = %134, %54
  %142 = phi i32 [ %57, %54 ], [ %71, %134 ]
  %143 = load i32, ptr %18, align 8, !tbaa !79
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, ptr %55, i64 %144
  %146 = add nsw i32 %143, %56
  %147 = and i32 %58, 1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %141
  %150 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !93
  %151 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !94
  %152 = call i32 %150(ptr noundef %151) #19
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %141, %149
  %155 = add nsw i32 %58, 1
  %156 = load volatile i32, ptr %42, align 4, !tbaa !104
  %157 = add nsw i32 %156, 1
  store volatile i32 %157, ptr %42, align 4, !tbaa !104
  %158 = load i32, ptr %46, align 4, !tbaa !125
  %159 = sub nsw i32 %158, %37
  %160 = icmp slt i32 %155, %159
  br i1 %160, label %54, label %161, !llvm.loop !139

161:                                              ; preds = %154, %149, %36
  store ptr null, ptr %43, align 8, !tbaa !107
  %162 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %163 = and i32 %162, 2
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %161
  call void @ISB_free(ptr noundef nonnull %0) #19
  br label %166

166:                                              ; preds = %165, %161
  %167 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 56), align 8, !tbaa !123
  %168 = icmp eq ptr %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %166
  call void @free_occ_samples(ptr noundef nonnull @R, ptr noundef nonnull %0) #19
  br label %170

170:                                              ; preds = %166, %169, %2
  call void @llvm.lifetime.end.p0(i64 27080, ptr nonnull %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lamphalo_tile(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !PGOFuncName !140 {
  %3 = alloca [16 x ptr], align 16
  %4 = alloca %struct.ShadeInput, align 8
  %5 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 1472, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  %6 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  %8 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = call i32 @get_sample_layers(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #18
  %11 = icmp sgt i32 %10, 1
  call void @shade_input_initialize(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1, i32 noundef 0) #19
  %12 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13
  %13 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !122
  %15 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !125
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %262

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 1
  %20 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 30
  %21 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  %22 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  %23 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  %24 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 29
  %25 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 11
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 29, i64 2
  %27 = icmp sgt i32 %10, 0
  %28 = zext nneg i32 %10 to i64
  %29 = zext nneg i32 %10 to i64
  %30 = zext nneg i32 %10 to i64
  br label %31

31:                                               ; preds = %18, %258
  %32 = phi i32 [ 0, %18 ], [ %250, %258 ]
  %33 = phi ptr [ %7, %18 ], [ %249, %258 ]
  %34 = phi i32 [ %14, %18 ], [ %259, %258 ]
  %35 = phi ptr [ %9, %18 ], [ %248, %258 ]
  %36 = load i32, ptr %12, align 8, !tbaa !126
  %37 = load i32, ptr %19, align 4, !tbaa !127
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %247

39:                                               ; preds = %31
  %40 = sitofp i32 %34 to float
  %41 = zext i32 %32 to i64
  br label %42

42:                                               ; preds = %39, %237
  %43 = phi i64 [ %41, %39 ], [ %242, %237 ]
  %44 = phi ptr [ %33, %39 ], [ %239, %237 ]
  %45 = phi i32 [ %36, %39 ], [ %240, %237 ]
  %46 = phi ptr [ %35, %39 ], [ %241, %237 ]
  %47 = sitofp i32 %45 to float
  call void @calc_view_vector(ptr noundef nonnull %20, float noundef %47, float noundef %40) #18
  %48 = icmp eq ptr %44, null
  br i1 %48, label %199, label %49

49:                                               ; preds = %42
  %50 = load i64, ptr %44, align 8, !tbaa !129
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %199, label %52

52:                                               ; preds = %49
  %53 = inttoptr i64 %50 to ptr
  %54 = trunc i64 %43 to i32
  %55 = shl nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  br label %57

57:                                               ; preds = %52, %134
  %58 = phi i32 [ 0, %52 ], [ %74, %134 ]
  %59 = phi i32 [ 0, %52 ], [ %72, %134 ]
  %60 = phi ptr [ %53, %52 ], [ %135, %134 ]
  %61 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %62 = and i32 %61, 8
  %63 = icmp eq i32 %62, 0
  %64 = getelementptr inbounds %struct.PixStr, ptr %60, i64 0, i32 3
  %65 = load i32, ptr %64, align 8, !tbaa !141
  br i1 %63, label %67, label %66

66:                                               ; preds = %57
  call void @calc_renderco_ortho(ptr noundef nonnull %24, float noundef %47, float noundef %40, i32 noundef %65) #18
  br label %68

67:                                               ; preds = %57
  call void @calc_renderco_zbuf(ptr noundef nonnull %24, ptr noundef nonnull %20, i32 noundef %65) #18
  br label %68

68:                                               ; preds = %67, %66
  %69 = getelementptr inbounds %struct.PixStr, ptr %60, i64 0, i32 5
  %70 = load i16, ptr %69, align 8, !tbaa !143
  %71 = call i32 @count_mask(i16 noundef zeroext %70) #18, !range !144
  %72 = add nuw nsw i32 %71, %59
  %73 = zext i16 %70 to i32
  %74 = or i32 %58, %73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @renderspothalo(ptr noundef nonnull %4, ptr noundef nonnull %5, float noundef 1.000000e+00) #19
  br i1 %11, label %75, label %110

75:                                               ; preds = %68
  %76 = load i16, ptr %69, align 8, !tbaa !143
  %77 = zext i16 %76 to i32
  br label %78

78:                                               ; preds = %75, %107
  %79 = phi i64 [ 0, %75 ], [ %108, %107 ]
  %80 = trunc i64 %79 to i32
  %81 = shl nuw i32 1, %80
  %82 = and i32 %81, %77
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %107, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds [16 x ptr], ptr %3, i64 0, i64 %79
  %86 = load ptr, ptr %85, align 8, !tbaa !76
  %87 = getelementptr inbounds %struct.RenderLayer, ptr %86, i64 0, i32 11
  %88 = load ptr, ptr %87, align 8, !tbaa !97
  %89 = getelementptr inbounds float, ptr %88, i64 %56
  %90 = load float, ptr %5, align 16, !tbaa !34
  %91 = load float, ptr %89, align 4, !tbaa !34
  %92 = fadd float %90, %91
  store float %92, ptr %89, align 4, !tbaa !34
  %93 = load float, ptr %23, align 4, !tbaa !34
  %94 = getelementptr inbounds float, ptr %89, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !34
  %96 = fadd float %93, %95
  store float %96, ptr %94, align 4, !tbaa !34
  %97 = load float, ptr %22, align 8, !tbaa !34
  %98 = getelementptr inbounds float, ptr %89, i64 2
  %99 = load float, ptr %98, align 4, !tbaa !34
  %100 = fadd float %97, %99
  store float %100, ptr %98, align 4, !tbaa !34
  %101 = load float, ptr %21, align 4, !tbaa !34
  %102 = getelementptr inbounds float, ptr %89, i64 3
  %103 = load float, ptr %102, align 4, !tbaa !34
  %104 = fadd float %101, %103
  store float %104, ptr %102, align 4, !tbaa !34
  %105 = fcmp ogt float %104, 1.000000e+00
  br i1 %105, label %106, label %107

106:                                              ; preds = %84
  store float 1.000000e+00, ptr %102, align 4, !tbaa !34
  br label %107

107:                                              ; preds = %78, %106, %84
  %108 = add nuw nsw i64 %79, 1
  %109 = icmp eq i64 %108, %28
  br i1 %109, label %134, label %78, !llvm.loop !145

110:                                              ; preds = %68
  %111 = sitofp i32 %71 to float
  %112 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !75
  %113 = sitofp i16 %112 to float
  %114 = fdiv float %111, %113
  %115 = load ptr, ptr %25, align 8, !tbaa !97
  %116 = getelementptr inbounds float, ptr %115, i64 %56
  %117 = load float, ptr %5, align 16, !tbaa !34
  %118 = load float, ptr %116, align 4, !tbaa !34
  %119 = call float @llvm.fmuladd.f32(float %114, float %117, float %118)
  store float %119, ptr %116, align 4, !tbaa !34
  %120 = load float, ptr %23, align 4, !tbaa !34
  %121 = getelementptr inbounds float, ptr %116, i64 1
  %122 = load float, ptr %121, align 4, !tbaa !34
  %123 = call float @llvm.fmuladd.f32(float %114, float %120, float %122)
  store float %123, ptr %121, align 4, !tbaa !34
  %124 = load float, ptr %22, align 8, !tbaa !34
  %125 = getelementptr inbounds float, ptr %116, i64 2
  %126 = load float, ptr %125, align 4, !tbaa !34
  %127 = call float @llvm.fmuladd.f32(float %114, float %124, float %126)
  store float %127, ptr %125, align 4, !tbaa !34
  %128 = load float, ptr %21, align 4, !tbaa !34
  %129 = getelementptr inbounds float, ptr %116, i64 3
  %130 = load float, ptr %129, align 4, !tbaa !34
  %131 = call float @llvm.fmuladd.f32(float %114, float %128, float %130)
  store float %131, ptr %129, align 4, !tbaa !34
  %132 = fcmp ogt float %131, 1.000000e+00
  br i1 %132, label %133, label %134

133:                                              ; preds = %110
  store float 1.000000e+00, ptr %129, align 4, !tbaa !34
  br label %134

134:                                              ; preds = %107, %110, %133
  %135 = load ptr, ptr %60, align 8, !tbaa !146
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %57, !llvm.loop !147

137:                                              ; preds = %134
  %138 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !75
  %139 = sext i16 %138 to i32
  %140 = icmp slt i32 %72, %139
  br i1 %140, label %141, label %237

141:                                              ; preds = %137
  store float 0.000000e+00, ptr %26, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @renderspothalo(ptr noundef nonnull %4, ptr noundef nonnull %5, float noundef 1.000000e+00) #19
  br i1 %11, label %142, label %174

142:                                              ; preds = %141, %171
  %143 = phi i64 [ %172, %171 ], [ 0, %141 ]
  %144 = trunc i64 %143 to i32
  %145 = shl nuw i32 1, %144
  %146 = and i32 %145, %74
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %171

148:                                              ; preds = %142
  %149 = getelementptr inbounds [16 x ptr], ptr %3, i64 0, i64 %143
  %150 = load ptr, ptr %149, align 8, !tbaa !76
  %151 = getelementptr inbounds %struct.RenderLayer, ptr %150, i64 0, i32 11
  %152 = load ptr, ptr %151, align 8, !tbaa !97
  %153 = getelementptr inbounds float, ptr %152, i64 %56
  %154 = load float, ptr %5, align 16, !tbaa !34
  %155 = load float, ptr %153, align 4, !tbaa !34
  %156 = fadd float %154, %155
  store float %156, ptr %153, align 4, !tbaa !34
  %157 = load float, ptr %23, align 4, !tbaa !34
  %158 = getelementptr inbounds float, ptr %153, i64 1
  %159 = load float, ptr %158, align 4, !tbaa !34
  %160 = fadd float %157, %159
  store float %160, ptr %158, align 4, !tbaa !34
  %161 = load float, ptr %22, align 8, !tbaa !34
  %162 = getelementptr inbounds float, ptr %153, i64 2
  %163 = load float, ptr %162, align 4, !tbaa !34
  %164 = fadd float %161, %163
  store float %164, ptr %162, align 4, !tbaa !34
  %165 = load float, ptr %21, align 4, !tbaa !34
  %166 = getelementptr inbounds float, ptr %153, i64 3
  %167 = load float, ptr %166, align 4, !tbaa !34
  %168 = fadd float %165, %167
  store float %168, ptr %166, align 4, !tbaa !34
  %169 = fcmp ogt float %168, 1.000000e+00
  br i1 %169, label %170, label %171

170:                                              ; preds = %148
  store float 1.000000e+00, ptr %166, align 4, !tbaa !34
  br label %171

171:                                              ; preds = %142, %170, %148
  %172 = add nuw nsw i64 %143, 1
  %173 = icmp eq i64 %172, %29
  br i1 %173, label %237, label %142, !llvm.loop !148

174:                                              ; preds = %141
  %175 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !75
  %176 = sitofp i16 %175 to float
  %177 = sitofp i32 %72 to float
  %178 = fsub float %176, %177
  %179 = fdiv float %178, %176
  %180 = load ptr, ptr %25, align 8, !tbaa !97
  %181 = getelementptr inbounds float, ptr %180, i64 %56
  %182 = load float, ptr %5, align 16, !tbaa !34
  %183 = load float, ptr %181, align 4, !tbaa !34
  %184 = call float @llvm.fmuladd.f32(float %179, float %182, float %183)
  store float %184, ptr %181, align 4, !tbaa !34
  %185 = load float, ptr %23, align 4, !tbaa !34
  %186 = getelementptr inbounds float, ptr %181, i64 1
  %187 = load float, ptr %186, align 4, !tbaa !34
  %188 = call float @llvm.fmuladd.f32(float %179, float %185, float %187)
  store float %188, ptr %186, align 4, !tbaa !34
  %189 = load float, ptr %22, align 8, !tbaa !34
  %190 = getelementptr inbounds float, ptr %181, i64 2
  %191 = load float, ptr %190, align 4, !tbaa !34
  %192 = call float @llvm.fmuladd.f32(float %179, float %189, float %191)
  store float %192, ptr %190, align 4, !tbaa !34
  %193 = load float, ptr %21, align 4, !tbaa !34
  %194 = getelementptr inbounds float, ptr %181, i64 3
  %195 = load float, ptr %194, align 4, !tbaa !34
  %196 = call float @llvm.fmuladd.f32(float %179, float %193, float %195)
  store float %196, ptr %194, align 4, !tbaa !34
  %197 = fcmp ogt float %196, 1.000000e+00
  br i1 %197, label %198, label %237

198:                                              ; preds = %174
  store float 1.000000e+00, ptr %194, align 4, !tbaa !34
  br label %237

199:                                              ; preds = %49, %42
  %200 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %201 = and i32 %200, 8
  %202 = icmp eq i32 %201, 0
  %203 = load i32, ptr %46, align 4, !tbaa !118
  br i1 %202, label %205, label %204

204:                                              ; preds = %199
  call void @calc_renderco_ortho(ptr noundef nonnull %24, float noundef %47, float noundef %40, i32 noundef %203) #18
  br label %206

205:                                              ; preds = %199
  call void @calc_renderco_zbuf(ptr noundef nonnull %24, ptr noundef nonnull %20, i32 noundef %203) #18
  br label %206

206:                                              ; preds = %205, %204
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @renderspothalo(ptr noundef nonnull %4, ptr noundef nonnull %5, float noundef 1.000000e+00) #19
  br i1 %27, label %207, label %237

207:                                              ; preds = %206
  %208 = trunc i64 %43 to i32
  %209 = shl nsw i32 %208, 2
  %210 = sext i32 %209 to i64
  br label %211

211:                                              ; preds = %207, %211
  %212 = phi i64 [ 0, %207 ], [ %235, %211 ]
  %213 = getelementptr inbounds [16 x ptr], ptr %3, i64 0, i64 %212
  %214 = load ptr, ptr %213, align 8, !tbaa !76
  %215 = getelementptr inbounds %struct.RenderLayer, ptr %214, i64 0, i32 11
  %216 = load ptr, ptr %215, align 8, !tbaa !97
  %217 = getelementptr inbounds float, ptr %216, i64 %210
  %218 = load float, ptr %5, align 16, !tbaa !34
  %219 = load float, ptr %217, align 4, !tbaa !34
  %220 = fadd float %218, %219
  store float %220, ptr %217, align 4, !tbaa !34
  %221 = load float, ptr %23, align 4, !tbaa !34
  %222 = getelementptr inbounds float, ptr %217, i64 1
  %223 = load float, ptr %222, align 4, !tbaa !34
  %224 = fadd float %221, %223
  store float %224, ptr %222, align 4, !tbaa !34
  %225 = load float, ptr %22, align 8, !tbaa !34
  %226 = getelementptr inbounds float, ptr %217, i64 2
  %227 = load float, ptr %226, align 4, !tbaa !34
  %228 = fadd float %225, %227
  store float %228, ptr %226, align 4, !tbaa !34
  %229 = load float, ptr %21, align 4, !tbaa !34
  %230 = getelementptr inbounds float, ptr %217, i64 3
  %231 = load float, ptr %230, align 4, !tbaa !34
  %232 = fadd float %229, %231
  %233 = fcmp ogt float %232, 1.000000e+00
  %234 = select i1 %233, float 1.000000e+00, float %232
  store float %234, ptr %230, align 4, !tbaa !34
  %235 = add nuw nsw i64 %212, 1
  %236 = icmp eq i64 %235, %30
  br i1 %236, label %237, label %211, !llvm.loop !149

237:                                              ; preds = %171, %211, %206, %137, %174, %198
  %238 = getelementptr inbounds i64, ptr %44, i64 1
  %239 = select i1 %48, ptr null, ptr %238
  %240 = add nsw i32 %45, 1
  %241 = getelementptr inbounds i32, ptr %46, i64 1
  %242 = add i64 %43, 1
  %243 = load i32, ptr %19, align 4, !tbaa !127
  %244 = icmp slt i32 %240, %243
  br i1 %244, label %42, label %245, !llvm.loop !150

245:                                              ; preds = %237
  %246 = trunc i64 %242 to i32
  br label %247

247:                                              ; preds = %245, %31
  %248 = phi ptr [ %35, %31 ], [ %241, %245 ]
  %249 = phi ptr [ %33, %31 ], [ %239, %245 ]
  %250 = phi i32 [ %32, %31 ], [ %246, %245 ]
  %251 = and i32 %34, 1
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %258, label %253

253:                                              ; preds = %247
  %254 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !93
  %255 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !94
  %256 = call i32 %254(ptr noundef %255) #19
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %247, %253
  %259 = add nsw i32 %34, 1
  %260 = load i32, ptr %15, align 4, !tbaa !125
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %31, label %262, !llvm.loop !151

262:                                              ; preds = %258, %253, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 1472, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @halo_tile(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !PGOFuncName !152 {
  %3 = alloca [16 x ptr], align 16
  %4 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #20
  %5 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 1
  %8 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 3
  %11 = load i32, ptr %7, align 4, !tbaa.struct !153
  %12 = load i32, ptr %10, align 4, !tbaa.struct !154
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  %13 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !155
  %15 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 17
  %16 = load i16, ptr %15, align 4, !tbaa !124
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = sext i16 %16 to i32
  %20 = add nsw i32 %6, %19
  %21 = sub nsw i32 %11, %19
  %22 = add nsw i32 %9, %19
  %23 = sub nsw i32 %12, %19
  br label %24

24:                                               ; preds = %18, %2
  %25 = phi i32 [ %20, %18 ], [ %6, %2 ]
  %26 = phi i32 [ %21, %18 ], [ %11, %2 ]
  %27 = phi i32 [ %22, %18 ], [ %9, %2 ]
  %28 = phi i32 [ %23, %18 ], [ %12, %2 ]
  %29 = call i32 @get_sample_layers(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %3) #18
  %30 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 62), align 8, !tbaa !156
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %201

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %34 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 6
  %35 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 8
  %36 = icmp slt i32 %29, 1
  %37 = zext nneg i32 %29 to i64
  br label %43

38:                                               ; preds = %195
  %39 = add nuw nsw i64 %44, 1
  %40 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 62), align 8, !tbaa !156
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %43, label %201, !llvm.loop !157

43:                                               ; preds = %32, %38
  %44 = phi i64 [ 0, %32 ], [ %39, %38 ]
  %45 = phi ptr [ null, %32 ], [ %196, %38 ]
  %46 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 65), align 8, !tbaa !158
  %47 = getelementptr inbounds ptr, ptr %46, i64 %44
  %48 = load ptr, ptr %47, align 8, !tbaa !76
  %49 = getelementptr inbounds %struct.HaloRen, ptr %48, i64 0, i32 28
  %50 = load i32, ptr %49, align 8, !tbaa !159
  %51 = and i32 %50, %14
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %195, label %53

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.HaloRen, ptr %48, i64 0, i32 1
  %55 = load i16, ptr %54, align 2, !tbaa !161
  %56 = sext i16 %55 to i32
  %57 = icmp sgt i32 %27, %56
  br i1 %57, label %195, label %58

58:                                               ; preds = %53
  %59 = load i16, ptr %48, align 8, !tbaa !162
  %60 = sext i16 %59 to i32
  %61 = icmp slt i32 %28, %60
  br i1 %61, label %195, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.HaloRen, ptr %48, i64 0, i32 3
  %64 = load float, ptr %63, align 8, !tbaa !163
  %65 = getelementptr inbounds %struct.HaloRen, ptr %48, i64 0, i32 5
  %66 = load float, ptr %65, align 8, !tbaa !164
  %67 = fadd float %64, %66
  %68 = call float @llvm.ceil.f32(float %67)
  %69 = fptosi float %68 to i16
  %70 = sext i16 %69 to i32
  %71 = icmp sgt i32 %25, %70
  br i1 %71, label %195, label %72

72:                                               ; preds = %62
  %73 = fsub float %64, %66
  %74 = call float @llvm.floor.f32(float %73)
  %75 = fptosi float %74 to i16
  %76 = sext i16 %75 to i32
  %77 = icmp slt i32 %26, %76
  br i1 %77, label %195, label %78

78:                                               ; preds = %72
  %79 = call fastcc i32 @max_ii(i32 noundef %76, i32 noundef %25) #18, !range !165
  %80 = trunc i32 %79 to i16
  %81 = call fastcc i32 @max_ii(i32 noundef %60, i32 noundef %27) #18, !range !165
  %82 = call fastcc i32 @min_ii(i32 noundef %56, i32 noundef %28) #18, !range !166
  %83 = shl i32 %81, 16
  %84 = ashr exact i32 %83, 16
  %85 = shl i32 %82, 16
  %86 = ashr exact i32 %85, 16
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %195

88:                                               ; preds = %78
  %89 = call fastcc i32 @min_ii(i32 noundef %70, i32 noundef %26) #18, !range !166
  %90 = shl i32 %79, 16
  %91 = ashr exact i32 %90, 16
  %92 = sub nsw i32 %91, %6
  %93 = getelementptr inbounds %struct.HaloRen, ptr %48, i64 0, i32 4
  %94 = shl i32 %89, 16
  %95 = ashr exact i32 %94, 16
  %96 = icmp sgt i32 %94, %90
  %97 = getelementptr inbounds %struct.HaloRen, ptr %48, i64 0, i32 6
  %98 = getelementptr inbounds %struct.HaloRen, ptr %48, i64 0, i32 15
  %99 = getelementptr inbounds %struct.HaloRen, ptr %48, i64 0, i32 29
  %100 = getelementptr inbounds %struct.HaloRen, ptr %48, i64 0, i32 25
  %101 = getelementptr inbounds %struct.HaloRen, ptr %48, i64 0, i32 20
  %102 = sub i32 %91, %6
  %103 = sub i32 %84, %9
  br label %104

104:                                              ; preds = %88, %190
  %105 = phi i32 [ %103, %88 ], [ %193, %190 ]
  %106 = phi ptr [ %45, %88 ], [ %191, %190 ]
  %107 = phi i32 [ %84, %88 ], [ %192, %190 ]
  %108 = sub nsw i32 %107, %9
  %109 = load i32, ptr %33, align 8, !tbaa !79
  %110 = mul nsw i32 %109, %108
  %111 = add nsw i32 %110, %92
  %112 = sext i32 %111 to i64
  %113 = load ptr, ptr %35, align 8, !tbaa !87
  %114 = icmp eq ptr %113, null
  %115 = getelementptr inbounds i64, ptr %113, i64 %112
  %116 = select i1 %114, ptr %106, ptr %115
  %117 = sitofp i32 %107 to float
  %118 = load float, ptr %93, align 4, !tbaa !167
  %119 = fsub float %117, %118
  %120 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 24), align 8, !tbaa !168
  %121 = fmul float %119, %120
  %122 = fmul float %121, %121
  br i1 %96, label %123, label %190

123:                                              ; preds = %104
  %124 = load ptr, ptr %34, align 8, !tbaa !83
  %125 = getelementptr inbounds i32, ptr %124, i64 %112
  %126 = mul i32 %109, %105
  %127 = add i32 %102, %126
  %128 = zext i32 %127 to i64
  br label %129

129:                                              ; preds = %123, %181
  %130 = phi i64 [ %128, %123 ], [ %187, %181 ]
  %131 = phi i16 [ %80, %123 ], [ %185, %181 ]
  %132 = phi ptr [ %116, %123 ], [ %184, %181 ]
  %133 = phi ptr [ %125, %123 ], [ %186, %181 ]
  %134 = sitofp i16 %131 to float
  %135 = load float, ptr %63, align 8, !tbaa !163
  %136 = fsub float %134, %135
  %137 = fmul float %136, %136
  %138 = fadd float %122, %137
  %139 = load float, ptr %97, align 4, !tbaa !169
  %140 = fcmp olt float %138, %139
  br i1 %140, label %141, label %181

141:                                              ; preds = %129
  %142 = icmp eq ptr %132, null
  br i1 %142, label %149, label %143

143:                                              ; preds = %141
  %144 = load i64, ptr %132, align 8, !tbaa !129
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = inttoptr i64 %144 to ptr
  %148 = trunc i64 %130 to i32
  call fastcc void @halo_pixelstruct(ptr noundef nonnull %48, ptr noundef nonnull %3, i32 noundef %29, i32 noundef %148, float noundef %138, float noundef %136, float noundef %121, ptr noundef nonnull %147) #18
  br label %181

149:                                              ; preds = %143, %141
  %150 = load i32, ptr %133, align 4, !tbaa !118
  %151 = call fastcc i32 @calchalo_z(ptr noundef nonnull %48, i32 noundef %150) #18
  %152 = load i32, ptr %98, align 8, !tbaa !170
  %153 = icmp sgt i32 %151, %152
  br i1 %153, label %162, label %154

154:                                              ; preds = %149
  %155 = load ptr, ptr %99, align 8, !tbaa !171
  %156 = icmp eq ptr %155, null
  br i1 %156, label %181, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.Material, ptr %155, i64 0, i32 51
  %159 = load i32, ptr %158, align 4, !tbaa !172
  %160 = and i32 %159, 16
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %181, label %162

162:                                              ; preds = %157, %149
  %163 = load i16, ptr %100, align 4, !tbaa !176
  %164 = call i32 @shadeHaloFloat(ptr noundef nonnull %48, ptr noundef nonnull %4, i32 noundef %151, float noundef %138, float noundef %136, float noundef %121, i16 noundef signext %163) #19
  %165 = icmp eq i32 %164, 0
  %166 = select i1 %165, i1 true, i1 %36
  br i1 %166, label %181, label %167

167:                                              ; preds = %162
  %168 = trunc i64 %130 to i32
  %169 = shl nsw i32 %168, 2
  %170 = sext i32 %169 to i64
  br label %171

171:                                              ; preds = %167, %171
  %172 = phi i64 [ 0, %167 ], [ %179, %171 ]
  %173 = getelementptr inbounds [16 x ptr], ptr %3, i64 0, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !76
  %175 = getelementptr inbounds %struct.RenderLayer, ptr %174, i64 0, i32 11
  %176 = load ptr, ptr %175, align 8, !tbaa !97
  %177 = getelementptr inbounds float, ptr %176, i64 %170
  %178 = load i8, ptr %101, align 2, !tbaa !177
  call void @addalphaAddfacFloat(ptr noundef %177, ptr noundef nonnull %4, i8 noundef zeroext %178) #19
  %179 = add nuw nsw i64 %172, 1
  %180 = icmp eq i64 %179, %37
  br i1 %180, label %181, label %171, !llvm.loop !178

181:                                              ; preds = %171, %162, %146, %157, %154, %129
  %182 = icmp eq ptr %132, null
  %183 = getelementptr inbounds i64, ptr %132, i64 1
  %184 = select i1 %182, ptr null, ptr %183
  %185 = add i16 %131, 1
  %186 = getelementptr inbounds i32, ptr %133, i64 1
  %187 = add i64 %130, 1
  %188 = sext i16 %185 to i32
  %189 = icmp sgt i32 %95, %188
  br i1 %189, label %129, label %190, !llvm.loop !179

190:                                              ; preds = %181, %104
  %191 = phi ptr [ %116, %104 ], [ %184, %181 ]
  %192 = add nsw i32 %107, 1
  %193 = add i32 %105, 1
  %194 = icmp eq i32 %192, %86
  br i1 %194, label %195, label %104, !llvm.loop !180

195:                                              ; preds = %190, %78, %53, %62, %72, %58, %43
  %196 = phi ptr [ %45, %43 ], [ %45, %53 ], [ %45, %58 ], [ %45, %62 ], [ %45, %72 ], [ %45, %78 ], [ %191, %190 ]
  %197 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !93
  %198 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !94
  %199 = call i32 %197(ptr noundef %198) #19
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %38, label %201

201:                                              ; preds = %38, %195, %24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #20
  ret void
}

; Function Attrs: optsize
declare ptr @zbuffer_transp_shade(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_solid_mask(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !181 {
  %2 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  %4 = icmp eq ptr %3, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %7 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !79
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 1
  %11 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %12 = load i32, ptr %11, align 4, !tbaa !80
  %13 = sext i32 %12 to i64
  %14 = mul i64 %10, %13
  %15 = tail call ptr %6(i64 noundef %14, ptr noundef nonnull @.str.15) #19
  %16 = load i32, ptr %7, align 8, !tbaa !79
  %17 = load i32, ptr %11, align 4, !tbaa !80
  %18 = mul nsw i32 %17, %16
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %5, %41
  %21 = phi i32 [ %42, %41 ], [ %18, %5 ]
  %22 = phi ptr [ %44, %41 ], [ %15, %5 ]
  %23 = phi ptr [ %43, %41 ], [ %3, %5 ]
  %24 = load i64, ptr %23, align 8, !tbaa !129
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %20
  %27 = inttoptr i64 %24 to ptr
  %28 = getelementptr inbounds %struct.PixStr, ptr %27, i64 0, i32 5
  %29 = load i16, ptr %28, align 8, !tbaa !143
  store i16 %29, ptr %22, align 2, !tbaa !99
  %30 = load ptr, ptr %27, align 8, !tbaa !146
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %26, %32
  %33 = phi ptr [ %38, %32 ], [ %30, %26 ]
  %34 = phi i16 [ %37, %32 ], [ %29, %26 ]
  %35 = getelementptr inbounds %struct.PixStr, ptr %33, i64 0, i32 5
  %36 = load i16, ptr %35, align 8, !tbaa !143
  %37 = or i16 %36, %34
  store i16 %37, ptr %22, align 2, !tbaa !99
  %38 = load ptr, ptr %33, align 8, !tbaa !146
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %32, !llvm.loop !182

40:                                               ; preds = %20
  store i16 0, ptr %22, align 2, !tbaa !99
  br label %41

41:                                               ; preds = %32, %26, %40
  %42 = add nsw i32 %21, -1
  %43 = getelementptr inbounds i64, ptr %23, i64 1
  %44 = getelementptr inbounds i16, ptr %22, i64 1
  %45 = icmp sgt i32 %21, 1
  br i1 %45, label %20, label %46, !llvm.loop !183

46:                                               ; preds = %41, %5, %1
  %47 = phi ptr [ null, %1 ], [ %15, %5 ], [ %15, %41 ]
  ret ptr %47
}

; Function Attrs: optsize
declare void @addAlphaOverFloat(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @addAlphaOverFloatMask(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, i16 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !184 {
  %5 = and i16 %3, %2
  %6 = getelementptr inbounds float, ptr %1, i64 3
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fsub float 1.000000e+00, %7
  %9 = icmp eq i16 %5, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %4
  %11 = icmp eq i16 %5, %2
  br i1 %11, label %44, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @count_mask(i16 noundef zeroext %5) #18, !range !144
  %14 = sitofp i32 %13 to float
  %15 = or i16 %3, %2
  %16 = tail call i32 @count_mask(i16 noundef zeroext %15) #18, !range !144
  %17 = sitofp i32 %16 to float
  %18 = fsub float %17, %14
  %19 = fdiv float %18, %17
  %20 = fsub float 1.000000e+00, %19
  %21 = tail call float @llvm.fmuladd.f32(float %20, float %8, float %19)
  br label %44

22:                                               ; preds = %4
  %23 = icmp ne i16 %2, 0
  %24 = icmp ne i16 %3, 0
  %25 = and i1 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = load float, ptr %1, align 4, !tbaa !34
  %28 = load float, ptr %0, align 4, !tbaa !34
  %29 = fadd float %27, %28
  store float %29, ptr %0, align 4, !tbaa !34
  %30 = getelementptr inbounds float, ptr %1, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = getelementptr inbounds float, ptr %0, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = fadd float %31, %33
  store float %34, ptr %32, align 4, !tbaa !34
  %35 = getelementptr inbounds float, ptr %1, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = getelementptr inbounds float, ptr %0, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = fadd float %36, %38
  store float %39, ptr %37, align 4, !tbaa !34
  %40 = load float, ptr %6, align 4, !tbaa !34
  %41 = getelementptr inbounds float, ptr %0, i64 3
  %42 = load float, ptr %41, align 4, !tbaa !34
  %43 = fadd float %40, %42
  store float %43, ptr %41, align 4, !tbaa !34
  br label %63

44:                                               ; preds = %22, %10, %12
  %45 = phi float [ %21, %12 ], [ %8, %10 ], [ %8, %22 ]
  %46 = load float, ptr %0, align 4, !tbaa !34
  %47 = load float, ptr %1, align 4, !tbaa !34
  %48 = tail call float @llvm.fmuladd.f32(float %45, float %46, float %47)
  store float %48, ptr %0, align 4, !tbaa !34
  %49 = getelementptr inbounds float, ptr %0, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !34
  %51 = getelementptr inbounds float, ptr %1, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = tail call float @llvm.fmuladd.f32(float %45, float %50, float %52)
  store float %53, ptr %49, align 4, !tbaa !34
  %54 = getelementptr inbounds float, ptr %0, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !34
  %56 = getelementptr inbounds float, ptr %1, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !34
  %58 = tail call float @llvm.fmuladd.f32(float %45, float %55, float %57)
  store float %58, ptr %54, align 4, !tbaa !34
  %59 = getelementptr inbounds float, ptr %0, i64 3
  %60 = load float, ptr %59, align 4, !tbaa !34
  %61 = load float, ptr %6, align 4, !tbaa !34
  %62 = tail call float @llvm.fmuladd.f32(float %45, float %60, float %61)
  store float %62, ptr %59, align 4, !tbaa !34
  br label %63

63:                                               ; preds = %44, %26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @atm_tile(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !PGOFuncName !185 {
  %3 = alloca [16 x ptr], align 16
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #20
  %6 = call i32 @get_sample_layers(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #18
  %7 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !83
  %9 = icmp eq ptr %8, null
  br i1 %9, label %168, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 18
  br label %12

12:                                               ; preds = %16, %10
  %13 = phi ptr [ %11, %10 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !76
  %15 = icmp eq ptr %14, null
  br i1 %15, label %168, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.RenderPass, ptr %14, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !186
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %12, !llvm.loop !188

20:                                               ; preds = %16
  %21 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), align 8, !tbaa !76
  %22 = icmp eq ptr %21, null
  br i1 %22, label %168, label %23

23:                                               ; preds = %20, %38
  %24 = phi ptr [ %39, %38 ], [ %21, %20 ]
  %25 = getelementptr inbounds %struct.GroupObject, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !189
  %27 = getelementptr inbounds %struct.LampRen, ptr %26, i64 0, i32 6
  %28 = load i16, ptr %27, align 8, !tbaa !191
  %29 = icmp eq i16 %28, 1
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.LampRen, ptr %26, i64 0, i32 56
  %32 = load ptr, ptr %31, align 8, !tbaa !193
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i16, ptr %32, align 4, !tbaa !194
  %36 = and i16 %35, 2
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %23, %30, %34
  %39 = load ptr, ptr %24, align 8, !tbaa !76
  %40 = icmp eq ptr %39, null
  br i1 %40, label %168, label %23, !llvm.loop !196

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13
  %43 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !122
  %45 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 3
  %46 = load i32, ptr %45, align 4, !tbaa !125
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %168

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 1
  %50 = icmp sgt i32 %6, 0
  %51 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %52 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %53 = load i32, ptr %49, align 4, !tbaa !127
  %54 = zext nneg i32 %6 to i64
  br label %55

55:                                               ; preds = %48, %161
  %56 = phi i32 [ %46, %48 ], [ %162, %161 ]
  %57 = phi i32 [ %53, %48 ], [ %163, %161 ]
  %58 = phi i32 [ %53, %48 ], [ %164, %161 ]
  %59 = phi i32 [ 0, %48 ], [ %165, %161 ]
  %60 = phi i32 [ %44, %48 ], [ %166, %161 ]
  %61 = load i32, ptr %42, align 8, !tbaa !126
  %62 = icmp slt i32 %61, %58
  br i1 %62, label %63, label %161

63:                                               ; preds = %55
  %64 = sitofp i32 %60 to float
  %65 = sext i32 %59 to i64
  br label %66

66:                                               ; preds = %63, %153
  %67 = phi i32 [ %57, %63 ], [ %154, %153 ]
  %68 = phi i64 [ %65, %63 ], [ %156, %153 ]
  %69 = phi i32 [ %61, %63 ], [ %155, %153 ]
  br i1 %50, label %70, label %153

70:                                               ; preds = %66
  %71 = trunc i64 %68 to i32
  %72 = shl nsw i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = sitofp i32 %69 to float
  br label %75

75:                                               ; preds = %70, %148
  %76 = phi i64 [ 0, %70 ], [ %149, %148 ]
  %77 = getelementptr inbounds [16 x ptr], ptr %3, i64 0, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !76
  %79 = call ptr @RE_RenderLayerGetPass(ptr noundef %78, i32 noundef 2) #19
  %80 = getelementptr inbounds float, ptr %79, i64 %68
  %81 = getelementptr inbounds %struct.RenderLayer, ptr %78, i64 0, i32 11
  %82 = load ptr, ptr %81, align 8, !tbaa !97
  %83 = getelementptr inbounds float, ptr %82, i64 %73
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  %84 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), align 8, !tbaa !76
  %85 = icmp eq ptr %84, null
  br i1 %85, label %148, label %86

86:                                               ; preds = %75
  %87 = getelementptr inbounds float, ptr %83, i64 3
  br label %88

88:                                               ; preds = %86, %141
  %89 = phi ptr [ %84, %86 ], [ %143, %141 ]
  %90 = phi i8 [ 0, %86 ], [ %142, %141 ]
  %91 = getelementptr inbounds %struct.GroupObject, ptr %89, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !189
  %93 = getelementptr inbounds %struct.LampRen, ptr %92, i64 0, i32 6
  %94 = load i16, ptr %93, align 8, !tbaa !191
  %95 = icmp eq i16 %94, 1
  br i1 %95, label %96, label %141

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.LampRen, ptr %92, i64 0, i32 56
  %98 = load ptr, ptr %97, align 8, !tbaa !193
  %99 = icmp eq ptr %98, null
  br i1 %99, label %141, label %100

100:                                              ; preds = %96
  %101 = load float, ptr %80, align 4, !tbaa !34
  %102 = fcmp ult float %101, 0x42370CDC20000000
  br i1 %102, label %103, label %141

103:                                              ; preds = %100
  %104 = load float, ptr %87, align 4, !tbaa !34
  %105 = fcmp oeq float %104, 0.000000e+00
  br i1 %105, label %141, label %106

106:                                              ; preds = %103
  %107 = load i16, ptr %98, align 4, !tbaa !194
  %108 = and i16 %107, 2
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %141, label %110

110:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  %111 = getelementptr inbounds %struct.GroupObject, ptr %89, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !197
  %113 = getelementptr inbounds %struct.Object, ptr %112, i64 0, i32 47, i64 2, i64 2
  %114 = load float, ptr %113, align 8, !tbaa !34
  %115 = fcmp olt float %114, 0.000000e+00
  br i1 %115, label %139, label %116

116:                                              ; preds = %110
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %83) #18
  %117 = load float, ptr %87, align 4, !tbaa !34
  %118 = fcmp une float %117, 1.000000e+00
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = fdiv float 1.000000e+00, %117
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %120) #18
  br label %121

121:                                              ; preds = %119, %116
  %122 = load ptr, ptr %97, align 8, !tbaa !193
  %123 = load float, ptr %80, align 4, !tbaa !34
  call void @shadeAtmPixel(ptr noundef %122, ptr noundef nonnull %5, float noundef %74, float noundef %64, float noundef %123) #19
  %124 = load float, ptr %87, align 4, !tbaa !34
  %125 = fcmp une float %124, 1.000000e+00
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %124) #18
  br label %127

127:                                              ; preds = %126, %121
  %128 = icmp eq i8 %90, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %127
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  br label %139

130:                                              ; preds = %127
  %131 = load <2 x float>, ptr %4, align 8, !tbaa !34
  %132 = load <2 x float>, ptr %5, align 8, !tbaa !34
  %133 = fmul <2 x float> %132, <float 5.000000e-01, float 5.000000e-01>
  %134 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %131, <2 x float> <float 5.000000e-01, float 5.000000e-01>, <2 x float> %133)
  store <2 x float> %134, ptr %4, align 8, !tbaa !34
  %135 = load float, ptr %51, align 8, !tbaa !34
  %136 = load float, ptr %52, align 8, !tbaa !34
  %137 = fmul float %136, 5.000000e-01
  %138 = call float @llvm.fmuladd.f32(float %135, float 5.000000e-01, float %137)
  store float %138, ptr %51, align 8, !tbaa !34
  br label %139

139:                                              ; preds = %129, %130, %110
  %140 = phi i8 [ %90, %110 ], [ 1, %129 ], [ %90, %130 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  br label %141

141:                                              ; preds = %139, %88, %96, %106, %100, %103
  %142 = phi i8 [ %90, %100 ], [ %90, %103 ], [ %140, %139 ], [ %90, %106 ], [ %90, %96 ], [ %90, %88 ]
  %143 = load ptr, ptr %89, align 8, !tbaa !76
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %88, !llvm.loop !198

145:                                              ; preds = %141
  %146 = icmp eq i8 %142, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %145
  call fastcc void @copy_v3_v3(ptr noundef %83, ptr noundef nonnull %4) #18
  br label %148

148:                                              ; preds = %75, %147, %145
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  %149 = add nuw nsw i64 %76, 1
  %150 = icmp eq i64 %149, %54
  br i1 %150, label %151, label %75, !llvm.loop !199

151:                                              ; preds = %148
  %152 = load i32, ptr %49, align 4, !tbaa !127
  br label %153

153:                                              ; preds = %151, %66
  %154 = phi i32 [ %152, %151 ], [ %67, %66 ]
  %155 = add nsw i32 %69, 1
  %156 = add nsw i64 %68, 1
  %157 = icmp slt i32 %155, %154
  br i1 %157, label %66, label %158, !llvm.loop !200

158:                                              ; preds = %153
  %159 = trunc i64 %156 to i32
  %160 = load i32, ptr %45, align 4, !tbaa !125
  br label %161

161:                                              ; preds = %158, %55
  %162 = phi i32 [ %56, %55 ], [ %160, %158 ]
  %163 = phi i32 [ %57, %55 ], [ %154, %158 ]
  %164 = phi i32 [ %58, %55 ], [ %154, %158 ]
  %165 = phi i32 [ %59, %55 ], [ %159, %158 ]
  %166 = add nsw i32 %60, 1
  %167 = icmp slt i32 %166, %162
  br i1 %167, label %55, label %168, !llvm.loop !201

168:                                              ; preds = %12, %38, %161, %20, %41, %2
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sky_tile(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !PGOFuncName !202 {
  %3 = alloca [16 x ptr], align 16
  %4 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #20
  %5 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 53), align 8, !tbaa !203
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %84

7:                                                ; preds = %2
  %8 = call i32 @get_sample_layers(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #18
  %9 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13
  %10 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !122
  %12 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !125
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %84

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 1
  %17 = icmp sgt i32 %8, 0
  %18 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 20
  %19 = zext nneg i32 %8 to i64
  br label %20

20:                                               ; preds = %15, %80
  %21 = phi i32 [ %11, %15 ], [ %81, %80 ]
  %22 = phi i32 [ 0, %15 ], [ %72, %80 ]
  %23 = load i32, ptr %9, align 8, !tbaa !126
  %24 = load i32, ptr %16, align 4, !tbaa !127
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %71

26:                                               ; preds = %20
  %27 = sitofp i32 %21 to float
  %28 = sext i32 %22 to i64
  br label %29

29:                                               ; preds = %26, %64
  %30 = phi i32 [ %24, %26 ], [ %65, %64 ]
  %31 = phi i64 [ %28, %26 ], [ %67, %64 ]
  %32 = phi i32 [ %23, %26 ], [ %66, %64 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  br i1 %17, label %33, label %64

33:                                               ; preds = %29
  %34 = sitofp i32 %32 to float
  br label %35

35:                                               ; preds = %33, %58
  %36 = phi i64 [ 0, %33 ], [ %60, %58 ]
  %37 = phi i8 [ 0, %33 ], [ %59, %58 ]
  %38 = getelementptr inbounds [16 x ptr], ptr %3, i64 0, i64 %36
  %39 = load ptr, ptr %38, align 8, !tbaa !76
  %40 = getelementptr inbounds %struct.RenderLayer, ptr %39, i64 0, i32 11
  %41 = load ptr, ptr %40, align 8, !tbaa !97
  %42 = getelementptr inbounds float, ptr %41, i64 %31
  %43 = getelementptr inbounds float, ptr %42, i64 3
  %44 = load float, ptr %43, align 4, !tbaa !34
  %45 = fcmp olt float %44, 1.000000e+00
  br i1 %45, label %46, label %58

46:                                               ; preds = %35
  %47 = icmp eq i8 %37, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i16, ptr %18, align 2, !tbaa !128
  call void @shadeSkyPixel(ptr noundef nonnull %4, float noundef %34, float noundef %27, i16 noundef signext %49) #19
  %50 = load float, ptr %43, align 4, !tbaa !34
  br label %51

51:                                               ; preds = %48, %46
  %52 = phi float [ %50, %48 ], [ %44, %46 ]
  %53 = phi i8 [ 1, %48 ], [ %37, %46 ]
  %54 = fcmp oeq float %52, 0.000000e+00
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  call fastcc void @copy_v4_v4(ptr noundef nonnull %42, ptr noundef nonnull %4) #18
  br label %57

56:                                               ; preds = %51
  call void @addAlphaUnderFloat(ptr noundef nonnull %42, ptr noundef nonnull %4) #19
  br label %57

57:                                               ; preds = %56, %55
  store float 1.000000e+00, ptr %43, align 4, !tbaa !34
  br label %58

58:                                               ; preds = %57, %35
  %59 = phi i8 [ %37, %35 ], [ %53, %57 ]
  %60 = add nuw nsw i64 %36, 1
  %61 = icmp eq i64 %60, %19
  br i1 %61, label %62, label %35, !llvm.loop !204

62:                                               ; preds = %58
  %63 = load i32, ptr %16, align 4, !tbaa !127
  br label %64

64:                                               ; preds = %62, %29
  %65 = phi i32 [ %63, %62 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  %66 = add nsw i32 %32, 1
  %67 = add nsw i64 %31, 4
  %68 = icmp slt i32 %66, %65
  br i1 %68, label %29, label %69, !llvm.loop !205

69:                                               ; preds = %64
  %70 = trunc i64 %67 to i32
  br label %71

71:                                               ; preds = %69, %20
  %72 = phi i32 [ %22, %20 ], [ %70, %69 ]
  %73 = and i32 %21, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !93
  %77 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !94
  %78 = call i32 %76(ptr noundef %77) #19
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %71, %75
  %81 = add nsw i32 %21, 1
  %82 = load i32, ptr %12, align 4, !tbaa !125
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %20, label %84, !llvm.loop !206

84:                                               ; preds = %75, %80, %7, %2
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edge_enhance_add(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #6 !PGOFuncName !207 {
  %4 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  %5 = icmp eq ptr %2, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !79
  %9 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %10 = load i32, ptr %9, align 4, !tbaa !80
  %11 = mul nsw i32 %10, %8
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %6
  %14 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  %15 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  br label %16

16:                                               ; preds = %13, %29
  %17 = phi i32 [ %11, %13 ], [ %30, %29 ]
  %18 = phi ptr [ %2, %13 ], [ %31, %29 ]
  %19 = phi ptr [ %1, %13 ], [ %32, %29 ]
  %20 = load float, ptr %18, align 4, !tbaa !34
  %21 = fcmp une float %20, 0.000000e+00
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load <2 x float>, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 17), align 4, !tbaa !34
  %24 = insertelement <2 x float> poison, float %20, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = fmul <2 x float> %25, %23
  store <2 x float> %26, ptr %4, align 16, !tbaa !34
  %27 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 19), align 4, !tbaa !208
  %28 = fmul float %20, %27
  store float %28, ptr %14, align 8, !tbaa !34
  store float %20, ptr %15, align 4, !tbaa !34
  call void @addAlphaOverFloat(ptr noundef %19, ptr noundef nonnull %4) #19
  br label %29

29:                                               ; preds = %16, %22
  %30 = add nsw i32 %17, -1
  %31 = getelementptr inbounds float, ptr %18, i64 1
  %32 = getelementptr inbounds float, ptr %19, i64 4
  %33 = icmp sgt i32 %17, 1
  br i1 %33, label %16, label %34, !llvm.loop !209

34:                                               ; preds = %29, %6, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reset_sky_speed(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !PGOFuncName !210 {
  %3 = alloca [16 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #20
  %4 = call i32 @get_sample_layers(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #18
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %57

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %8 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %9 = zext nneg i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %54
  %11 = phi i64 [ 0, %6 ], [ %55, %54 ]
  %12 = getelementptr inbounds [16 x ptr], ptr %3, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  %14 = tail call ptr @RE_RenderLayerGetPass(ptr noundef %13, i32 noundef 512) #19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %57, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr %7, align 8, !tbaa !79
  %18 = shl nsw i32 %17, 2
  %19 = load i32, ptr %8, align 4, !tbaa !80
  %20 = mul nsw i32 %18, %19
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %16
  %23 = zext nneg i32 %20 to i64
  %24 = getelementptr float, ptr %14, i64 -4
  %25 = getelementptr float, ptr %14, i64 -1
  %26 = getelementptr float, ptr %14, i64 -2
  %27 = getelementptr float, ptr %14, i64 -3
  %28 = getelementptr float, ptr %14, i64 -4
  br label %29

29:                                               ; preds = %51, %22
  %30 = phi i64 [ 0, %22 ], [ %52, %51 ]
  %31 = sub i64 %23, %30
  %32 = getelementptr float, ptr %24, i64 %31
  %33 = load <4 x float>, ptr %32, align 4, !tbaa !34
  %34 = shufflevector <4 x float> %33, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %35 = fcmp oeq <4 x float> %34, <float 1.000000e+04, float 1.000000e+04, float 1.000000e+04, float 1.000000e+04>
  %36 = extractelement <4 x i1> %35, i64 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = getelementptr float, ptr %25, i64 %31
  store float 0.000000e+00, ptr %38, align 4, !tbaa !34
  br label %39

39:                                               ; preds = %37, %29
  %40 = extractelement <4 x i1> %35, i64 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = getelementptr float, ptr %26, i64 %31
  store float 0.000000e+00, ptr %42, align 4, !tbaa !34
  br label %43

43:                                               ; preds = %41, %39
  %44 = extractelement <4 x i1> %35, i64 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %43
  %46 = getelementptr float, ptr %27, i64 %31
  store float 0.000000e+00, ptr %46, align 4, !tbaa !34
  br label %47

47:                                               ; preds = %45, %43
  %48 = extractelement <4 x i1> %35, i64 3
  br i1 %48, label %49, label %51

49:                                               ; preds = %47
  %50 = getelementptr float, ptr %28, i64 %31
  store float 0.000000e+00, ptr %50, align 4, !tbaa !34
  br label %51

51:                                               ; preds = %49, %47
  %52 = add nuw i64 %30, 4
  %53 = icmp eq i64 %52, %23
  br i1 %53, label %54, label %29, !llvm.loop !211

54:                                               ; preds = %51, %16
  %55 = add nuw nsw i64 %11, 1
  %56 = icmp eq i64 %55, %9
  br i1 %56, label %57, label %10, !llvm.loop !214

57:                                               ; preds = %54, %10, %2
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clamp_alpha_rgb_range(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !PGOFuncName !215 {
  %3 = alloca [16 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #20
  %4 = call i32 @get_sample_layers(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #18
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %38

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !79
  %9 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %10 = load i32, ptr %9, align 4, !tbaa !80
  %11 = mul nsw i32 %10, %8
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %6
  %14 = load ptr, ptr %3, align 16, !tbaa !76
  %15 = getelementptr inbounds %struct.RenderLayer, ptr %14, i64 0, i32 11
  %16 = load ptr, ptr %15, align 8, !tbaa !97
  br label %17

17:                                               ; preds = %13, %34
  %18 = phi ptr [ %36, %34 ], [ %16, %13 ]
  %19 = phi i32 [ %35, %34 ], [ %11, %13 ]
  %20 = load <2 x float>, ptr %18, align 4, !tbaa !34
  %21 = fcmp ogt <2 x float> %20, zeroinitializer
  %22 = select <2 x i1> %21, <2 x float> %20, <2 x float> zeroinitializer
  store <2 x float> %22, ptr %18, align 4, !tbaa !34
  %23 = getelementptr inbounds float, ptr %18, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fcmp ogt float %24, 0.000000e+00
  %26 = select i1 %25, float %24, float 0.000000e+00
  store float %26, ptr %23, align 4, !tbaa !34
  %27 = getelementptr inbounds float, ptr %18, i64 3
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = fcmp olt float %28, 0.000000e+00
  br i1 %29, label %32, label %30

30:                                               ; preds = %17
  %31 = fcmp ogt float %28, 1.000000e+00
  br i1 %31, label %32, label %34

32:                                               ; preds = %30, %17
  %33 = phi float [ 0.000000e+00, %17 ], [ 1.000000e+00, %30 ]
  store float %33, ptr %27, align 4, !tbaa !34
  br label %34

34:                                               ; preds = %32, %30
  %35 = add nsw i32 %19, -1
  %36 = getelementptr inbounds float, ptr %18, i64 4
  %37 = icmp sgt i32 %19, 1
  br i1 %37, label %17, label %38, !llvm.loop !216

38:                                               ; preds = %34, %6, %2
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @freeps(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !217 {
  %2 = load ptr, ptr %0, align 8, !tbaa !218
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1, %12
  %5 = phi ptr [ %6, %12 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !219
  %7 = getelementptr inbounds %struct.PixStrMain, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  tail call void %11(ptr noundef nonnull %8) #19
  br label %12

12:                                               ; preds = %10, %4
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  tail call void %13(ptr noundef nonnull %5) #19
  %14 = icmp eq ptr %6, null
  br i1 %14, label %15, label %4, !llvm.loop !220

15:                                               ; preds = %12, %1
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: optsize
declare ptr @render_get_active_layer(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @zbufshade_tile(ptr noundef %0) local_unnamed_addr #6 {
  %2 = alloca %struct.ShadeSample, align 8
  %3 = alloca %struct.PixStr, align 8
  call void @llvm.lifetime.start.p0(i64 27080, ptr nonnull %2) #20
  %4 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  store ptr null, ptr %3, align 8, !tbaa !146
  %6 = getelementptr inbounds %struct.PixStr, ptr %3, i64 0, i32 5
  store i16 -1, ptr %6, align 8, !tbaa !143
  %7 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %8 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %9 = load i32, ptr %8, align 8, !tbaa !79
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 2
  %12 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %13 = load i32, ptr %12, align 4, !tbaa !80
  %14 = sext i32 %13 to i64
  %15 = mul i64 %11, %14
  %16 = tail call ptr %7(i64 noundef %15, ptr noundef nonnull @.str) #19
  %17 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 4
  store ptr %16, ptr %17, align 8, !tbaa !81
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %19 = load i32, ptr %8, align 8, !tbaa !79
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 2
  %22 = load i32, ptr %12, align 4, !tbaa !80
  %23 = sext i32 %22 to i64
  %24 = mul i64 %21, %23
  %25 = tail call ptr %18(i64 noundef %24, ptr noundef nonnull @.str.1) #19
  %26 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 5
  store ptr %25, ptr %26, align 8, !tbaa !82
  %27 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %28 = load i32, ptr %8, align 8, !tbaa !79
  %29 = sext i32 %28 to i64
  %30 = shl nsw i64 %29, 2
  %31 = load i32, ptr %12, align 4, !tbaa !80
  %32 = sext i32 %31 to i64
  %33 = mul i64 %30, %32
  %34 = tail call ptr %27(i64 noundef %33, ptr noundef nonnull @.str.2) #19
  %35 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 6
  store ptr %34, ptr %35, align 8, !tbaa !83
  %36 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 12
  %37 = load ptr, ptr %36, align 8, !tbaa !76
  %38 = icmp eq ptr %37, null
  br i1 %38, label %284, label %39

39:                                               ; preds = %1
  %40 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 7
  %41 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 13, i32 2
  %42 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 14
  %43 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13
  %44 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 2
  %45 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 3
  %46 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 1
  %47 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 20
  %48 = getelementptr inbounds %struct.PixStr, ptr %3, i64 0, i32 1
  %49 = getelementptr inbounds %struct.PixStr, ptr %3, i64 0, i32 2
  %50 = getelementptr inbounds %struct.PixStr, ptr %3, i64 0, i32 3
  %51 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2
  %52 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 3
  %53 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 13, i32 3
  br label %54

54:                                               ; preds = %39, %281
  %55 = phi ptr [ %37, %39 ], [ %282, %281 ]
  %56 = getelementptr inbounds %struct.RenderLayer, ptr %55, i64 0, i32 6
  %57 = load i32, ptr %56, align 8, !tbaa !84
  %58 = and i32 %57, 786432
  %59 = icmp eq i32 %58, 786432
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %62 = load i32, ptr %8, align 8, !tbaa !79
  %63 = sext i32 %62 to i64
  %64 = shl nsw i64 %63, 2
  %65 = load i32, ptr %12, align 4, !tbaa !80
  %66 = sext i32 %65 to i64
  %67 = mul i64 %64, %66
  %68 = call ptr %61(i64 noundef %67, ptr noundef nonnull @.str.3) #19
  store ptr %68, ptr %40, align 8, !tbaa !86
  br label %69

69:                                               ; preds = %60, %54
  call void @shade_sample_initialize(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %55) #19
  call void @zbuffer_solid(ptr noundef nonnull %0, ptr noundef nonnull %55, ptr noundef null, ptr noundef null) #19
  %70 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !93
  %71 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !94
  %72 = call i32 %70(ptr noundef %71) #19
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %182

74:                                               ; preds = %69
  %75 = load i32, ptr %56, align 8, !tbaa !84
  %76 = and i32 %75, 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %74
  %79 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %80 = and i32 %79, 32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %84 = load i32, ptr %8, align 8, !tbaa !79
  %85 = sext i32 %84 to i64
  %86 = shl nsw i64 %85, 2
  %87 = load i32, ptr %12, align 4, !tbaa !80
  %88 = sext i32 %87 to i64
  %89 = mul i64 %86, %88
  %90 = call ptr %83(i64 noundef %89, ptr noundef nonnull @.str.5) #19
  %91 = load ptr, ptr %35, align 8, !tbaa !83
  call fastcc void @edge_enhance_tile(ptr noundef nonnull %0, ptr noundef %90, ptr noundef %91) #18
  br label %92

92:                                               ; preds = %78, %82, %74
  %93 = phi ptr [ %90, %82 ], [ null, %78 ], [ null, %74 ]
  store volatile i32 0, ptr %41, align 8, !tbaa !106
  store ptr %55, ptr %42, align 8, !tbaa !107
  %94 = load i32, ptr %56, align 8, !tbaa !84
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %181, label %97

97:                                               ; preds = %92
  %98 = load ptr, ptr %17, align 8, !tbaa !81
  %99 = load ptr, ptr %26, align 8, !tbaa !82
  %100 = load ptr, ptr %35, align 8, !tbaa !83
  %101 = load i32, ptr %8, align 8, !tbaa !79
  %102 = load i32, ptr %44, align 8, !tbaa !122
  %103 = mul nsw i32 %102, %101
  %104 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %105 = and i32 %104, 2
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %97
  call void @ISB_create(ptr noundef nonnull %0, ptr noundef null) #19
  br label %108

108:                                              ; preds = %107, %97
  %109 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 56), align 8, !tbaa !123
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  call void @cache_occ_samples(ptr noundef nonnull @R, ptr noundef nonnull %0, ptr noundef nonnull %2) #19
  br label %112

112:                                              ; preds = %111, %108
  %113 = load i32, ptr %44, align 8, !tbaa !122
  %114 = load i32, ptr %45, align 4, !tbaa !125
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %172

116:                                              ; preds = %112, %166
  %117 = phi i32 [ %158, %166 ], [ %103, %112 ]
  %118 = phi i32 [ %157, %166 ], [ 0, %112 ]
  %119 = phi i32 [ %167, %166 ], [ %113, %112 ]
  %120 = phi ptr [ %156, %166 ], [ %100, %112 ]
  %121 = phi ptr [ %155, %166 ], [ %99, %112 ]
  %122 = phi ptr [ %154, %166 ], [ %98, %112 ]
  %123 = load i32, ptr %43, align 8, !tbaa !126
  %124 = load i32, ptr %46, align 4, !tbaa !127
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %153

126:                                              ; preds = %116, %145
  %127 = phi i32 [ %135, %145 ], [ %117, %116 ]
  %128 = phi i32 [ %150, %145 ], [ %118, %116 ]
  %129 = phi i32 [ %146, %145 ], [ %123, %116 ]
  %130 = phi ptr [ %148, %145 ], [ %120, %116 ]
  %131 = phi ptr [ %149, %145 ], [ %121, %116 ]
  %132 = phi ptr [ %147, %145 ], [ %122, %116 ]
  %133 = load i16, ptr %47, align 2, !tbaa !128
  %134 = sext i16 %133 to i32
  %135 = add nsw i32 %127, 1
  call void @BLI_thread_srandom(i32 noundef %134, i32 noundef %127) #19
  %136 = load i32, ptr %131, align 4, !tbaa !118
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %126
  %139 = load i32, ptr %132, align 4, !tbaa !118
  store i32 %139, ptr %48, align 8, !tbaa !221
  %140 = load i32, ptr %131, align 4, !tbaa !118
  store i32 %140, ptr %49, align 4, !tbaa !222
  %141 = load i32, ptr %130, align 4, !tbaa !118
  store i32 %141, ptr %50, align 8, !tbaa !141
  %142 = call i32 @shade_samples(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef %129, i32 noundef %119) #19
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %138
  call fastcc void @add_passes(ptr noundef nonnull %55, i32 noundef %128, ptr noundef nonnull %51, ptr noundef nonnull %52) #18
  br label %145

145:                                              ; preds = %126, %144, %138
  %146 = add nsw i32 %129, 1
  %147 = getelementptr inbounds i32, ptr %132, i64 1
  %148 = getelementptr inbounds i32, ptr %130, i64 1
  %149 = getelementptr inbounds i32, ptr %131, i64 1
  %150 = add nsw i32 %128, 1
  %151 = load i32, ptr %46, align 4, !tbaa !127
  %152 = icmp slt i32 %146, %151
  br i1 %152, label %126, label %153, !llvm.loop !223

153:                                              ; preds = %145, %116
  %154 = phi ptr [ %122, %116 ], [ %147, %145 ]
  %155 = phi ptr [ %121, %116 ], [ %149, %145 ]
  %156 = phi ptr [ %120, %116 ], [ %148, %145 ]
  %157 = phi i32 [ %118, %116 ], [ %150, %145 ]
  %158 = phi i32 [ %117, %116 ], [ %135, %145 ]
  %159 = and i32 %119, 1
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %153
  %162 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !93
  %163 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !94
  %164 = call i32 %162(ptr noundef %163) #19
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %153, %161
  %167 = add nsw i32 %119, 1
  %168 = load volatile i32, ptr %53, align 4, !tbaa !104
  %169 = add nsw i32 %168, 1
  store volatile i32 %169, ptr %53, align 4, !tbaa !104
  %170 = load i32, ptr %45, align 4, !tbaa !125
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %116, label %172, !llvm.loop !224

172:                                              ; preds = %166, %161, %112
  %173 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 56), align 8, !tbaa !123
  %174 = icmp eq ptr %173, null
  br i1 %174, label %176, label %175

175:                                              ; preds = %172
  call void @free_occ_samples(ptr noundef nonnull @R, ptr noundef nonnull %0) #19
  br label %176

176:                                              ; preds = %175, %172
  %177 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %178 = and i32 %177, 2
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %176
  call void @ISB_free(ptr noundef nonnull %0) #19
  br label %181

181:                                              ; preds = %176, %180, %92
  store ptr null, ptr %42, align 8, !tbaa !107
  br label %182

182:                                              ; preds = %181, %69
  %183 = phi ptr [ null, %69 ], [ %93, %181 ]
  %184 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !96
  %185 = and i16 %184, 8
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %193, label %187

187:                                              ; preds = %182
  %188 = load i32, ptr %56, align 8, !tbaa !84
  %189 = and i32 %188, 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %187
  call fastcc void @lamphalo_tile(ptr noundef nonnull %0, ptr noundef nonnull %55) #18
  %192 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !96
  br label %193

193:                                              ; preds = %187, %191, %182
  %194 = phi i16 [ %184, %187 ], [ %192, %191 ], [ %184, %182 ]
  %195 = and i16 %194, 2
  %196 = icmp eq i16 %195, 0
  br i1 %196, label %203, label %197

197:                                              ; preds = %193
  %198 = load i32, ptr %56, align 8, !tbaa !84
  %199 = and i32 %198, 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %203, label %201

201:                                              ; preds = %197
  call fastcc void @halo_tile(ptr noundef nonnull %0, ptr noundef nonnull %55) #18
  %202 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !96
  br label %203

203:                                              ; preds = %197, %201, %193
  %204 = phi i16 [ %194, %197 ], [ %202, %201 ], [ %194, %193 ]
  %205 = and i16 %204, 1
  %206 = icmp ne i16 %205, 0
  %207 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 63), align 4
  %208 = icmp ne i32 %207, 0
  %209 = select i1 %206, i1 true, i1 %208
  br i1 %209, label %210, label %241

210:                                              ; preds = %203
  %211 = load i32, ptr %56, align 8, !tbaa !84
  %212 = and i32 %211, 34
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %241, label %214

214:                                              ; preds = %210
  %215 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %216 = load i32, ptr %8, align 8, !tbaa !79
  %217 = sext i32 %216 to i64
  %218 = shl nsw i64 %217, 4
  %219 = load i32, ptr %12, align 4, !tbaa !80
  %220 = sext i32 %219 to i64
  %221 = mul i64 %218, %220
  %222 = call ptr %215(i64 noundef %221, ptr noundef nonnull @.str.6) #19
  %223 = getelementptr inbounds %struct.RenderLayer, ptr %55, i64 0, i32 12
  %224 = getelementptr inbounds %struct.RenderLayer, ptr %55, i64 0, i32 11
  %225 = load ptr, ptr %224, align 8, !tbaa !97
  store ptr %225, ptr %223, align 8, !tbaa !98
  store ptr %222, ptr %224, align 8, !tbaa !97
  %226 = call ptr @zbuffer_transp_shade(ptr noundef nonnull %0, ptr noundef nonnull %55, ptr noundef %222, ptr noundef null) #19
  %227 = load ptr, ptr %223, align 8, !tbaa !98
  %228 = load ptr, ptr %224, align 8, !tbaa !97
  store ptr %228, ptr %223, align 8, !tbaa !98
  store ptr %227, ptr %224, align 8, !tbaa !97
  %229 = load i32, ptr %8, align 8, !tbaa !79
  %230 = load i32, ptr %12, align 4, !tbaa !80
  %231 = mul nsw i32 %230, %229
  %232 = icmp sgt i32 %231, 0
  br i1 %232, label %233, label %241

233:                                              ; preds = %214, %233
  %234 = phi i32 [ %237, %233 ], [ %231, %214 ]
  %235 = phi ptr [ %238, %233 ], [ %228, %214 ]
  %236 = phi ptr [ %239, %233 ], [ %227, %214 ]
  call void @addAlphaOverFloat(ptr noundef %236, ptr noundef %235) #19
  %237 = add nsw i32 %234, -1
  %238 = getelementptr inbounds float, ptr %235, i64 4
  %239 = getelementptr inbounds float, ptr %236, i64 4
  %240 = icmp ugt i32 %234, 1
  br i1 %240, label %233, label %241, !llvm.loop !225

241:                                              ; preds = %233, %214, %210, %203
  %242 = load i32, ptr %56, align 8, !tbaa !84
  %243 = and i32 %242, 16
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %250, label %245

245:                                              ; preds = %241
  call fastcc void @atm_tile(ptr noundef %0, ptr noundef nonnull %55) #18
  %246 = load i32, ptr %56, align 8, !tbaa !84
  %247 = and i32 %246, 16
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %245
  call fastcc void @sky_tile(ptr noundef %0, ptr noundef nonnull %55) #18
  br label %250

250:                                              ; preds = %241, %249, %245
  %251 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !93
  %252 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !94
  %253 = call i32 %251(ptr noundef %252) #19
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %266

255:                                              ; preds = %250
  %256 = load i32, ptr %56, align 8, !tbaa !84
  %257 = and i32 %256, 8
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %266, label %259

259:                                              ; preds = %255
  %260 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %261 = and i32 %260, 32
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %266, label %263

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct.RenderLayer, ptr %55, i64 0, i32 11
  %265 = load ptr, ptr %264, align 8, !tbaa !97
  call fastcc void @edge_enhance_add(ptr noundef %0, ptr noundef %265, ptr noundef %183) #18
  br label %266

266:                                              ; preds = %255, %263, %259, %250
  %267 = getelementptr inbounds %struct.RenderLayer, ptr %55, i64 0, i32 7
  %268 = load i32, ptr %267, align 4, !tbaa !102
  %269 = and i32 %268, 512
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %272, label %271

271:                                              ; preds = %266
  call fastcc void @reset_sky_speed(ptr noundef %0, ptr noundef nonnull %55) #18
  br label %272

272:                                              ; preds = %271, %266
  %273 = icmp eq ptr %183, null
  br i1 %273, label %276, label %274

274:                                              ; preds = %272
  %275 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  call void %275(ptr noundef nonnull %183) #19
  br label %276

276:                                              ; preds = %274, %272
  %277 = load ptr, ptr %40, align 8, !tbaa !86
  %278 = icmp eq ptr %277, null
  br i1 %278, label %281, label %279

279:                                              ; preds = %276
  %280 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  call void %280(ptr noundef nonnull %277) #19
  store ptr null, ptr %40, align 8, !tbaa !86
  br label %281

281:                                              ; preds = %276, %279
  %282 = load ptr, ptr %55, align 8, !tbaa !76
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %54, !llvm.loop !226

284:                                              ; preds = %281, %1
  %285 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 13, i32 3
  store volatile i32 0, ptr %285, align 4, !tbaa !104
  %286 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 13, i32 2
  store volatile i32 0, ptr %286, align 8, !tbaa !106
  %287 = call ptr @render_get_active_layer(ptr noundef nonnull @R, ptr noundef %5) #19
  %288 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 14
  store ptr %287, ptr %288, align 8, !tbaa !107
  %289 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %290 = load ptr, ptr %17, align 8, !tbaa !81
  call void %289(ptr noundef %290) #19
  store ptr null, ptr %17, align 8, !tbaa !81
  %291 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %292 = load ptr, ptr %26, align 8, !tbaa !82
  call void %291(ptr noundef %292) #19
  store ptr null, ptr %26, align 8, !tbaa !82
  %293 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %294 = load ptr, ptr %35, align 8, !tbaa !83
  call void %293(ptr noundef %294) #19
  store ptr null, ptr %35, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 27080, ptr nonnull %2) #20
  ret void
}

; Function Attrs: optsize
declare void @shade_sample_initialize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @edge_enhance_tile(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #9 !PGOFuncName !227 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %158, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %7 = load i32, ptr %6, align 4, !tbaa !80
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %158

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %11 = load i32, ptr %10, align 8, !tbaa !79
  br label %12

12:                                               ; preds = %9, %29
  %13 = phi i32 [ %7, %9 ], [ %30, %29 ]
  %14 = phi i32 [ %11, %9 ], [ %31, %29 ]
  %15 = phi i32 [ 0, %9 ], [ %33, %29 ]
  %16 = phi ptr [ %2, %9 ], [ %32, %29 ]
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %12, %18
  %19 = phi i32 [ %23, %18 ], [ 0, %12 ]
  %20 = phi ptr [ %24, %18 ], [ %16, %12 ]
  %21 = load i32, ptr %20, align 4, !tbaa !118
  %22 = ashr i32 %21, 4
  store i32 %22, ptr %20, align 4, !tbaa !118
  %23 = add nuw nsw i32 %19, 1
  %24 = getelementptr inbounds i32, ptr %20, i64 1
  %25 = load i32, ptr %10, align 8, !tbaa !79
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %18, label %27, !llvm.loop !228

27:                                               ; preds = %18
  %28 = load i32, ptr %6, align 4, !tbaa !80
  br label %29

29:                                               ; preds = %27, %12
  %30 = phi i32 [ %13, %12 ], [ %28, %27 ]
  %31 = phi i32 [ %14, %12 ], [ %25, %27 ]
  %32 = phi ptr [ %16, %12 ], [ %24, %27 ]
  %33 = add nuw nsw i32 %15, 1
  %34 = icmp slt i32 %33, %30
  br i1 %34, label %12, label %35, !llvm.loop !229

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %37 = icmp sgt i32 %30, 2
  br i1 %37, label %38, label %62

38:                                               ; preds = %35
  %39 = load i32, ptr %36, align 8, !tbaa !79
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, ptr %1, i64 %40
  %42 = getelementptr inbounds float, ptr %41, i64 1
  %43 = getelementptr inbounds i32, ptr %2, i64 %40
  %44 = getelementptr inbounds i32, ptr %43, i64 %40
  %45 = icmp sgt i32 %39, 2
  %46 = add nsw i32 %39, -3
  %47 = add nsw i32 %30, -3
  br label %48

48:                                               ; preds = %38, %124
  %49 = phi ptr [ %42, %38 ], [ %132, %124 ]
  %50 = phi i32 [ 0, %38 ], [ %133, %124 ]
  %51 = phi ptr [ %44, %38 ], [ %131, %124 ]
  %52 = phi ptr [ %43, %38 ], [ %130, %124 ]
  %53 = phi ptr [ %2, %38 ], [ %129, %124 ]
  br i1 %45, label %54, label %124

54:                                               ; preds = %48
  %55 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %56 = icmp eq i16 %55, 0
  %57 = sitofp i16 %55 to float
  %58 = load i32, ptr %53, align 4, !tbaa !118
  %59 = load i32, ptr %52, align 4, !tbaa !118
  %60 = load i32, ptr %51, align 4, !tbaa !118
  %61 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 56), align 2
  br label %66

62:                                               ; preds = %124, %35
  %63 = icmp sgt i32 %30, 0
  br i1 %63, label %64, label %158

64:                                               ; preds = %62
  %65 = load i32, ptr %36, align 8, !tbaa !79
  br label %135

66:                                               ; preds = %54, %119
  %67 = phi i16 [ %61, %54 ], [ %120, %119 ]
  %68 = phi i32 [ %60, %54 ], [ %83, %119 ]
  %69 = phi i32 [ %59, %54 ], [ %87, %119 ]
  %70 = phi i32 [ %58, %54 ], [ %77, %119 ]
  %71 = phi ptr [ %49, %54 ], [ %122, %119 ]
  %72 = phi i32 [ 0, %54 ], [ %121, %119 ]
  %73 = phi ptr [ %51, %54 ], [ %82, %119 ]
  %74 = phi ptr [ %52, %54 ], [ %86, %119 ]
  %75 = phi ptr [ %53, %54 ], [ %76, %119 ]
  %76 = getelementptr inbounds i32, ptr %75, i64 1
  %77 = load i32, ptr %76, align 4, !tbaa !118
  %78 = getelementptr inbounds i32, ptr %75, i64 2
  %79 = load i32, ptr %78, align 4, !tbaa !118
  %80 = getelementptr inbounds i32, ptr %74, i64 2
  %81 = load i32, ptr %80, align 4, !tbaa !118
  %82 = getelementptr inbounds i32, ptr %73, i64 1
  %83 = load i32, ptr %82, align 4, !tbaa !118
  %84 = getelementptr inbounds i32, ptr %73, i64 2
  %85 = load i32, ptr %84, align 4, !tbaa !118
  %86 = getelementptr inbounds i32, ptr %74, i64 1
  %87 = load i32, ptr %86, align 4, !tbaa !118
  %88 = shl nsw i32 %87, 2
  %89 = add i32 %69, %77
  %90 = add i32 %89, %81
  %91 = add i32 %90, %83
  %92 = shl i32 %91, 1
  %93 = add i32 %79, %70
  %94 = add i32 %93, %68
  %95 = add i32 %94, %85
  %96 = add i32 %95, %92
  %97 = sdiv i32 %96, -3
  %98 = add i32 %97, %88
  %99 = tail call i32 @llvm.abs.i32(i32 %98, i1 true)
  %100 = lshr i32 %99, 5
  %101 = icmp ugt i32 %99, 2097183
  %102 = sext i16 %67 to i32
  %103 = mul nsw i32 %100, %102
  %104 = ashr i32 %103, 8
  %105 = select i1 %101, i32 65536, i32 %104
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %66
  %108 = icmp ugt i32 %105, 255
  %109 = sitofp i32 %105 to float
  %110 = fdiv float %109, 2.550000e+02
  %111 = select i1 %108, float 1.000000e+00, float %110
  br i1 %56, label %116, label %112

112:                                              ; preds = %107
  %113 = fdiv float %111, %57
  %114 = load float, ptr %71, align 4, !tbaa !34
  %115 = fadd float %113, %114
  br label %116

116:                                              ; preds = %107, %112
  %117 = phi float [ %115, %112 ], [ %111, %107 ]
  store float %117, ptr %71, align 4, !tbaa !34
  %118 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 56), align 2
  br label %119

119:                                              ; preds = %66, %116
  %120 = phi i16 [ %67, %66 ], [ %118, %116 ]
  %121 = add nuw nsw i32 %72, 1
  %122 = getelementptr inbounds float, ptr %71, i64 1
  %123 = icmp eq i32 %72, %46
  br i1 %123, label %124, label %66, !llvm.loop !230

124:                                              ; preds = %119, %48
  %125 = phi ptr [ %53, %48 ], [ %76, %119 ]
  %126 = phi ptr [ %52, %48 ], [ %86, %119 ]
  %127 = phi ptr [ %51, %48 ], [ %82, %119 ]
  %128 = phi ptr [ %49, %48 ], [ %122, %119 ]
  %129 = getelementptr inbounds i32, ptr %125, i64 2
  %130 = getelementptr inbounds i32, ptr %126, i64 2
  %131 = getelementptr inbounds i32, ptr %127, i64 2
  %132 = getelementptr inbounds float, ptr %128, i64 2
  %133 = add nuw nsw i32 %50, 1
  %134 = icmp eq i32 %50, %47
  br i1 %134, label %62, label %48, !llvm.loop !231

135:                                              ; preds = %64, %152
  %136 = phi i32 [ %153, %152 ], [ %30, %64 ]
  %137 = phi i32 [ %154, %152 ], [ %65, %64 ]
  %138 = phi i32 [ %156, %152 ], [ 0, %64 ]
  %139 = phi ptr [ %155, %152 ], [ %2, %64 ]
  %140 = icmp sgt i32 %137, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %135, %141
  %142 = phi i32 [ %146, %141 ], [ 0, %135 ]
  %143 = phi ptr [ %147, %141 ], [ %139, %135 ]
  %144 = load i32, ptr %143, align 4, !tbaa !118
  %145 = shl i32 %144, 4
  store i32 %145, ptr %143, align 4, !tbaa !118
  %146 = add nuw nsw i32 %142, 1
  %147 = getelementptr inbounds i32, ptr %143, i64 1
  %148 = load i32, ptr %36, align 8, !tbaa !79
  %149 = icmp slt i32 %146, %148
  br i1 %149, label %141, label %150, !llvm.loop !232

150:                                              ; preds = %141
  %151 = load i32, ptr %6, align 4, !tbaa !80
  br label %152

152:                                              ; preds = %150, %135
  %153 = phi i32 [ %136, %135 ], [ %151, %150 ]
  %154 = phi i32 [ %137, %135 ], [ %148, %150 ]
  %155 = phi ptr [ %139, %135 ], [ %147, %150 ]
  %156 = add nuw nsw i32 %138, 1
  %157 = icmp slt i32 %156, %153
  br i1 %157, label %135, label %158, !llvm.loop !233

158:                                              ; preds = %152, %5, %62, %3
  ret void
}

; Function Attrs: optsize
declare void @ISB_create(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @cache_occ_samples(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_thread_srandom(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @shade_samples(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @add_passes(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #9 !PGOFuncName !234 {
  %5 = alloca [3 x float], align 8
  %6 = getelementptr inbounds %struct.RenderLayer, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  %8 = shl nsw i32 %1, 2
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds float, ptr %7, i64 %9
  tail call fastcc void @copy_v4_v4(ptr noundef %10, ptr noundef %3) #18
  %11 = getelementptr inbounds %struct.RenderLayer, ptr %0, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !76
  %13 = icmp eq ptr %12, null
  br i1 %13, label %114, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 17
  %16 = sext i32 %1 to i64
  %17 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 3
  %18 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 1
  %19 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 4
  %20 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 16
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 74
  %22 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 76
  %23 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %24 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 15
  %25 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 14
  %26 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 13
  %27 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 12
  %28 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 11
  %29 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 10
  %30 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 9
  %31 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 8
  %32 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 6
  %33 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 5
  %34 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 1
  %35 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 4
  br label %36

36:                                               ; preds = %14, %111
  %37 = phi ptr [ %12, %14 ], [ %112, %111 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  %38 = getelementptr inbounds %struct.RenderPass, ptr %37, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !186
  switch i32 %39, label %111 [
    i32 2, label %40
    i32 4, label %95
    i32 65536, label %45
    i32 8, label %46
    i32 16, label %47
    i32 32, label %48
    i32 64, label %49
    i32 131072, label %50
    i32 8192, label %51
    i32 128, label %52
    i32 1024, label %53
    i32 256, label %54
    i32 4096, label %55
    i32 512, label %64
    i32 2048, label %65
    i32 262144, label %78
    i32 16384, label %89
    i32 32768, label %94
  ]

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.RenderPass, ptr %37, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !235
  %43 = getelementptr inbounds float, ptr %42, i64 %16
  %44 = load float, ptr %35, align 4, !tbaa !236
  store float %44, ptr %43, align 4, !tbaa !34
  br label %111

45:                                               ; preds = %36
  br label %95

46:                                               ; preds = %36
  br label %95

47:                                               ; preds = %36
  br label %95

48:                                               ; preds = %36
  br label %95

49:                                               ; preds = %36
  br label %95

50:                                               ; preds = %36
  br label %95

51:                                               ; preds = %36
  br label %95

52:                                               ; preds = %36
  br label %95

53:                                               ; preds = %36
  br label %95

54:                                               ; preds = %36
  br label %95

55:                                               ; preds = %36
  %56 = load i32, ptr %21, align 8, !tbaa !238
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %111, label %58

58:                                               ; preds = %55
  %59 = load i32, ptr %22, align 8, !tbaa !239
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 72, i64 %60, i32 2
  %62 = load <2 x float>, ptr %61, align 8, !tbaa !34
  %63 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %62, <2 x float> <float 5.000000e-01, float 5.000000e-01>, <2 x float> <float 5.000000e-01, float 5.000000e-01>)
  store <2 x float> %63, ptr %5, align 8, !tbaa !34
  store float 1.000000e+00, ptr %23, align 8, !tbaa !34
  br label %95

64:                                               ; preds = %36
  br label %95

65:                                               ; preds = %36
  %66 = load ptr, ptr %18, align 8, !tbaa !240
  %67 = icmp eq ptr %66, null
  br i1 %67, label %111, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.RenderPass, ptr %37, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !235
  %71 = getelementptr inbounds float, ptr %70, i64 %16
  %72 = load ptr, ptr %19, align 8, !tbaa !241
  %73 = getelementptr inbounds %struct.ObjectRen, ptr %72, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !242
  %75 = getelementptr inbounds %struct.Object, ptr %74, i64 0, i32 96
  %76 = load i16, ptr %75, align 4, !tbaa !244
  %77 = sitofp i16 %76 to float
  store float %77, ptr %71, align 4, !tbaa !34
  br label %111

78:                                               ; preds = %36
  %79 = load ptr, ptr %18, align 8, !tbaa !240
  %80 = icmp eq ptr %79, null
  br i1 %80, label %111, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.RenderPass, ptr %37, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !235
  %84 = getelementptr inbounds float, ptr %83, i64 %16
  %85 = load ptr, ptr %2, align 8, !tbaa !247
  %86 = getelementptr inbounds %struct.Material, ptr %85, i64 0, i32 127
  %87 = load i16, ptr %86, align 2, !tbaa !248
  %88 = sitofp i16 %87 to float
  store float %88, ptr %84, align 4, !tbaa !34
  br label %111

89:                                               ; preds = %36
  %90 = getelementptr inbounds %struct.RenderPass, ptr %37, i64 0, i32 6
  %91 = load ptr, ptr %90, align 8, !tbaa !235
  %92 = getelementptr inbounds float, ptr %91, i64 %16
  %93 = load float, ptr %17, align 4, !tbaa !249
  store float %93, ptr %92, align 4, !tbaa !34
  br label %111

94:                                               ; preds = %36
  br label %95

95:                                               ; preds = %36, %94, %64, %58, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45
  %96 = phi ptr [ %33, %45 ], [ %32, %46 ], [ %31, %47 ], [ %30, %48 ], [ %29, %49 ], [ %28, %50 ], [ %27, %51 ], [ %26, %52 ], [ %25, %53 ], [ %24, %54 ], [ %5, %58 ], [ %20, %64 ], [ %15, %94 ], [ %34, %36 ]
  %97 = phi i32 [ 3, %45 ], [ 3, %46 ], [ 3, %47 ], [ 3, %48 ], [ 3, %49 ], [ 3, %50 ], [ 3, %51 ], [ 3, %52 ], [ 3, %53 ], [ 3, %54 ], [ 3, %58 ], [ 4, %64 ], [ 4, %94 ], [ %39, %36 ]
  %98 = getelementptr inbounds %struct.RenderPass, ptr %37, i64 0, i32 6
  %99 = load ptr, ptr %98, align 8, !tbaa !235
  %100 = mul nsw i32 %97, %1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, ptr %99, i64 %101
  %103 = zext nneg i32 %97 to i64
  br label %104

104:                                              ; preds = %95, %104
  %105 = phi i64 [ 0, %95 ], [ %109, %104 ]
  %106 = getelementptr inbounds float, ptr %96, i64 %105
  %107 = load float, ptr %106, align 4, !tbaa !34
  %108 = getelementptr inbounds float, ptr %102, i64 %105
  store float %107, ptr %108, align 4, !tbaa !34
  %109 = add nuw nsw i64 %105, 1
  %110 = icmp eq i64 %109, %103
  br i1 %110, label %111, label %104, !llvm.loop !250

111:                                              ; preds = %104, %40, %89, %36, %55, %68, %65, %81, %78
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  %112 = load ptr, ptr %37, align 8, !tbaa !76
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %36, !llvm.loop !251

114:                                              ; preds = %111, %4
  ret void
}

; Function Attrs: optsize
declare void @free_occ_samples(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @ISB_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @zbufshade_sss_tile(ptr noundef %0) local_unnamed_addr #6 {
  %2 = alloca %struct.ShadeSample, align 8
  %3 = alloca %struct.ZBufSSSHandle, align 8
  call void @llvm.lifetime.start.p0(i64 27080, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %4 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 76), align 8, !tbaa !252
  %7 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !253
  %8 = and i32 %7, 524296
  %9 = icmp eq i32 %8, 0
  store ptr %0, ptr %3, align 8, !tbaa !254
  %10 = getelementptr inbounds %struct.ZBufSSSHandle, ptr %3, i64 0, i32 2
  store i32 0, ptr %10, align 8, !tbaa !256
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %12 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %13 = load i32, ptr %12, align 8, !tbaa !79
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 2
  %16 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %17 = load i32, ptr %16, align 4, !tbaa !80
  %18 = sext i32 %17 to i64
  %19 = mul i64 %15, %18
  %20 = tail call ptr %11(i64 noundef %19, ptr noundef nonnull @.str) #19
  %21 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 4
  store ptr %20, ptr %21, align 8, !tbaa !81
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %23 = load i32, ptr %12, align 8, !tbaa !79
  %24 = sext i32 %23 to i64
  %25 = shl nsw i64 %24, 2
  %26 = load i32, ptr %16, align 4, !tbaa !80
  %27 = sext i32 %26 to i64
  %28 = mul i64 %25, %27
  %29 = tail call ptr %22(i64 noundef %28, ptr noundef nonnull @.str.1) #19
  %30 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 5
  store ptr %29, ptr %30, align 8, !tbaa !82
  %31 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %32 = load i32, ptr %12, align 8, !tbaa !79
  %33 = sext i32 %32 to i64
  %34 = shl nsw i64 %33, 2
  %35 = load i32, ptr %16, align 4, !tbaa !80
  %36 = sext i32 %35 to i64
  %37 = mul i64 %34, %36
  %38 = tail call ptr %31(i64 noundef %37, ptr noundef nonnull @.str.2) #19
  %39 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 6
  store ptr %38, ptr %39, align 8, !tbaa !83
  %40 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %41 = load i32, ptr %12, align 8, !tbaa !79
  %42 = sext i32 %41 to i64
  %43 = shl nsw i64 %42, 2
  %44 = load i32, ptr %16, align 4, !tbaa !80
  %45 = sext i32 %44 to i64
  %46 = mul i64 %43, %45
  %47 = tail call ptr %40(i64 noundef %46, ptr noundef nonnull @.str.7) #19
  %48 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 9
  store ptr %47, ptr %48, align 8, !tbaa !257
  %49 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %50 = load i32, ptr %12, align 8, !tbaa !79
  %51 = sext i32 %50 to i64
  %52 = shl nsw i64 %51, 2
  %53 = load i32, ptr %16, align 4, !tbaa !80
  %54 = sext i32 %53 to i64
  %55 = mul i64 %52, %54
  %56 = tail call ptr %49(i64 noundef %55, ptr noundef nonnull @.str.8) #19
  %57 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 10
  store ptr %56, ptr %57, align 8, !tbaa !258
  %58 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %59 = load i32, ptr %12, align 8, !tbaa !79
  %60 = sext i32 %59 to i64
  %61 = shl nsw i64 %60, 2
  %62 = load i32, ptr %16, align 4, !tbaa !80
  %63 = sext i32 %62 to i64
  %64 = mul i64 %61, %63
  %65 = tail call ptr %58(i64 noundef %64, ptr noundef nonnull @.str.9) #19
  %66 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 11
  store ptr %65, ptr %66, align 8, !tbaa !259
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(27080) %2, i8 0, i64 27080, i1 false)
  %67 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 12
  %68 = load ptr, ptr %67, align 8, !tbaa !260
  call void @shade_sample_initialize(ptr noundef nonnull %2, ptr noundef %0, ptr noundef %68) #19
  store i32 1, ptr %2, align 8, !tbaa !131
  %69 = load ptr, ptr %67, align 8, !tbaa !76
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %1
  %72 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 119
  %73 = load i32, ptr %72, align 8, !tbaa !261
  %74 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 120
  %75 = load i32, ptr %74, align 4, !tbaa !262
  %76 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 117
  %77 = load i32, ptr %76, align 8, !tbaa !263
  br label %109

78:                                               ; preds = %1
  %79 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 117
  %80 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 118
  %81 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 119
  %82 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 120
  %83 = load i32, ptr %79, align 8, !tbaa !263
  %84 = load i32, ptr %80, align 4, !tbaa !264
  %85 = load i32, ptr %81, align 8, !tbaa !261
  %86 = load i32, ptr %82, align 4, !tbaa !262
  br label %87

87:                                               ; preds = %78, %87
  %88 = phi i32 [ %86, %78 ], [ %105, %87 ]
  %89 = phi i32 [ %85, %78 ], [ %101, %87 ]
  %90 = phi i32 [ %84, %78 ], [ %98, %87 ]
  %91 = phi i32 [ %83, %78 ], [ %95, %87 ]
  %92 = phi ptr [ %69, %78 ], [ %106, %87 ]
  %93 = getelementptr inbounds %struct.RenderLayer, ptr %92, i64 0, i32 3
  %94 = load i32, ptr %93, align 4, !tbaa !155
  %95 = or i32 %91, %94
  %96 = getelementptr inbounds %struct.RenderLayer, ptr %92, i64 0, i32 6
  %97 = load i32, ptr %96, align 8, !tbaa !84
  %98 = or i32 %90, %97
  %99 = getelementptr inbounds %struct.RenderLayer, ptr %92, i64 0, i32 7
  %100 = load i32, ptr %99, align 4, !tbaa !102
  %101 = or i32 %89, %100
  %102 = getelementptr inbounds %struct.RenderLayer, ptr %92, i64 0, i32 8
  %103 = load i32, ptr %102, align 8, !tbaa !265
  %104 = xor i32 %103, -1
  %105 = or i32 %88, %104
  %106 = load ptr, ptr %92, align 8, !tbaa !76
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %87, !llvm.loop !266

108:                                              ; preds = %87
  store i32 %95, ptr %79, align 8, !tbaa !263
  store i32 %98, ptr %80, align 4, !tbaa !264
  br label %109

109:                                              ; preds = %71, %108
  %110 = phi i32 [ %77, %71 ], [ %95, %108 ]
  %111 = phi i32 [ %75, %71 ], [ %105, %108 ]
  %112 = phi i32 [ %73, %71 ], [ %101, %108 ]
  %113 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 119
  %114 = or i32 %112, 5
  store i32 %114, ptr %113, align 8, !tbaa !261
  %115 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 120
  %116 = and i32 %111, -17
  store i32 %116, ptr %115, align 4, !tbaa !262
  %117 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %117, i8 0, i64 16, i1 false)
  call void @zbuffer_sss(ptr noundef %0, i32 noundef %110, ptr noundef nonnull %3, ptr noundef nonnull @addps_sss) #19
  %118 = load i32, ptr %10, align 8, !tbaa !256
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %109
  call fastcc void @zbufshade_sss_free(ptr noundef %0) #18
  br label %311

121:                                              ; preds = %109
  %122 = getelementptr inbounds %struct.RenderLayer, ptr %69, i64 0, i32 11
  %123 = load ptr, ptr %122, align 8, !tbaa !97
  %124 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %125 = sext i32 %118 to i64
  %126 = mul nsw i64 %125, 12
  %127 = call ptr %124(i64 noundef %126, ptr noundef nonnull @.str.10) #19
  %128 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %129 = load i32, ptr %10, align 8, !tbaa !256
  %130 = sext i32 %129 to i64
  %131 = mul nsw i64 %130, 12
  %132 = call ptr %128(i64 noundef %131, ptr noundef nonnull @.str.11) #19
  %133 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %134 = load i32, ptr %10, align 8, !tbaa !256
  %135 = sext i32 %134 to i64
  %136 = shl nsw i64 %135, 2
  %137 = call ptr %133(i64 noundef %136, ptr noundef nonnull @.str.12) #19
  br i1 %9, label %138, label %141

138:                                              ; preds = %121
  %139 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 13, i32 2
  store volatile i32 0, ptr %139, align 8, !tbaa !106
  %140 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 14
  store ptr %69, ptr %140, align 8, !tbaa !107
  br label %141

141:                                              ; preds = %138, %121
  %142 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13
  %143 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 2
  %144 = load i32, ptr %143, align 8, !tbaa !122
  %145 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 3
  %146 = load i32, ptr %145, align 4, !tbaa !125
  %147 = icmp slt i32 %144, %146
  br i1 %147, label %148, label %300

148:                                              ; preds = %141
  %149 = load ptr, ptr %48, align 8, !tbaa !257
  %150 = load ptr, ptr %57, align 8, !tbaa !258
  %151 = load ptr, ptr %66, align 8, !tbaa !259
  %152 = load ptr, ptr %21, align 8, !tbaa !81
  %153 = load ptr, ptr %30, align 8, !tbaa !82
  %154 = load ptr, ptr %39, align 8, !tbaa !83
  %155 = load i32, ptr %12, align 8, !tbaa !79
  %156 = mul nsw i32 %144, %155
  %157 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 1
  %158 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 20
  %159 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 13, i32 3
  br label %160

160:                                              ; preds = %148, %291
  %161 = phi ptr [ %123, %148 ], [ %283, %291 ]
  %162 = phi i32 [ %144, %148 ], [ %292, %291 ]
  %163 = phi ptr [ %150, %148 ], [ %282, %291 ]
  %164 = phi ptr [ %151, %148 ], [ %281, %291 ]
  %165 = phi ptr [ %149, %148 ], [ %280, %291 ]
  %166 = phi ptr [ %153, %148 ], [ %279, %291 ]
  %167 = phi ptr [ %154, %148 ], [ %278, %291 ]
  %168 = phi ptr [ %152, %148 ], [ %277, %291 ]
  %169 = phi i32 [ %156, %148 ], [ %276, %291 ]
  %170 = phi i32 [ 0, %148 ], [ %275, %291 ]
  %171 = load i32, ptr %142, align 8, !tbaa !126
  %172 = load i32, ptr %157, align 4, !tbaa !127
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %274

174:                                              ; preds = %160
  %175 = sitofp i32 %162 to float
  br label %176

176:                                              ; preds = %174, %265
  %177 = phi ptr [ %161, %174 ], [ %271, %265 ]
  %178 = phi i32 [ %171, %174 ], [ %270, %265 ]
  %179 = phi ptr [ %163, %174 ], [ %269, %265 ]
  %180 = phi ptr [ %164, %174 ], [ %268, %265 ]
  %181 = phi ptr [ %165, %174 ], [ %267, %265 ]
  %182 = phi ptr [ %166, %174 ], [ %224, %265 ]
  %183 = phi ptr [ %167, %174 ], [ %223, %265 ]
  %184 = phi ptr [ %168, %174 ], [ %222, %265 ]
  %185 = phi i32 [ %169, %174 ], [ %189, %265 ]
  %186 = phi i32 [ %170, %174 ], [ %266, %265 ]
  %187 = load i16, ptr %158, align 2, !tbaa !128
  %188 = sext i16 %187 to i32
  %189 = add nsw i32 %185, 1
  call void @BLI_thread_srandom(i32 noundef %188, i32 noundef %185) #19
  %190 = icmp eq ptr %182, null
  br i1 %190, label %220, label %191

191:                                              ; preds = %176
  %192 = load i32, ptr %182, align 4, !tbaa !118
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %215, label %194

194:                                              ; preds = %191
  %195 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !267
  %196 = load i32, ptr %184, align 4, !tbaa !118
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %195, i64 %197
  %199 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %195, i64 %197, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !268
  %201 = add i32 %192, 134217727
  %202 = and i32 %201, 134217727
  %203 = call ptr @RE_findOrAddVlak(ptr noundef %200, i32 noundef %202) #19
  %204 = load i32, ptr %182, align 4, !tbaa !118
  %205 = and i32 %204, 134217728
  %206 = sitofp i32 %178 to float
  %207 = load i32, ptr %183, align 4, !tbaa !118
  %208 = sitofp i32 %207 to float
  %209 = sext i32 %186 to i64
  %210 = getelementptr inbounds [3 x float], ptr %127, i64 %209
  %211 = getelementptr inbounds [3 x float], ptr %132, i64 %209
  %212 = getelementptr inbounds float, ptr %137, i64 %209
  call fastcc void @shade_sample_sss(ptr noundef nonnull %2, ptr noundef %6, ptr noundef %198, ptr noundef %203, i32 noundef %205, float noundef %206, float noundef %175, float noundef %208, ptr noundef %210, ptr noundef %211, ptr noundef %212) #18
  call fastcc void @add_v3_v3(ptr noundef %177, ptr noundef %211) #18
  %213 = getelementptr inbounds float, ptr %177, i64 3
  store float 1.000000e+00, ptr %213, align 4, !tbaa !34
  %214 = add nsw i32 %186, 1
  br label %215

215:                                              ; preds = %194, %191
  %216 = phi i32 [ %214, %194 ], [ %186, %191 ]
  %217 = getelementptr inbounds i32, ptr %182, i64 1
  %218 = getelementptr inbounds i32, ptr %183, i64 1
  %219 = getelementptr inbounds i32, ptr %184, i64 1
  br label %220

220:                                              ; preds = %215, %176
  %221 = phi i32 [ %216, %215 ], [ %186, %176 ]
  %222 = phi ptr [ %219, %215 ], [ %184, %176 ]
  %223 = phi ptr [ %218, %215 ], [ %183, %176 ]
  %224 = phi ptr [ %217, %215 ], [ null, %176 ]
  %225 = icmp eq ptr %179, null
  br i1 %225, label %265, label %226

226:                                              ; preds = %220
  %227 = load i32, ptr %179, align 4, !tbaa !118
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %260, label %229

229:                                              ; preds = %226
  %230 = getelementptr inbounds i32, ptr %224, i64 -1
  %231 = load i32, ptr %230, align 4, !tbaa !118
  %232 = icmp eq i32 %227, %231
  %233 = load i32, ptr %181, align 4, !tbaa !118
  br i1 %232, label %234, label %238

234:                                              ; preds = %229
  %235 = getelementptr inbounds i32, ptr %222, i64 -1
  %236 = load i32, ptr %235, align 4, !tbaa !118
  %237 = icmp eq i32 %233, %236
  br i1 %237, label %260, label %238

238:                                              ; preds = %234, %229
  %239 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !267
  %240 = sext i32 %233 to i64
  %241 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %239, i64 %240
  %242 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %239, i64 %240, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !268
  %244 = add i32 %227, 134217727
  %245 = and i32 %244, 134217727
  %246 = call ptr @RE_findOrAddVlak(ptr noundef %243, i32 noundef %245) #19
  %247 = load i32, ptr %179, align 4, !tbaa !118
  %248 = and i32 %247, 134217728
  %249 = sitofp i32 %178 to float
  %250 = load i32, ptr %180, align 4, !tbaa !118
  %251 = sitofp i32 %250 to float
  %252 = sext i32 %221 to i64
  %253 = getelementptr inbounds [3 x float], ptr %127, i64 %252
  %254 = getelementptr inbounds [3 x float], ptr %132, i64 %252
  %255 = getelementptr inbounds float, ptr %137, i64 %252
  call fastcc void @shade_sample_sss(ptr noundef nonnull %2, ptr noundef %6, ptr noundef %241, ptr noundef %246, i32 noundef %248, float noundef %249, float noundef %175, float noundef %251, ptr noundef %253, ptr noundef %254, ptr noundef %255) #18
  %256 = load float, ptr %255, align 4, !tbaa !34
  %257 = fneg float %256
  store float %257, ptr %255, align 4, !tbaa !34
  call fastcc void @add_v3_v3(ptr noundef %177, ptr noundef %254) #18
  %258 = getelementptr inbounds float, ptr %177, i64 3
  store float 1.000000e+00, ptr %258, align 4, !tbaa !34
  %259 = add nsw i32 %221, 1
  br label %260

260:                                              ; preds = %238, %234, %226
  %261 = phi i32 [ %221, %234 ], [ %259, %238 ], [ %221, %226 ]
  %262 = getelementptr inbounds i32, ptr %180, i64 1
  %263 = getelementptr inbounds i32, ptr %179, i64 1
  %264 = getelementptr inbounds i32, ptr %181, i64 1
  br label %265

265:                                              ; preds = %220, %260
  %266 = phi i32 [ %261, %260 ], [ %221, %220 ]
  %267 = phi ptr [ %264, %260 ], [ %181, %220 ]
  %268 = phi ptr [ %262, %260 ], [ %180, %220 ]
  %269 = phi ptr [ %263, %260 ], [ null, %220 ]
  %270 = add nsw i32 %178, 1
  %271 = getelementptr inbounds float, ptr %177, i64 4
  %272 = load i32, ptr %157, align 4, !tbaa !127
  %273 = icmp slt i32 %270, %272
  br i1 %273, label %176, label %274, !llvm.loop !270

274:                                              ; preds = %265, %160
  %275 = phi i32 [ %170, %160 ], [ %266, %265 ]
  %276 = phi i32 [ %169, %160 ], [ %189, %265 ]
  %277 = phi ptr [ %168, %160 ], [ %222, %265 ]
  %278 = phi ptr [ %167, %160 ], [ %223, %265 ]
  %279 = phi ptr [ %166, %160 ], [ %224, %265 ]
  %280 = phi ptr [ %165, %160 ], [ %267, %265 ]
  %281 = phi ptr [ %164, %160 ], [ %268, %265 ]
  %282 = phi ptr [ %163, %160 ], [ %269, %265 ]
  %283 = phi ptr [ %161, %160 ], [ %271, %265 ]
  %284 = and i32 %162, 1
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %291, label %286

286:                                              ; preds = %274
  %287 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !93
  %288 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !94
  %289 = call i32 %287(ptr noundef %288) #19
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %297

291:                                              ; preds = %274, %286
  %292 = add nsw i32 %162, 1
  %293 = load volatile i32, ptr %159, align 4, !tbaa !104
  %294 = add nsw i32 %293, 1
  store volatile i32 %294, ptr %159, align 4, !tbaa !104
  %295 = load i32, ptr %145, align 4, !tbaa !125
  %296 = icmp slt i32 %292, %295
  br i1 %296, label %160, label %297, !llvm.loop !271

297:                                              ; preds = %291, %286
  %298 = icmp sgt i32 %275, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %297
  call void @sss_add_points(ptr noundef nonnull @R, ptr noundef %127, ptr noundef %132, ptr noundef %137, i32 noundef %275) #19
  br label %304

300:                                              ; preds = %141, %297
  %301 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  call void %301(ptr noundef %127) #19
  %302 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  call void %302(ptr noundef %132) #19
  %303 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  call void %303(ptr noundef %137) #19
  br label %304

304:                                              ; preds = %300, %299
  br i1 %9, label %305, label %310

305:                                              ; preds = %304
  %306 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 13, i32 3
  store volatile i32 0, ptr %306, align 4, !tbaa !104
  %307 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 13, i32 2
  store volatile i32 0, ptr %307, align 8, !tbaa !106
  %308 = call ptr @render_get_active_layer(ptr noundef nonnull @R, ptr noundef %5) #19
  %309 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 14
  store ptr %308, ptr %309, align 8, !tbaa !107
  br label %310

310:                                              ; preds = %305, %304
  call fastcc void @zbufshade_sss_free(ptr noundef nonnull %0) #18
  br label %311

311:                                              ; preds = %310, %120
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 27080, ptr nonnull %2) #20
  ret void
}

; Function Attrs: optsize
declare void @zbuffer_sss(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal void @addps_sss(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #6 !PGOFuncName !272 {
  %7 = load ptr, ptr %0, align 8, !tbaa !254
  %8 = getelementptr inbounds %struct.RenderPart, ptr %7, i64 0, i32 17
  %9 = load i16, ptr %8, align 4, !tbaa !124
  %10 = sext i16 %9 to i32
  %11 = icmp sgt i32 %10, %3
  br i1 %11, label %96, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.RenderPart, ptr %7, i64 0, i32 14
  %14 = load i32, ptr %13, align 8, !tbaa !79
  %15 = sub nsw i32 %14, %10
  %16 = icmp sle i32 %15, %3
  %17 = icmp sgt i32 %10, %4
  %18 = or i1 %17, %16
  br i1 %18, label %96, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.RenderPart, ptr %7, i64 0, i32 15
  %21 = load i32, ptr %20, align 4, !tbaa !80
  %22 = sub nsw i32 %21, %10
  %23 = icmp sgt i32 %22, %4
  br i1 %23, label %24, label %96

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.RenderPart, ptr %7, i64 0, i32 12
  %26 = load ptr, ptr %25, align 8, !tbaa !273
  %27 = icmp eq ptr %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = mul nsw i32 %14, %4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, ptr %26, i64 %30
  %32 = sext i32 %3 to i64
  %33 = getelementptr inbounds i64, ptr %31, i64 %32
  %34 = getelementptr inbounds %struct.ZBufSSSHandle, ptr %0, i64 0, i32 1
  tail call fastcc void @addps(ptr noundef nonnull %34, ptr noundef nonnull %33, i32 noundef %1, i32 noundef %2, i32 noundef %5, i32 noundef 0, i16 noundef zeroext 0) #18
  %35 = getelementptr inbounds %struct.ZBufSSSHandle, ptr %0, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !256
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %35, align 8, !tbaa !256
  br label %38

38:                                               ; preds = %28, %24
  %39 = getelementptr inbounds %struct.RenderPart, ptr %7, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !83
  %41 = icmp eq ptr %40, null
  br i1 %41, label %67, label %42

42:                                               ; preds = %38
  %43 = load i32, ptr %13, align 8, !tbaa !79
  %44 = mul nsw i32 %43, %4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, ptr %40, i64 %45
  %47 = sext i32 %3 to i64
  %48 = getelementptr inbounds i32, ptr %46, i64 %47
  %49 = getelementptr inbounds %struct.RenderPart, ptr %7, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !82
  %51 = getelementptr inbounds i32, ptr %50, i64 %45
  %52 = getelementptr inbounds i32, ptr %51, i64 %47
  %53 = getelementptr inbounds %struct.RenderPart, ptr %7, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !81
  %55 = getelementptr inbounds i32, ptr %54, i64 %45
  %56 = getelementptr inbounds i32, ptr %55, i64 %47
  %57 = load i32, ptr %48, align 4, !tbaa !118
  %58 = icmp sgt i32 %57, %5
  br i1 %58, label %59, label %67

59:                                               ; preds = %42
  %60 = load i32, ptr %52, align 4, !tbaa !118
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.ZBufSSSHandle, ptr %0, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !256
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %63, align 8, !tbaa !256
  br label %66

66:                                               ; preds = %62, %59
  store i32 %5, ptr %48, align 4, !tbaa !118
  store i32 %2, ptr %52, align 4, !tbaa !118
  store i32 %1, ptr %56, align 4, !tbaa !118
  br label %67

67:                                               ; preds = %42, %66, %38
  %68 = getelementptr inbounds %struct.RenderPart, ptr %7, i64 0, i32 11
  %69 = load ptr, ptr %68, align 8, !tbaa !259
  %70 = icmp eq ptr %69, null
  br i1 %70, label %96, label %71

71:                                               ; preds = %67
  %72 = load i32, ptr %13, align 8, !tbaa !79
  %73 = mul nsw i32 %72, %4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %69, i64 %74
  %76 = sext i32 %3 to i64
  %77 = getelementptr inbounds i32, ptr %75, i64 %76
  %78 = getelementptr inbounds %struct.RenderPart, ptr %7, i64 0, i32 10
  %79 = load ptr, ptr %78, align 8, !tbaa !258
  %80 = getelementptr inbounds i32, ptr %79, i64 %74
  %81 = getelementptr inbounds i32, ptr %80, i64 %76
  %82 = getelementptr inbounds %struct.RenderPart, ptr %7, i64 0, i32 9
  %83 = load ptr, ptr %82, align 8, !tbaa !257
  %84 = getelementptr inbounds i32, ptr %83, i64 %74
  %85 = getelementptr inbounds i32, ptr %84, i64 %76
  %86 = load i32, ptr %77, align 4, !tbaa !118
  %87 = icmp sgt i32 %86, %5
  br i1 %87, label %96, label %88

88:                                               ; preds = %71
  %89 = load i32, ptr %81, align 4, !tbaa !118
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.ZBufSSSHandle, ptr %0, i64 0, i32 2
  %93 = load i32, ptr %92, align 8, !tbaa !256
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr %92, align 8, !tbaa !256
  br label %95

95:                                               ; preds = %91, %88
  store i32 %5, ptr %77, align 4, !tbaa !118
  store i32 %2, ptr %81, align 4, !tbaa !118
  store i32 %1, ptr %85, align 4, !tbaa !118
  br label %96

96:                                               ; preds = %67, %95, %71, %19, %6, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @zbufshade_sss_free(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !274 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !83
  tail call void %2(ptr noundef %4) #19
  store ptr null, ptr %3, align 8, !tbaa !83
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !82
  tail call void %5(ptr noundef %7) #19
  store ptr null, ptr %6, align 8, !tbaa !82
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %9 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !81
  tail call void %8(ptr noundef %10) #19
  store ptr null, ptr %9, align 8, !tbaa !81
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %12 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !259
  tail call void %11(ptr noundef %13) #19
  store ptr null, ptr %12, align 8, !tbaa !259
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %15 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !258
  tail call void %14(ptr noundef %16) #19
  store ptr null, ptr %15, align 8, !tbaa !258
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %18 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !257
  tail call void %17(ptr noundef %19) #19
  store ptr null, ptr %18, align 8, !tbaa !257
  ret void
}

; Function Attrs: optsize
declare ptr @RE_findOrAddVlak(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shade_sample_sss(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, float noundef %5, float noundef %6, float noundef %7, ptr nocapture noundef writeonly %8, ptr nocapture noundef writeonly %9, ptr nocapture noundef %10) unnamed_addr #6 !PGOFuncName !275 {
  %12 = alloca %struct.ShadeResult, align 4
  %13 = alloca [3 x float], align 4
  %14 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 212, ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #20
  %15 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 114
  %16 = load i16, ptr %15, align 2, !tbaa !276
  %17 = sext i16 %16 to i64
  %18 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 42, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !118
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %18, align 4, !tbaa !118
  %21 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 107
  store i32 %19, ptr %21, align 4, !tbaa !277
  %22 = icmp eq i32 %4, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %11
  tail call void @shade_input_set_triangle_i(ptr noundef nonnull %14, ptr noundef %2, ptr noundef %3, i16 noundef signext 0, i16 noundef signext 2, i16 noundef signext 3) #19
  br label %25

24:                                               ; preds = %11
  tail call void @shade_input_set_triangle_i(ptr noundef nonnull %14, ptr noundef %2, ptr noundef %3, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 2) #19
  br label %25

25:                                               ; preds = %24, %23
  %26 = fadd float %5, 5.000000e-01
  %27 = fadd float %6, 5.000000e-01
  %28 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 15
  store i16 1, ptr %28, align 8, !tbaa !278
  %29 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 6
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %29) #18
  tail call void @calc_view_vector(ptr noundef nonnull %29, float noundef %26, float noundef %27) #18
  tail call fastcc void @normalize_v3(ptr noundef nonnull %29) #18
  tail call void @shade_input_set_viewco(ptr noundef nonnull %14, float noundef %5, float noundef %6, float noundef %26, float noundef %27, float noundef %7) #19
  %30 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 78
  %31 = tail call fastcc float @len_v3(ptr noundef nonnull %30) #18
  %32 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 79
  %33 = tail call fastcc float @len_v3(ptr noundef nonnull %32) #18
  %34 = fmul float %31, %33
  call fastcc void @copy_v3_v3(ptr noundef nonnull %29, ptr noundef nonnull %13) #18
  tail call void @shade_input_set_viewco(ptr noundef nonnull %14, float noundef %5, float noundef %6, float noundef %26, float noundef %27, float noundef %7) #19
  %35 = tail call fastcc float @len_v3(ptr noundef nonnull %30) #18
  %36 = tail call fastcc float @len_v3(ptr noundef nonnull %32) #18
  %37 = fmul float %35, %36
  %38 = fmul float %34, 2.000000e+00
  %39 = tail call fastcc float @min_ff(float noundef %37, float noundef %38) #18
  store float %39, ptr %10, align 4, !tbaa !34
  tail call void @shade_input_set_uv(ptr noundef nonnull %14) #19
  tail call void @shade_input_set_normals(ptr noundef nonnull %14) #19
  %40 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 7
  %41 = load i16, ptr %40, align 8, !tbaa !279
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %25
  tail call void @shade_input_flip_normals(ptr noundef nonnull %14) #19
  br label %44

44:                                               ; preds = %43, %25
  %45 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !241
  %47 = getelementptr inbounds %struct.ObjectRen, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !242
  %49 = icmp eq ptr %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.Object, ptr %48, i64 0, i32 55
  %52 = load i16, ptr %51, align 8, !tbaa !280
  %53 = and i16 %52, 4
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 16
  tail call fastcc void @negate_v3(ptr noundef nonnull %56) #18
  %57 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 17
  tail call fastcc void @negate_v3(ptr noundef nonnull %57) #18
  %58 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 66
  tail call fastcc void @negate_v3(ptr noundef nonnull %58) #18
  br label %59

59:                                               ; preds = %55, %50, %44
  %60 = load ptr, ptr %14, align 8, !tbaa !247
  %61 = getelementptr inbounds %struct.Material, ptr %60, i64 0, i32 103
  %62 = load ptr, ptr %61, align 8, !tbaa !281
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.Material, ptr %60, i64 0, i32 77
  %66 = load i8, ptr %65, align 1, !tbaa !282
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  store ptr %1, ptr %14, align 8, !tbaa !247
  br label %69

69:                                               ; preds = %68, %64, %59
  tail call void @shade_input_init_material(ptr noundef nonnull %14) #19
  tail call void @shade_input_set_shade_texco(ptr noundef nonnull %14) #19
  tail call void @shade_samples_do_AO(ptr noundef nonnull %0) #19
  call void @shade_material_loop(ptr noundef nonnull %14, ptr noundef nonnull %12) #19
  %70 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 29
  call fastcc void @copy_v3_v3(ptr noundef %8, ptr noundef nonnull %70) #18
  call fastcc void @copy_v3_v3(ptr noundef %9, ptr noundef nonnull %12) #18
  %71 = getelementptr inbounds [4 x float], ptr %12, i64 0, i64 3
  %72 = load float, ptr %71, align 4, !tbaa !34
  %73 = load float, ptr %10, align 4, !tbaa !34
  %74 = fmul float %72, %73
  store float %74, ptr %10, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(i64 212, ptr nonnull %12) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !283 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = load float, ptr %0, align 4, !tbaa !34
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @sss_add_points(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_halo_flare(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !284
  %4 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = icmp eq ptr %5, null
  br i1 %6, label %65, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 14
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 87
  br label %11

11:                                               ; preds = %7, %62
  %12 = phi ptr [ %5, %7 ], [ %63, %62 ]
  %13 = getelementptr inbounds %struct.RenderLayer, ptr %12, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !84
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %62, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.RenderLayer, ptr %12, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !97
  %20 = icmp eq ptr %19, null
  br i1 %20, label %62, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %23 = and i32 %22, -1025
  store i32 %23, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  tail call void @project_renderdata(ptr noundef nonnull @R, ptr noundef nonnull @projectverto, i8 noundef zeroext 0, float noundef 0.000000e+00, i8 noundef zeroext 0) #19
  %24 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 62), align 8, !tbaa !156
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.RenderLayer, ptr %12, i64 0, i32 3
  %28 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 65), align 8, !tbaa !158
  br label %29

29:                                               ; preds = %26, %49
  %30 = phi i32 [ %24, %26 ], [ %50, %49 ]
  %31 = phi ptr [ %28, %26 ], [ %51, %49 ]
  %32 = phi i64 [ 0, %26 ], [ %53, %49 ]
  %33 = phi i8 [ 0, %26 ], [ %52, %49 ]
  %34 = getelementptr inbounds ptr, ptr %31, i64 %32
  %35 = load ptr, ptr %34, align 8, !tbaa !76
  %36 = getelementptr inbounds %struct.HaloRen, ptr %35, i64 0, i32 25
  %37 = load i16, ptr %36, align 4, !tbaa !176
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.HaloRen, ptr %35, i64 0, i32 28
  %41 = load i32, ptr %40, align 8, !tbaa !159
  %42 = load i32, ptr %27, align 4, !tbaa !155
  %43 = and i32 %42, %41
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = load ptr, ptr %18, align 8, !tbaa !97
  tail call fastcc void @renderflare(ptr noundef %3, ptr noundef %46, ptr noundef nonnull %35) #18
  %47 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 65), align 8, !tbaa !158
  %48 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 62), align 8, !tbaa !156
  br label %49

49:                                               ; preds = %29, %39, %45
  %50 = phi i32 [ %48, %45 ], [ %30, %39 ], [ %30, %29 ]
  %51 = phi ptr [ %47, %45 ], [ %31, %39 ], [ %31, %29 ]
  %52 = phi i8 [ 1, %45 ], [ %33, %39 ], [ %33, %29 ]
  %53 = add nuw nsw i64 %32, 1
  %54 = sext i32 %50 to i64
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %29, label %56, !llvm.loop !285

56:                                               ; preds = %49
  %57 = icmp eq i8 %52, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %56
  store ptr %12, ptr %8, align 8, !tbaa !107
  %59 = load ptr, ptr %9, align 8, !tbaa !286
  %60 = load ptr, ptr %10, align 8, !tbaa !287
  tail call void %59(ptr noundef %60, ptr noundef %3, ptr noundef null) #19
  br label %61

61:                                               ; preds = %21, %58, %56
  store i32 %22, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  br label %62

62:                                               ; preds = %17, %11, %61
  %63 = load ptr, ptr %12, align 8, !tbaa !76
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %11, !llvm.loop !288

65:                                               ; preds = %62, %1
  ret void
}

; Function Attrs: optsize
declare void @project_renderdata(ptr noundef, ptr noundef, i8 noundef zeroext, float noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare void @projectverto(ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @renderflare(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 !PGOFuncName !289 {
  %4 = alloca %struct.HaloRen, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 128, i1 false), !tbaa.struct !290
  %5 = getelementptr inbounds %struct.HaloRen, ptr %4, i64 0, i32 25
  store i16 0, ptr %5, align 4, !tbaa !176
  %6 = getelementptr inbounds %struct.HaloRen, ptr %4, i64 0, i32 23
  store i8 0, ptr %6, align 1, !tbaa !291
  %7 = getelementptr inbounds %struct.HaloRen, ptr %4, i64 0, i32 22
  store i8 0, ptr %7, align 8, !tbaa !292
  %8 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 5
  %9 = load float, ptr %8, align 8, !tbaa !164
  %10 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 2
  %11 = load float, ptr %10, align 4, !tbaa !293
  %12 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 24), align 8, !tbaa !168
  %13 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 27
  %14 = load i32, ptr %13, align 4, !tbaa !294
  %15 = sitofp i32 %14 to float
  %16 = fmul float %12, %15
  %17 = fmul float %9, %9
  %18 = fmul float %9, %17
  %19 = fdiv float %16, %18
  %20 = fmul float %19, %19
  %21 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 29
  %22 = load ptr, ptr %21, align 8, !tbaa !171
  %23 = getelementptr inbounds %struct.Material, ptr %22, i64 0, i32 60
  %24 = load float, ptr %23, align 8, !tbaa !295
  %25 = fmul float %9, %24
  %26 = fmul float %25, %20
  store float %26, ptr %8, align 8, !tbaa !164
  %27 = fmul float %26, %26
  %28 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 6
  store float %27, ptr %28, align 4, !tbaa !169
  %29 = getelementptr inbounds %struct.HaloRen, ptr %4, i64 0, i32 15
  store i32 0, ptr %29, align 8, !tbaa !170
  %30 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 15
  store i32 0, ptr %30, align 8, !tbaa !170
  %31 = fmul float %11, %20
  store float %31, ptr %10, align 4, !tbaa !293
  tail call fastcc void @renderhalo_post(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  %32 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 25
  %33 = load i16, ptr %32, align 4, !tbaa !176
  %34 = icmp sgt i16 %33, 1
  br i1 %34, label %35, label %152

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.Material, ptr %22, i64 0, i32 40
  %37 = load i8, ptr %36, align 1, !tbaa !296
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds float, ptr @hashvectf, i64 %38
  %40 = getelementptr inbounds %struct.HaloRen, ptr %4, i64 0, i32 14
  %41 = getelementptr inbounds %struct.HaloRen, ptr %4, i64 0, i32 12
  %42 = getelementptr inbounds %struct.Material, ptr %22, i64 0, i32 62
  %43 = getelementptr inbounds %struct.HaloRen, ptr %4, i64 0, i32 2
  %44 = getelementptr inbounds %struct.HaloRen, ptr %4, i64 0, i32 11
  %45 = getelementptr inbounds %struct.HaloRen, ptr %4, i64 0, i32 21
  %46 = getelementptr inbounds %struct.Material, ptr %22, i64 0, i32 61
  %47 = getelementptr inbounds %struct.HaloRen, ptr %4, i64 0, i32 5
  %48 = getelementptr inbounds %struct.HaloRen, ptr %4, i64 0, i32 6
  %49 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 3
  %50 = getelementptr inbounds %struct.HaloRen, ptr %4, i64 0, i32 3
  %51 = getelementptr inbounds %struct.HaloRen, ptr %4, i64 0, i32 4
  %52 = getelementptr inbounds %struct.HaloRen, ptr %4, i64 0, i32 19
  %53 = load float, ptr %39, align 4, !tbaa !34
  br label %54

54:                                               ; preds = %35, %139
  %55 = phi float [ %53, %35 ], [ %70, %139 ]
  %56 = phi ptr [ %39, %35 ], [ %69, %139 ]
  %57 = phi i32 [ 1, %35 ], [ %148, %139 ]
  %58 = call float @llvm.fabs.f32(float %55)
  store float %58, ptr %40, align 4, !tbaa !297
  %59 = getelementptr inbounds float, ptr %56, i64 1
  %60 = load <2 x float>, ptr %59, align 4, !tbaa !34
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %62 = call <2 x float> @llvm.fabs.v2f32(<2 x float> %61)
  store <2 x float> %62, ptr %41, align 4, !tbaa !34
  %63 = load float, ptr %42, align 8, !tbaa !298
  %64 = getelementptr inbounds float, ptr %56, i64 3
  %65 = load float, ptr %64, align 4, !tbaa !34
  %66 = fmul float %31, %65
  %67 = call float @llvm.fabs.f32(float %66)
  %68 = fmul float %63, %67
  store float %68, ptr %43, align 4, !tbaa !293
  %69 = getelementptr inbounds float, ptr %56, i64 7
  %70 = load float, ptr %69, align 4, !tbaa !34
  %71 = fmul float %70, 7.000000e+01
  %72 = call float @llvm.fabs.f32(float %71)
  %73 = fadd float %72, 2.000000e+01
  store float %73, ptr %44, align 8, !tbaa !299
  store i8 0, ptr %45, align 1, !tbaa !300
  %74 = getelementptr inbounds float, ptr %56, i64 6
  %75 = load float, ptr %74, align 4, !tbaa !34
  %76 = fmul float %75, 0x400F333340000000
  %77 = call float @llvm.fabs.f32(float %76)
  %78 = fptosi float %77 to i32
  %79 = load float, ptr %46, align 4, !tbaa !301
  %80 = load float, ptr %8, align 8, !tbaa !164
  %81 = fmul float %80, 2.000000e+00
  %82 = getelementptr inbounds float, ptr %56, i64 4
  %83 = load float, ptr %82, align 4, !tbaa !34
  %84 = fmul float %81, %83
  %85 = call float @llvm.fabs.f32(float %84)
  %86 = call float @llvm.sqrt.f32(float %85)
  %87 = fmul float %79, %86
  store float %87, ptr %47, align 8, !tbaa !164
  %88 = icmp eq i32 %78, 3
  %89 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 20), align 8, !tbaa !302
  br i1 %88, label %90, label %95

90:                                               ; preds = %54
  %91 = fmul float %87, 3.000000e+00
  %92 = sdiv i32 %89, 10
  %93 = sitofp i32 %92 to float
  %94 = fadd float %91, %93
  store float %94, ptr %47, align 8, !tbaa !164
  br label %95

95:                                               ; preds = %90, %54
  %96 = phi float [ %94, %90 ], [ %87, %54 ]
  %97 = fmul float %96, %96
  store float %97, ptr %48, align 4, !tbaa !169
  %98 = getelementptr inbounds float, ptr %56, i64 5
  %99 = load float, ptr %98, align 4, !tbaa !34
  %100 = fmul float %99, 0x3FF6666660000000
  %101 = getelementptr inbounds float, ptr %56, i64 8
  %102 = load float, ptr %101, align 4, !tbaa !34
  %103 = fadd float %102, 0x3FF3333340000000
  %104 = sitofp i32 %89 to float
  %105 = fmul float %103, %104
  %106 = load <2 x float>, ptr %49, align 8, !tbaa !34
  %107 = load <2 x i32>, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !118
  %108 = sdiv <2 x i32> %107, <i32 2, i32 2>
  %109 = sitofp <2 x i32> %108 to <2 x float>
  %110 = fsub <2 x float> %106, %109
  %111 = insertelement <2 x float> poison, float %100, i64 0
  %112 = shufflevector <2 x float> %111, <2 x float> poison, <2 x i32> zeroinitializer
  %113 = fmul <2 x float> %112, %110
  %114 = fmul <2 x float> %113, %113
  %115 = extractelement <2 x float> %114, i64 1
  %116 = extractelement <2 x float> %113, i64 0
  %117 = call float @llvm.fmuladd.f32(float %116, float %116, float %115)
  %118 = fadd float %117, 1.000000e+00
  %119 = call float @llvm.sqrt.f32(float %118)
  %120 = fmul float %119, 3.200000e+01
  %121 = fadd <2 x float> %113, %109
  %122 = insertelement <2 x float> poison, float %105, i64 0
  %123 = shufflevector <2 x float> %122, <2 x float> poison, <2 x i32> zeroinitializer
  %124 = fmul <2 x float> %113, %123
  %125 = insertelement <2 x float> poison, float %120, i64 0
  %126 = shufflevector <2 x float> %125, <2 x float> poison, <2 x i32> zeroinitializer
  %127 = fdiv <2 x float> %124, %126
  %128 = fadd <2 x float> %121, %127
  store <2 x float> %128, ptr %50, align 8, !tbaa !34
  %129 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !96
  %130 = and i16 %129, 4
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %95
  %133 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !38
  %134 = and i32 %133, 8192
  %135 = icmp eq i32 %134, 0
  %136 = select i1 %135, float -5.000000e-01, float 5.000000e-01
  %137 = extractelement <2 x float> %128, i64 1
  %138 = fadd float %137, %136
  store float %138, ptr %51, align 4, !tbaa !167
  br label %139

139:                                              ; preds = %132, %95
  %140 = trunc i32 %78 to i8
  %141 = shl i8 %140, 3
  %142 = and i8 %141, 8
  store i8 %142, ptr %52, align 1, !tbaa !303
  call fastcc void @renderhalo_post(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #18
  %143 = load float, ptr %43, align 4, !tbaa !293
  %144 = fmul float %143, 5.000000e-01
  store float %144, ptr %43, align 4, !tbaa !293
  %145 = trunc i32 %78 to i8
  %146 = shl i8 %145, 2
  %147 = and i8 %146, 8
  store i8 %147, ptr %52, align 1, !tbaa !303
  call fastcc void @renderhalo_post(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #18
  %148 = add nuw nsw i32 %57, 1
  %149 = load i16, ptr %32, align 4, !tbaa !176
  %150 = sext i16 %149 to i32
  %151 = icmp slt i32 %148, %150
  br i1 %151, label %54, label %152, !llvm.loop !304

152:                                              ; preds = %139, %3
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #20
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @addps(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef zeroext %6) unnamed_addr #6 !PGOFuncName !305 {
  %8 = load i64, ptr %1, align 8, !tbaa !129
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %7
  %11 = inttoptr i64 %8 to ptr
  br label %12

12:                                               ; preds = %10, %25
  %13 = phi ptr [ %11, %10 ], [ %26, %25 ]
  %14 = getelementptr inbounds %struct.PixStr, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !221
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.PixStr, ptr %13, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !222
  %20 = icmp eq i32 %19, %3
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.PixStr, ptr %13, i64 0, i32 5
  %23 = load i16, ptr %22, align 8, !tbaa !143
  %24 = or i16 %23, %6
  store i16 %24, ptr %22, align 8, !tbaa !143
  br label %59

25:                                               ; preds = %17, %12
  %26 = load ptr, ptr %13, align 8, !tbaa !146
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %12, !llvm.loop !306

28:                                               ; preds = %25, %7
  %29 = phi ptr [ null, %7 ], [ %13, %25 ]
  %30 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !307
  %32 = getelementptr inbounds %struct.PixStrMain, ptr %31, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !111
  %34 = icmp eq i32 %33, 4095
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = tail call fastcc ptr @addpsmain(ptr noundef nonnull %0) #18
  %37 = getelementptr inbounds %struct.PixStrMain, ptr %36, i64 0, i32 3
  %38 = load i32, ptr %37, align 8, !tbaa !111
  br label %39

39:                                               ; preds = %35, %28
  %40 = phi i32 [ %38, %35 ], [ %33, %28 ]
  %41 = phi ptr [ %36, %35 ], [ %31, %28 ]
  %42 = getelementptr inbounds %struct.PixStrMain, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !109
  %44 = getelementptr inbounds %struct.PixStrMain, ptr %41, i64 0, i32 3
  %45 = add nsw i32 %40, 1
  store i32 %45, ptr %44, align 8, !tbaa !111
  %46 = sext i32 %40 to i64
  %47 = getelementptr inbounds %struct.PixStr, ptr %43, i64 %46
  %48 = icmp eq ptr %29, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %39
  store ptr %47, ptr %29, align 8, !tbaa !146
  br label %52

50:                                               ; preds = %39
  %51 = ptrtoint ptr %47 to i64
  store i64 %51, ptr %1, align 8, !tbaa !129
  br label %52

52:                                               ; preds = %50, %49
  store ptr null, ptr %47, align 8, !tbaa !146
  %53 = getelementptr inbounds %struct.PixStr, ptr %43, i64 %46, i32 1
  store i32 %2, ptr %53, align 8, !tbaa !221
  %54 = getelementptr inbounds %struct.PixStr, ptr %43, i64 %46, i32 2
  store i32 %3, ptr %54, align 4, !tbaa !222
  %55 = getelementptr inbounds %struct.PixStr, ptr %43, i64 %46, i32 3
  store i32 %4, ptr %55, align 8, !tbaa !141
  %56 = getelementptr inbounds %struct.PixStr, ptr %43, i64 %46, i32 4
  store i32 %5, ptr %56, align 4, !tbaa !308
  %57 = getelementptr inbounds %struct.PixStr, ptr %43, i64 %46, i32 5
  store i16 %6, ptr %57, align 8, !tbaa !143
  %58 = getelementptr inbounds %struct.PixStr, ptr %43, i64 %46, i32 6
  store i16 0, ptr %58, align 2, !tbaa !309
  br label %59

59:                                               ; preds = %52, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_filt_passes(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5) unnamed_addr #6 !PGOFuncName !310 {
  %7 = getelementptr inbounds %struct.RenderLayer, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !97
  %9 = shl nsw i32 %3, 2
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds float, ptr %8, i64 %10
  tail call void @add_filt_fmask(i32 noundef %1, ptr noundef %5, ptr noundef %11, i32 noundef %2) #19
  %12 = getelementptr inbounds %struct.RenderLayer, ptr %0, i64 0, i32 18
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  %14 = icmp eq ptr %13, null
  br i1 %14, label %176, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.ShadeResult, ptr %5, i64 0, i32 17
  %17 = getelementptr inbounds %struct.ShadeResult, ptr %5, i64 0, i32 16
  %18 = getelementptr inbounds %struct.ShadeResult, ptr %5, i64 0, i32 16, i64 1
  %19 = getelementptr inbounds %struct.ShadeResult, ptr %5, i64 0, i32 16, i64 2
  %20 = getelementptr inbounds %struct.ShadeResult, ptr %5, i64 0, i32 16, i64 3
  %21 = getelementptr inbounds %struct.ShadeResult, ptr %5, i64 0, i32 3
  %22 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 1
  %23 = sext i32 %3 to i64
  %24 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 4
  %25 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 74
  %26 = trunc i32 %1 to i16
  %27 = mul nsw i32 %3, 3
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 76
  %30 = getelementptr inbounds %struct.ShadeResult, ptr %5, i64 0, i32 15
  %31 = getelementptr inbounds %struct.ShadeResult, ptr %5, i64 0, i32 14
  %32 = getelementptr inbounds %struct.ShadeResult, ptr %5, i64 0, i32 13
  %33 = getelementptr inbounds %struct.ShadeResult, ptr %5, i64 0, i32 12
  %34 = getelementptr inbounds %struct.ShadeResult, ptr %5, i64 0, i32 11
  %35 = getelementptr inbounds %struct.ShadeResult, ptr %5, i64 0, i32 10
  %36 = getelementptr inbounds %struct.ShadeResult, ptr %5, i64 0, i32 9
  %37 = getelementptr inbounds %struct.ShadeResult, ptr %5, i64 0, i32 8
  %38 = getelementptr inbounds %struct.ShadeResult, ptr %5, i64 0, i32 6
  %39 = getelementptr inbounds %struct.ShadeResult, ptr %5, i64 0, i32 5
  %40 = getelementptr inbounds %struct.ShadeResult, ptr %5, i64 0, i32 1
  %41 = getelementptr inbounds %struct.ShadeResult, ptr %5, i64 0, i32 4
  br label %42

42:                                               ; preds = %15, %173
  %43 = phi ptr [ %13, %15 ], [ %174, %173 ]
  %44 = getelementptr inbounds %struct.RenderPass, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !186
  switch i32 %45, label %173 [
    i32 2, label %46
    i32 4, label %165
    i32 65536, label %51
    i32 8, label %52
    i32 16, label %53
    i32 32, label %54
    i32 64, label %55
    i32 131072, label %56
    i32 8192, label %57
    i32 128, label %58
    i32 1024, label %59
    i32 256, label %60
    i32 4096, label %61
    i32 2048, label %89
    i32 262144, label %105
    i32 16384, label %119
    i32 512, label %120
    i32 32768, label %164
  ]

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.RenderPass, ptr %43, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !235
  %49 = getelementptr inbounds float, ptr %48, i64 %23
  %50 = load float, ptr %41, align 4, !tbaa !236
  store float %50, ptr %49, align 4, !tbaa !34
  br label %173

51:                                               ; preds = %42
  br label %165

52:                                               ; preds = %42
  br label %165

53:                                               ; preds = %42
  br label %165

54:                                               ; preds = %42
  br label %165

55:                                               ; preds = %42
  br label %165

56:                                               ; preds = %42
  br label %165

57:                                               ; preds = %42
  br label %165

58:                                               ; preds = %42
  br label %165

59:                                               ; preds = %42
  br label %165

60:                                               ; preds = %42
  br label %165

61:                                               ; preds = %42
  %62 = load i32, ptr %25, align 8, !tbaa !238
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %173, label %64

64:                                               ; preds = %61
  %65 = tail call i32 @count_mask(i16 noundef zeroext %26) #18, !range !144
  %66 = sitofp i32 %65 to float
  %67 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !75
  %68 = sitofp i16 %67 to float
  %69 = fdiv float %66, %68
  %70 = getelementptr inbounds %struct.RenderPass, ptr %43, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !235
  %72 = getelementptr inbounds float, ptr %71, i64 %28
  %73 = load i32, ptr %29, align 8, !tbaa !239
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 72, i64 %74, i32 2
  %76 = load float, ptr %75, align 8, !tbaa !34
  %77 = tail call float @llvm.fmuladd.f32(float %76, float 5.000000e-01, float 5.000000e-01)
  %78 = load float, ptr %72, align 4, !tbaa !34
  %79 = tail call float @llvm.fmuladd.f32(float %69, float %77, float %78)
  store float %79, ptr %72, align 4, !tbaa !34
  %80 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 72, i64 %74, i32 2, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !34
  %82 = tail call float @llvm.fmuladd.f32(float %81, float 5.000000e-01, float 5.000000e-01)
  %83 = getelementptr inbounds float, ptr %72, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !34
  %85 = tail call float @llvm.fmuladd.f32(float %69, float %82, float %84)
  store float %85, ptr %83, align 4, !tbaa !34
  %86 = getelementptr inbounds float, ptr %72, i64 2
  %87 = load float, ptr %86, align 4, !tbaa !34
  %88 = fadd float %69, %87
  store float %88, ptr %86, align 4, !tbaa !34
  br label %173

89:                                               ; preds = %42
  %90 = load ptr, ptr %22, align 8, !tbaa !240
  %91 = icmp eq ptr %90, null
  br i1 %91, label %173, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.RenderPass, ptr %43, i64 0, i32 6
  %94 = load ptr, ptr %93, align 8, !tbaa !235
  %95 = getelementptr inbounds float, ptr %94, i64 %23
  %96 = load float, ptr %95, align 4, !tbaa !34
  %97 = fcmp oeq float %96, 0.000000e+00
  br i1 %97, label %98, label %173

98:                                               ; preds = %92
  %99 = load ptr, ptr %24, align 8, !tbaa !241
  %100 = getelementptr inbounds %struct.ObjectRen, ptr %99, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !242
  %102 = getelementptr inbounds %struct.Object, ptr %101, i64 0, i32 96
  %103 = load i16, ptr %102, align 4, !tbaa !244
  %104 = sitofp i16 %103 to float
  store float %104, ptr %95, align 4, !tbaa !34
  br label %173

105:                                              ; preds = %42
  %106 = load ptr, ptr %22, align 8, !tbaa !240
  %107 = icmp eq ptr %106, null
  br i1 %107, label %173, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.RenderPass, ptr %43, i64 0, i32 6
  %110 = load ptr, ptr %109, align 8, !tbaa !235
  %111 = getelementptr inbounds float, ptr %110, i64 %23
  %112 = load float, ptr %111, align 4, !tbaa !34
  %113 = fcmp oeq float %112, 0.000000e+00
  br i1 %113, label %114, label %173

114:                                              ; preds = %108
  %115 = load ptr, ptr %4, align 8, !tbaa !247
  %116 = getelementptr inbounds %struct.Material, ptr %115, i64 0, i32 127
  %117 = load i16, ptr %116, align 2, !tbaa !248
  %118 = sitofp i16 %117 to float
  store float %118, ptr %111, align 4, !tbaa !34
  br label %173

119:                                              ; preds = %42
  br label %165

120:                                              ; preds = %42
  %121 = getelementptr inbounds %struct.RenderPass, ptr %43, i64 0, i32 6
  %122 = load ptr, ptr %121, align 8, !tbaa !235
  %123 = getelementptr inbounds float, ptr %122, i64 %10
  %124 = load <2 x float>, ptr %17, align 4, !tbaa !34
  %125 = fcmp olt <2 x float> %124, zeroinitializer
  %126 = fneg <2 x float> %124
  %127 = select <2 x i1> %125, <2 x float> %126, <2 x float> %124
  %128 = shufflevector <2 x float> %127, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %129 = fadd <2 x float> %127, %128
  %130 = extractelement <2 x float> %129, i64 0
  %131 = load <2 x float>, ptr %123, align 4, !tbaa !34
  %132 = fcmp olt <2 x float> %131, zeroinitializer
  %133 = fneg <2 x float> %131
  %134 = select <2 x i1> %132, <2 x float> %133, <2 x float> %131
  %135 = shufflevector <2 x float> %134, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %136 = fadd <2 x float> %134, %135
  %137 = extractelement <2 x float> %136, i64 0
  %138 = fcmp olt float %130, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %120
  %140 = getelementptr inbounds float, ptr %123, i64 1
  %141 = extractelement <2 x float> %124, i64 0
  store float %141, ptr %123, align 4, !tbaa !34
  %142 = load float, ptr %18, align 4, !tbaa !34
  store float %142, ptr %140, align 4, !tbaa !34
  br label %143

143:                                              ; preds = %139, %120
  %144 = load <2 x float>, ptr %19, align 4, !tbaa !34
  %145 = fcmp olt <2 x float> %144, zeroinitializer
  %146 = fneg <2 x float> %144
  %147 = select <2 x i1> %145, <2 x float> %146, <2 x float> %144
  %148 = shufflevector <2 x float> %147, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %149 = fadd <2 x float> %147, %148
  %150 = extractelement <2 x float> %149, i64 0
  %151 = getelementptr inbounds float, ptr %123, i64 2
  %152 = load <2 x float>, ptr %151, align 4, !tbaa !34
  %153 = fcmp olt <2 x float> %152, zeroinitializer
  %154 = fneg <2 x float> %152
  %155 = select <2 x i1> %153, <2 x float> %154, <2 x float> %152
  %156 = shufflevector <2 x float> %155, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %157 = fadd <2 x float> %155, %156
  %158 = extractelement <2 x float> %157, i64 0
  %159 = fcmp olt float %150, %158
  br i1 %159, label %160, label %173

160:                                              ; preds = %143
  %161 = getelementptr inbounds float, ptr %123, i64 3
  %162 = extractelement <2 x float> %144, i64 0
  store float %162, ptr %151, align 4, !tbaa !34
  %163 = load float, ptr %20, align 4, !tbaa !34
  store float %163, ptr %161, align 4, !tbaa !34
  br label %173

164:                                              ; preds = %42
  br label %165

165:                                              ; preds = %42, %164, %119, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51
  %166 = phi ptr [ %39, %51 ], [ %38, %52 ], [ %37, %53 ], [ %36, %54 ], [ %35, %55 ], [ %34, %56 ], [ %33, %57 ], [ %32, %58 ], [ %31, %59 ], [ %30, %60 ], [ %21, %119 ], [ %16, %164 ], [ %40, %42 ]
  %167 = phi i32 [ 3, %51 ], [ 3, %52 ], [ 3, %53 ], [ 3, %54 ], [ 3, %55 ], [ 3, %56 ], [ 3, %57 ], [ 3, %58 ], [ 3, %59 ], [ 3, %60 ], [ 1, %119 ], [ 4, %164 ], [ %45, %42 ]
  %168 = getelementptr inbounds %struct.RenderPass, ptr %43, i64 0, i32 6
  %169 = load ptr, ptr %168, align 8, !tbaa !235
  %170 = mul nsw i32 %167, %3
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float, ptr %169, i64 %171
  tail call void @add_filt_fmask_pixsize(i32 noundef %1, ptr noundef nonnull %166, ptr noundef %172, i32 noundef %2, i32 noundef %167) #19
  br label %173

173:                                              ; preds = %46, %42, %64, %61, %92, %98, %89, %108, %114, %105, %160, %143, %165
  %174 = load ptr, ptr %43, align 8, !tbaa !76
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %42, !llvm.loop !311

176:                                              ; preds = %173, %6
  ret void
}

; Function Attrs: optsize
declare void @add_filt_fmask(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @add_filt_fmask_pixsize(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @shade_input_initialize(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @renderspothalo(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #12 !PGOFuncName !312 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #12 !PGOFuncName !313 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @halo_pixelstruct(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr noundef readonly %7) unnamed_addr #6 !PGOFuncName !314 {
  %9 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #20
  %10 = icmp sgt i32 %2, 1
  %11 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %12 = load i16, ptr %11, align 4, !tbaa !176
  %13 = icmp eq ptr %7, null
  br i1 %13, label %87, label %14

14:                                               ; preds = %8
  %15 = zext i16 %12 to i32
  %16 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 15
  %17 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 29
  %18 = shl nsw i32 %3, 2
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 20
  %21 = zext nneg i32 %2 to i64
  br label %22

22:                                               ; preds = %14, %77
  %23 = phi i32 [ 0, %14 ], [ %82, %77 ]
  %24 = phi ptr [ %7, %14 ], [ %83, %77 ]
  %25 = phi i32 [ %15, %14 ], [ %78, %77 ]
  %26 = phi i32 [ 0, %14 ], [ %31, %77 ]
  %27 = phi <4 x float> [ zeroinitializer, %14 ], [ %79, %77 ]
  %28 = getelementptr inbounds %struct.PixStr, ptr %24, i64 0, i32 5
  %29 = load i16, ptr %28, align 8, !tbaa !143
  %30 = call i32 @count_mask(i16 noundef zeroext %29) #18, !range !144
  %31 = add nuw nsw i32 %30, %26
  %32 = getelementptr inbounds %struct.PixStr, ptr %24, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !141
  %34 = call fastcc i32 @calchalo_z(ptr noundef %0, i32 noundef %33) #18
  %35 = load i32, ptr %16, align 8, !tbaa !170
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %22
  %38 = load ptr, ptr %17, align 8, !tbaa !171
  %39 = icmp eq ptr %38, null
  br i1 %39, label %77, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.Material, ptr %38, i64 0, i32 51
  %42 = load i32, ptr %41, align 4, !tbaa !172
  %43 = and i32 %42, 16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %77, label %45

45:                                               ; preds = %40, %22
  %46 = trunc i32 %25 to i16
  %47 = call i32 @shadeHaloFloat(ptr noundef nonnull %0, ptr noundef nonnull %9, i32 noundef %34, float noundef %4, float noundef %5, float noundef %6, i16 noundef signext %46) #19
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %77, label %49

49:                                               ; preds = %45
  br i1 %10, label %50, label %68

50:                                               ; preds = %49, %65
  %51 = phi i64 [ %66, %65 ], [ 0, %49 ]
  %52 = load i16, ptr %28, align 8, !tbaa !143
  %53 = zext i16 %52 to i32
  %54 = trunc i64 %51 to i32
  %55 = shl nuw i32 1, %54
  %56 = and i32 %55, %53
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %50
  %59 = getelementptr inbounds ptr, ptr %1, i64 %51
  %60 = load ptr, ptr %59, align 8, !tbaa !76
  %61 = getelementptr inbounds %struct.RenderLayer, ptr %60, i64 0, i32 11
  %62 = load ptr, ptr %61, align 8, !tbaa !97
  %63 = getelementptr inbounds float, ptr %62, i64 %19
  %64 = load i8, ptr %20, align 2, !tbaa !177
  call void @addalphaAddfacFloat(ptr noundef %63, ptr noundef nonnull %9, i8 noundef zeroext %64) #19
  br label %65

65:                                               ; preds = %50, %58
  %66 = add nuw nsw i64 %51, 1
  %67 = icmp eq i64 %66, %21
  br i1 %67, label %77, label %50, !llvm.loop !315

68:                                               ; preds = %49
  %69 = sitofp i32 %30 to float
  %70 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !75
  %71 = sitofp i16 %70 to float
  %72 = fdiv float %69, %71
  %73 = load <4 x float>, ptr %9, align 16, !tbaa !34
  %74 = insertelement <4 x float> poison, float %72, i64 0
  %75 = shufflevector <4 x float> %74, <4 x float> poison, <4 x i32> zeroinitializer
  %76 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %75, <4 x float> %73, <4 x float> %27)
  br label %77

77:                                               ; preds = %65, %45, %68, %40, %37
  %78 = phi i32 [ 0, %68 ], [ %25, %45 ], [ %25, %40 ], [ %25, %37 ], [ 0, %65 ]
  %79 = phi <4 x float> [ %76, %68 ], [ %27, %45 ], [ %27, %40 ], [ %27, %37 ], [ %27, %65 ]
  %80 = load i16, ptr %28, align 8, !tbaa !143
  %81 = zext i16 %80 to i32
  %82 = or i32 %23, %81
  %83 = load ptr, ptr %24, align 8, !tbaa !146
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %22, !llvm.loop !316

85:                                               ; preds = %77
  %86 = trunc i32 %78 to i16
  br label %87

87:                                               ; preds = %85, %8
  %88 = phi i32 [ 0, %8 ], [ %31, %85 ]
  %89 = phi i16 [ %12, %8 ], [ %86, %85 ]
  %90 = phi i32 [ 0, %8 ], [ %82, %85 ]
  %91 = phi <4 x float> [ zeroinitializer, %8 ], [ %79, %85 ]
  %92 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !75
  %93 = sext i16 %92 to i32
  %94 = sub nsw i32 %93, %88
  %95 = icmp eq i32 %88, %93
  br i1 %95, label %109, label %96

96:                                               ; preds = %87
  %97 = call i32 @shadeHaloFloat(ptr noundef %0, ptr noundef nonnull %9, i32 noundef 8388607, float noundef %4, float noundef %5, float noundef %6, i16 noundef signext %89) #19
  %98 = icmp eq i32 %97, 0
  %99 = or i1 %10, %98
  br i1 %99, label %109, label %100

100:                                              ; preds = %96
  %101 = sitofp i32 %94 to float
  %102 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !75
  %103 = sitofp i16 %102 to float
  %104 = fdiv float %101, %103
  %105 = load <4 x float>, ptr %9, align 16, !tbaa !34
  %106 = insertelement <4 x float> poison, float %104, i64 0
  %107 = shufflevector <4 x float> %106, <4 x float> poison, <4 x i32> zeroinitializer
  %108 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %107, <4 x float> %105, <4 x float> %91)
  br label %131

109:                                              ; preds = %96, %87
  br i1 %10, label %110, label %131

110:                                              ; preds = %109
  %111 = shl nsw i32 %3, 2
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 20
  %114 = zext nneg i32 %2 to i64
  br label %115

115:                                              ; preds = %110, %128
  %116 = phi i64 [ 0, %110 ], [ %129, %128 ]
  %117 = trunc i64 %116 to i32
  %118 = shl nuw i32 1, %117
  %119 = and i32 %118, %90
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %115
  %122 = getelementptr inbounds ptr, ptr %1, i64 %116
  %123 = load ptr, ptr %122, align 8, !tbaa !76
  %124 = getelementptr inbounds %struct.RenderLayer, ptr %123, i64 0, i32 11
  %125 = load ptr, ptr %124, align 8, !tbaa !97
  %126 = getelementptr inbounds float, ptr %125, i64 %112
  %127 = load i8, ptr %113, align 2, !tbaa !177
  call void @addalphaAddfacFloat(ptr noundef %126, ptr noundef nonnull %9, i8 noundef zeroext %127) #19
  br label %128

128:                                              ; preds = %115, %121
  %129 = add nuw nsw i64 %116, 1
  %130 = icmp eq i64 %129, %114
  br i1 %130, label %143, label %115, !llvm.loop !317

131:                                              ; preds = %100, %109
  %132 = phi <4 x float> [ %108, %100 ], [ %91, %109 ]
  store <4 x float> %132, ptr %9, align 16, !tbaa !34
  %133 = icmp sgt i32 %2, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = shl nsw i32 %3, 2
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 20
  %138 = load ptr, ptr %1, align 8, !tbaa !76
  %139 = getelementptr inbounds %struct.RenderLayer, ptr %138, i64 0, i32 11
  %140 = load ptr, ptr %139, align 8, !tbaa !97
  %141 = getelementptr inbounds float, ptr %140, i64 %136
  %142 = load i8, ptr %137, align 2, !tbaa !177
  call void @addalphaAddfacFloat(ptr noundef %141, ptr noundef nonnull %9, i8 noundef zeroext %142) #19
  br label %143

143:                                              ; preds = %128, %134, %131
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @calchalo_z(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #13 !PGOFuncName !318 {
  %3 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 19
  %4 = load i8, ptr %3, align 1, !tbaa !303
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  %7 = icmp slt i32 %1, 2147483632
  %8 = select i1 %7, i32 -8388607, i32 %1
  %9 = ashr i32 %1, 8
  %10 = select i1 %6, i32 %9, i32 %8
  ret i32 %10
}

; Function Attrs: optsize
declare i32 @shadeHaloFloat(ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, i16 noundef signext) local_unnamed_addr #7

; Function Attrs: optsize
declare void @addalphaAddfacFloat(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RE_RenderLayerGetPass(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !319 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #10 !PGOFuncName !320 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @shadeAtmPixel(ptr noundef, ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @shadeSkyPixel(ptr noundef, float noundef, float noundef, i16 noundef signext) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !321 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @addAlphaUnderFloat(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #14 !PGOFuncName !322 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @shade_input_set_triangle_i(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #15 !PGOFuncName !323 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #18
  ret void
}

; Function Attrs: optsize
declare void @shade_input_set_viewco(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #15 !PGOFuncName !324 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #18
  %3 = tail call float @sqrtf(float noundef %2) #19
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #12 !PGOFuncName !325 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare void @shade_input_set_uv(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @shade_input_set_normals(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @shade_input_flip_normals(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #10 !PGOFuncName !326 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @shade_input_init_material(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @shade_input_set_shade_texco(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @shade_samples_do_AO(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @shade_material_loop(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !PGOFuncName !327 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #18
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #19
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #18
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #18
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !328 {
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
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #10 !PGOFuncName !329 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #14 !PGOFuncName !330 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !34
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @renderhalo_post(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 !PGOFuncName !331 {
  %4 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  %5 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 3
  %6 = load float, ptr %5, align 8, !tbaa !163
  %7 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 15), align 4, !tbaa !332
  %8 = sitofp i32 %7 to float
  %9 = fsub float %6, %8
  %10 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 4
  %11 = load float, ptr %10, align 4, !tbaa !167
  %12 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 15, i32 2), align 4, !tbaa !333
  %13 = sitofp i32 %12 to float
  %14 = fsub float %11, %13
  %15 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 5
  %16 = load float, ptr %15, align 8, !tbaa !164
  %17 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 24), align 8, !tbaa !168
  %18 = fdiv float %16, %17
  %19 = fsub float %14, %18
  %20 = fptosi float %19 to i32
  %21 = trunc i32 %20 to i16
  store i16 %21, ptr %2, align 8, !tbaa !162
  %22 = fadd float %14, %18
  %23 = fptosi float %22 to i32
  %24 = trunc i32 %23 to i16
  %25 = getelementptr inbounds %struct.HaloRen, ptr %2, i64 0, i32 1
  store i16 %24, ptr %25, align 2, !tbaa !161
  %26 = icmp slt i32 %23, 0
  br i1 %26, label %103, label %27

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !334
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
  %41 = load i32, ptr %40, align 8, !tbaa !335
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
  %67 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 24), align 8, !tbaa !168
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
  %79 = load float, ptr %59, align 4, !tbaa !169
  %80 = fcmp olt float %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %72
  %82 = load i16, ptr %60, align 4, !tbaa !176
  %83 = call i32 @shadeHaloFloat(ptr noundef nonnull %2, ptr noundef nonnull %4, i32 noundef 8388607, float noundef %78, float noundef %76, float noundef %68, i16 noundef signext %82) #19
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = load i8, ptr %61, align 2, !tbaa !177
  call void @addalphaAddfacFloat(ptr noundef %74, ptr noundef nonnull %4, i8 noundef zeroext %86) #19
  br label %87

87:                                               ; preds = %81, %85, %72
  %88 = getelementptr inbounds float, ptr %74, i64 4
  %89 = add nuw i32 %73, 1
  %90 = icmp eq i32 %73, %51
  br i1 %90, label %91, label %72, !llvm.loop !336

91:                                               ; preds = %87, %62
  %92 = load i32, ptr %40, align 8, !tbaa !335
  %93 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !93
  %94 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !94
  %95 = call i32 %93(ptr noundef %94) #19
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = shl nsw i32 %92, 2
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, ptr %64, i64 %99
  %101 = add nuw i32 %63, 1
  %102 = icmp eq i32 %101, %46
  br i1 %102, label %103, label %62, !llvm.loop !337

103:                                              ; preds = %97, %91, %43, %27, %39, %31, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #17

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { optsize }
attributes #19 = { nounwind optsize }
attributes #20 = { nounwind }

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
!58 = !{!39, !35, i64 172}
!59 = !{!39, !41, i64 152}
!60 = !{!39, !35, i64 180}
!61 = !{!39, !35, i64 236}
!62 = !{!39, !35, i64 228}
!63 = !{!39, !35, i64 224}
!64 = !{!"rendercore.c:BLI_rctf_size_x"}
!65 = !{!45, !35, i64 4}
!66 = !{!45, !35, i64 0}
!67 = !{!"rendercore.c:BLI_rctf_size_y"}
!68 = !{!45, !35, i64 12}
!69 = !{!45, !35, i64 8}
!70 = !{!39, !40, i64 552}
!71 = !{!36, !36, i64 0}
!72 = !{!73, !40, i64 24}
!73 = !{!"RenderPart", !40, i64 0, !40, i64 8, !40, i64 16, !43, i64 24, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !44, i64 112, !41, i64 128, !41, i64 132, !41, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !40, i64 152}
!74 = !{!73, !40, i64 16}
!75 = !{!39, !42, i64 98}
!76 = !{!40, !40, i64 0}
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!73, !41, i64 128}
!80 = !{!73, !41, i64 132}
!81 = !{!73, !40, i64 40}
!82 = !{!73, !40, i64 48}
!83 = !{!73, !40, i64 56}
!84 = !{!85, !41, i64 104}
!85 = !{!"RenderLayer", !40, i64 0, !40, i64 8, !36, i64 16, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !40, i64 152, !40, i64 160, !41, i64 168, !41, i64 172, !40, i64 176, !43, i64 184}
!86 = !{!73, !40, i64 64}
!87 = !{!73, !40, i64 72}
!88 = !{!73, !42, i64 144}
!89 = !{!90, !40, i64 0}
!90 = !{!"ZbufSolidData", !40, i64 0, !40, i64 8, !40, i64 16}
!91 = !{!90, !40, i64 8}
!92 = !{!90, !40, i64 16}
!93 = !{!39, !40, i64 6048}
!94 = !{!39, !40, i64 6056}
!95 = distinct !{!95, !78}
!96 = !{!39, !42, i64 96}
!97 = !{!85, !40, i64 136}
!98 = !{!85, !40, i64 144}
!99 = !{!42, !42, i64 0}
!100 = distinct !{!100, !78}
!101 = distinct !{!101, !78}
!102 = !{!85, !41, i64 108}
!103 = distinct !{!103, !78}
!104 = !{!105, !41, i64 108}
!105 = !{!"RenderResult", !40, i64 0, !40, i64 8, !41, i64 16, !41, i64 20, !42, i64 24, !42, i64 26, !40, i64 32, !40, i64 40, !40, i64 48, !44, i64 56, !41, i64 72, !41, i64 76, !43, i64 80, !44, i64 96, !40, i64 112, !41, i64 120, !41, i64 124, !41, i64 128, !40, i64 136}
!106 = !{!105, !41, i64 104}
!107 = !{!105, !40, i64 112}
!108 = !{!"rendercore.c:addpsmain"}
!109 = !{!110, !40, i64 16}
!110 = !{!"PixStrMain", !40, i64 0, !40, i64 8, !40, i64 16, !41, i64 24}
!111 = !{!110, !41, i64 24}
!112 = !{!"rendercore.c:make_pixelstructs"}
!113 = !{!114, !40, i64 128}
!114 = !{!"ZSpan", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84, !40, i64 88, !40, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !40, i64 152, !40, i64 160, !41, i64 168, !35, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !35, i64 188, !40, i64 192, !40, i64 200, !40, i64 208, !40, i64 216}
!115 = !{!114, !40, i64 88}
!116 = !{!114, !40, i64 112}
!117 = !{!114, !40, i64 120}
!118 = !{!41, !41, i64 0}
!119 = distinct !{!119, !78}
!120 = distinct !{!120, !78}
!121 = !{!"rendercore.c:shadeDA_tile"}
!122 = !{!73, !41, i64 120}
!123 = !{!39, !40, i64 5688}
!124 = !{!73, !42, i64 140}
!125 = !{!73, !41, i64 124}
!126 = !{!73, !41, i64 112}
!127 = !{!73, !41, i64 116}
!128 = !{!73, !42, i64 146}
!129 = !{!130, !130, i64 0}
!130 = !{!"long", !36, i64 0}
!131 = !{!132, !41, i64 0}
!132 = !{!"ShadeSample", !41, i64 0, !36, i64 8, !36, i64 136, !36, i64 23688}
!133 = !{!134, !41, i64 1388}
!134 = !{!"ShadeInput", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !41, i64 40, !36, i64 44, !42, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !42, i64 88, !42, i64 90, !42, i64 92, !42, i64 94, !42, i64 96, !36, i64 100, !36, i64 112, !36, i64 124, !36, i64 136, !36, i64 148, !41, i64 160, !41, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !36, i64 192, !36, i64 204, !36, i64 216, !35, i64 228, !35, i64 232, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !35, i64 252, !35, i64 256, !35, i64 260, !35, i64 264, !35, i64 268, !35, i64 272, !35, i64 276, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !35, i64 304, !35, i64 308, !35, i64 312, !35, i64 316, !41, i64 320, !36, i64 324, !36, i64 336, !36, i64 348, !36, i64 360, !36, i64 372, !36, i64 384, !36, i64 400, !36, i64 416, !35, i64 428, !36, i64 432, !36, i64 444, !36, i64 456, !35, i64 472, !36, i64 476, !36, i64 492, !36, i64 504, !36, i64 520, !36, i64 904, !41, i64 1096, !41, i64 1100, !41, i64 1104, !41, i64 1108, !36, i64 1112, !36, i64 1124, !36, i64 1136, !36, i64 1148, !36, i64 1160, !36, i64 1172, !36, i64 1184, !36, i64 1196, !36, i64 1208, !36, i64 1220, !36, i64 1232, !36, i64 1244, !35, i64 1256, !35, i64 1260, !36, i64 1264, !36, i64 1276, !36, i64 1288, !36, i64 1300, !36, i64 1312, !36, i64 1324, !35, i64 1336, !35, i64 1340, !36, i64 1344, !36, i64 1356, !36, i64 1368, !41, i64 1380, !41, i64 1384, !41, i64 1388, !36, i64 1392, !41, i64 1404, !41, i64 1408, !41, i64 1412, !36, i64 1416, !35, i64 1428, !36, i64 1432, !36, i64 1433, !42, i64 1434, !42, i64 1436, !42, i64 1438, !41, i64 1440, !41, i64 1444, !41, i64 1448, !41, i64 1452, !40, i64 1456, !40, i64 1464}
!135 = distinct !{!135, !78}
!136 = distinct !{!136, !78}
!137 = distinct !{!137, !78}
!138 = distinct !{!138, !78}
!139 = distinct !{!139, !78}
!140 = !{!"rendercore.c:lamphalo_tile"}
!141 = !{!142, !41, i64 16}
!142 = !{!"PixStr", !40, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !42, i64 24, !42, i64 26}
!143 = !{!142, !42, i64 24}
!144 = !{i32 0, i32 511}
!145 = distinct !{!145, !78}
!146 = !{!142, !40, i64 0}
!147 = distinct !{!147, !78}
!148 = distinct !{!148, !78}
!149 = distinct !{!149, !78}
!150 = distinct !{!150, !78}
!151 = distinct !{!151, !78}
!152 = !{!"rendercore.c:halo_tile"}
!153 = !{i64 0, i64 4, !118, i64 4, i64 4, !118, i64 8, i64 4, !118}
!154 = !{i64 0, i64 4, !118}
!155 = !{!85, !41, i64 92}
!156 = !{!39, !41, i64 5728}
!157 = distinct !{!157, !78}
!158 = !{!39, !40, i64 5744}
!159 = !{!160, !41, i64 104}
!160 = !{!"HaloRen", !42, i64 0, !42, i64 2, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !36, i64 32, !36, i64 44, !35, i64 56, !35, i64 60, !35, i64 64, !35, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !36, i64 84, !36, i64 85, !36, i64 86, !36, i64 87, !36, i64 88, !36, i64 89, !36, i64 90, !42, i64 92, !35, i64 96, !41, i64 100, !41, i64 104, !40, i64 112, !40, i64 120}
!161 = !{!160, !42, i64 2}
!162 = !{!160, !42, i64 0}
!163 = !{!160, !35, i64 8}
!164 = !{!160, !35, i64 16}
!165 = !{i32 -2147483648, i32 32768}
!166 = !{i32 -32768, i32 -2147483648}
!167 = !{!160, !35, i64 12}
!168 = !{!39, !35, i64 216}
!169 = !{!160, !35, i64 20}
!170 = !{!160, !41, i64 72}
!171 = !{!160, !40, i64 112}
!172 = !{!173, !41, i64 396}
!173 = !{!"Material", !54, i64 0, !40, i64 120, !42, i64 128, !42, i64 130, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !35, i64 216, !35, i64 220, !174, i64 224, !175, i64 312, !35, i64 328, !35, i64 332, !35, i64 336, !35, i64 340, !35, i64 344, !35, i64 348, !35, i64 352, !42, i64 356, !42, i64 358, !42, i64 360, !36, i64 362, !36, i64 363, !35, i64 364, !35, i64 368, !42, i64 372, !42, i64 374, !35, i64 376, !35, i64 380, !35, i64 384, !35, i64 388, !42, i64 392, !42, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !42, i64 412, !42, i64 414, !42, i64 416, !42, i64 418, !35, i64 420, !35, i64 424, !35, i64 428, !35, i64 432, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !35, i64 456, !36, i64 460, !35, i64 524, !35, i64 528, !35, i64 532, !41, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !42, i64 544, !42, i64 546, !42, i64 548, !36, i64 550, !36, i64 551, !42, i64 552, !42, i64 554, !35, i64 556, !35, i64 560, !36, i64 564, !35, i64 580, !35, i64 584, !42, i64 588, !42, i64 590, !40, i64 592, !40, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !42, i64 612, !42, i64 614, !35, i64 616, !35, i64 620, !36, i64 624, !40, i64 768, !40, i64 776, !40, i64 784, !40, i64 792, !35, i64 800, !35, i64 804, !35, i64 808, !35, i64 812, !35, i64 816, !42, i64 820, !42, i64 822, !36, i64 824, !36, i64 836, !35, i64 848, !35, i64 852, !35, i64 856, !35, i64 860, !35, i64 864, !35, i64 868, !35, i64 872, !42, i64 876, !42, i64 878, !41, i64 880, !42, i64 884, !42, i64 886, !36, i64 888, !42, i64 904, !42, i64 906, !42, i64 908, !42, i64 910, !42, i64 912, !36, i64 914, !40, i64 920, !43, i64 928}
!174 = !{!"VolumeSettings", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !35, i64 52, !35, i64 56, !35, i64 60, !42, i64 64, !42, i64 66, !42, i64 68, !42, i64 70, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84}
!175 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!176 = !{!160, !42, i64 92}
!177 = !{!160, !36, i64 86}
!178 = distinct !{!178, !78}
!179 = distinct !{!179, !78}
!180 = distinct !{!180, !78}
!181 = !{!"rendercore.c:make_solid_mask"}
!182 = distinct !{!182, !78}
!183 = distinct !{!183, !78}
!184 = !{!"rendercore.c:addAlphaOverFloatMask"}
!185 = !{!"rendercore.c:atm_tile"}
!186 = !{!187, !41, i64 16}
!187 = !{!"RenderPass", !40, i64 0, !40, i64 8, !41, i64 16, !41, i64 20, !36, i64 24, !36, i64 88, !40, i64 96, !41, i64 104, !41, i64 108, !41, i64 112}
!188 = distinct !{!188, !78}
!189 = !{!190, !40, i64 24}
!190 = !{!"GroupObject", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !42, i64 32, !36, i64 34}
!191 = !{!192, !42, i64 40}
!192 = !{!"LampRen", !40, i64 0, !40, i64 8, !35, i64 16, !35, i64 20, !35, i64 24, !36, i64 28, !42, i64 40, !41, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !35, i64 60, !35, i64 64, !35, i64 68, !35, i64 72, !35, i64 76, !35, i64 80, !41, i64 84, !35, i64 88, !35, i64 92, !36, i64 96, !35, i64 108, !35, i64 112, !35, i64 116, !35, i64 120, !35, i64 124, !35, i64 128, !42, i64 132, !35, i64 136, !35, i64 140, !40, i64 144, !42, i64 152, !42, i64 154, !35, i64 156, !42, i64 160, !42, i64 162, !42, i64 164, !42, i64 166, !42, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !42, i64 188, !42, i64 190, !42, i64 192, !42, i64 194, !42, i64 196, !42, i64 198, !42, i64 200, !36, i64 202, !36, i64 204, !35, i64 208, !35, i64 212, !35, i64 216, !35, i64 220, !40, i64 224, !40, i64 232, !40, i64 240, !36, i64 248, !35, i64 284, !36, i64 288, !35, i64 300, !36, i64 304, !36, i64 368, !36, i64 404, !35, i64 500, !40, i64 504, !36, i64 512, !36, i64 520, !41, i64 664, !41, i64 668}
!193 = !{!192, !40, i64 224}
!194 = !{!195, !42, i64 0}
!195 = !{!"SunSky", !42, i64 0, !42, i64 2, !42, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !36, i64 20, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !36, i64 48, !36, i64 68, !36, i64 88, !35, i64 108, !35, i64 112, !35, i64 116, !35, i64 120, !35, i64 124, !35, i64 128, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !36, i64 164, !36, i64 176, !36, i64 188, !36, i64 200, !36, i64 212}
!196 = distinct !{!196, !78}
!197 = !{!190, !40, i64 16}
!198 = distinct !{!198, !78}
!199 = distinct !{!199, !78}
!200 = distinct !{!200, !78}
!201 = distinct !{!201, !78}
!202 = !{!"rendercore.c:sky_tile"}
!203 = !{!39, !42, i64 1640}
!204 = distinct !{!204, !78}
!205 = distinct !{!205, !78}
!206 = distinct !{!206, !78}
!207 = !{!"rendercore.c:edge_enhance_add"}
!208 = !{!39, !35, i64 1556}
!209 = distinct !{!209, !78}
!210 = !{!"rendercore.c:reset_sky_speed"}
!211 = distinct !{!211, !78, !212, !213}
!212 = !{!"llvm.loop.isvectorized", i32 1}
!213 = !{!"llvm.loop.unroll.runtime.disable"}
!214 = distinct !{!214, !78}
!215 = !{!"rendercore.c:clamp_alpha_rgb_range"}
!216 = distinct !{!216, !78}
!217 = !{!"rendercore.c:freeps"}
!218 = !{!43, !40, i64 0}
!219 = !{!110, !40, i64 0}
!220 = distinct !{!220, !78}
!221 = !{!142, !41, i64 8}
!222 = !{!142, !41, i64 12}
!223 = distinct !{!223, !78}
!224 = distinct !{!224, !78}
!225 = distinct !{!225, !78}
!226 = distinct !{!226, !78}
!227 = !{!"rendercore.c:edge_enhance_tile"}
!228 = distinct !{!228, !78}
!229 = distinct !{!229, !78}
!230 = distinct !{!230, !78}
!231 = distinct !{!231, !78}
!232 = distinct !{!232, !78}
!233 = distinct !{!233, !78}
!234 = !{!"rendercore.c:add_passes"}
!235 = !{!187, !40, i64 96}
!236 = !{!237, !35, i64 40}
!237 = !{!"ShadeResult", !36, i64 0, !36, i64 16, !35, i64 32, !35, i64 36, !35, i64 40, !36, i64 44, !36, i64 56, !36, i64 68, !36, i64 80, !36, i64 92, !36, i64 108, !36, i64 120, !36, i64 132, !36, i64 144, !36, i64 156, !36, i64 168, !36, i64 180, !36, i64 196}
!238 = !{!134, !41, i64 1096}
!239 = !{!134, !41, i64 1104}
!240 = !{!134, !40, i64 8}
!241 = !{!134, !40, i64 32}
!242 = !{!243, !40, i64 16}
!243 = !{!"ObjectRen", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !36, i64 56, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !40, i64 112, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !40, i64 152, !40, i64 160, !41, i64 168, !41, i64 172, !41, i64 176, !36, i64 180, !40, i64 248, !40, i64 256, !40, i64 264, !40, i64 272}
!244 = !{!245, !42, i64 1124}
!245 = !{!"Object", !54, i64 0, !40, i64 120, !40, i64 128, !42, i64 136, !42, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !36, i64 152, !40, i64 216, !40, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !40, i64 280, !40, i64 288, !40, i64 296, !40, i64 304, !246, i64 312, !40, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !41, i64 432, !41, i64 436, !40, i64 440, !40, i64 448, !41, i64 456, !41, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !35, i64 616, !35, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !41, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !36, i64 966, !36, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !35, i64 988, !35, i64 992, !35, i64 996, !35, i64 1000, !35, i64 1004, !35, i64 1008, !35, i64 1012, !35, i64 1016, !35, i64 1020, !35, i64 1024, !35, i64 1028, !35, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !36, i64 1042, !36, i64 1043, !42, i64 1044, !36, i64 1046, !36, i64 1047, !35, i64 1048, !35, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !35, i64 1120, !42, i64 1124, !42, i64 1126, !36, i64 1128, !41, i64 1144, !41, i64 1148, !40, i64 1152, !36, i64 1160, !36, i64 1161, !42, i64 1162, !36, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !40, i64 1240, !40, i64 1248, !40, i64 1256, !36, i64 1264, !36, i64 1265, !42, i64 1266, !35, i64 1268, !40, i64 1272, !40, i64 1280, !40, i64 1288, !40, i64 1296, !130, i64 1304, !130, i64 1312, !41, i64 1320, !41, i64 1324, !43, i64 1328, !43, i64 1344, !40, i64 1360, !40, i64 1368, !40, i64 1376, !36, i64 1384, !40, i64 1392, !43, i64 1400, !40, i64 1416}
!246 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!247 = !{!134, !40, i64 0}
!248 = !{!173, !42, i64 886}
!249 = !{!237, !35, i64 36}
!250 = distinct !{!250, !78}
!251 = distinct !{!251, !78}
!252 = !{!39, !40, i64 5864}
!253 = !{!39, !41, i64 1620}
!254 = !{!255, !40, i64 0}
!255 = !{!"ZBufSSSHandle", !40, i64 0, !43, i64 8, !41, i64 24}
!256 = !{!255, !41, i64 24}
!257 = !{!73, !40, i64 80}
!258 = !{!73, !40, i64 88}
!259 = !{!73, !40, i64 96}
!260 = !{!105, !40, i64 80}
!261 = !{!134, !41, i64 1448}
!262 = !{!134, !41, i64 1452}
!263 = !{!134, !41, i64 1440}
!264 = !{!134, !41, i64 1444}
!265 = !{!85, !41, i64 112}
!266 = distinct !{!266, !78}
!267 = !{!39, !40, i64 5800}
!268 = !{!269, !40, i64 16}
!269 = !{!"ObjectInstanceRen", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !36, i64 52, !36, i64 116, !36, i64 180, !42, i64 216, !36, i64 220, !36, i64 232, !40, i64 240, !40, i64 248, !40, i64 256, !41, i64 264, !40, i64 272, !41, i64 280}
!270 = distinct !{!270, !78}
!271 = distinct !{!271, !78}
!272 = !{!"rendercore.c:addps_sss"}
!273 = !{!73, !40, i64 104}
!274 = !{!"rendercore.c:zbufshade_sss_free"}
!275 = !{!"rendercore.c:shade_sample_sss"}
!276 = !{!134, !42, i64 1434}
!277 = !{!134, !41, i64 1404}
!278 = !{!134, !42, i64 96}
!279 = !{!134, !42, i64 56}
!280 = !{!245, !42, i64 952}
!281 = !{!173, !40, i64 768}
!282 = !{!173, !36, i64 543}
!283 = !{!"rendercore.c:add_v3_v3"}
!284 = !{!39, !40, i64 112}
!285 = distinct !{!285, !78}
!286 = !{!39, !40, i64 5968}
!287 = !{!39, !40, i64 5976}
!288 = distinct !{!288, !78}
!289 = !{!"rendercore.c:renderflare"}
!290 = !{i64 0, i64 2, !99, i64 2, i64 2, !99, i64 4, i64 4, !34, i64 8, i64 4, !34, i64 12, i64 4, !34, i64 16, i64 4, !34, i64 20, i64 4, !34, i64 24, i64 4, !34, i64 28, i64 4, !34, i64 32, i64 12, !71, i64 44, i64 12, !71, i64 56, i64 4, !34, i64 60, i64 4, !34, i64 64, i64 4, !34, i64 68, i64 4, !34, i64 72, i64 4, !118, i64 76, i64 4, !118, i64 80, i64 4, !118, i64 84, i64 1, !71, i64 85, i64 1, !71, i64 86, i64 1, !71, i64 87, i64 1, !71, i64 88, i64 1, !71, i64 89, i64 1, !71, i64 90, i64 1, !71, i64 92, i64 2, !99, i64 96, i64 4, !34, i64 100, i64 4, !118, i64 104, i64 4, !118, i64 112, i64 8, !76, i64 120, i64 8, !76}
!291 = !{!160, !36, i64 89}
!292 = !{!160, !36, i64 88}
!293 = !{!160, !35, i64 4}
!294 = !{!160, !41, i64 100}
!295 = !{!173, !35, i64 424}
!296 = !{!173, !36, i64 363}
!297 = !{!160, !35, i64 68}
!298 = !{!173, !35, i64 432}
!299 = !{!160, !35, i64 56}
!300 = !{!160, !36, i64 87}
!301 = !{!173, !35, i64 428}
!302 = !{!39, !41, i64 200}
!303 = !{!160, !36, i64 85}
!304 = distinct !{!304, !78}
!305 = !{!"rendercore.c:addps"}
!306 = distinct !{!306, !78}
!307 = !{!43, !40, i64 8}
!308 = !{!142, !41, i64 20}
!309 = !{!142, !42, i64 26}
!310 = !{!"rendercore.c:add_filt_passes"}
!311 = distinct !{!311, !78}
!312 = !{!"rendercore.c:max_ii"}
!313 = !{!"rendercore.c:min_ii"}
!314 = !{!"rendercore.c:halo_pixelstruct"}
!315 = distinct !{!315, !78}
!316 = distinct !{!316, !78}
!317 = distinct !{!317, !78}
!318 = !{!"rendercore.c:calchalo_z"}
!319 = !{!"rendercore.c:copy_v3_v3"}
!320 = !{!"rendercore.c:mul_v3_fl"}
!321 = !{!"rendercore.c:copy_v4_v4"}
!322 = !{!"rendercore.c:BLI_listbase_clear"}
!323 = !{!"rendercore.c:normalize_v3"}
!324 = !{!"rendercore.c:len_v3"}
!325 = !{!"rendercore.c:min_ff"}
!326 = !{!"rendercore.c:negate_v3"}
!327 = !{!"rendercore.c:normalize_v3_v3"}
!328 = !{!"rendercore.c:dot_v3v3"}
!329 = !{!"rendercore.c:mul_v3_v3fl"}
!330 = !{!"rendercore.c:zero_v3"}
!331 = !{!"rendercore.c:renderhalo_post"}
!332 = !{!39, !41, i64 156}
!333 = !{!39, !41, i64 164}
!334 = !{!105, !41, i64 20}
!335 = !{!105, !41, i64 16}
!336 = distinct !{!336, !78}
!337 = distinct !{!337, !78}
