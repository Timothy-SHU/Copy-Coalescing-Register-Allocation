; ModuleID = 'blender/source/blender/blenkernel/intern/library_query.c'
source_filename = "blender/source/blender/blenkernel/intern/library_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.LibraryForeachIDData = type { ptr, i32, ptr, ptr }
%struct.SeqIterator = type { ptr, i32, i32, ptr, i32 }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.ListBase = type { ptr, ptr }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.DriverVar = type { ptr, ptr, [64 x i8], [8 x %struct.DriverTarget], i16, i16, float }
%struct.DriverTarget = type { ptr, ptr, [32 x i8], i16, i16, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.SceneRenderLayer = type { ptr, ptr, [64 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, float, %struct.FreestyleConfig }
%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }
%struct.FreestyleModuleConfig = type { ptr, ptr, ptr, i16, [3 x i16] }
%struct.FreestyleLineSet = type { ptr, ptr, [64 x i8], i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.Camera = type { %struct.ID, ptr, i8, i8, i16, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, i8, [7 x i8] }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.Speaker = type { %struct.ID, ptr, ptr, float, float, float, float, float, float, float, float, float, float, i16, [3 x i16] }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.Mask = type { %struct.ID, ptr, %struct.ListBase, i32, i32, i32, i32, i32, i32 }
%struct.MaskLayer = type { ptr, ptr, [64 x i8], %struct.ListBase, %struct.ListBase, ptr, ptr, float, i8, i8, i8, [7 x i8], i8, i8 }
%struct.MaskSpline = type { ptr, ptr, i16, i8, i8, i32, ptr, %struct.MaskParent, ptr }
%struct.MaskParent = type { i32, i32, ptr, [64 x i8], [64 x i8], [2 x float], [4 x [2 x float]] }
%struct.MaskSplinePoint = type { %struct.BezTriple, i32, i32, ptr, %struct.MaskParent }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.FreestyleLineStyle = type { %struct.ID, ptr, float, float, float, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, float, i32, i16, i16, i16, i16, i16, i16, i32, i32, float, i16, i16, i16, [3 x i16], i16, i16, i16, i16, i16, i16, i32, [18 x ptr], ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.LineStyleModifier = type { ptr, ptr, [64 x i8], i32, float, i32, i32 }
%struct.LineStyleColorModifier_DistanceFromObject = type { %struct.LineStyleModifier, ptr, ptr, float, float }
%struct.LineStyleAlphaModifier_DistanceFromObject = type { %struct.LineStyleModifier, ptr, ptr, i32, float, float, i32 }
%struct.LineStyleThicknessModifier_DistanceFromObject = type { %struct.LineStyleModifier, ptr, ptr, i32, float, float, float, float, i32 }

; Function Attrs: nounwind uwtable
define dso_local void @BKE_library_foreach_ID_link(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.LibraryForeachIDData, align 8
  %6 = alloca %struct.SeqIterator, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #3
  store ptr %0, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.LibraryForeachIDData, ptr %5, i64 0, i32 1
  store i32 %3, ptr %7, align 8, !tbaa !40
  %8 = getelementptr inbounds %struct.LibraryForeachIDData, ptr %5, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.LibraryForeachIDData, ptr %5, i64 0, i32 3
  store ptr %2, ptr %9, align 8, !tbaa !42
  %10 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #3
  %11 = icmp eq ptr %10, null
  br i1 %11, label %48, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = icmp eq ptr %14, null
  br i1 %15, label %48, label %19

16:                                               ; preds = %25, %19
  %17 = load ptr, ptr %20, align 8, !tbaa !43
  %18 = icmp eq ptr %17, null
  br i1 %18, label %48, label %19, !llvm.loop !44

19:                                               ; preds = %12, %16
  %20 = phi ptr [ %17, %16 ], [ %14, %12 ]
  %21 = getelementptr inbounds %struct.FCurve, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !47
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  %24 = icmp eq ptr %23, null
  br i1 %24, label %16, label %28

25:                                               ; preds = %42, %28
  %26 = load ptr, ptr %29, align 8, !tbaa !43
  %27 = icmp eq ptr %26, null
  br i1 %27, label %16, label %28, !llvm.loop !52

28:                                               ; preds = %19, %25
  %29 = phi ptr [ %26, %25 ], [ %23, %19 ]
  %30 = getelementptr inbounds %struct.DriverVar, ptr %29, i64 0, i32 4
  %31 = load i16, ptr %30, align 8, !tbaa !53
  %32 = icmp sgt i16 %31, 0
  br i1 %32, label %33, label %25

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.DriverVar, ptr %29, i64 0, i32 3
  br label %35

35:                                               ; preds = %33, %42
  %36 = phi i32 [ %43, %42 ], [ 0, %33 ]
  %37 = phi ptr [ %44, %42 ], [ %34, %33 ]
  %38 = load ptr, ptr %8, align 8, !tbaa !41
  %39 = load ptr, ptr %9, align 8, !tbaa !42
  %40 = tail call zeroext i8 %38(ptr noundef %39, ptr noundef nonnull %37, i32 noundef 0) #3
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %35
  %43 = add nuw nsw i32 %36, 1
  %44 = getelementptr inbounds %struct.DriverTarget, ptr %37, i64 1
  %45 = load i16, ptr %30, align 8, !tbaa !53
  %46 = sext i16 %45 to i32
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %35, label %25, !llvm.loop !55

48:                                               ; preds = %16, %35, %12, %4
  %49 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %50 = load i16, ptr %49, align 8, !tbaa !56
  switch i16 %50, label %653 [
    i16 17235, label %56
    i16 16975, label %193
    i16 17741, label %276
    i16 21827, label %300
    i16 16973, label %51
    i16 16717, label %359
    i16 17748, label %385
    i16 21580, label %392
    i16 16716, label %395
    i16 16707, label %417
    i16 17739, label %420
    i16 21075, label %423
    i16 20311, label %426
    i16 19283, label %448
    i16 21063, label %451
    i16 21582, label %461
    i16 21058, label %471
    i16 16720, label %497
    i16 17229, label %515
    i16 21325, label %538
    i16 21324, label %573
  ]

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 6
  %53 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 9
  %54 = load i16, ptr %53, align 2, !tbaa !57
  %55 = icmp sgt i16 %54, 0
  br i1 %55, label %353, label %653

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 2
  %58 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %57, i32 noundef 0) #3
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %653, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 3
  %62 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %61, i32 noundef 0) #3
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %653, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 4
  %66 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %65, i32 noundef 0) #3
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %653, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !60
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.Base, ptr %70, i64 0, i32 7
  %74 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %73, i32 noundef 0) #3
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %653, label %76

76:                                               ; preds = %72, %68
  %77 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 7
  %78 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %77, i32 noundef 0) #3
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %653, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 60
  %82 = load ptr, ptr %81, align 8, !tbaa !43
  %83 = icmp eq ptr %82, null
  br i1 %83, label %139, label %87

84:                                               ; preds = %136, %117
  %85 = load ptr, ptr %88, align 8, !tbaa !43
  %86 = icmp eq ptr %85, null
  br i1 %86, label %139, label %87, !llvm.loop !80

87:                                               ; preds = %80, %84
  %88 = phi ptr [ %85, %84 ], [ %82, %80 ]
  %89 = getelementptr inbounds %struct.SceneRenderLayer, ptr %88, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !81
  %91 = icmp eq ptr %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %89, i32 noundef 0) #3
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %653, label %95

95:                                               ; preds = %92, %87
  %96 = getelementptr inbounds %struct.SceneRenderLayer, ptr %88, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !84
  %98 = icmp eq ptr %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %96, i32 noundef 0) #3
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %653, label %102

102:                                              ; preds = %99, %95
  %103 = getelementptr inbounds %struct.SceneRenderLayer, ptr %88, i64 0, i32 13
  %104 = load ptr, ptr %103, align 8, !tbaa !43
  %105 = icmp eq ptr %104, null
  br i1 %105, label %117, label %106

106:                                              ; preds = %102, %114
  %107 = phi ptr [ %115, %114 ], [ %104, %102 ]
  %108 = getelementptr inbounds %struct.FreestyleModuleConfig, ptr %107, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !85
  %110 = icmp eq ptr %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %108, i32 noundef 0) #3
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %653, label %114

114:                                              ; preds = %106, %111
  %115 = load ptr, ptr %107, align 8, !tbaa !43
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %106, !llvm.loop !87

117:                                              ; preds = %114, %102
  %118 = getelementptr inbounds %struct.SceneRenderLayer, ptr %88, i64 0, i32 13, i32 7
  %119 = load ptr, ptr %118, align 8, !tbaa !43
  %120 = icmp eq ptr %119, null
  br i1 %120, label %84, label %121

121:                                              ; preds = %117, %136
  %122 = phi ptr [ %137, %136 ], [ %119, %117 ]
  %123 = getelementptr inbounds %struct.FreestyleLineSet, ptr %122, i64 0, i32 12
  %124 = load ptr, ptr %123, align 8, !tbaa !88
  %125 = icmp eq ptr %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %121
  %127 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %123, i32 noundef 0) #3
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %653, label %129

129:                                              ; preds = %126, %121
  %130 = getelementptr inbounds %struct.FreestyleLineSet, ptr %122, i64 0, i32 13
  %131 = load ptr, ptr %130, align 8, !tbaa !90
  %132 = icmp eq ptr %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %129
  %134 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %130, i32 noundef 0) #3
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %653, label %136

136:                                              ; preds = %129, %133
  %137 = load ptr, ptr %122, align 8, !tbaa !43
  %138 = icmp eq ptr %137, null
  br i1 %138, label %84, label %121, !llvm.loop !91

139:                                              ; preds = %84, %80
  %140 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %141 = load ptr, ptr %140, align 8, !tbaa !92
  %142 = icmp eq ptr %141, null
  br i1 %142, label %179, label %143

143:                                              ; preds = %139
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #3
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %141, ptr noundef nonnull %6, i8 noundef zeroext 1) #3
  %144 = getelementptr inbounds %struct.SeqIterator, ptr %6, i64 0, i32 4
  %145 = load i32, ptr %144, align 8, !tbaa !93
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %175, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.SeqIterator, ptr %6, i64 0, i32 3
  %149 = load ptr, ptr %148, align 8, !tbaa !95
  %150 = getelementptr inbounds %struct.Sequence, ptr %149, i64 0, i32 26
  %151 = call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %150, i32 noundef 0) #3
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %177, label %158

153:                                              ; preds = %172
  %154 = load ptr, ptr %148, align 8, !tbaa !95
  %155 = getelementptr inbounds %struct.Sequence, ptr %154, i64 0, i32 26
  %156 = call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %155, i32 noundef 0) #3
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %177, label %158, !llvm.loop !96

158:                                              ; preds = %147, %153
  %159 = phi ptr [ %154, %153 ], [ %149, %147 ]
  %160 = phi i1 [ %174, %153 ], [ %146, %147 ]
  %161 = getelementptr inbounds %struct.Sequence, ptr %159, i64 0, i32 27
  %162 = call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %161, i32 noundef 0) #3
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %177, label %164

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.Sequence, ptr %159, i64 0, i32 28
  %166 = call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %165, i32 noundef 0) #3
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %177, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.Sequence, ptr %159, i64 0, i32 29
  %170 = call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %169, i32 noundef 0) #3
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %168
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %6) #3
  %173 = load i32, ptr %144, align 8, !tbaa !93
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %153, !llvm.loop !96

175:                                              ; preds = %172, %143
  %176 = phi i1 [ %146, %143 ], [ %174, %172 ]
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %6) #3
  br label %177

177:                                              ; preds = %153, %158, %164, %168, %147, %175
  %178 = phi i1 [ %176, %175 ], [ %146, %147 ], [ %160, %168 ], [ %160, %164 ], [ %160, %158 ], [ %174, %153 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #3
  br i1 %178, label %179, label %653

179:                                              ; preds = %177, %139
  %180 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 39
  %181 = call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %180, i32 noundef 0) #3
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %653, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  br label %185

185:                                              ; preds = %189, %183
  %186 = phi ptr [ %184, %183 ], [ %187, %189 ]
  %187 = load ptr, ptr %186, align 8, !tbaa !43
  %188 = icmp eq ptr %187, null
  br i1 %188, label %653, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.Base, ptr %187, i64 0, i32 7
  %191 = call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %190, i32 noundef 0) #3
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %653, label %185, !llvm.loop !97

193:                                              ; preds = %48
  %194 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  %195 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %194, i32 noundef 0) #3
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %653, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 10
  %199 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %198, i32 noundef 0) #3
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %653, label %201

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 11
  %203 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %202, i32 noundef 0) #3
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %653, label %205

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 12
  %207 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %206, i32 noundef 0) #3
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %653, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 13
  %211 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %210, i32 noundef 0) #3
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %653, label %213

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 17
  %215 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %214, i32 noundef 0) #3
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %653, label %217

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %219 = load i32, ptr %218, align 8, !tbaa !98
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %234

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  br label %228

223:                                              ; preds = %228
  %224 = add nuw nsw i64 %229, 1
  %225 = load i32, ptr %218, align 8, !tbaa !98
  %226 = sext i32 %225 to i64
  %227 = icmp slt i64 %224, %226
  br i1 %227, label %228, label %234, !llvm.loop !101

228:                                              ; preds = %221, %223
  %229 = phi i64 [ 0, %221 ], [ %224, %223 ]
  %230 = load ptr, ptr %222, align 8, !tbaa !102
  %231 = getelementptr inbounds ptr, ptr %230, i64 %229
  %232 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef %231, i32 noundef 0) #3
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %653, label %223

234:                                              ; preds = %223, %217
  %235 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 20
  %236 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %235, i32 noundef 0) #3
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %653, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 112
  %240 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %239, i32 noundef 0) #3
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %653, label %242

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  %244 = load ptr, ptr %243, align 8, !tbaa !103
  %245 = icmp eq ptr %244, null
  br i1 %245, label %258, label %246

246:                                              ; preds = %242, %255
  %247 = phi ptr [ %256, %255 ], [ %244, %242 ]
  %248 = getelementptr inbounds %struct.ParticleSystem, ptr %247, i64 0, i32 14
  %249 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %248, i32 noundef 0) #3
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %653, label %251

251:                                              ; preds = %246
  %252 = getelementptr inbounds %struct.ParticleSystem, ptr %247, i64 0, i32 16
  %253 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %252, i32 noundef 0) #3
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %653, label %255

255:                                              ; preds = %251
  %256 = load ptr, ptr %247, align 8, !tbaa !104
  %257 = icmp eq ptr %256, null
  br i1 %257, label %258, label %246, !llvm.loop !106

258:                                              ; preds = %255, %242
  %259 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %260 = load ptr, ptr %259, align 8, !tbaa !107
  %261 = icmp eq ptr %260, null
  br i1 %261, label %274, label %262

262:                                              ; preds = %258
  %263 = load ptr, ptr %260, align 8, !tbaa !43
  %264 = icmp eq ptr %263, null
  br i1 %264, label %274, label %265

265:                                              ; preds = %262, %270
  %266 = phi ptr [ %272, %270 ], [ %263, %262 ]
  %267 = getelementptr inbounds %struct.bPoseChannel, ptr %266, i64 0, i32 18
  %268 = call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %267, i32 noundef 0) #3
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %653, label %270

270:                                              ; preds = %265
  %271 = getelementptr inbounds %struct.bPoseChannel, ptr %266, i64 0, i32 3
  call void @BKE_constraints_id_loop(ptr noundef nonnull %271, ptr noundef nonnull @library_foreach_constraintObjectLooper, ptr noundef nonnull %5) #3
  %272 = load ptr, ptr %266, align 8, !tbaa !43
  %273 = icmp eq ptr %272, null
  br i1 %273, label %274, label %265, !llvm.loop !108

274:                                              ; preds = %270, %262, %258
  call void @modifiers_foreachIDLink(ptr noundef %0, ptr noundef nonnull @library_foreach_modifiersForeachIDLink, ptr noundef nonnull %5) #3
  %275 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 106
  call void @BKE_constraints_id_loop(ptr noundef nonnull %275, ptr noundef nonnull @library_foreach_constraintObjectLooper, ptr noundef nonnull %5) #3
  br label %653

276:                                              ; preds = %48
  %277 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 19
  %278 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %277, i32 noundef 0) #3
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %653, label %280

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 4
  %282 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %281, i32 noundef 0) #3
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %653, label %284

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 5
  %286 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 47
  %287 = load i16, ptr %286, align 2, !tbaa !109
  %288 = icmp sgt i16 %287, 0
  br i1 %288, label %294, label %653

289:                                              ; preds = %294
  %290 = add nuw nsw i64 %295, 1
  %291 = load i16, ptr %286, align 2, !tbaa !109
  %292 = sext i16 %291 to i64
  %293 = icmp slt i64 %290, %292
  br i1 %293, label %294, label %653, !llvm.loop !112

294:                                              ; preds = %284, %289
  %295 = phi i64 [ %290, %289 ], [ 0, %284 ]
  %296 = load ptr, ptr %285, align 8, !tbaa !113
  %297 = getelementptr inbounds ptr, ptr %296, i64 %295
  %298 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef %297, i32 noundef 0) #3
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %653, label %289

300:                                              ; preds = %48
  %301 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 5
  %302 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %301, i32 noundef 0) #3
  %303 = icmp eq i8 %302, 0
  br i1 %303, label %653, label %304

304:                                              ; preds = %300
  %305 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 6
  %306 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %305, i32 noundef 0) #3
  %307 = icmp eq i8 %306, 0
  br i1 %307, label %653, label %308

308:                                              ; preds = %304
  %309 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 7
  %310 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %309, i32 noundef 0) #3
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %653, label %312

312:                                              ; preds = %308
  %313 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 9
  %314 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %313, i32 noundef 0) #3
  %315 = icmp eq i8 %314, 0
  br i1 %315, label %653, label %316

316:                                              ; preds = %312
  %317 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 22
  %318 = load i16, ptr %317, align 2, !tbaa !114
  %319 = icmp sgt i16 %318, 0
  br i1 %319, label %320, label %333

320:                                              ; preds = %316
  %321 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 10
  br label %327

322:                                              ; preds = %327
  %323 = add nuw nsw i64 %328, 1
  %324 = load i16, ptr %317, align 2, !tbaa !114
  %325 = sext i16 %324 to i64
  %326 = icmp slt i64 %323, %325
  br i1 %326, label %327, label %333, !llvm.loop !117

327:                                              ; preds = %320, %322
  %328 = phi i64 [ 0, %320 ], [ %323, %322 ]
  %329 = load ptr, ptr %321, align 8, !tbaa !118
  %330 = getelementptr inbounds ptr, ptr %329, i64 %328
  %331 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef %330, i32 noundef 0) #3
  %332 = icmp eq i8 %331, 0
  br i1 %332, label %653, label %322

333:                                              ; preds = %322, %316
  %334 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 55
  %335 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %334, i32 noundef 0) #3
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %653, label %337

337:                                              ; preds = %333
  %338 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 56
  %339 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %338, i32 noundef 0) #3
  %340 = icmp eq i8 %339, 0
  br i1 %340, label %653, label %341

341:                                              ; preds = %337
  %342 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 57
  %343 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %342, i32 noundef 0) #3
  %344 = icmp eq i8 %343, 0
  br i1 %344, label %653, label %345

345:                                              ; preds = %341
  %346 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 58
  %347 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %346, i32 noundef 0) #3
  br label %653

348:                                              ; preds = %353
  %349 = add nuw nsw i64 %354, 1
  %350 = load i16, ptr %53, align 2, !tbaa !57
  %351 = sext i16 %350 to i64
  %352 = icmp slt i64 %349, %351
  br i1 %352, label %353, label %653, !llvm.loop !119

353:                                              ; preds = %51, %348
  %354 = phi i64 [ %349, %348 ], [ 0, %51 ]
  %355 = load ptr, ptr %52, align 8, !tbaa !120
  %356 = getelementptr inbounds ptr, ptr %355, i64 %354
  %357 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef %356, i32 noundef 0) #3
  %358 = icmp eq i8 %357, 0
  br i1 %358, label %653, label %348

359:                                              ; preds = %48, %375
  %360 = phi i64 [ %376, %375 ], [ 0, %48 ]
  %361 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102, i64 %360
  %362 = load ptr, ptr %361, align 8, !tbaa !43
  %363 = icmp eq ptr %362, null
  br i1 %363, label %375, label %364

364:                                              ; preds = %359
  %365 = getelementptr inbounds %struct.MTex, ptr %362, i64 0, i32 4
  %366 = load ptr, ptr %8, align 8, !tbaa !41
  %367 = load ptr, ptr %9, align 8, !tbaa !42
  %368 = tail call zeroext i8 %366(ptr noundef %367, ptr noundef nonnull %365, i32 noundef 0) #3
  %369 = icmp eq i8 %368, 0
  br i1 %369, label %375, label %370

370:                                              ; preds = %364
  %371 = getelementptr inbounds %struct.MTex, ptr %362, i64 0, i32 5
  %372 = load ptr, ptr %8, align 8, !tbaa !41
  %373 = load ptr, ptr %9, align 8, !tbaa !42
  %374 = tail call zeroext i8 %372(ptr noundef %373, ptr noundef nonnull %371, i32 noundef 0) #3
  br label %375

375:                                              ; preds = %370, %364, %359
  %376 = add nuw nsw i64 %360, 1
  %377 = icmp eq i64 %376, 18
  br i1 %377, label %378, label %359, !llvm.loop !121

378:                                              ; preds = %375
  %379 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %380 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %379, i32 noundef 0) #3
  %381 = icmp eq i8 %380, 0
  br i1 %381, label %653, label %382

382:                                              ; preds = %378
  %383 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 105
  %384 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %383, i32 noundef 0) #3
  br label %653

385:                                              ; preds = %48
  %386 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 52
  %387 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %386, i32 noundef 0) #3
  %388 = icmp eq i8 %387, 0
  br i1 %388, label %653, label %389

389:                                              ; preds = %385
  %390 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 54
  %391 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %390, i32 noundef 0) #3
  br label %653

392:                                              ; preds = %48
  %393 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 23
  %394 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %393, i32 noundef 0) #3
  br label %653

395:                                              ; preds = %48, %411
  %396 = phi i64 [ %412, %411 ], [ 0, %48 ]
  %397 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 69, i64 %396
  %398 = load ptr, ptr %397, align 8, !tbaa !43
  %399 = icmp eq ptr %398, null
  br i1 %399, label %411, label %400

400:                                              ; preds = %395
  %401 = getelementptr inbounds %struct.MTex, ptr %398, i64 0, i32 4
  %402 = load ptr, ptr %8, align 8, !tbaa !41
  %403 = load ptr, ptr %9, align 8, !tbaa !42
  %404 = tail call zeroext i8 %402(ptr noundef %403, ptr noundef nonnull %401, i32 noundef 0) #3
  %405 = icmp eq i8 %404, 0
  br i1 %405, label %411, label %406

406:                                              ; preds = %400
  %407 = getelementptr inbounds %struct.MTex, ptr %398, i64 0, i32 5
  %408 = load ptr, ptr %8, align 8, !tbaa !41
  %409 = load ptr, ptr %9, align 8, !tbaa !42
  %410 = tail call zeroext i8 %408(ptr noundef %409, ptr noundef nonnull %407, i32 noundef 0) #3
  br label %411

411:                                              ; preds = %406, %400, %395
  %412 = add nuw nsw i64 %396, 1
  %413 = icmp eq i64 %412, 18
  br i1 %413, label %414, label %395, !llvm.loop !122

414:                                              ; preds = %411
  %415 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 74
  %416 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %415, i32 noundef 0) #3
  br label %653

417:                                              ; preds = %48
  %418 = getelementptr inbounds %struct.Camera, ptr %0, i64 0, i32 17
  %419 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %418, i32 noundef 0) #3
  br label %653

420:                                              ; preds = %48
  %421 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 8
  %422 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %421, i32 noundef 0) #3
  br label %653

423:                                              ; preds = %48
  %424 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 5
  %425 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %424, i32 noundef 0) #3
  br label %653

426:                                              ; preds = %48, %442
  %427 = phi i64 [ %443, %442 ], [ 0, %48 ]
  %428 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 70, i64 %427
  %429 = load ptr, ptr %428, align 8, !tbaa !43
  %430 = icmp eq ptr %429, null
  br i1 %430, label %442, label %431

431:                                              ; preds = %426
  %432 = getelementptr inbounds %struct.MTex, ptr %429, i64 0, i32 4
  %433 = load ptr, ptr %8, align 8, !tbaa !41
  %434 = load ptr, ptr %9, align 8, !tbaa !42
  %435 = tail call zeroext i8 %433(ptr noundef %434, ptr noundef nonnull %432, i32 noundef 0) #3
  %436 = icmp eq i8 %435, 0
  br i1 %436, label %442, label %437

437:                                              ; preds = %431
  %438 = getelementptr inbounds %struct.MTex, ptr %429, i64 0, i32 5
  %439 = load ptr, ptr %8, align 8, !tbaa !41
  %440 = load ptr, ptr %9, align 8, !tbaa !42
  %441 = tail call zeroext i8 %439(ptr noundef %440, ptr noundef nonnull %438, i32 noundef 0) #3
  br label %442

442:                                              ; preds = %437, %431, %426
  %443 = add nuw nsw i64 %427, 1
  %444 = icmp eq i64 %443, 18
  br i1 %444, label %445, label %426, !llvm.loop !123

445:                                              ; preds = %442
  %446 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 75
  %447 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %446, i32 noundef 0) #3
  br label %653

448:                                              ; preds = %48
  %449 = getelementptr inbounds %struct.Speaker, ptr %0, i64 0, i32 2
  %450 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %449, i32 noundef 0) #3
  br label %653

451:                                              ; preds = %48
  %452 = getelementptr inbounds %struct.Group, ptr %0, i64 0, i32 1
  br label %453

453:                                              ; preds = %457, %451
  %454 = phi ptr [ %452, %451 ], [ %455, %457 ]
  %455 = load ptr, ptr %454, align 8, !tbaa !43
  %456 = icmp eq ptr %455, null
  br i1 %456, label %653, label %457

457:                                              ; preds = %453
  %458 = getelementptr inbounds %struct.GroupObject, ptr %455, i64 0, i32 2
  %459 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %458, i32 noundef 0) #3
  %460 = icmp eq i8 %459, 0
  br i1 %460, label %653, label %453, !llvm.loop !124

461:                                              ; preds = %48
  %462 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  br label %463

463:                                              ; preds = %467, %461
  %464 = phi ptr [ %462, %461 ], [ %465, %467 ]
  %465 = load ptr, ptr %464, align 8, !tbaa !43
  %466 = icmp eq ptr %465, null
  br i1 %466, label %653, label %467

467:                                              ; preds = %463
  %468 = getelementptr inbounds %struct.bNode, ptr %465, i64 0, i32 20
  %469 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %468, i32 noundef 0) #3
  %470 = icmp eq i8 %469, 0
  br i1 %470, label %653, label %463, !llvm.loop !125

471:                                              ; preds = %48
  %472 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 5
  %473 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %472, i32 noundef 0) #3
  %474 = icmp eq i8 %473, 0
  br i1 %474, label %653, label %475

475:                                              ; preds = %471
  %476 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3, i32 4
  %477 = load ptr, ptr %8, align 8, !tbaa !41
  %478 = load ptr, ptr %9, align 8, !tbaa !42
  %479 = tail call zeroext i8 %477(ptr noundef %478, ptr noundef nonnull %476, i32 noundef 0) #3
  %480 = icmp eq i8 %479, 0
  br i1 %480, label %486, label %481

481:                                              ; preds = %475
  %482 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3, i32 5
  %483 = load ptr, ptr %8, align 8, !tbaa !41
  %484 = load ptr, ptr %9, align 8, !tbaa !42
  %485 = tail call zeroext i8 %483(ptr noundef %484, ptr noundef nonnull %482, i32 noundef 0) #3
  br label %486

486:                                              ; preds = %475, %481
  %487 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 4, i32 4
  %488 = load ptr, ptr %8, align 8, !tbaa !41
  %489 = load ptr, ptr %9, align 8, !tbaa !42
  %490 = tail call zeroext i8 %488(ptr noundef %489, ptr noundef nonnull %487, i32 noundef 0) #3
  %491 = icmp eq i8 %490, 0
  br i1 %491, label %653, label %492

492:                                              ; preds = %486
  %493 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 4, i32 5
  %494 = load ptr, ptr %8, align 8, !tbaa !41
  %495 = load ptr, ptr %9, align 8, !tbaa !42
  %496 = tail call zeroext i8 %494(ptr noundef %495, ptr noundef nonnull %493, i32 noundef 0) #3
  br label %653

497:                                              ; preds = %48
  %498 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 122
  %499 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %498, i32 noundef 0) #3
  %500 = icmp eq i8 %499, 0
  br i1 %500, label %653, label %501

501:                                              ; preds = %497
  %502 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 125
  %503 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %502, i32 noundef 0) #3
  %504 = icmp eq i8 %503, 0
  br i1 %504, label %653, label %505

505:                                              ; preds = %501
  %506 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 126
  %507 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %506, i32 noundef 0) #3
  %508 = icmp eq i8 %507, 0
  br i1 %508, label %653, label %509

509:                                              ; preds = %505
  %510 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 4
  %511 = load ptr, ptr %510, align 8, !tbaa !126
  %512 = icmp eq ptr %511, null
  br i1 %512, label %653, label %513

513:                                              ; preds = %509
  %514 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %511, i32 noundef 0) #3
  br label %653

515:                                              ; preds = %48
  %516 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11
  %517 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 10
  %518 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %517, i32 noundef 0) #3
  %519 = icmp eq i8 %518, 0
  br i1 %519, label %653, label %520

520:                                              ; preds = %515
  %521 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 8
  %522 = load ptr, ptr %521, align 8, !tbaa !43
  %523 = icmp eq ptr %522, null
  br i1 %523, label %653, label %527

524:                                              ; preds = %530
  %525 = load ptr, ptr %528, align 8, !tbaa !43
  %526 = icmp eq ptr %525, null
  br i1 %526, label %653, label %527, !llvm.loop !128

527:                                              ; preds = %520, %524
  %528 = phi ptr [ %525, %524 ], [ %522, %520 ]
  %529 = tail call ptr @BKE_tracking_object_get_tracks(ptr noundef nonnull %516, ptr noundef nonnull %528) #3
  br label %530

530:                                              ; preds = %534, %527
  %531 = phi ptr [ %529, %527 ], [ %532, %534 ]
  %532 = load ptr, ptr %531, align 8, !tbaa !43
  %533 = icmp eq ptr %532, null
  br i1 %533, label %524, label %534

534:                                              ; preds = %530
  %535 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %532, i64 0, i32 23
  %536 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %535, i32 noundef 0) #3
  %537 = icmp eq i8 %536, 0
  br i1 %537, label %653, label %530, !llvm.loop !129

538:                                              ; preds = %48
  %539 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  %540 = load ptr, ptr %539, align 8, !tbaa !43
  %541 = icmp eq ptr %540, null
  br i1 %541, label %653, label %542

542:                                              ; preds = %538, %570
  %543 = phi ptr [ %571, %570 ], [ %540, %538 ]
  %544 = getelementptr inbounds %struct.MaskLayer, ptr %543, i64 0, i32 3
  %545 = load ptr, ptr %544, align 8, !tbaa !43
  %546 = icmp eq ptr %545, null
  br i1 %546, label %570, label %550

547:                                              ; preds = %558, %550
  %548 = load ptr, ptr %552, align 8, !tbaa !43
  %549 = icmp eq ptr %548, null
  br i1 %549, label %570, label %550, !llvm.loop !130

550:                                              ; preds = %542, %547
  %551 = phi i1 [ %549, %547 ], [ %546, %542 ]
  %552 = phi ptr [ %548, %547 ], [ %545, %542 ]
  %553 = getelementptr inbounds %struct.MaskSpline, ptr %552, i64 0, i32 5
  %554 = load i32, ptr %553, align 4, !tbaa !131
  %555 = icmp sgt i32 %554, 0
  br i1 %555, label %556, label %547

556:                                              ; preds = %550
  %557 = getelementptr inbounds %struct.MaskSpline, ptr %552, i64 0, i32 6
  br label %563

558:                                              ; preds = %563
  %559 = add nuw nsw i64 %564, 1
  %560 = load i32, ptr %553, align 4, !tbaa !131
  %561 = sext i32 %560 to i64
  %562 = icmp slt i64 %559, %561
  br i1 %562, label %563, label %547, !llvm.loop !134

563:                                              ; preds = %556, %558
  %564 = phi i64 [ 0, %556 ], [ %559, %558 ]
  %565 = load ptr, ptr %557, align 8, !tbaa !135
  %566 = getelementptr inbounds %struct.MaskSplinePoint, ptr %565, i64 %564, i32 4, i32 2
  %567 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %566, i32 noundef 0) #3
  %568 = icmp eq i8 %567, 0
  br i1 %568, label %569, label %558

569:                                              ; preds = %563
  br i1 %551, label %570, label %653

570:                                              ; preds = %547, %542, %569
  %571 = load ptr, ptr %543, align 8, !tbaa !43
  %572 = icmp eq ptr %571, null
  br i1 %572, label %653, label %542, !llvm.loop !136

573:                                              ; preds = %48, %589
  %574 = phi i64 [ %590, %589 ], [ 0, %48 ]
  %575 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 39, i64 %574
  %576 = load ptr, ptr %575, align 8, !tbaa !43
  %577 = icmp eq ptr %576, null
  br i1 %577, label %589, label %578

578:                                              ; preds = %573
  %579 = getelementptr inbounds %struct.MTex, ptr %576, i64 0, i32 4
  %580 = load ptr, ptr %8, align 8, !tbaa !41
  %581 = load ptr, ptr %9, align 8, !tbaa !42
  %582 = tail call zeroext i8 %580(ptr noundef %581, ptr noundef nonnull %579, i32 noundef 0) #3
  %583 = icmp eq i8 %582, 0
  br i1 %583, label %589, label %584

584:                                              ; preds = %578
  %585 = getelementptr inbounds %struct.MTex, ptr %576, i64 0, i32 5
  %586 = load ptr, ptr %8, align 8, !tbaa !41
  %587 = load ptr, ptr %9, align 8, !tbaa !42
  %588 = tail call zeroext i8 %586(ptr noundef %587, ptr noundef nonnull %585, i32 noundef 0) #3
  br label %589

589:                                              ; preds = %584, %578, %573
  %590 = add nuw nsw i64 %574, 1
  %591 = icmp eq i64 %590, 18
  br i1 %591, label %592, label %573, !llvm.loop !137

592:                                              ; preds = %589
  %593 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 40
  %594 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %593, i32 noundef 0) #3
  %595 = icmp eq i8 %594, 0
  br i1 %595, label %653, label %596

596:                                              ; preds = %592
  %597 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 41
  %598 = load ptr, ptr %597, align 8, !tbaa !43
  %599 = icmp eq ptr %598, null
  br i1 %599, label %615, label %600

600:                                              ; preds = %596, %612
  %601 = phi ptr [ %613, %612 ], [ %598, %596 ]
  %602 = getelementptr inbounds %struct.LineStyleModifier, ptr %601, i64 0, i32 3
  %603 = load i32, ptr %602, align 8, !tbaa !138
  %604 = icmp eq i32 %603, 3
  br i1 %604, label %605, label %612

605:                                              ; preds = %600
  %606 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %601, i64 0, i32 1
  %607 = load ptr, ptr %606, align 8, !tbaa !140
  %608 = icmp eq ptr %607, null
  br i1 %608, label %612, label %609

609:                                              ; preds = %605
  %610 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %606, i32 noundef 0) #3
  %611 = icmp eq i8 %610, 0
  br i1 %611, label %653, label %612

612:                                              ; preds = %605, %609, %600
  %613 = load ptr, ptr %601, align 8, !tbaa !43
  %614 = icmp eq ptr %613, null
  br i1 %614, label %615, label %600, !llvm.loop !142

615:                                              ; preds = %612, %596
  %616 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 42
  %617 = load ptr, ptr %616, align 8, !tbaa !43
  %618 = icmp eq ptr %617, null
  br i1 %618, label %634, label %619

619:                                              ; preds = %615, %631
  %620 = phi ptr [ %632, %631 ], [ %617, %615 ]
  %621 = getelementptr inbounds %struct.LineStyleModifier, ptr %620, i64 0, i32 3
  %622 = load i32, ptr %621, align 8, !tbaa !138
  %623 = icmp eq i32 %622, 3
  br i1 %623, label %624, label %631

624:                                              ; preds = %619
  %625 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %620, i64 0, i32 1
  %626 = load ptr, ptr %625, align 8, !tbaa !143
  %627 = icmp eq ptr %626, null
  br i1 %627, label %631, label %628

628:                                              ; preds = %624
  %629 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %625, i32 noundef 0) #3
  %630 = icmp eq i8 %629, 0
  br i1 %630, label %653, label %631

631:                                              ; preds = %624, %628, %619
  %632 = load ptr, ptr %620, align 8, !tbaa !43
  %633 = icmp eq ptr %632, null
  br i1 %633, label %634, label %619, !llvm.loop !145

634:                                              ; preds = %631, %615
  %635 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 43
  %636 = load ptr, ptr %635, align 8, !tbaa !43
  %637 = icmp eq ptr %636, null
  br i1 %637, label %653, label %638

638:                                              ; preds = %634, %650
  %639 = phi ptr [ %651, %650 ], [ %636, %634 ]
  %640 = getelementptr inbounds %struct.LineStyleModifier, ptr %639, i64 0, i32 3
  %641 = load i32, ptr %640, align 8, !tbaa !138
  %642 = icmp eq i32 %641, 3
  br i1 %642, label %643, label %650

643:                                              ; preds = %638
  %644 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %639, i64 0, i32 1
  %645 = load ptr, ptr %644, align 8, !tbaa !146
  %646 = icmp eq ptr %645, null
  br i1 %646, label %650, label %647

647:                                              ; preds = %643
  %648 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %644, i32 noundef 0) #3
  %649 = icmp eq i8 %648, 0
  br i1 %649, label %653, label %650

650:                                              ; preds = %643, %647, %638
  %651 = load ptr, ptr %639, align 8, !tbaa !43
  %652 = icmp eq ptr %651, null
  br i1 %652, label %653, label %638, !llvm.loop !148

653:                                              ; preds = %609, %628, %650, %647, %570, %569, %524, %534, %467, %463, %457, %453, %348, %353, %327, %289, %294, %228, %246, %251, %265, %92, %99, %111, %126, %133, %189, %185, %634, %538, %520, %51, %284, %492, %486, %513, %389, %382, %345, %509, %448, %445, %423, %420, %417, %414, %392, %592, %515, %471, %341, %337, %333, %312, %308, %304, %300, %280, %276, %238, %234, %213, %209, %205, %201, %197, %193, %179, %177, %76, %72, %64, %60, %56, %48, %274, %497, %501, %505, %385, %378
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BKE_sequence_iterator_begin(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_sequence_iterator_next(ptr noundef) local_unnamed_addr #2

declare void @BKE_sequence_iterator_end(ptr noundef) local_unnamed_addr #2

declare void @BKE_constraints_id_loop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @library_foreach_constraintObjectLooper(ptr nocapture readnone %0, ptr noundef %1, i8 zeroext %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.LibraryForeachIDData, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = getelementptr inbounds %struct.LibraryForeachIDData, ptr %3, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = tail call zeroext i8 %6(ptr noundef %8, ptr noundef %1, i32 noundef 0) #3
  ret void
}

declare void @modifiers_foreachIDLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @library_foreach_modifiersForeachIDLink(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.LibraryForeachIDData, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.LibraryForeachIDData, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = tail call zeroext i8 %5(ptr noundef %7, ptr noundef %2, i32 noundef 0) #3
  ret void
}

declare ptr @BKE_tracking_object_get_tracks(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"LibraryForeachIDData", !36, i64 0, !39, i64 8, !36, i64 16, !36, i64 24}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!35, !39, i64 8}
!41 = !{!35, !36, i64 16}
!42 = !{!35, !36, i64 24}
!43 = !{!36, !36, i64 0}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!48, !36, i64 24}
!48 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !49, i64 32, !36, i64 48, !36, i64 56, !39, i64 64, !50, i64 68, !51, i64 72, !51, i64 74, !39, i64 76, !36, i64 80, !39, i64 88, !37, i64 92, !50, i64 104, !50, i64 108}
!49 = !{!"ListBase", !36, i64 0, !36, i64 8}
!50 = !{!"float", !37, i64 0}
!51 = !{!"short", !37, i64 0}
!52 = distinct !{!52, !45, !46}
!53 = !{!54, !51, i64 528}
!54 = !{!"DriverVar", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !51, i64 528, !51, i64 530, !50, i64 532}
!55 = distinct !{!55, !45, !46}
!56 = !{!51, !51, i64 0}
!57 = !{!58, !51, i64 186}
!58 = !{!"MetaBall", !59, i64 0, !36, i64 120, !49, i64 128, !49, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 185, !51, i64 186, !51, i64 188, !51, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !50, i64 228, !50, i64 232, !50, i64 236, !36, i64 240}
!59 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !51, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!60 = !{!61, !36, i64 168}
!61 = !{!"Scene", !59, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !49, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !51, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !62, i64 280, !71, i64 4264, !49, i64 4296, !49, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !51, i64 4376, !51, i64 4378, !39, i64 4380, !49, i64 4384, !72, i64 4400, !73, i64 4416, !76, i64 4600, !36, i64 4608, !77, i64 4616, !36, i64 4640, !78, i64 4648, !78, i64 4656, !64, i64 4664, !65, i64 4824, !79, i64 4888, !36, i64 4952}
!62 = !{!"RenderData", !63, i64 0, !36, i64 248, !36, i64 256, !66, i64 264, !67, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !50, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !51, i64 432, !51, i64 434, !50, i64 436, !50, i64 440, !50, i64 444, !50, i64 448, !50, i64 452, !51, i64 456, !51, i64 458, !51, i64 460, !51, i64 462, !51, i64 464, !51, i64 466, !39, i64 468, !51, i64 472, !51, i64 474, !51, i64 476, !51, i64 478, !51, i64 480, !51, i64 482, !39, i64 484, !39, i64 488, !51, i64 492, !51, i64 494, !39, i64 496, !39, i64 500, !51, i64 504, !51, i64 506, !51, i64 508, !51, i64 510, !51, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !51, i64 528, !51, i64 530, !51, i64 532, !51, i64 534, !51, i64 536, !51, i64 538, !51, i64 540, !51, i64 542, !68, i64 544, !68, i64 560, !69, i64 576, !49, i64 592, !51, i64 608, !51, i64 610, !50, i64 612, !50, i64 616, !50, i64 620, !50, i64 624, !39, i64 628, !50, i64 632, !50, i64 636, !50, i64 640, !50, i64 644, !51, i64 648, !51, i64 650, !51, i64 652, !51, i64 654, !51, i64 656, !51, i64 658, !50, i64 660, !50, i64 664, !51, i64 668, !51, i64 670, !50, i64 672, !50, i64 676, !37, i64 680, !39, i64 1704, !51, i64 1708, !51, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !51, i64 2524, !51, i64 2526, !50, i64 2528, !50, i64 2532, !51, i64 2536, !51, i64 2538, !50, i64 2540, !51, i64 2544, !51, i64 2546, !39, i64 2548, !51, i64 2552, !51, i64 2554, !51, i64 2556, !51, i64 2558, !50, i64 2560, !50, i64 2564, !36, i64 2568, !39, i64 2576, !50, i64 2580, !37, i64 2584, !70, i64 2616, !39, i64 3976, !39, i64 3980}
!63 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !51, i64 8, !51, i64 10, !50, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !64, i64 24, !65, i64 184}
!64 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !50, i64 136, !50, i64 140, !36, i64 144, !36, i64 152}
!65 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!66 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !51, i64 48, !51, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!67 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !50, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!68 = !{!"rctf", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12}
!69 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!70 = !{!"BakeData", !63, i64 0, !37, i64 248, !51, i64 1272, !51, i64 1274, !51, i64 1276, !51, i64 1278, !50, i64 1280, !50, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!71 = !{!"AudioData", !39, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !39, i64 16, !51, i64 20, !51, i64 22, !50, i64 24, !50, i64 28}
!72 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!73 = !{!"GameData", !72, i64 0, !51, i64 16, !51, i64 18, !51, i64 20, !51, i64 22, !51, i64 24, !51, i64 26, !51, i64 28, !51, i64 30, !51, i64 32, !37, i64 34, !74, i64 40, !51, i64 64, !51, i64 66, !50, i64 68, !75, i64 72, !50, i64 128, !50, i64 132, !39, i64 136, !51, i64 140, !51, i64 142, !51, i64 144, !51, i64 146, !51, i64 148, !51, i64 150, !51, i64 152, !51, i64 154, !51, i64 156, !51, i64 158, !51, i64 160, !51, i64 162, !50, i64 164, !50, i64 168, !50, i64 172, !50, i64 176, !50, i64 180}
!74 = !{!"GameDome", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6, !50, i64 8, !50, i64 12, !36, i64 16}
!75 = !{!"RecastData", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !50, i64 32, !50, i64 36, !39, i64 40, !50, i64 44, !50, i64 48, !51, i64 52, !51, i64 54}
!76 = !{!"UnitSettings", !50, i64 0, !37, i64 4, !37, i64 5, !51, i64 6}
!77 = !{!"PhysicsSettings", !37, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!78 = !{!"long", !37, i64 0}
!79 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!80 = distinct !{!80, !45, !46}
!81 = !{!82, !36, i64 80}
!82 = !{!"SceneRenderLayer", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !50, i64 124, !83, i64 128}
!83 = !{!"FreestyleConfig", !49, i64 0, !39, i64 16, !39, i64 20, !39, i64 24, !50, i64 28, !50, i64 32, !50, i64 36, !49, i64 40}
!84 = !{!82, !36, i64 88}
!85 = !{!86, !36, i64 16}
!86 = !{!"FreestyleModuleConfig", !36, i64 0, !36, i64 8, !36, i64 16, !51, i64 24, !37, i64 26}
!87 = distinct !{!87, !45, !46}
!88 = !{!89, !36, i64 112}
!89 = !{!"FreestyleLineSet", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 80, !39, i64 84, !51, i64 88, !51, i64 90, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112, !36, i64 120}
!90 = !{!89, !36, i64 120}
!91 = distinct !{!91, !45, !46}
!92 = !{!61, !36, i64 256}
!93 = !{!94, !39, i64 24}
!94 = !{!"SeqIterator", !36, i64 0, !39, i64 8, !39, i64 12, !36, i64 16, !39, i64 24}
!95 = !{!94, !36, i64 16}
!96 = distinct !{!96, !45, !46}
!97 = distinct !{!97, !45, !46}
!98 = !{!99, !39, i64 456}
!99 = !{!"Object", !59, i64 0, !36, i64 120, !36, i64 128, !51, i64 136, !51, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !100, i64 312, !36, i64 360, !49, i64 368, !49, i64 384, !49, i64 400, !49, i64 416, !39, i64 432, !39, i64 436, !36, i64 440, !36, i64 448, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !50, i64 616, !50, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !39, i64 944, !51, i64 948, !51, i64 950, !51, i64 952, !51, i64 954, !51, i64 956, !51, i64 958, !51, i64 960, !51, i64 962, !51, i64 964, !37, i64 966, !37, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !50, i64 988, !50, i64 992, !50, i64 996, !50, i64 1000, !50, i64 1004, !50, i64 1008, !50, i64 1012, !50, i64 1016, !50, i64 1020, !50, i64 1024, !50, i64 1028, !50, i64 1032, !51, i64 1036, !51, i64 1038, !51, i64 1040, !37, i64 1042, !37, i64 1043, !51, i64 1044, !37, i64 1046, !37, i64 1047, !50, i64 1048, !50, i64 1052, !49, i64 1056, !49, i64 1072, !49, i64 1088, !49, i64 1104, !50, i64 1120, !51, i64 1124, !51, i64 1126, !37, i64 1128, !39, i64 1144, !39, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !51, i64 1162, !37, i64 1164, !49, i64 1176, !49, i64 1192, !49, i64 1208, !49, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !51, i64 1266, !50, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !78, i64 1304, !78, i64 1312, !39, i64 1320, !39, i64 1324, !49, i64 1328, !49, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !49, i64 1400, !36, i64 1416}
!100 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !51, i64 16, !51, i64 18, !51, i64 20, !51, i64 22, !51, i64 24, !51, i64 26, !51, i64 28, !51, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!101 = distinct !{!101, !45, !46}
!102 = !{!99, !36, i64 440}
!103 = !{!99, !36, i64 1224}
!104 = !{!105, !36, i64 0}
!105 = !{!"ParticleSystem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !49, i64 72, !49, i64 88, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !49, i64 152, !37, i64 168, !37, i64 232, !50, i64 296, !50, i64 300, !50, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !39, i64 336, !51, i64 340, !51, i64 342, !51, i64 344, !51, i64 346, !37, i64 348, !37, i64 540, !51, i64 564, !51, i64 566, !36, i64 568, !36, i64 576, !49, i64 584, !36, i64 600, !36, i64 608, !39, i64 616, !39, i64 620, !36, i64 624, !36, i64 632, !36, i64 640, !50, i64 648, !50, i64 652}
!106 = distinct !{!106, !45, !46}
!107 = !{!99, !36, i64 288}
!108 = distinct !{!108, !45, !46}
!109 = !{!110, !51, i64 1366}
!110 = !{!"Mesh", !59, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !111, i64 280, !111, i64 480, !111, i64 680, !111, i64 880, !111, i64 1080, !39, i64 1280, !39, i64 1284, !39, i64 1288, !39, i64 1292, !39, i64 1296, !39, i64 1300, !39, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !39, i64 1344, !51, i64 1348, !51, i64 1350, !50, i64 1352, !39, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !51, i64 1366, !36, i64 1368}
!111 = !{!"CustomData", !36, i64 0, !37, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !36, i64 184, !36, i64 192}
!112 = distinct !{!112, !45, !46}
!113 = !{!110, !36, i64 152}
!114 = !{!115, !51, i64 266}
!115 = !{!"Curve", !59, i64 0, !36, i64 120, !36, i64 128, !49, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !51, i64 244, !51, i64 246, !51, i64 248, !51, i64 250, !50, i64 252, !50, i64 256, !39, i64 260, !51, i64 264, !51, i64 266, !39, i64 268, !50, i64 272, !50, i64 276, !50, i64 280, !51, i64 284, !51, i64 286, !51, i64 288, !51, i64 290, !39, i64 292, !39, i64 296, !37, i64 300, !51, i64 304, !37, i64 306, !37, i64 307, !50, i64 308, !50, i64 312, !50, i64 316, !50, i64 320, !50, i64 324, !50, i64 328, !50, i64 332, !50, i64 336, !50, i64 340, !50, i64 344, !39, i64 348, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !39, i64 488, !39, i64 492, !36, i64 496, !116, i64 504, !50, i64 512, !50, i64 516, !50, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!116 = !{!"CharInfo", !51, i64 0, !51, i64 2, !37, i64 4, !37, i64 5, !51, i64 6}
!117 = distinct !{!117, !45, !46}
!118 = !{!115, !36, i64 200}
!119 = distinct !{!119, !45, !46}
!120 = !{!58, !36, i64 176}
!121 = distinct !{!121, !45, !46}
!122 = distinct !{!122, !45, !46}
!123 = distinct !{!123, !45, !46}
!124 = distinct !{!124, !45, !46}
!125 = distinct !{!125, !45, !46}
!126 = !{!127, !36, i64 144}
!127 = !{!"ParticleSettings", !59, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !39, i64 156, !51, i64 160, !51, i64 162, !51, i64 164, !51, i64 166, !51, i64 168, !51, i64 170, !51, i64 172, !51, i64 174, !39, i64 176, !39, i64 180, !51, i64 184, !51, i64 186, !51, i64 188, !51, i64 190, !51, i64 192, !51, i64 194, !51, i64 196, !51, i64 198, !51, i64 200, !51, i64 202, !51, i64 204, !51, i64 206, !51, i64 208, !51, i64 210, !51, i64 212, !51, i64 214, !51, i64 216, !51, i64 218, !51, i64 220, !51, i64 222, !51, i64 224, !51, i64 226, !51, i64 228, !51, i64 230, !50, i64 232, !50, i64 236, !37, i64 240, !37, i64 248, !50, i64 256, !50, i64 260, !50, i64 264, !51, i64 268, !51, i64 270, !50, i64 272, !50, i64 276, !50, i64 280, !50, i64 284, !50, i64 288, !50, i64 292, !50, i64 296, !50, i64 300, !50, i64 304, !50, i64 308, !50, i64 312, !50, i64 316, !37, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !39, i64 336, !51, i64 340, !37, i64 342, !50, i64 348, !50, i64 352, !50, i64 356, !50, i64 360, !50, i64 364, !50, i64 368, !50, i64 372, !37, i64 376, !50, i64 388, !50, i64 392, !50, i64 396, !50, i64 400, !50, i64 404, !50, i64 408, !50, i64 412, !37, i64 416, !50, i64 428, !50, i64 432, !50, i64 436, !50, i64 440, !39, i64 444, !39, i64 448, !50, i64 452, !50, i64 456, !50, i64 460, !50, i64 464, !50, i64 468, !50, i64 472, !50, i64 476, !50, i64 480, !50, i64 484, !50, i64 488, !50, i64 492, !50, i64 496, !50, i64 500, !50, i64 504, !50, i64 508, !50, i64 512, !50, i64 516, !50, i64 520, !50, i64 524, !50, i64 528, !50, i64 532, !50, i64 536, !50, i64 540, !50, i64 544, !50, i64 548, !37, i64 552, !50, i64 560, !50, i64 564, !39, i64 568, !39, i64 572, !37, i64 576, !36, i64 720, !49, i64 728, !36, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !51, i64 792, !37, i64 794}
!128 = distinct !{!128, !45, !46}
!129 = distinct !{!129, !45, !46}
!130 = distinct !{!130, !45, !46}
!131 = !{!132, !39, i64 20}
!132 = !{!"MaskSpline", !36, i64 0, !36, i64 8, !51, i64 16, !37, i64 18, !37, i64 19, !39, i64 20, !36, i64 24, !133, i64 32, !36, i64 216}
!133 = !{!"MaskParent", !39, i64 0, !39, i64 4, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 144, !37, i64 152}
!134 = distinct !{!134, !45, !46}
!135 = !{!132, !36, i64 24}
!136 = distinct !{!136, !45, !46}
!137 = distinct !{!137, !45, !46}
!138 = !{!139, !39, i64 80}
!139 = !{!"LineStyleModifier", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 80, !50, i64 84, !39, i64 88, !39, i64 92}
!140 = !{!141, !36, i64 96}
!141 = !{!"LineStyleColorModifier_DistanceFromObject", !139, i64 0, !36, i64 96, !36, i64 104, !50, i64 112, !50, i64 116}
!142 = distinct !{!142, !45, !46}
!143 = !{!144, !36, i64 96}
!144 = !{!"LineStyleAlphaModifier_DistanceFromObject", !139, i64 0, !36, i64 96, !36, i64 104, !39, i64 112, !50, i64 116, !50, i64 120, !39, i64 124}
!145 = distinct !{!145, !45, !46}
!146 = !{!147, !36, i64 96}
!147 = !{!"LineStyleThicknessModifier_DistanceFromObject", !139, i64 0, !36, i64 96, !36, i64 104, !39, i64 112, !50, i64 116, !50, i64 120, !50, i64 124, !50, i64 128, !39, i64 132}
!148 = distinct !{!148, !45, !46}
