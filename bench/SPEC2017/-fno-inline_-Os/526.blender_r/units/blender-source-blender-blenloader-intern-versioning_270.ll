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
%struct.bTransformConstraint = type { ptr, [64 x i8], i16, i16, [3 x i8], i8, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float] }
%struct.bStretchToConstraint = type { ptr, i32, i32, i32, float, float, float, float, float, [64 x i8] }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @blo_do_versions_270(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.NodeTreeIterStore, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !34
  %9 = icmp sgt i16 %8, 270
  br i1 %9, label %281, label %10

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
  %19 = tail call zeroext i8 @DNA_struct_elem_find(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #8
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
  %36 = load i32, ptr %35, align 8, !tbaa !50
  %37 = icmp eq i32 %36, 24
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.BevelModifierData, ptr %34, i64 0, i32 10
  store float 5.000000e-01, ptr %39, align 8, !tbaa !52
  %40 = getelementptr inbounds %struct.BevelModifierData, ptr %34, i64 0, i32 4
  store i16 0, ptr %40, align 2, !tbaa !55
  br label %41

41:                                               ; preds = %33, %38
  %42 = load ptr, ptr %34, align 8, !tbaa !47
  %43 = icmp eq ptr %42, null
  br i1 %43, label %25, label %33, !llvm.loop !56

44:                                               ; preds = %25, %21, %16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %4, ptr noundef %2) #8
  %45 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %46 = icmp eq i8 %45, 1
  br i1 %46, label %47, label %72

47:                                               ; preds = %44, %69
  %48 = load ptr, ptr %5, align 8, !tbaa !47
  %49 = icmp eq ptr %48, null
  br i1 %49, label %69, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.bNodeTree, ptr %48, i64 0, i32 9
  %52 = load i32, ptr %51, align 8, !tbaa !57
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
  %61 = load i16, ptr %60, align 4, !tbaa !62
  %62 = and i16 %61, -2
  %63 = icmp eq i16 %62, 222
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.bNode, ptr %59, i64 0, i32 20
  store ptr null, ptr %65, align 8, !tbaa !64
  br label %66

66:                                               ; preds = %58, %64
  %67 = load ptr, ptr %59, align 8, !tbaa !47
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %58, !llvm.loop !65

69:                                               ; preds = %66, %54, %50, %47
  %70 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %71 = icmp eq i8 %70, 1
  br i1 %71, label %47, label %72, !llvm.loop !66

72:                                               ; preds = %69, %44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #9
  %73 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %74 = load ptr, ptr %73, align 8, !tbaa !47
  %75 = icmp eq ptr %74, null
  br i1 %75, label %105, label %79

76:                                               ; preds = %84, %79
  %77 = load ptr, ptr %80, align 8, !tbaa !47
  %78 = icmp eq ptr %77, null
  br i1 %78, label %105, label %79, !llvm.loop !67

79:                                               ; preds = %72, %76
  %80 = phi ptr [ %77, %76 ], [ %74, %72 ]
  %81 = getelementptr inbounds %struct.bScreen, ptr %80, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !47
  %83 = icmp eq ptr %82, null
  br i1 %83, label %76, label %87

84:                                               ; preds = %102, %87
  %85 = load ptr, ptr %88, align 8, !tbaa !47
  %86 = icmp eq ptr %85, null
  br i1 %86, label %76, label %87, !llvm.loop !68

87:                                               ; preds = %79, %84
  %88 = phi ptr [ %85, %84 ], [ %82, %79 ]
  %89 = getelementptr inbounds %struct.ScrArea, ptr %88, i64 0, i32 19
  %90 = load ptr, ptr %89, align 8, !tbaa !47
  %91 = icmp eq ptr %90, null
  br i1 %91, label %84, label %92

92:                                               ; preds = %87, %102
  %93 = phi ptr [ %103, %102 ], [ %90, %87 ]
  %94 = getelementptr inbounds %struct.SpaceLink, ptr %93, i64 0, i32 3
  %95 = load i32, ptr %94, align 8, !tbaa !69
  %96 = icmp eq i32 %95, 20
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.SpaceClip, ptr %93, i64 0, i32 13
  %99 = load i16, ptr %98, align 4, !tbaa !71
  %100 = icmp eq i16 %99, 3
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  store i16 0, ptr %98, align 4, !tbaa !71
  br label %102

102:                                              ; preds = %97, %101, %92
  %103 = load ptr, ptr %93, align 8, !tbaa !47
  %104 = icmp eq ptr %103, null
  br i1 %104, label %84, label %92, !llvm.loop !77

105:                                              ; preds = %76, %72
  %106 = load ptr, ptr %17, align 8, !tbaa !43
  %107 = call zeroext i8 @DNA_struct_elem_find(ptr noundef %106, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #8
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
  store float 1.000000e+00, ptr %115, align 8, !tbaa !78
  %116 = load ptr, ptr %114, align 8, !tbaa !47
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %113, !llvm.loop !88

118:                                              ; preds = %113, %109, %105, %12
  %119 = load i16, ptr %7, align 8, !tbaa !34
  %120 = icmp sgt i16 %119, 270
  br i1 %120, label %281, label %121

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
  call fastcc void @do_version_constraints_radians_degrees_270_1(ptr noundef nonnull %133) #10
  %134 = getelementptr inbounds %struct.Object, ptr %132, i64 0, i32 18
  %135 = load ptr, ptr %134, align 8, !tbaa !89
  %136 = icmp eq ptr %135, null
  br i1 %136, label %145, label %137

137:                                              ; preds = %131
  %138 = load ptr, ptr %135, align 8, !tbaa !47
  %139 = icmp eq ptr %138, null
  br i1 %139, label %145, label %140

140:                                              ; preds = %137, %140
  %141 = phi ptr [ %143, %140 ], [ %138, %137 ]
  %142 = getelementptr inbounds %struct.bPoseChannel, ptr %141, i64 0, i32 3
  call fastcc void @do_version_constraints_radians_degrees_270_1(ptr noundef nonnull %142) #10
  %143 = load ptr, ptr %141, align 8, !tbaa !47
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %140, !llvm.loop !92

145:                                              ; preds = %140, %137, %131
  %146 = load ptr, ptr %132, align 8, !tbaa !47
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %131, !llvm.loop !93

148:                                              ; preds = %145, %127
  %149 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %150 = load ptr, ptr %149, align 8, !tbaa !47
  %151 = icmp eq ptr %150, null
  br i1 %151, label %161, label %152

152:                                              ; preds = %148, %158
  %153 = phi ptr [ %159, %158 ], [ %150, %148 ]
  %154 = getelementptr inbounds %struct.Scene, ptr %153, i64 0, i32 22, i32 49
  %155 = load i16, ptr %154, align 8, !tbaa !94
  %156 = icmp eq i16 %155, 2
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  store i16 0, ptr %154, align 8, !tbaa !94
  br label %158

158:                                              ; preds = %152, %157
  %159 = load ptr, ptr %153, align 8, !tbaa !47
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %152, !llvm.loop !111

161:                                              ; preds = %158, %148, %123
  %162 = load i16, ptr %7, align 8, !tbaa !34
  %163 = icmp sgt i16 %162, 270
  br i1 %163, label %281, label %164

164:                                              ; preds = %161
  %165 = icmp eq i16 %162, 270
  br i1 %165, label %166, label %170

166:                                              ; preds = %164
  %167 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %168 = load i16, ptr %167, align 2, !tbaa !42
  %169 = icmp sgt i16 %168, 1
  br i1 %169, label %185, label %170

170:                                              ; preds = %166, %164
  %171 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %172 = load ptr, ptr %171, align 8, !tbaa !47
  %173 = icmp eq ptr %172, null
  br i1 %173, label %181, label %174

174:                                              ; preds = %170, %174
  %175 = phi ptr [ %179, %174 ], [ %172, %170 ]
  %176 = getelementptr inbounds %struct.Mesh, ptr %175, i64 0, i32 39
  %177 = load float, ptr %176, align 8, !tbaa !112
  %178 = fmul float %177, 0x3F91DF46A0000000
  store float %178, ptr %176, align 8, !tbaa !112
  %179 = load ptr, ptr %175, align 8, !tbaa !47
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %174, !llvm.loop !115

181:                                              ; preds = %174, %170
  br i1 %165, label %182, label %188

182:                                              ; preds = %181
  %183 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %184 = load i16, ptr %183, align 2, !tbaa !42
  br label %185

185:                                              ; preds = %182, %166
  %186 = phi i16 [ %184, %182 ], [ %168, %166 ]
  %187 = icmp sgt i16 %186, 2
  br i1 %187, label %206, label %188

188:                                              ; preds = %185, %181
  %189 = phi i1 [ true, %185 ], [ false, %181 ]
  %190 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 44
  %191 = load ptr, ptr %190, align 8, !tbaa !47
  %192 = icmp eq ptr %191, null
  br i1 %192, label %202, label %193

193:                                              ; preds = %188, %193
  %194 = phi ptr [ %200, %193 ], [ %191, %188 ]
  %195 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %194, i64 0, i32 9
  %196 = load i32, ptr %195, align 4, !tbaa !116
  %197 = or i32 %196, 2048
  store i32 %197, ptr %195, align 4, !tbaa !116
  %198 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %194, i64 0, i32 25
  store i32 1, ptr %198, align 8, !tbaa !118
  %199 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %194, i64 0, i32 26
  store i32 1, ptr %199, align 4, !tbaa !119
  %200 = load ptr, ptr %194, align 8, !tbaa !47
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %193, !llvm.loop !120

202:                                              ; preds = %193, %188
  br i1 %189, label %203, label %209

203:                                              ; preds = %202
  %204 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %205 = load i16, ptr %204, align 2, !tbaa !42
  br label %206

206:                                              ; preds = %203, %185
  %207 = phi i16 [ %205, %203 ], [ %186, %185 ]
  %208 = icmp sgt i16 %207, 3
  br i1 %208, label %249, label %209

209:                                              ; preds = %206, %202
  %210 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %211 = load ptr, ptr %210, align 8, !tbaa !47
  %212 = icmp eq ptr %211, null
  br i1 %212, label %249, label %216

213:                                              ; preds = %221, %216
  %214 = load ptr, ptr %217, align 8, !tbaa !47
  %215 = icmp eq ptr %214, null
  br i1 %215, label %247, label %216, !llvm.loop !121

216:                                              ; preds = %209, %213
  %217 = phi ptr [ %214, %213 ], [ %211, %209 ]
  %218 = getelementptr inbounds %struct.bScreen, ptr %217, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !47
  %220 = icmp eq ptr %219, null
  br i1 %220, label %213, label %224

221:                                              ; preds = %231, %224
  %222 = load ptr, ptr %225, align 8, !tbaa !47
  %223 = icmp eq ptr %222, null
  br i1 %223, label %213, label %224, !llvm.loop !122

224:                                              ; preds = %216, %221
  %225 = phi ptr [ %222, %221 ], [ %219, %216 ]
  %226 = getelementptr inbounds %struct.ScrArea, ptr %225, i64 0, i32 19
  %227 = load ptr, ptr %226, align 8, !tbaa !47
  %228 = icmp eq ptr %227, null
  br i1 %228, label %221, label %229

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.ScrArea, ptr %225, i64 0, i32 20
  br label %234

231:                                              ; preds = %242, %234
  %232 = load ptr, ptr %235, align 8, !tbaa !47
  %233 = icmp eq ptr %232, null
  br i1 %233, label %221, label %234, !llvm.loop !123

234:                                              ; preds = %229, %231
  %235 = phi ptr [ %227, %229 ], [ %232, %231 ]
  %236 = load ptr, ptr %226, align 8, !tbaa !124
  %237 = icmp eq ptr %235, %236
  %238 = getelementptr inbounds %struct.SpaceLink, ptr %235, i64 0, i32 2
  %239 = select i1 %237, ptr %230, ptr %238
  %240 = load ptr, ptr %239, align 8, !tbaa !47
  %241 = icmp eq ptr %240, null
  br i1 %241, label %231, label %242

242:                                              ; preds = %234, %242
  %243 = phi ptr [ %245, %242 ], [ %240, %234 ]
  %244 = getelementptr inbounds %struct.ARegion, ptr %243, i64 0, i32 25
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %244) #10
  %245 = load ptr, ptr %243, align 8, !tbaa !47
  %246 = icmp eq ptr %245, null
  br i1 %246, label %231, label %242, !llvm.loop !126

247:                                              ; preds = %213
  %248 = load i16, ptr %7, align 8, !tbaa !34
  br label %249

249:                                              ; preds = %247, %209, %206
  %250 = phi i16 [ %248, %247 ], [ %162, %209 ], [ %162, %206 ]
  %251 = icmp sgt i16 %250, 270
  br i1 %251, label %281, label %252

252:                                              ; preds = %249
  %253 = icmp eq i16 %250, 270
  br i1 %253, label %254, label %258

254:                                              ; preds = %252
  %255 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %256 = load i16, ptr %255, align 2, !tbaa !42
  %257 = icmp sgt i16 %256, 4
  br i1 %257, label %290, label %258

258:                                              ; preds = %254, %252
  %259 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %260 = load ptr, ptr %259, align 8, !tbaa !47
  %261 = icmp eq ptr %260, null
  br i1 %261, label %290, label %262

262:                                              ; preds = %258, %276
  %263 = phi ptr [ %277, %276 ], [ %260, %258 ]
  %264 = getelementptr inbounds %struct.Object, ptr %263, i64 0, i32 106
  call fastcc void @do_version_constraints_radians_degrees_270_5(ptr noundef nonnull %264) #10
  %265 = getelementptr inbounds %struct.Object, ptr %263, i64 0, i32 18
  %266 = load ptr, ptr %265, align 8, !tbaa !89
  %267 = icmp eq ptr %266, null
  br i1 %267, label %276, label %268

268:                                              ; preds = %262
  %269 = load ptr, ptr %266, align 8, !tbaa !47
  %270 = icmp eq ptr %269, null
  br i1 %270, label %276, label %271

271:                                              ; preds = %268, %271
  %272 = phi ptr [ %274, %271 ], [ %269, %268 ]
  %273 = getelementptr inbounds %struct.bPoseChannel, ptr %272, i64 0, i32 3
  call fastcc void @do_version_constraints_radians_degrees_270_5(ptr noundef nonnull %273) #10
  %274 = load ptr, ptr %272, align 8, !tbaa !47
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %271, !llvm.loop !127

276:                                              ; preds = %271, %268, %262
  %277 = load ptr, ptr %263, align 8, !tbaa !47
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %262, !llvm.loop !128

279:                                              ; preds = %276
  %280 = load i16, ptr %7, align 8, !tbaa !34
  br label %281

281:                                              ; preds = %279, %118, %3, %161, %249
  %282 = phi i16 [ %250, %249 ], [ %119, %118 ], [ %8, %3 ], [ %162, %161 ], [ %280, %279 ]
  %283 = icmp sgt i16 %282, 271
  br i1 %283, label %358, label %284

284:                                              ; preds = %281
  %285 = icmp eq i16 %282, 271
  br i1 %285, label %286, label %290

286:                                              ; preds = %284
  %287 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %288 = load i16, ptr %287, align 2, !tbaa !42
  %289 = icmp sgt i16 %288, -1
  br i1 %289, label %358, label %290

290:                                              ; preds = %258, %254, %286, %284
  %291 = getelementptr inbounds %struct.FileData, ptr %0, i64 0, i32 14
  %292 = load ptr, ptr %291, align 8, !tbaa !43
  %293 = call zeroext i8 @DNA_struct_elem_find(ptr noundef %292, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #8
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %295, label %304

295:                                              ; preds = %290
  %296 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %297 = load ptr, ptr %296, align 8, !tbaa !47
  %298 = icmp eq ptr %297, null
  br i1 %298, label %304, label %299

299:                                              ; preds = %295, %299
  %300 = phi ptr [ %302, %299 ], [ %297, %295 ]
  %301 = getelementptr inbounds %struct.Material, ptr %300, i64 0, i32 53
  store i32 1, ptr %301, align 4, !tbaa !129
  %302 = load ptr, ptr %300, align 8, !tbaa !47
  %303 = icmp eq ptr %302, null
  br i1 %303, label %304, label %299, !llvm.loop !133

304:                                              ; preds = %299, %295, %290
  %305 = load ptr, ptr %291, align 8, !tbaa !43
  %306 = call zeroext i8 @DNA_struct_elem_find(ptr noundef %305, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #8
  %307 = icmp eq i8 %306, 0
  br i1 %307, label %308, label %325

308:                                              ; preds = %304
  %309 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %310 = load ptr, ptr %309, align 8, !tbaa !47
  %311 = icmp eq ptr %310, null
  br i1 %311, label %325, label %312

312:                                              ; preds = %308, %312
  %313 = phi ptr [ %323, %312 ], [ %310, %308 ]
  %314 = getelementptr inbounds %struct.Scene, ptr %313, i64 0, i32 22, i32 116
  %315 = getelementptr inbounds %struct.Scene, ptr %313, i64 0, i32 22, i32 116, i32 2
  store <4 x i16> <i16 512, i16 512, i16 16, i16 1>, ptr %315, align 8, !tbaa !134
  %316 = getelementptr inbounds %struct.Scene, ptr %313, i64 0, i32 22, i32 116, i32 8
  store <4 x i8> <i8 0, i8 1, i8 2, i8 3>, ptr %316, align 8, !tbaa !135
  %317 = getelementptr inbounds %struct.Scene, ptr %313, i64 0, i32 22, i32 116, i32 1
  %318 = call ptr @BLI_strncpy(ptr noundef nonnull %317, ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 7), i64 noundef 1024) #8
  %319 = getelementptr inbounds %struct.Scene, ptr %313, i64 0, i32 22, i32 116, i32 0, i32 2
  store i8 32, ptr %319, align 2, !tbaa !136
  store i8 17, ptr %314, align 8, !tbaa !137
  %320 = getelementptr inbounds %struct.Scene, ptr %313, i64 0, i32 22, i32 116, i32 0, i32 1
  store i8 2, ptr %320, align 1, !tbaa !138
  %321 = getelementptr inbounds %struct.Scene, ptr %313, i64 0, i32 22, i32 116, i32 0, i32 4
  store i8 90, ptr %321, align 4, !tbaa !139
  %322 = getelementptr inbounds %struct.Scene, ptr %313, i64 0, i32 22, i32 116, i32 0, i32 5
  store i8 15, ptr %322, align 1, !tbaa !140
  %323 = load ptr, ptr %313, align 8, !tbaa !47
  %324 = icmp eq ptr %323, null
  br i1 %324, label %325, label %312, !llvm.loop !141

325:                                              ; preds = %312, %308, %304
  %326 = load ptr, ptr %291, align 8, !tbaa !43
  %327 = call zeroext i8 @DNA_struct_elem_find(ptr noundef %326, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #8
  %328 = icmp eq i8 %327, 0
  br i1 %328, label %329, label %341

329:                                              ; preds = %325
  %330 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 44
  %331 = load ptr, ptr %330, align 8, !tbaa !47
  %332 = icmp eq ptr %331, null
  br i1 %332, label %341, label %333

333:                                              ; preds = %329, %333
  %334 = phi ptr [ %339, %333 ], [ %331, %329 ]
  %335 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %334, i64 0, i32 9
  %336 = load i32, ptr %335, align 4, !tbaa !116
  %337 = or i32 %336, 8192
  store i32 %337, ptr %335, align 4, !tbaa !116
  %338 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %334, i64 0, i32 27
  store float 1.000000e+00, ptr %338, align 8, !tbaa !142
  %339 = load ptr, ptr %334, align 8, !tbaa !47
  %340 = icmp eq ptr %339, null
  br i1 %340, label %341, label %333, !llvm.loop !143

341:                                              ; preds = %333, %329, %325
  %342 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %343 = load ptr, ptr %342, align 8, !tbaa !47
  %344 = icmp eq ptr %343, null
  br i1 %344, label %358, label %345

345:                                              ; preds = %341, %345
  %346 = phi ptr [ %356, %345 ], [ %343, %341 ]
  %347 = getelementptr inbounds %struct.Scene, ptr %346, i64 0, i32 22, i32 60
  %348 = call i32 @BLI_countlist(ptr noundef nonnull %347) #8
  %349 = getelementptr inbounds %struct.Scene, ptr %346, i64 0, i32 22, i32 61
  %350 = load i16, ptr %349, align 8, !tbaa !144
  %351 = sitofp i16 %350 to float
  %352 = add nsw i32 %348, -1
  %353 = sitofp i32 %352 to float
  %354 = call fastcc float @min_ff(float noundef %351, float noundef %353) #10
  %355 = fptosi float %354 to i16
  store i16 %355, ptr %349, align 8, !tbaa !144
  %356 = load ptr, ptr %346, align 8, !tbaa !47
  %357 = icmp eq ptr %356, null
  br i1 %357, label %358, label %345, !llvm.loop !145

358:                                              ; preds = %345, %341, %286, %281
  %359 = load i16, ptr %7, align 8, !tbaa !34
  %360 = icmp sgt i16 %359, 271
  br i1 %360, label %523, label %361

361:                                              ; preds = %358
  %362 = icmp eq i16 %359, 271
  br i1 %362, label %363, label %367

363:                                              ; preds = %361
  %364 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %365 = load i16, ptr %364, align 2, !tbaa !42
  %366 = icmp sgt i16 %365, 0
  br i1 %366, label %398, label %367

367:                                              ; preds = %363, %361
  %368 = getelementptr inbounds %struct.FileData, ptr %0, i64 0, i32 14
  %369 = load ptr, ptr %368, align 8, !tbaa !43
  %370 = call zeroext i8 @DNA_struct_elem_find(ptr noundef %369, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13) #8
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %372, label %385

372:                                              ; preds = %367
  %373 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %374 = load ptr, ptr %373, align 8, !tbaa !47
  %375 = icmp eq ptr %374, null
  br i1 %375, label %385, label %376

376:                                              ; preds = %372, %376
  %377 = phi ptr [ %383, %376 ], [ %374, %372 ]
  %378 = getelementptr inbounds %struct.Material, ptr %377, i64 0, i32 128
  %379 = getelementptr inbounds %struct.Material, ptr %377, i64 0, i32 128, i64 2
  store float 0.000000e+00, ptr %379, align 8, !tbaa !146
  store <2 x float> zeroinitializer, ptr %378, align 8, !tbaa !146
  %380 = getelementptr inbounds %struct.Material, ptr %377, i64 0, i32 21
  %381 = load float, ptr %380, align 8, !tbaa !147
  %382 = getelementptr inbounds %struct.Material, ptr %377, i64 0, i32 128, i64 3
  store float %381, ptr %382, align 4, !tbaa !146
  %383 = load ptr, ptr %377, align 8, !tbaa !47
  %384 = icmp eq ptr %383, null
  br i1 %384, label %385, label %376, !llvm.loop !148

385:                                              ; preds = %376, %372, %367
  %386 = load ptr, ptr %368, align 8, !tbaa !43
  %387 = call zeroext i8 @DNA_struct_elem_find(ptr noundef %386, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.14) #8
  %388 = icmp eq i8 %387, 0
  br i1 %388, label %389, label %398

389:                                              ; preds = %385
  %390 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %391 = load ptr, ptr %390, align 8, !tbaa !47
  %392 = icmp eq ptr %391, null
  br i1 %392, label %398, label %393

393:                                              ; preds = %389, %393
  %394 = phi ptr [ %396, %393 ], [ %391, %389 ]
  %395 = getelementptr inbounds %struct.Scene, ptr %394, i64 0, i32 22, i32 117
  store i32 64, ptr %395, align 8, !tbaa !149
  %396 = load ptr, ptr %394, align 8, !tbaa !47
  %397 = icmp eq ptr %396, null
  br i1 %397, label %398, label %393, !llvm.loop !150

398:                                              ; preds = %393, %389, %385, %363
  %399 = load i16, ptr %7, align 8, !tbaa !34
  %400 = icmp sgt i16 %399, 271
  br i1 %400, label %523, label %401

401:                                              ; preds = %398
  %402 = icmp eq i16 %399, 271
  br i1 %402, label %403, label %407

403:                                              ; preds = %401
  %404 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %405 = load i16, ptr %404, align 2, !tbaa !42
  %406 = icmp sgt i16 %405, 1
  br i1 %406, label %443, label %407

407:                                              ; preds = %403, %401
  %408 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %409 = load ptr, ptr %408, align 8, !tbaa !47
  %410 = icmp eq ptr %409, null
  br i1 %410, label %439, label %414

411:                                              ; preds = %436, %414
  %412 = load ptr, ptr %415, align 8, !tbaa !47
  %413 = icmp eq ptr %412, null
  br i1 %413, label %439, label %414, !llvm.loop !151

414:                                              ; preds = %407, %411
  %415 = phi ptr [ %412, %411 ], [ %409, %407 ]
  %416 = getelementptr inbounds %struct.Object, ptr %415, i64 0, i32 94
  %417 = load ptr, ptr %416, align 8, !tbaa !47
  %418 = icmp eq ptr %417, null
  br i1 %418, label %411, label %419

419:                                              ; preds = %414
  %420 = getelementptr inbounds %struct.Object, ptr %415, i64 0, i32 57
  br label %421

421:                                              ; preds = %419, %436
  %422 = phi ptr [ %417, %419 ], [ %437, %436 ]
  %423 = getelementptr inbounds %struct.bActuator, ptr %422, i64 0, i32 3
  %424 = load i16, ptr %423, align 8, !tbaa !152
  %425 = icmp eq i16 %424, 10
  br i1 %425, label %426, label %436

426:                                              ; preds = %421
  %427 = getelementptr inbounds %struct.bActuator, ptr %422, i64 0, i32 8
  %428 = load ptr, ptr %427, align 8, !tbaa !154
  %429 = load i16, ptr %420, align 4, !tbaa !155
  %430 = getelementptr inbounds %struct.bEditObjectActuator, ptr %428, i64 0, i32 12
  store i16 %429, ptr %430, align 2, !tbaa !156
  %431 = icmp eq i16 %429, 2
  %432 = icmp eq i16 %429, 5
  %433 = or i1 %431, %432
  %434 = select i1 %433, i16 1, i16 2
  %435 = getelementptr inbounds %struct.bEditObjectActuator, ptr %428, i64 0, i32 11
  store i16 %434, ptr %435, align 8, !tbaa !158
  br label %436

436:                                              ; preds = %426, %421
  %437 = load ptr, ptr %422, align 8, !tbaa !47
  %438 = icmp eq ptr %437, null
  br i1 %438, label %411, label %421, !llvm.loop !159

439:                                              ; preds = %411, %407
  br i1 %402, label %440, label %446

440:                                              ; preds = %439
  %441 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %442 = load i16, ptr %441, align 2, !tbaa !42
  br label %443

443:                                              ; preds = %440, %403
  %444 = phi i16 [ %442, %440 ], [ %405, %403 ]
  %445 = icmp sgt i16 %444, 2
  br i1 %445, label %482, label %446

446:                                              ; preds = %443, %439
  %447 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %448 = load ptr, ptr %447, align 8, !tbaa !47
  %449 = icmp eq ptr %448, null
  br i1 %449, label %455, label %450

450:                                              ; preds = %446, %450
  %451 = phi ptr [ %453, %450 ], [ %448, %446 ]
  %452 = getelementptr inbounds %struct.Brush, ptr %451, i64 0, i32 50
  store float 0x3FC99999A0000000, ptr %452, align 4, !tbaa !160
  %453 = load ptr, ptr %451, align 8, !tbaa !47
  %454 = icmp eq ptr %453, null
  br i1 %454, label %455, label %450, !llvm.loop !164

455:                                              ; preds = %450, %446
  %456 = getelementptr inbounds %struct.FileData, ptr %0, i64 0, i32 14
  %457 = load ptr, ptr %456, align 8, !tbaa !43
  %458 = call zeroext i8 @DNA_struct_elem_find(ptr noundef %457, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.15) #8
  %459 = icmp eq i8 %458, 0
  br i1 %459, label %460, label %482

460:                                              ; preds = %455
  %461 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %462 = load ptr, ptr %461, align 8, !tbaa !47
  %463 = icmp eq ptr %462, null
  br i1 %463, label %482, label %467

464:                                              ; preds = %479, %467
  %465 = load ptr, ptr %468, align 8, !tbaa !47
  %466 = icmp eq ptr %465, null
  br i1 %466, label %482, label %467, !llvm.loop !165

467:                                              ; preds = %460, %464
  %468 = phi ptr [ %465, %464 ], [ %462, %460 ]
  %469 = getelementptr inbounds %struct.Object, ptr %468, i64 0, i32 26
  %470 = load ptr, ptr %469, align 8, !tbaa !47
  %471 = icmp eq ptr %470, null
  br i1 %471, label %464, label %472

472:                                              ; preds = %467, %479
  %473 = phi ptr [ %480, %479 ], [ %470, %467 ]
  %474 = getelementptr inbounds %struct.ModifierData, ptr %473, i64 0, i32 2
  %475 = load i32, ptr %474, align 8, !tbaa !50
  %476 = icmp eq i32 %475, 24
  br i1 %476, label %477, label %479

477:                                              ; preds = %472
  %478 = getelementptr inbounds %struct.BevelModifierData, ptr %473, i64 0, i32 7
  store i16 -1, ptr %478, align 8, !tbaa !166
  br label %479

479:                                              ; preds = %472, %477
  %480 = load ptr, ptr %473, align 8, !tbaa !47
  %481 = icmp eq ptr %480, null
  br i1 %481, label %464, label %472, !llvm.loop !167

482:                                              ; preds = %464, %460, %455, %443
  %483 = load i16, ptr %7, align 8, !tbaa !34
  %484 = icmp sgt i16 %483, 271
  br i1 %484, label %523, label %485

485:                                              ; preds = %482
  %486 = icmp eq i16 %483, 271
  br i1 %486, label %487, label %491

487:                                              ; preds = %485
  %488 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %489 = load i16, ptr %488, align 2, !tbaa !42
  %490 = icmp sgt i16 %489, 5
  br i1 %490, label %532, label %491

491:                                              ; preds = %487, %485
  %492 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %493 = load ptr, ptr %492, align 8, !tbaa !47
  %494 = icmp eq ptr %493, null
  br i1 %494, label %532, label %498

495:                                              ; preds = %520, %498
  %496 = load ptr, ptr %499, align 8, !tbaa !47
  %497 = icmp eq ptr %496, null
  br i1 %497, label %523, label %498, !llvm.loop !168

498:                                              ; preds = %491, %495
  %499 = phi ptr [ %496, %495 ], [ %493, %491 ]
  %500 = getelementptr inbounds %struct.Object, ptr %499, i64 0, i32 26
  %501 = load ptr, ptr %500, align 8, !tbaa !47
  %502 = icmp eq ptr %501, null
  br i1 %502, label %495, label %503

503:                                              ; preds = %498, %520
  %504 = phi ptr [ %521, %520 ], [ %501, %498 ]
  %505 = getelementptr inbounds %struct.ModifierData, ptr %504, i64 0, i32 2
  %506 = load i32, ptr %505, align 8, !tbaa !50
  %507 = icmp eq i32 %506, 19
  br i1 %507, label %508, label %520

508:                                              ; preds = %503
  %509 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %504, i64 0, i32 1
  %510 = load ptr, ptr %509, align 8, !tbaa !169
  %511 = icmp eq ptr %510, null
  br i1 %511, label %520, label %512

512:                                              ; preds = %508
  %513 = getelementptr inbounds %struct.ParticleSystem, ptr %510, i64 0, i32 11
  %514 = load ptr, ptr %513, align 8, !tbaa !171
  %515 = icmp eq ptr %514, null
  br i1 %515, label %520, label %516

516:                                              ; preds = %512
  %517 = getelementptr inbounds %struct.ClothModifierData, ptr %514, i64 0, i32 3
  %518 = load ptr, ptr %517, align 8, !tbaa !173
  %519 = getelementptr inbounds %struct.ClothSimSettings, ptr %518, i64 0, i32 25
  store float 1.000000e+00, ptr %519, align 8, !tbaa !175
  br label %520

520:                                              ; preds = %508, %512, %516, %503
  %521 = load ptr, ptr %504, align 8, !tbaa !47
  %522 = icmp eq ptr %521, null
  br i1 %522, label %495, label %503, !llvm.loop !177

523:                                              ; preds = %495, %398, %358, %482
  %524 = phi i16 [ %483, %482 ], [ %399, %398 ], [ %359, %358 ], [ %483, %495 ]
  %525 = icmp sgt i16 %524, 272
  br i1 %525, label %546, label %526

526:                                              ; preds = %523
  %527 = icmp eq i16 %524, 272
  br i1 %527, label %528, label %532

528:                                              ; preds = %526
  %529 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %530 = load i16, ptr %529, align 2, !tbaa !42
  %531 = icmp sgt i16 %530, -1
  br i1 %531, label %546, label %532

532:                                              ; preds = %491, %487, %528, %526
  %533 = getelementptr inbounds %struct.FileData, ptr %0, i64 0, i32 14
  %534 = load ptr, ptr %533, align 8, !tbaa !43
  %535 = call zeroext i8 @DNA_struct_elem_find(ptr noundef %534, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.14) #8
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
  store i32 64, ptr %543, align 8, !tbaa !149
  %544 = load ptr, ptr %542, align 8, !tbaa !47
  %545 = icmp eq ptr %544, null
  br i1 %545, label %546, label %541, !llvm.loop !178

546:                                              ; preds = %541, %537, %532, %528, %523
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
  %562 = load i16, ptr %561, align 2, !tbaa !179
  %563 = and i16 %562, 2
  %564 = icmp eq i16 %563, 0
  br i1 %564, label %570, label %565

565:                                              ; preds = %559
  %566 = getelementptr inbounds %struct.Brush, ptr %560, i64 0, i32 34
  %567 = load i8, ptr %566, align 8, !tbaa !180
  switch i8 %567, label %570 [
    i8 5, label %568
    i8 13, label %568
  ]

568:                                              ; preds = %565, %565
  %569 = getelementptr inbounds %struct.Brush, ptr %560, i64 0, i32 26
  store float 1.000000e+00, ptr %569, align 8, !tbaa !181
  br label %570

570:                                              ; preds = %565, %559, %568
  %571 = load ptr, ptr %560, align 8, !tbaa !47
  %572 = icmp eq ptr %571, null
  br i1 %572, label %573, label %559, !llvm.loop !182

573:                                              ; preds = %570, %555, %551, %546
  %574 = getelementptr inbounds %struct.FileData, ptr %0, i64 0, i32 14
  %575 = load ptr, ptr %574, align 8, !tbaa !43
  %576 = call zeroext i8 @DNA_struct_elem_find(ptr noundef %575, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.17) #8
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
  store float 1.000000e+00, ptr %584, align 4, !tbaa !146
  %585 = load ptr, ptr %583, align 8, !tbaa !47
  %586 = icmp eq ptr %585, null
  br i1 %586, label %587, label %582, !llvm.loop !183

587:                                              ; preds = %582, %578, %573
  %588 = load ptr, ptr %574, align 8, !tbaa !43
  %589 = call zeroext i8 @DNA_struct_elem_find(ptr noundef %588, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19) #8
  %590 = icmp eq i8 %589, 0
  br i1 %590, label %591, label %612

591:                                              ; preds = %587
  %592 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %593 = load ptr, ptr %592, align 8, !tbaa !47
  %594 = icmp eq ptr %593, null
  br i1 %594, label %612, label %595

595:                                              ; preds = %591, %609
  %596 = phi ptr [ %610, %609 ], [ %593, %591 ]
  %597 = getelementptr inbounds %struct.Object, ptr %596, i64 0, i32 106
  call fastcc void @do_version_constraints_stretch_to_limits(ptr noundef nonnull %597) #10
  %598 = getelementptr inbounds %struct.Object, ptr %596, i64 0, i32 18
  %599 = load ptr, ptr %598, align 8, !tbaa !89
  %600 = icmp eq ptr %599, null
  br i1 %600, label %609, label %601

601:                                              ; preds = %595
  %602 = load ptr, ptr %599, align 8, !tbaa !47
  %603 = icmp eq ptr %602, null
  br i1 %603, label %609, label %604

604:                                              ; preds = %601, %604
  %605 = phi ptr [ %607, %604 ], [ %602, %601 ]
  %606 = getelementptr inbounds %struct.bPoseChannel, ptr %605, i64 0, i32 3
  call fastcc void @do_version_constraints_stretch_to_limits(ptr noundef nonnull %606) #10
  %607 = load ptr, ptr %605, align 8, !tbaa !47
  %608 = icmp eq ptr %607, null
  br i1 %608, label %609, label %604, !llvm.loop !184

609:                                              ; preds = %604, %601, %595
  %610 = load ptr, ptr %596, align 8, !tbaa !47
  %611 = icmp eq ptr %610, null
  br i1 %611, label %612, label %595, !llvm.loop !185

612:                                              ; preds = %609, %591, %587
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @DNA_struct_elem_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @BKE_node_tree_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_node_tree_iter_step(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_version_constraints_radians_degrees_270_1(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !186 {
  %2 = load ptr, ptr %0, align 8, !tbaa !47
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1, %25
  %5 = phi ptr [ %26, %25 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !187
  %8 = icmp eq i16 %7, 19
  br i1 %8, label %9, label %25

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !189
  %12 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !190
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 6
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %16) #10
  %17 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 7
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %17) #10
  br label %18

18:                                               ; preds = %15, %9
  %19 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 3
  %20 = load i16, ptr %19, align 2, !tbaa !192
  %21 = icmp eq i16 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 8
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %23) #10
  %24 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 9
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %24) #10
  br label %25

25:                                               ; preds = %18, %22, %4
  %26 = load ptr, ptr %5, align 8, !tbaa !47
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %4, !llvm.loop !193

28:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !194 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_version_constraints_radians_degrees_270_5(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !195 {
  %2 = load ptr, ptr %0, align 8, !tbaa !47
  %3 = icmp eq ptr %2, null
  br i1 %3, label %42, label %4

4:                                                ; preds = %1, %39
  %5 = phi ptr [ %40, %39 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !187
  %8 = icmp eq i16 %7, 19
  br i1 %8, label %9, label %39

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !189
  %12 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !190
  switch i16 %13, label %25 [
    i16 1, label %14
    i16 2, label %18
  ]

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 10
  %16 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 6
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %16) #10
  %17 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 11
  br label %22

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 14
  %20 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 6
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %19, ptr noundef nonnull %20) #10
  %21 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 15
  br label %22

22:                                               ; preds = %14, %18
  %23 = phi ptr [ %21, %18 ], [ %17, %14 ]
  %24 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %23, ptr noundef nonnull %24) #10
  br label %25

25:                                               ; preds = %22, %9
  %26 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 3
  %27 = load i16, ptr %26, align 2, !tbaa !192
  switch i16 %27, label %39 [
    i16 1, label %28
    i16 2, label %32
  ]

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 12
  %30 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 8
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %29, ptr noundef nonnull %30) #10
  %31 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 13
  br label %36

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 16
  %34 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 8
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %33, ptr noundef nonnull %34) #10
  %35 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 17
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi ptr [ %31, %28 ], [ %35, %32 ]
  %38 = getelementptr inbounds %struct.bTransformConstraint, ptr %11, i64 0, i32 9
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %37, ptr noundef nonnull %38) #10
  br label %39

39:                                               ; preds = %36, %25, %4
  %40 = load ptr, ptr %5, align 8, !tbaa !47
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %4, !llvm.loop !196

42:                                               ; preds = %39, %1
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #5 !PGOFuncName !197 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_version_constraints_stretch_to_limits(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !198 {
  %2 = load ptr, ptr %0, align 8, !tbaa !47
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1, %13
  %5 = phi ptr [ %14, %13 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !187
  %8 = icmp eq i16 %7, 15
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !189
  %12 = getelementptr inbounds %struct.bStretchToConstraint, ptr %11, i64 0, i32 6
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %12, align 4, !tbaa !146
  br label %13

13:                                               ; preds = %4, %9
  %14 = load ptr, ptr %5, align 8, !tbaa !47
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %4, !llvm.loop !199

16:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !200 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !146
  %3 = fmul <2 x float> %2, <float 0x3F91DF46A0000000, float 0x3F91DF46A0000000>
  store <2 x float> %3, ptr %0, align 4, !tbaa !146
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !146
  %6 = fmul float %5, 0x3F91DF46A0000000
  store float %6, ptr %4, align 4, !tbaa !146
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !201 {
  %3 = load float, ptr %1, align 4, !tbaa !146
  store float %3, ptr %0, align 4, !tbaa !146
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !146
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !146
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !146
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !146
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { optsize }

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
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!51, !45, i64 16}
!51 = !{!"ModifierData", !36, i64 0, !36, i64 8, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!52 = !{!53, !54, i64 136}
!53 = !{!"BevelModifierData", !51, i64 0, !54, i64 112, !45, i64 116, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !39, i64 128, !39, i64 130, !45, i64 132, !54, i64 136, !54, i64 140, !37, i64 144}
!54 = !{!"float", !37, i64 0}
!55 = !{!53, !39, i64 122}
!56 = distinct !{!56, !49}
!57 = !{!58, !45, i64 256}
!58 = !{!"bNodeTree", !59, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 200, !36, i64 208, !37, i64 216, !41, i64 224, !41, i64 240, !45, i64 256, !45, i64 260, !45, i64 264, !45, i64 268, !45, i64 272, !39, i64 276, !39, i64 278, !45, i64 280, !45, i64 284, !39, i64 288, !39, i64 290, !45, i64 292, !60, i64 296, !41, i64 312, !41, i64 328, !36, i64 344, !61, i64 352, !45, i64 356, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424}
!59 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !45, i64 100, !45, i64 104, !45, i64 108, !36, i64 112}
!60 = !{!"rctf", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12}
!61 = !{!"bNodeInstanceKey", !45, i64 0}
!62 = !{!63, !39, i64 172}
!63 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !45, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !37, i64 188, !41, i64 200, !41, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !41, i64 264, !54, i64 280, !54, i64 284, !54, i64 288, !54, i64 292, !54, i64 296, !54, i64 300, !54, i64 304, !45, i64 308, !37, i64 312, !39, i64 376, !39, i64 378, !54, i64 380, !54, i64 384, !39, i64 388, !39, i64 390, !36, i64 392, !60, i64 400, !60, i64 416, !60, i64 432, !39, i64 448, !39, i64 450, !45, i64 452, !36, i64 456}
!64 = !{!63, !36, i64 240}
!65 = distinct !{!65, !49}
!66 = distinct !{!66, !49}
!67 = distinct !{!67, !49}
!68 = distinct !{!68, !49}
!69 = !{!70, !45, i64 32}
!70 = !{!"SpaceLink", !36, i64 0, !36, i64 8, !41, i64 16, !45, i64 32, !54, i64 36, !37, i64 40}
!71 = !{!72, !39, i64 212}
!72 = !{!"SpaceClip", !36, i64 0, !36, i64 8, !41, i64 16, !45, i64 32, !54, i64 36, !54, i64 40, !54, i64 44, !54, i64 48, !54, i64 52, !73, i64 56, !36, i64 64, !74, i64 72, !45, i64 208, !39, i64 212, !39, i64 214, !45, i64 216, !37, i64 220, !54, i64 228, !54, i64 232, !45, i64 236, !37, i64 240, !37, i64 304, !45, i64 368, !39, i64 372, !39, i64 374, !45, i64 376, !45, i64 380, !37, i64 384, !76, i64 392}
!73 = !{!"MovieClipUser", !45, i64 0, !39, i64 4, !39, i64 6}
!74 = !{!"MovieClipScopes", !39, i64 0, !39, i64 2, !45, i64 4, !45, i64 8, !45, i64 12, !75, i64 16, !36, i64 80, !36, i64 88, !37, i64 96, !39, i64 104, !39, i64 106, !45, i64 108, !36, i64 112, !36, i64 120, !37, i64 128}
!75 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !45, i64 56, !45, i64 60}
!76 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!77 = distinct !{!77, !49}
!78 = !{!79, !54, i64 1224}
!79 = !{!"MovieClip", !59, i64 0, !36, i64 120, !37, i64 128, !45, i64 1152, !45, i64 1156, !37, i64 1160, !54, i64 1168, !54, i64 1172, !36, i64 1176, !36, i64 1184, !36, i64 1192, !80, i64 1200, !36, i64 1528, !86, i64 1536, !45, i64 2312, !45, i64 2316, !45, i64 2320, !45, i64 2324, !87, i64 2328}
!80 = !{!"MovieTracking", !81, i64 0, !82, i64 72, !41, i64 128, !41, i64 144, !83, i64 160, !84, i64 184, !36, i64 232, !36, i64 240, !41, i64 248, !45, i64 264, !45, i64 268, !36, i64 272, !85, i64 280}
!81 = !{!"MovieTrackingSettings", !45, i64 0, !39, i64 4, !39, i64 6, !54, i64 8, !39, i64 12, !39, i64 14, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !54, i64 24, !39, i64 28, !39, i64 30, !45, i64 32, !45, i64 36, !45, i64 40, !39, i64 44, !39, i64 46, !54, i64 48, !45, i64 52, !45, i64 56, !54, i64 60, !54, i64 64, !45, i64 68}
!82 = !{!"MovieTrackingCamera", !36, i64 0, !39, i64 8, !39, i64 10, !54, i64 12, !54, i64 16, !54, i64 20, !39, i64 24, !39, i64 26, !37, i64 28, !54, i64 36, !54, i64 40, !54, i64 44, !54, i64 48, !54, i64 52}
!83 = !{!"MovieTrackingReconstruction", !45, i64 0, !54, i64 4, !45, i64 8, !45, i64 12, !36, i64 16}
!84 = !{!"MovieTrackingStabilization", !45, i64 0, !45, i64 4, !45, i64 8, !54, i64 12, !36, i64 16, !54, i64 24, !54, i64 28, !54, i64 32, !45, i64 36, !45, i64 40, !54, i64 44}
!85 = !{!"MovieTrackingDopesheet", !45, i64 0, !39, i64 4, !39, i64 6, !41, i64 8, !41, i64 24, !45, i64 40, !45, i64 44}
!86 = !{!"MovieClipProxy", !37, i64 0, !39, i64 768, !39, i64 770, !39, i64 772, !39, i64 774}
!87 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!88 = distinct !{!88, !49}
!89 = !{!90, !36, i64 288}
!90 = !{!"Object", !59, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !39, i64 138, !45, i64 140, !45, i64 144, !45, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !91, i64 312, !36, i64 360, !41, i64 368, !41, i64 384, !41, i64 400, !41, i64 416, !45, i64 432, !45, i64 436, !36, i64 440, !36, i64 448, !45, i64 456, !45, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !54, i64 616, !54, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !45, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !45, i64 968, !45, i64 972, !45, i64 976, !45, i64 980, !45, i64 984, !54, i64 988, !54, i64 992, !54, i64 996, !54, i64 1000, !54, i64 1004, !54, i64 1008, !54, i64 1012, !54, i64 1016, !54, i64 1020, !54, i64 1024, !54, i64 1028, !54, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !54, i64 1048, !54, i64 1052, !41, i64 1056, !41, i64 1072, !41, i64 1088, !41, i64 1104, !54, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !45, i64 1144, !45, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !41, i64 1176, !41, i64 1192, !41, i64 1208, !41, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !54, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !40, i64 1304, !40, i64 1312, !45, i64 1320, !45, i64 1324, !41, i64 1328, !41, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !41, i64 1400, !36, i64 1416}
!91 = !{!"bAnimVizSettings", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !45, i64 32, !45, i64 36, !45, i64 40, !45, i64 44}
!92 = distinct !{!92, !49}
!93 = distinct !{!93, !49}
!94 = !{!95, !39, i64 808}
!95 = !{!"Scene", !59, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !45, i64 232, !45, i64 236, !45, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !96, i64 280, !104, i64 4264, !41, i64 4296, !41, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !39, i64 4376, !39, i64 4378, !45, i64 4380, !41, i64 4384, !105, i64 4400, !106, i64 4416, !109, i64 4600, !36, i64 4608, !110, i64 4616, !36, i64 4640, !40, i64 4648, !40, i64 4656, !98, i64 4664, !99, i64 4824, !87, i64 4888, !36, i64 4952}
!96 = !{!"RenderData", !97, i64 0, !36, i64 248, !36, i64 256, !100, i64 264, !101, i64 328, !45, i64 400, !45, i64 404, !45, i64 408, !54, i64 412, !45, i64 416, !45, i64 420, !45, i64 424, !45, i64 428, !39, i64 432, !39, i64 434, !54, i64 436, !54, i64 440, !54, i64 444, !54, i64 448, !54, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !45, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !45, i64 484, !45, i64 488, !39, i64 492, !39, i64 494, !45, i64 496, !45, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !45, i64 516, !45, i64 520, !45, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !60, i64 544, !60, i64 560, !102, i64 576, !41, i64 592, !39, i64 608, !39, i64 610, !54, i64 612, !54, i64 616, !54, i64 620, !54, i64 624, !45, i64 628, !54, i64 632, !54, i64 636, !54, i64 640, !54, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !54, i64 660, !54, i64 664, !39, i64 668, !39, i64 670, !54, i64 672, !54, i64 676, !37, i64 680, !45, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !45, i64 2520, !39, i64 2524, !39, i64 2526, !54, i64 2528, !54, i64 2532, !39, i64 2536, !39, i64 2538, !54, i64 2540, !39, i64 2544, !39, i64 2546, !45, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !54, i64 2560, !54, i64 2564, !36, i64 2568, !45, i64 2576, !54, i64 2580, !37, i64 2584, !103, i64 2616, !45, i64 3976, !45, i64 3980}
!97 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !54, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !98, i64 24, !99, i64 184}
!98 = !{!"ColorManagedViewSettings", !45, i64 0, !45, i64 4, !37, i64 8, !37, i64 72, !54, i64 136, !54, i64 140, !36, i64 144, !36, i64 152}
!99 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!100 = !{!"QuicktimeCodecSettings", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !45, i64 40, !45, i64 44, !39, i64 48, !39, i64 50, !45, i64 52, !45, i64 56, !45, i64 60}
!101 = !{!"FFMpegCodecData", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !54, i64 32, !45, i64 36, !45, i64 40, !45, i64 44, !45, i64 48, !45, i64 52, !45, i64 56, !45, i64 60, !36, i64 64}
!102 = !{!"rcti", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!103 = !{!"BakeData", !97, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !54, i64 1280, !54, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!104 = !{!"AudioData", !45, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !45, i64 16, !39, i64 20, !39, i64 22, !54, i64 24, !54, i64 28}
!105 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!106 = !{!"GameData", !105, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !107, i64 40, !39, i64 64, !39, i64 66, !54, i64 68, !108, i64 72, !54, i64 128, !54, i64 132, !45, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !54, i64 164, !54, i64 168, !54, i64 172, !54, i64 176, !54, i64 180}
!107 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !54, i64 8, !54, i64 12, !36, i64 16}
!108 = !{!"RecastData", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !54, i64 32, !54, i64 36, !45, i64 40, !54, i64 44, !54, i64 48, !39, i64 52, !39, i64 54}
!109 = !{!"UnitSettings", !54, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!110 = !{!"PhysicsSettings", !37, i64 0, !45, i64 12, !45, i64 16, !45, i64 20}
!111 = distinct !{!111, !49}
!112 = !{!113, !54, i64 1352}
!113 = !{!"Mesh", !59, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !114, i64 280, !114, i64 480, !114, i64 680, !114, i64 880, !114, i64 1080, !45, i64 1280, !45, i64 1284, !45, i64 1288, !45, i64 1292, !45, i64 1296, !45, i64 1300, !45, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !45, i64 1344, !39, i64 1348, !39, i64 1350, !54, i64 1352, !45, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !39, i64 1366, !36, i64 1368}
!114 = !{!"CustomData", !36, i64 0, !37, i64 8, !45, i64 172, !45, i64 176, !45, i64 180, !36, i64 184, !36, i64 192}
!115 = distinct !{!115, !49}
!116 = !{!117, !45, i64 156}
!117 = !{!"FreestyleLineStyle", !59, i64 0, !36, i64 120, !54, i64 128, !54, i64 132, !54, i64 136, !54, i64 140, !54, i64 144, !45, i64 148, !54, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !54, i64 172, !54, i64 176, !54, i64 180, !54, i64 184, !54, i64 188, !45, i64 192, !39, i64 196, !39, i64 198, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !45, i64 208, !45, i64 212, !54, i64 216, !39, i64 220, !39, i64 222, !39, i64 224, !37, i64 226, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !45, i64 244, !37, i64 248, !36, i64 392, !41, i64 400, !41, i64 416, !41, i64 432, !41, i64 448}
!118 = !{!117, !45, i64 208}
!119 = !{!117, !45, i64 212}
!120 = distinct !{!120, !49}
!121 = distinct !{!121, !49}
!122 = distinct !{!122, !49}
!123 = distinct !{!123, !49}
!124 = !{!125, !36, i64 96}
!125 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !102, i64 56, !37, i64 72, !37, i64 73, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !39, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !41, i64 96, !41, i64 112, !41, i64 128, !41, i64 144}
!126 = distinct !{!126, !49}
!127 = distinct !{!127, !49}
!128 = distinct !{!128, !49}
!129 = !{!130, !45, i64 404}
!130 = !{!"Material", !59, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !54, i64 132, !54, i64 136, !54, i64 140, !54, i64 144, !54, i64 148, !54, i64 152, !54, i64 156, !54, i64 160, !54, i64 164, !54, i64 168, !54, i64 172, !54, i64 176, !54, i64 180, !54, i64 184, !54, i64 188, !54, i64 192, !54, i64 196, !54, i64 200, !54, i64 204, !54, i64 208, !54, i64 212, !54, i64 216, !54, i64 220, !131, i64 224, !132, i64 312, !54, i64 328, !54, i64 332, !54, i64 336, !54, i64 340, !54, i64 344, !54, i64 348, !54, i64 352, !39, i64 356, !39, i64 358, !39, i64 360, !37, i64 362, !37, i64 363, !54, i64 364, !54, i64 368, !39, i64 372, !39, i64 374, !54, i64 376, !54, i64 380, !54, i64 384, !54, i64 388, !39, i64 392, !39, i64 394, !45, i64 396, !45, i64 400, !45, i64 404, !45, i64 408, !39, i64 412, !39, i64 414, !39, i64 416, !39, i64 418, !54, i64 420, !54, i64 424, !54, i64 428, !54, i64 432, !54, i64 436, !54, i64 440, !54, i64 444, !54, i64 448, !54, i64 452, !54, i64 456, !37, i64 460, !54, i64 524, !54, i64 528, !54, i64 532, !45, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !39, i64 544, !39, i64 546, !39, i64 548, !37, i64 550, !37, i64 551, !39, i64 552, !39, i64 554, !54, i64 556, !54, i64 560, !37, i64 564, !54, i64 580, !54, i64 584, !39, i64 588, !39, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !39, i64 612, !39, i64 614, !54, i64 616, !54, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !54, i64 800, !54, i64 804, !54, i64 808, !54, i64 812, !54, i64 816, !39, i64 820, !39, i64 822, !37, i64 824, !37, i64 836, !54, i64 848, !54, i64 852, !54, i64 856, !54, i64 860, !54, i64 864, !54, i64 868, !54, i64 872, !39, i64 876, !39, i64 878, !45, i64 880, !39, i64 884, !39, i64 886, !37, i64 888, !39, i64 904, !39, i64 906, !39, i64 908, !39, i64 910, !39, i64 912, !37, i64 914, !36, i64 920, !41, i64 928}
!131 = !{!"VolumeSettings", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !54, i64 52, !54, i64 56, !54, i64 60, !39, i64 64, !39, i64 66, !39, i64 68, !39, i64 70, !54, i64 72, !54, i64 76, !54, i64 80, !54, i64 84}
!132 = !{!"GameSettings", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!133 = distinct !{!133, !49}
!134 = !{!39, !39, i64 0}
!135 = !{!37, !37, i64 0}
!136 = !{!95, !37, i64 2898}
!137 = !{!95, !37, i64 2896}
!138 = !{!95, !37, i64 2897}
!139 = !{!95, !37, i64 2900}
!140 = !{!95, !37, i64 2901}
!141 = distinct !{!141, !49}
!142 = !{!117, !54, i64 216}
!143 = distinct !{!143, !49}
!144 = !{!95, !39, i64 888}
!145 = distinct !{!145, !49}
!146 = !{!54, !54, i64 0}
!147 = !{!130, !54, i64 200}
!148 = distinct !{!148, !49}
!149 = !{!95, !45, i64 4256}
!150 = distinct !{!150, !49}
!151 = distinct !{!151, !49}
!152 = !{!153, !39, i64 24}
!153 = !{!"bActuator", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !37, i64 32, !36, i64 96, !36, i64 104}
!154 = !{!153, !36, i64 96}
!155 = !{!90, !39, i64 956}
!156 = !{!157, !39, i64 122}
!157 = !{!"bEditObjectActuator", !45, i64 0, !39, i64 4, !39, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 100, !54, i64 112, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !45, i64 124}
!158 = !{!157, !39, i64 120}
!159 = distinct !{!159, !49}
!160 = !{!161, !54, i64 1996}
!161 = !{!"Brush", !59, i64 0, !162, i64 120, !36, i64 144, !163, i64 152, !163, i64 464, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !37, i64 816, !54, i64 1840, !39, i64 1844, !39, i64 1846, !54, i64 1848, !45, i64 1852, !45, i64 1856, !45, i64 1860, !54, i64 1864, !45, i64 1868, !45, i64 1872, !45, i64 1876, !45, i64 1880, !54, i64 1884, !54, i64 1888, !37, i64 1892, !54, i64 1904, !37, i64 1908, !45, i64 1920, !54, i64 1924, !54, i64 1928, !45, i64 1932, !45, i64 1936, !45, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !54, i64 1948, !54, i64 1952, !54, i64 1956, !54, i64 1960, !54, i64 1964, !45, i64 1968, !45, i64 1972, !45, i64 1976, !54, i64 1980, !54, i64 1984, !45, i64 1988, !45, i64 1992, !54, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!162 = !{!"BrushClone", !36, i64 0, !37, i64 8, !54, i64 16, !54, i64 20}
!163 = !{!"MTex", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !54, i64 116, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !39, i64 128, !39, i64 130, !37, i64 132, !37, i64 133, !54, i64 140, !54, i64 144, !54, i64 148, !54, i64 152, !54, i64 156, !54, i64 160, !54, i64 164, !54, i64 168, !54, i64 172, !54, i64 176, !54, i64 180, !54, i64 184, !54, i64 188, !54, i64 192, !54, i64 196, !54, i64 200, !54, i64 204, !54, i64 208, !54, i64 212, !54, i64 216, !54, i64 220, !54, i64 224, !54, i64 228, !54, i64 232, !54, i64 236, !54, i64 240, !54, i64 244, !54, i64 248, !54, i64 252, !54, i64 256, !54, i64 260, !54, i64 264, !54, i64 268, !54, i64 272, !54, i64 276, !54, i64 280, !54, i64 284, !54, i64 288, !54, i64 292, !54, i64 296, !54, i64 300, !54, i64 304, !54, i64 308}
!164 = distinct !{!164, !49}
!165 = distinct !{!165, !49}
!166 = !{!53, !39, i64 128}
!167 = distinct !{!167, !49}
!168 = distinct !{!168, !49}
!169 = !{!170, !36, i64 112}
!170 = !{!"ParticleSystemModifierData", !51, i64 0, !36, i64 112, !36, i64 120, !45, i64 128, !45, i64 132, !45, i64 136, !39, i64 140, !39, i64 142}
!171 = !{!172, !36, i64 104}
!172 = !{!"ParticleSystem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !41, i64 72, !41, i64 88, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152, !37, i64 168, !37, i64 232, !54, i64 296, !54, i64 300, !54, i64 304, !45, i64 308, !45, i64 312, !45, i64 316, !45, i64 320, !45, i64 324, !45, i64 328, !45, i64 332, !45, i64 336, !39, i64 340, !39, i64 342, !39, i64 344, !39, i64 346, !37, i64 348, !37, i64 540, !39, i64 564, !39, i64 566, !36, i64 568, !36, i64 576, !41, i64 584, !36, i64 600, !36, i64 608, !45, i64 616, !45, i64 620, !36, i64 624, !36, i64 632, !36, i64 640, !54, i64 648, !54, i64 652}
!173 = !{!174, !36, i64 128}
!174 = !{!"ClothModifierData", !51, i64 0, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152}
!175 = !{!176, !54, i64 112}
!176 = !{!"ClothSimSettings", !36, i64 0, !54, i64 8, !54, i64 12, !54, i64 16, !37, i64 20, !54, i64 32, !54, i64 36, !54, i64 40, !54, i64 44, !54, i64 48, !54, i64 52, !54, i64 56, !54, i64 60, !54, i64 64, !54, i64 68, !54, i64 72, !54, i64 76, !54, i64 80, !54, i64 84, !54, i64 88, !54, i64 92, !54, i64 96, !54, i64 100, !54, i64 104, !54, i64 108, !54, i64 112, !54, i64 116, !54, i64 120, !45, i64 124, !45, i64 128, !45, i64 132, !45, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !37, i64 156, !36, i64 160}
!177 = distinct !{!177, !49}
!178 = distinct !{!178, !49}
!179 = !{!161, !39, i64 1846}
!180 = !{!161, !37, i64 1944}
!181 = !{!161, !54, i64 1904}
!182 = distinct !{!182, !49}
!183 = distinct !{!183, !49}
!184 = distinct !{!184, !49}
!185 = distinct !{!185, !49}
!186 = !{!"versioning_270.c:do_version_constraints_radians_degrees_270_1"}
!187 = !{!188, !39, i64 24}
!188 = !{!"bConstraint", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 26, !37, i64 28, !37, i64 29, !37, i64 30, !39, i64 94, !54, i64 96, !54, i64 100, !36, i64 104, !54, i64 112, !54, i64 116}
!189 = !{!188, !36, i64 16}
!190 = !{!191, !39, i64 72}
!191 = !{!"bTransformConstraint", !36, i64 0, !37, i64 8, !39, i64 72, !39, i64 74, !37, i64 76, !37, i64 79, !37, i64 80, !37, i64 92, !37, i64 104, !37, i64 116, !37, i64 128, !37, i64 140, !37, i64 152, !37, i64 164, !37, i64 176, !37, i64 188, !37, i64 200, !37, i64 212}
!192 = !{!191, !39, i64 74}
!193 = distinct !{!193, !49}
!194 = !{!"versioning_270.c:BLI_listbase_clear"}
!195 = !{!"versioning_270.c:do_version_constraints_radians_degrees_270_5"}
!196 = distinct !{!196, !49}
!197 = !{!"versioning_270.c:min_ff"}
!198 = !{!"versioning_270.c:do_version_constraints_stretch_to_limits"}
!199 = distinct !{!199, !49}
!200 = !{!"versioning_270.c:mul_v3_fl"}
!201 = !{!"versioning_270.c:copy_v3_v3"}
