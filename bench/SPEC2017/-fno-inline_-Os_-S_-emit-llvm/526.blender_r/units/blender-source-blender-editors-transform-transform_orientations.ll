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
  %8 = load i8, ptr %7, align 4, !tbaa !5
  %9 = icmp ugt i8 %8, 4
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i8 0, ptr %7, align 4, !tbaa !5
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
  %8 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef %0) #17, !range !15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0.000000e+00, ptr %11, align 8, !tbaa !16
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %3, align 8, !tbaa !16
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
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %1, align 4, !tbaa !16
  store float %3, ptr %0, align 4, !tbaa !16
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !16
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !16
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !16
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #17
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !16
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !16
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !16
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !16
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !16
  %15 = load float, ptr %8, align 4, !tbaa !16
  %16 = load float, ptr %2, align 4, !tbaa !16
  %17 = load float, ptr %1, align 4, !tbaa !16
  %18 = load float, ptr %6, align 4, !tbaa !16
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !16
  %23 = load float, ptr %1, align 4, !tbaa !16
  %24 = load float, ptr %10, align 4, !tbaa !16
  %25 = load float, ptr %4, align 4, !tbaa !16
  %26 = load float, ptr %2, align 4, !tbaa !16
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v3(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load float, ptr %0, align 4, !tbaa !16
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !16
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !16
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
  %9 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %8) #17, !range !15
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float 1.000000e+00, ptr %12, align 4, !tbaa !16
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
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
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
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %1, align 4, !tbaa !16
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !16
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !16
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !16
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !16
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !16
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
  %16 = load i16, ptr %15, align 8, !tbaa !17
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
  %27 = load i32, ptr %26, align 8, !tbaa !22
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
define internal fastcc ptr @createViewSpace(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 2
  call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef nonnull %8) #15
  call void @normalize_m3(ptr noundef nonnull %4) #15
  %9 = load i8, ptr %1, align 1, !tbaa !23
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = call ptr @CTX_wm_view3d(ptr noundef %0) #15
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 25
  %14 = load i8, ptr %13, align 1, !tbaa !24
  %15 = icmp eq i8 %14, 2
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.View3D, ptr %12, i64 0, i32 15
  %18 = load ptr, ptr %17, align 8, !tbaa !26
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
define internal fastcc ptr @createMeshSpace(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  %8 = call i32 @getTransformOrientation(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 0) #17, !range !27
  switch i32 %8, label %27 [
    i32 2, label %9
    i32 3, label %13
    i32 4, label %17
  ]

9:                                                ; preds = %4
  %10 = call zeroext i8 @createSpaceNormal(ptr noundef nonnull %5, ptr noundef nonnull %6) #17, !range !15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  call void @BKE_reports_prepend(ptr noundef %1, ptr noundef nonnull @.str.7) #15
  br label %27

13:                                               ; preds = %4
  %14 = call zeroext i8 @createSpaceNormalTangent(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #17, !range !15
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  call void @BKE_reports_prepend(ptr noundef %1, ptr noundef nonnull @.str.9) #15
  br label %27

17:                                               ; preds = %4
  %18 = call zeroext i8 @createSpaceNormalTangent(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #17, !range !15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @BKE_reports_prepend(ptr noundef %1, ptr noundef nonnull @.str.11) #15
  br label %27

21:                                               ; preds = %17, %13, %9
  %22 = phi ptr [ @.str.8, %9 ], [ @.str.10, %13 ], [ @.str.12, %17 ]
  %23 = load i8, ptr %2, align 1, !tbaa !23
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
define internal fastcc ptr @createBoneSpace(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  %8 = call i32 @getTransformOrientation(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 0) #17, !range !27
  %9 = call zeroext i8 @createSpaceNormalTangent(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #17, !range !15
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  call void @BKE_reports_prepend(ptr noundef %1, ptr noundef nonnull @.str.13) #15
  br label %17

12:                                               ; preds = %4
  %13 = load i8, ptr %2, align 1, !tbaa !23
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
define internal fastcc ptr @createCurveSpace(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  %8 = call i32 @getTransformOrientation(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 0) #17, !range !27
  %9 = call zeroext i8 @createSpaceNormalTangent(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #17, !range !15
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  call void @BKE_reports_prepend(ptr noundef %1, ptr noundef nonnull @.str.15) #15
  br label %17

12:                                               ; preds = %4
  %13 = load i8, ptr %2, align 1, !tbaa !23
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
define internal fastcc ptr @createObjectSpace(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = tail call ptr @CTX_data_active_base(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !28
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef nonnull %10) #15
  call void @normalize_m3(ptr noundef nonnull %4) #15
  %11 = load i8, ptr %1, align 1, !tbaa !23
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
  store i8 %10, ptr %11, align 4, !tbaa !5
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
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !30
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
define internal fastcc ptr @findOrientationName(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @BLI_findstring(ptr noundef %0, ptr noundef %1, i32 noundef 16) #15
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uniqueOrientationName(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
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
  store i8 %6, ptr %7, align 4, !tbaa !5
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
  %6 = load i8, ptr %5, align 4, !tbaa !5
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
  %8 = load i16, ptr %7, align 2, !tbaa !31
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
  %29 = load i32, ptr %28, align 8, !tbaa !22
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
  %40 = load i16, ptr %39, align 2, !tbaa !38
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
  %54 = load ptr, ptr %53, align 8, !tbaa !39
  %55 = getelementptr inbounds %struct.ARegion, ptr %54, i64 0, i32 8
  %56 = load i16, ptr %55, align 2, !tbaa !40
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.ARegion, ptr %54, i64 0, i32 30
  %60 = load ptr, ptr %59, align 8, !tbaa !44
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
  %70 = tail call zeroext i8 @applyTransformOrientation(ptr noundef %0, ptr noundef nonnull %68, ptr noundef nonnull %69) #17, !range !15
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
  %6 = call i32 @getTransformOrientation(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext %2) #17, !range !27
  switch i32 %6, label %19 [
    i32 1, label %7
    i32 2, label %10
    i32 3, label %13
    i32 4, label %16
  ]

7:                                                ; preds = %3
  %8 = call zeroext i8 @createSpaceNormalTangent(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #17, !range !15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %19, label %20

10:                                               ; preds = %3
  %11 = call zeroext i8 @createSpaceNormal(ptr noundef %1, ptr noundef nonnull %4) #17, !range !15
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %19, label %20

13:                                               ; preds = %3
  %14 = call zeroext i8 @createSpaceNormalTangent(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #17, !range !15
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %20

16:                                               ; preds = %3
  %17 = call zeroext i8 @createSpaceNormalTangent(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #17, !range !15
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
  %29 = load ptr, ptr %28, align 8, !tbaa !45
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.Base, ptr %29, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !28
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
  %41 = load i16, ptr %40, align 8, !tbaa !17
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
  %46 = load ptr, ptr %43, align 8, !tbaa !62
  %47 = call zeroext i8 @BM_select_history_active_get(ptr noundef %46, ptr noundef nonnull %7) #15
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  call void @BM_editselection_normal(ptr noundef nonnull %7, ptr noundef %1) #15
  call void @BM_editselection_plane(ptr noundef nonnull %7, ptr noundef %2) #15
  %50 = getelementptr inbounds %struct.BMEditSelection, ptr %7, i64 0, i32 3
  %51 = load i8, ptr %50, align 8, !tbaa !64
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
  %56 = load ptr, ptr %43, align 8, !tbaa !62
  %57 = getelementptr inbounds %struct.BMesh, ptr %56, i64 0, i32 6
  %58 = load i32, ptr %57, align 8, !tbaa !66
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
  br i1 %71, label %72, label %63, !llvm.loop !69

72:                                               ; preds = %69, %60
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #16
  br label %286

73:                                               ; preds = %55
  %74 = getelementptr inbounds %struct.BMesh, ptr %56, i64 0, i32 4
  %75 = load i32, ptr %74, align 8, !tbaa !71
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %77, label %166

77:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #16
  %78 = call fastcc i32 @bm_mesh_verts_select_get_n(ptr noundef nonnull %56, ptr noundef nonnull %10, i32 noundef 3) #17
  %79 = icmp eq i32 %78, 3
  br i1 %79, label %80, label %165

80:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #16
  %81 = load ptr, ptr %10, align 16, !tbaa !30
  %82 = getelementptr inbounds %struct.BMVert, ptr %81, i64 0, i32 2
  %83 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !30
  %85 = getelementptr inbounds %struct.BMVert, ptr %84, i64 0, i32 2
  %86 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 2
  %87 = load ptr, ptr %86, align 16, !tbaa !30
  %88 = getelementptr inbounds %struct.BMVert, ptr %87, i64 0, i32 2
  %89 = call float @normal_tri_v3(ptr noundef %1, ptr noundef nonnull %82, ptr noundef nonnull %85, ptr noundef nonnull %88) #15
  %90 = getelementptr inbounds %struct.BMVert, ptr %81, i64 0, i32 3
  %91 = getelementptr inbounds %struct.BMVert, ptr %84, i64 0, i32 3
  %92 = getelementptr inbounds %struct.BMVert, ptr %87, i64 0, i32 3
  %93 = load <2 x float>, ptr %90, align 4, !tbaa !16
  %94 = load <2 x float>, ptr %91, align 4, !tbaa !16
  %95 = fadd <2 x float> %93, %94
  %96 = load <2 x float>, ptr %92, align 4, !tbaa !16
  %97 = fadd <2 x float> %95, %96
  store <2 x float> %97, ptr %11, align 8, !tbaa !16
  %98 = getelementptr inbounds %struct.BMVert, ptr %81, i64 0, i32 3, i64 2
  %99 = load float, ptr %98, align 4, !tbaa !16
  %100 = getelementptr inbounds %struct.BMVert, ptr %84, i64 0, i32 3, i64 2
  %101 = load float, ptr %100, align 4, !tbaa !16
  %102 = fadd float %99, %101
  %103 = getelementptr inbounds %struct.BMVert, ptr %87, i64 0, i32 3, i64 2
  %104 = load float, ptr %103, align 4, !tbaa !16
  %105 = fadd float %102, %104
  %106 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  store float %105, ptr %106, align 8, !tbaa !16
  %107 = call fastcc float @dot_v3v3(ptr noundef nonnull %11, ptr noundef %1) #17
  %108 = fcmp olt float %107, 0.000000e+00
  br i1 %108, label %109, label %110

109:                                              ; preds = %80
  call fastcc void @negate_v3(ptr noundef %1) #17
  br label %110

110:                                              ; preds = %109, %80
  %111 = load ptr, ptr %43, align 8, !tbaa !62
  %112 = getelementptr inbounds %struct.BMesh, ptr %111, i64 0, i32 5
  %113 = load i32, ptr %112, align 4, !tbaa !72
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %163

115:                                              ; preds = %110, %139
  %116 = phi i64 [ %121, %139 ], [ 0, %110 ]
  %117 = phi ptr [ %141, %139 ], [ null, %110 ]
  %118 = phi float [ %140, %139 ], [ undef, %110 ]
  %119 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 %116
  %120 = load ptr, ptr %119, align 8, !tbaa !30
  %121 = add nuw nsw i64 %116, 1
  %122 = icmp eq i64 %121, 3
  %123 = and i64 %121, 4294967295
  %124 = select i1 %122, i64 0, i64 %123
  %125 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !30
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
  br i1 %142, label %143, label %115, !llvm.loop !73

143:                                              ; preds = %139
  %144 = icmp eq ptr %141, null
  br i1 %144, label %163, label %145

145:                                              ; preds = %143
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #16
  %146 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef nonnull %141) #17, !range !15
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds [2 x ptr], ptr %12, i64 0, i64 1
  call void @BM_edge_ordered_verts(ptr noundef nonnull %141, ptr noundef nonnull %12, ptr noundef nonnull %149) #15
  %150 = load ptr, ptr %12, align 16, !tbaa !30
  %151 = load ptr, ptr %149, align 8, !tbaa !30
  br label %158

152:                                              ; preds = %145
  %153 = getelementptr inbounds %struct.BMEdge, ptr %141, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !74
  store ptr %154, ptr %12, align 16, !tbaa !30
  %155 = getelementptr inbounds %struct.BMEdge, ptr %141, i64 0, i32 3
  %156 = load ptr, ptr %155, align 8, !tbaa !78
  %157 = getelementptr inbounds [2 x ptr], ptr %12, i64 0, i64 1
  store ptr %156, ptr %157, align 8, !tbaa !30
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
  %168 = load i32, ptr %167, align 4, !tbaa !72
  %169 = icmp eq i32 %168, 1
  %170 = icmp eq i32 %75, 2
  %171 = or i1 %170, %169
  br i1 %171, label %172, label %220

172:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #16
  store ptr null, ptr %14, align 8, !tbaa !30
  br i1 %169, label %173, label %183

173:                                              ; preds = %172
  %174 = call fastcc i32 @bm_mesh_edges_select_get_n(ptr noundef nonnull %56, ptr noundef nonnull %14) #17
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %219

176:                                              ; preds = %173
  %177 = load ptr, ptr %14, align 8, !tbaa !30
  %178 = getelementptr inbounds %struct.BMEdge, ptr %177, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !74
  store ptr %179, ptr %13, align 16, !tbaa !30
  %180 = getelementptr inbounds %struct.BMEdge, ptr %177, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !78
  %182 = getelementptr inbounds [2 x ptr], ptr %13, i64 0, i64 1
  store ptr %181, ptr %182, align 8, !tbaa !30
  br label %188

183:                                              ; preds = %172
  %184 = call fastcc i32 @bm_mesh_verts_select_get_n(ptr noundef nonnull %56, ptr noundef nonnull %13, i32 noundef 2) #17
  %185 = load ptr, ptr %13, align 16, !tbaa !30
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
  %196 = load ptr, ptr %43, align 8, !tbaa !62
  %197 = call ptr @BM_mesh_active_vert_get(ptr noundef %196) #15
  %198 = icmp eq ptr %197, %189
  br i1 %198, label %211, label %199

199:                                              ; preds = %195
  %200 = load ptr, ptr %14, align 8, !tbaa !30
  %201 = icmp eq ptr %200, null
  br i1 %201, label %212, label %202

202:                                              ; preds = %199
  %203 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef nonnull %200) #17, !range !15
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %212, label %205

205:                                              ; preds = %202
  %206 = getelementptr inbounds %struct.BMEdge, ptr %200, i64 0, i32 4
  %207 = load ptr, ptr %206, align 8, !tbaa !79
  %208 = getelementptr inbounds %struct.BMLoop, ptr %207, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !80
  %210 = icmp eq ptr %209, %190
  br i1 %210, label %212, label %211

211:                                              ; preds = %195, %205
  store ptr %189, ptr %13, align 16, !tbaa !30
  store ptr %190, ptr %192, align 8, !tbaa !30
  br label %212

212:                                              ; preds = %202, %199, %211, %205
  %213 = phi ptr [ %190, %202 ], [ %190, %199 ], [ %189, %211 ], [ %190, %205 ]
  %214 = getelementptr inbounds %struct.BMVert, ptr %213, i64 0, i32 3
  %215 = load ptr, ptr %192, align 8, !tbaa !30
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
  store ptr null, ptr %15, align 8, !tbaa !30
  %223 = call fastcc i32 @bm_mesh_verts_select_get_n(ptr noundef nonnull %56, ptr noundef nonnull %15, i32 noundef 1) #17
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %225, label %265

225:                                              ; preds = %222
  %226 = load ptr, ptr %15, align 8, !tbaa !30
  %227 = getelementptr inbounds %struct.BMVert, ptr %226, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %227) #17
  %228 = call zeroext i8 @BM_vert_is_edge_pair(ptr noundef %226) #15
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %265, label %230

230:                                              ; preds = %225
  %231 = getelementptr inbounds %struct.BMVert, ptr %226, i64 0, i32 4
  %232 = load ptr, ptr %231, align 8, !tbaa !82
  %233 = getelementptr inbounds %struct.BMEdge, ptr %232, i64 0, i32 5
  %234 = getelementptr inbounds %struct.BMEdge, ptr %232, i64 0, i32 3
  %235 = load ptr, ptr %234, align 8, !tbaa !78
  %236 = icmp eq ptr %226, %235
  %237 = zext i1 %236 to i64
  %238 = getelementptr inbounds %struct.BMDiskLink, ptr %233, i64 %237
  %239 = load ptr, ptr %238, align 8, !tbaa !84
  %240 = call fastcc ptr @BM_edge_other_vert(ptr noundef %232, ptr noundef %226) #17
  %241 = call fastcc ptr @BM_edge_other_vert(ptr noundef %239, ptr noundef %226) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #16
  %242 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef %232) #17, !range !15
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %230
  %245 = call float @BM_edge_calc_length_squared(ptr noundef nonnull %232) #15
  %246 = call float @BM_edge_calc_length_squared(ptr noundef %239) #15
  %247 = fcmp olt float %245, %246
  br i1 %247, label %256, label %255

248:                                              ; preds = %230
  %249 = getelementptr inbounds %struct.BMEdge, ptr %232, i64 0, i32 4
  %250 = load ptr, ptr %249, align 8, !tbaa !79
  %251 = getelementptr inbounds %struct.BMLoop, ptr %250, i64 0, i32 1
  %252 = load ptr, ptr %251, align 8, !tbaa !80
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
  %266 = call fastcc zeroext i8 @is_zero_v3(ptr noundef %2) #17, !range !15
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
  %272 = load ptr, ptr %43, align 8, !tbaa !62
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
  br i1 %283, label %284, label %275, !llvm.loop !85

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
  %290 = load ptr, ptr %289, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #16
  store ptr null, ptr %18, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #16
  store ptr null, ptr %19, align 8, !tbaa !30
  %291 = call ptr @BKE_curve_editNurbs_get(ptr noundef %290) #15
  %292 = icmp eq i8 %3, 0
  br i1 %292, label %305, label %293

293:                                              ; preds = %288
  %294 = call zeroext i8 @BKE_curve_nurb_vert_active_get(ptr noundef %290, ptr noundef nonnull %18, ptr noundef nonnull %19) #15
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %305, label %296

296:                                              ; preds = %293
  %297 = load ptr, ptr %18, align 8, !tbaa !30
  %298 = getelementptr inbounds %struct.Nurb, ptr %297, i64 0, i32 2
  %299 = load i16, ptr %298, align 8, !tbaa !87
  %300 = icmp eq i16 %299, 1
  br i1 %300, label %301, label %389

301:                                              ; preds = %296
  %302 = load ptr, ptr %19, align 8, !tbaa !30
  call void @BKE_nurb_bezt_calc_normal(ptr noundef nonnull %297, ptr noundef %302, ptr noundef %1) #15
  %303 = load ptr, ptr %18, align 8, !tbaa !30
  %304 = load ptr, ptr %19, align 8, !tbaa !30
  call void @BKE_nurb_bezt_calc_plane(ptr noundef %303, ptr noundef %304, ptr noundef %2) #15
  br label %389

305:                                              ; preds = %293, %288
  %306 = getelementptr inbounds %struct.Curve, ptr %290, i64 0, i32 16
  %307 = load i16, ptr %306, align 8, !tbaa !89
  %308 = load ptr, ptr %291, align 8, !tbaa !30
  store ptr %308, ptr %18, align 8, !tbaa !30
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
  %317 = load i16, ptr %316, align 8, !tbaa !87
  %318 = icmp eq i16 %317, 1
  br i1 %318, label %319, label %385

319:                                              ; preds = %314
  %320 = getelementptr inbounds %struct.Nurb, ptr %315, i64 0, i32 18
  %321 = load ptr, ptr %320, align 8, !tbaa !92
  store ptr %321, ptr %19, align 8, !tbaa !30
  %322 = getelementptr inbounds %struct.Nurb, ptr %315, i64 0, i32 6
  %323 = load i32, ptr %322, align 8, !tbaa !93
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %385, label %325

325:                                              ; preds = %319, %379
  %326 = phi ptr [ %381, %379 ], [ %321, %319 ]
  %327 = phi i32 [ %328, %379 ], [ %323, %319 ]
  %328 = add nsw i32 %327, -1
  br i1 %312, label %329, label %344

329:                                              ; preds = %325
  %330 = getelementptr inbounds %struct.BezTriple, ptr %326, i64 0, i32 7
  %331 = load i8, ptr %330, align 1, !tbaa !94
  %332 = and i8 %331, 1
  %333 = getelementptr inbounds %struct.BezTriple, ptr %326, i64 0, i32 8
  %334 = load i8, ptr %333, align 4, !tbaa !96
  %335 = shl i8 %334, 1
  %336 = and i8 %335, 2
  %337 = or disjoint i8 %336, %332
  %338 = zext nneg i8 %337 to i16
  %339 = getelementptr inbounds %struct.BezTriple, ptr %326, i64 0, i32 9
  %340 = load i8, ptr %339, align 1, !tbaa !97
  %341 = and i8 %340, 1
  %342 = icmp eq i8 %341, 0
  %343 = or disjoint i16 %338, 4
  br i1 %342, label %349, label %351

344:                                              ; preds = %325
  %345 = getelementptr inbounds %struct.BezTriple, ptr %326, i64 0, i32 8
  %346 = load i8, ptr %345, align 4, !tbaa !96
  %347 = and i8 %346, 1
  %348 = icmp eq i8 %347, 0
  br i1 %348, label %379, label %351

349:                                              ; preds = %329
  %350 = icmp eq i8 %337, 0
  br i1 %350, label %379, label %351

351:                                              ; preds = %329, %344, %349
  %352 = phi i16 [ %338, %349 ], [ %343, %329 ], [ 7, %344 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #16
  %353 = load i16, ptr %313, align 2, !tbaa !38
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
  %359 = load ptr, ptr %18, align 8, !tbaa !30
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
  %370 = load ptr, ptr %19, align 8, !tbaa !30
  %371 = getelementptr inbounds [3 x [3 x float]], ptr %370, i64 0, i64 1
  %372 = getelementptr inbounds [3 x [3 x float]], ptr %370, i64 0, i64 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %371, ptr noundef nonnull %372) #17
  %373 = call fastcc float @normalize_v3(ptr noundef nonnull %20) #17
  br label %374

374:                                              ; preds = %358, %369
  call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef nonnull %20) #17
  br label %375

375:                                              ; preds = %374, %366
  %376 = load ptr, ptr %18, align 8, !tbaa !30
  %377 = load ptr, ptr %19, align 8, !tbaa !30
  call void @BKE_nurb_bezt_calc_plane(ptr noundef %376, ptr noundef %377, ptr noundef nonnull %20) #15
  call fastcc void @add_v3_v3(ptr noundef %2, ptr noundef nonnull %20) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #16
  %378 = load ptr, ptr %19, align 8, !tbaa !30
  br label %379

379:                                              ; preds = %344, %375, %349
  %380 = phi ptr [ %326, %344 ], [ %378, %375 ], [ %326, %349 ]
  %381 = getelementptr inbounds %struct.BezTriple, ptr %380, i64 1
  store ptr %381, ptr %19, align 8, !tbaa !30
  %382 = icmp eq i32 %328, 0
  br i1 %382, label %383, label %325, !llvm.loop !98

383:                                              ; preds = %379
  %384 = load ptr, ptr %18, align 8, !tbaa !30
  br label %385

385:                                              ; preds = %383, %319, %314
  %386 = phi ptr [ %384, %383 ], [ %315, %319 ], [ %315, %314 ]
  %387 = load ptr, ptr %386, align 8, !tbaa !30
  store ptr %387, ptr %18, align 8, !tbaa !30
  %388 = icmp eq ptr %387, null
  br i1 %388, label %389, label %314, !llvm.loop !99

389:                                              ; preds = %385, %305, %296, %301
  %390 = call fastcc zeroext i8 @is_zero_v3(ptr noundef %1) #17, !range !15
  %391 = icmp eq i8 %390, 0
  %392 = select i1 %391, i32 4, i32 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #16
  br label %489

393:                                              ; preds = %37
  %394 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 19
  %395 = load ptr, ptr %394, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %21) #16
  %396 = icmp eq i8 %3, 0
  br i1 %396, label %405, label %397

397:                                              ; preds = %393
  %398 = getelementptr inbounds %struct.MetaBall, ptr %395, i64 0, i32 18
  %399 = load ptr, ptr %398, align 8, !tbaa !100
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
  %407 = load ptr, ptr %406, align 8, !tbaa !102
  %408 = load ptr, ptr %407, align 8, !tbaa !30
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
  %419 = load i16, ptr %418, align 2, !tbaa !103
  %420 = and i16 %419, 1
  %421 = icmp eq i16 %420, 0
  br i1 %421, label %422, label %425

422:                                              ; preds = %416
  %423 = load ptr, ptr %417, align 8, !tbaa !30
  %424 = icmp eq ptr %423, null
  br i1 %424, label %429, label %416, !llvm.loop !105

425:                                              ; preds = %416
  %426 = getelementptr inbounds %struct.MetaElem, ptr %417, i64 0, i32 10
  call void @quat_to_mat3(ptr noundef nonnull %21, ptr noundef nonnull %426) #15
  call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef nonnull %411) #17
  call fastcc void @add_v3_v3(ptr noundef %2, ptr noundef nonnull %412) #17
  %427 = load ptr, ptr %417, align 8, !tbaa !30
  %428 = icmp eq ptr %427, null
  br i1 %428, label %430, label %413, !llvm.loop !105

429:                                              ; preds = %422
  br i1 %415, label %434, label %430

430:                                              ; preds = %425, %401, %429
  %431 = call fastcc zeroext i8 @is_zero_v3(ptr noundef %2) #17, !range !15
  %432 = icmp eq i8 %431, 0
  %433 = select i1 %432, i32 4, i32 0
  br label %434

434:                                              ; preds = %405, %430, %429
  %435 = phi i32 [ 0, %429 ], [ %433, %430 ], [ 0, %405 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %21) #16
  br label %489

436:                                              ; preds = %37
  %437 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 19
  %438 = load ptr, ptr %437, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %22) #16
  %439 = icmp eq i8 %3, 0
  br i1 %439, label %447, label %440

440:                                              ; preds = %436
  %441 = getelementptr inbounds %struct.bArmature, ptr %438, i64 0, i32 6
  %442 = load ptr, ptr %441, align 8, !tbaa !106
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
  %449 = load ptr, ptr %448, align 8, !tbaa !108
  %450 = load ptr, ptr %449, align 8, !tbaa !30
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
  %459 = load i32, ptr %453, align 8, !tbaa !109
  br label %460

460:                                              ; preds = %456, %471
  %461 = phi ptr [ %472, %471 ], [ %457, %456 ]
  %462 = getelementptr inbounds %struct.EditBone, ptr %461, i64 0, i32 10
  %463 = load i32, ptr %462, align 8, !tbaa !110
  %464 = and i32 %463, %459
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %471, label %466

466:                                              ; preds = %460
  %467 = getelementptr inbounds %struct.EditBone, ptr %461, i64 0, i32 9
  %468 = load i32, ptr %467, align 4, !tbaa !112
  %469 = and i32 %468, 1
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %471, label %474

471:                                              ; preds = %460, %466
  %472 = load ptr, ptr %461, align 8, !tbaa !30
  %473 = icmp eq ptr %472, null
  br i1 %473, label %477, label %460, !llvm.loop !113

474:                                              ; preds = %466
  call void @ED_armature_ebone_to_mat3(ptr noundef nonnull %461, ptr noundef nonnull %22) #15
  call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef nonnull %454) #17
  call fastcc void @add_v3_v3(ptr noundef %2, ptr noundef nonnull %455) #17
  %475 = load ptr, ptr %461, align 8, !tbaa !30
  %476 = icmp eq ptr %475, null
  br i1 %476, label %478, label %456, !llvm.loop !113

477:                                              ; preds = %471
  br i1 %458, label %482, label %478

478:                                              ; preds = %474, %444, %477
  %479 = call fastcc zeroext i8 @is_zero_v3(ptr noundef %2) #17, !range !15
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
  %497 = load i32, ptr %496, align 8, !tbaa !22
  %498 = and i32 %497, 64
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %540, label %500

500:                                              ; preds = %495
  %501 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 19
  %502 = load ptr, ptr %501, align 8, !tbaa !86
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
  %516 = load ptr, ptr %515, align 8, !tbaa !114
  %517 = load ptr, ptr %516, align 8, !tbaa !30
  %518 = icmp eq ptr %517, null
  br i1 %518, label %535, label %519

519:                                              ; preds = %514, %532
  %520 = phi ptr [ %533, %532 ], [ %517, %514 ]
  %521 = getelementptr inbounds %struct.bPoseChannel, ptr %520, i64 0, i32 12
  %522 = load ptr, ptr %521, align 8, !tbaa !115
  %523 = icmp eq ptr %522, null
  br i1 %523, label %532, label %524

524:                                              ; preds = %519
  %525 = getelementptr inbounds %struct.Bone, ptr %522, i64 0, i32 10
  %526 = load i32, ptr %525, align 8, !tbaa !117
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
  %533 = load ptr, ptr %520, align 8, !tbaa !30
  %534 = icmp eq ptr %533, null
  br i1 %534, label %535, label %519, !llvm.loop !119

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
  %544 = load ptr, ptr %28, align 8, !tbaa !45
  %545 = icmp eq ptr %544, null
  br i1 %545, label %555, label %546

546:                                              ; preds = %543
  %547 = getelementptr inbounds %struct.Base, ptr %544, i64 0, i32 7
  %548 = load ptr, ptr %547, align 8, !tbaa !28
  %549 = icmp eq ptr %548, null
  br i1 %549, label %555, label %550

550:                                              ; preds = %546
  %551 = getelementptr inbounds %struct.Object, ptr %548, i64 0, i32 53
  %552 = load i16, ptr %551, align 4, !tbaa !120
  %553 = and i16 %552, 1
  %554 = icmp eq i16 %553, 0
  br i1 %554, label %555, label %587

555:                                              ; preds = %543, %550, %546
  %556 = getelementptr inbounds %struct.Scene, ptr %25, i64 0, i32 5
  %557 = load ptr, ptr %556, align 8, !tbaa !30
  %558 = icmp eq ptr %557, null
  br i1 %558, label %591, label %559

559:                                              ; preds = %555
  %560 = getelementptr inbounds %struct.View3D, ptr %26, i64 0, i32 22
  br label %561

561:                                              ; preds = %559, %584
  %562 = phi ptr [ %557, %559 ], [ %585, %584 ]
  %563 = getelementptr inbounds %struct.Base, ptr %562, i64 0, i32 4
  %564 = load i32, ptr %563, align 8, !tbaa !121
  %565 = and i32 %564, 1
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %584, label %567

567:                                              ; preds = %561
  %568 = getelementptr inbounds %struct.Base, ptr %562, i64 0, i32 2
  %569 = load i32, ptr %568, align 8, !tbaa !122
  %570 = load i32, ptr %560, align 8, !tbaa !123
  %571 = and i32 %570, %569
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %584, label %573

573:                                              ; preds = %567
  %574 = getelementptr inbounds %struct.Base, ptr %562, i64 0, i32 7
  %575 = load ptr, ptr %574, align 8, !tbaa !28
  %576 = getelementptr inbounds %struct.ID, ptr %575, i64 0, i32 3
  %577 = load ptr, ptr %576, align 8, !tbaa !124
  %578 = icmp eq ptr %577, null
  br i1 %578, label %579, label %584

579:                                              ; preds = %573
  %580 = getelementptr inbounds %struct.Object, ptr %575, i64 0, i32 102
  %581 = load i8, ptr %580, align 8, !tbaa !125
  %582 = and i8 %581, 1
  %583 = icmp eq i8 %582, 0
  br i1 %583, label %587, label %584

584:                                              ; preds = %561, %567, %573, %579
  %585 = load ptr, ptr %562, align 8, !tbaa !30
  %586 = icmp eq ptr %585, null
  br i1 %586, label %591, label %561, !llvm.loop !126

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
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #7 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !16
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !16
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
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #17
  %4 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #17
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !127
  %4 = and i8 %3, 1
  ret i8 %4
}

; Function Attrs: optsize
declare void @BM_face_calc_plane(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %1, align 4, !tbaa !16
  %4 = load float, ptr %0, align 4, !tbaa !16
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !16
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !16
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !16
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !16
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !16
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !16
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !128
  %4 = tail call ptr %3(ptr noundef %0) #15
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @bm_mesh_verts_select_get_n(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !71
  %6 = tail call fastcc i32 @min_ii(i32 noundef %2, i32 noundef %5) #17
  %7 = tail call fastcc i32 @bm_mesh_elems_select_get_n__internal(ptr noundef %0, ptr noundef %1, i32 noundef %6, i32 noundef 1, i8 noundef zeroext 1) #17
  ret i32 %7
}

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %0, align 4, !tbaa !16
  %4 = load float, ptr %1, align 4, !tbaa !16
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !16
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !16
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !16
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !16
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !16
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !16
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !16
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BM_edge_calc_length_squared(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_boundary(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !130
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
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 {
  %4 = load float, ptr %1, align 4, !tbaa !16
  %5 = load float, ptr %2, align 4, !tbaa !16
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !16
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !16
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !16
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !16
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !16
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !16
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare void @BM_vert_tri_calc_plane(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @bm_mesh_edges_select_get_n(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !72
  %5 = tail call fastcc i32 @min_ii(i32 noundef 1, i32 noundef %4) #17
  %6 = tail call fastcc i32 @bm_mesh_elems_select_get_n__internal(ptr noundef %0, ptr noundef %1, i32 noundef %5, i32 noundef 2, i8 noundef zeroext 2) #17
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @BM_mesh_active_vert_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 {
  %4 = load float, ptr %1, align 4, !tbaa !16
  %5 = load float, ptr %2, align 4, !tbaa !16
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !16
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !16
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !16
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !16
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !16
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !16
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BM_vert_is_edge_pair(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !78
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
define internal fastcc i32 @count_bone_select(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #10 {
  %4 = load ptr, ptr %1, align 8, !tbaa !30
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
  %13 = load i32, ptr %12, align 8, !tbaa !117
  %14 = and i32 %13, -9
  store i32 %14, ptr %12, align 8, !tbaa !117
  br i1 %7, label %27, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.Bone, ptr %10, i64 0, i32 25
  %17 = load i32, ptr %16, align 8, !tbaa !131
  %18 = load i32, ptr %8, align 8, !tbaa !109
  %19 = and i32 %18, %17
  %20 = icmp eq i32 %19, 0
  %21 = and i32 %13, 1
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = or i32 %13, 8
  store i32 %25, ptr %12, align 8, !tbaa !117
  %26 = add nsw i32 %11, 1
  br label %27

27:                                               ; preds = %15, %24, %9
  %28 = phi i8 [ 0, %24 ], [ 1, %15 ], [ 0, %9 ]
  %29 = phi i32 [ %26, %24 ], [ %11, %15 ], [ %11, %9 ]
  %30 = getelementptr inbounds %struct.Bone, ptr %10, i64 0, i32 4
  %31 = tail call fastcc i32 @count_bone_select(ptr noundef %0, ptr noundef nonnull %30, i8 noundef zeroext %28) #17
  %32 = add nsw i32 %31, %29
  %33 = load ptr, ptr %10, align 8, !tbaa !30
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %9, !llvm.loop !132

35:                                               ; preds = %27, %3
  %36 = phi i32 [ 0, %3 ], [ %32, %27 ]
  ret i32 %36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 {
  %4 = load float, ptr %1, align 4, !tbaa !16
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !16
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !16
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !16
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !16
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !16
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
define internal zeroext i8 @uniqueOrientationNameCheck(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc ptr @findOrientationName(ptr noundef %0, ptr noundef %1) #17
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %4, align 4, !tbaa !133
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %5, align 8, !tbaa !134
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %6, align 8, !tbaa !128
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
  %16 = load ptr, ptr %15, align 8, !tbaa !30
  store ptr %16, ptr %0, align 8, !tbaa !23
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @bm_mesh_elems_select_get_n__internal(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #16
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  %8 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %7) #17, !range !15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !30
  %13 = icmp eq ptr %12, null
  br i1 %13, label %38, label %14

14:                                               ; preds = %10, %30
  %15 = phi ptr [ %33, %30 ], [ %12, %10 ]
  %16 = phi i32 [ %31, %30 ], [ 0, %10 ]
  %17 = getelementptr inbounds %struct.BMEditSelection, ptr %15, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !135
  %19 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %18) #17
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.BMEditSelection, ptr %15, i64 0, i32 3
  %23 = load i8, ptr %22, align 8, !tbaa !64
  %24 = icmp eq i8 %23, %4
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = add i32 %16, 1
  %27 = zext i32 %16 to i64
  %28 = getelementptr inbounds ptr, ptr %1, i64 %27
  store ptr %18, ptr %28, align 8, !tbaa !30
  %29 = icmp eq i32 %26, %2
  br i1 %29, label %35, label %30

30:                                               ; preds = %25, %14
  %31 = phi i32 [ %26, %25 ], [ %16, %14 ]
  %32 = getelementptr inbounds %struct.BMEditSelection, ptr %15, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !30
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %14, !llvm.loop !136

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
  store ptr %44, ptr %50, align 8, !tbaa !30
  %51 = icmp eq i32 %48, %2
  br i1 %51, label %56, label %52

52:                                               ; preds = %42, %47
  %53 = phi i32 [ %48, %47 ], [ %43, %42 ]
  %54 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #17
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %42, !llvm.loop !137

56:                                               ; preds = %47, %52, %38, %35
  %57 = phi i32 [ %36, %35 ], [ 0, %38 ], [ %2, %47 ], [ %53, %52 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  ret i32 %57
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #13 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !138
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 292}
!6 = !{!"View3D", !7, i64 0, !7, i64 8, !10, i64 16, !11, i64 32, !12, i64 36, !8, i64 40, !8, i64 56, !12, i64 72, !12, i64 76, !8, i64 80, !8, i64 81, !11, i64 84, !11, i64 88, !13, i64 92, !13, i64 94, !7, i64 96, !7, i64 104, !14, i64 112, !10, i64 128, !7, i64 144, !7, i64 152, !8, i64 160, !11, i64 224, !11, i64 228, !13, i64 232, !13, i64 234, !13, i64 236, !13, i64 238, !13, i64 240, !13, i64 242, !12, i64 244, !12, i64 248, !12, i64 252, !12, i64 256, !8, i64 260, !8, i64 272, !13, i64 284, !13, i64 286, !13, i64 288, !8, i64 290, !8, i64 291, !8, i64 292, !8, i64 293, !8, i64 294, !10, i64 296, !10, i64 312, !10, i64 328, !8, i64 344, !8, i64 345, !8, i64 346, !8, i64 347, !7, i64 352, !7, i64 360, !7, i64 368}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"int", !8, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!"short", !8, i64 0}
!14 = !{!"rctf", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!15 = !{i8 0, i8 2}
!16 = !{!12, !12, i64 0}
!17 = !{!18, !13, i64 136}
!18 = !{!"Object", !19, i64 0, !7, i64 120, !7, i64 128, !13, i64 136, !13, i64 138, !11, i64 140, !11, i64 144, !11, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !20, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !11, i64 432, !11, i64 436, !7, i64 440, !7, i64 448, !11, i64 456, !11, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !12, i64 616, !12, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !11, i64 944, !13, i64 948, !13, i64 950, !13, i64 952, !13, i64 954, !13, i64 956, !13, i64 958, !13, i64 960, !13, i64 962, !13, i64 964, !8, i64 966, !8, i64 967, !11, i64 968, !11, i64 972, !11, i64 976, !11, i64 980, !11, i64 984, !12, i64 988, !12, i64 992, !12, i64 996, !12, i64 1000, !12, i64 1004, !12, i64 1008, !12, i64 1012, !12, i64 1016, !12, i64 1020, !12, i64 1024, !12, i64 1028, !12, i64 1032, !13, i64 1036, !13, i64 1038, !13, i64 1040, !8, i64 1042, !8, i64 1043, !13, i64 1044, !8, i64 1046, !8, i64 1047, !12, i64 1048, !12, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !12, i64 1120, !13, i64 1124, !13, i64 1126, !8, i64 1128, !11, i64 1144, !11, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !13, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !13, i64 1266, !12, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !21, i64 1304, !21, i64 1312, !11, i64 1320, !11, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!19 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !13, i64 98, !11, i64 100, !11, i64 104, !11, i64 108, !7, i64 112}
!20 = !{!"bAnimVizSettings", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !13, i64 16, !13, i64 18, !13, i64 20, !13, i64 22, !13, i64 24, !13, i64 26, !13, i64 28, !13, i64 30, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44}
!21 = !{!"long", !8, i64 0}
!22 = !{!18, !11, i64 432}
!23 = !{!8, !8, i64 0}
!24 = !{!25, !8, i64 809}
!25 = !{!"RegionView3D", !8, i64 0, !8, i64 64, !8, i64 128, !8, i64 192, !8, i64 256, !8, i64 320, !8, i64 384, !8, i64 448, !8, i64 544, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !7, i64 672, !7, i64 680, !7, i64 688, !8, i64 696, !8, i64 760, !12, i64 776, !12, i64 780, !12, i64 784, !12, i64 788, !8, i64 792, !12, i64 804, !8, i64 808, !8, i64 809, !8, i64 810, !8, i64 811, !8, i64 812, !8, i64 813, !8, i64 816, !13, i64 824, !13, i64 826, !8, i64 828, !13, i64 844, !13, i64 846, !12, i64 848, !8, i64 852, !12, i64 864, !8, i64 868}
!26 = !{!6, !7, i64 96}
!27 = !{i32 0, i32 5}
!28 = !{!29, !7, i64 32}
!29 = !{!"Base", !7, i64 0, !7, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !13, i64 28, !13, i64 30, !7, i64 32}
!30 = !{!7, !7, i64 0}
!31 = !{!32, !13, i64 1154}
!32 = !{!"TransInfo", !11, i64 0, !11, i64 4, !11, i64 8, !13, i64 12, !11, i64 16, !12, i64 20, !12, i64 24, !7, i64 32, !7, i64 40, !11, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !33, i64 80, !34, i64 296, !36, i64 440, !37, i64 584, !11, i64 640, !12, i64 644, !8, i64 648, !8, i64 668, !8, i64 680, !8, i64 688, !13, i64 696, !13, i64 698, !8, i64 700, !8, i64 712, !8, i64 716, !8, i64 780, !8, i64 844, !8, i64 908, !13, i64 972, !13, i64 974, !8, i64 976, !8, i64 977, !8, i64 980, !8, i64 992, !8, i64 1028, !8, i64 1064, !7, i64 1128, !7, i64 1136, !7, i64 1144, !13, i64 1152, !13, i64 1154, !13, i64 1156, !13, i64 1158, !13, i64 1160, !8, i64 1164, !8, i64 1180, !8, i64 1196, !8, i64 1208, !8, i64 1220, !7, i64 1224, !7, i64 1232, !7, i64 1240, !7, i64 1248, !7, i64 1256, !7, i64 1264, !7, i64 1272, !7, i64 1280, !7, i64 1288, !8, i64 1296, !12, i64 1304, !7, i64 1312, !8, i64 1320, !7, i64 1360, !7, i64 1368, !7, i64 1376, !7, i64 1384}
!33 = !{!"TransCon", !13, i64 0, !8, i64 2, !8, i64 52, !8, i64 88, !8, i64 124, !8, i64 160, !8, i64 172, !11, i64 180, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208}
!34 = !{!"TransSnap", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11, !13, i64 12, !8, i64 16, !8, i64 28, !8, i64 40, !8, i64 52, !8, i64 64, !10, i64 72, !7, i64 88, !12, i64 96, !35, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136}
!35 = !{!"double", !8, i64 0}
!36 = !{!"NumInput", !13, i64 0, !11, i64 4, !8, i64 8, !8, i64 20, !13, i64 22, !8, i64 24, !8, i64 32, !8, i64 44, !8, i64 56, !13, i64 68, !8, i64 70, !11, i64 136}
!37 = !{!"MouseInput", !7, i64 0, !7, i64 8, !8, i64 16, !8, i64 24, !8, i64 28, !8, i64 36, !12, i64 44, !7, i64 48}
!38 = !{!6, !13, i64 238}
!39 = !{!32, !7, i64 1248}
!40 = !{!41, !13, i64 214}
!41 = !{!"ARegion", !7, i64 0, !7, i64 8, !42, i64 16, !43, i64 176, !43, i64 192, !13, i64 208, !13, i64 210, !13, i64 212, !13, i64 214, !13, i64 216, !13, i64 218, !12, i64 220, !13, i64 224, !13, i64 226, !13, i64 228, !13, i64 230, !13, i64 232, !13, i64 234, !13, i64 236, !13, i64 238, !7, i64 240, !10, i64 248, !10, i64 264, !10, i64 280, !10, i64 296, !10, i64 312, !10, i64 328, !10, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!42 = !{!"View2D", !14, i64 0, !14, i64 16, !43, i64 32, !43, i64 48, !43, i64 64, !8, i64 80, !8, i64 88, !12, i64 96, !12, i64 100, !13, i64 104, !13, i64 106, !13, i64 108, !13, i64 110, !13, i64 112, !13, i64 114, !13, i64 116, !13, i64 118, !13, i64 120, !13, i64 122, !13, i64 124, !13, i64 126, !7, i64 128, !11, i64 136, !11, i64 140, !7, i64 144, !7, i64 152}
!43 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!44 = !{!41, !7, i64 376}
!45 = !{!46, !7, i64 168}
!46 = !{!"Scene", !19, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !11, i64 232, !11, i64 236, !11, i64 240, !13, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !47, i64 280, !54, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !13, i64 4376, !13, i64 4378, !11, i64 4380, !10, i64 4384, !55, i64 4400, !56, i64 4416, !59, i64 4600, !7, i64 4608, !60, i64 4616, !7, i64 4640, !21, i64 4648, !21, i64 4656, !49, i64 4664, !50, i64 4824, !61, i64 4888, !7, i64 4952}
!47 = !{!"RenderData", !48, i64 0, !7, i64 248, !7, i64 256, !51, i64 264, !52, i64 328, !11, i64 400, !11, i64 404, !11, i64 408, !12, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !11, i64 428, !13, i64 432, !13, i64 434, !12, i64 436, !12, i64 440, !12, i64 444, !12, i64 448, !12, i64 452, !13, i64 456, !13, i64 458, !13, i64 460, !13, i64 462, !13, i64 464, !13, i64 466, !11, i64 468, !13, i64 472, !13, i64 474, !13, i64 476, !13, i64 478, !13, i64 480, !13, i64 482, !11, i64 484, !11, i64 488, !13, i64 492, !13, i64 494, !11, i64 496, !11, i64 500, !13, i64 504, !13, i64 506, !13, i64 508, !13, i64 510, !13, i64 512, !8, i64 514, !8, i64 515, !11, i64 516, !11, i64 520, !11, i64 524, !13, i64 528, !13, i64 530, !13, i64 532, !13, i64 534, !13, i64 536, !13, i64 538, !13, i64 540, !13, i64 542, !14, i64 544, !14, i64 560, !43, i64 576, !10, i64 592, !13, i64 608, !13, i64 610, !12, i64 612, !12, i64 616, !12, i64 620, !12, i64 624, !11, i64 628, !12, i64 632, !12, i64 636, !12, i64 640, !12, i64 644, !13, i64 648, !13, i64 650, !13, i64 652, !13, i64 654, !13, i64 656, !13, i64 658, !12, i64 660, !12, i64 664, !13, i64 668, !13, i64 670, !12, i64 672, !12, i64 676, !8, i64 680, !11, i64 1704, !13, i64 1708, !13, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !11, i64 2520, !13, i64 2524, !13, i64 2526, !12, i64 2528, !12, i64 2532, !13, i64 2536, !13, i64 2538, !12, i64 2540, !13, i64 2544, !13, i64 2546, !11, i64 2548, !13, i64 2552, !13, i64 2554, !13, i64 2556, !13, i64 2558, !12, i64 2560, !12, i64 2564, !7, i64 2568, !11, i64 2576, !12, i64 2580, !8, i64 2584, !53, i64 2616, !11, i64 3976, !11, i64 3980}
!48 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !13, i64 8, !13, i64 10, !12, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !49, i64 24, !50, i64 184}
!49 = !{!"ColorManagedViewSettings", !11, i64 0, !11, i64 4, !8, i64 8, !8, i64 72, !12, i64 136, !12, i64 140, !7, i64 144, !7, i64 152}
!50 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!51 = !{!"QuicktimeCodecSettings", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !13, i64 48, !13, i64 50, !11, i64 52, !11, i64 56, !11, i64 60}
!52 = !{!"FFMpegCodecData", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !12, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !7, i64 64}
!53 = !{!"BakeData", !48, i64 0, !8, i64 248, !13, i64 1272, !13, i64 1274, !13, i64 1276, !13, i64 1278, !12, i64 1280, !12, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!54 = !{!"AudioData", !11, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !13, i64 20, !13, i64 22, !12, i64 24, !12, i64 28}
!55 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!56 = !{!"GameData", !55, i64 0, !13, i64 16, !13, i64 18, !13, i64 20, !13, i64 22, !13, i64 24, !13, i64 26, !13, i64 28, !13, i64 30, !13, i64 32, !8, i64 34, !57, i64 40, !13, i64 64, !13, i64 66, !12, i64 68, !58, i64 72, !12, i64 128, !12, i64 132, !11, i64 136, !13, i64 140, !13, i64 142, !13, i64 144, !13, i64 146, !13, i64 148, !13, i64 150, !13, i64 152, !13, i64 154, !13, i64 156, !13, i64 158, !13, i64 160, !13, i64 162, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180}
!57 = !{!"GameDome", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !12, i64 8, !12, i64 12, !7, i64 16}
!58 = !{!"RecastData", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !11, i64 40, !12, i64 44, !12, i64 48, !13, i64 52, !13, i64 54}
!59 = !{!"UnitSettings", !12, i64 0, !8, i64 4, !8, i64 5, !13, i64 6}
!60 = !{!"PhysicsSettings", !8, i64 0, !11, i64 12, !11, i64 16, !11, i64 20}
!61 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!62 = !{!63, !7, i64 0}
!63 = !{!"BMEditMesh", !7, i64 0, !7, i64 8, !11, i64 16, !7, i64 24, !11, i64 32, !7, i64 40, !7, i64 48, !21, i64 56, !7, i64 64, !11, i64 72, !7, i64 80, !11, i64 88, !13, i64 92, !13, i64 94, !7, i64 96, !11, i64 104}
!64 = !{!65, !8, i64 24}
!65 = !{!"BMEditSelection", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24}
!66 = !{!67, !11, i64 24}
!67 = !{!"BMesh", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !8, i64 28, !8, i64 29, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !11, i64 88, !11, i64 92, !11, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !11, i64 128, !7, i64 136, !68, i64 144, !68, i64 344, !68, i64 544, !68, i64 744, !13, i64 944, !11, i64 948, !11, i64 952, !11, i64 956, !10, i64 960, !7, i64 976, !10, i64 984, !7, i64 1000}
!68 = !{!"CustomData", !7, i64 0, !8, i64 8, !11, i64 172, !11, i64 176, !11, i64 180, !7, i64 184, !7, i64 192}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!67, !11, i64 16}
!72 = !{!67, !11, i64 20}
!73 = distinct !{!73, !70}
!74 = !{!75, !7, i64 24}
!75 = !{!"BMEdge", !76, i64 0, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !77, i64 48, !77, i64 64}
!76 = !{!"BMHeader", !7, i64 0, !11, i64 8, !8, i64 12, !8, i64 13, !8, i64 14}
!77 = !{!"BMDiskLink", !7, i64 0, !7, i64 8}
!78 = !{!75, !7, i64 32}
!79 = !{!75, !7, i64 40}
!80 = !{!81, !7, i64 16}
!81 = !{!"BMLoop", !76, i64 0, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64}
!82 = !{!83, !7, i64 48}
!83 = !{!"BMVert", !76, i64 0, !7, i64 16, !8, i64 24, !8, i64 36, !7, i64 48}
!84 = !{!75, !7, i64 48}
!85 = distinct !{!85, !70}
!86 = !{!18, !7, i64 296}
!87 = !{!88, !13, i64 16}
!88 = !{!"Nurb", !7, i64 0, !7, i64 8, !13, i64 16, !13, i64 18, !13, i64 20, !13, i64 22, !11, i64 24, !11, i64 28, !8, i64 32, !13, i64 36, !13, i64 38, !13, i64 40, !13, i64 42, !13, i64 44, !13, i64 46, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !13, i64 80, !13, i64 82, !11, i64 84}
!89 = !{!90, !13, i64 248}
!90 = !{!"Curve", !19, i64 0, !7, i64 120, !7, i64 128, !10, i64 136, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !8, i64 208, !8, i64 220, !8, i64 232, !13, i64 244, !13, i64 246, !13, i64 248, !13, i64 250, !12, i64 252, !12, i64 256, !11, i64 260, !13, i64 264, !13, i64 266, !11, i64 268, !12, i64 272, !12, i64 276, !12, i64 280, !13, i64 284, !13, i64 286, !13, i64 288, !13, i64 290, !11, i64 292, !11, i64 296, !8, i64 300, !13, i64 304, !8, i64 306, !8, i64 307, !12, i64 308, !12, i64 312, !12, i64 316, !12, i64 320, !12, i64 324, !12, i64 328, !12, i64 332, !12, i64 336, !12, i64 340, !12, i64 344, !11, i64 348, !11, i64 352, !11, i64 356, !11, i64 360, !11, i64 364, !7, i64 368, !7, i64 376, !8, i64 384, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !11, i64 488, !11, i64 492, !7, i64 496, !91, i64 504, !12, i64 512, !12, i64 516, !12, i64 520, !8, i64 524, !8, i64 525, !8, i64 526}
!91 = !{!"CharInfo", !13, i64 0, !13, i64 2, !8, i64 4, !8, i64 5, !13, i64 6}
!92 = !{!88, !7, i64 72}
!93 = !{!88, !11, i64 24}
!94 = !{!95, !8, i64 51}
!95 = !{!"BezTriple", !8, i64 0, !12, i64 36, !12, i64 40, !12, i64 44, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !8, i64 52, !8, i64 53, !8, i64 54, !8, i64 55, !12, i64 56, !12, i64 60, !12, i64 64, !8, i64 68}
!96 = !{!95, !8, i64 52}
!97 = !{!95, !8, i64 53}
!98 = distinct !{!98, !70}
!99 = distinct !{!99, !70}
!100 = !{!101, !7, i64 240}
!101 = !{!"MetaBall", !19, i64 0, !7, i64 120, !10, i64 128, !10, i64 144, !7, i64 160, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 185, !13, i64 186, !13, i64 188, !13, i64 190, !8, i64 192, !8, i64 204, !8, i64 216, !12, i64 228, !12, i64 232, !12, i64 236, !7, i64 240}
!102 = !{!101, !7, i64 160}
!103 = !{!104, !13, i64 26}
!104 = !{!"MetaElem", !7, i64 0, !7, i64 8, !7, i64 16, !13, i64 24, !13, i64 26, !13, i64 28, !13, i64 30, !12, i64 32, !12, i64 36, !12, i64 40, !8, i64 44, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !7, i64 88, !7, i64 96}
!105 = distinct !{!105, !70}
!106 = !{!107, !7, i64 176}
!107 = !{!"bArmature", !19, i64 0, !7, i64 120, !10, i64 128, !10, i64 144, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !11, i64 192, !11, i64 196, !11, i64 200, !11, i64 204, !13, i64 208, !13, i64 210, !11, i64 212, !11, i64 216, !11, i64 220, !13, i64 224, !13, i64 226, !13, i64 228, !13, i64 230, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !11, i64 248, !11, i64 252}
!108 = !{!107, !7, i64 160}
!109 = !{!107, !11, i64 216}
!110 = !{!111, !11, i64 136}
!111 = !{!"EditBone", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !12, i64 104, !8, i64 108, !8, i64 120, !11, i64 132, !11, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !13, i64 180}
!112 = !{!111, !11, i64 132}
!113 = distinct !{!113, !70}
!114 = !{!18, !7, i64 288}
!115 = !{!116, !7, i64 120}
!116 = !{!"bPoseChannel", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !8, i64 40, !13, i64 104, !13, i64 106, !13, i64 108, !13, i64 110, !8, i64 112, !8, i64 113, !8, i64 114, !7, i64 120, !7, i64 128, !7, i64 136, !10, i64 144, !10, i64 160, !7, i64 176, !7, i64 184, !7, i64 192, !8, i64 200, !8, i64 212, !8, i64 224, !8, i64 236, !8, i64 252, !12, i64 264, !13, i64 268, !13, i64 270, !8, i64 272, !8, i64 336, !8, i64 400, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !12, i64 524, !12, i64 528, !12, i64 532, !7, i64 536}
!117 = !{!118, !11, i64 176}
!118 = !{!"Bone", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !8, i64 48, !12, i64 112, !8, i64 116, !8, i64 128, !8, i64 140, !11, i64 176, !8, i64 180, !8, i64 192, !8, i64 204, !12, i64 268, !12, i64 272, !12, i64 276, !12, i64 280, !12, i64 284, !12, i64 288, !12, i64 292, !12, i64 296, !12, i64 300, !12, i64 304, !8, i64 308, !11, i64 320, !13, i64 324, !8, i64 326}
!119 = distinct !{!119, !70}
!120 = !{!18, !13, i64 948}
!121 = !{!29, !11, i64 24}
!122 = !{!29, !11, i64 16}
!123 = !{!6, !11, i64 224}
!124 = !{!18, !7, i64 24}
!125 = !{!18, !8, i64 1160}
!126 = distinct !{!126, !70}
!127 = !{!76, !8, i64 13}
!128 = !{!129, !7, i64 48}
!129 = !{!"BMIter", !8, i64 0, !7, i64 40, !7, i64 48, !11, i64 56, !8, i64 60}
!130 = !{!81, !7, i64 40}
!131 = !{!118, !11, i64 320}
!132 = distinct !{!132, !70}
!133 = !{!129, !8, i64 60}
!134 = !{!129, !7, i64 40}
!135 = !{!65, !7, i64 16}
!136 = distinct !{!136, !70}
!137 = distinct !{!137, !70}
!138 = !{!10, !7, i64 0}
