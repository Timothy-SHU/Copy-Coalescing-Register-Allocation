; ModuleID = 'blender/source/blender/blenkernel/intern/paint.c'
source_filename = "blender/source/blender/blenkernel/intern/paint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
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
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
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
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @BKE_paint_invalidate_overlay_tex(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_paint_get_active(ptr noundef %0) #16
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 3, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load i32, ptr @overlay_flags, align 4, !tbaa !47
  %12 = or i32 %11, 1
  store i32 %12, ptr @overlay_flags, align 4, !tbaa !47
  br label %13

13:                                               ; preds = %10, %6
  %14 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 4, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, ptr @overlay_flags, align 4, !tbaa !47
  %19 = or i32 %18, 4
  store i32 %19, ptr @overlay_flags, align 4, !tbaa !47
  br label %20

20:                                               ; preds = %13, %17, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_paint_get_active(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 27
  %15 = load i32, ptr %14, align 8, !tbaa !73
  switch i32 %15, label %35 [
    i32 2, label %16
    i32 4, label %19
    i32 8, label %21
    i32 16, label %24
    i32 1, label %26
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !76
  br label %37

19:                                               ; preds = %13
  %20 = load ptr, ptr %5, align 8, !tbaa !82
  br label %37

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !83
  br label %37

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 17
  br label %37

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 64
  %28 = load i32, ptr %27, align 8, !tbaa !84
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !85
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @BKE_paint_invalidate_cursor_overlay(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_paint_get_active(ptr noundef %0) #16
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load i32, ptr @overlay_flags, align 4, !tbaa !47
  %12 = or i32 %11, 8
  store i32 %12, ptr @overlay_flags, align 4, !tbaa !47
  br label %13

13:                                               ; preds = %10, %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @BKE_paint_invalidate_overlay_all() local_unnamed_addr #3 {
  %1 = load i32, ptr @overlay_flags, align 4, !tbaa !47
  %2 = or i32 %1, 13
  store i32 %2, ptr @overlay_flags, align 4, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_paint_get_overlay_flags() local_unnamed_addr #4 {
  %1 = load i32, ptr @overlay_flags, align 4, !tbaa !47
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @BKE_paint_set_overlay_override(i32 noundef %0) local_unnamed_addr #3 {
  %2 = and i32 %0, 56
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = and i32 %0, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr @overlay_flags, align 4, !tbaa !47
  %9 = or i32 %8, 16
  store i32 %9, ptr @overlay_flags, align 4, !tbaa !47
  br label %10

10:                                               ; preds = %7, %4
  %11 = and i32 %0, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr @overlay_flags, align 4, !tbaa !47
  %15 = or i32 %14, 32
  store i32 %15, ptr @overlay_flags, align 4, !tbaa !47
  br label %16

16:                                               ; preds = %13, %10
  %17 = and i32 %0, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr @overlay_flags, align 4, !tbaa !47
  %21 = or i32 %20, 64
  br label %25

22:                                               ; preds = %1
  %23 = load i32, ptr @overlay_flags, align 4, !tbaa !47
  %24 = and i32 %23, -113
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i32 [ %21, %19 ], [ %24, %22 ]
  store i32 %26, ptr @overlay_flags, align 4, !tbaa !47
  br label %27

27:                                               ; preds = %25, %16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @BKE_paint_reset_overlay_invalid(i32 noundef %0) local_unnamed_addr #3 {
  %2 = xor i32 %0, -1
  %3 = load i32, ptr @overlay_flags, align 4, !tbaa !47
  %4 = and i32 %3, %2
  store i32 %4, ptr @overlay_flags, align 4, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_paint_get_active_from_context(ptr noundef %0) local_unnamed_addr #5 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %66, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #17
  %14 = icmp eq ptr %13, null
  %15 = icmp eq ptr %12, null
  br i1 %14, label %39, label %19

16:                                               ; preds = %4
  %17 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %64, label %37

19:                                               ; preds = %10
  br i1 %15, label %37, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 27
  %22 = load i32, ptr %21, align 8, !tbaa !73
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.SpaceImage, ptr %13, i64 0, i32 17
  %26 = load i8, ptr %25, align 4, !tbaa !87
  %27 = icmp eq i8 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 17
  br label %66

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 64
  %32 = load i32, ptr %31, align 8, !tbaa !84
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %66, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !85
  br label %66

37:                                               ; preds = %16, %20, %19
  %38 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 17
  br label %66

39:                                               ; preds = %10
  br i1 %15, label %64, label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 27
  %42 = load i32, ptr %41, align 8, !tbaa !73
  switch i32 %42, label %62 [
    i32 2, label %43
    i32 4, label %46
    i32 8, label %48
    i32 16, label %51
    i32 1, label %53
  ]

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !76
  br label %66

46:                                               ; preds = %40
  %47 = load ptr, ptr %6, align 8, !tbaa !82
  br label %66

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !83
  br label %66

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 17
  br label %66

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 64
  %55 = load i32, ptr %54, align 8, !tbaa !84
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !85
  br label %66

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 17
  br label %66

62:                                               ; preds = %40
  %63 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 17
  br label %66

64:                                               ; preds = %16, %39
  %65 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 17
  br label %66

66:                                               ; preds = %64, %43, %46, %48, %51, %60, %57, %62, %37, %34, %28, %1, %30
  %67 = phi ptr [ null, %30 ], [ null, %1 ], [ %65, %64 ], [ %45, %43 ], [ %47, %46 ], [ %50, %48 ], [ %52, %51 ], [ %61, %60 ], [ %59, %57 ], [ %63, %62 ], [ %38, %37 ], [ %36, %34 ], [ %29, %28 ]
  ret ptr %67
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) local_unnamed_addr #5 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %44, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #17
  %14 = icmp eq ptr %13, null
  %15 = icmp eq ptr %12, null
  br i1 %14, label %27, label %18

16:                                               ; preds = %4
  %17 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #17
  br label %45

18:                                               ; preds = %10
  br i1 %15, label %45, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 27
  %21 = load i32, ptr %20, align 8, !tbaa !73
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %45

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.SpaceImage, ptr %13, i64 0, i32 17
  %25 = load i8, ptr %24, align 4, !tbaa !87
  %26 = icmp eq i8 %25, 1
  br i1 %26, label %45, label %40

27:                                               ; preds = %10
  br i1 %15, label %45, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 27
  %30 = load i32, ptr %29, align 8, !tbaa !73
  switch i32 %30, label %39 [
    i32 2, label %45
    i32 4, label %31
    i32 8, label %32
    i32 16, label %33
    i32 1, label %34
  ]

31:                                               ; preds = %28
  br label %45

32:                                               ; preds = %28
  br label %45

33:                                               ; preds = %28
  br label %45

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 64
  %36 = load i32, ptr %35, align 8, !tbaa !84
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 4, i32 5
  br label %45

39:                                               ; preds = %28
  br label %45

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 64
  %42 = load i32, ptr %41, align 8, !tbaa !84
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %1
  br label %45

45:                                               ; preds = %16, %27, %34, %28, %18, %19, %23, %31, %32, %33, %39, %40, %44
  %46 = phi i32 [ 6, %44 ], [ 5, %40 ], [ 4, %27 ], [ %38, %34 ], [ 0, %28 ], [ 4, %18 ], [ 4, %19 ], [ 4, %23 ], [ 1, %31 ], [ 2, %32 ], [ 3, %33 ], [ 4, %39 ], [ 4, %16 ]
  ret i32 %46
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_paint_brush(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_paint_brush_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @id_us_min(ptr noundef %5) #17
  tail call void @id_us_plus(ptr noundef %1) #17
  store ptr %1, ptr %0, align 8, !tbaa !34
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_paint_curve_free(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.PaintCurve, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  tail call void %6(ptr noundef nonnull %3) #17
  store ptr null, ptr %2, align 8, !tbaa !93
  %7 = getelementptr inbounds %struct.PaintCurve, ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !96
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_paint_curve_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 17232, ptr noundef %1) #17
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_paint_palette_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Paint, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !97
  tail call void @id_us_min(ptr noundef %6) #17
  tail call void @id_us_plus(ptr noundef %1) #17
  store ptr %1, ptr %5, align 8, !tbaa !97
  br label %7

7:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_paint_curve_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  tail call void @id_us_min(ptr noundef %6) #17
  tail call void @id_us_plus(ptr noundef %1) #17
  store ptr %1, ptr %5, align 8, !tbaa !98
  br label %7

7:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_palette_color_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Palette, ptr %0, i64 0, i32 1
  %6 = tail call i32 @BLI_countlist(ptr noundef nonnull %5) #17
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
  tail call void @BLI_remlink(ptr noundef nonnull %5, ptr noundef nonnull %1) #17
  %16 = getelementptr inbounds %struct.Palette, ptr %0, i64 0, i32 2
  tail call void @BLI_addhead(ptr noundef nonnull %16, ptr noundef nonnull %1) #17
  br label %17

17:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_palette_cleanup(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Palette, ptr %0, i64 0, i32 2
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #17
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_palette_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 19536, ptr noundef %1) #17
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !101
  %6 = or i16 %5, 512
  store i16 %6, ptr %4, align 2, !tbaa !101
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_palette_free(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Palette, ptr %0, i64 0, i32 1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_palette_color_add(ptr noundef %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !95
  %3 = tail call ptr %2(i64 noundef 32, ptr noundef nonnull @.str) #17
  %4 = getelementptr inbounds %struct.Palette, ptr %0, i64 0, i32 1
  tail call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %3) #17
  %5 = tail call i32 @BLI_countlist(ptr noundef nonnull %4) #17
  %6 = add nsw i32 %5, -1
  %7 = getelementptr inbounds %struct.Palette, ptr %0, i64 0, i32 3
  store i32 %6, ptr %7, align 8, !tbaa !99
  ret ptr %3
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BKE_palette_is_empty(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.Palette, ptr %0, i64 0, i32 1
  %3 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %2) #16, !range !102
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !103 {
  %2 = load ptr, ptr %0, align 8, !tbaa !104
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_paint_select_face_test(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !105
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 46
  %13 = load i8, ptr %12, align 1, !tbaa !107
  %14 = and i8 %13, 8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %18 = load i32, ptr %17, align 8, !tbaa !73
  %19 = and i32 %18, 28
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %16, %11, %7, %3, %1
  %23 = phi i8 [ 0, %11 ], [ 0, %7 ], [ 0, %3 ], [ 0, %1 ], [ %21, %16 ]
  ret i8 %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_paint_select_vert_test(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !105
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 46
  %13 = load i8, ptr %12, align 1, !tbaa !107
  %14 = and i8 %13, 32
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %18 = load i32, ptr %17, align 8, !tbaa !73
  %19 = trunc i32 %18 to i8
  %20 = lshr i8 %19, 3
  %21 = and i8 %20, 1
  br label %22

22:                                               ; preds = %16, %11, %7, %3, %1
  %23 = phi i8 [ 0, %11 ], [ 0, %7 ], [ 0, %3 ], [ 0, %1 ], [ %21, %16 ]
  ret i8 %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_paint_select_elem_test(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = tail call zeroext i8 @BKE_paint_select_vert_test(ptr noundef %0) #16, !range !102
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call zeroext i8 @BKE_paint_select_face_test(ptr noundef %0) #16, !range !102
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i8 [ 1, %1 ], [ %5, %4 ]
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_paint_init(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = tail call ptr @BKE_paint_brush(ptr noundef %0) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @G, align 8, !tbaa !110
  %7 = tail call ptr @BKE_brush_add(ptr noundef %6, ptr noundef nonnull @.str.1) #17
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ %3, %2 ]
  tail call void @BKE_paint_brush_set(ptr noundef %0, ptr noundef %9) #16
  %10 = getelementptr inbounds %struct.Paint, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %10, ptr noundef nonnull align 1 dereferenceable(3) %1, i64 3, i1 false)
  %11 = getelementptr inbounds %struct.Paint, ptr %0, i64 0, i32 3, i64 3
  store i8 -128, ptr %11, align 1, !tbaa !112
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_brush_add(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_paint_free(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @id_us_min(ptr noundef %2) #17
  %3 = getelementptr inbounds %struct.Paint, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  tail call void @id_us_min(ptr noundef %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_paint_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %3, ptr %1, align 8, !tbaa !34
  tail call void @id_us_plus(ptr noundef %3) #17
  %4 = getelementptr inbounds %struct.Paint, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !97
  tail call void @id_us_plus(ptr noundef %5) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @paint_is_face_hidden(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = load i32, ptr %0, align 4, !tbaa !113
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.MVert, ptr %1, i64 %4, i32 2
  %6 = load i8, ptr %5, align 2, !tbaa !115
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !117
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.MVert, ptr %1, i64 %12, i32 2
  %14 = load i8, ptr %13, align 2, !tbaa !115
  %15 = and i8 %14, 16
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !118
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.MVert, ptr %1, i64 %20, i32 2
  %22 = load i8, ptr %21, align 2, !tbaa !115
  %23 = and i8 %22, 16
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !119
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = zext i32 %27 to i64
  %31 = getelementptr inbounds %struct.MVert, ptr %1, i64 %30, i32 2
  %32 = load i8, ptr %31, align 2, !tbaa !115
  %33 = lshr i8 %32, 4
  %34 = and i8 %33, 1
  br label %35

35:                                               ; preds = %25, %29, %17, %9, %2
  %36 = phi i8 [ 1, %17 ], [ 1, %9 ], [ 1, %2 ], [ 0, %25 ], [ %34, %29 ]
  ret i8 %36
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @paint_is_grid_face_hidden(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 {
  %5 = mul nsw i32 %3, %1
  %6 = add nsw i32 %5, %2
  %7 = ashr i32 %6, 5
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !47
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
  %20 = load i32, ptr %19, align 4, !tbaa !47
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
  %33 = load i32, ptr %32, align 4, !tbaa !47
  %34 = and i32 %29, 31
  %35 = shl nuw i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %25
  %39 = ashr i32 %28, 5
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !47
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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @paint_is_bmesh_face_hidden(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !120
  br label %4

4:                                                ; preds = %10, %1
  %5 = phi ptr [ %3, %1 ], [ %12, %10 ]
  %6 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !123
  %8 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %7) #16
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !125
  %13 = icmp eq ptr %12, %3
  br i1 %13, label %14, label %4, !llvm.loop !126

14:                                               ; preds = %10, %4
  %15 = phi i8 [ 1, %4 ], [ 0, %10 ]
  ret i8 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !128 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !129
  %4 = and i8 %3, 2
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @paint_grid_paint_mask(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.GridPaintMask, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !130
  %7 = tail call i32 @BKE_ccg_factor(i32 noundef %1, i32 noundef %6) #17
  %8 = load i32, ptr %5, align 8, !tbaa !130
  %9 = tail call i32 @BKE_ccg_gridsize(i32 noundef %8) #17
  %10 = load ptr, ptr %0, align 8, !tbaa !132
  %11 = mul i32 %9, %3
  %12 = add i32 %11, %2
  %13 = mul i32 %12, %7
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds float, ptr %10, i64 %14
  %16 = load float, ptr %15, align 4, !tbaa !133
  ret float %16
}

; Function Attrs: optsize
declare i32 @BKE_ccg_factor(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @BKE_ccg_gridsize(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paint_calculate_rake_rotation(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 7
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %1) #16
  %5 = call fastcc float @len_squared_v2(ptr noundef nonnull %3) #16
  %6 = fcmp ult float %5, 4.000000e+02
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load float, ptr %3, align 4, !tbaa !133
  %9 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !133
  %11 = tail call float @atan2f(float noundef %8, float noundef %10) #17
  %12 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 8
  store float %11, ptr %12, align 4, !tbaa !134
  tail call void @interp_v2_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %1, float noundef 5.000000e-01) #17
  br label %13

13:                                               ; preds = %7, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !135 {
  %4 = load float, ptr %1, align 4, !tbaa !133
  %5 = load float, ptr %2, align 4, !tbaa !133
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !133
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !133
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !133
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !133
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v2(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !136 {
  %2 = load float, ptr %0, align 4, !tbaa !133
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !133
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  ret float %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare void @interp_v2_v2v2(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_free_sculptsession_deformMats(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !137
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  tail call void %6(ptr noundef nonnull %3) #17
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !139
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  tail call void %12(ptr noundef nonnull %9) #17
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !140
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  tail call void %18(ptr noundef nonnull %15) #17
  br label %19

19:                                               ; preds = %17, %13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sculptsession_bm_to_me(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !141
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call fastcc void @sculptsession_bm_to_me_update_data_only(ptr noundef nonnull %0, i8 noundef zeroext %1) #16
  tail call void @DAG_id_tag_update(ptr noundef nonnull %0, i16 noundef signext 2) #17
  br label %9

9:                                                ; preds = %8, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculptsession_bm_to_me_update_data_only(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #5 !PGOFuncName !142 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !141
  %6 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !143
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = icmp eq ptr %11, null
  br i1 %12, label %33, label %13

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #18
  %14 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %7) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 13
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %14, %16 ], [ %22, %18 ]
  %20 = load i8, ptr %17, align 8, !tbaa !144
  %21 = zext i8 %20 to i32
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %19, i32 noundef %21) #16
  %22 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %18, !llvm.loop !145

24:                                               ; preds = %18, %13
  %25 = icmp eq i8 %1, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %6, align 8, !tbaa !143
  %28 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 14
  %29 = load ptr, ptr %28, align 8, !tbaa !146
  call void @BM_log_mesh_elems_reorder(ptr noundef %27, ptr noundef %29) #17
  br label %30

30:                                               ; preds = %26, %24
  %31 = load ptr, ptr %6, align 8, !tbaa !143
  %32 = load ptr, ptr %10, align 8, !tbaa !106
  call void @BM_mesh_bm_to_me(ptr noundef %31, ptr noundef %32, i8 noundef zeroext 0) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  br label %33

33:                                               ; preds = %9, %30, %2
  ret void
}

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sculptsession_bm_to_me_for_render(ptr noundef %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !141
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !143
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  tail call void @BKE_object_free_derived_caches(ptr noundef nonnull %0) #17
  %12 = load ptr, ptr %4, align 8, !tbaa !141
  %13 = getelementptr inbounds %struct.SculptSession, ptr %12, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !147
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  tail call void @BKE_pbvh_free(ptr noundef nonnull %14) #17
  %17 = load ptr, ptr %4, align 8, !tbaa !141
  %18 = getelementptr inbounds %struct.SculptSession, ptr %17, i64 0, i32 15
  store ptr null, ptr %18, align 8, !tbaa !147
  br label %19

19:                                               ; preds = %16, %11
  tail call fastcc void @sculptsession_bm_to_me_update_data_only(ptr noundef nonnull %0, i8 noundef zeroext 0) #16
  br label %20

20:                                               ; preds = %7, %19, %3, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_object_free_derived_caches(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BKE_pbvh_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_free_sculptsession(ptr noundef %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %70, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !141
  %6 = icmp eq ptr %5, null
  br i1 %6, label %70, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %9 = load ptr, ptr %8, align 8, !tbaa !148
  %10 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !143
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  tail call void @BKE_sculptsession_bm_to_me(ptr noundef nonnull %0, i8 noundef zeroext 1) #16
  %14 = load ptr, ptr %10, align 8, !tbaa !143
  tail call void @BM_mesh_free(ptr noundef %14) #17
  br label %15

15:                                               ; preds = %13, %7
  %16 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 15
  %17 = load ptr, ptr %16, align 8, !tbaa !147
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @BKE_pbvh_free(ptr noundef nonnull %17) #17
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 14
  %22 = load ptr, ptr %21, align 8, !tbaa !146
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @BM_log_free(ptr noundef nonnull %22) #17
  br label %25

25:                                               ; preds = %24, %20
  %26 = icmp eq ptr %9, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 81
  %29 = load ptr, ptr %28, align 8, !tbaa !149
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = tail call ptr %29(ptr noundef null, ptr noundef nonnull %9) #17
  br label %33

33:                                               ; preds = %31, %27, %25
  %34 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 23
  %35 = load ptr, ptr %34, align 8, !tbaa !151
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  tail call void %38(ptr noundef nonnull %35) #17
  br label %39

39:                                               ; preds = %37, %33
  %40 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 25
  %41 = load ptr, ptr %40, align 8, !tbaa !152
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @BKE_image_pool_free(ptr noundef nonnull %41) #17
  br label %44

44:                                               ; preds = %43, %39
  %45 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 26
  %46 = load ptr, ptr %45, align 8, !tbaa !153
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  tail call void %49(ptr noundef nonnull %46) #17
  br label %50

50:                                               ; preds = %48, %44
  %51 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 18
  %52 = load ptr, ptr %51, align 8, !tbaa !137
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  tail call void %55(ptr noundef nonnull %52) #17
  br label %56

56:                                               ; preds = %54, %50
  %57 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 19
  %58 = load ptr, ptr %57, align 8, !tbaa !139
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  tail call void %61(ptr noundef nonnull %58) #17
  br label %62

62:                                               ; preds = %60, %56
  %63 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 20
  %64 = load ptr, ptr %63, align 8, !tbaa !140
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  tail call void %67(ptr noundef nonnull %64) #17
  br label %68

68:                                               ; preds = %66, %62
  %69 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  tail call void %69(ptr noundef nonnull %5) #17
  store ptr null, ptr %4, align 8, !tbaa !141
  br label %70

70:                                               ; preds = %68, %3, %1
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BM_log_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BKE_image_pool_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_sculpt_multires_active(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = alloca %struct.VirtualModifierData, align 8
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %3) #18
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !141
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !143
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %9, %2
  %14 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 25
  %15 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %14, i32 noundef 19) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %13
  %18 = call ptr @modifiers_getVirtualModifierList(ptr noundef nonnull %1, ptr noundef nonnull %3) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %17, %33
  %21 = phi ptr [ %34, %33 ], [ %18, %17 ]
  %22 = getelementptr inbounds %struct.ModifierData, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !154
  %24 = icmp eq i32 %23, 29
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %21, i32 noundef 1) #17
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.MultiresModifierData, ptr %21, i64 0, i32 2
  %30 = load i8, ptr %29, align 1, !tbaa !156
  %31 = icmp eq i8 %30, 0
  %32 = select i1 %31, ptr null, ptr %21
  br label %36

33:                                               ; preds = %25, %20
  %34 = load ptr, ptr %21, align 8, !tbaa !158
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %20, !llvm.loop !159

36:                                               ; preds = %33, %17, %28, %13, %9
  %37 = phi ptr [ %32, %28 ], [ null, %9 ], [ null, %13 ], [ null, %17 ], [ null, %33 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %3) #18
  ret ptr %37
}

; Function Attrs: optsize
declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @modifiers_getVirtualModifierList(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @modifier_isEnabled(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sculpt_update_mesh_elements(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !141
  %8 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  %10 = tail call ptr @BKE_sculpt_multires_active(ptr noundef %0, ptr noundef %2) #16
  %11 = tail call fastcc zeroext i8 @sculpt_modifiers_active(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  %12 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 17
  store i8 %11, ptr %12, align 1, !tbaa !160
  %13 = getelementptr inbounds %struct.Sculpt, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !161
  %15 = lshr i32 %14, 9
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 16
  store i8 %17, ptr %18, align 8, !tbaa !163
  %19 = icmp eq i8 %4, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %5
  %21 = icmp eq ptr %10, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 21
  %24 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %23, i32 noundef 34) #17
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = tail call i32 @BKE_sculpt_mask_layers_ensure(ptr noundef nonnull %2, ptr noundef null) #16
  br label %34

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 25
  %30 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %29, i32 noundef 35) #17
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = tail call i32 @BKE_sculpt_mask_layers_ensure(ptr noundef nonnull %2, ptr noundef nonnull %10) #16
  br label %37

34:                                               ; preds = %26, %22
  tail call void @BKE_mesh_tessface_ensure(ptr noundef %9) #17
  br label %38

35:                                               ; preds = %5
  tail call void @BKE_mesh_tessface_ensure(ptr noundef %9) #17
  %36 = icmp eq ptr %10, null
  br i1 %36, label %38, label %62

37:                                               ; preds = %28, %32
  tail call void @BKE_mesh_tessface_ensure(ptr noundef %9) #17
  br label %62

38:                                               ; preds = %35, %34
  %39 = tail call ptr @BKE_keyblock_from_object(ptr noundef nonnull %2) #17
  %40 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 7
  store ptr %39, ptr %40, align 8, !tbaa !164
  %41 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !165
  %42 = tail call ptr @mesh_get_derived_final(ptr noundef %0, ptr noundef nonnull %2, i64 noundef %41) #17
  %43 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 26
  %44 = load i32, ptr %43, align 8, !tbaa !166
  %45 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 4
  store i32 %44, ptr %45, align 8, !tbaa !167
  %46 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 30
  %47 = load i32, ptr %46, align 8, !tbaa !168
  %48 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 5
  store i32 %47, ptr %48, align 4, !tbaa !169
  %49 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 15
  %50 = load ptr, ptr %49, align 8, !tbaa !170
  %51 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 1
  store ptr %50, ptr %51, align 8, !tbaa !171
  %52 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !172
  %54 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 2
  store ptr %53, ptr %54, align 8, !tbaa !173
  %55 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !174
  %57 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 3
  store ptr %56, ptr %57, align 8, !tbaa !175
  %58 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 6
  store ptr null, ptr %58, align 8, !tbaa !176
  store ptr null, ptr %7, align 8, !tbaa !177
  %59 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 21
  %60 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %59, i32 noundef 34) #17
  %61 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 8
  store ptr %60, ptr %61, align 8, !tbaa !178
  br label %76

62:                                               ; preds = %35, %37
  %63 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 7
  store ptr null, ptr %63, align 8, !tbaa !164
  %64 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !165
  %65 = tail call ptr @mesh_get_derived_final(ptr noundef %0, ptr noundef nonnull %2, i64 noundef %64) #17
  store ptr %10, ptr %7, align 8, !tbaa !177
  %66 = getelementptr inbounds %struct.DerivedMesh, ptr %65, i64 0, i32 23
  %67 = load ptr, ptr %66, align 8, !tbaa !179
  %68 = tail call i32 %67(ptr noundef %65) #17
  %69 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 4
  store i32 %68, ptr %69, align 8, !tbaa !167
  %70 = getelementptr inbounds %struct.DerivedMesh, ptr %65, i64 0, i32 27
  %71 = load ptr, ptr %70, align 8, !tbaa !180
  %72 = tail call i32 %71(ptr noundef %65) #17
  %73 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 5
  store i32 %72, ptr %73, align 4, !tbaa !169
  %74 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 1
  %75 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 6
  store ptr null, ptr %75, align 8, !tbaa !176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %74, i8 0, i64 24, i1 false)
  br label %76

76:                                               ; preds = %38, %62
  %77 = phi ptr [ %42, %38 ], [ %65, %62 ]
  %78 = getelementptr inbounds %struct.DerivedMesh, ptr %77, i64 0, i32 81
  %79 = load ptr, ptr %78, align 8, !tbaa !149
  %80 = tail call ptr %79(ptr noundef nonnull %2, ptr noundef %77) #17
  %81 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 15
  store ptr %80, ptr %81, align 8, !tbaa !147
  %82 = icmp eq i8 %3, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.DerivedMesh, ptr %77, i64 0, i32 80
  %85 = load ptr, ptr %84, align 8, !tbaa !181
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = tail call ptr %85(ptr noundef nonnull %2, ptr noundef nonnull %77) #17
  %89 = load ptr, ptr %81, align 8, !tbaa !147
  br label %90

90:                                               ; preds = %76, %83, %87
  %91 = phi ptr [ %89, %87 ], [ %80, %83 ], [ %80, %76 ]
  %92 = phi ptr [ %88, %87 ], [ null, %83 ], [ null, %76 ]
  %93 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 9
  store ptr %92, ptr %93, align 8, !tbaa !182
  %94 = load i8, ptr %18, align 8, !tbaa !163
  tail call void @pbvh_show_diffuse_color_set(ptr noundef %91, i8 noundef zeroext %94) #17
  %95 = load i8, ptr %12, align 1, !tbaa !160
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %127, label %97

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 18
  %99 = load ptr, ptr %98, align 8, !tbaa !137
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %128

101:                                              ; preds = %97
  tail call void @BKE_free_sculptsession_deformMats(ptr noundef nonnull %7) #16
  %102 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 7
  %103 = load ptr, ptr %102, align 8, !tbaa !164
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = tail call ptr @BKE_key_convert_to_vertcos(ptr noundef nonnull %2, ptr noundef nonnull %103) #17
  br label %109

107:                                              ; preds = %101
  %108 = tail call ptr @BKE_mesh_vertexCos_get(ptr noundef %9, ptr noundef null) #17
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi ptr [ %106, %105 ], [ %108, %107 ]
  store ptr %110, ptr %98, align 8, !tbaa !137
  %111 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 20
  %112 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 19
  tail call void @BKE_crazyspace_build_sculpt(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %111, ptr noundef nonnull %112) #17
  %113 = load ptr, ptr %81, align 8, !tbaa !147
  %114 = load ptr, ptr %112, align 8, !tbaa !139
  tail call void @BKE_pbvh_apply_vertCos(ptr noundef %113, ptr noundef %114) #17
  %115 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 26
  %116 = load i32, ptr %115, align 8, !tbaa !166
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %109, %118
  %119 = phi i64 [ %123, %118 ], [ 0, %109 ]
  %120 = load ptr, ptr %111, align 8, !tbaa !140
  %121 = getelementptr inbounds [3 x [3 x float]], ptr %120, i64 %119
  %122 = tail call zeroext i8 @invert_m3(ptr noundef %121) #17
  %123 = add nuw nsw i64 %119, 1
  %124 = load i32, ptr %115, align 8, !tbaa !166
  %125 = sext i32 %124 to i64
  %126 = icmp slt i64 %123, %125
  br i1 %126, label %118, label %128, !llvm.loop !183

127:                                              ; preds = %90
  tail call void @BKE_free_sculptsession_deformMats(ptr noundef nonnull %7) #16
  br label %128

128:                                              ; preds = %118, %109, %97, %127
  %129 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 7
  %130 = load ptr, ptr %129, align 8, !tbaa !164
  %131 = icmp eq ptr %130, null
  br i1 %131, label %167, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 19
  %134 = load ptr, ptr %133, align 8, !tbaa !139
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = tail call ptr @BKE_key_convert_to_vertcos(ptr noundef %2, ptr noundef nonnull %130) #17
  store ptr %137, ptr %133, align 8, !tbaa !139
  %138 = load ptr, ptr %129, align 8, !tbaa !164
  %139 = icmp eq ptr %138, null
  br i1 %139, label %167, label %140

140:                                              ; preds = %132, %136
  %141 = load ptr, ptr %81, align 8, !tbaa !147
  %142 = tail call zeroext i8 @BKE_pbvh_isDeformed(ptr noundef %141) #17
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %140
  %145 = load ptr, ptr %133, align 8, !tbaa !139
  %146 = icmp eq ptr %145, null
  br i1 %146, label %151, label %167

147:                                              ; preds = %140
  %148 = load ptr, ptr %129, align 8, !tbaa !164
  %149 = tail call ptr @BKE_key_convert_to_vertcos(ptr noundef %2, ptr noundef %148) #17
  %150 = icmp eq ptr %149, null
  br i1 %150, label %167, label %155

151:                                              ; preds = %144
  %152 = load ptr, ptr %129, align 8, !tbaa !164
  %153 = tail call ptr @BKE_key_convert_to_vertcos(ptr noundef %2, ptr noundef %152) #17
  %154 = icmp eq ptr %153, null
  br i1 %154, label %167, label %157

155:                                              ; preds = %147
  %156 = load ptr, ptr %81, align 8, !tbaa !147
  tail call void @BKE_pbvh_apply_vertCos(ptr noundef %156, ptr noundef nonnull %149) #17
  br label %157

157:                                              ; preds = %151, %155
  %158 = phi ptr [ %149, %155 ], [ %153, %151 ]
  %159 = load ptr, ptr %133, align 8, !tbaa !139
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  store ptr %158, ptr %133, align 8, !tbaa !139
  br label %162

162:                                              ; preds = %161, %157
  %163 = phi ptr [ %158, %161 ], [ %159, %157 ]
  %164 = icmp eq ptr %158, %163
  br i1 %164, label %167, label %165

165:                                              ; preds = %162
  %166 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  tail call void %166(ptr noundef nonnull %158) #17
  br label %167

167:                                              ; preds = %128, %151, %144, %162, %165, %147, %136
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @sculpt_modifiers_active(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #5 !PGOFuncName !184 {
  %4 = alloca %struct.VirtualModifierData, align 8
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = tail call ptr @BKE_sculpt_multires_active(ptr noundef %0, ptr noundef %2) #16
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %4) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %52

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !141
  %12 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !143
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %52

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 114
  %17 = load i8, ptr %16, align 1, !tbaa !185
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !186
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 115
  %26 = load i16, ptr %25, align 2, !tbaa !187
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %24, %20, %15
  %29 = call ptr @modifiers_getVirtualModifierList(ptr noundef nonnull %2, ptr noundef nonnull %4) #17
  %30 = getelementptr inbounds %struct.Sculpt, ptr %1, i64 0, i32 1
  %31 = icmp eq ptr %29, null
  br i1 %31, label %52, label %32

32:                                               ; preds = %28, %49
  %33 = phi ptr [ %50, %49 ], [ %29, %28 ]
  %34 = getelementptr inbounds %struct.ModifierData, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !154
  %36 = call ptr @modifierType_getInfo(i32 noundef %35) #17
  %37 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %33, i32 noundef 1) #17
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %32
  %40 = load i32, ptr %34, align 8, !tbaa !154
  switch i32 %40, label %41 [
    i32 32, label %49
    i32 29, label %49
  ]

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %36, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !188
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr %30, align 8, !tbaa !161
  %47 = and i32 %46, 256
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %32, %39, %39, %45
  %50 = load ptr, ptr %33, align 8, !tbaa !158
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %32, !llvm.loop !190

52:                                               ; preds = %49, %41, %45, %28, %24, %3, %9
  %53 = phi i8 [ 0, %9 ], [ 0, %3 ], [ 1, %24 ], [ 0, %28 ], [ 0, %49 ], [ 1, %41 ], [ 1, %45 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %4) #18
  ret i8 %53
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_sculpt_mask_layers_ensure(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 21
  %6 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %5, i32 noundef 34) #17
  %7 = icmp eq ptr %1, null
  br i1 %7, label %124, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 25
  %10 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %9, i32 noundef 35) #17
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %124

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.MultiresModifierData, ptr %1, i64 0, i32 2
  %14 = load i8, ptr %13, align 1, !tbaa !156
  %15 = zext i8 %14 to i32
  %16 = tail call fastcc i32 @max_ii(i32 noundef %15) #16
  %17 = tail call i32 @BKE_ccg_gridsize(i32 noundef %16) #17
  %18 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 31
  %19 = load i32, ptr %18, align 4, !tbaa !191
  %20 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %9, i32 noundef 35, i32 noundef 1, ptr noundef null, i32 noundef %19) #17
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
  store i32 %16, ptr %30, align 8, !tbaa !130
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !95
  %32 = tail call ptr %31(i64 noundef %26, ptr noundef nonnull @.str.2) #17
  store ptr %32, ptr %29, align 8, !tbaa !132
  %33 = add nuw nsw i64 %28, 1
  %34 = load i32, ptr %18, align 4, !tbaa !191
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %33, %35
  br i1 %36, label %27, label %37, !llvm.loop !192

37:                                               ; preds = %27, %12
  %38 = icmp eq ptr %6, null
  br i1 %38, label %127, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 30
  %41 = load i32, ptr %40, align 8, !tbaa !168
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %133

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !172
  %46 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 9
  %47 = zext nneg i32 %41 to i64
  br label %48

48:                                               ; preds = %43, %121
  %49 = phi i64 [ 0, %43 ], [ %122, %121 ]
  %50 = getelementptr inbounds %struct.MPoly, ptr %45, i64 %49
  %51 = getelementptr inbounds %struct.MPoly, ptr %45, i64 %49, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !193
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %121

54:                                               ; preds = %48
  %55 = load ptr, ptr %46, align 8, !tbaa !174
  %56 = load i32, ptr %50, align 4, !tbaa !195
  %57 = sext i32 %56 to i64
  %58 = zext nneg i32 %52 to i64
  %59 = getelementptr %struct.MLoop, ptr %55, i64 %57
  br label %60

60:                                               ; preds = %54, %60
  %61 = phi i64 [ 0, %54 ], [ %69, %60 ]
  %62 = phi float [ 0.000000e+00, %54 ], [ %68, %60 ]
  %63 = getelementptr %struct.MLoop, ptr %59, i64 %61
  %64 = load i32, ptr %63, align 4, !tbaa !196
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds float, ptr %6, i64 %65
  %67 = load float, ptr %66, align 4, !tbaa !133
  %68 = fadd float %62, %67
  %69 = add nuw nsw i64 %61, 1
  %70 = icmp eq i64 %69, %58
  br i1 %70, label %71, label %60, !llvm.loop !198

71:                                               ; preds = %60
  %72 = sitofp i32 %52 to float
  %73 = fdiv float %68, %72
  br i1 %53, label %74, label %121

74:                                               ; preds = %71
  %75 = load i32, ptr %50, align 4, !tbaa !195
  %76 = load ptr, ptr %46, align 8, !tbaa !174
  %77 = add nsw i32 %52, -1
  %78 = sext i32 %75 to i64
  %79 = zext nneg i32 %52 to i64
  br label %80

80:                                               ; preds = %74, %80
  %81 = phi i64 [ 0, %74 ], [ %91, %80 ]
  %82 = add nsw i64 %81, %78
  %83 = getelementptr inbounds %struct.GridPaintMask, ptr %20, i64 %82
  %84 = getelementptr inbounds %struct.MLoop, ptr %76, i64 %82
  %85 = trunc i64 %81 to i32
  %86 = add i32 %77, %85
  %87 = srem i32 %86, %52
  %88 = add nsw i32 %87, %75
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.MLoop, ptr %76, i64 %89
  %91 = add nuw nsw i64 %81, 1
  %92 = icmp eq i64 %91, %79
  %93 = trunc i64 %91 to i32
  %94 = select i1 %92, i32 0, i32 %93
  %95 = add nsw i32 %94, %75
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.MLoop, ptr %76, i64 %96
  %98 = load ptr, ptr %83, align 8, !tbaa !132
  store float %73, ptr %98, align 4, !tbaa !133
  %99 = load i32, ptr %84, align 4, !tbaa !196
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds float, ptr %6, i64 %100
  %102 = load float, ptr %101, align 4, !tbaa !133
  %103 = load i32, ptr %97, align 4, !tbaa !196
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds float, ptr %6, i64 %104
  %106 = load float, ptr %105, align 4, !tbaa !133
  %107 = fadd float %102, %106
  %108 = fmul float %107, 5.000000e-01
  %109 = getelementptr inbounds float, ptr %98, i64 1
  store float %108, ptr %109, align 4, !tbaa !133
  %110 = load float, ptr %101, align 4, !tbaa !133
  %111 = load i32, ptr %90, align 4, !tbaa !196
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds float, ptr %6, i64 %112
  %114 = load float, ptr %113, align 4, !tbaa !133
  %115 = fadd float %110, %114
  %116 = fmul float %115, 5.000000e-01
  %117 = getelementptr inbounds float, ptr %98, i64 2
  store float %116, ptr %117, align 4, !tbaa !133
  %118 = load float, ptr %101, align 4, !tbaa !133
  %119 = getelementptr inbounds float, ptr %98, i64 3
  store float %118, ptr %119, align 4, !tbaa !133
  %120 = icmp eq i64 %91, %79
  br i1 %120, label %121, label %80, !llvm.loop !199

121:                                              ; preds = %80, %48, %71
  %122 = add nuw nsw i64 %49, 1
  %123 = icmp eq i64 %122, %47
  br i1 %123, label %124, label %48, !llvm.loop !200

124:                                              ; preds = %121, %8, %2
  %125 = phi i32 [ 0, %8 ], [ 0, %2 ], [ 2, %121 ]
  %126 = icmp eq ptr %6, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %37, %124
  %128 = phi i32 [ %125, %124 ], [ 2, %37 ]
  %129 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 26
  %130 = load i32, ptr %129, align 8, !tbaa !166
  %131 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %5, i32 noundef 34, i32 noundef 1, ptr noundef null, i32 noundef %130) #17
  %132 = or disjoint i32 %128, 1
  br label %133

133:                                              ; preds = %39, %127, %124
  %134 = phi i32 [ %125, %124 ], [ %132, %127 ], [ 2, %39 ]
  ret i32 %134
}

; Function Attrs: optsize
declare void @BKE_mesh_tessface_ensure(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @BKE_keyblock_from_object(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @pbvh_show_diffuse_color_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @BKE_key_convert_to_vertcos(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @BKE_mesh_vertexCos_get(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BKE_crazyspace_build_sculpt(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BKE_pbvh_apply_vertCos(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @invert_m3(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @BKE_pbvh_isDeformed(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0) unnamed_addr #12 !PGOFuncName !201 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  ret i32 %2
}

; Function Attrs: optsize
declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !202 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) #16
  %3 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #16
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_set(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #10 !PGOFuncName !203 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %0) #16
  br label %6

5:                                                ; preds = %2
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %0) #16
  br label %6

6:                                                ; preds = %5, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #5 !PGOFuncName !204 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !205
  %4 = tail call ptr %3(ptr noundef %0) #17
  ret ptr %4
}

; Function Attrs: optsize
declare void @BM_log_mesh_elems_reorder(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BM_mesh_bm_to_me(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !207 {
  %3 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 3, ptr %3, align 4, !tbaa !208
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %4, align 8, !tbaa !209
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %5, align 8, !tbaa !205
  %6 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !210
  store ptr %7, ptr %0, align 8, !tbaa !112
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #6

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #10 !PGOFuncName !212 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !129
  %4 = or i8 %3, 8
  store i8 %4, ptr %2, align 1, !tbaa !129
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #10 !PGOFuncName !213 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !129
  %4 = and i8 %3, -9
  store i8 %4, ptr %2, align 1, !tbaa !129
  ret void
}

; Function Attrs: optsize
declare ptr @modifierType_getInfo(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind }

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
!35 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!41, !36, i64 168}
!41 = !{!"Brush", !42, i64 0, !44, i64 120, !36, i64 144, !46, i64 152, !46, i64 464, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !37, i64 816, !45, i64 1840, !43, i64 1844, !43, i64 1846, !45, i64 1848, !39, i64 1852, !39, i64 1856, !39, i64 1860, !45, i64 1864, !39, i64 1868, !39, i64 1872, !39, i64 1876, !39, i64 1880, !45, i64 1884, !45, i64 1888, !37, i64 1892, !45, i64 1904, !37, i64 1908, !39, i64 1920, !45, i64 1924, !45, i64 1928, !39, i64 1932, !39, i64 1936, !39, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !45, i64 1948, !45, i64 1952, !45, i64 1956, !45, i64 1960, !45, i64 1964, !39, i64 1968, !39, i64 1972, !39, i64 1976, !45, i64 1980, !45, i64 1984, !39, i64 1988, !39, i64 1992, !45, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!42 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !43, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!43 = !{!"short", !37, i64 0}
!44 = !{!"BrushClone", !36, i64 0, !37, i64 8, !45, i64 16, !45, i64 20}
!45 = !{!"float", !37, i64 0}
!46 = !{!"MTex", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !45, i64 116, !43, i64 120, !43, i64 122, !43, i64 124, !43, i64 126, !43, i64 128, !43, i64 130, !37, i64 132, !37, i64 133, !45, i64 140, !45, i64 144, !45, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !45, i64 188, !45, i64 192, !45, i64 196, !45, i64 200, !45, i64 204, !45, i64 208, !45, i64 212, !45, i64 216, !45, i64 220, !45, i64 224, !45, i64 228, !45, i64 232, !45, i64 236, !45, i64 240, !45, i64 244, !45, i64 248, !45, i64 252, !45, i64 256, !45, i64 260, !45, i64 264, !45, i64 268, !45, i64 272, !45, i64 276, !45, i64 280, !45, i64 284, !45, i64 288, !45, i64 292, !45, i64 296, !45, i64 300, !45, i64 304, !45, i64 308}
!47 = !{!39, !39, i64 0}
!48 = !{!41, !36, i64 480}
!49 = !{!50, !36, i64 264}
!50 = !{!"Scene", !42, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !51, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !43, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !52, i64 280, !61, i64 4264, !51, i64 4296, !51, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !43, i64 4376, !43, i64 4378, !39, i64 4380, !51, i64 4384, !62, i64 4400, !63, i64 4416, !66, i64 4600, !36, i64 4608, !67, i64 4616, !36, i64 4640, !68, i64 4648, !68, i64 4656, !54, i64 4664, !55, i64 4824, !69, i64 4888, !36, i64 4952}
!51 = !{!"ListBase", !36, i64 0, !36, i64 8}
!52 = !{!"RenderData", !53, i64 0, !36, i64 248, !36, i64 256, !56, i64 264, !57, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !45, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !43, i64 432, !43, i64 434, !45, i64 436, !45, i64 440, !45, i64 444, !45, i64 448, !45, i64 452, !43, i64 456, !43, i64 458, !43, i64 460, !43, i64 462, !43, i64 464, !43, i64 466, !39, i64 468, !43, i64 472, !43, i64 474, !43, i64 476, !43, i64 478, !43, i64 480, !43, i64 482, !39, i64 484, !39, i64 488, !43, i64 492, !43, i64 494, !39, i64 496, !39, i64 500, !43, i64 504, !43, i64 506, !43, i64 508, !43, i64 510, !43, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !43, i64 528, !43, i64 530, !43, i64 532, !43, i64 534, !43, i64 536, !43, i64 538, !43, i64 540, !43, i64 542, !58, i64 544, !58, i64 560, !59, i64 576, !51, i64 592, !43, i64 608, !43, i64 610, !45, i64 612, !45, i64 616, !45, i64 620, !45, i64 624, !39, i64 628, !45, i64 632, !45, i64 636, !45, i64 640, !45, i64 644, !43, i64 648, !43, i64 650, !43, i64 652, !43, i64 654, !43, i64 656, !43, i64 658, !45, i64 660, !45, i64 664, !43, i64 668, !43, i64 670, !45, i64 672, !45, i64 676, !37, i64 680, !39, i64 1704, !43, i64 1708, !43, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !43, i64 2524, !43, i64 2526, !45, i64 2528, !45, i64 2532, !43, i64 2536, !43, i64 2538, !45, i64 2540, !43, i64 2544, !43, i64 2546, !39, i64 2548, !43, i64 2552, !43, i64 2554, !43, i64 2556, !43, i64 2558, !45, i64 2560, !45, i64 2564, !36, i64 2568, !39, i64 2576, !45, i64 2580, !37, i64 2584, !60, i64 2616, !39, i64 3976, !39, i64 3980}
!53 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !43, i64 8, !43, i64 10, !45, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !54, i64 24, !55, i64 184}
!54 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !45, i64 136, !45, i64 140, !36, i64 144, !36, i64 152}
!55 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!56 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !43, i64 48, !43, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!57 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !45, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!58 = !{!"rctf", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!59 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!60 = !{!"BakeData", !53, i64 0, !37, i64 248, !43, i64 1272, !43, i64 1274, !43, i64 1276, !43, i64 1278, !45, i64 1280, !45, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!61 = !{!"AudioData", !39, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !39, i64 16, !43, i64 20, !43, i64 22, !45, i64 24, !45, i64 28}
!62 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!63 = !{!"GameData", !62, i64 0, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !43, i64 32, !37, i64 34, !64, i64 40, !43, i64 64, !43, i64 66, !45, i64 68, !65, i64 72, !45, i64 128, !45, i64 132, !39, i64 136, !43, i64 140, !43, i64 142, !43, i64 144, !43, i64 146, !43, i64 148, !43, i64 150, !43, i64 152, !43, i64 154, !43, i64 156, !43, i64 158, !43, i64 160, !43, i64 162, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180}
!64 = !{!"GameDome", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !45, i64 8, !45, i64 12, !36, i64 16}
!65 = !{!"RecastData", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !39, i64 40, !45, i64 44, !45, i64 48, !43, i64 52, !43, i64 54}
!66 = !{!"UnitSettings", !45, i64 0, !37, i64 4, !37, i64 5, !43, i64 6}
!67 = !{!"PhysicsSettings", !37, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!68 = !{!"long", !37, i64 0}
!69 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!70 = !{!50, !36, i64 168}
!71 = !{!72, !36, i64 32}
!72 = !{!"Base", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !43, i64 28, !43, i64 30, !36, i64 32}
!73 = !{!74, !39, i64 432}
!74 = !{!"Object", !42, i64 0, !36, i64 120, !36, i64 128, !43, i64 136, !43, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !75, i64 312, !36, i64 360, !51, i64 368, !51, i64 384, !51, i64 400, !51, i64 416, !39, i64 432, !39, i64 436, !36, i64 440, !36, i64 448, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !45, i64 616, !45, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !39, i64 944, !43, i64 948, !43, i64 950, !43, i64 952, !43, i64 954, !43, i64 956, !43, i64 958, !43, i64 960, !43, i64 962, !43, i64 964, !37, i64 966, !37, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !45, i64 988, !45, i64 992, !45, i64 996, !45, i64 1000, !45, i64 1004, !45, i64 1008, !45, i64 1012, !45, i64 1016, !45, i64 1020, !45, i64 1024, !45, i64 1028, !45, i64 1032, !43, i64 1036, !43, i64 1038, !43, i64 1040, !37, i64 1042, !37, i64 1043, !43, i64 1044, !37, i64 1046, !37, i64 1047, !45, i64 1048, !45, i64 1052, !51, i64 1056, !51, i64 1072, !51, i64 1088, !51, i64 1104, !45, i64 1120, !43, i64 1124, !43, i64 1126, !37, i64 1128, !39, i64 1144, !39, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !43, i64 1162, !37, i64 1164, !51, i64 1176, !51, i64 1192, !51, i64 1208, !51, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !43, i64 1266, !45, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !68, i64 1304, !68, i64 1312, !39, i64 1320, !39, i64 1324, !51, i64 1328, !51, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !51, i64 1400, !36, i64 1416}
!75 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!76 = !{!77, !36, i64 16}
!77 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !45, i64 32, !45, i64 36, !45, i64 40, !43, i64 44, !43, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !45, i64 52, !43, i64 56, !37, i64 58, !37, i64 59, !78, i64 64, !79, i64 168, !45, i64 336, !45, i64 340, !43, i64 344, !43, i64 346, !37, i64 348, !37, i64 349, !43, i64 350, !45, i64 352, !45, i64 356, !45, i64 360, !45, i64 364, !45, i64 368, !45, i64 372, !45, i64 376, !45, i64 380, !45, i64 384, !45, i64 388, !43, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !43, i64 434, !43, i64 436, !43, i64 438, !43, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !39, i64 448, !39, i64 452, !39, i64 456, !39, i64 460, !43, i64 464, !43, i64 466, !39, i64 468, !45, i64 472, !45, i64 476, !80, i64 480, !81, i64 608}
!78 = !{!"ImagePaintSettings", !35, i64 0, !43, i64 40, !43, i64 42, !43, i64 44, !43, i64 46, !37, i64 48, !39, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !45, i64 100}
!79 = !{!"ParticleEditSettings", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !37, i64 8, !36, i64 120, !45, i64 128, !45, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !36, i64 152, !36, i64 160}
!80 = !{!"UnifiedPaintSettings", !39, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !37, i64 16, !37, i64 28, !39, i64 40, !37, i64 44, !45, i64 52, !39, i64 56, !39, i64 60, !37, i64 64, !37, i64 65, !45, i64 72, !37, i64 76, !39, i64 84, !45, i64 88, !37, i64 92, !37, i64 100, !39, i64 108, !36, i64 112, !45, i64 120, !39, i64 124}
!81 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !37, i64 20, !37, i64 21, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36}
!82 = !{!77, !36, i64 0}
!83 = !{!77, !36, i64 8}
!84 = !{!77, !39, i64 448}
!85 = !{!77, !36, i64 24}
!86 = !{!41, !36, i64 144}
!87 = !{!88, !37, i64 10556}
!88 = !{!"SpaceImage", !36, i64 0, !36, i64 8, !51, i64 16, !39, i64 32, !39, i64 36, !36, i64 40, !89, i64 48, !36, i64 88, !90, i64 96, !91, i64 5360, !36, i64 10520, !37, i64 10528, !45, i64 10536, !45, i64 10540, !45, i64 10544, !45, i64 10548, !45, i64 10552, !37, i64 10556, !37, i64 10557, !43, i64 10558, !43, i64 10560, !43, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !92, i64 10568}
!89 = !{!"ImageUser", !36, i64 0, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !43, i64 28, !43, i64 30, !43, i64 32, !43, i64 34, !39, i64 36}
!90 = !{!"Scopes", !39, i64 0, !39, i64 4, !39, i64 8, !45, i64 12, !39, i64 16, !45, i64 20, !45, i64 24, !39, i64 28, !45, i64 32, !39, i64 36, !37, i64 40, !91, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !39, i64 5256, !39, i64 5260}
!91 = !{!"Histogram", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !45, i64 5128, !45, i64 5132, !43, i64 5136, !43, i64 5138, !39, i64 5140, !37, i64 5144}
!92 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!93 = !{!94, !36, i64 120}
!94 = !{!"PaintCurve", !42, i64 0, !36, i64 120, !39, i64 128, !39, i64 132}
!95 = !{!36, !36, i64 0}
!96 = !{!94, !39, i64 128}
!97 = !{!35, !36, i64 8}
!98 = !{!41, !36, i64 808}
!99 = !{!100, !39, i64 152}
!100 = !{!"Palette", !42, i64 0, !51, i64 120, !51, i64 136, !39, i64 152, !39, i64 156}
!101 = !{!100, !43, i64 98}
!102 = !{i8 0, i8 2}
!103 = !{!"paint.c:BLI_listbase_is_empty"}
!104 = !{!51, !36, i64 0}
!105 = !{!74, !43, i64 136}
!106 = !{!74, !36, i64 296}
!107 = !{!108, !37, i64 1365}
!108 = !{!"Mesh", !42, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !109, i64 280, !109, i64 480, !109, i64 680, !109, i64 880, !109, i64 1080, !39, i64 1280, !39, i64 1284, !39, i64 1288, !39, i64 1292, !39, i64 1296, !39, i64 1300, !39, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !39, i64 1344, !43, i64 1348, !43, i64 1350, !45, i64 1352, !39, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !43, i64 1366, !36, i64 1368}
!109 = !{!"CustomData", !36, i64 0, !37, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !36, i64 184, !36, i64 192}
!110 = !{!111, !36, i64 0}
!111 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !51, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !43, i64 2084, !43, i64 2086, !43, i64 2088, !37, i64 2090, !43, i64 2092, !39, i64 2096, !39, i64 2100, !37, i64 2104, !39, i64 2108, !39, i64 2112, !37, i64 2116}
!112 = !{!37, !37, i64 0}
!113 = !{!114, !39, i64 0}
!114 = !{!"MFace", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !43, i64 16, !37, i64 18, !37, i64 19}
!115 = !{!116, !37, i64 18}
!116 = !{!"MVert", !37, i64 0, !37, i64 12, !37, i64 18, !37, i64 19}
!117 = !{!114, !39, i64 4}
!118 = !{!114, !39, i64 8}
!119 = !{!114, !39, i64 12}
!120 = !{!121, !36, i64 24}
!121 = !{!"BMFace", !122, i64 0, !36, i64 16, !36, i64 24, !39, i64 32, !37, i64 36, !43, i64 48}
!122 = !{!"BMHeader", !36, i64 0, !39, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!123 = !{!124, !36, i64 16}
!124 = !{!"BMLoop", !122, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!125 = !{!124, !36, i64 56}
!126 = distinct !{!126, !127}
!127 = !{!"llvm.loop.mustprogress"}
!128 = !{!"paint.c:_bm_elem_flag_test"}
!129 = !{!122, !37, i64 13}
!130 = !{!131, !39, i64 8}
!131 = !{!"GridPaintMask", !36, i64 0, !39, i64 8, !39, i64 12}
!132 = !{!131, !36, i64 0}
!133 = !{!45, !45, i64 0}
!134 = !{!80, !45, i64 52}
!135 = !{!"paint.c:sub_v2_v2v2"}
!136 = !{!"paint.c:len_squared_v2"}
!137 = !{!138, !36, i64 120}
!138 = !{!"SculptSession", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !39, i64 80, !39, i64 84, !37, i64 88, !36, i64 96, !36, i64 104, !37, i64 112, !37, i64 113, !36, i64 120, !36, i64 128, !36, i64 136, !37, i64 144, !39, i64 148, !36, i64 152, !39, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 204, !37, i64 216, !39, i64 228}
!139 = !{!138, !36, i64 128}
!140 = !{!138, !36, i64 136}
!141 = !{!74, !36, i64 128}
!142 = !{!"paint.c:sculptsession_bm_to_me_update_data_only"}
!143 = !{!138, !36, i64 72}
!144 = !{!138, !37, i64 88}
!145 = distinct !{!145, !127}
!146 = !{!138, !36, i64 96}
!147 = !{!138, !36, i64 104}
!148 = !{!74, !36, i64 1296}
!149 = !{!150, !36, i64 1568}
!150 = !{!"DerivedMesh", !109, i64 0, !109, i64 200, !109, i64 400, !109, i64 600, !109, i64 800, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !36, i64 1032, !36, i64 1040, !39, i64 1048, !45, i64 1052, !39, i64 1056, !39, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!151 = !{!138, !36, i64 152}
!152 = !{!138, !36, i64 168}
!153 = !{!138, !36, i64 176}
!154 = !{!155, !39, i64 16}
!155 = !{!"ModifierData", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!156 = !{!157, !37, i64 113}
!157 = !{!"MultiresModifierData", !155, i64 0, !37, i64 112, !37, i64 113, !37, i64 114, !37, i64 115, !37, i64 116, !37, i64 117, !37, i64 118}
!158 = !{!155, !36, i64 0}
!159 = distinct !{!159, !127}
!160 = !{!138, !37, i64 113}
!161 = !{!162, !39, i64 40}
!162 = !{!"Sculpt", !35, i64 0, !39, i64 40, !37, i64 44, !45, i64 56, !39, i64 60, !45, i64 64, !45, i64 68, !36, i64 72, !36, i64 80}
!163 = !{!138, !37, i64 112}
!164 = !{!138, !36, i64 48}
!165 = !{!68, !68, i64 0}
!166 = !{!108, !39, i64 1280}
!167 = !{!138, !39, i64 32}
!168 = !{!108, !39, i64 1296}
!169 = !{!138, !39, i64 36}
!170 = !{!108, !36, i64 232}
!171 = !{!138, !36, i64 8}
!172 = !{!108, !36, i64 168}
!173 = !{!138, !36, i64 16}
!174 = !{!108, !36, i64 184}
!175 = !{!138, !36, i64 24}
!176 = !{!138, !36, i64 40}
!177 = !{!138, !36, i64 0}
!178 = !{!138, !36, i64 56}
!179 = !{!150, !36, i64 1104}
!180 = !{!150, !36, i64 1136}
!181 = !{!150, !36, i64 1560}
!182 = !{!138, !36, i64 64}
!183 = distinct !{!183, !127}
!184 = !{!"paint.c:sculpt_modifiers_active"}
!185 = !{!74, !37, i64 1265}
!186 = !{!108, !36, i64 144}
!187 = !{!74, !43, i64 1266}
!188 = !{!189, !39, i64 68}
!189 = !{!"ModifierTypeInfo", !37, i64 0, !37, i64 32, !39, i64 64, !39, i64 68, !39, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208}
!190 = distinct !{!190, !127}
!191 = !{!108, !39, i64 1300}
!192 = distinct !{!192, !127}
!193 = !{!194, !39, i64 4}
!194 = !{!"MPoly", !39, i64 0, !39, i64 4, !43, i64 8, !37, i64 10, !37, i64 11}
!195 = !{!194, !39, i64 0}
!196 = !{!197, !39, i64 0}
!197 = !{!"MLoop", !39, i64 0, !39, i64 4}
!198 = distinct !{!198, !127}
!199 = distinct !{!199, !127}
!200 = distinct !{!200, !127}
!201 = !{!"paint.c:max_ii"}
!202 = !{!"paint.c:BM_iter_new"}
!203 = !{!"paint.c:_bm_elem_flag_set"}
!204 = !{!"paint.c:BM_iter_step"}
!205 = !{!206, !36, i64 48}
!206 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !39, i64 56, !37, i64 60}
!207 = !{!"paint.c:BM_iter_init"}
!208 = !{!206, !37, i64 60}
!209 = !{!206, !36, i64 40}
!210 = !{!211, !36, i64 56}
!211 = !{!"BMesh", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !39, i64 88, !39, i64 92, !39, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 136, !109, i64 144, !109, i64 344, !109, i64 544, !109, i64 744, !43, i64 944, !39, i64 948, !39, i64 952, !39, i64 956, !51, i64 960, !36, i64 976, !51, i64 984, !36, i64 1000}
!212 = !{!"paint.c:_bm_elem_flag_enable"}
!213 = !{!"paint.c:_bm_elem_flag_disable"}
