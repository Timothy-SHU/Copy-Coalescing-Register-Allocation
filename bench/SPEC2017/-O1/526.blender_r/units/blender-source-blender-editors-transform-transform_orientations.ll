; ModuleID = 'blender/source/blender/editors/transform/transform_orientations.c'
source_filename = "blender/source/blender/editors/transform/transform_orientations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.ListBase = type { ptr, ptr }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.TransformOrientation = type { ptr, ptr, [64 x i8], [3 x [3 x float]], i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.TransInfo = type { i32, i32, i32, i16, i32, float, float, ptr, ptr, i32, ptr, ptr, ptr, %struct.TransCon, %struct.TransSnap, %struct.NumInput, %struct.MouseInput, i32, float, [20 x i8], [3 x float], [2 x float], [2 x i32], i16, i16, [3 x float], i8, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i16, i16, i8, i8, [3 x float], [3 x [3 x float]], [3 x [3 x float]], [64 x i8], ptr, ptr, ptr, i16, i16, i16, i16, i16, [4 x float], [4 x float], [3 x float], [3 x float], i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32], float, ptr, [3 x [3 x float]], ptr, ptr, ptr, ptr }
%struct.TransCon = type { i16, [50 x i8], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x float], [2 x i32], i32, ptr, ptr, ptr, ptr }
%struct.TransSnap = type { i16, i16, i16, i16, i8, i8, i8, i8, i16, [3 x float], [3 x float], [3 x float], [3 x float], i8, %struct.ListBase, ptr, float, double, ptr, ptr, ptr, ptr }
%struct.NumInput = type { i16, i32, [3 x i32], i8, i16, [3 x i16], [3 x float], [3 x float], [3 x float], i16, [64 x i8], i32 }
%struct.MouseInput = type { ptr, ptr, [2 x i32], i8, [2 x i32], [2 x float], float, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMEditSelection = type { ptr, ptr, ptr, i8 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.MetaElem = type { ptr, ptr, ptr, i16, i16, i16, i16, float, float, float, [4 x float], float, float, float, float, float, float, float, ptr, ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [27 x i8] c"UserTransSpace from matrix\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"gimbal\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"view\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Custom View\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Cannot use vertex with zero-length normal\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Vertex\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Cannot use zero-length edge\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Edge\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Cannot use zero-area face\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Face\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Cannot use zero-length bone\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"Bone\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"Cannot use zero-length curve\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Curve\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"Space\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @BIF_clearTransformOrientation(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #9
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 25
  tail call void @BLI_freelistN(ptr noundef nonnull %4) #9
  %5 = icmp eq ptr %2, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 41
  %8 = load i8, ptr %7, align 4, !tbaa !34
  %9 = icmp ugt i8 %8, 4
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i8 0, ptr %7, align 4, !tbaa !34
  br label %11

11:                                               ; preds = %10, %6, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @createSpaceNormal(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %4 = load float, ptr %1, align 4, !tbaa !44
  store float %4, ptr %3, align 4, !tbaa !44
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !44
  %7 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %6, ptr %7, align 4, !tbaa !44
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !44
  %10 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %9, ptr %10, align 4, !tbaa !44
  %11 = fmul float %6, %6
  %12 = tail call float @llvm.fmuladd.f32(float %4, float %4, float %11)
  %13 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %12)
  %14 = fcmp ogt float %13, 0x38AA95A5C0000000
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = tail call float @sqrtf(float noundef %13) #9
  %17 = fdiv float 1.000000e+00, %16
  %18 = load float, ptr %3, align 4, !tbaa !44
  %19 = fmul float %18, %17
  store float %19, ptr %3, align 4, !tbaa !44
  %20 = load float, ptr %7, align 4, !tbaa !44
  %21 = fmul float %17, %20
  store float %21, ptr %7, align 4, !tbaa !44
  %22 = load float, ptr %10, align 4, !tbaa !44
  %23 = fmul float %17, %22
  %24 = fcmp oeq float %16, 0.000000e+00
  br label %26

25:                                               ; preds = %2
  store float 0.000000e+00, ptr %3, align 4, !tbaa !44
  store float 0.000000e+00, ptr %7, align 4, !tbaa !44
  br label %26

26:                                               ; preds = %15, %25
  %27 = phi float [ 0.000000e+00, %25 ], [ %23, %15 ]
  %28 = phi i1 [ true, %25 ], [ %24, %15 ]
  store float %27, ptr %10, align 4, !tbaa !44
  br i1 %28, label %66, label %29

29:                                               ; preds = %26
  %30 = load float, ptr %7, align 4, !tbaa !44
  %31 = fmul float %27, 0.000000e+00
  %32 = fsub float %30, %31
  store float %32, ptr %0, align 4, !tbaa !44
  %33 = load float, ptr %3, align 4, !tbaa !44
  %34 = fneg float %33
  %35 = tail call float @llvm.fmuladd.f32(float %27, float 0.000000e+00, float %34)
  %36 = getelementptr inbounds float, ptr %0, i64 1
  store float %35, ptr %36, align 4, !tbaa !44
  %37 = fmul float %30, -0.000000e+00
  %38 = tail call float @llvm.fmuladd.f32(float %33, float 0.000000e+00, float %37)
  %39 = getelementptr inbounds float, ptr %0, i64 2
  store float %38, ptr %39, align 4, !tbaa !44
  %40 = fcmp une float %32, 0.000000e+00
  %41 = fcmp une float %35, 0.000000e+00
  %42 = select i1 %40, i1 true, i1 %41
  %43 = fcmp une float %38, 0.000000e+00
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %29
  %46 = tail call float @llvm.fmuladd.f32(float %27, float 0.000000e+00, float %37)
  store float %46, ptr %0, align 4, !tbaa !44
  %47 = fneg float %27
  %48 = tail call float @llvm.fmuladd.f32(float %33, float 0.000000e+00, float %47)
  store float %48, ptr %36, align 4, !tbaa !44
  %49 = fmul float %33, 0.000000e+00
  %50 = fsub float %30, %49
  store float %50, ptr %39, align 4, !tbaa !44
  br label %51

51:                                               ; preds = %29, %45
  %52 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %53 = load float, ptr %39, align 4, !tbaa !44
  %54 = load float, ptr %36, align 4, !tbaa !44
  %55 = fneg float %27
  %56 = fmul float %54, %55
  %57 = tail call float @llvm.fmuladd.f32(float %30, float %53, float %56)
  store float %57, ptr %52, align 4, !tbaa !44
  %58 = load float, ptr %0, align 4, !tbaa !44
  %59 = fmul float %53, %34
  %60 = tail call float @llvm.fmuladd.f32(float %27, float %58, float %59)
  %61 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %60, ptr %61, align 4, !tbaa !44
  %62 = fneg float %30
  %63 = fmul float %58, %62
  %64 = tail call float @llvm.fmuladd.f32(float %33, float %54, float %63)
  %65 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %64, ptr %65, align 4, !tbaa !44
  tail call void @normalize_m3(ptr noundef nonnull %0) #9
  br label %66

66:                                               ; preds = %26, %51
  %67 = phi i8 [ 1, %51 ], [ 0, %26 ]
  ret i8 %67
}

declare void @normalize_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @createSpaceNormalTangent(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %5 = load float, ptr %1, align 4, !tbaa !44
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !44
  %8 = fmul float %7, %7
  %9 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %8)
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !44
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %11, float %9)
  %13 = fcmp ogt float %12, 0x38AA95A5C0000000
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = tail call float @sqrtf(float noundef %12) #9
  %16 = fdiv float 1.000000e+00, %15
  %17 = load float, ptr %1, align 4, !tbaa !44
  %18 = fmul float %17, %16
  store float %18, ptr %4, align 4, !tbaa !44
  %19 = load float, ptr %6, align 4, !tbaa !44
  %20 = fmul float %16, %19
  %21 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %20, ptr %21, align 4, !tbaa !44
  %22 = load float, ptr %10, align 4, !tbaa !44
  %23 = fmul float %16, %22
  %24 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %23, ptr %24, align 4, !tbaa !44
  %25 = fcmp oeq float %15, 0.000000e+00
  br i1 %25, label %110, label %29

26:                                               ; preds = %3
  store float 0.000000e+00, ptr %4, align 4, !tbaa !44
  %27 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float 0.000000e+00, ptr %27, align 4, !tbaa !44
  %28 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float 0.000000e+00, ptr %28, align 4, !tbaa !44
  br label %110

29:                                               ; preds = %14
  %30 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %31 = load float, ptr %2, align 4, !tbaa !44
  %32 = fneg float %31
  store float %32, ptr %30, align 4, !tbaa !44
  %33 = getelementptr inbounds float, ptr %2, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !44
  %35 = fneg float %34
  %36 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %35, ptr %36, align 4, !tbaa !44
  %37 = getelementptr inbounds float, ptr %2, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !44
  %39 = fneg float %38
  %40 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %39, ptr %40, align 4, !tbaa !44
  %41 = fcmp une float %31, 0.000000e+00
  %42 = fcmp une float %34, 0.000000e+00
  %43 = select i1 %41, i1 true, i1 %42
  %44 = fcmp une float %38, 0.000000e+00
  %45 = select i1 %43, i1 true, i1 %44
  %46 = select i1 %45, float %39, float 1.000000e+00
  store float %46, ptr %40, align 4
  %47 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !44
  %49 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !44
  %51 = fmul float %34, %50
  %52 = tail call float @llvm.fmuladd.f32(float %48, float %46, float %51)
  store float %52, ptr %0, align 4, !tbaa !44
  %53 = load float, ptr %4, align 4, !tbaa !44
  %54 = fneg float %53
  %55 = fmul float %46, %54
  %56 = tail call float @llvm.fmuladd.f32(float %50, float %32, float %55)
  %57 = getelementptr inbounds float, ptr %0, i64 1
  store float %56, ptr %57, align 4, !tbaa !44
  %58 = fmul float %31, %48
  %59 = tail call float @llvm.fmuladd.f32(float %53, float %35, float %58)
  %60 = getelementptr inbounds float, ptr %0, i64 2
  store float %59, ptr %60, align 4, !tbaa !44
  %61 = fmul float %56, %56
  %62 = tail call float @llvm.fmuladd.f32(float %52, float %52, float %61)
  %63 = tail call float @llvm.fmuladd.f32(float %59, float %59, float %62)
  %64 = fcmp ogt float %63, 0x38AA95A5C0000000
  br i1 %64, label %65, label %75

65:                                               ; preds = %29
  %66 = tail call float @sqrtf(float noundef %63) #9
  %67 = fdiv float 1.000000e+00, %66
  %68 = load float, ptr %0, align 4, !tbaa !44
  %69 = fmul float %68, %67
  store float %69, ptr %0, align 4, !tbaa !44
  %70 = load float, ptr %57, align 4, !tbaa !44
  %71 = fmul float %67, %70
  store float %71, ptr %57, align 4, !tbaa !44
  %72 = load float, ptr %60, align 4, !tbaa !44
  %73 = fmul float %67, %72
  %74 = fcmp oeq float %66, 0.000000e+00
  br label %76

75:                                               ; preds = %29
  store float 0.000000e+00, ptr %0, align 4, !tbaa !44
  store float 0.000000e+00, ptr %57, align 4, !tbaa !44
  br label %76

76:                                               ; preds = %65, %75
  %77 = phi float [ 0.000000e+00, %75 ], [ %73, %65 ]
  %78 = phi i1 [ true, %75 ], [ %74, %65 ]
  store float %77, ptr %60, align 4, !tbaa !44
  br i1 %78, label %110, label %79

79:                                               ; preds = %76
  %80 = load float, ptr %47, align 4, !tbaa !44
  %81 = load float, ptr %49, align 4, !tbaa !44
  %82 = load float, ptr %57, align 4, !tbaa !44
  %83 = fneg float %81
  %84 = fmul float %82, %83
  %85 = tail call float @llvm.fmuladd.f32(float %80, float %77, float %84)
  store float %85, ptr %30, align 4, !tbaa !44
  %86 = load float, ptr %0, align 4, !tbaa !44
  %87 = load float, ptr %4, align 4, !tbaa !44
  %88 = fneg float %87
  %89 = fmul float %77, %88
  %90 = tail call float @llvm.fmuladd.f32(float %81, float %86, float %89)
  store float %90, ptr %36, align 4, !tbaa !44
  %91 = fneg float %80
  %92 = fmul float %86, %91
  %93 = tail call float @llvm.fmuladd.f32(float %87, float %82, float %92)
  store float %93, ptr %40, align 4, !tbaa !44
  %94 = fmul float %90, %90
  %95 = tail call float @llvm.fmuladd.f32(float %85, float %85, float %94)
  %96 = tail call float @llvm.fmuladd.f32(float %93, float %93, float %95)
  %97 = fcmp ogt float %96, 0x38AA95A5C0000000
  br i1 %97, label %98, label %107

98:                                               ; preds = %79
  %99 = tail call float @sqrtf(float noundef %96) #9
  %100 = fdiv float 1.000000e+00, %99
  %101 = load float, ptr %30, align 4, !tbaa !44
  %102 = fmul float %101, %100
  store float %102, ptr %30, align 4, !tbaa !44
  %103 = load float, ptr %36, align 4, !tbaa !44
  %104 = fmul float %100, %103
  store float %104, ptr %36, align 4, !tbaa !44
  %105 = load float, ptr %40, align 4, !tbaa !44
  %106 = fmul float %100, %105
  br label %108

107:                                              ; preds = %79
  store float 0.000000e+00, ptr %30, align 4, !tbaa !44
  store float 0.000000e+00, ptr %36, align 4, !tbaa !44
  br label %108

108:                                              ; preds = %98, %107
  %109 = phi float [ 0.000000e+00, %107 ], [ %106, %98 ]
  store float %109, ptr %40, align 4, !tbaa !44
  br label %110

110:                                              ; preds = %26, %76, %14, %108
  %111 = phi i8 [ 1, %108 ], [ 0, %14 ], [ 0, %76 ], [ 0, %26 ]
  ret i8 %111
}

; Function Attrs: nounwind uwtable
define dso_local void @BIF_createTransformOrientation(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x [3 x float]], align 16
  %14 = alloca [3 x [3 x float]], align 16
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x [3 x float]], align 16
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x [3 x float]], align 16
  %21 = icmp eq i8 %3, 0
  br i1 %21, label %45, label %22

22:                                               ; preds = %6
  %23 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %20) #9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %43, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 2
  call void @copy_m3_m4(ptr noundef nonnull %20, ptr noundef nonnull %26) #9
  call void @normalize_m3(ptr noundef nonnull %20) #9
  %27 = load i8, ptr %2, align 1, !tbaa !45
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = call ptr @CTX_wm_view3d(ptr noundef %0) #9
  %31 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 25
  %32 = load i8, ptr %31, align 1, !tbaa !46
  %33 = icmp eq i8 %32, 2
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.View3D, ptr %30, i64 0, i32 15
  %36 = load ptr, ptr %35, align 8, !tbaa !48
  %37 = icmp eq ptr %36, null
  %38 = getelementptr inbounds %struct.ID, ptr %36, i64 0, i32 4, i64 2
  %39 = select i1 %37, ptr @.str.6, ptr %38
  br label %40

40:                                               ; preds = %34, %29, %25
  %41 = phi ptr [ %2, %25 ], [ @.str.6, %29 ], [ %39, %34 ]
  %42 = call ptr @addMatrixSpace(ptr noundef %0, ptr noundef nonnull %20, ptr noundef %41, i8 noundef zeroext %5)
  br label %43

43:                                               ; preds = %22, %40
  %44 = phi ptr [ %42, %40 ], [ null, %22 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %20) #9
  br label %131

45:                                               ; preds = %6
  %46 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %47 = tail call ptr @CTX_data_active_object(ptr noundef %0) #9
  %48 = icmp eq ptr %46, null
  br i1 %48, label %98, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 3
  %51 = load i16, ptr %50, align 8, !tbaa !49
  switch i16 %51, label %131 [
    i16 1, label %52
    i16 25, label %74
    i16 2, label %86
  ]

52:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %17) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #9
  %53 = call i32 @getTransformOrientation(ptr noundef %0, ptr noundef nonnull %18, ptr noundef nonnull %19, i8 noundef zeroext 0), !range !54
  switch i32 %53, label %72 [
    i32 2, label %54
    i32 3, label %58
    i32 4, label %62
  ]

54:                                               ; preds = %52
  %55 = call zeroext i8 @createSpaceNormal(ptr noundef nonnull %17, ptr noundef nonnull %18), !range !55
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  call void @BKE_reports_prepend(ptr noundef %1, ptr noundef nonnull @.str.7) #9
  br label %72

58:                                               ; preds = %52
  %59 = call zeroext i8 @createSpaceNormalTangent(ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19), !range !55
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  call void @BKE_reports_prepend(ptr noundef %1, ptr noundef nonnull @.str.9) #9
  br label %72

62:                                               ; preds = %52
  %63 = call zeroext i8 @createSpaceNormalTangent(ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19), !range !55
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  call void @BKE_reports_prepend(ptr noundef %1, ptr noundef nonnull @.str.11) #9
  br label %72

66:                                               ; preds = %62, %58, %54
  %67 = phi ptr [ @.str.8, %54 ], [ @.str.10, %58 ], [ @.str.12, %62 ]
  %68 = load i8, ptr %2, align 1, !tbaa !45
  %69 = icmp eq i8 %68, 0
  %70 = select i1 %69, ptr %67, ptr %2
  %71 = call ptr @addMatrixSpace(ptr noundef %0, ptr noundef nonnull %17, ptr noundef nonnull %70, i8 noundef zeroext %5)
  br label %72

72:                                               ; preds = %52, %57, %61, %65, %66
  %73 = phi ptr [ null, %65 ], [ %71, %66 ], [ null, %61 ], [ null, %57 ], [ null, %52 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %17) #9
  br label %131

74:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #9
  %75 = call i32 @getTransformOrientation(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %12, i8 noundef zeroext 0), !range !54
  %76 = call zeroext i8 @createSpaceNormalTangent(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12), !range !55
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  call void @BKE_reports_prepend(ptr noundef %1, ptr noundef nonnull @.str.13) #9
  br label %84

79:                                               ; preds = %74
  %80 = load i8, ptr %2, align 1, !tbaa !45
  %81 = icmp eq i8 %80, 0
  %82 = select i1 %81, ptr @.str.14, ptr %2
  %83 = call ptr @addMatrixSpace(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %82, i8 noundef zeroext %5)
  br label %84

84:                                               ; preds = %78, %79
  %85 = phi ptr [ null, %78 ], [ %83, %79 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #9
  br label %131

86:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #9
  %87 = call i32 @getTransformOrientation(ptr noundef %0, ptr noundef nonnull %15, ptr noundef nonnull %16, i8 noundef zeroext 0), !range !54
  %88 = call zeroext i8 @createSpaceNormalTangent(ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16), !range !55
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  call void @BKE_reports_prepend(ptr noundef %1, ptr noundef nonnull @.str.15) #9
  br label %96

91:                                               ; preds = %86
  %92 = load i8, ptr %2, align 1, !tbaa !45
  %93 = icmp eq i8 %92, 0
  %94 = select i1 %93, ptr @.str.16, ptr %2
  %95 = call ptr @addMatrixSpace(ptr noundef %0, ptr noundef nonnull %14, ptr noundef nonnull %94, i8 noundef zeroext %5)
  br label %96

96:                                               ; preds = %90, %91
  %97 = phi ptr [ null, %90 ], [ %95, %91 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %14) #9
  br label %131

98:                                               ; preds = %45
  %99 = icmp eq ptr %47, null
  br i1 %99, label %117, label %100

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.Object, ptr %47, i64 0, i32 27
  %102 = load i32, ptr %101, align 8, !tbaa !56
  %103 = and i32 %102, 64
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  %106 = call i32 @getTransformOrientation(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext 0), !range !54
  %107 = call zeroext i8 @createSpaceNormalTangent(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9), !range !55
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  call void @BKE_reports_prepend(ptr noundef %1, ptr noundef nonnull @.str.13) #9
  br label %115

110:                                              ; preds = %105
  %111 = load i8, ptr %2, align 1, !tbaa !45
  %112 = icmp eq i8 %111, 0
  %113 = select i1 %112, ptr @.str.14, ptr %2
  %114 = call ptr @addMatrixSpace(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %113, i8 noundef zeroext %5)
  br label %115

115:                                              ; preds = %109, %110
  %116 = phi ptr [ null, %109 ], [ %114, %110 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #9
  br label %131

117:                                              ; preds = %100, %98
  %118 = tail call ptr @CTX_data_active_base(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #9
  %119 = icmp eq ptr %118, null
  br i1 %119, label %129, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.Base, ptr %118, i64 0, i32 7
  %122 = load ptr, ptr %121, align 8, !tbaa !57
  %123 = getelementptr inbounds %struct.Object, ptr %122, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %13, ptr noundef nonnull %123) #9
  call void @normalize_m3(ptr noundef nonnull %13) #9
  %124 = load i8, ptr %2, align 1, !tbaa !45
  %125 = icmp eq i8 %124, 0
  %126 = getelementptr inbounds %struct.ID, ptr %122, i64 0, i32 4, i64 2
  %127 = select i1 %125, ptr %126, ptr %2
  %128 = call ptr @addMatrixSpace(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %127, i8 noundef zeroext %5)
  br label %129

129:                                              ; preds = %117, %120
  %130 = phi ptr [ %128, %120 ], [ null, %117 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #9
  br label %131

131:                                              ; preds = %84, %96, %72, %129, %115, %49, %43
  %132 = phi ptr [ %44, %43 ], [ %73, %72 ], [ %85, %84 ], [ %97, %96 ], [ %116, %115 ], [ %130, %129 ], [ null, %49 ]
  %133 = icmp ne i8 %4, 0
  %134 = icmp ne ptr %132, null
  %135 = select i1 %133, i1 %134, i1 false
  br i1 %135, label %136, label %146

136:                                              ; preds = %131
  %137 = call ptr @CTX_data_scene(ptr noundef %0) #9
  %138 = getelementptr inbounds %struct.Scene, ptr %137, i64 0, i32 25
  %139 = call i32 @BLI_findindex(ptr noundef nonnull %138, ptr noundef nonnull %132) #9
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %146, label %141

141:                                              ; preds = %136
  %142 = call ptr @CTX_wm_view3d(ptr noundef %0) #9
  %143 = trunc i32 %139 to i8
  %144 = add i8 %143, 5
  %145 = getelementptr inbounds %struct.View3D, ptr %142, i64 0, i32 41
  store i8 %144, ptr %145, align 4, !tbaa !34
  br label %146

146:                                              ; preds = %141, %136, %131
  ret void
}

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BIF_selectTransformOrientation(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 25
  %5 = tail call i32 @BLI_findindex(ptr noundef nonnull %4, ptr noundef %1) #9
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #9
  %9 = trunc i32 %5 to i8
  %10 = add i8 %9, 5
  %11 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 41
  store i8 %10, ptr %11, align 4, !tbaa !34
  br label %12

12:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @addMatrixSpace(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca [64 x i8], align 16
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  %8 = icmp eq i8 %3, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @BLI_findstring(ptr noundef nonnull %7, ptr noundef %2, i32 noundef 16) #9
  br label %14

11:                                               ; preds = %4
  %12 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %2, i64 noundef 64) #9
  %13 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @uniqueOrientationNameCheck, ptr noundef nonnull %7, ptr noundef nonnull @.str.17, i8 noundef zeroext 46, ptr noundef nonnull %5, i32 noundef 64) #9
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi ptr [ %2, %9 ], [ %5, %11 ]
  %16 = phi ptr [ %10, %9 ], [ null, %11 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %20 = call ptr %19(i64 noundef 120, ptr noundef nonnull @.str) #9
  call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %20) #9
  %21 = getelementptr inbounds %struct.TransformOrientation, ptr %20, i64 0, i32 2
  %22 = call ptr @BLI_strncpy(ptr noundef nonnull %21, ptr noundef %15, i64 noundef 64) #9
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi ptr [ %20, %18 ], [ %16, %14 ]
  %25 = getelementptr inbounds %struct.TransformOrientation, ptr %24, i64 0, i32 3
  call void @copy_m3_m3(ptr noundef nonnull %25, ptr noundef %1) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  ret ptr %24
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BIF_removeTransformOrientation(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 25
  %5 = tail call i32 @BLI_findindex(ptr noundef nonnull %4, ptr noundef %1) #9
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %9 = getelementptr inbounds %struct.Main, ptr %8, i64 0, i32 26
  tail call void @BKE_screen_view3d_main_twmode_remove(ptr noundef nonnull %9, ptr noundef %3, i32 noundef %5) #9
  tail call void @BLI_freelinkN(ptr noundef nonnull %4, ptr noundef %1) #9
  br label %10

10:                                               ; preds = %7, %2
  ret void
}

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare void @BKE_screen_view3d_main_twmode_remove(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BIF_removeTransformOrientationIndex(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 25
  %5 = tail call ptr @BLI_findlink(ptr noundef nonnull %4, i32 noundef %1) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %9 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 25
  %10 = tail call i32 @BLI_findindex(ptr noundef nonnull %9, ptr noundef nonnull %5) #9
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %14 = getelementptr inbounds %struct.Main, ptr %13, i64 0, i32 26
  tail call void @BKE_screen_view3d_main_twmode_remove(ptr noundef nonnull %14, ptr noundef %8, i32 noundef %10) #9
  tail call void @BLI_freelinkN(ptr noundef nonnull %9, ptr noundef nonnull %5) #9
  br label %15

15:                                               ; preds = %12, %7, %2
  ret void
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BIF_selectTransformOrientationValue(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = trunc i32 %1 to i8
  %7 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 41
  store i8 %6, ptr %7, align 4, !tbaa !34
  br label %8

8:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BIF_countTransformOrientation(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 25
  %4 = tail call i32 @BLI_countlist(ptr noundef nonnull %3) #9
  ret i32 %4
}

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @applyTransformOrientation(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 41
  %6 = load i8, ptr %5, align 4, !tbaa !34
  %7 = zext i8 %6 to i32
  %8 = add nsw i32 %7, -5
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 25
  %11 = tail call ptr @BLI_findlink(ptr noundef nonnull %10, i32 noundef %8) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = icmp eq ptr %2, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.TransformOrientation, ptr %11, i64 0, i32 2
  %17 = tail call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef nonnull %16, i64 noundef 64) #9
  br label %18

18:                                               ; preds = %15, %13
  %19 = getelementptr inbounds %struct.TransformOrientation, ptr %11, i64 0, i32 3
  tail call void @copy_m3_m3(ptr noundef %1, ptr noundef nonnull %19) #9
  br label %20

20:                                               ; preds = %3, %18
  %21 = phi i8 [ 1, %18 ], [ 0, %3 ]
  ret i8 %21
}

; Function Attrs: nounwind uwtable
define dso_local void @initTransformOrientation(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #9
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #9
  %6 = tail call ptr @CTX_data_active_object(ptr noundef %0) #9
  %7 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 43
  %8 = load i16, ptr %7, align 2, !tbaa !60
  switch i16 %8, label %60 [
    i16 0, label %9
    i16 4, label %13
    i16 2, label %20
    i16 1, label %37
    i16 3, label %45
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 37
  tail call void @unit_m3(ptr noundef nonnull %10) #9
  %11 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 38
  %12 = tail call ptr @BLI_strncpy(ptr noundef nonnull %11, ptr noundef nonnull @.str.1, i64 noundef 64) #9
  br label %77

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 37
  tail call void @unit_m3(ptr noundef nonnull %14) #9
  %15 = tail call zeroext i8 @gimbal_axis(ptr noundef %5, ptr noundef nonnull %14) #9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 38
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %18, ptr noundef nonnull @.str.2, i64 noundef 64) #9
  br label %77

20:                                               ; preds = %13, %2
  %21 = icmp eq ptr %6, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %20
  %23 = icmp eq ptr %5, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 27
  %26 = load i32, ptr %25, align 8, !tbaa !56
  %27 = and i32 %26, 64
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %24, %20
  %30 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 38
  %31 = tail call ptr @BLI_strncpy(ptr noundef nonnull %30, ptr noundef nonnull @.str.3, i64 noundef 64) #9
  %32 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 37
  %33 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 27
  %34 = load i16, ptr %33, align 2, !tbaa !67
  %35 = icmp eq i16 %34, 4
  %36 = zext i1 %35 to i8
  tail call void @ED_getTransformOrientationMatrix(ptr noundef %0, ptr noundef nonnull %32, i8 noundef zeroext %36)
  br label %77

37:                                               ; preds = %22, %24, %2
  %38 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 38
  %39 = tail call ptr @BLI_strncpy(ptr noundef nonnull %38, ptr noundef nonnull @.str.4, i64 noundef 64) #9
  %40 = icmp eq ptr %5, null
  %41 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 37
  br i1 %40, label %44, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 47
  tail call void @copy_m3_m4(ptr noundef nonnull %41, ptr noundef nonnull %43) #9
  tail call void @normalize_m3(ptr noundef nonnull %41) #9
  br label %77

44:                                               ; preds = %37
  tail call void @unit_m3(ptr noundef nonnull %41) #9
  br label %77

45:                                               ; preds = %2
  %46 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %47 = load ptr, ptr %46, align 8, !tbaa !68
  %48 = getelementptr inbounds %struct.ARegion, ptr %47, i64 0, i32 8
  %49 = load i16, ptr %48, align 2, !tbaa !69
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.ARegion, ptr %47, i64 0, i32 30
  %53 = load ptr, ptr %52, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #9
  %54 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 38
  %55 = tail call ptr @BLI_strncpy(ptr noundef nonnull %54, ptr noundef nonnull @.str.5, i64 noundef 64) #9
  %56 = getelementptr inbounds %struct.RegionView3D, ptr %53, i64 0, i32 2
  call void @copy_m3_m4(ptr noundef nonnull %3, ptr noundef nonnull %56) #9
  call void @normalize_m3(ptr noundef nonnull %3) #9
  %57 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 37
  call void @copy_m3_m3(ptr noundef nonnull %57, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #9
  br label %77

58:                                               ; preds = %45
  %59 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 37
  tail call void @unit_m3(ptr noundef nonnull %59) #9
  br label %77

60:                                               ; preds = %2
  %61 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 37
  %62 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #9
  %63 = getelementptr inbounds %struct.View3D, ptr %62, i64 0, i32 41
  %64 = load i8, ptr %63, align 4, !tbaa !34
  %65 = zext i8 %64 to i32
  %66 = add nsw i32 %65, -5
  %67 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %68 = getelementptr inbounds %struct.Scene, ptr %67, i64 0, i32 25
  %69 = tail call ptr @BLI_findlink(ptr noundef nonnull %68, i32 noundef %66) #9
  %70 = icmp eq ptr %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %60
  %72 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 38
  %73 = getelementptr inbounds %struct.TransformOrientation, ptr %69, i64 0, i32 2
  %74 = tail call ptr @BLI_strncpy(ptr noundef nonnull %72, ptr noundef nonnull %73, i64 noundef 64) #9
  %75 = getelementptr inbounds %struct.TransformOrientation, ptr %69, i64 0, i32 3
  tail call void @copy_m3_m3(ptr noundef nonnull %61, ptr noundef nonnull %75) #9
  br label %77

76:                                               ; preds = %60
  tail call void @unit_m3(ptr noundef nonnull %61) #9
  br label %77

77:                                               ; preds = %71, %76, %51, %58, %42, %44, %29, %17, %9
  ret void
}

declare void @unit_m3(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @gimbal_axis(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_getTransformOrientationMatrix(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %6 = call i32 @getTransformOrientation(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext %2), !range !54
  switch i32 %6, label %23 [
    i32 1, label %7
    i32 2, label %11
    i32 3, label %15
    i32 4, label %19
  ]

7:                                                ; preds = %3
  %8 = call zeroext i8 @createSpaceNormalTangent(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5), !range !55
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, i32 0, i32 4
  br label %23

11:                                               ; preds = %3
  %12 = call zeroext i8 @createSpaceNormal(ptr noundef %1, ptr noundef nonnull %4), !range !55
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i32 0, i32 4
  br label %23

15:                                               ; preds = %3
  %16 = call zeroext i8 @createSpaceNormalTangent(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5), !range !55
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i32 0, i32 4
  br label %23

19:                                               ; preds = %3
  %20 = call zeroext i8 @createSpaceNormalTangent(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5), !range !55
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, i32 0, i32 4
  br label %23

23:                                               ; preds = %19, %15, %11, %7, %3
  %24 = phi i32 [ %6, %3 ], [ %10, %7 ], [ %14, %11 ], [ %18, %15 ], [ %22, %19 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  call void @unit_m3(ptr noundef %1) #9
  br label %27

27:                                               ; preds = %26, %23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  ret void
}

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @getTransformOrientation(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca %struct.BMEditSelection, align 8
  %12 = alloca [3 x float], align 4
  %13 = alloca %struct.BMIter, align 8
  %14 = alloca [3 x ptr], align 16
  %15 = alloca [2 x ptr], align 16
  %16 = alloca [2 x ptr], align 16
  %17 = alloca %struct.BMIter, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x [3 x float]], align 16
  %22 = alloca [3 x [3 x float]], align 16
  %23 = alloca [3 x [3 x float]], align 16
  %24 = alloca [3 x [3 x float]], align 16
  %25 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %26 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #9
  %27 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %28 = getelementptr inbounds %struct.Scene, ptr %25, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !74
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.Base, ptr %29, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !57
  br label %34

34:                                               ; preds = %4, %31
  %35 = phi ptr [ %33, %31 ], [ null, %4 ]
  store float 0.000000e+00, ptr %1, align 4, !tbaa !44
  %36 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %36, align 4, !tbaa !44
  %37 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %37, align 4, !tbaa !44
  store float 0.000000e+00, ptr %2, align 4, !tbaa !44
  %38 = getelementptr inbounds float, ptr %2, i64 1
  store float 0.000000e+00, ptr %38, align 4, !tbaa !44
  %39 = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %39, align 4, !tbaa !44
  %40 = icmp eq ptr %27, null
  br i1 %40, label %1167, label %41

41:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #9
  %42 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %9, ptr noundef nonnull %42) #9
  %43 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %10, ptr noundef nonnull %9) #9
  call void @transpose_m3(ptr noundef nonnull %10) #9
  %44 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 3
  %45 = load i16, ptr %44, align 8, !tbaa !49
  switch i16 %45, label %1160 [
    i16 1, label %46
    i16 2, label %760
    i16 3, label %760
    i16 5, label %973
    i16 25, label %1064
  ]

46:                                               ; preds = %41
  %47 = call ptr @BKE_editmesh_from_object(ptr noundef nonnull %27) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %12, i8 0, i64 12, i1 false)
  %48 = icmp eq i8 %3, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %47, align 8, !tbaa !91
  %51 = call zeroext i8 @BM_select_history_active_get(ptr noundef %50, ptr noundef nonnull %11) #9
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  call void @BM_editselection_normal(ptr noundef nonnull %11, ptr noundef %1) #9
  call void @BM_editselection_plane(ptr noundef nonnull %11, ptr noundef %2) #9
  %54 = getelementptr inbounds %struct.BMEditSelection, ptr %11, i64 0, i32 3
  %55 = load i8, ptr %54, align 8, !tbaa !93
  switch i8 %55, label %752 [
    i8 1, label %56
    i8 2, label %57
    i8 8, label %58
  ]

56:                                               ; preds = %53
  br label %752

57:                                               ; preds = %53
  br label %752

58:                                               ; preds = %53
  br label %752

59:                                               ; preds = %49, %46
  %60 = load ptr, ptr %47, align 8, !tbaa !91
  %61 = getelementptr inbounds %struct.BMesh, ptr %60, i64 0, i32 6
  %62 = load i32, ptr %61, align 8, !tbaa !95
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %110

64:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #9
  %65 = load ptr, ptr %47, align 8, !tbaa !91
  %66 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 4
  store i8 3, ptr %66, align 4, !tbaa !98
  %67 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %67, align 8, !tbaa !100
  %68 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %68, align 8, !tbaa !101
  %69 = getelementptr inbounds %struct.BMesh, ptr %65, i64 0, i32 12
  %70 = load ptr, ptr %69, align 8, !tbaa !102
  store ptr %70, ptr %13, align 8, !tbaa !45
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %13) #9
  %71 = load ptr, ptr %68, align 8, !tbaa !101
  %72 = call ptr %71(ptr noundef nonnull %13) #9
  %73 = icmp eq ptr %72, null
  br i1 %73, label %109, label %74

74:                                               ; preds = %64
  %75 = getelementptr inbounds float, ptr %12, i64 1
  %76 = getelementptr inbounds float, ptr %12, i64 2
  br label %77

77:                                               ; preds = %74, %105
  %78 = phi ptr [ %72, %74 ], [ %107, %105 ]
  %79 = getelementptr inbounds %struct.BMHeader, ptr %78, i64 0, i32 3
  %80 = load i8, ptr %79, align 1, !tbaa !103
  %81 = and i8 %80, 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %105, label %83

83:                                               ; preds = %77
  call void @BM_face_calc_plane(ptr noundef nonnull %78, ptr noundef nonnull %12) #9
  %84 = getelementptr inbounds %struct.BMFace, ptr %78, i64 0, i32 4
  %85 = load float, ptr %84, align 4, !tbaa !44
  %86 = load float, ptr %1, align 4, !tbaa !44
  %87 = fadd float %85, %86
  store float %87, ptr %1, align 4, !tbaa !44
  %88 = getelementptr inbounds %struct.BMFace, ptr %78, i64 0, i32 4, i64 1
  %89 = load float, ptr %88, align 4, !tbaa !44
  %90 = load float, ptr %36, align 4, !tbaa !44
  %91 = fadd float %89, %90
  store float %91, ptr %36, align 4, !tbaa !44
  %92 = getelementptr inbounds %struct.BMFace, ptr %78, i64 0, i32 4, i64 2
  %93 = load float, ptr %92, align 4, !tbaa !44
  %94 = load float, ptr %37, align 4, !tbaa !44
  %95 = fadd float %93, %94
  store float %95, ptr %37, align 4, !tbaa !44
  %96 = load float, ptr %12, align 4, !tbaa !44
  %97 = load float, ptr %2, align 4, !tbaa !44
  %98 = fadd float %96, %97
  store float %98, ptr %2, align 4, !tbaa !44
  %99 = load float, ptr %75, align 4, !tbaa !44
  %100 = load float, ptr %38, align 4, !tbaa !44
  %101 = fadd float %99, %100
  store float %101, ptr %38, align 4, !tbaa !44
  %102 = load float, ptr %76, align 4, !tbaa !44
  %103 = load float, ptr %39, align 4, !tbaa !44
  %104 = fadd float %102, %103
  store float %104, ptr %39, align 4, !tbaa !44
  br label %105

105:                                              ; preds = %77, %83
  %106 = load ptr, ptr %68, align 8, !tbaa !101
  %107 = call ptr %106(ptr noundef nonnull %13) #9
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %77, !llvm.loop !105

109:                                              ; preds = %105, %64
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #9
  br label %752

110:                                              ; preds = %59
  %111 = getelementptr inbounds %struct.BMesh, ptr %60, i64 0, i32 4
  %112 = load i32, ptr %111, align 8, !tbaa !108
  %113 = icmp eq i32 %112, 3
  br i1 %113, label %114, label %304

114:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #9
  %115 = load ptr, ptr %47, align 8, !tbaa !91
  %116 = getelementptr inbounds %struct.BMesh, ptr %115, i64 0, i32 4
  %117 = load i32, ptr %116, align 8, !tbaa !108
  %118 = call i32 @llvm.smin.i32(i32 %117, i32 3)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  %119 = getelementptr inbounds %struct.BMesh, ptr %115, i64 0, i32 32
  %120 = load ptr, ptr %119, align 8, !tbaa !109
  %121 = icmp eq ptr %120, null
  br i1 %121, label %152, label %122

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.BMesh, ptr %115, i64 0, i32 32, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !59
  %125 = icmp eq ptr %124, null
  br i1 %125, label %149, label %126

126:                                              ; preds = %122, %144
  %127 = phi ptr [ %147, %144 ], [ %124, %122 ]
  %128 = phi i32 [ %145, %144 ], [ 0, %122 ]
  %129 = getelementptr inbounds %struct.BMEditSelection, ptr %127, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !110
  %131 = getelementptr inbounds %struct.BMHeader, ptr %130, i64 0, i32 3
  %132 = load i8, ptr %131, align 1, !tbaa !103
  %133 = and i8 %132, 1
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %144, label %135

135:                                              ; preds = %126
  %136 = getelementptr inbounds %struct.BMEditSelection, ptr %127, i64 0, i32 3
  %137 = load i8, ptr %136, align 8, !tbaa !93
  %138 = icmp eq i8 %137, 1
  br i1 %138, label %139, label %149

139:                                              ; preds = %135
  %140 = add i32 %128, 1
  %141 = zext i32 %128 to i64
  %142 = getelementptr inbounds ptr, ptr %14, i64 %141
  store ptr %130, ptr %142, align 8, !tbaa !59
  %143 = icmp eq i32 %140, %118
  br i1 %143, label %149, label %144

144:                                              ; preds = %139, %126
  %145 = phi i32 [ %140, %139 ], [ %128, %126 ]
  %146 = getelementptr inbounds %struct.BMEditSelection, ptr %127, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !59
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %126, !llvm.loop !111

149:                                              ; preds = %144, %139, %135, %122
  %150 = phi i32 [ 0, %122 ], [ %145, %144 ], [ %140, %139 ], [ 0, %135 ]
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %178

152:                                              ; preds = %149, %114
  %153 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 1, ptr %153, align 4, !tbaa !98
  %154 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %154, align 8, !tbaa !100
  %155 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %155, align 8, !tbaa !101
  %156 = getelementptr inbounds %struct.BMesh, ptr %115, i64 0, i32 9
  %157 = load ptr, ptr %156, align 8, !tbaa !112
  store ptr %157, ptr %8, align 8, !tbaa !45
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #9
  %158 = load ptr, ptr %155, align 8, !tbaa !101
  %159 = call ptr %158(ptr noundef nonnull %8) #9
  %160 = icmp eq ptr %159, null
  br i1 %160, label %178, label %161

161:                                              ; preds = %152, %173
  %162 = phi i32 [ %174, %173 ], [ 0, %152 ]
  %163 = phi ptr [ %176, %173 ], [ %159, %152 ]
  %164 = getelementptr inbounds %struct.BMHeader, ptr %163, i64 0, i32 3
  %165 = load i8, ptr %164, align 1, !tbaa !103
  %166 = and i8 %165, 1
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %161
  %169 = add i32 %162, 1
  %170 = zext i32 %162 to i64
  %171 = getelementptr inbounds ptr, ptr %14, i64 %170
  store ptr %163, ptr %171, align 8, !tbaa !59
  %172 = icmp eq i32 %169, %118
  br i1 %172, label %178, label %173

173:                                              ; preds = %168, %161
  %174 = phi i32 [ %169, %168 ], [ %162, %161 ]
  %175 = load ptr, ptr %155, align 8, !tbaa !101
  %176 = call ptr %175(ptr noundef nonnull %8) #9
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %161, !llvm.loop !113

178:                                              ; preds = %168, %173, %149, %152
  %179 = phi i32 [ %150, %149 ], [ 0, %152 ], [ %174, %173 ], [ %169, %168 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  %180 = icmp eq i32 %179, 3
  br i1 %180, label %181, label %303

181:                                              ; preds = %178
  %182 = load ptr, ptr %14, align 16, !tbaa !59
  %183 = getelementptr inbounds %struct.BMVert, ptr %182, i64 0, i32 2
  %184 = getelementptr inbounds [3 x ptr], ptr %14, i64 0, i64 1
  %185 = load ptr, ptr %184, align 8, !tbaa !59
  %186 = getelementptr inbounds %struct.BMVert, ptr %185, i64 0, i32 2
  %187 = getelementptr inbounds [3 x ptr], ptr %14, i64 0, i64 2
  %188 = load ptr, ptr %187, align 16, !tbaa !59
  %189 = getelementptr inbounds %struct.BMVert, ptr %188, i64 0, i32 2
  %190 = call float @normal_tri_v3(ptr noundef %1, ptr noundef nonnull %183, ptr noundef nonnull %186, ptr noundef nonnull %189) #9
  %191 = load ptr, ptr %14, align 16, !tbaa !59
  %192 = getelementptr inbounds %struct.BMVert, ptr %191, i64 0, i32 3
  %193 = load float, ptr %192, align 4, !tbaa !44
  %194 = load ptr, ptr %184, align 8, !tbaa !59
  %195 = getelementptr inbounds %struct.BMVert, ptr %194, i64 0, i32 3
  %196 = load float, ptr %195, align 4, !tbaa !44
  %197 = fadd float %193, %196
  %198 = load ptr, ptr %187, align 16, !tbaa !59
  %199 = getelementptr inbounds %struct.BMVert, ptr %198, i64 0, i32 3
  %200 = load float, ptr %199, align 4, !tbaa !44
  %201 = fadd float %197, %200
  %202 = getelementptr inbounds %struct.BMVert, ptr %191, i64 0, i32 3, i64 1
  %203 = load float, ptr %202, align 4, !tbaa !44
  %204 = getelementptr inbounds %struct.BMVert, ptr %194, i64 0, i32 3, i64 1
  %205 = load float, ptr %204, align 4, !tbaa !44
  %206 = fadd float %203, %205
  %207 = getelementptr inbounds %struct.BMVert, ptr %198, i64 0, i32 3, i64 1
  %208 = load float, ptr %207, align 4, !tbaa !44
  %209 = fadd float %206, %208
  %210 = getelementptr inbounds %struct.BMVert, ptr %191, i64 0, i32 3, i64 2
  %211 = load float, ptr %210, align 4, !tbaa !44
  %212 = getelementptr inbounds %struct.BMVert, ptr %194, i64 0, i32 3, i64 2
  %213 = load float, ptr %212, align 4, !tbaa !44
  %214 = fadd float %211, %213
  %215 = getelementptr inbounds %struct.BMVert, ptr %198, i64 0, i32 3, i64 2
  %216 = load float, ptr %215, align 4, !tbaa !44
  %217 = fadd float %214, %216
  %218 = load float, ptr %1, align 4, !tbaa !44
  %219 = load float, ptr %36, align 4, !tbaa !44
  %220 = fmul float %209, %219
  %221 = call float @llvm.fmuladd.f32(float %201, float %218, float %220)
  %222 = load float, ptr %37, align 4, !tbaa !44
  %223 = call float @llvm.fmuladd.f32(float %217, float %222, float %221)
  %224 = fcmp olt float %223, 0.000000e+00
  br i1 %224, label %225, label %229

225:                                              ; preds = %181
  %226 = fneg float %218
  store float %226, ptr %1, align 4, !tbaa !44
  %227 = fneg float %219
  store float %227, ptr %36, align 4, !tbaa !44
  %228 = fneg float %222
  store float %228, ptr %37, align 4, !tbaa !44
  br label %229

229:                                              ; preds = %225, %181
  %230 = load ptr, ptr %47, align 8, !tbaa !91
  %231 = getelementptr inbounds %struct.BMesh, ptr %230, i64 0, i32 5
  %232 = load i32, ptr %231, align 4, !tbaa !114
  %233 = icmp sgt i32 %232, 0
  br i1 %233, label %234, label %264

234:                                              ; preds = %229, %260
  %235 = phi i64 [ %240, %260 ], [ 0, %229 ]
  %236 = phi ptr [ %262, %260 ], [ null, %229 ]
  %237 = phi float [ %261, %260 ], [ undef, %229 ]
  %238 = getelementptr inbounds [3 x ptr], ptr %14, i64 0, i64 %235
  %239 = load ptr, ptr %238, align 8, !tbaa !59
  %240 = add nuw nsw i64 %235, 1
  %241 = icmp eq i64 %240, 3
  %242 = and i64 %240, 4294967295
  %243 = select i1 %241, i64 0, i64 %242
  %244 = getelementptr inbounds [3 x ptr], ptr %14, i64 0, i64 %243
  %245 = load ptr, ptr %244, align 8, !tbaa !59
  %246 = call ptr @BM_edge_exists(ptr noundef %239, ptr noundef %245) #9
  %247 = icmp eq ptr %246, null
  br i1 %247, label %260, label %248

248:                                              ; preds = %234
  %249 = getelementptr inbounds %struct.BMHeader, ptr %246, i64 0, i32 3
  %250 = load i8, ptr %249, align 1, !tbaa !103
  %251 = and i8 %250, 1
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %260, label %253

253:                                              ; preds = %248
  %254 = call float @BM_edge_calc_length_squared(ptr noundef nonnull %246) #9
  %255 = icmp eq ptr %236, null
  %256 = fcmp olt float %237, %254
  %257 = select i1 %255, i1 true, i1 %256
  %258 = select i1 %257, float %254, float %237
  %259 = select i1 %257, ptr %246, ptr %236
  br label %260

260:                                              ; preds = %253, %248, %234
  %261 = phi float [ %258, %253 ], [ %237, %248 ], [ %237, %234 ]
  %262 = phi ptr [ %259, %253 ], [ %236, %248 ], [ %236, %234 ]
  %263 = icmp eq i64 %240, 3
  br i1 %263, label %264, label %234, !llvm.loop !115

264:                                              ; preds = %260, %229
  %265 = phi ptr [ null, %229 ], [ %262, %260 ]
  %266 = icmp eq ptr %265, null
  br i1 %266, label %302, label %267

267:                                              ; preds = %264
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #9
  %268 = getelementptr inbounds %struct.BMEdge, ptr %265, i64 0, i32 4
  %269 = load ptr, ptr %268, align 8, !tbaa !116
  %270 = icmp eq ptr %269, null
  br i1 %270, label %277, label %271

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.BMLoop, ptr %269, i64 0, i32 4
  %273 = load ptr, ptr %272, align 8, !tbaa !119
  %274 = icmp eq ptr %273, %269
  br i1 %274, label %275, label %277

275:                                              ; preds = %271
  %276 = getelementptr inbounds [2 x ptr], ptr %15, i64 0, i64 1
  call void @BM_edge_ordered_verts(ptr noundef nonnull %265, ptr noundef nonnull %15, ptr noundef nonnull %276) #9
  br label %283

277:                                              ; preds = %267, %271
  %278 = getelementptr inbounds %struct.BMEdge, ptr %265, i64 0, i32 2
  %279 = load ptr, ptr %278, align 8, !tbaa !121
  store ptr %279, ptr %15, align 16, !tbaa !59
  %280 = getelementptr inbounds %struct.BMEdge, ptr %265, i64 0, i32 3
  %281 = load ptr, ptr %280, align 8, !tbaa !122
  %282 = getelementptr inbounds [2 x ptr], ptr %15, i64 0, i64 1
  store ptr %281, ptr %282, align 8, !tbaa !59
  br label %283

283:                                              ; preds = %277, %275
  %284 = load ptr, ptr %15, align 16, !tbaa !59
  %285 = getelementptr inbounds %struct.BMVert, ptr %284, i64 0, i32 2
  %286 = getelementptr inbounds [2 x ptr], ptr %15, i64 0, i64 1
  %287 = load ptr, ptr %286, align 8, !tbaa !59
  %288 = getelementptr inbounds %struct.BMVert, ptr %287, i64 0, i32 2
  %289 = load float, ptr %285, align 4, !tbaa !44
  %290 = load float, ptr %288, align 4, !tbaa !44
  %291 = fsub float %289, %290
  store float %291, ptr %2, align 4, !tbaa !44
  %292 = getelementptr inbounds %struct.BMVert, ptr %284, i64 0, i32 2, i64 1
  %293 = load float, ptr %292, align 4, !tbaa !44
  %294 = getelementptr inbounds %struct.BMVert, ptr %287, i64 0, i32 2, i64 1
  %295 = load float, ptr %294, align 4, !tbaa !44
  %296 = fsub float %293, %295
  store float %296, ptr %38, align 4, !tbaa !44
  %297 = getelementptr inbounds %struct.BMVert, ptr %284, i64 0, i32 2, i64 2
  %298 = load float, ptr %297, align 4, !tbaa !44
  %299 = getelementptr inbounds %struct.BMVert, ptr %287, i64 0, i32 2, i64 2
  %300 = load float, ptr %299, align 4, !tbaa !44
  %301 = fsub float %298, %300
  store float %301, ptr %39, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #9
  br label %303

302:                                              ; preds = %264
  call void @BM_vert_tri_calc_plane(ptr noundef nonnull %14, ptr noundef %2) #9
  br label %303

303:                                              ; preds = %283, %302, %178
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #9
  br label %752

304:                                              ; preds = %110
  %305 = getelementptr inbounds %struct.BMesh, ptr %60, i64 0, i32 5
  %306 = load i32, ptr %305, align 4, !tbaa !114
  %307 = icmp eq i32 %306, 1
  %308 = icmp eq i32 %112, 2
  %309 = or i1 %308, %307
  br i1 %309, label %310, label %512

310:                                              ; preds = %304
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  br i1 %307, label %311, label %383

311:                                              ; preds = %310
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  %312 = getelementptr inbounds %struct.BMesh, ptr %60, i64 0, i32 32
  %313 = load ptr, ptr %312, align 8, !tbaa !109
  %314 = icmp eq ptr %313, null
  br i1 %314, label %346, label %315

315:                                              ; preds = %311
  %316 = getelementptr inbounds %struct.BMesh, ptr %60, i64 0, i32 32, i32 1
  %317 = load ptr, ptr %316, align 8, !tbaa !59
  %318 = icmp eq ptr %317, null
  br i1 %318, label %342, label %319

319:                                              ; preds = %315, %336
  %320 = phi ptr [ %337, %336 ], [ null, %315 ]
  %321 = phi ptr [ %340, %336 ], [ %317, %315 ]
  %322 = phi i32 [ %338, %336 ], [ 0, %315 ]
  %323 = getelementptr inbounds %struct.BMEditSelection, ptr %321, i64 0, i32 2
  %324 = load ptr, ptr %323, align 8, !tbaa !110
  %325 = getelementptr inbounds %struct.BMHeader, ptr %324, i64 0, i32 3
  %326 = load i8, ptr %325, align 1, !tbaa !103
  %327 = and i8 %326, 1
  %328 = icmp eq i8 %327, 0
  br i1 %328, label %336, label %329

329:                                              ; preds = %319
  %330 = getelementptr inbounds %struct.BMEditSelection, ptr %321, i64 0, i32 3
  %331 = load i8, ptr %330, align 8, !tbaa !93
  %332 = icmp eq i8 %331, 2
  br i1 %332, label %333, label %342

333:                                              ; preds = %329
  %334 = add i32 %322, 1
  %335 = icmp eq i32 %334, %306
  br i1 %335, label %342, label %336

336:                                              ; preds = %333, %319
  %337 = phi ptr [ %324, %333 ], [ %320, %319 ]
  %338 = phi i32 [ %334, %333 ], [ %322, %319 ]
  %339 = getelementptr inbounds %struct.BMEditSelection, ptr %321, i64 0, i32 1
  %340 = load ptr, ptr %339, align 8, !tbaa !59
  %341 = icmp eq ptr %340, null
  br i1 %341, label %342, label %319, !llvm.loop !111

342:                                              ; preds = %336, %333, %329, %315
  %343 = phi ptr [ null, %315 ], [ %320, %329 ], [ %324, %333 ], [ %337, %336 ]
  %344 = phi i32 [ 0, %315 ], [ 0, %329 ], [ %334, %333 ], [ %338, %336 ]
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %373

346:                                              ; preds = %342, %311
  %347 = phi ptr [ null, %311 ], [ %343, %342 ]
  %348 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 2, ptr %348, align 4, !tbaa !98
  %349 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %349, align 8, !tbaa !100
  %350 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %350, align 8, !tbaa !101
  %351 = getelementptr inbounds %struct.BMesh, ptr %60, i64 0, i32 10
  %352 = load ptr, ptr %351, align 8, !tbaa !123
  store ptr %352, ptr %7, align 8, !tbaa !45
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #9
  %353 = load ptr, ptr %350, align 8, !tbaa !101
  %354 = call ptr %353(ptr noundef nonnull %7) #9
  %355 = icmp eq ptr %354, null
  br i1 %355, label %373, label %356

356:                                              ; preds = %346, %367
  %357 = phi ptr [ %368, %367 ], [ %347, %346 ]
  %358 = phi i32 [ %369, %367 ], [ 0, %346 ]
  %359 = phi ptr [ %371, %367 ], [ %354, %346 ]
  %360 = getelementptr inbounds %struct.BMHeader, ptr %359, i64 0, i32 3
  %361 = load i8, ptr %360, align 1, !tbaa !103
  %362 = and i8 %361, 1
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %367, label %364

364:                                              ; preds = %356
  %365 = add i32 %358, 1
  %366 = icmp eq i32 %365, %306
  br i1 %366, label %373, label %367

367:                                              ; preds = %364, %356
  %368 = phi ptr [ %359, %364 ], [ %357, %356 ]
  %369 = phi i32 [ %365, %364 ], [ %358, %356 ]
  %370 = load ptr, ptr %350, align 8, !tbaa !101
  %371 = call ptr %370(ptr noundef nonnull %7) #9
  %372 = icmp eq ptr %371, null
  br i1 %372, label %373, label %356, !llvm.loop !113

373:                                              ; preds = %364, %367, %342, %346
  %374 = phi ptr [ %347, %346 ], [ %343, %342 ], [ %359, %364 ], [ %368, %367 ]
  %375 = phi i32 [ 0, %346 ], [ %344, %342 ], [ %365, %364 ], [ %369, %367 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  %376 = icmp eq i32 %375, 1
  br i1 %376, label %377, label %445

377:                                              ; preds = %373
  %378 = getelementptr inbounds %struct.BMEdge, ptr %374, i64 0, i32 2
  %379 = load ptr, ptr %378, align 8, !tbaa !121
  store ptr %379, ptr %16, align 16, !tbaa !59
  %380 = getelementptr inbounds %struct.BMEdge, ptr %374, i64 0, i32 3
  %381 = load ptr, ptr %380, align 8, !tbaa !122
  %382 = getelementptr inbounds [2 x ptr], ptr %16, i64 0, i64 1
  store ptr %381, ptr %382, align 8, !tbaa !59
  br label %445

383:                                              ; preds = %310
  %384 = call i32 @llvm.smin.i32(i32 %112, i32 2)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  %385 = getelementptr inbounds %struct.BMesh, ptr %60, i64 0, i32 32
  %386 = load ptr, ptr %385, align 8, !tbaa !109
  %387 = icmp eq ptr %386, null
  br i1 %387, label %418, label %388

388:                                              ; preds = %383
  %389 = getelementptr inbounds %struct.BMesh, ptr %60, i64 0, i32 32, i32 1
  %390 = load ptr, ptr %389, align 8, !tbaa !59
  %391 = icmp eq ptr %390, null
  br i1 %391, label %418, label %392

392:                                              ; preds = %388, %410
  %393 = phi ptr [ %413, %410 ], [ %390, %388 ]
  %394 = phi i32 [ %411, %410 ], [ 0, %388 ]
  %395 = getelementptr inbounds %struct.BMEditSelection, ptr %393, i64 0, i32 2
  %396 = load ptr, ptr %395, align 8, !tbaa !110
  %397 = getelementptr inbounds %struct.BMHeader, ptr %396, i64 0, i32 3
  %398 = load i8, ptr %397, align 1, !tbaa !103
  %399 = and i8 %398, 1
  %400 = icmp eq i8 %399, 0
  br i1 %400, label %410, label %401

401:                                              ; preds = %392
  %402 = getelementptr inbounds %struct.BMEditSelection, ptr %393, i64 0, i32 3
  %403 = load i8, ptr %402, align 8, !tbaa !93
  %404 = icmp eq i8 %403, 1
  br i1 %404, label %405, label %415

405:                                              ; preds = %401
  %406 = add i32 %394, 1
  %407 = zext i32 %394 to i64
  %408 = getelementptr inbounds ptr, ptr %16, i64 %407
  store ptr %396, ptr %408, align 8, !tbaa !59
  %409 = icmp eq i32 %406, %384
  br i1 %409, label %415, label %410

410:                                              ; preds = %405, %392
  %411 = phi i32 [ %406, %405 ], [ %394, %392 ]
  %412 = getelementptr inbounds %struct.BMEditSelection, ptr %393, i64 0, i32 1
  %413 = load ptr, ptr %412, align 8, !tbaa !59
  %414 = icmp eq ptr %413, null
  br i1 %414, label %415, label %392, !llvm.loop !111

415:                                              ; preds = %401, %405, %410
  %416 = phi i32 [ %411, %410 ], [ %406, %405 ], [ 0, %401 ]
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %444

418:                                              ; preds = %388, %415, %383
  %419 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 1, ptr %419, align 4, !tbaa !98
  %420 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %420, align 8, !tbaa !100
  %421 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %421, align 8, !tbaa !101
  %422 = getelementptr inbounds %struct.BMesh, ptr %60, i64 0, i32 9
  %423 = load ptr, ptr %422, align 8, !tbaa !112
  store ptr %423, ptr %6, align 8, !tbaa !45
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #9
  %424 = load ptr, ptr %421, align 8, !tbaa !101
  %425 = call ptr %424(ptr noundef nonnull %6) #9
  %426 = icmp eq ptr %425, null
  br i1 %426, label %444, label %427

427:                                              ; preds = %418, %439
  %428 = phi i32 [ %440, %439 ], [ 0, %418 ]
  %429 = phi ptr [ %442, %439 ], [ %425, %418 ]
  %430 = getelementptr inbounds %struct.BMHeader, ptr %429, i64 0, i32 3
  %431 = load i8, ptr %430, align 1, !tbaa !103
  %432 = and i8 %431, 1
  %433 = icmp eq i8 %432, 0
  br i1 %433, label %439, label %434

434:                                              ; preds = %427
  %435 = add i32 %428, 1
  %436 = zext i32 %428 to i64
  %437 = getelementptr inbounds ptr, ptr %16, i64 %436
  store ptr %429, ptr %437, align 8, !tbaa !59
  %438 = icmp eq i32 %435, %384
  br i1 %438, label %444, label %439

439:                                              ; preds = %434, %427
  %440 = phi i32 [ %435, %434 ], [ %428, %427 ]
  %441 = load ptr, ptr %421, align 8, !tbaa !101
  %442 = call ptr %441(ptr noundef nonnull %6) #9
  %443 = icmp eq ptr %442, null
  br i1 %443, label %444, label %427, !llvm.loop !113

444:                                              ; preds = %434, %439, %415, %418
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  br label %445

445:                                              ; preds = %373, %377, %444
  %446 = phi ptr [ %374, %377 ], [ %374, %373 ], [ null, %444 ]
  %447 = load ptr, ptr %16, align 16, !tbaa !59
  %448 = icmp ne ptr %447, null
  %449 = getelementptr inbounds [2 x ptr], ptr %16, i64 0, i64 1
  %450 = load ptr, ptr %449, align 8
  %451 = icmp ne ptr %450, null
  %452 = select i1 %448, i1 %451, i1 false
  br i1 %452, label %453, label %511

453:                                              ; preds = %445
  %454 = load ptr, ptr %47, align 8, !tbaa !91
  %455 = call ptr @BM_mesh_active_vert_get(ptr noundef %454) #9
  %456 = icmp eq ptr %455, %450
  br i1 %456, label %471, label %457

457:                                              ; preds = %453
  %458 = icmp eq ptr %446, null
  br i1 %458, label %472, label %459

459:                                              ; preds = %457
  %460 = getelementptr inbounds %struct.BMEdge, ptr %446, i64 0, i32 4
  %461 = load ptr, ptr %460, align 8, !tbaa !116
  %462 = icmp eq ptr %461, null
  br i1 %462, label %472, label %463

463:                                              ; preds = %459
  %464 = getelementptr inbounds %struct.BMLoop, ptr %461, i64 0, i32 4
  %465 = load ptr, ptr %464, align 8, !tbaa !119
  %466 = icmp eq ptr %465, %461
  br i1 %466, label %467, label %472

467:                                              ; preds = %463
  %468 = getelementptr inbounds %struct.BMLoop, ptr %461, i64 0, i32 1
  %469 = load ptr, ptr %468, align 8, !tbaa !124
  %470 = icmp eq ptr %469, %447
  br i1 %470, label %472, label %471

471:                                              ; preds = %453, %467
  store ptr %450, ptr %16, align 16, !tbaa !59
  store ptr %447, ptr %449, align 8, !tbaa !59
  br label %472

472:                                              ; preds = %459, %463, %457, %471, %467
  %473 = load ptr, ptr %16, align 16, !tbaa !59
  %474 = getelementptr inbounds %struct.BMVert, ptr %473, i64 0, i32 3
  %475 = load ptr, ptr %449, align 8, !tbaa !59
  %476 = getelementptr inbounds %struct.BMVert, ptr %475, i64 0, i32 3
  %477 = load float, ptr %474, align 4, !tbaa !44
  %478 = load float, ptr %476, align 4, !tbaa !44
  %479 = fadd float %477, %478
  store float %479, ptr %2, align 4, !tbaa !44
  %480 = getelementptr inbounds %struct.BMVert, ptr %473, i64 0, i32 3, i64 1
  %481 = load float, ptr %480, align 4, !tbaa !44
  %482 = getelementptr inbounds %struct.BMVert, ptr %475, i64 0, i32 3, i64 1
  %483 = load float, ptr %482, align 4, !tbaa !44
  %484 = fadd float %481, %483
  store float %484, ptr %38, align 4, !tbaa !44
  %485 = getelementptr inbounds %struct.BMVert, ptr %473, i64 0, i32 3, i64 2
  %486 = load float, ptr %485, align 4, !tbaa !44
  %487 = getelementptr inbounds %struct.BMVert, ptr %475, i64 0, i32 3, i64 2
  %488 = load float, ptr %487, align 4, !tbaa !44
  %489 = fadd float %486, %488
  store float %489, ptr %39, align 4, !tbaa !44
  %490 = getelementptr inbounds %struct.BMVert, ptr %473, i64 0, i32 2
  %491 = getelementptr inbounds %struct.BMVert, ptr %475, i64 0, i32 2
  %492 = load float, ptr %490, align 4, !tbaa !44
  %493 = load float, ptr %491, align 4, !tbaa !44
  %494 = fsub float %492, %493
  store float %494, ptr %1, align 4, !tbaa !44
  %495 = getelementptr inbounds %struct.BMVert, ptr %473, i64 0, i32 2, i64 1
  %496 = load float, ptr %495, align 4, !tbaa !44
  %497 = getelementptr inbounds %struct.BMVert, ptr %475, i64 0, i32 2, i64 1
  %498 = load float, ptr %497, align 4, !tbaa !44
  %499 = fsub float %496, %498
  store float %499, ptr %36, align 4, !tbaa !44
  %500 = getelementptr inbounds %struct.BMVert, ptr %473, i64 0, i32 2, i64 2
  %501 = load float, ptr %500, align 4, !tbaa !44
  %502 = getelementptr inbounds %struct.BMVert, ptr %475, i64 0, i32 2, i64 2
  %503 = load float, ptr %502, align 4, !tbaa !44
  %504 = fsub float %501, %503
  store float %504, ptr %37, align 4, !tbaa !44
  %505 = load float, ptr %2, align 4, !tbaa !44
  %506 = fneg float %505
  store float %506, ptr %2, align 4, !tbaa !44
  %507 = load float, ptr %38, align 4, !tbaa !44
  %508 = fneg float %507
  store float %508, ptr %38, align 4, !tbaa !44
  %509 = load float, ptr %39, align 4, !tbaa !44
  %510 = fneg float %509
  store float %510, ptr %39, align 4, !tbaa !44
  br label %511

511:                                              ; preds = %472, %445
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #9
  br label %752

512:                                              ; preds = %304
  %513 = icmp eq i32 %112, 1
  br i1 %513, label %514, label %697

514:                                              ; preds = %512
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  %515 = getelementptr inbounds %struct.BMesh, ptr %60, i64 0, i32 32
  %516 = load ptr, ptr %515, align 8, !tbaa !109
  %517 = icmp eq ptr %516, null
  br i1 %517, label %549, label %518

518:                                              ; preds = %514
  %519 = getelementptr inbounds %struct.BMesh, ptr %60, i64 0, i32 32, i32 1
  %520 = load ptr, ptr %519, align 8, !tbaa !59
  %521 = icmp eq ptr %520, null
  br i1 %521, label %545, label %522

522:                                              ; preds = %518, %539
  %523 = phi ptr [ %540, %539 ], [ null, %518 ]
  %524 = phi ptr [ %543, %539 ], [ %520, %518 ]
  %525 = phi i32 [ %541, %539 ], [ 0, %518 ]
  %526 = getelementptr inbounds %struct.BMEditSelection, ptr %524, i64 0, i32 2
  %527 = load ptr, ptr %526, align 8, !tbaa !110
  %528 = getelementptr inbounds %struct.BMHeader, ptr %527, i64 0, i32 3
  %529 = load i8, ptr %528, align 1, !tbaa !103
  %530 = and i8 %529, 1
  %531 = icmp eq i8 %530, 0
  br i1 %531, label %539, label %532

532:                                              ; preds = %522
  %533 = getelementptr inbounds %struct.BMEditSelection, ptr %524, i64 0, i32 3
  %534 = load i8, ptr %533, align 8, !tbaa !93
  %535 = icmp eq i8 %534, 1
  br i1 %535, label %536, label %545

536:                                              ; preds = %532
  %537 = add i32 %525, 1
  %538 = icmp eq i32 %537, %112
  br i1 %538, label %545, label %539

539:                                              ; preds = %536, %522
  %540 = phi ptr [ %527, %536 ], [ %523, %522 ]
  %541 = phi i32 [ %537, %536 ], [ %525, %522 ]
  %542 = getelementptr inbounds %struct.BMEditSelection, ptr %524, i64 0, i32 1
  %543 = load ptr, ptr %542, align 8, !tbaa !59
  %544 = icmp eq ptr %543, null
  br i1 %544, label %545, label %522, !llvm.loop !111

545:                                              ; preds = %539, %536, %532, %518
  %546 = phi ptr [ null, %518 ], [ %523, %532 ], [ %527, %536 ], [ %540, %539 ]
  %547 = phi i32 [ 0, %518 ], [ 0, %532 ], [ %537, %536 ], [ %541, %539 ]
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %549, label %576

549:                                              ; preds = %545, %514
  %550 = phi ptr [ null, %514 ], [ %546, %545 ]
  %551 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 1, ptr %551, align 4, !tbaa !98
  %552 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %552, align 8, !tbaa !100
  %553 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %553, align 8, !tbaa !101
  %554 = getelementptr inbounds %struct.BMesh, ptr %60, i64 0, i32 9
  %555 = load ptr, ptr %554, align 8, !tbaa !112
  store ptr %555, ptr %5, align 8, !tbaa !45
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #9
  %556 = load ptr, ptr %553, align 8, !tbaa !101
  %557 = call ptr %556(ptr noundef nonnull %5) #9
  %558 = icmp eq ptr %557, null
  br i1 %558, label %576, label %559

559:                                              ; preds = %549, %570
  %560 = phi ptr [ %571, %570 ], [ %550, %549 ]
  %561 = phi i32 [ %572, %570 ], [ 0, %549 ]
  %562 = phi ptr [ %574, %570 ], [ %557, %549 ]
  %563 = getelementptr inbounds %struct.BMHeader, ptr %562, i64 0, i32 3
  %564 = load i8, ptr %563, align 1, !tbaa !103
  %565 = and i8 %564, 1
  %566 = icmp eq i8 %565, 0
  br i1 %566, label %570, label %567

567:                                              ; preds = %559
  %568 = add i32 %561, 1
  %569 = icmp eq i32 %568, %112
  br i1 %569, label %576, label %570

570:                                              ; preds = %567, %559
  %571 = phi ptr [ %562, %567 ], [ %560, %559 ]
  %572 = phi i32 [ %568, %567 ], [ %561, %559 ]
  %573 = load ptr, ptr %553, align 8, !tbaa !101
  %574 = call ptr %573(ptr noundef nonnull %5) #9
  %575 = icmp eq ptr %574, null
  br i1 %575, label %576, label %559, !llvm.loop !113

576:                                              ; preds = %567, %570, %545, %549
  %577 = phi ptr [ %550, %549 ], [ %546, %545 ], [ %562, %567 ], [ %571, %570 ]
  %578 = phi i32 [ 0, %549 ], [ %547, %545 ], [ %568, %567 ], [ %572, %570 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  %579 = icmp eq i32 %578, 1
  br i1 %579, label %580, label %687

580:                                              ; preds = %576
  %581 = getelementptr inbounds %struct.BMVert, ptr %577, i64 0, i32 3
  %582 = load float, ptr %581, align 4, !tbaa !44
  store float %582, ptr %1, align 4, !tbaa !44
  %583 = getelementptr inbounds %struct.BMVert, ptr %577, i64 0, i32 3, i64 1
  %584 = load float, ptr %583, align 4, !tbaa !44
  store float %584, ptr %36, align 4, !tbaa !44
  %585 = getelementptr inbounds %struct.BMVert, ptr %577, i64 0, i32 3, i64 2
  %586 = load float, ptr %585, align 4, !tbaa !44
  store float %586, ptr %37, align 4, !tbaa !44
  %587 = call zeroext i8 @BM_vert_is_edge_pair(ptr noundef %577) #9
  %588 = icmp eq i8 %587, 0
  br i1 %588, label %687, label %589

589:                                              ; preds = %580
  %590 = getelementptr inbounds %struct.BMVert, ptr %577, i64 0, i32 4
  %591 = load ptr, ptr %590, align 8, !tbaa !125
  %592 = getelementptr inbounds %struct.BMEdge, ptr %591, i64 0, i32 5
  %593 = getelementptr inbounds %struct.BMEdge, ptr %591, i64 0, i32 3
  %594 = load ptr, ptr %593, align 8, !tbaa !122
  %595 = icmp eq ptr %577, %594
  %596 = zext i1 %595 to i64
  %597 = getelementptr inbounds %struct.BMDiskLink, ptr %592, i64 %596
  %598 = load ptr, ptr %597, align 8, !tbaa !127
  %599 = getelementptr inbounds %struct.BMEdge, ptr %591, i64 0, i32 2
  %600 = load ptr, ptr %599, align 8, !tbaa !121
  %601 = icmp eq ptr %600, %577
  %602 = select i1 %595, ptr %600, ptr null
  %603 = select i1 %601, ptr %594, ptr %602
  %604 = getelementptr inbounds %struct.BMEdge, ptr %598, i64 0, i32 2
  %605 = load ptr, ptr %604, align 8, !tbaa !121
  %606 = icmp eq ptr %605, %577
  %607 = getelementptr inbounds %struct.BMEdge, ptr %598, i64 0, i32 3
  %608 = load ptr, ptr %607, align 8, !tbaa !122
  %609 = icmp eq ptr %608, %577
  %610 = select i1 %609, ptr %605, ptr null
  %611 = select i1 %606, ptr %608, ptr %610
  %612 = getelementptr inbounds %struct.BMEdge, ptr %591, i64 0, i32 4
  %613 = load ptr, ptr %612, align 8, !tbaa !116
  %614 = icmp eq ptr %613, null
  br i1 %614, label %623, label %615

615:                                              ; preds = %589
  %616 = getelementptr inbounds %struct.BMLoop, ptr %613, i64 0, i32 4
  %617 = load ptr, ptr %616, align 8, !tbaa !119
  %618 = icmp eq ptr %617, %613
  br i1 %618, label %619, label %623

619:                                              ; preds = %615
  %620 = getelementptr inbounds %struct.BMLoop, ptr %613, i64 0, i32 1
  %621 = load ptr, ptr %620, align 8, !tbaa !124
  %622 = icmp eq ptr %621, %577
  br label %628

623:                                              ; preds = %589, %615
  %624 = call float @BM_edge_calc_length_squared(ptr noundef %591) #9
  %625 = call float @BM_edge_calc_length_squared(ptr noundef %598) #9
  %626 = fcmp olt float %624, %625
  br i1 %626, label %627, label %628

627:                                              ; preds = %623
  br label %628

628:                                              ; preds = %619, %623, %627
  %629 = phi i1 [ false, %627 ], [ true, %623 ], [ %622, %619 ]
  %630 = select i1 %629, ptr %611, ptr %603
  %631 = select i1 %629, ptr %603, ptr %611
  %632 = getelementptr inbounds %struct.BMVert, ptr %577, i64 0, i32 2
  %633 = getelementptr inbounds %struct.BMVert, ptr %631, i64 0, i32 2
  %634 = load float, ptr %632, align 4, !tbaa !44
  %635 = load float, ptr %633, align 4, !tbaa !44
  %636 = fsub float %634, %635
  %637 = getelementptr inbounds %struct.BMVert, ptr %577, i64 0, i32 2, i64 1
  %638 = load float, ptr %637, align 4, !tbaa !44
  %639 = getelementptr inbounds %struct.BMVert, ptr %631, i64 0, i32 2, i64 1
  %640 = load float, ptr %639, align 4, !tbaa !44
  %641 = fsub float %638, %640
  %642 = getelementptr inbounds %struct.BMVert, ptr %577, i64 0, i32 2, i64 2
  %643 = load float, ptr %642, align 4, !tbaa !44
  %644 = getelementptr inbounds %struct.BMVert, ptr %631, i64 0, i32 2, i64 2
  %645 = load float, ptr %644, align 4, !tbaa !44
  %646 = fsub float %643, %645
  %647 = getelementptr inbounds %struct.BMVert, ptr %630, i64 0, i32 2
  %648 = load float, ptr %647, align 4, !tbaa !44
  %649 = fsub float %648, %634
  %650 = getelementptr inbounds %struct.BMVert, ptr %630, i64 0, i32 2, i64 1
  %651 = load float, ptr %650, align 4, !tbaa !44
  %652 = fsub float %651, %638
  %653 = getelementptr inbounds %struct.BMVert, ptr %630, i64 0, i32 2, i64 2
  %654 = load float, ptr %653, align 4, !tbaa !44
  %655 = fsub float %654, %643
  %656 = fmul float %641, %641
  %657 = call float @llvm.fmuladd.f32(float %636, float %636, float %656)
  %658 = call float @llvm.fmuladd.f32(float %646, float %646, float %657)
  %659 = fcmp ogt float %658, 0x38AA95A5C0000000
  br i1 %659, label %660, label %666

660:                                              ; preds = %628
  %661 = call float @sqrtf(float noundef %658) #9
  %662 = fdiv float 1.000000e+00, %661
  %663 = fmul float %636, %662
  %664 = fmul float %641, %662
  %665 = fmul float %646, %662
  br label %666

666:                                              ; preds = %628, %660
  %667 = phi float [ %664, %660 ], [ 0.000000e+00, %628 ]
  %668 = phi float [ %663, %660 ], [ 0.000000e+00, %628 ]
  %669 = phi float [ %665, %660 ], [ 0.000000e+00, %628 ]
  %670 = fmul float %652, %652
  %671 = call float @llvm.fmuladd.f32(float %649, float %649, float %670)
  %672 = call float @llvm.fmuladd.f32(float %655, float %655, float %671)
  %673 = fcmp ogt float %672, 0x38AA95A5C0000000
  br i1 %673, label %674, label %680

674:                                              ; preds = %666
  %675 = call float @sqrtf(float noundef %672) #9
  %676 = fdiv float 1.000000e+00, %675
  %677 = fmul float %649, %676
  %678 = fmul float %652, %676
  %679 = fmul float %655, %676
  br label %680

680:                                              ; preds = %666, %674
  %681 = phi float [ %678, %674 ], [ 0.000000e+00, %666 ]
  %682 = phi float [ %677, %674 ], [ 0.000000e+00, %666 ]
  %683 = phi float [ %679, %674 ], [ 0.000000e+00, %666 ]
  %684 = fadd float %668, %682
  store float %684, ptr %2, align 4, !tbaa !44
  %685 = fadd float %667, %681
  store float %685, ptr %38, align 4, !tbaa !44
  %686 = fadd float %669, %683
  store float %686, ptr %39, align 4, !tbaa !44
  br label %687

687:                                              ; preds = %580, %680, %576
  %688 = load float, ptr %2, align 4, !tbaa !44
  %689 = fcmp oeq float %688, 0.000000e+00
  br i1 %689, label %690, label %752

690:                                              ; preds = %687
  %691 = load float, ptr %38, align 4, !tbaa !44
  %692 = fcmp oeq float %691, 0.000000e+00
  br i1 %692, label %693, label %752

693:                                              ; preds = %690
  %694 = load float, ptr %39, align 4, !tbaa !44
  %695 = fcmp une float %694, 0.000000e+00
  %696 = select i1 %695, i32 3, i32 2
  br label %752

697:                                              ; preds = %512
  %698 = icmp sgt i32 %112, 3
  br i1 %698, label %699, label %752

699:                                              ; preds = %697
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %17) #9
  store float 0.000000e+00, ptr %1, align 4, !tbaa !44
  store float 0.000000e+00, ptr %36, align 4, !tbaa !44
  store float 0.000000e+00, ptr %37, align 4, !tbaa !44
  %700 = load ptr, ptr %47, align 8, !tbaa !91
  %701 = getelementptr inbounds %struct.BMIter, ptr %17, i64 0, i32 4
  store i8 1, ptr %701, align 4, !tbaa !98
  %702 = getelementptr inbounds %struct.BMIter, ptr %17, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %702, align 8, !tbaa !100
  %703 = getelementptr inbounds %struct.BMIter, ptr %17, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %703, align 8, !tbaa !101
  %704 = getelementptr inbounds %struct.BMesh, ptr %700, i64 0, i32 9
  %705 = load ptr, ptr %704, align 8, !tbaa !112
  store ptr %705, ptr %17, align 8, !tbaa !45
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %17) #9
  %706 = load ptr, ptr %703, align 8, !tbaa !101
  %707 = call ptr %706(ptr noundef nonnull %17) #9
  %708 = icmp eq ptr %707, null
  br i1 %708, label %732, label %709

709:                                              ; preds = %699, %728
  %710 = phi ptr [ %730, %728 ], [ %707, %699 ]
  %711 = getelementptr inbounds %struct.BMHeader, ptr %710, i64 0, i32 3
  %712 = load i8, ptr %711, align 1, !tbaa !103
  %713 = and i8 %712, 1
  %714 = icmp eq i8 %713, 0
  br i1 %714, label %728, label %715

715:                                              ; preds = %709
  %716 = getelementptr inbounds %struct.BMVert, ptr %710, i64 0, i32 3
  %717 = load float, ptr %716, align 4, !tbaa !44
  %718 = load float, ptr %1, align 4, !tbaa !44
  %719 = fadd float %717, %718
  store float %719, ptr %1, align 4, !tbaa !44
  %720 = getelementptr inbounds %struct.BMVert, ptr %710, i64 0, i32 3, i64 1
  %721 = load float, ptr %720, align 4, !tbaa !44
  %722 = load float, ptr %36, align 4, !tbaa !44
  %723 = fadd float %721, %722
  store float %723, ptr %36, align 4, !tbaa !44
  %724 = getelementptr inbounds %struct.BMVert, ptr %710, i64 0, i32 3, i64 2
  %725 = load float, ptr %724, align 4, !tbaa !44
  %726 = load float, ptr %37, align 4, !tbaa !44
  %727 = fadd float %725, %726
  store float %727, ptr %37, align 4, !tbaa !44
  br label %728

728:                                              ; preds = %709, %715
  %729 = load ptr, ptr %703, align 8, !tbaa !101
  %730 = call ptr %729(ptr noundef nonnull %17) #9
  %731 = icmp eq ptr %730, null
  br i1 %731, label %732, label %709, !llvm.loop !128

732:                                              ; preds = %728, %699
  %733 = load float, ptr %1, align 4, !tbaa !44
  %734 = load float, ptr %36, align 4, !tbaa !44
  %735 = fmul float %734, %734
  %736 = call float @llvm.fmuladd.f32(float %733, float %733, float %735)
  %737 = load float, ptr %37, align 4, !tbaa !44
  %738 = call float @llvm.fmuladd.f32(float %737, float %737, float %736)
  %739 = fcmp ogt float %738, 0x38AA95A5C0000000
  br i1 %739, label %740, label %749

740:                                              ; preds = %732
  %741 = call float @sqrtf(float noundef %738) #9
  %742 = fdiv float 1.000000e+00, %741
  %743 = load float, ptr %1, align 4, !tbaa !44
  %744 = fmul float %743, %742
  store float %744, ptr %1, align 4, !tbaa !44
  %745 = load float, ptr %36, align 4, !tbaa !44
  %746 = fmul float %742, %745
  store float %746, ptr %36, align 4, !tbaa !44
  %747 = load float, ptr %37, align 4, !tbaa !44
  %748 = fmul float %742, %747
  br label %750

749:                                              ; preds = %732
  store float 0.000000e+00, ptr %1, align 4, !tbaa !44
  store float 0.000000e+00, ptr %36, align 4, !tbaa !44
  br label %750

750:                                              ; preds = %740, %749
  %751 = phi float [ 0.000000e+00, %749 ], [ %748, %740 ]
  store float %751, ptr %37, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %17) #9
  br label %752

752:                                              ; preds = %693, %690, %687, %109, %511, %697, %750, %303, %56, %57, %58, %53
  %753 = phi i32 [ 0, %53 ], [ 4, %58 ], [ 3, %57 ], [ 2, %56 ], [ 4, %109 ], [ 4, %303 ], [ 3, %511 ], [ 2, %750 ], [ 0, %697 ], [ 3, %690 ], [ 3, %687 ], [ %696, %693 ]
  %754 = load float, ptr %2, align 4, !tbaa !44
  %755 = fneg float %754
  store float %755, ptr %2, align 4, !tbaa !44
  %756 = load float, ptr %38, align 4, !tbaa !44
  %757 = fneg float %756
  store float %757, ptr %38, align 4, !tbaa !44
  %758 = load float, ptr %39, align 4, !tbaa !44
  %759 = fneg float %758
  store float %759, ptr %39, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #9
  br label %1160

760:                                              ; preds = %41, %41
  %761 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 19
  %762 = load ptr, ptr %761, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #9
  store ptr null, ptr %18, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #9
  store ptr null, ptr %19, align 8, !tbaa !59
  %763 = call ptr @BKE_curve_editNurbs_get(ptr noundef %762) #9
  %764 = icmp eq i8 %3, 0
  br i1 %764, label %777, label %765

765:                                              ; preds = %760
  %766 = call zeroext i8 @BKE_curve_nurb_vert_active_get(ptr noundef %762, ptr noundef nonnull %18, ptr noundef nonnull %19) #9
  %767 = icmp eq i8 %766, 0
  br i1 %767, label %777, label %768

768:                                              ; preds = %765
  %769 = load ptr, ptr %18, align 8, !tbaa !59
  %770 = getelementptr inbounds %struct.Nurb, ptr %769, i64 0, i32 2
  %771 = load i16, ptr %770, align 8, !tbaa !130
  %772 = icmp eq i16 %771, 1
  br i1 %772, label %773, label %961

773:                                              ; preds = %768
  %774 = load ptr, ptr %19, align 8, !tbaa !59
  call void @BKE_nurb_bezt_calc_normal(ptr noundef %769, ptr noundef %774, ptr noundef %1) #9
  %775 = load ptr, ptr %18, align 8, !tbaa !59
  %776 = load ptr, ptr %19, align 8, !tbaa !59
  call void @BKE_nurb_bezt_calc_plane(ptr noundef %775, ptr noundef %776, ptr noundef %2) #9
  br label %961

777:                                              ; preds = %765, %760
  %778 = getelementptr inbounds %struct.Curve, ptr %762, i64 0, i32 16
  %779 = load i16, ptr %778, align 8, !tbaa !132
  %780 = load ptr, ptr %763, align 8, !tbaa !59
  store ptr %780, ptr %18, align 8, !tbaa !59
  %781 = icmp eq ptr %780, null
  br i1 %781, label %961, label %782

782:                                              ; preds = %777
  %783 = and i16 %779, 1
  %784 = icmp eq i16 %783, 0
  %785 = getelementptr inbounds %struct.View3D, ptr %26, i64 0, i32 27
  %786 = getelementptr inbounds float, ptr %20, i64 1
  %787 = getelementptr inbounds float, ptr %20, i64 2
  %788 = getelementptr inbounds float, ptr %20, i64 1
  %789 = getelementptr inbounds float, ptr %20, i64 2
  %790 = getelementptr inbounds float, ptr %20, i64 1
  %791 = getelementptr inbounds float, ptr %20, i64 2
  %792 = getelementptr inbounds float, ptr %20, i64 1
  %793 = getelementptr inbounds float, ptr %20, i64 2
  br label %794

794:                                              ; preds = %782, %957
  %795 = phi ptr [ %780, %782 ], [ %959, %957 ]
  %796 = getelementptr inbounds %struct.Nurb, ptr %795, i64 0, i32 2
  %797 = load i16, ptr %796, align 8, !tbaa !130
  %798 = icmp eq i16 %797, 1
  br i1 %798, label %799, label %957

799:                                              ; preds = %794
  %800 = getelementptr inbounds %struct.Nurb, ptr %795, i64 0, i32 18
  %801 = load ptr, ptr %800, align 8, !tbaa !135
  store ptr %801, ptr %19, align 8, !tbaa !59
  %802 = getelementptr inbounds %struct.Nurb, ptr %795, i64 0, i32 6
  %803 = load i32, ptr %802, align 8, !tbaa !136
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %957, label %805

805:                                              ; preds = %799, %953
  %806 = phi i32 [ %807, %953 ], [ %803, %799 ]
  %807 = add nsw i32 %806, -1
  %808 = load ptr, ptr %19, align 8, !tbaa !59
  br i1 %784, label %809, label %824

809:                                              ; preds = %805
  %810 = getelementptr inbounds %struct.BezTriple, ptr %808, i64 0, i32 7
  %811 = load i8, ptr %810, align 1, !tbaa !137
  %812 = and i8 %811, 1
  %813 = getelementptr inbounds %struct.BezTriple, ptr %808, i64 0, i32 8
  %814 = load i8, ptr %813, align 4, !tbaa !139
  %815 = shl i8 %814, 1
  %816 = and i8 %815, 2
  %817 = or disjoint i8 %816, %812
  %818 = getelementptr inbounds %struct.BezTriple, ptr %808, i64 0, i32 9
  %819 = load i8, ptr %818, align 1, !tbaa !140
  %820 = shl i8 %819, 2
  %821 = and i8 %820, 4
  %822 = or disjoint i8 %817, %821
  %823 = zext nneg i8 %822 to i16
  br label %830

824:                                              ; preds = %805
  %825 = getelementptr inbounds %struct.BezTriple, ptr %808, i64 0, i32 8
  %826 = load i8, ptr %825, align 4, !tbaa !139
  %827 = and i8 %826, 1
  %828 = icmp eq i8 %827, 0
  %829 = select i1 %828, i16 0, i16 7
  br label %830

830:                                              ; preds = %809, %824
  %831 = phi i16 [ %829, %824 ], [ %823, %809 ]
  %832 = icmp eq i16 %831, 0
  br i1 %832, label %953, label %833

833:                                              ; preds = %830
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #9
  %834 = load i16, ptr %785, align 2, !tbaa !67
  %835 = icmp eq i16 %834, 2
  %836 = zext nneg i16 %831 to i32
  %837 = icmp eq i16 %831, 2
  %838 = or i1 %837, %835
  %839 = and i16 %831, 125
  %840 = icmp eq i16 %839, 5
  %841 = or i1 %840, %838
  br i1 %841, label %842, label %852

842:                                              ; preds = %833
  %843 = load ptr, ptr %18, align 8, !tbaa !59
  %844 = load ptr, ptr %19, align 8, !tbaa !59
  call void @BKE_nurb_bezt_calc_normal(ptr noundef %843, ptr noundef %844, ptr noundef nonnull %20) #9
  %845 = load float, ptr %20, align 4, !tbaa !44
  %846 = load float, ptr %1, align 4, !tbaa !44
  %847 = fadd float %845, %846
  store float %847, ptr %1, align 4, !tbaa !44
  %848 = load float, ptr %790, align 4, !tbaa !44
  %849 = load float, ptr %36, align 4, !tbaa !44
  %850 = fadd float %848, %849
  store float %850, ptr %36, align 4, !tbaa !44
  %851 = load float, ptr %791, align 4, !tbaa !44
  br label %937

852:                                              ; preds = %833
  %853 = and i32 %836, 1
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %895, label %855

855:                                              ; preds = %852
  %856 = load ptr, ptr %19, align 8, !tbaa !59
  %857 = getelementptr inbounds [3 x [3 x float]], ptr %856, i64 0, i64 1
  %858 = load float, ptr %856, align 4, !tbaa !44
  %859 = load float, ptr %857, align 4, !tbaa !44
  %860 = fsub float %858, %859
  store float %860, ptr %20, align 4, !tbaa !44
  %861 = getelementptr inbounds float, ptr %856, i64 1
  %862 = load float, ptr %861, align 4, !tbaa !44
  %863 = getelementptr inbounds [3 x [3 x float]], ptr %856, i64 0, i64 1, i64 1
  %864 = load float, ptr %863, align 4, !tbaa !44
  %865 = fsub float %862, %864
  store float %865, ptr %786, align 4, !tbaa !44
  %866 = getelementptr inbounds float, ptr %856, i64 2
  %867 = load float, ptr %866, align 4, !tbaa !44
  %868 = getelementptr inbounds [3 x [3 x float]], ptr %856, i64 0, i64 1, i64 2
  %869 = load float, ptr %868, align 4, !tbaa !44
  %870 = fsub float %867, %869
  store float %870, ptr %787, align 4, !tbaa !44
  %871 = fmul float %865, %865
  %872 = call float @llvm.fmuladd.f32(float %860, float %860, float %871)
  %873 = call float @llvm.fmuladd.f32(float %870, float %870, float %872)
  %874 = fcmp ogt float %873, 0x38AA95A5C0000000
  br i1 %874, label %875, label %884

875:                                              ; preds = %855
  %876 = call float @sqrtf(float noundef %873) #9
  %877 = fdiv float 1.000000e+00, %876
  %878 = load float, ptr %20, align 4, !tbaa !44
  %879 = fmul float %878, %877
  store float %879, ptr %20, align 4, !tbaa !44
  %880 = load float, ptr %786, align 4, !tbaa !44
  %881 = fmul float %877, %880
  store float %881, ptr %786, align 4, !tbaa !44
  %882 = load float, ptr %787, align 4, !tbaa !44
  %883 = fmul float %877, %882
  br label %885

884:                                              ; preds = %855
  store float 0.000000e+00, ptr %20, align 4, !tbaa !44
  store float 0.000000e+00, ptr %786, align 4, !tbaa !44
  br label %885

885:                                              ; preds = %875, %884
  %886 = phi float [ 0.000000e+00, %884 ], [ %883, %875 ]
  store float %886, ptr %787, align 4, !tbaa !44
  %887 = load float, ptr %20, align 4, !tbaa !44
  %888 = load float, ptr %1, align 4, !tbaa !44
  %889 = fadd float %887, %888
  store float %889, ptr %1, align 4, !tbaa !44
  %890 = load float, ptr %786, align 4, !tbaa !44
  %891 = load float, ptr %36, align 4, !tbaa !44
  %892 = fadd float %890, %891
  store float %892, ptr %36, align 4, !tbaa !44
  %893 = load float, ptr %37, align 4, !tbaa !44
  %894 = fadd float %886, %893
  store float %894, ptr %37, align 4, !tbaa !44
  br label %895

895:                                              ; preds = %885, %852
  %896 = and i32 %836, 4
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %941, label %898

898:                                              ; preds = %895
  %899 = load ptr, ptr %19, align 8, !tbaa !59
  %900 = getelementptr inbounds [3 x [3 x float]], ptr %899, i64 0, i64 1
  %901 = getelementptr inbounds [3 x [3 x float]], ptr %899, i64 0, i64 2
  %902 = load float, ptr %900, align 4, !tbaa !44
  %903 = load float, ptr %901, align 4, !tbaa !44
  %904 = fsub float %902, %903
  store float %904, ptr %20, align 4, !tbaa !44
  %905 = getelementptr inbounds [3 x [3 x float]], ptr %899, i64 0, i64 1, i64 1
  %906 = load float, ptr %905, align 4, !tbaa !44
  %907 = getelementptr inbounds [3 x [3 x float]], ptr %899, i64 0, i64 2, i64 1
  %908 = load float, ptr %907, align 4, !tbaa !44
  %909 = fsub float %906, %908
  store float %909, ptr %788, align 4, !tbaa !44
  %910 = getelementptr inbounds [3 x [3 x float]], ptr %899, i64 0, i64 1, i64 2
  %911 = load float, ptr %910, align 4, !tbaa !44
  %912 = getelementptr inbounds [3 x [3 x float]], ptr %899, i64 0, i64 2, i64 2
  %913 = load float, ptr %912, align 4, !tbaa !44
  %914 = fsub float %911, %913
  store float %914, ptr %789, align 4, !tbaa !44
  %915 = fmul float %909, %909
  %916 = call float @llvm.fmuladd.f32(float %904, float %904, float %915)
  %917 = call float @llvm.fmuladd.f32(float %914, float %914, float %916)
  %918 = fcmp ogt float %917, 0x38AA95A5C0000000
  br i1 %918, label %919, label %928

919:                                              ; preds = %898
  %920 = call float @sqrtf(float noundef %917) #9
  %921 = fdiv float 1.000000e+00, %920
  %922 = load float, ptr %20, align 4, !tbaa !44
  %923 = fmul float %922, %921
  store float %923, ptr %20, align 4, !tbaa !44
  %924 = load float, ptr %788, align 4, !tbaa !44
  %925 = fmul float %921, %924
  store float %925, ptr %788, align 4, !tbaa !44
  %926 = load float, ptr %789, align 4, !tbaa !44
  %927 = fmul float %921, %926
  br label %929

928:                                              ; preds = %898
  store float 0.000000e+00, ptr %20, align 4, !tbaa !44
  store float 0.000000e+00, ptr %788, align 4, !tbaa !44
  br label %929

929:                                              ; preds = %919, %928
  %930 = phi float [ 0.000000e+00, %928 ], [ %927, %919 ]
  store float %930, ptr %789, align 4, !tbaa !44
  %931 = load float, ptr %20, align 4, !tbaa !44
  %932 = load float, ptr %1, align 4, !tbaa !44
  %933 = fadd float %931, %932
  store float %933, ptr %1, align 4, !tbaa !44
  %934 = load float, ptr %788, align 4, !tbaa !44
  %935 = load float, ptr %36, align 4, !tbaa !44
  %936 = fadd float %934, %935
  store float %936, ptr %36, align 4, !tbaa !44
  br label %937

937:                                              ; preds = %842, %929
  %938 = phi float [ %930, %929 ], [ %851, %842 ]
  %939 = load float, ptr %37, align 4, !tbaa !44
  %940 = fadd float %938, %939
  store float %940, ptr %37, align 4, !tbaa !44
  br label %941

941:                                              ; preds = %937, %895
  %942 = load ptr, ptr %18, align 8, !tbaa !59
  %943 = load ptr, ptr %19, align 8, !tbaa !59
  call void @BKE_nurb_bezt_calc_plane(ptr noundef %942, ptr noundef %943, ptr noundef nonnull %20) #9
  %944 = load float, ptr %20, align 4, !tbaa !44
  %945 = load float, ptr %2, align 4, !tbaa !44
  %946 = fadd float %944, %945
  store float %946, ptr %2, align 4, !tbaa !44
  %947 = load float, ptr %792, align 4, !tbaa !44
  %948 = load float, ptr %38, align 4, !tbaa !44
  %949 = fadd float %947, %948
  store float %949, ptr %38, align 4, !tbaa !44
  %950 = load float, ptr %793, align 4, !tbaa !44
  %951 = load float, ptr %39, align 4, !tbaa !44
  %952 = fadd float %950, %951
  store float %952, ptr %39, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #9
  br label %953

953:                                              ; preds = %941, %830
  %954 = load ptr, ptr %19, align 8, !tbaa !59
  %955 = getelementptr inbounds %struct.BezTriple, ptr %954, i64 1
  store ptr %955, ptr %19, align 8, !tbaa !59
  %956 = icmp eq i32 %807, 0
  br i1 %956, label %957, label %805, !llvm.loop !141

957:                                              ; preds = %953, %799, %794
  %958 = load ptr, ptr %18, align 8, !tbaa !59
  %959 = load ptr, ptr %958, align 8, !tbaa !59
  store ptr %959, ptr %18, align 8, !tbaa !59
  %960 = icmp eq ptr %959, null
  br i1 %960, label %961, label %794, !llvm.loop !142

961:                                              ; preds = %957, %777, %768, %773
  %962 = load float, ptr %1, align 4, !tbaa !44
  %963 = fcmp oeq float %962, 0.000000e+00
  br i1 %963, label %964, label %971

964:                                              ; preds = %961
  %965 = load float, ptr %36, align 4, !tbaa !44
  %966 = fcmp oeq float %965, 0.000000e+00
  br i1 %966, label %967, label %971

967:                                              ; preds = %964
  %968 = load float, ptr %37, align 4, !tbaa !44
  %969 = fcmp une float %968, 0.000000e+00
  %970 = select i1 %969, i32 4, i32 0
  br label %971

971:                                              ; preds = %961, %964, %967
  %972 = phi i32 [ 4, %964 ], [ 4, %961 ], [ %970, %967 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #9
  br label %1160

973:                                              ; preds = %41
  %974 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 19
  %975 = load ptr, ptr %974, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %21) #9
  %976 = icmp eq i8 %3, 0
  br i1 %976, label %1007, label %977

977:                                              ; preds = %973
  %978 = getelementptr inbounds %struct.MetaBall, ptr %975, i64 0, i32 18
  %979 = load ptr, ptr %978, align 8, !tbaa !143
  %980 = icmp eq ptr %979, null
  br i1 %980, label %1007, label %981

981:                                              ; preds = %977
  %982 = getelementptr inbounds %struct.MetaElem, ptr %979, i64 0, i32 10
  call void @quat_to_mat3(ptr noundef nonnull %21, ptr noundef nonnull %982) #9
  %983 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 2
  %984 = load float, ptr %983, align 8, !tbaa !44
  %985 = load float, ptr %1, align 4, !tbaa !44
  %986 = fadd float %984, %985
  store float %986, ptr %1, align 4, !tbaa !44
  %987 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 2, i64 1
  %988 = load float, ptr %987, align 4, !tbaa !44
  %989 = load float, ptr %36, align 4, !tbaa !44
  %990 = fadd float %988, %989
  store float %990, ptr %36, align 4, !tbaa !44
  %991 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 2, i64 2
  %992 = load float, ptr %991, align 16, !tbaa !44
  %993 = load float, ptr %37, align 4, !tbaa !44
  %994 = fadd float %992, %993
  store float %994, ptr %37, align 4, !tbaa !44
  %995 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1
  %996 = load float, ptr %995, align 4, !tbaa !44
  %997 = load float, ptr %2, align 4, !tbaa !44
  %998 = fadd float %996, %997
  store float %998, ptr %2, align 4, !tbaa !44
  %999 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1, i64 1
  %1000 = load float, ptr %999, align 16, !tbaa !44
  %1001 = load float, ptr %38, align 4, !tbaa !44
  %1002 = fadd float %1000, %1001
  store float %1002, ptr %38, align 4, !tbaa !44
  %1003 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1, i64 2
  %1004 = load float, ptr %1003, align 4, !tbaa !44
  %1005 = load float, ptr %39, align 4, !tbaa !44
  %1006 = fadd float %1004, %1005
  store float %1006, ptr %39, align 4, !tbaa !44
  br label %1052

1007:                                             ; preds = %977, %973
  %1008 = getelementptr inbounds %struct.MetaBall, ptr %975, i64 0, i32 4
  %1009 = load ptr, ptr %1008, align 8, !tbaa !145
  %1010 = load ptr, ptr %1009, align 8, !tbaa !59
  %1011 = icmp eq ptr %1010, null
  br i1 %1011, label %1062, label %1012

1012:                                             ; preds = %1007
  %1013 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 2
  %1014 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 2, i64 1
  %1015 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 2, i64 2
  %1016 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1
  %1017 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1, i64 1
  %1018 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1, i64 2
  br label %1019

1019:                                             ; preds = %1012, %1046
  %1020 = phi ptr [ %1010, %1012 ], [ %1048, %1046 ]
  %1021 = phi i8 [ 0, %1012 ], [ %1047, %1046 ]
  %1022 = getelementptr inbounds %struct.MetaElem, ptr %1020, i64 0, i32 4
  %1023 = load i16, ptr %1022, align 2, !tbaa !146
  %1024 = and i16 %1023, 1
  %1025 = icmp eq i16 %1024, 0
  br i1 %1025, label %1046, label %1026

1026:                                             ; preds = %1019
  %1027 = getelementptr inbounds %struct.MetaElem, ptr %1020, i64 0, i32 10
  call void @quat_to_mat3(ptr noundef nonnull %21, ptr noundef nonnull %1027) #9
  %1028 = load float, ptr %1013, align 8, !tbaa !44
  %1029 = load float, ptr %1, align 4, !tbaa !44
  %1030 = fadd float %1028, %1029
  store float %1030, ptr %1, align 4, !tbaa !44
  %1031 = load float, ptr %1014, align 4, !tbaa !44
  %1032 = load float, ptr %36, align 4, !tbaa !44
  %1033 = fadd float %1031, %1032
  store float %1033, ptr %36, align 4, !tbaa !44
  %1034 = load float, ptr %1015, align 16, !tbaa !44
  %1035 = load float, ptr %37, align 4, !tbaa !44
  %1036 = fadd float %1034, %1035
  store float %1036, ptr %37, align 4, !tbaa !44
  %1037 = load float, ptr %1016, align 4, !tbaa !44
  %1038 = load float, ptr %2, align 4, !tbaa !44
  %1039 = fadd float %1037, %1038
  store float %1039, ptr %2, align 4, !tbaa !44
  %1040 = load float, ptr %1017, align 16, !tbaa !44
  %1041 = load float, ptr %38, align 4, !tbaa !44
  %1042 = fadd float %1040, %1041
  store float %1042, ptr %38, align 4, !tbaa !44
  %1043 = load float, ptr %1018, align 4, !tbaa !44
  %1044 = load float, ptr %39, align 4, !tbaa !44
  %1045 = fadd float %1043, %1044
  store float %1045, ptr %39, align 4, !tbaa !44
  br label %1046

1046:                                             ; preds = %1019, %1026
  %1047 = phi i8 [ 1, %1026 ], [ %1021, %1019 ]
  %1048 = load ptr, ptr %1020, align 8, !tbaa !59
  %1049 = icmp eq ptr %1048, null
  br i1 %1049, label %1050, label %1019, !llvm.loop !148

1050:                                             ; preds = %1046
  %1051 = icmp eq i8 %1047, 0
  br i1 %1051, label %1062, label %1052

1052:                                             ; preds = %981, %1050
  %1053 = load float, ptr %2, align 4, !tbaa !44
  %1054 = fcmp oeq float %1053, 0.000000e+00
  br i1 %1054, label %1055, label %1062

1055:                                             ; preds = %1052
  %1056 = load float, ptr %38, align 4, !tbaa !44
  %1057 = fcmp oeq float %1056, 0.000000e+00
  br i1 %1057, label %1058, label %1062

1058:                                             ; preds = %1055
  %1059 = load float, ptr %39, align 4, !tbaa !44
  %1060 = fcmp une float %1059, 0.000000e+00
  %1061 = select i1 %1060, i32 4, i32 0
  br label %1062

1062:                                             ; preds = %1007, %1058, %1055, %1052, %1050
  %1063 = phi i32 [ 0, %1050 ], [ 4, %1055 ], [ 4, %1052 ], [ %1061, %1058 ], [ 0, %1007 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %21) #9
  br label %1160

1064:                                             ; preds = %41
  %1065 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 19
  %1066 = load ptr, ptr %1065, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %22) #9
  %1067 = icmp eq i8 %3, 0
  br i1 %1067, label %1097, label %1068

1068:                                             ; preds = %1064
  %1069 = getelementptr inbounds %struct.bArmature, ptr %1066, i64 0, i32 6
  %1070 = load ptr, ptr %1069, align 8, !tbaa !149
  %1071 = icmp eq ptr %1070, null
  br i1 %1071, label %1097, label %1072

1072:                                             ; preds = %1068
  call void @ED_armature_ebone_to_mat3(ptr noundef nonnull %1070, ptr noundef nonnull %22) #9
  %1073 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 2
  %1074 = load float, ptr %1073, align 8, !tbaa !44
  %1075 = load float, ptr %1, align 4, !tbaa !44
  %1076 = fadd float %1074, %1075
  store float %1076, ptr %1, align 4, !tbaa !44
  %1077 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 2, i64 1
  %1078 = load float, ptr %1077, align 4, !tbaa !44
  %1079 = load float, ptr %36, align 4, !tbaa !44
  %1080 = fadd float %1078, %1079
  store float %1080, ptr %36, align 4, !tbaa !44
  %1081 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 2, i64 2
  %1082 = load float, ptr %1081, align 16, !tbaa !44
  %1083 = load float, ptr %37, align 4, !tbaa !44
  %1084 = fadd float %1082, %1083
  store float %1084, ptr %37, align 4, !tbaa !44
  %1085 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 1
  %1086 = load float, ptr %1085, align 4, !tbaa !44
  %1087 = load float, ptr %2, align 4, !tbaa !44
  %1088 = fadd float %1086, %1087
  store float %1088, ptr %2, align 4, !tbaa !44
  %1089 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 1, i64 1
  %1090 = load float, ptr %1089, align 16, !tbaa !44
  %1091 = load float, ptr %38, align 4, !tbaa !44
  %1092 = fadd float %1090, %1091
  store float %1092, ptr %38, align 4, !tbaa !44
  %1093 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 1, i64 2
  %1094 = load float, ptr %1093, align 4, !tbaa !44
  %1095 = load float, ptr %39, align 4, !tbaa !44
  %1096 = fadd float %1094, %1095
  store float %1096, ptr %39, align 4, !tbaa !44
  br label %1148

1097:                                             ; preds = %1068, %1064
  %1098 = getelementptr inbounds %struct.bArmature, ptr %1066, i64 0, i32 4
  %1099 = load ptr, ptr %1098, align 8, !tbaa !151
  %1100 = load ptr, ptr %1099, align 8, !tbaa !59
  %1101 = icmp eq ptr %1100, null
  br i1 %1101, label %1158, label %1102

1102:                                             ; preds = %1097
  %1103 = getelementptr inbounds %struct.bArmature, ptr %1066, i64 0, i32 15
  %1104 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 2
  %1105 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 2, i64 1
  %1106 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 2, i64 2
  %1107 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 1
  %1108 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 1, i64 1
  %1109 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 1, i64 2
  br label %1110

1110:                                             ; preds = %1102, %1142
  %1111 = phi ptr [ %1100, %1102 ], [ %1144, %1142 ]
  %1112 = phi i8 [ 0, %1102 ], [ %1143, %1142 ]
  %1113 = load i32, ptr %1103, align 8, !tbaa !152
  %1114 = getelementptr inbounds %struct.EditBone, ptr %1111, i64 0, i32 10
  %1115 = load i32, ptr %1114, align 8, !tbaa !153
  %1116 = and i32 %1115, %1113
  %1117 = icmp eq i32 %1116, 0
  br i1 %1117, label %1142, label %1118

1118:                                             ; preds = %1110
  %1119 = getelementptr inbounds %struct.EditBone, ptr %1111, i64 0, i32 9
  %1120 = load i32, ptr %1119, align 4, !tbaa !155
  %1121 = and i32 %1120, 1
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %1142, label %1123

1123:                                             ; preds = %1118
  call void @ED_armature_ebone_to_mat3(ptr noundef nonnull %1111, ptr noundef nonnull %22) #9
  %1124 = load float, ptr %1104, align 8, !tbaa !44
  %1125 = load float, ptr %1, align 4, !tbaa !44
  %1126 = fadd float %1124, %1125
  store float %1126, ptr %1, align 4, !tbaa !44
  %1127 = load float, ptr %1105, align 4, !tbaa !44
  %1128 = load float, ptr %36, align 4, !tbaa !44
  %1129 = fadd float %1127, %1128
  store float %1129, ptr %36, align 4, !tbaa !44
  %1130 = load float, ptr %1106, align 16, !tbaa !44
  %1131 = load float, ptr %37, align 4, !tbaa !44
  %1132 = fadd float %1130, %1131
  store float %1132, ptr %37, align 4, !tbaa !44
  %1133 = load float, ptr %1107, align 4, !tbaa !44
  %1134 = load float, ptr %2, align 4, !tbaa !44
  %1135 = fadd float %1133, %1134
  store float %1135, ptr %2, align 4, !tbaa !44
  %1136 = load float, ptr %1108, align 16, !tbaa !44
  %1137 = load float, ptr %38, align 4, !tbaa !44
  %1138 = fadd float %1136, %1137
  store float %1138, ptr %38, align 4, !tbaa !44
  %1139 = load float, ptr %1109, align 4, !tbaa !44
  %1140 = load float, ptr %39, align 4, !tbaa !44
  %1141 = fadd float %1139, %1140
  store float %1141, ptr %39, align 4, !tbaa !44
  br label %1142

1142:                                             ; preds = %1110, %1123, %1118
  %1143 = phi i8 [ 1, %1123 ], [ %1112, %1118 ], [ %1112, %1110 ]
  %1144 = load ptr, ptr %1111, align 8, !tbaa !59
  %1145 = icmp eq ptr %1144, null
  br i1 %1145, label %1146, label %1110, !llvm.loop !156

1146:                                             ; preds = %1142
  %1147 = icmp eq i8 %1143, 0
  br i1 %1147, label %1158, label %1148

1148:                                             ; preds = %1072, %1146
  %1149 = load float, ptr %2, align 4, !tbaa !44
  %1150 = fcmp oeq float %1149, 0.000000e+00
  br i1 %1150, label %1151, label %1158

1151:                                             ; preds = %1148
  %1152 = load float, ptr %38, align 4, !tbaa !44
  %1153 = fcmp oeq float %1152, 0.000000e+00
  br i1 %1153, label %1154, label %1158

1154:                                             ; preds = %1151
  %1155 = load float, ptr %39, align 4, !tbaa !44
  %1156 = fcmp une float %1155, 0.000000e+00
  %1157 = select i1 %1156, i32 3, i32 0
  br label %1158

1158:                                             ; preds = %1097, %1154, %1151, %1148, %1146
  %1159 = phi i32 [ 0, %1146 ], [ 3, %1151 ], [ 3, %1148 ], [ %1157, %1154 ], [ 0, %1097 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %22) #9
  br label %1160

1160:                                             ; preds = %41, %971, %1158, %1062, %752
  %1161 = phi i32 [ %753, %752 ], [ %972, %971 ], [ %1063, %1062 ], [ %1159, %1158 ], [ 0, %41 ]
  %1162 = icmp eq i32 %1161, 3
  br i1 %1162, label %1163, label %1165

1163:                                             ; preds = %1160
  %1164 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 47
  call void @mul_mat3_m4_v3(ptr noundef nonnull %1164, ptr noundef %1) #9
  call void @mul_mat3_m4_v3(ptr noundef nonnull %1164, ptr noundef %2) #9
  br label %1166

1165:                                             ; preds = %1160
  call void @mul_m3_v3(ptr noundef nonnull %10, ptr noundef %1) #9
  call void @mul_m3_v3(ptr noundef nonnull %10, ptr noundef %2) #9
  br label %1166

1166:                                             ; preds = %1165, %1163
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #9
  br label %1321

1167:                                             ; preds = %34
  %1168 = icmp eq ptr %35, null
  br i1 %1168, label %1261, label %1169

1169:                                             ; preds = %1167
  %1170 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 27
  %1171 = load i32, ptr %1170, align 8, !tbaa !56
  %1172 = and i32 %1171, 64
  %1173 = icmp eq i32 %1172, 0
  br i1 %1173, label %1258, label %1174

1174:                                             ; preds = %1169
  %1175 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 19
  %1176 = load ptr, ptr %1175, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %23) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %24) #9
  %1177 = icmp eq i8 %3, 0
  br i1 %1177, label %1206, label %1178

1178:                                             ; preds = %1174
  %1179 = tail call ptr @BKE_pose_channel_active(ptr noundef nonnull %35) #9
  %1180 = icmp eq ptr %1179, null
  br i1 %1180, label %1206, label %1181

1181:                                             ; preds = %1178
  %1182 = getelementptr inbounds %struct.bPoseChannel, ptr %1179, i64 0, i32 29, i64 2
  %1183 = load float, ptr %1182, align 4, !tbaa !44
  %1184 = load float, ptr %1, align 4, !tbaa !44
  %1185 = fadd float %1183, %1184
  store float %1185, ptr %1, align 4, !tbaa !44
  %1186 = getelementptr inbounds %struct.bPoseChannel, ptr %1179, i64 0, i32 29, i64 2, i64 1
  %1187 = load float, ptr %1186, align 4, !tbaa !44
  %1188 = load float, ptr %36, align 4, !tbaa !44
  %1189 = fadd float %1187, %1188
  store float %1189, ptr %36, align 4, !tbaa !44
  %1190 = getelementptr inbounds %struct.bPoseChannel, ptr %1179, i64 0, i32 29, i64 2, i64 2
  %1191 = load float, ptr %1190, align 4, !tbaa !44
  %1192 = load float, ptr %37, align 4, !tbaa !44
  %1193 = fadd float %1191, %1192
  store float %1193, ptr %37, align 4, !tbaa !44
  %1194 = getelementptr inbounds %struct.bPoseChannel, ptr %1179, i64 0, i32 29, i64 1
  %1195 = load float, ptr %1194, align 4, !tbaa !44
  %1196 = load float, ptr %2, align 4, !tbaa !44
  %1197 = fadd float %1195, %1196
  store float %1197, ptr %2, align 4, !tbaa !44
  %1198 = getelementptr inbounds %struct.bPoseChannel, ptr %1179, i64 0, i32 29, i64 1, i64 1
  %1199 = load float, ptr %1198, align 4, !tbaa !44
  %1200 = load float, ptr %38, align 4, !tbaa !44
  %1201 = fadd float %1199, %1200
  store float %1201, ptr %38, align 4, !tbaa !44
  %1202 = getelementptr inbounds %struct.bPoseChannel, ptr %1179, i64 0, i32 29, i64 1, i64 2
  %1203 = load float, ptr %1202, align 4, !tbaa !44
  %1204 = load float, ptr %39, align 4, !tbaa !44
  %1205 = fadd float %1203, %1204
  store float %1205, ptr %39, align 4, !tbaa !44
  br label %1253

1206:                                             ; preds = %1178, %1174
  %1207 = getelementptr inbounds %struct.bArmature, ptr %1176, i64 0, i32 2
  %1208 = tail call fastcc i32 @count_bone_select(ptr noundef %1176, ptr noundef nonnull %1207, i8 noundef zeroext 1)
  %1209 = icmp eq i32 %1208, 0
  br i1 %1209, label %1256, label %1210

1210:                                             ; preds = %1206
  %1211 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 18
  %1212 = load ptr, ptr %1211, align 8, !tbaa !157
  %1213 = load ptr, ptr %1212, align 8, !tbaa !59
  %1214 = icmp eq ptr %1213, null
  br i1 %1214, label %1253, label %1215

1215:                                             ; preds = %1210, %1250
  %1216 = phi ptr [ %1251, %1250 ], [ %1213, %1210 ]
  %1217 = getelementptr inbounds %struct.bPoseChannel, ptr %1216, i64 0, i32 12
  %1218 = load ptr, ptr %1217, align 8, !tbaa !158
  %1219 = icmp eq ptr %1218, null
  br i1 %1219, label %1250, label %1220

1220:                                             ; preds = %1215
  %1221 = getelementptr inbounds %struct.Bone, ptr %1218, i64 0, i32 10
  %1222 = load i32, ptr %1221, align 8, !tbaa !160
  %1223 = and i32 %1222, 8
  %1224 = icmp eq i32 %1223, 0
  br i1 %1224, label %1250, label %1225

1225:                                             ; preds = %1220
  %1226 = getelementptr inbounds %struct.bPoseChannel, ptr %1216, i64 0, i32 29, i64 2
  %1227 = load float, ptr %1226, align 4, !tbaa !44
  %1228 = load float, ptr %1, align 4, !tbaa !44
  %1229 = fadd float %1227, %1228
  store float %1229, ptr %1, align 4, !tbaa !44
  %1230 = getelementptr inbounds %struct.bPoseChannel, ptr %1216, i64 0, i32 29, i64 2, i64 1
  %1231 = load float, ptr %1230, align 4, !tbaa !44
  %1232 = load float, ptr %36, align 4, !tbaa !44
  %1233 = fadd float %1231, %1232
  store float %1233, ptr %36, align 4, !tbaa !44
  %1234 = getelementptr inbounds %struct.bPoseChannel, ptr %1216, i64 0, i32 29, i64 2, i64 2
  %1235 = load float, ptr %1234, align 4, !tbaa !44
  %1236 = load float, ptr %37, align 4, !tbaa !44
  %1237 = fadd float %1235, %1236
  store float %1237, ptr %37, align 4, !tbaa !44
  %1238 = getelementptr inbounds %struct.bPoseChannel, ptr %1216, i64 0, i32 29, i64 1
  %1239 = load float, ptr %1238, align 4, !tbaa !44
  %1240 = load float, ptr %2, align 4, !tbaa !44
  %1241 = fadd float %1239, %1240
  store float %1241, ptr %2, align 4, !tbaa !44
  %1242 = getelementptr inbounds %struct.bPoseChannel, ptr %1216, i64 0, i32 29, i64 1, i64 1
  %1243 = load float, ptr %1242, align 4, !tbaa !44
  %1244 = load float, ptr %38, align 4, !tbaa !44
  %1245 = fadd float %1243, %1244
  store float %1245, ptr %38, align 4, !tbaa !44
  %1246 = getelementptr inbounds %struct.bPoseChannel, ptr %1216, i64 0, i32 29, i64 1, i64 2
  %1247 = load float, ptr %1246, align 4, !tbaa !44
  %1248 = load float, ptr %39, align 4, !tbaa !44
  %1249 = fadd float %1247, %1248
  store float %1249, ptr %39, align 4, !tbaa !44
  br label %1250

1250:                                             ; preds = %1215, %1220, %1225
  %1251 = load ptr, ptr %1216, align 8, !tbaa !59
  %1252 = icmp eq ptr %1251, null
  br i1 %1252, label %1253, label %1215, !llvm.loop !162

1253:                                             ; preds = %1250, %1210, %1181
  %1254 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %23, ptr noundef nonnull %1254) #9
  %1255 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %24, ptr noundef nonnull %23) #9
  call void @transpose_m3(ptr noundef nonnull %24) #9
  call void @mul_m3_v3(ptr noundef nonnull %24, ptr noundef %1) #9
  call void @mul_m3_v3(ptr noundef nonnull %24, ptr noundef %2) #9
  br label %1256

1256:                                             ; preds = %1206, %1253
  %1257 = phi i32 [ 3, %1253 ], [ 0, %1206 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %24) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %23) #9
  br label %1321

1258:                                             ; preds = %1169
  %1259 = and i32 %1171, 62
  %1260 = icmp eq i32 %1259, 0
  br i1 %1260, label %1261, label %1321

1261:                                             ; preds = %1167, %1258
  br i1 %30, label %1265, label %1262

1262:                                             ; preds = %1261
  %1263 = getelementptr inbounds %struct.Base, ptr %29, i64 0, i32 7
  %1264 = load ptr, ptr %1263, align 8, !tbaa !57
  br label %1265

1265:                                             ; preds = %1261, %1262
  %1266 = phi ptr [ %1264, %1262 ], [ null, %1261 ]
  %1267 = icmp eq ptr %1266, null
  br i1 %1267, label %1273, label %1268

1268:                                             ; preds = %1265
  %1269 = getelementptr inbounds %struct.Object, ptr %1266, i64 0, i32 53
  %1270 = load i16, ptr %1269, align 4, !tbaa !163
  %1271 = and i16 %1270, 1
  %1272 = icmp eq i16 %1271, 0
  br i1 %1272, label %1273, label %1305

1273:                                             ; preds = %1268, %1265
  %1274 = getelementptr inbounds %struct.Scene, ptr %25, i64 0, i32 5
  %1275 = load ptr, ptr %1274, align 8, !tbaa !59
  %1276 = icmp eq ptr %1275, null
  br i1 %1276, label %1305, label %1277

1277:                                             ; preds = %1273
  %1278 = getelementptr inbounds %struct.View3D, ptr %26, i64 0, i32 22
  br label %1279

1279:                                             ; preds = %1277, %1302
  %1280 = phi ptr [ %1275, %1277 ], [ %1303, %1302 ]
  %1281 = getelementptr inbounds %struct.Base, ptr %1280, i64 0, i32 4
  %1282 = load i32, ptr %1281, align 8, !tbaa !164
  %1283 = and i32 %1282, 1
  %1284 = icmp eq i32 %1283, 0
  br i1 %1284, label %1302, label %1285

1285:                                             ; preds = %1279
  %1286 = getelementptr inbounds %struct.Base, ptr %1280, i64 0, i32 2
  %1287 = load i32, ptr %1286, align 8, !tbaa !165
  %1288 = load i32, ptr %1278, align 8, !tbaa !166
  %1289 = and i32 %1288, %1287
  %1290 = icmp eq i32 %1289, 0
  br i1 %1290, label %1302, label %1291

1291:                                             ; preds = %1285
  %1292 = getelementptr inbounds %struct.Base, ptr %1280, i64 0, i32 7
  %1293 = load ptr, ptr %1292, align 8, !tbaa !57
  %1294 = getelementptr inbounds %struct.ID, ptr %1293, i64 0, i32 3
  %1295 = load ptr, ptr %1294, align 8, !tbaa !167
  %1296 = icmp eq ptr %1295, null
  br i1 %1296, label %1297, label %1302

1297:                                             ; preds = %1291
  %1298 = getelementptr inbounds %struct.Object, ptr %1293, i64 0, i32 102
  %1299 = load i8, ptr %1298, align 8, !tbaa !168
  %1300 = and i8 %1299, 1
  %1301 = icmp eq i8 %1300, 0
  br i1 %1301, label %1305, label %1302

1302:                                             ; preds = %1279, %1285, %1291, %1297
  %1303 = load ptr, ptr %1280, align 8, !tbaa !59
  %1304 = icmp eq ptr %1303, null
  br i1 %1304, label %1305, label %1279, !llvm.loop !169

1305:                                             ; preds = %1302, %1297, %1273, %1268
  %1306 = phi ptr [ %1266, %1268 ], [ null, %1273 ], [ %1293, %1297 ], [ null, %1302 ]
  %1307 = icmp eq ptr %1306, null
  br i1 %1307, label %1321, label %1308

1308:                                             ; preds = %1305
  %1309 = getelementptr inbounds %struct.Object, ptr %1306, i64 0, i32 47, i64 2
  %1310 = load float, ptr %1309, align 4, !tbaa !44
  store float %1310, ptr %1, align 4, !tbaa !44
  %1311 = getelementptr inbounds %struct.Object, ptr %1306, i64 0, i32 47, i64 2, i64 1
  %1312 = load float, ptr %1311, align 4, !tbaa !44
  store float %1312, ptr %36, align 4, !tbaa !44
  %1313 = getelementptr inbounds %struct.Object, ptr %1306, i64 0, i32 47, i64 2, i64 2
  %1314 = load float, ptr %1313, align 4, !tbaa !44
  store float %1314, ptr %37, align 4, !tbaa !44
  %1315 = getelementptr inbounds %struct.Object, ptr %1306, i64 0, i32 47, i64 1
  %1316 = load float, ptr %1315, align 4, !tbaa !44
  store float %1316, ptr %2, align 4, !tbaa !44
  %1317 = getelementptr inbounds %struct.Object, ptr %1306, i64 0, i32 47, i64 1, i64 1
  %1318 = load float, ptr %1317, align 4, !tbaa !44
  store float %1318, ptr %38, align 4, !tbaa !44
  %1319 = getelementptr inbounds %struct.Object, ptr %1306, i64 0, i32 47, i64 1, i64 2
  %1320 = load float, ptr %1319, align 4, !tbaa !44
  store float %1320, ptr %39, align 4, !tbaa !44
  br label %1321

1321:                                             ; preds = %1305, %1308, %1256, %1258, %1166
  %1322 = phi i32 [ %1161, %1166 ], [ %1257, %1256 ], [ 0, %1258 ], [ 1, %1308 ], [ 1, %1305 ]
  ret i32 %1322
}

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @transpose_m3(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare zeroext i8 @BM_select_history_active_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_editselection_normal(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_editselection_plane(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_face_calc_plane(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BM_edge_calc_length_squared(ptr noundef) local_unnamed_addr #2

declare void @BM_edge_ordered_verts(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_vert_tri_calc_plane(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_mesh_active_vert_get(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_vert_is_edge_pair(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_curve_editNurbs_get(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_curve_nurb_vert_active_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_nurb_bezt_calc_normal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_nurb_bezt_calc_plane(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @quat_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_armature_ebone_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_pose_channel_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @count_bone_select(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #5 {
  %4 = load ptr, ptr %1, align 8, !tbaa !59
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %3
  %7 = icmp eq i8 %2, 0
  %8 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 15
  br label %9

9:                                                ; preds = %6, %27
  %10 = phi ptr [ %4, %6 ], [ %33, %27 ]
  %11 = phi i32 [ 0, %6 ], [ %32, %27 ]
  %12 = getelementptr inbounds %struct.Bone, ptr %10, i64 0, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !160
  %14 = and i32 %13, -9
  store i32 %14, ptr %12, align 8, !tbaa !160
  br i1 %7, label %27, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.Bone, ptr %10, i64 0, i32 25
  %17 = load i32, ptr %16, align 8, !tbaa !170
  %18 = load i32, ptr %8, align 8, !tbaa !152
  %19 = and i32 %18, %17
  %20 = icmp eq i32 %19, 0
  %21 = and i32 %13, 1
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = or i32 %13, 8
  store i32 %25, ptr %12, align 8, !tbaa !160
  %26 = add nsw i32 %11, 1
  br label %27

27:                                               ; preds = %15, %24, %9
  %28 = phi i8 [ 0, %24 ], [ 1, %15 ], [ 0, %9 ]
  %29 = phi i32 [ %26, %24 ], [ %11, %15 ], [ %11, %9 ]
  %30 = getelementptr inbounds %struct.Bone, ptr %10, i64 0, i32 4
  %31 = tail call fastcc i32 @count_bone_select(ptr noundef %0, ptr noundef nonnull %30, i8 noundef zeroext %28)
  %32 = add nsw i32 %31, %29
  %33 = load ptr, ptr %10, align 8, !tbaa !59
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %9, !llvm.loop !171

35:                                               ; preds = %27, %3
  %36 = phi i32 [ 0, %3 ], [ %32, %27 ]
  ret i32 %36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

declare void @BKE_reports_prepend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_base(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_uniquename_cb(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @uniqueOrientationNameCheck(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @BLI_findstring(ptr noundef %0, ptr noundef %1, i32 noundef 16) #9
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

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
!34 = !{!35, !37, i64 292}
!35 = !{!"View3D", !36, i64 0, !36, i64 8, !39, i64 16, !40, i64 32, !41, i64 36, !37, i64 40, !37, i64 56, !41, i64 72, !41, i64 76, !37, i64 80, !37, i64 81, !40, i64 84, !40, i64 88, !42, i64 92, !42, i64 94, !36, i64 96, !36, i64 104, !43, i64 112, !39, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !40, i64 224, !40, i64 228, !42, i64 232, !42, i64 234, !42, i64 236, !42, i64 238, !42, i64 240, !42, i64 242, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !37, i64 260, !37, i64 272, !42, i64 284, !42, i64 286, !42, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !39, i64 296, !39, i64 312, !39, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"int", !37, i64 0}
!41 = !{!"float", !37, i64 0}
!42 = !{!"short", !37, i64 0}
!43 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!44 = !{!41, !41, i64 0}
!45 = !{!37, !37, i64 0}
!46 = !{!47, !37, i64 809}
!47 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !37, i64 696, !37, i64 760, !41, i64 776, !41, i64 780, !41, i64 784, !41, i64 788, !37, i64 792, !41, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !42, i64 824, !42, i64 826, !37, i64 828, !42, i64 844, !42, i64 846, !41, i64 848, !37, i64 852, !41, i64 864, !37, i64 868}
!48 = !{!35, !36, i64 96}
!49 = !{!50, !42, i64 136}
!50 = !{!"Object", !51, i64 0, !36, i64 120, !36, i64 128, !42, i64 136, !42, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !52, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !40, i64 432, !40, i64 436, !36, i64 440, !36, i64 448, !40, i64 456, !40, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !41, i64 616, !41, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !40, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !37, i64 966, !37, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !37, i64 1042, !37, i64 1043, !42, i64 1044, !37, i64 1046, !37, i64 1047, !41, i64 1048, !41, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !41, i64 1120, !42, i64 1124, !42, i64 1126, !37, i64 1128, !40, i64 1144, !40, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !42, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !42, i64 1266, !41, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !53, i64 1304, !53, i64 1312, !40, i64 1320, !40, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!51 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !42, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!52 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!53 = !{!"long", !37, i64 0}
!54 = !{i32 0, i32 5}
!55 = !{i8 0, i8 2}
!56 = !{!50, !40, i64 432}
!57 = !{!58, !36, i64 32}
!58 = !{!"Base", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !42, i64 28, !42, i64 30, !36, i64 32}
!59 = !{!36, !36, i64 0}
!60 = !{!61, !42, i64 1154}
!61 = !{!"TransInfo", !40, i64 0, !40, i64 4, !40, i64 8, !42, i64 12, !40, i64 16, !41, i64 20, !41, i64 24, !36, i64 32, !36, i64 40, !40, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !62, i64 80, !63, i64 296, !65, i64 440, !66, i64 584, !40, i64 640, !41, i64 644, !37, i64 648, !37, i64 668, !37, i64 680, !37, i64 688, !42, i64 696, !42, i64 698, !37, i64 700, !37, i64 712, !37, i64 716, !37, i64 780, !37, i64 844, !37, i64 908, !42, i64 972, !42, i64 974, !37, i64 976, !37, i64 977, !37, i64 980, !37, i64 992, !37, i64 1028, !37, i64 1064, !36, i64 1128, !36, i64 1136, !36, i64 1144, !42, i64 1152, !42, i64 1154, !42, i64 1156, !42, i64 1158, !42, i64 1160, !37, i64 1164, !37, i64 1180, !37, i64 1196, !37, i64 1208, !37, i64 1220, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !37, i64 1296, !41, i64 1304, !36, i64 1312, !37, i64 1320, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384}
!62 = !{!"TransCon", !42, i64 0, !37, i64 2, !37, i64 52, !37, i64 88, !37, i64 124, !37, i64 160, !37, i64 172, !40, i64 180, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208}
!63 = !{!"TransSnap", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11, !42, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !37, i64 52, !37, i64 64, !39, i64 72, !36, i64 88, !41, i64 96, !64, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136}
!64 = !{!"double", !37, i64 0}
!65 = !{!"NumInput", !42, i64 0, !40, i64 4, !37, i64 8, !37, i64 20, !42, i64 22, !37, i64 24, !37, i64 32, !37, i64 44, !37, i64 56, !42, i64 68, !37, i64 70, !40, i64 136}
!66 = !{!"MouseInput", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 24, !37, i64 28, !37, i64 36, !41, i64 44, !36, i64 48}
!67 = !{!35, !42, i64 238}
!68 = !{!61, !36, i64 1248}
!69 = !{!70, !42, i64 214}
!70 = !{!"ARegion", !36, i64 0, !36, i64 8, !71, i64 16, !72, i64 176, !72, i64 192, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !42, i64 216, !42, i64 218, !41, i64 220, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !42, i64 232, !42, i64 234, !42, i64 236, !42, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!71 = !{!"View2D", !43, i64 0, !43, i64 16, !72, i64 32, !72, i64 48, !72, i64 64, !37, i64 80, !37, i64 88, !41, i64 96, !41, i64 100, !42, i64 104, !42, i64 106, !42, i64 108, !42, i64 110, !42, i64 112, !42, i64 114, !42, i64 116, !42, i64 118, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !36, i64 128, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!72 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!73 = !{!70, !36, i64 376}
!74 = !{!75, !36, i64 168}
!75 = !{!"Scene", !51, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !42, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !76, i64 280, !83, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !42, i64 4376, !42, i64 4378, !40, i64 4380, !39, i64 4384, !84, i64 4400, !85, i64 4416, !88, i64 4600, !36, i64 4608, !89, i64 4616, !36, i64 4640, !53, i64 4648, !53, i64 4656, !78, i64 4664, !79, i64 4824, !90, i64 4888, !36, i64 4952}
!76 = !{!"RenderData", !77, i64 0, !36, i64 248, !36, i64 256, !80, i64 264, !81, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !41, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !42, i64 432, !42, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !42, i64 456, !42, i64 458, !42, i64 460, !42, i64 462, !42, i64 464, !42, i64 466, !40, i64 468, !42, i64 472, !42, i64 474, !42, i64 476, !42, i64 478, !42, i64 480, !42, i64 482, !40, i64 484, !40, i64 488, !42, i64 492, !42, i64 494, !40, i64 496, !40, i64 500, !42, i64 504, !42, i64 506, !42, i64 508, !42, i64 510, !42, i64 512, !37, i64 514, !37, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !42, i64 528, !42, i64 530, !42, i64 532, !42, i64 534, !42, i64 536, !42, i64 538, !42, i64 540, !42, i64 542, !43, i64 544, !43, i64 560, !72, i64 576, !39, i64 592, !42, i64 608, !42, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !40, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !42, i64 648, !42, i64 650, !42, i64 652, !42, i64 654, !42, i64 656, !42, i64 658, !41, i64 660, !41, i64 664, !42, i64 668, !42, i64 670, !41, i64 672, !41, i64 676, !37, i64 680, !40, i64 1704, !42, i64 1708, !42, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !40, i64 2520, !42, i64 2524, !42, i64 2526, !41, i64 2528, !41, i64 2532, !42, i64 2536, !42, i64 2538, !41, i64 2540, !42, i64 2544, !42, i64 2546, !40, i64 2548, !42, i64 2552, !42, i64 2554, !42, i64 2556, !42, i64 2558, !41, i64 2560, !41, i64 2564, !36, i64 2568, !40, i64 2576, !41, i64 2580, !37, i64 2584, !82, i64 2616, !40, i64 3976, !40, i64 3980}
!77 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !42, i64 8, !42, i64 10, !41, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !78, i64 24, !79, i64 184}
!78 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 72, !41, i64 136, !41, i64 140, !36, i64 144, !36, i64 152}
!79 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!80 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !42, i64 48, !42, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!81 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !41, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64}
!82 = !{!"BakeData", !77, i64 0, !37, i64 248, !42, i64 1272, !42, i64 1274, !42, i64 1276, !42, i64 1278, !41, i64 1280, !41, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!83 = !{!"AudioData", !40, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !42, i64 20, !42, i64 22, !41, i64 24, !41, i64 28}
!84 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!85 = !{!"GameData", !84, i64 0, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !37, i64 34, !86, i64 40, !42, i64 64, !42, i64 66, !41, i64 68, !87, i64 72, !41, i64 128, !41, i64 132, !40, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!86 = !{!"GameDome", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !41, i64 8, !41, i64 12, !36, i64 16}
!87 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !40, i64 40, !41, i64 44, !41, i64 48, !42, i64 52, !42, i64 54}
!88 = !{!"UnitSettings", !41, i64 0, !37, i64 4, !37, i64 5, !42, i64 6}
!89 = !{!"PhysicsSettings", !37, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!90 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!91 = !{!92, !36, i64 0}
!92 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !40, i64 16, !36, i64 24, !40, i64 32, !36, i64 40, !36, i64 48, !53, i64 56, !36, i64 64, !40, i64 72, !36, i64 80, !40, i64 88, !42, i64 92, !42, i64 94, !36, i64 96, !40, i64 104}
!93 = !{!94, !37, i64 24}
!94 = !{!"BMEditSelection", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24}
!95 = !{!96, !40, i64 24}
!96 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !40, i64 128, !36, i64 136, !97, i64 144, !97, i64 344, !97, i64 544, !97, i64 744, !42, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !39, i64 960, !36, i64 976, !39, i64 984, !36, i64 1000}
!97 = !{!"CustomData", !36, i64 0, !37, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !36, i64 184, !36, i64 192}
!98 = !{!99, !37, i64 60}
!99 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !40, i64 56, !37, i64 60}
!100 = !{!99, !36, i64 40}
!101 = !{!99, !36, i64 48}
!102 = !{!96, !36, i64 56}
!103 = !{!104, !37, i64 13}
!104 = !{!"BMHeader", !36, i64 0, !40, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!105 = distinct !{!105, !106, !107}
!106 = !{!"llvm.loop.mustprogress"}
!107 = !{!"llvm.loop.unroll.disable"}
!108 = !{!96, !40, i64 16}
!109 = !{!39, !36, i64 0}
!110 = !{!94, !36, i64 16}
!111 = distinct !{!111, !106, !107}
!112 = !{!96, !36, i64 32}
!113 = distinct !{!113, !106, !107}
!114 = !{!96, !40, i64 20}
!115 = distinct !{!115, !106, !107}
!116 = !{!117, !36, i64 40}
!117 = !{!"BMEdge", !104, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !118, i64 48, !118, i64 64}
!118 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!119 = !{!120, !36, i64 40}
!120 = !{!"BMLoop", !104, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!121 = !{!117, !36, i64 24}
!122 = !{!117, !36, i64 32}
!123 = !{!96, !36, i64 40}
!124 = !{!120, !36, i64 16}
!125 = !{!126, !36, i64 48}
!126 = !{!"BMVert", !104, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!127 = !{!117, !36, i64 48}
!128 = distinct !{!128, !106, !107}
!129 = !{!50, !36, i64 296}
!130 = !{!131, !42, i64 16}
!131 = !{!"Nurb", !36, i64 0, !36, i64 8, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !40, i64 24, !40, i64 28, !37, i64 32, !42, i64 36, !42, i64 38, !42, i64 40, !42, i64 42, !42, i64 44, !42, i64 46, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !42, i64 80, !42, i64 82, !40, i64 84}
!132 = !{!133, !42, i64 248}
!133 = !{!"Curve", !51, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !42, i64 244, !42, i64 246, !42, i64 248, !42, i64 250, !41, i64 252, !41, i64 256, !40, i64 260, !42, i64 264, !42, i64 266, !40, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !42, i64 284, !42, i64 286, !42, i64 288, !42, i64 290, !40, i64 292, !40, i64 296, !37, i64 300, !42, i64 304, !37, i64 306, !37, i64 307, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !41, i64 340, !41, i64 344, !40, i64 348, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !40, i64 488, !40, i64 492, !36, i64 496, !134, i64 504, !41, i64 512, !41, i64 516, !41, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!134 = !{!"CharInfo", !42, i64 0, !42, i64 2, !37, i64 4, !37, i64 5, !42, i64 6}
!135 = !{!131, !36, i64 72}
!136 = !{!131, !40, i64 24}
!137 = !{!138, !37, i64 51}
!138 = !{!"BezTriple", !37, i64 0, !41, i64 36, !41, i64 40, !41, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !41, i64 56, !41, i64 60, !41, i64 64, !37, i64 68}
!139 = !{!138, !37, i64 52}
!140 = !{!138, !37, i64 53}
!141 = distinct !{!141, !106, !107}
!142 = distinct !{!142, !106, !107}
!143 = !{!144, !36, i64 240}
!144 = !{!"MetaBall", !51, i64 0, !36, i64 120, !39, i64 128, !39, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 185, !42, i64 186, !42, i64 188, !42, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !41, i64 228, !41, i64 232, !41, i64 236, !36, i64 240}
!145 = !{!144, !36, i64 160}
!146 = !{!147, !42, i64 26}
!147 = !{!"MetaElem", !36, i64 0, !36, i64 8, !36, i64 16, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !37, i64 44, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !36, i64 88, !36, i64 96}
!148 = distinct !{!148, !106, !107}
!149 = !{!150, !36, i64 176}
!150 = !{!"bArmature", !51, i64 0, !36, i64 120, !39, i64 128, !39, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !42, i64 208, !42, i64 210, !40, i64 212, !40, i64 216, !40, i64 220, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252}
!151 = !{!150, !36, i64 160}
!152 = !{!150, !40, i64 216}
!153 = !{!154, !40, i64 136}
!154 = !{!"EditBone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !41, i64 104, !37, i64 108, !37, i64 120, !40, i64 132, !40, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !42, i64 180}
!155 = !{!154, !40, i64 132}
!156 = distinct !{!156, !106, !107}
!157 = !{!50, !36, i64 288}
!158 = !{!159, !36, i64 120}
!159 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !37, i64 40, !42, i64 104, !42, i64 106, !42, i64 108, !42, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !39, i64 144, !39, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !41, i64 264, !42, i64 268, !42, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !41, i64 524, !41, i64 528, !41, i64 532, !36, i64 536}
!160 = !{!161, !40, i64 176}
!161 = !{!"Bone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !37, i64 48, !41, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !40, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !37, i64 308, !40, i64 320, !42, i64 324, !37, i64 326}
!162 = distinct !{!162, !106, !107}
!163 = !{!50, !42, i64 948}
!164 = !{!58, !40, i64 24}
!165 = !{!58, !40, i64 16}
!166 = !{!35, !40, i64 224}
!167 = !{!50, !36, i64 24}
!168 = !{!50, !37, i64 1160}
!169 = distinct !{!169, !106, !107}
!170 = !{!161, !40, i64 320}
!171 = distinct !{!171, !106, !107}
