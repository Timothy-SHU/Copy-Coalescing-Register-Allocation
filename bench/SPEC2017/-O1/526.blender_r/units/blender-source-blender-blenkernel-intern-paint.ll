; ModuleID = 'blender/source/blender/blenkernel/intern/paint.c'
source_filename = "blender/source/blender/blenkernel/intern/paint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
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
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.PaintCurve = type { %struct.ID, ptr, i32, i32 }
%struct.Palette = type { %struct.ID, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.GridPaintMask = type { ptr, i32, i32 }
%struct.SculptSession = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, i8, i8, ptr, ptr, ptr, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i8, [3 x float], [3 x float], i32 }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.VirtualModifierData = type { %struct.ArmatureModifierData, %struct.CurveModifierData, %struct.LatticeModifierData, %struct.ShapeKeyModifierData }
%struct.ArmatureModifierData = type { %struct.ModifierData, i16, i16, i32, ptr, ptr, [64 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.CurveModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, [6 x i8] }
%struct.LatticeModifierData = type { %struct.ModifierData, ptr, [64 x i8], float, [4 x i8] }
%struct.ShapeKeyModifierData = type { %struct.ModifierData }
%struct.MultiresModifierData = type { %struct.ModifierData, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.Sculpt = type { %struct.Paint, i32, [3 x i32], float, i32, float, float, ptr, ptr }
%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MLoop = type { i32, i32 }

@PAINT_CURSOR_SCULPT = dso_local local_unnamed_addr constant [3 x i8] c"\FFdd", align 1
@PAINT_CURSOR_VERTEX_PAINT = dso_local local_unnamed_addr constant [3 x i8] c"\FF\FF\FF", align 1
@PAINT_CURSOR_WEIGHT_PAINT = dso_local local_unnamed_addr constant [3 x i8] c"\C8\C8\FF", align 1
@PAINT_CURSOR_TEXTURE_PAINT = dso_local local_unnamed_addr constant [3 x i8] c"\FF\FF\FF", align 1
@overlay_flags = internal unnamed_addr global i32 0, align 4
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"Pallete Color\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"Brush\00", align 1
@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"GridPaintMask.data\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: write) uwtable
define dso_local void @BKE_paint_invalidate_overlay_tex(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 27
  %15 = load i32, ptr %14, align 8, !tbaa !65
  switch i32 %15, label %35 [
    i32 2, label %16
    i32 4, label %19
    i32 8, label %21
    i32 16, label %24
    i32 1, label %26
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  br label %37

19:                                               ; preds = %13
  %20 = load ptr, ptr %5, align 8, !tbaa !75
  br label %37

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !76
  br label %37

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 17
  br label %37

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 64
  %28 = load i32, ptr %27, align 8, !tbaa !77
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !78
  br label %37

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 17
  br label %37

35:                                               ; preds = %13, %9, %2
  %36 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 17
  br label %37

37:                                               ; preds = %16, %19, %21, %24, %30, %33, %35
  %38 = phi ptr [ %36, %35 ], [ %32, %30 ], [ %34, %33 ], [ %25, %24 ], [ %23, %21 ], [ %20, %19 ], [ %18, %16 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !79
  %40 = icmp eq ptr %39, null
  br i1 %40, label %55, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.Brush, ptr %39, i64 0, i32 3, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !80
  %44 = icmp eq ptr %43, %1
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, ptr @overlay_flags, align 4, !tbaa !84
  %47 = or i32 %46, 1
  store i32 %47, ptr @overlay_flags, align 4, !tbaa !84
  br label %48

48:                                               ; preds = %45, %41
  %49 = getelementptr inbounds %struct.Brush, ptr %39, i64 0, i32 4, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !85
  %51 = icmp eq ptr %50, %1
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, ptr @overlay_flags, align 4, !tbaa !84
  %54 = or i32 %53, 4
  store i32 %54, ptr @overlay_flags, align 4, !tbaa !84
  br label %55

55:                                               ; preds = %48, %52, %37
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_paint_get_active(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 27
  %15 = load i32, ptr %14, align 8, !tbaa !65
  switch i32 %15, label %35 [
    i32 2, label %16
    i32 4, label %19
    i32 8, label %21
    i32 16, label %24
    i32 1, label %26
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  br label %37

19:                                               ; preds = %13
  %20 = load ptr, ptr %5, align 8, !tbaa !75
  br label %37

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !76
  br label %37

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 17
  br label %37

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 64
  %28 = load i32, ptr %27, align 8, !tbaa !77
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !78
  br label %37

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 17
  br label %37

35:                                               ; preds = %13, %9, %3
  %36 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 17
  br label %37

37:                                               ; preds = %1, %16, %19, %21, %24, %30, %33, %35
  %38 = phi ptr [ %36, %35 ], [ %32, %30 ], [ %34, %33 ], [ %25, %24 ], [ %23, %21 ], [ %20, %19 ], [ %18, %16 ], [ null, %1 ]
  ret ptr %38
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: write) uwtable
define dso_local void @BKE_paint_invalidate_cursor_overlay(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 27
  %15 = load i32, ptr %14, align 8, !tbaa !65
  switch i32 %15, label %35 [
    i32 2, label %16
    i32 4, label %19
    i32 8, label %21
    i32 16, label %24
    i32 1, label %26
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  br label %37

19:                                               ; preds = %13
  %20 = load ptr, ptr %5, align 8, !tbaa !75
  br label %37

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !76
  br label %37

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 17
  br label %37

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 64
  %28 = load i32, ptr %27, align 8, !tbaa !77
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !78
  br label %37

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 17
  br label %37

35:                                               ; preds = %13, %9, %2
  %36 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 17
  br label %37

37:                                               ; preds = %16, %19, %21, %24, %30, %33, %35
  %38 = phi ptr [ %36, %35 ], [ %32, %30 ], [ %34, %33 ], [ %25, %24 ], [ %23, %21 ], [ %20, %19 ], [ %18, %16 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !79
  %40 = icmp eq ptr %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.Brush, ptr %39, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !86
  %44 = icmp eq ptr %43, %1
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, ptr @overlay_flags, align 4, !tbaa !84
  %47 = or i32 %46, 8
  store i32 %47, ptr @overlay_flags, align 4, !tbaa !84
  br label %48

48:                                               ; preds = %45, %41, %37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @BKE_paint_invalidate_overlay_all() local_unnamed_addr #3 {
  %1 = load i32, ptr @overlay_flags, align 4, !tbaa !84
  %2 = or i32 %1, 13
  store i32 %2, ptr @overlay_flags, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_paint_get_overlay_flags() local_unnamed_addr #4 {
  %1 = load i32, ptr @overlay_flags, align 4, !tbaa !84
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @BKE_paint_set_overlay_override(i32 noundef %0) local_unnamed_addr #3 {
  %2 = and i32 %0, 56
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = and i32 %0, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr @overlay_flags, align 4, !tbaa !84
  %9 = or i32 %8, 16
  store i32 %9, ptr @overlay_flags, align 4, !tbaa !84
  br label %10

10:                                               ; preds = %7, %4
  %11 = and i32 %0, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr @overlay_flags, align 4, !tbaa !84
  %15 = or i32 %14, 32
  store i32 %15, ptr @overlay_flags, align 4, !tbaa !84
  br label %16

16:                                               ; preds = %13, %10
  %17 = and i32 %0, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr @overlay_flags, align 4, !tbaa !84
  %21 = or i32 %20, 64
  br label %25

22:                                               ; preds = %1
  %23 = load i32, ptr @overlay_flags, align 4, !tbaa !84
  %24 = and i32 %23, -113
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i32 [ %21, %19 ], [ %24, %22 ]
  store i32 %26, ptr @overlay_flags, align 4, !tbaa !84
  br label %27

27:                                               ; preds = %25, %16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @BKE_paint_reset_overlay_invalid(i32 noundef %0) local_unnamed_addr #3 {
  %2 = xor i32 %0, -1
  %3 = load i32, ptr @overlay_flags, align 4, !tbaa !84
  %4 = and i32 %3, %2
  store i32 %4, ptr @overlay_flags, align 4, !tbaa !84
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_paint_get_active_from_context(ptr noundef %0) local_unnamed_addr #5 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %68, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  br label %13

13:                                               ; preds = %10, %4
  %14 = phi ptr [ null, %4 ], [ %12, %10 ]
  %15 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #15
  %16 = icmp eq ptr %15, null
  %17 = icmp eq ptr %14, null
  br i1 %16, label %38, label %18

18:                                               ; preds = %13
  br i1 %17, label %36, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 27
  %21 = load i32, ptr %20, align 8, !tbaa !65
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.SpaceImage, ptr %15, i64 0, i32 17
  %25 = load i8, ptr %24, align 4, !tbaa !87
  %26 = icmp eq i8 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 17
  br label %65

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 64
  %31 = load i32, ptr %30, align 8, !tbaa !77
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %65, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !78
  br label %65

36:                                               ; preds = %19, %18
  %37 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 17
  br label %65

38:                                               ; preds = %13
  br i1 %17, label %63, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 27
  %41 = load i32, ptr %40, align 8, !tbaa !65
  switch i32 %41, label %61 [
    i32 2, label %42
    i32 4, label %45
    i32 8, label %47
    i32 16, label %50
    i32 1, label %52
  ]

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !68
  br label %65

45:                                               ; preds = %39
  %46 = load ptr, ptr %6, align 8, !tbaa !75
  br label %65

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !76
  br label %65

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 17
  br label %65

52:                                               ; preds = %39
  %53 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 64
  %54 = load i32, ptr %53, align 8, !tbaa !77
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !78
  br label %65

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 17
  br label %65

61:                                               ; preds = %39
  %62 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 17
  br label %65

63:                                               ; preds = %38
  %64 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 17
  br label %65

65:                                               ; preds = %29, %63, %61, %59, %56, %50, %47, %45, %42, %36, %33, %27
  %66 = phi ptr [ %28, %27 ], [ %35, %33 ], [ %37, %36 ], [ %62, %61 ], [ %58, %56 ], [ %60, %59 ], [ %51, %50 ], [ %49, %47 ], [ %46, %45 ], [ %44, %42 ], [ %64, %63 ], [ undef, %29 ]
  %67 = phi i1 [ false, %27 ], [ false, %33 ], [ false, %36 ], [ false, %61 ], [ false, %56 ], [ false, %59 ], [ false, %50 ], [ false, %47 ], [ false, %45 ], [ false, %42 ], [ false, %63 ], [ true, %29 ]
  br i1 %67, label %68, label %69

68:                                               ; preds = %65, %1
  br label %69

69:                                               ; preds = %65, %68
  %70 = phi ptr [ null, %68 ], [ %66, %65 ]
  ret ptr %70
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #6

declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) local_unnamed_addr #5 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %47, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  br label %13

13:                                               ; preds = %10, %4
  %14 = phi ptr [ null, %4 ], [ %12, %10 ]
  %15 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #15
  %16 = icmp eq ptr %15, null
  %17 = icmp eq ptr %14, null
  br i1 %16, label %31, label %18

18:                                               ; preds = %13
  br i1 %17, label %44, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 27
  %21 = load i32, ptr %20, align 8, !tbaa !65
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %44

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.SpaceImage, ptr %15, i64 0, i32 17
  %25 = load i8, ptr %24, align 4, !tbaa !87
  %26 = icmp eq i8 %25, 1
  br i1 %26, label %44, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 64
  %29 = load i32, ptr %28, align 8, !tbaa !77
  %30 = icmp eq i32 %29, 0
  br label %44

31:                                               ; preds = %13
  br i1 %17, label %44, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 27
  %34 = load i32, ptr %33, align 8, !tbaa !65
  switch i32 %34, label %43 [
    i32 2, label %44
    i32 4, label %35
    i32 8, label %36
    i32 16, label %37
    i32 1, label %38
  ]

35:                                               ; preds = %32
  br label %44

36:                                               ; preds = %32
  br label %44

37:                                               ; preds = %32
  br label %44

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 64
  %40 = load i32, ptr %39, align 8, !tbaa !77
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 4, i32 5
  br label %44

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %31, %38, %32, %18, %19, %27, %23, %43, %37, %36, %35
  %45 = phi i32 [ 4, %43 ], [ 3, %37 ], [ 2, %36 ], [ 1, %35 ], [ 4, %23 ], [ 5, %27 ], [ 4, %19 ], [ 4, %18 ], [ 0, %32 ], [ %42, %38 ], [ 4, %31 ]
  %46 = phi i1 [ false, %43 ], [ false, %37 ], [ false, %36 ], [ false, %35 ], [ false, %23 ], [ %30, %27 ], [ false, %19 ], [ false, %18 ], [ false, %32 ], [ false, %38 ], [ false, %31 ]
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %1
  br label %48

48:                                               ; preds = %44, %47
  %49 = phi i32 [ 6, %47 ], [ %45, %44 ]
  ret i32 %49
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_paint_brush(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !79
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_paint_brush_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !79
  tail call void @id_us_min(ptr noundef %5) #15
  tail call void @id_us_plus(ptr noundef %1) #15
  store ptr %1, ptr %0, align 8, !tbaa !79
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

declare void @id_us_min(ptr noundef) local_unnamed_addr #6

declare void @id_us_plus(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @BKE_paint_curve_free(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.PaintCurve, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  tail call void %6(ptr noundef nonnull %3) #15
  store ptr null, ptr %2, align 8, !tbaa !93
  %7 = getelementptr inbounds %struct.PaintCurve, ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !96
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_paint_curve_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 17232, ptr noundef %1) #15
  ret ptr %3
}

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_paint_palette(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Paint, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !97
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_paint_palette_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Paint, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !97
  tail call void @id_us_min(ptr noundef %6) #15
  tail call void @id_us_plus(ptr noundef %1) #15
  store ptr %1, ptr %5, align 8, !tbaa !97
  br label %7

7:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_paint_curve_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  tail call void @id_us_min(ptr noundef %6) #15
  tail call void @id_us_plus(ptr noundef %1) #15
  store ptr %1, ptr %5, align 8, !tbaa !98
  br label %7

7:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_palette_color_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Palette, ptr %0, i64 0, i32 1
  %6 = tail call i32 @BLI_countlist(ptr noundef nonnull %5) #15
  %7 = getelementptr inbounds %struct.Palette, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !99
  %9 = add nsw i32 %8, 1
  %10 = icmp eq i32 %6, %9
  %11 = icmp ne i32 %6, 1
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = add nsw i32 %8, -1
  store i32 %14, ptr %7, align 8, !tbaa !99
  br label %15

15:                                               ; preds = %13, %4
  tail call void @BLI_remlink(ptr noundef nonnull %5, ptr noundef nonnull %1) #15
  %16 = getelementptr inbounds %struct.Palette, ptr %0, i64 0, i32 2
  tail call void @BLI_addhead(ptr noundef nonnull %16, ptr noundef nonnull %1) #15
  br label %17

17:                                               ; preds = %15, %2
  ret void
}

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #6

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @BKE_palette_cleanup(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Palette, ptr %0, i64 0, i32 2
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #15
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_palette_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 19536, ptr noundef %1) #15
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !101
  %6 = or i16 %5, 512
  store i16 %6, ptr %4, align 2, !tbaa !101
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_palette_free(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Palette, ptr %0, i64 0, i32 1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_palette_color_add(ptr noundef %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !95
  %3 = tail call ptr %2(i64 noundef 32, ptr noundef nonnull @.str) #15
  %4 = getelementptr inbounds %struct.Palette, ptr %0, i64 0, i32 1
  tail call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %3) #15
  %5 = tail call i32 @BLI_countlist(ptr noundef nonnull %4) #15
  %6 = add nsw i32 %5, -1
  %7 = getelementptr inbounds %struct.Palette, ptr %0, i64 0, i32 3
  store i32 %6, ptr %7, align 8, !tbaa !99
  ret ptr %3
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BKE_palette_is_empty(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.Palette, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_paint_select_face_test(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !103
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !104
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 46
  %13 = load i8, ptr %12, align 1, !tbaa !105
  %14 = and i8 %13, 8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %18 = load i32, ptr %17, align 8, !tbaa !65
  %19 = and i32 %18, 28
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %16, %11, %7, %3, %1
  %23 = phi i8 [ 0, %11 ], [ 0, %7 ], [ 0, %3 ], [ 0, %1 ], [ %21, %16 ]
  ret i8 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_paint_select_vert_test(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !103
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !104
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 46
  %13 = load i8, ptr %12, align 1, !tbaa !105
  %14 = and i8 %13, 32
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %18 = load i32, ptr %17, align 8, !tbaa !65
  %19 = trunc i32 %18 to i8
  %20 = lshr i8 %19, 3
  %21 = and i8 %20, 1
  br label %22

22:                                               ; preds = %16, %11, %7, %3, %1
  %23 = phi i8 [ 0, %11 ], [ 0, %7 ], [ 0, %3 ], [ 0, %1 ], [ %21, %16 ]
  ret i8 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_paint_select_elem_test(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !103
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !104
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 46
  %13 = load i8, ptr %12, align 1, !tbaa !105
  %14 = and i8 %13, 32
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %18 = load i32, ptr %17, align 8, !tbaa !65
  %19 = and i32 %18, 8
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %1, %3, %7, %11, %16
  %22 = phi i1 [ false, %11 ], [ false, %7 ], [ false, %3 ], [ false, %1 ], [ %20, %16 ]
  %23 = or i1 %2, %22
  br i1 %23, label %42, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %26 = load i16, ptr %25, align 8, !tbaa !103
  %27 = icmp eq i16 %26, 1
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !104
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.Mesh, ptr %30, i64 0, i32 46
  %34 = load i8, ptr %33, align 1, !tbaa !105
  %35 = and i8 %34, 8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %39 = load i32, ptr %38, align 8, !tbaa !65
  %40 = and i32 %39, 28
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %21, %37, %32, %28, %24
  %43 = phi i1 [ %22, %21 ], [ false, %32 ], [ false, %28 ], [ false, %24 ], [ %41, %37 ]
  %44 = zext i1 %43 to i8
  ret i8 %44
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_paint_init(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !79
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load ptr, ptr @G, align 8, !tbaa !108
  %11 = tail call ptr @BKE_brush_add(ptr noundef %10, ptr noundef nonnull @.str.1) #15
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi ptr [ %11, %9 ], [ %7, %6 ]
  br i1 %3, label %16, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %0, align 8, !tbaa !79
  tail call void @id_us_min(ptr noundef %15) #15
  tail call void @id_us_plus(ptr noundef %13) #15
  store ptr %13, ptr %0, align 8, !tbaa !79
  br label %16

16:                                               ; preds = %12, %14
  %17 = getelementptr inbounds %struct.Paint, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %17, ptr noundef nonnull align 1 dereferenceable(3) %1, i64 3, i1 false)
  %18 = getelementptr inbounds %struct.Paint, ptr %0, i64 0, i32 3, i64 3
  store i8 -128, ptr %18, align 1, !tbaa !110
  ret void
}

declare ptr @BKE_brush_add(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local void @BKE_paint_free(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !79
  tail call void @id_us_min(ptr noundef %2) #15
  %3 = getelementptr inbounds %struct.Paint, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  tail call void @id_us_min(ptr noundef %4) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_paint_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !79
  store ptr %3, ptr %1, align 8, !tbaa !79
  tail call void @id_us_plus(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.Paint, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !97
  tail call void @id_us_plus(ptr noundef %5) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @paint_is_face_hidden(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = load i32, ptr %0, align 4, !tbaa !111
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.MVert, ptr %1, i64 %4, i32 2
  %6 = load i8, ptr %5, align 2, !tbaa !113
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !115
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.MVert, ptr %1, i64 %12, i32 2
  %14 = load i8, ptr %13, align 2, !tbaa !113
  %15 = and i8 %14, 16
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !116
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.MVert, ptr %1, i64 %20, i32 2
  %22 = load i8, ptr %21, align 2, !tbaa !113
  %23 = and i8 %22, 16
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !117
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = zext i32 %27 to i64
  %31 = getelementptr inbounds %struct.MVert, ptr %1, i64 %30, i32 2
  %32 = load i8, ptr %31, align 2, !tbaa !113
  %33 = lshr i8 %32, 4
  %34 = and i8 %33, 1
  br label %35

35:                                               ; preds = %25, %29, %17, %9, %2
  %36 = phi i8 [ 1, %17 ], [ 1, %9 ], [ 1, %2 ], [ 0, %25 ], [ %34, %29 ]
  ret i8 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @paint_is_grid_face_hidden(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 {
  %5 = mul nsw i32 %3, %1
  %6 = add nsw i32 %5, %2
  %7 = ashr i32 %6, 5
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !84
  %11 = and i32 %6, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %10, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %4
  %16 = add nsw i32 %6, 1
  %17 = ashr i32 %16, 5
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !84
  %21 = and i32 %16, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %20, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %15
  %26 = add nsw i32 %3, 1
  %27 = mul nsw i32 %26, %1
  %28 = add nsw i32 %27, %2
  %29 = add nsw i32 %28, 1
  %30 = ashr i32 %29, 5
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !84
  %34 = and i32 %29, 31
  %35 = shl nuw i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %25
  %39 = ashr i32 %28, 5
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !84
  %43 = and i32 %28, 31
  %44 = shl nuw i32 1, %43
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i8
  br label %48

48:                                               ; preds = %38, %25, %15, %4
  %49 = phi i8 [ 1, %25 ], [ 1, %15 ], [ 1, %4 ], [ %47, %38 ]
  ret i8 %49
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @paint_is_bmesh_face_hidden(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !118
  br label %4

4:                                                ; preds = %12, %1
  %5 = phi ptr [ %3, %1 ], [ %14, %12 ]
  %6 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  %8 = getelementptr inbounds %struct.BMHeader, ptr %7, i64 0, i32 3
  %9 = load i8, ptr %8, align 1, !tbaa !123
  %10 = and i8 %9, 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !124
  %15 = icmp eq ptr %14, %3
  br i1 %15, label %16, label %4, !llvm.loop !125

16:                                               ; preds = %12, %4
  %17 = phi i8 [ 1, %4 ], [ 0, %12 ]
  ret i8 %17
}

; Function Attrs: nounwind uwtable
define dso_local float @paint_grid_paint_mask(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.GridPaintMask, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !128
  %7 = tail call i32 @BKE_ccg_factor(i32 noundef %1, i32 noundef %6) #15
  %8 = load i32, ptr %5, align 8, !tbaa !128
  %9 = tail call i32 @BKE_ccg_gridsize(i32 noundef %8) #15
  %10 = load ptr, ptr %0, align 8, !tbaa !130
  %11 = mul i32 %9, %3
  %12 = add i32 %11, %2
  %13 = mul i32 %12, %7
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds float, ptr %10, i64 %14
  %16 = load float, ptr %15, align 4, !tbaa !131
  ret float %16
}

declare i32 @BKE_ccg_factor(i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @BKE_ccg_gridsize(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @paint_calculate_rake_rotation(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 7
  %4 = load float, ptr %3, align 4, !tbaa !131
  %5 = load float, ptr %1, align 4, !tbaa !131
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 7, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !131
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !131
  %11 = fsub float %8, %10
  %12 = fmul float %11, %11
  %13 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %12)
  %14 = fcmp ult float %13, 4.000000e+02
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = tail call float @atan2f(float noundef %6, float noundef %11) #15
  %17 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 8
  store float %16, ptr %17, align 4, !tbaa !132
  tail call void @interp_v2_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %1, float noundef 5.000000e-01) #15
  br label %18

18:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #10

declare void @interp_v2_v2v2(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @BKE_free_sculptsession_deformMats(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  tail call void %6(ptr noundef nonnull %3) #15
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !135
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  tail call void %12(ptr noundef nonnull %9) #15
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !136
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  tail call void %18(ptr noundef nonnull %15) #15
  br label %19

19:                                               ; preds = %17, %13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sculptsession_bm_to_me(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !137
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call fastcc void @sculptsession_bm_to_me_update_data_only(ptr noundef nonnull %0, i8 noundef zeroext %1)
  tail call void @DAG_id_tag_update(ptr noundef nonnull %0, i16 noundef signext 2) #15
  br label %9

9:                                                ; preds = %8, %4, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sculptsession_bm_to_me_update_data_only(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #5 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !137
  %6 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !138
  %8 = icmp eq ptr %7, null
  br i1 %8, label %45, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !104
  %12 = icmp eq ptr %11, null
  br i1 %12, label %45, label %13

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  %14 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %14, align 4, !tbaa !139
  %15 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %15, align 8, !tbaa !141
  %16 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %16, align 8, !tbaa !142
  %17 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !143
  store ptr %18, ptr %3, align 8, !tbaa !110
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #15
  %19 = load ptr, ptr %16, align 8, !tbaa !142
  %20 = call ptr %19(ptr noundef nonnull %3) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 13
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi ptr [ %20, %22 ], [ %34, %24 ]
  %26 = load i8, ptr %23, align 8, !tbaa !145
  %27 = icmp eq i8 %26, 0
  %28 = getelementptr inbounds %struct.BMHeader, ptr %25, i64 0, i32 3
  %29 = load i8, ptr %28, align 1, !tbaa !123
  %30 = and i8 %29, -9
  %31 = select i1 %27, i8 0, i8 8
  %32 = or disjoint i8 %30, %31
  store i8 %32, ptr %28, align 1, !tbaa !123
  %33 = load ptr, ptr %16, align 8, !tbaa !142
  %34 = call ptr %33(ptr noundef nonnull %3) #15
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %24, !llvm.loop !146

36:                                               ; preds = %24, %13
  %37 = icmp eq i8 %1, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %36
  %39 = load ptr, ptr %6, align 8, !tbaa !138
  %40 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 14
  %41 = load ptr, ptr %40, align 8, !tbaa !147
  call void @BM_log_mesh_elems_reorder(ptr noundef %39, ptr noundef %41) #15
  br label %42

42:                                               ; preds = %38, %36
  %43 = load ptr, ptr %6, align 8, !tbaa !138
  %44 = load ptr, ptr %10, align 8, !tbaa !104
  call void @BM_mesh_bm_to_me(ptr noundef %43, ptr noundef %44, i8 noundef zeroext 0) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  br label %45

45:                                               ; preds = %9, %42, %2
  ret void
}

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sculptsession_bm_to_me_for_render(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca %struct.BMIter, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %55, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !137
  %7 = icmp eq ptr %6, null
  br i1 %7, label %55, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.SculptSession, ptr %6, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !138
  %11 = icmp eq ptr %10, null
  br i1 %11, label %55, label %12

12:                                               ; preds = %8
  tail call void @BKE_object_free_derived_caches(ptr noundef nonnull %0) #15
  %13 = load ptr, ptr %5, align 8, !tbaa !137
  %14 = getelementptr inbounds %struct.SculptSession, ptr %13, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !148
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  tail call void @BKE_pbvh_free(ptr noundef nonnull %15) #15
  %18 = load ptr, ptr %5, align 8, !tbaa !137
  %19 = getelementptr inbounds %struct.SculptSession, ptr %18, i64 0, i32 15
  store ptr null, ptr %19, align 8, !tbaa !148
  br label %20

20:                                               ; preds = %17, %12
  %21 = load ptr, ptr %5, align 8, !tbaa !137
  %22 = getelementptr inbounds %struct.SculptSession, ptr %21, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !138
  %24 = icmp eq ptr %23, null
  br i1 %24, label %55, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !104
  %28 = icmp eq ptr %27, null
  br i1 %28, label %55, label %29

29:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #15
  %30 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  store i8 3, ptr %30, align 4, !tbaa !139
  %31 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %31, align 8, !tbaa !141
  %32 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %32, align 8, !tbaa !142
  %33 = getelementptr inbounds %struct.BMesh, ptr %23, i64 0, i32 12
  %34 = load ptr, ptr %33, align 8, !tbaa !143
  store ptr %34, ptr %2, align 8, !tbaa !110
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %2) #15
  %35 = load ptr, ptr %32, align 8, !tbaa !142
  %36 = call ptr %35(ptr noundef nonnull %2) #15
  %37 = icmp eq ptr %36, null
  br i1 %37, label %52, label %38

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.SculptSession, ptr %21, i64 0, i32 13
  br label %40

40:                                               ; preds = %40, %38
  %41 = phi ptr [ %36, %38 ], [ %50, %40 ]
  %42 = load i8, ptr %39, align 8, !tbaa !145
  %43 = icmp eq i8 %42, 0
  %44 = getelementptr inbounds %struct.BMHeader, ptr %41, i64 0, i32 3
  %45 = load i8, ptr %44, align 1, !tbaa !123
  %46 = and i8 %45, -9
  %47 = select i1 %43, i8 0, i8 8
  %48 = or disjoint i8 %46, %47
  store i8 %48, ptr %44, align 1, !tbaa !123
  %49 = load ptr, ptr %32, align 8, !tbaa !142
  %50 = call ptr %49(ptr noundef nonnull %2) #15
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %40, !llvm.loop !146

52:                                               ; preds = %40, %29
  %53 = load ptr, ptr %22, align 8, !tbaa !138
  %54 = load ptr, ptr %26, align 8, !tbaa !104
  call void @BM_mesh_bm_to_me(ptr noundef %53, ptr noundef %54, i8 noundef zeroext 0) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #15
  br label %55

55:                                               ; preds = %52, %25, %20, %8, %4, %1
  ret void
}

declare void @BKE_object_free_derived_caches(ptr noundef) local_unnamed_addr #6

declare void @BKE_pbvh_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @BKE_free_sculptsession(ptr noundef %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %70, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !137
  %6 = icmp eq ptr %5, null
  br i1 %6, label %70, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %9 = load ptr, ptr %8, align 8, !tbaa !149
  %10 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !138
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  tail call fastcc void @sculptsession_bm_to_me_update_data_only(ptr noundef nonnull %0, i8 noundef zeroext 1)
  tail call void @DAG_id_tag_update(ptr noundef nonnull %0, i16 noundef signext 2) #15
  %14 = load ptr, ptr %10, align 8, !tbaa !138
  tail call void @BM_mesh_free(ptr noundef %14) #15
  br label %15

15:                                               ; preds = %13, %7
  %16 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 15
  %17 = load ptr, ptr %16, align 8, !tbaa !148
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @BKE_pbvh_free(ptr noundef nonnull %17) #15
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 14
  %22 = load ptr, ptr %21, align 8, !tbaa !147
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @BM_log_free(ptr noundef nonnull %22) #15
  br label %25

25:                                               ; preds = %24, %20
  %26 = icmp eq ptr %9, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 81
  %29 = load ptr, ptr %28, align 8, !tbaa !150
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = tail call ptr %29(ptr noundef null, ptr noundef nonnull %9) #15
  br label %33

33:                                               ; preds = %31, %27, %25
  %34 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 23
  %35 = load ptr, ptr %34, align 8, !tbaa !152
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  tail call void %38(ptr noundef nonnull %35) #15
  br label %39

39:                                               ; preds = %37, %33
  %40 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 25
  %41 = load ptr, ptr %40, align 8, !tbaa !153
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @BKE_image_pool_free(ptr noundef nonnull %41) #15
  br label %44

44:                                               ; preds = %43, %39
  %45 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 26
  %46 = load ptr, ptr %45, align 8, !tbaa !154
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  tail call void %49(ptr noundef nonnull %46) #15
  br label %50

50:                                               ; preds = %48, %44
  %51 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 18
  %52 = load ptr, ptr %51, align 8, !tbaa !133
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  tail call void %55(ptr noundef nonnull %52) #15
  br label %56

56:                                               ; preds = %54, %50
  %57 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 19
  %58 = load ptr, ptr %57, align 8, !tbaa !135
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  tail call void %61(ptr noundef nonnull %58) #15
  br label %62

62:                                               ; preds = %60, %56
  %63 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 20
  %64 = load ptr, ptr %63, align 8, !tbaa !136
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  tail call void %67(ptr noundef nonnull %64) #15
  br label %68

68:                                               ; preds = %66, %62
  %69 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  tail call void %69(ptr noundef nonnull %5) #15
  store ptr null, ptr %4, align 8, !tbaa !137
  br label %70

70:                                               ; preds = %68, %3, %1
  ret void
}

declare void @BM_mesh_free(ptr noundef) local_unnamed_addr #6

declare void @BM_log_free(ptr noundef) local_unnamed_addr #6

declare void @BKE_image_pool_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_sculpt_multires_active(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = alloca %struct.VirtualModifierData, align 8
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %3) #15
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !137
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !138
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %9, %2
  %14 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 25
  %15 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %14, i32 noundef 19) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %40, label %17

17:                                               ; preds = %13
  %18 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %3) #15
  %19 = icmp eq ptr %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %17, %36
  %21 = phi ptr [ %37, %36 ], [ undef, %17 ]
  %22 = phi ptr [ %38, %36 ], [ %18, %17 ]
  %23 = getelementptr inbounds %struct.ModifierData, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !155
  %25 = icmp eq i32 %24, 29
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %22, i32 noundef 1) #15
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.MultiresModifierData, ptr %22, i64 0, i32 2
  %31 = load i8, ptr %30, align 1, !tbaa !157
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, ptr null, ptr %22
  br label %34

34:                                               ; preds = %29, %26
  %35 = phi ptr [ %21, %26 ], [ %33, %29 ]
  br i1 %28, label %36, label %40

36:                                               ; preds = %20, %34
  %37 = phi ptr [ %35, %34 ], [ %21, %20 ]
  %38 = load ptr, ptr %22, align 8, !tbaa !159
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %20, !llvm.loop !160

40:                                               ; preds = %34, %36, %17, %13, %9
  %41 = phi ptr [ null, %9 ], [ null, %13 ], [ null, %17 ], [ null, %36 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %3) #15
  ret ptr %41
}

declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @modifiers_getVirtualModifierList(ptr noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i8 @modifier_isEnabled(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sculpt_update_mesh_elements(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #5 {
  %6 = alloca %struct.VirtualModifierData, align 8
  %7 = alloca %struct.VirtualModifierData, align 8
  %8 = alloca %struct.VirtualModifierData, align 8
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !137
  %11 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %7) #15
  %13 = icmp eq ptr %10, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !138
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %45

18:                                               ; preds = %14, %5
  %19 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 25
  %20 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %19, i32 noundef 19) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %45, label %22

22:                                               ; preds = %18
  %23 = call ptr @modifiers_getVirtualModifierList(ptr noundef %2, ptr noundef nonnull %7) #15
  %24 = icmp eq ptr %23, null
  br i1 %24, label %45, label %25

25:                                               ; preds = %22, %41
  %26 = phi ptr [ %42, %41 ], [ undef, %22 ]
  %27 = phi ptr [ %43, %41 ], [ %23, %22 ]
  %28 = getelementptr inbounds %struct.ModifierData, ptr %27, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !155
  %30 = icmp eq i32 %29, 29
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %27, i32 noundef 1) #15
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.MultiresModifierData, ptr %27, i64 0, i32 2
  %36 = load i8, ptr %35, align 1, !tbaa !157
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %37, ptr null, ptr %27
  br label %39

39:                                               ; preds = %34, %31
  %40 = phi ptr [ %26, %31 ], [ %38, %34 ]
  br i1 %33, label %41, label %45

41:                                               ; preds = %39, %25
  %42 = phi ptr [ %40, %39 ], [ %26, %25 ]
  %43 = load ptr, ptr %27, align 8, !tbaa !159
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %25, !llvm.loop !160

45:                                               ; preds = %39, %41, %14, %18, %22
  %46 = phi ptr [ null, %14 ], [ null, %18 ], [ null, %22 ], [ null, %41 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %7) #15
  %47 = load ptr, ptr %11, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %6) #15
  %48 = load ptr, ptr %9, align 8, !tbaa !137
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.SculptSession, ptr %48, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !138
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %81

54:                                               ; preds = %50, %45
  %55 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 25
  %56 = call ptr @CustomData_get_layer(ptr noundef nonnull %55, i32 noundef 19) #15
  %57 = icmp eq ptr %56, null
  br i1 %57, label %81, label %58

58:                                               ; preds = %54
  %59 = call ptr @modifiers_getVirtualModifierList(ptr noundef %2, ptr noundef nonnull %6) #15
  %60 = icmp eq ptr %59, null
  br i1 %60, label %81, label %61

61:                                               ; preds = %58, %77
  %62 = phi ptr [ %78, %77 ], [ undef, %58 ]
  %63 = phi ptr [ %79, %77 ], [ %59, %58 ]
  %64 = getelementptr inbounds %struct.ModifierData, ptr %63, i64 0, i32 2
  %65 = load i32, ptr %64, align 8, !tbaa !155
  %66 = icmp eq i32 %65, 29
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %63, i32 noundef 1) #15
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.MultiresModifierData, ptr %63, i64 0, i32 2
  %72 = load i8, ptr %71, align 1, !tbaa !157
  %73 = icmp eq i8 %72, 0
  %74 = select i1 %73, ptr null, ptr %63
  br label %75

75:                                               ; preds = %70, %67
  %76 = phi ptr [ %62, %67 ], [ %74, %70 ]
  br i1 %69, label %77, label %81

77:                                               ; preds = %75, %61
  %78 = phi ptr [ %76, %75 ], [ %62, %61 ]
  %79 = load ptr, ptr %63, align 8, !tbaa !159
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %61, !llvm.loop !160

81:                                               ; preds = %75, %77, %50, %54, %58
  %82 = phi ptr [ null, %50 ], [ null, %54 ], [ null, %58 ], [ null, %77 ], [ %76, %75 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %8) #15
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %130

84:                                               ; preds = %81
  %85 = load ptr, ptr %9, align 8, !tbaa !137
  %86 = getelementptr inbounds %struct.SculptSession, ptr %85, i64 0, i32 10
  %87 = load ptr, ptr %86, align 8, !tbaa !138
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %130

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 114
  %91 = load i8, ptr %90, align 1, !tbaa !161
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !162
  %97 = icmp eq ptr %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 115
  %100 = load i16, ptr %99, align 2, !tbaa !163
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %102, label %130

102:                                              ; preds = %98, %94, %89
  %103 = call ptr @modifiers_getVirtualModifierList(ptr noundef %2, ptr noundef nonnull %8) #15
  %104 = icmp eq ptr %103, null
  br i1 %104, label %130, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.Sculpt, ptr %1, i64 0, i32 1
  br label %107

107:                                              ; preds = %105, %127
  %108 = phi ptr [ %103, %105 ], [ %128, %127 ]
  %109 = getelementptr inbounds %struct.ModifierData, ptr %108, i64 0, i32 2
  %110 = load i32, ptr %109, align 8, !tbaa !155
  %111 = call ptr @modifierType_getInfo(i32 noundef %110) #15
  %112 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %108, i32 noundef 1) #15
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %125, label %114

114:                                              ; preds = %107
  %115 = load i32, ptr %109, align 8, !tbaa !155
  switch i32 %115, label %116 [
    i32 32, label %125
    i32 29, label %125
  ]

116:                                              ; preds = %114
  %117 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %111, i64 0, i32 3
  %118 = load i32, ptr %117, align 4, !tbaa !164
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %125, label %120

120:                                              ; preds = %116
  %121 = load i32, ptr %106, align 8, !tbaa !166
  %122 = lshr i32 %121, 8
  %123 = and i32 %122, 1
  %124 = xor i32 %123, 1
  br label %125

125:                                              ; preds = %120, %116, %114, %114, %107
  %126 = phi i32 [ 4, %107 ], [ 4, %114 ], [ 4, %114 ], [ 1, %116 ], [ %124, %120 ]
  switch i32 %126, label %130 [
    i32 0, label %127
    i32 4, label %127
  ]

127:                                              ; preds = %125, %125
  %128 = load ptr, ptr %108, align 8, !tbaa !159
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %107, !llvm.loop !168

130:                                              ; preds = %125, %127, %102, %81, %84, %98
  %131 = phi i8 [ 0, %84 ], [ 0, %81 ], [ 1, %98 ], [ 0, %102 ], [ 0, %127 ], [ 1, %125 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %8) #15
  %132 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 17
  store i8 %131, ptr %132, align 1, !tbaa !169
  %133 = getelementptr inbounds %struct.Sculpt, ptr %1, i64 0, i32 1
  %134 = load i32, ptr %133, align 8, !tbaa !166
  %135 = lshr i32 %134, 9
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  %138 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 16
  store i8 %137, ptr %138, align 8, !tbaa !170
  %139 = icmp eq i8 %4, 0
  br i1 %139, label %161, label %140

140:                                              ; preds = %130
  %141 = icmp eq ptr %46, null
  br i1 %141, label %142, label %155

142:                                              ; preds = %140
  %143 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 21
  %144 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %143, i32 noundef 34) #15
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %146, label %161

146:                                              ; preds = %142
  %147 = load ptr, ptr %11, align 8, !tbaa !104
  %148 = getelementptr inbounds %struct.Mesh, ptr %147, i64 0, i32 21
  %149 = call ptr @CustomData_get_layer(ptr noundef nonnull %148, i32 noundef 34) #15
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %161

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.Mesh, ptr %147, i64 0, i32 26
  %153 = load i32, ptr %152, align 8, !tbaa !171
  %154 = call ptr @CustomData_add_layer(ptr noundef nonnull %148, i32 noundef 34, i32 noundef 1, ptr noundef null, i32 noundef %153) #15
  br label %161

155:                                              ; preds = %140
  %156 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 25
  %157 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %156, i32 noundef 35) #15
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = call i32 @BKE_sculpt_mask_layers_ensure(ptr noundef %2, ptr noundef nonnull %46)
  br label %161

161:                                              ; preds = %151, %146, %142, %159, %155, %130
  call void @BKE_mesh_tessface_ensure(ptr noundef %12) #15
  %162 = icmp eq ptr %46, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %161
  %164 = call ptr @BKE_keyblock_from_object(ptr noundef %2) #15
  br label %165

165:                                              ; preds = %161, %163
  %166 = phi ptr [ %164, %163 ], [ null, %161 ]
  %167 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 7
  store ptr %166, ptr %167, align 8, !tbaa !172
  %168 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !173
  %169 = call ptr @mesh_get_derived_final(ptr noundef %0, ptr noundef %2, i64 noundef %168) #15
  br i1 %162, label %181, label %170

170:                                              ; preds = %165
  store ptr %46, ptr %10, align 8, !tbaa !174
  %171 = getelementptr inbounds %struct.DerivedMesh, ptr %169, i64 0, i32 23
  %172 = load ptr, ptr %171, align 8, !tbaa !175
  %173 = call i32 %172(ptr noundef %169) #15
  %174 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 4
  store i32 %173, ptr %174, align 8, !tbaa !176
  %175 = getelementptr inbounds %struct.DerivedMesh, ptr %169, i64 0, i32 27
  %176 = load ptr, ptr %175, align 8, !tbaa !177
  %177 = call i32 %176(ptr noundef %169) #15
  %178 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 5
  store i32 %177, ptr %178, align 4, !tbaa !178
  %179 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 1
  %180 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 6
  store ptr null, ptr %180, align 8, !tbaa !179
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %179, i8 0, i64 24, i1 false)
  br label %201

181:                                              ; preds = %165
  %182 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 26
  %183 = load i32, ptr %182, align 8, !tbaa !171
  %184 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 4
  store i32 %183, ptr %184, align 8, !tbaa !176
  %185 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 30
  %186 = load i32, ptr %185, align 8, !tbaa !180
  %187 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 5
  store i32 %186, ptr %187, align 4, !tbaa !178
  %188 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 15
  %189 = load ptr, ptr %188, align 8, !tbaa !181
  %190 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 1
  store ptr %189, ptr %190, align 8, !tbaa !182
  %191 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 7
  %192 = load ptr, ptr %191, align 8, !tbaa !183
  %193 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 2
  store ptr %192, ptr %193, align 8, !tbaa !184
  %194 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 9
  %195 = load ptr, ptr %194, align 8, !tbaa !185
  %196 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 3
  store ptr %195, ptr %196, align 8, !tbaa !186
  %197 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 6
  store ptr null, ptr %197, align 8, !tbaa !179
  store ptr null, ptr %10, align 8, !tbaa !174
  %198 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 21
  %199 = call ptr @CustomData_get_layer(ptr noundef nonnull %198, i32 noundef 34) #15
  %200 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 8
  store ptr %199, ptr %200, align 8, !tbaa !187
  br label %201

201:                                              ; preds = %181, %170
  %202 = getelementptr inbounds %struct.DerivedMesh, ptr %169, i64 0, i32 81
  %203 = load ptr, ptr %202, align 8, !tbaa !150
  %204 = call ptr %203(ptr noundef %2, ptr noundef %169) #15
  %205 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 15
  store ptr %204, ptr %205, align 8, !tbaa !148
  %206 = icmp eq i8 %3, 0
  br i1 %206, label %213, label %207

207:                                              ; preds = %201
  %208 = getelementptr inbounds %struct.DerivedMesh, ptr %169, i64 0, i32 80
  %209 = load ptr, ptr %208, align 8, !tbaa !188
  %210 = icmp eq ptr %209, null
  br i1 %210, label %213, label %211

211:                                              ; preds = %207
  %212 = call ptr %209(ptr noundef %2, ptr noundef %169) #15
  br label %213

213:                                              ; preds = %201, %207, %211
  %214 = phi ptr [ %212, %211 ], [ null, %207 ], [ null, %201 ]
  %215 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 9
  store ptr %214, ptr %215, align 8, !tbaa !189
  %216 = load ptr, ptr %205, align 8, !tbaa !148
  %217 = load i8, ptr %138, align 8, !tbaa !170
  call void @pbvh_show_diffuse_color_set(ptr noundef %216, i8 noundef zeroext %217) #15
  %218 = load i8, ptr %132, align 1, !tbaa !169
  %219 = icmp eq i8 %218, 0
  %220 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 18
  %221 = load ptr, ptr %220, align 8, !tbaa !133
  %222 = icmp eq ptr %221, null
  br i1 %219, label %260, label %223

223:                                              ; preds = %213
  br i1 %222, label %224, label %276

224:                                              ; preds = %223
  %225 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 19
  %226 = load ptr, ptr %225, align 8, !tbaa !135
  %227 = icmp eq ptr %226, null
  br i1 %227, label %230, label %228

228:                                              ; preds = %224
  %229 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  call void %229(ptr noundef nonnull %226) #15
  br label %230

230:                                              ; preds = %228, %224
  %231 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 20
  %232 = load ptr, ptr %231, align 8, !tbaa !136
  %233 = icmp eq ptr %232, null
  br i1 %233, label %236, label %234

234:                                              ; preds = %230
  %235 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  call void %235(ptr noundef nonnull %232) #15
  br label %236

236:                                              ; preds = %230, %234
  %237 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %220, i8 0, i64 24, i1 false)
  %238 = load ptr, ptr %237, align 8, !tbaa !172
  %239 = icmp eq ptr %238, null
  br i1 %239, label %242, label %240

240:                                              ; preds = %236
  %241 = call ptr @BKE_key_convert_to_vertcos(ptr noundef %2, ptr noundef nonnull %238) #15
  br label %244

242:                                              ; preds = %236
  %243 = call ptr @BKE_mesh_vertexCos_get(ptr noundef %12, ptr noundef null) #15
  br label %244

244:                                              ; preds = %242, %240
  %245 = phi ptr [ %241, %240 ], [ %243, %242 ]
  store ptr %245, ptr %220, align 8, !tbaa !133
  call void @BKE_crazyspace_build_sculpt(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %231, ptr noundef nonnull %225) #15
  %246 = load ptr, ptr %205, align 8, !tbaa !148
  %247 = load ptr, ptr %225, align 8, !tbaa !135
  call void @BKE_pbvh_apply_vertCos(ptr noundef %246, ptr noundef %247) #15
  %248 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 26
  %249 = load i32, ptr %248, align 8, !tbaa !171
  %250 = icmp sgt i32 %249, 0
  br i1 %250, label %251, label %276

251:                                              ; preds = %244, %251
  %252 = phi i64 [ %256, %251 ], [ 0, %244 ]
  %253 = load ptr, ptr %231, align 8, !tbaa !136
  %254 = getelementptr inbounds [3 x [3 x float]], ptr %253, i64 %252
  %255 = call zeroext i8 @invert_m3(ptr noundef %254) #15
  %256 = add nuw nsw i64 %252, 1
  %257 = load i32, ptr %248, align 8, !tbaa !171
  %258 = sext i32 %257 to i64
  %259 = icmp slt i64 %256, %258
  br i1 %259, label %251, label %276, !llvm.loop !190

260:                                              ; preds = %213
  br i1 %222, label %263, label %261

261:                                              ; preds = %260
  %262 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  call void %262(ptr noundef nonnull %221) #15
  br label %263

263:                                              ; preds = %261, %260
  %264 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 19
  %265 = load ptr, ptr %264, align 8, !tbaa !135
  %266 = icmp eq ptr %265, null
  br i1 %266, label %269, label %267

267:                                              ; preds = %263
  %268 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  call void %268(ptr noundef nonnull %265) #15
  br label %269

269:                                              ; preds = %267, %263
  %270 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 20
  %271 = load ptr, ptr %270, align 8, !tbaa !136
  %272 = icmp eq ptr %271, null
  br i1 %272, label %275, label %273

273:                                              ; preds = %269
  %274 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  call void %274(ptr noundef nonnull %271) #15
  br label %275

275:                                              ; preds = %269, %273
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %220, i8 0, i64 24, i1 false)
  br label %276

276:                                              ; preds = %251, %244, %223, %275
  %277 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 7
  %278 = load ptr, ptr %277, align 8, !tbaa !172
  %279 = icmp eq ptr %278, null
  br i1 %279, label %286, label %280

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 19
  %282 = load ptr, ptr %281, align 8, !tbaa !135
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %286

284:                                              ; preds = %280
  %285 = call ptr @BKE_key_convert_to_vertcos(ptr noundef %2, ptr noundef nonnull %278) #15
  store ptr %285, ptr %281, align 8, !tbaa !135
  br label %286

286:                                              ; preds = %284, %280, %276
  %287 = load ptr, ptr %277, align 8, !tbaa !172
  %288 = icmp eq ptr %287, null
  br i1 %288, label %314, label %289

289:                                              ; preds = %286
  %290 = load ptr, ptr %205, align 8, !tbaa !148
  %291 = call zeroext i8 @BKE_pbvh_isDeformed(ptr noundef %290) #15
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %297, label %293

293:                                              ; preds = %289
  %294 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 19
  %295 = load ptr, ptr %294, align 8, !tbaa !135
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %314

297:                                              ; preds = %293, %289
  %298 = load ptr, ptr %277, align 8, !tbaa !172
  %299 = call ptr @BKE_key_convert_to_vertcos(ptr noundef %2, ptr noundef %298) #15
  %300 = icmp eq ptr %299, null
  br i1 %300, label %314, label %301

301:                                              ; preds = %297
  br i1 %292, label %302, label %304

302:                                              ; preds = %301
  %303 = load ptr, ptr %205, align 8, !tbaa !148
  call void @BKE_pbvh_apply_vertCos(ptr noundef %303, ptr noundef nonnull %299) #15
  br label %304

304:                                              ; preds = %302, %301
  %305 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 19
  %306 = load ptr, ptr %305, align 8, !tbaa !135
  %307 = icmp eq ptr %306, null
  br i1 %307, label %308, label %309

308:                                              ; preds = %304
  store ptr %299, ptr %305, align 8, !tbaa !135
  br label %309

309:                                              ; preds = %308, %304
  %310 = load ptr, ptr %305, align 8, !tbaa !135
  %311 = icmp eq ptr %299, %310
  br i1 %311, label %314, label %312

312:                                              ; preds = %309
  %313 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  call void %313(ptr noundef nonnull %299) #15
  br label %314

314:                                              ; preds = %293, %309, %312, %297, %286
  ret void
}

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_sculpt_mask_layers_ensure(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 21
  %6 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %5, i32 noundef 34) #15
  %7 = icmp eq ptr %1, null
  br i1 %7, label %128, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 25
  %10 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %9, i32 noundef 35) #15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %128

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 2
  %14 = load i8, ptr %13, align 1, !tbaa !157
  %15 = zext i8 %14 to i32
  %16 = tail call i32 @llvm.smax.i32(i32 %15, i32 1)
  %17 = tail call i32 @BKE_ccg_gridsize(i32 noundef %16) #15
  %18 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 31
  %19 = load i32, ptr %18, align 4, !tbaa !191
  %20 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %9, i32 noundef 35, i32 noundef 1, ptr noundef null, i32 noundef %19) #15
  %21 = load i32, ptr %18, align 4, !tbaa !191
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %12
  %24 = mul nsw i32 %17, %17
  %25 = zext nneg i32 %24 to i64
  %26 = shl nuw nsw i64 %25, 2
  br label %27

27:                                               ; preds = %23, %27
  %28 = phi i64 [ 0, %23 ], [ %33, %27 ]
  %29 = getelementptr inbounds %struct.GridPaintMask, ptr %20, i64 %28
  %30 = getelementptr inbounds %struct.GridPaintMask, ptr %20, i64 %28, i32 1
  store i32 %16, ptr %30, align 8, !tbaa !128
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !95
  %32 = tail call ptr %31(i64 noundef %26, ptr noundef nonnull @.str.2) #15
  store ptr %32, ptr %29, align 8, !tbaa !130
  %33 = add nuw nsw i64 %28, 1
  %34 = load i32, ptr %18, align 4, !tbaa !191
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %33, %35
  br i1 %36, label %27, label %37, !llvm.loop !192

37:                                               ; preds = %27, %12
  %38 = icmp eq ptr %6, null
  br i1 %38, label %128, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 30
  %41 = load i32, ptr %40, align 8, !tbaa !180
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %128

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !183
  %46 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 9
  %47 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 9
  %48 = zext nneg i32 %41 to i64
  br label %49

49:                                               ; preds = %43, %125
  %50 = phi i64 [ 0, %43 ], [ %126, %125 ]
  %51 = getelementptr inbounds %struct.MPoly, ptr %45, i64 %50
  %52 = getelementptr inbounds %struct.MPoly, ptr %45, i64 %50, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !193
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %49
  %56 = load ptr, ptr %46, align 8, !tbaa !185
  %57 = load i32, ptr %51, align 4, !tbaa !195
  %58 = sext i32 %57 to i64
  %59 = zext nneg i32 %53 to i64
  %60 = getelementptr %struct.MLoop, ptr %56, i64 %58
  br label %61

61:                                               ; preds = %55, %61
  %62 = phi i64 [ 0, %55 ], [ %70, %61 ]
  %63 = phi float [ 0.000000e+00, %55 ], [ %69, %61 ]
  %64 = getelementptr %struct.MLoop, ptr %60, i64 %62
  %65 = load i32, ptr %64, align 4, !tbaa !196
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds float, ptr %6, i64 %66
  %68 = load float, ptr %67, align 4, !tbaa !131
  %69 = fadd float %63, %68
  %70 = add nuw nsw i64 %62, 1
  %71 = icmp eq i64 %70, %59
  br i1 %71, label %72, label %61, !llvm.loop !198

72:                                               ; preds = %61, %49
  %73 = phi float [ 0.000000e+00, %49 ], [ %69, %61 ]
  %74 = sitofp i32 %53 to float
  %75 = fdiv float %73, %74
  %76 = icmp sgt i32 %53, 0
  br i1 %76, label %77, label %125

77:                                               ; preds = %72
  %78 = load i32, ptr %51, align 4, !tbaa !195
  %79 = load ptr, ptr %47, align 8, !tbaa !185
  %80 = add nsw i32 %53, -1
  %81 = sext i32 %78 to i64
  %82 = zext nneg i32 %53 to i64
  %83 = zext nneg i32 %53 to i64
  br label %84

84:                                               ; preds = %77, %84
  %85 = phi i64 [ 0, %77 ], [ %95, %84 ]
  %86 = add nsw i64 %85, %81
  %87 = getelementptr inbounds %struct.GridPaintMask, ptr %20, i64 %86
  %88 = getelementptr inbounds %struct.MLoop, ptr %79, i64 %86
  %89 = trunc i64 %85 to i32
  %90 = add i32 %80, %89
  %91 = srem i32 %90, %53
  %92 = add nsw i32 %91, %78
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.MLoop, ptr %79, i64 %93
  %95 = add nuw nsw i64 %85, 1
  %96 = icmp eq i64 %95, %82
  %97 = trunc i64 %95 to i32
  %98 = select i1 %96, i32 0, i32 %97
  %99 = add nsw i32 %98, %78
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.MLoop, ptr %79, i64 %100
  %102 = load ptr, ptr %87, align 8, !tbaa !130
  store float %75, ptr %102, align 4, !tbaa !131
  %103 = load i32, ptr %88, align 4, !tbaa !196
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds float, ptr %6, i64 %104
  %106 = load float, ptr %105, align 4, !tbaa !131
  %107 = load i32, ptr %101, align 4, !tbaa !196
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds float, ptr %6, i64 %108
  %110 = load float, ptr %109, align 4, !tbaa !131
  %111 = fadd float %106, %110
  %112 = fmul float %111, 5.000000e-01
  %113 = getelementptr inbounds float, ptr %102, i64 1
  store float %112, ptr %113, align 4, !tbaa !131
  %114 = load float, ptr %105, align 4, !tbaa !131
  %115 = load i32, ptr %94, align 4, !tbaa !196
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds float, ptr %6, i64 %116
  %118 = load float, ptr %117, align 4, !tbaa !131
  %119 = fadd float %114, %118
  %120 = fmul float %119, 5.000000e-01
  %121 = getelementptr inbounds float, ptr %102, i64 2
  store float %120, ptr %121, align 4, !tbaa !131
  %122 = load float, ptr %105, align 4, !tbaa !131
  %123 = getelementptr inbounds float, ptr %102, i64 3
  store float %122, ptr %123, align 4, !tbaa !131
  %124 = icmp eq i64 %95, %83
  br i1 %124, label %125, label %84, !llvm.loop !199

125:                                              ; preds = %84, %72
  %126 = add nuw nsw i64 %50, 1
  %127 = icmp eq i64 %126, %48
  br i1 %127, label %128, label %49, !llvm.loop !200

128:                                              ; preds = %125, %39, %37, %8, %2
  %129 = phi i32 [ 0, %8 ], [ 0, %2 ], [ 2, %37 ], [ 2, %39 ], [ 2, %125 ]
  %130 = icmp eq ptr %6, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 26
  %133 = load i32, ptr %132, align 8, !tbaa !171
  %134 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %5, i32 noundef 34, i32 noundef 1, ptr noundef null, i32 noundef %133) #15
  %135 = or disjoint i32 %129, 1
  br label %136

136:                                              ; preds = %131, %128
  %137 = phi i32 [ %129, %128 ], [ %135, %131 ]
  ret i32 %137
}

declare void @BKE_mesh_tessface_ensure(ptr noundef) local_unnamed_addr #6

declare ptr @BKE_keyblock_from_object(ptr noundef) local_unnamed_addr #6

declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @pbvh_show_diffuse_color_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

declare ptr @BKE_key_convert_to_vertcos(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @BKE_mesh_vertexCos_get(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @BKE_crazyspace_build_sculpt(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @BKE_pbvh_apply_vertCos(ptr noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i8 @invert_m3(ptr noundef) local_unnamed_addr #6

declare zeroext i8 @BKE_pbvh_isDeformed(ptr noundef) local_unnamed_addr #6

declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

declare void @BM_log_mesh_elems_reorder(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @BM_mesh_bm_to_me(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #6

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #6

declare ptr @modifierType_getInfo(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }

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
!34 = !{!35, !37, i64 264}
!35 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !42, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !43, i64 280, !53, i64 4264, !42, i64 4296, !42, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !42, i64 4384, !54, i64 4400, !55, i64 4416, !58, i64 4600, !37, i64 4608, !59, i64 4616, !37, i64 4640, !60, i64 4648, !60, i64 4656, !46, i64 4664, !47, i64 4824, !61, i64 4888, !37, i64 4952}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"ListBase", !37, i64 0, !37, i64 8}
!43 = !{!"RenderData", !44, i64 0, !37, i64 248, !37, i64 256, !48, i64 264, !49, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !45, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !45, i64 436, !45, i64 440, !45, i64 444, !45, i64 448, !45, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !50, i64 544, !50, i64 560, !51, i64 576, !42, i64 592, !40, i64 608, !40, i64 610, !45, i64 612, !45, i64 616, !45, i64 620, !45, i64 624, !41, i64 628, !45, i64 632, !45, i64 636, !45, i64 640, !45, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !45, i64 660, !45, i64 664, !40, i64 668, !40, i64 670, !45, i64 672, !45, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !45, i64 2528, !45, i64 2532, !40, i64 2536, !40, i64 2538, !45, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !45, i64 2560, !45, i64 2564, !37, i64 2568, !41, i64 2576, !45, i64 2580, !38, i64 2584, !52, i64 2616, !41, i64 3976, !41, i64 3980}
!44 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !45, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !46, i64 24, !47, i64 184}
!45 = !{!"float", !38, i64 0}
!46 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !45, i64 136, !45, i64 140, !37, i64 144, !37, i64 152}
!47 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!48 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!49 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !45, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!50 = !{!"rctf", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!51 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!52 = !{!"BakeData", !44, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !45, i64 1280, !45, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!53 = !{!"AudioData", !41, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !45, i64 24, !45, i64 28}
!54 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!55 = !{!"GameData", !54, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !56, i64 40, !40, i64 64, !40, i64 66, !45, i64 68, !57, i64 72, !45, i64 128, !45, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180}
!56 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !45, i64 8, !45, i64 12, !37, i64 16}
!57 = !{!"RecastData", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !41, i64 40, !45, i64 44, !45, i64 48, !40, i64 52, !40, i64 54}
!58 = !{!"UnitSettings", !45, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!59 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!60 = !{!"long", !38, i64 0}
!61 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!62 = !{!35, !37, i64 168}
!63 = !{!64, !37, i64 32}
!64 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!65 = !{!66, !41, i64 432}
!66 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !67, i64 312, !37, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !45, i64 616, !45, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !45, i64 988, !45, i64 992, !45, i64 996, !45, i64 1000, !45, i64 1004, !45, i64 1008, !45, i64 1012, !45, i64 1016, !45, i64 1020, !45, i64 1024, !45, i64 1028, !45, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !45, i64 1048, !45, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !45, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !45, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !60, i64 1304, !60, i64 1312, !41, i64 1320, !41, i64 1324, !42, i64 1328, !42, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !42, i64 1400, !37, i64 1416}
!67 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!68 = !{!69, !37, i64 16}
!69 = !{!"ToolSettings", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !45, i64 32, !45, i64 36, !45, i64 40, !40, i64 44, !40, i64 46, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !45, i64 52, !40, i64 56, !38, i64 58, !38, i64 59, !70, i64 64, !72, i64 168, !45, i64 336, !45, i64 340, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 349, !40, i64 350, !45, i64 352, !45, i64 356, !45, i64 360, !45, i64 364, !45, i64 368, !45, i64 372, !45, i64 376, !45, i64 380, !45, i64 384, !45, i64 388, !40, i64 392, !38, i64 394, !38, i64 395, !38, i64 396, !38, i64 399, !37, i64 400, !38, i64 408, !38, i64 409, !38, i64 410, !38, i64 411, !38, i64 412, !38, i64 413, !38, i64 421, !38, i64 429, !38, i64 430, !38, i64 431, !38, i64 432, !38, i64 433, !40, i64 434, !40, i64 436, !40, i64 438, !40, i64 440, !38, i64 442, !38, i64 443, !38, i64 444, !38, i64 445, !38, i64 446, !38, i64 447, !41, i64 448, !41, i64 452, !41, i64 456, !41, i64 460, !40, i64 464, !40, i64 466, !41, i64 468, !45, i64 472, !45, i64 476, !73, i64 480, !74, i64 608}
!70 = !{!"ImagePaintSettings", !71, i64 0, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !38, i64 48, !41, i64 52, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !38, i64 88, !45, i64 100}
!71 = !{!"Paint", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!72 = !{!"ParticleEditSettings", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !38, i64 8, !37, i64 120, !45, i64 128, !45, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !37, i64 152, !37, i64 160}
!73 = !{!"UnifiedPaintSettings", !41, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !38, i64 16, !38, i64 28, !41, i64 40, !38, i64 44, !45, i64 52, !41, i64 56, !41, i64 60, !38, i64 64, !38, i64 65, !45, i64 72, !38, i64 76, !41, i64 84, !45, i64 88, !38, i64 92, !38, i64 100, !41, i64 108, !37, i64 112, !45, i64 120, !41, i64 124}
!74 = !{!"MeshStatVis", !38, i64 0, !38, i64 1, !38, i64 3, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !38, i64 20, !38, i64 21, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36}
!75 = !{!69, !37, i64 0}
!76 = !{!69, !37, i64 8}
!77 = !{!69, !41, i64 448}
!78 = !{!69, !37, i64 24}
!79 = !{!71, !37, i64 0}
!80 = !{!81, !37, i64 168}
!81 = !{!"Brush", !36, i64 0, !82, i64 120, !37, i64 144, !83, i64 152, !83, i64 464, !37, i64 776, !37, i64 784, !37, i64 792, !37, i64 800, !37, i64 808, !38, i64 816, !45, i64 1840, !40, i64 1844, !40, i64 1846, !45, i64 1848, !41, i64 1852, !41, i64 1856, !41, i64 1860, !45, i64 1864, !41, i64 1868, !41, i64 1872, !41, i64 1876, !41, i64 1880, !45, i64 1884, !45, i64 1888, !38, i64 1892, !45, i64 1904, !38, i64 1908, !41, i64 1920, !45, i64 1924, !45, i64 1928, !41, i64 1932, !41, i64 1936, !41, i64 1940, !38, i64 1944, !38, i64 1945, !38, i64 1946, !38, i64 1947, !45, i64 1948, !45, i64 1952, !45, i64 1956, !45, i64 1960, !45, i64 1964, !41, i64 1968, !41, i64 1972, !41, i64 1976, !45, i64 1980, !45, i64 1984, !41, i64 1988, !41, i64 1992, !45, i64 1996, !38, i64 2000, !38, i64 2012, !38, i64 2024, !38, i64 2032, !38, i64 2040, !38, i64 2048}
!82 = !{!"BrushClone", !37, i64 0, !38, i64 8, !45, i64 16, !45, i64 20}
!83 = !{!"MTex", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 88, !38, i64 89, !38, i64 90, !38, i64 91, !38, i64 92, !38, i64 104, !45, i64 116, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !40, i64 128, !40, i64 130, !38, i64 132, !38, i64 133, !45, i64 140, !45, i64 144, !45, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !45, i64 188, !45, i64 192, !45, i64 196, !45, i64 200, !45, i64 204, !45, i64 208, !45, i64 212, !45, i64 216, !45, i64 220, !45, i64 224, !45, i64 228, !45, i64 232, !45, i64 236, !45, i64 240, !45, i64 244, !45, i64 248, !45, i64 252, !45, i64 256, !45, i64 260, !45, i64 264, !45, i64 268, !45, i64 272, !45, i64 276, !45, i64 280, !45, i64 284, !45, i64 288, !45, i64 292, !45, i64 296, !45, i64 300, !45, i64 304, !45, i64 308}
!84 = !{!41, !41, i64 0}
!85 = !{!81, !37, i64 480}
!86 = !{!81, !37, i64 144}
!87 = !{!88, !38, i64 10556}
!88 = !{!"SpaceImage", !37, i64 0, !37, i64 8, !42, i64 16, !41, i64 32, !41, i64 36, !37, i64 40, !89, i64 48, !37, i64 88, !90, i64 96, !91, i64 5360, !37, i64 10520, !38, i64 10528, !45, i64 10536, !45, i64 10540, !45, i64 10544, !45, i64 10548, !45, i64 10552, !38, i64 10556, !38, i64 10557, !40, i64 10558, !40, i64 10560, !40, i64 10562, !38, i64 10564, !38, i64 10565, !38, i64 10566, !38, i64 10567, !92, i64 10568}
!89 = !{!"ImageUser", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !38, i64 24, !38, i64 25, !38, i64 26, !38, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !41, i64 36}
!90 = !{!"Scopes", !41, i64 0, !41, i64 4, !41, i64 8, !45, i64 12, !41, i64 16, !45, i64 20, !45, i64 24, !41, i64 28, !45, i64 32, !41, i64 36, !38, i64 40, !91, i64 64, !37, i64 5224, !37, i64 5232, !37, i64 5240, !37, i64 5248, !41, i64 5256, !41, i64 5260}
!91 = !{!"Histogram", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 3080, !38, i64 4104, !45, i64 5128, !45, i64 5132, !40, i64 5136, !40, i64 5138, !41, i64 5140, !38, i64 5144}
!92 = !{!"MaskSpaceInfo", !37, i64 0, !38, i64 8, !38, i64 9, !38, i64 10, !38, i64 11}
!93 = !{!94, !37, i64 120}
!94 = !{!"PaintCurve", !36, i64 0, !37, i64 120, !41, i64 128, !41, i64 132}
!95 = !{!37, !37, i64 0}
!96 = !{!94, !41, i64 128}
!97 = !{!71, !37, i64 8}
!98 = !{!81, !37, i64 808}
!99 = !{!100, !41, i64 152}
!100 = !{!"Palette", !36, i64 0, !42, i64 120, !42, i64 136, !41, i64 152, !41, i64 156}
!101 = !{!100, !40, i64 98}
!102 = !{!42, !37, i64 0}
!103 = !{!66, !40, i64 136}
!104 = !{!66, !37, i64 296}
!105 = !{!106, !38, i64 1365}
!106 = !{!"Mesh", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !107, i64 280, !107, i64 480, !107, i64 680, !107, i64 880, !107, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !45, i64 1352, !41, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !40, i64 1366, !37, i64 1368}
!107 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!108 = !{!109, !37, i64 0}
!109 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !42, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!110 = !{!38, !38, i64 0}
!111 = !{!112, !41, i64 0}
!112 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !38, i64 18, !38, i64 19}
!113 = !{!114, !38, i64 18}
!114 = !{!"MVert", !38, i64 0, !38, i64 12, !38, i64 18, !38, i64 19}
!115 = !{!112, !41, i64 4}
!116 = !{!112, !41, i64 8}
!117 = !{!112, !41, i64 12}
!118 = !{!119, !37, i64 24}
!119 = !{!"BMFace", !120, i64 0, !37, i64 16, !37, i64 24, !41, i64 32, !38, i64 36, !40, i64 48}
!120 = !{!"BMHeader", !37, i64 0, !41, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!121 = !{!122, !37, i64 16}
!122 = !{!"BMLoop", !120, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!123 = !{!120, !38, i64 13}
!124 = !{!122, !37, i64 56}
!125 = distinct !{!125, !126, !127}
!126 = !{!"llvm.loop.mustprogress"}
!127 = !{!"llvm.loop.unroll.disable"}
!128 = !{!129, !41, i64 8}
!129 = !{!"GridPaintMask", !37, i64 0, !41, i64 8, !41, i64 12}
!130 = !{!129, !37, i64 0}
!131 = !{!45, !45, i64 0}
!132 = !{!73, !45, i64 52}
!133 = !{!134, !37, i64 120}
!134 = !{!"SculptSession", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !41, i64 32, !41, i64 36, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !41, i64 80, !41, i64 84, !38, i64 88, !37, i64 96, !37, i64 104, !38, i64 112, !38, i64 113, !37, i64 120, !37, i64 128, !37, i64 136, !38, i64 144, !41, i64 148, !37, i64 152, !41, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !38, i64 200, !38, i64 204, !38, i64 216, !41, i64 228}
!135 = !{!134, !37, i64 128}
!136 = !{!134, !37, i64 136}
!137 = !{!66, !37, i64 128}
!138 = !{!134, !37, i64 72}
!139 = !{!140, !38, i64 60}
!140 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !41, i64 56, !38, i64 60}
!141 = !{!140, !37, i64 40}
!142 = !{!140, !37, i64 48}
!143 = !{!144, !37, i64 56}
!144 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !41, i64 128, !37, i64 136, !107, i64 144, !107, i64 344, !107, i64 544, !107, i64 744, !40, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !42, i64 960, !37, i64 976, !42, i64 984, !37, i64 1000}
!145 = !{!134, !38, i64 88}
!146 = distinct !{!146, !126, !127}
!147 = !{!134, !37, i64 96}
!148 = !{!134, !37, i64 104}
!149 = !{!66, !37, i64 1296}
!150 = !{!151, !37, i64 1568}
!151 = !{!"DerivedMesh", !107, i64 0, !107, i64 200, !107, i64 400, !107, i64 600, !107, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !45, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!152 = !{!134, !37, i64 152}
!153 = !{!134, !37, i64 168}
!154 = !{!134, !37, i64 176}
!155 = !{!156, !41, i64 16}
!156 = !{!"ModifierData", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!157 = !{!158, !38, i64 113}
!158 = !{!"MultiresModifierData", !156, i64 0, !38, i64 112, !38, i64 113, !38, i64 114, !38, i64 115, !38, i64 116, !38, i64 117, !38, i64 118}
!159 = !{!156, !37, i64 0}
!160 = distinct !{!160, !126, !127}
!161 = !{!66, !38, i64 1265}
!162 = !{!106, !37, i64 144}
!163 = !{!66, !40, i64 1266}
!164 = !{!165, !41, i64 68}
!165 = !{!"ModifierTypeInfo", !38, i64 0, !38, i64 32, !41, i64 64, !41, i64 68, !41, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208}
!166 = !{!167, !41, i64 40}
!167 = !{!"Sculpt", !71, i64 0, !41, i64 40, !38, i64 44, !45, i64 56, !41, i64 60, !45, i64 64, !45, i64 68, !37, i64 72, !37, i64 80}
!168 = distinct !{!168, !126, !127}
!169 = !{!134, !38, i64 113}
!170 = !{!134, !38, i64 112}
!171 = !{!106, !41, i64 1280}
!172 = !{!134, !37, i64 48}
!173 = !{!60, !60, i64 0}
!174 = !{!134, !37, i64 0}
!175 = !{!151, !37, i64 1104}
!176 = !{!134, !41, i64 32}
!177 = !{!151, !37, i64 1136}
!178 = !{!134, !41, i64 36}
!179 = !{!134, !37, i64 40}
!180 = !{!106, !41, i64 1296}
!181 = !{!106, !37, i64 232}
!182 = !{!134, !37, i64 8}
!183 = !{!106, !37, i64 168}
!184 = !{!134, !37, i64 16}
!185 = !{!106, !37, i64 184}
!186 = !{!134, !37, i64 24}
!187 = !{!134, !37, i64 56}
!188 = !{!151, !37, i64 1560}
!189 = !{!134, !37, i64 64}
!190 = distinct !{!190, !126, !127}
!191 = !{!106, !41, i64 1300}
!192 = distinct !{!192, !126, !127}
!193 = !{!194, !41, i64 4}
!194 = !{!"MPoly", !41, i64 0, !41, i64 4, !40, i64 8, !38, i64 10, !38, i64 11}
!195 = !{!194, !41, i64 0}
!196 = !{!197, !41, i64 0}
!197 = !{!"MLoop", !41, i64 0, !41, i64 4}
!198 = distinct !{!198, !126, !127}
!199 = distinct !{!199, !126, !127}
!200 = distinct !{!200, !126, !127}
