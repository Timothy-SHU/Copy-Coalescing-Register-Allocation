; ModuleID = 'blender/source/blender/blenloader/intern/versioning_270.c'
source_filename = "blender/source/blender/blenloader/intern/versioning_270.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.NodeTreeIterStore = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.FileData = type { %struct.ListBase, i32, i32, i32, i32, ptr, ptr, ptr, i32, ptr, [1024 x i8], i8, i32, %struct.z_stream_s, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.BevelModifierData = type { %struct.ModifierData, float, i32, i16, i16, i16, i16, i16, i16, i32, float, float, [64 x i8] }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.SpaceClip = type { ptr, ptr, %struct.ListBase, i32, float, float, float, float, float, %struct.MovieClipUser, ptr, %struct.MovieClipScopes, i32, i16, i16, i32, [2 x float], float, float, i32, [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i32, i32, [2 x float], %struct.MaskSpaceInfo }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
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
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.FreestyleLineStyle = type { %struct.ID, ptr, float, float, float, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, float, i32, i16, i16, i16, i16, i16, i16, i32, i32, float, i16, i16, i16, [3 x i16], i16, i16, i16, i16, i16, i16, i32, [18 x ptr], ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.bActuator = type { ptr, ptr, ptr, i16, i16, i16, i16, [64 x i8], ptr, ptr }
%struct.bEditObjectActuator = type { i32, i16, i16, ptr, ptr, [64 x i8], [3 x float], [3 x float], float, i16, i16, i16, i16, i32 }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.ParticleSystemModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ClothModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ClothSimSettings = type { ptr, float, float, float, [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i8], ptr }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bStretchToConstraint = type { ptr, i32, i32, i32, float, float, float, float, float, [64 x i8] }
%struct.bTransformConstraint = type { ptr, [64 x i8], i16, i16, [3 x i8], i8, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float] }

@.str = private unnamed_addr constant [18 x i8] c"BevelModifierData\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"MovieTrackingSettings\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"default_weight\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"mode2\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"RenderData\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"BakeData\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"bake\00", align 1
@U = external global %struct.UserDef, align 8
@.str.11 = private unnamed_addr constant [19 x i8] c"FreestyleLineStyle\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"texstep\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"line_col[4]\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"preview_start_resolution\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"mat\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"gen_color\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"bStretchToConstraint\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"bulge_min\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @blo_do_versions_270(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.NodeTreeIterStore, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !34
  %9 = icmp sgt i16 %8, 270
  br i1 %9, label %118, label %10

10:                                               ; preds = %3
  %11 = icmp eq i16 %8, 270
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %14 = load i16, ptr %13, align 2, !tbaa !42
  %15 = icmp sgt i16 %14, -1
  br i1 %15, label %118, label %16

16:                                               ; preds = %12, %10
  %17 = getelementptr inbounds %struct.FileData, ptr %0, i64 0, i32 14
  %18 = load ptr, ptr %17, align 8, !tbaa !43
  %19 = tail call zeroext i8 @DNA_struct_elem_find(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #5
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = icmp eq ptr %23, null
  br i1 %24, label %44, label %28

25:                                               ; preds = %41, %28
  %26 = load ptr, ptr %29, align 8, !tbaa !47
  %27 = icmp eq ptr %26, null
  br i1 %27, label %44, label %28, !llvm.loop !48

28:                                               ; preds = %21, %25
  %29 = phi ptr [ %26, %25 ], [ %23, %21 ]
  %30 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 26
  %31 = load ptr, ptr %30, align 8, !tbaa !47
  %32 = icmp eq ptr %31, null
  br i1 %32, label %25, label %33

33:                                               ; preds = %28, %41
  %34 = phi ptr [ %42, %41 ], [ %31, %28 ]
  %35 = getelementptr inbounds %struct.ModifierData, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !51
  %37 = icmp eq i32 %36, 24
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.BevelModifierData, ptr %34, i64 0, i32 10
  store float 5.000000e-01, ptr %39, align 8, !tbaa !53
  %40 = getelementptr inbounds %struct.BevelModifierData, ptr %34, i64 0, i32 4
  store i16 0, ptr %40, align 2, !tbaa !56
  br label %41

41:                                               ; preds = %33, %38
  %42 = load ptr, ptr %34, align 8, !tbaa !47
  %43 = icmp eq ptr %42, null
  br i1 %43, label %25, label %33, !llvm.loop !57

44:                                               ; preds = %25, %21, %16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %4, ptr noundef %2) #5
  %45 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #5
  %46 = icmp eq i8 %45, 1
  br i1 %46, label %47, label %72

47:                                               ; preds = %44, %69
  %48 = load ptr, ptr %5, align 8, !tbaa !47
  %49 = icmp eq ptr %48, null
  br i1 %49, label %69, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.bNodeTree, ptr %48, i64 0, i32 9
  %52 = load i32, ptr %51, align 8, !tbaa !58
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.bNodeTree, ptr %48, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !47
  %57 = icmp eq ptr %56, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %54, %66
  %59 = phi ptr [ %67, %66 ], [ %56, %54 ]
  %60 = getelementptr inbounds %struct.bNode, ptr %59, i64 0, i32 8
  %61 = load i16, ptr %60, align 4, !tbaa !63
  %62 = and i16 %61, -2
  %63 = icmp eq i16 %62, 222
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.bNode, ptr %59, i64 0, i32 20
  store ptr null, ptr %65, align 8, !tbaa !65
  br label %66

66:                                               ; preds = %58, %64
  %67 = load ptr, ptr %59, align 8, !tbaa !47
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %58, !llvm.loop !66

69:                                               ; preds = %66, %54, %50, %47
  %70 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #5
  %71 = icmp eq i8 %70, 1
  br i1 %71, label %47, label %72, !llvm.loop !67

72:                                               ; preds = %69, %44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #5
  %73 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %74 = load ptr, ptr %73, align 8, !tbaa !47
  %75 = icmp eq ptr %74, null
  br i1 %75, label %105, label %79

76:                                               ; preds = %84, %79
  %77 = load ptr, ptr %80, align 8, !tbaa !47
  %78 = icmp eq ptr %77, null
  br i1 %78, label %105, label %79, !llvm.loop !68

79:                                               ; preds = %72, %76
  %80 = phi ptr [ %77, %76 ], [ %74, %72 ]
  %81 = getelementptr inbounds %struct.bScreen, ptr %80, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !47
  %83 = icmp eq ptr %82, null
  br i1 %83, label %76, label %87

84:                                               ; preds = %102, %87
  %85 = load ptr, ptr %88, align 8, !tbaa !47
  %86 = icmp eq ptr %85, null
  br i1 %86, label %76, label %87, !llvm.loop !69

87:                                               ; preds = %79, %84
  %88 = phi ptr [ %85, %84 ], [ %82, %79 ]
  %89 = getelementptr inbounds %struct.ScrArea, ptr %88, i64 0, i32 19
  %90 = load ptr, ptr %89, align 8, !tbaa !47
  %91 = icmp eq ptr %90, null
  br i1 %91, label %84, label %92

92:                                               ; preds = %87, %102
  %93 = phi ptr [ %103, %102 ], [ %90, %87 ]
  %94 = getelementptr inbounds %struct.SpaceLink, ptr %93, i64 0, i32 3
  %95 = load i32, ptr %94, align 8, !tbaa !70
  %96 = icmp eq i32 %95, 20
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.SpaceClip, ptr %93, i64 0, i32 13
  %99 = load i16, ptr %98, align 4, !tbaa !72
  %100 = icmp eq i16 %99, 3
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  store i16 0, ptr %98, align 4, !tbaa !72
  br label %102

102:                                              ; preds = %97, %101, %92
  %103 = load ptr, ptr %93, align 8, !tbaa !47
  %104 = icmp eq ptr %103, null
  br i1 %104, label %84, label %92, !llvm.loop !78

105:                                              ; preds = %76, %72
  %106 = load ptr, ptr %17, align 8, !tbaa !43
  %107 = call zeroext i8 @DNA_struct_elem_find(ptr noundef %106, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #5
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 42
  %111 = load ptr, ptr %110, align 8, !tbaa !47
  %112 = icmp eq ptr %111, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %109, %113
  %114 = phi ptr [ %116, %113 ], [ %111, %109 ]
  %115 = getelementptr inbounds %struct.MovieClip, ptr %114, i64 0, i32 11, i32 0, i32 10
  store float 1.000000e+00, ptr %115, align 8, !tbaa !79
  %116 = load ptr, ptr %114, align 8, !tbaa !47
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %113, !llvm.loop !89

118:                                              ; preds = %113, %109, %105, %12, %3
  %119 = load i16, ptr %7, align 8, !tbaa !34
  %120 = icmp sgt i16 %119, 270
  br i1 %120, label %161, label %121

121:                                              ; preds = %118
  %122 = icmp eq i16 %119, 270
  br i1 %122, label %123, label %127

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %125 = load i16, ptr %124, align 2, !tbaa !42
  %126 = icmp sgt i16 %125, 0
  br i1 %126, label %161, label %127

127:                                              ; preds = %123, %121
  %128 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %129 = load ptr, ptr %128, align 8, !tbaa !47
  %130 = icmp eq ptr %129, null
  br i1 %130, label %148, label %131

131:                                              ; preds = %127, %145
  %132 = phi ptr [ %146, %145 ], [ %129, %127 ]
  %133 = getelementptr inbounds %struct.Object, ptr %132, i64 0, i32 106
  call fastcc void @do_version_constraints_radians_degrees_270_1(ptr noundef nonnull %133)
  %134 = getelementptr inbounds %struct.Object, ptr %132, i64 0, i32 18
  %135 = load ptr, ptr %134, align 8, !tbaa !90
  %136 = icmp eq ptr %135, null
  br i1 %136, label %145, label %137

137:                                              ; preds = %131
  %138 = load ptr, ptr %135, align 8, !tbaa !47
  %139 = icmp eq ptr %138, null
  br i1 %139, label %145, label %140

140:                                              ; preds = %137, %140
  %141 = phi ptr [ %143, %140 ], [ %138, %137 ]
  %142 = getelementptr inbounds %struct.bPoseChannel, ptr %141, i64 0, i32 3
  call fastcc void @do_version_constraints_radians_degrees_270_1(ptr noundef nonnull %142)
  %143 = load ptr, ptr %141, align 8, !tbaa !47
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %140, !llvm.loop !93

145:                                              ; preds = %140, %137, %131
  %146 = load ptr, ptr %132, align 8, !tbaa !47
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %131, !llvm.loop !94

148:                                              ; preds = %145, %127
  %149 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %150 = load ptr, ptr %149, align 8, !tbaa !47
  %151 = icmp eq ptr %150, null
  br i1 %151, label %161, label %152

152:                                              ; preds = %148, %158
  %153 = phi ptr [ %159, %158 ], [ %150, %148 ]
  %154 = getelementptr inbounds %struct.Scene, ptr %153, i64 0, i32 22, i32 49
  %155 = load i16, ptr %154, align 8, !tbaa !95
  %156 = icmp eq i16 %155, 2
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  store i16 0, ptr %154, align 8, !tbaa !95
  br label %158

158:                                              ; preds = %152, %157
  %159 = load ptr, ptr %153, align 8, !tbaa !47
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %152, !llvm.loop !112

161:                                              ; preds = %158, %148, %123, %118
  %162 = load i16, ptr %7, align 8, !tbaa !34
  %163 = icmp sgt i16 %162, 270
  br i1 %163, label %274, label %164

164:                                              ; preds = %161
  %165 = icmp eq i16 %162, 270
  br i1 %165, label %166, label %170

166:                                              ; preds = %164
  %167 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %168 = load i16, ptr %167, align 2, !tbaa !42
  %169 = icmp sgt i16 %168, 1
  br i1 %169, label %181, label %170

170:                                              ; preds = %166, %164
  %171 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %172 = load ptr, ptr %171, align 8, !tbaa !47
  %173 = icmp eq ptr %172, null
  br i1 %173, label %181, label %174

174:                                              ; preds = %170, %174
  %175 = phi ptr [ %179, %174 ], [ %172, %170 ]
  %176 = getelementptr inbounds %struct.Mesh, ptr %175, i64 0, i32 39
  %177 = load float, ptr %176, align 8, !tbaa !113
  %178 = fmul float %177, 0x3F91DF46A0000000
  store float %178, ptr %176, align 8, !tbaa !113
  %179 = load ptr, ptr %175, align 8, !tbaa !47
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %174, !llvm.loop !116

181:                                              ; preds = %174, %170, %166
  br i1 %163, label %274, label %182

182:                                              ; preds = %181
  %183 = icmp eq i16 %162, 270
  br i1 %183, label %184, label %188

184:                                              ; preds = %182
  %185 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %186 = load i16, ptr %185, align 2, !tbaa !42
  %187 = icmp sgt i16 %186, 2
  br i1 %187, label %201, label %188

188:                                              ; preds = %184, %182
  %189 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 44
  %190 = load ptr, ptr %189, align 8, !tbaa !47
  %191 = icmp eq ptr %190, null
  br i1 %191, label %201, label %192

192:                                              ; preds = %188, %192
  %193 = phi ptr [ %199, %192 ], [ %190, %188 ]
  %194 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %193, i64 0, i32 9
  %195 = load i32, ptr %194, align 4, !tbaa !117
  %196 = or i32 %195, 2048
  store i32 %196, ptr %194, align 4, !tbaa !117
  %197 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %193, i64 0, i32 25
  store i32 1, ptr %197, align 8, !tbaa !119
  %198 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %193, i64 0, i32 26
  store i32 1, ptr %198, align 4, !tbaa !120
  %199 = load ptr, ptr %193, align 8, !tbaa !47
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %192, !llvm.loop !121

201:                                              ; preds = %192, %188, %184
  br i1 %163, label %274, label %202

202:                                              ; preds = %201
  %203 = icmp eq i16 %162, 270
  br i1 %203, label %204, label %208

204:                                              ; preds = %202
  %205 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %206 = load i16, ptr %205, align 2, !tbaa !42
  %207 = icmp sgt i16 %206, 3
  br i1 %207, label %246, label %208

208:                                              ; preds = %204, %202
  %209 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %210 = load ptr, ptr %209, align 8, !tbaa !47
  %211 = icmp eq ptr %210, null
  br i1 %211, label %246, label %215

212:                                              ; preds = %220, %215
  %213 = load ptr, ptr %216, align 8, !tbaa !47
  %214 = icmp eq ptr %213, null
  br i1 %214, label %246, label %215, !llvm.loop !122

215:                                              ; preds = %208, %212
  %216 = phi ptr [ %213, %212 ], [ %210, %208 ]
  %217 = getelementptr inbounds %struct.bScreen, ptr %216, i64 0, i32 3
  %218 = load ptr, ptr %217, align 8, !tbaa !47
  %219 = icmp eq ptr %218, null
  br i1 %219, label %212, label %223

220:                                              ; preds = %230, %223
  %221 = load ptr, ptr %224, align 8, !tbaa !47
  %222 = icmp eq ptr %221, null
  br i1 %222, label %212, label %223, !llvm.loop !123

223:                                              ; preds = %215, %220
  %224 = phi ptr [ %221, %220 ], [ %218, %215 ]
  %225 = getelementptr inbounds %struct.ScrArea, ptr %224, i64 0, i32 19
  %226 = load ptr, ptr %225, align 8, !tbaa !47
  %227 = icmp eq ptr %226, null
  br i1 %227, label %220, label %228

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct.ScrArea, ptr %224, i64 0, i32 20
  br label %233

230:                                              ; preds = %241, %233
  %231 = load ptr, ptr %234, align 8, !tbaa !47
  %232 = icmp eq ptr %231, null
  br i1 %232, label %220, label %233, !llvm.loop !124

233:                                              ; preds = %228, %230
  %234 = phi ptr [ %226, %228 ], [ %231, %230 ]
  %235 = load ptr, ptr %225, align 8, !tbaa !125
  %236 = icmp eq ptr %234, %235
  %237 = getelementptr inbounds %struct.SpaceLink, ptr %234, i64 0, i32 2
  %238 = select i1 %236, ptr %229, ptr %237
  %239 = load ptr, ptr %238, align 8, !tbaa !47
  %240 = icmp eq ptr %239, null
  br i1 %240, label %230, label %241

241:                                              ; preds = %233, %241
  %242 = phi ptr [ %244, %241 ], [ %239, %233 ]
  %243 = getelementptr inbounds %struct.ARegion, ptr %242, i64 0, i32 25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %243, i8 0, i64 16, i1 false)
  %244 = load ptr, ptr %242, align 8, !tbaa !47
  %245 = icmp eq ptr %244, null
  br i1 %245, label %230, label %241, !llvm.loop !127

246:                                              ; preds = %212, %208, %204
  br i1 %163, label %274, label %247

247:                                              ; preds = %246
  %248 = icmp eq i16 %162, 270
  br i1 %248, label %249, label %253

249:                                              ; preds = %247
  %250 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %251 = load i16, ptr %250, align 2, !tbaa !42
  %252 = icmp sgt i16 %251, 4
  br i1 %252, label %274, label %253

253:                                              ; preds = %249, %247
  %254 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %255 = load ptr, ptr %254, align 8, !tbaa !47
  %256 = icmp eq ptr %255, null
  br i1 %256, label %274, label %257

257:                                              ; preds = %253, %271
  %258 = phi ptr [ %272, %271 ], [ %255, %253 ]
  %259 = getelementptr inbounds %struct.Object, ptr %258, i64 0, i32 106
  call fastcc void @do_version_constraints_radians_degrees_270_5(ptr noundef nonnull %259)
  %260 = getelementptr inbounds %struct.Object, ptr %258, i64 0, i32 18
  %261 = load ptr, ptr %260, align 8, !tbaa !90
  %262 = icmp eq ptr %261, null
  br i1 %262, label %271, label %263

263:                                              ; preds = %257
  %264 = load ptr, ptr %261, align 8, !tbaa !47
  %265 = icmp eq ptr %264, null
  br i1 %265, label %271, label %266

266:                                              ; preds = %263, %266
  %267 = phi ptr [ %269, %266 ], [ %264, %263 ]
  %268 = getelementptr inbounds %struct.bPoseChannel, ptr %267, i64 0, i32 3
  call fastcc void @do_version_constraints_radians_degrees_270_5(ptr noundef nonnull %268)
  %269 = load ptr, ptr %267, align 8, !tbaa !47
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %266, !llvm.loop !128

271:                                              ; preds = %266, %263, %257
  %272 = load ptr, ptr %258, align 8, !tbaa !47
  %273 = icmp eq ptr %272, null
  br i1 %273, label %274, label %257, !llvm.loop !129

274:                                              ; preds = %271, %253, %161, %181, %201, %249, %246
  %275 = load i16, ptr %7, align 8, !tbaa !34
  %276 = icmp sgt i16 %275, 271
  br i1 %276, label %358, label %277

277:                                              ; preds = %274
  %278 = icmp eq i16 %275, 271
  br i1 %278, label %279, label %283

279:                                              ; preds = %277
  %280 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %281 = load i16, ptr %280, align 2, !tbaa !42
  %282 = icmp sgt i16 %281, -1
  br i1 %282, label %358, label %283

283:                                              ; preds = %279, %277
  %284 = getelementptr inbounds %struct.FileData, ptr %0, i64 0, i32 14
  %285 = load ptr, ptr %284, align 8, !tbaa !43
  %286 = call zeroext i8 @DNA_struct_elem_find(ptr noundef %285, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #5
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %288, label %297

288:                                              ; preds = %283
  %289 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %290 = load ptr, ptr %289, align 8, !tbaa !47
  %291 = icmp eq ptr %290, null
  br i1 %291, label %297, label %292

292:                                              ; preds = %288, %292
  %293 = phi ptr [ %295, %292 ], [ %290, %288 ]
  %294 = getelementptr inbounds %struct.Material, ptr %293, i64 0, i32 53
  store i32 1, ptr %294, align 4, !tbaa !130
  %295 = load ptr, ptr %293, align 8, !tbaa !47
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %292, !llvm.loop !134

297:                                              ; preds = %292, %288, %283
  %298 = load ptr, ptr %284, align 8, !tbaa !43
  %299 = call zeroext i8 @DNA_struct_elem_find(ptr noundef %298, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #5
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %301, label %324

301:                                              ; preds = %297
  %302 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %303 = load ptr, ptr %302, align 8, !tbaa !47
  %304 = icmp eq ptr %303, null
  br i1 %304, label %324, label %305

305:                                              ; preds = %301, %305
  %306 = phi ptr [ %322, %305 ], [ %303, %301 ]
  %307 = getelementptr inbounds %struct.Scene, ptr %306, i64 0, i32 22, i32 116
  %308 = getelementptr inbounds %struct.Scene, ptr %306, i64 0, i32 22, i32 116, i32 5
  store i16 1, ptr %308, align 2, !tbaa !135
  %309 = getelementptr inbounds %struct.Scene, ptr %306, i64 0, i32 22, i32 116, i32 2
  store i16 512, ptr %309, align 8, !tbaa !136
  %310 = getelementptr inbounds %struct.Scene, ptr %306, i64 0, i32 22, i32 116, i32 3
  store i16 512, ptr %310, align 2, !tbaa !137
  %311 = getelementptr inbounds %struct.Scene, ptr %306, i64 0, i32 22, i32 116, i32 4
  store i16 16, ptr %311, align 4, !tbaa !138
  %312 = getelementptr inbounds %struct.Scene, ptr %306, i64 0, i32 22, i32 116, i32 9
  store i8 3, ptr %312, align 1, !tbaa !139
  %313 = getelementptr inbounds %struct.Scene, ptr %306, i64 0, i32 22, i32 116, i32 8
  store i8 0, ptr %313, align 8, !tbaa !140
  %314 = getelementptr inbounds %struct.Scene, ptr %306, i64 0, i32 22, i32 116, i32 8, i64 1
  store i8 1, ptr %314, align 1, !tbaa !140
  %315 = getelementptr inbounds %struct.Scene, ptr %306, i64 0, i32 22, i32 116, i32 8, i64 2
  store i8 2, ptr %315, align 2, !tbaa !140
  %316 = getelementptr inbounds %struct.Scene, ptr %306, i64 0, i32 22, i32 116, i32 1
  %317 = call ptr @BLI_strncpy(ptr noundef nonnull %316, ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 7), i64 noundef 1024) #5
  %318 = getelementptr inbounds %struct.Scene, ptr %306, i64 0, i32 22, i32 116, i32 0, i32 2
  store i8 32, ptr %318, align 2, !tbaa !141
  store i8 17, ptr %307, align 8, !tbaa !142
  %319 = getelementptr inbounds %struct.Scene, ptr %306, i64 0, i32 22, i32 116, i32 0, i32 1
  store i8 2, ptr %319, align 1, !tbaa !143
  %320 = getelementptr inbounds %struct.Scene, ptr %306, i64 0, i32 22, i32 116, i32 0, i32 4
  store i8 90, ptr %320, align 4, !tbaa !144
  %321 = getelementptr inbounds %struct.Scene, ptr %306, i64 0, i32 22, i32 116, i32 0, i32 5
  store i8 15, ptr %321, align 1, !tbaa !145
  %322 = load ptr, ptr %306, align 8, !tbaa !47
  %323 = icmp eq ptr %322, null
  br i1 %323, label %324, label %305, !llvm.loop !146

324:                                              ; preds = %305, %301, %297
  %325 = load ptr, ptr %284, align 8, !tbaa !43
  %326 = call zeroext i8 @DNA_struct_elem_find(ptr noundef %325, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #5
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %328, label %340

328:                                              ; preds = %324
  %329 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 44
  %330 = load ptr, ptr %329, align 8, !tbaa !47
  %331 = icmp eq ptr %330, null
  br i1 %331, label %340, label %332

332:                                              ; preds = %328, %332
  %333 = phi ptr [ %338, %332 ], [ %330, %328 ]
  %334 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %333, i64 0, i32 9
  %335 = load i32, ptr %334, align 4, !tbaa !117
  %336 = or i32 %335, 8192
  store i32 %336, ptr %334, align 4, !tbaa !117
  %337 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %333, i64 0, i32 27
  store float 1.000000e+00, ptr %337, align 8, !tbaa !147
  %338 = load ptr, ptr %333, align 8, !tbaa !47
  %339 = icmp eq ptr %338, null
  br i1 %339, label %340, label %332, !llvm.loop !148

340:                                              ; preds = %332, %328, %324
  %341 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %342 = load ptr, ptr %341, align 8, !tbaa !47
  %343 = icmp eq ptr %342, null
  br i1 %343, label %358, label %344

344:                                              ; preds = %340, %344
  %345 = phi ptr [ %356, %344 ], [ %342, %340 ]
  %346 = getelementptr inbounds %struct.Scene, ptr %345, i64 0, i32 22, i32 60
  %347 = call i32 @BLI_countlist(ptr noundef nonnull %346) #5
  %348 = getelementptr inbounds %struct.Scene, ptr %345, i64 0, i32 22, i32 61
  %349 = load i16, ptr %348, align 8, !tbaa !149
  %350 = sitofp i16 %349 to float
  %351 = add nsw i32 %347, -1
  %352 = sitofp i32 %351 to float
  %353 = fcmp olt float %350, %352
  %354 = select i1 %353, float %350, float %352
  %355 = fptosi float %354 to i16
  store i16 %355, ptr %348, align 8, !tbaa !149
  %356 = load ptr, ptr %345, align 8, !tbaa !47
  %357 = icmp eq ptr %356, null
  br i1 %357, label %358, label %344, !llvm.loop !150

358:                                              ; preds = %344, %340, %279, %274
  %359 = load i16, ptr %7, align 8, !tbaa !34
  %360 = icmp sgt i16 %359, 271
  br i1 %360, label %399, label %361

361:                                              ; preds = %358
  %362 = icmp eq i16 %359, 271
  br i1 %362, label %363, label %367

363:                                              ; preds = %361
  %364 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %365 = load i16, ptr %364, align 2, !tbaa !42
  %366 = icmp sgt i16 %365, 0
  br i1 %366, label %399, label %367

367:                                              ; preds = %363, %361
  %368 = getelementptr inbounds %struct.FileData, ptr %0, i64 0, i32 14
  %369 = load ptr, ptr %368, align 8, !tbaa !43
  %370 = call zeroext i8 @DNA_struct_elem_find(ptr noundef %369, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13) #5
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %372, label %386

372:                                              ; preds = %367
  %373 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %374 = load ptr, ptr %373, align 8, !tbaa !47
  %375 = icmp eq ptr %374, null
  br i1 %375, label %386, label %376

376:                                              ; preds = %372, %376
  %377 = phi ptr [ %384, %376 ], [ %374, %372 ]
  %378 = getelementptr inbounds %struct.Material, ptr %377, i64 0, i32 128
  %379 = getelementptr inbounds %struct.Material, ptr %377, i64 0, i32 128, i64 2
  store float 0.000000e+00, ptr %379, align 8, !tbaa !151
  %380 = getelementptr inbounds %struct.Material, ptr %377, i64 0, i32 128, i64 1
  store float 0.000000e+00, ptr %380, align 4, !tbaa !151
  store float 0.000000e+00, ptr %378, align 8, !tbaa !151
  %381 = getelementptr inbounds %struct.Material, ptr %377, i64 0, i32 21
  %382 = load float, ptr %381, align 8, !tbaa !152
  %383 = getelementptr inbounds %struct.Material, ptr %377, i64 0, i32 128, i64 3
  store float %382, ptr %383, align 4, !tbaa !151
  %384 = load ptr, ptr %377, align 8, !tbaa !47
  %385 = icmp eq ptr %384, null
  br i1 %385, label %386, label %376, !llvm.loop !153

386:                                              ; preds = %376, %372, %367
  %387 = load ptr, ptr %368, align 8, !tbaa !43
  %388 = call zeroext i8 @DNA_struct_elem_find(ptr noundef %387, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.14) #5
  %389 = icmp eq i8 %388, 0
  br i1 %389, label %390, label %399

390:                                              ; preds = %386
  %391 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %392 = load ptr, ptr %391, align 8, !tbaa !47
  %393 = icmp eq ptr %392, null
  br i1 %393, label %399, label %394

394:                                              ; preds = %390, %394
  %395 = phi ptr [ %397, %394 ], [ %392, %390 ]
  %396 = getelementptr inbounds %struct.Scene, ptr %395, i64 0, i32 22, i32 117
  store i32 64, ptr %396, align 8, !tbaa !154
  %397 = load ptr, ptr %395, align 8, !tbaa !47
  %398 = icmp eq ptr %397, null
  br i1 %398, label %399, label %394, !llvm.loop !155

399:                                              ; preds = %394, %390, %386, %363, %358
  %400 = load i16, ptr %7, align 8, !tbaa !34
  %401 = icmp sgt i16 %400, 271
  br i1 %401, label %483, label %402

402:                                              ; preds = %399
  %403 = icmp eq i16 %400, 271
  br i1 %403, label %404, label %408

404:                                              ; preds = %402
  %405 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %406 = load i16, ptr %405, align 2, !tbaa !42
  %407 = icmp sgt i16 %406, 1
  br i1 %407, label %440, label %408

408:                                              ; preds = %404, %402
  %409 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %410 = load ptr, ptr %409, align 8, !tbaa !47
  %411 = icmp eq ptr %410, null
  br i1 %411, label %440, label %415

412:                                              ; preds = %437, %415
  %413 = load ptr, ptr %416, align 8, !tbaa !47
  %414 = icmp eq ptr %413, null
  br i1 %414, label %440, label %415, !llvm.loop !156

415:                                              ; preds = %408, %412
  %416 = phi ptr [ %413, %412 ], [ %410, %408 ]
  %417 = getelementptr inbounds %struct.Object, ptr %416, i64 0, i32 94
  %418 = load ptr, ptr %417, align 8, !tbaa !47
  %419 = icmp eq ptr %418, null
  br i1 %419, label %412, label %420

420:                                              ; preds = %415
  %421 = getelementptr inbounds %struct.Object, ptr %416, i64 0, i32 57
  br label %422

422:                                              ; preds = %420, %437
  %423 = phi ptr [ %418, %420 ], [ %438, %437 ]
  %424 = getelementptr inbounds %struct.bActuator, ptr %423, i64 0, i32 3
  %425 = load i16, ptr %424, align 8, !tbaa !157
  %426 = icmp eq i16 %425, 10
  br i1 %426, label %427, label %437

427:                                              ; preds = %422
  %428 = getelementptr inbounds %struct.bActuator, ptr %423, i64 0, i32 8
  %429 = load ptr, ptr %428, align 8, !tbaa !159
  %430 = load i16, ptr %421, align 4, !tbaa !160
  %431 = getelementptr inbounds %struct.bEditObjectActuator, ptr %429, i64 0, i32 12
  store i16 %430, ptr %431, align 2, !tbaa !161
  %432 = icmp eq i16 %430, 2
  %433 = icmp eq i16 %430, 5
  %434 = or i1 %432, %433
  %435 = select i1 %434, i16 1, i16 2
  %436 = getelementptr inbounds %struct.bEditObjectActuator, ptr %429, i64 0, i32 11
  store i16 %435, ptr %436, align 8, !tbaa !163
  br label %437

437:                                              ; preds = %427, %422
  %438 = load ptr, ptr %423, align 8, !tbaa !47
  %439 = icmp eq ptr %438, null
  br i1 %439, label %412, label %422, !llvm.loop !164

440:                                              ; preds = %412, %408, %404
  br i1 %401, label %483, label %441

441:                                              ; preds = %440
  %442 = icmp eq i16 %400, 271
  br i1 %442, label %443, label %447

443:                                              ; preds = %441
  %444 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %445 = load i16, ptr %444, align 2, !tbaa !42
  %446 = icmp sgt i16 %445, 2
  br i1 %446, label %483, label %447

447:                                              ; preds = %443, %441
  %448 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %449 = load ptr, ptr %448, align 8, !tbaa !47
  %450 = icmp eq ptr %449, null
  br i1 %450, label %456, label %451

451:                                              ; preds = %447, %451
  %452 = phi ptr [ %454, %451 ], [ %449, %447 ]
  %453 = getelementptr inbounds %struct.Brush, ptr %452, i64 0, i32 50
  store float 0x3FC99999A0000000, ptr %453, align 4, !tbaa !165
  %454 = load ptr, ptr %452, align 8, !tbaa !47
  %455 = icmp eq ptr %454, null
  br i1 %455, label %456, label %451, !llvm.loop !169

456:                                              ; preds = %451, %447
  %457 = getelementptr inbounds %struct.FileData, ptr %0, i64 0, i32 14
  %458 = load ptr, ptr %457, align 8, !tbaa !43
  %459 = call zeroext i8 @DNA_struct_elem_find(ptr noundef %458, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.15) #5
  %460 = icmp eq i8 %459, 0
  br i1 %460, label %461, label %483

461:                                              ; preds = %456
  %462 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %463 = load ptr, ptr %462, align 8, !tbaa !47
  %464 = icmp eq ptr %463, null
  br i1 %464, label %483, label %468

465:                                              ; preds = %480, %468
  %466 = load ptr, ptr %469, align 8, !tbaa !47
  %467 = icmp eq ptr %466, null
  br i1 %467, label %483, label %468, !llvm.loop !170

468:                                              ; preds = %461, %465
  %469 = phi ptr [ %466, %465 ], [ %463, %461 ]
  %470 = getelementptr inbounds %struct.Object, ptr %469, i64 0, i32 26
  %471 = load ptr, ptr %470, align 8, !tbaa !47
  %472 = icmp eq ptr %471, null
  br i1 %472, label %465, label %473

473:                                              ; preds = %468, %480
  %474 = phi ptr [ %481, %480 ], [ %471, %468 ]
  %475 = getelementptr inbounds %struct.ModifierData, ptr %474, i64 0, i32 2
  %476 = load i32, ptr %475, align 8, !tbaa !51
  %477 = icmp eq i32 %476, 24
  br i1 %477, label %478, label %480

478:                                              ; preds = %473
  %479 = getelementptr inbounds %struct.BevelModifierData, ptr %474, i64 0, i32 7
  store i16 -1, ptr %479, align 8, !tbaa !171
  br label %480

480:                                              ; preds = %473, %478
  %481 = load ptr, ptr %474, align 8, !tbaa !47
  %482 = icmp eq ptr %481, null
  br i1 %482, label %465, label %473, !llvm.loop !172

483:                                              ; preds = %465, %461, %399, %456, %443, %440
  %484 = load i16, ptr %7, align 8, !tbaa !34
  %485 = icmp sgt i16 %484, 271
  br i1 %485, label %524, label %486

486:                                              ; preds = %483
  %487 = icmp eq i16 %484, 271
  br i1 %487, label %488, label %492

488:                                              ; preds = %486
  %489 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %490 = load i16, ptr %489, align 2, !tbaa !42
  %491 = icmp sgt i16 %490, 5
  br i1 %491, label %524, label %492

492:                                              ; preds = %488, %486
  %493 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %494 = load ptr, ptr %493, align 8, !tbaa !47
  %495 = icmp eq ptr %494, null
  br i1 %495, label %524, label %499

496:                                              ; preds = %521, %499
  %497 = load ptr, ptr %500, align 8, !tbaa !47
  %498 = icmp eq ptr %497, null
  br i1 %498, label %524, label %499, !llvm.loop !173

499:                                              ; preds = %492, %496
  %500 = phi ptr [ %497, %496 ], [ %494, %492 ]
  %501 = getelementptr inbounds %struct.Object, ptr %500, i64 0, i32 26
  %502 = load ptr, ptr %501, align 8, !tbaa !47
  %503 = icmp eq ptr %502, null
  br i1 %503, label %496, label %504

504:                                              ; preds = %499, %521
  %505 = phi ptr [ %522, %521 ], [ %502, %499 ]
  %506 = getelementptr inbounds %struct.ModifierData, ptr %505, i64 0, i32 2
  %507 = load i32, ptr %506, align 8, !tbaa !51
  %508 = icmp eq i32 %507, 19
  br i1 %508, label %509, label %521

509:                                              ; preds = %504
  %510 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %505, i64 0, i32 1
  %511 = load ptr, ptr %510, align 8, !tbaa !174
  %512 = icmp eq ptr %511, null
  br i1 %512, label %521, label %513

513:                                              ; preds = %509
  %514 = getelementptr inbounds %struct.ParticleSystem, ptr %511, i64 0, i32 11
  %515 = load ptr, ptr %514, align 8, !tbaa !176
  %516 = icmp eq ptr %515, null
  br i1 %516, label %521, label %517

517:                                              ; preds = %513
  %518 = getelementptr inbounds %struct.ClothModifierData, ptr %515, i64 0, i32 3
  %519 = load ptr, ptr %518, align 8, !tbaa !178
  %520 = getelementptr inbounds %struct.ClothSimSettings, ptr %519, i64 0, i32 25
  store float 1.000000e+00, ptr %520, align 8, !tbaa !180
  br label %521

521:                                              ; preds = %509, %513, %517, %504
  %522 = load ptr, ptr %505, align 8, !tbaa !47
  %523 = icmp eq ptr %522, null
  br i1 %523, label %496, label %504, !llvm.loop !182

524:                                              ; preds = %496, %492, %488, %483
  %525 = icmp sgt i16 %484, 272
  br i1 %525, label %546, label %526

526:                                              ; preds = %524
  %527 = icmp eq i16 %484, 272
  br i1 %527, label %528, label %532

528:                                              ; preds = %526
  %529 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %530 = load i16, ptr %529, align 2, !tbaa !42
  %531 = icmp sgt i16 %530, -1
  br i1 %531, label %546, label %532

532:                                              ; preds = %528, %526
  %533 = getelementptr inbounds %struct.FileData, ptr %0, i64 0, i32 14
  %534 = load ptr, ptr %533, align 8, !tbaa !43
  %535 = call zeroext i8 @DNA_struct_elem_find(ptr noundef %534, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.14) #5
  %536 = icmp eq i8 %535, 0
  br i1 %536, label %537, label %546

537:                                              ; preds = %532
  %538 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %539 = load ptr, ptr %538, align 8, !tbaa !47
  %540 = icmp eq ptr %539, null
  br i1 %540, label %546, label %541

541:                                              ; preds = %537, %541
  %542 = phi ptr [ %544, %541 ], [ %539, %537 ]
  %543 = getelementptr inbounds %struct.Scene, ptr %542, i64 0, i32 22, i32 117
  store i32 64, ptr %543, align 8, !tbaa !154
  %544 = load ptr, ptr %542, align 8, !tbaa !47
  %545 = icmp eq ptr %544, null
  br i1 %545, label %546, label %541, !llvm.loop !183

546:                                              ; preds = %541, %537, %532, %528, %524
  %547 = load i16, ptr %7, align 8, !tbaa !34
  %548 = icmp sgt i16 %547, 272
  br i1 %548, label %573, label %549

549:                                              ; preds = %546
  %550 = icmp eq i16 %547, 272
  br i1 %550, label %551, label %555

551:                                              ; preds = %549
  %552 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %553 = load i16, ptr %552, align 2, !tbaa !42
  %554 = icmp sgt i16 %553, 0
  br i1 %554, label %573, label %555

555:                                              ; preds = %551, %549
  %556 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %557 = load ptr, ptr %556, align 8, !tbaa !47
  %558 = icmp eq ptr %557, null
  br i1 %558, label %573, label %559

559:                                              ; preds = %555, %570
  %560 = phi ptr [ %571, %570 ], [ %557, %555 ]
  %561 = getelementptr inbounds %struct.Brush, ptr %560, i64 0, i32 13
  %562 = load i16, ptr %561, align 2, !tbaa !184
  %563 = and i16 %562, 2
  %564 = icmp eq i16 %563, 0
  br i1 %564, label %570, label %565

565:                                              ; preds = %559
  %566 = getelementptr inbounds %struct.Brush, ptr %560, i64 0, i32 34
  %567 = load i8, ptr %566, align 8, !tbaa !185
  switch i8 %567, label %570 [
    i8 5, label %568
    i8 13, label %568
  ]

568:                                              ; preds = %565, %565
  %569 = getelementptr inbounds %struct.Brush, ptr %560, i64 0, i32 26
  store float 1.000000e+00, ptr %569, align 8, !tbaa !186
  br label %570

570:                                              ; preds = %565, %559, %568
  %571 = load ptr, ptr %560, align 8, !tbaa !47
  %572 = icmp eq ptr %571, null
  br i1 %572, label %573, label %559, !llvm.loop !187

573:                                              ; preds = %570, %555, %551, %546
  %574 = getelementptr inbounds %struct.FileData, ptr %0, i64 0, i32 14
  %575 = load ptr, ptr %574, align 8, !tbaa !43
  %576 = call zeroext i8 @DNA_struct_elem_find(ptr noundef %575, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.17) #5
  %577 = icmp eq i8 %576, 0
  br i1 %577, label %578, label %587

578:                                              ; preds = %573
  %579 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 19
  %580 = load ptr, ptr %579, align 8, !tbaa !47
  %581 = icmp eq ptr %580, null
  br i1 %581, label %587, label %582

582:                                              ; preds = %578, %582
  %583 = phi ptr [ %585, %582 ], [ %580, %578 ]
  %584 = getelementptr inbounds %struct.Image, ptr %583, i64 0, i32 33, i64 3
  store float 1.000000e+00, ptr %584, align 4, !tbaa !151
  %585 = load ptr, ptr %583, align 8, !tbaa !47
  %586 = icmp eq ptr %585, null
  br i1 %586, label %587, label %582, !llvm.loop !188

587:                                              ; preds = %582, %578, %573
  %588 = load ptr, ptr %574, align 8, !tbaa !43
  %589 = call zeroext i8 @DNA_struct_elem_find(ptr noundef %588, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19) #5
  %590 = icmp eq i8 %589, 0
  br i1 %590, label %591, label %644

591:                                              ; preds = %587
  %592 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %593 = load ptr, ptr %592, align 8, !tbaa !47
  %594 = icmp eq ptr %593, null
  br i1 %594, label %644, label %595

595:                                              ; preds = %591, %641
  %596 = phi ptr [ %642, %641 ], [ %593, %591 ]
  %597 = getelementptr inbounds %struct.Object, ptr %596, i64 0, i32 106
  %598 = load ptr, ptr %597, align 8, !tbaa !47
  %599 = icmp eq ptr %598, null
  br i1 %599, label %613, label %600

600:                                              ; preds = %595, %610
  %601 = phi ptr [ %611, %610 ], [ %598, %595 ]
  %602 = getelementptr inbounds %struct.bConstraint, ptr %601, i64 0, i32 3
  %603 = load i16, ptr %602, align 8, !tbaa !189
  %604 = icmp eq i16 %603, 15
  br i1 %604, label %605, label %610

605:                                              ; preds = %600
  %606 = getelementptr inbounds %struct.bConstraint, ptr %601, i64 0, i32 2
  %607 = load ptr, ptr %606, align 8, !tbaa !191
  %608 = getelementptr inbounds %struct.bStretchToConstraint, ptr %607, i64 0, i32 6
  store float 1.000000e+00, ptr %608, align 4, !tbaa !192
  %609 = getelementptr inbounds %struct.bStretchToConstraint, ptr %607, i64 0, i32 7
  store float 1.000000e+00, ptr %609, align 8, !tbaa !194
  br label %610

610:                                              ; preds = %605, %600
  %611 = load ptr, ptr %601, align 8, !tbaa !47
  %612 = icmp eq ptr %611, null
  br i1 %612, label %613, label %600, !llvm.loop !195

613:                                              ; preds = %610, %595
  %614 = getelementptr inbounds %struct.Object, ptr %596, i64 0, i32 18
  %615 = load ptr, ptr %614, align 8, !tbaa !90
  %616 = icmp eq ptr %615, null
  br i1 %616, label %641, label %617

617:                                              ; preds = %613
  %618 = load ptr, ptr %615, align 8, !tbaa !47
  %619 = icmp eq ptr %618, null
  br i1 %619, label %641, label %623

620:                                              ; preds = %638, %623
  %621 = load ptr, ptr %624, align 8, !tbaa !47
  %622 = icmp eq ptr %621, null
  br i1 %622, label %641, label %623, !llvm.loop !196

623:                                              ; preds = %617, %620
  %624 = phi ptr [ %621, %620 ], [ %618, %617 ]
  %625 = getelementptr inbounds %struct.bPoseChannel, ptr %624, i64 0, i32 3
  %626 = load ptr, ptr %625, align 8, !tbaa !47
  %627 = icmp eq ptr %626, null
  br i1 %627, label %620, label %628

628:                                              ; preds = %623, %638
  %629 = phi ptr [ %639, %638 ], [ %626, %623 ]
  %630 = getelementptr inbounds %struct.bConstraint, ptr %629, i64 0, i32 3
  %631 = load i16, ptr %630, align 8, !tbaa !189
  %632 = icmp eq i16 %631, 15
  br i1 %632, label %633, label %638

633:                                              ; preds = %628
  %634 = getelementptr inbounds %struct.bConstraint, ptr %629, i64 0, i32 2
  %635 = load ptr, ptr %634, align 8, !tbaa !191
  %636 = getelementptr inbounds %struct.bStretchToConstraint, ptr %635, i64 0, i32 6
  store float 1.000000e+00, ptr %636, align 4, !tbaa !192
  %637 = getelementptr inbounds %struct.bStretchToConstraint, ptr %635, i64 0, i32 7
  store float 1.000000e+00, ptr %637, align 8, !tbaa !194
  br label %638

638:                                              ; preds = %633, %628
  %639 = load ptr, ptr %629, align 8, !tbaa !47
  %640 = icmp eq ptr %639, null
  br i1 %640, label %620, label %628, !llvm.loop !195

641:                                              ; preds = %620, %617, %613
  %642 = load ptr, ptr %596, align 8, !tbaa !47
  %643 = icmp eq ptr %642, null
  br i1 %643, label %644, label %595, !llvm.loop !197

644:                                              ; preds = %641, %591, %587
  ret void
}

declare zeroext i8 @DNA_struct_elem_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @BKE_node_tree_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_node_tree_iter_step(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_version_constraints_radians_degrees_270_1(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !47
  %3 = icmp eq ptr %2, null
  br i1 %3, label %60, label %4

4:                                                ; preds = %1, %57
  %5 = phi ptr [ %58, %57 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !189
  %8 = icmp eq i16 %7, 19
  br i1 %8, label %9, label %57

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !191
  %12 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !198
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %15, label %34

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 6
  %17 = load float, ptr %16, align 4, !tbaa !151
  %18 = fmul float %17, 0x3F91DF46A0000000
  store float %18, ptr %16, align 4, !tbaa !151
  %19 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 6, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !151
  %21 = fmul float %20, 0x3F91DF46A0000000
  store float %21, ptr %19, align 4, !tbaa !151
  %22 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 6, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !151
  %24 = fmul float %23, 0x3F91DF46A0000000
  store float %24, ptr %22, align 4, !tbaa !151
  %25 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 7
  %26 = load float, ptr %25, align 4, !tbaa !151
  %27 = fmul float %26, 0x3F91DF46A0000000
  store float %27, ptr %25, align 4, !tbaa !151
  %28 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 7, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !151
  %30 = fmul float %29, 0x3F91DF46A0000000
  store float %30, ptr %28, align 4, !tbaa !151
  %31 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 7, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !151
  %33 = fmul float %32, 0x3F91DF46A0000000
  store float %33, ptr %31, align 4, !tbaa !151
  br label %34

34:                                               ; preds = %15, %9
  %35 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 3
  %36 = load i16, ptr %35, align 2, !tbaa !200
  %37 = icmp eq i16 %36, 1
  br i1 %37, label %38, label %57

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 8
  %40 = load float, ptr %39, align 4, !tbaa !151
  %41 = fmul float %40, 0x3F91DF46A0000000
  store float %41, ptr %39, align 4, !tbaa !151
  %42 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 8, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !151
  %44 = fmul float %43, 0x3F91DF46A0000000
  store float %44, ptr %42, align 4, !tbaa !151
  %45 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 8, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !151
  %47 = fmul float %46, 0x3F91DF46A0000000
  store float %47, ptr %45, align 4, !tbaa !151
  %48 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 9
  %49 = load float, ptr %48, align 4, !tbaa !151
  %50 = fmul float %49, 0x3F91DF46A0000000
  store float %50, ptr %48, align 4, !tbaa !151
  %51 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 9, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !151
  %53 = fmul float %52, 0x3F91DF46A0000000
  store float %53, ptr %51, align 4, !tbaa !151
  %54 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 9, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !151
  %56 = fmul float %55, 0x3F91DF46A0000000
  store float %56, ptr %54, align 4, !tbaa !151
  br label %57

57:                                               ; preds = %34, %38, %4
  %58 = load ptr, ptr %5, align 8, !tbaa !47
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %4, !llvm.loop !201

60:                                               ; preds = %57, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_version_constraints_radians_degrees_270_5(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !47
  %3 = icmp eq ptr %2, null
  br i1 %3, label %96, label %4

4:                                                ; preds = %1, %93
  %5 = phi ptr [ %94, %93 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !189
  %8 = icmp eq i16 %7, 19
  br i1 %8, label %9, label %93

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !191
  %12 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !198
  switch i16 %13, label %52 [
    i16 1, label %14
    i16 2, label %33
  ]

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 10
  %16 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 6
  %17 = load float, ptr %16, align 4, !tbaa !151
  store float %17, ptr %15, align 4, !tbaa !151
  %18 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 6, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !151
  %20 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 10, i64 1
  store float %19, ptr %20, align 4, !tbaa !151
  %21 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 6, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !151
  %23 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 10, i64 2
  store float %22, ptr %23, align 4, !tbaa !151
  %24 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 11
  %25 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 7
  %26 = load float, ptr %25, align 4, !tbaa !151
  store float %26, ptr %24, align 4, !tbaa !151
  %27 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 7, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !151
  %29 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 11, i64 1
  store float %28, ptr %29, align 4, !tbaa !151
  %30 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 7, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !151
  %32 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 11, i64 2
  store float %31, ptr %32, align 4, !tbaa !151
  br label %52

33:                                               ; preds = %9
  %34 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 14
  %35 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 6
  %36 = load float, ptr %35, align 4, !tbaa !151
  store float %36, ptr %34, align 4, !tbaa !151
  %37 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 6, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !151
  %39 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 14, i64 1
  store float %38, ptr %39, align 4, !tbaa !151
  %40 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 6, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !151
  %42 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 14, i64 2
  store float %41, ptr %42, align 4, !tbaa !151
  %43 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 15
  %44 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 7
  %45 = load float, ptr %44, align 4, !tbaa !151
  store float %45, ptr %43, align 4, !tbaa !151
  %46 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 7, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !151
  %48 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 15, i64 1
  store float %47, ptr %48, align 4, !tbaa !151
  %49 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 7, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !151
  %51 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 15, i64 2
  store float %50, ptr %51, align 4, !tbaa !151
  br label %52

52:                                               ; preds = %9, %33, %14
  %53 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 3
  %54 = load i16, ptr %53, align 2, !tbaa !200
  switch i16 %54, label %93 [
    i16 1, label %55
    i16 2, label %74
  ]

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 12
  %57 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 8
  %58 = load float, ptr %57, align 4, !tbaa !151
  store float %58, ptr %56, align 4, !tbaa !151
  %59 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 8, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !151
  %61 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 12, i64 1
  store float %60, ptr %61, align 4, !tbaa !151
  %62 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 8, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !151
  %64 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 12, i64 2
  store float %63, ptr %64, align 4, !tbaa !151
  %65 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 13
  %66 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 9
  %67 = load float, ptr %66, align 4, !tbaa !151
  store float %67, ptr %65, align 4, !tbaa !151
  %68 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 9, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !151
  %70 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 13, i64 1
  store float %69, ptr %70, align 4, !tbaa !151
  %71 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 9, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !151
  %73 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 13, i64 2
  store float %72, ptr %73, align 4, !tbaa !151
  br label %93

74:                                               ; preds = %52
  %75 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 16
  %76 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 8
  %77 = load float, ptr %76, align 4, !tbaa !151
  store float %77, ptr %75, align 4, !tbaa !151
  %78 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 8, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !151
  %80 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 16, i64 1
  store float %79, ptr %80, align 4, !tbaa !151
  %81 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 8, i64 2
  %82 = load float, ptr %81, align 4, !tbaa !151
  %83 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 16, i64 2
  store float %82, ptr %83, align 4, !tbaa !151
  %84 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 17
  %85 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 9
  %86 = load float, ptr %85, align 4, !tbaa !151
  store float %86, ptr %84, align 4, !tbaa !151
  %87 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 9, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !151
  %89 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 17, i64 1
  store float %88, ptr %89, align 4, !tbaa !151
  %90 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 9, i64 2
  %91 = load float, ptr %90, align 4, !tbaa !151
  %92 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 17, i64 2
  store float %91, ptr %92, align 4, !tbaa !151
  br label %93

93:                                               ; preds = %55, %74, %52, %4
  %94 = load ptr, ptr %5, align 8, !tbaa !47
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %4, !llvm.loop !202

96:                                               ; preds = %93, %1
  ret void
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

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
!34 = !{!35, !39, i64 1040}
!35 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 1040, !39, i64 1042, !39, i64 1044, !39, i64 1046, !40, i64 1048, !37, i64 1056, !39, i64 1072, !36, i64 1080, !41, i64 1088, !41, i64 1104, !41, i64 1120, !41, i64 1136, !41, i64 1152, !41, i64 1168, !41, i64 1184, !41, i64 1200, !41, i64 1216, !41, i64 1232, !41, i64 1248, !41, i64 1264, !41, i64 1280, !41, i64 1296, !41, i64 1312, !41, i64 1328, !41, i64 1344, !41, i64 1360, !41, i64 1376, !41, i64 1392, !41, i64 1408, !41, i64 1424, !41, i64 1440, !41, i64 1456, !41, i64 1472, !41, i64 1488, !41, i64 1504, !41, i64 1520, !41, i64 1536, !41, i64 1552, !41, i64 1568, !41, i64 1584, !41, i64 1600, !41, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"long", !37, i64 0}
!41 = !{!"ListBase", !36, i64 0, !36, i64 8}
!42 = !{!35, !39, i64 1042}
!43 = !{!44, !36, i64 1216}
!44 = !{!"FileData", !41, i64 0, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !36, i64 32, !36, i64 40, !36, i64 48, !45, i64 56, !36, i64 64, !37, i64 72, !37, i64 1096, !45, i64 1100, !46, i64 1104, !36, i64 1216, !36, i64 1224, !36, i64 1232, !45, i64 1240, !45, i64 1244, !45, i64 1248, !45, i64 1252, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !45, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336}
!45 = !{!"int", !37, i64 0}
!46 = !{!"z_stream_s", !36, i64 0, !45, i64 8, !40, i64 16, !36, i64 24, !45, i64 32, !40, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !45, i64 88, !40, i64 96, !40, i64 104}
!47 = !{!36, !36, i64 0}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!52, !45, i64 16}
!52 = !{!"ModifierData", !36, i64 0, !36, i64 8, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!53 = !{!54, !55, i64 136}
!54 = !{!"BevelModifierData", !52, i64 0, !55, i64 112, !45, i64 116, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !39, i64 128, !39, i64 130, !45, i64 132, !55, i64 136, !55, i64 140, !37, i64 144}
!55 = !{!"float", !37, i64 0}
!56 = !{!54, !39, i64 122}
!57 = distinct !{!57, !49, !50}
!58 = !{!59, !45, i64 256}
!59 = !{!"bNodeTree", !60, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 200, !36, i64 208, !37, i64 216, !41, i64 224, !41, i64 240, !45, i64 256, !45, i64 260, !45, i64 264, !45, i64 268, !45, i64 272, !39, i64 276, !39, i64 278, !45, i64 280, !45, i64 284, !39, i64 288, !39, i64 290, !45, i64 292, !61, i64 296, !41, i64 312, !41, i64 328, !36, i64 344, !62, i64 352, !45, i64 356, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424}
!60 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !45, i64 100, !45, i64 104, !45, i64 108, !36, i64 112}
!61 = !{!"rctf", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12}
!62 = !{!"bNodeInstanceKey", !45, i64 0}
!63 = !{!64, !39, i64 172}
!64 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !45, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !37, i64 188, !41, i64 200, !41, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !41, i64 264, !55, i64 280, !55, i64 284, !55, i64 288, !55, i64 292, !55, i64 296, !55, i64 300, !55, i64 304, !45, i64 308, !37, i64 312, !39, i64 376, !39, i64 378, !55, i64 380, !55, i64 384, !39, i64 388, !39, i64 390, !36, i64 392, !61, i64 400, !61, i64 416, !61, i64 432, !39, i64 448, !39, i64 450, !45, i64 452, !36, i64 456}
!65 = !{!64, !36, i64 240}
!66 = distinct !{!66, !49, !50}
!67 = distinct !{!67, !49, !50}
!68 = distinct !{!68, !49, !50}
!69 = distinct !{!69, !49, !50}
!70 = !{!71, !45, i64 32}
!71 = !{!"SpaceLink", !36, i64 0, !36, i64 8, !41, i64 16, !45, i64 32, !55, i64 36, !37, i64 40}
!72 = !{!73, !39, i64 212}
!73 = !{!"SpaceClip", !36, i64 0, !36, i64 8, !41, i64 16, !45, i64 32, !55, i64 36, !55, i64 40, !55, i64 44, !55, i64 48, !55, i64 52, !74, i64 56, !36, i64 64, !75, i64 72, !45, i64 208, !39, i64 212, !39, i64 214, !45, i64 216, !37, i64 220, !55, i64 228, !55, i64 232, !45, i64 236, !37, i64 240, !37, i64 304, !45, i64 368, !39, i64 372, !39, i64 374, !45, i64 376, !45, i64 380, !37, i64 384, !77, i64 392}
!74 = !{!"MovieClipUser", !45, i64 0, !39, i64 4, !39, i64 6}
!75 = !{!"MovieClipScopes", !39, i64 0, !39, i64 2, !45, i64 4, !45, i64 8, !45, i64 12, !76, i64 16, !36, i64 80, !36, i64 88, !37, i64 96, !39, i64 104, !39, i64 106, !45, i64 108, !36, i64 112, !36, i64 120, !37, i64 128}
!76 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !45, i64 56, !45, i64 60}
!77 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!78 = distinct !{!78, !49, !50}
!79 = !{!80, !55, i64 1224}
!80 = !{!"MovieClip", !60, i64 0, !36, i64 120, !37, i64 128, !45, i64 1152, !45, i64 1156, !37, i64 1160, !55, i64 1168, !55, i64 1172, !36, i64 1176, !36, i64 1184, !36, i64 1192, !81, i64 1200, !36, i64 1528, !87, i64 1536, !45, i64 2312, !45, i64 2316, !45, i64 2320, !45, i64 2324, !88, i64 2328}
!81 = !{!"MovieTracking", !82, i64 0, !83, i64 72, !41, i64 128, !41, i64 144, !84, i64 160, !85, i64 184, !36, i64 232, !36, i64 240, !41, i64 248, !45, i64 264, !45, i64 268, !36, i64 272, !86, i64 280}
!82 = !{!"MovieTrackingSettings", !45, i64 0, !39, i64 4, !39, i64 6, !55, i64 8, !39, i64 12, !39, i64 14, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !55, i64 24, !39, i64 28, !39, i64 30, !45, i64 32, !45, i64 36, !45, i64 40, !39, i64 44, !39, i64 46, !55, i64 48, !45, i64 52, !45, i64 56, !55, i64 60, !55, i64 64, !45, i64 68}
!83 = !{!"MovieTrackingCamera", !36, i64 0, !39, i64 8, !39, i64 10, !55, i64 12, !55, i64 16, !55, i64 20, !39, i64 24, !39, i64 26, !37, i64 28, !55, i64 36, !55, i64 40, !55, i64 44, !55, i64 48, !55, i64 52}
!84 = !{!"MovieTrackingReconstruction", !45, i64 0, !55, i64 4, !45, i64 8, !45, i64 12, !36, i64 16}
!85 = !{!"MovieTrackingStabilization", !45, i64 0, !45, i64 4, !45, i64 8, !55, i64 12, !36, i64 16, !55, i64 24, !55, i64 28, !55, i64 32, !45, i64 36, !45, i64 40, !55, i64 44}
!86 = !{!"MovieTrackingDopesheet", !45, i64 0, !39, i64 4, !39, i64 6, !41, i64 8, !41, i64 24, !45, i64 40, !45, i64 44}
!87 = !{!"MovieClipProxy", !37, i64 0, !39, i64 768, !39, i64 770, !39, i64 772, !39, i64 774}
!88 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!89 = distinct !{!89, !49, !50}
!90 = !{!91, !36, i64 288}
!91 = !{!"Object", !60, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !39, i64 138, !45, i64 140, !45, i64 144, !45, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !92, i64 312, !36, i64 360, !41, i64 368, !41, i64 384, !41, i64 400, !41, i64 416, !45, i64 432, !45, i64 436, !36, i64 440, !36, i64 448, !45, i64 456, !45, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !55, i64 616, !55, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !45, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !45, i64 968, !45, i64 972, !45, i64 976, !45, i64 980, !45, i64 984, !55, i64 988, !55, i64 992, !55, i64 996, !55, i64 1000, !55, i64 1004, !55, i64 1008, !55, i64 1012, !55, i64 1016, !55, i64 1020, !55, i64 1024, !55, i64 1028, !55, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !55, i64 1048, !55, i64 1052, !41, i64 1056, !41, i64 1072, !41, i64 1088, !41, i64 1104, !55, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !45, i64 1144, !45, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !41, i64 1176, !41, i64 1192, !41, i64 1208, !41, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !55, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !40, i64 1304, !40, i64 1312, !45, i64 1320, !45, i64 1324, !41, i64 1328, !41, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !41, i64 1400, !36, i64 1416}
!92 = !{!"bAnimVizSettings", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !45, i64 32, !45, i64 36, !45, i64 40, !45, i64 44}
!93 = distinct !{!93, !49, !50}
!94 = distinct !{!94, !49, !50}
!95 = !{!96, !39, i64 808}
!96 = !{!"Scene", !60, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !45, i64 232, !45, i64 236, !45, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !97, i64 280, !105, i64 4264, !41, i64 4296, !41, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !39, i64 4376, !39, i64 4378, !45, i64 4380, !41, i64 4384, !106, i64 4400, !107, i64 4416, !110, i64 4600, !36, i64 4608, !111, i64 4616, !36, i64 4640, !40, i64 4648, !40, i64 4656, !99, i64 4664, !100, i64 4824, !88, i64 4888, !36, i64 4952}
!97 = !{!"RenderData", !98, i64 0, !36, i64 248, !36, i64 256, !101, i64 264, !102, i64 328, !45, i64 400, !45, i64 404, !45, i64 408, !55, i64 412, !45, i64 416, !45, i64 420, !45, i64 424, !45, i64 428, !39, i64 432, !39, i64 434, !55, i64 436, !55, i64 440, !55, i64 444, !55, i64 448, !55, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !45, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !45, i64 484, !45, i64 488, !39, i64 492, !39, i64 494, !45, i64 496, !45, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !45, i64 516, !45, i64 520, !45, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !61, i64 544, !61, i64 560, !103, i64 576, !41, i64 592, !39, i64 608, !39, i64 610, !55, i64 612, !55, i64 616, !55, i64 620, !55, i64 624, !45, i64 628, !55, i64 632, !55, i64 636, !55, i64 640, !55, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !55, i64 660, !55, i64 664, !39, i64 668, !39, i64 670, !55, i64 672, !55, i64 676, !37, i64 680, !45, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !45, i64 2520, !39, i64 2524, !39, i64 2526, !55, i64 2528, !55, i64 2532, !39, i64 2536, !39, i64 2538, !55, i64 2540, !39, i64 2544, !39, i64 2546, !45, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !55, i64 2560, !55, i64 2564, !36, i64 2568, !45, i64 2576, !55, i64 2580, !37, i64 2584, !104, i64 2616, !45, i64 3976, !45, i64 3980}
!98 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !55, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !99, i64 24, !100, i64 184}
!99 = !{!"ColorManagedViewSettings", !45, i64 0, !45, i64 4, !37, i64 8, !37, i64 72, !55, i64 136, !55, i64 140, !36, i64 144, !36, i64 152}
!100 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!101 = !{!"QuicktimeCodecSettings", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !45, i64 40, !45, i64 44, !39, i64 48, !39, i64 50, !45, i64 52, !45, i64 56, !45, i64 60}
!102 = !{!"FFMpegCodecData", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !55, i64 32, !45, i64 36, !45, i64 40, !45, i64 44, !45, i64 48, !45, i64 52, !45, i64 56, !45, i64 60, !36, i64 64}
!103 = !{!"rcti", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!104 = !{!"BakeData", !98, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !55, i64 1280, !55, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!105 = !{!"AudioData", !45, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !45, i64 16, !39, i64 20, !39, i64 22, !55, i64 24, !55, i64 28}
!106 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!107 = !{!"GameData", !106, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !108, i64 40, !39, i64 64, !39, i64 66, !55, i64 68, !109, i64 72, !55, i64 128, !55, i64 132, !45, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !55, i64 164, !55, i64 168, !55, i64 172, !55, i64 176, !55, i64 180}
!108 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !55, i64 8, !55, i64 12, !36, i64 16}
!109 = !{!"RecastData", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !55, i64 24, !55, i64 28, !55, i64 32, !55, i64 36, !45, i64 40, !55, i64 44, !55, i64 48, !39, i64 52, !39, i64 54}
!110 = !{!"UnitSettings", !55, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!111 = !{!"PhysicsSettings", !37, i64 0, !45, i64 12, !45, i64 16, !45, i64 20}
!112 = distinct !{!112, !49, !50}
!113 = !{!114, !55, i64 1352}
!114 = !{!"Mesh", !60, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !115, i64 280, !115, i64 480, !115, i64 680, !115, i64 880, !115, i64 1080, !45, i64 1280, !45, i64 1284, !45, i64 1288, !45, i64 1292, !45, i64 1296, !45, i64 1300, !45, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !45, i64 1344, !39, i64 1348, !39, i64 1350, !55, i64 1352, !45, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !39, i64 1366, !36, i64 1368}
!115 = !{!"CustomData", !36, i64 0, !37, i64 8, !45, i64 172, !45, i64 176, !45, i64 180, !36, i64 184, !36, i64 192}
!116 = distinct !{!116, !49, !50}
!117 = !{!118, !45, i64 156}
!118 = !{!"FreestyleLineStyle", !60, i64 0, !36, i64 120, !55, i64 128, !55, i64 132, !55, i64 136, !55, i64 140, !55, i64 144, !45, i64 148, !55, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !55, i64 172, !55, i64 176, !55, i64 180, !55, i64 184, !55, i64 188, !45, i64 192, !39, i64 196, !39, i64 198, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !45, i64 208, !45, i64 212, !55, i64 216, !39, i64 220, !39, i64 222, !39, i64 224, !37, i64 226, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !45, i64 244, !37, i64 248, !36, i64 392, !41, i64 400, !41, i64 416, !41, i64 432, !41, i64 448}
!119 = !{!118, !45, i64 208}
!120 = !{!118, !45, i64 212}
!121 = distinct !{!121, !49, !50}
!122 = distinct !{!122, !49, !50}
!123 = distinct !{!123, !49, !50}
!124 = distinct !{!124, !49, !50}
!125 = !{!126, !36, i64 96}
!126 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !103, i64 56, !37, i64 72, !37, i64 73, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !39, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !41, i64 96, !41, i64 112, !41, i64 128, !41, i64 144}
!127 = distinct !{!127, !49, !50}
!128 = distinct !{!128, !49, !50}
!129 = distinct !{!129, !49, !50}
!130 = !{!131, !45, i64 404}
!131 = !{!"Material", !60, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !55, i64 132, !55, i64 136, !55, i64 140, !55, i64 144, !55, i64 148, !55, i64 152, !55, i64 156, !55, i64 160, !55, i64 164, !55, i64 168, !55, i64 172, !55, i64 176, !55, i64 180, !55, i64 184, !55, i64 188, !55, i64 192, !55, i64 196, !55, i64 200, !55, i64 204, !55, i64 208, !55, i64 212, !55, i64 216, !55, i64 220, !132, i64 224, !133, i64 312, !55, i64 328, !55, i64 332, !55, i64 336, !55, i64 340, !55, i64 344, !55, i64 348, !55, i64 352, !39, i64 356, !39, i64 358, !39, i64 360, !37, i64 362, !37, i64 363, !55, i64 364, !55, i64 368, !39, i64 372, !39, i64 374, !55, i64 376, !55, i64 380, !55, i64 384, !55, i64 388, !39, i64 392, !39, i64 394, !45, i64 396, !45, i64 400, !45, i64 404, !45, i64 408, !39, i64 412, !39, i64 414, !39, i64 416, !39, i64 418, !55, i64 420, !55, i64 424, !55, i64 428, !55, i64 432, !55, i64 436, !55, i64 440, !55, i64 444, !55, i64 448, !55, i64 452, !55, i64 456, !37, i64 460, !55, i64 524, !55, i64 528, !55, i64 532, !45, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !39, i64 544, !39, i64 546, !39, i64 548, !37, i64 550, !37, i64 551, !39, i64 552, !39, i64 554, !55, i64 556, !55, i64 560, !37, i64 564, !55, i64 580, !55, i64 584, !39, i64 588, !39, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !39, i64 612, !39, i64 614, !55, i64 616, !55, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !55, i64 800, !55, i64 804, !55, i64 808, !55, i64 812, !55, i64 816, !39, i64 820, !39, i64 822, !37, i64 824, !37, i64 836, !55, i64 848, !55, i64 852, !55, i64 856, !55, i64 860, !55, i64 864, !55, i64 868, !55, i64 872, !39, i64 876, !39, i64 878, !45, i64 880, !39, i64 884, !39, i64 886, !37, i64 888, !39, i64 904, !39, i64 906, !39, i64 908, !39, i64 910, !39, i64 912, !37, i64 914, !36, i64 920, !41, i64 928}
!132 = !{!"VolumeSettings", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !55, i64 52, !55, i64 56, !55, i64 60, !39, i64 64, !39, i64 66, !39, i64 68, !39, i64 70, !55, i64 72, !55, i64 76, !55, i64 80, !55, i64 84}
!133 = !{!"GameSettings", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!134 = distinct !{!134, !49, !50}
!135 = !{!96, !39, i64 4174}
!136 = !{!96, !39, i64 4168}
!137 = !{!96, !39, i64 4170}
!138 = !{!96, !39, i64 4172}
!139 = !{!96, !37, i64 4187}
!140 = !{!37, !37, i64 0}
!141 = !{!96, !37, i64 2898}
!142 = !{!96, !37, i64 2896}
!143 = !{!96, !37, i64 2897}
!144 = !{!96, !37, i64 2900}
!145 = !{!96, !37, i64 2901}
!146 = distinct !{!146, !49, !50}
!147 = !{!118, !55, i64 216}
!148 = distinct !{!148, !49, !50}
!149 = !{!96, !39, i64 888}
!150 = distinct !{!150, !49, !50}
!151 = !{!55, !55, i64 0}
!152 = !{!131, !55, i64 200}
!153 = distinct !{!153, !49, !50}
!154 = !{!96, !45, i64 4256}
!155 = distinct !{!155, !49, !50}
!156 = distinct !{!156, !49, !50}
!157 = !{!158, !39, i64 24}
!158 = !{!"bActuator", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !37, i64 32, !36, i64 96, !36, i64 104}
!159 = !{!158, !36, i64 96}
!160 = !{!91, !39, i64 956}
!161 = !{!162, !39, i64 122}
!162 = !{!"bEditObjectActuator", !45, i64 0, !39, i64 4, !39, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 100, !55, i64 112, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !45, i64 124}
!163 = !{!162, !39, i64 120}
!164 = distinct !{!164, !49, !50}
!165 = !{!166, !55, i64 1996}
!166 = !{!"Brush", !60, i64 0, !167, i64 120, !36, i64 144, !168, i64 152, !168, i64 464, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !37, i64 816, !55, i64 1840, !39, i64 1844, !39, i64 1846, !55, i64 1848, !45, i64 1852, !45, i64 1856, !45, i64 1860, !55, i64 1864, !45, i64 1868, !45, i64 1872, !45, i64 1876, !45, i64 1880, !55, i64 1884, !55, i64 1888, !37, i64 1892, !55, i64 1904, !37, i64 1908, !45, i64 1920, !55, i64 1924, !55, i64 1928, !45, i64 1932, !45, i64 1936, !45, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !55, i64 1948, !55, i64 1952, !55, i64 1956, !55, i64 1960, !55, i64 1964, !45, i64 1968, !45, i64 1972, !45, i64 1976, !55, i64 1980, !55, i64 1984, !45, i64 1988, !45, i64 1992, !55, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!167 = !{!"BrushClone", !36, i64 0, !37, i64 8, !55, i64 16, !55, i64 20}
!168 = !{!"MTex", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !55, i64 116, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !39, i64 128, !39, i64 130, !37, i64 132, !37, i64 133, !55, i64 140, !55, i64 144, !55, i64 148, !55, i64 152, !55, i64 156, !55, i64 160, !55, i64 164, !55, i64 168, !55, i64 172, !55, i64 176, !55, i64 180, !55, i64 184, !55, i64 188, !55, i64 192, !55, i64 196, !55, i64 200, !55, i64 204, !55, i64 208, !55, i64 212, !55, i64 216, !55, i64 220, !55, i64 224, !55, i64 228, !55, i64 232, !55, i64 236, !55, i64 240, !55, i64 244, !55, i64 248, !55, i64 252, !55, i64 256, !55, i64 260, !55, i64 264, !55, i64 268, !55, i64 272, !55, i64 276, !55, i64 280, !55, i64 284, !55, i64 288, !55, i64 292, !55, i64 296, !55, i64 300, !55, i64 304, !55, i64 308}
!169 = distinct !{!169, !49, !50}
!170 = distinct !{!170, !49, !50}
!171 = !{!54, !39, i64 128}
!172 = distinct !{!172, !49, !50}
!173 = distinct !{!173, !49, !50}
!174 = !{!175, !36, i64 112}
!175 = !{!"ParticleSystemModifierData", !52, i64 0, !36, i64 112, !36, i64 120, !45, i64 128, !45, i64 132, !45, i64 136, !39, i64 140, !39, i64 142}
!176 = !{!177, !36, i64 104}
!177 = !{!"ParticleSystem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !41, i64 72, !41, i64 88, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152, !37, i64 168, !37, i64 232, !55, i64 296, !55, i64 300, !55, i64 304, !45, i64 308, !45, i64 312, !45, i64 316, !45, i64 320, !45, i64 324, !45, i64 328, !45, i64 332, !45, i64 336, !39, i64 340, !39, i64 342, !39, i64 344, !39, i64 346, !37, i64 348, !37, i64 540, !39, i64 564, !39, i64 566, !36, i64 568, !36, i64 576, !41, i64 584, !36, i64 600, !36, i64 608, !45, i64 616, !45, i64 620, !36, i64 624, !36, i64 632, !36, i64 640, !55, i64 648, !55, i64 652}
!178 = !{!179, !36, i64 128}
!179 = !{!"ClothModifierData", !52, i64 0, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152}
!180 = !{!181, !55, i64 112}
!181 = !{!"ClothSimSettings", !36, i64 0, !55, i64 8, !55, i64 12, !55, i64 16, !37, i64 20, !55, i64 32, !55, i64 36, !55, i64 40, !55, i64 44, !55, i64 48, !55, i64 52, !55, i64 56, !55, i64 60, !55, i64 64, !55, i64 68, !55, i64 72, !55, i64 76, !55, i64 80, !55, i64 84, !55, i64 88, !55, i64 92, !55, i64 96, !55, i64 100, !55, i64 104, !55, i64 108, !55, i64 112, !55, i64 116, !55, i64 120, !45, i64 124, !45, i64 128, !45, i64 132, !45, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !37, i64 156, !36, i64 160}
!182 = distinct !{!182, !49, !50}
!183 = distinct !{!183, !49, !50}
!184 = !{!166, !39, i64 1846}
!185 = !{!166, !37, i64 1944}
!186 = !{!166, !55, i64 1904}
!187 = distinct !{!187, !49, !50}
!188 = distinct !{!188, !49, !50}
!189 = !{!190, !39, i64 24}
!190 = !{!"bConstraint", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 26, !37, i64 28, !37, i64 29, !37, i64 30, !39, i64 94, !55, i64 96, !55, i64 100, !36, i64 104, !55, i64 112, !55, i64 116}
!191 = !{!190, !36, i64 16}
!192 = !{!193, !55, i64 28}
!193 = !{!"bStretchToConstraint", !36, i64 0, !45, i64 8, !45, i64 12, !45, i64 16, !55, i64 20, !55, i64 24, !55, i64 28, !55, i64 32, !55, i64 36, !37, i64 40}
!194 = !{!193, !55, i64 32}
!195 = distinct !{!195, !49, !50}
!196 = distinct !{!196, !49, !50}
!197 = distinct !{!197, !49, !50}
!198 = !{!199, !39, i64 72}
!199 = !{!"bTransformConstraint", !36, i64 0, !37, i64 8, !39, i64 72, !39, i64 74, !37, i64 76, !37, i64 79, !37, i64 80, !37, i64 92, !37, i64 104, !37, i64 116, !37, i64 128, !37, i64 140, !37, i64 152, !37, i64 164, !37, i64 176, !37, i64 188, !37, i64 200, !37, i64 212}
!200 = !{!199, !39, i64 74}
!201 = distinct !{!201, !49, !50}
!202 = distinct !{!202, !49, !50}
