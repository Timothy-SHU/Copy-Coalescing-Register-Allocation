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
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
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
%struct.BMEditSelection = type { ptr, ptr, ptr, i8 }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
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

@__const.createSpaceNormal.tangent = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 4
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BIF_clearTransformOrientation(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #15
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 25
  tail call void @BLI_freelistN(ptr noundef nonnull %4) #15
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

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @createSpaceNormal(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) @__const.createSpaceNormal.tangent, i64 12, i1 false)
  %4 = getelementptr inbounds [3 x float], ptr %0, i64 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %1) #17
  %5 = tail call fastcc float @normalize_v3(ptr noundef nonnull %4) #17
  %6 = fcmp oeq float %5, 0.000000e+00
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  call fastcc void @cross_v3_v3v3(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %3) #17
  %8 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef %0) #17, !range !44
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0.000000e+00, ptr %11, align 8, !tbaa !45
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %3, align 8, !tbaa !45
  call fastcc void @cross_v3_v3v3(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  br label %12

12:                                               ; preds = %10, %7
  %13 = getelementptr inbounds [3 x float], ptr %0, i64 1
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %4, ptr noundef %0) #17
  tail call void @normalize_m3(ptr noundef %0) #15
  br label %14

14:                                               ; preds = %2, %12
  %15 = phi i8 [ 1, %12 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  ret i8 %15
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !46 {
  %3 = load float, ptr %1, align 4, !tbaa !45
  store float %3, ptr %0, align 4, !tbaa !45
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !45
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !45
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !45
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !47 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #17
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !48 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !45
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !45
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !45
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !45
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !45
  %15 = load float, ptr %8, align 4, !tbaa !45
  %16 = load float, ptr %2, align 4, !tbaa !45
  %17 = load float, ptr %1, align 4, !tbaa !45
  %18 = load float, ptr %6, align 4, !tbaa !45
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !45
  %23 = load float, ptr %1, align 4, !tbaa !45
  %24 = load float, ptr %10, align 4, !tbaa !45
  %25 = load float, ptr %4, align 4, !tbaa !45
  %26 = load float, ptr %2, align 4, !tbaa !45
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v3(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !49 {
  %2 = load float, ptr %0, align 4, !tbaa !45
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !45
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !45
  %11 = fcmp oeq float %10, 0.000000e+00
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: optsize
declare void @normalize_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @createSpaceNormalTangent(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %5 = tail call fastcc float @normalize_v3_v3(ptr noundef nonnull %4, ptr noundef %1) #17
  %6 = fcmp oeq float %5, 0.000000e+00
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds [3 x float], ptr %0, i64 1
  tail call fastcc void @negate_v3_v3(ptr noundef nonnull %8, ptr noundef %2) #17
  %9 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %8) #17, !range !44
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float 1.000000e+00, ptr %12, align 4, !tbaa !45
  br label %13

13:                                               ; preds = %11, %7
  tail call fastcc void @cross_v3_v3v3(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %8) #17
  %14 = tail call fastcc float @normalize_v3(ptr noundef %0) #17
  %15 = fcmp oeq float %14, 0.000000e+00
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef %0) #17
  %17 = tail call fastcc float @normalize_v3(ptr noundef nonnull %8) #17
  br label %18

18:                                               ; preds = %13, %3, %16
  %19 = phi i8 [ 1, %16 ], [ 0, %3 ], [ 0, %13 ]
  ret i8 %19
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !50 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #17
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #15
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #17
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #17
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !51 {
  %3 = load float, ptr %1, align 4, !tbaa !45
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !45
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !45
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !45
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !45
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BIF_createTransformOrientation(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = icmp eq i8 %3, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  %9 = tail call fastcc ptr @createViewSpace(ptr noundef %0, ptr noundef %2, i8 noundef zeroext %5) #17
  br label %34

10:                                               ; preds = %6
  %11 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %12 = tail call ptr @CTX_data_active_object(ptr noundef %0) #15
  %13 = icmp eq ptr %11, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !52
  switch i16 %16, label %40 [
    i16 1, label %17
    i16 25, label %19
    i16 2, label %21
  ]

17:                                               ; preds = %14
  %18 = tail call fastcc ptr @createMeshSpace(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %5) #17
  br label %34

19:                                               ; preds = %14
  %20 = tail call fastcc ptr @createBoneSpace(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %5) #17
  br label %34

21:                                               ; preds = %14
  %22 = tail call fastcc ptr @createCurveSpace(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %5) #17
  br label %34

23:                                               ; preds = %10
  %24 = icmp eq ptr %12, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 27
  %27 = load i32, ptr %26, align 8, !tbaa !57
  %28 = and i32 %27, 64
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = tail call fastcc ptr @createBoneSpace(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %5) #17
  br label %34

32:                                               ; preds = %25, %23
  %33 = tail call fastcc ptr @createObjectSpace(ptr noundef %0, ptr noundef %2, i8 noundef zeroext %5) #17
  br label %34

34:                                               ; preds = %19, %21, %17, %32, %30, %8
  %35 = phi ptr [ %9, %8 ], [ %18, %17 ], [ %20, %19 ], [ %22, %21 ], [ %31, %30 ], [ %33, %32 ]
  %36 = icmp ne i8 %4, 0
  %37 = icmp ne ptr %35, null
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  tail call void @BIF_selectTransformOrientation(ptr noundef %0, ptr noundef nonnull %35) #17
  br label %40

40:                                               ; preds = %14, %39, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @createViewSpace(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !58 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 2
  call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef nonnull %8) #15
  call void @normalize_m3(ptr noundef nonnull %4) #15
  %9 = load i8, ptr %1, align 1, !tbaa !59
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = call ptr @CTX_wm_view3d(ptr noundef %0) #15
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 25
  %14 = load i8, ptr %13, align 1, !tbaa !60
  %15 = icmp eq i8 %14, 2
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.View3D, ptr %12, i64 0, i32 15
  %18 = load ptr, ptr %17, align 8, !tbaa !62
  %19 = icmp eq ptr %18, null
  %20 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 4, i64 2
  %21 = select i1 %19, ptr @.str.6, ptr %20
  br label %22

22:                                               ; preds = %16, %11, %7
  %23 = phi ptr [ %1, %7 ], [ @.str.6, %11 ], [ %21, %16 ]
  %24 = call ptr @addMatrixSpace(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %23, i8 noundef zeroext %2) #17
  br label %25

25:                                               ; preds = %3, %22
  %26 = phi ptr [ %24, %22 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #16
  ret ptr %26
}

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @createMeshSpace(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !63 {
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  %8 = call i32 @getTransformOrientation(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 0) #17, !range !64
  switch i32 %8, label %27 [
    i32 2, label %9
    i32 3, label %13
    i32 4, label %17
  ]

9:                                                ; preds = %4
  %10 = call zeroext i8 @createSpaceNormal(ptr noundef nonnull %5, ptr noundef nonnull %6) #17, !range !44
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  call void @BKE_reports_prepend(ptr noundef %1, ptr noundef nonnull @.str.7) #15
  br label %27

13:                                               ; preds = %4
  %14 = call zeroext i8 @createSpaceNormalTangent(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #17, !range !44
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  call void @BKE_reports_prepend(ptr noundef %1, ptr noundef nonnull @.str.9) #15
  br label %27

17:                                               ; preds = %4
  %18 = call zeroext i8 @createSpaceNormalTangent(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #17, !range !44
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @BKE_reports_prepend(ptr noundef %1, ptr noundef nonnull @.str.11) #15
  br label %27

21:                                               ; preds = %17, %13, %9
  %22 = phi ptr [ @.str.8, %9 ], [ @.str.10, %13 ], [ @.str.12, %17 ]
  %23 = load i8, ptr %2, align 1, !tbaa !59
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %24, ptr %22, ptr %2
  %26 = call ptr @addMatrixSpace(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %25, i8 noundef zeroext %3) #17
  br label %27

27:                                               ; preds = %4, %21, %20, %16, %12
  %28 = phi ptr [ null, %20 ], [ %26, %21 ], [ null, %16 ], [ null, %12 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #16
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @createBoneSpace(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !65 {
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  %8 = call i32 @getTransformOrientation(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 0) #17, !range !64
  %9 = call zeroext i8 @createSpaceNormalTangent(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #17, !range !44
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  call void @BKE_reports_prepend(ptr noundef %1, ptr noundef nonnull @.str.13) #15
  br label %17

12:                                               ; preds = %4
  %13 = load i8, ptr %2, align 1, !tbaa !59
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, ptr @.str.14, ptr %2
  %16 = call ptr @addMatrixSpace(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %15, i8 noundef zeroext %3) #17
  br label %17

17:                                               ; preds = %12, %11
  %18 = phi ptr [ null, %11 ], [ %16, %12 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #16
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @createCurveSpace(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !66 {
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  %8 = call i32 @getTransformOrientation(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 0) #17, !range !64
  %9 = call zeroext i8 @createSpaceNormalTangent(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #17, !range !44
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  call void @BKE_reports_prepend(ptr noundef %1, ptr noundef nonnull @.str.15) #15
  br label %17

12:                                               ; preds = %4
  %13 = load i8, ptr %2, align 1, !tbaa !59
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, ptr @.str.16, ptr %2
  %16 = call ptr @addMatrixSpace(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %15, i8 noundef zeroext %3) #17
  br label %17

17:                                               ; preds = %12, %11
  %18 = phi ptr [ null, %11 ], [ %16, %12 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #16
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @createObjectSpace(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !67 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = tail call ptr @CTX_data_active_base(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef nonnull %10) #15
  call void @normalize_m3(ptr noundef nonnull %4) #15
  %11 = load i8, ptr %1, align 1, !tbaa !59
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4, i64 2
  %14 = select i1 %12, ptr %13, ptr %1
  %15 = call ptr @addMatrixSpace(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %14, i8 noundef zeroext %2) #17
  br label %16

16:                                               ; preds = %3, %7
  %17 = phi ptr [ %15, %7 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #16
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BIF_selectTransformOrientation(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 25
  %5 = tail call i32 @BLI_findindex(ptr noundef nonnull %4, ptr noundef %1) #15
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #15
  %9 = trunc i32 %5 to i8
  %10 = add i8 %9, 5
  %11 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 41
  store i8 %10, ptr %11, align 4, !tbaa !34
  br label %12

12:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @addMatrixSpace(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca [64 x i8], align 16
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  %8 = icmp eq i8 %3, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %2, i64 noundef 64) #15
  call fastcc void @uniqueOrientationName(ptr noundef nonnull %7, ptr noundef nonnull %5) #17
  br label %14

11:                                               ; preds = %4
  %12 = tail call fastcc ptr @findOrientationName(ptr noundef nonnull %7, ptr noundef %2) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %9, %11
  %15 = phi ptr [ %5, %9 ], [ %2, %11 ]
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %17 = call ptr %16(i64 noundef 120, ptr noundef nonnull @.str) #15
  call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %17) #15
  %18 = getelementptr inbounds %struct.TransformOrientation, ptr %17, i64 0, i32 2
  %19 = call ptr @BLI_strncpy(ptr noundef nonnull %18, ptr noundef %15, i64 noundef 64) #15
  br label %20

20:                                               ; preds = %14, %11
  %21 = phi ptr [ %17, %14 ], [ %12, %11 ]
  %22 = getelementptr inbounds %struct.TransformOrientation, ptr %21, i64 0, i32 3
  call void @copy_m3_m3(ptr noundef nonnull %22, ptr noundef %1) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @findOrientationName(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !71 {
  %3 = tail call ptr @BLI_findstring(ptr noundef %0, ptr noundef %1, i32 noundef 16) #15
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uniqueOrientationName(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !72 {
  %3 = tail call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @uniqueOrientationNameCheck, ptr noundef %0, ptr noundef nonnull @.str.17, i8 noundef zeroext 46, ptr noundef %1, i32 noundef 64) #15
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BIF_removeTransformOrientation(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 25
  %5 = tail call i32 @BLI_findindex(ptr noundef nonnull %4, ptr noundef %1) #15
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %9 = getelementptr inbounds %struct.Main, ptr %8, i64 0, i32 26
  tail call void @BKE_screen_view3d_main_twmode_remove(ptr noundef nonnull %9, ptr noundef %3, i32 noundef %5) #15
  tail call void @BLI_freelinkN(ptr noundef nonnull %4, ptr noundef %1) #15
  br label %10

10:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_screen_view3d_main_twmode_remove(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BIF_removeTransformOrientationIndex(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 25
  %5 = tail call ptr @BLI_findlink(ptr noundef nonnull %4, i32 noundef %1) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @BIF_removeTransformOrientation(ptr noundef %0, ptr noundef nonnull %5) #17
  br label %8

8:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BIF_selectTransformOrientationValue(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #15
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BIF_countTransformOrientation(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 25
  %4 = tail call i32 @BLI_countlist(ptr noundef nonnull %3) #15
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @applyTransformOrientation(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 41
  %6 = load i8, ptr %5, align 4, !tbaa !34
  %7 = zext i8 %6 to i32
  %8 = add nsw i32 %7, -5
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 25
  %11 = tail call ptr @BLI_findlink(ptr noundef nonnull %10, i32 noundef %8) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = icmp eq ptr %2, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.TransformOrientation, ptr %11, i64 0, i32 2
  %17 = tail call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef nonnull %16, i64 noundef 64) #15
  br label %18

18:                                               ; preds = %15, %13
  %19 = getelementptr inbounds %struct.TransformOrientation, ptr %11, i64 0, i32 3
  tail call void @copy_m3_m3(ptr noundef %1, ptr noundef nonnull %19) #15
  br label %20

20:                                               ; preds = %3, %18
  %21 = phi i8 [ 1, %18 ], [ 0, %3 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @initTransformOrientation(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #15
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #15
  %6 = tail call ptr @CTX_data_active_object(ptr noundef %0) #15
  %7 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 43
  %8 = load i16, ptr %7, align 2, !tbaa !73
  switch i16 %8, label %67 [
    i16 0, label %9
    i16 4, label %13
    i16 2, label %20
    i16 1, label %43
    i16 3, label %52
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 37
  tail call void @unit_m3(ptr noundef nonnull %10) #15
  %11 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 38
  %12 = tail call ptr @BLI_strncpy(ptr noundef nonnull %11, ptr noundef nonnull @.str.1, i64 noundef 64) #15
  br label %73

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 37
  tail call void @unit_m3(ptr noundef nonnull %14) #15
  %15 = tail call zeroext i8 @gimbal_axis(ptr noundef %5, ptr noundef nonnull %14) #15
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 38
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %18, ptr noundef nonnull @.str.2, i64 noundef 64) #15
  br label %73

20:                                               ; preds = %13, %2
  %21 = icmp eq ptr %6, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %20
  %23 = icmp eq ptr %5, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 38
  %26 = tail call ptr @BLI_strncpy(ptr noundef nonnull %25, ptr noundef nonnull @.str.4, i64 noundef 64) #15
  br label %50

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 27
  %29 = load i32, ptr %28, align 8, !tbaa !57
  %30 = and i32 %29, 64
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 38
  %34 = tail call ptr @BLI_strncpy(ptr noundef nonnull %33, ptr noundef nonnull @.str.4, i64 noundef 64) #15
  br label %47

35:                                               ; preds = %27, %20
  %36 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 38
  %37 = tail call ptr @BLI_strncpy(ptr noundef nonnull %36, ptr noundef nonnull @.str.3, i64 noundef 64) #15
  %38 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 37
  %39 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 27
  %40 = load i16, ptr %39, align 2, !tbaa !80
  %41 = icmp eq i16 %40, 4
  %42 = zext i1 %41 to i8
  tail call void @ED_getTransformOrientationMatrix(ptr noundef %0, ptr noundef nonnull %38, i8 noundef zeroext %42) #17
  br label %73

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 38
  %45 = tail call ptr @BLI_strncpy(ptr noundef nonnull %44, ptr noundef nonnull @.str.4, i64 noundef 64) #15
  %46 = icmp eq ptr %5, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %32, %43
  %48 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 37
  %49 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 47
  tail call void @copy_m3_m4(ptr noundef nonnull %48, ptr noundef nonnull %49) #15
  tail call void @normalize_m3(ptr noundef nonnull %48) #15
  br label %73

50:                                               ; preds = %24, %43
  %51 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 37
  tail call void @unit_m3(ptr noundef nonnull %51) #15
  br label %73

52:                                               ; preds = %2
  %53 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %54 = load ptr, ptr %53, align 8, !tbaa !81
  %55 = getelementptr inbounds %struct.ARegion, ptr %54, i64 0, i32 8
  %56 = load i16, ptr %55, align 2, !tbaa !82
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.ARegion, ptr %54, i64 0, i32 30
  %60 = load ptr, ptr %59, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #16
  %61 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 38
  %62 = tail call ptr @BLI_strncpy(ptr noundef nonnull %61, ptr noundef nonnull @.str.5, i64 noundef 64) #15
  %63 = getelementptr inbounds %struct.RegionView3D, ptr %60, i64 0, i32 2
  call void @copy_m3_m4(ptr noundef nonnull %3, ptr noundef nonnull %63) #15
  call void @normalize_m3(ptr noundef nonnull %3) #15
  %64 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 37
  call void @copy_m3_m3(ptr noundef nonnull %64, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #16
  br label %73

65:                                               ; preds = %52
  %66 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 37
  tail call void @unit_m3(ptr noundef nonnull %66) #15
  br label %73

67:                                               ; preds = %2
  %68 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 37
  %69 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 38
  %70 = tail call zeroext i8 @applyTransformOrientation(ptr noundef %0, ptr noundef nonnull %68, ptr noundef nonnull %69) #17, !range !44
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  tail call void @unit_m3(ptr noundef nonnull %68) #15
  br label %73

73:                                               ; preds = %72, %67, %58, %65, %47, %50, %35, %17, %9
  ret void
}

; Function Attrs: optsize
declare void @unit_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @gimbal_axis(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_getTransformOrientationMatrix(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %6 = call i32 @getTransformOrientation(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext %2) #17, !range !64
  switch i32 %6, label %19 [
    i32 1, label %7
    i32 2, label %10
    i32 3, label %13
    i32 4, label %16
  ]

7:                                                ; preds = %3
  %8 = call zeroext i8 @createSpaceNormalTangent(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #17, !range !44
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %19, label %20

10:                                               ; preds = %3
  %11 = call zeroext i8 @createSpaceNormal(ptr noundef %1, ptr noundef nonnull %4) #17, !range !44
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %19, label %20

13:                                               ; preds = %3
  %14 = call zeroext i8 @createSpaceNormalTangent(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #17, !range !44
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %20

16:                                               ; preds = %3
  %17 = call zeroext i8 @createSpaceNormalTangent(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #17, !range !44
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %13, %10, %7, %3
  call void @unit_m3(ptr noundef %1) #15
  br label %20

20:                                               ; preds = %7, %10, %13, %16, %19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  ret void
}

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @getTransformOrientation(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca %struct.BMEditSelection, align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca %struct.BMIter, align 8
  %10 = alloca [3 x ptr], align 16
  %11 = alloca [3 x float], align 8
  %12 = alloca [2 x ptr], align 16
  %13 = alloca [2 x ptr], align 16
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca [2 x [3 x float]], align 16
  %17 = alloca %struct.BMIter, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x [3 x float]], align 16
  %22 = alloca [3 x [3 x float]], align 16
  %23 = alloca [3 x [3 x float]], align 16
  %24 = alloca [3 x [3 x float]], align 16
  %25 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %26 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #15
  %27 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %28 = getelementptr inbounds %struct.Scene, ptr %25, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !87
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.Base, ptr %29, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !68
  br label %34

34:                                               ; preds = %4, %31
  %35 = phi ptr [ %33, %31 ], [ null, %4 ]
  tail call fastcc void @zero_v3(ptr noundef %1) #17
  tail call fastcc void @zero_v3(ptr noundef %2) #17
  %36 = icmp eq ptr %27, null
  br i1 %36, label %493, label %37

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #16
  %38 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %38) #15
  %39 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %6, ptr noundef nonnull %5) #15
  call void @transpose_m3(ptr noundef nonnull %6) #15
  %40 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 3
  %41 = load i16, ptr %40, align 8, !tbaa !52
  switch i16 %41, label %489 [
    i16 1, label %42
    i16 2, label %288
    i16 3, label %288
    i16 5, label %393
    i16 25, label %436
  ]

42:                                               ; preds = %37
  %43 = call ptr @BKE_editmesh_from_object(ptr noundef nonnull %27) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i64 12, i1 false)
  %44 = icmp eq i8 %3, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %43, align 8, !tbaa !104
  %47 = call zeroext i8 @BM_select_history_active_get(ptr noundef %46, ptr noundef nonnull %7) #15
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  call void @BM_editselection_normal(ptr noundef nonnull %7, ptr noundef %1) #15
  call void @BM_editselection_plane(ptr noundef nonnull %7, ptr noundef %2) #15
  %50 = getelementptr inbounds %struct.BMEditSelection, ptr %7, i64 0, i32 3
  %51 = load i8, ptr %50, align 8, !tbaa !106
  switch i8 %51, label %286 [
    i8 1, label %52
    i8 2, label %53
    i8 8, label %54
  ]

52:                                               ; preds = %49
  br label %286

53:                                               ; preds = %49
  br label %286

54:                                               ; preds = %49
  br label %286

55:                                               ; preds = %45, %42
  %56 = load ptr, ptr %43, align 8, !tbaa !104
  %57 = getelementptr inbounds %struct.BMesh, ptr %56, i64 0, i32 6
  %58 = load i32, ptr %57, align 8, !tbaa !108
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #16
  %61 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %9, ptr noundef nonnull %56, i8 noundef zeroext 3) #17
  %62 = icmp eq ptr %61, null
  br i1 %62, label %72, label %63

63:                                               ; preds = %60, %69
  %64 = phi ptr [ %70, %69 ], [ %61, %60 ]
  %65 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %64) #17
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  call void @BM_face_calc_plane(ptr noundef nonnull %64, ptr noundef nonnull %8) #15
  %68 = getelementptr inbounds %struct.BMFace, ptr %64, i64 0, i32 4
  call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef nonnull %68) #17
  call fastcc void @add_v3_v3(ptr noundef %2, ptr noundef nonnull %8) #17
  br label %69

69:                                               ; preds = %63, %67
  %70 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %9) #17
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %63, !llvm.loop !111

72:                                               ; preds = %69, %60
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #16
  br label %286

73:                                               ; preds = %55
  %74 = getelementptr inbounds %struct.BMesh, ptr %56, i64 0, i32 4
  %75 = load i32, ptr %74, align 8, !tbaa !113
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %77, label %166

77:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #16
  %78 = call fastcc i32 @bm_mesh_verts_select_get_n(ptr noundef nonnull %56, ptr noundef nonnull %10, i32 noundef 3) #17
  %79 = icmp eq i32 %78, 3
  br i1 %79, label %80, label %165

80:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #16
  %81 = load ptr, ptr %10, align 16, !tbaa !70
  %82 = getelementptr inbounds %struct.BMVert, ptr %81, i64 0, i32 2
  %83 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !70
  %85 = getelementptr inbounds %struct.BMVert, ptr %84, i64 0, i32 2
  %86 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 2
  %87 = load ptr, ptr %86, align 16, !tbaa !70
  %88 = getelementptr inbounds %struct.BMVert, ptr %87, i64 0, i32 2
  %89 = call float @normal_tri_v3(ptr noundef %1, ptr noundef nonnull %82, ptr noundef nonnull %85, ptr noundef nonnull %88) #15
  %90 = getelementptr inbounds %struct.BMVert, ptr %81, i64 0, i32 3
  %91 = getelementptr inbounds %struct.BMVert, ptr %84, i64 0, i32 3
  %92 = getelementptr inbounds %struct.BMVert, ptr %87, i64 0, i32 3
  %93 = load <2 x float>, ptr %90, align 4, !tbaa !45
  %94 = load <2 x float>, ptr %91, align 4, !tbaa !45
  %95 = fadd <2 x float> %93, %94
  %96 = load <2 x float>, ptr %92, align 4, !tbaa !45
  %97 = fadd <2 x float> %95, %96
  store <2 x float> %97, ptr %11, align 8, !tbaa !45
  %98 = getelementptr inbounds %struct.BMVert, ptr %81, i64 0, i32 3, i64 2
  %99 = load float, ptr %98, align 4, !tbaa !45
  %100 = getelementptr inbounds %struct.BMVert, ptr %84, i64 0, i32 3, i64 2
  %101 = load float, ptr %100, align 4, !tbaa !45
  %102 = fadd float %99, %101
  %103 = getelementptr inbounds %struct.BMVert, ptr %87, i64 0, i32 3, i64 2
  %104 = load float, ptr %103, align 4, !tbaa !45
  %105 = fadd float %102, %104
  %106 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  store float %105, ptr %106, align 8, !tbaa !45
  %107 = call fastcc float @dot_v3v3(ptr noundef nonnull %11, ptr noundef %1) #17
  %108 = fcmp olt float %107, 0.000000e+00
  br i1 %108, label %109, label %110

109:                                              ; preds = %80
  call fastcc void @negate_v3(ptr noundef %1) #17
  br label %110

110:                                              ; preds = %109, %80
  %111 = load ptr, ptr %43, align 8, !tbaa !104
  %112 = getelementptr inbounds %struct.BMesh, ptr %111, i64 0, i32 5
  %113 = load i32, ptr %112, align 4, !tbaa !114
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %163

115:                                              ; preds = %110, %139
  %116 = phi i64 [ %121, %139 ], [ 0, %110 ]
  %117 = phi ptr [ %141, %139 ], [ null, %110 ]
  %118 = phi float [ %140, %139 ], [ undef, %110 ]
  %119 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 %116
  %120 = load ptr, ptr %119, align 8, !tbaa !70
  %121 = add nuw nsw i64 %116, 1
  %122 = icmp eq i64 %121, 3
  %123 = and i64 %121, 4294967295
  %124 = select i1 %122, i64 0, i64 %123
  %125 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !70
  %127 = call ptr @BM_edge_exists(ptr noundef %120, ptr noundef %126) #15
  %128 = icmp eq ptr %127, null
  br i1 %128, label %139, label %129

129:                                              ; preds = %115
  %130 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %127) #17
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %129
  %133 = call float @BM_edge_calc_length_squared(ptr noundef nonnull %127) #15
  %134 = icmp eq ptr %117, null
  %135 = fcmp olt float %118, %133
  %136 = select i1 %134, i1 true, i1 %135
  %137 = select i1 %136, float %133, float %118
  %138 = select i1 %136, ptr %127, ptr %117
  br label %139

139:                                              ; preds = %132, %129, %115
  %140 = phi float [ %137, %132 ], [ %118, %129 ], [ %118, %115 ]
  %141 = phi ptr [ %138, %132 ], [ %117, %129 ], [ %117, %115 ]
  %142 = icmp eq i64 %121, 3
  br i1 %142, label %143, label %115, !llvm.loop !115

143:                                              ; preds = %139
  %144 = icmp eq ptr %141, null
  br i1 %144, label %163, label %145

145:                                              ; preds = %143
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #16
  %146 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef nonnull %141) #17, !range !44
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds [2 x ptr], ptr %12, i64 0, i64 1
  call void @BM_edge_ordered_verts(ptr noundef nonnull %141, ptr noundef nonnull %12, ptr noundef nonnull %149) #15
  %150 = load ptr, ptr %12, align 16, !tbaa !70
  %151 = load ptr, ptr %149, align 8, !tbaa !70
  br label %158

152:                                              ; preds = %145
  %153 = getelementptr inbounds %struct.BMEdge, ptr %141, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !116
  store ptr %154, ptr %12, align 16, !tbaa !70
  %155 = getelementptr inbounds %struct.BMEdge, ptr %141, i64 0, i32 3
  %156 = load ptr, ptr %155, align 8, !tbaa !120
  %157 = getelementptr inbounds [2 x ptr], ptr %12, i64 0, i64 1
  store ptr %156, ptr %157, align 8, !tbaa !70
  br label %158

158:                                              ; preds = %152, %148
  %159 = phi ptr [ %156, %152 ], [ %151, %148 ]
  %160 = phi ptr [ %154, %152 ], [ %150, %148 ]
  %161 = getelementptr inbounds %struct.BMVert, ptr %160, i64 0, i32 2
  %162 = getelementptr inbounds %struct.BMVert, ptr %159, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef %2, ptr noundef nonnull %161, ptr noundef nonnull %162) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #16
  br label %164

163:                                              ; preds = %110, %143
  call void @BM_vert_tri_calc_plane(ptr noundef nonnull %10, ptr noundef %2) #15
  br label %164

164:                                              ; preds = %163, %158
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #16
  br label %165

165:                                              ; preds = %77, %164
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #16
  br label %286

166:                                              ; preds = %73
  %167 = getelementptr inbounds %struct.BMesh, ptr %56, i64 0, i32 5
  %168 = load i32, ptr %167, align 4, !tbaa !114
  %169 = icmp eq i32 %168, 1
  %170 = icmp eq i32 %75, 2
  %171 = or i1 %170, %169
  br i1 %171, label %172, label %220

172:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #16
  store ptr null, ptr %14, align 8, !tbaa !70
  br i1 %169, label %173, label %183

173:                                              ; preds = %172
  %174 = call fastcc i32 @bm_mesh_edges_select_get_n(ptr noundef nonnull %56, ptr noundef nonnull %14) #17
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %219

176:                                              ; preds = %173
  %177 = load ptr, ptr %14, align 8, !tbaa !70
  %178 = getelementptr inbounds %struct.BMEdge, ptr %177, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !116
  store ptr %179, ptr %13, align 16, !tbaa !70
  %180 = getelementptr inbounds %struct.BMEdge, ptr %177, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !120
  %182 = getelementptr inbounds [2 x ptr], ptr %13, i64 0, i64 1
  store ptr %181, ptr %182, align 8, !tbaa !70
  br label %188

183:                                              ; preds = %172
  %184 = call fastcc i32 @bm_mesh_verts_select_get_n(ptr noundef nonnull %56, ptr noundef nonnull %13, i32 noundef 2) #17
  %185 = load ptr, ptr %13, align 16, !tbaa !70
  %186 = getelementptr inbounds [2 x ptr], ptr %13, i64 0, i64 1
  %187 = load ptr, ptr %186, align 8
  br label %188

188:                                              ; preds = %176, %183
  %189 = phi ptr [ %181, %176 ], [ %187, %183 ]
  %190 = phi ptr [ %179, %176 ], [ %185, %183 ]
  %191 = icmp ne ptr %190, null
  %192 = getelementptr inbounds [2 x ptr], ptr %13, i64 0, i64 1
  %193 = icmp ne ptr %189, null
  %194 = select i1 %191, i1 %193, i1 false
  br i1 %194, label %195, label %219

195:                                              ; preds = %188
  %196 = load ptr, ptr %43, align 8, !tbaa !104
  %197 = call ptr @BM_mesh_active_vert_get(ptr noundef %196) #15
  %198 = icmp eq ptr %197, %189
  br i1 %198, label %211, label %199

199:                                              ; preds = %195
  %200 = load ptr, ptr %14, align 8, !tbaa !70
  %201 = icmp eq ptr %200, null
  br i1 %201, label %212, label %202

202:                                              ; preds = %199
  %203 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef nonnull %200) #17, !range !44
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %212, label %205

205:                                              ; preds = %202
  %206 = getelementptr inbounds %struct.BMEdge, ptr %200, i64 0, i32 4
  %207 = load ptr, ptr %206, align 8, !tbaa !121
  %208 = getelementptr inbounds %struct.BMLoop, ptr %207, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !122
  %210 = icmp eq ptr %209, %190
  br i1 %210, label %212, label %211

211:                                              ; preds = %195, %205
  store ptr %189, ptr %13, align 16, !tbaa !70
  store ptr %190, ptr %192, align 8, !tbaa !70
  br label %212

212:                                              ; preds = %202, %199, %211, %205
  %213 = phi ptr [ %190, %202 ], [ %190, %199 ], [ %189, %211 ], [ %190, %205 ]
  %214 = getelementptr inbounds %struct.BMVert, ptr %213, i64 0, i32 3
  %215 = load ptr, ptr %192, align 8, !tbaa !70
  %216 = getelementptr inbounds %struct.BMVert, ptr %215, i64 0, i32 3
  call fastcc void @add_v3_v3v3(ptr noundef %2, ptr noundef nonnull %214, ptr noundef nonnull %216) #17
  %217 = getelementptr inbounds %struct.BMVert, ptr %213, i64 0, i32 2
  %218 = getelementptr inbounds %struct.BMVert, ptr %215, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef %1, ptr noundef nonnull %217, ptr noundef nonnull %218) #17
  call fastcc void @negate_v3(ptr noundef %2) #17
  br label %219

219:                                              ; preds = %173, %212, %188
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #16
  br label %286

220:                                              ; preds = %166
  %221 = icmp eq i32 %75, 1
  br i1 %221, label %222, label %269

222:                                              ; preds = %220
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #16
  store ptr null, ptr %15, align 8, !tbaa !70
  %223 = call fastcc i32 @bm_mesh_verts_select_get_n(ptr noundef nonnull %56, ptr noundef nonnull %15, i32 noundef 1) #17
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %225, label %265

225:                                              ; preds = %222
  %226 = load ptr, ptr %15, align 8, !tbaa !70
  %227 = getelementptr inbounds %struct.BMVert, ptr %226, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %227) #17
  %228 = call zeroext i8 @BM_vert_is_edge_pair(ptr noundef %226) #15
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %265, label %230

230:                                              ; preds = %225
  %231 = getelementptr inbounds %struct.BMVert, ptr %226, i64 0, i32 4
  %232 = load ptr, ptr %231, align 8, !tbaa !124
  %233 = getelementptr inbounds %struct.BMEdge, ptr %232, i64 0, i32 5
  %234 = getelementptr inbounds %struct.BMEdge, ptr %232, i64 0, i32 3
  %235 = load ptr, ptr %234, align 8, !tbaa !120
  %236 = icmp eq ptr %226, %235
  %237 = zext i1 %236 to i64
  %238 = getelementptr inbounds %struct.BMDiskLink, ptr %233, i64 %237
  %239 = load ptr, ptr %238, align 8, !tbaa !126
  %240 = call fastcc ptr @BM_edge_other_vert(ptr noundef %232, ptr noundef %226) #17
  %241 = call fastcc ptr @BM_edge_other_vert(ptr noundef %239, ptr noundef %226) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #16
  %242 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef %232) #17, !range !44
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %230
  %245 = call float @BM_edge_calc_length_squared(ptr noundef nonnull %232) #15
  %246 = call float @BM_edge_calc_length_squared(ptr noundef %239) #15
  %247 = fcmp olt float %245, %246
  br i1 %247, label %256, label %255

248:                                              ; preds = %230
  %249 = getelementptr inbounds %struct.BMEdge, ptr %232, i64 0, i32 4
  %250 = load ptr, ptr %249, align 8, !tbaa !121
  %251 = getelementptr inbounds %struct.BMLoop, ptr %250, i64 0, i32 1
  %252 = load ptr, ptr %251, align 8, !tbaa !122
  %253 = freeze ptr %252
  %254 = icmp eq ptr %253, %226
  br i1 %254, label %255, label %256

255:                                              ; preds = %248, %244
  br label %256

256:                                              ; preds = %248, %244, %255
  %257 = phi ptr [ %241, %255 ], [ %240, %244 ], [ %240, %248 ]
  %258 = phi ptr [ %240, %255 ], [ %241, %244 ], [ %241, %248 ]
  %259 = getelementptr inbounds %struct.BMVert, ptr %226, i64 0, i32 2
  %260 = getelementptr inbounds %struct.BMVert, ptr %258, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %259, ptr noundef nonnull %260) #17
  %261 = getelementptr inbounds [2 x [3 x float]], ptr %16, i64 0, i64 1
  %262 = getelementptr inbounds %struct.BMVert, ptr %257, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %261, ptr noundef nonnull %262, ptr noundef nonnull %259) #17
  %263 = call fastcc float @normalize_v3(ptr noundef nonnull %16) #17
  %264 = call fastcc float @normalize_v3(ptr noundef nonnull %261) #17
  call fastcc void @add_v3_v3v3(ptr noundef %2, ptr noundef nonnull %16, ptr noundef nonnull %261) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #16
  br label %265

265:                                              ; preds = %225, %256, %222
  %266 = call fastcc zeroext i8 @is_zero_v3(ptr noundef %2) #17, !range !44
  %267 = icmp eq i8 %266, 0
  %268 = select i1 %267, i32 3, i32 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #16
  br label %286

269:                                              ; preds = %220
  %270 = icmp sgt i32 %75, 3
  br i1 %270, label %271, label %286

271:                                              ; preds = %269
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %17) #16
  call fastcc void @zero_v3(ptr noundef %1) #17
  %272 = load ptr, ptr %43, align 8, !tbaa !104
  %273 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %17, ptr noundef %272, i8 noundef zeroext 1) #17
  %274 = icmp eq ptr %273, null
  br i1 %274, label %284, label %275

275:                                              ; preds = %271, %281
  %276 = phi ptr [ %282, %281 ], [ %273, %271 ]
  %277 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %276) #17
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %281, label %279

279:                                              ; preds = %275
  %280 = getelementptr inbounds %struct.BMVert, ptr %276, i64 0, i32 3
  call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef nonnull %280) #17
  br label %281

281:                                              ; preds = %275, %279
  %282 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %17) #17
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %275, !llvm.loop !127

284:                                              ; preds = %281, %271
  %285 = call fastcc float @normalize_v3(ptr noundef %1) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %17) #16
  br label %286

286:                                              ; preds = %72, %219, %269, %284, %265, %165, %52, %53, %54, %49
  %287 = phi i32 [ 0, %49 ], [ 4, %54 ], [ 3, %53 ], [ 2, %52 ], [ 4, %72 ], [ 4, %165 ], [ 3, %219 ], [ %268, %265 ], [ 2, %284 ], [ 0, %269 ]
  call fastcc void @negate_v3(ptr noundef %2) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  br label %484

288:                                              ; preds = %37, %37
  %289 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 19
  %290 = load ptr, ptr %289, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #16
  store ptr null, ptr %18, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #16
  store ptr null, ptr %19, align 8, !tbaa !70
  %291 = call ptr @BKE_curve_editNurbs_get(ptr noundef %290) #15
  %292 = icmp eq i8 %3, 0
  br i1 %292, label %305, label %293

293:                                              ; preds = %288
  %294 = call zeroext i8 @BKE_curve_nurb_vert_active_get(ptr noundef %290, ptr noundef nonnull %18, ptr noundef nonnull %19) #15
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %305, label %296

296:                                              ; preds = %293
  %297 = load ptr, ptr %18, align 8, !tbaa !70
  %298 = getelementptr inbounds %struct.Nurb, ptr %297, i64 0, i32 2
  %299 = load i16, ptr %298, align 8, !tbaa !129
  %300 = icmp eq i16 %299, 1
  br i1 %300, label %301, label %389

301:                                              ; preds = %296
  %302 = load ptr, ptr %19, align 8, !tbaa !70
  call void @BKE_nurb_bezt_calc_normal(ptr noundef nonnull %297, ptr noundef %302, ptr noundef %1) #15
  %303 = load ptr, ptr %18, align 8, !tbaa !70
  %304 = load ptr, ptr %19, align 8, !tbaa !70
  call void @BKE_nurb_bezt_calc_plane(ptr noundef %303, ptr noundef %304, ptr noundef %2) #15
  br label %389

305:                                              ; preds = %293, %288
  %306 = getelementptr inbounds %struct.Curve, ptr %290, i64 0, i32 16
  %307 = load i16, ptr %306, align 8, !tbaa !131
  %308 = load ptr, ptr %291, align 8, !tbaa !70
  store ptr %308, ptr %18, align 8, !tbaa !70
  %309 = icmp eq ptr %308, null
  br i1 %309, label %389, label %310

310:                                              ; preds = %305
  %311 = and i16 %307, 1
  %312 = icmp eq i16 %311, 0
  %313 = getelementptr inbounds %struct.View3D, ptr %26, i64 0, i32 27
  br label %314

314:                                              ; preds = %310, %385
  %315 = phi ptr [ %308, %310 ], [ %387, %385 ]
  %316 = getelementptr inbounds %struct.Nurb, ptr %315, i64 0, i32 2
  %317 = load i16, ptr %316, align 8, !tbaa !129
  %318 = icmp eq i16 %317, 1
  br i1 %318, label %319, label %385

319:                                              ; preds = %314
  %320 = getelementptr inbounds %struct.Nurb, ptr %315, i64 0, i32 18
  %321 = load ptr, ptr %320, align 8, !tbaa !134
  store ptr %321, ptr %19, align 8, !tbaa !70
  %322 = getelementptr inbounds %struct.Nurb, ptr %315, i64 0, i32 6
  %323 = load i32, ptr %322, align 8, !tbaa !135
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %385, label %325

325:                                              ; preds = %319, %379
  %326 = phi ptr [ %381, %379 ], [ %321, %319 ]
  %327 = phi i32 [ %328, %379 ], [ %323, %319 ]
  %328 = add nsw i32 %327, -1
  br i1 %312, label %329, label %344

329:                                              ; preds = %325
  %330 = getelementptr inbounds %struct.BezTriple, ptr %326, i64 0, i32 7
  %331 = load i8, ptr %330, align 1, !tbaa !136
  %332 = and i8 %331, 1
  %333 = getelementptr inbounds %struct.BezTriple, ptr %326, i64 0, i32 8
  %334 = load i8, ptr %333, align 4, !tbaa !138
  %335 = shl i8 %334, 1
  %336 = and i8 %335, 2
  %337 = or disjoint i8 %336, %332
  %338 = zext nneg i8 %337 to i16
  %339 = getelementptr inbounds %struct.BezTriple, ptr %326, i64 0, i32 9
  %340 = load i8, ptr %339, align 1, !tbaa !139
  %341 = and i8 %340, 1
  %342 = icmp eq i8 %341, 0
  %343 = or disjoint i16 %338, 4
  br i1 %342, label %349, label %351

344:                                              ; preds = %325
  %345 = getelementptr inbounds %struct.BezTriple, ptr %326, i64 0, i32 8
  %346 = load i8, ptr %345, align 4, !tbaa !138
  %347 = and i8 %346, 1
  %348 = icmp eq i8 %347, 0
  br i1 %348, label %379, label %351

349:                                              ; preds = %329
  %350 = icmp eq i8 %337, 0
  br i1 %350, label %379, label %351

351:                                              ; preds = %329, %344, %349
  %352 = phi i16 [ %338, %349 ], [ %343, %329 ], [ 7, %344 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #16
  %353 = load i16, ptr %313, align 2, !tbaa !80
  %354 = freeze i16 %353
  %355 = icmp eq i16 %354, 2
  %356 = zext nneg i16 %352 to i32
  br i1 %355, label %358, label %357

357:                                              ; preds = %351
  switch i16 %352, label %360 [
    i16 7, label %358
    i16 5, label %358
    i16 2, label %358
  ]

358:                                              ; preds = %357, %357, %357, %351
  %359 = load ptr, ptr %18, align 8, !tbaa !70
  call void @BKE_nurb_bezt_calc_normal(ptr noundef %359, ptr noundef nonnull %326, ptr noundef nonnull %20) #15
  br label %374

360:                                              ; preds = %357
  %361 = and i32 %356, 1
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %366, label %363

363:                                              ; preds = %360
  %364 = getelementptr inbounds [3 x [3 x float]], ptr %326, i64 0, i64 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %326, ptr noundef nonnull %364) #17
  %365 = call fastcc float @normalize_v3(ptr noundef nonnull %20) #17
  call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef nonnull %20) #17
  br label %366

366:                                              ; preds = %363, %360
  %367 = and i32 %356, 4
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %375, label %369

369:                                              ; preds = %366
  %370 = load ptr, ptr %19, align 8, !tbaa !70
  %371 = getelementptr inbounds [3 x [3 x float]], ptr %370, i64 0, i64 1
  %372 = getelementptr inbounds [3 x [3 x float]], ptr %370, i64 0, i64 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %371, ptr noundef nonnull %372) #17
  %373 = call fastcc float @normalize_v3(ptr noundef nonnull %20) #17
  br label %374

374:                                              ; preds = %358, %369
  call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef nonnull %20) #17
  br label %375

375:                                              ; preds = %374, %366
  %376 = load ptr, ptr %18, align 8, !tbaa !70
  %377 = load ptr, ptr %19, align 8, !tbaa !70
  call void @BKE_nurb_bezt_calc_plane(ptr noundef %376, ptr noundef %377, ptr noundef nonnull %20) #15
  call fastcc void @add_v3_v3(ptr noundef %2, ptr noundef nonnull %20) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #16
  %378 = load ptr, ptr %19, align 8, !tbaa !70
  br label %379

379:                                              ; preds = %344, %375, %349
  %380 = phi ptr [ %326, %344 ], [ %378, %375 ], [ %326, %349 ]
  %381 = getelementptr inbounds %struct.BezTriple, ptr %380, i64 1
  store ptr %381, ptr %19, align 8, !tbaa !70
  %382 = icmp eq i32 %328, 0
  br i1 %382, label %383, label %325, !llvm.loop !140

383:                                              ; preds = %379
  %384 = load ptr, ptr %18, align 8, !tbaa !70
  br label %385

385:                                              ; preds = %383, %319, %314
  %386 = phi ptr [ %384, %383 ], [ %315, %319 ], [ %315, %314 ]
  %387 = load ptr, ptr %386, align 8, !tbaa !70
  store ptr %387, ptr %18, align 8, !tbaa !70
  %388 = icmp eq ptr %387, null
  br i1 %388, label %389, label %314, !llvm.loop !141

389:                                              ; preds = %385, %305, %296, %301
  %390 = call fastcc zeroext i8 @is_zero_v3(ptr noundef %1) #17, !range !44
  %391 = icmp eq i8 %390, 0
  %392 = select i1 %391, i32 4, i32 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #16
  br label %489

393:                                              ; preds = %37
  %394 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 19
  %395 = load ptr, ptr %394, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %21) #16
  %396 = icmp eq i8 %3, 0
  br i1 %396, label %405, label %397

397:                                              ; preds = %393
  %398 = getelementptr inbounds %struct.MetaBall, ptr %395, i64 0, i32 18
  %399 = load ptr, ptr %398, align 8, !tbaa !142
  %400 = icmp eq ptr %399, null
  br i1 %400, label %405, label %401

401:                                              ; preds = %397
  %402 = getelementptr inbounds %struct.MetaElem, ptr %399, i64 0, i32 10
  call void @quat_to_mat3(ptr noundef nonnull %21, ptr noundef nonnull %402) #15
  %403 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 2
  call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef nonnull %403) #17
  %404 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1
  call fastcc void @add_v3_v3(ptr noundef %2, ptr noundef nonnull %404) #17
  br label %430

405:                                              ; preds = %397, %393
  %406 = getelementptr inbounds %struct.MetaBall, ptr %395, i64 0, i32 4
  %407 = load ptr, ptr %406, align 8, !tbaa !144
  %408 = load ptr, ptr %407, align 8, !tbaa !70
  %409 = icmp eq ptr %408, null
  br i1 %409, label %434, label %410

410:                                              ; preds = %405
  %411 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 2
  %412 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1
  br label %413

413:                                              ; preds = %425, %410
  %414 = phi ptr [ %427, %425 ], [ %408, %410 ]
  %415 = phi i1 [ false, %425 ], [ true, %410 ]
  br label %416

416:                                              ; preds = %413, %422
  %417 = phi ptr [ %423, %422 ], [ %414, %413 ]
  %418 = getelementptr inbounds %struct.MetaElem, ptr %417, i64 0, i32 4
  %419 = load i16, ptr %418, align 2, !tbaa !145
  %420 = and i16 %419, 1
  %421 = icmp eq i16 %420, 0
  br i1 %421, label %422, label %425

422:                                              ; preds = %416
  %423 = load ptr, ptr %417, align 8, !tbaa !70
  %424 = icmp eq ptr %423, null
  br i1 %424, label %429, label %416, !llvm.loop !147

425:                                              ; preds = %416
  %426 = getelementptr inbounds %struct.MetaElem, ptr %417, i64 0, i32 10
  call void @quat_to_mat3(ptr noundef nonnull %21, ptr noundef nonnull %426) #15
  call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef nonnull %411) #17
  call fastcc void @add_v3_v3(ptr noundef %2, ptr noundef nonnull %412) #17
  %427 = load ptr, ptr %417, align 8, !tbaa !70
  %428 = icmp eq ptr %427, null
  br i1 %428, label %430, label %413, !llvm.loop !147

429:                                              ; preds = %422
  br i1 %415, label %434, label %430

430:                                              ; preds = %425, %401, %429
  %431 = call fastcc zeroext i8 @is_zero_v3(ptr noundef %2) #17, !range !44
  %432 = icmp eq i8 %431, 0
  %433 = select i1 %432, i32 4, i32 0
  br label %434

434:                                              ; preds = %405, %430, %429
  %435 = phi i32 [ 0, %429 ], [ %433, %430 ], [ 0, %405 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %21) #16
  br label %489

436:                                              ; preds = %37
  %437 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 19
  %438 = load ptr, ptr %437, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %22) #16
  %439 = icmp eq i8 %3, 0
  br i1 %439, label %447, label %440

440:                                              ; preds = %436
  %441 = getelementptr inbounds %struct.bArmature, ptr %438, i64 0, i32 6
  %442 = load ptr, ptr %441, align 8, !tbaa !148
  %443 = icmp eq ptr %442, null
  br i1 %443, label %447, label %444

444:                                              ; preds = %440
  call void @ED_armature_ebone_to_mat3(ptr noundef nonnull %442, ptr noundef nonnull %22) #15
  %445 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 2
  call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef nonnull %445) #17
  %446 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 1
  call fastcc void @add_v3_v3(ptr noundef %2, ptr noundef nonnull %446) #17
  br label %478

447:                                              ; preds = %440, %436
  %448 = getelementptr inbounds %struct.bArmature, ptr %438, i64 0, i32 4
  %449 = load ptr, ptr %448, align 8, !tbaa !150
  %450 = load ptr, ptr %449, align 8, !tbaa !70
  %451 = icmp eq ptr %450, null
  br i1 %451, label %482, label %452

452:                                              ; preds = %447
  %453 = getelementptr inbounds %struct.bArmature, ptr %438, i64 0, i32 15
  %454 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 2
  %455 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 1
  br label %456

456:                                              ; preds = %474, %452
  %457 = phi ptr [ %475, %474 ], [ %450, %452 ]
  %458 = phi i1 [ false, %474 ], [ true, %452 ]
  %459 = load i32, ptr %453, align 8, !tbaa !151
  br label %460

460:                                              ; preds = %456, %471
  %461 = phi ptr [ %472, %471 ], [ %457, %456 ]
  %462 = getelementptr inbounds %struct.EditBone, ptr %461, i64 0, i32 10
  %463 = load i32, ptr %462, align 8, !tbaa !152
  %464 = and i32 %463, %459
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %471, label %466

466:                                              ; preds = %460
  %467 = getelementptr inbounds %struct.EditBone, ptr %461, i64 0, i32 9
  %468 = load i32, ptr %467, align 4, !tbaa !154
  %469 = and i32 %468, 1
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %471, label %474

471:                                              ; preds = %460, %466
  %472 = load ptr, ptr %461, align 8, !tbaa !70
  %473 = icmp eq ptr %472, null
  br i1 %473, label %477, label %460, !llvm.loop !155

474:                                              ; preds = %466
  call void @ED_armature_ebone_to_mat3(ptr noundef nonnull %461, ptr noundef nonnull %22) #15
  call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef nonnull %454) #17
  call fastcc void @add_v3_v3(ptr noundef %2, ptr noundef nonnull %455) #17
  %475 = load ptr, ptr %461, align 8, !tbaa !70
  %476 = icmp eq ptr %475, null
  br i1 %476, label %478, label %456, !llvm.loop !155

477:                                              ; preds = %471
  br i1 %458, label %482, label %478

478:                                              ; preds = %474, %444, %477
  %479 = call fastcc zeroext i8 @is_zero_v3(ptr noundef %2) #17, !range !44
  %480 = icmp eq i8 %479, 0
  %481 = select i1 %480, i32 3, i32 0
  br label %482

482:                                              ; preds = %447, %478, %477
  %483 = phi i32 [ 0, %477 ], [ %481, %478 ], [ 0, %447 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %22) #16
  br label %484

484:                                              ; preds = %482, %286
  %485 = phi i32 [ %287, %286 ], [ %483, %482 ]
  %486 = icmp eq i32 %485, 3
  br i1 %486, label %487, label %489

487:                                              ; preds = %484
  %488 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 47
  call void @mul_mat3_m4_v3(ptr noundef nonnull %488, ptr noundef %1) #15
  call void @mul_mat3_m4_v3(ptr noundef nonnull %488, ptr noundef %2) #15
  br label %491

489:                                              ; preds = %37, %434, %389, %484
  %490 = phi i32 [ %485, %484 ], [ 0, %37 ], [ %435, %434 ], [ %392, %389 ]
  call void @mul_m3_v3(ptr noundef nonnull %6, ptr noundef %1) #15
  call void @mul_m3_v3(ptr noundef nonnull %6, ptr noundef %2) #15
  br label %491

491:                                              ; preds = %489, %487
  %492 = phi i32 [ %490, %489 ], [ 3, %487 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #16
  br label %591

493:                                              ; preds = %34
  %494 = icmp eq ptr %35, null
  br i1 %494, label %543, label %495

495:                                              ; preds = %493
  %496 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 27
  %497 = load i32, ptr %496, align 8, !tbaa !57
  %498 = and i32 %497, 64
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %540, label %500

500:                                              ; preds = %495
  %501 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 19
  %502 = load ptr, ptr %501, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %23) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %24) #16
  %503 = icmp eq i8 %3, 0
  br i1 %503, label %510, label %504

504:                                              ; preds = %500
  %505 = tail call ptr @BKE_pose_channel_active(ptr noundef nonnull %35) #15
  %506 = icmp eq ptr %505, null
  br i1 %506, label %510, label %507

507:                                              ; preds = %504
  %508 = getelementptr inbounds %struct.bPoseChannel, ptr %505, i64 0, i32 29, i64 2
  tail call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef nonnull %508) #17
  %509 = getelementptr inbounds %struct.bPoseChannel, ptr %505, i64 0, i32 29, i64 1
  tail call fastcc void @add_v3_v3(ptr noundef %2, ptr noundef nonnull %509) #17
  br label %535

510:                                              ; preds = %504, %500
  %511 = getelementptr inbounds %struct.bArmature, ptr %502, i64 0, i32 2
  %512 = tail call fastcc i32 @count_bone_select(ptr noundef %502, ptr noundef nonnull %511, i8 noundef zeroext 1) #17
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %538, label %514

514:                                              ; preds = %510
  %515 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 18
  %516 = load ptr, ptr %515, align 8, !tbaa !156
  %517 = load ptr, ptr %516, align 8, !tbaa !70
  %518 = icmp eq ptr %517, null
  br i1 %518, label %535, label %519

519:                                              ; preds = %514, %532
  %520 = phi ptr [ %533, %532 ], [ %517, %514 ]
  %521 = getelementptr inbounds %struct.bPoseChannel, ptr %520, i64 0, i32 12
  %522 = load ptr, ptr %521, align 8, !tbaa !157
  %523 = icmp eq ptr %522, null
  br i1 %523, label %532, label %524

524:                                              ; preds = %519
  %525 = getelementptr inbounds %struct.Bone, ptr %522, i64 0, i32 10
  %526 = load i32, ptr %525, align 8, !tbaa !159
  %527 = and i32 %526, 8
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %532, label %529

529:                                              ; preds = %524
  %530 = getelementptr inbounds %struct.bPoseChannel, ptr %520, i64 0, i32 29, i64 2
  tail call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef nonnull %530) #17
  %531 = getelementptr inbounds %struct.bPoseChannel, ptr %520, i64 0, i32 29, i64 1
  tail call fastcc void @add_v3_v3(ptr noundef %2, ptr noundef nonnull %531) #17
  br label %532

532:                                              ; preds = %519, %524, %529
  %533 = load ptr, ptr %520, align 8, !tbaa !70
  %534 = icmp eq ptr %533, null
  br i1 %534, label %535, label %519, !llvm.loop !161

535:                                              ; preds = %532, %514, %507
  %536 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %23, ptr noundef nonnull %536) #15
  %537 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %24, ptr noundef nonnull %23) #15
  call void @transpose_m3(ptr noundef nonnull %24) #15
  call void @mul_m3_v3(ptr noundef nonnull %24, ptr noundef %1) #15
  call void @mul_m3_v3(ptr noundef nonnull %24, ptr noundef %2) #15
  br label %538

538:                                              ; preds = %510, %535
  %539 = phi i32 [ 3, %535 ], [ 0, %510 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %24) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %23) #16
  br label %591

540:                                              ; preds = %495
  %541 = and i32 %497, 62
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %543, label %591

543:                                              ; preds = %493, %540
  %544 = load ptr, ptr %28, align 8, !tbaa !87
  %545 = icmp eq ptr %544, null
  br i1 %545, label %555, label %546

546:                                              ; preds = %543
  %547 = getelementptr inbounds %struct.Base, ptr %544, i64 0, i32 7
  %548 = load ptr, ptr %547, align 8, !tbaa !68
  %549 = icmp eq ptr %548, null
  br i1 %549, label %555, label %550

550:                                              ; preds = %546
  %551 = getelementptr inbounds %struct.Object, ptr %548, i64 0, i32 53
  %552 = load i16, ptr %551, align 4, !tbaa !162
  %553 = and i16 %552, 1
  %554 = icmp eq i16 %553, 0
  br i1 %554, label %555, label %587

555:                                              ; preds = %543, %550, %546
  %556 = getelementptr inbounds %struct.Scene, ptr %25, i64 0, i32 5
  %557 = load ptr, ptr %556, align 8, !tbaa !70
  %558 = icmp eq ptr %557, null
  br i1 %558, label %591, label %559

559:                                              ; preds = %555
  %560 = getelementptr inbounds %struct.View3D, ptr %26, i64 0, i32 22
  br label %561

561:                                              ; preds = %559, %584
  %562 = phi ptr [ %557, %559 ], [ %585, %584 ]
  %563 = getelementptr inbounds %struct.Base, ptr %562, i64 0, i32 4
  %564 = load i32, ptr %563, align 8, !tbaa !163
  %565 = and i32 %564, 1
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %584, label %567

567:                                              ; preds = %561
  %568 = getelementptr inbounds %struct.Base, ptr %562, i64 0, i32 2
  %569 = load i32, ptr %568, align 8, !tbaa !164
  %570 = load i32, ptr %560, align 8, !tbaa !165
  %571 = and i32 %570, %569
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %584, label %573

573:                                              ; preds = %567
  %574 = getelementptr inbounds %struct.Base, ptr %562, i64 0, i32 7
  %575 = load ptr, ptr %574, align 8, !tbaa !68
  %576 = getelementptr inbounds %struct.ID, ptr %575, i64 0, i32 3
  %577 = load ptr, ptr %576, align 8, !tbaa !166
  %578 = icmp eq ptr %577, null
  br i1 %578, label %579, label %584

579:                                              ; preds = %573
  %580 = getelementptr inbounds %struct.Object, ptr %575, i64 0, i32 102
  %581 = load i8, ptr %580, align 8, !tbaa !167
  %582 = and i8 %581, 1
  %583 = icmp eq i8 %582, 0
  br i1 %583, label %587, label %584

584:                                              ; preds = %561, %567, %573, %579
  %585 = load ptr, ptr %562, align 8, !tbaa !70
  %586 = icmp eq ptr %585, null
  br i1 %586, label %591, label %561, !llvm.loop !168

587:                                              ; preds = %579, %550
  %588 = phi ptr [ %548, %550 ], [ %575, %579 ]
  %589 = getelementptr inbounds %struct.Object, ptr %588, i64 0, i32 47, i64 2
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %589) #17
  %590 = getelementptr inbounds %struct.Object, ptr %588, i64 0, i32 47, i64 1
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %590) #17
  br label %591

591:                                              ; preds = %584, %555, %587, %538, %540, %491
  %592 = phi i32 [ %492, %491 ], [ %539, %538 ], [ 0, %540 ], [ 1, %587 ], [ 1, %555 ], [ 1, %584 ]
  ret i32 %592
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #7 !PGOFuncName !169 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !45
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @transpose_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: optsize
declare zeroext i8 @BM_select_history_active_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_editselection_normal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_editselection_plane(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !170 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #17
  %4 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #17
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !171 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !172
  %4 = and i8 %3, 1
  ret i8 %4
}

; Function Attrs: optsize
declare void @BM_face_calc_plane(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !173 {
  %3 = load float, ptr %1, align 4, !tbaa !45
  %4 = load float, ptr %0, align 4, !tbaa !45
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !45
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !45
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !45
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !45
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !45
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !45
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !174 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !175
  %4 = tail call ptr %3(ptr noundef %0) #15
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @bm_mesh_verts_select_get_n(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !177 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !113
  %6 = tail call fastcc i32 @min_ii(i32 noundef %2, i32 noundef %5) #17
  %7 = tail call fastcc i32 @bm_mesh_elems_select_get_n__internal(ptr noundef %0, ptr noundef %1, i32 noundef %6, i32 noundef 1, i8 noundef zeroext 1) #17
  ret i32 %7
}

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !178 {
  %3 = load float, ptr %0, align 4, !tbaa !45
  %4 = load float, ptr %1, align 4, !tbaa !45
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !45
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !45
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !45
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !45
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !179 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !45
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !45
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !45
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BM_edge_calc_length_squared(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_boundary(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !180 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !181
  %8 = icmp eq ptr %7, %3
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %5 ]
  ret i8 %11
}

; Function Attrs: optsize
declare void @BM_edge_ordered_verts(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !182 {
  %4 = load float, ptr %1, align 4, !tbaa !45
  %5 = load float, ptr %2, align 4, !tbaa !45
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !45
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !45
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !45
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !45
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !45
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !45
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare void @BM_vert_tri_calc_plane(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @bm_mesh_edges_select_get_n(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !PGOFuncName !183 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !114
  %5 = tail call fastcc i32 @min_ii(i32 noundef 1, i32 noundef %4) #17
  %6 = tail call fastcc i32 @bm_mesh_elems_select_get_n__internal(ptr noundef %0, ptr noundef %1, i32 noundef %5, i32 noundef 2, i8 noundef zeroext 2) #17
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @BM_mesh_active_vert_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !184 {
  %4 = load float, ptr %1, align 4, !tbaa !45
  %5 = load float, ptr %2, align 4, !tbaa !45
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !45
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !45
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !45
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !45
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !45
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !45
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BM_vert_is_edge_pair(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #6 !PGOFuncName !185 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !116
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !120
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @BKE_curve_editNurbs_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_curve_nurb_vert_active_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_nurb_bezt_calc_normal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_nurb_bezt_calc_plane(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @quat_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_armature_ebone_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_pose_channel_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @count_bone_select(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #10 !PGOFuncName !186 {
  %4 = load ptr, ptr %1, align 8, !tbaa !70
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
  %13 = load i32, ptr %12, align 8, !tbaa !159
  %14 = and i32 %13, -9
  store i32 %14, ptr %12, align 8, !tbaa !159
  br i1 %7, label %27, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.Bone, ptr %10, i64 0, i32 25
  %17 = load i32, ptr %16, align 8, !tbaa !187
  %18 = load i32, ptr %8, align 8, !tbaa !151
  %19 = and i32 %18, %17
  %20 = icmp eq i32 %19, 0
  %21 = and i32 %13, 1
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = or i32 %13, 8
  store i32 %25, ptr %12, align 8, !tbaa !159
  %26 = add nsw i32 %11, 1
  br label %27

27:                                               ; preds = %15, %24, %9
  %28 = phi i8 [ 0, %24 ], [ 1, %15 ], [ 0, %9 ]
  %29 = phi i32 [ %26, %24 ], [ %11, %15 ], [ %11, %9 ]
  %30 = getelementptr inbounds %struct.Bone, ptr %10, i64 0, i32 4
  %31 = tail call fastcc i32 @count_bone_select(ptr noundef %0, ptr noundef nonnull %30, i8 noundef zeroext %28) #17
  %32 = add nsw i32 %31, %29
  %33 = load ptr, ptr %10, align 8, !tbaa !70
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %9, !llvm.loop !188

35:                                               ; preds = %27, %3
  %36 = phi i32 [ 0, %3 ], [ %32, %27 ]
  ret i32 %36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !189 {
  %4 = load float, ptr %1, align 4, !tbaa !45
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !45
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !45
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !45
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !45
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_reports_prepend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_base(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_uniquename_cb(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @uniqueOrientationNameCheck(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !190 {
  %3 = tail call fastcc ptr @findOrientationName(ptr noundef %0, ptr noundef %1) #17
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !191 {
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %4, align 4, !tbaa !192
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %5, align 8, !tbaa !193
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %6, align 8, !tbaa !175
  switch i8 %2, label %13 [
    i8 1, label %7
    i8 2, label %9
    i8 3, label %11
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  br label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  br label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  br label %14

13:                                               ; preds = %3
  unreachable

14:                                               ; preds = %11, %9, %7
  %15 = phi ptr [ %12, %11 ], [ %10, %9 ], [ %8, %7 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !70
  store ptr %16, ptr %0, align 8, !tbaa !59
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @bm_mesh_elems_select_get_n__internal(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !194 {
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #16
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  %8 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %7) #17, !range !44
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = icmp eq ptr %12, null
  br i1 %13, label %38, label %14

14:                                               ; preds = %10, %30
  %15 = phi ptr [ %33, %30 ], [ %12, %10 ]
  %16 = phi i32 [ %31, %30 ], [ 0, %10 ]
  %17 = getelementptr inbounds %struct.BMEditSelection, ptr %15, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !195
  %19 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %18) #17
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.BMEditSelection, ptr %15, i64 0, i32 3
  %23 = load i8, ptr %22, align 8, !tbaa !106
  %24 = icmp eq i8 %23, %4
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = add i32 %16, 1
  %27 = zext i32 %16 to i64
  %28 = getelementptr inbounds ptr, ptr %1, i64 %27
  store ptr %18, ptr %28, align 8, !tbaa !70
  %29 = icmp eq i32 %26, %2
  br i1 %29, label %35, label %30

30:                                               ; preds = %25, %14
  %31 = phi i32 [ %26, %25 ], [ %16, %14 ]
  %32 = getelementptr inbounds %struct.BMEditSelection, ptr %15, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !70
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %14, !llvm.loop !196

35:                                               ; preds = %30, %25
  %36 = phi i32 [ %31, %30 ], [ %2, %25 ]
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %21, %10, %35, %5
  %39 = trunc i32 %3 to i8
  %40 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %0, i8 noundef zeroext %39) #17
  %41 = icmp eq ptr %40, null
  br i1 %41, label %56, label %42

42:                                               ; preds = %38, %52
  %43 = phi i32 [ %53, %52 ], [ 0, %38 ]
  %44 = phi ptr [ %54, %52 ], [ %40, %38 ]
  %45 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %44) #17
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = add i32 %43, 1
  %49 = zext i32 %43 to i64
  %50 = getelementptr inbounds ptr, ptr %1, i64 %49
  store ptr %44, ptr %50, align 8, !tbaa !70
  %51 = icmp eq i32 %48, %2
  br i1 %51, label %56, label %52

52:                                               ; preds = %42, %47
  %53 = phi i32 [ %48, %47 ], [ %43, %42 ]
  %54 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #17
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %42, !llvm.loop !197

56:                                               ; preds = %47, %52, %38, %35
  %57 = phi i32 [ %36, %35 ], [ 0, %38 ], [ %2, %47 ], [ %53, %52 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  ret i32 %57
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #13 !PGOFuncName !198 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !199 {
  %2 = load ptr, ptr %0, align 8, !tbaa !200
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind }
attributes #17 = { optsize }

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
!44 = !{i8 0, i8 2}
!45 = !{!41, !41, i64 0}
!46 = !{!"transform_orientations.c:copy_v3_v3"}
!47 = !{!"transform_orientations.c:normalize_v3"}
!48 = !{!"transform_orientations.c:cross_v3_v3v3"}
!49 = !{!"transform_orientations.c:is_zero_v3"}
!50 = !{!"transform_orientations.c:normalize_v3_v3"}
!51 = !{!"transform_orientations.c:negate_v3_v3"}
!52 = !{!53, !42, i64 136}
!53 = !{!"Object", !54, i64 0, !36, i64 120, !36, i64 128, !42, i64 136, !42, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !55, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !40, i64 432, !40, i64 436, !36, i64 440, !36, i64 448, !40, i64 456, !40, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !41, i64 616, !41, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !40, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !37, i64 966, !37, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !37, i64 1042, !37, i64 1043, !42, i64 1044, !37, i64 1046, !37, i64 1047, !41, i64 1048, !41, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !41, i64 1120, !42, i64 1124, !42, i64 1126, !37, i64 1128, !40, i64 1144, !40, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !42, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !42, i64 1266, !41, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !56, i64 1304, !56, i64 1312, !40, i64 1320, !40, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!54 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !42, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!55 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!56 = !{!"long", !37, i64 0}
!57 = !{!53, !40, i64 432}
!58 = !{!"transform_orientations.c:createViewSpace"}
!59 = !{!37, !37, i64 0}
!60 = !{!61, !37, i64 809}
!61 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !37, i64 696, !37, i64 760, !41, i64 776, !41, i64 780, !41, i64 784, !41, i64 788, !37, i64 792, !41, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !42, i64 824, !42, i64 826, !37, i64 828, !42, i64 844, !42, i64 846, !41, i64 848, !37, i64 852, !41, i64 864, !37, i64 868}
!62 = !{!35, !36, i64 96}
!63 = !{!"transform_orientations.c:createMeshSpace"}
!64 = !{i32 0, i32 5}
!65 = !{!"transform_orientations.c:createBoneSpace"}
!66 = !{!"transform_orientations.c:createCurveSpace"}
!67 = !{!"transform_orientations.c:createObjectSpace"}
!68 = !{!69, !36, i64 32}
!69 = !{!"Base", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !42, i64 28, !42, i64 30, !36, i64 32}
!70 = !{!36, !36, i64 0}
!71 = !{!"transform_orientations.c:findOrientationName"}
!72 = !{!"transform_orientations.c:uniqueOrientationName"}
!73 = !{!74, !42, i64 1154}
!74 = !{!"TransInfo", !40, i64 0, !40, i64 4, !40, i64 8, !42, i64 12, !40, i64 16, !41, i64 20, !41, i64 24, !36, i64 32, !36, i64 40, !40, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !75, i64 80, !76, i64 296, !78, i64 440, !79, i64 584, !40, i64 640, !41, i64 644, !37, i64 648, !37, i64 668, !37, i64 680, !37, i64 688, !42, i64 696, !42, i64 698, !37, i64 700, !37, i64 712, !37, i64 716, !37, i64 780, !37, i64 844, !37, i64 908, !42, i64 972, !42, i64 974, !37, i64 976, !37, i64 977, !37, i64 980, !37, i64 992, !37, i64 1028, !37, i64 1064, !36, i64 1128, !36, i64 1136, !36, i64 1144, !42, i64 1152, !42, i64 1154, !42, i64 1156, !42, i64 1158, !42, i64 1160, !37, i64 1164, !37, i64 1180, !37, i64 1196, !37, i64 1208, !37, i64 1220, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !37, i64 1296, !41, i64 1304, !36, i64 1312, !37, i64 1320, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384}
!75 = !{!"TransCon", !42, i64 0, !37, i64 2, !37, i64 52, !37, i64 88, !37, i64 124, !37, i64 160, !37, i64 172, !40, i64 180, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208}
!76 = !{!"TransSnap", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11, !42, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !37, i64 52, !37, i64 64, !39, i64 72, !36, i64 88, !41, i64 96, !77, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136}
!77 = !{!"double", !37, i64 0}
!78 = !{!"NumInput", !42, i64 0, !40, i64 4, !37, i64 8, !37, i64 20, !42, i64 22, !37, i64 24, !37, i64 32, !37, i64 44, !37, i64 56, !42, i64 68, !37, i64 70, !40, i64 136}
!79 = !{!"MouseInput", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 24, !37, i64 28, !37, i64 36, !41, i64 44, !36, i64 48}
!80 = !{!35, !42, i64 238}
!81 = !{!74, !36, i64 1248}
!82 = !{!83, !42, i64 214}
!83 = !{!"ARegion", !36, i64 0, !36, i64 8, !84, i64 16, !85, i64 176, !85, i64 192, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !42, i64 216, !42, i64 218, !41, i64 220, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !42, i64 232, !42, i64 234, !42, i64 236, !42, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!84 = !{!"View2D", !43, i64 0, !43, i64 16, !85, i64 32, !85, i64 48, !85, i64 64, !37, i64 80, !37, i64 88, !41, i64 96, !41, i64 100, !42, i64 104, !42, i64 106, !42, i64 108, !42, i64 110, !42, i64 112, !42, i64 114, !42, i64 116, !42, i64 118, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !36, i64 128, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!85 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!86 = !{!83, !36, i64 376}
!87 = !{!88, !36, i64 168}
!88 = !{!"Scene", !54, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !42, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !89, i64 280, !96, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !42, i64 4376, !42, i64 4378, !40, i64 4380, !39, i64 4384, !97, i64 4400, !98, i64 4416, !101, i64 4600, !36, i64 4608, !102, i64 4616, !36, i64 4640, !56, i64 4648, !56, i64 4656, !91, i64 4664, !92, i64 4824, !103, i64 4888, !36, i64 4952}
!89 = !{!"RenderData", !90, i64 0, !36, i64 248, !36, i64 256, !93, i64 264, !94, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !41, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !42, i64 432, !42, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !42, i64 456, !42, i64 458, !42, i64 460, !42, i64 462, !42, i64 464, !42, i64 466, !40, i64 468, !42, i64 472, !42, i64 474, !42, i64 476, !42, i64 478, !42, i64 480, !42, i64 482, !40, i64 484, !40, i64 488, !42, i64 492, !42, i64 494, !40, i64 496, !40, i64 500, !42, i64 504, !42, i64 506, !42, i64 508, !42, i64 510, !42, i64 512, !37, i64 514, !37, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !42, i64 528, !42, i64 530, !42, i64 532, !42, i64 534, !42, i64 536, !42, i64 538, !42, i64 540, !42, i64 542, !43, i64 544, !43, i64 560, !85, i64 576, !39, i64 592, !42, i64 608, !42, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !40, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !42, i64 648, !42, i64 650, !42, i64 652, !42, i64 654, !42, i64 656, !42, i64 658, !41, i64 660, !41, i64 664, !42, i64 668, !42, i64 670, !41, i64 672, !41, i64 676, !37, i64 680, !40, i64 1704, !42, i64 1708, !42, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !40, i64 2520, !42, i64 2524, !42, i64 2526, !41, i64 2528, !41, i64 2532, !42, i64 2536, !42, i64 2538, !41, i64 2540, !42, i64 2544, !42, i64 2546, !40, i64 2548, !42, i64 2552, !42, i64 2554, !42, i64 2556, !42, i64 2558, !41, i64 2560, !41, i64 2564, !36, i64 2568, !40, i64 2576, !41, i64 2580, !37, i64 2584, !95, i64 2616, !40, i64 3976, !40, i64 3980}
!90 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !42, i64 8, !42, i64 10, !41, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !91, i64 24, !92, i64 184}
!91 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 72, !41, i64 136, !41, i64 140, !36, i64 144, !36, i64 152}
!92 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!93 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !42, i64 48, !42, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!94 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !41, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64}
!95 = !{!"BakeData", !90, i64 0, !37, i64 248, !42, i64 1272, !42, i64 1274, !42, i64 1276, !42, i64 1278, !41, i64 1280, !41, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!96 = !{!"AudioData", !40, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !42, i64 20, !42, i64 22, !41, i64 24, !41, i64 28}
!97 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!98 = !{!"GameData", !97, i64 0, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !37, i64 34, !99, i64 40, !42, i64 64, !42, i64 66, !41, i64 68, !100, i64 72, !41, i64 128, !41, i64 132, !40, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!99 = !{!"GameDome", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !41, i64 8, !41, i64 12, !36, i64 16}
!100 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !40, i64 40, !41, i64 44, !41, i64 48, !42, i64 52, !42, i64 54}
!101 = !{!"UnitSettings", !41, i64 0, !37, i64 4, !37, i64 5, !42, i64 6}
!102 = !{!"PhysicsSettings", !37, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!103 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!104 = !{!105, !36, i64 0}
!105 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !40, i64 16, !36, i64 24, !40, i64 32, !36, i64 40, !36, i64 48, !56, i64 56, !36, i64 64, !40, i64 72, !36, i64 80, !40, i64 88, !42, i64 92, !42, i64 94, !36, i64 96, !40, i64 104}
!106 = !{!107, !37, i64 24}
!107 = !{!"BMEditSelection", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24}
!108 = !{!109, !40, i64 24}
!109 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !40, i64 128, !36, i64 136, !110, i64 144, !110, i64 344, !110, i64 544, !110, i64 744, !42, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !39, i64 960, !36, i64 976, !39, i64 984, !36, i64 1000}
!110 = !{!"CustomData", !36, i64 0, !37, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !36, i64 184, !36, i64 192}
!111 = distinct !{!111, !112}
!112 = !{!"llvm.loop.mustprogress"}
!113 = !{!109, !40, i64 16}
!114 = !{!109, !40, i64 20}
!115 = distinct !{!115, !112}
!116 = !{!117, !36, i64 24}
!117 = !{!"BMEdge", !118, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !119, i64 48, !119, i64 64}
!118 = !{!"BMHeader", !36, i64 0, !40, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!119 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!120 = !{!117, !36, i64 32}
!121 = !{!117, !36, i64 40}
!122 = !{!123, !36, i64 16}
!123 = !{!"BMLoop", !118, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!124 = !{!125, !36, i64 48}
!125 = !{!"BMVert", !118, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!126 = !{!117, !36, i64 48}
!127 = distinct !{!127, !112}
!128 = !{!53, !36, i64 296}
!129 = !{!130, !42, i64 16}
!130 = !{!"Nurb", !36, i64 0, !36, i64 8, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !40, i64 24, !40, i64 28, !37, i64 32, !42, i64 36, !42, i64 38, !42, i64 40, !42, i64 42, !42, i64 44, !42, i64 46, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !42, i64 80, !42, i64 82, !40, i64 84}
!131 = !{!132, !42, i64 248}
!132 = !{!"Curve", !54, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !42, i64 244, !42, i64 246, !42, i64 248, !42, i64 250, !41, i64 252, !41, i64 256, !40, i64 260, !42, i64 264, !42, i64 266, !40, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !42, i64 284, !42, i64 286, !42, i64 288, !42, i64 290, !40, i64 292, !40, i64 296, !37, i64 300, !42, i64 304, !37, i64 306, !37, i64 307, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !41, i64 340, !41, i64 344, !40, i64 348, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !40, i64 488, !40, i64 492, !36, i64 496, !133, i64 504, !41, i64 512, !41, i64 516, !41, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!133 = !{!"CharInfo", !42, i64 0, !42, i64 2, !37, i64 4, !37, i64 5, !42, i64 6}
!134 = !{!130, !36, i64 72}
!135 = !{!130, !40, i64 24}
!136 = !{!137, !37, i64 51}
!137 = !{!"BezTriple", !37, i64 0, !41, i64 36, !41, i64 40, !41, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !41, i64 56, !41, i64 60, !41, i64 64, !37, i64 68}
!138 = !{!137, !37, i64 52}
!139 = !{!137, !37, i64 53}
!140 = distinct !{!140, !112}
!141 = distinct !{!141, !112}
!142 = !{!143, !36, i64 240}
!143 = !{!"MetaBall", !54, i64 0, !36, i64 120, !39, i64 128, !39, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 185, !42, i64 186, !42, i64 188, !42, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !41, i64 228, !41, i64 232, !41, i64 236, !36, i64 240}
!144 = !{!143, !36, i64 160}
!145 = !{!146, !42, i64 26}
!146 = !{!"MetaElem", !36, i64 0, !36, i64 8, !36, i64 16, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !37, i64 44, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !36, i64 88, !36, i64 96}
!147 = distinct !{!147, !112}
!148 = !{!149, !36, i64 176}
!149 = !{!"bArmature", !54, i64 0, !36, i64 120, !39, i64 128, !39, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !42, i64 208, !42, i64 210, !40, i64 212, !40, i64 216, !40, i64 220, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252}
!150 = !{!149, !36, i64 160}
!151 = !{!149, !40, i64 216}
!152 = !{!153, !40, i64 136}
!153 = !{!"EditBone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !41, i64 104, !37, i64 108, !37, i64 120, !40, i64 132, !40, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !42, i64 180}
!154 = !{!153, !40, i64 132}
!155 = distinct !{!155, !112}
!156 = !{!53, !36, i64 288}
!157 = !{!158, !36, i64 120}
!158 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !37, i64 40, !42, i64 104, !42, i64 106, !42, i64 108, !42, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !39, i64 144, !39, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !41, i64 264, !42, i64 268, !42, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !41, i64 524, !41, i64 528, !41, i64 532, !36, i64 536}
!159 = !{!160, !40, i64 176}
!160 = !{!"Bone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !37, i64 48, !41, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !40, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !37, i64 308, !40, i64 320, !42, i64 324, !37, i64 326}
!161 = distinct !{!161, !112}
!162 = !{!53, !42, i64 948}
!163 = !{!69, !40, i64 24}
!164 = !{!69, !40, i64 16}
!165 = !{!35, !40, i64 224}
!166 = !{!53, !36, i64 24}
!167 = !{!53, !37, i64 1160}
!168 = distinct !{!168, !112}
!169 = !{!"transform_orientations.c:zero_v3"}
!170 = !{!"transform_orientations.c:BM_iter_new"}
!171 = !{!"transform_orientations.c:_bm_elem_flag_test"}
!172 = !{!118, !37, i64 13}
!173 = !{!"transform_orientations.c:add_v3_v3"}
!174 = !{!"transform_orientations.c:BM_iter_step"}
!175 = !{!176, !36, i64 48}
!176 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !40, i64 56, !37, i64 60}
!177 = !{!"transform_orientations.c:bm_mesh_verts_select_get_n"}
!178 = !{!"transform_orientations.c:dot_v3v3"}
!179 = !{!"transform_orientations.c:negate_v3"}
!180 = !{!"transform_orientations.c:BM_edge_is_boundary"}
!181 = !{!123, !36, i64 40}
!182 = !{!"transform_orientations.c:sub_v3_v3v3"}
!183 = !{!"transform_orientations.c:bm_mesh_edges_select_get_n"}
!184 = !{!"transform_orientations.c:add_v3_v3v3"}
!185 = !{!"transform_orientations.c:BM_edge_other_vert"}
!186 = !{!"transform_orientations.c:count_bone_select"}
!187 = !{!160, !40, i64 320}
!188 = distinct !{!188, !112}
!189 = !{!"transform_orientations.c:mul_v3_v3fl"}
!190 = !{!"transform_orientations.c:uniqueOrientationNameCheck"}
!191 = !{!"transform_orientations.c:BM_iter_init"}
!192 = !{!176, !37, i64 60}
!193 = !{!176, !36, i64 40}
!194 = !{!"transform_orientations.c:bm_mesh_elems_select_get_n__internal"}
!195 = !{!107, !36, i64 16}
!196 = distinct !{!196, !112}
!197 = distinct !{!197, !112}
!198 = !{!"transform_orientations.c:min_ii"}
!199 = !{!"transform_orientations.c:BLI_listbase_is_empty"}
!200 = !{!39, !36, i64 0}
