; ModuleID = 'blender/source/blender/editors/transform/transform_snap.c'
source_filename = "blender/source/blender/editors/transform/transform_snap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.TransInfo = type { i32, i32, i32, i16, i32, float, float, ptr, ptr, i32, ptr, ptr, ptr, %struct.TransCon, %struct.TransSnap, %struct.NumInput, %struct.MouseInput, i32, float, [20 x i8], [3 x float], [2 x float], [2 x i32], i16, i16, [3 x float], i8, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i16, i16, i8, i8, [3 x float], [3 x [3 x float]], [3 x [3 x float]], [64 x i8], ptr, ptr, ptr, i16, i16, i16, i16, i16, [4 x float], [4 x float], [3 x float], [3 x float], i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32], float, ptr, [3 x [3 x float]], ptr, ptr, ptr, ptr }
%struct.TransCon = type { i16, [50 x i8], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x float], [2 x i32], i32, ptr, ptr, ptr, ptr }
%struct.TransSnap = type { i16, i16, i16, i16, i8, i8, i8, i8, i16, [3 x float], [3 x float], [3 x float], [3 x float], i8, %struct.ListBase, ptr, float, double, ptr, ptr, ptr, ptr }
%struct.NumInput = type { i16, i32, [3 x i32], i8, i16, [3 x i16], [3 x float], [3 x float], [3 x float], i16, [64 x i8], i32 }
%struct.MouseInput = type { ptr, ptr, [2 x i32], i8, [2 x i32], [2 x float], float, ptr }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.TransSnapPoint = type { ptr, ptr, [3 x float] }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.TransData = type { float, float, float, ptr, [3 x float], ptr, float, [3 x float], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], ptr, ptr, ptr, ptr, ptr, i32, i16 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.TransDataExtension = type { [3 x float], [4 x float], [3 x float], ptr, [3 x float], ptr, [4 x float], ptr, float, ptr, [4 x float], ptr, [3 x float], [4 x [4 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.DupliObject = type { ptr, ptr, ptr, [4 x [4 x float]], [3 x float], [2 x float], i16, i8, i8, [8 x i32], ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.DepthPeel = type { ptr, ptr, float, [3 x float], [3 x float], ptr, i32 }
%struct.SpaceNode = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, ptr, i16, i16, float, float, float, float, float, [2 x float], %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, %struct.ListBase, ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.BVHTreeFromMesh = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, float, ptr, i8 }
%struct.BVHTreeNearest = type { i32, [3 x float], [3 x float], float, i32 }
%struct.BVHTreeRayHit = type { i32, [3 x float], [3 x float], float, i32 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.MovieTrackingObject = type { ptr, ptr, [64 x i8], i32, float, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, i32, i32 }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }

@G = external local_unnamed_addr global %struct.Global, align 8
@.str = private unnamed_addr constant [5 x i8] c"snap\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"snap_target\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"snap_point\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"snap_align\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"snap_normal\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"use_snap_project\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"use_snap_self\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"SnapPoint\00", align 1
@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"DepthPeel\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__const.applyGridIncrement.asp = private unnamed_addr constant [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4
@.str.9 = private unnamed_addr constant [48 x i8] c"applyGridIncrement: invalid index %d, clamping\0A\00", align 1
@switch.table.initSnapping.10 = private unnamed_addr constant [4 x ptr] [ptr @TargetSnapClosest, ptr @TargetSnapCenter, ptr @TargetSnapMedian, ptr @TargetSnapActive], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @validSnap(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %3 = load i16, ptr %2, align 4, !tbaa !34
  %4 = zext i16 %3 to i32
  %5 = and i32 %4, 6
  %6 = icmp eq i32 %5, 6
  %7 = and i32 %4, 10
  %8 = icmp eq i32 %7, 10
  %9 = or i1 %6, %8
  %10 = zext i1 %9 to i8
  ret i8 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @activeSnap(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !48
  %4 = and i32 %3, 12
  %5 = icmp eq i32 %4, 4
  %6 = icmp eq i32 %4, 8
  %7 = or i1 %5, %6
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define dso_local void @drawSnapping(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca [4 x i8], align 1
  %4 = alloca [4 x i8], align 1
  %5 = alloca [4 x i8], align 1
  %6 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %7 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !48
  %9 = and i32 %8, 12
  switch i32 %9, label %143 [
    i32 8, label %10
    i32 4, label %10
  ]

10:                                               ; preds = %2, %2
  call void @UI_GetThemeColor3ubv(i32 noundef 32, ptr noundef nonnull %3) #13
  %11 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  store i8 -128, ptr %11, align 1, !tbaa !49
  call void @UI_GetThemeColor3ubv(i32 noundef 28, ptr noundef nonnull %4) #13
  %12 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 3
  store i8 -128, ptr %12, align 1, !tbaa !49
  call void @UI_GetThemeColor3ubv(i32 noundef 29, ptr noundef nonnull %5) #13
  %13 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 3
  store i8 -64, ptr %13, align 1, !tbaa !49
  %14 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  %15 = load i8, ptr %14, align 8, !tbaa !50
  switch i8 %15, label %143 [
    i8 1, label %16
    i8 16, label %105
  ]

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 8
  %18 = load i16, ptr %17, align 4, !tbaa !34
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 6
  %21 = icmp ne i32 %20, 6
  %22 = and i32 %19, 10
  %23 = icmp ne i32 %22, 10
  %24 = and i1 %21, %23
  br i1 %24, label %143, label %25

25:                                               ; preds = %16
  %26 = call ptr @CTX_wm_view3d(ptr noundef %0) #13
  %27 = call ptr @CTX_wm_region_view3d(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  call void @glDisable(i32 noundef 2929) #13
  %28 = call float @UI_GetThemeValuef(i32 noundef 36) #13
  %29 = fmul float %28, 2.500000e+00
  %30 = getelementptr inbounds %struct.RegionView3D, ptr %27, i64 0, i32 1
  %31 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %30) #13
  %32 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 14
  %33 = load ptr, ptr %32, align 8, !tbaa !51
  %34 = icmp eq ptr %33, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 15
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi ptr [ %33, %35 ], [ %46, %37 ]
  %39 = load ptr, ptr %36, align 8, !tbaa !52
  %40 = icmp eq ptr %38, %39
  %41 = select i1 %40, ptr %4, ptr %3
  call void @glColor4ubv(ptr noundef nonnull %41) #13
  %42 = getelementptr inbounds %struct.TransSnapPoint, ptr %38, i64 0, i32 2
  %43 = call float @ED_view3d_pixel_size(ptr noundef %27, ptr noundef nonnull %42) #13
  %44 = fmul float %29, %43
  %45 = fmul float %44, 7.500000e-01
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %42, float noundef %45, ptr noundef nonnull %6) #13
  %46 = load ptr, ptr %38, align 8, !tbaa !51
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %37, !llvm.loop !53

48:                                               ; preds = %37, %25
  %49 = load i16, ptr %17, align 4, !tbaa !34
  %50 = and i16 %49, 4
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  call void @glColor4ubv(ptr noundef nonnull %5) #13
  %53 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 9
  %54 = call float @ED_view3d_pixel_size(ptr noundef %27, ptr noundef nonnull %53) #13
  %55 = fmul float %29, %54
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %53, float noundef %55, ptr noundef nonnull %6) #13
  br label %56

56:                                               ; preds = %52, %48
  %57 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 4
  %58 = load i8, ptr %57, align 8, !tbaa !56
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %99, label %60

60:                                               ; preds = %56
  %61 = load i16, ptr %17, align 4, !tbaa !34
  %62 = zext i16 %61 to i32
  %63 = and i32 %62, 6
  %64 = icmp ne i32 %63, 6
  %65 = and i32 %62, 10
  %66 = icmp ne i32 %65, 10
  %67 = and i1 %64, %66
  br i1 %67, label %99, label %68

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 11
  %70 = load float, ptr %69, align 4, !tbaa !57
  %71 = fcmp oeq float %70, 0.000000e+00
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 11, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !57
  %75 = fcmp oeq float %74, 0.000000e+00
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 11, i64 2
  %78 = load float, ptr %77, align 4, !tbaa !57
  %79 = fcmp une float %78, 0.000000e+00
  br i1 %79, label %80, label %99

80:                                               ; preds = %76, %68, %72
  call void @glColor4ubv(ptr noundef nonnull %5) #13
  call void @glBegin(i32 noundef 1) #13
  %81 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 9
  %82 = load float, ptr %81, align 8, !tbaa !57
  %83 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 9, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !57
  %85 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 9, i64 2
  %86 = load float, ptr %85, align 8, !tbaa !57
  call void @glVertex3f(float noundef %82, float noundef %84, float noundef %86) #13
  %87 = load float, ptr %81, align 8, !tbaa !57
  %88 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 11
  %89 = load float, ptr %88, align 8, !tbaa !57
  %90 = fadd float %87, %89
  %91 = load float, ptr %83, align 4, !tbaa !57
  %92 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 11, i64 1
  %93 = load float, ptr %92, align 4, !tbaa !57
  %94 = fadd float %91, %93
  %95 = load float, ptr %85, align 8, !tbaa !57
  %96 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 11, i64 2
  %97 = load float, ptr %96, align 8, !tbaa !57
  %98 = fadd float %95, %97
  call void @glVertex3f(float noundef %90, float noundef %94, float noundef %98) #13
  call void @glEnd() #13
  br label %99

99:                                               ; preds = %60, %76, %80, %56
  %100 = getelementptr inbounds %struct.View3D, ptr %26, i64 0, i32 47
  %101 = load i8, ptr %100, align 8, !tbaa !58
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  call void @glEnable(i32 noundef 2929) #13
  br label %104

104:                                              ; preds = %103, %99
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  br label %143

105:                                              ; preds = %10
  %106 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 8
  %107 = load i16, ptr %106, align 4, !tbaa !34
  %108 = zext i16 %107 to i32
  %109 = and i32 %108, 6
  %110 = icmp ne i32 %109, 6
  %111 = and i32 %108, 10
  %112 = icmp ne i32 %111, 10
  %113 = and i1 %110, %112
  br i1 %113, label %143, label %114

114:                                              ; preds = %105
  %115 = call ptr @CTX_wm_region(ptr noundef %0) #13
  %116 = call float @UI_GetThemeValuef(i32 noundef 36) #13
  %117 = fmul float %116, 2.500000e+00
  call void @glEnable(i32 noundef 3042) #13
  %118 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 14
  %119 = load ptr, ptr %118, align 8, !tbaa !51
  %120 = icmp eq ptr %119, null
  br i1 %120, label %132, label %121

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 15
  %123 = getelementptr inbounds %struct.ARegion, ptr %115, i64 0, i32 2
  br label %124

124:                                              ; preds = %121, %124
  %125 = phi ptr [ %119, %121 ], [ %130, %124 ]
  %126 = load ptr, ptr %122, align 8, !tbaa !52
  %127 = icmp eq ptr %125, %126
  %128 = select i1 %127, ptr %4, ptr %3
  call void @glColor4ubv(ptr noundef nonnull %128) #13
  %129 = getelementptr inbounds %struct.TransSnapPoint, ptr %125, i64 0, i32 2
  call void @ED_node_draw_snap(ptr noundef nonnull %123, ptr noundef nonnull %129, float noundef %117, i32 noundef 0) #13
  %130 = load ptr, ptr %125, align 8, !tbaa !51
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %124, !llvm.loop !61

132:                                              ; preds = %124, %114
  %133 = load i16, ptr %106, align 4, !tbaa !34
  %134 = and i16 %133, 4
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %132
  call void @glColor4ubv(ptr noundef nonnull %5) #13
  %137 = getelementptr inbounds %struct.ARegion, ptr %115, i64 0, i32 2
  %138 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 9
  %139 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 13
  %140 = load i8, ptr %139, align 8, !tbaa !62
  %141 = zext i8 %140 to i32
  call void @ED_node_draw_snap(ptr noundef nonnull %137, ptr noundef nonnull %138, float noundef %117, i32 noundef %141) #13
  br label %142

142:                                              ; preds = %136, %132
  call void @glDisable(i32 noundef 3042) #13
  br label %143

143:                                              ; preds = %2, %104, %16, %142, %105, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #3

declare void @glDisable(i32 noundef) local_unnamed_addr #3

declare float @UI_GetThemeValuef(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @glColor4ubv(ptr noundef) local_unnamed_addr #3

declare void @drawcircball(i32 noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #3

declare float @ED_view3d_pixel_size(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @usingSnappingNormal(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !56
  ret i8 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @validSnappingNormal(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %3 = load i16, ptr %2, align 4, !tbaa !34
  %4 = zext i16 %3 to i32
  %5 = and i32 %4, 6
  %6 = icmp ne i32 %5, 6
  %7 = and i32 %4, 10
  %8 = icmp ne i32 %7, 10
  %9 = and i1 %6, %8
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 11
  %12 = load float, ptr %11, align 4, !tbaa !57
  %13 = fcmp oeq float %12, 0.000000e+00
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 11, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !57
  %17 = fcmp oeq float %16, 0.000000e+00
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 11, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !57
  %21 = fcmp une float %20, 0.000000e+00
  br i1 %21, label %23, label %22

22:                                               ; preds = %18, %1
  br label %23

23:                                               ; preds = %14, %10, %18, %22
  %24 = phi i8 [ 0, %22 ], [ 1, %18 ], [ 1, %10 ], [ 1, %14 ]
  ret i8 %24
}

declare void @glBegin(i32 noundef) local_unnamed_addr #3

declare void @glVertex3f(float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @glEnd() local_unnamed_addr #3

declare void @glEnable(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #3

declare void @ED_node_draw_snap(ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @handleSnapping(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = alloca [2 x float], align 4
  %4 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !63
  %6 = icmp eq i16 %5, 4
  br i1 %6, label %7, label %58

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %9 = load i16, ptr %8, align 4, !tbaa !34
  %10 = and i16 %9, 8
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %58, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61
  %14 = load i32, ptr %13, align 8, !tbaa !65
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !65
  %18 = sitofp i32 %17 to float
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 14
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  %21 = icmp eq ptr %20, null
  br i1 %21, label %48, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %24 = getelementptr inbounds float, ptr %3, i64 1
  br label %25

25:                                               ; preds = %43, %22
  %26 = phi ptr [ %20, %22 ], [ %46, %43 ]
  %27 = phi float [ 1.000000e+02, %22 ], [ %45, %43 ]
  %28 = phi ptr [ null, %22 ], [ %44, %43 ]
  %29 = load ptr, ptr %23, align 8, !tbaa !66
  %30 = getelementptr inbounds %struct.TransSnapPoint, ptr %26, i64 0, i32 2
  %31 = call i32 @ED_view3d_project_float_global(ptr noundef %29, ptr noundef nonnull %30, ptr noundef nonnull %3, i32 noundef 0) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = load float, ptr %3, align 4, !tbaa !57
  %35 = fsub float %34, %15
  %36 = load float, ptr %24, align 4, !tbaa !57
  %37 = fsub float %36, %18
  %38 = fmul float %37, %37
  %39 = call float @llvm.fmuladd.f32(float %35, float %35, float %38)
  %40 = fcmp olt float %39, %27
  %41 = select i1 %40, ptr %26, ptr %28
  %42 = select i1 %40, float %39, float %27
  br label %43

43:                                               ; preds = %33, %25
  %44 = phi ptr [ %41, %33 ], [ %28, %25 ]
  %45 = phi float [ %42, %33 ], [ %27, %25 ]
  %46 = load ptr, ptr %26, align 8, !tbaa !51
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %25, !llvm.loop !67

48:                                               ; preds = %43, %12
  %49 = phi ptr [ null, %12 ], [ %44, %43 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 15
  %53 = load ptr, ptr %52, align 8, !tbaa !52
  %54 = icmp ne ptr %53, %49
  %55 = zext i1 %54 to i32
  store ptr %49, ptr %52, align 8, !tbaa !52
  br label %56

56:                                               ; preds = %51, %48
  %57 = phi i32 [ %55, %51 ], [ 0, %48 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %58

58:                                               ; preds = %56, %7, %2
  %59 = phi i32 [ 0, %2 ], [ %57, %56 ], [ 0, %7 ]
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define dso_local i32 @updateSelectedSnapPoint(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = alloca [2 x float], align 4
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %4 = load i16, ptr %3, align 4, !tbaa !34
  %5 = and i16 %4, 8
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %53, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61
  %9 = load i32, ptr %8, align 8, !tbaa !65
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !65
  %13 = sitofp i32 %12 to float
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 14
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %19 = getelementptr inbounds float, ptr %2, i64 1
  br label %20

20:                                               ; preds = %17, %38
  %21 = phi ptr [ %15, %17 ], [ %41, %38 ]
  %22 = phi float [ 1.000000e+02, %17 ], [ %40, %38 ]
  %23 = phi ptr [ null, %17 ], [ %39, %38 ]
  %24 = load ptr, ptr %18, align 8, !tbaa !66
  %25 = getelementptr inbounds %struct.TransSnapPoint, ptr %21, i64 0, i32 2
  %26 = call i32 @ED_view3d_project_float_global(ptr noundef %24, ptr noundef nonnull %25, ptr noundef nonnull %2, i32 noundef 0) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %20
  %29 = load float, ptr %2, align 4, !tbaa !57
  %30 = fsub float %29, %10
  %31 = load float, ptr %19, align 4, !tbaa !57
  %32 = fsub float %31, %13
  %33 = fmul float %32, %32
  %34 = call float @llvm.fmuladd.f32(float %30, float %30, float %33)
  %35 = fcmp olt float %34, %22
  %36 = select i1 %35, ptr %21, ptr %23
  %37 = select i1 %35, float %34, float %22
  br label %38

38:                                               ; preds = %20, %28
  %39 = phi ptr [ %36, %28 ], [ %23, %20 ]
  %40 = phi float [ %37, %28 ], [ %22, %20 ]
  %41 = load ptr, ptr %21, align 8, !tbaa !51
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %20, !llvm.loop !67

43:                                               ; preds = %38, %7
  %44 = phi ptr [ null, %7 ], [ %39, %38 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 15
  %48 = load ptr, ptr %47, align 8, !tbaa !52
  %49 = icmp ne ptr %48, %44
  %50 = zext i1 %49 to i32
  store ptr %44, ptr %47, align 8, !tbaa !52
  br label %51

51:                                               ; preds = %46, %43
  %52 = phi i32 [ %50, %46 ], [ 0, %43 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  br label %53

53:                                               ; preds = %51, %1
  %54 = phi i32 [ %52, %51 ], [ 0, %1 ]
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define dso_local void @applyProject(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca float, align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca float, align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x [3 x float]], align 16
  %15 = alloca [3 x [3 x float]], align 16
  %16 = alloca [3 x [3 x float]], align 16
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x [3 x float]], align 16
  %19 = alloca [4 x float], align 16
  %20 = alloca [3 x [3 x float]], align 16
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 5
  %22 = load i8, ptr %21, align 1, !tbaa !68
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %264, label %24

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !48
  %27 = and i32 %26, 12
  switch i32 %27, label %264 [
    i32 8, label %28
    i32 4, label %28
  ]

28:                                               ; preds = %24, %24
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !69
  %31 = and i32 %30, 4194304
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %264

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %35 = load ptr, ptr %34, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #13
  %36 = and i32 %30, 6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %40 = load ptr, ptr %39, align 8, !tbaa !71
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %44 = load ptr, ptr %43, align 8, !tbaa !72
  br label %45

45:                                               ; preds = %38, %42
  %46 = phi ptr [ %44, %42 ], [ %40, %38 ]
  %47 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 47
  %48 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %47) #13
  br label %49

49:                                               ; preds = %45, %33
  %50 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !73
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %263

53:                                               ; preds = %49
  %54 = getelementptr inbounds float, ptr %8, i64 1
  %55 = getelementptr inbounds float, ptr %8, i64 2
  %56 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %57 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %58 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %59 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %60 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 3
  %61 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %62 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %63 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %64 = getelementptr inbounds float, ptr %9, i64 1
  %65 = getelementptr inbounds float, ptr %6, i64 1
  %66 = getelementptr inbounds float, ptr %9, i64 2
  %67 = getelementptr inbounds float, ptr %6, i64 2
  %68 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 4
  %69 = getelementptr inbounds float, ptr %10, i64 2
  %70 = getelementptr inbounds float, ptr %10, i64 1
  %71 = getelementptr inbounds float, ptr %13, i64 1
  %72 = getelementptr inbounds float, ptr %13, i64 2
  %73 = getelementptr inbounds float, ptr %17, i64 1
  %74 = getelementptr inbounds float, ptr %17, i64 2
  br label %75

75:                                               ; preds = %53, %258
  %76 = phi ptr [ %35, %53 ], [ %260, %258 ]
  %77 = phi i32 [ 0, %53 ], [ %259, %258 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #13
  store float 1.000000e+03, ptr %12, align 4, !tbaa !57
  %78 = getelementptr inbounds %struct.TransData, ptr %76, i64 0, i32 16
  %79 = load i32, ptr %78, align 8, !tbaa !74
  %80 = and i32 %79, 4
  %81 = icmp eq i32 %80, 0
  %82 = and i32 %79, 2052
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %257

84:                                               ; preds = %75
  %85 = load i32, ptr %29, align 4, !tbaa !69
  %86 = and i32 %85, 2048
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.TransData, ptr %76, i64 0, i32 2
  %90 = load float, ptr %89, align 8, !tbaa !76
  %91 = fcmp oeq float %90, 0.000000e+00
  br i1 %91, label %257, label %92

92:                                               ; preds = %88, %84
  %93 = getelementptr inbounds %struct.TransData, ptr %76, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !77
  %95 = load float, ptr %94, align 4, !tbaa !57
  store float %95, ptr %8, align 4, !tbaa !57
  %96 = getelementptr inbounds float, ptr %94, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !57
  store float %97, ptr %54, align 4, !tbaa !57
  %98 = getelementptr inbounds float, ptr %94, i64 2
  %99 = load float, ptr %98, align 4, !tbaa !57
  store float %99, ptr %55, align 4, !tbaa !57
  %100 = and i32 %85, 6
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %92
  %103 = load ptr, ptr %56, align 8, !tbaa !71
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load ptr, ptr %57, align 8, !tbaa !72
  br label %107

107:                                              ; preds = %102, %105
  %108 = phi ptr [ %106, %105 ], [ %103, %102 ]
  %109 = getelementptr inbounds %struct.Object, ptr %108, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %109, ptr noundef nonnull %8) #13
  br label %130

110:                                              ; preds = %92
  %111 = and i32 %85, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %130, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.TransData, ptr %76, i64 0, i32 11
  %115 = load ptr, ptr %114, align 8, !tbaa !78
  %116 = getelementptr inbounds %struct.Object, ptr %115, i64 0, i32 103
  %117 = load i8, ptr %116, align 1, !tbaa !79
  %118 = or i8 %117, 7
  store i8 %118, ptr %116, align 1, !tbaa !79
  %119 = load ptr, ptr @G, align 8, !tbaa !84
  %120 = getelementptr inbounds %struct.Main, ptr %119, i64 0, i32 46
  %121 = load ptr, ptr %120, align 8, !tbaa !86
  %122 = load ptr, ptr %58, align 8, !tbaa !88
  call void @BKE_object_handle_update(ptr noundef %121, ptr noundef %122, ptr noundef %115) #13
  %123 = load ptr, ptr %114, align 8, !tbaa !78
  %124 = getelementptr inbounds %struct.Object, ptr %123, i64 0, i32 47, i64 3
  %125 = load float, ptr %124, align 4, !tbaa !57
  store float %125, ptr %8, align 4, !tbaa !57
  %126 = getelementptr inbounds %struct.Object, ptr %123, i64 0, i32 47, i64 3, i64 1
  %127 = load float, ptr %126, align 4, !tbaa !57
  store float %127, ptr %54, align 4, !tbaa !57
  %128 = getelementptr inbounds %struct.Object, ptr %123, i64 0, i32 47, i64 3, i64 2
  %129 = load float, ptr %128, align 4, !tbaa !57
  store float %129, ptr %55, align 4, !tbaa !57
  br label %130

130:                                              ; preds = %110, %113, %107
  %131 = load ptr, ptr %59, align 8, !tbaa !66
  %132 = call i32 @ED_view3d_project_float_global(ptr noundef %131, ptr noundef nonnull %8, ptr noundef nonnull %11, i32 noundef 0) #13
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %257

134:                                              ; preds = %130
  %135 = load i16, ptr %60, align 2, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store float 0x47DFFFFFE0000000, ptr %5, align 4, !tbaa !57
  %136 = load ptr, ptr %61, align 8, !tbaa !88
  %137 = getelementptr inbounds %struct.Scene, ptr %136, i64 0, i32 20
  %138 = load ptr, ptr %137, align 8, !tbaa !90
  %139 = getelementptr inbounds %struct.ToolSettings, ptr %138, i64 0, i32 51
  %140 = load i8, ptr %139, align 1, !tbaa !108
  %141 = getelementptr inbounds %struct.Scene, ptr %136, i64 0, i32 6
  %142 = load ptr, ptr %141, align 8, !tbaa !115
  %143 = load ptr, ptr %62, align 8, !tbaa !116
  %144 = load ptr, ptr %59, align 8, !tbaa !66
  %145 = load ptr, ptr %63, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  %146 = call zeroext i8 @ED_view3d_win_to_ray_ex(ptr noundef %144, ptr noundef %143, ptr noundef nonnull %11, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %2, i8 noundef zeroext 1) #13
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %134
  %149 = zext i8 %140 to i16
  %150 = sext i16 %135 to i32
  %151 = call fastcc zeroext i8 @snapObjectsRay(ptr noundef %136, i16 noundef signext %149, ptr noundef %142, ptr noundef %143, ptr noundef %144, ptr noundef %145, ptr noundef null, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef %150)
  br label %152

152:                                              ; preds = %134, %148
  %153 = phi i8 [ %151, %148 ], [ 0, %134 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %257, label %155

155:                                              ; preds = %152
  %156 = load float, ptr %9, align 4, !tbaa !57
  %157 = load float, ptr %8, align 4, !tbaa !57
  %158 = fsub float %156, %157
  store float %158, ptr %6, align 4, !tbaa !57
  %159 = load float, ptr %64, align 4, !tbaa !57
  %160 = load float, ptr %54, align 4, !tbaa !57
  %161 = fsub float %159, %160
  store float %161, ptr %65, align 4, !tbaa !57
  %162 = load float, ptr %66, align 4, !tbaa !57
  %163 = load float, ptr %55, align 4, !tbaa !57
  %164 = fsub float %162, %163
  store float %164, ptr %67, align 4, !tbaa !57
  %165 = getelementptr inbounds %struct.TransData, ptr %76, i64 0, i32 9
  call void @mul_m3_v3(ptr noundef nonnull %165, ptr noundef nonnull %6) #13
  %166 = load ptr, ptr %93, align 8, !tbaa !77
  %167 = load float, ptr %6, align 4, !tbaa !57
  %168 = load float, ptr %166, align 4, !tbaa !57
  %169 = fadd float %167, %168
  store float %169, ptr %166, align 4, !tbaa !57
  %170 = load float, ptr %65, align 4, !tbaa !57
  %171 = getelementptr inbounds float, ptr %166, i64 1
  %172 = load float, ptr %171, align 4, !tbaa !57
  %173 = fadd float %170, %172
  store float %173, ptr %171, align 4, !tbaa !57
  %174 = load float, ptr %67, align 4, !tbaa !57
  %175 = getelementptr inbounds float, ptr %166, i64 2
  %176 = load float, ptr %175, align 4, !tbaa !57
  %177 = fadd float %174, %176
  store float %177, ptr %175, align 4, !tbaa !57
  %178 = load i8, ptr %68, align 8, !tbaa !56
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %257, label %180

180:                                              ; preds = %155
  %181 = load i32, ptr %29, align 4, !tbaa !69
  %182 = and i32 %181, 1
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %257, label %184

184:                                              ; preds = %180
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %20) #13
  %185 = getelementptr inbounds %struct.TransData, ptr %76, i64 0, i32 10, i64 2
  %186 = getelementptr inbounds %struct.TransData, ptr %76, i64 0, i32 10, i64 2, i64 1
  %187 = load float, ptr %186, align 4, !tbaa !57
  %188 = load float, ptr %69, align 4, !tbaa !57
  %189 = getelementptr inbounds %struct.TransData, ptr %76, i64 0, i32 10, i64 2, i64 2
  %190 = load float, ptr %189, align 4, !tbaa !57
  %191 = load float, ptr %70, align 4, !tbaa !57
  %192 = fneg float %190
  %193 = fmul float %191, %192
  %194 = call float @llvm.fmuladd.f32(float %187, float %188, float %193)
  store float %194, ptr %13, align 4, !tbaa !57
  %195 = load float, ptr %10, align 4, !tbaa !57
  %196 = load float, ptr %185, align 4, !tbaa !57
  %197 = fneg float %196
  %198 = fmul float %188, %197
  %199 = call float @llvm.fmuladd.f32(float %190, float %195, float %198)
  store float %199, ptr %71, align 4, !tbaa !57
  %200 = fneg float %187
  %201 = fmul float %195, %200
  %202 = call float @llvm.fmuladd.f32(float %196, float %191, float %201)
  store float %202, ptr %72, align 4, !tbaa !57
  %203 = fmul float %187, %191
  %204 = call float @llvm.fmuladd.f32(float %196, float %195, float %203)
  %205 = call float @llvm.fmuladd.f32(float %190, float %188, float %204)
  %206 = fcmp ugt float %205, -1.000000e+00
  br i1 %206, label %207, label %211

207:                                              ; preds = %184
  %208 = fcmp ult float %205, 1.000000e+00
  br i1 %208, label %209, label %211

209:                                              ; preds = %207
  %210 = call float @acosf(float noundef %205) #13
  br label %211

211:                                              ; preds = %184, %207, %209
  %212 = phi float [ %210, %209 ], [ 0x400921FB60000000, %184 ], [ 0.000000e+00, %207 ]
  call void @axis_angle_to_quat(ptr noundef nonnull %19, ptr noundef nonnull %13, float noundef %212) #13
  call void @quat_to_mat3(ptr noundef nonnull %14, ptr noundef nonnull %19) #13
  %213 = getelementptr inbounds %struct.TransData, ptr %76, i64 0, i32 8
  call void @mul_m3_m3m3(ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef nonnull %213) #13
  call void @mul_m3_m3m3(ptr noundef nonnull %16, ptr noundef nonnull %165, ptr noundef nonnull %15) #13
  %214 = getelementptr inbounds %struct.TransData, ptr %76, i64 0, i32 13
  %215 = load ptr, ptr %214, align 8, !tbaa !117
  %216 = getelementptr inbounds %struct.TransDataExtension, ptr %215, i64 0, i32 4
  %217 = load float, ptr %216, align 4, !tbaa !57
  %218 = load float, ptr %215, align 4, !tbaa !57
  %219 = fadd float %217, %218
  store float %219, ptr %17, align 4, !tbaa !57
  %220 = getelementptr inbounds %struct.TransDataExtension, ptr %215, i64 0, i32 4, i64 1
  %221 = load float, ptr %220, align 4, !tbaa !57
  %222 = getelementptr inbounds float, ptr %215, i64 1
  %223 = load float, ptr %222, align 4, !tbaa !57
  %224 = fadd float %221, %223
  store float %224, ptr %73, align 4, !tbaa !57
  %225 = getelementptr inbounds %struct.TransDataExtension, ptr %215, i64 0, i32 4, i64 2
  %226 = load float, ptr %225, align 4, !tbaa !57
  %227 = getelementptr inbounds float, ptr %215, i64 2
  %228 = load float, ptr %227, align 4, !tbaa !57
  %229 = fadd float %226, %228
  store float %229, ptr %74, align 4, !tbaa !57
  %230 = getelementptr inbounds %struct.TransDataExtension, ptr %215, i64 0, i32 17
  %231 = load i32, ptr %230, align 8, !tbaa !118
  %232 = trunc i32 %231 to i16
  call void @eulO_to_mat3(ptr noundef nonnull %20, ptr noundef nonnull %17, i16 noundef signext %232) #13
  call void @mul_m3_m3m3(ptr noundef nonnull %18, ptr noundef nonnull %16, ptr noundef nonnull %20) #13
  %233 = load ptr, ptr %214, align 8, !tbaa !117
  %234 = getelementptr inbounds %struct.TransDataExtension, ptr %233, i64 0, i32 3
  %235 = load ptr, ptr %234, align 8, !tbaa !120
  %236 = getelementptr inbounds %struct.TransDataExtension, ptr %233, i64 0, i32 17
  %237 = load i32, ptr %236, align 8, !tbaa !118
  %238 = trunc i32 %237 to i16
  call void @mat3_to_compatible_eulO(ptr noundef nonnull %17, ptr noundef %235, i16 noundef signext %238, ptr noundef nonnull %18) #13
  %239 = load ptr, ptr %214, align 8, !tbaa !117
  %240 = load float, ptr %17, align 4, !tbaa !57
  %241 = load float, ptr %239, align 4, !tbaa !57
  %242 = fsub float %240, %241
  store float %242, ptr %17, align 4, !tbaa !57
  %243 = load float, ptr %73, align 4, !tbaa !57
  %244 = getelementptr inbounds float, ptr %239, i64 1
  %245 = load float, ptr %244, align 4, !tbaa !57
  %246 = fsub float %243, %245
  store float %246, ptr %73, align 4, !tbaa !57
  %247 = load float, ptr %74, align 4, !tbaa !57
  %248 = getelementptr inbounds float, ptr %239, i64 2
  %249 = load float, ptr %248, align 4, !tbaa !57
  %250 = fsub float %247, %249
  store float %250, ptr %74, align 4, !tbaa !57
  %251 = getelementptr inbounds %struct.TransDataExtension, ptr %239, i64 0, i32 3
  %252 = load ptr, ptr %251, align 8, !tbaa !120
  store float %242, ptr %252, align 4, !tbaa !57
  %253 = load float, ptr %73, align 4, !tbaa !57
  %254 = getelementptr inbounds float, ptr %252, i64 1
  store float %253, ptr %254, align 4, !tbaa !57
  %255 = load float, ptr %74, align 4, !tbaa !57
  %256 = getelementptr inbounds float, ptr %252, i64 2
  store float %255, ptr %256, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #13
  br label %257

257:                                              ; preds = %130, %155, %180, %211, %152, %88, %75
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  br i1 %81, label %258, label %263

258:                                              ; preds = %257
  %259 = add nuw nsw i32 %77, 1
  %260 = getelementptr inbounds %struct.TransData, ptr %76, i64 1
  %261 = load i32, ptr %50, align 8, !tbaa !73
  %262 = icmp slt i32 %259, %261
  br i1 %262, label %75, label %263, !llvm.loop !121

263:                                              ; preds = %258, %257, %49
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  br label %264

264:                                              ; preds = %24, %263, %28, %1
  ret void
}

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_object_handle_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ED_view3d_project_float_global(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @snapObjectsTransform(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  store float 0x47DFFFFFE0000000, ptr %10, align 4, !tbaa !57
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !90
  %15 = getelementptr inbounds %struct.ToolSettings, ptr %14, i64 0, i32 51
  %16 = load i8, ptr %15, align 1, !tbaa !108
  %17 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !115
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %20 = load ptr, ptr %19, align 8, !tbaa !116
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %22 = load ptr, ptr %21, align 8, !tbaa !66
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %24 = load ptr, ptr %23, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  %25 = call zeroext i8 @ED_view3d_win_to_ray_ex(ptr noundef %22, ptr noundef %20, ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7, i8 noundef zeroext 1) #13
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %6
  %28 = zext i8 %16 to i16
  %29 = call fastcc zeroext i8 @snapObjectsRay(ptr noundef %12, i16 noundef signext %28, ptr noundef %18, ptr noundef %20, ptr noundef %22, ptr noundef %24, ptr noundef null, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %30

30:                                               ; preds = %6, %27
  %31 = phi i8 [ %29, %27 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  ret i8 %31
}

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @quat_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @eulO_to_mat3(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare void @mat3_to_compatible_eulO(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @applyGridAbsolute(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = alloca [4 x [4 x float]], align 16
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #13
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !48
  %7 = and i32 %6, 12
  switch i32 %7, label %141 [
    i32 8, label %8
    i32 4, label %8
  ]

8:                                                ; preds = %1, %1
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14
  %10 = load i16, ptr %9, align 8, !tbaa !122
  %11 = icmp eq i16 %10, 8
  br i1 %11, label %12, label %141

12:                                               ; preds = %8
  %13 = and i32 %6, 2
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 1
  %17 = select i1 %14, ptr %16, ptr %15
  %18 = load float, ptr %17, align 4, !tbaa !57
  %19 = fcmp oeq float %18, 0.000000e+00
  br i1 %19, label %141, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !69
  %23 = and i32 %22, 6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %27 = load ptr, ptr %26, align 8, !tbaa !71
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  br label %32

32:                                               ; preds = %25, %29
  %33 = phi ptr [ %31, %29 ], [ %27, %25 ]
  %34 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 47
  %35 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %2, ptr noundef nonnull %34) #13
  br label %36

36:                                               ; preds = %32, %20
  %37 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !73
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %141

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %42 = load ptr, ptr %41, align 8, !tbaa !70
  %43 = getelementptr inbounds float, ptr %3, i64 1
  %44 = getelementptr inbounds float, ptr %3, i64 2
  %45 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %46 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %47 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %48 = fdiv float 1.000000e+00, %18
  %49 = getelementptr inbounds float, ptr %4, i64 1
  %50 = getelementptr inbounds float, ptr %4, i64 2
  br label %51

51:                                               ; preds = %40, %136
  %52 = phi ptr [ %42, %40 ], [ %138, %136 ]
  %53 = phi i32 [ 0, %40 ], [ %137, %136 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  %54 = getelementptr inbounds %struct.TransData, ptr %52, i64 0, i32 16
  %55 = load i32, ptr %54, align 8, !tbaa !74
  %56 = and i32 %55, 4
  %57 = icmp eq i32 %56, 0
  %58 = and i32 %55, 2052
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %135

60:                                               ; preds = %51
  %61 = load i32, ptr %21, align 4, !tbaa !69
  %62 = and i32 %61, 2048
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.TransData, ptr %52, i64 0, i32 2
  %66 = load float, ptr %65, align 8, !tbaa !76
  %67 = fcmp oeq float %66, 0.000000e+00
  br i1 %67, label %135, label %68

68:                                               ; preds = %64, %60
  %69 = getelementptr inbounds %struct.TransData, ptr %52, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !77
  %71 = load float, ptr %70, align 4, !tbaa !57
  store float %71, ptr %3, align 4, !tbaa !57
  %72 = getelementptr inbounds float, ptr %70, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !57
  store float %73, ptr %43, align 4, !tbaa !57
  %74 = getelementptr inbounds float, ptr %70, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !57
  store float %75, ptr %44, align 4, !tbaa !57
  %76 = and i32 %61, 6
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %68
  %79 = load ptr, ptr %45, align 8, !tbaa !71
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load ptr, ptr %46, align 8, !tbaa !72
  br label %83

83:                                               ; preds = %78, %81
  %84 = phi ptr [ %82, %81 ], [ %79, %78 ]
  %85 = getelementptr inbounds %struct.Object, ptr %84, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %85, ptr noundef nonnull %3) #13
  br label %106

86:                                               ; preds = %68
  %87 = and i32 %61, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %106, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.TransData, ptr %52, i64 0, i32 11
  %91 = load ptr, ptr %90, align 8, !tbaa !78
  %92 = getelementptr inbounds %struct.Object, ptr %91, i64 0, i32 103
  %93 = load i8, ptr %92, align 1, !tbaa !79
  %94 = or i8 %93, 7
  store i8 %94, ptr %92, align 1, !tbaa !79
  %95 = load ptr, ptr @G, align 8, !tbaa !84
  %96 = getelementptr inbounds %struct.Main, ptr %95, i64 0, i32 46
  %97 = load ptr, ptr %96, align 8, !tbaa !86
  %98 = load ptr, ptr %47, align 8, !tbaa !88
  call void @BKE_object_handle_update(ptr noundef %97, ptr noundef %98, ptr noundef %91) #13
  %99 = load ptr, ptr %90, align 8, !tbaa !78
  %100 = getelementptr inbounds %struct.Object, ptr %99, i64 0, i32 47, i64 3
  %101 = load float, ptr %100, align 4, !tbaa !57
  store float %101, ptr %3, align 4, !tbaa !57
  %102 = getelementptr inbounds %struct.Object, ptr %99, i64 0, i32 47, i64 3, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !57
  store float %103, ptr %43, align 4, !tbaa !57
  %104 = getelementptr inbounds %struct.Object, ptr %99, i64 0, i32 47, i64 3, i64 2
  %105 = load float, ptr %104, align 4, !tbaa !57
  store float %105, ptr %44, align 4, !tbaa !57
  br label %106

106:                                              ; preds = %86, %89, %83
  %107 = load float, ptr %3, align 4, !tbaa !57
  %108 = fmul float %48, %107
  %109 = load float, ptr %43, align 4, !tbaa !57
  %110 = fmul float %48, %109
  %111 = load float, ptr %44, align 4, !tbaa !57
  %112 = fmul float %48, %111
  %113 = call float @llvm.floor.f32(float %108)
  %114 = call float @llvm.floor.f32(float %110)
  %115 = call float @llvm.floor.f32(float %112)
  %116 = fmul float %18, %113
  %117 = fmul float %18, %114
  %118 = fmul float %18, %115
  %119 = fsub float %116, %107
  store float %119, ptr %4, align 4, !tbaa !57
  %120 = fsub float %117, %109
  store float %120, ptr %49, align 4, !tbaa !57
  %121 = fsub float %118, %111
  store float %121, ptr %50, align 4, !tbaa !57
  %122 = getelementptr inbounds %struct.TransData, ptr %52, i64 0, i32 9
  call void @mul_m3_v3(ptr noundef nonnull %122, ptr noundef nonnull %4) #13
  %123 = load ptr, ptr %69, align 8, !tbaa !77
  %124 = load float, ptr %4, align 4, !tbaa !57
  %125 = load float, ptr %123, align 4, !tbaa !57
  %126 = fadd float %124, %125
  store float %126, ptr %123, align 4, !tbaa !57
  %127 = load float, ptr %49, align 4, !tbaa !57
  %128 = getelementptr inbounds float, ptr %123, i64 1
  %129 = load float, ptr %128, align 4, !tbaa !57
  %130 = fadd float %127, %129
  store float %130, ptr %128, align 4, !tbaa !57
  %131 = load float, ptr %50, align 4, !tbaa !57
  %132 = getelementptr inbounds float, ptr %123, i64 2
  %133 = load float, ptr %132, align 4, !tbaa !57
  %134 = fadd float %131, %133
  store float %134, ptr %132, align 4, !tbaa !57
  br label %135

135:                                              ; preds = %64, %51, %106
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  br i1 %57, label %136, label %141

136:                                              ; preds = %135
  %137 = add nuw nsw i32 %53, 1
  %138 = getelementptr inbounds %struct.TransData, ptr %52, i64 1
  %139 = load i32, ptr %37, align 8, !tbaa !73
  %140 = icmp slt i32 %137, %139
  br i1 %140, label %51, label %141, !llvm.loop !123

141:                                              ; preds = %135, %136, %36, %1, %12, %8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

; Function Attrs: nounwind uwtable
define dso_local void @applySnapping(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 5
  %5 = load i8, ptr %4, align 1, !tbaa !68
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %44

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %9 = load i16, ptr %8, align 4, !tbaa !34
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !124
  tail call void %14(ptr noundef %0) #13
  br label %41

15:                                               ; preds = %7
  %16 = load i16, ptr %3, align 8, !tbaa !122
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %44, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !48
  %21 = and i32 %20, 12
  switch i32 %21, label %44 [
    i32 8, label %22
    i32 4, label %22
  ]

22:                                               ; preds = %18, %18
  %23 = tail call double @PIL_check_seconds_timer() #13
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 17
  %25 = load double, ptr %24, align 8, !tbaa !125
  %26 = fsub double %23, %25
  %27 = fcmp ult double %26, 1.000000e-02
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !126
  tail call void %30(ptr noundef %0, ptr noundef %1) #13
  %31 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 20
  %32 = load ptr, ptr %31, align 8, !tbaa !124
  tail call void %32(ptr noundef %0) #13
  store double %23, ptr %24, align 8, !tbaa !125
  br label %33

33:                                               ; preds = %28, %22
  %34 = load i16, ptr %8, align 4, !tbaa !34
  %35 = zext i16 %34 to i32
  %36 = and i32 %35, 6
  %37 = icmp ne i32 %36, 6
  %38 = and i32 %35, 10
  %39 = icmp ne i32 %38, 10
  %40 = and i1 %37, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %33, %12
  %42 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 18
  %43 = load ptr, ptr %42, align 8, !tbaa !127
  tail call void %43(ptr noundef %0, ptr noundef %1) #13
  br label %44

44:                                               ; preds = %41, %18, %33, %15, %2
  ret void
}

declare double @PIL_check_seconds_timer() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @resetSnapping(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  store i16 0, ptr %3, align 4, !tbaa !34
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 4
  store i8 0, ptr %4, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 5
  store i8 0, ptr %5, align 1, !tbaa !68
  store i16 0, ptr %2, align 8, !tbaa !122
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 3
  store i16 0, ptr %6, align 2, !tbaa !89
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 1
  store i16 0, ptr %7, align 2, !tbaa !128
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 17
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 11
  store float 0.000000e+00, ptr %9, align 8, !tbaa !57
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 11, i64 1
  store float 0.000000e+00, ptr %10, align 4, !tbaa !57
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 11, i64 2
  store float 0.000000e+00, ptr %11, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 13
  store i8 0, ptr %12, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @initSnapping(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 57
  %4 = load ptr, ptr %3, align 8, !tbaa !129
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 55
  %6 = load i16, ptr %5, align 4, !tbaa !130
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  store i16 0, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 4
  store i8 0, ptr %9, align 8, !tbaa !56
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 5
  store i8 0, ptr %10, align 1, !tbaa !68
  store i16 0, ptr %7, align 8, !tbaa !122
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 3
  store i16 0, ptr %11, align 2, !tbaa !89
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 1
  store i16 0, ptr %12, align 2, !tbaa !128
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 17
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 18
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 11
  store float 0.000000e+00, ptr %15, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 11, i64 1
  store float 0.000000e+00, ptr %16, align 4, !tbaa !57
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 11, i64 2
  store float 0.000000e+00, ptr %17, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 13
  store i8 0, ptr %18, align 8, !tbaa !62
  %19 = icmp eq ptr %1, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  br i1 %19, label %99, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !131
  %23 = tail call ptr @RNA_struct_find_property(ptr noundef %22, ptr noundef nonnull @.str) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %99, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %21, align 8, !tbaa !131
  %27 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %26, ptr noundef nonnull @.str) #13
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %99, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %21, align 8, !tbaa !131
  %31 = tail call i32 @RNA_boolean_get(ptr noundef %30, ptr noundef nonnull @.str) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %130, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !48
  %36 = or i32 %35, 4
  store i32 %36, ptr %34, align 8, !tbaa !48
  %37 = load ptr, ptr %21, align 8, !tbaa !131
  %38 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %37, ptr noundef nonnull @.str.1) #13
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = load ptr, ptr %21, align 8, !tbaa !131
  %42 = tail call i32 @RNA_enum_get(ptr noundef %41, ptr noundef nonnull @.str.1) #13
  %43 = trunc i32 %42 to i16
  br label %44

44:                                               ; preds = %40, %33
  %45 = phi i16 [ %43, %40 ], [ %6, %33 ]
  %46 = load ptr, ptr %21, align 8, !tbaa !131
  %47 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %46, ptr noundef nonnull @.str.2) #13
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr %21, align 8, !tbaa !131
  %51 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9
  tail call void @RNA_float_get_array(ptr noundef %50, ptr noundef nonnull @.str.2, ptr noundef nonnull %51) #13
  %52 = load i16, ptr %8, align 4, !tbaa !34
  %53 = or i16 %52, 5
  store i16 %53, ptr %8, align 4, !tbaa !34
  br label %54

54:                                               ; preds = %49, %44
  %55 = load ptr, ptr %21, align 8, !tbaa !131
  %56 = tail call ptr @RNA_struct_find_property(ptr noundef %55, ptr noundef nonnull @.str.3) #13
  %57 = icmp eq ptr %56, null
  br i1 %57, label %82, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %21, align 8, !tbaa !131
  %60 = tail call i32 @RNA_boolean_get(ptr noundef %59, ptr noundef nonnull @.str.3) #13
  %61 = trunc i32 %60 to i8
  store i8 %61, ptr %9, align 8, !tbaa !56
  %62 = load ptr, ptr %21, align 8, !tbaa !131
  tail call void @RNA_float_get_array(ptr noundef %62, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #13
  %63 = load float, ptr %15, align 4, !tbaa !57
  %64 = load float, ptr %16, align 4, !tbaa !57
  %65 = fmul float %64, %64
  %66 = tail call float @llvm.fmuladd.f32(float %63, float %63, float %65)
  %67 = load float, ptr %17, align 4, !tbaa !57
  %68 = tail call float @llvm.fmuladd.f32(float %67, float %67, float %66)
  %69 = fcmp ogt float %68, 0x38AA95A5C0000000
  br i1 %69, label %70, label %79

70:                                               ; preds = %58
  %71 = tail call float @sqrtf(float noundef %68) #13
  %72 = fdiv float 1.000000e+00, %71
  %73 = load float, ptr %15, align 4, !tbaa !57
  %74 = fmul float %73, %72
  store float %74, ptr %15, align 4, !tbaa !57
  %75 = load float, ptr %16, align 4, !tbaa !57
  %76 = fmul float %72, %75
  store float %76, ptr %16, align 4, !tbaa !57
  %77 = load float, ptr %17, align 4, !tbaa !57
  %78 = fmul float %72, %77
  br label %80

79:                                               ; preds = %58
  store float 0.000000e+00, ptr %15, align 4, !tbaa !57
  store float 0.000000e+00, ptr %16, align 4, !tbaa !57
  br label %80

80:                                               ; preds = %70, %79
  %81 = phi float [ 0.000000e+00, %79 ], [ %78, %70 ]
  store float %81, ptr %17, align 4, !tbaa !57
  br label %82

82:                                               ; preds = %80, %54
  %83 = load ptr, ptr %21, align 8, !tbaa !131
  %84 = tail call ptr @RNA_struct_find_property(ptr noundef %83, ptr noundef nonnull @.str.5) #13
  %85 = icmp eq ptr %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %21, align 8, !tbaa !131
  %88 = tail call i32 @RNA_boolean_get(ptr noundef %87, ptr noundef nonnull @.str.5) #13
  %89 = trunc i32 %88 to i8
  store i8 %89, ptr %10, align 1, !tbaa !68
  br label %90

90:                                               ; preds = %86, %82
  %91 = load ptr, ptr %21, align 8, !tbaa !131
  %92 = tail call ptr @RNA_struct_find_property(ptr noundef %91, ptr noundef nonnull @.str.6) #13
  %93 = icmp eq ptr %92, null
  br i1 %93, label %130, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %21, align 8, !tbaa !131
  %96 = tail call i32 @RNA_boolean_get(ptr noundef %95, ptr noundef nonnull @.str.6) #13
  %97 = trunc i32 %96 to i8
  %98 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 6
  store i8 %97, ptr %98, align 2, !tbaa !133
  br label %130

99:                                               ; preds = %25, %20, %2
  %100 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %101 = load i32, ptr %100, align 4, !tbaa !69
  %102 = and i32 %101, 2097152
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %130, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %106 = load i8, ptr %105, align 8, !tbaa !50
  switch i8 %106, label %130 [
    i8 1, label %107
    i8 6, label %107
    i8 16, label %107
  ]

107:                                              ; preds = %104, %104, %104
  %108 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 54
  %109 = load i16, ptr %108, align 2, !tbaa !134
  %110 = and i16 %109, 1
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %114 = load i32, ptr %113, align 8, !tbaa !48
  %115 = or i32 %114, 4
  store i32 %115, ptr %113, align 8, !tbaa !48
  br label %116

116:                                              ; preds = %112, %107
  %117 = load ptr, ptr %3, align 8, !tbaa !129
  %118 = getelementptr inbounds %struct.ToolSettings, ptr %117, i64 0, i32 54
  %119 = load i16, ptr %118, align 2, !tbaa !134
  %120 = trunc i16 %119 to i8
  %121 = lshr i8 %120, 1
  %122 = and i8 %121, 1
  store i8 %122, ptr %9, align 8, !tbaa !56
  %123 = lshr i8 %120, 3
  %124 = and i8 %123, 1
  store i8 %124, ptr %10, align 1, !tbaa !68
  %125 = and i16 %119, 16
  %126 = icmp eq i16 %125, 0
  %127 = zext i1 %126 to i8
  %128 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 6
  store i8 %127, ptr %128, align 2, !tbaa !133
  %129 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 7
  store i8 %124, ptr %129, align 1, !tbaa !135
  br label %130

130:                                              ; preds = %104, %99, %116, %29, %94, %90
  %131 = phi i16 [ %45, %94 ], [ %45, %90 ], [ %6, %29 ], [ %6, %116 ], [ %6, %99 ], [ %6, %104 ]
  store i16 %131, ptr %12, align 2, !tbaa !128
  %132 = load ptr, ptr %3, align 8, !tbaa !129
  %133 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %134 = load ptr, ptr %133, align 8, !tbaa !71
  %135 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %136 = load ptr, ptr %135, align 8, !tbaa !88
  %137 = getelementptr inbounds %struct.Scene, ptr %136, i64 0, i32 6
  %138 = load ptr, ptr %137, align 8, !tbaa !115
  %139 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %140 = load i8, ptr %139, align 8, !tbaa !50
  switch i8 %140, label %147 [
    i8 16, label %141
    i8 6, label %144
  ]

141:                                              ; preds = %130
  store i8 0, ptr %10, align 1, !tbaa !68
  %142 = getelementptr inbounds %struct.ToolSettings, ptr %132, i64 0, i32 52
  %143 = load i8, ptr %142, align 8, !tbaa !136
  br label %152

144:                                              ; preds = %130
  store i8 0, ptr %10, align 1, !tbaa !68
  %145 = getelementptr inbounds %struct.ToolSettings, ptr %132, i64 0, i32 53
  %146 = load i8, ptr %145, align 1, !tbaa !137
  br label %152

147:                                              ; preds = %130
  %148 = getelementptr inbounds %struct.ToolSettings, ptr %132, i64 0, i32 51
  %149 = load i8, ptr %148, align 1, !tbaa !108
  %150 = icmp eq i8 %149, 3
  br i1 %150, label %152, label %151

151:                                              ; preds = %147
  store i8 0, ptr %10, align 1, !tbaa !68
  br label %152

152:                                              ; preds = %147, %151, %144, %141
  %153 = phi i8 [ %146, %144 ], [ %143, %141 ], [ %149, %151 ], [ %149, %147 ]
  %154 = zext i8 %153 to i16
  store i16 %154, ptr %7, align 8, !tbaa !122
  switch i8 %140, label %248 [
    i8 1, label %155
    i8 6, label %155
    i8 16, label %220
  ]

155:                                              ; preds = %152, %152
  %156 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %157 = load i32, ptr %156, align 4, !tbaa !69
  %158 = and i32 %157, 16
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %218

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 19
  store ptr @CalcSnapGeometry, ptr %161, align 8, !tbaa !126
  %162 = icmp ult i16 %131, 4
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = zext nneg i16 %131 to i64
  %165 = getelementptr inbounds [4 x ptr], ptr @switch.table.initSnapping.10, i64 0, i64 %164
  %166 = load ptr, ptr %165, align 8
  %167 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 20
  store ptr %166, ptr %167, align 8, !tbaa !124
  br label %168

168:                                              ; preds = %160, %163
  %169 = load i32, ptr %0, align 8, !tbaa !138
  switch i32 %169, label %182 [
    i32 1, label %170
    i32 2, label %172
    i32 3, label %177
  ]

170:                                              ; preds = %168
  store ptr @ApplySnapTranslation, ptr %14, align 8, !tbaa !127
  %171 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 21
  store ptr @TranslationBetween, ptr %171, align 8, !tbaa !139
  br label %183

172:                                              ; preds = %168
  store ptr @ApplySnapRotation, ptr %14, align 8, !tbaa !127
  %173 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 21
  store ptr @RotationBetween, ptr %173, align 8, !tbaa !139
  %174 = icmp eq i16 %131, 1
  br i1 %174, label %175, label %183

175:                                              ; preds = %172
  store i16 2, ptr %12, align 2, !tbaa !128
  %176 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 20
  store ptr @TargetSnapMedian, ptr %176, align 8, !tbaa !124
  br label %183

177:                                              ; preds = %168
  store ptr @ApplySnapResize, ptr %14, align 8, !tbaa !127
  %178 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 21
  store ptr @ResizeBetween, ptr %178, align 8, !tbaa !139
  %179 = icmp eq i16 %131, 1
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  store i16 2, ptr %12, align 2, !tbaa !128
  %181 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 20
  store ptr @TargetSnapMedian, ptr %181, align 8, !tbaa !124
  br label %183

182:                                              ; preds = %168
  store ptr null, ptr %14, align 8, !tbaa !127
  br label %183

183:                                              ; preds = %170, %172, %175, %177, %180, %182
  %184 = load ptr, ptr %14, align 8, !tbaa !127
  %185 = icmp ne ptr %184, null
  %186 = icmp ne ptr %134, null
  %187 = select i1 %185, i1 %186, i1 false
  br i1 %187, label %188, label %200

188:                                              ; preds = %183
  %189 = getelementptr inbounds %struct.Object, ptr %134, i64 0, i32 3
  %190 = load i16, ptr %189, align 8, !tbaa !140
  switch i16 %190, label %200 [
    i16 1, label %191
    i16 2, label %195
    i16 5, label %195
    i16 22, label %195
    i16 25, label %195
  ]

191:                                              ; preds = %188
  %192 = and i32 %157, 2048
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %191
  store i16 2, ptr %11, align 2, !tbaa !89
  br label %249

195:                                              ; preds = %188, %188, %188, %188, %191
  %196 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 6
  %197 = load i8, ptr %196, align 2, !tbaa !133
  %198 = icmp eq i8 %197, 0
  %199 = select i1 %198, i16 2, i16 0
  store i16 %199, ptr %11, align 2, !tbaa !89
  br label %249

200:                                              ; preds = %188, %183
  %201 = icmp eq ptr %134, null
  %202 = select i1 %185, i1 %201, i1 false
  %203 = icmp ne ptr %138, null
  %204 = select i1 %202, i1 %203, i1 false
  br i1 %204, label %205, label %215

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.Base, ptr %138, i64 0, i32 7
  %207 = load ptr, ptr %206, align 8, !tbaa !141
  %208 = icmp eq ptr %207, null
  br i1 %208, label %215, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.Object, ptr %207, i64 0, i32 27
  %211 = load i32, ptr %210, align 8, !tbaa !143
  %212 = and i32 %211, 32
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %209
  store i16 0, ptr %11, align 2, !tbaa !89
  br label %249

215:                                              ; preds = %209, %205, %200
  br i1 %202, label %216, label %217

216:                                              ; preds = %215
  store i16 1, ptr %11, align 2, !tbaa !89
  br label %249

217:                                              ; preds = %215
  store i16 0, ptr %7, align 8, !tbaa !122
  br label %249

218:                                              ; preds = %155
  %219 = icmp eq i8 %140, 16
  br i1 %219, label %220, label %248

220:                                              ; preds = %152, %218
  %221 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 19
  store ptr @CalcSnapGeometry, ptr %221, align 8, !tbaa !126
  %222 = icmp ult i16 %131, 4
  br i1 %222, label %223, label %228

223:                                              ; preds = %220
  %224 = zext nneg i16 %131 to i64
  %225 = getelementptr inbounds [4 x ptr], ptr @switch.table.initSnapping.10, i64 0, i64 %224
  %226 = load ptr, ptr %225, align 8
  %227 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 20
  store ptr %226, ptr %227, align 8, !tbaa !124
  br label %228

228:                                              ; preds = %220, %223
  %229 = load i32, ptr %0, align 8, !tbaa !138
  switch i32 %229, label %242 [
    i32 1, label %230
    i32 2, label %232
    i32 3, label %237
  ]

230:                                              ; preds = %228
  store ptr @ApplySnapTranslation, ptr %14, align 8, !tbaa !127
  %231 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 21
  store ptr @TranslationBetween, ptr %231, align 8, !tbaa !139
  br label %243

232:                                              ; preds = %228
  store ptr @ApplySnapRotation, ptr %14, align 8, !tbaa !127
  %233 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 21
  store ptr @RotationBetween, ptr %233, align 8, !tbaa !139
  %234 = icmp eq i16 %131, 1
  br i1 %234, label %235, label %243

235:                                              ; preds = %232
  store i16 2, ptr %12, align 2, !tbaa !128
  %236 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 20
  store ptr @TargetSnapMedian, ptr %236, align 8, !tbaa !124
  br label %243

237:                                              ; preds = %228
  store ptr @ApplySnapResize, ptr %14, align 8, !tbaa !127
  %238 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 21
  store ptr @ResizeBetween, ptr %238, align 8, !tbaa !139
  %239 = icmp eq i16 %131, 1
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  store i16 2, ptr %12, align 2, !tbaa !128
  %241 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 20
  store ptr @TargetSnapMedian, ptr %241, align 8, !tbaa !124
  br label %243

242:                                              ; preds = %228
  store ptr null, ptr %14, align 8, !tbaa !127
  br label %243

243:                                              ; preds = %230, %232, %235, %237, %240, %242
  %244 = load ptr, ptr %14, align 8, !tbaa !127
  %245 = icmp eq ptr %244, null
  br i1 %245, label %247, label %246

246:                                              ; preds = %243
  store i16 1, ptr %11, align 2, !tbaa !89
  br label %249

247:                                              ; preds = %243
  store i16 0, ptr %7, align 8, !tbaa !122
  br label %249

248:                                              ; preds = %152, %218
  store i16 0, ptr %7, align 8, !tbaa !122
  br label %249

249:                                              ; preds = %194, %195, %214, %216, %217, %246, %247, %248
  ret void
}

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @addSnapPoint(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %3 = load i16, ptr %2, align 4, !tbaa !34
  %4 = and i16 %3, 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %8 = load i8, ptr %7, align 8, !tbaa !50
  %9 = icmp eq i8 %8, 1
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %12 = tail call ptr %11(i64 noundef 32, ptr noundef nonnull @.str.7) #13
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 15
  store ptr %12, ptr %13, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.TransSnapPoint, ptr %12, i64 0, i32 2
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9
  %16 = load float, ptr %15, align 4, !tbaa !57
  store float %16, ptr %14, align 4, !tbaa !57
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !57
  %19 = getelementptr inbounds %struct.TransSnapPoint, ptr %12, i64 0, i32 2, i64 1
  store float %18, ptr %19, align 4, !tbaa !57
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !57
  %22 = getelementptr inbounds %struct.TransSnapPoint, ptr %12, i64 0, i32 2, i64 2
  store float %21, ptr %22, align 4, !tbaa !57
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 14
  tail call void @BLI_addtail(ptr noundef nonnull %23, ptr noundef %12) #13
  %24 = load i16, ptr %2, align 4, !tbaa !34
  %25 = or i16 %24, 8
  store i16 %25, ptr %2, align 4, !tbaa !34
  br label %26

26:                                               ; preds = %10, %6, %1
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @removeSnapPoint(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca [2 x float], align 4
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %4 = load i16, ptr %3, align 4, !tbaa !34
  %5 = and i16 %4, 8
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %60, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61
  %9 = load i32, ptr %8, align 8, !tbaa !65
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !65
  %13 = sitofp i32 %12 to float
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 14
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %19 = getelementptr inbounds float, ptr %2, i64 1
  br label %20

20:                                               ; preds = %38, %17
  %21 = phi ptr [ %15, %17 ], [ %41, %38 ]
  %22 = phi float [ 1.000000e+02, %17 ], [ %40, %38 ]
  %23 = phi ptr [ null, %17 ], [ %39, %38 ]
  %24 = load ptr, ptr %18, align 8, !tbaa !66
  %25 = getelementptr inbounds %struct.TransSnapPoint, ptr %21, i64 0, i32 2
  %26 = call i32 @ED_view3d_project_float_global(ptr noundef %24, ptr noundef nonnull %25, ptr noundef nonnull %2, i32 noundef 0) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %20
  %29 = load float, ptr %2, align 4, !tbaa !57
  %30 = fsub float %29, %10
  %31 = load float, ptr %19, align 4, !tbaa !57
  %32 = fsub float %31, %13
  %33 = fmul float %32, %32
  %34 = call float @llvm.fmuladd.f32(float %30, float %30, float %33)
  %35 = fcmp olt float %34, %22
  %36 = select i1 %35, ptr %21, ptr %23
  %37 = select i1 %35, float %34, float %22
  br label %38

38:                                               ; preds = %28, %20
  %39 = phi ptr [ %36, %28 ], [ %23, %20 ]
  %40 = phi float [ %37, %28 ], [ %22, %20 ]
  %41 = load ptr, ptr %21, align 8, !tbaa !51
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %20, !llvm.loop !67

43:                                               ; preds = %38, %7
  %44 = phi ptr [ null, %7 ], [ %39, %38 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 15
  store ptr %44, ptr %47, align 8, !tbaa !52
  br label %48

48:                                               ; preds = %46, %43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  %49 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 15
  %50 = load ptr, ptr %49, align 8, !tbaa !52
  %51 = icmp eq ptr %50, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 14
  call void @BLI_freelinkN(ptr noundef nonnull %53, ptr noundef nonnull %50) #13
  %54 = load ptr, ptr %53, align 8, !tbaa !144
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i16, ptr %3, align 4, !tbaa !34
  %58 = and i16 %57, -9
  store i16 %58, ptr %3, align 4, !tbaa !34
  br label %59

59:                                               ; preds = %56, %52
  store ptr null, ptr %49, align 8, !tbaa !52
  br label %60

60:                                               ; preds = %48, %59, %1
  ret void
}

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @getSnapPoint(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  %5 = icmp eq ptr %4, null
  br i1 %5, label %63, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %7, align 4, !tbaa !57
  %8 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %8, align 4, !tbaa !57
  store float 0.000000e+00, ptr %1, align 4, !tbaa !57
  %9 = load ptr, ptr %3, align 8, !tbaa !51
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %6
  %12 = load float, ptr %1, align 4, !tbaa !57
  %13 = load float, ptr %8, align 4, !tbaa !57
  %14 = load float, ptr %7, align 4, !tbaa !57
  br label %15

15:                                               ; preds = %11, %15
  %16 = phi float [ %14, %11 ], [ %29, %15 ]
  %17 = phi float [ %13, %11 ], [ %26, %15 ]
  %18 = phi float [ %12, %11 ], [ %23, %15 ]
  %19 = phi ptr [ %9, %11 ], [ %31, %15 ]
  %20 = phi i32 [ 0, %11 ], [ %30, %15 ]
  %21 = getelementptr inbounds %struct.TransSnapPoint, ptr %19, i64 0, i32 2
  %22 = load float, ptr %21, align 4, !tbaa !57
  %23 = fadd float %22, %18
  store float %23, ptr %1, align 4, !tbaa !57
  %24 = getelementptr inbounds %struct.TransSnapPoint, ptr %19, i64 0, i32 2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !57
  %26 = fadd float %25, %17
  store float %26, ptr %8, align 4, !tbaa !57
  %27 = getelementptr inbounds %struct.TransSnapPoint, ptr %19, i64 0, i32 2, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !57
  %29 = fadd float %28, %16
  store float %29, ptr %7, align 4, !tbaa !57
  %30 = add nuw nsw i32 %20, 1
  %31 = load ptr, ptr %19, align 8, !tbaa !51
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %15, !llvm.loop !146

33:                                               ; preds = %15, %6
  %34 = phi i32 [ 0, %6 ], [ %30, %15 ]
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %36 = load i16, ptr %35, align 4, !tbaa !34
  %37 = and i16 %36, 4
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9
  %41 = load float, ptr %40, align 4, !tbaa !57
  %42 = load float, ptr %1, align 4, !tbaa !57
  %43 = fadd float %41, %42
  store float %43, ptr %1, align 4, !tbaa !57
  %44 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !57
  %46 = load float, ptr %8, align 4, !tbaa !57
  %47 = fadd float %45, %46
  store float %47, ptr %8, align 4, !tbaa !57
  %48 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !57
  %50 = load float, ptr %7, align 4, !tbaa !57
  %51 = fadd float %49, %50
  store float %51, ptr %7, align 4, !tbaa !57
  %52 = add nuw nsw i32 %34, 1
  br label %53

53:                                               ; preds = %39, %33
  %54 = phi i32 [ %52, %39 ], [ %34, %33 ]
  %55 = sitofp i32 %54 to float
  %56 = fdiv float 1.000000e+00, %55
  %57 = load float, ptr %1, align 4, !tbaa !57
  %58 = fmul float %57, %56
  store float %58, ptr %1, align 4, !tbaa !57
  %59 = load float, ptr %8, align 4, !tbaa !57
  %60 = fmul float %56, %59
  store float %60, ptr %8, align 4, !tbaa !57
  %61 = load float, ptr %7, align 4, !tbaa !57
  %62 = fmul float %56, %61
  store float %62, ptr %7, align 4, !tbaa !57
  br label %72

63:                                               ; preds = %2
  %64 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9
  %65 = load float, ptr %64, align 4, !tbaa !57
  store float %65, ptr %1, align 4, !tbaa !57
  %66 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !57
  %68 = getelementptr inbounds float, ptr %1, i64 1
  store float %67, ptr %68, align 4, !tbaa !57
  %69 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !57
  %71 = getelementptr inbounds float, ptr %1, i64 2
  store float %70, ptr %71, align 4, !tbaa !57
  br label %72

72:                                               ; preds = %63, %53
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @snapObjectsContext(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca float, align 4
  %11 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %12 = getelementptr inbounds %struct.ScrArea, ptr %11, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !147
  %14 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %15 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %16 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  store float 0x47DFFFFFE0000000, ptr %10, align 4, !tbaa !57
  %17 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 20
  %18 = load ptr, ptr %17, align 8, !tbaa !90
  %19 = getelementptr inbounds %struct.ToolSettings, ptr %18, i64 0, i32 51
  %20 = load i8, ptr %19, align 1, !tbaa !108
  %21 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  %23 = call zeroext i8 @ED_view3d_win_to_ray_ex(ptr noundef %15, ptr noundef %13, ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7, i8 noundef zeroext 1) #13
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %6
  %26 = zext i8 %20 to i16
  %27 = call fastcc zeroext i8 @snapObjectsRay(ptr noundef %14, i16 noundef signext %26, ptr noundef %22, ptr noundef %13, ptr noundef %15, ptr noundef %16, ptr noundef null, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %28

28:                                               ; preds = %6, %25
  %29 = phi i8 [ %27, %25 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  ret i8 %29
}

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @snapObjectsEx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i16 noundef signext %5, ptr noundef %6, ptr nocapture noundef %7, ptr noundef %8, ptr noundef %9, ptr nocapture noundef %10, i32 noundef %11) local_unnamed_addr #1 {
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #13
  %16 = call zeroext i8 @ED_view3d_win_to_ray_ex(ptr noundef %3, ptr noundef %2, ptr noundef %6, ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef nonnull %13, i8 noundef zeroext 1) #13
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = call fastcc zeroext i8 @snapObjectsRay(ptr noundef %0, i16 noundef signext %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef null, ptr noundef null, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef %10, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %11)
  br label %20

20:                                               ; preds = %12, %18
  %21 = phi i8 [ %19, %18 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #13
  ret i8 %21
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @snapObjectsRayEx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i16 noundef signext %5, ptr noundef %6, ptr noundef %7, ptr nocapture noundef readonly %8, ptr nocapture noundef readonly %9, ptr nocapture noundef %10, ptr nocapture noundef readonly %11, ptr nocapture noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15) local_unnamed_addr #1 {
  %17 = tail call fastcc zeroext i8 @snapObjectsRay(ptr noundef %0, i16 noundef signext %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %8, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15)
  ret i8 %17
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @snapObjectsRay(ptr noundef %0, i16 noundef signext %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nocapture noundef readonly %8, ptr nocapture noundef readonly %9, ptr nocapture noundef readonly %10, ptr nocapture noundef %11, ptr nocapture noundef readonly %12, ptr nocapture noundef %13, ptr noundef %14, ptr noundef %15, i32 noundef %16) unnamed_addr #1 {
  %18 = icmp eq i32 %16, 0
  %19 = icmp ne ptr %5, null
  %20 = and i1 %19, %18
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 47
  %23 = tail call fastcc zeroext i8 @snapObject(ptr noundef %0, i16 noundef signext %1, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %22, i8 noundef zeroext 1, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %12, ptr noundef %14, ptr noundef %15, ptr noundef %13, ptr noundef %11), !range !149
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i8 [ %23, %21 ], [ 0, %17 ]
  %26 = icmp eq ptr %2, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.Base, ptr %2, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !141
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 27
  %33 = load i32, ptr %32, align 8, !tbaa !143
  %34 = and i32 %33, 32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 47
  %38 = tail call fastcc zeroext i8 @snapObject(ptr noundef %0, i16 noundef signext %1, ptr noundef %4, ptr noundef nonnull %29, ptr noundef nonnull %37, i8 noundef zeroext 0, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %12, ptr noundef %14, ptr noundef %15, ptr noundef %13, ptr noundef %11), !range !149
  %39 = or i8 %38, %25
  br label %40

40:                                               ; preds = %36, %31, %27, %24
  %41 = phi i8 [ %39, %36 ], [ %25, %31 ], [ %25, %27 ], [ %25, %24 ]
  %42 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !51
  %44 = icmp eq ptr %43, null
  br i1 %44, label %111, label %45

45:                                               ; preds = %40
  %46 = icmp eq ptr %3, null
  %47 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 22
  %48 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 12
  %49 = select i1 %46, ptr %48, ptr %47
  %50 = icmp eq i32 %16, 1
  br label %51

51:                                               ; preds = %45, %107
  %52 = phi ptr [ %43, %45 ], [ %109, %107 ]
  %53 = phi i8 [ %41, %45 ], [ %108, %107 ]
  %54 = getelementptr inbounds %struct.Base, ptr %52, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !150
  %56 = load i32, ptr %49, align 8, !tbaa !65
  %57 = and i32 %56, %55
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %107, label %59

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.Base, ptr %52, i64 0, i32 7
  %61 = load ptr, ptr %60, align 8, !tbaa !141
  %62 = getelementptr inbounds %struct.Object, ptr %61, i64 0, i32 102
  %63 = load i8, ptr %62, align 8, !tbaa !151
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %107

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.Base, ptr %52, i64 0, i32 4
  %68 = load i32, ptr %67, align 8, !tbaa !152
  %69 = and i32 %68, 12
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %107

71:                                               ; preds = %66
  %72 = and i32 %68, 3
  %73 = icmp eq i32 %72, 0
  %74 = and i1 %50, %73
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  switch i32 %16, label %107 [
    i32 2, label %76
    i32 0, label %76
  ]

76:                                               ; preds = %75, %75
  %77 = icmp eq ptr %52, %2
  br i1 %77, label %107, label %78

78:                                               ; preds = %71, %76
  %79 = getelementptr inbounds %struct.Object, ptr %61, i64 0, i32 55
  %80 = load i16, ptr %79, align 8, !tbaa !153
  %81 = and i16 %80, 2840
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %102, label %83

83:                                               ; preds = %78
  %84 = load ptr, ptr @G, align 8, !tbaa !84
  %85 = getelementptr inbounds %struct.Main, ptr %84, i64 0, i32 46
  %86 = load ptr, ptr %85, align 8, !tbaa !86
  %87 = tail call ptr @object_duplilist(ptr noundef %86, ptr noundef %0, ptr noundef %61) #13
  %88 = load ptr, ptr %87, align 8, !tbaa !51
  %89 = icmp eq ptr %88, null
  br i1 %89, label %100, label %90

90:                                               ; preds = %83, %90
  %91 = phi ptr [ %98, %90 ], [ %88, %83 ]
  %92 = phi i8 [ %97, %90 ], [ %53, %83 ]
  %93 = getelementptr inbounds %struct.DupliObject, ptr %91, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !154
  %95 = getelementptr inbounds %struct.DupliObject, ptr %91, i64 0, i32 3
  %96 = tail call fastcc zeroext i8 @snapObject(ptr noundef %0, i16 noundef signext %1, ptr noundef %4, ptr noundef %94, ptr noundef nonnull %95, i8 noundef zeroext 0, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %12, ptr noundef %14, ptr noundef %15, ptr noundef %13, ptr noundef %11), !range !149
  %97 = or i8 %96, %92
  %98 = load ptr, ptr %91, align 8, !tbaa !51
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %90, !llvm.loop !156

100:                                              ; preds = %90, %83
  %101 = phi i8 [ %53, %83 ], [ %97, %90 ]
  tail call void @free_object_duplilist(ptr noundef nonnull %87) #13
  br label %102

102:                                              ; preds = %100, %78
  %103 = phi i8 [ %101, %100 ], [ %53, %78 ]
  %104 = getelementptr inbounds %struct.Object, ptr %61, i64 0, i32 47
  %105 = tail call fastcc zeroext i8 @snapObject(ptr noundef %0, i16 noundef signext %1, ptr noundef %4, ptr noundef %61, ptr noundef nonnull %104, i8 noundef zeroext 0, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %12, ptr noundef %14, ptr noundef %15, ptr noundef %13, ptr noundef %11), !range !149
  %106 = or i8 %105, %103
  br label %107

107:                                              ; preds = %75, %51, %59, %66, %76, %102
  %108 = phi i8 [ %106, %102 ], [ %53, %76 ], [ %53, %75 ], [ %53, %66 ], [ %53, %59 ], [ %53, %51 ]
  %109 = load ptr, ptr %52, align 8, !tbaa !51
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %51, !llvm.loop !157

111:                                              ; preds = %107, %40
  %112 = phi i8 [ %41, %40 ], [ %108, %107 ]
  ret i8 %112
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @peelObjectsTransForm(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %8 = load ptr, ptr %7, align 8, !tbaa !116
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  tail call fastcc void @peelObjects(ptr noundef %6, ptr noundef %8, ptr noundef %10, ptr noundef %12, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret i8 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @peelObjects(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #1 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  %10 = call zeroext i8 @ED_view3d_win_to_ray(ptr noundef %2, ptr noundef %1, ptr noundef %5, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext 1) #13
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %124, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = icmp eq ptr %14, null
  br i1 %15, label %98, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 22
  %18 = load i64, ptr @CD_MASK_BAREMESH, align 8
  %19 = icmp eq i32 %6, 2
  %20 = icmp ne i32 %6, 2
  br label %21

21:                                               ; preds = %16, %95
  %22 = phi ptr [ %14, %16 ], [ %96, %95 ]
  %23 = getelementptr inbounds %struct.Base, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !150
  %25 = load i32, ptr %17, align 8, !tbaa !158
  %26 = and i32 %25, %24
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %95, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.Base, ptr %22, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !141
  %31 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 102
  %32 = load i8, ptr %31, align 8, !tbaa !151
  %33 = and i8 %32, 3
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %95

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 55
  %37 = load i16, ptr %36, align 8, !tbaa !153
  %38 = and i16 %37, 2840
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %70, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr @G, align 8, !tbaa !84
  %42 = getelementptr inbounds %struct.Main, ptr %41, i64 0, i32 46
  %43 = load ptr, ptr %42, align 8, !tbaa !86
  %44 = call ptr @object_duplilist(ptr noundef %43, ptr noundef %0, ptr noundef %30) #13
  %45 = load ptr, ptr %44, align 8, !tbaa !51
  %46 = icmp eq ptr %45, null
  br i1 %46, label %69, label %47

47:                                               ; preds = %40, %66
  %48 = phi ptr [ %67, %66 ], [ %45, %40 ]
  %49 = getelementptr inbounds %struct.DupliObject, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !154
  %51 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 3
  %52 = load i16, ptr %51, align 8, !tbaa !140
  %53 = icmp eq i16 %52, 1
  br i1 %53, label %54, label %66

54:                                               ; preds = %47
  %55 = icmp eq ptr %50, %3
  br i1 %55, label %58, label %56

56:                                               ; preds = %54
  %57 = call ptr @mesh_get_derived_final(ptr noundef %0, ptr noundef %50, i64 noundef %18) #13
  br label %61

58:                                               ; preds = %54
  %59 = call ptr @BKE_editmesh_from_object(ptr noundef %50) #13
  %60 = call ptr @editbmesh_get_derived_cage(ptr noundef %0, ptr noundef %3, ptr noundef %59, i64 noundef %18) #13
  br label %61

61:                                               ; preds = %58, %56
  %62 = phi ptr [ %60, %58 ], [ %57, %56 ]
  %63 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 47
  call fastcc void @peelDerivedMesh(ptr noundef %50, ptr noundef %62, ptr noundef nonnull %63, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %4)
  %64 = getelementptr inbounds %struct.DerivedMesh, ptr %62, i64 0, i32 95
  %65 = load ptr, ptr %64, align 8, !tbaa !159
  call void %65(ptr noundef %62) #13
  br label %66

66:                                               ; preds = %61, %47
  %67 = load ptr, ptr %48, align 8, !tbaa !51
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %47, !llvm.loop !162

69:                                               ; preds = %66, %40
  call void @free_object_duplilist(ptr noundef nonnull %44) #13
  br label %70

70:                                               ; preds = %69, %35
  %71 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 3
  %72 = load i16, ptr %71, align 8, !tbaa !140
  %73 = icmp eq i16 %72, 1
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = icmp eq ptr %30, %3
  br i1 %75, label %85, label %76

76:                                               ; preds = %74
  switch i32 %6, label %85 [
    i32 1, label %77
    i32 0, label %83
    i32 2, label %83
  ]

77:                                               ; preds = %76
  %78 = getelementptr inbounds %struct.Base, ptr %22, i64 0, i32 4
  %79 = load i32, ptr %78, align 8, !tbaa !152
  %80 = and i32 %79, 3
  %81 = icmp eq i32 %80, 0
  %82 = or i1 %19, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %76, %76, %77
  %84 = call ptr @mesh_get_derived_final(ptr noundef %0, ptr noundef %30, i64 noundef %18) #13
  br label %90

85:                                               ; preds = %77, %76, %74
  %86 = and i1 %20, %75
  br i1 %86, label %87, label %95

87:                                               ; preds = %85
  %88 = call ptr @BKE_editmesh_from_object(ptr noundef %30) #13
  %89 = call ptr @editbmesh_get_derived_cage(ptr noundef %0, ptr noundef %3, ptr noundef %88, i64 noundef %18) #13
  br label %90

90:                                               ; preds = %83, %87
  %91 = phi ptr [ %89, %87 ], [ %84, %83 ]
  %92 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 47
  call fastcc void @peelDerivedMesh(ptr noundef %30, ptr noundef %91, ptr noundef nonnull %92, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %4)
  %93 = getelementptr inbounds %struct.DerivedMesh, ptr %91, i64 0, i32 95
  %94 = load ptr, ptr %93, align 8, !tbaa !159
  call void %94(ptr noundef %91) #13
  br label %95

95:                                               ; preds = %90, %70, %85, %21, %28
  %96 = load ptr, ptr %22, align 8, !tbaa !51
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %21, !llvm.loop !163

98:                                               ; preds = %95, %12
  call void @BLI_sortlist(ptr noundef %4, ptr noundef nonnull @cmpPeel) #13
  %99 = load ptr, ptr %4, align 8, !tbaa !51
  %100 = icmp eq ptr %99, null
  br i1 %100, label %124, label %101

101:                                              ; preds = %98, %121
  %102 = phi ptr [ %122, %121 ], [ %99, %98 ]
  %103 = load ptr, ptr %102, align 8, !tbaa !164
  %104 = icmp eq ptr %103, null
  br i1 %104, label %121, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.DepthPeel, ptr %102, i64 0, i32 2
  %107 = load float, ptr %106, align 8, !tbaa !166
  %108 = getelementptr inbounds %struct.DepthPeel, ptr %103, i64 0, i32 2
  %109 = load float, ptr %108, align 8, !tbaa !166
  %110 = fsub float %107, %109
  %111 = call float @llvm.fabs.f32(float %110)
  %112 = fcmp olt float %111, 0x3F589374C0000000
  br i1 %112, label %113, label %121

113:                                              ; preds = %105
  %114 = load ptr, ptr %103, align 8, !tbaa !164
  store ptr %114, ptr %102, align 8, !tbaa !164
  %115 = load ptr, ptr %103, align 8, !tbaa !164
  %116 = icmp eq ptr %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.DepthPeel, ptr %115, i64 0, i32 1
  store ptr %102, ptr %118, align 8, !tbaa !167
  br label %119

119:                                              ; preds = %117, %113
  %120 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %120(ptr noundef nonnull %103) #13
  br label %121

121:                                              ; preds = %119, %105, %101
  %122 = load ptr, ptr %102, align 8, !tbaa !51
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %101, !llvm.loop !168

124:                                              ; preds = %121, %98, %7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @peelObjectsContext(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %6 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %7 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !147
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %10 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  tail call fastcc void @peelObjects(ptr noundef %5, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret i8 0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @snapNodesTransform(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 57
  %8 = load ptr, ptr %7, align 8, !tbaa !129
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %10 = load ptr, ptr %9, align 8, !tbaa !169
  %11 = getelementptr inbounds %struct.ScrArea, ptr %10, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !147
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = tail call fastcc zeroext i8 @snapNodes(ptr noundef %8, ptr noundef %12, ptr noundef %14, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5), !range !149
  ret i8 %15
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @snapNodes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, ptr noundef %5, ptr nocapture noundef writeonly %6, i32 noundef %7) unnamed_addr #1 {
  %9 = alloca %struct.rcti, align 4
  %10 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !170
  store i8 0, ptr %6, align 1, !tbaa !49
  %12 = getelementptr inbounds %struct.bNodeTree, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = icmp eq ptr %13, null
  br i1 %14, label %148, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  %17 = icmp eq i32 %7, 0
  %18 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 1
  %19 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1
  %20 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 3
  %21 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 2
  %22 = getelementptr inbounds %struct.ToolSettings, ptr %0, i64 0, i32 52
  %23 = getelementptr inbounds i32, ptr %3, i64 1
  %24 = getelementptr inbounds float, ptr %5, i64 1
  %25 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 1
  %26 = getelementptr inbounds i32, ptr %3, i64 1
  %27 = getelementptr inbounds float, ptr %5, i64 1
  %28 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 2
  %29 = getelementptr inbounds i32, ptr %3, i64 1
  %30 = getelementptr inbounds float, ptr %5, i64 1
  %31 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 3
  %32 = getelementptr inbounds i32, ptr %3, i64 1
  %33 = getelementptr inbounds float, ptr %5, i64 1
  br label %34

34:                                               ; preds = %15, %144
  %35 = phi ptr [ %13, %15 ], [ %146, %144 ]
  %36 = phi i8 [ 0, %15 ], [ %145, %144 ]
  switch i32 %7, label %69 [
    i32 1, label %37
    i32 0, label %43
  ]

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.bNode, ptr %35, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !173
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  br i1 %17, label %43, label %69

43:                                               ; preds = %42, %34
  %44 = getelementptr inbounds %struct.bNode, ptr %35, i64 0, i32 7
  %45 = load i32, ptr %44, align 8, !tbaa !173
  %46 = and i32 %45, 16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %43, %37
  %49 = getelementptr inbounds %struct.bNode, ptr %35, i64 0, i32 40
  %50 = load float, ptr %49, align 8, !tbaa !175
  %51 = load float, ptr %18, align 4, !tbaa !176
  %52 = fcmp olt float %50, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.bNode, ptr %35, i64 0, i32 40, i32 1
  %55 = load float, ptr %54, align 4, !tbaa !177
  %56 = load float, ptr %19, align 8, !tbaa !178
  %57 = fcmp ogt float %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.bNode, ptr %35, i64 0, i32 40, i32 2
  %60 = load float, ptr %59, align 8, !tbaa !179
  %61 = load float, ptr %20, align 4, !tbaa !180
  %62 = fcmp olt float %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.bNode, ptr %35, i64 0, i32 40, i32 3
  %65 = load float, ptr %64, align 4, !tbaa !181
  %66 = load float, ptr %21, align 8, !tbaa !182
  %67 = fcmp ogt float %65, %66
  %68 = zext i1 %67 to i8
  br label %69

69:                                               ; preds = %34, %42, %43, %48, %53, %58, %63
  %70 = phi i8 [ 0, %43 ], [ 0, %42 ], [ 0, %58 ], [ 0, %53 ], [ 0, %48 ], [ %68, %63 ], [ 0, %34 ]
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %144, label %72

72:                                               ; preds = %69
  %73 = load i8, ptr %22, align 8, !tbaa !136
  switch i8 %73, label %76 [
    i8 5, label %77
    i8 6, label %74
    i8 7, label %75
  ]

74:                                               ; preds = %72
  br label %77

75:                                               ; preds = %72
  br label %77

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76, %75, %74, %72
  %78 = phi i1 [ true, %76 ], [ false, %75 ], [ true, %74 ], [ false, %72 ]
  %79 = phi i32 [ 0, %76 ], [ 15, %75 ], [ 3, %74 ], [ 12, %72 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #13
  %80 = getelementptr inbounds %struct.bNode, ptr %35, i64 0, i32 40
  call void @UI_view2d_view_to_region_rcti(ptr noundef nonnull %16, ptr noundef nonnull %80, ptr noundef nonnull %9) #13
  %81 = and i32 %79, 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %77
  %84 = load i32, ptr %9, align 4, !tbaa !183
  %85 = load i32, ptr %3, align 4, !tbaa !65
  %86 = sub nsw i32 %84, %85
  %87 = call i32 @llvm.abs.i32(i32 %86, i1 true)
  %88 = sitofp i32 %87 to float
  %89 = load float, ptr %4, align 4, !tbaa !57
  %90 = fcmp ogt float %89, %88
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = sitofp i32 %84 to float
  %93 = load i32, ptr %23, align 4, !tbaa !65
  %94 = sitofp i32 %93 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %16, float noundef %92, float noundef %94, ptr noundef %5, ptr noundef nonnull %24) #13
  store float %88, ptr %4, align 4, !tbaa !57
  store i8 4, ptr %6, align 1, !tbaa !49
  br label %95

95:                                               ; preds = %91, %83, %77
  %96 = phi i8 [ 1, %91 ], [ 0, %83 ], [ 0, %77 ]
  br i1 %78, label %109, label %97

97:                                               ; preds = %95
  %98 = load i32, ptr %25, align 4, !tbaa !184
  %99 = load i32, ptr %3, align 4, !tbaa !65
  %100 = sub nsw i32 %98, %99
  %101 = call i32 @llvm.abs.i32(i32 %100, i1 true)
  %102 = sitofp i32 %101 to float
  %103 = load float, ptr %4, align 4, !tbaa !57
  %104 = fcmp ogt float %103, %102
  br i1 %104, label %105, label %109

105:                                              ; preds = %97
  %106 = sitofp i32 %98 to float
  %107 = load i32, ptr %26, align 4, !tbaa !65
  %108 = sitofp i32 %107 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %16, float noundef %106, float noundef %108, ptr noundef %5, ptr noundef nonnull %27) #13
  store float %102, ptr %4, align 4, !tbaa !57
  store i8 8, ptr %6, align 1, !tbaa !49
  br label %109

109:                                              ; preds = %105, %97, %95
  %110 = phi i8 [ 1, %105 ], [ %96, %97 ], [ %96, %95 ]
  %111 = and i32 %79, 2
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %125, label %113

113:                                              ; preds = %109
  %114 = load i32, ptr %28, align 4, !tbaa !185
  %115 = load i32, ptr %29, align 4, !tbaa !65
  %116 = sub nsw i32 %114, %115
  %117 = call i32 @llvm.abs.i32(i32 %116, i1 true)
  %118 = sitofp i32 %117 to float
  %119 = load float, ptr %4, align 4, !tbaa !57
  %120 = fcmp ogt float %119, %118
  br i1 %120, label %121, label %125

121:                                              ; preds = %113
  %122 = load i32, ptr %3, align 4, !tbaa !65
  %123 = sitofp i32 %122 to float
  %124 = sitofp i32 %114 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %16, float noundef %123, float noundef %124, ptr noundef %5, ptr noundef nonnull %30) #13
  store float %118, ptr %4, align 4, !tbaa !57
  store i8 2, ptr %6, align 1, !tbaa !49
  br label %125

125:                                              ; preds = %121, %113, %109
  %126 = phi i8 [ 1, %121 ], [ %110, %113 ], [ %110, %109 ]
  %127 = and i32 %79, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %141, label %129

129:                                              ; preds = %125
  %130 = load i32, ptr %31, align 4, !tbaa !186
  %131 = load i32, ptr %32, align 4, !tbaa !65
  %132 = sub nsw i32 %130, %131
  %133 = call i32 @llvm.abs.i32(i32 %132, i1 true)
  %134 = sitofp i32 %133 to float
  %135 = load float, ptr %4, align 4, !tbaa !57
  %136 = fcmp ogt float %135, %134
  br i1 %136, label %137, label %141

137:                                              ; preds = %129
  %138 = load i32, ptr %3, align 4, !tbaa !65
  %139 = sitofp i32 %138 to float
  %140 = sitofp i32 %130 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %16, float noundef %139, float noundef %140, ptr noundef %5, ptr noundef nonnull %33) #13
  store float %134, ptr %4, align 4, !tbaa !57
  store i8 1, ptr %6, align 1, !tbaa !49
  br label %141

141:                                              ; preds = %125, %129, %137
  %142 = phi i8 [ 1, %137 ], [ %126, %129 ], [ %126, %125 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  %143 = or i8 %142, %36
  br label %144

144:                                              ; preds = %69, %141
  %145 = phi i8 [ %143, %141 ], [ %36, %69 ]
  %146 = load ptr, ptr %35, align 8, !tbaa !51
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %34, !llvm.loop !187

148:                                              ; preds = %144, %8
  %149 = phi i8 [ 0, %8 ], [ %145, %144 ]
  ret i8 %149
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @snapNodesContext(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %9 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !90
  %11 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #13
  %12 = tail call fastcc zeroext i8 @snapNodes(ptr noundef %10, ptr noundef %11, ptr noundef %8, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5), !range !149
  ret i8 %12
}

declare ptr @CTX_wm_space_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @snapGridIncrementAction(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  %7 = load float, ptr %6, align 4, !tbaa !57
  store float %7, ptr %5, align 4, !tbaa !57
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !57
  %10 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float %9, ptr %10, align 4, !tbaa !57
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !57
  %13 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float %12, ptr %13, align 4, !tbaa !57
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  %15 = load i16, ptr %14, align 2, !tbaa !188
  %16 = sext i16 %15 to i32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) @__const.applyGridIncrement.asp, i64 12, i1 false)
  %17 = icmp sgt i16 %15, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %16)
  br label %20

20:                                               ; preds = %18, %3
  %21 = phi i32 [ 2, %18 ], [ %16, %3 ]
  %22 = zext i32 %2 to i64
  %23 = getelementptr inbounds float, ptr %5, i64 %22
  %24 = load float, ptr %23, align 4, !tbaa !57
  %25 = fcmp oeq float %24, 0.000000e+00
  br i1 %25, label %73, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %28 = load i8, ptr %27, align 8, !tbaa !50
  %29 = icmp eq i8 %28, 6
  br i1 %29, label %30, label %55

30:                                               ; preds = %26
  %31 = load i32, ptr %0, align 8, !tbaa !138
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !189
  %36 = and i32 %35, 128
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %40 = load ptr, ptr %39, align 8, !tbaa !169
  %41 = getelementptr inbounds %struct.ScrArea, ptr %40, i64 0, i32 19
  %42 = load ptr, ptr %41, align 8, !tbaa !147
  %43 = getelementptr inbounds float, ptr %4, i64 1
  call void @ED_space_image_get_aspect(ptr noundef %42, ptr noundef nonnull %4, ptr noundef nonnull %43) #13
  br label %55

44:                                               ; preds = %33
  %45 = and i32 %35, 256
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float 1.000000e+00, ptr %48, align 4, !tbaa !57
  store float 1.000000e+00, ptr %4, align 4, !tbaa !57
  br label %55

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %51 = load ptr, ptr %50, align 8, !tbaa !169
  %52 = getelementptr inbounds %struct.ScrArea, ptr %51, i64 0, i32 19
  %53 = load ptr, ptr %52, align 8, !tbaa !147
  %54 = getelementptr inbounds float, ptr %4, i64 1
  call void @ED_space_image_get_uv_aspect(ptr noundef %53, ptr noundef nonnull %4, ptr noundef nonnull %54) #13
  br label %55

55:                                               ; preds = %49, %47, %38, %30, %26
  %56 = icmp slt i32 %21, 0
  br i1 %56, label %73, label %57

57:                                               ; preds = %55
  %58 = add nuw nsw i32 %21, 1
  %59 = zext nneg i32 %58 to i64
  br label %60

60:                                               ; preds = %57, %60
  %61 = phi i64 [ 0, %57 ], [ %71, %60 ]
  %62 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %61
  %63 = load float, ptr %62, align 4, !tbaa !57
  %64 = fmul float %24, %63
  %65 = getelementptr inbounds float, ptr %1, i64 %61
  %66 = load float, ptr %65, align 4, !tbaa !57
  %67 = fdiv float %66, %64
  %68 = fadd float %67, 5.000000e-01
  %69 = call float @llvm.floor.f32(float %68)
  %70 = fmul float %64, %69
  store float %70, ptr %65, align 4, !tbaa !57
  %71 = add nuw nsw i64 %61, 1
  %72 = icmp eq i64 %71, %59
  br i1 %72, label %73, label %60, !llvm.loop !190

73:                                               ; preds = %60, %55, %20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @snapGridIncrement(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14
  %4 = load i16, ptr %3, align 8, !tbaa !122
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !48
  %9 = and i32 %8, 12
  %10 = icmp eq i32 %9, 4
  %11 = icmp eq i32 %9, 8
  %12 = or i1 %10, %11
  %13 = and i32 %8, 2
  %14 = icmp ne i32 %13, 0
  %15 = and i1 %14, %12
  %16 = zext i1 %12 to i32
  %17 = select i1 %15, i32 2, i32 %16
  tail call void @snapGridIncrementAction(ptr noundef %0, ptr noundef %1, i32 noundef %17)
  br label %18

18:                                               ; preds = %2, %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @CalcSnapGeometry(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca float, align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca float, align 4
  %11 = alloca %struct.ListBase, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca [2 x float], align 4
  %15 = alloca [2 x float], align 4
  %16 = alloca float, align 4
  %17 = alloca i8, align 1
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %19 = load i8, ptr %18, align 8, !tbaa !50
  switch i8 %19, label %308 [
    i8 1, label %20
    i8 6, label %226
    i8 16, label %277
  ]

20:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  store float 3.000000e+01, ptr %10, align 4, !tbaa !57
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61
  %22 = load i32, ptr %21, align 8, !tbaa !65
  %23 = sitofp i32 %22 to float
  store float %23, ptr %9, align 4, !tbaa !57
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !65
  %26 = sitofp i32 %25 to float
  %27 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  store float %26, ptr %27, align 4, !tbaa !57
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14
  %29 = load i16, ptr %28, align 8, !tbaa !122
  %30 = icmp eq i16 %29, 4
  br i1 %30, label %31, label %161

31:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #13
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %33 = load i16, ptr %32, align 2, !tbaa !89
  %34 = sext i16 %33 to i32
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %36 = load ptr, ptr %35, align 8, !tbaa !88
  %37 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %38 = load ptr, ptr %37, align 8, !tbaa !116
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %40 = load ptr, ptr %39, align 8, !tbaa !66
  %41 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %42 = load ptr, ptr %41, align 8, !tbaa !71
  call fastcc void @peelObjects(ptr noundef %36, ptr noundef %38, ptr noundef %40, ptr noundef %42, ptr noundef nonnull %11, ptr noundef nonnull %9, i32 noundef %34)
  %43 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9
  %44 = load ptr, ptr %11, align 8, !tbaa !51
  %45 = icmp eq ptr %44, null
  br i1 %45, label %149, label %46

46:                                               ; preds = %31
  %47 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 57
  %48 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9, i64 1
  %49 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9, i64 2
  br label %50

50:                                               ; preds = %46, %140
  %51 = phi ptr [ %44, %46 ], [ %145, %140 ]
  %52 = phi float [ 0x47EFFFFFE0000000, %46 ], [ %144, %140 ]
  %53 = phi float [ 0.000000e+00, %46 ], [ %143, %140 ]
  %54 = phi float [ 0.000000e+00, %46 ], [ %142, %140 ]
  %55 = phi float [ 0.000000e+00, %46 ], [ %141, %140 ]
  %56 = getelementptr inbounds %struct.DepthPeel, ptr %51, i64 0, i32 6
  %57 = load i32, ptr %56, align 8, !tbaa !191
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %140

59:                                               ; preds = %50
  store i32 1, ptr %56, align 8, !tbaa !191
  %60 = load ptr, ptr %47, align 8, !tbaa !129
  %61 = getelementptr inbounds %struct.ToolSettings, ptr %60, i64 0, i32 54
  %62 = load i16, ptr %61, align 2, !tbaa !134
  %63 = and i16 %62, 4
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load ptr, ptr %51, align 8, !tbaa !164
  %67 = icmp eq ptr %66, null
  br i1 %67, label %94, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.DepthPeel, ptr %51, i64 0, i32 5
  %70 = load ptr, ptr %69, align 8, !tbaa !192
  br label %73

71:                                               ; preds = %59
  %72 = getelementptr inbounds %struct.DepthPeel, ptr %51, i64 0, i32 5
  br label %85

73:                                               ; preds = %68, %81
  %74 = phi ptr [ %66, %68 ], [ %83, %81 ]
  %75 = phi ptr [ null, %68 ], [ %82, %81 ]
  %76 = getelementptr inbounds %struct.DepthPeel, ptr %74, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !192
  %78 = icmp eq ptr %77, %70
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.DepthPeel, ptr %74, i64 0, i32 6
  store i32 1, ptr %80, align 8, !tbaa !191
  br label %81

81:                                               ; preds = %73, %79
  %82 = phi ptr [ %74, %79 ], [ %75, %73 ]
  %83 = load ptr, ptr %74, align 8, !tbaa !164
  %84 = icmp eq ptr %83, null
  br i1 %84, label %94, label %73, !llvm.loop !193

85:                                               ; preds = %71, %89
  %86 = phi ptr [ %87, %89 ], [ %51, %71 ]
  %87 = load ptr, ptr %86, align 8, !tbaa !164
  %88 = icmp eq ptr %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.DepthPeel, ptr %87, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !192
  %92 = load ptr, ptr %72, align 8, !tbaa !192
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %94, label %85, !llvm.loop !194

94:                                               ; preds = %81, %89, %85, %65
  %95 = phi ptr [ null, %65 ], [ %87, %89 ], [ null, %85 ], [ %82, %81 ]
  %96 = icmp eq ptr %95, null
  br i1 %96, label %117, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.DepthPeel, ptr %95, i64 0, i32 6
  store i32 1, ptr %98, align 8, !tbaa !191
  %99 = getelementptr inbounds %struct.DepthPeel, ptr %51, i64 0, i32 3
  %100 = getelementptr inbounds %struct.DepthPeel, ptr %95, i64 0, i32 3
  %101 = load float, ptr %99, align 4, !tbaa !57
  %102 = load float, ptr %100, align 4, !tbaa !57
  %103 = fadd float %101, %102
  %104 = getelementptr inbounds %struct.DepthPeel, ptr %51, i64 0, i32 3, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !57
  %106 = getelementptr inbounds %struct.DepthPeel, ptr %95, i64 0, i32 3, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !57
  %108 = fadd float %105, %107
  %109 = getelementptr inbounds %struct.DepthPeel, ptr %51, i64 0, i32 3, i64 2
  %110 = load float, ptr %109, align 4, !tbaa !57
  %111 = getelementptr inbounds %struct.DepthPeel, ptr %95, i64 0, i32 3, i64 2
  %112 = load float, ptr %111, align 4, !tbaa !57
  %113 = fadd float %110, %112
  %114 = fmul float %103, 5.000000e-01
  %115 = fmul float %108, 5.000000e-01
  %116 = fmul float %113, 5.000000e-01
  br label %124

117:                                              ; preds = %94
  %118 = getelementptr inbounds %struct.DepthPeel, ptr %51, i64 0, i32 3
  %119 = load float, ptr %118, align 4, !tbaa !57
  %120 = getelementptr inbounds %struct.DepthPeel, ptr %51, i64 0, i32 3, i64 1
  %121 = load float, ptr %120, align 4, !tbaa !57
  %122 = getelementptr inbounds %struct.DepthPeel, ptr %51, i64 0, i32 3, i64 2
  %123 = load float, ptr %122, align 4, !tbaa !57
  br label %124

124:                                              ; preds = %97, %117
  %125 = phi float [ %123, %117 ], [ %116, %97 ]
  %126 = phi float [ %121, %117 ], [ %115, %97 ]
  %127 = phi float [ %119, %117 ], [ %114, %97 ]
  %128 = load float, ptr %43, align 4, !tbaa !57
  %129 = fsub float %127, %128
  %130 = load float, ptr %48, align 4, !tbaa !57
  %131 = fsub float %126, %130
  %132 = load float, ptr %49, align 4, !tbaa !57
  %133 = fsub float %125, %132
  %134 = fmul float %131, %131
  %135 = call float @llvm.fmuladd.f32(float %129, float %129, float %134)
  %136 = call float @llvm.fmuladd.f32(float %133, float %133, float %135)
  %137 = call float @sqrtf(float noundef %136) #13
  %138 = fcmp olt float %137, %52
  br i1 %138, label %139, label %140

139:                                              ; preds = %124
  br label %140

140:                                              ; preds = %139, %124, %50
  %141 = phi float [ %55, %50 ], [ %125, %139 ], [ %55, %124 ]
  %142 = phi float [ %54, %50 ], [ %126, %139 ], [ %54, %124 ]
  %143 = phi float [ %53, %50 ], [ %127, %139 ], [ %53, %124 ]
  %144 = phi float [ %52, %50 ], [ %137, %139 ], [ %52, %124 ]
  %145 = load ptr, ptr %51, align 8, !tbaa !51
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %50, !llvm.loop !195

147:                                              ; preds = %140
  %148 = fcmp une float %144, 0x47EFFFFFE0000000
  br label %149

149:                                              ; preds = %147, %31
  %150 = phi float [ 0.000000e+00, %31 ], [ %141, %147 ]
  %151 = phi float [ 0.000000e+00, %31 ], [ %142, %147 ]
  %152 = phi float [ 0.000000e+00, %31 ], [ %143, %147 ]
  %153 = phi i1 [ false, %31 ], [ %148, %147 ]
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  store float %152, ptr %7, align 4, !tbaa !57
  %155 = getelementptr inbounds float, ptr %7, i64 1
  store float %151, ptr %155, align 4, !tbaa !57
  %156 = getelementptr inbounds float, ptr %7, i64 2
  store float %150, ptr %156, align 4, !tbaa !57
  store float 0.000000e+00, ptr %8, align 4, !tbaa !57
  %157 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  store float 0.000000e+00, ptr %157, align 4, !tbaa !57
  %158 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 1.000000e+00, ptr %158, align 4, !tbaa !57
  br label %159

159:                                              ; preds = %154, %149
  %160 = phi i8 [ 1, %154 ], [ 0, %149 ]
  call void @BLI_freelistN(ptr noundef nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #13
  br label %186

161:                                              ; preds = %20
  %162 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 3
  %163 = load i16, ptr %162, align 2, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store float 0x47DFFFFFE0000000, ptr %6, align 4, !tbaa !57
  %164 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %165 = load ptr, ptr %164, align 8, !tbaa !88
  %166 = getelementptr inbounds %struct.Scene, ptr %165, i64 0, i32 20
  %167 = load ptr, ptr %166, align 8, !tbaa !90
  %168 = getelementptr inbounds %struct.ToolSettings, ptr %167, i64 0, i32 51
  %169 = load i8, ptr %168, align 1, !tbaa !108
  %170 = getelementptr inbounds %struct.Scene, ptr %165, i64 0, i32 6
  %171 = load ptr, ptr %170, align 8, !tbaa !115
  %172 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %173 = load ptr, ptr %172, align 8, !tbaa !116
  %174 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %175 = load ptr, ptr %174, align 8, !tbaa !66
  %176 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %177 = load ptr, ptr %176, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  %178 = call zeroext i8 @ED_view3d_win_to_ray_ex(ptr noundef %175, ptr noundef %173, ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %3, i8 noundef zeroext 1) #13
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %161
  %181 = zext i8 %169 to i16
  %182 = sext i16 %163 to i32
  %183 = call fastcc zeroext i8 @snapObjectsRay(ptr noundef %165, i16 noundef signext %181, ptr noundef %171, ptr noundef %173, ptr noundef %175, ptr noundef %177, ptr noundef null, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %182)
  br label %184

184:                                              ; preds = %161, %180
  %185 = phi i8 [ %183, %180 ], [ 0, %161 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  br label %186

186:                                              ; preds = %184, %159
  %187 = phi i8 [ %160, %159 ], [ %185, %184 ]
  %188 = icmp eq i8 %187, 1
  br i1 %188, label %189, label %221

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9
  %191 = load float, ptr %7, align 4, !tbaa !57
  %192 = load float, ptr %190, align 4, !tbaa !57
  %193 = fsub float %191, %192
  %194 = getelementptr inbounds float, ptr %7, i64 1
  %195 = load float, ptr %194, align 4, !tbaa !57
  %196 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9, i64 1
  %197 = load float, ptr %196, align 4, !tbaa !57
  %198 = fsub float %195, %197
  %199 = fcmp une float %193, 0.000000e+00
  %200 = fcmp une float %198, 0.000000e+00
  %201 = select i1 %199, i1 true, i1 %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %189
  %203 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 12
  store float %193, ptr %203, align 4, !tbaa !57
  %204 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 12, i64 1
  store float %198, ptr %204, align 4, !tbaa !57
  %205 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 12, i64 2
  store float 0.000000e+00, ptr %205, align 4, !tbaa !57
  br label %206

206:                                              ; preds = %202, %189
  store float %191, ptr %190, align 4, !tbaa !57
  store float %195, ptr %196, align 4, !tbaa !57
  %207 = getelementptr inbounds float, ptr %7, i64 2
  %208 = load float, ptr %207, align 4, !tbaa !57
  %209 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9, i64 2
  store float %208, ptr %209, align 4, !tbaa !57
  %210 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 11
  %211 = load float, ptr %8, align 4, !tbaa !57
  store float %211, ptr %210, align 4, !tbaa !57
  %212 = getelementptr inbounds float, ptr %8, i64 1
  %213 = load float, ptr %212, align 4, !tbaa !57
  %214 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 11, i64 1
  store float %213, ptr %214, align 4, !tbaa !57
  %215 = getelementptr inbounds float, ptr %8, i64 2
  %216 = load float, ptr %215, align 4, !tbaa !57
  %217 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 11, i64 2
  store float %216, ptr %217, align 4, !tbaa !57
  %218 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %219 = load i16, ptr %218, align 4, !tbaa !34
  %220 = or i16 %219, 4
  store i16 %220, ptr %218, align 4, !tbaa !34
  br label %225

221:                                              ; preds = %186
  %222 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %223 = load i16, ptr %222, align 4, !tbaa !34
  %224 = and i16 %223, -5
  store i16 %224, ptr %222, align 4, !tbaa !34
  br label %225

225:                                              ; preds = %221, %206
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  br label %308

226:                                              ; preds = %2
  %227 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %228 = load ptr, ptr %227, align 8, !tbaa !71
  %229 = icmp eq ptr %228, null
  br i1 %229, label %275, label %230

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.Object, ptr %228, i64 0, i32 3
  %232 = load i16, ptr %231, align 8, !tbaa !140
  %233 = icmp eq i16 %232, 1
  br i1 %233, label %234, label %275

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %236 = load ptr, ptr %235, align 8, !tbaa !169
  %237 = getelementptr inbounds %struct.ScrArea, ptr %236, i64 0, i32 19
  %238 = load ptr, ptr %237, align 8, !tbaa !147
  %239 = tail call ptr @ED_space_image(ptr noundef %238) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #13
  %240 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %241 = load ptr, ptr %240, align 8, !tbaa !66
  %242 = getelementptr inbounds %struct.ARegion, ptr %241, i64 0, i32 2
  %243 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61
  %244 = load i32, ptr %243, align 8, !tbaa !65
  %245 = sitofp i32 %244 to float
  %246 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61, i64 1
  %247 = load i32, ptr %246, align 4, !tbaa !65
  %248 = sitofp i32 %247 to float
  %249 = getelementptr inbounds [2 x float], ptr %14, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %242, float noundef %245, float noundef %248, ptr noundef nonnull %14, ptr noundef nonnull %249) #13
  %250 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %251 = load ptr, ptr %250, align 8, !tbaa !88
  %252 = load ptr, ptr %227, align 8, !tbaa !71
  %253 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9
  %254 = call zeroext i8 @ED_uvedit_nearest_uv(ptr noundef %251, ptr noundef %252, ptr noundef %239, ptr noundef nonnull %14, ptr noundef nonnull %253) #13
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %270, label %256

256:                                              ; preds = %234
  %257 = load ptr, ptr %235, align 8, !tbaa !169
  %258 = getelementptr inbounds %struct.ScrArea, ptr %257, i64 0, i32 19
  %259 = load ptr, ptr %258, align 8, !tbaa !147
  call void @ED_space_image_get_uv_aspect(ptr noundef %259, ptr noundef nonnull %12, ptr noundef nonnull %13) #13
  %260 = load float, ptr %12, align 4, !tbaa !57
  %261 = load float, ptr %253, align 8, !tbaa !57
  %262 = fmul float %260, %261
  store float %262, ptr %253, align 8, !tbaa !57
  %263 = load float, ptr %13, align 4, !tbaa !57
  %264 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9, i64 1
  %265 = load float, ptr %264, align 4, !tbaa !57
  %266 = fmul float %263, %265
  store float %266, ptr %264, align 4, !tbaa !57
  %267 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %268 = load i16, ptr %267, align 4, !tbaa !34
  %269 = or i16 %268, 4
  store i16 %269, ptr %267, align 4, !tbaa !34
  br label %274

270:                                              ; preds = %234
  %271 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %272 = load i16, ptr %271, align 4, !tbaa !34
  %273 = and i16 %272, -5
  store i16 %273, ptr %271, align 4, !tbaa !34
  br label %274

274:                                              ; preds = %270, %256
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  br label %308

275:                                              ; preds = %230, %226
  %276 = icmp eq i8 %19, 16
  br i1 %276, label %277, label %308

277:                                              ; preds = %2, %275
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #13
  store float 3.000000e+01, ptr %16, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #13
  %278 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61
  %279 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 3
  %280 = load i16, ptr %279, align 2, !tbaa !89
  %281 = sext i16 %280 to i32
  %282 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 57
  %283 = load ptr, ptr %282, align 8, !tbaa !129
  %284 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %285 = load ptr, ptr %284, align 8, !tbaa !169
  %286 = getelementptr inbounds %struct.ScrArea, ptr %285, i64 0, i32 19
  %287 = load ptr, ptr %286, align 8, !tbaa !147
  %288 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %289 = load ptr, ptr %288, align 8, !tbaa !66
  %290 = call fastcc zeroext i8 @snapNodes(ptr noundef %283, ptr noundef %287, ptr noundef %289, ptr noundef nonnull %278, ptr noundef nonnull %16, ptr noundef nonnull %15, ptr noundef nonnull %17, i32 noundef %281), !range !149
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %303, label %292

292:                                              ; preds = %277
  %293 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9
  %294 = load float, ptr %15, align 4, !tbaa !57
  store float %294, ptr %293, align 4, !tbaa !57
  %295 = getelementptr inbounds float, ptr %15, i64 1
  %296 = load float, ptr %295, align 4, !tbaa !57
  %297 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9, i64 1
  store float %296, ptr %297, align 4, !tbaa !57
  %298 = load i8, ptr %17, align 1, !tbaa !49
  %299 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 13
  store i8 %298, ptr %299, align 8, !tbaa !62
  %300 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %301 = load i16, ptr %300, align 4, !tbaa !34
  %302 = or i16 %301, 4
  store i16 %302, ptr %300, align 4, !tbaa !34
  br label %307

303:                                              ; preds = %277
  %304 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %305 = load i16, ptr %304, align 4, !tbaa !34
  %306 = and i16 %305, -5
  store i16 %306, ptr %304, align 4, !tbaa !34
  br label %307

307:                                              ; preds = %303, %292
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  br label %308

308:                                              ; preds = %2, %274, %307, %275, %225
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TargetSnapClosest(ptr noundef %0) #1 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %6 = load i16, ptr %5, align 4, !tbaa !34
  %7 = and i16 %6, 4
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %214, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !69
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !73
  %16 = icmp sgt i32 %15, 0
  br i1 %13, label %108, label %17

17:                                               ; preds = %9
  br i1 %16, label %18, label %168

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !70
  %21 = getelementptr inbounds float, ptr %2, i64 1
  %22 = getelementptr inbounds float, ptr %2, i64 2
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 21
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 16
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10, i64 1
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10, i64 2
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 16
  %30 = getelementptr inbounds float, ptr %3, i64 1
  %31 = getelementptr inbounds float, ptr %3, i64 2
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 21
  %33 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 16
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10
  %36 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10, i64 1
  %37 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10, i64 2
  %38 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 16
  br label %39

39:                                               ; preds = %18, %102
  %40 = phi ptr [ null, %18 ], [ %103, %102 ]
  %41 = phi ptr [ %20, %18 ], [ %105, %102 ]
  %42 = phi i32 [ 0, %18 ], [ %104, %102 ]
  %43 = getelementptr inbounds %struct.TransData, ptr %41, i64 0, i32 16
  %44 = load i32, ptr %43, align 8, !tbaa !74
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %168, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.TransData, ptr %41, i64 0, i32 11
  %49 = load ptr, ptr %48, align 8, !tbaa !78
  %50 = call ptr @BKE_object_boundbox_get(ptr noundef %49) #13
  %51 = icmp eq ptr %50, null
  br i1 %51, label %81, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.TransData, ptr %41, i64 0, i32 13
  br label %54

54:                                               ; preds = %52, %77
  %55 = phi i64 [ 0, %52 ], [ %79, %77 ]
  %56 = phi ptr [ %40, %52 ], [ %78, %77 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #13
  %57 = getelementptr inbounds [8 x [3 x float]], ptr %50, i64 0, i64 %55
  %58 = load float, ptr %57, align 4, !tbaa !57
  store float %58, ptr %2, align 4, !tbaa !57
  %59 = getelementptr inbounds float, ptr %57, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !57
  store float %60, ptr %21, align 4, !tbaa !57
  %61 = getelementptr inbounds float, ptr %57, i64 2
  %62 = load float, ptr %61, align 4, !tbaa !57
  store float %62, ptr %22, align 4, !tbaa !57
  %63 = load ptr, ptr %53, align 8, !tbaa !117
  %64 = getelementptr inbounds %struct.TransDataExtension, ptr %63, i64 0, i32 13
  call void @mul_m4_v3(ptr noundef nonnull %64, ptr noundef nonnull %2) #13
  %65 = load ptr, ptr %23, align 8, !tbaa !139
  %66 = call float %65(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %24) #13
  %67 = icmp eq ptr %56, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %54
  %69 = call float @llvm.fabs.f32(float %66)
  %70 = load float, ptr %25, align 8, !tbaa !196
  %71 = call float @llvm.fabs.f32(float %70)
  %72 = fcmp olt float %69, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %68, %54
  %74 = load float, ptr %2, align 4, !tbaa !57
  store float %74, ptr %26, align 4, !tbaa !57
  %75 = load float, ptr %21, align 4, !tbaa !57
  store float %75, ptr %27, align 4, !tbaa !57
  %76 = load float, ptr %22, align 4, !tbaa !57
  store float %76, ptr %28, align 4, !tbaa !57
  store float %66, ptr %29, align 8, !tbaa !196
  br label %77

77:                                               ; preds = %73, %68
  %78 = phi ptr [ %41, %73 ], [ %56, %68 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #13
  %79 = add nuw nsw i64 %55, 1
  %80 = icmp eq i64 %79, 8
  br i1 %80, label %102, label %54, !llvm.loop !197

81:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  %82 = getelementptr inbounds %struct.TransData, ptr %41, i64 0, i32 7
  %83 = load float, ptr %82, align 4, !tbaa !57
  store float %83, ptr %3, align 4, !tbaa !57
  %84 = getelementptr inbounds %struct.TransData, ptr %41, i64 0, i32 7, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !57
  store float %85, ptr %30, align 4, !tbaa !57
  %86 = getelementptr inbounds %struct.TransData, ptr %41, i64 0, i32 7, i64 2
  %87 = load float, ptr %86, align 4, !tbaa !57
  store float %87, ptr %31, align 4, !tbaa !57
  %88 = load ptr, ptr %32, align 8, !tbaa !139
  %89 = call float %88(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %33) #13
  %90 = icmp eq ptr %40, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %81
  %92 = call float @llvm.fabs.f32(float %89)
  %93 = load float, ptr %34, align 8, !tbaa !196
  %94 = call float @llvm.fabs.f32(float %93)
  %95 = fcmp olt float %92, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %91, %81
  %97 = load float, ptr %3, align 4, !tbaa !57
  store float %97, ptr %35, align 4, !tbaa !57
  %98 = load float, ptr %30, align 4, !tbaa !57
  store float %98, ptr %36, align 4, !tbaa !57
  %99 = load float, ptr %31, align 4, !tbaa !57
  store float %99, ptr %37, align 4, !tbaa !57
  store float %89, ptr %38, align 8, !tbaa !196
  br label %100

100:                                              ; preds = %96, %91
  %101 = phi ptr [ %41, %96 ], [ %40, %91 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  br label %102

102:                                              ; preds = %77, %100
  %103 = phi ptr [ %101, %100 ], [ %78, %77 ]
  %104 = add nuw nsw i32 %42, 1
  %105 = getelementptr inbounds %struct.TransData, ptr %41, i64 1
  %106 = load i32, ptr %14, align 8, !tbaa !73
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %39, label %168, !llvm.loop !198

108:                                              ; preds = %9
  br i1 %16, label %109, label %168

109:                                              ; preds = %108
  %110 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %111 = load ptr, ptr %110, align 8, !tbaa !70
  %112 = getelementptr inbounds float, ptr %4, i64 1
  %113 = getelementptr inbounds float, ptr %4, i64 2
  %114 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %115 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %116 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 21
  %117 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9
  %118 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 16
  %119 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10
  %120 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10, i64 1
  %121 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10, i64 2
  %122 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 16
  br label %123

123:                                              ; preds = %109, %162
  %124 = phi ptr [ null, %109 ], [ %163, %162 ]
  %125 = phi ptr [ %111, %109 ], [ %165, %162 ]
  %126 = phi i32 [ 0, %109 ], [ %164, %162 ]
  %127 = getelementptr inbounds %struct.TransData, ptr %125, i64 0, i32 16
  %128 = load i32, ptr %127, align 8, !tbaa !74
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %168, label %131

131:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  %132 = getelementptr inbounds %struct.TransData, ptr %125, i64 0, i32 7
  %133 = load float, ptr %132, align 4, !tbaa !57
  store float %133, ptr %4, align 4, !tbaa !57
  %134 = getelementptr inbounds %struct.TransData, ptr %125, i64 0, i32 7, i64 1
  %135 = load float, ptr %134, align 4, !tbaa !57
  store float %135, ptr %112, align 4, !tbaa !57
  %136 = getelementptr inbounds %struct.TransData, ptr %125, i64 0, i32 7, i64 2
  %137 = load float, ptr %136, align 4, !tbaa !57
  store float %137, ptr %113, align 4, !tbaa !57
  %138 = load i32, ptr %10, align 4, !tbaa !69
  %139 = and i32 %138, 6
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %149, label %141

141:                                              ; preds = %131
  %142 = load ptr, ptr %114, align 8, !tbaa !71
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = load ptr, ptr %115, align 8, !tbaa !72
  br label %146

146:                                              ; preds = %141, %144
  %147 = phi ptr [ %145, %144 ], [ %142, %141 ]
  %148 = getelementptr inbounds %struct.Object, ptr %147, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %148, ptr noundef nonnull %4) #13
  br label %149

149:                                              ; preds = %146, %131
  %150 = load ptr, ptr %116, align 8, !tbaa !139
  %151 = call float %150(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %117) #13
  %152 = icmp eq ptr %124, null
  br i1 %152, label %158, label %153

153:                                              ; preds = %149
  %154 = call float @llvm.fabs.f32(float %151)
  %155 = load float, ptr %118, align 8, !tbaa !196
  %156 = call float @llvm.fabs.f32(float %155)
  %157 = fcmp olt float %154, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %153, %149
  %159 = load float, ptr %4, align 4, !tbaa !57
  store float %159, ptr %119, align 4, !tbaa !57
  %160 = load float, ptr %112, align 4, !tbaa !57
  store float %160, ptr %120, align 4, !tbaa !57
  %161 = load float, ptr %113, align 4, !tbaa !57
  store float %161, ptr %121, align 4, !tbaa !57
  store float %151, ptr %122, align 8, !tbaa !196
  br label %162

162:                                              ; preds = %158, %153
  %163 = phi ptr [ %125, %158 ], [ %124, %153 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  %164 = add nuw nsw i32 %126, 1
  %165 = getelementptr inbounds %struct.TransData, ptr %125, i64 1
  %166 = load i32, ptr %14, align 8, !tbaa !73
  %167 = icmp slt i32 %164, %166
  br i1 %167, label %123, label %168, !llvm.loop !199

168:                                              ; preds = %102, %39, %162, %123, %17, %108
  %169 = phi ptr [ null, %108 ], [ null, %17 ], [ %124, %123 ], [ %163, %162 ], [ %40, %39 ], [ %103, %102 ]
  %170 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %171 = load i8, ptr %170, align 8, !tbaa !50
  %172 = icmp eq i8 %171, 16
  %173 = icmp ne ptr %169, null
  %174 = and i1 %173, %172
  br i1 %174, label %175, label %211

175:                                              ; preds = %168
  %176 = getelementptr inbounds %struct.TransData, ptr %169, i64 0, i32 15
  %177 = load ptr, ptr %176, align 8, !tbaa !200
  %178 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 13
  %179 = load i8, ptr %178, align 8, !tbaa !62
  %180 = getelementptr inbounds %struct.bNode, ptr %177, i64 0, i32 40, i32 3
  %181 = load float, ptr %180, align 4, !tbaa !201
  %182 = getelementptr inbounds %struct.bNode, ptr %177, i64 0, i32 40, i32 2
  %183 = load float, ptr %182, align 4, !tbaa !202
  %184 = fsub float %181, %183
  %185 = zext i8 %179 to i32
  %186 = and i32 %185, 8
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %197, label %188

188:                                              ; preds = %175
  %189 = getelementptr inbounds %struct.bNode, ptr %177, i64 0, i32 40
  %190 = getelementptr inbounds %struct.bNode, ptr %177, i64 0, i32 40, i32 1
  %191 = load float, ptr %190, align 4, !tbaa !203
  %192 = load float, ptr %189, align 4, !tbaa !204
  %193 = fsub float %191, %192
  %194 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10
  %195 = load float, ptr %194, align 4, !tbaa !57
  %196 = fadd float %195, %193
  store float %196, ptr %194, align 4, !tbaa !57
  br label %197

197:                                              ; preds = %188, %175
  %198 = and i32 %185, 2
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %204, label %200

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10, i64 1
  %202 = load float, ptr %201, align 4, !tbaa !57
  %203 = fsub float %202, %184
  store float %203, ptr %201, align 4, !tbaa !57
  br label %204

204:                                              ; preds = %200, %197
  %205 = and i32 %185, 1
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %204
  %208 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10, i64 1
  %209 = load float, ptr %208, align 4, !tbaa !57
  %210 = fadd float %209, 0.000000e+00
  store float %210, ptr %208, align 4, !tbaa !57
  br label %211

211:                                              ; preds = %168, %204, %207
  %212 = load i16, ptr %5, align 4, !tbaa !34
  %213 = or i16 %212, 2
  store i16 %213, ptr %5, align 4, !tbaa !34
  br label %214

214:                                              ; preds = %211, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TargetSnapCenter(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %3 = load i16, ptr %2, align 4, !tbaa !34
  %4 = and i16 %3, 2
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %33

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %9 = load float, ptr %8, align 4, !tbaa !57
  store float %9, ptr %7, align 4, !tbaa !57
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !57
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10, i64 1
  store float %11, ptr %12, align 4, !tbaa !57
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !57
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10, i64 2
  store float %14, ptr %15, align 4, !tbaa !57
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !69
  %18 = and i32 %17, 6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %22 = load ptr, ptr %21, align 8, !tbaa !71
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %26 = load ptr, ptr %25, align 8, !tbaa !72
  br label %27

27:                                               ; preds = %20, %24
  %28 = phi ptr [ %26, %24 ], [ %22, %20 ]
  %29 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 47
  tail call void @mul_m4_v3(ptr noundef nonnull %29, ptr noundef nonnull %7) #13
  br label %30

30:                                               ; preds = %27, %6
  %31 = load i16, ptr %2, align 4, !tbaa !34
  %32 = or i16 %31, 2
  store i16 %32, ptr %2, align 4, !tbaa !34
  br label %33

33:                                               ; preds = %30, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TargetSnapMedian(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %3 = load i16, ptr %2, align 4, !tbaa !34
  %4 = and i16 %3, 2
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %69

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10
  store float 0.000000e+00, ptr %7, align 4, !tbaa !57
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10, i64 1
  store float 0.000000e+00, ptr %8, align 4, !tbaa !57
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10, i64 2
  store float 0.000000e+00, ptr %9, align 4, !tbaa !57
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !73
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  br label %16

16:                                               ; preds = %13, %23
  %17 = phi ptr [ %37, %23 ], [ %15, %13 ]
  %18 = phi i32 [ %36, %23 ], [ 0, %13 ]
  %19 = getelementptr inbounds %struct.TransData, ptr %17, i64 0, i32 16
  %20 = load i32, ptr %19, align 8, !tbaa !74
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.TransData, ptr %17, i64 0, i32 7
  %25 = load float, ptr %24, align 4, !tbaa !57
  %26 = load float, ptr %7, align 4, !tbaa !57
  %27 = fadd float %25, %26
  store float %27, ptr %7, align 4, !tbaa !57
  %28 = getelementptr inbounds %struct.TransData, ptr %17, i64 0, i32 7, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !57
  %30 = load float, ptr %8, align 4, !tbaa !57
  %31 = fadd float %29, %30
  store float %31, ptr %8, align 4, !tbaa !57
  %32 = getelementptr inbounds %struct.TransData, ptr %17, i64 0, i32 7, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !57
  %34 = load float, ptr %9, align 4, !tbaa !57
  %35 = fadd float %33, %34
  store float %35, ptr %9, align 4, !tbaa !57
  %36 = add nuw nsw i32 %18, 1
  %37 = getelementptr inbounds %struct.TransData, ptr %17, i64 1
  %38 = icmp eq i32 %36, %11
  br i1 %38, label %39, label %16, !llvm.loop !205

39:                                               ; preds = %23, %16
  %40 = phi i32 [ %18, %16 ], [ %11, %23 ]
  %41 = sitofp i32 %40 to double
  br label %42

42:                                               ; preds = %39, %6
  %43 = phi double [ 0.000000e+00, %6 ], [ %41, %39 ]
  %44 = fdiv double 1.000000e+00, %43
  %45 = fptrunc double %44 to float
  %46 = load float, ptr %7, align 4, !tbaa !57
  %47 = fmul float %46, %45
  store float %47, ptr %7, align 4, !tbaa !57
  %48 = load float, ptr %8, align 4, !tbaa !57
  %49 = fmul float %48, %45
  store float %49, ptr %8, align 4, !tbaa !57
  %50 = load float, ptr %9, align 4, !tbaa !57
  %51 = fmul float %50, %45
  store float %51, ptr %9, align 4, !tbaa !57
  %52 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !69
  %54 = and i32 %53, 6
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %42
  %57 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %58 = load ptr, ptr %57, align 8, !tbaa !71
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %62 = load ptr, ptr %61, align 8, !tbaa !72
  br label %63

63:                                               ; preds = %56, %60
  %64 = phi ptr [ %62, %60 ], [ %58, %56 ]
  %65 = getelementptr inbounds %struct.Object, ptr %64, i64 0, i32 47
  tail call void @mul_m4_v3(ptr noundef nonnull %65, ptr noundef nonnull %7) #13
  br label %66

66:                                               ; preds = %63, %42
  %67 = load i16, ptr %2, align 4, !tbaa !34
  %68 = or i16 %67, 2
  store i16 %68, ptr %2, align 4, !tbaa !34
  br label %69

69:                                               ; preds = %66, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TargetSnapActive(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %3 = load i16, ptr %2, align 4, !tbaa !34
  %4 = and i16 %3, 2
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %31

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10
  %8 = tail call zeroext i8 @calculateCenterActive(ptr noundef %0, i8 noundef zeroext 1, ptr noundef nonnull %7) #13
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !69
  %13 = and i32 %12, 6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %21 = load ptr, ptr %20, align 8, !tbaa !72
  br label %22

22:                                               ; preds = %15, %19
  %23 = phi ptr [ %21, %19 ], [ %17, %15 ]
  %24 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 47
  tail call void @mul_m4_v3(ptr noundef nonnull %24, ptr noundef nonnull %7) #13
  br label %25

25:                                               ; preds = %22, %10
  %26 = load i16, ptr %2, align 4, !tbaa !34
  %27 = or i16 %26, 2
  store i16 %27, ptr %2, align 4, !tbaa !34
  br label %31

28:                                               ; preds = %6
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 1
  store i16 2, ptr %29, align 2, !tbaa !128
  %30 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 20
  store ptr @TargetSnapMedian, ptr %30, align 8, !tbaa !124
  tail call void @TargetSnapMedian(ptr noundef %0)
  br label %31

31:                                               ; preds = %25, %28, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @ApplySnapTranslation(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = icmp eq ptr %4, null
  br i1 %5, label %50, label %6

6:                                                ; preds = %2, %6
  %7 = phi float [ %20, %6 ], [ 0.000000e+00, %2 ]
  %8 = phi float [ %17, %6 ], [ 0.000000e+00, %2 ]
  %9 = phi float [ %14, %6 ], [ 0.000000e+00, %2 ]
  %10 = phi ptr [ %22, %6 ], [ %4, %2 ]
  %11 = phi i32 [ %21, %6 ], [ 0, %2 ]
  %12 = getelementptr inbounds %struct.TransSnapPoint, ptr %10, i64 0, i32 2
  %13 = load float, ptr %12, align 4, !tbaa !57
  %14 = fadd float %9, %13
  %15 = getelementptr inbounds %struct.TransSnapPoint, ptr %10, i64 0, i32 2, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !57
  %17 = fadd float %8, %16
  %18 = getelementptr inbounds %struct.TransSnapPoint, ptr %10, i64 0, i32 2, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !57
  %20 = fadd float %7, %19
  %21 = add nuw nsw i32 %11, 1
  %22 = load ptr, ptr %10, align 8, !tbaa !51
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %6, !llvm.loop !146

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %26 = load i16, ptr %25, align 4, !tbaa !34
  %27 = and i16 %26, 4
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9
  %31 = load float, ptr %30, align 4, !tbaa !57
  %32 = fadd float %14, %31
  %33 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !57
  %35 = fadd float %17, %34
  %36 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !57
  %38 = fadd float %20, %37
  %39 = add nuw nsw i32 %11, 2
  br label %40

40:                                               ; preds = %29, %24
  %41 = phi float [ %20, %24 ], [ %38, %29 ]
  %42 = phi float [ %17, %24 ], [ %35, %29 ]
  %43 = phi float [ %14, %24 ], [ %32, %29 ]
  %44 = phi i32 [ %21, %24 ], [ %39, %29 ]
  %45 = sitofp i32 %44 to float
  %46 = fdiv float 1.000000e+00, %45
  %47 = fmul float %43, %46
  %48 = fmul float %42, %46
  %49 = fmul float %41, %46
  br label %57

50:                                               ; preds = %2
  %51 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9
  %52 = load float, ptr %51, align 4, !tbaa !57
  %53 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !57
  %55 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !57
  br label %57

57:                                               ; preds = %40, %50
  %58 = phi float [ %56, %50 ], [ %49, %40 ]
  %59 = phi float [ %54, %50 ], [ %48, %40 ]
  %60 = phi float [ %52, %50 ], [ %47, %40 ]
  %61 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %62 = load i8, ptr %61, align 8, !tbaa !50
  %63 = icmp eq i8 %62, 16
  br i1 %63, label %64, label %79

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 13
  %66 = load i8, ptr %65, align 8, !tbaa !62
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 12
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10
  %72 = load float, ptr %71, align 4, !tbaa !57
  %73 = fsub float %60, %72
  store float %73, ptr %1, align 4, !tbaa !57
  br label %74

74:                                               ; preds = %70, %64
  %75 = and i32 %67, 3
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %95, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10, i64 1
  br label %88

79:                                               ; preds = %57
  %80 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10
  %81 = load float, ptr %80, align 4, !tbaa !57
  %82 = fsub float %60, %81
  store float %82, ptr %1, align 4, !tbaa !57
  %83 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !57
  %85 = fsub float %59, %84
  %86 = getelementptr inbounds float, ptr %1, i64 1
  store float %85, ptr %86, align 4, !tbaa !57
  %87 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10, i64 2
  br label %88

88:                                               ; preds = %79, %77
  %89 = phi ptr [ %78, %77 ], [ %87, %79 ]
  %90 = phi float [ %59, %77 ], [ %58, %79 ]
  %91 = phi i64 [ 1, %77 ], [ 2, %79 ]
  %92 = load float, ptr %89, align 4, !tbaa !57
  %93 = fsub float %90, %92
  %94 = getelementptr inbounds float, ptr %1, i64 %91
  store float %93, ptr %94, align 4, !tbaa !57
  br label %95

95:                                               ; preds = %88, %74
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define internal float @TranslationBetween(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #8 {
  %4 = load float, ptr %2, align 4, !tbaa !57
  %5 = load float, ptr %1, align 4, !tbaa !57
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !57
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !57
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %2, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !57
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !57
  %16 = fsub float %13, %15
  %17 = fmul float %11, %11
  %18 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %17)
  %19 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %18)
  %20 = tail call float @sqrtf(float noundef %19) #13
  ret float %20
}

; Function Attrs: nounwind uwtable
define internal void @ApplySnapRotation(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !128
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 16
  %9 = load float, ptr %8, align 8, !tbaa !196
  store float %9, ptr %1, align 4, !tbaa !57
  br label %76

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = icmp eq ptr %12, null
  br i1 %13, label %64, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds float, ptr %3, i64 2
  store float 0.000000e+00, ptr %15, align 4, !tbaa !57
  %16 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %16, align 4, !tbaa !57
  store float 0.000000e+00, ptr %3, align 4, !tbaa !57
  br label %17

17:                                               ; preds = %17, %14
  %18 = phi float [ 0.000000e+00, %14 ], [ %31, %17 ]
  %19 = phi float [ 0.000000e+00, %14 ], [ %28, %17 ]
  %20 = phi float [ 0.000000e+00, %14 ], [ %25, %17 ]
  %21 = phi ptr [ %12, %14 ], [ %33, %17 ]
  %22 = phi i32 [ 0, %14 ], [ %32, %17 ]
  %23 = getelementptr inbounds %struct.TransSnapPoint, ptr %21, i64 0, i32 2
  %24 = load float, ptr %23, align 4, !tbaa !57
  %25 = fadd float %20, %24
  %26 = getelementptr inbounds %struct.TransSnapPoint, ptr %21, i64 0, i32 2, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !57
  %28 = fadd float %19, %27
  %29 = getelementptr inbounds %struct.TransSnapPoint, ptr %21, i64 0, i32 2, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !57
  %31 = fadd float %18, %30
  %32 = add nuw nsw i32 %22, 1
  %33 = load ptr, ptr %21, align 8, !tbaa !51
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %17, !llvm.loop !146

35:                                               ; preds = %17
  store float %25, ptr %3, align 4, !tbaa !57
  store float %28, ptr %16, align 4, !tbaa !57
  store float %31, ptr %15, align 4, !tbaa !57
  %36 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %37 = load i16, ptr %36, align 4, !tbaa !34
  %38 = and i16 %37, 4
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9
  %42 = load float, ptr %41, align 4, !tbaa !57
  %43 = load float, ptr %3, align 4, !tbaa !57
  %44 = fadd float %42, %43
  store float %44, ptr %3, align 4, !tbaa !57
  %45 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !57
  %47 = load float, ptr %16, align 4, !tbaa !57
  %48 = fadd float %46, %47
  store float %48, ptr %16, align 4, !tbaa !57
  %49 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !57
  %51 = load float, ptr %15, align 4, !tbaa !57
  %52 = fadd float %50, %51
  store float %52, ptr %15, align 4, !tbaa !57
  %53 = add nuw nsw i32 %22, 2
  br label %54

54:                                               ; preds = %40, %35
  %55 = phi i32 [ %53, %40 ], [ %32, %35 ]
  %56 = sitofp i32 %55 to float
  %57 = fdiv float 1.000000e+00, %56
  %58 = load float, ptr %3, align 4, !tbaa !57
  %59 = fmul float %58, %57
  store float %59, ptr %3, align 4, !tbaa !57
  %60 = load float, ptr %16, align 4, !tbaa !57
  %61 = fmul float %57, %60
  store float %61, ptr %16, align 4, !tbaa !57
  %62 = load float, ptr %15, align 4, !tbaa !57
  %63 = fmul float %57, %62
  store float %63, ptr %15, align 4, !tbaa !57
  br label %73

64:                                               ; preds = %10
  %65 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9
  %66 = load float, ptr %65, align 4, !tbaa !57
  store float %66, ptr %3, align 4, !tbaa !57
  %67 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !57
  %69 = getelementptr inbounds float, ptr %3, i64 1
  store float %68, ptr %69, align 4, !tbaa !57
  %70 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !57
  %72 = getelementptr inbounds float, ptr %3, i64 2
  store float %71, ptr %72, align 4, !tbaa !57
  br label %73

73:                                               ; preds = %54, %64
  %74 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10
  %75 = call float @RotationBetween(ptr noundef %0, ptr noundef nonnull %74, ptr noundef nonnull %3)
  store float %75, ptr %1, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  br label %76

76:                                               ; preds = %73, %7
  ret void
}

; Function Attrs: nounwind uwtable
define internal float @RotationBetween(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %11 = load float, ptr %10, align 4, !tbaa !57
  store float %11, ptr %6, align 4, !tbaa !57
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !57
  %14 = getelementptr inbounds float, ptr %6, i64 1
  store float %13, ptr %14, align 4, !tbaa !57
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !57
  %17 = getelementptr inbounds float, ptr %6, i64 2
  store float %16, ptr %17, align 4, !tbaa !57
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !69
  %20 = and i32 %19, 6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %24 = load ptr, ptr %23, align 8, !tbaa !71
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %28 = load ptr, ptr %27, align 8, !tbaa !72
  br label %29

29:                                               ; preds = %22, %26
  %30 = phi ptr [ %28, %26 ], [ %24, %22 ]
  %31 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %31, ptr noundef nonnull %6) #13
  br label %32

32:                                               ; preds = %29, %3
  %33 = load float, ptr %1, align 4, !tbaa !57
  %34 = load float, ptr %6, align 4, !tbaa !57
  %35 = fsub float %33, %34
  store float %35, ptr %4, align 4, !tbaa !57
  %36 = getelementptr inbounds float, ptr %1, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !57
  %38 = load float, ptr %14, align 4, !tbaa !57
  %39 = fsub float %37, %38
  %40 = getelementptr inbounds float, ptr %4, i64 1
  store float %39, ptr %40, align 4, !tbaa !57
  %41 = getelementptr inbounds float, ptr %1, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !57
  %43 = load float, ptr %17, align 4, !tbaa !57
  %44 = fsub float %42, %43
  %45 = getelementptr inbounds float, ptr %4, i64 2
  store float %44, ptr %45, align 4, !tbaa !57
  %46 = load float, ptr %2, align 4, !tbaa !57
  %47 = fsub float %46, %34
  store float %47, ptr %5, align 4, !tbaa !57
  %48 = getelementptr inbounds float, ptr %2, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !57
  %50 = fsub float %49, %38
  %51 = getelementptr inbounds float, ptr %5, i64 1
  store float %50, ptr %51, align 4, !tbaa !57
  %52 = getelementptr inbounds float, ptr %2, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !57
  %54 = fsub float %53, %43
  %55 = getelementptr inbounds float, ptr %5, i64 2
  store float %54, ptr %55, align 4, !tbaa !57
  %56 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 11
  %57 = load ptr, ptr %56, align 8, !tbaa !206
  %58 = icmp eq ptr %57, null
  br i1 %58, label %152, label %59

59:                                               ; preds = %32
  %60 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %61 = load i32, ptr %60, align 4, !tbaa !207
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %152, label %64

64:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  call void %57(ptr noundef %0, ptr noundef null, ptr noundef nonnull %7, ptr noundef null) #13
  call void @project_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %7) #13
  %65 = load float, ptr %5, align 4, !tbaa !57
  %66 = load float, ptr %8, align 4, !tbaa !57
  %67 = fsub float %65, %66
  store float %67, ptr %5, align 4, !tbaa !57
  %68 = load float, ptr %51, align 4, !tbaa !57
  %69 = getelementptr inbounds float, ptr %8, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !57
  %71 = fsub float %68, %70
  store float %71, ptr %51, align 4, !tbaa !57
  %72 = load float, ptr %55, align 4, !tbaa !57
  %73 = getelementptr inbounds float, ptr %8, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !57
  %75 = fsub float %72, %74
  store float %75, ptr %55, align 4, !tbaa !57
  call void @project_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %7) #13
  %76 = load float, ptr %4, align 4, !tbaa !57
  %77 = load float, ptr %8, align 4, !tbaa !57
  %78 = fsub float %76, %77
  store float %78, ptr %4, align 4, !tbaa !57
  %79 = load float, ptr %40, align 4, !tbaa !57
  %80 = load float, ptr %69, align 4, !tbaa !57
  %81 = fsub float %79, %80
  store float %81, ptr %40, align 4, !tbaa !57
  %82 = load float, ptr %45, align 4, !tbaa !57
  %83 = load float, ptr %73, align 4, !tbaa !57
  %84 = fsub float %82, %83
  store float %84, ptr %45, align 4, !tbaa !57
  %85 = load float, ptr %5, align 4, !tbaa !57
  %86 = load float, ptr %51, align 4, !tbaa !57
  %87 = fmul float %86, %86
  %88 = call float @llvm.fmuladd.f32(float %85, float %85, float %87)
  %89 = load float, ptr %55, align 4, !tbaa !57
  %90 = call float @llvm.fmuladd.f32(float %89, float %89, float %88)
  %91 = fcmp ogt float %90, 0x38AA95A5C0000000
  br i1 %91, label %92, label %101

92:                                               ; preds = %64
  %93 = call float @sqrtf(float noundef %90) #13
  %94 = fdiv float 1.000000e+00, %93
  %95 = load float, ptr %5, align 4, !tbaa !57
  %96 = fmul float %95, %94
  store float %96, ptr %5, align 4, !tbaa !57
  %97 = load float, ptr %51, align 4, !tbaa !57
  %98 = fmul float %94, %97
  store float %98, ptr %51, align 4, !tbaa !57
  %99 = load float, ptr %55, align 4, !tbaa !57
  %100 = fmul float %94, %99
  br label %102

101:                                              ; preds = %64
  store float 0.000000e+00, ptr %5, align 4, !tbaa !57
  store float 0.000000e+00, ptr %51, align 4, !tbaa !57
  br label %102

102:                                              ; preds = %92, %101
  %103 = phi float [ 0.000000e+00, %101 ], [ %100, %92 ]
  store float %103, ptr %55, align 4, !tbaa !57
  %104 = load float, ptr %4, align 4, !tbaa !57
  %105 = load float, ptr %40, align 4, !tbaa !57
  %106 = fmul float %105, %105
  %107 = call float @llvm.fmuladd.f32(float %104, float %104, float %106)
  %108 = load float, ptr %45, align 4, !tbaa !57
  %109 = call float @llvm.fmuladd.f32(float %108, float %108, float %107)
  %110 = fcmp ogt float %109, 0x38AA95A5C0000000
  br i1 %110, label %111, label %120

111:                                              ; preds = %102
  %112 = call float @sqrtf(float noundef %109) #13
  %113 = fdiv float 1.000000e+00, %112
  %114 = load float, ptr %4, align 4, !tbaa !57
  %115 = fmul float %114, %113
  store float %115, ptr %4, align 4, !tbaa !57
  %116 = load float, ptr %40, align 4, !tbaa !57
  %117 = fmul float %113, %116
  store float %117, ptr %40, align 4, !tbaa !57
  %118 = load float, ptr %45, align 4, !tbaa !57
  %119 = fmul float %113, %118
  br label %121

120:                                              ; preds = %102
  store float 0.000000e+00, ptr %4, align 4, !tbaa !57
  store float 0.000000e+00, ptr %40, align 4, !tbaa !57
  br label %121

121:                                              ; preds = %111, %120
  %122 = phi float [ 0.000000e+00, %120 ], [ %119, %111 ]
  store float %122, ptr %45, align 4, !tbaa !57
  %123 = load float, ptr %40, align 4, !tbaa !57
  %124 = load float, ptr %55, align 4, !tbaa !57
  %125 = load float, ptr %51, align 4, !tbaa !57
  %126 = fneg float %122
  %127 = fmul float %125, %126
  %128 = call float @llvm.fmuladd.f32(float %123, float %124, float %127)
  store float %128, ptr %8, align 4, !tbaa !57
  %129 = load float, ptr %5, align 4, !tbaa !57
  %130 = load float, ptr %4, align 4, !tbaa !57
  %131 = fneg float %130
  %132 = fmul float %124, %131
  %133 = call float @llvm.fmuladd.f32(float %122, float %129, float %132)
  store float %133, ptr %69, align 4, !tbaa !57
  %134 = fneg float %123
  %135 = fmul float %129, %134
  %136 = call float @llvm.fmuladd.f32(float %130, float %125, float %135)
  store float %136, ptr %73, align 4, !tbaa !57
  %137 = load float, ptr %7, align 4, !tbaa !57
  %138 = getelementptr inbounds float, ptr %7, i64 1
  %139 = load float, ptr %138, align 4, !tbaa !57
  %140 = fmul float %133, %139
  %141 = call float @llvm.fmuladd.f32(float %128, float %137, float %140)
  %142 = getelementptr inbounds float, ptr %7, i64 2
  %143 = load float, ptr %142, align 4, !tbaa !57
  %144 = call float @llvm.fmuladd.f32(float %136, float %143, float %141)
  %145 = fcmp olt float %144, 0.000000e+00
  %146 = fmul float %123, %125
  %147 = call float @llvm.fmuladd.f32(float %130, float %129, float %146)
  %148 = call float @llvm.fmuladd.f32(float %122, float %124, float %147)
  %149 = call float @acosf(float noundef %148) #13
  %150 = fneg float %149
  %151 = select i1 %145, float %150, float %149
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  br label %161

152:                                              ; preds = %59, %32
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #13
  %153 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 27
  call void @copy_m3_m4(ptr noundef nonnull %9, ptr noundef nonnull %153) #13
  call void @mul_m3_v3(ptr noundef nonnull %9, ptr noundef nonnull %5) #13
  call void @mul_m3_v3(ptr noundef nonnull %9, ptr noundef nonnull %4) #13
  %154 = load float, ptr %40, align 4, !tbaa !57
  %155 = load float, ptr %4, align 4, !tbaa !57
  %156 = call float @atan2f(float noundef %154, float noundef %155) #13
  %157 = load float, ptr %51, align 4, !tbaa !57
  %158 = load float, ptr %5, align 4, !tbaa !57
  %159 = call float @atan2f(float noundef %157, float noundef %158) #13
  %160 = fsub float %156, %159
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #13
  br label %161

161:                                              ; preds = %152, %121
  %162 = phi float [ %151, %121 ], [ %160, %152 ]
  %163 = fcmp ogt float %162, 0x400921FB60000000
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = fadd float %162, 0xC01921FB60000000
  br label %170

166:                                              ; preds = %161
  %167 = fcmp olt float %162, 0xC00921FB60000000
  br i1 %167, label %168, label %170

168:                                              ; preds = %166
  %169 = fadd float %162, 0x401921FB60000000
  br label %170

170:                                              ; preds = %166, %168, %164
  %171 = phi float [ %165, %164 ], [ %169, %168 ], [ %162, %166 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  ret float %171
}

; Function Attrs: nounwind uwtable
define internal void @ApplySnapResize(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !128
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 16
  %9 = load float, ptr %8, align 8, !tbaa !196
  %10 = getelementptr inbounds float, ptr %1, i64 2
  store float %9, ptr %10, align 4, !tbaa !57
  %11 = getelementptr inbounds float, ptr %1, i64 1
  store float %9, ptr %11, align 4, !tbaa !57
  store float %9, ptr %1, align 4, !tbaa !57
  br label %80

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = icmp eq ptr %14, null
  br i1 %15, label %66, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds float, ptr %3, i64 2
  store float 0.000000e+00, ptr %17, align 4, !tbaa !57
  %18 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %18, align 4, !tbaa !57
  store float 0.000000e+00, ptr %3, align 4, !tbaa !57
  br label %19

19:                                               ; preds = %19, %16
  %20 = phi float [ 0.000000e+00, %16 ], [ %33, %19 ]
  %21 = phi float [ 0.000000e+00, %16 ], [ %30, %19 ]
  %22 = phi float [ 0.000000e+00, %16 ], [ %27, %19 ]
  %23 = phi ptr [ %14, %16 ], [ %35, %19 ]
  %24 = phi i32 [ 0, %16 ], [ %34, %19 ]
  %25 = getelementptr inbounds %struct.TransSnapPoint, ptr %23, i64 0, i32 2
  %26 = load float, ptr %25, align 4, !tbaa !57
  %27 = fadd float %22, %26
  %28 = getelementptr inbounds %struct.TransSnapPoint, ptr %23, i64 0, i32 2, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !57
  %30 = fadd float %21, %29
  %31 = getelementptr inbounds %struct.TransSnapPoint, ptr %23, i64 0, i32 2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !57
  %33 = fadd float %20, %32
  %34 = add nuw nsw i32 %24, 1
  %35 = load ptr, ptr %23, align 8, !tbaa !51
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %19, !llvm.loop !146

37:                                               ; preds = %19
  store float %27, ptr %3, align 4, !tbaa !57
  store float %30, ptr %18, align 4, !tbaa !57
  store float %33, ptr %17, align 4, !tbaa !57
  %38 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %39 = load i16, ptr %38, align 4, !tbaa !34
  %40 = and i16 %39, 4
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9
  %44 = load float, ptr %43, align 4, !tbaa !57
  %45 = load float, ptr %3, align 4, !tbaa !57
  %46 = fadd float %44, %45
  store float %46, ptr %3, align 4, !tbaa !57
  %47 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !57
  %49 = load float, ptr %18, align 4, !tbaa !57
  %50 = fadd float %48, %49
  store float %50, ptr %18, align 4, !tbaa !57
  %51 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !57
  %53 = load float, ptr %17, align 4, !tbaa !57
  %54 = fadd float %52, %53
  store float %54, ptr %17, align 4, !tbaa !57
  %55 = add nuw nsw i32 %24, 2
  br label %56

56:                                               ; preds = %42, %37
  %57 = phi i32 [ %55, %42 ], [ %34, %37 ]
  %58 = sitofp i32 %57 to float
  %59 = fdiv float 1.000000e+00, %58
  %60 = load float, ptr %3, align 4, !tbaa !57
  %61 = fmul float %60, %59
  store float %61, ptr %3, align 4, !tbaa !57
  %62 = load float, ptr %18, align 4, !tbaa !57
  %63 = fmul float %59, %62
  store float %63, ptr %18, align 4, !tbaa !57
  %64 = load float, ptr %17, align 4, !tbaa !57
  %65 = fmul float %59, %64
  store float %65, ptr %17, align 4, !tbaa !57
  br label %75

66:                                               ; preds = %12
  %67 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9
  %68 = load float, ptr %67, align 4, !tbaa !57
  store float %68, ptr %3, align 4, !tbaa !57
  %69 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !57
  %71 = getelementptr inbounds float, ptr %3, i64 1
  store float %70, ptr %71, align 4, !tbaa !57
  %72 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !57
  %74 = getelementptr inbounds float, ptr %3, i64 2
  store float %73, ptr %74, align 4, !tbaa !57
  br label %75

75:                                               ; preds = %56, %66
  %76 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10
  %77 = call float @ResizeBetween(ptr noundef %0, ptr noundef nonnull %76, ptr noundef nonnull %3)
  %78 = getelementptr inbounds float, ptr %1, i64 2
  store float %77, ptr %78, align 4, !tbaa !57
  %79 = getelementptr inbounds float, ptr %1, i64 1
  store float %77, ptr %79, align 4, !tbaa !57
  store float %77, ptr %1, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  br label %80

80:                                               ; preds = %75, %7
  ret void
}

; Function Attrs: nounwind uwtable
define internal float @ResizeBetween(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %8 = load float, ptr %7, align 4, !tbaa !57
  store float %8, ptr %6, align 4, !tbaa !57
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !57
  %11 = getelementptr inbounds float, ptr %6, i64 1
  store float %10, ptr %11, align 4, !tbaa !57
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !57
  %14 = getelementptr inbounds float, ptr %6, i64 2
  store float %13, ptr %14, align 4, !tbaa !57
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !69
  %17 = and i32 %16, 6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %21 = load ptr, ptr %20, align 8, !tbaa !71
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %25 = load ptr, ptr %24, align 8, !tbaa !72
  br label %26

26:                                               ; preds = %19, %23
  %27 = phi ptr [ %25, %23 ], [ %21, %19 ]
  %28 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %28, ptr noundef nonnull %6) #13
  br label %29

29:                                               ; preds = %26, %3
  %30 = load float, ptr %1, align 4, !tbaa !57
  %31 = load float, ptr %6, align 4, !tbaa !57
  %32 = fsub float %30, %31
  store float %32, ptr %4, align 4, !tbaa !57
  %33 = getelementptr inbounds float, ptr %1, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !57
  %35 = load float, ptr %11, align 4, !tbaa !57
  %36 = fsub float %34, %35
  %37 = getelementptr inbounds float, ptr %4, i64 1
  store float %36, ptr %37, align 4, !tbaa !57
  %38 = getelementptr inbounds float, ptr %1, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !57
  %40 = load float, ptr %14, align 4, !tbaa !57
  %41 = fsub float %39, %40
  %42 = getelementptr inbounds float, ptr %4, i64 2
  store float %41, ptr %42, align 4, !tbaa !57
  %43 = load float, ptr %2, align 4, !tbaa !57
  %44 = fsub float %43, %31
  store float %44, ptr %5, align 4, !tbaa !57
  %45 = getelementptr inbounds float, ptr %2, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !57
  %47 = fsub float %46, %35
  %48 = getelementptr inbounds float, ptr %5, i64 1
  store float %47, ptr %48, align 4, !tbaa !57
  %49 = getelementptr inbounds float, ptr %2, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !57
  %51 = fsub float %50, %40
  %52 = getelementptr inbounds float, ptr %5, i64 2
  store float %51, ptr %52, align 4, !tbaa !57
  %53 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 11
  %54 = load ptr, ptr %53, align 8, !tbaa !206
  %55 = icmp eq ptr %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %29
  %57 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %58 = load i32, ptr %57, align 4, !tbaa !207
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 4
  call void @mul_m3_v3(ptr noundef nonnull %62, ptr noundef nonnull %4) #13
  call void @mul_m3_v3(ptr noundef nonnull %62, ptr noundef nonnull %5) #13
  br label %63

63:                                               ; preds = %61, %56, %29
  %64 = load float, ptr %4, align 4, !tbaa !57
  %65 = load float, ptr %37, align 4, !tbaa !57
  %66 = fmul float %65, %65
  %67 = call float @llvm.fmuladd.f32(float %64, float %64, float %66)
  %68 = load float, ptr %42, align 4, !tbaa !57
  %69 = call float @llvm.fmuladd.f32(float %68, float %68, float %67)
  %70 = call float @sqrtf(float noundef %69) #13
  %71 = fcmp une float %70, 0.000000e+00
  br i1 %71, label %72, label %81

72:                                               ; preds = %63
  %73 = load float, ptr %5, align 4, !tbaa !57
  %74 = load float, ptr %48, align 4, !tbaa !57
  %75 = fmul float %74, %74
  %76 = call float @llvm.fmuladd.f32(float %73, float %73, float %75)
  %77 = load float, ptr %52, align 4, !tbaa !57
  %78 = call float @llvm.fmuladd.f32(float %77, float %77, float %76)
  %79 = call float @sqrtf(float noundef %78) #13
  %80 = fdiv float %79, %70
  br label %81

81:                                               ; preds = %63, %72
  %82 = phi float [ %80, %72 ], [ 1.000000e+00, %63 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  ret float %82
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

declare ptr @ED_space_image(ptr noundef) local_unnamed_addr #3

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @ED_uvedit_nearest_uv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_space_image_get_uv_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_object_boundbox_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare zeroext i8 @calculateCenterActive(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #7

declare zeroext i8 @ED_view3d_win_to_ray_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @snapObject(ptr noundef %0, i16 noundef signext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, ptr noundef writeonly %6, ptr noundef %7, ptr nocapture noundef readonly %8, ptr nocapture noundef readonly %9, ptr nocapture noundef readonly %10, ptr nocapture noundef readonly %11, ptr noundef %12, ptr noundef %13, ptr nocapture noundef %14, ptr nocapture noundef %15) unnamed_addr #1 {
  %17 = alloca [4 x [4 x float]], align 16
  %18 = alloca [4 x [4 x float]], align 16
  %19 = alloca [4 x [4 x float]], align 16
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = alloca [4 x [4 x float]], align 16
  %23 = alloca [4 x [4 x float]], align 16
  %24 = alloca [3 x float], align 4
  %25 = alloca [4 x [4 x float]], align 16
  %26 = alloca [3 x float], align 4
  %27 = alloca [3 x float], align 4
  %28 = alloca [3 x float], align 4
  %29 = alloca [4 x [4 x float]], align 16
  %30 = alloca [3 x float], align 4
  %31 = alloca [3 x float], align 4
  %32 = alloca [4 x [4 x float]], align 16
  %33 = alloca [3 x float], align 4
  %34 = alloca [3 x float], align 4
  %35 = alloca [4 x [4 x float]], align 16
  %36 = alloca [3 x [3 x float]], align 16
  %37 = alloca [3 x float], align 4
  %38 = alloca [3 x float], align 4
  %39 = alloca float, align 4
  %40 = alloca %struct.BVHTreeFromMesh, align 8
  %41 = alloca %struct.BVHTreeNearest, align 4
  %42 = alloca %struct.BVHTreeRayHit, align 4
  %43 = alloca %struct.BVHTreeFromMesh, align 8
  %44 = alloca [3 x float], align 4
  %45 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %46 = load i16, ptr %45, align 8, !tbaa !140
  switch i16 %46, label %693 [
    i16 1, label %47
    i16 25, label %349
    i16 2, label %440
    i16 0, label %585
    i16 11, label %611
  ]

47:                                               ; preds = %16
  %48 = icmp eq i8 %5, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %47
  %50 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #13
  %51 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !208
  %52 = tail call ptr @editbmesh_get_derived_cage(ptr noundef %0, ptr noundef %3, ptr noundef %50, i64 noundef %51) #13
  br label %56

53:                                               ; preds = %47
  %54 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !208
  %55 = tail call ptr @mesh_get_derived_final(ptr noundef %0, ptr noundef %3, i64 noundef %54) #13
  br label %56

56:                                               ; preds = %53, %49
  %57 = phi ptr [ %50, %49 ], [ null, %53 ]
  %58 = phi ptr [ %52, %49 ], [ %55, %53 ]
  %59 = icmp eq i16 %1, 3
  %60 = icmp ne ptr %2, null
  %61 = and i1 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %64 = load ptr, ptr %63, align 8, !tbaa !209
  %65 = getelementptr inbounds %struct.RegionView3D, ptr %64, i64 0, i32 24
  %66 = load i8, ptr %65, align 8, !tbaa !211
  %67 = icmp eq i8 %66, 0
  br label %68

68:                                               ; preds = %62, %56
  %69 = phi i1 [ false, %56 ], [ %67, %62 ]
  %70 = getelementptr inbounds %struct.DerivedMesh, ptr %58, i64 0, i32 23
  %71 = load ptr, ptr %70, align 8, !tbaa !213
  %72 = tail call i32 %71(ptr noundef %58) #13
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %345

74:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %35) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %36) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %38) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %39) #13
  store float 0x47DFFFFFE0000000, ptr %39, align 4, !tbaa !57
  %75 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %35, ptr noundef %4) #13
  call void @copy_m3_m4(ptr noundef nonnull %36, ptr noundef nonnull %35) #13
  call void @transpose_m3(ptr noundef nonnull %36) #13
  %76 = load float, ptr %8, align 4, !tbaa !57
  store float %76, ptr %37, align 4, !tbaa !57
  %77 = getelementptr inbounds float, ptr %8, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !57
  %79 = getelementptr inbounds float, ptr %37, i64 1
  store float %78, ptr %79, align 4, !tbaa !57
  %80 = getelementptr inbounds float, ptr %8, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !57
  %82 = getelementptr inbounds float, ptr %37, i64 2
  store float %81, ptr %82, align 4, !tbaa !57
  %83 = load float, ptr %9, align 4, !tbaa !57
  store float %83, ptr %38, align 4, !tbaa !57
  %84 = getelementptr inbounds float, ptr %9, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !57
  %86 = getelementptr inbounds float, ptr %38, i64 1
  store float %85, ptr %86, align 4, !tbaa !57
  %87 = getelementptr inbounds float, ptr %9, i64 2
  %88 = load float, ptr %87, align 4, !tbaa !57
  %89 = getelementptr inbounds float, ptr %38, i64 2
  store float %88, ptr %89, align 4, !tbaa !57
  call void @mul_m4_v3(ptr noundef nonnull %35, ptr noundef nonnull %37) #13
  call void @mul_mat3_m4_v3(ptr noundef nonnull %35, ptr noundef nonnull %38) #13
  %90 = load float, ptr %38, align 4, !tbaa !57
  %91 = load float, ptr %86, align 4, !tbaa !57
  %92 = fmul float %91, %91
  %93 = call float @llvm.fmuladd.f32(float %90, float %90, float %92)
  %94 = load float, ptr %89, align 4, !tbaa !57
  %95 = call float @llvm.fmuladd.f32(float %94, float %94, float %93)
  %96 = fcmp ogt float %95, 0x38AA95A5C0000000
  br i1 %96, label %97, label %106

97:                                               ; preds = %74
  %98 = call float @sqrtf(float noundef %95) #13
  %99 = fdiv float 1.000000e+00, %98
  %100 = load float, ptr %38, align 4, !tbaa !57
  %101 = fmul float %100, %99
  store float %101, ptr %38, align 4, !tbaa !57
  %102 = load float, ptr %86, align 4, !tbaa !57
  %103 = fmul float %99, %102
  store float %103, ptr %86, align 4, !tbaa !57
  %104 = load float, ptr %89, align 4, !tbaa !57
  %105 = fmul float %99, %104
  br label %107

106:                                              ; preds = %74
  store float 0.000000e+00, ptr %38, align 4, !tbaa !57
  store float 0.000000e+00, ptr %86, align 4, !tbaa !57
  br label %107

107:                                              ; preds = %106, %97
  %108 = phi float [ 0.000000e+00, %106 ], [ %105, %97 ]
  %109 = phi float [ 0.000000e+00, %106 ], [ %98, %97 ]
  store float %108, ptr %89, align 4, !tbaa !57
  br i1 %48, label %110, label %114

110:                                              ; preds = %107
  %111 = call ptr @BKE_object_boundbox_get(ptr noundef %3) #13
  %112 = call zeroext i8 @BKE_boundbox_ray_hit_check(ptr noundef %111, ptr noundef nonnull %37, ptr noundef nonnull %38, ptr noundef nonnull %39) #13
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %343, label %131

114:                                              ; preds = %107
  br i1 %69, label %115, label %131

115:                                              ; preds = %114
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %40) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %41) #13
  store float 0.000000e+00, ptr %39, align 4, !tbaa !57
  %116 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %40, i64 0, i32 10
  store ptr %57, ptr %116, align 8, !tbaa !214
  %117 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %40, ptr noundef %58, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 6) #13
  %118 = load ptr, ptr %40, align 8, !tbaa !216
  %119 = icmp eq ptr %118, null
  br i1 %119, label %130, label %120

120:                                              ; preds = %115
  store i32 -1, ptr %41, align 4, !tbaa !217
  %121 = getelementptr inbounds %struct.BVHTreeNearest, ptr %41, i64 0, i32 3
  store float 0x47EFFFFFE0000000, ptr %121, align 4, !tbaa !219
  %122 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %40, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !220
  %124 = call i32 @BLI_bvhtree_find_nearest(ptr noundef nonnull %118, ptr noundef nonnull %37, ptr noundef nonnull %41, ptr noundef %123, ptr noundef nonnull %40) #13
  %125 = load i32, ptr %41, align 4, !tbaa !217
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %130, label %127

127:                                              ; preds = %120
  %128 = load float, ptr %121, align 4, !tbaa !219
  %129 = call float @sqrtf(float noundef %128) #13
  store float %129, ptr %39, align 4, !tbaa !57
  br label %130

130:                                              ; preds = %127, %120, %115
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %40) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %41) #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %40) #13
  br label %131

131:                                              ; preds = %130, %114, %110
  switch i16 %1, label %343 [
    i16 3, label %132
    i16 1, label %230
    i16 2, label %272
  ]

132:                                              ; preds = %131
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %42) #13
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %43) #13
  br i1 %69, label %133, label %166

133:                                              ; preds = %132
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %44) #13
  %134 = load float, ptr %10, align 4, !tbaa !57
  store float %134, ptr %44, align 4, !tbaa !57
  %135 = getelementptr inbounds float, ptr %10, i64 1
  %136 = load float, ptr %135, align 4, !tbaa !57
  %137 = getelementptr inbounds float, ptr %44, i64 1
  store float %136, ptr %137, align 4, !tbaa !57
  %138 = getelementptr inbounds float, ptr %10, i64 2
  %139 = load float, ptr %138, align 4, !tbaa !57
  %140 = getelementptr inbounds float, ptr %44, i64 2
  store float %139, ptr %140, align 4, !tbaa !57
  call void @mul_m4_v3(ptr noundef nonnull %35, ptr noundef nonnull %44) #13
  %141 = load float, ptr %39, align 4, !tbaa !57
  %142 = fsub float %141, %109
  store float %142, ptr %39, align 4, !tbaa !57
  %143 = load float, ptr %44, align 4, !tbaa !57
  %144 = load float, ptr %37, align 4, !tbaa !57
  %145 = fsub float %143, %144
  %146 = load float, ptr %137, align 4, !tbaa !57
  %147 = load float, ptr %79, align 4, !tbaa !57
  %148 = fsub float %146, %147
  %149 = load float, ptr %140, align 4, !tbaa !57
  %150 = load float, ptr %82, align 4, !tbaa !57
  %151 = fsub float %149, %150
  %152 = fmul float %148, %148
  %153 = call float @llvm.fmuladd.f32(float %145, float %145, float %152)
  %154 = call float @llvm.fmuladd.f32(float %151, float %151, float %153)
  %155 = call float @sqrtf(float noundef %154) #13
  %156 = fsub float %142, %155
  %157 = load float, ptr %44, align 4, !tbaa !57
  %158 = load float, ptr %38, align 4, !tbaa !57
  %159 = call float @llvm.fmuladd.f32(float %158, float %156, float %157)
  store float %159, ptr %37, align 4, !tbaa !57
  %160 = load float, ptr %137, align 4, !tbaa !57
  %161 = load float, ptr %86, align 4, !tbaa !57
  %162 = call float @llvm.fmuladd.f32(float %161, float %156, float %160)
  store float %162, ptr %79, align 4, !tbaa !57
  %163 = load float, ptr %140, align 4, !tbaa !57
  %164 = load float, ptr %89, align 4, !tbaa !57
  %165 = call float @llvm.fmuladd.f32(float %164, float %156, float %163)
  store float %165, ptr %82, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %44) #13
  br label %167

166:                                              ; preds = %132
  store float 0.000000e+00, ptr %39, align 4, !tbaa !57
  br label %167

167:                                              ; preds = %166, %133
  %168 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %43, i64 0, i32 10
  store ptr %57, ptr %168, align 8, !tbaa !214
  %169 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %43, ptr noundef %58, float noundef 0.000000e+00, i32 noundef 4, i32 noundef 6) #13
  store i32 -1, ptr %42, align 4, !tbaa !221
  %170 = load float, ptr %15, align 4, !tbaa !57
  %171 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %42, i64 0, i32 3
  store float %170, ptr %171, align 4, !tbaa !223
  %172 = fcmp une float %170, 0x47DFFFFFE0000000
  br i1 %172, label %173, label %177

173:                                              ; preds = %167
  %174 = fmul float %109, %170
  store float %174, ptr %171, align 4, !tbaa !223
  %175 = load float, ptr %39, align 4, !tbaa !57
  %176 = fsub float %174, %175
  store float %176, ptr %171, align 4, !tbaa !223
  br label %177

177:                                              ; preds = %173, %167
  %178 = load ptr, ptr %43, align 8, !tbaa !216
  %179 = icmp eq ptr %178, null
  br i1 %179, label %228, label %180

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %43, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !224
  %183 = call i32 @BLI_bvhtree_ray_cast(ptr noundef nonnull %178, ptr noundef nonnull %37, ptr noundef nonnull %38, float noundef 0.000000e+00, ptr noundef nonnull %42, ptr noundef %182, ptr noundef nonnull %43) #13
  %184 = icmp eq i32 %183, -1
  br i1 %184, label %228, label %185

185:                                              ; preds = %180
  %186 = load float, ptr %39, align 4, !tbaa !57
  %187 = load float, ptr %171, align 4, !tbaa !223
  %188 = fadd float %186, %187
  %189 = fdiv float %188, %109
  store float %189, ptr %171, align 4, !tbaa !223
  %190 = load float, ptr %15, align 4, !tbaa !57
  %191 = fcmp ugt float %189, %190
  br i1 %191, label %228, label %192

192:                                              ; preds = %185
  store float %189, ptr %15, align 4, !tbaa !57
  %193 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %42, i64 0, i32 1
  %194 = load float, ptr %193, align 4, !tbaa !57
  store float %194, ptr %12, align 4, !tbaa !57
  %195 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %42, i64 0, i32 1, i64 1
  %196 = load float, ptr %195, align 4, !tbaa !57
  %197 = getelementptr inbounds float, ptr %12, i64 1
  store float %196, ptr %197, align 4, !tbaa !57
  %198 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %42, i64 0, i32 1, i64 2
  %199 = load float, ptr %198, align 4, !tbaa !57
  %200 = getelementptr inbounds float, ptr %12, i64 2
  store float %199, ptr %200, align 4, !tbaa !57
  %201 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %42, i64 0, i32 2
  %202 = load float, ptr %201, align 4, !tbaa !57
  store float %202, ptr %13, align 4, !tbaa !57
  %203 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %42, i64 0, i32 2, i64 1
  %204 = load float, ptr %203, align 4, !tbaa !57
  %205 = getelementptr inbounds float, ptr %13, i64 1
  store float %204, ptr %205, align 4, !tbaa !57
  %206 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %42, i64 0, i32 2, i64 2
  %207 = load float, ptr %206, align 4, !tbaa !57
  %208 = getelementptr inbounds float, ptr %13, i64 2
  store float %207, ptr %208, align 4, !tbaa !57
  call void @mul_m4_v3(ptr noundef %4, ptr noundef nonnull %12) #13
  call void @mul_m3_v3(ptr noundef nonnull %36, ptr noundef nonnull %13) #13
  %209 = load float, ptr %13, align 4, !tbaa !57
  %210 = load float, ptr %205, align 4, !tbaa !57
  %211 = fmul float %210, %210
  %212 = call float @llvm.fmuladd.f32(float %209, float %209, float %211)
  %213 = load float, ptr %208, align 4, !tbaa !57
  %214 = call float @llvm.fmuladd.f32(float %213, float %213, float %212)
  %215 = fcmp ogt float %214, 0x38AA95A5C0000000
  br i1 %215, label %216, label %225

216:                                              ; preds = %192
  %217 = call float @sqrtf(float noundef %214) #13
  %218 = fdiv float 1.000000e+00, %217
  %219 = load float, ptr %13, align 4, !tbaa !57
  %220 = fmul float %219, %218
  store float %220, ptr %13, align 4, !tbaa !57
  %221 = load float, ptr %205, align 4, !tbaa !57
  %222 = fmul float %218, %221
  store float %222, ptr %205, align 4, !tbaa !57
  %223 = load float, ptr %208, align 4, !tbaa !57
  %224 = fmul float %218, %223
  br label %226

225:                                              ; preds = %192
  store float 0.000000e+00, ptr %13, align 4, !tbaa !57
  store float 0.000000e+00, ptr %205, align 4, !tbaa !57
  br label %226

226:                                              ; preds = %225, %216
  %227 = phi float [ 0.000000e+00, %225 ], [ %224, %216 ]
  store float %227, ptr %208, align 4, !tbaa !57
  br label %228

228:                                              ; preds = %226, %185, %180, %177
  %229 = phi i8 [ 1, %226 ], [ 0, %185 ], [ 0, %180 ], [ 0, %177 ]
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %43) #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %43) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %42) #13
  br label %343

230:                                              ; preds = %131
  %231 = getelementptr inbounds %struct.DerivedMesh, ptr %58, i64 0, i32 31
  %232 = load ptr, ptr %231, align 8, !tbaa !225
  %233 = call ptr %232(ptr noundef %58) #13
  %234 = icmp eq ptr %57, null
  br i1 %234, label %240, label %235

235:                                              ; preds = %230
  %236 = getelementptr inbounds %struct.DerivedMesh, ptr %58, i64 0, i32 50
  %237 = load ptr, ptr %236, align 8, !tbaa !226
  %238 = call ptr %237(ptr noundef %58, i32 noundef 7) #13
  %239 = load ptr, ptr %57, align 8, !tbaa !227
  call void @BM_mesh_elem_table_ensure(ptr noundef %239, i8 noundef zeroext 1) #13
  br label %240

240:                                              ; preds = %230, %235
  %241 = phi ptr [ %238, %235 ], [ null, %230 ]
  %242 = icmp eq ptr %241, null
  %243 = call i32 @llvm.smax.i32(i32 %72, i32 1)
  %244 = zext nneg i32 %243 to i64
  br label %245

245:                                              ; preds = %240, %268
  %246 = phi i64 [ 0, %240 ], [ %270, %268 ]
  %247 = phi i8 [ 0, %240 ], [ %269, %268 ]
  %248 = getelementptr inbounds %struct.MVert, ptr %233, i64 %246
  br i1 %234, label %264, label %249

249:                                              ; preds = %245
  %250 = trunc i64 %246 to i32
  br i1 %242, label %254, label %251

251:                                              ; preds = %249
  %252 = getelementptr inbounds i32, ptr %241, i64 %246
  %253 = load i32, ptr %252, align 4, !tbaa !65
  br label %254

254:                                              ; preds = %251, %249
  %255 = phi i32 [ %253, %251 ], [ %250, %249 ]
  %256 = icmp eq i32 %255, -1
  br i1 %256, label %268, label %257

257:                                              ; preds = %254
  %258 = load ptr, ptr %57, align 8, !tbaa !227
  %259 = call ptr @BM_vert_at_index(ptr noundef %258, i32 noundef %255) #13
  %260 = getelementptr inbounds %struct.BMHeader, ptr %259, i64 0, i32 3
  %261 = load i8, ptr %260, align 1, !tbaa !229
  %262 = and i8 %261, 3
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %257, %245
  %265 = getelementptr inbounds %struct.MVert, ptr %233, i64 %246, i32 1
  %266 = call fastcc zeroext i8 @snapVertex(ptr noundef %2, ptr noundef %248, ptr noundef nonnull %265, ptr noundef %4, ptr noundef nonnull %36, ptr noundef nonnull %8, ptr noundef nonnull %37, ptr noundef nonnull %38, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15), !range !149
  %267 = or i8 %266, %247
  br label %268

268:                                              ; preds = %264, %257, %254
  %269 = phi i8 [ %267, %264 ], [ %247, %254 ], [ %247, %257 ]
  %270 = add nuw nsw i64 %246, 1
  %271 = icmp eq i64 %270, %244
  br i1 %271, label %343, label %245, !llvm.loop !231

272:                                              ; preds = %131
  %273 = getelementptr inbounds %struct.DerivedMesh, ptr %58, i64 0, i32 31
  %274 = load ptr, ptr %273, align 8, !tbaa !225
  %275 = call ptr %274(ptr noundef %58) #13
  %276 = getelementptr inbounds %struct.DerivedMesh, ptr %58, i64 0, i32 32
  %277 = load ptr, ptr %276, align 8, !tbaa !232
  %278 = call ptr %277(ptr noundef %58) #13
  %279 = getelementptr inbounds %struct.DerivedMesh, ptr %58, i64 0, i32 24
  %280 = load ptr, ptr %279, align 8, !tbaa !233
  %281 = call i32 %280(ptr noundef %58) #13
  %282 = icmp eq ptr %57, null
  br i1 %282, label %288, label %283

283:                                              ; preds = %272
  %284 = getelementptr inbounds %struct.DerivedMesh, ptr %58, i64 0, i32 51
  %285 = load ptr, ptr %284, align 8, !tbaa !234
  %286 = call ptr %285(ptr noundef %58, i32 noundef 7) #13
  %287 = load ptr, ptr %57, align 8, !tbaa !227
  call void @BM_mesh_elem_table_ensure(ptr noundef %287, i8 noundef zeroext 2) #13
  br label %288

288:                                              ; preds = %283, %272
  %289 = phi ptr [ %286, %283 ], [ null, %272 ]
  %290 = icmp sgt i32 %281, 0
  br i1 %290, label %291, label %343

291:                                              ; preds = %288
  %292 = icmp eq ptr %289, null
  %293 = zext nneg i32 %281 to i64
  br label %294

294:                                              ; preds = %291, %339
  %295 = phi i64 [ 0, %291 ], [ %341, %339 ]
  %296 = phi i8 [ 0, %291 ], [ %340, %339 ]
  %297 = getelementptr inbounds %struct.MEdge, ptr %278, i64 %295
  br i1 %282, label %327, label %298

298:                                              ; preds = %294
  %299 = trunc i64 %295 to i32
  br i1 %292, label %303, label %300

300:                                              ; preds = %298
  %301 = getelementptr inbounds i32, ptr %289, i64 %295
  %302 = load i32, ptr %301, align 4, !tbaa !65
  br label %303

303:                                              ; preds = %300, %298
  %304 = phi i32 [ %302, %300 ], [ %299, %298 ]
  %305 = icmp eq i32 %304, -1
  br i1 %305, label %339, label %306

306:                                              ; preds = %303
  %307 = load ptr, ptr %57, align 8, !tbaa !227
  %308 = call ptr @BM_edge_at_index(ptr noundef %307, i32 noundef %304) #13
  %309 = getelementptr inbounds %struct.BMHeader, ptr %308, i64 0, i32 3
  %310 = load i8, ptr %309, align 1, !tbaa !229
  %311 = and i8 %310, 2
  %312 = icmp eq i8 %311, 0
  br i1 %312, label %313, label %339

313:                                              ; preds = %306
  %314 = getelementptr inbounds %struct.BMEdge, ptr %308, i64 0, i32 2
  %315 = load ptr, ptr %314, align 8, !tbaa !235
  %316 = getelementptr inbounds %struct.BMHeader, ptr %315, i64 0, i32 3
  %317 = load i8, ptr %316, align 1, !tbaa !229
  %318 = and i8 %317, 1
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %320, label %339

320:                                              ; preds = %313
  %321 = getelementptr inbounds %struct.BMEdge, ptr %308, i64 0, i32 3
  %322 = load ptr, ptr %321, align 8, !tbaa !238
  %323 = getelementptr inbounds %struct.BMHeader, ptr %322, i64 0, i32 3
  %324 = load i8, ptr %323, align 1, !tbaa !229
  %325 = and i8 %324, 1
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %327, label %339

327:                                              ; preds = %320, %294
  %328 = load i32, ptr %297, align 4, !tbaa !239
  %329 = zext i32 %328 to i64
  %330 = getelementptr inbounds %struct.MVert, ptr %275, i64 %329
  %331 = getelementptr inbounds %struct.MVert, ptr %275, i64 %329, i32 1
  %332 = getelementptr inbounds %struct.MEdge, ptr %278, i64 %295, i32 1
  %333 = load i32, ptr %332, align 4, !tbaa !241
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds %struct.MVert, ptr %275, i64 %334
  %336 = getelementptr inbounds %struct.MVert, ptr %275, i64 %334, i32 1
  %337 = call fastcc zeroext i8 @snapEdge(ptr noundef %2, ptr noundef %330, ptr noundef nonnull %331, ptr noundef %335, ptr noundef nonnull %336, ptr noundef %4, ptr noundef nonnull %36, ptr noundef nonnull %8, ptr noundef nonnull %37, ptr noundef nonnull %38, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15), !range !149
  %338 = or i8 %337, %296
  br label %339

339:                                              ; preds = %306, %313, %320, %303, %327
  %340 = phi i8 [ %338, %327 ], [ %296, %303 ], [ %296, %320 ], [ %296, %313 ], [ %296, %306 ]
  %341 = add nuw nsw i64 %295, 1
  %342 = icmp eq i64 %341, %293
  br i1 %342, label %343, label %294, !llvm.loop !242

343:                                              ; preds = %339, %268, %288, %228, %131, %110
  %344 = phi i8 [ 0, %110 ], [ 0, %131 ], [ %229, %228 ], [ 0, %288 ], [ %269, %268 ], [ %340, %339 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %39) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %38) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %36) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %35) #13
  br label %345

345:                                              ; preds = %68, %343
  %346 = phi i8 [ 0, %68 ], [ %344, %343 ]
  %347 = getelementptr inbounds %struct.DerivedMesh, ptr %58, i64 0, i32 95
  %348 = load ptr, ptr %347, align 8, !tbaa !159
  call void %348(ptr noundef %58) #13
  br label %693

349:                                              ; preds = %16
  %350 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %351 = load ptr, ptr %350, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %32) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %34) #13
  %352 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %32, ptr noundef %4) #13
  %353 = load float, ptr %8, align 4, !tbaa !57
  store float %353, ptr %33, align 4, !tbaa !57
  %354 = getelementptr inbounds float, ptr %8, i64 1
  %355 = load float, ptr %354, align 4, !tbaa !57
  %356 = getelementptr inbounds float, ptr %33, i64 1
  store float %355, ptr %356, align 4, !tbaa !57
  %357 = getelementptr inbounds float, ptr %8, i64 2
  %358 = load float, ptr %357, align 4, !tbaa !57
  %359 = getelementptr inbounds float, ptr %33, i64 2
  store float %358, ptr %359, align 4, !tbaa !57
  %360 = load float, ptr %9, align 4, !tbaa !57
  store float %360, ptr %34, align 4, !tbaa !57
  %361 = getelementptr inbounds float, ptr %9, i64 1
  %362 = load float, ptr %361, align 4, !tbaa !57
  %363 = getelementptr inbounds float, ptr %34, i64 1
  store float %362, ptr %363, align 4, !tbaa !57
  %364 = getelementptr inbounds float, ptr %9, i64 2
  %365 = load float, ptr %364, align 4, !tbaa !57
  %366 = getelementptr inbounds float, ptr %34, i64 2
  store float %365, ptr %366, align 4, !tbaa !57
  call void @mul_m4_v3(ptr noundef nonnull %32, ptr noundef nonnull %33) #13
  call void @mul_mat3_m4_v3(ptr noundef nonnull %32, ptr noundef nonnull %34) #13
  %367 = getelementptr inbounds %struct.bArmature, ptr %351, i64 0, i32 4
  %368 = load ptr, ptr %367, align 8, !tbaa !244
  %369 = icmp eq ptr %368, null
  br i1 %369, label %405, label %370

370:                                              ; preds = %349
  %371 = load ptr, ptr %368, align 8, !tbaa !51
  %372 = icmp eq ptr %371, null
  br i1 %372, label %438, label %373

373:                                              ; preds = %370
  %374 = getelementptr inbounds %struct.bArmature, ptr %351, i64 0, i32 15
  br label %375

375:                                              ; preds = %373, %401
  %376 = phi ptr [ %371, %373 ], [ %403, %401 ]
  %377 = phi i8 [ 0, %373 ], [ %402, %401 ]
  %378 = getelementptr inbounds %struct.EditBone, ptr %376, i64 0, i32 10
  %379 = load i32, ptr %378, align 8, !tbaa !246
  %380 = load i32, ptr %374, align 8, !tbaa !248
  %381 = and i32 %380, %379
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %401, label %383

383:                                              ; preds = %375
  %384 = getelementptr inbounds %struct.EditBone, ptr %376, i64 0, i32 9
  %385 = load i32, ptr %384, align 4, !tbaa !249
  %386 = and i32 %385, 1030
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %401

388:                                              ; preds = %383
  switch i16 %1, label %401 [
    i16 1, label %389
    i16 2, label %396
  ]

389:                                              ; preds = %388
  %390 = getelementptr inbounds %struct.EditBone, ptr %376, i64 0, i32 7
  %391 = call fastcc zeroext i8 @snapVertex(ptr noundef %2, ptr noundef nonnull %390, ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %33, ptr noundef nonnull %34, ptr noundef %11, ptr noundef %12, ptr noundef null, ptr noundef %14, ptr noundef %15), !range !149
  %392 = getelementptr inbounds %struct.EditBone, ptr %376, i64 0, i32 8
  %393 = call fastcc zeroext i8 @snapVertex(ptr noundef %2, ptr noundef nonnull %392, ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %33, ptr noundef nonnull %34, ptr noundef %11, ptr noundef %12, ptr noundef null, ptr noundef %14, ptr noundef %15), !range !149
  %394 = or i8 %391, %393
  %395 = or i8 %394, %377
  br label %401

396:                                              ; preds = %388
  %397 = getelementptr inbounds %struct.EditBone, ptr %376, i64 0, i32 7
  %398 = getelementptr inbounds %struct.EditBone, ptr %376, i64 0, i32 8
  %399 = call fastcc zeroext i8 @snapEdge(ptr noundef %2, ptr noundef nonnull %397, ptr noundef null, ptr noundef nonnull %398, ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %33, ptr noundef nonnull %34, ptr noundef %11, ptr noundef %12, ptr noundef null, ptr noundef %14, ptr noundef %15), !range !149
  %400 = or i8 %399, %377
  br label %401

401:                                              ; preds = %396, %389, %388, %383, %375
  %402 = phi i8 [ %377, %388 ], [ %400, %396 ], [ %395, %389 ], [ %377, %383 ], [ %377, %375 ]
  %403 = load ptr, ptr %376, align 8, !tbaa !51
  %404 = icmp eq ptr %403, null
  br i1 %404, label %438, label %375, !llvm.loop !250

405:                                              ; preds = %349
  %406 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %407 = load ptr, ptr %406, align 8, !tbaa !251
  %408 = icmp eq ptr %407, null
  br i1 %408, label %438, label %409

409:                                              ; preds = %405
  %410 = load ptr, ptr %407, align 8, !tbaa !252
  %411 = icmp eq ptr %410, null
  br i1 %411, label %438, label %412

412:                                              ; preds = %409, %434
  %413 = phi i8 [ %435, %434 ], [ 0, %409 ]
  %414 = phi ptr [ %436, %434 ], [ %410, %409 ]
  %415 = getelementptr inbounds %struct.bPoseChannel, ptr %414, i64 0, i32 12
  %416 = load ptr, ptr %415, align 8, !tbaa !254
  %417 = icmp eq ptr %416, null
  br i1 %417, label %434, label %418

418:                                              ; preds = %412
  %419 = getelementptr inbounds %struct.Bone, ptr %416, i64 0, i32 10
  %420 = load i32, ptr %419, align 8, !tbaa !256
  %421 = and i32 %420, 65600
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %434

423:                                              ; preds = %418
  %424 = getelementptr inbounds %struct.bPoseChannel, ptr %414, i64 0, i32 31
  %425 = getelementptr inbounds %struct.bPoseChannel, ptr %414, i64 0, i32 32
  switch i16 %1, label %434 [
    i16 1, label %426
    i16 2, label %431
  ]

426:                                              ; preds = %423
  %427 = call fastcc zeroext i8 @snapVertex(ptr noundef %2, ptr noundef nonnull %424, ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %33, ptr noundef nonnull %34, ptr noundef %11, ptr noundef %12, ptr noundef null, ptr noundef %14, ptr noundef %15), !range !149
  %428 = call fastcc zeroext i8 @snapVertex(ptr noundef %2, ptr noundef nonnull %425, ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %33, ptr noundef nonnull %34, ptr noundef %11, ptr noundef %12, ptr noundef null, ptr noundef %14, ptr noundef %15), !range !149
  %429 = or i8 %427, %428
  %430 = or i8 %429, %413
  br label %434

431:                                              ; preds = %423
  %432 = call fastcc zeroext i8 @snapEdge(ptr noundef %2, ptr noundef nonnull %424, ptr noundef null, ptr noundef nonnull %425, ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %33, ptr noundef nonnull %34, ptr noundef %11, ptr noundef %12, ptr noundef null, ptr noundef %14, ptr noundef %15), !range !149
  %433 = or i8 %432, %413
  br label %434

434:                                              ; preds = %431, %426, %423, %418, %412
  %435 = phi i8 [ %413, %418 ], [ %413, %412 ], [ %413, %423 ], [ %433, %431 ], [ %430, %426 ]
  %436 = load ptr, ptr %414, align 8, !tbaa !258
  %437 = icmp eq ptr %436, null
  br i1 %437, label %438, label %412, !llvm.loop !259

438:                                              ; preds = %401, %434, %370, %405, %409
  %439 = phi i8 [ 0, %409 ], [ 0, %405 ], [ 0, %370 ], [ %435, %434 ], [ %402, %401 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %34) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %32) #13
  br label %693

440:                                              ; preds = %16
  %441 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %442 = load ptr, ptr %441, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %29) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #13
  %443 = icmp eq i16 %1, 1
  br i1 %443, label %444, label %583

444:                                              ; preds = %440
  %445 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %29, ptr noundef %4) #13
  %446 = load float, ptr %8, align 4, !tbaa !57
  store float %446, ptr %30, align 4, !tbaa !57
  %447 = getelementptr inbounds float, ptr %8, i64 1
  %448 = load float, ptr %447, align 4, !tbaa !57
  %449 = getelementptr inbounds float, ptr %30, i64 1
  store float %448, ptr %449, align 4, !tbaa !57
  %450 = getelementptr inbounds float, ptr %8, i64 2
  %451 = load float, ptr %450, align 4, !tbaa !57
  %452 = getelementptr inbounds float, ptr %30, i64 2
  store float %451, ptr %452, align 4, !tbaa !57
  %453 = load float, ptr %9, align 4, !tbaa !57
  store float %453, ptr %31, align 4, !tbaa !57
  %454 = getelementptr inbounds float, ptr %9, i64 1
  %455 = load float, ptr %454, align 4, !tbaa !57
  %456 = getelementptr inbounds float, ptr %31, i64 1
  store float %455, ptr %456, align 4, !tbaa !57
  %457 = getelementptr inbounds float, ptr %9, i64 2
  %458 = load float, ptr %457, align 4, !tbaa !57
  %459 = getelementptr inbounds float, ptr %31, i64 2
  store float %458, ptr %459, align 4, !tbaa !57
  call void @mul_m4_v3(ptr noundef nonnull %29, ptr noundef nonnull %30) #13
  call void @mul_mat3_m4_v3(ptr noundef nonnull %29, ptr noundef nonnull %31) #13
  %460 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %461 = load i32, ptr %460, align 8, !tbaa !143
  %462 = icmp eq i32 %461, 1
  br i1 %462, label %463, label %466

463:                                              ; preds = %444
  %464 = getelementptr inbounds %struct.Curve, ptr %442, i64 0, i32 4
  %465 = load ptr, ptr %464, align 8, !tbaa !260
  br label %468

466:                                              ; preds = %444
  %467 = getelementptr inbounds %struct.Curve, ptr %442, i64 0, i32 3
  br label %468

468:                                              ; preds = %466, %463
  %469 = phi ptr [ %465, %463 ], [ %467, %466 ]
  %470 = load ptr, ptr %469, align 8, !tbaa !51
  %471 = icmp eq ptr %470, null
  br i1 %471, label %583, label %476

472:                                              ; preds = %577, %476
  %473 = phi i8 [ %478, %476 ], [ %578, %577 ]
  %474 = load ptr, ptr %477, align 8, !tbaa !51
  %475 = icmp eq ptr %474, null
  br i1 %475, label %583, label %476, !llvm.loop !263

476:                                              ; preds = %468, %472
  %477 = phi ptr [ %474, %472 ], [ %470, %468 ]
  %478 = phi i8 [ %473, %472 ], [ 0, %468 ]
  %479 = getelementptr inbounds %struct.Nurb, ptr %477, i64 0, i32 6
  %480 = load i32, ptr %479, align 8, !tbaa !264
  %481 = icmp sgt i32 %480, 0
  br i1 %481, label %482, label %472

482:                                              ; preds = %476
  %483 = getelementptr inbounds %struct.Nurb, ptr %477, i64 0, i32 18
  %484 = getelementptr inbounds %struct.Nurb, ptr %477, i64 0, i32 17
  %485 = getelementptr inbounds %struct.Nurb, ptr %477, i64 0, i32 18
  %486 = getelementptr inbounds %struct.Nurb, ptr %477, i64 0, i32 17
  br label %487

487:                                              ; preds = %482, %577
  %488 = phi i64 [ 0, %482 ], [ %579, %577 ]
  %489 = phi i32 [ %480, %482 ], [ %580, %577 ]
  %490 = phi i8 [ %478, %482 ], [ %578, %577 ]
  %491 = load i32, ptr %460, align 8, !tbaa !143
  %492 = icmp eq i32 %491, 1
  br i1 %492, label %493, label %563

493:                                              ; preds = %487
  %494 = load ptr, ptr %485, align 8, !tbaa !266
  %495 = icmp eq ptr %494, null
  br i1 %495, label %549, label %496

496:                                              ; preds = %493
  %497 = getelementptr inbounds %struct.BezTriple, ptr %494, i64 %488, i32 8
  %498 = load i8, ptr %497, align 4, !tbaa !267
  %499 = and i8 %498, 1
  %500 = icmp eq i8 %499, 0
  br i1 %500, label %501, label %577

501:                                              ; preds = %496
  %502 = getelementptr inbounds %struct.BezTriple, ptr %494, i64 %488, i32 10
  %503 = load i8, ptr %502, align 2, !tbaa !269
  %504 = icmp eq i8 %503, 0
  br i1 %504, label %505, label %577

505:                                              ; preds = %501
  %506 = getelementptr inbounds %struct.BezTriple, ptr %494, i64 %488, i32 0, i64 1
  %507 = call fastcc zeroext i8 @snapVertex(ptr noundef %2, ptr noundef nonnull %506, ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %30, ptr noundef nonnull %31, ptr noundef %11, ptr noundef %12, ptr noundef null, ptr noundef %14, ptr noundef %15), !range !149
  %508 = or i8 %507, %490
  %509 = load ptr, ptr %485, align 8, !tbaa !266
  %510 = getelementptr inbounds %struct.BezTriple, ptr %509, i64 %488, i32 7
  %511 = load i8, ptr %510, align 1, !tbaa !270
  %512 = and i8 %511, 1
  %513 = icmp eq i8 %512, 0
  br i1 %513, label %514, label %528

514:                                              ; preds = %505
  %515 = getelementptr inbounds %struct.BezTriple, ptr %509, i64 %488, i32 5
  %516 = load i8, ptr %515, align 1, !tbaa !271
  %517 = and i8 %516, 3
  %518 = icmp eq i8 %517, 0
  br i1 %518, label %524, label %519

519:                                              ; preds = %514
  %520 = getelementptr inbounds %struct.BezTriple, ptr %509, i64 %488, i32 9
  %521 = load i8, ptr %520, align 1, !tbaa !272
  %522 = and i8 %521, 1
  %523 = icmp eq i8 %522, 0
  br i1 %523, label %524, label %528

524:                                              ; preds = %519, %514
  %525 = getelementptr inbounds %struct.BezTriple, ptr %509, i64 %488
  %526 = call fastcc zeroext i8 @snapVertex(ptr noundef %2, ptr noundef %525, ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %30, ptr noundef nonnull %31, ptr noundef %11, ptr noundef %12, ptr noundef null, ptr noundef %14, ptr noundef %15), !range !149
  %527 = or i8 %526, %508
  br label %528

528:                                              ; preds = %524, %519, %505
  %529 = phi i8 [ %508, %505 ], [ %508, %519 ], [ %527, %524 ]
  %530 = load ptr, ptr %485, align 8, !tbaa !266
  %531 = getelementptr inbounds %struct.BezTriple, ptr %530, i64 %488, i32 9
  %532 = load i8, ptr %531, align 1, !tbaa !272
  %533 = and i8 %532, 1
  %534 = icmp eq i8 %533, 0
  br i1 %534, label %535, label %577

535:                                              ; preds = %528
  %536 = getelementptr inbounds %struct.BezTriple, ptr %530, i64 %488, i32 6
  %537 = load i8, ptr %536, align 2, !tbaa !273
  %538 = and i8 %537, 3
  %539 = icmp eq i8 %538, 0
  br i1 %539, label %545, label %540

540:                                              ; preds = %535
  %541 = getelementptr inbounds %struct.BezTriple, ptr %530, i64 %488, i32 7
  %542 = load i8, ptr %541, align 1, !tbaa !270
  %543 = and i8 %542, 1
  %544 = icmp eq i8 %543, 0
  br i1 %544, label %545, label %577

545:                                              ; preds = %540, %535
  %546 = getelementptr inbounds %struct.BezTriple, ptr %530, i64 %488, i32 0, i64 2
  %547 = call fastcc zeroext i8 @snapVertex(ptr noundef %2, ptr noundef nonnull %546, ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %30, ptr noundef nonnull %31, ptr noundef %11, ptr noundef %12, ptr noundef null, ptr noundef %14, ptr noundef %15), !range !149
  %548 = or i8 %547, %529
  br label %577

549:                                              ; preds = %493
  %550 = load ptr, ptr %486, align 8, !tbaa !274
  %551 = getelementptr inbounds %struct.BPoint, ptr %550, i64 %488
  %552 = getelementptr inbounds %struct.BPoint, ptr %550, i64 %488, i32 3
  %553 = load i16, ptr %552, align 4, !tbaa !275
  %554 = and i16 %553, 1
  %555 = icmp eq i16 %554, 0
  br i1 %555, label %556, label %577

556:                                              ; preds = %549
  %557 = getelementptr inbounds %struct.BPoint, ptr %550, i64 %488, i32 4
  %558 = load i16, ptr %557, align 2, !tbaa !277
  %559 = icmp eq i16 %558, 0
  br i1 %559, label %560, label %577

560:                                              ; preds = %556
  %561 = call fastcc zeroext i8 @snapVertex(ptr noundef %2, ptr noundef %551, ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %30, ptr noundef nonnull %31, ptr noundef %11, ptr noundef %12, ptr noundef null, ptr noundef %14, ptr noundef %15), !range !149
  %562 = or i8 %561, %490
  br label %577

563:                                              ; preds = %487
  %564 = icmp sgt i32 %489, 1
  br i1 %564, label %565, label %577

565:                                              ; preds = %563
  %566 = load ptr, ptr %483, align 8, !tbaa !266
  %567 = icmp eq ptr %566, null
  br i1 %567, label %572, label %568

568:                                              ; preds = %565
  %569 = getelementptr inbounds %struct.BezTriple, ptr %566, i64 %488, i32 0, i64 1
  %570 = call fastcc zeroext i8 @snapVertex(ptr noundef %2, ptr noundef nonnull %569, ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %30, ptr noundef nonnull %31, ptr noundef %11, ptr noundef %12, ptr noundef null, ptr noundef %14, ptr noundef %15), !range !149
  %571 = or i8 %570, %490
  br label %577

572:                                              ; preds = %565
  %573 = load ptr, ptr %484, align 8, !tbaa !274
  %574 = getelementptr inbounds %struct.BPoint, ptr %573, i64 %488
  %575 = call fastcc zeroext i8 @snapVertex(ptr noundef %2, ptr noundef %574, ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %30, ptr noundef nonnull %31, ptr noundef %11, ptr noundef %12, ptr noundef null, ptr noundef %14, ptr noundef %15), !range !149
  %576 = or i8 %575, %490
  br label %577

577:                                              ; preds = %572, %568, %563, %560, %556, %549, %545, %540, %528, %501, %496
  %578 = phi i8 [ %490, %496 ], [ %490, %501 ], [ %529, %528 ], [ %529, %540 ], [ %548, %545 ], [ %490, %549 ], [ %490, %556 ], [ %562, %560 ], [ %571, %568 ], [ %576, %572 ], [ %490, %563 ]
  %579 = add nuw nsw i64 %488, 1
  %580 = load i32, ptr %479, align 8, !tbaa !264
  %581 = sext i32 %580 to i64
  %582 = icmp slt i64 %579, %581
  br i1 %582, label %487, label %472, !llvm.loop !278

583:                                              ; preds = %472, %468, %440
  %584 = phi i8 [ 0, %440 ], [ 0, %468 ], [ %473, %472 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %29) #13
  br label %693

585:                                              ; preds = %16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %25) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #13
  %586 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 55
  %587 = load i16, ptr %586, align 8, !tbaa !153
  %588 = and i16 %587, 2840
  %589 = icmp eq i16 %588, 0
  %590 = icmp eq i16 %1, 1
  %591 = and i1 %590, %589
  br i1 %591, label %592, label %609

592:                                              ; preds = %585
  %593 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %25, ptr noundef %4) #13
  %594 = load float, ptr %8, align 4, !tbaa !57
  store float %594, ptr %26, align 4, !tbaa !57
  %595 = getelementptr inbounds float, ptr %8, i64 1
  %596 = load float, ptr %595, align 4, !tbaa !57
  %597 = getelementptr inbounds float, ptr %26, i64 1
  store float %596, ptr %597, align 4, !tbaa !57
  %598 = getelementptr inbounds float, ptr %8, i64 2
  %599 = load float, ptr %598, align 4, !tbaa !57
  %600 = getelementptr inbounds float, ptr %26, i64 2
  store float %599, ptr %600, align 4, !tbaa !57
  %601 = load float, ptr %9, align 4, !tbaa !57
  store float %601, ptr %27, align 4, !tbaa !57
  %602 = getelementptr inbounds float, ptr %9, i64 1
  %603 = load float, ptr %602, align 4, !tbaa !57
  %604 = getelementptr inbounds float, ptr %27, i64 1
  store float %603, ptr %604, align 4, !tbaa !57
  %605 = getelementptr inbounds float, ptr %9, i64 2
  %606 = load float, ptr %605, align 4, !tbaa !57
  %607 = getelementptr inbounds float, ptr %27, i64 2
  store float %606, ptr %607, align 4, !tbaa !57
  call void @mul_m4_v3(ptr noundef nonnull %25, ptr noundef nonnull %26) #13
  call void @mul_mat3_m4_v3(ptr noundef nonnull %25, ptr noundef nonnull %27) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %28, i8 0, i64 12, i1 false)
  %608 = call fastcc zeroext i8 @snapVertex(ptr noundef %2, ptr noundef nonnull %28, ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %26, ptr noundef nonnull %27, ptr noundef %11, ptr noundef %12, ptr noundef null, ptr noundef %14, ptr noundef %15), !range !149
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #13
  br label %609

609:                                              ; preds = %585, %592
  %610 = phi i8 [ %608, %592 ], [ 0, %585 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %25) #13
  br label %693

611:                                              ; preds = %16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %19) #13
  %612 = tail call ptr @BKE_object_movieclip_get(ptr noundef %0, ptr noundef %3, i8 noundef zeroext 0) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #13
  %613 = icmp eq ptr %612, null
  br i1 %613, label %691, label %614

614:                                              ; preds = %611
  %615 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 55
  %616 = load i16, ptr %615, align 8, !tbaa !153
  %617 = and i16 %616, 2840
  %618 = icmp eq i16 %617, 0
  br i1 %618, label %619, label %691

619:                                              ; preds = %614
  %620 = getelementptr inbounds %struct.MovieClip, ptr %612, i64 0, i32 11
  call void @BKE_tracking_get_camera_object_matrix(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %17) #13
  %621 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %18, ptr noundef nonnull %17) #13
  %622 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %19, ptr noundef %4) #13
  %623 = icmp eq i16 %1, 1
  br i1 %623, label %624, label %691

624:                                              ; preds = %619
  %625 = getelementptr inbounds %struct.MovieClip, ptr %612, i64 0, i32 11, i32 8
  %626 = load ptr, ptr %625, align 8, !tbaa !51
  %627 = icmp eq ptr %626, null
  br i1 %627, label %691, label %628

628:                                              ; preds = %624
  %629 = getelementptr inbounds float, ptr %8, i64 1
  %630 = getelementptr inbounds float, ptr %20, i64 1
  %631 = getelementptr inbounds float, ptr %8, i64 2
  %632 = getelementptr inbounds float, ptr %20, i64 2
  %633 = getelementptr inbounds float, ptr %9, i64 1
  %634 = getelementptr inbounds float, ptr %21, i64 1
  %635 = getelementptr inbounds float, ptr %9, i64 2
  %636 = getelementptr inbounds float, ptr %21, i64 2
  %637 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %638 = getelementptr inbounds float, ptr %24, i64 1
  %639 = getelementptr inbounds float, ptr %24, i64 2
  br label %640

640:                                              ; preds = %628, %687
  %641 = phi ptr [ %626, %628 ], [ %689, %687 ]
  %642 = phi i8 [ 0, %628 ], [ %688, %687 ]
  %643 = call ptr @BKE_tracking_object_get_tracks(ptr noundef nonnull %620, ptr noundef nonnull %641) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %22) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %23) #13
  %644 = load float, ptr %8, align 4, !tbaa !57
  store float %644, ptr %20, align 4, !tbaa !57
  %645 = load float, ptr %629, align 4, !tbaa !57
  store float %645, ptr %630, align 4, !tbaa !57
  %646 = load float, ptr %631, align 4, !tbaa !57
  store float %646, ptr %632, align 4, !tbaa !57
  %647 = load float, ptr %9, align 4, !tbaa !57
  store float %647, ptr %21, align 4, !tbaa !57
  %648 = load float, ptr %633, align 4, !tbaa !57
  store float %648, ptr %634, align 4, !tbaa !57
  %649 = load float, ptr %635, align 4, !tbaa !57
  store float %649, ptr %636, align 4, !tbaa !57
  %650 = getelementptr inbounds %struct.MovieTrackingObject, ptr %641, i64 0, i32 3
  %651 = load i32, ptr %650, align 8, !tbaa !279
  %652 = and i32 %651, 1
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %654, label %657

654:                                              ; preds = %640
  %655 = load i32, ptr %637, align 8, !tbaa !282
  call void @BKE_tracking_camera_get_reconstructed_interpolate(ptr noundef nonnull %620, ptr noundef nonnull %641, i32 noundef %655, ptr noundef nonnull %22) #13
  %656 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %23, ptr noundef nonnull %22) #13
  br label %657

657:                                              ; preds = %654, %640
  %658 = load ptr, ptr %643, align 8, !tbaa !51
  %659 = icmp eq ptr %658, null
  br i1 %659, label %687, label %660

660:                                              ; preds = %657, %683
  %661 = phi ptr [ %685, %683 ], [ %658, %657 ]
  %662 = phi i8 [ %684, %683 ], [ %642, %657 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #13
  %663 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %661, i64 0, i32 13
  %664 = load i32, ptr %663, align 8, !tbaa !283
  %665 = and i32 %664, 2
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %683, label %667

667:                                              ; preds = %660
  %668 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %661, i64 0, i32 11
  %669 = load float, ptr %668, align 4, !tbaa !57
  store float %669, ptr %24, align 4, !tbaa !57
  %670 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %661, i64 0, i32 11, i64 1
  %671 = load float, ptr %670, align 4, !tbaa !57
  store float %671, ptr %638, align 4, !tbaa !57
  %672 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %661, i64 0, i32 11, i64 2
  %673 = load float, ptr %672, align 4, !tbaa !57
  store float %673, ptr %639, align 4, !tbaa !57
  %674 = load i32, ptr %650, align 8, !tbaa !279
  %675 = and i32 %674, 1
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %677, label %678

677:                                              ; preds = %667
  call void @mul_m4_v3(ptr noundef nonnull %23, ptr noundef nonnull %24) #13
  br label %678

678:                                              ; preds = %667, %677
  %679 = phi ptr [ %19, %677 ], [ %18, %667 ]
  %680 = phi ptr [ %4, %677 ], [ %17, %667 ]
  call void @mul_m4_v3(ptr noundef nonnull %679, ptr noundef nonnull %20) #13
  call void @mul_mat3_m4_v3(ptr noundef nonnull %679, ptr noundef nonnull %21) #13
  %681 = call fastcc zeroext i8 @snapVertex(ptr noundef %2, ptr noundef nonnull %24, ptr noundef null, ptr noundef %680, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef %11, ptr noundef %12, ptr noundef null, ptr noundef %14, ptr noundef %15), !range !149
  %682 = or i8 %681, %662
  br label %683

683:                                              ; preds = %678, %660
  %684 = phi i8 [ %682, %678 ], [ %662, %660 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #13
  %685 = load ptr, ptr %661, align 8, !tbaa !51
  %686 = icmp eq ptr %685, null
  br i1 %686, label %687, label %660, !llvm.loop !285

687:                                              ; preds = %683, %657
  %688 = phi i8 [ %642, %657 ], [ %684, %683 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %22) #13
  %689 = load ptr, ptr %641, align 8, !tbaa !51
  %690 = icmp eq ptr %689, null
  br i1 %690, label %691, label %640, !llvm.loop !286

691:                                              ; preds = %687, %624, %611, %614, %619
  %692 = phi i8 [ 0, %611 ], [ 0, %614 ], [ 0, %619 ], [ 0, %624 ], [ %688, %687 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %17) #13
  br label %693

693:                                              ; preds = %16, %438, %609, %691, %583, %345
  %694 = phi i8 [ %346, %345 ], [ %439, %438 ], [ %584, %583 ], [ %610, %609 ], [ %692, %691 ], [ 0, %16 ]
  %695 = icmp ne i8 %694, 0
  %696 = icmp ne ptr %6, null
  %697 = and i1 %696, %695
  br i1 %697, label %698, label %699

698:                                              ; preds = %693
  store ptr %3, ptr %6, align 8, !tbaa !51
  call void @copy_m4_m4(ptr noundef %7, ptr noundef %4) #13
  br label %699

699:                                              ; preds = %698, %693
  ret i8 %694
}

declare ptr @object_duplilist(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @free_object_duplilist(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #3

declare ptr @editbmesh_get_derived_cage(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @transpose_m3(ptr noundef) local_unnamed_addr #3

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_boundbox_ray_hit_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @bvhtree_from_mesh_faces(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BLI_bvhtree_find_nearest(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @free_bvhtree_from_mesh(ptr noundef) local_unnamed_addr #3

declare i32 @BLI_bvhtree_ray_cast(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @BM_vert_at_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @snapVertex(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr nocapture noundef readonly %8, ptr nocapture noundef writeonly %9, ptr noundef %10, ptr nocapture noundef %11, ptr nocapture noundef %12) unnamed_addr #1 {
  %14 = alloca [3 x float], align 4
  %15 = alloca [2 x float], align 4
  %16 = load float, ptr %1, align 4, !tbaa !57
  %17 = load float, ptr %6, align 4, !tbaa !57
  %18 = fsub float %16, %17
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !57
  %21 = getelementptr inbounds float, ptr %6, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !57
  %23 = fsub float %20, %22
  %24 = getelementptr inbounds float, ptr %1, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !57
  %26 = getelementptr inbounds float, ptr %6, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !57
  %28 = fsub float %25, %27
  %29 = load float, ptr %7, align 4, !tbaa !57
  %30 = getelementptr inbounds float, ptr %7, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !57
  %32 = fmul float %23, %31
  %33 = tail call float @llvm.fmuladd.f32(float %29, float %18, float %32)
  %34 = getelementptr inbounds float, ptr %7, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !57
  %36 = tail call float @llvm.fmuladd.f32(float %35, float %28, float %33)
  %37 = fcmp ogt float %36, 0.000000e+00
  br i1 %37, label %38, label %120

38:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #13
  store float %16, ptr %14, align 4, !tbaa !57
  %39 = getelementptr inbounds float, ptr %14, i64 1
  store float %20, ptr %39, align 4, !tbaa !57
  %40 = getelementptr inbounds float, ptr %14, i64 2
  store float %25, ptr %40, align 4, !tbaa !57
  call void @mul_m4_v3(ptr noundef %3, ptr noundef nonnull %14) #13
  %41 = load float, ptr %5, align 4, !tbaa !57
  %42 = load float, ptr %14, align 4, !tbaa !57
  %43 = fsub float %41, %42
  %44 = getelementptr inbounds float, ptr %5, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !57
  %46 = load float, ptr %39, align 4, !tbaa !57
  %47 = fsub float %45, %46
  %48 = getelementptr inbounds float, ptr %5, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !57
  %50 = load float, ptr %40, align 4, !tbaa !57
  %51 = fsub float %49, %50
  %52 = fmul float %47, %47
  %53 = call float @llvm.fmuladd.f32(float %43, float %43, float %52)
  %54 = call float @llvm.fmuladd.f32(float %51, float %51, float %53)
  %55 = call float @sqrtf(float noundef %54) #13
  %56 = call i32 @ED_view3d_project_float_global(ptr noundef %0, ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef 0) #13
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %38
  %59 = load float, ptr %15, align 4, !tbaa !57
  %60 = load float, ptr %8, align 4, !tbaa !57
  %61 = fsub float %59, %60
  %62 = getelementptr inbounds float, ptr %15, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !57
  %64 = getelementptr inbounds float, ptr %8, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !57
  %66 = fsub float %63, %65
  %67 = call float @llvm.fabs.f32(float %61)
  %68 = call float @llvm.fabs.f32(float %66)
  %69 = fadd float %67, %68
  br label %70

70:                                               ; preds = %38, %58
  %71 = phi float [ %69, %58 ], [ 1.000000e+03, %38 ]
  %72 = load float, ptr %11, align 4, !tbaa !57
  %73 = fcmp ugt float %71, %72
  br i1 %73, label %118, label %74

74:                                               ; preds = %70
  %75 = load float, ptr %12, align 4, !tbaa !57
  %76 = fcmp olt float %55, %75
  br i1 %76, label %77, label %118

77:                                               ; preds = %74
  store float %55, ptr %12, align 4, !tbaa !57
  %78 = load float, ptr %14, align 4, !tbaa !57
  store float %78, ptr %9, align 4, !tbaa !57
  %79 = load float, ptr %39, align 4, !tbaa !57
  %80 = getelementptr inbounds float, ptr %9, i64 1
  store float %79, ptr %80, align 4, !tbaa !57
  %81 = load float, ptr %40, align 4, !tbaa !57
  %82 = getelementptr inbounds float, ptr %9, i64 2
  store float %81, ptr %82, align 4, !tbaa !57
  %83 = icmp eq ptr %10, null
  br i1 %83, label %117, label %84

84:                                               ; preds = %77
  %85 = load i16, ptr %2, align 2, !tbaa !287
  %86 = sitofp i16 %85 to float
  %87 = fmul float %86, 0x3F00002000000000
  store float %87, ptr %10, align 4, !tbaa !57
  %88 = getelementptr inbounds i16, ptr %2, i64 1
  %89 = load i16, ptr %88, align 2, !tbaa !287
  %90 = sitofp i16 %89 to float
  %91 = fmul float %90, 0x3F00002000000000
  %92 = getelementptr inbounds float, ptr %10, i64 1
  store float %91, ptr %92, align 4, !tbaa !57
  %93 = getelementptr inbounds i16, ptr %2, i64 2
  %94 = load i16, ptr %93, align 2, !tbaa !287
  %95 = sitofp i16 %94 to float
  %96 = fmul float %95, 0x3F00002000000000
  %97 = getelementptr inbounds float, ptr %10, i64 2
  store float %96, ptr %97, align 4, !tbaa !57
  call void @mul_m3_v3(ptr noundef %4, ptr noundef nonnull %10) #13
  %98 = load float, ptr %10, align 4, !tbaa !57
  %99 = load float, ptr %92, align 4, !tbaa !57
  %100 = fmul float %99, %99
  %101 = call float @llvm.fmuladd.f32(float %98, float %98, float %100)
  %102 = load float, ptr %97, align 4, !tbaa !57
  %103 = call float @llvm.fmuladd.f32(float %102, float %102, float %101)
  %104 = fcmp ogt float %103, 0x38AA95A5C0000000
  br i1 %104, label %105, label %114

105:                                              ; preds = %84
  %106 = call float @sqrtf(float noundef %103) #13
  %107 = fdiv float 1.000000e+00, %106
  %108 = load float, ptr %10, align 4, !tbaa !57
  %109 = fmul float %108, %107
  store float %109, ptr %10, align 4, !tbaa !57
  %110 = load float, ptr %92, align 4, !tbaa !57
  %111 = fmul float %107, %110
  store float %111, ptr %92, align 4, !tbaa !57
  %112 = load float, ptr %97, align 4, !tbaa !57
  %113 = fmul float %107, %112
  br label %115

114:                                              ; preds = %84
  store float 0.000000e+00, ptr %10, align 4, !tbaa !57
  store float 0.000000e+00, ptr %92, align 4, !tbaa !57
  br label %115

115:                                              ; preds = %105, %114
  %116 = phi float [ 0.000000e+00, %114 ], [ %113, %105 ]
  store float %116, ptr %97, align 4, !tbaa !57
  br label %117

117:                                              ; preds = %115, %77
  store float %71, ptr %11, align 4, !tbaa !57
  br label %118

118:                                              ; preds = %117, %74, %70
  %119 = phi i8 [ 1, %117 ], [ 0, %74 ], [ 0, %70 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #13
  br label %120

120:                                              ; preds = %118, %13
  %121 = phi i8 [ %119, %118 ], [ 0, %13 ]
  ret i8 %121
}

declare ptr @BM_edge_at_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @snapEdge(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr noundef %6, ptr nocapture noundef readonly %7, ptr noundef %8, ptr nocapture noundef readonly %9, ptr nocapture noundef readonly %10, ptr nocapture noundef writeonly %11, ptr noundef %12, ptr nocapture noundef %13, ptr nocapture noundef %14) unnamed_addr #1 {
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [2 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %16, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #13
  %23 = load float, ptr %9, align 4, !tbaa !57
  store float %23, ptr %17, align 4, !tbaa !57
  %24 = getelementptr inbounds float, ptr %9, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !57
  %26 = getelementptr inbounds float, ptr %17, i64 1
  store float %25, ptr %26, align 4, !tbaa !57
  %27 = getelementptr inbounds float, ptr %9, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !57
  %29 = getelementptr inbounds float, ptr %17, i64 2
  store float %28, ptr %29, align 4, !tbaa !57
  %30 = fmul float %23, 2.000000e+03
  store float %30, ptr %17, align 4, !tbaa !57
  %31 = fmul float %25, 2.000000e+03
  store float %31, ptr %26, align 4, !tbaa !57
  %32 = fmul float %28, 2.000000e+03
  store float %32, ptr %29, align 4, !tbaa !57
  %33 = load float, ptr %8, align 4, !tbaa !57
  %34 = fadd float %30, %33
  store float %34, ptr %17, align 4, !tbaa !57
  %35 = getelementptr inbounds float, ptr %8, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !57
  %37 = fadd float %31, %36
  store float %37, ptr %26, align 4, !tbaa !57
  %38 = getelementptr inbounds float, ptr %8, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !57
  %40 = fadd float %32, %39
  store float %40, ptr %29, align 4, !tbaa !57
  %41 = call i32 @isect_line_line_v3(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %18) #13
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %218, label %43

43:                                               ; preds = %15
  %44 = load float, ptr %16, align 4, !tbaa !57
  %45 = load float, ptr %8, align 4, !tbaa !57
  %46 = fsub float %44, %45
  store float %46, ptr %18, align 4, !tbaa !57
  %47 = getelementptr inbounds float, ptr %16, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !57
  %49 = load float, ptr %35, align 4, !tbaa !57
  %50 = fsub float %48, %49
  %51 = getelementptr inbounds float, ptr %18, i64 1
  store float %50, ptr %51, align 4, !tbaa !57
  %52 = getelementptr inbounds float, ptr %16, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !57
  %54 = load float, ptr %38, align 4, !tbaa !57
  %55 = fsub float %53, %54
  %56 = getelementptr inbounds float, ptr %18, i64 2
  store float %55, ptr %56, align 4, !tbaa !57
  %57 = load float, ptr %1, align 4, !tbaa !57
  %58 = load float, ptr %3, align 4, !tbaa !57
  %59 = fsub float %57, %58
  %60 = getelementptr inbounds float, ptr %1, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !57
  %62 = getelementptr inbounds float, ptr %3, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !57
  %64 = fsub float %61, %63
  %65 = getelementptr inbounds float, ptr %1, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !57
  %67 = getelementptr inbounds float, ptr %3, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !57
  %69 = fsub float %66, %68
  %70 = fsub float %44, %58
  %71 = fsub float %48, %63
  %72 = fsub float %53, %68
  %73 = fmul float %71, %64
  %74 = call float @llvm.fmuladd.f32(float %70, float %59, float %73)
  %75 = call float @llvm.fmuladd.f32(float %72, float %69, float %74)
  %76 = fmul float %64, %64
  %77 = call float @llvm.fmuladd.f32(float %59, float %59, float %76)
  %78 = call float @llvm.fmuladd.f32(float %69, float %69, float %77)
  %79 = fdiv float %75, %78
  %80 = fcmp ogt float %79, 1.000000e+00
  br i1 %80, label %83, label %81

81:                                               ; preds = %43
  %82 = fcmp olt float %79, 0.000000e+00
  br i1 %82, label %83, label %87

83:                                               ; preds = %81, %43
  %84 = phi float [ %57, %43 ], [ %58, %81 ]
  %85 = phi float [ %61, %43 ], [ %63, %81 ]
  %86 = phi float [ %66, %43 ], [ %68, %81 ]
  store float %84, ptr %16, align 4, !tbaa !57
  store float %85, ptr %47, align 4, !tbaa !57
  store float %86, ptr %52, align 4, !tbaa !57
  br label %87

87:                                               ; preds = %83, %81
  %88 = load float, ptr %9, align 4, !tbaa !57
  %89 = load float, ptr %24, align 4, !tbaa !57
  %90 = fmul float %50, %89
  %91 = call float @llvm.fmuladd.f32(float %88, float %46, float %90)
  %92 = load float, ptr %27, align 4, !tbaa !57
  %93 = call float @llvm.fmuladd.f32(float %92, float %55, float %91)
  %94 = fcmp ogt float %93, 0.000000e+00
  br i1 %94, label %95, label %218

95:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #13
  %96 = load float, ptr %16, align 4, !tbaa !57
  store float %96, ptr %19, align 4, !tbaa !57
  %97 = load float, ptr %47, align 4, !tbaa !57
  %98 = getelementptr inbounds float, ptr %19, i64 1
  store float %97, ptr %98, align 4, !tbaa !57
  %99 = load float, ptr %52, align 4, !tbaa !57
  %100 = getelementptr inbounds float, ptr %19, i64 2
  store float %99, ptr %100, align 4, !tbaa !57
  call void @mul_m4_v3(ptr noundef %5, ptr noundef nonnull %19) #13
  %101 = load float, ptr %7, align 4, !tbaa !57
  %102 = load float, ptr %19, align 4, !tbaa !57
  %103 = fsub float %101, %102
  %104 = getelementptr inbounds float, ptr %7, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !57
  %106 = load float, ptr %98, align 4, !tbaa !57
  %107 = fsub float %105, %106
  %108 = getelementptr inbounds float, ptr %7, i64 2
  %109 = load float, ptr %108, align 4, !tbaa !57
  %110 = load float, ptr %100, align 4, !tbaa !57
  %111 = fsub float %109, %110
  %112 = fmul float %107, %107
  %113 = call float @llvm.fmuladd.f32(float %103, float %103, float %112)
  %114 = call float @llvm.fmuladd.f32(float %111, float %111, float %113)
  %115 = call float @sqrtf(float noundef %114) #13
  %116 = call i32 @ED_view3d_project_float_global(ptr noundef %0, ptr noundef nonnull %19, ptr noundef nonnull %20, i32 noundef 0) #13
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %95
  %119 = load float, ptr %20, align 4, !tbaa !57
  %120 = load float, ptr %10, align 4, !tbaa !57
  %121 = fsub float %119, %120
  %122 = getelementptr inbounds float, ptr %20, i64 1
  %123 = load float, ptr %122, align 4, !tbaa !57
  %124 = getelementptr inbounds float, ptr %10, i64 1
  %125 = load float, ptr %124, align 4, !tbaa !57
  %126 = fsub float %123, %125
  %127 = call float @llvm.fabs.f32(float %121)
  %128 = call float @llvm.fabs.f32(float %126)
  %129 = fadd float %127, %128
  br label %130

130:                                              ; preds = %95, %118
  %131 = phi float [ %129, %118 ], [ 1.000000e+03, %95 ]
  %132 = load float, ptr %13, align 4, !tbaa !57
  %133 = fcmp ugt float %131, %132
  br i1 %133, label %216, label %134

134:                                              ; preds = %130
  %135 = load float, ptr %14, align 4, !tbaa !57
  %136 = fmul float %135, 0x3FF00418A0000000
  %137 = fcmp olt float %115, %136
  br i1 %137, label %138, label %216

138:                                              ; preds = %134
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #13
  store float %115, ptr %14, align 4, !tbaa !57
  %139 = icmp eq ptr %12, null
  br i1 %139, label %210, label %140

140:                                              ; preds = %138
  %141 = load float, ptr %65, align 4, !tbaa !57
  %142 = load float, ptr %67, align 4, !tbaa !57
  %143 = fsub float %141, %142
  %144 = load float, ptr %1, align 4, !tbaa !57
  %145 = load float, ptr %3, align 4, !tbaa !57
  %146 = fsub float %144, %145
  %147 = load float, ptr %60, align 4, !tbaa !57
  %148 = load float, ptr %62, align 4, !tbaa !57
  %149 = fsub float %147, %148
  %150 = fmul float %149, %149
  %151 = call float @llvm.fmuladd.f32(float %146, float %146, float %150)
  %152 = call float @llvm.fmuladd.f32(float %143, float %143, float %151)
  %153 = load float, ptr %52, align 4, !tbaa !57
  %154 = fsub float %153, %142
  %155 = load float, ptr %16, align 4, !tbaa !57
  %156 = fsub float %155, %145
  %157 = load float, ptr %47, align 4, !tbaa !57
  %158 = fsub float %157, %148
  %159 = fmul float %149, %158
  %160 = call float @llvm.fmuladd.f32(float %156, float %146, float %159)
  %161 = call float @llvm.fmuladd.f32(float %154, float %143, float %160)
  %162 = fdiv float %161, %152
  %163 = load i16, ptr %2, align 2, !tbaa !287
  %164 = sitofp i16 %163 to float
  %165 = fmul float %164, 0x3F00002000000000
  store float %165, ptr %21, align 4, !tbaa !57
  %166 = getelementptr inbounds i16, ptr %2, i64 1
  %167 = load i16, ptr %166, align 2, !tbaa !287
  %168 = sitofp i16 %167 to float
  %169 = fmul float %168, 0x3F00002000000000
  %170 = getelementptr inbounds float, ptr %21, i64 1
  store float %169, ptr %170, align 4, !tbaa !57
  %171 = getelementptr inbounds i16, ptr %2, i64 2
  %172 = load i16, ptr %171, align 2, !tbaa !287
  %173 = sitofp i16 %172 to float
  %174 = fmul float %173, 0x3F00002000000000
  %175 = getelementptr inbounds float, ptr %21, i64 2
  store float %174, ptr %175, align 4, !tbaa !57
  %176 = load i16, ptr %4, align 2, !tbaa !287
  %177 = sitofp i16 %176 to float
  %178 = fmul float %177, 0x3F00002000000000
  store float %178, ptr %22, align 4, !tbaa !57
  %179 = getelementptr inbounds i16, ptr %4, i64 1
  %180 = load i16, ptr %179, align 2, !tbaa !287
  %181 = sitofp i16 %180 to float
  %182 = fmul float %181, 0x3F00002000000000
  %183 = getelementptr inbounds float, ptr %22, i64 1
  store float %182, ptr %183, align 4, !tbaa !57
  %184 = getelementptr inbounds i16, ptr %4, i64 2
  %185 = load i16, ptr %184, align 2, !tbaa !287
  %186 = sitofp i16 %185 to float
  %187 = fmul float %186, 0x3F00002000000000
  %188 = getelementptr inbounds float, ptr %22, i64 2
  store float %187, ptr %188, align 4, !tbaa !57
  call void @interp_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %22, ptr noundef nonnull %21, float noundef %162) #13
  call void @mul_m3_v3(ptr noundef %6, ptr noundef nonnull %12) #13
  %189 = load float, ptr %12, align 4, !tbaa !57
  %190 = getelementptr inbounds float, ptr %12, i64 1
  %191 = load float, ptr %190, align 4, !tbaa !57
  %192 = fmul float %191, %191
  %193 = call float @llvm.fmuladd.f32(float %189, float %189, float %192)
  %194 = getelementptr inbounds float, ptr %12, i64 2
  %195 = load float, ptr %194, align 4, !tbaa !57
  %196 = call float @llvm.fmuladd.f32(float %195, float %195, float %193)
  %197 = fcmp ogt float %196, 0x38AA95A5C0000000
  br i1 %197, label %198, label %207

198:                                              ; preds = %140
  %199 = call float @sqrtf(float noundef %196) #13
  %200 = fdiv float 1.000000e+00, %199
  %201 = load float, ptr %12, align 4, !tbaa !57
  %202 = fmul float %201, %200
  store float %202, ptr %12, align 4, !tbaa !57
  %203 = load float, ptr %190, align 4, !tbaa !57
  %204 = fmul float %200, %203
  store float %204, ptr %190, align 4, !tbaa !57
  %205 = load float, ptr %194, align 4, !tbaa !57
  %206 = fmul float %200, %205
  br label %208

207:                                              ; preds = %140
  store float 0.000000e+00, ptr %12, align 4, !tbaa !57
  store float 0.000000e+00, ptr %190, align 4, !tbaa !57
  br label %208

208:                                              ; preds = %198, %207
  %209 = phi float [ 0.000000e+00, %207 ], [ %206, %198 ]
  store float %209, ptr %194, align 4, !tbaa !57
  br label %210

210:                                              ; preds = %208, %138
  %211 = load float, ptr %19, align 4, !tbaa !57
  store float %211, ptr %11, align 4, !tbaa !57
  %212 = load float, ptr %98, align 4, !tbaa !57
  %213 = getelementptr inbounds float, ptr %11, i64 1
  store float %212, ptr %213, align 4, !tbaa !57
  %214 = load float, ptr %100, align 4, !tbaa !57
  %215 = getelementptr inbounds float, ptr %11, i64 2
  store float %214, ptr %215, align 4, !tbaa !57
  store float %131, ptr %13, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #13
  br label %216

216:                                              ; preds = %210, %134, %130
  %217 = phi i8 [ 1, %210 ], [ 0, %134 ], [ 0, %130 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #13
  br label %218

218:                                              ; preds = %87, %216, %15
  %219 = phi i8 [ 0, %15 ], [ %217, %216 ], [ 0, %87 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #13
  ret i8 %219
}

declare i32 @isect_line_line_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare ptr @BKE_object_movieclip_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BKE_tracking_get_camera_object_matrix(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_tracking_object_get_tracks(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_tracking_camera_get_reconstructed_interpolate(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @ED_view3d_win_to_ray(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @peelDerivedMesh(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef %5) unnamed_addr #1 {
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca float, align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 23
  %17 = load ptr, ptr %16, align 8, !tbaa !213
  %18 = tail call i32 %17(ptr noundef %1) #13
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 25
  %20 = load ptr, ptr %19, align 8, !tbaa !288
  %21 = tail call i32 %20(ptr noundef %1) #13
  %22 = icmp sgt i32 %18, 0
  br i1 %22, label %23, label %261

23:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  %24 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %7, ptr noundef %2) #13
  call void @copy_m3_m4(ptr noundef nonnull %8, ptr noundef nonnull %7) #13
  call void @transpose_m3(ptr noundef nonnull %8) #13
  %25 = load float, ptr %3, align 4, !tbaa !57
  store float %25, ptr %9, align 4, !tbaa !57
  %26 = getelementptr inbounds float, ptr %3, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !57
  %28 = getelementptr inbounds float, ptr %9, i64 1
  store float %27, ptr %28, align 4, !tbaa !57
  %29 = getelementptr inbounds float, ptr %3, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !57
  %31 = getelementptr inbounds float, ptr %9, i64 2
  store float %30, ptr %31, align 4, !tbaa !57
  %32 = load float, ptr %4, align 4, !tbaa !57
  store float %32, ptr %10, align 4, !tbaa !57
  %33 = getelementptr inbounds float, ptr %4, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !57
  %35 = getelementptr inbounds float, ptr %10, i64 1
  store float %34, ptr %35, align 4, !tbaa !57
  %36 = getelementptr inbounds float, ptr %4, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !57
  %38 = getelementptr inbounds float, ptr %10, i64 2
  store float %37, ptr %38, align 4, !tbaa !57
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef nonnull %9) #13
  call void @mul_mat3_m4_v3(ptr noundef nonnull %7, ptr noundef nonnull %10) #13
  %39 = icmp sgt i32 %21, 16
  br i1 %39, label %40, label %44

40:                                               ; preds = %23
  %41 = call ptr @BKE_object_boundbox_get(ptr noundef %0) #13
  %42 = call zeroext i8 @BKE_boundbox_ray_hit_check(ptr noundef %41, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef null) #13
  %43 = icmp eq i8 %42, 1
  br i1 %43, label %44, label %260

44:                                               ; preds = %23, %40
  %45 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 31
  %46 = load ptr, ptr %45, align 8, !tbaa !225
  %47 = call ptr %46(ptr noundef %1) #13
  %48 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 33
  %49 = load ptr, ptr %48, align 8, !tbaa !289
  %50 = call ptr %49(ptr noundef %1) #13
  %51 = icmp sgt i32 %21, 0
  br i1 %51, label %52, label %260

52:                                               ; preds = %44
  %53 = getelementptr inbounds float, ptr %12, i64 1
  %54 = getelementptr inbounds float, ptr %12, i64 2
  %55 = getelementptr inbounds float, ptr %13, i64 1
  %56 = getelementptr inbounds float, ptr %13, i64 2
  %57 = getelementptr inbounds float, ptr %14, i64 1
  %58 = getelementptr inbounds float, ptr %14, i64 2
  %59 = getelementptr inbounds float, ptr %15, i64 1
  %60 = getelementptr inbounds float, ptr %15, i64 2
  %61 = zext nneg i32 %21 to i64
  br label %62

62:                                               ; preds = %52, %257
  %63 = phi i64 [ 0, %52 ], [ %258, %257 ]
  %64 = getelementptr inbounds %struct.MFace, ptr %50, i64 %63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  %65 = load i32, ptr %64, align 4, !tbaa !290
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.MVert, ptr %47, i64 %66
  %68 = getelementptr inbounds %struct.MFace, ptr %50, i64 %63, i32 1
  %69 = load i32, ptr %68, align 4, !tbaa !292
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.MVert, ptr %47, i64 %70
  %72 = getelementptr inbounds %struct.MFace, ptr %50, i64 %63, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !293
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.MVert, ptr %47, i64 %74
  %76 = call zeroext i8 @isect_ray_tri_threshold_v3(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %67, ptr noundef %71, ptr noundef %75, ptr noundef nonnull %11, ptr noundef null, float noundef 0x3F50624DE0000000) #13
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %160, label %78

78:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #13
  %79 = load float, ptr %10, align 4, !tbaa !57
  %80 = load float, ptr %35, align 4, !tbaa !57
  %81 = load float, ptr %38, align 4, !tbaa !57
  %82 = load float, ptr %11, align 4, !tbaa !57
  %83 = fmul float %79, %82
  %84 = fmul float %80, %82
  %85 = fmul float %81, %82
  %86 = load float, ptr %9, align 4, !tbaa !57
  %87 = fadd float %83, %86
  %88 = load float, ptr %28, align 4, !tbaa !57
  %89 = fadd float %84, %88
  %90 = load float, ptr %31, align 4, !tbaa !57
  %91 = fadd float %85, %90
  store float %87, ptr %12, align 4, !tbaa !57
  store float %89, ptr %53, align 4, !tbaa !57
  store float %91, ptr %54, align 4, !tbaa !57
  %92 = getelementptr inbounds %struct.MFace, ptr %50, i64 %63, i32 3
  %93 = load i32, ptr %92, align 4, !tbaa !294
  %94 = icmp eq i32 %93, 0
  %95 = load i32, ptr %64, align 4, !tbaa !290
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.MVert, ptr %47, i64 %96
  %98 = load i32, ptr %68, align 4, !tbaa !292
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.MVert, ptr %47, i64 %99
  %101 = load i32, ptr %72, align 4, !tbaa !293
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.MVert, ptr %47, i64 %102
  br i1 %94, label %108, label %104

104:                                              ; preds = %78
  %105 = zext i32 %93 to i64
  %106 = getelementptr inbounds %struct.MVert, ptr %47, i64 %105
  %107 = call float @normal_quad_v3(ptr noundef nonnull %13, ptr noundef %97, ptr noundef %100, ptr noundef %103, ptr noundef nonnull %106) #13
  br label %110

108:                                              ; preds = %78
  %109 = call float @normal_tri_v3(ptr noundef nonnull %13, ptr noundef %97, ptr noundef %100, ptr noundef %103) #13
  br label %110

110:                                              ; preds = %108, %104
  call void @mul_m4_v3(ptr noundef %2, ptr noundef nonnull %12) #13
  %111 = load float, ptr %3, align 4, !tbaa !57
  %112 = load float, ptr %12, align 4, !tbaa !57
  %113 = fsub float %111, %112
  %114 = load float, ptr %26, align 4, !tbaa !57
  %115 = load float, ptr %53, align 4, !tbaa !57
  %116 = fsub float %114, %115
  %117 = load float, ptr %29, align 4, !tbaa !57
  %118 = load float, ptr %54, align 4, !tbaa !57
  %119 = fsub float %117, %118
  %120 = fmul float %116, %116
  %121 = call float @llvm.fmuladd.f32(float %113, float %113, float %120)
  %122 = call float @llvm.fmuladd.f32(float %119, float %119, float %121)
  %123 = call float @sqrtf(float noundef %122) #13
  call void @mul_m3_v3(ptr noundef nonnull %8, ptr noundef nonnull %13) #13
  %124 = load float, ptr %13, align 4, !tbaa !57
  %125 = load float, ptr %55, align 4, !tbaa !57
  %126 = fmul float %125, %125
  %127 = call float @llvm.fmuladd.f32(float %124, float %124, float %126)
  %128 = load float, ptr %56, align 4, !tbaa !57
  %129 = call float @llvm.fmuladd.f32(float %128, float %128, float %127)
  %130 = fcmp ogt float %129, 0x38AA95A5C0000000
  br i1 %130, label %131, label %140

131:                                              ; preds = %110
  %132 = call float @sqrtf(float noundef %129) #13
  %133 = fdiv float 1.000000e+00, %132
  %134 = load float, ptr %13, align 4, !tbaa !57
  %135 = fmul float %134, %133
  store float %135, ptr %13, align 4, !tbaa !57
  %136 = load float, ptr %55, align 4, !tbaa !57
  %137 = fmul float %133, %136
  store float %137, ptr %55, align 4, !tbaa !57
  %138 = load float, ptr %56, align 4, !tbaa !57
  %139 = fmul float %133, %138
  br label %141

140:                                              ; preds = %110
  store float 0.000000e+00, ptr %13, align 4, !tbaa !57
  store float 0.000000e+00, ptr %55, align 4, !tbaa !57
  br label %141

141:                                              ; preds = %131, %140
  %142 = phi float [ 0.000000e+00, %140 ], [ %139, %131 ]
  store float %142, ptr %56, align 4, !tbaa !57
  %143 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %144 = call ptr %143(i64 noundef 64, ptr noundef nonnull @.str.8) #13
  %145 = getelementptr inbounds %struct.DepthPeel, ptr %144, i64 0, i32 2
  store float %123, ptr %145, align 8, !tbaa !166
  %146 = getelementptr inbounds %struct.DepthPeel, ptr %144, i64 0, i32 5
  store ptr %0, ptr %146, align 8, !tbaa !192
  %147 = getelementptr inbounds %struct.DepthPeel, ptr %144, i64 0, i32 3
  %148 = load float, ptr %12, align 4, !tbaa !57
  store float %148, ptr %147, align 4, !tbaa !57
  %149 = load float, ptr %53, align 4, !tbaa !57
  %150 = getelementptr inbounds %struct.DepthPeel, ptr %144, i64 0, i32 3, i64 1
  store float %149, ptr %150, align 4, !tbaa !57
  %151 = load float, ptr %54, align 4, !tbaa !57
  %152 = getelementptr inbounds %struct.DepthPeel, ptr %144, i64 0, i32 3, i64 2
  store float %151, ptr %152, align 4, !tbaa !57
  %153 = getelementptr inbounds %struct.DepthPeel, ptr %144, i64 0, i32 4
  %154 = load float, ptr %13, align 4, !tbaa !57
  store float %154, ptr %153, align 4, !tbaa !57
  %155 = load float, ptr %55, align 4, !tbaa !57
  %156 = getelementptr inbounds %struct.DepthPeel, ptr %144, i64 0, i32 4, i64 1
  store float %155, ptr %156, align 4, !tbaa !57
  %157 = load float, ptr %56, align 4, !tbaa !57
  %158 = getelementptr inbounds %struct.DepthPeel, ptr %144, i64 0, i32 4, i64 2
  store float %157, ptr %158, align 4, !tbaa !57
  call void @BLI_addtail(ptr noundef %5, ptr noundef %144) #13
  %159 = getelementptr inbounds %struct.DepthPeel, ptr %144, i64 0, i32 6
  store i32 0, ptr %159, align 8, !tbaa !191
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #13
  br label %160

160:                                              ; preds = %141, %62
  %161 = getelementptr inbounds %struct.MFace, ptr %50, i64 %63, i32 3
  %162 = load i32, ptr %161, align 4, !tbaa !294
  %163 = icmp ne i32 %162, 0
  %164 = and i1 %77, %163
  br i1 %164, label %165, label %257

165:                                              ; preds = %160
  %166 = load i32, ptr %72, align 4, !tbaa !293
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.MVert, ptr %47, i64 %167
  %169 = zext i32 %162 to i64
  %170 = getelementptr inbounds %struct.MVert, ptr %47, i64 %169
  %171 = load i32, ptr %64, align 4, !tbaa !290
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.MVert, ptr %47, i64 %172
  %174 = call zeroext i8 @isect_ray_tri_threshold_v3(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %168, ptr noundef nonnull %170, ptr noundef %173, ptr noundef nonnull %11, ptr noundef null, float noundef 0x3F50624DE0000000) #13
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %257, label %176

176:                                              ; preds = %165
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #13
  %177 = load float, ptr %10, align 4, !tbaa !57
  %178 = load float, ptr %35, align 4, !tbaa !57
  %179 = load float, ptr %38, align 4, !tbaa !57
  %180 = load float, ptr %11, align 4, !tbaa !57
  %181 = fmul float %177, %180
  %182 = fmul float %178, %180
  %183 = fmul float %179, %180
  %184 = load float, ptr %9, align 4, !tbaa !57
  %185 = fadd float %181, %184
  %186 = load float, ptr %28, align 4, !tbaa !57
  %187 = fadd float %182, %186
  %188 = load float, ptr %31, align 4, !tbaa !57
  %189 = fadd float %183, %188
  store float %185, ptr %14, align 4, !tbaa !57
  store float %187, ptr %57, align 4, !tbaa !57
  store float %189, ptr %58, align 4, !tbaa !57
  %190 = load i32, ptr %161, align 4, !tbaa !294
  %191 = icmp eq i32 %190, 0
  %192 = load i32, ptr %64, align 4, !tbaa !290
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.MVert, ptr %47, i64 %193
  %195 = load i32, ptr %68, align 4, !tbaa !292
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.MVert, ptr %47, i64 %196
  %198 = load i32, ptr %72, align 4, !tbaa !293
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.MVert, ptr %47, i64 %199
  br i1 %191, label %205, label %201

201:                                              ; preds = %176
  %202 = zext i32 %190 to i64
  %203 = getelementptr inbounds %struct.MVert, ptr %47, i64 %202
  %204 = call float @normal_quad_v3(ptr noundef nonnull %15, ptr noundef %194, ptr noundef %197, ptr noundef %200, ptr noundef nonnull %203) #13
  br label %207

205:                                              ; preds = %176
  %206 = call float @normal_tri_v3(ptr noundef nonnull %15, ptr noundef %194, ptr noundef %197, ptr noundef %200) #13
  br label %207

207:                                              ; preds = %205, %201
  call void @mul_m4_v3(ptr noundef %2, ptr noundef nonnull %14) #13
  %208 = load float, ptr %3, align 4, !tbaa !57
  %209 = load float, ptr %14, align 4, !tbaa !57
  %210 = fsub float %208, %209
  %211 = load float, ptr %26, align 4, !tbaa !57
  %212 = load float, ptr %57, align 4, !tbaa !57
  %213 = fsub float %211, %212
  %214 = load float, ptr %29, align 4, !tbaa !57
  %215 = load float, ptr %58, align 4, !tbaa !57
  %216 = fsub float %214, %215
  %217 = fmul float %213, %213
  %218 = call float @llvm.fmuladd.f32(float %210, float %210, float %217)
  %219 = call float @llvm.fmuladd.f32(float %216, float %216, float %218)
  %220 = call float @sqrtf(float noundef %219) #13
  call void @mul_m3_v3(ptr noundef nonnull %8, ptr noundef nonnull %15) #13
  %221 = load float, ptr %15, align 4, !tbaa !57
  %222 = load float, ptr %59, align 4, !tbaa !57
  %223 = fmul float %222, %222
  %224 = call float @llvm.fmuladd.f32(float %221, float %221, float %223)
  %225 = load float, ptr %60, align 4, !tbaa !57
  %226 = call float @llvm.fmuladd.f32(float %225, float %225, float %224)
  %227 = fcmp ogt float %226, 0x38AA95A5C0000000
  br i1 %227, label %228, label %237

228:                                              ; preds = %207
  %229 = call float @sqrtf(float noundef %226) #13
  %230 = fdiv float 1.000000e+00, %229
  %231 = load float, ptr %15, align 4, !tbaa !57
  %232 = fmul float %231, %230
  store float %232, ptr %15, align 4, !tbaa !57
  %233 = load float, ptr %59, align 4, !tbaa !57
  %234 = fmul float %230, %233
  store float %234, ptr %59, align 4, !tbaa !57
  %235 = load float, ptr %60, align 4, !tbaa !57
  %236 = fmul float %230, %235
  br label %238

237:                                              ; preds = %207
  store float 0.000000e+00, ptr %15, align 4, !tbaa !57
  store float 0.000000e+00, ptr %59, align 4, !tbaa !57
  br label %238

238:                                              ; preds = %228, %237
  %239 = phi float [ 0.000000e+00, %237 ], [ %236, %228 ]
  store float %239, ptr %60, align 4, !tbaa !57
  %240 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %241 = call ptr %240(i64 noundef 64, ptr noundef nonnull @.str.8) #13
  %242 = getelementptr inbounds %struct.DepthPeel, ptr %241, i64 0, i32 2
  store float %220, ptr %242, align 8, !tbaa !166
  %243 = getelementptr inbounds %struct.DepthPeel, ptr %241, i64 0, i32 5
  store ptr %0, ptr %243, align 8, !tbaa !192
  %244 = getelementptr inbounds %struct.DepthPeel, ptr %241, i64 0, i32 3
  %245 = load float, ptr %14, align 4, !tbaa !57
  store float %245, ptr %244, align 4, !tbaa !57
  %246 = load float, ptr %57, align 4, !tbaa !57
  %247 = getelementptr inbounds %struct.DepthPeel, ptr %241, i64 0, i32 3, i64 1
  store float %246, ptr %247, align 4, !tbaa !57
  %248 = load float, ptr %58, align 4, !tbaa !57
  %249 = getelementptr inbounds %struct.DepthPeel, ptr %241, i64 0, i32 3, i64 2
  store float %248, ptr %249, align 4, !tbaa !57
  %250 = getelementptr inbounds %struct.DepthPeel, ptr %241, i64 0, i32 4
  %251 = load float, ptr %15, align 4, !tbaa !57
  store float %251, ptr %250, align 4, !tbaa !57
  %252 = load float, ptr %59, align 4, !tbaa !57
  %253 = getelementptr inbounds %struct.DepthPeel, ptr %241, i64 0, i32 4, i64 1
  store float %252, ptr %253, align 4, !tbaa !57
  %254 = load float, ptr %60, align 4, !tbaa !57
  %255 = getelementptr inbounds %struct.DepthPeel, ptr %241, i64 0, i32 4, i64 2
  store float %254, ptr %255, align 4, !tbaa !57
  call void @BLI_addtail(ptr noundef %5, ptr noundef %241) #13
  %256 = getelementptr inbounds %struct.DepthPeel, ptr %241, i64 0, i32 6
  store i32 0, ptr %256, align 8, !tbaa !191
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #13
  br label %257

257:                                              ; preds = %165, %238, %160
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  %258 = add nuw nsw i64 %63, 1
  %259 = icmp eq i64 %258, %61
  br i1 %259, label %260, label %62, !llvm.loop !295

260:                                              ; preds = %257, %44, %40
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #13
  br label %261

261:                                              ; preds = %260, %6
  ret void
}

declare void @BLI_sortlist(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i32 @cmpPeel(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.DepthPeel, ptr %0, i64 0, i32 2
  %4 = load float, ptr %3, align 8, !tbaa !166
  %5 = getelementptr inbounds %struct.DepthPeel, ptr %1, i64 0, i32 2
  %6 = load float, ptr %5, align 8, !tbaa !166
  %7 = fcmp olt float %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = fcmp ogt float %4, %6
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %2, %8, %10
  %12 = phi i32 [ 1, %10 ], [ 0, %8 ], [ -1, %2 ]
  ret i32 %12
}

declare zeroext i8 @isect_ray_tri_threshold_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @UI_view2d_view_to_region_rcti(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #11

declare void @ED_space_image_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }

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
!34 = !{!35, !39, i64 308}
!35 = !{!"TransInfo", !36, i64 0, !36, i64 4, !36, i64 8, !39, i64 12, !36, i64 16, !40, i64 20, !40, i64 24, !41, i64 32, !41, i64 40, !36, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !42, i64 80, !43, i64 296, !46, i64 440, !47, i64 584, !36, i64 640, !40, i64 644, !37, i64 648, !37, i64 668, !37, i64 680, !37, i64 688, !39, i64 696, !39, i64 698, !37, i64 700, !37, i64 712, !37, i64 716, !37, i64 780, !37, i64 844, !37, i64 908, !39, i64 972, !39, i64 974, !37, i64 976, !37, i64 977, !37, i64 980, !37, i64 992, !37, i64 1028, !37, i64 1064, !41, i64 1128, !41, i64 1136, !41, i64 1144, !39, i64 1152, !39, i64 1154, !39, i64 1156, !39, i64 1158, !39, i64 1160, !37, i64 1164, !37, i64 1180, !37, i64 1196, !37, i64 1208, !37, i64 1220, !41, i64 1224, !41, i64 1232, !41, i64 1240, !41, i64 1248, !41, i64 1256, !41, i64 1264, !41, i64 1272, !41, i64 1280, !41, i64 1288, !37, i64 1296, !40, i64 1304, !41, i64 1312, !37, i64 1320, !41, i64 1360, !41, i64 1368, !41, i64 1376, !41, i64 1384}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"any pointer", !37, i64 0}
!42 = !{!"TransCon", !39, i64 0, !37, i64 2, !37, i64 52, !37, i64 88, !37, i64 124, !37, i64 160, !37, i64 172, !36, i64 180, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208}
!43 = !{!"TransSnap", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11, !39, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !37, i64 52, !37, i64 64, !44, i64 72, !41, i64 88, !40, i64 96, !45, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136}
!44 = !{!"ListBase", !41, i64 0, !41, i64 8}
!45 = !{!"double", !37, i64 0}
!46 = !{!"NumInput", !39, i64 0, !36, i64 4, !37, i64 8, !37, i64 20, !39, i64 22, !37, i64 24, !37, i64 32, !37, i64 44, !37, i64 56, !39, i64 68, !37, i64 70, !36, i64 136}
!47 = !{!"MouseInput", !41, i64 0, !41, i64 8, !37, i64 16, !37, i64 24, !37, i64 28, !37, i64 36, !40, i64 44, !41, i64 48}
!48 = !{!35, !36, i64 8}
!49 = !{!37, !37, i64 0}
!50 = !{!35, !37, i64 976}
!51 = !{!41, !41, i64 0}
!52 = !{!35, !41, i64 384}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!35, !37, i64 304}
!57 = !{!40, !40, i64 0}
!58 = !{!59, !37, i64 344}
!59 = !{!"View3D", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !37, i64 56, !40, i64 72, !40, i64 76, !37, i64 80, !37, i64 81, !36, i64 84, !36, i64 88, !39, i64 92, !39, i64 94, !41, i64 96, !41, i64 104, !60, i64 112, !44, i64 128, !41, i64 144, !41, i64 152, !37, i64 160, !36, i64 224, !36, i64 228, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !37, i64 260, !37, i64 272, !39, i64 284, !39, i64 286, !39, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !44, i64 296, !44, i64 312, !44, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !41, i64 352, !41, i64 360, !41, i64 368}
!60 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!61 = distinct !{!61, !54, !55}
!62 = !{!35, !37, i64 360}
!63 = !{!64, !39, i64 16}
!64 = !{!"wmEvent", !41, i64 0, !41, i64 8, !39, i64 16, !39, i64 18, !36, i64 20, !36, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !39, i64 44, !39, i64 46, !36, i64 48, !36, i64 52, !45, i64 56, !36, i64 64, !36, i64 68, !39, i64 72, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !41, i64 88, !41, i64 96, !39, i64 104, !39, i64 106, !36, i64 108, !41, i64 112}
!65 = !{!36, !36, i64 0}
!66 = !{!35, !41, i64 1248}
!67 = distinct !{!67, !54, !55}
!68 = !{!35, !37, i64 305}
!69 = !{!35, !36, i64 4}
!70 = !{!35, !41, i64 56}
!71 = !{!35, !41, i64 1312}
!72 = !{!35, !41, i64 1128}
!73 = !{!35, !36, i64 48}
!74 = !{!75, !36, i64 216}
!75 = !{!"TransData", !40, i64 0, !40, i64 4, !40, i64 8, !41, i64 16, !37, i64 24, !41, i64 40, !40, i64 48, !37, i64 52, !37, i64 64, !37, i64 100, !37, i64 136, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !36, i64 216, !39, i64 220}
!76 = !{!75, !40, i64 8}
!77 = !{!75, !41, i64 16}
!78 = !{!75, !41, i64 176}
!79 = !{!80, !37, i64 1161}
!80 = !{!"Object", !81, i64 0, !41, i64 120, !41, i64 128, !39, i64 136, !39, i64 138, !36, i64 140, !36, i64 144, !36, i64 148, !37, i64 152, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288, !41, i64 296, !41, i64 304, !82, i64 312, !41, i64 360, !44, i64 368, !44, i64 384, !44, i64 400, !44, i64 416, !36, i64 432, !36, i64 436, !41, i64 440, !41, i64 448, !36, i64 456, !36, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !40, i64 616, !40, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !36, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !36, i64 968, !36, i64 972, !36, i64 976, !36, i64 980, !36, i64 984, !40, i64 988, !40, i64 992, !40, i64 996, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !40, i64 1028, !40, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !40, i64 1048, !40, i64 1052, !44, i64 1056, !44, i64 1072, !44, i64 1088, !44, i64 1104, !40, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !36, i64 1144, !36, i64 1148, !41, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !44, i64 1176, !44, i64 1192, !44, i64 1208, !44, i64 1224, !41, i64 1240, !41, i64 1248, !41, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !40, i64 1268, !41, i64 1272, !41, i64 1280, !41, i64 1288, !41, i64 1296, !83, i64 1304, !83, i64 1312, !36, i64 1320, !36, i64 1324, !44, i64 1328, !44, i64 1344, !41, i64 1360, !41, i64 1368, !41, i64 1376, !37, i64 1384, !41, i64 1392, !44, i64 1400, !41, i64 1416}
!81 = !{!"ID", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !39, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !41, i64 112}
!82 = !{!"bAnimVizSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44}
!83 = !{!"long", !37, i64 0}
!84 = !{!85, !41, i64 0}
!85 = !{!"Global", !41, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !44, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !39, i64 2084, !39, i64 2086, !39, i64 2088, !37, i64 2090, !39, i64 2092, !36, i64 2096, !36, i64 2100, !37, i64 2104, !36, i64 2108, !36, i64 2112, !37, i64 2116}
!86 = !{!87, !41, i64 1888}
!87 = !{!"Main", !41, i64 0, !41, i64 8, !37, i64 16, !39, i64 1040, !39, i64 1042, !39, i64 1044, !39, i64 1046, !83, i64 1048, !37, i64 1056, !39, i64 1072, !41, i64 1080, !44, i64 1088, !44, i64 1104, !44, i64 1120, !44, i64 1136, !44, i64 1152, !44, i64 1168, !44, i64 1184, !44, i64 1200, !44, i64 1216, !44, i64 1232, !44, i64 1248, !44, i64 1264, !44, i64 1280, !44, i64 1296, !44, i64 1312, !44, i64 1328, !44, i64 1344, !44, i64 1360, !44, i64 1376, !44, i64 1392, !44, i64 1408, !44, i64 1424, !44, i64 1440, !44, i64 1456, !44, i64 1472, !44, i64 1488, !44, i64 1504, !44, i64 1520, !44, i64 1536, !44, i64 1552, !44, i64 1568, !44, i64 1584, !44, i64 1600, !44, i64 1616, !37, i64 1632, !41, i64 1888, !41, i64 1896}
!88 = !{!35, !41, i64 1256}
!89 = !{!35, !39, i64 302}
!90 = !{!91, !41, i64 264}
!91 = !{!"Scene", !81, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !44, i64 152, !41, i64 168, !41, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !36, i64 232, !36, i64 236, !36, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !92, i64 280, !100, i64 4264, !44, i64 4296, !44, i64 4312, !41, i64 4328, !41, i64 4336, !41, i64 4344, !41, i64 4352, !41, i64 4360, !41, i64 4368, !39, i64 4376, !39, i64 4378, !36, i64 4380, !44, i64 4384, !101, i64 4400, !102, i64 4416, !105, i64 4600, !41, i64 4608, !106, i64 4616, !41, i64 4640, !83, i64 4648, !83, i64 4656, !94, i64 4664, !95, i64 4824, !107, i64 4888, !41, i64 4952}
!92 = !{!"RenderData", !93, i64 0, !41, i64 248, !41, i64 256, !96, i64 264, !97, i64 328, !36, i64 400, !36, i64 404, !36, i64 408, !40, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !39, i64 432, !39, i64 434, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !36, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !36, i64 484, !36, i64 488, !39, i64 492, !39, i64 494, !36, i64 496, !36, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !36, i64 516, !36, i64 520, !36, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !60, i64 544, !60, i64 560, !98, i64 576, !44, i64 592, !39, i64 608, !39, i64 610, !40, i64 612, !40, i64 616, !40, i64 620, !40, i64 624, !36, i64 628, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !40, i64 660, !40, i64 664, !39, i64 668, !39, i64 670, !40, i64 672, !40, i64 676, !37, i64 680, !36, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !36, i64 2520, !39, i64 2524, !39, i64 2526, !40, i64 2528, !40, i64 2532, !39, i64 2536, !39, i64 2538, !40, i64 2540, !39, i64 2544, !39, i64 2546, !36, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !40, i64 2560, !40, i64 2564, !41, i64 2568, !36, i64 2576, !40, i64 2580, !37, i64 2584, !99, i64 2616, !36, i64 3976, !36, i64 3980}
!93 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !40, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !94, i64 24, !95, i64 184}
!94 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !40, i64 136, !40, i64 140, !41, i64 144, !41, i64 152}
!95 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!96 = !{!"QuicktimeCodecSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !39, i64 48, !39, i64 50, !36, i64 52, !36, i64 56, !36, i64 60}
!97 = !{!"FFMpegCodecData", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !40, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !41, i64 64}
!98 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!99 = !{!"BakeData", !93, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !40, i64 1280, !40, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!100 = !{!"AudioData", !36, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !36, i64 16, !39, i64 20, !39, i64 22, !40, i64 24, !40, i64 28}
!101 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!102 = !{!"GameData", !101, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !103, i64 40, !39, i64 64, !39, i64 66, !40, i64 68, !104, i64 72, !40, i64 128, !40, i64 132, !36, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180}
!103 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !40, i64 8, !40, i64 12, !41, i64 16}
!104 = !{!"RecastData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !36, i64 40, !40, i64 44, !40, i64 48, !39, i64 52, !39, i64 54}
!105 = !{!"UnitSettings", !40, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!106 = !{!"PhysicsSettings", !37, i64 0, !36, i64 12, !36, i64 16, !36, i64 20}
!107 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!108 = !{!109, !37, i64 431}
!109 = !{!"ToolSettings", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !39, i64 44, !39, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !40, i64 52, !39, i64 56, !37, i64 58, !37, i64 59, !110, i64 64, !112, i64 168, !40, i64 336, !40, i64 340, !39, i64 344, !39, i64 346, !37, i64 348, !37, i64 349, !39, i64 350, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !40, i64 368, !40, i64 372, !40, i64 376, !40, i64 380, !40, i64 384, !40, i64 388, !39, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !41, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !39, i64 434, !39, i64 436, !39, i64 438, !39, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !36, i64 448, !36, i64 452, !36, i64 456, !36, i64 460, !39, i64 464, !39, i64 466, !36, i64 468, !40, i64 472, !40, i64 476, !113, i64 480, !114, i64 608}
!110 = !{!"ImagePaintSettings", !111, i64 0, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !37, i64 48, !36, i64 52, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !37, i64 88, !40, i64 100}
!111 = !{!"Paint", !41, i64 0, !41, i64 8, !41, i64 16, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36}
!112 = !{!"ParticleEditSettings", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !41, i64 120, !40, i64 128, !40, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !41, i64 152, !41, i64 160}
!113 = !{!"UnifiedPaintSettings", !36, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !37, i64 16, !37, i64 28, !36, i64 40, !37, i64 44, !40, i64 52, !36, i64 56, !36, i64 60, !37, i64 64, !37, i64 65, !40, i64 72, !37, i64 76, !36, i64 84, !40, i64 88, !37, i64 92, !37, i64 100, !36, i64 108, !41, i64 112, !40, i64 120, !36, i64 124}
!114 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 21, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36}
!115 = !{!91, !41, i64 168}
!116 = !{!35, !41, i64 1224}
!117 = !{!75, !41, i64 192}
!118 = !{!119, !36, i64 320}
!119 = !{!"TransDataExtension", !37, i64 0, !37, i64 12, !37, i64 28, !41, i64 40, !37, i64 48, !41, i64 64, !37, i64 72, !41, i64 88, !40, i64 96, !41, i64 104, !37, i64 112, !41, i64 128, !37, i64 136, !37, i64 148, !37, i64 212, !37, i64 248, !37, i64 284, !36, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 364, !40, i64 376}
!120 = !{!119, !41, i64 40}
!121 = distinct !{!121, !54, !55}
!122 = !{!35, !39, i64 296}
!123 = distinct !{!123, !54, !55}
!124 = !{!35, !41, i64 424}
!125 = !{!35, !45, i64 400}
!126 = !{!35, !41, i64 416}
!127 = !{!35, !41, i64 408}
!128 = !{!35, !39, i64 298}
!129 = !{!35, !41, i64 1264}
!130 = !{!109, !39, i64 436}
!131 = !{!132, !41, i64 112}
!132 = !{!"wmOperator", !41, i64 0, !41, i64 8, !37, i64 16, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !44, i64 128, !41, i64 144, !41, i64 152, !39, i64 160, !37, i64 162}
!133 = !{!35, !37, i64 306}
!134 = !{!109, !39, i64 434}
!135 = !{!35, !37, i64 307}
!136 = !{!109, !37, i64 432}
!137 = !{!109, !37, i64 433}
!138 = !{!35, !36, i64 0}
!139 = !{!35, !41, i64 432}
!140 = !{!80, !39, i64 136}
!141 = !{!142, !41, i64 32}
!142 = !{!"Base", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !39, i64 28, !39, i64 30, !41, i64 32}
!143 = !{!80, !36, i64 432}
!144 = !{!44, !41, i64 0}
!145 = !{!35, !41, i64 368}
!146 = distinct !{!146, !54, !55}
!147 = !{!148, !41, i64 96}
!148 = !{!"ScrArea", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !98, i64 56, !37, i64 72, !37, i64 73, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !39, i64 84, !37, i64 86, !37, i64 87, !41, i64 88, !44, i64 96, !44, i64 112, !44, i64 128, !44, i64 144}
!149 = !{i8 0, i8 2}
!150 = !{!142, !36, i64 16}
!151 = !{!80, !37, i64 1160}
!152 = !{!142, !36, i64 24}
!153 = !{!80, !39, i64 952}
!154 = !{!155, !41, i64 16}
!155 = !{!"DupliObject", !41, i64 0, !41, i64 8, !41, i64 16, !37, i64 24, !37, i64 88, !37, i64 100, !39, i64 108, !37, i64 110, !37, i64 111, !37, i64 112, !41, i64 144}
!156 = distinct !{!156, !54, !55}
!157 = distinct !{!157, !54, !55}
!158 = !{!59, !36, i64 224}
!159 = !{!160, !41, i64 1680}
!160 = !{!"DerivedMesh", !161, i64 0, !161, i64 200, !161, i64 400, !161, i64 600, !161, i64 800, !36, i64 1000, !36, i64 1004, !36, i64 1008, !36, i64 1012, !36, i64 1016, !36, i64 1020, !36, i64 1024, !41, i64 1032, !41, i64 1040, !36, i64 1048, !40, i64 1052, !36, i64 1056, !36, i64 1060, !41, i64 1064, !37, i64 1072, !41, i64 1080, !41, i64 1088, !41, i64 1096, !41, i64 1104, !41, i64 1112, !41, i64 1120, !41, i64 1128, !41, i64 1136, !41, i64 1144, !41, i64 1152, !41, i64 1160, !41, i64 1168, !41, i64 1176, !41, i64 1184, !41, i64 1192, !41, i64 1200, !41, i64 1208, !41, i64 1216, !41, i64 1224, !41, i64 1232, !41, i64 1240, !41, i64 1248, !41, i64 1256, !41, i64 1264, !41, i64 1272, !41, i64 1280, !41, i64 1288, !41, i64 1296, !41, i64 1304, !41, i64 1312, !41, i64 1320, !41, i64 1328, !41, i64 1336, !41, i64 1344, !41, i64 1352, !41, i64 1360, !41, i64 1368, !41, i64 1376, !41, i64 1384, !41, i64 1392, !41, i64 1400, !41, i64 1408, !41, i64 1416, !41, i64 1424, !41, i64 1432, !41, i64 1440, !41, i64 1448, !41, i64 1456, !41, i64 1464, !41, i64 1472, !41, i64 1480, !41, i64 1488, !41, i64 1496, !41, i64 1504, !41, i64 1512, !41, i64 1520, !41, i64 1528, !41, i64 1536, !41, i64 1544, !41, i64 1552, !41, i64 1560, !41, i64 1568, !41, i64 1576, !41, i64 1584, !41, i64 1592, !41, i64 1600, !41, i64 1608, !41, i64 1616, !41, i64 1624, !41, i64 1632, !41, i64 1640, !41, i64 1648, !41, i64 1656, !41, i64 1664, !41, i64 1672, !41, i64 1680}
!161 = !{!"CustomData", !41, i64 0, !37, i64 8, !36, i64 172, !36, i64 176, !36, i64 180, !41, i64 184, !41, i64 192}
!162 = distinct !{!162, !54, !55}
!163 = distinct !{!163, !54, !55}
!164 = !{!165, !41, i64 0}
!165 = !{!"DepthPeel", !41, i64 0, !41, i64 8, !40, i64 16, !37, i64 20, !37, i64 32, !41, i64 48, !36, i64 56}
!166 = !{!165, !40, i64 16}
!167 = !{!165, !41, i64 8}
!168 = distinct !{!168, !54, !55}
!169 = !{!35, !41, i64 1240}
!170 = !{!171, !41, i64 288}
!171 = !{!"SpaceNode", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !172, i64 56, !41, i64 216, !41, i64 224, !39, i64 232, !39, i64 234, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !37, i64 256, !44, i64 264, !41, i64 280, !41, i64 288, !37, i64 296, !36, i64 360, !36, i64 364, !39, i64 368, !39, i64 370, !39, i64 372, !39, i64 374, !44, i64 376, !41, i64 392}
!172 = !{!"View2D", !60, i64 0, !60, i64 16, !98, i64 32, !98, i64 48, !98, i64 64, !37, i64 80, !37, i64 88, !40, i64 96, !40, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !41, i64 128, !36, i64 136, !36, i64 140, !41, i64 144, !41, i64 152}
!173 = !{!174, !36, i64 168}
!174 = !{!"bNode", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !37, i64 40, !37, i64 104, !36, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !37, i64 188, !44, i64 200, !44, i64 216, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !44, i64 264, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !36, i64 308, !37, i64 312, !39, i64 376, !39, i64 378, !40, i64 380, !40, i64 384, !39, i64 388, !39, i64 390, !41, i64 392, !60, i64 400, !60, i64 416, !60, i64 432, !39, i64 448, !39, i64 450, !36, i64 452, !41, i64 456}
!175 = !{!174, !40, i64 400}
!176 = !{!172, !40, i64 20}
!177 = !{!174, !40, i64 404}
!178 = !{!172, !40, i64 16}
!179 = !{!174, !40, i64 408}
!180 = !{!172, !40, i64 28}
!181 = !{!174, !40, i64 412}
!182 = !{!172, !40, i64 24}
!183 = !{!98, !36, i64 0}
!184 = !{!98, !36, i64 4}
!185 = !{!98, !36, i64 8}
!186 = !{!98, !36, i64 12}
!187 = distinct !{!187, !54, !55}
!188 = !{!35, !39, i64 698}
!189 = !{!35, !36, i64 16}
!190 = distinct !{!190, !54, !55}
!191 = !{!165, !36, i64 56}
!192 = !{!165, !41, i64 48}
!193 = distinct !{!193, !54, !55}
!194 = distinct !{!194, !54, !55}
!195 = distinct !{!195, !54, !55}
!196 = !{!35, !40, i64 392}
!197 = distinct !{!197, !54, !55}
!198 = distinct !{!198, !54, !55}
!199 = distinct !{!199, !54, !55}
!200 = !{!75, !41, i64 208}
!201 = !{!60, !40, i64 12}
!202 = !{!60, !40, i64 8}
!203 = !{!60, !40, i64 4}
!204 = !{!60, !40, i64 0}
!205 = distinct !{!205, !54, !55}
!206 = !{!35, !41, i64 288}
!207 = !{!35, !36, i64 260}
!208 = !{!83, !83, i64 0}
!209 = !{!210, !41, i64 376}
!210 = !{!"ARegion", !41, i64 0, !41, i64 8, !172, i64 16, !98, i64 176, !98, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !40, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !41, i64 240, !44, i64 248, !44, i64 264, !44, i64 280, !44, i64 296, !44, i64 312, !44, i64 328, !44, i64 344, !41, i64 360, !41, i64 368, !41, i64 376}
!211 = !{!212, !37, i64 808}
!212 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !41, i64 640, !41, i64 648, !41, i64 656, !41, i64 664, !41, i64 672, !41, i64 680, !41, i64 688, !37, i64 696, !37, i64 760, !40, i64 776, !40, i64 780, !40, i64 784, !40, i64 788, !37, i64 792, !40, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !39, i64 824, !39, i64 826, !37, i64 828, !39, i64 844, !39, i64 846, !40, i64 848, !37, i64 852, !40, i64 864, !37, i64 868}
!213 = !{!160, !41, i64 1104}
!214 = !{!215, !41, i64 56}
!215 = !{!"BVHTreeFromMesh", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !37, i64 48, !37, i64 49, !37, i64 50, !40, i64 52, !41, i64 56, !37, i64 64}
!216 = !{!215, !41, i64 0}
!217 = !{!218, !36, i64 0}
!218 = !{!"BVHTreeNearest", !36, i64 0, !37, i64 4, !37, i64 16, !40, i64 28, !36, i64 32}
!219 = !{!218, !40, i64 28}
!220 = !{!215, !41, i64 8}
!221 = !{!222, !36, i64 0}
!222 = !{!"BVHTreeRayHit", !36, i64 0, !37, i64 4, !37, i64 16, !40, i64 28, !36, i64 32}
!223 = !{!222, !40, i64 28}
!224 = !{!215, !41, i64 16}
!225 = !{!160, !41, i64 1168}
!226 = !{!160, !41, i64 1320}
!227 = !{!228, !41, i64 0}
!228 = !{!"BMEditMesh", !41, i64 0, !41, i64 8, !36, i64 16, !41, i64 24, !36, i64 32, !41, i64 40, !41, i64 48, !83, i64 56, !41, i64 64, !36, i64 72, !41, i64 80, !36, i64 88, !39, i64 92, !39, i64 94, !41, i64 96, !36, i64 104}
!229 = !{!230, !37, i64 13}
!230 = !{!"BMHeader", !41, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!231 = distinct !{!231, !54, !55}
!232 = !{!160, !41, i64 1176}
!233 = !{!160, !41, i64 1112}
!234 = !{!160, !41, i64 1328}
!235 = !{!236, !41, i64 24}
!236 = !{!"BMEdge", !230, i64 0, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !237, i64 48, !237, i64 64}
!237 = !{!"BMDiskLink", !41, i64 0, !41, i64 8}
!238 = !{!236, !41, i64 32}
!239 = !{!240, !36, i64 0}
!240 = !{!"MEdge", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 9, !39, i64 10}
!241 = !{!240, !36, i64 4}
!242 = distinct !{!242, !54, !55}
!243 = !{!80, !41, i64 296}
!244 = !{!245, !41, i64 160}
!245 = !{!"bArmature", !81, i64 0, !41, i64 120, !44, i64 128, !44, i64 144, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !36, i64 192, !36, i64 196, !36, i64 200, !36, i64 204, !39, i64 208, !39, i64 210, !36, i64 212, !36, i64 216, !36, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !36, i64 248, !36, i64 252}
!246 = !{!247, !36, i64 136}
!247 = !{!"EditBone", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !37, i64 40, !40, i64 104, !37, i64 108, !37, i64 120, !36, i64 132, !36, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !39, i64 180}
!248 = !{!245, !36, i64 216}
!249 = !{!247, !36, i64 132}
!250 = distinct !{!250, !54, !55}
!251 = !{!80, !41, i64 288}
!252 = !{!253, !41, i64 0}
!253 = !{!"bPose", !44, i64 0, !41, i64 16, !39, i64 24, !39, i64 26, !36, i64 28, !36, i64 32, !40, i64 36, !37, i64 40, !37, i64 52, !44, i64 64, !36, i64 80, !36, i64 84, !41, i64 88, !41, i64 96, !82, i64 104, !37, i64 152}
!254 = !{!255, !41, i64 120}
!255 = !{!"bPoseChannel", !41, i64 0, !41, i64 8, !41, i64 16, !44, i64 24, !37, i64 40, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !41, i64 120, !41, i64 128, !41, i64 136, !44, i64 144, !44, i64 160, !41, i64 176, !41, i64 184, !41, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !40, i64 264, !39, i64 268, !39, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !40, i64 524, !40, i64 528, !40, i64 532, !41, i64 536}
!256 = !{!257, !36, i64 176}
!257 = !{!"Bone", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !44, i64 32, !37, i64 48, !40, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !36, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !37, i64 308, !36, i64 320, !39, i64 324, !37, i64 326}
!258 = !{!255, !41, i64 0}
!259 = distinct !{!259, !54, !55}
!260 = !{!261, !41, i64 152}
!261 = !{!"Curve", !81, i64 0, !41, i64 120, !41, i64 128, !44, i64 136, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !39, i64 244, !39, i64 246, !39, i64 248, !39, i64 250, !40, i64 252, !40, i64 256, !36, i64 260, !39, i64 264, !39, i64 266, !36, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !39, i64 284, !39, i64 286, !39, i64 288, !39, i64 290, !36, i64 292, !36, i64 296, !37, i64 300, !39, i64 304, !37, i64 306, !37, i64 307, !40, i64 308, !40, i64 312, !40, i64 316, !40, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !40, i64 336, !40, i64 340, !40, i64 344, !36, i64 348, !36, i64 352, !36, i64 356, !36, i64 360, !36, i64 364, !41, i64 368, !41, i64 376, !37, i64 384, !41, i64 448, !41, i64 456, !41, i64 464, !41, i64 472, !41, i64 480, !36, i64 488, !36, i64 492, !41, i64 496, !262, i64 504, !40, i64 512, !40, i64 516, !40, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!262 = !{!"CharInfo", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !39, i64 6}
!263 = distinct !{!263, !54, !55}
!264 = !{!265, !36, i64 24}
!265 = !{!"Nurb", !41, i64 0, !41, i64 8, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !36, i64 24, !36, i64 28, !37, i64 32, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !39, i64 80, !39, i64 82, !36, i64 84}
!266 = !{!265, !41, i64 72}
!267 = !{!268, !37, i64 52}
!268 = !{!"BezTriple", !37, i64 0, !40, i64 36, !40, i64 40, !40, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !40, i64 56, !40, i64 60, !40, i64 64, !37, i64 68}
!269 = !{!268, !37, i64 54}
!270 = !{!268, !37, i64 51}
!271 = !{!268, !37, i64 49}
!272 = !{!268, !37, i64 53}
!273 = !{!268, !37, i64 50}
!274 = !{!265, !41, i64 64}
!275 = !{!276, !39, i64 24}
!276 = !{!"BPoint", !37, i64 0, !40, i64 16, !40, i64 20, !39, i64 24, !39, i64 26, !40, i64 28, !40, i64 32}
!277 = !{!276, !39, i64 26}
!278 = distinct !{!278, !54, !55}
!279 = !{!280, !36, i64 80}
!280 = !{!"MovieTrackingObject", !41, i64 0, !41, i64 8, !37, i64 16, !36, i64 80, !40, i64 84, !44, i64 88, !44, i64 104, !281, i64 120, !36, i64 144, !36, i64 148}
!281 = !{!"MovieTrackingReconstruction", !36, i64 0, !40, i64 4, !36, i64 8, !36, i64 12, !41, i64 16}
!282 = !{!91, !36, i64 680}
!283 = !{!284, !36, i64 152}
!284 = !{!"MovieTrackingTrack", !41, i64 0, !41, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !36, i64 120, !36, i64 124, !41, i64 128, !37, i64 136, !40, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !37, i64 164, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !36, i64 184, !40, i64 188, !41, i64 192, !40, i64 200, !40, i64 204}
!285 = distinct !{!285, !54, !55}
!286 = distinct !{!286, !54, !55}
!287 = !{!39, !39, i64 0}
!288 = !{!160, !41, i64 1120}
!289 = !{!160, !41, i64 1184}
!290 = !{!291, !36, i64 0}
!291 = !{!"MFace", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !39, i64 16, !37, i64 18, !37, i64 19}
!292 = !{!291, !36, i64 4}
!293 = !{!291, !36, i64 8}
!294 = !{!291, !36, i64 12}
!295 = distinct !{!295, !54, !55}
