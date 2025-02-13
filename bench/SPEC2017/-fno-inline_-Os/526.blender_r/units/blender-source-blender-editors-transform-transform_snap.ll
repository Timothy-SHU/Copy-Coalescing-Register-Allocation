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
%struct.TransDataExtension = type { [3 x float], [4 x float], [3 x float], ptr, [3 x float], ptr, [4 x float], ptr, float, ptr, [4 x float], ptr, [3 x float], [4 x [4 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x float], [3 x float], float }
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
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.DupliObject = type { ptr, ptr, ptr, [4 x [4 x float]], [3 x float], [2 x float], i16, i8, i8, [8 x i32], ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.SpaceNode = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, ptr, i16, i16, float, float, float, float, float, [2 x float], %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, %struct.ListBase, ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.DepthPeel = type { ptr, ptr, float, [3 x float], [3 x float], ptr, i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.BVHTreeFromMesh = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, float, ptr, i8 }
%struct.BVHTreeNearest = type { i32, [3 x float], [3 x float], float, i32 }
%struct.BVHTreeRayHit = type { i32, [3 x float], [3 x float], float, i32 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
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
@switch.table.setSnappingCallback = private unnamed_addr constant [4 x ptr] [ptr @TargetSnapClosest, ptr @TargetSnapCenter, ptr @TargetSnapMedian, ptr @TargetSnapActive], align 8
@switch.table.snapNodeBorder = private unnamed_addr constant [3 x i32] [i32 12, i32 3, i32 15], align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @drawSnapping(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca [4 x i8], align 1
  %4 = alloca [4 x i8], align 1
  %5 = alloca [4 x i8], align 1
  %6 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  %7 = tail call zeroext i8 @activeSnap(ptr noundef %1) #18, !range !49
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %114, label %9

9:                                                ; preds = %2
  call void @UI_GetThemeColor3ubv(i32 noundef 32, ptr noundef nonnull %3) #19
  %10 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  store i8 -128, ptr %10, align 1, !tbaa !50
  call void @UI_GetThemeColor3ubv(i32 noundef 28, ptr noundef nonnull %4) #19
  %11 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 3
  store i8 -128, ptr %11, align 1, !tbaa !50
  call void @UI_GetThemeColor3ubv(i32 noundef 29, ptr noundef nonnull %5) #19
  %12 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 3
  store i8 -64, ptr %12, align 1, !tbaa !50
  %13 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  %14 = load i8, ptr %13, align 8, !tbaa !51
  switch i8 %14, label %114 [
    i8 1, label %15
    i8 16, label %81
  ]

15:                                               ; preds = %9
  %16 = call zeroext i8 @validSnap(ptr noundef nonnull %1) #18, !range !49
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %114, label %18

18:                                               ; preds = %15
  %19 = call ptr @CTX_wm_view3d(ptr noundef %0) #19
  %20 = call ptr @CTX_wm_region_view3d(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #17
  call void @glDisable(i32 noundef 2929) #19
  %21 = call float @UI_GetThemeValuef(i32 noundef 36) #19
  %22 = fmul float %21, 2.500000e+00
  %23 = getelementptr inbounds %struct.RegionView3D, ptr %20, i64 0, i32 1
  %24 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %23) #19
  %25 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 14
  %26 = load ptr, ptr %25, align 8, !tbaa !52
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 15
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi ptr [ %26, %28 ], [ %39, %30 ]
  %32 = load ptr, ptr %29, align 8, !tbaa !53
  %33 = icmp eq ptr %31, %32
  %34 = select i1 %33, ptr %4, ptr %3
  call void @glColor4ubv(ptr noundef nonnull %34) #19
  %35 = getelementptr inbounds %struct.TransSnapPoint, ptr %31, i64 0, i32 2
  %36 = call float @ED_view3d_pixel_size(ptr noundef %20, ptr noundef nonnull %35) #19
  %37 = fmul float %22, %36
  %38 = fmul float %37, 7.500000e-01
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %35, float noundef %38, ptr noundef nonnull %6) #19
  %39 = load ptr, ptr %31, align 8, !tbaa !52
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %30, !llvm.loop !54

41:                                               ; preds = %30, %18
  %42 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 8
  %43 = load i16, ptr %42, align 4, !tbaa !34
  %44 = and i16 %43, 4
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  call void @glColor4ubv(ptr noundef nonnull %5) #19
  %47 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 9
  %48 = call float @ED_view3d_pixel_size(ptr noundef %20, ptr noundef nonnull %47) #19
  %49 = fmul float %22, %48
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %47, float noundef %49, ptr noundef nonnull %6) #19
  br label %50

50:                                               ; preds = %46, %41
  %51 = call zeroext i8 @usingSnappingNormal(ptr noundef nonnull %1) #18
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %75, label %53

53:                                               ; preds = %50
  %54 = call zeroext i8 @validSnappingNormal(ptr noundef nonnull %1) #18, !range !49
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %75, label %56

56:                                               ; preds = %53
  call void @glColor4ubv(ptr noundef nonnull %5) #19
  call void @glBegin(i32 noundef 1) #19
  %57 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 9
  %58 = load float, ptr %57, align 8, !tbaa !56
  %59 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 9, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !56
  %61 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 9, i64 2
  %62 = load float, ptr %61, align 8, !tbaa !56
  call void @glVertex3f(float noundef %58, float noundef %60, float noundef %62) #19
  %63 = load float, ptr %57, align 8, !tbaa !56
  %64 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 11
  %65 = load float, ptr %64, align 8, !tbaa !56
  %66 = fadd float %63, %65
  %67 = load float, ptr %59, align 4, !tbaa !56
  %68 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 11, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !56
  %70 = fadd float %67, %69
  %71 = load float, ptr %61, align 8, !tbaa !56
  %72 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 11, i64 2
  %73 = load float, ptr %72, align 8, !tbaa !56
  %74 = fadd float %71, %73
  call void @glVertex3f(float noundef %66, float noundef %70, float noundef %74) #19
  call void @glEnd() #19
  br label %75

75:                                               ; preds = %56, %53, %50
  %76 = getelementptr inbounds %struct.View3D, ptr %19, i64 0, i32 47
  %77 = load i8, ptr %76, align 8, !tbaa !57
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  call void @glEnable(i32 noundef 2929) #19
  br label %80

80:                                               ; preds = %79, %75
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #17
  br label %114

81:                                               ; preds = %9
  %82 = call zeroext i8 @validSnap(ptr noundef nonnull %1) #18, !range !49
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %114, label %84

84:                                               ; preds = %81
  %85 = call ptr @CTX_wm_region(ptr noundef %0) #19
  %86 = call float @UI_GetThemeValuef(i32 noundef 36) #19
  %87 = fmul float %86, 2.500000e+00
  call void @glEnable(i32 noundef 3042) #19
  %88 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 14
  %89 = load ptr, ptr %88, align 8, !tbaa !52
  %90 = icmp eq ptr %89, null
  br i1 %90, label %102, label %91

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 15
  %93 = getelementptr inbounds %struct.ARegion, ptr %85, i64 0, i32 2
  br label %94

94:                                               ; preds = %91, %94
  %95 = phi ptr [ %89, %91 ], [ %100, %94 ]
  %96 = load ptr, ptr %92, align 8, !tbaa !53
  %97 = icmp eq ptr %95, %96
  %98 = select i1 %97, ptr %4, ptr %3
  call void @glColor4ubv(ptr noundef nonnull %98) #19
  %99 = getelementptr inbounds %struct.TransSnapPoint, ptr %95, i64 0, i32 2
  call void @ED_node_draw_snap(ptr noundef nonnull %93, ptr noundef nonnull %99, float noundef %87, i32 noundef 0) #19
  %100 = load ptr, ptr %95, align 8, !tbaa !52
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %94, !llvm.loop !60

102:                                              ; preds = %94, %84
  %103 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 8
  %104 = load i16, ptr %103, align 4, !tbaa !34
  %105 = and i16 %104, 4
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %102
  call void @glColor4ubv(ptr noundef nonnull %5) #19
  %108 = getelementptr inbounds %struct.ARegion, ptr %85, i64 0, i32 2
  %109 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 9
  %110 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 13
  %111 = load i8, ptr %110, align 8, !tbaa !61
  %112 = zext i8 %111 to i32
  call void @ED_node_draw_snap(ptr noundef nonnull %108, ptr noundef nonnull %109, float noundef %87, i32 noundef %112) #19
  br label %113

113:                                              ; preds = %107, %102
  call void @glDisable(i32 noundef 3042) #19
  br label %114

114:                                              ; preds = %80, %15, %113, %81, %9, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @UI_GetThemeValuef(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glColor4ubv(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @drawcircball(i32 noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @ED_view3d_pixel_size(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @usingSnappingNormal(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !62
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @validSnappingNormal(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i8 @validSnap(ptr noundef %0) #18, !range !49
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 11
  %6 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %5) #18, !range !49
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %1
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi i8 [ 0, %8 ], [ 1, %4 ]
  ret i8 %10
}

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glVertex3f(float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #3

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_node_draw_snap(ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @handleSnapping(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i16 %4, 4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 @updateSelectedSnapPoint(ptr noundef %0) #18, !range !65
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ 0, %2 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @updateSelectedSnapPoint(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = alloca [2 x float], align 8
  %3 = alloca [2 x float], align 4
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %5 = load i16, ptr %4, align 4, !tbaa !34
  %6 = and i16 %5, 8
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %44, label %8

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61
  %10 = load <2 x i32>, ptr %9, align 8, !tbaa !66
  %11 = sitofp <2 x i32> %10 to <2 x float>
  store <2 x float> %11, ptr %2, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = icmp eq ptr %13, null
  br i1 %14, label %42, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  br label %17

17:                                               ; preds = %15, %30
  %18 = phi ptr [ %13, %15 ], [ %33, %30 ]
  %19 = phi float [ 1.000000e+02, %15 ], [ %32, %30 ]
  %20 = phi ptr [ null, %15 ], [ %31, %30 ]
  %21 = load ptr, ptr %16, align 8, !tbaa !67
  %22 = getelementptr inbounds %struct.TransSnapPoint, ptr %18, i64 0, i32 2
  %23 = call i32 @ED_view3d_project_float_global(ptr noundef %21, ptr noundef nonnull %22, ptr noundef nonnull %3, i32 noundef 0) #19
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %2, ptr noundef nonnull %3) #18
  %27 = fcmp olt float %26, %19
  %28 = select i1 %27, ptr %18, ptr %20
  %29 = select i1 %27, float %26, float %19
  br label %30

30:                                               ; preds = %17, %25
  %31 = phi ptr [ %28, %25 ], [ %20, %17 ]
  %32 = phi float [ %29, %25 ], [ %19, %17 ]
  %33 = load ptr, ptr %18, align 8, !tbaa !52
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %17, !llvm.loop !68

35:                                               ; preds = %30
  %36 = icmp eq ptr %31, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 15
  %39 = load ptr, ptr %38, align 8, !tbaa !53
  %40 = icmp ne ptr %39, %31
  %41 = zext i1 %40 to i32
  store ptr %31, ptr %38, align 8, !tbaa !53
  br label %42

42:                                               ; preds = %8, %37, %35
  %43 = phi i32 [ %41, %37 ], [ 0, %35 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  br label %44

44:                                               ; preds = %42, %1
  %45 = phi i32 [ %43, %42 ], [ 0, %1 ]
  ret i32 %45
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @applyProject(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca float, align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [3 x [3 x float]], align 16
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x [3 x float]], align 16
  %15 = alloca [4 x float], align 16
  %16 = alloca [3 x [3 x float]], align 16
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 5
  %18 = load i8, ptr %17, align 1, !tbaa !69
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %148, label %20

20:                                               ; preds = %1
  %21 = tail call zeroext i8 @activeSnap(ptr noundef nonnull %0) #18, !range !49
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %148, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !70
  %26 = and i32 %25, 4194304
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %148

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %30 = load ptr, ptr %29, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  %31 = and i32 %25, 6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %35 = load ptr, ptr %34, align 8, !tbaa !72
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %39 = load ptr, ptr %38, align 8, !tbaa !73
  br label %40

40:                                               ; preds = %33, %37
  %41 = phi ptr [ %39, %37 ], [ %35, %33 ]
  %42 = getelementptr inbounds %struct.Object, ptr %41, i64 0, i32 47
  %43 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %42) #19
  br label %44

44:                                               ; preds = %40, %28
  %45 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %46 = load i32, ptr %45, align 8, !tbaa !74
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %147

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %50 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %51 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %52 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %53 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 3
  %54 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 4
  br label %55

55:                                               ; preds = %48, %142
  %56 = phi ptr [ %30, %48 ], [ %144, %142 ]
  %57 = phi i32 [ 0, %48 ], [ %143, %142 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  store float 1.000000e+03, ptr %8, align 4, !tbaa !56
  %58 = getelementptr inbounds %struct.TransData, ptr %56, i64 0, i32 16
  %59 = load i32, ptr %58, align 8, !tbaa !75
  %60 = and i32 %59, 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %141

62:                                               ; preds = %55
  %63 = and i32 %59, 2048
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %142

65:                                               ; preds = %62
  %66 = load i32, ptr %24, align 4, !tbaa !70
  %67 = and i32 %66, 2048
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.TransData, ptr %56, i64 0, i32 2
  %71 = load float, ptr %70, align 8, !tbaa !77
  %72 = fcmp oeq float %71, 0.000000e+00
  br i1 %72, label %142, label %73

73:                                               ; preds = %69, %65
  %74 = getelementptr inbounds %struct.TransData, ptr %56, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !78
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %75) #18
  %76 = and i32 %66, 6
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %73
  %79 = load ptr, ptr %49, align 8, !tbaa !72
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load ptr, ptr %50, align 8, !tbaa !73
  br label %83

83:                                               ; preds = %78, %81
  %84 = phi ptr [ %82, %81 ], [ %79, %78 ]
  %85 = getelementptr inbounds %struct.Object, ptr %84, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %85, ptr noundef nonnull %4) #19
  br label %101

86:                                               ; preds = %73
  %87 = and i32 %66, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.TransData, ptr %56, i64 0, i32 11
  %91 = load ptr, ptr %90, align 8, !tbaa !79
  %92 = getelementptr inbounds %struct.Object, ptr %91, i64 0, i32 103
  %93 = load i8, ptr %92, align 1, !tbaa !80
  %94 = or i8 %93, 7
  store i8 %94, ptr %92, align 1, !tbaa !80
  %95 = load ptr, ptr @G, align 8, !tbaa !85
  %96 = getelementptr inbounds %struct.Main, ptr %95, i64 0, i32 46
  %97 = load ptr, ptr %96, align 8, !tbaa !87
  %98 = load ptr, ptr %51, align 8, !tbaa !89
  call void @BKE_object_handle_update(ptr noundef %97, ptr noundef %98, ptr noundef %91) #19
  %99 = load ptr, ptr %90, align 8, !tbaa !79
  %100 = getelementptr inbounds %struct.Object, ptr %99, i64 0, i32 47, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %100) #18
  br label %101

101:                                              ; preds = %86, %89, %83
  %102 = load ptr, ptr %52, align 8, !tbaa !67
  %103 = call i32 @ED_view3d_project_float_global(ptr noundef %102, ptr noundef nonnull %4, ptr noundef nonnull %7, i32 noundef 0) #19
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %142

105:                                              ; preds = %101
  %106 = load i16, ptr %53, align 2, !tbaa !90
  %107 = sext i16 %106 to i32
  %108 = call zeroext i8 @snapObjectsTransform(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %107) #18
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %142, label %110

110:                                              ; preds = %105
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %2, ptr noundef nonnull %5, ptr noundef nonnull %4) #18
  %111 = getelementptr inbounds %struct.TransData, ptr %56, i64 0, i32 9
  call void @mul_m3_v3(ptr noundef nonnull %111, ptr noundef nonnull %2) #19
  %112 = load ptr, ptr %74, align 8, !tbaa !78
  call fastcc void @add_v3_v3(ptr noundef %112, ptr noundef nonnull %2) #18
  %113 = load i8, ptr %54, align 8, !tbaa !62
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %142, label %115

115:                                              ; preds = %110
  %116 = load i32, ptr %24, align 4, !tbaa !70
  %117 = and i32 %116, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %142, label %119

119:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %16) #17
  %120 = getelementptr inbounds %struct.TransData, ptr %56, i64 0, i32 10, i64 2
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %120, ptr noundef nonnull %6) #18
  %121 = call fastcc float @dot_v3v3(ptr noundef nonnull %120, ptr noundef nonnull %6) #18
  %122 = call fastcc float @saacos(float noundef %121) #18
  call void @axis_angle_to_quat(ptr noundef nonnull %15, ptr noundef nonnull %9, float noundef %122) #19
  call void @quat_to_mat3(ptr noundef nonnull %10, ptr noundef nonnull %15) #19
  %123 = getelementptr inbounds %struct.TransData, ptr %56, i64 0, i32 8
  call void @mul_m3_m3m3(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %123) #19
  call void @mul_m3_m3m3(ptr noundef nonnull %12, ptr noundef nonnull %111, ptr noundef nonnull %11) #19
  %124 = getelementptr inbounds %struct.TransData, ptr %56, i64 0, i32 13
  %125 = load ptr, ptr %124, align 8, !tbaa !91
  %126 = getelementptr inbounds %struct.TransDataExtension, ptr %125, i64 0, i32 4
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %126, ptr noundef %125) #18
  %127 = load ptr, ptr %124, align 8, !tbaa !91
  %128 = getelementptr inbounds %struct.TransDataExtension, ptr %127, i64 0, i32 17
  %129 = load i32, ptr %128, align 8, !tbaa !92
  %130 = trunc i32 %129 to i16
  call void @eulO_to_mat3(ptr noundef nonnull %16, ptr noundef nonnull %13, i16 noundef signext %130) #19
  call void @mul_m3_m3m3(ptr noundef nonnull %14, ptr noundef nonnull %12, ptr noundef nonnull %16) #19
  %131 = load ptr, ptr %124, align 8, !tbaa !91
  %132 = getelementptr inbounds %struct.TransDataExtension, ptr %131, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !94
  %134 = getelementptr inbounds %struct.TransDataExtension, ptr %131, i64 0, i32 17
  %135 = load i32, ptr %134, align 8, !tbaa !92
  %136 = trunc i32 %135 to i16
  call void @mat3_to_compatible_eulO(ptr noundef nonnull %13, ptr noundef %133, i16 noundef signext %136, ptr noundef nonnull %14) #19
  %137 = load ptr, ptr %124, align 8, !tbaa !91
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %13, ptr noundef %137) #18
  %138 = load ptr, ptr %124, align 8, !tbaa !91
  %139 = getelementptr inbounds %struct.TransDataExtension, ptr %138, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !94
  call fastcc void @copy_v3_v3(ptr noundef %140, ptr noundef nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  br label %142

141:                                              ; preds = %55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  br label %147

142:                                              ; preds = %62, %69, %105, %119, %115, %110, %101
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  %143 = add nuw nsw i32 %57, 1
  %144 = getelementptr inbounds %struct.TransData, ptr %56, i64 1
  %145 = load i32, ptr %45, align 8, !tbaa !74
  %146 = icmp slt i32 %143, %145
  br i1 %146, label %55, label %147, !llvm.loop !95

147:                                              ; preds = %142, %44, %141
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #17
  br label %148

148:                                              ; preds = %147, %23, %20, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !96 {
  %3 = load float, ptr %1, align 4, !tbaa !56
  store float %3, ptr %0, align 4, !tbaa !56
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !56
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !56
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !56
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !56
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_object_handle_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ED_view3d_project_float_global(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @snapObjectsTransform(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  store float 0x47DFFFFFE0000000, ptr %7, align 4, !tbaa !56
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !97
  %12 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 51
  %13 = load i8, ptr %12, align 1, !tbaa !115
  %14 = zext i8 %13 to i16
  %15 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !122
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %18 = load ptr, ptr %17, align 8, !tbaa !123
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %20 = load ptr, ptr %19, align 8, !tbaa !67
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %22 = load ptr, ptr %21, align 8, !tbaa !72
  %23 = call fastcc zeroext i8 @snapObjects(ptr noundef %9, i16 noundef signext %14, ptr noundef %16, ptr noundef %18, ptr noundef %20, ptr noundef %22, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %7, i32 noundef %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  ret i8 %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !124 {
  %4 = load float, ptr %1, align 4, !tbaa !56
  %5 = load float, ptr %2, align 4, !tbaa !56
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !56
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !56
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !56
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !56
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !56
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !56
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !56
  ret void
}

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !125 {
  %3 = load float, ptr %1, align 4, !tbaa !56
  %4 = load float, ptr %0, align 4, !tbaa !56
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !56
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !56
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !56
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !56
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !56
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !56
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !126 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !56
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !56
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !56
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !56
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !56
  %15 = load float, ptr %8, align 4, !tbaa !56
  %16 = load float, ptr %2, align 4, !tbaa !56
  %17 = load float, ptr %1, align 4, !tbaa !56
  %18 = load float, ptr %6, align 4, !tbaa !56
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !56
  %23 = load float, ptr %1, align 4, !tbaa !56
  %24 = load float, ptr %10, align 4, !tbaa !56
  %25 = load float, ptr %4, align 4, !tbaa !56
  %26 = load float, ptr %2, align 4, !tbaa !56
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @saacos(float noundef %0) unnamed_addr #5 !PGOFuncName !127 {
  %2 = fcmp ugt float %0, -1.000000e+00
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 1.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call float @acosf(float noundef %0) #19
  br label %7

7:                                                ; preds = %3, %1, %5
  %8 = phi float [ %6, %5 ], [ 0x400921FB60000000, %1 ], [ 0.000000e+00, %3 ]
  ret float %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !128 {
  %3 = load float, ptr %0, align 4, !tbaa !56
  %4 = load float, ptr %1, align 4, !tbaa !56
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !56
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !56
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !56
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !56
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: optsize
declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @quat_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !129 {
  %4 = load float, ptr %1, align 4, !tbaa !56
  %5 = load float, ptr %2, align 4, !tbaa !56
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !56
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !56
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !56
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !56
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !56
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !56
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !56
  ret void
}

; Function Attrs: optsize
declare void @eulO_to_mat3(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mat3_to_compatible_eulO(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @applyGridAbsolute(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = alloca [4 x [4 x float]], align 16
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #17
  %6 = tail call zeroext i8 @activeSnap(ptr noundef %0) #18, !range !49
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %114, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14
  %10 = load i16, ptr %9, align 8, !tbaa !130
  %11 = icmp eq i16 %10, 8
  br i1 %11, label %12, label %114

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !48
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 1
  %19 = select i1 %16, ptr %18, ptr %17
  %20 = load float, ptr %19, align 4, !tbaa !56
  %21 = fcmp oeq float %20, 0.000000e+00
  br i1 %21, label %114, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !70
  %25 = and i32 %24, 6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %29 = load ptr, ptr %28, align 8, !tbaa !72
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %33 = load ptr, ptr %32, align 8, !tbaa !73
  br label %34

34:                                               ; preds = %27, %31
  %35 = phi ptr [ %33, %31 ], [ %29, %27 ]
  %36 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 47
  %37 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %2, ptr noundef nonnull %36) #19
  br label %38

38:                                               ; preds = %34, %22
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !74
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %114

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %44 = load ptr, ptr %43, align 8, !tbaa !71
  %45 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %46 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %47 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %48 = fdiv float 1.000000e+00, %20
  %49 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %50 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  br label %51

51:                                               ; preds = %42, %109
  %52 = phi i32 [ %40, %42 ], [ %110, %109 ]
  %53 = phi ptr [ %44, %42 ], [ %112, %109 ]
  %54 = phi i32 [ 0, %42 ], [ %111, %109 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  %55 = getelementptr inbounds %struct.TransData, ptr %53, i64 0, i32 16
  %56 = load i32, ptr %55, align 8, !tbaa !75
  %57 = and i32 %56, 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %108

59:                                               ; preds = %51
  %60 = and i32 %56, 2048
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %109

62:                                               ; preds = %59
  %63 = load i32, ptr %23, align 4, !tbaa !70
  %64 = and i32 %63, 2048
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.TransData, ptr %53, i64 0, i32 2
  %68 = load float, ptr %67, align 8, !tbaa !77
  %69 = fcmp oeq float %68, 0.000000e+00
  br i1 %69, label %109, label %70

70:                                               ; preds = %66, %62
  %71 = getelementptr inbounds %struct.TransData, ptr %53, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !78
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef %72) #18
  %73 = and i32 %63, 6
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %70
  %76 = load ptr, ptr %45, align 8, !tbaa !72
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load ptr, ptr %46, align 8, !tbaa !73
  br label %80

80:                                               ; preds = %75, %78
  %81 = phi ptr [ %79, %78 ], [ %76, %75 ]
  %82 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %82, ptr noundef nonnull %3) #19
  br label %98

83:                                               ; preds = %70
  %84 = and i32 %63, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %98, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.TransData, ptr %53, i64 0, i32 11
  %88 = load ptr, ptr %87, align 8, !tbaa !79
  %89 = getelementptr inbounds %struct.Object, ptr %88, i64 0, i32 103
  %90 = load i8, ptr %89, align 1, !tbaa !80
  %91 = or i8 %90, 7
  store i8 %91, ptr %89, align 1, !tbaa !80
  %92 = load ptr, ptr @G, align 8, !tbaa !85
  %93 = getelementptr inbounds %struct.Main, ptr %92, i64 0, i32 46
  %94 = load ptr, ptr %93, align 8, !tbaa !87
  %95 = load ptr, ptr %47, align 8, !tbaa !89
  call void @BKE_object_handle_update(ptr noundef %94, ptr noundef %95, ptr noundef %88) #19
  %96 = load ptr, ptr %87, align 8, !tbaa !79
  %97 = getelementptr inbounds %struct.Object, ptr %96, i64 0, i32 47, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %97) #18
  br label %98

98:                                               ; preds = %83, %86, %80
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %4, ptr noundef nonnull %3, float noundef %48) #18
  %99 = load float, ptr %4, align 4, !tbaa !56
  %100 = call float @llvm.floor.f32(float %99)
  store float %100, ptr %4, align 4, !tbaa !56
  %101 = load float, ptr %49, align 4, !tbaa !56
  %102 = call float @llvm.floor.f32(float %101)
  store float %102, ptr %49, align 4, !tbaa !56
  %103 = load float, ptr %50, align 4, !tbaa !56
  %104 = call float @llvm.floor.f32(float %103)
  store float %104, ptr %50, align 4, !tbaa !56
  call fastcc void @mul_v3_fl(ptr noundef nonnull %4, float noundef %20) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %3) #18
  %105 = getelementptr inbounds %struct.TransData, ptr %53, i64 0, i32 9
  call void @mul_m3_v3(ptr noundef nonnull %105, ptr noundef nonnull %5) #19
  %106 = load ptr, ptr %71, align 8, !tbaa !78
  call fastcc void @add_v3_v3(ptr noundef %106, ptr noundef nonnull %5) #18
  %107 = load i32, ptr %39, align 8, !tbaa !74
  br label %109

108:                                              ; preds = %51
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  br label %114

109:                                              ; preds = %98, %59, %66
  %110 = phi i32 [ %107, %98 ], [ %52, %59 ], [ %52, %66 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  %111 = add nuw nsw i32 %54, 1
  %112 = getelementptr inbounds %struct.TransData, ptr %53, i64 1
  %113 = icmp slt i32 %111, %110
  br i1 %113, label %51, label %114, !llvm.loop !131

114:                                              ; preds = %109, %38, %108, %12, %1, %8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !132 {
  %4 = load float, ptr %1, align 4, !tbaa !56
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !56
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !56
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !56
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !56
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #4 !PGOFuncName !133 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !56
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !56
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !56
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @applySnapping(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 5
  %5 = load i8, ptr %4, align 1, !tbaa !69
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %38

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %9 = load i16, ptr %8, align 4, !tbaa !34
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !134
  tail call void %14(ptr noundef nonnull %0) #19
  br label %35

15:                                               ; preds = %7
  %16 = load i16, ptr %3, align 8, !tbaa !130
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %15
  %19 = tail call zeroext i8 @activeSnap(ptr noundef nonnull %0) #18, !range !49
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %18
  %22 = tail call double @PIL_check_seconds_timer() #19
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 17
  %24 = load double, ptr %23, align 8, !tbaa !135
  %25 = fsub double %22, %24
  %26 = fcmp ult double %25, 1.000000e-02
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 19
  %29 = load ptr, ptr %28, align 8, !tbaa !136
  tail call void %29(ptr noundef nonnull %0, ptr noundef %1) #19
  %30 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 20
  %31 = load ptr, ptr %30, align 8, !tbaa !134
  tail call void %31(ptr noundef nonnull %0) #19
  store double %22, ptr %23, align 8, !tbaa !135
  br label %32

32:                                               ; preds = %27, %21
  %33 = tail call zeroext i8 @validSnap(ptr noundef nonnull %0) #18, !range !49
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32, %12
  %36 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 18
  %37 = load ptr, ptr %36, align 8, !tbaa !137
  tail call void %37(ptr noundef nonnull %0, ptr noundef %1) #19
  br label %38

38:                                               ; preds = %35, %32, %15, %18, %2
  ret void
}

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @resetSnapping(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  store i16 0, ptr %3, align 4, !tbaa !34
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 4
  store i8 0, ptr %4, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 5
  store i8 0, ptr %5, align 1, !tbaa !69
  store i16 0, ptr %2, align 8, !tbaa !130
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 3
  store i16 0, ptr %6, align 2, !tbaa !90
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 1
  store i16 0, ptr %7, align 2, !tbaa !138
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 17
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 11
  store <2 x float> zeroinitializer, ptr %9, align 8, !tbaa !56
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 11, i64 2
  store float 0.000000e+00, ptr %10, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 13
  store i8 0, ptr %11, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v3(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !139 {
  %2 = load float, ptr %0, align 4, !tbaa !56
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !56
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !56
  %11 = fcmp oeq float %10, 0.000000e+00
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @initSnapping(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 57
  %4 = load ptr, ptr %3, align 8, !tbaa !140
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 55
  %6 = load i16, ptr %5, align 4, !tbaa !141
  tail call void @resetSnapping(ptr noundef %0) #18
  %7 = icmp eq ptr %1, null
  br i1 %7, label %73, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !142
  %11 = tail call ptr @RNA_struct_find_property(ptr noundef %10, ptr noundef nonnull @.str) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %73, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %9, align 8, !tbaa !142
  %15 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %14, ptr noundef nonnull @.str) #19
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %73, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %9, align 8, !tbaa !142
  %19 = tail call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str) #19
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %106, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !48
  %24 = or i32 %23, 4
  store i32 %24, ptr %22, align 8, !tbaa !48
  %25 = load ptr, ptr %9, align 8, !tbaa !142
  %26 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %25, ptr noundef nonnull @.str.1) #19
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = load ptr, ptr %9, align 8, !tbaa !142
  %30 = tail call i32 @RNA_enum_get(ptr noundef %29, ptr noundef nonnull @.str.1) #19
  %31 = trunc i32 %30 to i16
  br label %32

32:                                               ; preds = %28, %21
  %33 = phi i16 [ %31, %28 ], [ %6, %21 ]
  %34 = load ptr, ptr %9, align 8, !tbaa !142
  %35 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %34, ptr noundef nonnull @.str.2) #19
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %9, align 8, !tbaa !142
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9
  tail call void @RNA_float_get_array(ptr noundef %38, ptr noundef nonnull @.str.2, ptr noundef nonnull %39) #19
  %40 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %41 = load i16, ptr %40, align 4, !tbaa !34
  %42 = or i16 %41, 5
  store i16 %42, ptr %40, align 4, !tbaa !34
  br label %43

43:                                               ; preds = %37, %32
  %44 = load ptr, ptr %9, align 8, !tbaa !142
  %45 = tail call ptr @RNA_struct_find_property(ptr noundef %44, ptr noundef nonnull @.str.3) #19
  %46 = icmp eq ptr %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %9, align 8, !tbaa !142
  %49 = tail call i32 @RNA_boolean_get(ptr noundef %48, ptr noundef nonnull @.str.3) #19
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 4
  store i8 %50, ptr %51, align 8, !tbaa !62
  %52 = load ptr, ptr %9, align 8, !tbaa !142
  %53 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 11
  tail call void @RNA_float_get_array(ptr noundef %52, ptr noundef nonnull @.str.4, ptr noundef nonnull %53) #19
  %54 = tail call fastcc float @normalize_v3(ptr noundef nonnull %53) #18
  br label %55

55:                                               ; preds = %47, %43
  %56 = load ptr, ptr %9, align 8, !tbaa !142
  %57 = tail call ptr @RNA_struct_find_property(ptr noundef %56, ptr noundef nonnull @.str.5) #19
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %9, align 8, !tbaa !142
  %61 = tail call i32 @RNA_boolean_get(ptr noundef %60, ptr noundef nonnull @.str.5) #19
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 5
  store i8 %62, ptr %63, align 1, !tbaa !69
  br label %64

64:                                               ; preds = %59, %55
  %65 = load ptr, ptr %9, align 8, !tbaa !142
  %66 = tail call ptr @RNA_struct_find_property(ptr noundef %65, ptr noundef nonnull @.str.6) #19
  %67 = icmp eq ptr %66, null
  br i1 %67, label %106, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %9, align 8, !tbaa !142
  %70 = tail call i32 @RNA_boolean_get(ptr noundef %69, ptr noundef nonnull @.str.6) #19
  %71 = trunc i32 %70 to i8
  %72 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 6
  store i8 %71, ptr %72, align 2, !tbaa !144
  br label %106

73:                                               ; preds = %13, %8, %2
  %74 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !70
  %76 = and i32 %75, 2097152
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %106, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %80 = load i8, ptr %79, align 8, !tbaa !51
  switch i8 %80, label %106 [
    i8 1, label %81
    i8 6, label %81
    i8 16, label %81
  ]

81:                                               ; preds = %78, %78, %78
  %82 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 54
  %83 = load i16, ptr %82, align 2, !tbaa !145
  %84 = and i16 %83, 1
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %88 = load i32, ptr %87, align 8, !tbaa !48
  %89 = or i32 %88, 4
  store i32 %89, ptr %87, align 8, !tbaa !48
  br label %90

90:                                               ; preds = %86, %81
  %91 = load ptr, ptr %3, align 8, !tbaa !140
  %92 = getelementptr inbounds %struct.ToolSettings, ptr %91, i64 0, i32 54
  %93 = load i16, ptr %92, align 2, !tbaa !145
  %94 = trunc i16 %93 to i8
  %95 = lshr i8 %94, 1
  %96 = and i8 %95, 1
  %97 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 4
  store i8 %96, ptr %97, align 8, !tbaa !62
  %98 = lshr i8 %94, 3
  %99 = and i8 %98, 1
  %100 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 5
  store i8 %99, ptr %100, align 1, !tbaa !69
  %101 = and i16 %93, 16
  %102 = icmp eq i16 %101, 0
  %103 = zext i1 %102 to i8
  %104 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 6
  store i8 %103, ptr %104, align 2, !tbaa !144
  %105 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 7
  store i8 %99, ptr %105, align 1, !tbaa !146
  br label %106

106:                                              ; preds = %78, %73, %90, %17, %68, %64
  %107 = phi i16 [ %33, %68 ], [ %33, %64 ], [ %6, %17 ], [ %6, %90 ], [ %6, %73 ], [ %6, %78 ]
  %108 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 1
  store i16 %107, ptr %108, align 2, !tbaa !138
  tail call fastcc void @initSnappingMode(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !147 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #18
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @initSnappingMode(ptr nocapture noundef %0) unnamed_addr #9 !PGOFuncName !148 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 57
  %3 = load ptr, ptr %2, align 8, !tbaa !140
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %7 = load ptr, ptr %6, align 8, !tbaa !89
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !122
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %11 = load i8, ptr %10, align 8, !tbaa !51
  switch i8 %11, label %24 [
    i8 16, label %12
    i8 6, label %18
  ]

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 5
  store i8 0, ptr %14, align 1, !tbaa !69
  %15 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 52
  %16 = load i8, ptr %15, align 8, !tbaa !149
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %13, align 8, !tbaa !130
  br label %80

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 5
  store i8 0, ptr %20, align 1, !tbaa !69
  %21 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 53
  %22 = load i8, ptr %21, align 1, !tbaa !150
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %19, align 8, !tbaa !130
  br label %33

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 51
  %26 = load i8, ptr %25, align 1, !tbaa !115
  %27 = icmp eq i8 %26, 3
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 5
  store i8 0, ptr %29, align 1, !tbaa !69
  br label %30

30:                                               ; preds = %24, %28
  %31 = zext i8 %26 to i16
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14
  store i16 %31, ptr %32, align 8, !tbaa !130
  switch i8 %11, label %88 [
    i8 1, label %33
    i8 16, label %80
  ]

33:                                               ; preds = %30, %18
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !70
  %36 = and i32 %35, 16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %88

38:                                               ; preds = %33
  tail call fastcc void @setSnappingCallback(ptr noundef nonnull %0) #18
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14
  %40 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 18
  %41 = load ptr, ptr %40, align 8, !tbaa !137
  %42 = icmp ne ptr %41, null
  %43 = icmp ne ptr %5, null
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %60

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %47 = load i16, ptr %46, align 8, !tbaa !151
  switch i16 %47, label %79 [
    i16 1, label %48
    i16 2, label %54
    i16 5, label %54
    i16 22, label %54
    i16 25, label %54
  ]

48:                                               ; preds = %45
  %49 = load i32, ptr %34, align 4, !tbaa !70
  %50 = and i32 %49, 2048
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 3
  store i16 2, ptr %53, align 2, !tbaa !90
  br label %90

54:                                               ; preds = %45, %45, %45, %45, %48
  %55 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 6
  %56 = load i8, ptr %55, align 2, !tbaa !144
  %57 = icmp eq i8 %56, 0
  %58 = select i1 %57, i16 2, i16 0
  %59 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 3
  store i16 %58, ptr %59, align 2, !tbaa !90
  br label %90

60:                                               ; preds = %38
  %61 = icmp eq ptr %5, null
  %62 = select i1 %42, i1 %61, i1 false
  %63 = icmp ne ptr %9, null
  %64 = select i1 %62, i1 %63, i1 false
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.Base, ptr %9, i64 0, i32 7
  %67 = load ptr, ptr %66, align 8, !tbaa !152
  %68 = icmp eq ptr %67, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.Object, ptr %67, i64 0, i32 27
  %71 = load i32, ptr %70, align 8, !tbaa !154
  %72 = and i32 %71, 32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 3
  store i16 0, ptr %75, align 2, !tbaa !90
  br label %90

76:                                               ; preds = %69, %65, %60
  br i1 %62, label %77, label %79

77:                                               ; preds = %76
  %78 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 3
  store i16 1, ptr %78, align 2, !tbaa !90
  br label %90

79:                                               ; preds = %45, %76
  store i16 0, ptr %39, align 8, !tbaa !130
  br label %90

80:                                               ; preds = %30, %12
  tail call fastcc void @setSnappingCallback(ptr noundef nonnull %0) #18
  %81 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 18
  %82 = load ptr, ptr %81, align 8, !tbaa !137
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 3
  store i16 1, ptr %85, align 2, !tbaa !90
  br label %90

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14
  store i16 0, ptr %87, align 8, !tbaa !130
  br label %90

88:                                               ; preds = %30, %33
  %89 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14
  store i16 0, ptr %89, align 8, !tbaa !130
  br label %90

90:                                               ; preds = %88, %86, %84, %54, %52, %77, %79, %74
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @addSnapPoint(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %3 = load i16, ptr %2, align 4, !tbaa !34
  %4 = and i16 %3, 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %8 = load i8, ptr %7, align 8, !tbaa !51
  %9 = icmp eq i8 %8, 1
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %12 = tail call ptr %11(i64 noundef 32, ptr noundef nonnull @.str.7) #19
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 15
  store ptr %12, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.TransSnapPoint, ptr %12, i64 0, i32 2
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %15) #18
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 14
  tail call void @BLI_addtail(ptr noundef nonnull %16, ptr noundef %12) #19
  %17 = load i16, ptr %2, align 4, !tbaa !34
  %18 = or i16 %17, 8
  store i16 %18, ptr %2, align 4, !tbaa !34
  br label %19

19:                                               ; preds = %10, %6, %1
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !155 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #18
  %4 = call fastcc float @dot_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @removeSnapPoint(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %3 = load i16, ptr %2, align 4, !tbaa !34
  %4 = and i16 %3, 8
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @updateSelectedSnapPoint(ptr noundef nonnull %0) #18, !range !65
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 14
  tail call void @BLI_freelinkN(ptr noundef nonnull %12, ptr noundef nonnull %9) #19
  %13 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %12) #18, !range !49
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i16, ptr %2, align 4, !tbaa !34
  %17 = and i16 %16, -9
  store i16 %17, ptr %2, align 4, !tbaa !34
  br label %18

18:                                               ; preds = %15, %11
  store ptr null, ptr %8, align 8, !tbaa !53
  br label %19

19:                                               ; preds = %6, %18, %1
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !156 {
  %2 = load ptr, ptr %0, align 8, !tbaa !157
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @getSnapPoint(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %7, align 4, !tbaa !56
  store <2 x float> zeroinitializer, ptr %1, align 4, !tbaa !56
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi ptr [ %13, %8 ], [ %4, %6 ]
  %10 = phi i32 [ %12, %8 ], [ 0, %6 ]
  %11 = getelementptr inbounds %struct.TransSnapPoint, ptr %9, i64 0, i32 2
  tail call fastcc void @add_v3_v3(ptr noundef nonnull %1, ptr noundef nonnull %11) #18
  %12 = add nuw nsw i32 %10, 1
  %13 = load ptr, ptr %9, align 8, !tbaa !52
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %8, !llvm.loop !158

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %17 = load i16, ptr %16, align 4, !tbaa !34
  %18 = and i16 %17, 4
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9
  tail call fastcc void @add_v3_v3(ptr noundef nonnull %1, ptr noundef nonnull %21) #18
  %22 = add nuw nsw i32 %10, 2
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi i32 [ %22, %20 ], [ %12, %15 ]
  %25 = sitofp i32 %24 to float
  %26 = fdiv float 1.000000e+00, %25
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %1, float noundef %26) #18
  br label %29

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %28) #18
  br label %29

29:                                               ; preds = %27, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @snapObjects(ptr noundef %0, i16 noundef signext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nocapture noundef %7, ptr noundef %8, ptr noundef %9, ptr nocapture noundef %10, i32 noundef %11) unnamed_addr #1 !PGOFuncName !159 {
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #17
  %16 = call zeroext i8 @ED_view3d_win_to_ray_ex(ptr noundef %4, ptr noundef %3, ptr noundef %6, ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef nonnull %13, i8 noundef zeroext 1) #19
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = call fastcc zeroext i8 @snapObjectsRay(ptr noundef %0, i16 noundef signext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef null, ptr noundef null, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef %10, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %11) #18
  br label %20

20:                                               ; preds = %12, %18
  %21 = phi i8 [ %19, %18 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #17
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @snapObjectsContext(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = alloca float, align 4
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  %9 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !160
  %11 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %12 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %13 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  store float 0x47DFFFFFE0000000, ptr %7, align 4, !tbaa !56
  %14 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !97
  %16 = getelementptr inbounds %struct.ToolSettings, ptr %15, i64 0, i32 51
  %17 = load i8, ptr %16, align 1, !tbaa !115
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !122
  %21 = call fastcc zeroext i8 @snapObjects(ptr noundef %11, i16 noundef signext %18, ptr noundef %20, ptr noundef %10, ptr noundef %12, ptr noundef %13, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %7, i32 noundef %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  ret i8 %21
}

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @snapObjectsEx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i16 noundef signext %5, ptr noundef %6, ptr nocapture noundef %7, ptr noundef %8, ptr noundef %9, ptr nocapture noundef %10, i32 noundef %11) local_unnamed_addr #1 {
  %13 = tail call fastcc zeroext i8 @snapObjects(ptr noundef %0, i16 noundef signext %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef %11) #18
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @snapObjectsRayEx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i16 noundef signext %5, ptr noundef %6, ptr noundef %7, ptr nocapture noundef readonly %8, ptr nocapture noundef readonly %9, ptr nocapture noundef %10, ptr nocapture noundef readonly %11, ptr nocapture noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15) local_unnamed_addr #1 {
  %17 = tail call fastcc zeroext i8 @snapObjectsRay(ptr noundef %0, i16 noundef signext %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %8, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15) #18
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @snapObjectsRay(ptr noundef %0, i16 noundef signext %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nocapture noundef readonly %8, ptr nocapture noundef readonly %9, ptr nocapture noundef readonly %10, ptr nocapture noundef %11, ptr nocapture noundef readonly %12, ptr nocapture noundef %13, ptr noundef %14, ptr noundef %15, i32 noundef %16) unnamed_addr #1 !PGOFuncName !162 {
  %18 = icmp eq i32 %16, 0
  %19 = icmp ne ptr %5, null
  %20 = and i1 %19, %18
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 47
  %23 = tail call fastcc zeroext i8 @snapObject(ptr noundef %0, i16 noundef signext %1, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %22, i8 noundef zeroext 1, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %12, ptr noundef %14, ptr noundef %15, ptr noundef %13, ptr noundef %11) #18, !range !49
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i8 [ %23, %21 ], [ 0, %17 ]
  %26 = icmp eq ptr %2, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.Base, ptr %2, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !152
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 27
  %33 = load i32, ptr %32, align 8, !tbaa !154
  %34 = and i32 %33, 32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 47
  %38 = tail call fastcc zeroext i8 @snapObject(ptr noundef %0, i16 noundef signext %1, ptr noundef %4, ptr noundef nonnull %29, ptr noundef nonnull %37, i8 noundef zeroext 0, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %12, ptr noundef %14, ptr noundef %15, ptr noundef %13, ptr noundef %11) #18, !range !49
  %39 = or i8 %38, %25
  br label %40

40:                                               ; preds = %36, %31, %27, %24
  %41 = phi i8 [ %39, %36 ], [ %25, %31 ], [ %25, %27 ], [ %25, %24 ]
  %42 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !52
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
  %55 = load i32, ptr %54, align 8, !tbaa !163
  %56 = load i32, ptr %49, align 8, !tbaa !66
  %57 = and i32 %56, %55
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %107, label %59

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.Base, ptr %52, i64 0, i32 7
  %61 = load ptr, ptr %60, align 8, !tbaa !152
  %62 = getelementptr inbounds %struct.Object, ptr %61, i64 0, i32 102
  %63 = load i8, ptr %62, align 8, !tbaa !164
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %107

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.Base, ptr %52, i64 0, i32 4
  %68 = load i32, ptr %67, align 8, !tbaa !165
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
  %80 = load i16, ptr %79, align 8, !tbaa !166
  %81 = and i16 %80, 2840
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %102, label %83

83:                                               ; preds = %78
  %84 = load ptr, ptr @G, align 8, !tbaa !85
  %85 = getelementptr inbounds %struct.Main, ptr %84, i64 0, i32 46
  %86 = load ptr, ptr %85, align 8, !tbaa !87
  %87 = tail call ptr @object_duplilist(ptr noundef %86, ptr noundef %0, ptr noundef nonnull %61) #19
  %88 = load ptr, ptr %87, align 8, !tbaa !52
  %89 = icmp eq ptr %88, null
  br i1 %89, label %100, label %90

90:                                               ; preds = %83, %90
  %91 = phi ptr [ %98, %90 ], [ %88, %83 ]
  %92 = phi i8 [ %97, %90 ], [ %53, %83 ]
  %93 = getelementptr inbounds %struct.DupliObject, ptr %91, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !167
  %95 = getelementptr inbounds %struct.DupliObject, ptr %91, i64 0, i32 3
  %96 = tail call fastcc zeroext i8 @snapObject(ptr noundef %0, i16 noundef signext %1, ptr noundef %4, ptr noundef %94, ptr noundef nonnull %95, i8 noundef zeroext 0, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %12, ptr noundef %14, ptr noundef %15, ptr noundef %13, ptr noundef %11) #18, !range !49
  %97 = or i8 %96, %92
  %98 = load ptr, ptr %91, align 8, !tbaa !52
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %90, !llvm.loop !169

100:                                              ; preds = %90, %83
  %101 = phi i8 [ %53, %83 ], [ %97, %90 ]
  tail call void @free_object_duplilist(ptr noundef nonnull %87) #19
  br label %102

102:                                              ; preds = %100, %78
  %103 = phi i8 [ %101, %100 ], [ %53, %78 ]
  %104 = getelementptr inbounds %struct.Object, ptr %61, i64 0, i32 47
  %105 = tail call fastcc zeroext i8 @snapObject(ptr noundef %0, i16 noundef signext %1, ptr noundef %4, ptr noundef %61, ptr noundef nonnull %104, i8 noundef zeroext 0, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %12, ptr noundef %14, ptr noundef %15, ptr noundef %13, ptr noundef %11) #18, !range !49
  %106 = or i8 %105, %103
  br label %107

107:                                              ; preds = %75, %51, %59, %66, %76, %102
  %108 = phi i8 [ %106, %102 ], [ %53, %76 ], [ %53, %75 ], [ %53, %66 ], [ %53, %59 ], [ %53, %51 ]
  %109 = load ptr, ptr %52, align 8, !tbaa !52
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %51, !llvm.loop !170

111:                                              ; preds = %107, %40
  %112 = phi i8 [ %41, %40 ], [ %108, %107 ]
  ret i8 %112
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @peelObjectsTransForm(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %8 = load ptr, ptr %7, align 8, !tbaa !123
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  tail call fastcc void @peelObjects(ptr noundef %6, ptr noundef %8, ptr noundef %10, ptr noundef %12, ptr noundef %1, ptr noundef %2, i32 noundef %3) #18
  ret i8 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @peelObjects(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #1 !PGOFuncName !171 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  %10 = call zeroext i8 @ED_view3d_win_to_ray(ptr noundef %2, ptr noundef %1, ptr noundef %5, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext 1) #19
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %98, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = icmp eq ptr %14, null
  br i1 %15, label %97, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 22
  %18 = load i64, ptr @CD_MASK_BAREMESH, align 8
  %19 = icmp eq i32 %6, 2
  %20 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  %21 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  br label %22

22:                                               ; preds = %16, %94
  %23 = phi ptr [ %14, %16 ], [ %95, %94 ]
  %24 = getelementptr inbounds %struct.Base, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !163
  %26 = load i32, ptr %17, align 8, !tbaa !172
  %27 = and i32 %26, %25
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %94, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.Base, ptr %23, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !152
  %32 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 102
  %33 = load i8, ptr %32, align 8, !tbaa !164
  %34 = and i8 %33, 3
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %94

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 55
  %38 = load i16, ptr %37, align 8, !tbaa !166
  %39 = and i16 %38, 2840
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %71, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr @G, align 8, !tbaa !85
  %43 = getelementptr inbounds %struct.Main, ptr %42, i64 0, i32 46
  %44 = load ptr, ptr %43, align 8, !tbaa !87
  %45 = call ptr @object_duplilist(ptr noundef %44, ptr noundef %0, ptr noundef nonnull %31) #19
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = icmp eq ptr %46, null
  br i1 %47, label %70, label %48

48:                                               ; preds = %41, %67
  %49 = phi ptr [ %68, %67 ], [ %46, %41 ]
  %50 = getelementptr inbounds %struct.DupliObject, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !167
  %52 = getelementptr inbounds %struct.Object, ptr %51, i64 0, i32 3
  %53 = load i16, ptr %52, align 8, !tbaa !151
  %54 = icmp eq i16 %53, 1
  br i1 %54, label %55, label %67

55:                                               ; preds = %48
  %56 = icmp eq ptr %51, %3
  br i1 %56, label %60, label %57

57:                                               ; preds = %55
  %58 = call ptr @mesh_get_derived_final(ptr noundef %0, ptr noundef nonnull %51, i64 noundef %18) #19
  %59 = getelementptr inbounds %struct.Object, ptr %51, i64 0, i32 47
  call fastcc void @peelDerivedMesh(ptr noundef nonnull %51, ptr noundef %58, ptr noundef nonnull %59, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %4) #18
  br label %63

60:                                               ; preds = %55
  %61 = call ptr @BKE_editmesh_from_object(ptr noundef nonnull %3) #19
  %62 = call ptr @editbmesh_get_derived_cage(ptr noundef %0, ptr noundef %3, ptr noundef %61, i64 noundef %18) #19
  call fastcc void @peelDerivedMesh(ptr noundef nonnull %3, ptr noundef %62, ptr noundef nonnull %20, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %4) #18
  br label %63

63:                                               ; preds = %60, %57
  %64 = phi ptr [ %58, %57 ], [ %62, %60 ]
  %65 = getelementptr inbounds %struct.DerivedMesh, ptr %64, i64 0, i32 95
  %66 = load ptr, ptr %65, align 8, !tbaa !173
  call void %66(ptr noundef %64) #19
  br label %67

67:                                               ; preds = %63, %48
  %68 = load ptr, ptr %49, align 8, !tbaa !52
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %48, !llvm.loop !176

70:                                               ; preds = %67, %41
  call void @free_object_duplilist(ptr noundef nonnull %45) #19
  br label %71

71:                                               ; preds = %70, %36
  %72 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 3
  %73 = load i16, ptr %72, align 8, !tbaa !151
  %74 = icmp eq i16 %73, 1
  br i1 %74, label %75, label %94

75:                                               ; preds = %71
  %76 = icmp eq ptr %31, %3
  br i1 %76, label %86, label %77

77:                                               ; preds = %75
  switch i32 %6, label %94 [
    i32 1, label %78
    i32 0, label %83
    i32 2, label %83
  ]

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct.Base, ptr %23, i64 0, i32 4
  %80 = load i32, ptr %79, align 8, !tbaa !165
  %81 = and i32 %80, 3
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %77, %77, %78
  %84 = call ptr @mesh_get_derived_final(ptr noundef %0, ptr noundef nonnull %31, i64 noundef %18) #19
  %85 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 47
  call fastcc void @peelDerivedMesh(ptr noundef nonnull %31, ptr noundef %84, ptr noundef nonnull %85, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %4) #18
  br label %90

86:                                               ; preds = %75
  br i1 %19, label %94, label %87

87:                                               ; preds = %86
  %88 = call ptr @BKE_editmesh_from_object(ptr noundef nonnull %3) #19
  %89 = call ptr @editbmesh_get_derived_cage(ptr noundef %0, ptr noundef %3, ptr noundef %88, i64 noundef %18) #19
  call fastcc void @peelDerivedMesh(ptr noundef nonnull %3, ptr noundef %89, ptr noundef nonnull %21, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %4) #18
  br label %90

90:                                               ; preds = %83, %87
  %91 = phi ptr [ %89, %87 ], [ %84, %83 ]
  %92 = getelementptr inbounds %struct.DerivedMesh, ptr %91, i64 0, i32 95
  %93 = load ptr, ptr %92, align 8, !tbaa !173
  call void %93(ptr noundef %91) #19
  br label %94

94:                                               ; preds = %90, %77, %78, %71, %86, %22, %29
  %95 = load ptr, ptr %23, align 8, !tbaa !52
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %22, !llvm.loop !177

97:                                               ; preds = %94, %12
  call void @BLI_sortlist(ptr noundef %4, ptr noundef nonnull @cmpPeel) #19
  call fastcc void @removeDoublesPeel(ptr noundef %4) #18
  br label %98

98:                                               ; preds = %7, %97
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @peelObjectsContext(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %6 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  %7 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !160
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %10 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  tail call fastcc void @peelObjects(ptr noundef %5, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %1, ptr noundef %2, i32 noundef %3) #18
  ret i8 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @snapNodesTransform(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 57
  %8 = load ptr, ptr %7, align 8, !tbaa !140
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %10 = load ptr, ptr %9, align 8, !tbaa !178
  %11 = getelementptr inbounds %struct.ScrArea, ptr %10, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !160
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %14 = load ptr, ptr %13, align 8, !tbaa !67
  %15 = tail call fastcc zeroext i8 @snapNodes(ptr noundef %8, ptr noundef %12, ptr noundef %14, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #18, !range !49
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @snapNodes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, ptr noundef %5, ptr nocapture noundef writeonly %6, i32 noundef %7) unnamed_addr #1 !PGOFuncName !179 {
  %9 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !180
  store i8 0, ptr %6, align 1, !tbaa !50
  %11 = getelementptr inbounds %struct.bNodeTree, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  br label %16

16:                                               ; preds = %14, %24
  %17 = phi ptr [ %12, %14 ], [ %26, %24 ]
  %18 = phi i8 [ 0, %14 ], [ %25, %24 ]
  %19 = tail call fastcc zeroext i8 @snapNodeTest(ptr noundef nonnull %15, ptr noundef nonnull %17, i32 noundef %7) #18, !range !49
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = tail call fastcc zeroext i8 @snapNode(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %17, ptr noundef %3, ptr noundef %5, ptr noundef %4, ptr noundef nonnull %6) #18
  %23 = or i8 %22, %18
  br label %24

24:                                               ; preds = %16, %21
  %25 = phi i8 [ %23, %21 ], [ %18, %16 ]
  %26 = load ptr, ptr %17, align 8, !tbaa !52
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %16, !llvm.loop !183

28:                                               ; preds = %24, %8
  %29 = phi i8 [ 0, %8 ], [ %25, %24 ]
  ret i8 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @snapNodesContext(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %9 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  %11 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  %12 = tail call fastcc zeroext i8 @snapNodes(ptr noundef %10, ptr noundef %11, ptr noundef %8, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #18, !range !49
  ret i8 %12
}

; Function Attrs: optsize
declare ptr @CTX_wm_space_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @snapGridIncrementAction(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  %6 = load <2 x float>, ptr %5, align 4, !tbaa !56
  store <2 x float> %6, ptr %4, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !56
  %9 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float %8, ptr %9, align 8, !tbaa !56
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  %11 = load i16, ptr %10, align 2, !tbaa !184
  %12 = sext i16 %11 to i32
  call fastcc void @applyGridIncrement(ptr noundef %0, ptr noundef %1, i32 noundef %12, ptr noundef nonnull %4, i32 noundef %2) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @applyGridIncrement(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #1 !PGOFuncName !185 {
  %6 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) @__const.applyGridIncrement.asp, i64 12, i1 false)
  %7 = icmp sgt i32 %2, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %2) #18
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ 2, %8 ], [ %2, %5 ]
  %12 = zext i32 %4 to i64
  %13 = getelementptr inbounds float, ptr %3, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !56
  %15 = fcmp oeq float %14, 0.000000e+00
  br i1 %15, label %63, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %18 = load i8, ptr %17, align 8, !tbaa !51
  %19 = icmp eq i8 %18, 6
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  %21 = load i32, ptr %0, align 8, !tbaa !186
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %44

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !187
  %26 = and i32 %25, 128
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %30 = load ptr, ptr %29, align 8, !tbaa !178
  %31 = getelementptr inbounds %struct.ScrArea, ptr %30, i64 0, i32 19
  %32 = load ptr, ptr %31, align 8, !tbaa !160
  %33 = getelementptr inbounds float, ptr %6, i64 1
  call void @ED_space_image_get_aspect(ptr noundef %32, ptr noundef nonnull %6, ptr noundef nonnull %33) #19
  br label %44

34:                                               ; preds = %23
  %35 = and i32 %25, 256
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %6, align 8, !tbaa !56
  br label %44

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %40 = load ptr, ptr %39, align 8, !tbaa !178
  %41 = getelementptr inbounds %struct.ScrArea, ptr %40, i64 0, i32 19
  %42 = load ptr, ptr %41, align 8, !tbaa !160
  %43 = getelementptr inbounds float, ptr %6, i64 1
  call void @ED_space_image_get_uv_aspect(ptr noundef %42, ptr noundef nonnull %6, ptr noundef nonnull %43) #19
  br label %44

44:                                               ; preds = %28, %38, %37, %20, %16
  %45 = icmp slt i32 %11, 0
  br i1 %45, label %63, label %46

46:                                               ; preds = %44
  %47 = add nuw nsw i32 %11, 1
  %48 = zext nneg i32 %47 to i64
  br label %49

49:                                               ; preds = %46, %49
  %50 = phi i64 [ 0, %46 ], [ %61, %49 ]
  %51 = load float, ptr %13, align 4, !tbaa !56
  %52 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %50
  %53 = load float, ptr %52, align 4, !tbaa !56
  %54 = fmul float %51, %53
  %55 = getelementptr inbounds float, ptr %1, i64 %50
  %56 = load float, ptr %55, align 4, !tbaa !56
  %57 = fdiv float %56, %54
  %58 = fadd float %57, 5.000000e-01
  %59 = call float @llvm.floor.f32(float %58)
  %60 = fmul float %54, %59
  store float %60, ptr %55, align 4, !tbaa !56
  %61 = add nuw nsw i64 %50, 1
  %62 = icmp eq i64 %61, %48
  br i1 %62, label %63, label %49, !llvm.loop !188

63:                                               ; preds = %49, %44, %10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @snapGridIncrement(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14
  %4 = load i16, ptr %3, align 8, !tbaa !130
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = tail call zeroext i8 @activeSnap(ptr noundef nonnull %0) #18, !range !49
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !48
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  %14 = zext nneg i8 %7 to i32
  %15 = select i1 %13, i32 %14, i32 2
  br label %16

16:                                               ; preds = %9, %6
  %17 = phi i32 [ 0, %6 ], [ %15, %9 ]
  tail call void @snapGridIncrementAction(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %17) #18
  br label %18

18:                                               ; preds = %2, %16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !189 {
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
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #7 !PGOFuncName !190 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !56
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @setSnappingCallback(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !191 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 19
  store ptr @CalcSnapGeometry, ptr %2, align 8, !tbaa !136
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 1
  %4 = load i16, ptr %3, align 2, !tbaa !138
  %5 = icmp ult i16 %4, 4
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = zext nneg i16 %4 to i64
  %8 = getelementptr inbounds [4 x ptr], ptr @switch.table.setSnappingCallback, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 20
  store ptr %9, ptr %10, align 8, !tbaa !134
  br label %11

11:                                               ; preds = %1, %6
  %12 = load i32, ptr %0, align 8, !tbaa !186
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 18
  switch i32 %12, label %26 [
    i32 1, label %14
    i32 2, label %16
    i32 3, label %21
  ]

14:                                               ; preds = %11
  store ptr @ApplySnapTranslation, ptr %13, align 8, !tbaa !137
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 21
  store ptr @TranslationBetween, ptr %15, align 8, !tbaa !192
  br label %27

16:                                               ; preds = %11
  store ptr @ApplySnapRotation, ptr %13, align 8, !tbaa !137
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 21
  store ptr @RotationBetween, ptr %17, align 8, !tbaa !192
  %18 = icmp eq i16 %4, 1
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  store i16 2, ptr %3, align 2, !tbaa !138
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 20
  store ptr @TargetSnapMedian, ptr %20, align 8, !tbaa !134
  br label %27

21:                                               ; preds = %11
  store ptr @ApplySnapResize, ptr %13, align 8, !tbaa !137
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 21
  store ptr @ResizeBetween, ptr %22, align 8, !tbaa !192
  %23 = icmp eq i16 %4, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  store i16 2, ptr %3, align 2, !tbaa !138
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 20
  store ptr @TargetSnapMedian, ptr %25, align 8, !tbaa !134
  br label %27

26:                                               ; preds = %11
  store ptr null, ptr %13, align 8, !tbaa !137
  br label %27

27:                                               ; preds = %21, %24, %16, %19, %26, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @CalcSnapGeometry(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !193 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 8
  %5 = alloca [2 x float], align 8
  %6 = alloca float, align 4
  %7 = alloca %struct.ListBase, align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca [2 x float], align 4
  %14 = alloca [2 x float], align 4
  %15 = alloca float, align 4
  %16 = alloca i8, align 1
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %18 = load i8, ptr %17, align 8, !tbaa !51
  switch i8 %18, label %194 [
    i8 1, label %19
    i8 6, label %127
    i8 16, label %175
  ]

19:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store float 3.000000e+01, ptr %6, align 4, !tbaa !56
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61
  %21 = load <2 x i32>, ptr %20, align 8, !tbaa !66
  %22 = sitofp <2 x i32> %21 to <2 x float>
  store <2 x float> %22, ptr %5, align 8, !tbaa !56
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14
  %24 = load i16, ptr %23, align 8, !tbaa !130
  %25 = icmp eq i16 %24, 4
  br i1 %25, label %26, label %102

26:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i64 12, i1 false)
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %7) #18
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 3
  %28 = load i16, ptr %27, align 2, !tbaa !90
  %29 = sext i16 %28 to i32
  %30 = call zeroext i8 @peelObjectsTransForm(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %5, i32 noundef %29) #18
  %31 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9
  %32 = load ptr, ptr %7, align 8, !tbaa !52
  %33 = icmp eq ptr %32, null
  br i1 %33, label %100, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 57
  br label %36

36:                                               ; preds = %34, %92
  %37 = phi ptr [ %32, %34 ], [ %94, %92 ]
  %38 = phi float [ 0x47EFFFFFE0000000, %34 ], [ %93, %92 ]
  %39 = getelementptr inbounds %struct.DepthPeel, ptr %37, i64 0, i32 6
  %40 = load i32, ptr %39, align 8, !tbaa !194
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %92

42:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  store i32 1, ptr %39, align 8, !tbaa !194
  %43 = load ptr, ptr %35, align 8, !tbaa !140
  %44 = getelementptr inbounds %struct.ToolSettings, ptr %43, i64 0, i32 54
  %45 = load i16, ptr %44, align 2, !tbaa !145
  %46 = and i16 %45, 4
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load ptr, ptr %37, align 8, !tbaa !196
  %50 = icmp eq ptr %49, null
  br i1 %50, label %84, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.DepthPeel, ptr %37, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !197
  br label %56

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.DepthPeel, ptr %37, i64 0, i32 5
  br label %68

56:                                               ; preds = %51, %64
  %57 = phi ptr [ %49, %51 ], [ %66, %64 ]
  %58 = phi ptr [ null, %51 ], [ %65, %64 ]
  %59 = getelementptr inbounds %struct.DepthPeel, ptr %57, i64 0, i32 5
  %60 = load ptr, ptr %59, align 8, !tbaa !197
  %61 = icmp eq ptr %60, %53
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.DepthPeel, ptr %57, i64 0, i32 6
  store i32 1, ptr %63, align 8, !tbaa !194
  br label %64

64:                                               ; preds = %56, %62
  %65 = phi ptr [ %57, %62 ], [ %58, %56 ]
  %66 = load ptr, ptr %57, align 8, !tbaa !196
  %67 = icmp eq ptr %66, null
  br i1 %67, label %77, label %56, !llvm.loop !198

68:                                               ; preds = %54, %72
  %69 = phi ptr [ %70, %72 ], [ %37, %54 ]
  %70 = load ptr, ptr %69, align 8, !tbaa !196
  %71 = icmp eq ptr %70, null
  br i1 %71, label %84, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.DepthPeel, ptr %70, i64 0, i32 5
  %74 = load ptr, ptr %73, align 8, !tbaa !197
  %75 = load ptr, ptr %55, align 8, !tbaa !197
  %76 = icmp eq ptr %74, %75
  br i1 %76, label %79, label %68, !llvm.loop !199

77:                                               ; preds = %64
  %78 = icmp eq ptr %65, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %72, %77
  %80 = phi ptr [ %65, %77 ], [ %70, %72 ]
  %81 = getelementptr inbounds %struct.DepthPeel, ptr %80, i64 0, i32 6
  store i32 1, ptr %81, align 8, !tbaa !194
  %82 = getelementptr inbounds %struct.DepthPeel, ptr %37, i64 0, i32 3
  %83 = getelementptr inbounds %struct.DepthPeel, ptr %80, i64 0, i32 3
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %82, ptr noundef nonnull %83) #18
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef 5.000000e-01) #18
  br label %86

84:                                               ; preds = %68, %48, %77
  %85 = getelementptr inbounds %struct.DepthPeel, ptr %37, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %85) #18
  br label %86

86:                                               ; preds = %79, %84
  %87 = call fastcc float @len_v3v3(ptr noundef nonnull %31, ptr noundef nonnull %9) #18
  %88 = fcmp olt float %87, %38
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %9) #18
  br label %90

90:                                               ; preds = %86, %89
  %91 = phi float [ %87, %89 ], [ %38, %86 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  br label %92

92:                                               ; preds = %90, %36
  %93 = phi float [ %91, %90 ], [ %38, %36 ]
  %94 = load ptr, ptr %37, align 8, !tbaa !52
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %36, !llvm.loop !200

96:                                               ; preds = %92
  %97 = fcmp une float %93, 0x47EFFFFFE0000000
  br i1 %97, label %98, label %100

98:                                               ; preds = %96
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %8) #18
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !56
  %99 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 1.000000e+00, ptr %99, align 8, !tbaa !56
  br label %100

100:                                              ; preds = %26, %98, %96
  %101 = phi i8 [ 1, %98 ], [ 0, %96 ], [ 0, %26 ]
  call void @BLI_freelistN(ptr noundef nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #17
  br label %107

102:                                              ; preds = %19
  %103 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 3
  %104 = load i16, ptr %103, align 2, !tbaa !90
  %105 = sext i16 %104 to i32
  %106 = call zeroext i8 @snapObjectsTransform(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %105) #18
  br label %107

107:                                              ; preds = %102, %100
  %108 = phi i8 [ %101, %100 ], [ %106, %102 ]
  %109 = icmp eq i8 %108, 1
  br i1 %109, label %110, label %122

110:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #17
  %111 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %10, ptr noundef nonnull %3, ptr noundef nonnull %111) #18
  %112 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  store float 0.000000e+00, ptr %112, align 4, !tbaa !56
  %113 = call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %10) #18, !range !49
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 12
  call fastcc void @copy_v3_v3(ptr noundef nonnull %116, ptr noundef nonnull %10) #18
  br label %117

117:                                              ; preds = %115, %110
  call fastcc void @copy_v3_v3(ptr noundef nonnull %111, ptr noundef nonnull %3) #18
  %118 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 11
  call fastcc void @copy_v3_v3(ptr noundef nonnull %118, ptr noundef nonnull %4) #18
  %119 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %120 = load i16, ptr %119, align 4, !tbaa !34
  %121 = or i16 %120, 4
  store i16 %121, ptr %119, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #17
  br label %126

122:                                              ; preds = %107
  %123 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %124 = load i16, ptr %123, align 4, !tbaa !34
  %125 = and i16 %124, -5
  store i16 %125, ptr %123, align 4, !tbaa !34
  br label %126

126:                                              ; preds = %122, %117
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  br label %194

127:                                              ; preds = %2
  %128 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %129 = load ptr, ptr %128, align 8, !tbaa !72
  %130 = icmp eq ptr %129, null
  br i1 %130, label %194, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.Object, ptr %129, i64 0, i32 3
  %133 = load i16, ptr %132, align 8, !tbaa !151
  %134 = icmp eq i16 %133, 1
  br i1 %134, label %135, label %194

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %137 = load ptr, ptr %136, align 8, !tbaa !178
  %138 = getelementptr inbounds %struct.ScrArea, ptr %137, i64 0, i32 19
  %139 = load ptr, ptr %138, align 8, !tbaa !160
  %140 = tail call ptr @ED_space_image(ptr noundef %139) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #17
  %141 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %142 = load ptr, ptr %141, align 8, !tbaa !67
  %143 = getelementptr inbounds %struct.ARegion, ptr %142, i64 0, i32 2
  %144 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61
  %145 = load i32, ptr %144, align 8, !tbaa !66
  %146 = sitofp i32 %145 to float
  %147 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61, i64 1
  %148 = load i32, ptr %147, align 4, !tbaa !66
  %149 = sitofp i32 %148 to float
  %150 = getelementptr inbounds [2 x float], ptr %13, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %143, float noundef %146, float noundef %149, ptr noundef nonnull %13, ptr noundef nonnull %150) #19
  %151 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %152 = load ptr, ptr %151, align 8, !tbaa !89
  %153 = load ptr, ptr %128, align 8, !tbaa !72
  %154 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9
  %155 = call zeroext i8 @ED_uvedit_nearest_uv(ptr noundef %152, ptr noundef %153, ptr noundef %140, ptr noundef nonnull %13, ptr noundef nonnull %154) #19
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %170, label %157

157:                                              ; preds = %135
  %158 = load ptr, ptr %136, align 8, !tbaa !178
  %159 = getelementptr inbounds %struct.ScrArea, ptr %158, i64 0, i32 19
  %160 = load ptr, ptr %159, align 8, !tbaa !160
  call void @ED_space_image_get_uv_aspect(ptr noundef %160, ptr noundef nonnull %11, ptr noundef nonnull %12) #19
  %161 = load float, ptr %11, align 4, !tbaa !56
  %162 = load float, ptr %12, align 4, !tbaa !56
  %163 = load <2 x float>, ptr %154, align 8, !tbaa !56
  %164 = insertelement <2 x float> poison, float %161, i64 0
  %165 = insertelement <2 x float> %164, float %162, i64 1
  %166 = fmul <2 x float> %165, %163
  store <2 x float> %166, ptr %154, align 8, !tbaa !56
  %167 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %168 = load i16, ptr %167, align 4, !tbaa !34
  %169 = or i16 %168, 4
  store i16 %169, ptr %167, align 4, !tbaa !34
  br label %174

170:                                              ; preds = %135
  %171 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %172 = load i16, ptr %171, align 4, !tbaa !34
  %173 = and i16 %172, -5
  store i16 %173, ptr %171, align 4, !tbaa !34
  br label %174

174:                                              ; preds = %170, %157
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #17
  br label %194

175:                                              ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #17
  store float 3.000000e+01, ptr %15, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #17
  %176 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61
  %177 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 3
  %178 = load i16, ptr %177, align 2, !tbaa !90
  %179 = sext i16 %178 to i32
  %180 = call zeroext i8 @snapNodesTransform(ptr noundef nonnull %0, ptr noundef nonnull %176, ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef nonnull %16, i32 noundef %179) #18, !range !49
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %189, label %182

182:                                              ; preds = %175
  %183 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9
  call fastcc void @copy_v2_v2(ptr noundef nonnull %183, ptr noundef nonnull %14) #18
  %184 = load i8, ptr %16, align 1, !tbaa !50
  %185 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 13
  store i8 %184, ptr %185, align 8, !tbaa !61
  %186 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %187 = load i16, ptr %186, align 4, !tbaa !34
  %188 = or i16 %187, 4
  store i16 %188, ptr %186, align 4, !tbaa !34
  br label %193

189:                                              ; preds = %175
  %190 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %191 = load i16, ptr %190, align 4, !tbaa !34
  %192 = and i16 %191, -5
  store i16 %192, ptr %190, align 4, !tbaa !34
  br label %193

193:                                              ; preds = %189, %182
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #17
  br label %194

194:                                              ; preds = %2, %127, %131, %174, %193, %126
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @TargetSnapClosest(ptr noundef %0) #1 !PGOFuncName !201 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %6 = load i16, ptr %5, align 4, !tbaa !34
  %7 = and i16 %6, 4
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %129, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !70
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !74
  %16 = icmp sgt i32 %15, 0
  br i1 %13, label %78, label %17

17:                                               ; preds = %9
  br i1 %16, label %18, label %125

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !71
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 21
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 16
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10
  br label %25

25:                                               ; preds = %18, %72
  %26 = phi ptr [ null, %18 ], [ %73, %72 ]
  %27 = phi ptr [ %20, %18 ], [ %75, %72 ]
  %28 = phi i32 [ 0, %18 ], [ %74, %72 ]
  %29 = getelementptr inbounds %struct.TransData, ptr %27, i64 0, i32 16
  %30 = load i32, ptr %29, align 8, !tbaa !75
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %125, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.TransData, ptr %27, i64 0, i32 11
  %35 = load ptr, ptr %34, align 8, !tbaa !79
  %36 = call ptr @BKE_object_boundbox_get(ptr noundef %35) #19
  %37 = icmp eq ptr %36, null
  br i1 %37, label %59, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.TransData, ptr %27, i64 0, i32 13
  br label %40

40:                                               ; preds = %38, %55
  %41 = phi i64 [ 0, %38 ], [ %57, %55 ]
  %42 = phi ptr [ %26, %38 ], [ %56, %55 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #17
  %43 = getelementptr inbounds [8 x [3 x float]], ptr %36, i64 0, i64 %41
  call fastcc void @copy_v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %43) #18
  %44 = load ptr, ptr %39, align 8, !tbaa !91
  %45 = getelementptr inbounds %struct.TransDataExtension, ptr %44, i64 0, i32 13
  call void @mul_m4_v3(ptr noundef nonnull %45, ptr noundef nonnull %2) #19
  %46 = load ptr, ptr %21, align 8, !tbaa !192
  %47 = call float %46(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %22) #19
  %48 = icmp eq ptr %42, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %40
  %50 = call float @llvm.fabs.f32(float %47)
  %51 = load float, ptr %23, align 8, !tbaa !202
  %52 = call float @llvm.fabs.f32(float %51)
  %53 = fcmp olt float %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %40
  call fastcc void @copy_v3_v3(ptr noundef nonnull %24, ptr noundef nonnull %2) #18
  store float %47, ptr %23, align 8, !tbaa !202
  br label %55

55:                                               ; preds = %54, %49
  %56 = phi ptr [ %27, %54 ], [ %42, %49 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #17
  %57 = add nuw nsw i64 %41, 1
  %58 = icmp eq i64 %57, 8
  br i1 %58, label %72, label %40, !llvm.loop !203

59:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  %60 = getelementptr inbounds %struct.TransData, ptr %27, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %60) #18
  %61 = load ptr, ptr %21, align 8, !tbaa !192
  %62 = call float %61(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %22) #19
  %63 = icmp eq ptr %26, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = call float @llvm.fabs.f32(float %62)
  %66 = load float, ptr %23, align 8, !tbaa !202
  %67 = call float @llvm.fabs.f32(float %66)
  %68 = fcmp olt float %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %59
  call fastcc void @copy_v3_v3(ptr noundef nonnull %24, ptr noundef nonnull %3) #18
  store float %62, ptr %23, align 8, !tbaa !202
  br label %70

70:                                               ; preds = %69, %64
  %71 = phi ptr [ %27, %69 ], [ %26, %64 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  br label %72

72:                                               ; preds = %55, %70
  %73 = phi ptr [ %71, %70 ], [ %56, %55 ]
  %74 = add nuw nsw i32 %28, 1
  %75 = getelementptr inbounds %struct.TransData, ptr %27, i64 1
  %76 = load i32, ptr %14, align 8, !tbaa !74
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %25, label %125, !llvm.loop !204

78:                                               ; preds = %9
  br i1 %16, label %79, label %125

79:                                               ; preds = %78
  %80 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %81 = load ptr, ptr %80, align 8, !tbaa !71
  %82 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %83 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %84 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 21
  %85 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 9
  %86 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 16
  %87 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10
  br label %88

88:                                               ; preds = %79, %119
  %89 = phi ptr [ null, %79 ], [ %120, %119 ]
  %90 = phi ptr [ %81, %79 ], [ %122, %119 ]
  %91 = phi i32 [ 0, %79 ], [ %121, %119 ]
  %92 = getelementptr inbounds %struct.TransData, ptr %90, i64 0, i32 16
  %93 = load i32, ptr %92, align 8, !tbaa !75
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %125, label %96

96:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  %97 = getelementptr inbounds %struct.TransData, ptr %90, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %97) #18
  %98 = load i32, ptr %10, align 4, !tbaa !70
  %99 = and i32 %98, 6
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %96
  %102 = load ptr, ptr %82, align 8, !tbaa !72
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load ptr, ptr %83, align 8, !tbaa !73
  br label %106

106:                                              ; preds = %101, %104
  %107 = phi ptr [ %105, %104 ], [ %102, %101 ]
  %108 = getelementptr inbounds %struct.Object, ptr %107, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %108, ptr noundef nonnull %4) #19
  br label %109

109:                                              ; preds = %106, %96
  %110 = load ptr, ptr %84, align 8, !tbaa !192
  %111 = call float %110(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %85) #19
  %112 = icmp eq ptr %89, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %109
  %114 = call float @llvm.fabs.f32(float %111)
  %115 = load float, ptr %86, align 8, !tbaa !202
  %116 = call float @llvm.fabs.f32(float %115)
  %117 = fcmp olt float %114, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %113, %109
  call fastcc void @copy_v3_v3(ptr noundef nonnull %87, ptr noundef nonnull %4) #18
  store float %111, ptr %86, align 8, !tbaa !202
  br label %119

119:                                              ; preds = %118, %113
  %120 = phi ptr [ %90, %118 ], [ %89, %113 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  %121 = add nuw nsw i32 %91, 1
  %122 = getelementptr inbounds %struct.TransData, ptr %90, i64 1
  %123 = load i32, ptr %14, align 8, !tbaa !74
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %88, label %125, !llvm.loop !205

125:                                              ; preds = %72, %25, %119, %88, %17, %78
  %126 = phi ptr [ null, %78 ], [ null, %17 ], [ %120, %119 ], [ %89, %88 ], [ %73, %72 ], [ %26, %25 ]
  call fastcc void @TargetSnapOffset(ptr noundef nonnull %0, ptr noundef %126) #18
  %127 = load i16, ptr %5, align 4, !tbaa !34
  %128 = or i16 %127, 2
  store i16 %128, ptr %5, align 4, !tbaa !34
  br label %129

129:                                              ; preds = %125, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @TargetSnapCenter(ptr noundef %0) #1 !PGOFuncName !206 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %3 = load i16, ptr %2, align 4, !tbaa !34
  %4 = and i16 %3, 2
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #18
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !70
  %11 = and i32 %10, 6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %19 = load ptr, ptr %18, align 8, !tbaa !73
  br label %20

20:                                               ; preds = %13, %17
  %21 = phi ptr [ %19, %17 ], [ %15, %13 ]
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 47
  tail call void @mul_m4_v3(ptr noundef nonnull %22, ptr noundef nonnull %7) #19
  br label %23

23:                                               ; preds = %20, %6
  tail call fastcc void @TargetSnapOffset(ptr noundef nonnull %0, ptr noundef null) #18
  %24 = load i16, ptr %2, align 4, !tbaa !34
  %25 = or i16 %24, 2
  store i16 %25, ptr %2, align 4, !tbaa !34
  br label %26

26:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @TargetSnapMedian(ptr noundef %0) #1 !PGOFuncName !207 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %3 = load i16, ptr %2, align 4, !tbaa !34
  %4 = and i16 %3, 2
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %52

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10
  store <2 x float> zeroinitializer, ptr %7, align 4, !tbaa !56
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10, i64 2
  store float 0.000000e+00, ptr %8, align 4, !tbaa !56
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !74
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !71
  br label %15

15:                                               ; preds = %12, %22
  %16 = phi ptr [ %25, %22 ], [ %14, %12 ]
  %17 = phi i32 [ %24, %22 ], [ 0, %12 ]
  %18 = getelementptr inbounds %struct.TransData, ptr %16, i64 0, i32 16
  %19 = load i32, ptr %18, align 8, !tbaa !75
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.TransData, ptr %16, i64 0, i32 7
  tail call fastcc void @add_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %23) #18
  %24 = add nuw nsw i32 %17, 1
  %25 = getelementptr inbounds %struct.TransData, ptr %16, i64 1
  %26 = load i32, ptr %9, align 8, !tbaa !74
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %15, label %28, !llvm.loop !208

28:                                               ; preds = %22, %15
  %29 = phi i32 [ %17, %15 ], [ %24, %22 ]
  %30 = sitofp i32 %29 to double
  br label %31

31:                                               ; preds = %28, %6
  %32 = phi double [ 0.000000e+00, %6 ], [ %30, %28 ]
  %33 = fdiv double 1.000000e+00, %32
  %34 = fptrunc double %33 to float
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %34) #18
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !70
  %37 = and i32 %36, 6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %41 = load ptr, ptr %40, align 8, !tbaa !72
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %45 = load ptr, ptr %44, align 8, !tbaa !73
  br label %46

46:                                               ; preds = %39, %43
  %47 = phi ptr [ %45, %43 ], [ %41, %39 ]
  %48 = getelementptr inbounds %struct.Object, ptr %47, i64 0, i32 47
  tail call void @mul_m4_v3(ptr noundef nonnull %48, ptr noundef nonnull %7) #19
  br label %49

49:                                               ; preds = %46, %31
  tail call fastcc void @TargetSnapOffset(ptr noundef nonnull %0, ptr noundef null) #18
  %50 = load i16, ptr %2, align 4, !tbaa !34
  %51 = or i16 %50, 2
  store i16 %51, ptr %2, align 4, !tbaa !34
  br label %52

52:                                               ; preds = %49, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @TargetSnapActive(ptr noundef %0) #1 !PGOFuncName !209 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %3 = load i16, ptr %2, align 4, !tbaa !34
  %4 = and i16 %3, 2
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %31

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10
  %8 = tail call zeroext i8 @calculateCenterActive(ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef nonnull %7) #19
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !70
  %13 = and i32 %12, 6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %17 = load ptr, ptr %16, align 8, !tbaa !72
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %21 = load ptr, ptr %20, align 8, !tbaa !73
  br label %22

22:                                               ; preds = %15, %19
  %23 = phi ptr [ %21, %19 ], [ %17, %15 ]
  %24 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 47
  tail call void @mul_m4_v3(ptr noundef nonnull %24, ptr noundef nonnull %7) #19
  br label %25

25:                                               ; preds = %22, %10
  tail call fastcc void @TargetSnapOffset(ptr noundef nonnull %0, ptr noundef null) #18
  %26 = load i16, ptr %2, align 4, !tbaa !34
  %27 = or i16 %26, 2
  store i16 %27, ptr %2, align 4, !tbaa !34
  br label %31

28:                                               ; preds = %6
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 1
  store i16 2, ptr %29, align 2, !tbaa !138
  %30 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 20
  store ptr @TargetSnapMedian, ptr %30, align 8, !tbaa !134
  tail call void @TargetSnapMedian(ptr noundef nonnull %0) #18
  br label %31

31:                                               ; preds = %25, %28, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @ApplySnapTranslation(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 !PGOFuncName !210 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  call void @getSnapPoint(ptr noundef %0, ptr noundef nonnull %3) #18
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %5 = load i8, ptr %4, align 8, !tbaa !51
  %6 = icmp eq i8 %5, 16
  br i1 %6, label %7, label %28

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 13
  %9 = load i8, ptr %8, align 8, !tbaa !61
  %10 = zext i8 %9 to i32
  %11 = and i32 %10, 12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = load float, ptr %3, align 4, !tbaa !56
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10
  %16 = load float, ptr %15, align 4, !tbaa !56
  %17 = fsub float %14, %16
  store float %17, ptr %1, align 4, !tbaa !56
  br label %18

18:                                               ; preds = %13, %7
  %19 = and i32 %10, 3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !56
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !56
  %26 = fsub float %23, %25
  %27 = getelementptr inbounds float, ptr %1, i64 1
  store float %26, ptr %27, align 4, !tbaa !56
  br label %30

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10
  call fastcc void @sub_v3_v3v3(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %29) #18
  br label %30

30:                                               ; preds = %18, %21, %28
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal float @TranslationBetween(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #8 !PGOFuncName !211 {
  %4 = tail call fastcc float @len_v3v3(ptr noundef %1, ptr noundef %2) #18
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ApplySnapRotation(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 !PGOFuncName !212 {
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !138
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 16
  %9 = load float, ptr %8, align 8, !tbaa !202
  br label %13

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  call void @getSnapPoint(ptr noundef nonnull %0, ptr noundef nonnull %3) #18
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10
  %12 = call float @RotationBetween(ptr noundef nonnull %0, ptr noundef nonnull %11, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi float [ %9, %7 ], [ %12, %10 ]
  store float %14, ptr %1, align 4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal float @RotationBetween(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 !PGOFuncName !213 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %10) #18
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !70
  %13 = and i32 %12, 6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %17 = load ptr, ptr %16, align 8, !tbaa !72
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %21 = load ptr, ptr %20, align 8, !tbaa !73
  br label %22

22:                                               ; preds = %15, %19
  %23 = phi ptr [ %21, %19 ], [ %17, %15 ]
  %24 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %24, ptr noundef nonnull %6) #19
  br label %25

25:                                               ; preds = %22, %3
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %6) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %6) #18
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 11
  %27 = load ptr, ptr %26, align 8, !tbaa !214
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %31 = load i32, ptr %30, align 4, !tbaa !215
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #17
  call void %27(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %7, ptr noundef null) #19
  call void @project_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %7) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %8) #18
  call void @project_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %7) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %8) #18
  %35 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #18
  %36 = call fastcc float @normalize_v3(ptr noundef nonnull %4) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %37 = call fastcc float @dot_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %7) #18
  %38 = fcmp olt float %37, 0.000000e+00
  %39 = call fastcc float @dot_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %40 = call float @acosf(float noundef %39) #19
  %41 = fneg float %40
  %42 = select i1 %38, float %41, float %40
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  br label %54

43:                                               ; preds = %29, %25
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #17
  %44 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 27
  call void @copy_m3_m4(ptr noundef nonnull %9, ptr noundef nonnull %44) #19
  call void @mul_m3_v3(ptr noundef nonnull %9, ptr noundef nonnull %5) #19
  call void @mul_m3_v3(ptr noundef nonnull %9, ptr noundef nonnull %4) #19
  %45 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !56
  %47 = load float, ptr %4, align 4, !tbaa !56
  %48 = call float @atan2f(float noundef %46, float noundef %47) #19
  %49 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !56
  %51 = load float, ptr %5, align 4, !tbaa !56
  %52 = call float @atan2f(float noundef %50, float noundef %51) #19
  %53 = fsub float %48, %52
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #17
  br label %54

54:                                               ; preds = %43, %34
  %55 = phi float [ %42, %34 ], [ %53, %43 ]
  %56 = fcmp ogt float %55, 0x400921FB60000000
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = fadd float %55, 0xC01921FB60000000
  br label %63

59:                                               ; preds = %54
  %60 = fcmp olt float %55, 0xC00921FB60000000
  br i1 %60, label %61, label %63

61:                                               ; preds = %59
  %62 = fadd float %55, 0x401921FB60000000
  br label %63

63:                                               ; preds = %59, %61, %57
  %64 = phi float [ %58, %57 ], [ %62, %61 ], [ %55, %59 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  ret float %64
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ApplySnapResize(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 !PGOFuncName !216 {
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !138
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 16
  %9 = load float, ptr %8, align 8, !tbaa !202
  br label %13

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  call void @getSnapPoint(ptr noundef nonnull %0, ptr noundef nonnull %3) #18
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10
  %12 = call float @ResizeBetween(ptr noundef nonnull %0, ptr noundef nonnull %11, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi float [ %9, %7 ], [ %12, %10 ]
  %15 = getelementptr inbounds float, ptr %1, i64 2
  store float %14, ptr %15, align 4
  %16 = getelementptr inbounds float, ptr %1, i64 1
  store float %14, ptr %16, align 4
  store float %14, ptr %1, align 4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal float @ResizeBetween(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 !PGOFuncName !217 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !70
  %10 = and i32 %9, 6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %18 = load ptr, ptr %17, align 8, !tbaa !73
  br label %19

19:                                               ; preds = %12, %16
  %20 = phi ptr [ %18, %16 ], [ %14, %12 ]
  %21 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %21, ptr noundef nonnull %6) #19
  br label %22

22:                                               ; preds = %19, %3
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %6) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %6) #18
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !214
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %28 = load i32, ptr %27, align 4, !tbaa !215
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 4
  call void @mul_m3_v3(ptr noundef nonnull %32, ptr noundef nonnull %4) #19
  call void @mul_m3_v3(ptr noundef nonnull %32, ptr noundef nonnull %5) #19
  br label %33

33:                                               ; preds = %31, %26, %22
  %34 = call fastcc float @len_v3(ptr noundef nonnull %4) #18
  %35 = fcmp une float %34, 0.000000e+00
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = call fastcc float @len_v3(ptr noundef nonnull %5) #18
  %38 = fdiv float %37, %34
  br label %39

39:                                               ; preds = %33, %36
  %40 = phi float [ %38, %36 ], [ 1.000000e+00, %33 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  ret float %40
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #7 !PGOFuncName !218 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !219 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #18
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  ret float %4
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !220 {
  %4 = load float, ptr %1, align 4, !tbaa !56
  %5 = load float, ptr %2, align 4, !tbaa !56
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !56
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !56
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !56
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !56
  ret void
}

; Function Attrs: optsize
declare ptr @ED_space_image(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ED_uvedit_nearest_uv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_space_image_get_uv_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !221 {
  %3 = load float, ptr %1, align 4, !tbaa !56
  store float %3, ptr %0, align 4, !tbaa !56
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !56
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !222 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #18
  %3 = tail call float @sqrtf(float noundef %2) #19
  ret float %3
}

; Function Attrs: optsize
declare ptr @BKE_object_boundbox_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @TargetSnapOffset(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #9 !PGOFuncName !223 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %4 = load i8, ptr %3, align 8, !tbaa !51
  %5 = icmp eq i8 %4, 16
  %6 = icmp ne ptr %1, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %37

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !224
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 13
  %12 = load i8, ptr %11, align 8, !tbaa !61
  %13 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 40
  %14 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %13) #18
  %15 = zext i8 %12 to i32
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %8
  %19 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %13) #18
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10
  %21 = load float, ptr %20, align 4, !tbaa !56
  %22 = fadd float %19, %21
  store float %22, ptr %20, align 4, !tbaa !56
  br label %23

23:                                               ; preds = %18, %8
  %24 = and i32 %15, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !56
  %29 = fsub float %28, %14
  store float %29, ptr %27, align 4, !tbaa !56
  br label %30

30:                                               ; preds = %26, %23
  %31 = and i32 %15, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 10, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !56
  %36 = fadd float %35, 0.000000e+00
  store float %36, ptr %34, align 4, !tbaa !56
  br label %37

37:                                               ; preds = %30, %33, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !225 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !226
  %4 = load float, ptr %0, align 4, !tbaa !227
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !228 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !229
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !230
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: optsize
declare zeroext i8 @calculateCenterActive(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !231 {
  %3 = load float, ptr %0, align 4, !tbaa !56
  %4 = load float, ptr %1, align 4, !tbaa !56
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !56
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !56
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_win_to_ray_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @snapObject(ptr noundef %0, i16 noundef signext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, ptr noundef writeonly %6, ptr noundef %7, ptr nocapture noundef readonly %8, ptr nocapture noundef readonly %9, ptr nocapture noundef readonly %10, ptr nocapture noundef readonly %11, ptr noundef %12, ptr noundef %13, ptr nocapture noundef %14, ptr nocapture noundef %15) unnamed_addr #1 !PGOFuncName !232 {
  %17 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %18 = load i16, ptr %17, align 8, !tbaa !151
  switch i16 %18, label %53 [
    i16 1, label %19
    i16 25, label %35
    i16 2, label %39
    i16 0, label %43
    i16 11, label %45
  ]

19:                                               ; preds = %16
  %20 = icmp eq i8 %5, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %19
  %22 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %3) #19
  %23 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !233
  %24 = tail call ptr @editbmesh_get_derived_cage(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %22, i64 noundef %23) #19
  br label %28

25:                                               ; preds = %19
  %26 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !233
  %27 = tail call ptr @mesh_get_derived_final(ptr noundef %0, ptr noundef nonnull %3, i64 noundef %26) #19
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi ptr [ %22, %21 ], [ null, %25 ]
  %30 = phi ptr [ %24, %21 ], [ %27, %25 ]
  %31 = phi i8 [ 0, %21 ], [ 1, %25 ]
  %32 = tail call fastcc zeroext i8 @snapDerivedMesh(i16 noundef signext %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %30, ptr noundef %29, ptr noundef %4, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, i8 noundef zeroext %31) #18, !range !49
  %33 = getelementptr inbounds %struct.DerivedMesh, ptr %30, i64 0, i32 95
  %34 = load ptr, ptr %33, align 8, !tbaa !173
  tail call void %34(ptr noundef %30) #19
  br label %47

35:                                               ; preds = %16
  %36 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %37 = load ptr, ptr %36, align 8, !tbaa !234
  %38 = tail call fastcc zeroext i8 @snapArmature(i16 noundef signext %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %37, ptr noundef %4, ptr noundef %8, ptr noundef %9, ptr noundef %11, ptr noundef %12, ptr noundef %14, ptr noundef %15) #18
  br label %47

39:                                               ; preds = %16
  %40 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %41 = load ptr, ptr %40, align 8, !tbaa !234
  %42 = tail call fastcc zeroext i8 @snapCurve(i16 noundef signext %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %41, ptr noundef %4, ptr noundef %8, ptr noundef %9, ptr noundef %11, ptr noundef %12, ptr noundef %14, ptr noundef %15) #18
  br label %47

43:                                               ; preds = %16
  %44 = tail call fastcc zeroext i8 @snapEmpty(i16 noundef signext %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %8, ptr noundef %9, ptr noundef %11, ptr noundef %12, ptr noundef %14, ptr noundef %15) #18
  br label %47

45:                                               ; preds = %16
  %46 = tail call fastcc zeroext i8 @snapCamera(i16 noundef signext %1, ptr noundef %2, ptr noundef %0, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %8, ptr noundef %9, ptr noundef %11, ptr noundef %12, ptr noundef %14, ptr noundef %15) #18
  br label %47

47:                                               ; preds = %35, %43, %45, %39, %28
  %48 = phi i8 [ %32, %28 ], [ %38, %35 ], [ %42, %39 ], [ %44, %43 ], [ %46, %45 ]
  %49 = icmp ne i8 %48, 0
  %50 = icmp ne ptr %6, null
  %51 = and i1 %50, %49
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store ptr %3, ptr %6, align 8, !tbaa !52
  tail call void @copy_m4_m4(ptr noundef %7, ptr noundef %4) #19
  br label %53

53:                                               ; preds = %16, %52, %47
  %54 = phi i8 [ 1, %52 ], [ %48, %47 ], [ 0, %16 ]
  ret i8 %54
}

; Function Attrs: optsize
declare ptr @object_duplilist(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_object_duplilist(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @editbmesh_get_derived_cage(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @snapDerivedMesh(i16 noundef signext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr nocapture noundef readonly %8, ptr nocapture noundef readonly %9, ptr noundef %10, ptr noundef %11, ptr nocapture noundef %12, ptr nocapture noundef %13, i8 noundef zeroext %14) unnamed_addr #1 !PGOFuncName !235 {
  %16 = alloca [4 x [4 x float]], align 16
  %17 = alloca [3 x [3 x float]], align 16
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca float, align 4
  %21 = alloca %struct.BVHTreeFromMesh, align 8
  %22 = alloca %struct.BVHTreeNearest, align 4
  %23 = alloca %struct.BVHTreeRayHit, align 4
  %24 = alloca %struct.BVHTreeFromMesh, align 8
  %25 = alloca [3 x float], align 4
  %26 = icmp eq i16 %0, 3
  %27 = icmp ne ptr %1, null
  %28 = and i1 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %15
  %30 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %31 = load ptr, ptr %30, align 8, !tbaa !236
  %32 = getelementptr inbounds %struct.RegionView3D, ptr %31, i64 0, i32 24
  %33 = load i8, ptr %32, align 8, !tbaa !238
  %34 = icmp eq i8 %33, 0
  br label %35

35:                                               ; preds = %29, %15
  %36 = phi i1 [ false, %15 ], [ %34, %29 ]
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 23
  %38 = load ptr, ptr %37, align 8, !tbaa !240
  %39 = tail call i32 %38(ptr noundef %3) #19
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %213

41:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %17) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #17
  store float 0x47DFFFFFE0000000, ptr %20, align 4, !tbaa !56
  %42 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %16, ptr noundef %5) #19
  call void @copy_m3_m4(ptr noundef nonnull %17, ptr noundef nonnull %16) #19
  call void @transpose_m3(ptr noundef nonnull %17) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %18, ptr noundef %6) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %19, ptr noundef %7) #18
  call void @mul_m4_v3(ptr noundef nonnull %16, ptr noundef nonnull %18) #19
  call void @mul_mat3_m4_v3(ptr noundef nonnull %16, ptr noundef nonnull %19) #19
  %43 = call fastcc float @normalize_v3(ptr noundef nonnull %19) #18
  %44 = icmp eq i8 %14, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = call ptr @BKE_object_boundbox_get(ptr noundef %2) #19
  %47 = call zeroext i8 @BKE_boundbox_ray_hit_check(ptr noundef %46, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20) #19
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %210, label %66

49:                                               ; preds = %41
  br i1 %36, label %50, label %66

50:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %21) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %22) #17
  store float 0.000000e+00, ptr %20, align 4, !tbaa !56
  %51 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %21, i64 0, i32 10
  store ptr %4, ptr %51, align 8, !tbaa !241
  %52 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %21, ptr noundef nonnull %3, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 6) #19
  %53 = load ptr, ptr %21, align 8, !tbaa !243
  %54 = icmp eq ptr %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %50
  store i32 -1, ptr %22, align 4, !tbaa !244
  %56 = getelementptr inbounds %struct.BVHTreeNearest, ptr %22, i64 0, i32 3
  store float 0x47EFFFFFE0000000, ptr %56, align 4, !tbaa !246
  %57 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %21, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !247
  %59 = call i32 @BLI_bvhtree_find_nearest(ptr noundef nonnull %53, ptr noundef nonnull %18, ptr noundef nonnull %22, ptr noundef %58, ptr noundef nonnull %21) #19
  %60 = load i32, ptr %22, align 4, !tbaa !244
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = load float, ptr %56, align 4, !tbaa !246
  %64 = call float @sqrtf(float noundef %63) #19
  store float %64, ptr %20, align 4, !tbaa !56
  br label %65

65:                                               ; preds = %55, %62, %50
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %21) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %22) #17
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %21) #17
  br label %66

66:                                               ; preds = %49, %65, %45
  switch i16 %0, label %211 [
    i16 3, label %67
    i16 1, label %105
    i16 2, label %146
  ]

67:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %23) #17
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %24) #17
  br i1 %36, label %68, label %73

68:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %25, ptr noundef %8) #18
  call void @mul_m4_v3(ptr noundef nonnull %16, ptr noundef nonnull %25) #19
  %69 = load float, ptr %20, align 4, !tbaa !56
  %70 = fsub float %69, %43
  store float %70, ptr %20, align 4, !tbaa !56
  %71 = call fastcc float @len_v3v3(ptr noundef nonnull %18, ptr noundef nonnull %25) #18
  %72 = fsub float %70, %71
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %18, ptr noundef nonnull %25, ptr noundef nonnull %19, float noundef %72) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #17
  br label %74

73:                                               ; preds = %67
  store float 0.000000e+00, ptr %20, align 4, !tbaa !56
  br label %74

74:                                               ; preds = %73, %68
  %75 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %24, i64 0, i32 10
  store ptr %4, ptr %75, align 8, !tbaa !241
  %76 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %24, ptr noundef nonnull %3, float noundef 0.000000e+00, i32 noundef 4, i32 noundef 6) #19
  store i32 -1, ptr %23, align 4, !tbaa !248
  %77 = load float, ptr %13, align 4, !tbaa !56
  %78 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %23, i64 0, i32 3
  store float %77, ptr %78, align 4, !tbaa !250
  %79 = fcmp une float %77, 0x47DFFFFFE0000000
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = fmul float %43, %77
  %82 = load float, ptr %20, align 4, !tbaa !56
  %83 = fsub float %81, %82
  store float %83, ptr %78, align 4, !tbaa !250
  br label %84

84:                                               ; preds = %80, %74
  %85 = load ptr, ptr %24, align 8, !tbaa !243
  %86 = icmp eq ptr %85, null
  br i1 %86, label %103, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %24, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !251
  %90 = call i32 @BLI_bvhtree_ray_cast(ptr noundef nonnull %85, ptr noundef nonnull %18, ptr noundef nonnull %19, float noundef 0.000000e+00, ptr noundef nonnull %23, ptr noundef %89, ptr noundef nonnull %24) #19
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %103, label %92

92:                                               ; preds = %87
  %93 = load float, ptr %20, align 4, !tbaa !56
  %94 = load float, ptr %78, align 4, !tbaa !250
  %95 = fadd float %93, %94
  %96 = fdiv float %95, %43
  store float %96, ptr %78, align 4, !tbaa !250
  %97 = load float, ptr %13, align 4, !tbaa !56
  %98 = fcmp ugt float %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %92
  store float %96, ptr %13, align 4, !tbaa !56
  %100 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %23, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef %10, ptr noundef nonnull %100) #18
  %101 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %23, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef %11, ptr noundef nonnull %101) #18
  call void @mul_m4_v3(ptr noundef %5, ptr noundef %10) #19
  call void @mul_m3_v3(ptr noundef nonnull %17, ptr noundef %11) #19
  %102 = call fastcc float @normalize_v3(ptr noundef %11) #18
  br label %103

103:                                              ; preds = %92, %99, %87, %84
  %104 = phi i8 [ 1, %99 ], [ 0, %92 ], [ 0, %87 ], [ 0, %84 ]
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %24) #19
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %24) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %23) #17
  br label %211

105:                                              ; preds = %66
  %106 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 31
  %107 = load ptr, ptr %106, align 8, !tbaa !252
  %108 = call ptr %107(ptr noundef nonnull %3) #19
  %109 = icmp eq ptr %4, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 50
  %112 = load ptr, ptr %111, align 8, !tbaa !253
  %113 = call ptr %112(ptr noundef nonnull %3, i32 noundef 7) #19
  %114 = load ptr, ptr %4, align 8, !tbaa !254
  call void @BM_mesh_elem_table_ensure(ptr noundef %114, i8 noundef zeroext 1) #19
  br label %115

115:                                              ; preds = %105, %110
  %116 = phi ptr [ %113, %110 ], [ null, %105 ]
  %117 = icmp eq ptr %116, null
  %118 = zext nneg i32 %39 to i64
  br label %119

119:                                              ; preds = %115, %142
  %120 = phi i64 [ 0, %115 ], [ %144, %142 ]
  %121 = phi i8 [ 0, %115 ], [ %143, %142 ]
  %122 = getelementptr inbounds %struct.MVert, ptr %108, i64 %120
  br i1 %109, label %138, label %123

123:                                              ; preds = %119
  %124 = trunc i64 %120 to i32
  br i1 %117, label %129, label %125

125:                                              ; preds = %123
  %126 = getelementptr inbounds i32, ptr %116, i64 %120
  %127 = load i32, ptr %126, align 4, !tbaa !66
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %142, label %129

129:                                              ; preds = %123, %125
  %130 = phi i32 [ %127, %125 ], [ %124, %123 ]
  %131 = load ptr, ptr %4, align 8, !tbaa !254
  %132 = call ptr @BM_vert_at_index(ptr noundef %131, i32 noundef %130) #19
  %133 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %132, i8 noundef zeroext 2) #18, !range !256
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %129
  %136 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %132, i8 noundef zeroext 1) #18, !range !256
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %119, %135
  %139 = getelementptr inbounds %struct.MVert, ptr %108, i64 %120, i32 1
  %140 = call fastcc zeroext i8 @snapVertex(ptr noundef %1, ptr noundef %122, ptr noundef nonnull %139, ptr noundef %5, ptr noundef nonnull %17, ptr noundef %6, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13) #18, !range !49
  %141 = or i8 %140, %121
  br label %142

142:                                              ; preds = %129, %135, %125, %138
  %143 = phi i8 [ %141, %138 ], [ %121, %125 ], [ %121, %135 ], [ %121, %129 ]
  %144 = add nuw nsw i64 %120, 1
  %145 = icmp eq i64 %144, %118
  br i1 %145, label %211, label %119, !llvm.loop !257

146:                                              ; preds = %66
  %147 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 31
  %148 = load ptr, ptr %147, align 8, !tbaa !252
  %149 = call ptr %148(ptr noundef nonnull %3) #19
  %150 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 32
  %151 = load ptr, ptr %150, align 8, !tbaa !258
  %152 = call ptr %151(ptr noundef nonnull %3) #19
  %153 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 24
  %154 = load ptr, ptr %153, align 8, !tbaa !259
  %155 = call i32 %154(ptr noundef nonnull %3) #19
  %156 = icmp eq ptr %4, null
  br i1 %156, label %162, label %157

157:                                              ; preds = %146
  %158 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 51
  %159 = load ptr, ptr %158, align 8, !tbaa !260
  %160 = call ptr %159(ptr noundef nonnull %3, i32 noundef 7) #19
  %161 = load ptr, ptr %4, align 8, !tbaa !254
  call void @BM_mesh_elem_table_ensure(ptr noundef %161, i8 noundef zeroext 2) #19
  br label %162

162:                                              ; preds = %157, %146
  %163 = phi ptr [ %160, %157 ], [ null, %146 ]
  %164 = icmp sgt i32 %155, 0
  br i1 %164, label %165, label %211

165:                                              ; preds = %162
  %166 = icmp eq ptr %163, null
  %167 = zext nneg i32 %155 to i64
  br label %168

168:                                              ; preds = %165, %206
  %169 = phi i64 [ 0, %165 ], [ %208, %206 ]
  %170 = phi i8 [ 0, %165 ], [ %207, %206 ]
  %171 = getelementptr inbounds %struct.MEdge, ptr %152, i64 %169
  br i1 %156, label %194, label %172

172:                                              ; preds = %168
  %173 = trunc i64 %169 to i32
  br i1 %166, label %178, label %174

174:                                              ; preds = %172
  %175 = getelementptr inbounds i32, ptr %163, i64 %169
  %176 = load i32, ptr %175, align 4, !tbaa !66
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %206, label %178

178:                                              ; preds = %172, %174
  %179 = phi i32 [ %176, %174 ], [ %173, %172 ]
  %180 = load ptr, ptr %4, align 8, !tbaa !254
  %181 = call ptr @BM_edge_at_index(ptr noundef %180, i32 noundef %179) #19
  %182 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %181, i8 noundef zeroext 2) #18, !range !256
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %184, label %206

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.BMEdge, ptr %181, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !261
  %187 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %186, i8 noundef zeroext 1) #18, !range !256
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %189, label %206

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.BMEdge, ptr %181, i64 0, i32 3
  %191 = load ptr, ptr %190, align 8, !tbaa !265
  %192 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %191, i8 noundef zeroext 1) #18, !range !256
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %194, label %206

194:                                              ; preds = %168, %189
  %195 = load i32, ptr %171, align 4, !tbaa !266
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.MVert, ptr %149, i64 %196
  %198 = getelementptr inbounds %struct.MVert, ptr %149, i64 %196, i32 1
  %199 = getelementptr inbounds %struct.MEdge, ptr %152, i64 %169, i32 1
  %200 = load i32, ptr %199, align 4, !tbaa !268
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.MVert, ptr %149, i64 %201
  %203 = getelementptr inbounds %struct.MVert, ptr %149, i64 %201, i32 1
  %204 = call fastcc zeroext i8 @snapEdge(ptr noundef %1, ptr noundef %197, ptr noundef nonnull %198, ptr noundef %202, ptr noundef nonnull %203, ptr noundef %5, ptr noundef nonnull %17, ptr noundef %6, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13) #18, !range !49
  %205 = or i8 %204, %170
  br label %206

206:                                              ; preds = %178, %184, %189, %174, %194
  %207 = phi i8 [ %205, %194 ], [ %170, %174 ], [ %170, %189 ], [ %170, %184 ], [ %170, %178 ]
  %208 = add nuw nsw i64 %169, 1
  %209 = icmp eq i64 %208, %167
  br i1 %209, label %211, label %168, !llvm.loop !269

210:                                              ; preds = %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #17
  br label %213

211:                                              ; preds = %206, %142, %162, %66, %103
  %212 = phi i8 [ %104, %103 ], [ 0, %66 ], [ 0, %162 ], [ %143, %142 ], [ %207, %206 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #17
  br label %213

213:                                              ; preds = %211, %210, %35
  %214 = phi i8 [ 0, %35 ], [ %212, %211 ], [ 0, %210 ]
  ret i8 %214
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @snapArmature(i16 noundef signext %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr nocapture noundef writeonly %8, ptr nocapture noundef %9, ptr nocapture noundef %10) unnamed_addr #1 !PGOFuncName !270 {
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #17
  %15 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %12, ptr noundef %4) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef %5) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef %6) #18
  call void @mul_m4_v3(ptr noundef nonnull %12, ptr noundef nonnull %13) #19
  call void @mul_mat3_m4_v3(ptr noundef nonnull %12, ptr noundef nonnull %14) #19
  %16 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !271
  %18 = icmp eq ptr %17, null
  br i1 %18, label %54, label %19

19:                                               ; preds = %11
  %20 = load ptr, ptr %17, align 8, !tbaa !52
  %21 = icmp eq ptr %20, null
  br i1 %21, label %87, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 15
  br label %24

24:                                               ; preds = %22, %50
  %25 = phi ptr [ %20, %22 ], [ %52, %50 ]
  %26 = phi i8 [ 0, %22 ], [ %51, %50 ]
  %27 = getelementptr inbounds %struct.EditBone, ptr %25, i64 0, i32 10
  %28 = load i32, ptr %27, align 8, !tbaa !273
  %29 = load i32, ptr %23, align 8, !tbaa !275
  %30 = and i32 %29, %28
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.EditBone, ptr %25, i64 0, i32 9
  %34 = load i32, ptr %33, align 4, !tbaa !276
  %35 = and i32 %34, 1030
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  switch i16 %0, label %50 [
    i16 1, label %38
    i16 2, label %45
  ]

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.EditBone, ptr %25, i64 0, i32 7
  %40 = call fastcc zeroext i8 @snapVertex(ptr noundef %1, ptr noundef nonnull %39, ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef %5, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %7, ptr noundef %8, ptr noundef null, ptr noundef %9, ptr noundef %10) #18, !range !49
  %41 = getelementptr inbounds %struct.EditBone, ptr %25, i64 0, i32 8
  %42 = call fastcc zeroext i8 @snapVertex(ptr noundef %1, ptr noundef nonnull %41, ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef %5, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %7, ptr noundef %8, ptr noundef null, ptr noundef %9, ptr noundef %10) #18, !range !49
  %43 = or i8 %40, %42
  %44 = or i8 %43, %26
  br label %50

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.EditBone, ptr %25, i64 0, i32 7
  %47 = getelementptr inbounds %struct.EditBone, ptr %25, i64 0, i32 8
  %48 = call fastcc zeroext i8 @snapEdge(ptr noundef %1, ptr noundef nonnull %46, ptr noundef null, ptr noundef nonnull %47, ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef %5, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %7, ptr noundef %8, ptr noundef null, ptr noundef %9, ptr noundef %10) #18, !range !49
  %49 = or i8 %48, %26
  br label %50

50:                                               ; preds = %24, %38, %45, %37, %32
  %51 = phi i8 [ %26, %37 ], [ %49, %45 ], [ %44, %38 ], [ %26, %32 ], [ %26, %24 ]
  %52 = load ptr, ptr %25, align 8, !tbaa !52
  %53 = icmp eq ptr %52, null
  br i1 %53, label %87, label %24, !llvm.loop !277

54:                                               ; preds = %11
  %55 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 18
  %56 = load ptr, ptr %55, align 8, !tbaa !278
  %57 = icmp eq ptr %56, null
  br i1 %57, label %87, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %56, align 8, !tbaa !279
  %60 = icmp eq ptr %59, null
  br i1 %60, label %87, label %61

61:                                               ; preds = %58, %83
  %62 = phi i8 [ %84, %83 ], [ 0, %58 ]
  %63 = phi ptr [ %85, %83 ], [ %59, %58 ]
  %64 = getelementptr inbounds %struct.bPoseChannel, ptr %63, i64 0, i32 12
  %65 = load ptr, ptr %64, align 8, !tbaa !281
  %66 = icmp eq ptr %65, null
  br i1 %66, label %83, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.Bone, ptr %65, i64 0, i32 10
  %69 = load i32, ptr %68, align 8, !tbaa !283
  %70 = and i32 %69, 65600
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.bPoseChannel, ptr %63, i64 0, i32 31
  %74 = getelementptr inbounds %struct.bPoseChannel, ptr %63, i64 0, i32 32
  switch i16 %0, label %83 [
    i16 1, label %75
    i16 2, label %80
  ]

75:                                               ; preds = %72
  %76 = call fastcc zeroext i8 @snapVertex(ptr noundef %1, ptr noundef nonnull %73, ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef %5, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %7, ptr noundef %8, ptr noundef null, ptr noundef %9, ptr noundef %10) #18, !range !49
  %77 = call fastcc zeroext i8 @snapVertex(ptr noundef %1, ptr noundef nonnull %74, ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef %5, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %7, ptr noundef %8, ptr noundef null, ptr noundef %9, ptr noundef %10) #18, !range !49
  %78 = or i8 %76, %77
  %79 = or i8 %78, %62
  br label %83

80:                                               ; preds = %72
  %81 = call fastcc zeroext i8 @snapEdge(ptr noundef %1, ptr noundef nonnull %73, ptr noundef null, ptr noundef nonnull %74, ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef %5, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %7, ptr noundef %8, ptr noundef null, ptr noundef %9, ptr noundef %10) #18, !range !49
  %82 = or i8 %81, %62
  br label %83

83:                                               ; preds = %75, %80, %72, %61, %67
  %84 = phi i8 [ %62, %67 ], [ %62, %61 ], [ %62, %72 ], [ %82, %80 ], [ %79, %75 ]
  %85 = load ptr, ptr %63, align 8, !tbaa !285
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %61, !llvm.loop !286

87:                                               ; preds = %50, %83, %19, %54, %58
  %88 = phi i8 [ 0, %58 ], [ 0, %54 ], [ 0, %19 ], [ %84, %83 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #17
  ret i8 %88
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @snapCurve(i16 noundef signext %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr nocapture noundef writeonly %8, ptr nocapture noundef %9, ptr nocapture noundef %10) unnamed_addr #1 !PGOFuncName !287 {
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #17
  %15 = icmp eq i16 %0, 1
  br i1 %15, label %16, label %140

16:                                               ; preds = %11
  %17 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %12, ptr noundef %4) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef %5) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef %6) #18
  call void @mul_m4_v3(ptr noundef nonnull %12, ptr noundef nonnull %13) #19
  call void @mul_mat3_m4_v3(ptr noundef nonnull %12, ptr noundef nonnull %14) #19
  %18 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %19 = load i32, ptr %18, align 8, !tbaa !154
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !288
  br label %26

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 3
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi ptr [ %23, %21 ], [ %25, %24 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !52
  %29 = icmp eq ptr %28, null
  br i1 %29, label %140, label %34

30:                                               ; preds = %134, %34
  %31 = phi i8 [ %36, %34 ], [ %135, %134 ]
  %32 = load ptr, ptr %35, align 8, !tbaa !52
  %33 = icmp eq ptr %32, null
  br i1 %33, label %140, label %34, !llvm.loop !291

34:                                               ; preds = %26, %30
  %35 = phi ptr [ %32, %30 ], [ %28, %26 ]
  %36 = phi i8 [ %31, %30 ], [ 0, %26 ]
  %37 = getelementptr inbounds %struct.Nurb, ptr %35, i64 0, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !292
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %30

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.Nurb, ptr %35, i64 0, i32 18
  %42 = getelementptr inbounds %struct.Nurb, ptr %35, i64 0, i32 17
  br label %43

43:                                               ; preds = %40, %134
  %44 = phi i64 [ 0, %40 ], [ %136, %134 ]
  %45 = phi i32 [ %38, %40 ], [ %137, %134 ]
  %46 = phi i8 [ %36, %40 ], [ %135, %134 ]
  %47 = load i32, ptr %18, align 8, !tbaa !154
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %120

49:                                               ; preds = %43
  %50 = load ptr, ptr %41, align 8, !tbaa !294
  %51 = icmp eq ptr %50, null
  br i1 %51, label %106, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.BezTriple, ptr %50, i64 %44, i32 8
  %54 = load i8, ptr %53, align 4, !tbaa !295
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %134

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.BezTriple, ptr %50, i64 %44, i32 10
  %59 = load i8, ptr %58, align 2, !tbaa !297
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %134

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.BezTriple, ptr %50, i64 %44, i32 0, i64 1
  %63 = call fastcc zeroext i8 @snapVertex(ptr noundef %1, ptr noundef nonnull %62, ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef %5, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %7, ptr noundef %8, ptr noundef null, ptr noundef %9, ptr noundef %10) #18, !range !49
  %64 = or i8 %63, %46
  %65 = load ptr, ptr %41, align 8, !tbaa !294
  %66 = getelementptr inbounds %struct.BezTriple, ptr %65, i64 %44, i32 7
  %67 = load i8, ptr %66, align 1, !tbaa !298
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.BezTriple, ptr %65, i64 %44, i32 5
  %72 = load i8, ptr %71, align 1, !tbaa !299
  %73 = and i8 %72, 3
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.BezTriple, ptr %65, i64 %44, i32 9
  %77 = load i8, ptr %76, align 1, !tbaa !300
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75, %70
  %81 = getelementptr inbounds %struct.BezTriple, ptr %65, i64 %44
  %82 = call fastcc zeroext i8 @snapVertex(ptr noundef %1, ptr noundef %81, ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef %5, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %7, ptr noundef %8, ptr noundef null, ptr noundef %9, ptr noundef %10) #18, !range !49
  %83 = or i8 %82, %64
  %84 = load ptr, ptr %41, align 8, !tbaa !294
  br label %85

85:                                               ; preds = %80, %75, %61
  %86 = phi ptr [ %65, %61 ], [ %65, %75 ], [ %84, %80 ]
  %87 = phi i8 [ %64, %61 ], [ %64, %75 ], [ %83, %80 ]
  %88 = getelementptr inbounds %struct.BezTriple, ptr %86, i64 %44, i32 9
  %89 = load i8, ptr %88, align 1, !tbaa !300
  %90 = and i8 %89, 1
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %134

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.BezTriple, ptr %86, i64 %44, i32 6
  %94 = load i8, ptr %93, align 2, !tbaa !301
  %95 = and i8 %94, 3
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.BezTriple, ptr %86, i64 %44, i32 7
  %99 = load i8, ptr %98, align 1, !tbaa !298
  %100 = and i8 %99, 1
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %134

102:                                              ; preds = %97, %92
  %103 = getelementptr inbounds %struct.BezTriple, ptr %86, i64 %44, i32 0, i64 2
  %104 = call fastcc zeroext i8 @snapVertex(ptr noundef %1, ptr noundef nonnull %103, ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef %5, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %7, ptr noundef %8, ptr noundef null, ptr noundef %9, ptr noundef %10) #18, !range !49
  %105 = or i8 %104, %87
  br label %134

106:                                              ; preds = %49
  %107 = load ptr, ptr %42, align 8, !tbaa !302
  %108 = getelementptr inbounds %struct.BPoint, ptr %107, i64 %44
  %109 = getelementptr inbounds %struct.BPoint, ptr %107, i64 %44, i32 3
  %110 = load i16, ptr %109, align 4, !tbaa !303
  %111 = and i16 %110, 1
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %113, label %134

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.BPoint, ptr %107, i64 %44, i32 4
  %115 = load i16, ptr %114, align 2, !tbaa !305
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %117, label %134

117:                                              ; preds = %113
  %118 = call fastcc zeroext i8 @snapVertex(ptr noundef %1, ptr noundef nonnull %108, ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef %5, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %7, ptr noundef %8, ptr noundef null, ptr noundef %9, ptr noundef %10) #18, !range !49
  %119 = or i8 %118, %46
  br label %134

120:                                              ; preds = %43
  %121 = icmp sgt i32 %45, 1
  br i1 %121, label %122, label %134

122:                                              ; preds = %120
  %123 = load ptr, ptr %41, align 8, !tbaa !294
  %124 = icmp eq ptr %123, null
  br i1 %124, label %129, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.BezTriple, ptr %123, i64 %44, i32 0, i64 1
  %127 = call fastcc zeroext i8 @snapVertex(ptr noundef %1, ptr noundef nonnull %126, ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef %5, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %7, ptr noundef %8, ptr noundef null, ptr noundef %9, ptr noundef %10) #18, !range !49
  %128 = or i8 %127, %46
  br label %134

129:                                              ; preds = %122
  %130 = load ptr, ptr %42, align 8, !tbaa !302
  %131 = getelementptr inbounds %struct.BPoint, ptr %130, i64 %44
  %132 = call fastcc zeroext i8 @snapVertex(ptr noundef %1, ptr noundef %131, ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef %5, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %7, ptr noundef %8, ptr noundef null, ptr noundef %9, ptr noundef %10) #18, !range !49
  %133 = or i8 %132, %46
  br label %134

134:                                              ; preds = %57, %52, %113, %106, %120, %129, %125, %117, %102, %97, %85
  %135 = phi i8 [ %46, %52 ], [ %46, %57 ], [ %87, %85 ], [ %87, %97 ], [ %105, %102 ], [ %46, %106 ], [ %46, %113 ], [ %119, %117 ], [ %128, %125 ], [ %133, %129 ], [ %46, %120 ]
  %136 = add nuw nsw i64 %44, 1
  %137 = load i32, ptr %37, align 8, !tbaa !292
  %138 = sext i32 %137 to i64
  %139 = icmp slt i64 %136, %138
  br i1 %139, label %43, label %30, !llvm.loop !306

140:                                              ; preds = %30, %26, %11
  %141 = phi i8 [ 0, %11 ], [ 0, %26 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #17
  ret i8 %141
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @snapEmpty(i16 noundef signext %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef %8, ptr nocapture noundef %9) unnamed_addr #1 !PGOFuncName !307 {
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #17
  %15 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 55
  %16 = load i16, ptr %15, align 8, !tbaa !166
  %17 = and i16 %16, 2840
  %18 = icmp eq i16 %17, 0
  %19 = icmp eq i16 %0, 1
  %20 = and i1 %19, %18
  br i1 %20, label %21, label %24

21:                                               ; preds = %10
  %22 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %11, ptr noundef %3) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef %4) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef %5) #18
  call void @mul_m4_v3(ptr noundef nonnull %11, ptr noundef nonnull %12) #19
  call void @mul_mat3_m4_v3(ptr noundef nonnull %11, ptr noundef nonnull %13) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %14, i8 0, i64 12, i1 false)
  %23 = call fastcc zeroext i8 @snapVertex(ptr noundef %1, ptr noundef nonnull %14, ptr noundef null, ptr noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef %6, ptr noundef %7, ptr noundef null, ptr noundef %8, ptr noundef %9) #18, !range !49
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #17
  br label %24

24:                                               ; preds = %10, %21
  %25 = phi i8 [ %23, %21 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #17
  ret i8 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @snapCamera(i16 noundef signext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr nocapture noundef writeonly %8, ptr nocapture noundef %9, ptr nocapture noundef %10) unnamed_addr #1 !PGOFuncName !308 {
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [4 x [4 x float]], align 16
  %14 = alloca [4 x [4 x float]], align 16
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [4 x [4 x float]], align 16
  %18 = alloca [4 x [4 x float]], align 16
  %19 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #17
  %20 = tail call ptr @BKE_object_movieclip_get(ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #17
  %21 = icmp eq ptr %20, null
  br i1 %21, label %78, label %22

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 55
  %24 = load i16, ptr %23, align 8, !tbaa !166
  %25 = and i16 %24, 2840
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %78

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.MovieClip, ptr %20, i64 0, i32 11
  call void @BKE_tracking_get_camera_object_matrix(ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %12) #19
  %29 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %13, ptr noundef nonnull %12) #19
  %30 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %14, ptr noundef %4) #19
  %31 = icmp eq i16 %0, 1
  br i1 %31, label %32, label %78

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.MovieClip, ptr %20, i64 0, i32 11, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !52
  %35 = icmp eq ptr %34, null
  br i1 %35, label %78, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 5
  br label %38

38:                                               ; preds = %36, %74
  %39 = phi ptr [ %34, %36 ], [ %76, %74 ]
  %40 = phi i8 [ 0, %36 ], [ %75, %74 ]
  %41 = call ptr @BKE_tracking_object_get_tracks(ptr noundef nonnull %28, ptr noundef nonnull %39) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %17) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef %5) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef %6) #18
  %42 = getelementptr inbounds %struct.MovieTrackingObject, ptr %39, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !309
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, ptr %37, align 8, !tbaa !312
  call void @BKE_tracking_camera_get_reconstructed_interpolate(ptr noundef nonnull %28, ptr noundef nonnull %39, i32 noundef %47, ptr noundef nonnull %17) #19
  %48 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %18, ptr noundef nonnull %17) #19
  br label %49

49:                                               ; preds = %46, %38
  %50 = load ptr, ptr %41, align 8, !tbaa !52
  %51 = icmp eq ptr %50, null
  br i1 %51, label %74, label %52

52:                                               ; preds = %49, %70
  %53 = phi ptr [ %72, %70 ], [ %50, %49 ]
  %54 = phi i8 [ %71, %70 ], [ %40, %49 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #17
  %55 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %53, i64 0, i32 13
  %56 = load i32, ptr %55, align 8, !tbaa !313
  %57 = and i32 %56, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %53, i64 0, i32 11
  call fastcc void @copy_v3_v3(ptr noundef nonnull %19, ptr noundef nonnull %60) #18
  %61 = load i32, ptr %42, align 8, !tbaa !309
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  call void @mul_m4_v3(ptr noundef nonnull %18, ptr noundef nonnull %19) #19
  br label %65

65:                                               ; preds = %59, %64
  %66 = phi ptr [ %14, %64 ], [ %13, %59 ]
  %67 = phi ptr [ %4, %64 ], [ %12, %59 ]
  call void @mul_m4_v3(ptr noundef nonnull %66, ptr noundef nonnull %15) #19
  call void @mul_mat3_m4_v3(ptr noundef nonnull %66, ptr noundef nonnull %16) #19
  %68 = call fastcc zeroext i8 @snapVertex(ptr noundef %1, ptr noundef nonnull %19, ptr noundef null, ptr noundef %67, ptr noundef null, ptr noundef %5, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef %7, ptr noundef %8, ptr noundef null, ptr noundef %9, ptr noundef %10) #18, !range !49
  %69 = or i8 %68, %54
  br label %70

70:                                               ; preds = %52, %65
  %71 = phi i8 [ %69, %65 ], [ %54, %52 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #17
  %72 = load ptr, ptr %53, align 8, !tbaa !52
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %52, !llvm.loop !315

74:                                               ; preds = %70, %49
  %75 = phi i8 [ %40, %49 ], [ %71, %70 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %17) #17
  %76 = load ptr, ptr %39, align 8, !tbaa !52
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %38, !llvm.loop !316

78:                                               ; preds = %74, %32, %27, %22, %11
  %79 = phi i8 [ 0, %11 ], [ 0, %22 ], [ 0, %27 ], [ 0, %32 ], [ %75, %74 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #17
  ret i8 %79
}

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @transpose_m3(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_boundbox_ray_hit_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @bvhtree_from_mesh_faces(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_bvhtree_find_nearest(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_bvhtree_from_mesh(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #4 !PGOFuncName !317 {
  %5 = load float, ptr %1, align 4, !tbaa !56
  %6 = load float, ptr %2, align 4, !tbaa !56
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !56
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !56
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !56
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !56
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !56
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !56
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !56
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_bvhtree_ray_cast(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BM_vert_at_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 !PGOFuncName !318 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !319
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @snapVertex(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr nocapture noundef readonly %8, ptr nocapture noundef writeonly %9, ptr noundef %10, ptr nocapture noundef %11, ptr nocapture noundef %12) unnamed_addr #1 !PGOFuncName !320 {
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #17
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %14, ptr noundef %1, ptr noundef %6) #18
  %17 = call fastcc float @dot_v3v3(ptr noundef %7, ptr noundef nonnull %14) #18
  %18 = fcmp ogt float %17, 0.000000e+00
  br i1 %18, label %19, label %39

19:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef %1) #18
  call void @mul_m4_v3(ptr noundef %3, ptr noundef nonnull %15) #19
  %20 = call fastcc float @len_v3v3(ptr noundef nonnull %15, ptr noundef %5) #18
  %21 = call i32 @ED_view3d_project_float_global(ptr noundef %0, ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef 0) #19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call fastcc float @len_manhattan_v2v2(ptr noundef %8, ptr noundef nonnull %16) #18
  br label %25

25:                                               ; preds = %19, %23
  %26 = phi float [ %24, %23 ], [ 1.000000e+03, %19 ]
  %27 = load float, ptr %11, align 4, !tbaa !56
  %28 = fcmp ugt float %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load float, ptr %12, align 4, !tbaa !56
  %31 = fcmp olt float %20, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  store float %20, ptr %12, align 4, !tbaa !56
  call fastcc void @copy_v3_v3(ptr noundef %9, ptr noundef nonnull %15) #18
  %33 = icmp eq ptr %10, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %32
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %10, ptr noundef %2) #18
  call void @mul_m3_v3(ptr noundef %4, ptr noundef nonnull %10) #19
  %35 = call fastcc float @normalize_v3(ptr noundef nonnull %10) #18
  br label %36

36:                                               ; preds = %34, %32
  store float %26, ptr %11, align 4, !tbaa !56
  br label %37

37:                                               ; preds = %36, %29, %25
  %38 = phi i8 [ 1, %36 ], [ 0, %29 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #17
  br label %39

39:                                               ; preds = %37, %13
  %40 = phi i8 [ %38, %37 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #17
  ret i8 %40
}

; Function Attrs: optsize
declare ptr @BM_edge_at_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @snapEdge(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr noundef %6, ptr nocapture noundef readonly %7, ptr noundef %8, ptr nocapture noundef readonly %9, ptr nocapture noundef readonly %10, ptr nocapture noundef writeonly %11, ptr noundef %12, ptr nocapture noundef %13, ptr nocapture noundef %14) unnamed_addr #1 !PGOFuncName !321 {
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = alloca [2 x float], align 4
  %23 = alloca [3 x float], align 4
  %24 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %16, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %17, ptr noundef %9) #18
  call fastcc void @mul_v3_fl(ptr noundef nonnull %17, float noundef 2.000000e+03) #18
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %17, ptr noundef %8, ptr noundef nonnull %17) #18
  %25 = call i32 @isect_line_line_v3(ptr noundef %1, ptr noundef %3, ptr noundef %8, ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %18) #19
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %65, label %27

27:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #17
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %18, ptr noundef nonnull %16, ptr noundef %8) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %19, ptr noundef %1, ptr noundef %3) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %16, ptr noundef %3) #18
  %28 = call fastcc float @dot_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %19) #18
  %29 = call fastcc float @dot_v3v3(ptr noundef nonnull %19, ptr noundef nonnull %19) #18
  %30 = fdiv float %28, %29
  %31 = fcmp ogt float %30, 1.000000e+00
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = fcmp olt float %30, 0.000000e+00
  br i1 %33, label %34, label %36

34:                                               ; preds = %32, %27
  %35 = phi ptr [ %1, %27 ], [ %3, %32 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef %35) #18
  br label %36

36:                                               ; preds = %34, %32
  %37 = call fastcc float @dot_v3v3(ptr noundef %9, ptr noundef nonnull %18) #18
  %38 = fcmp ogt float %37, 0.000000e+00
  br i1 %38, label %39, label %63

39:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %21, ptr noundef nonnull %16) #18
  call void @mul_m4_v3(ptr noundef %5, ptr noundef nonnull %21) #19
  %40 = call fastcc float @len_v3v3(ptr noundef nonnull %21, ptr noundef %7) #18
  %41 = call i32 @ED_view3d_project_float_global(ptr noundef %0, ptr noundef nonnull %21, ptr noundef nonnull %22, i32 noundef 0) #19
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call fastcc float @len_manhattan_v2v2(ptr noundef %10, ptr noundef nonnull %22) #18
  br label %45

45:                                               ; preds = %39, %43
  %46 = phi float [ %44, %43 ], [ 1.000000e+03, %39 ]
  %47 = load float, ptr %13, align 4, !tbaa !56
  %48 = fcmp ugt float %46, %47
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = load float, ptr %14, align 4, !tbaa !56
  %51 = fmul float %50, 0x3FF00418A0000000
  %52 = fcmp olt float %40, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #17
  store float %40, ptr %14, align 4, !tbaa !56
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %19, ptr noundef %1, ptr noundef %3) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %16, ptr noundef %3) #18
  %54 = icmp eq ptr %12, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %53
  %56 = call fastcc float @dot_v3v3(ptr noundef nonnull %19, ptr noundef nonnull %19) #18
  %57 = call fastcc float @dot_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %19) #18
  %58 = fdiv float %57, %56
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %23, ptr noundef %2) #18
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %24, ptr noundef %4) #18
  call void @interp_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %24, ptr noundef nonnull %23, float noundef %58) #19
  call void @mul_m3_v3(ptr noundef %6, ptr noundef nonnull %12) #19
  %59 = call fastcc float @normalize_v3(ptr noundef nonnull %12) #18
  br label %60

60:                                               ; preds = %55, %53
  call fastcc void @copy_v3_v3(ptr noundef %11, ptr noundef nonnull %21) #18
  store float %46, ptr %13, align 4, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #17
  br label %61

61:                                               ; preds = %60, %49, %45
  %62 = phi i8 [ 1, %60 ], [ 0, %49 ], [ 0, %45 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #17
  br label %63

63:                                               ; preds = %61, %36
  %64 = phi i8 [ %62, %61 ], [ 0, %36 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #17
  br label %65

65:                                               ; preds = %63, %15
  %66 = phi i8 [ %64, %63 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #17
  ret i8 %66
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_manhattan_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !322 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #18
  %4 = call fastcc float @len_manhattan_v2(ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_short_to_float_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !323 {
  %3 = load <2 x i16>, ptr %1, align 2, !tbaa !324
  %4 = sitofp <2 x i16> %3 to <2 x float>
  %5 = fmul <2 x float> %4, <float 0x3F00002000000000, float 0x3F00002000000000>
  store <2 x float> %5, ptr %0, align 4, !tbaa !56
  %6 = getelementptr inbounds i16, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2, !tbaa !324
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 0x3F00002000000000
  %10 = getelementptr inbounds float, ptr %0, i64 2
  store float %9, ptr %10, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_manhattan_v2(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !325 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !56
  %3 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %2)
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %5 = fadd <2 x float> %3, %4
  %6 = extractelement <2 x float> %5, i64 0
  ret float %6
}

; Function Attrs: optsize
declare i32 @isect_line_line_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_object_movieclip_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_tracking_get_camera_object_matrix(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_tracking_object_get_tracks(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_tracking_camera_get_reconstructed_interpolate(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_win_to_ray(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @peelDerivedMesh(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef %5) unnamed_addr #1 !PGOFuncName !326 {
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca float, align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 23
  %19 = load ptr, ptr %18, align 8, !tbaa !240
  %20 = tail call i32 %19(ptr noundef %1) #19
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 25
  %22 = load ptr, ptr %21, align 8, !tbaa !327
  %23 = tail call i32 %22(ptr noundef %1) #19
  %24 = icmp sgt i32 %20, 0
  br i1 %24, label %25, label %122

25:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #17
  %26 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %7, ptr noundef %2) #19
  call void @copy_m3_m4(ptr noundef nonnull %8, ptr noundef nonnull %7) #19
  call void @transpose_m3(ptr noundef nonnull %8) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef %3) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %4) #18
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef nonnull %9) #19
  call void @mul_mat3_m4_v3(ptr noundef nonnull %7, ptr noundef nonnull %10) #19
  %27 = icmp sgt i32 %23, 16
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = call ptr @BKE_object_boundbox_get(ptr noundef %0) #19
  %30 = call zeroext i8 @BKE_boundbox_ray_hit_check(ptr noundef %29, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef null) #19
  %31 = icmp eq i8 %30, 1
  br i1 %31, label %32, label %121

32:                                               ; preds = %25, %28
  %33 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 31
  %34 = load ptr, ptr %33, align 8, !tbaa !252
  %35 = call ptr %34(ptr noundef nonnull %1) #19
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 33
  %37 = load ptr, ptr %36, align 8, !tbaa !328
  %38 = call ptr %37(ptr noundef nonnull %1) #19
  %39 = icmp sgt i32 %23, 0
  br i1 %39, label %40, label %121

40:                                               ; preds = %32
  %41 = zext nneg i32 %23 to i64
  br label %42

42:                                               ; preds = %40, %118
  %43 = phi i64 [ 0, %40 ], [ %119, %118 ]
  %44 = getelementptr inbounds %struct.MFace, ptr %38, i64 %43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #17
  %45 = load i32, ptr %44, align 4, !tbaa !329
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.MVert, ptr %35, i64 %46
  %48 = getelementptr inbounds %struct.MFace, ptr %38, i64 %43, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !331
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.MVert, ptr %35, i64 %50
  %52 = getelementptr inbounds %struct.MFace, ptr %38, i64 %43, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !332
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.MVert, ptr %35, i64 %54
  %56 = call zeroext i8 @isect_ray_tri_threshold_v3(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %47, ptr noundef %51, ptr noundef %55, ptr noundef nonnull %11, ptr noundef null, float noundef 0x3F50624DE0000000) #19
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %81, label %58

58:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %10) #18
  %59 = load float, ptr %11, align 4, !tbaa !56
  call fastcc void @mul_v3_fl(ptr noundef nonnull %14, float noundef %59) #18
  call fastcc void @add_v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %9) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %14) #18
  %60 = getelementptr inbounds %struct.MFace, ptr %38, i64 %43, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !333
  %62 = icmp eq i32 %61, 0
  %63 = load i32, ptr %44, align 4, !tbaa !329
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.MVert, ptr %35, i64 %64
  %66 = load i32, ptr %48, align 4, !tbaa !331
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.MVert, ptr %35, i64 %67
  %69 = load i32, ptr %52, align 4, !tbaa !332
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.MVert, ptr %35, i64 %70
  br i1 %62, label %76, label %72

72:                                               ; preds = %58
  %73 = zext i32 %61 to i64
  %74 = getelementptr inbounds %struct.MVert, ptr %35, i64 %73
  %75 = call float @normal_quad_v3(ptr noundef nonnull %13, ptr noundef %65, ptr noundef %68, ptr noundef %71, ptr noundef nonnull %74) #19
  br label %78

76:                                               ; preds = %58
  %77 = call float @normal_tri_v3(ptr noundef nonnull %13, ptr noundef %65, ptr noundef %68, ptr noundef %71) #19
  br label %78

78:                                               ; preds = %72, %76
  call void @mul_m4_v3(ptr noundef %2, ptr noundef nonnull %12) #19
  %79 = call fastcc float @len_v3v3(ptr noundef nonnull %12, ptr noundef %3) #18
  call void @mul_m3_v3(ptr noundef nonnull %8, ptr noundef nonnull %13) #19
  %80 = call fastcc float @normalize_v3(ptr noundef nonnull %13) #18
  call fastcc void @addDepthPeel(ptr noundef %5, float noundef %79, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef %0) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #17
  br label %118

81:                                               ; preds = %42
  %82 = getelementptr inbounds %struct.MFace, ptr %38, i64 %43, i32 3
  %83 = load i32, ptr %82, align 4, !tbaa !333
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %118, label %85

85:                                               ; preds = %81
  %86 = load i32, ptr %52, align 4, !tbaa !332
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.MVert, ptr %35, i64 %87
  %89 = zext i32 %83 to i64
  %90 = getelementptr inbounds %struct.MVert, ptr %35, i64 %89
  %91 = load i32, ptr %44, align 4, !tbaa !329
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.MVert, ptr %35, i64 %92
  %94 = call zeroext i8 @isect_ray_tri_threshold_v3(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %88, ptr noundef nonnull %90, ptr noundef %93, ptr noundef nonnull %11, ptr noundef null, float noundef 0x3F50624DE0000000) #19
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %118, label %96

96:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %17, ptr noundef nonnull %10) #18
  %97 = load float, ptr %11, align 4, !tbaa !56
  call fastcc void @mul_v3_fl(ptr noundef nonnull %17, float noundef %97) #18
  call fastcc void @add_v3_v3(ptr noundef nonnull %17, ptr noundef nonnull %9) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %17) #18
  %98 = load i32, ptr %82, align 4, !tbaa !333
  %99 = icmp eq i32 %98, 0
  %100 = load i32, ptr %44, align 4, !tbaa !329
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.MVert, ptr %35, i64 %101
  %103 = load i32, ptr %48, align 4, !tbaa !331
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.MVert, ptr %35, i64 %104
  %106 = load i32, ptr %52, align 4, !tbaa !332
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.MVert, ptr %35, i64 %107
  br i1 %99, label %113, label %109

109:                                              ; preds = %96
  %110 = zext i32 %98 to i64
  %111 = getelementptr inbounds %struct.MVert, ptr %35, i64 %110
  %112 = call float @normal_quad_v3(ptr noundef nonnull %16, ptr noundef %102, ptr noundef %105, ptr noundef %108, ptr noundef nonnull %111) #19
  br label %115

113:                                              ; preds = %96
  %114 = call float @normal_tri_v3(ptr noundef nonnull %16, ptr noundef %102, ptr noundef %105, ptr noundef %108) #19
  br label %115

115:                                              ; preds = %113, %109
  call void @mul_m4_v3(ptr noundef %2, ptr noundef nonnull %15) #19
  %116 = call fastcc float @len_v3v3(ptr noundef nonnull %15, ptr noundef %3) #18
  call void @mul_m3_v3(ptr noundef nonnull %8, ptr noundef nonnull %16) #19
  %117 = call fastcc float @normalize_v3(ptr noundef nonnull %16) #18
  call fastcc void @addDepthPeel(ptr noundef %5, float noundef %116, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef %0) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #17
  br label %118

118:                                              ; preds = %78, %85, %115, %81
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #17
  %119 = add nuw nsw i64 %43, 1
  %120 = icmp eq i64 %119, %41
  br i1 %120, label %121, label %42, !llvm.loop !334

121:                                              ; preds = %118, %32, %28
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #17
  br label %122

122:                                              ; preds = %121, %6
  ret void
}

; Function Attrs: optsize
declare void @BLI_sortlist(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal noundef i32 @cmpPeel(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !335 {
  %3 = getelementptr inbounds %struct.DepthPeel, ptr %0, i64 0, i32 2
  %4 = load float, ptr %3, align 8, !tbaa !336
  %5 = getelementptr inbounds %struct.DepthPeel, ptr %1, i64 0, i32 2
  %6 = load float, ptr %5, align 8, !tbaa !336
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @removeDoublesPeel(ptr nocapture noundef readonly %0) unnamed_addr #1 !PGOFuncName !337 {
  %2 = load ptr, ptr %0, align 8, !tbaa !52
  %3 = icmp eq ptr %2, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %1, %24
  %5 = phi ptr [ %25, %24 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.DepthPeel, ptr %5, i64 0, i32 2
  %10 = load float, ptr %9, align 8, !tbaa !336
  %11 = getelementptr inbounds %struct.DepthPeel, ptr %6, i64 0, i32 2
  %12 = load float, ptr %11, align 8, !tbaa !336
  %13 = fsub float %10, %12
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = fcmp olt float %14, 0x3F589374C0000000
  br i1 %15, label %16, label %24

16:                                               ; preds = %8
  %17 = load ptr, ptr %6, align 8, !tbaa !196
  store ptr %17, ptr %5, align 8, !tbaa !196
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.DepthPeel, ptr %17, i64 0, i32 1
  store ptr %5, ptr %20, align 8, !tbaa !338
  br label %21

21:                                               ; preds = %19, %16
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %22(ptr noundef nonnull %6) #19
  %23 = load ptr, ptr %5, align 8, !tbaa !52
  br label %24

24:                                               ; preds = %21, %8
  %25 = phi ptr [ %23, %21 ], [ %6, %8 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %4, !llvm.loop !339

27:                                               ; preds = %4, %24, %1
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @isect_ray_tri_threshold_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @addDepthPeel(ptr noundef %0, float noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4) unnamed_addr #1 !PGOFuncName !340 {
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %7 = tail call ptr %6(i64 noundef 64, ptr noundef nonnull @.str.8) #19
  %8 = getelementptr inbounds %struct.DepthPeel, ptr %7, i64 0, i32 2
  store float %1, ptr %8, align 8, !tbaa !336
  %9 = getelementptr inbounds %struct.DepthPeel, ptr %7, i64 0, i32 5
  store ptr %4, ptr %9, align 8, !tbaa !197
  %10 = getelementptr inbounds %struct.DepthPeel, ptr %7, i64 0, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %2) #18
  %11 = getelementptr inbounds %struct.DepthPeel, ptr %7, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef %3) #18
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %7) #19
  %12 = getelementptr inbounds %struct.DepthPeel, ptr %7, i64 0, i32 6
  store i32 0, ptr %12, align 8, !tbaa !194
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @snapNodeTest(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !341 {
  switch i32 %2, label %39 [
    i32 1, label %4
    i32 0, label %9
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !342
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %39

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !342
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %9, %4
  %15 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 40
  %16 = load float, ptr %15, align 8, !tbaa !344
  %17 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %18 = load float, ptr %17, align 4, !tbaa !345
  %19 = fcmp olt float %16, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %22 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 40, i32 1
  %23 = load float, ptr %22, align 4, !tbaa !346
  %24 = load float, ptr %21, align 8, !tbaa !347
  %25 = fcmp ogt float %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 40, i32 2
  %28 = load float, ptr %27, align 8, !tbaa !348
  %29 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %30 = load float, ptr %29, align 4, !tbaa !349
  %31 = fcmp olt float %28, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 40, i32 3
  %34 = load float, ptr %33, align 4, !tbaa !350
  %35 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %36 = load float, ptr %35, align 8, !tbaa !351
  %37 = fcmp ogt float %34, %36
  %38 = zext i1 %37 to i8
  br label %39

39:                                               ; preds = %4, %3, %14, %20, %26, %32, %9
  %40 = phi i8 [ 0, %9 ], [ 0, %26 ], [ 0, %20 ], [ 0, %14 ], [ %38, %32 ], [ 0, %3 ], [ 0, %4 ]
  ret i8 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @snapNode(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6) unnamed_addr #1 !PGOFuncName !352 {
  %8 = alloca %struct.rcti, align 4
  %9 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %0, i64 0, i32 52
  %11 = load i8, ptr %10, align 8, !tbaa !149
  %12 = zext i8 %11 to i32
  %13 = tail call fastcc i32 @snapNodeBorder(i32 noundef %12) #18, !range !353
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #17
  %14 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40
  call void @UI_view2d_view_to_region_rcti(ptr noundef nonnull %9, ptr noundef nonnull %14, ptr noundef nonnull %8) #19
  %15 = and i32 %13, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %7
  %18 = load i32, ptr %8, align 4, !tbaa !354
  %19 = load i32, ptr %3, align 4, !tbaa !66
  %20 = sub nsw i32 %18, %19
  %21 = call i32 @llvm.abs.i32(i32 %20, i1 true)
  %22 = sitofp i32 %21 to float
  %23 = load float, ptr %5, align 4, !tbaa !56
  %24 = fcmp ogt float %23, %22
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = sitofp i32 %18 to float
  %27 = getelementptr inbounds i32, ptr %3, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !66
  %29 = sitofp i32 %28 to float
  %30 = getelementptr inbounds float, ptr %4, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %9, float noundef %26, float noundef %29, ptr noundef %4, ptr noundef nonnull %30) #19
  store float %22, ptr %5, align 4, !tbaa !56
  store i8 4, ptr %6, align 1, !tbaa !50
  br label %31

31:                                               ; preds = %17, %25, %7
  %32 = phi i8 [ 1, %25 ], [ 0, %17 ], [ 0, %7 ]
  %33 = icmp ult i32 %13, 8
  br i1 %33, label %49, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.rcti, ptr %8, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !355
  %37 = load i32, ptr %3, align 4, !tbaa !66
  %38 = sub nsw i32 %36, %37
  %39 = call i32 @llvm.abs.i32(i32 %38, i1 true)
  %40 = sitofp i32 %39 to float
  %41 = load float, ptr %5, align 4, !tbaa !56
  %42 = fcmp ogt float %41, %40
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = sitofp i32 %36 to float
  %45 = getelementptr inbounds i32, ptr %3, i64 1
  %46 = load i32, ptr %45, align 4, !tbaa !66
  %47 = sitofp i32 %46 to float
  %48 = getelementptr inbounds float, ptr %4, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %9, float noundef %44, float noundef %47, ptr noundef %4, ptr noundef nonnull %48) #19
  store float %40, ptr %5, align 4, !tbaa !56
  store i8 8, ptr %6, align 1, !tbaa !50
  br label %49

49:                                               ; preds = %34, %43, %31
  %50 = phi i8 [ 1, %43 ], [ %32, %34 ], [ %32, %31 ]
  %51 = and i32 %13, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.rcti, ptr %8, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !356
  %56 = getelementptr inbounds i32, ptr %3, i64 1
  %57 = load i32, ptr %56, align 4, !tbaa !66
  %58 = sub nsw i32 %55, %57
  %59 = call i32 @llvm.abs.i32(i32 %58, i1 true)
  %60 = sitofp i32 %59 to float
  %61 = load float, ptr %5, align 4, !tbaa !56
  %62 = fcmp ogt float %61, %60
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load i32, ptr %3, align 4, !tbaa !66
  %65 = sitofp i32 %64 to float
  %66 = sitofp i32 %55 to float
  %67 = getelementptr inbounds float, ptr %4, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %9, float noundef %65, float noundef %66, ptr noundef %4, ptr noundef nonnull %67) #19
  store float %60, ptr %5, align 4, !tbaa !56
  store i8 2, ptr %6, align 1, !tbaa !50
  br label %68

68:                                               ; preds = %53, %63, %49
  %69 = phi i8 [ 1, %63 ], [ %50, %53 ], [ %50, %49 ]
  %70 = and i32 %13, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.rcti, ptr %8, i64 0, i32 3
  %74 = load i32, ptr %73, align 4, !tbaa !357
  %75 = getelementptr inbounds i32, ptr %3, i64 1
  %76 = load i32, ptr %75, align 4, !tbaa !66
  %77 = sub nsw i32 %74, %76
  %78 = call i32 @llvm.abs.i32(i32 %77, i1 true)
  %79 = sitofp i32 %78 to float
  %80 = load float, ptr %5, align 4, !tbaa !56
  %81 = fcmp ogt float %80, %79
  br i1 %81, label %82, label %87

82:                                               ; preds = %72
  %83 = load i32, ptr %3, align 4, !tbaa !66
  %84 = sitofp i32 %83 to float
  %85 = sitofp i32 %74 to float
  %86 = getelementptr inbounds float, ptr %4, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %9, float noundef %84, float noundef %85, ptr noundef %4, ptr noundef nonnull %86) #19
  store float %79, ptr %5, align 4, !tbaa !56
  store i8 1, ptr %6, align 1, !tbaa !50
  br label %87

87:                                               ; preds = %72, %82, %68
  %88 = phi i8 [ 1, %82 ], [ %69, %72 ], [ %69, %68 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #17
  ret i8 %88
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @snapNodeBorder(i32 noundef %0) unnamed_addr #13 !PGOFuncName !358 {
  %2 = add i32 %0, -5
  %3 = icmp ult i32 %2, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  %6 = getelementptr inbounds [3 x i32], ptr @switch.table.snapNodeBorder, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: optsize
declare void @UI_view2d_view_to_region_rcti(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: optsize
declare void @ED_space_image_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #16

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { optsize }
attributes #19 = { nounwind optsize }

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
!49 = !{i8 0, i8 2}
!50 = !{!37, !37, i64 0}
!51 = !{!35, !37, i64 976}
!52 = !{!41, !41, i64 0}
!53 = !{!35, !41, i64 384}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!40, !40, i64 0}
!57 = !{!58, !37, i64 344}
!58 = !{!"View3D", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !37, i64 56, !40, i64 72, !40, i64 76, !37, i64 80, !37, i64 81, !36, i64 84, !36, i64 88, !39, i64 92, !39, i64 94, !41, i64 96, !41, i64 104, !59, i64 112, !44, i64 128, !41, i64 144, !41, i64 152, !37, i64 160, !36, i64 224, !36, i64 228, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !37, i64 260, !37, i64 272, !39, i64 284, !39, i64 286, !39, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !44, i64 296, !44, i64 312, !44, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !41, i64 352, !41, i64 360, !41, i64 368}
!59 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!60 = distinct !{!60, !55}
!61 = !{!35, !37, i64 360}
!62 = !{!35, !37, i64 304}
!63 = !{!64, !39, i64 16}
!64 = !{!"wmEvent", !41, i64 0, !41, i64 8, !39, i64 16, !39, i64 18, !36, i64 20, !36, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !39, i64 44, !39, i64 46, !36, i64 48, !36, i64 52, !45, i64 56, !36, i64 64, !36, i64 68, !39, i64 72, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !41, i64 88, !41, i64 96, !39, i64 104, !39, i64 106, !36, i64 108, !41, i64 112}
!65 = !{i32 0, i32 2}
!66 = !{!36, !36, i64 0}
!67 = !{!35, !41, i64 1248}
!68 = distinct !{!68, !55}
!69 = !{!35, !37, i64 305}
!70 = !{!35, !36, i64 4}
!71 = !{!35, !41, i64 56}
!72 = !{!35, !41, i64 1312}
!73 = !{!35, !41, i64 1128}
!74 = !{!35, !36, i64 48}
!75 = !{!76, !36, i64 216}
!76 = !{!"TransData", !40, i64 0, !40, i64 4, !40, i64 8, !41, i64 16, !37, i64 24, !41, i64 40, !40, i64 48, !37, i64 52, !37, i64 64, !37, i64 100, !37, i64 136, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !36, i64 216, !39, i64 220}
!77 = !{!76, !40, i64 8}
!78 = !{!76, !41, i64 16}
!79 = !{!76, !41, i64 176}
!80 = !{!81, !37, i64 1161}
!81 = !{!"Object", !82, i64 0, !41, i64 120, !41, i64 128, !39, i64 136, !39, i64 138, !36, i64 140, !36, i64 144, !36, i64 148, !37, i64 152, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288, !41, i64 296, !41, i64 304, !83, i64 312, !41, i64 360, !44, i64 368, !44, i64 384, !44, i64 400, !44, i64 416, !36, i64 432, !36, i64 436, !41, i64 440, !41, i64 448, !36, i64 456, !36, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !40, i64 616, !40, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !36, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !36, i64 968, !36, i64 972, !36, i64 976, !36, i64 980, !36, i64 984, !40, i64 988, !40, i64 992, !40, i64 996, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !40, i64 1028, !40, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !40, i64 1048, !40, i64 1052, !44, i64 1056, !44, i64 1072, !44, i64 1088, !44, i64 1104, !40, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !36, i64 1144, !36, i64 1148, !41, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !44, i64 1176, !44, i64 1192, !44, i64 1208, !44, i64 1224, !41, i64 1240, !41, i64 1248, !41, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !40, i64 1268, !41, i64 1272, !41, i64 1280, !41, i64 1288, !41, i64 1296, !84, i64 1304, !84, i64 1312, !36, i64 1320, !36, i64 1324, !44, i64 1328, !44, i64 1344, !41, i64 1360, !41, i64 1368, !41, i64 1376, !37, i64 1384, !41, i64 1392, !44, i64 1400, !41, i64 1416}
!82 = !{!"ID", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !39, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !41, i64 112}
!83 = !{!"bAnimVizSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44}
!84 = !{!"long", !37, i64 0}
!85 = !{!86, !41, i64 0}
!86 = !{!"Global", !41, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !44, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !39, i64 2084, !39, i64 2086, !39, i64 2088, !37, i64 2090, !39, i64 2092, !36, i64 2096, !36, i64 2100, !37, i64 2104, !36, i64 2108, !36, i64 2112, !37, i64 2116}
!87 = !{!88, !41, i64 1888}
!88 = !{!"Main", !41, i64 0, !41, i64 8, !37, i64 16, !39, i64 1040, !39, i64 1042, !39, i64 1044, !39, i64 1046, !84, i64 1048, !37, i64 1056, !39, i64 1072, !41, i64 1080, !44, i64 1088, !44, i64 1104, !44, i64 1120, !44, i64 1136, !44, i64 1152, !44, i64 1168, !44, i64 1184, !44, i64 1200, !44, i64 1216, !44, i64 1232, !44, i64 1248, !44, i64 1264, !44, i64 1280, !44, i64 1296, !44, i64 1312, !44, i64 1328, !44, i64 1344, !44, i64 1360, !44, i64 1376, !44, i64 1392, !44, i64 1408, !44, i64 1424, !44, i64 1440, !44, i64 1456, !44, i64 1472, !44, i64 1488, !44, i64 1504, !44, i64 1520, !44, i64 1536, !44, i64 1552, !44, i64 1568, !44, i64 1584, !44, i64 1600, !44, i64 1616, !37, i64 1632, !41, i64 1888, !41, i64 1896}
!89 = !{!35, !41, i64 1256}
!90 = !{!35, !39, i64 302}
!91 = !{!76, !41, i64 192}
!92 = !{!93, !36, i64 320}
!93 = !{!"TransDataExtension", !37, i64 0, !37, i64 12, !37, i64 28, !41, i64 40, !37, i64 48, !41, i64 64, !37, i64 72, !41, i64 88, !40, i64 96, !41, i64 104, !37, i64 112, !41, i64 128, !37, i64 136, !37, i64 148, !37, i64 212, !37, i64 248, !37, i64 284, !36, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 364, !40, i64 376}
!94 = !{!93, !41, i64 40}
!95 = distinct !{!95, !55}
!96 = !{!"transform_snap.c:copy_v3_v3"}
!97 = !{!98, !41, i64 264}
!98 = !{!"Scene", !82, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !44, i64 152, !41, i64 168, !41, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !36, i64 232, !36, i64 236, !36, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !99, i64 280, !107, i64 4264, !44, i64 4296, !44, i64 4312, !41, i64 4328, !41, i64 4336, !41, i64 4344, !41, i64 4352, !41, i64 4360, !41, i64 4368, !39, i64 4376, !39, i64 4378, !36, i64 4380, !44, i64 4384, !108, i64 4400, !109, i64 4416, !112, i64 4600, !41, i64 4608, !113, i64 4616, !41, i64 4640, !84, i64 4648, !84, i64 4656, !101, i64 4664, !102, i64 4824, !114, i64 4888, !41, i64 4952}
!99 = !{!"RenderData", !100, i64 0, !41, i64 248, !41, i64 256, !103, i64 264, !104, i64 328, !36, i64 400, !36, i64 404, !36, i64 408, !40, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !39, i64 432, !39, i64 434, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !36, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !36, i64 484, !36, i64 488, !39, i64 492, !39, i64 494, !36, i64 496, !36, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !36, i64 516, !36, i64 520, !36, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !59, i64 544, !59, i64 560, !105, i64 576, !44, i64 592, !39, i64 608, !39, i64 610, !40, i64 612, !40, i64 616, !40, i64 620, !40, i64 624, !36, i64 628, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !40, i64 660, !40, i64 664, !39, i64 668, !39, i64 670, !40, i64 672, !40, i64 676, !37, i64 680, !36, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !36, i64 2520, !39, i64 2524, !39, i64 2526, !40, i64 2528, !40, i64 2532, !39, i64 2536, !39, i64 2538, !40, i64 2540, !39, i64 2544, !39, i64 2546, !36, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !40, i64 2560, !40, i64 2564, !41, i64 2568, !36, i64 2576, !40, i64 2580, !37, i64 2584, !106, i64 2616, !36, i64 3976, !36, i64 3980}
!100 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !40, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !101, i64 24, !102, i64 184}
!101 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !40, i64 136, !40, i64 140, !41, i64 144, !41, i64 152}
!102 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!103 = !{!"QuicktimeCodecSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !39, i64 48, !39, i64 50, !36, i64 52, !36, i64 56, !36, i64 60}
!104 = !{!"FFMpegCodecData", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !40, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !41, i64 64}
!105 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!106 = !{!"BakeData", !100, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !40, i64 1280, !40, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!107 = !{!"AudioData", !36, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !36, i64 16, !39, i64 20, !39, i64 22, !40, i64 24, !40, i64 28}
!108 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!109 = !{!"GameData", !108, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !110, i64 40, !39, i64 64, !39, i64 66, !40, i64 68, !111, i64 72, !40, i64 128, !40, i64 132, !36, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180}
!110 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !40, i64 8, !40, i64 12, !41, i64 16}
!111 = !{!"RecastData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !36, i64 40, !40, i64 44, !40, i64 48, !39, i64 52, !39, i64 54}
!112 = !{!"UnitSettings", !40, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!113 = !{!"PhysicsSettings", !37, i64 0, !36, i64 12, !36, i64 16, !36, i64 20}
!114 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!115 = !{!116, !37, i64 431}
!116 = !{!"ToolSettings", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !39, i64 44, !39, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !40, i64 52, !39, i64 56, !37, i64 58, !37, i64 59, !117, i64 64, !119, i64 168, !40, i64 336, !40, i64 340, !39, i64 344, !39, i64 346, !37, i64 348, !37, i64 349, !39, i64 350, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !40, i64 368, !40, i64 372, !40, i64 376, !40, i64 380, !40, i64 384, !40, i64 388, !39, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !41, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !39, i64 434, !39, i64 436, !39, i64 438, !39, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !36, i64 448, !36, i64 452, !36, i64 456, !36, i64 460, !39, i64 464, !39, i64 466, !36, i64 468, !40, i64 472, !40, i64 476, !120, i64 480, !121, i64 608}
!117 = !{!"ImagePaintSettings", !118, i64 0, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !37, i64 48, !36, i64 52, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !37, i64 88, !40, i64 100}
!118 = !{!"Paint", !41, i64 0, !41, i64 8, !41, i64 16, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36}
!119 = !{!"ParticleEditSettings", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !41, i64 120, !40, i64 128, !40, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !41, i64 152, !41, i64 160}
!120 = !{!"UnifiedPaintSettings", !36, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !37, i64 16, !37, i64 28, !36, i64 40, !37, i64 44, !40, i64 52, !36, i64 56, !36, i64 60, !37, i64 64, !37, i64 65, !40, i64 72, !37, i64 76, !36, i64 84, !40, i64 88, !37, i64 92, !37, i64 100, !36, i64 108, !41, i64 112, !40, i64 120, !36, i64 124}
!121 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 21, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36}
!122 = !{!98, !41, i64 168}
!123 = !{!35, !41, i64 1224}
!124 = !{!"transform_snap.c:sub_v3_v3v3"}
!125 = !{!"transform_snap.c:add_v3_v3"}
!126 = !{!"transform_snap.c:cross_v3_v3v3"}
!127 = !{!"transform_snap.c:saacos"}
!128 = !{!"transform_snap.c:dot_v3v3"}
!129 = !{!"transform_snap.c:add_v3_v3v3"}
!130 = !{!35, !39, i64 296}
!131 = distinct !{!131, !55}
!132 = !{!"transform_snap.c:mul_v3_v3fl"}
!133 = !{!"transform_snap.c:mul_v3_fl"}
!134 = !{!35, !41, i64 424}
!135 = !{!35, !45, i64 400}
!136 = !{!35, !41, i64 416}
!137 = !{!35, !41, i64 408}
!138 = !{!35, !39, i64 298}
!139 = !{!"transform_snap.c:is_zero_v3"}
!140 = !{!35, !41, i64 1264}
!141 = !{!116, !39, i64 436}
!142 = !{!143, !41, i64 112}
!143 = !{!"wmOperator", !41, i64 0, !41, i64 8, !37, i64 16, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !44, i64 128, !41, i64 144, !41, i64 152, !39, i64 160, !37, i64 162}
!144 = !{!35, !37, i64 306}
!145 = !{!116, !39, i64 434}
!146 = !{!35, !37, i64 307}
!147 = !{!"transform_snap.c:normalize_v3"}
!148 = !{!"transform_snap.c:initSnappingMode"}
!149 = !{!116, !37, i64 432}
!150 = !{!116, !37, i64 433}
!151 = !{!81, !39, i64 136}
!152 = !{!153, !41, i64 32}
!153 = !{!"Base", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !39, i64 28, !39, i64 30, !41, i64 32}
!154 = !{!81, !36, i64 432}
!155 = !{!"transform_snap.c:len_squared_v2v2"}
!156 = !{!"transform_snap.c:BLI_listbase_is_empty"}
!157 = !{!44, !41, i64 0}
!158 = distinct !{!158, !55}
!159 = !{!"transform_snap.c:snapObjects"}
!160 = !{!161, !41, i64 96}
!161 = !{!"ScrArea", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !105, i64 56, !37, i64 72, !37, i64 73, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !39, i64 84, !37, i64 86, !37, i64 87, !41, i64 88, !44, i64 96, !44, i64 112, !44, i64 128, !44, i64 144}
!162 = !{!"transform_snap.c:snapObjectsRay"}
!163 = !{!153, !36, i64 16}
!164 = !{!81, !37, i64 1160}
!165 = !{!153, !36, i64 24}
!166 = !{!81, !39, i64 952}
!167 = !{!168, !41, i64 16}
!168 = !{!"DupliObject", !41, i64 0, !41, i64 8, !41, i64 16, !37, i64 24, !37, i64 88, !37, i64 100, !39, i64 108, !37, i64 110, !37, i64 111, !37, i64 112, !41, i64 144}
!169 = distinct !{!169, !55}
!170 = distinct !{!170, !55}
!171 = !{!"transform_snap.c:peelObjects"}
!172 = !{!58, !36, i64 224}
!173 = !{!174, !41, i64 1680}
!174 = !{!"DerivedMesh", !175, i64 0, !175, i64 200, !175, i64 400, !175, i64 600, !175, i64 800, !36, i64 1000, !36, i64 1004, !36, i64 1008, !36, i64 1012, !36, i64 1016, !36, i64 1020, !36, i64 1024, !41, i64 1032, !41, i64 1040, !36, i64 1048, !40, i64 1052, !36, i64 1056, !36, i64 1060, !41, i64 1064, !37, i64 1072, !41, i64 1080, !41, i64 1088, !41, i64 1096, !41, i64 1104, !41, i64 1112, !41, i64 1120, !41, i64 1128, !41, i64 1136, !41, i64 1144, !41, i64 1152, !41, i64 1160, !41, i64 1168, !41, i64 1176, !41, i64 1184, !41, i64 1192, !41, i64 1200, !41, i64 1208, !41, i64 1216, !41, i64 1224, !41, i64 1232, !41, i64 1240, !41, i64 1248, !41, i64 1256, !41, i64 1264, !41, i64 1272, !41, i64 1280, !41, i64 1288, !41, i64 1296, !41, i64 1304, !41, i64 1312, !41, i64 1320, !41, i64 1328, !41, i64 1336, !41, i64 1344, !41, i64 1352, !41, i64 1360, !41, i64 1368, !41, i64 1376, !41, i64 1384, !41, i64 1392, !41, i64 1400, !41, i64 1408, !41, i64 1416, !41, i64 1424, !41, i64 1432, !41, i64 1440, !41, i64 1448, !41, i64 1456, !41, i64 1464, !41, i64 1472, !41, i64 1480, !41, i64 1488, !41, i64 1496, !41, i64 1504, !41, i64 1512, !41, i64 1520, !41, i64 1528, !41, i64 1536, !41, i64 1544, !41, i64 1552, !41, i64 1560, !41, i64 1568, !41, i64 1576, !41, i64 1584, !41, i64 1592, !41, i64 1600, !41, i64 1608, !41, i64 1616, !41, i64 1624, !41, i64 1632, !41, i64 1640, !41, i64 1648, !41, i64 1656, !41, i64 1664, !41, i64 1672, !41, i64 1680}
!175 = !{!"CustomData", !41, i64 0, !37, i64 8, !36, i64 172, !36, i64 176, !36, i64 180, !41, i64 184, !41, i64 192}
!176 = distinct !{!176, !55}
!177 = distinct !{!177, !55}
!178 = !{!35, !41, i64 1240}
!179 = !{!"transform_snap.c:snapNodes"}
!180 = !{!181, !41, i64 288}
!181 = !{!"SpaceNode", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !182, i64 56, !41, i64 216, !41, i64 224, !39, i64 232, !39, i64 234, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !37, i64 256, !44, i64 264, !41, i64 280, !41, i64 288, !37, i64 296, !36, i64 360, !36, i64 364, !39, i64 368, !39, i64 370, !39, i64 372, !39, i64 374, !44, i64 376, !41, i64 392}
!182 = !{!"View2D", !59, i64 0, !59, i64 16, !105, i64 32, !105, i64 48, !105, i64 64, !37, i64 80, !37, i64 88, !40, i64 96, !40, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !41, i64 128, !36, i64 136, !36, i64 140, !41, i64 144, !41, i64 152}
!183 = distinct !{!183, !55}
!184 = !{!35, !39, i64 698}
!185 = !{!"transform_snap.c:applyGridIncrement"}
!186 = !{!35, !36, i64 0}
!187 = !{!35, !36, i64 16}
!188 = distinct !{!188, !55}
!189 = !{!"transform_snap.c:normalize_v3_v3"}
!190 = !{!"transform_snap.c:zero_v3"}
!191 = !{!"transform_snap.c:setSnappingCallback"}
!192 = !{!35, !41, i64 432}
!193 = !{!"transform_snap.c:CalcSnapGeometry"}
!194 = !{!195, !36, i64 56}
!195 = !{!"DepthPeel", !41, i64 0, !41, i64 8, !40, i64 16, !37, i64 20, !37, i64 32, !41, i64 48, !36, i64 56}
!196 = !{!195, !41, i64 0}
!197 = !{!195, !41, i64 48}
!198 = distinct !{!198, !55}
!199 = distinct !{!199, !55}
!200 = distinct !{!200, !55}
!201 = !{!"transform_snap.c:TargetSnapClosest"}
!202 = !{!35, !40, i64 392}
!203 = distinct !{!203, !55}
!204 = distinct !{!204, !55}
!205 = distinct !{!205, !55}
!206 = !{!"transform_snap.c:TargetSnapCenter"}
!207 = !{!"transform_snap.c:TargetSnapMedian"}
!208 = distinct !{!208, !55}
!209 = !{!"transform_snap.c:TargetSnapActive"}
!210 = !{!"transform_snap.c:ApplySnapTranslation"}
!211 = !{!"transform_snap.c:TranslationBetween"}
!212 = !{!"transform_snap.c:ApplySnapRotation"}
!213 = !{!"transform_snap.c:RotationBetween"}
!214 = !{!35, !41, i64 288}
!215 = !{!35, !36, i64 260}
!216 = !{!"transform_snap.c:ApplySnapResize"}
!217 = !{!"transform_snap.c:ResizeBetween"}
!218 = !{!"transform_snap.c:BLI_listbase_clear"}
!219 = !{!"transform_snap.c:len_v3v3"}
!220 = !{!"transform_snap.c:sub_v2_v2v2"}
!221 = !{!"transform_snap.c:copy_v2_v2"}
!222 = !{!"transform_snap.c:len_v3"}
!223 = !{!"transform_snap.c:TargetSnapOffset"}
!224 = !{!76, !41, i64 208}
!225 = !{!"transform_snap.c:BLI_rctf_size_x"}
!226 = !{!59, !40, i64 4}
!227 = !{!59, !40, i64 0}
!228 = !{!"transform_snap.c:BLI_rctf_size_y"}
!229 = !{!59, !40, i64 12}
!230 = !{!59, !40, i64 8}
!231 = !{!"transform_snap.c:dot_v2v2"}
!232 = !{!"transform_snap.c:snapObject"}
!233 = !{!84, !84, i64 0}
!234 = !{!81, !41, i64 296}
!235 = !{!"transform_snap.c:snapDerivedMesh"}
!236 = !{!237, !41, i64 376}
!237 = !{!"ARegion", !41, i64 0, !41, i64 8, !182, i64 16, !105, i64 176, !105, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !40, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !41, i64 240, !44, i64 248, !44, i64 264, !44, i64 280, !44, i64 296, !44, i64 312, !44, i64 328, !44, i64 344, !41, i64 360, !41, i64 368, !41, i64 376}
!238 = !{!239, !37, i64 808}
!239 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !41, i64 640, !41, i64 648, !41, i64 656, !41, i64 664, !41, i64 672, !41, i64 680, !41, i64 688, !37, i64 696, !37, i64 760, !40, i64 776, !40, i64 780, !40, i64 784, !40, i64 788, !37, i64 792, !40, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !39, i64 824, !39, i64 826, !37, i64 828, !39, i64 844, !39, i64 846, !40, i64 848, !37, i64 852, !40, i64 864, !37, i64 868}
!240 = !{!174, !41, i64 1104}
!241 = !{!242, !41, i64 56}
!242 = !{!"BVHTreeFromMesh", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !37, i64 48, !37, i64 49, !37, i64 50, !40, i64 52, !41, i64 56, !37, i64 64}
!243 = !{!242, !41, i64 0}
!244 = !{!245, !36, i64 0}
!245 = !{!"BVHTreeNearest", !36, i64 0, !37, i64 4, !37, i64 16, !40, i64 28, !36, i64 32}
!246 = !{!245, !40, i64 28}
!247 = !{!242, !41, i64 8}
!248 = !{!249, !36, i64 0}
!249 = !{!"BVHTreeRayHit", !36, i64 0, !37, i64 4, !37, i64 16, !40, i64 28, !36, i64 32}
!250 = !{!249, !40, i64 28}
!251 = !{!242, !41, i64 16}
!252 = !{!174, !41, i64 1168}
!253 = !{!174, !41, i64 1320}
!254 = !{!255, !41, i64 0}
!255 = !{!"BMEditMesh", !41, i64 0, !41, i64 8, !36, i64 16, !41, i64 24, !36, i64 32, !41, i64 40, !41, i64 48, !84, i64 56, !41, i64 64, !36, i64 72, !41, i64 80, !36, i64 88, !39, i64 92, !39, i64 94, !41, i64 96, !36, i64 104}
!256 = !{i8 0, i8 3}
!257 = distinct !{!257, !55}
!258 = !{!174, !41, i64 1176}
!259 = !{!174, !41, i64 1112}
!260 = !{!174, !41, i64 1328}
!261 = !{!262, !41, i64 24}
!262 = !{!"BMEdge", !263, i64 0, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !264, i64 48, !264, i64 64}
!263 = !{!"BMHeader", !41, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!264 = !{!"BMDiskLink", !41, i64 0, !41, i64 8}
!265 = !{!262, !41, i64 32}
!266 = !{!267, !36, i64 0}
!267 = !{!"MEdge", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 9, !39, i64 10}
!268 = !{!267, !36, i64 4}
!269 = distinct !{!269, !55}
!270 = !{!"transform_snap.c:snapArmature"}
!271 = !{!272, !41, i64 160}
!272 = !{!"bArmature", !82, i64 0, !41, i64 120, !44, i64 128, !44, i64 144, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !36, i64 192, !36, i64 196, !36, i64 200, !36, i64 204, !39, i64 208, !39, i64 210, !36, i64 212, !36, i64 216, !36, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !36, i64 248, !36, i64 252}
!273 = !{!274, !36, i64 136}
!274 = !{!"EditBone", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !37, i64 40, !40, i64 104, !37, i64 108, !37, i64 120, !36, i64 132, !36, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !39, i64 180}
!275 = !{!272, !36, i64 216}
!276 = !{!274, !36, i64 132}
!277 = distinct !{!277, !55}
!278 = !{!81, !41, i64 288}
!279 = !{!280, !41, i64 0}
!280 = !{!"bPose", !44, i64 0, !41, i64 16, !39, i64 24, !39, i64 26, !36, i64 28, !36, i64 32, !40, i64 36, !37, i64 40, !37, i64 52, !44, i64 64, !36, i64 80, !36, i64 84, !41, i64 88, !41, i64 96, !83, i64 104, !37, i64 152}
!281 = !{!282, !41, i64 120}
!282 = !{!"bPoseChannel", !41, i64 0, !41, i64 8, !41, i64 16, !44, i64 24, !37, i64 40, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !41, i64 120, !41, i64 128, !41, i64 136, !44, i64 144, !44, i64 160, !41, i64 176, !41, i64 184, !41, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !40, i64 264, !39, i64 268, !39, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !40, i64 524, !40, i64 528, !40, i64 532, !41, i64 536}
!283 = !{!284, !36, i64 176}
!284 = !{!"Bone", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !44, i64 32, !37, i64 48, !40, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !36, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !37, i64 308, !36, i64 320, !39, i64 324, !37, i64 326}
!285 = !{!282, !41, i64 0}
!286 = distinct !{!286, !55}
!287 = !{!"transform_snap.c:snapCurve"}
!288 = !{!289, !41, i64 152}
!289 = !{!"Curve", !82, i64 0, !41, i64 120, !41, i64 128, !44, i64 136, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !39, i64 244, !39, i64 246, !39, i64 248, !39, i64 250, !40, i64 252, !40, i64 256, !36, i64 260, !39, i64 264, !39, i64 266, !36, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !39, i64 284, !39, i64 286, !39, i64 288, !39, i64 290, !36, i64 292, !36, i64 296, !37, i64 300, !39, i64 304, !37, i64 306, !37, i64 307, !40, i64 308, !40, i64 312, !40, i64 316, !40, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !40, i64 336, !40, i64 340, !40, i64 344, !36, i64 348, !36, i64 352, !36, i64 356, !36, i64 360, !36, i64 364, !41, i64 368, !41, i64 376, !37, i64 384, !41, i64 448, !41, i64 456, !41, i64 464, !41, i64 472, !41, i64 480, !36, i64 488, !36, i64 492, !41, i64 496, !290, i64 504, !40, i64 512, !40, i64 516, !40, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!290 = !{!"CharInfo", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !39, i64 6}
!291 = distinct !{!291, !55}
!292 = !{!293, !36, i64 24}
!293 = !{!"Nurb", !41, i64 0, !41, i64 8, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !36, i64 24, !36, i64 28, !37, i64 32, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !39, i64 80, !39, i64 82, !36, i64 84}
!294 = !{!293, !41, i64 72}
!295 = !{!296, !37, i64 52}
!296 = !{!"BezTriple", !37, i64 0, !40, i64 36, !40, i64 40, !40, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !40, i64 56, !40, i64 60, !40, i64 64, !37, i64 68}
!297 = !{!296, !37, i64 54}
!298 = !{!296, !37, i64 51}
!299 = !{!296, !37, i64 49}
!300 = !{!296, !37, i64 53}
!301 = !{!296, !37, i64 50}
!302 = !{!293, !41, i64 64}
!303 = !{!304, !39, i64 24}
!304 = !{!"BPoint", !37, i64 0, !40, i64 16, !40, i64 20, !39, i64 24, !39, i64 26, !40, i64 28, !40, i64 32}
!305 = !{!304, !39, i64 26}
!306 = distinct !{!306, !55}
!307 = !{!"transform_snap.c:snapEmpty"}
!308 = !{!"transform_snap.c:snapCamera"}
!309 = !{!310, !36, i64 80}
!310 = !{!"MovieTrackingObject", !41, i64 0, !41, i64 8, !37, i64 16, !36, i64 80, !40, i64 84, !44, i64 88, !44, i64 104, !311, i64 120, !36, i64 144, !36, i64 148}
!311 = !{!"MovieTrackingReconstruction", !36, i64 0, !40, i64 4, !36, i64 8, !36, i64 12, !41, i64 16}
!312 = !{!98, !36, i64 680}
!313 = !{!314, !36, i64 152}
!314 = !{!"MovieTrackingTrack", !41, i64 0, !41, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !36, i64 120, !36, i64 124, !41, i64 128, !37, i64 136, !40, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !37, i64 164, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !36, i64 184, !40, i64 188, !41, i64 192, !40, i64 200, !40, i64 204}
!315 = distinct !{!315, !55}
!316 = distinct !{!316, !55}
!317 = !{!"transform_snap.c:madd_v3_v3v3fl"}
!318 = !{!"transform_snap.c:_bm_elem_flag_test"}
!319 = !{!263, !37, i64 13}
!320 = !{!"transform_snap.c:snapVertex"}
!321 = !{!"transform_snap.c:snapEdge"}
!322 = !{!"transform_snap.c:len_manhattan_v2v2"}
!323 = !{!"transform_snap.c:normal_short_to_float_v3"}
!324 = !{!39, !39, i64 0}
!325 = !{!"transform_snap.c:len_manhattan_v2"}
!326 = !{!"transform_snap.c:peelDerivedMesh"}
!327 = !{!174, !41, i64 1120}
!328 = !{!174, !41, i64 1184}
!329 = !{!330, !36, i64 0}
!330 = !{!"MFace", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !39, i64 16, !37, i64 18, !37, i64 19}
!331 = !{!330, !36, i64 4}
!332 = !{!330, !36, i64 8}
!333 = !{!330, !36, i64 12}
!334 = distinct !{!334, !55}
!335 = !{!"transform_snap.c:cmpPeel"}
!336 = !{!195, !40, i64 16}
!337 = !{!"transform_snap.c:removeDoublesPeel"}
!338 = !{!195, !41, i64 8}
!339 = distinct !{!339, !55}
!340 = !{!"transform_snap.c:addDepthPeel"}
!341 = !{!"transform_snap.c:snapNodeTest"}
!342 = !{!343, !36, i64 168}
!343 = !{!"bNode", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !37, i64 40, !37, i64 104, !36, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !37, i64 188, !44, i64 200, !44, i64 216, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !44, i64 264, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !36, i64 308, !37, i64 312, !39, i64 376, !39, i64 378, !40, i64 380, !40, i64 384, !39, i64 388, !39, i64 390, !41, i64 392, !59, i64 400, !59, i64 416, !59, i64 432, !39, i64 448, !39, i64 450, !36, i64 452, !41, i64 456}
!344 = !{!343, !40, i64 400}
!345 = !{!182, !40, i64 20}
!346 = !{!343, !40, i64 404}
!347 = !{!182, !40, i64 16}
!348 = !{!343, !40, i64 408}
!349 = !{!182, !40, i64 28}
!350 = !{!343, !40, i64 412}
!351 = !{!182, !40, i64 24}
!352 = !{!"transform_snap.c:snapNode"}
!353 = !{i32 0, i32 16}
!354 = !{!105, !36, i64 0}
!355 = !{!105, !36, i64 4}
!356 = !{!105, !36, i64 8}
!357 = !{!105, !36, i64 12}
!358 = !{!"transform_snap.c:snapNodeBorder"}
