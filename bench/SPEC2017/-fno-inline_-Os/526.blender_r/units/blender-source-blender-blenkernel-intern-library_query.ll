; ModuleID = 'blender/source/blender/blenkernel/intern/library_query.c'
source_filename = "blender/source/blender/blenkernel/intern/library_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.LibraryForeachIDData = type { ptr, i32, ptr, ptr }
%struct.SeqIterator = type { ptr, i32, i32, ptr, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.ListBase = type { ptr, ptr }
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
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
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
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.DriverVar = type { ptr, ptr, [64 x i8], [8 x %struct.DriverTarget], i16, i16, float }
%struct.DriverTarget = type { ptr, ptr, [32 x i8], i16, i16, i32 }

; Function Attrs: noinline nounwind optsize uwtable
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
  %10 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  call fastcc void @library_foreach_animationData(ptr noundef nonnull %5, ptr noundef nonnull %10) #5
  br label %13

13:                                               ; preds = %12, %4
  %14 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %15 = load i16, ptr %14, align 8, !tbaa !43
  switch i16 %15, label %549 [
    i16 17235, label %21
    i16 16975, label %150
    i16 17741, label %233
    i16 21827, label %257
    i16 16973, label %16
    i16 16717, label %316
    i16 17748, label %332
    i16 21580, label %339
    i16 16716, label %342
    i16 16707, label %354
    i16 17739, label %357
    i16 21075, label %360
    i16 20311, label %363
    i16 19283, label %375
    i16 21063, label %378
    i16 21582, label %388
    i16 21058, label %398
    i16 16720, label %405
    i16 17229, label %423
    i16 21325, label %446
    i16 21324, label %479
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 6
  %18 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 9
  %19 = load i16, ptr %18, align 2, !tbaa !45
  %20 = icmp sgt i16 %19, 0
  br i1 %20, label %310, label %549

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 2
  %23 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %22, i32 noundef 0) #4
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %549, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 3
  %27 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %26, i32 noundef 0) #4
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %549, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 4
  %31 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %30, i32 noundef 0) #4
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %549, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !50
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.Base, ptr %35, i64 0, i32 7
  %39 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %38, i32 noundef 0) #4
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %549, label %41

41:                                               ; preds = %37, %33
  %42 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 7
  %43 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %42, i32 noundef 0) #4
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %549, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 60
  %47 = load ptr, ptr %46, align 8, !tbaa !70
  %48 = icmp eq ptr %47, null
  br i1 %48, label %104, label %52

49:                                               ; preds = %101, %82
  %50 = load ptr, ptr %53, align 8, !tbaa !70
  %51 = icmp eq ptr %50, null
  br i1 %51, label %104, label %52, !llvm.loop !71

52:                                               ; preds = %45, %49
  %53 = phi ptr [ %50, %49 ], [ %47, %45 ]
  %54 = getelementptr inbounds %struct.SceneRenderLayer, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !73
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %54, i32 noundef 0) #4
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %549, label %60

60:                                               ; preds = %57, %52
  %61 = getelementptr inbounds %struct.SceneRenderLayer, ptr %53, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !76
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %61, i32 noundef 0) #4
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %549, label %67

67:                                               ; preds = %64, %60
  %68 = getelementptr inbounds %struct.SceneRenderLayer, ptr %53, i64 0, i32 13
  %69 = load ptr, ptr %68, align 8, !tbaa !70
  %70 = icmp eq ptr %69, null
  br i1 %70, label %82, label %71

71:                                               ; preds = %67, %79
  %72 = phi ptr [ %80, %79 ], [ %69, %67 ]
  %73 = getelementptr inbounds %struct.FreestyleModuleConfig, ptr %72, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !77
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %73, i32 noundef 0) #4
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %549, label %79

79:                                               ; preds = %71, %76
  %80 = load ptr, ptr %72, align 8, !tbaa !70
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %71, !llvm.loop !79

82:                                               ; preds = %79, %67
  %83 = getelementptr inbounds %struct.SceneRenderLayer, ptr %53, i64 0, i32 13, i32 7
  %84 = load ptr, ptr %83, align 8, !tbaa !70
  %85 = icmp eq ptr %84, null
  br i1 %85, label %49, label %86

86:                                               ; preds = %82, %101
  %87 = phi ptr [ %102, %101 ], [ %84, %82 ]
  %88 = getelementptr inbounds %struct.FreestyleLineSet, ptr %87, i64 0, i32 12
  %89 = load ptr, ptr %88, align 8, !tbaa !80
  %90 = icmp eq ptr %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %88, i32 noundef 0) #4
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %549, label %94

94:                                               ; preds = %91, %86
  %95 = getelementptr inbounds %struct.FreestyleLineSet, ptr %87, i64 0, i32 13
  %96 = load ptr, ptr %95, align 8, !tbaa !82
  %97 = icmp eq ptr %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %95, i32 noundef 0) #4
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %549, label %101

101:                                              ; preds = %94, %98
  %102 = load ptr, ptr %87, align 8, !tbaa !70
  %103 = icmp eq ptr %102, null
  br i1 %103, label %49, label %86, !llvm.loop !83

104:                                              ; preds = %49, %45
  %105 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %106 = load ptr, ptr %105, align 8, !tbaa !84
  %107 = icmp eq ptr %106, null
  br i1 %107, label %136, label %108

108:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #3
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %106, ptr noundef nonnull %6, i8 noundef zeroext 1) #4
  %109 = getelementptr inbounds %struct.SeqIterator, ptr %6, i64 0, i32 4
  %110 = load i32, ptr %109, align 8, !tbaa !85
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %135, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.SeqIterator, ptr %6, i64 0, i32 3
  br label %114

114:                                              ; preds = %112, %131
  %115 = load ptr, ptr %113, align 8, !tbaa !87
  %116 = getelementptr inbounds %struct.Sequence, ptr %115, i64 0, i32 26
  %117 = call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %116, i32 noundef 0) #4
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %134, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.Sequence, ptr %115, i64 0, i32 27
  %121 = call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %120, i32 noundef 0) #4
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %134, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.Sequence, ptr %115, i64 0, i32 28
  %125 = call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %124, i32 noundef 0) #4
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.Sequence, ptr %115, i64 0, i32 29
  %129 = call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %128, i32 noundef 0) #4
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %127
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %6) #4
  %132 = load i32, ptr %109, align 8, !tbaa !85
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %135, label %114, !llvm.loop !88

134:                                              ; preds = %127, %123, %119, %114
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #3
  br label %549

135:                                              ; preds = %131, %108
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #3
  br label %136

136:                                              ; preds = %135, %104
  %137 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 39
  %138 = call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %137, i32 noundef 0) #4
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %549, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  br label %142

142:                                              ; preds = %146, %140
  %143 = phi ptr [ %141, %140 ], [ %144, %146 ]
  %144 = load ptr, ptr %143, align 8, !tbaa !70
  %145 = icmp eq ptr %144, null
  br i1 %145, label %549, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.Base, ptr %144, i64 0, i32 7
  %148 = call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %147, i32 noundef 0) #4
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %549, label %142, !llvm.loop !89

150:                                              ; preds = %13
  %151 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  %152 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %151, i32 noundef 0) #4
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %549, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 10
  %156 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %155, i32 noundef 0) #4
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %549, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 11
  %160 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %159, i32 noundef 0) #4
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %549, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 12
  %164 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %163, i32 noundef 0) #4
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %549, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 13
  %168 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %167, i32 noundef 0) #4
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %549, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 17
  %172 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %171, i32 noundef 0) #4
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %549, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %176 = load i32, ptr %175, align 8, !tbaa !90
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %191

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  br label %185

180:                                              ; preds = %185
  %181 = add nuw nsw i64 %186, 1
  %182 = load i32, ptr %175, align 8, !tbaa !90
  %183 = sext i32 %182 to i64
  %184 = icmp slt i64 %181, %183
  br i1 %184, label %185, label %191, !llvm.loop !93

185:                                              ; preds = %178, %180
  %186 = phi i64 [ 0, %178 ], [ %181, %180 ]
  %187 = load ptr, ptr %179, align 8, !tbaa !94
  %188 = getelementptr inbounds ptr, ptr %187, i64 %186
  %189 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef %188, i32 noundef 0) #4
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %549, label %180

191:                                              ; preds = %180, %174
  %192 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 20
  %193 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %192, i32 noundef 0) #4
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %549, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 112
  %197 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %196, i32 noundef 0) #4
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %549, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  %201 = load ptr, ptr %200, align 8, !tbaa !95
  %202 = icmp eq ptr %201, null
  br i1 %202, label %215, label %203

203:                                              ; preds = %199, %212
  %204 = phi ptr [ %213, %212 ], [ %201, %199 ]
  %205 = getelementptr inbounds %struct.ParticleSystem, ptr %204, i64 0, i32 14
  %206 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %205, i32 noundef 0) #4
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %549, label %208

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.ParticleSystem, ptr %204, i64 0, i32 16
  %210 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %209, i32 noundef 0) #4
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %549, label %212

212:                                              ; preds = %208
  %213 = load ptr, ptr %204, align 8, !tbaa !96
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %203, !llvm.loop !98

215:                                              ; preds = %212, %199
  %216 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %217 = load ptr, ptr %216, align 8, !tbaa !99
  %218 = icmp eq ptr %217, null
  br i1 %218, label %231, label %219

219:                                              ; preds = %215
  %220 = load ptr, ptr %217, align 8, !tbaa !70
  %221 = icmp eq ptr %220, null
  br i1 %221, label %231, label %222

222:                                              ; preds = %219, %227
  %223 = phi ptr [ %229, %227 ], [ %220, %219 ]
  %224 = getelementptr inbounds %struct.bPoseChannel, ptr %223, i64 0, i32 18
  %225 = call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %224, i32 noundef 0) #4
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %549, label %227

227:                                              ; preds = %222
  %228 = getelementptr inbounds %struct.bPoseChannel, ptr %223, i64 0, i32 3
  call void @BKE_constraints_id_loop(ptr noundef nonnull %228, ptr noundef nonnull @library_foreach_constraintObjectLooper, ptr noundef nonnull %5) #4
  %229 = load ptr, ptr %223, align 8, !tbaa !70
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %222, !llvm.loop !100

231:                                              ; preds = %227, %219, %215
  call void @modifiers_foreachIDLink(ptr noundef %0, ptr noundef nonnull @library_foreach_modifiersForeachIDLink, ptr noundef nonnull %5) #4
  %232 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 106
  call void @BKE_constraints_id_loop(ptr noundef nonnull %232, ptr noundef nonnull @library_foreach_constraintObjectLooper, ptr noundef nonnull %5) #4
  br label %549

233:                                              ; preds = %13
  %234 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 19
  %235 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %234, i32 noundef 0) #4
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %549, label %237

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 4
  %239 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %238, i32 noundef 0) #4
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %549, label %241

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 5
  %243 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 47
  %244 = load i16, ptr %243, align 2, !tbaa !101
  %245 = icmp sgt i16 %244, 0
  br i1 %245, label %251, label %549

246:                                              ; preds = %251
  %247 = add nuw nsw i64 %252, 1
  %248 = load i16, ptr %243, align 2, !tbaa !101
  %249 = sext i16 %248 to i64
  %250 = icmp slt i64 %247, %249
  br i1 %250, label %251, label %549, !llvm.loop !104

251:                                              ; preds = %241, %246
  %252 = phi i64 [ %247, %246 ], [ 0, %241 ]
  %253 = load ptr, ptr %242, align 8, !tbaa !105
  %254 = getelementptr inbounds ptr, ptr %253, i64 %252
  %255 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef %254, i32 noundef 0) #4
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %549, label %246

257:                                              ; preds = %13
  %258 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 5
  %259 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %258, i32 noundef 0) #4
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %549, label %261

261:                                              ; preds = %257
  %262 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 6
  %263 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %262, i32 noundef 0) #4
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %549, label %265

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 7
  %267 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %266, i32 noundef 0) #4
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %549, label %269

269:                                              ; preds = %265
  %270 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 9
  %271 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %270, i32 noundef 0) #4
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %549, label %273

273:                                              ; preds = %269
  %274 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 22
  %275 = load i16, ptr %274, align 2, !tbaa !106
  %276 = icmp sgt i16 %275, 0
  br i1 %276, label %277, label %290

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 10
  br label %284

279:                                              ; preds = %284
  %280 = add nuw nsw i64 %285, 1
  %281 = load i16, ptr %274, align 2, !tbaa !106
  %282 = sext i16 %281 to i64
  %283 = icmp slt i64 %280, %282
  br i1 %283, label %284, label %290, !llvm.loop !109

284:                                              ; preds = %277, %279
  %285 = phi i64 [ 0, %277 ], [ %280, %279 ]
  %286 = load ptr, ptr %278, align 8, !tbaa !110
  %287 = getelementptr inbounds ptr, ptr %286, i64 %285
  %288 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef %287, i32 noundef 0) #4
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %549, label %279

290:                                              ; preds = %279, %273
  %291 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 55
  %292 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %291, i32 noundef 0) #4
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %549, label %294

294:                                              ; preds = %290
  %295 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 56
  %296 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %295, i32 noundef 0) #4
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %549, label %298

298:                                              ; preds = %294
  %299 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 57
  %300 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %299, i32 noundef 0) #4
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %549, label %302

302:                                              ; preds = %298
  %303 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 58
  %304 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %303, i32 noundef 0) #4
  br label %549

305:                                              ; preds = %310
  %306 = add nuw nsw i64 %311, 1
  %307 = load i16, ptr %18, align 2, !tbaa !45
  %308 = sext i16 %307 to i64
  %309 = icmp slt i64 %306, %308
  br i1 %309, label %310, label %549, !llvm.loop !111

310:                                              ; preds = %16, %305
  %311 = phi i64 [ %306, %305 ], [ 0, %16 ]
  %312 = load ptr, ptr %17, align 8, !tbaa !112
  %313 = getelementptr inbounds ptr, ptr %312, i64 %311
  %314 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef %313, i32 noundef 0) #4
  %315 = icmp eq i8 %314, 0
  br i1 %315, label %549, label %305

316:                                              ; preds = %13, %322
  %317 = phi i64 [ %323, %322 ], [ 0, %13 ]
  %318 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102, i64 %317
  %319 = load ptr, ptr %318, align 8, !tbaa !70
  %320 = icmp eq ptr %319, null
  br i1 %320, label %322, label %321

321:                                              ; preds = %316
  call fastcc void @library_foreach_mtex(ptr noundef nonnull %5, ptr noundef nonnull %319) #5
  br label %322

322:                                              ; preds = %316, %321
  %323 = add nuw nsw i64 %317, 1
  %324 = icmp eq i64 %323, 18
  br i1 %324, label %325, label %316, !llvm.loop !113

325:                                              ; preds = %322
  %326 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %327 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %326, i32 noundef 0) #4
  %328 = icmp eq i8 %327, 0
  br i1 %328, label %549, label %329

329:                                              ; preds = %325
  %330 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 105
  %331 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %330, i32 noundef 0) #4
  br label %549

332:                                              ; preds = %13
  %333 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 52
  %334 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %333, i32 noundef 0) #4
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %549, label %336

336:                                              ; preds = %332
  %337 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 54
  %338 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %337, i32 noundef 0) #4
  br label %549

339:                                              ; preds = %13
  %340 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 23
  %341 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %340, i32 noundef 0) #4
  br label %549

342:                                              ; preds = %13, %348
  %343 = phi i64 [ %349, %348 ], [ 0, %13 ]
  %344 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 69, i64 %343
  %345 = load ptr, ptr %344, align 8, !tbaa !70
  %346 = icmp eq ptr %345, null
  br i1 %346, label %348, label %347

347:                                              ; preds = %342
  call fastcc void @library_foreach_mtex(ptr noundef nonnull %5, ptr noundef nonnull %345) #5
  br label %348

348:                                              ; preds = %342, %347
  %349 = add nuw nsw i64 %343, 1
  %350 = icmp eq i64 %349, 18
  br i1 %350, label %351, label %342, !llvm.loop !114

351:                                              ; preds = %348
  %352 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 74
  %353 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %352, i32 noundef 0) #4
  br label %549

354:                                              ; preds = %13
  %355 = getelementptr inbounds %struct.Camera, ptr %0, i64 0, i32 17
  %356 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %355, i32 noundef 0) #4
  br label %549

357:                                              ; preds = %13
  %358 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 8
  %359 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %358, i32 noundef 0) #4
  br label %549

360:                                              ; preds = %13
  %361 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 5
  %362 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %361, i32 noundef 0) #4
  br label %549

363:                                              ; preds = %13, %369
  %364 = phi i64 [ %370, %369 ], [ 0, %13 ]
  %365 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 70, i64 %364
  %366 = load ptr, ptr %365, align 8, !tbaa !70
  %367 = icmp eq ptr %366, null
  br i1 %367, label %369, label %368

368:                                              ; preds = %363
  call fastcc void @library_foreach_mtex(ptr noundef nonnull %5, ptr noundef nonnull %366) #5
  br label %369

369:                                              ; preds = %363, %368
  %370 = add nuw nsw i64 %364, 1
  %371 = icmp eq i64 %370, 18
  br i1 %371, label %372, label %363, !llvm.loop !115

372:                                              ; preds = %369
  %373 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 75
  %374 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %373, i32 noundef 0) #4
  br label %549

375:                                              ; preds = %13
  %376 = getelementptr inbounds %struct.Speaker, ptr %0, i64 0, i32 2
  %377 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %376, i32 noundef 0) #4
  br label %549

378:                                              ; preds = %13
  %379 = getelementptr inbounds %struct.Group, ptr %0, i64 0, i32 1
  br label %380

380:                                              ; preds = %384, %378
  %381 = phi ptr [ %379, %378 ], [ %382, %384 ]
  %382 = load ptr, ptr %381, align 8, !tbaa !70
  %383 = icmp eq ptr %382, null
  br i1 %383, label %549, label %384

384:                                              ; preds = %380
  %385 = getelementptr inbounds %struct.GroupObject, ptr %382, i64 0, i32 2
  %386 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %385, i32 noundef 0) #4
  %387 = icmp eq i8 %386, 0
  br i1 %387, label %549, label %380, !llvm.loop !116

388:                                              ; preds = %13
  %389 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  br label %390

390:                                              ; preds = %394, %388
  %391 = phi ptr [ %389, %388 ], [ %392, %394 ]
  %392 = load ptr, ptr %391, align 8, !tbaa !70
  %393 = icmp eq ptr %392, null
  br i1 %393, label %549, label %394

394:                                              ; preds = %390
  %395 = getelementptr inbounds %struct.bNode, ptr %392, i64 0, i32 20
  %396 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %395, i32 noundef 0) #4
  %397 = icmp eq i8 %396, 0
  br i1 %397, label %549, label %390, !llvm.loop !117

398:                                              ; preds = %13
  %399 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 5
  %400 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %399, i32 noundef 0) #4
  %401 = icmp eq i8 %400, 0
  br i1 %401, label %549, label %402

402:                                              ; preds = %398
  %403 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3
  call fastcc void @library_foreach_mtex(ptr noundef nonnull %5, ptr noundef nonnull %403) #5
  %404 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 4
  call fastcc void @library_foreach_mtex(ptr noundef nonnull %5, ptr noundef nonnull %404) #5
  br label %549

405:                                              ; preds = %13
  %406 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 122
  %407 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %406, i32 noundef 0) #4
  %408 = icmp eq i8 %407, 0
  br i1 %408, label %549, label %409

409:                                              ; preds = %405
  %410 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 125
  %411 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %410, i32 noundef 0) #4
  %412 = icmp eq i8 %411, 0
  br i1 %412, label %549, label %413

413:                                              ; preds = %409
  %414 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 126
  %415 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %414, i32 noundef 0) #4
  %416 = icmp eq i8 %415, 0
  br i1 %416, label %549, label %417

417:                                              ; preds = %413
  %418 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 4
  %419 = load ptr, ptr %418, align 8, !tbaa !118
  %420 = icmp eq ptr %419, null
  br i1 %420, label %549, label %421

421:                                              ; preds = %417
  %422 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %419, i32 noundef 0) #4
  br label %549

423:                                              ; preds = %13
  %424 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11
  %425 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 10
  %426 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %425, i32 noundef 0) #4
  %427 = icmp eq i8 %426, 0
  br i1 %427, label %549, label %428

428:                                              ; preds = %423
  %429 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 8
  %430 = load ptr, ptr %429, align 8, !tbaa !70
  %431 = icmp eq ptr %430, null
  br i1 %431, label %549, label %435

432:                                              ; preds = %438
  %433 = load ptr, ptr %436, align 8, !tbaa !70
  %434 = icmp eq ptr %433, null
  br i1 %434, label %549, label %435, !llvm.loop !120

435:                                              ; preds = %428, %432
  %436 = phi ptr [ %433, %432 ], [ %430, %428 ]
  %437 = tail call ptr @BKE_tracking_object_get_tracks(ptr noundef nonnull %424, ptr noundef nonnull %436) #4
  br label %438

438:                                              ; preds = %442, %435
  %439 = phi ptr [ %437, %435 ], [ %440, %442 ]
  %440 = load ptr, ptr %439, align 8, !tbaa !70
  %441 = icmp eq ptr %440, null
  br i1 %441, label %432, label %442

442:                                              ; preds = %438
  %443 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %440, i64 0, i32 23
  %444 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %443, i32 noundef 0) #4
  %445 = icmp eq i8 %444, 0
  br i1 %445, label %549, label %438, !llvm.loop !121

446:                                              ; preds = %13
  %447 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  %448 = load ptr, ptr %447, align 8, !tbaa !70
  %449 = icmp eq ptr %448, null
  br i1 %449, label %549, label %453

450:                                              ; preds = %458, %453
  %451 = load ptr, ptr %454, align 8, !tbaa !70
  %452 = icmp eq ptr %451, null
  br i1 %452, label %549, label %453, !llvm.loop !122

453:                                              ; preds = %446, %450
  %454 = phi ptr [ %451, %450 ], [ %448, %446 ]
  %455 = getelementptr inbounds %struct.MaskLayer, ptr %454, i64 0, i32 3
  %456 = load ptr, ptr %455, align 8, !tbaa !70
  %457 = icmp eq ptr %456, null
  br i1 %457, label %450, label %461

458:                                              ; preds = %468, %461
  %459 = load ptr, ptr %462, align 8, !tbaa !70
  %460 = icmp eq ptr %459, null
  br i1 %460, label %450, label %461, !llvm.loop !123

461:                                              ; preds = %453, %458
  %462 = phi ptr [ %459, %458 ], [ %456, %453 ]
  %463 = getelementptr inbounds %struct.MaskSpline, ptr %462, i64 0, i32 5
  %464 = load i32, ptr %463, align 4, !tbaa !124
  %465 = icmp sgt i32 %464, 0
  br i1 %465, label %466, label %458

466:                                              ; preds = %461
  %467 = getelementptr inbounds %struct.MaskSpline, ptr %462, i64 0, i32 6
  br label %473

468:                                              ; preds = %473
  %469 = add nuw nsw i64 %474, 1
  %470 = load i32, ptr %463, align 4, !tbaa !124
  %471 = sext i32 %470 to i64
  %472 = icmp slt i64 %469, %471
  br i1 %472, label %473, label %458, !llvm.loop !127

473:                                              ; preds = %466, %468
  %474 = phi i64 [ 0, %466 ], [ %469, %468 ]
  %475 = load ptr, ptr %467, align 8, !tbaa !128
  %476 = getelementptr inbounds %struct.MaskSplinePoint, ptr %475, i64 %474, i32 4, i32 2
  %477 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %476, i32 noundef 0) #4
  %478 = icmp eq i8 %477, 0
  br i1 %478, label %549, label %468

479:                                              ; preds = %13, %485
  %480 = phi i64 [ %486, %485 ], [ 0, %13 ]
  %481 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 39, i64 %480
  %482 = load ptr, ptr %481, align 8, !tbaa !70
  %483 = icmp eq ptr %482, null
  br i1 %483, label %485, label %484

484:                                              ; preds = %479
  call fastcc void @library_foreach_mtex(ptr noundef nonnull %5, ptr noundef nonnull %482) #5
  br label %485

485:                                              ; preds = %479, %484
  %486 = add nuw nsw i64 %480, 1
  %487 = icmp eq i64 %486, 18
  br i1 %487, label %488, label %479, !llvm.loop !129

488:                                              ; preds = %485
  %489 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 40
  %490 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %489, i32 noundef 0) #4
  %491 = icmp eq i8 %490, 0
  br i1 %491, label %549, label %492

492:                                              ; preds = %488
  %493 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 41
  %494 = load ptr, ptr %493, align 8, !tbaa !70
  %495 = icmp eq ptr %494, null
  br i1 %495, label %511, label %496

496:                                              ; preds = %492, %508
  %497 = phi ptr [ %509, %508 ], [ %494, %492 ]
  %498 = getelementptr inbounds %struct.LineStyleModifier, ptr %497, i64 0, i32 3
  %499 = load i32, ptr %498, align 8, !tbaa !130
  %500 = icmp eq i32 %499, 3
  br i1 %500, label %501, label %508

501:                                              ; preds = %496
  %502 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %497, i64 0, i32 1
  %503 = load ptr, ptr %502, align 8, !tbaa !132
  %504 = icmp eq ptr %503, null
  br i1 %504, label %508, label %505

505:                                              ; preds = %501
  %506 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %502, i32 noundef 0) #4
  %507 = icmp eq i8 %506, 0
  br i1 %507, label %549, label %508

508:                                              ; preds = %501, %505, %496
  %509 = load ptr, ptr %497, align 8, !tbaa !70
  %510 = icmp eq ptr %509, null
  br i1 %510, label %511, label %496, !llvm.loop !134

511:                                              ; preds = %508, %492
  %512 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 42
  %513 = load ptr, ptr %512, align 8, !tbaa !70
  %514 = icmp eq ptr %513, null
  br i1 %514, label %530, label %515

515:                                              ; preds = %511, %527
  %516 = phi ptr [ %528, %527 ], [ %513, %511 ]
  %517 = getelementptr inbounds %struct.LineStyleModifier, ptr %516, i64 0, i32 3
  %518 = load i32, ptr %517, align 8, !tbaa !130
  %519 = icmp eq i32 %518, 3
  br i1 %519, label %520, label %527

520:                                              ; preds = %515
  %521 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %516, i64 0, i32 1
  %522 = load ptr, ptr %521, align 8, !tbaa !135
  %523 = icmp eq ptr %522, null
  br i1 %523, label %527, label %524

524:                                              ; preds = %520
  %525 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %521, i32 noundef 0) #4
  %526 = icmp eq i8 %525, 0
  br i1 %526, label %549, label %527

527:                                              ; preds = %520, %524, %515
  %528 = load ptr, ptr %516, align 8, !tbaa !70
  %529 = icmp eq ptr %528, null
  br i1 %529, label %530, label %515, !llvm.loop !137

530:                                              ; preds = %527, %511
  %531 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 43
  %532 = load ptr, ptr %531, align 8, !tbaa !70
  %533 = icmp eq ptr %532, null
  br i1 %533, label %549, label %534

534:                                              ; preds = %530, %546
  %535 = phi ptr [ %547, %546 ], [ %532, %530 ]
  %536 = getelementptr inbounds %struct.LineStyleModifier, ptr %535, i64 0, i32 3
  %537 = load i32, ptr %536, align 8, !tbaa !130
  %538 = icmp eq i32 %537, 3
  br i1 %538, label %539, label %546

539:                                              ; preds = %534
  %540 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %535, i64 0, i32 1
  %541 = load ptr, ptr %540, align 8, !tbaa !138
  %542 = icmp eq ptr %541, null
  br i1 %542, label %546, label %543

543:                                              ; preds = %539
  %544 = tail call zeroext i8 %1(ptr noundef %2, ptr noundef nonnull %540, i32 noundef 0) #4
  %545 = icmp eq i8 %544, 0
  br i1 %545, label %549, label %546

546:                                              ; preds = %539, %543, %534
  %547 = load ptr, ptr %535, align 8, !tbaa !70
  %548 = icmp eq ptr %547, null
  br i1 %548, label %549, label %534, !llvm.loop !140

549:                                              ; preds = %505, %524, %546, %543, %450, %473, %432, %442, %394, %390, %384, %380, %305, %310, %284, %246, %251, %185, %203, %208, %222, %57, %64, %76, %91, %98, %146, %142, %530, %446, %428, %16, %241, %134, %421, %336, %329, %302, %417, %402, %375, %372, %360, %357, %354, %351, %339, %488, %423, %398, %298, %294, %290, %269, %265, %261, %257, %237, %233, %195, %191, %170, %166, %162, %158, %154, %150, %136, %41, %37, %29, %25, %21, %13, %231, %405, %409, %413, %332, %325
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @library_foreach_animationData(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !141 {
  %3 = getelementptr inbounds %struct.AnimData, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = icmp eq ptr %4, null
  br i1 %5, label %41, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.LibraryForeachIDData, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.LibraryForeachIDData, ptr %0, i64 0, i32 3
  br label %12

9:                                                ; preds = %18, %12
  %10 = load ptr, ptr %13, align 8, !tbaa !70
  %11 = icmp eq ptr %10, null
  br i1 %11, label %41, label %12, !llvm.loop !142

12:                                               ; preds = %6, %9
  %13 = phi ptr [ %4, %6 ], [ %10, %9 ]
  %14 = getelementptr inbounds %struct.FCurve, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !143
  %16 = load ptr, ptr %15, align 8, !tbaa !70
  %17 = icmp eq ptr %16, null
  br i1 %17, label %9, label %21

18:                                               ; preds = %35, %21
  %19 = load ptr, ptr %22, align 8, !tbaa !70
  %20 = icmp eq ptr %19, null
  br i1 %20, label %9, label %21, !llvm.loop !145

21:                                               ; preds = %12, %18
  %22 = phi ptr [ %19, %18 ], [ %16, %12 ]
  %23 = getelementptr inbounds %struct.DriverVar, ptr %22, i64 0, i32 4
  %24 = load i16, ptr %23, align 8, !tbaa !146
  %25 = icmp sgt i16 %24, 0
  br i1 %25, label %26, label %18

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.DriverVar, ptr %22, i64 0, i32 3
  br label %28

28:                                               ; preds = %26, %35
  %29 = phi i32 [ %36, %35 ], [ 0, %26 ]
  %30 = phi ptr [ %37, %35 ], [ %27, %26 ]
  %31 = load ptr, ptr %7, align 8, !tbaa !41
  %32 = load ptr, ptr %8, align 8, !tbaa !42
  %33 = tail call zeroext i8 %31(ptr noundef %32, ptr noundef nonnull %30, i32 noundef 0) #4
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %28
  %36 = add nuw nsw i32 %29, 1
  %37 = getelementptr inbounds %struct.DriverTarget, ptr %30, i64 1
  %38 = load i16, ptr %23, align 8, !tbaa !146
  %39 = sext i16 %38 to i32
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %28, label %18, !llvm.loop !148

41:                                               ; preds = %9, %28, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BKE_sequence_iterator_begin(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sequence_iterator_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sequence_iterator_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_constraints_id_loop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @library_foreach_constraintObjectLooper(ptr nocapture readnone %0, ptr noundef %1, i8 zeroext %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !149 {
  %5 = getelementptr inbounds %struct.LibraryForeachIDData, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = getelementptr inbounds %struct.LibraryForeachIDData, ptr %3, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = tail call zeroext i8 %6(ptr noundef %8, ptr noundef %1, i32 noundef 0) #4
  ret void
}

; Function Attrs: optsize
declare void @modifiers_foreachIDLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @library_foreach_modifiersForeachIDLink(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2) #0 !PGOFuncName !150 {
  %4 = getelementptr inbounds %struct.LibraryForeachIDData, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.LibraryForeachIDData, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = tail call zeroext i8 %5(ptr noundef %7, ptr noundef %2, i32 noundef 0) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @library_foreach_mtex(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !151 {
  %3 = getelementptr inbounds %struct.MTex, ptr %1, i64 0, i32 4
  %4 = getelementptr inbounds %struct.LibraryForeachIDData, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.LibraryForeachIDData, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = tail call zeroext i8 %5(ptr noundef %7, ptr noundef nonnull %3, i32 noundef 0) #4
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.MTex, ptr %1, i64 0, i32 5
  %12 = load ptr, ptr %4, align 8, !tbaa !41
  %13 = load ptr, ptr %6, align 8, !tbaa !42
  %14 = tail call zeroext i8 %12(ptr noundef %13, ptr noundef nonnull %11, i32 noundef 0) #4
  br label %15

15:                                               ; preds = %2, %10
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_tracking_object_get_tracks(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"LibraryForeachIDData", !36, i64 0, !39, i64 8, !36, i64 16, !36, i64 24}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!35, !39, i64 8}
!41 = !{!35, !36, i64 16}
!42 = !{!35, !36, i64 24}
!43 = !{!44, !44, i64 0}
!44 = !{!"short", !37, i64 0}
!45 = !{!46, !44, i64 186}
!46 = !{!"MetaBall", !47, i64 0, !36, i64 120, !48, i64 128, !48, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 185, !44, i64 186, !44, i64 188, !44, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !49, i64 228, !49, i64 232, !49, i64 236, !36, i64 240}
!47 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !44, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!48 = !{!"ListBase", !36, i64 0, !36, i64 8}
!49 = !{!"float", !37, i64 0}
!50 = !{!51, !36, i64 168}
!51 = !{!"Scene", !47, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !48, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !44, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !52, i64 280, !61, i64 4264, !48, i64 4296, !48, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !44, i64 4376, !44, i64 4378, !39, i64 4380, !48, i64 4384, !62, i64 4400, !63, i64 4416, !66, i64 4600, !36, i64 4608, !67, i64 4616, !36, i64 4640, !68, i64 4648, !68, i64 4656, !54, i64 4664, !55, i64 4824, !69, i64 4888, !36, i64 4952}
!52 = !{!"RenderData", !53, i64 0, !36, i64 248, !36, i64 256, !56, i64 264, !57, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !49, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !44, i64 432, !44, i64 434, !49, i64 436, !49, i64 440, !49, i64 444, !49, i64 448, !49, i64 452, !44, i64 456, !44, i64 458, !44, i64 460, !44, i64 462, !44, i64 464, !44, i64 466, !39, i64 468, !44, i64 472, !44, i64 474, !44, i64 476, !44, i64 478, !44, i64 480, !44, i64 482, !39, i64 484, !39, i64 488, !44, i64 492, !44, i64 494, !39, i64 496, !39, i64 500, !44, i64 504, !44, i64 506, !44, i64 508, !44, i64 510, !44, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !44, i64 528, !44, i64 530, !44, i64 532, !44, i64 534, !44, i64 536, !44, i64 538, !44, i64 540, !44, i64 542, !58, i64 544, !58, i64 560, !59, i64 576, !48, i64 592, !44, i64 608, !44, i64 610, !49, i64 612, !49, i64 616, !49, i64 620, !49, i64 624, !39, i64 628, !49, i64 632, !49, i64 636, !49, i64 640, !49, i64 644, !44, i64 648, !44, i64 650, !44, i64 652, !44, i64 654, !44, i64 656, !44, i64 658, !49, i64 660, !49, i64 664, !44, i64 668, !44, i64 670, !49, i64 672, !49, i64 676, !37, i64 680, !39, i64 1704, !44, i64 1708, !44, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !44, i64 2524, !44, i64 2526, !49, i64 2528, !49, i64 2532, !44, i64 2536, !44, i64 2538, !49, i64 2540, !44, i64 2544, !44, i64 2546, !39, i64 2548, !44, i64 2552, !44, i64 2554, !44, i64 2556, !44, i64 2558, !49, i64 2560, !49, i64 2564, !36, i64 2568, !39, i64 2576, !49, i64 2580, !37, i64 2584, !60, i64 2616, !39, i64 3976, !39, i64 3980}
!53 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !44, i64 8, !44, i64 10, !49, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !54, i64 24, !55, i64 184}
!54 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !49, i64 136, !49, i64 140, !36, i64 144, !36, i64 152}
!55 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!56 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !44, i64 48, !44, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!57 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !49, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!58 = !{!"rctf", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!59 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!60 = !{!"BakeData", !53, i64 0, !37, i64 248, !44, i64 1272, !44, i64 1274, !44, i64 1276, !44, i64 1278, !49, i64 1280, !49, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!61 = !{!"AudioData", !39, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !39, i64 16, !44, i64 20, !44, i64 22, !49, i64 24, !49, i64 28}
!62 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!63 = !{!"GameData", !62, i64 0, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !44, i64 28, !44, i64 30, !44, i64 32, !37, i64 34, !64, i64 40, !44, i64 64, !44, i64 66, !49, i64 68, !65, i64 72, !49, i64 128, !49, i64 132, !39, i64 136, !44, i64 140, !44, i64 142, !44, i64 144, !44, i64 146, !44, i64 148, !44, i64 150, !44, i64 152, !44, i64 154, !44, i64 156, !44, i64 158, !44, i64 160, !44, i64 162, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180}
!64 = !{!"GameDome", !44, i64 0, !44, i64 2, !44, i64 4, !44, i64 6, !49, i64 8, !49, i64 12, !36, i64 16}
!65 = !{!"RecastData", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !39, i64 40, !49, i64 44, !49, i64 48, !44, i64 52, !44, i64 54}
!66 = !{!"UnitSettings", !49, i64 0, !37, i64 4, !37, i64 5, !44, i64 6}
!67 = !{!"PhysicsSettings", !37, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!68 = !{!"long", !37, i64 0}
!69 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!70 = !{!36, !36, i64 0}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!74, !36, i64 80}
!74 = !{!"SceneRenderLayer", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !49, i64 124, !75, i64 128}
!75 = !{!"FreestyleConfig", !48, i64 0, !39, i64 16, !39, i64 20, !39, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !48, i64 40}
!76 = !{!74, !36, i64 88}
!77 = !{!78, !36, i64 16}
!78 = !{!"FreestyleModuleConfig", !36, i64 0, !36, i64 8, !36, i64 16, !44, i64 24, !37, i64 26}
!79 = distinct !{!79, !72}
!80 = !{!81, !36, i64 112}
!81 = !{!"FreestyleLineSet", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 80, !39, i64 84, !44, i64 88, !44, i64 90, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112, !36, i64 120}
!82 = !{!81, !36, i64 120}
!83 = distinct !{!83, !72}
!84 = !{!51, !36, i64 256}
!85 = !{!86, !39, i64 24}
!86 = !{!"SeqIterator", !36, i64 0, !39, i64 8, !39, i64 12, !36, i64 16, !39, i64 24}
!87 = !{!86, !36, i64 16}
!88 = distinct !{!88, !72}
!89 = distinct !{!89, !72}
!90 = !{!91, !39, i64 456}
!91 = !{!"Object", !47, i64 0, !36, i64 120, !36, i64 128, !44, i64 136, !44, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !92, i64 312, !36, i64 360, !48, i64 368, !48, i64 384, !48, i64 400, !48, i64 416, !39, i64 432, !39, i64 436, !36, i64 440, !36, i64 448, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !49, i64 616, !49, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !39, i64 944, !44, i64 948, !44, i64 950, !44, i64 952, !44, i64 954, !44, i64 956, !44, i64 958, !44, i64 960, !44, i64 962, !44, i64 964, !37, i64 966, !37, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !49, i64 988, !49, i64 992, !49, i64 996, !49, i64 1000, !49, i64 1004, !49, i64 1008, !49, i64 1012, !49, i64 1016, !49, i64 1020, !49, i64 1024, !49, i64 1028, !49, i64 1032, !44, i64 1036, !44, i64 1038, !44, i64 1040, !37, i64 1042, !37, i64 1043, !44, i64 1044, !37, i64 1046, !37, i64 1047, !49, i64 1048, !49, i64 1052, !48, i64 1056, !48, i64 1072, !48, i64 1088, !48, i64 1104, !49, i64 1120, !44, i64 1124, !44, i64 1126, !37, i64 1128, !39, i64 1144, !39, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !44, i64 1162, !37, i64 1164, !48, i64 1176, !48, i64 1192, !48, i64 1208, !48, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !44, i64 1266, !49, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !68, i64 1304, !68, i64 1312, !39, i64 1320, !39, i64 1324, !48, i64 1328, !48, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !48, i64 1400, !36, i64 1416}
!92 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !44, i64 28, !44, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!93 = distinct !{!93, !72}
!94 = !{!91, !36, i64 440}
!95 = !{!91, !36, i64 1224}
!96 = !{!97, !36, i64 0}
!97 = !{!"ParticleSystem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !48, i64 72, !48, i64 88, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !48, i64 152, !37, i64 168, !37, i64 232, !49, i64 296, !49, i64 300, !49, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !39, i64 336, !44, i64 340, !44, i64 342, !44, i64 344, !44, i64 346, !37, i64 348, !37, i64 540, !44, i64 564, !44, i64 566, !36, i64 568, !36, i64 576, !48, i64 584, !36, i64 600, !36, i64 608, !39, i64 616, !39, i64 620, !36, i64 624, !36, i64 632, !36, i64 640, !49, i64 648, !49, i64 652}
!98 = distinct !{!98, !72}
!99 = !{!91, !36, i64 288}
!100 = distinct !{!100, !72}
!101 = !{!102, !44, i64 1366}
!102 = !{!"Mesh", !47, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !103, i64 280, !103, i64 480, !103, i64 680, !103, i64 880, !103, i64 1080, !39, i64 1280, !39, i64 1284, !39, i64 1288, !39, i64 1292, !39, i64 1296, !39, i64 1300, !39, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !39, i64 1344, !44, i64 1348, !44, i64 1350, !49, i64 1352, !39, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !44, i64 1366, !36, i64 1368}
!103 = !{!"CustomData", !36, i64 0, !37, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !36, i64 184, !36, i64 192}
!104 = distinct !{!104, !72}
!105 = !{!102, !36, i64 152}
!106 = !{!107, !44, i64 266}
!107 = !{!"Curve", !47, i64 0, !36, i64 120, !36, i64 128, !48, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !44, i64 244, !44, i64 246, !44, i64 248, !44, i64 250, !49, i64 252, !49, i64 256, !39, i64 260, !44, i64 264, !44, i64 266, !39, i64 268, !49, i64 272, !49, i64 276, !49, i64 280, !44, i64 284, !44, i64 286, !44, i64 288, !44, i64 290, !39, i64 292, !39, i64 296, !37, i64 300, !44, i64 304, !37, i64 306, !37, i64 307, !49, i64 308, !49, i64 312, !49, i64 316, !49, i64 320, !49, i64 324, !49, i64 328, !49, i64 332, !49, i64 336, !49, i64 340, !49, i64 344, !39, i64 348, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !39, i64 488, !39, i64 492, !36, i64 496, !108, i64 504, !49, i64 512, !49, i64 516, !49, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!108 = !{!"CharInfo", !44, i64 0, !44, i64 2, !37, i64 4, !37, i64 5, !44, i64 6}
!109 = distinct !{!109, !72}
!110 = !{!107, !36, i64 200}
!111 = distinct !{!111, !72}
!112 = !{!46, !36, i64 176}
!113 = distinct !{!113, !72}
!114 = distinct !{!114, !72}
!115 = distinct !{!115, !72}
!116 = distinct !{!116, !72}
!117 = distinct !{!117, !72}
!118 = !{!119, !36, i64 144}
!119 = !{!"ParticleSettings", !47, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !39, i64 156, !44, i64 160, !44, i64 162, !44, i64 164, !44, i64 166, !44, i64 168, !44, i64 170, !44, i64 172, !44, i64 174, !39, i64 176, !39, i64 180, !44, i64 184, !44, i64 186, !44, i64 188, !44, i64 190, !44, i64 192, !44, i64 194, !44, i64 196, !44, i64 198, !44, i64 200, !44, i64 202, !44, i64 204, !44, i64 206, !44, i64 208, !44, i64 210, !44, i64 212, !44, i64 214, !44, i64 216, !44, i64 218, !44, i64 220, !44, i64 222, !44, i64 224, !44, i64 226, !44, i64 228, !44, i64 230, !49, i64 232, !49, i64 236, !37, i64 240, !37, i64 248, !49, i64 256, !49, i64 260, !49, i64 264, !44, i64 268, !44, i64 270, !49, i64 272, !49, i64 276, !49, i64 280, !49, i64 284, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !49, i64 304, !49, i64 308, !49, i64 312, !49, i64 316, !37, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !39, i64 336, !44, i64 340, !37, i64 342, !49, i64 348, !49, i64 352, !49, i64 356, !49, i64 360, !49, i64 364, !49, i64 368, !49, i64 372, !37, i64 376, !49, i64 388, !49, i64 392, !49, i64 396, !49, i64 400, !49, i64 404, !49, i64 408, !49, i64 412, !37, i64 416, !49, i64 428, !49, i64 432, !49, i64 436, !49, i64 440, !39, i64 444, !39, i64 448, !49, i64 452, !49, i64 456, !49, i64 460, !49, i64 464, !49, i64 468, !49, i64 472, !49, i64 476, !49, i64 480, !49, i64 484, !49, i64 488, !49, i64 492, !49, i64 496, !49, i64 500, !49, i64 504, !49, i64 508, !49, i64 512, !49, i64 516, !49, i64 520, !49, i64 524, !49, i64 528, !49, i64 532, !49, i64 536, !49, i64 540, !49, i64 544, !49, i64 548, !37, i64 552, !49, i64 560, !49, i64 564, !39, i64 568, !39, i64 572, !37, i64 576, !36, i64 720, !48, i64 728, !36, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !44, i64 792, !37, i64 794}
!120 = distinct !{!120, !72}
!121 = distinct !{!121, !72}
!122 = distinct !{!122, !72}
!123 = distinct !{!123, !72}
!124 = !{!125, !39, i64 20}
!125 = !{!"MaskSpline", !36, i64 0, !36, i64 8, !44, i64 16, !37, i64 18, !37, i64 19, !39, i64 20, !36, i64 24, !126, i64 32, !36, i64 216}
!126 = !{!"MaskParent", !39, i64 0, !39, i64 4, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 144, !37, i64 152}
!127 = distinct !{!127, !72}
!128 = !{!125, !36, i64 24}
!129 = distinct !{!129, !72}
!130 = !{!131, !39, i64 80}
!131 = !{!"LineStyleModifier", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 80, !49, i64 84, !39, i64 88, !39, i64 92}
!132 = !{!133, !36, i64 96}
!133 = !{!"LineStyleColorModifier_DistanceFromObject", !131, i64 0, !36, i64 96, !36, i64 104, !49, i64 112, !49, i64 116}
!134 = distinct !{!134, !72}
!135 = !{!136, !36, i64 96}
!136 = !{!"LineStyleAlphaModifier_DistanceFromObject", !131, i64 0, !36, i64 96, !36, i64 104, !39, i64 112, !49, i64 116, !49, i64 120, !39, i64 124}
!137 = distinct !{!137, !72}
!138 = !{!139, !36, i64 96}
!139 = !{!"LineStyleThicknessModifier_DistanceFromObject", !131, i64 0, !36, i64 96, !36, i64 104, !39, i64 112, !49, i64 116, !49, i64 120, !49, i64 124, !49, i64 128, !39, i64 132}
!140 = distinct !{!140, !72}
!141 = !{!"library_query.c:library_foreach_animationData"}
!142 = distinct !{!142, !72}
!143 = !{!144, !36, i64 24}
!144 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !48, i64 32, !36, i64 48, !36, i64 56, !39, i64 64, !49, i64 68, !44, i64 72, !44, i64 74, !39, i64 76, !36, i64 80, !39, i64 88, !37, i64 92, !49, i64 104, !49, i64 108}
!145 = distinct !{!145, !72}
!146 = !{!147, !44, i64 528}
!147 = !{!"DriverVar", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !44, i64 528, !44, i64 530, !49, i64 532}
!148 = distinct !{!148, !72}
!149 = !{!"library_query.c:library_foreach_constraintObjectLooper"}
!150 = !{!"library_query.c:library_foreach_modifiersForeachIDLink"}
!151 = !{!"library_query.c:library_foreach_mtex"}
