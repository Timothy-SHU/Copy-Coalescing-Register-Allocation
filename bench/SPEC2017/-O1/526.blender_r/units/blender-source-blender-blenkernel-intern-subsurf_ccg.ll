; ModuleID = 'blender/source/blender/blenkernel/intern/subsurf_ccg.c'
source_filename = "blender/source/blender/blenkernel/intern/subsurf_ccg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.CCGDerivedMesh = type { %struct.DerivedMesh, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.anon = type { ptr, i32, i32, i32, ptr, ptr, i32 }
%struct.anon.0 = type { i32, i32, i32, ptr }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MDisps = type { i32, i32, ptr, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.GridPaintMask = type { ptr, i32, i32 }
%struct.SubsurfModifierData = type { %struct.ModifierData, i16, i16, i16, i16, ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
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
%struct.CCGMeshIFC = type { i32, i32, i32, i32, i32, i32 }
%struct.CCGAllocatorIFC = type { ptr, ptr, ptr, ptr }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.MLoop = type { i32, i32 }
%struct.anon.1 = type { i32, ptr }
%struct.anon.2 = type { i32, i32, ptr }
%struct.FaceVertWeightEntry = type { ptr, ptr, i32 }
%struct.DMFlagMat = type { i16, i8 }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.MTexPoly = type { ptr, i8, i8, i16, i16, i16 }
%struct.MLoopUV = type { [2 x float], i32 }
%struct.MCol = type { i8, i8, i8, i8 }
%struct.MLoopCol = type { i8, i8, i8, i8 }
%struct.OrigSpaceLoop = type { [2 x float] }
%struct.CCGKey = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.SculptSession = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, i8, i8, ptr, ptr, ptr, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i8, [3 x float], [3 x float], i32 }
%struct.GPUVertexAttribs = type { [32 x %struct.anon.3], i32 }
%struct.anon.3 = type { i32, i32, i32, i32, [64 x i8] }
%struct.DMVertexAttribs = type { [8 x %struct.anon.4], [8 x %struct.anon.5], %struct.anon.6, %struct.anon.7, i32, i32, i32, i32 }
%struct.anon.4 = type { ptr, i32, i32, i32 }
%struct.anon.5 = type { ptr, i32, i32 }
%struct.anon.6 = type { ptr, i32, i32 }
%struct.anon.7 = type { ptr, i32, i32, i32 }
%struct.DMGridAdjacency = type { [4 x i32], [4 x i32] }
%struct.UvMapVert = type { ptr, i32, i8, i8, i8 }

@.str = private unnamed_addr constant [14 x i8] c"subsurf arena\00", align 1
@ss_sync_from_derivedmesh.hasGivenError = internal unnamed_addr global i1 false, align 4
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"ccgdm\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"vertMap\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"edgeMap\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"faceMap\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"reverseFaceMap\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"edgeFlags\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"faceFlags\00", align 1
@loops_cache_rwlock = internal global i32 0, align 4
@__func__.ccgDM_copyFinalLoopArray = private unnamed_addr constant [25 x i8] c"ccgDM_copyFinalLoopArray\00", align 1
@origindex_cache_rwlock = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"ccgdm.gridOffset\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"ccgdm.gridData\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"ccgdm.gridAdjacency\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"ccgdm.gridFaces\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"ccgdm.gridFlagMats\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"ccgdm.gridHidden\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"vertmap\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"edgemap\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"facemap\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@__glewMultiTexCoord2fv = external local_unnamed_addr global ptr, align 8
@stipple_quarttone = external global [128 x i8], align 16
@__glewVertexAttrib3fvARB = external local_unnamed_addr global ptr, align 8
@__glewVertexAttrib2fvARB = external local_unnamed_addr global ptr, align 8
@__glewVertexAttrib4ubvARB = external local_unnamed_addr global ptr, align 8
@__glewVertexAttrib4fvARB = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [21 x i8] c"weight table alloc 2\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"weight table alloc\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"facemapuv\00", align 1
@__func__.ss_sync_from_uv = private unnamed_addr constant [16 x i8] c"ss_sync_from_uv\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @subsurf_copy_grid_hidden(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call i32 @ccgSubSurf_getSubdivisionLevels(ptr noundef %6) #10
  %8 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %6) #10
  %9 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %6) #10
  %10 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %6) #10
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %75

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %14 = icmp slt i32 %8, 1
  %15 = zext nneg i32 %10 to i64
  br label %16

16:                                               ; preds = %12, %72
  %17 = phi i64 [ 0, %12 ], [ %73, %72 ]
  %18 = load ptr, ptr %13, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.anon.0, ptr %18, i64 %17, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  %21 = getelementptr inbounds %struct.MPoly, ptr %1, i64 %17, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !47
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %72

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.MPoly, ptr %1, i64 %17
  br label %26

26:                                               ; preds = %24, %68
  %27 = phi i32 [ 0, %24 ], [ %69, %68 ]
  %28 = load i32, ptr %25, align 4, !tbaa !50
  %29 = add nsw i32 %28, %27
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.MDisps, ptr %3, i64 %30, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !51
  %33 = tail call i32 @BKE_ccg_gridsize(i32 noundef %32) #10
  %34 = load i32, ptr %31, align 4, !tbaa !51
  %35 = tail call i32 @BKE_ccg_factor(i32 noundef %7, i32 noundef %34) #10
  %36 = getelementptr inbounds %struct.MDisps, ptr %3, i64 %30, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !53
  %38 = icmp eq ptr %37, null
  %39 = select i1 %38, i1 true, i1 %14
  br i1 %39, label %68, label %40

40:                                               ; preds = %26, %65
  %41 = phi i32 [ %66, %65 ], [ 0, %26 ]
  %42 = mul i32 %41, %33
  br label %43

43:                                               ; preds = %40, %62
  %44 = phi i32 [ 0, %40 ], [ %63, %62 ]
  %45 = tail call fastcc i32 @getFaceIndex(ptr noundef %6, ptr noundef %20, i32 noundef %27, i32 noundef %44, i32 noundef %41, i32 noundef %9, i32 noundef %8)
  %46 = add i32 %44, %42
  %47 = mul i32 %46, %35
  %48 = load ptr, ptr %36, align 8, !tbaa !53
  %49 = ashr i32 %47, 5
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %48, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !54
  %53 = and i32 %47, 31
  %54 = shl nuw i32 1, %53
  %55 = and i32 %52, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %43
  %58 = sext i32 %45 to i64
  %59 = getelementptr inbounds %struct.MVert, ptr %2, i64 %58, i32 2
  %60 = load i8, ptr %59, align 2, !tbaa !55
  %61 = or i8 %60, 16
  store i8 %61, ptr %59, align 2, !tbaa !55
  br label %62

62:                                               ; preds = %57, %43
  %63 = add nuw nsw i32 %44, 1
  %64 = icmp eq i32 %63, %8
  br i1 %64, label %65, label %43, !llvm.loop !57

65:                                               ; preds = %62
  %66 = add nuw nsw i32 %41, 1
  %67 = icmp eq i32 %66, %8
  br i1 %67, label %68, label %40, !llvm.loop !60

68:                                               ; preds = %65, %26
  %69 = add nuw nsw i32 %27, 1
  %70 = load i32, ptr %21, align 4, !tbaa !47
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %26, label %72, !llvm.loop !61

72:                                               ; preds = %68, %16
  %73 = add nuw nsw i64 %17, 1
  %74 = icmp eq i64 %73, %15
  br i1 %74, label %75, label %16, !llvm.loop !62

75:                                               ; preds = %72, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @ccgSubSurf_getSubdivisionLevels(ptr noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_getGridSize(ptr noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_getEdgeSize(ptr noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_getNumFaces(ptr noundef) local_unnamed_addr #2

declare i32 @BKE_ccg_gridsize(i32 noundef) local_unnamed_addr #2

declare i32 @BKE_ccg_factor(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @getFaceIndex(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = tail call ptr @ccgSubSurf_getFaceUserData(ptr noundef %0, ptr noundef %1) #10
  %9 = load i32, ptr %8, align 4, !tbaa !54
  %10 = tail call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %1) #10
  %11 = add nsw i32 %6, -1
  %12 = sub i32 1, %6
  %13 = icmp eq i32 %11, %3
  %14 = icmp eq i32 %11, %4
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %7
  %17 = tail call ptr @ccgSubSurf_getFaceVert(ptr noundef %1, i32 noundef %2) #10
  %18 = tail call ptr @ccgSubSurf_getVertUserData(ptr noundef %0, ptr noundef %17) #10
  %19 = load i32, ptr %18, align 4, !tbaa !54
  br label %84

20:                                               ; preds = %7
  br i1 %13, label %21, label %37

21:                                               ; preds = %20
  %22 = tail call ptr @ccgSubSurf_getFaceVert(ptr noundef %1, i32 noundef %2) #10
  %23 = tail call ptr @ccgSubSurf_getFaceEdge(ptr noundef %1, i32 noundef %2) #10
  %24 = tail call ptr @ccgSubSurf_getEdgeUserData(ptr noundef %0, ptr noundef %23) #10
  %25 = load i32, ptr %24, align 4, !tbaa !54
  %26 = tail call ptr @ccgSubSurf_getEdgeVert0(ptr noundef %23) #10
  %27 = icmp eq ptr %22, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = xor i32 %4, -1
  %30 = add i32 %11, %29
  %31 = add i32 %30, %25
  br label %84

32:                                               ; preds = %21
  %33 = add i32 %5, -2
  %34 = add i32 %33, %4
  %35 = add i32 %34, %12
  %36 = add i32 %35, %25
  br label %84

37:                                               ; preds = %20
  br i1 %14, label %38, label %57

38:                                               ; preds = %37
  %39 = tail call ptr @ccgSubSurf_getFaceVert(ptr noundef %1, i32 noundef %2) #10
  %40 = add i32 %2, -1
  %41 = add i32 %40, %10
  %42 = srem i32 %41, %10
  %43 = tail call ptr @ccgSubSurf_getFaceEdge(ptr noundef %1, i32 noundef %42) #10
  %44 = tail call ptr @ccgSubSurf_getEdgeUserData(ptr noundef %0, ptr noundef %43) #10
  %45 = load i32, ptr %44, align 4, !tbaa !54
  %46 = tail call ptr @ccgSubSurf_getEdgeVert0(ptr noundef %43) #10
  %47 = icmp eq ptr %39, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = xor i32 %3, -1
  %50 = add i32 %11, %49
  %51 = add i32 %50, %45
  br label %84

52:                                               ; preds = %38
  %53 = add i32 %5, -2
  %54 = add i32 %53, %3
  %55 = add i32 %54, %12
  %56 = add i32 %55, %45
  br label %84

57:                                               ; preds = %37
  %58 = icmp eq i32 %4, 0
  %59 = or i32 %4, %3
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %84, label %61

61:                                               ; preds = %57
  %62 = icmp eq i32 %3, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %61
  %64 = add i32 %2, -1
  %65 = add i32 %64, %10
  %66 = srem i32 %65, %10
  %67 = add nsw i32 %6, -2
  %68 = mul nsw i32 %66, %67
  %69 = add i32 %9, %4
  %70 = add i32 %69, %68
  br label %84

71:                                               ; preds = %61
  %72 = add nsw i32 %6, -2
  %73 = mul i32 %72, %2
  br i1 %58, label %74, label %77

74:                                               ; preds = %71
  %75 = add i32 %73, %3
  %76 = add i32 %75, %9
  br label %84

77:                                               ; preds = %71
  %78 = add i32 %4, -1
  %79 = add i32 %78, %73
  %80 = add i32 %79, %10
  %81 = mul i32 %80, %72
  %82 = add i32 %9, %3
  %83 = add i32 %82, %81
  br label %84

84:                                               ; preds = %57, %48, %52, %28, %32, %77, %74, %63, %16
  %85 = phi i32 [ %19, %16 ], [ %70, %63 ], [ %76, %74 ], [ %83, %77 ], [ %31, %28 ], [ %36, %32 ], [ %51, %48 ], [ %56, %52 ], [ %9, %57 ]
  ret i32 %85
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @subsurf_copy_grid_paint_mask(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call i32 @ccgSubSurf_getSubdivisionLevels(ptr noundef %6) #10
  %8 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %6) #10
  %9 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %6) #10
  %10 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %6) #10
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %68

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %14 = icmp sgt i32 %8, 0
  %15 = zext nneg i32 %10 to i64
  %16 = zext nneg i32 %8 to i64
  br label %17

17:                                               ; preds = %12, %65
  %18 = phi i64 [ 0, %12 ], [ %66, %65 ]
  %19 = load ptr, ptr %13, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct.anon.0, ptr %19, i64 %18, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct.MPoly, ptr %1, i64 %18
  %23 = getelementptr inbounds %struct.MPoly, ptr %1, i64 %18, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !47
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %65

26:                                               ; preds = %17, %61
  %27 = phi i32 [ %62, %61 ], [ 0, %17 ]
  %28 = load i32, ptr %22, align 4, !tbaa !50
  %29 = add nsw i32 %28, %27
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.GridPaintMask, ptr %3, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !63
  %33 = icmp eq ptr %32, null
  br i1 %33, label %61, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.GridPaintMask, ptr %3, i64 %30, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !65
  %37 = tail call i32 @BKE_ccg_factor(i32 noundef %7, i32 noundef %36) #10
  %38 = load i32, ptr %35, align 8, !tbaa !65
  %39 = tail call i32 @BKE_ccg_gridsize(i32 noundef %38) #10
  br i1 %14, label %40, label %61

40:                                               ; preds = %34, %58
  %41 = phi i32 [ %59, %58 ], [ 0, %34 ]
  %42 = mul i32 %41, %39
  br label %43

43:                                               ; preds = %40, %43
  %44 = phi i64 [ 0, %40 ], [ %56, %43 ]
  %45 = trunc i64 %44 to i32
  %46 = tail call fastcc i32 @getFaceIndex(ptr noundef %6, ptr noundef %21, i32 noundef %27, i32 noundef %45, i32 noundef %41, i32 noundef %9, i32 noundef %8)
  %47 = trunc i64 %44 to i32
  %48 = add i32 %42, %47
  %49 = mul i32 %48, %37
  %50 = load ptr, ptr %31, align 8, !tbaa !63
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds float, ptr %50, i64 %51
  %53 = load float, ptr %52, align 4, !tbaa !66
  %54 = sext i32 %46 to i64
  %55 = getelementptr inbounds float, ptr %2, i64 %54
  store float %53, ptr %55, align 4, !tbaa !66
  %56 = add nuw nsw i64 %44, 1
  %57 = icmp eq i64 %56, %16
  br i1 %57, label %58, label %43, !llvm.loop !67

58:                                               ; preds = %43
  %59 = add nuw nsw i32 %41, 1
  %60 = icmp eq i32 %59, %8
  br i1 %60, label %61, label %40, !llvm.loop !68

61:                                               ; preds = %58, %34, %26
  %62 = add nuw nsw i32 %27, 1
  %63 = load i32, ptr %23, align 4, !tbaa !47
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %26, label %65, !llvm.loop !69

65:                                               ; preds = %61, %17
  %66 = add nuw nsw i64 %18, 1
  %67 = icmp eq i64 %66, %15
  br i1 %67, label %68, label %17, !llvm.loop !70

68:                                               ; preds = %65, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @subsurf_make_derived_from_derived(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.SubsurfModifierData, ptr %1, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !71
  %7 = icmp eq i16 %6, 1
  %8 = select i1 %7, i32 16, i32 0
  %9 = getelementptr inbounds %struct.SubsurfModifierData, ptr %1, i64 0, i32 4
  %10 = load i16, ptr %9, align 2, !tbaa !74
  %11 = zext i16 %10 to i32
  %12 = lshr i32 %11, 1
  %13 = and i32 %12, 1
  %14 = and i32 %11, 8
  %15 = lshr i32 %11, 2
  %16 = and i32 %15, 1
  %17 = xor i32 %16, 1
  %18 = and i32 %3, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !75
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 22
  %26 = getelementptr inbounds %struct.SubsurfModifierData, ptr %1, i64 0, i32 2
  %27 = load i16, ptr %26, align 2, !tbaa !76
  %28 = sext i16 %27 to i32
  %29 = tail call i32 @get_render_subsurf_level(ptr noundef nonnull %25, i32 noundef %28) #10
  br label %34

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.SubsurfModifierData, ptr %1, i64 0, i32 2
  %32 = load i16, ptr %31, align 2, !tbaa !76
  %33 = sext i16 %32 to i32
  br label %34

34:                                               ; preds = %30, %24
  %35 = phi i32 [ %29, %24 ], [ %33, %30 ]
  %36 = getelementptr inbounds %struct.SubsurfModifierData, ptr %1, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !77
  %38 = or disjoint i32 %8, %13
  %39 = or disjoint i32 %38, 4
  %40 = tail call fastcc ptr @_getSubSurf(ptr noundef %37, i32 noundef %35, i32 noundef 3, i32 noundef %39)
  store ptr %40, ptr %36, align 8, !tbaa !77
  tail call fastcc void @ss_sync_from_derivedmesh(ptr noundef %40, ptr noundef %0, ptr noundef %2, i32 noundef %8)
  %41 = load ptr, ptr %36, align 8, !tbaa !77
  %42 = tail call fastcc ptr @getCCGDerivedMesh(ptr noundef %41, i32 noundef %17, i32 noundef %14, ptr noundef %0)
  br label %121

43:                                               ; preds = %4
  %44 = and i32 %3, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %68, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !75
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.Scene, ptr %48, i64 0, i32 22
  %52 = getelementptr inbounds %struct.SubsurfModifierData, ptr %1, i64 0, i32 3
  %53 = load i16, ptr %52, align 4, !tbaa !78
  %54 = sext i16 %53 to i32
  %55 = tail call i32 @get_render_subsurf_level(ptr noundef nonnull %51, i32 noundef %54) #10
  br label %60

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.SubsurfModifierData, ptr %1, i64 0, i32 3
  %58 = load i16, ptr %57, align 4, !tbaa !78
  %59 = sext i16 %58 to i32
  br label %60

60:                                               ; preds = %56, %50
  %61 = phi i32 [ %55, %50 ], [ %59, %56 ]
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %121, label %63

63:                                               ; preds = %60
  %64 = or disjoint i32 %8, 6
  %65 = tail call fastcc ptr @_getSubSurf(ptr noundef null, i32 noundef %61, i32 noundef 3, i32 noundef %64)
  tail call fastcc void @ss_sync_from_derivedmesh(ptr noundef %65, ptr noundef %0, ptr noundef %2, i32 noundef %8)
  %66 = tail call fastcc ptr @getCCGDerivedMesh(ptr noundef %65, i32 noundef %17, i32 noundef %14, ptr noundef %0)
  %67 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %66, i64 0, i32 2
  store i32 1, ptr %67, align 8, !tbaa !79
  br label %121

68:                                               ; preds = %43
  %69 = and i32 %11, 1
  %70 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !75
  %72 = icmp eq ptr %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.Scene, ptr %71, i64 0, i32 22
  %75 = getelementptr inbounds %struct.SubsurfModifierData, ptr %1, i64 0, i32 2
  %76 = load i16, ptr %75, align 2, !tbaa !76
  %77 = sext i16 %76 to i32
  %78 = tail call i32 @get_render_subsurf_level(ptr noundef nonnull %74, i32 noundef %77) #10
  br label %83

79:                                               ; preds = %68
  %80 = getelementptr inbounds %struct.SubsurfModifierData, ptr %1, i64 0, i32 2
  %81 = load i16, ptr %80, align 2, !tbaa !76
  %82 = sext i16 %81 to i32
  br label %83

83:                                               ; preds = %79, %73
  %84 = phi i32 [ %78, %73 ], [ %82, %79 ]
  %85 = and i32 %3, 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.SubsurfModifierData, ptr %1, i64 0, i32 5
  %89 = load ptr, ptr %88, align 8, !tbaa !77
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  tail call void @ccgSubSurf_free(ptr noundef nonnull %89) #10
  store ptr null, ptr %88, align 8, !tbaa !77
  br label %92

92:                                               ; preds = %91, %87, %83
  %93 = icmp eq i32 %69, 0
  %94 = and i32 %3, 2
  %95 = icmp eq i32 %94, 0
  %96 = or i1 %95, %93
  %97 = getelementptr inbounds %struct.SubsurfModifierData, ptr %1, i64 0, i32 6
  %98 = load ptr, ptr %97, align 8, !tbaa !80
  br i1 %96, label %105, label %99

99:                                               ; preds = %92
  %100 = or disjoint i32 %8, %13
  %101 = or disjoint i32 %100, 4
  %102 = tail call fastcc ptr @_getSubSurf(ptr noundef %98, i32 noundef %84, i32 noundef 3, i32 noundef %101)
  store ptr %102, ptr %97, align 8, !tbaa !80
  tail call fastcc void @ss_sync_from_derivedmesh(ptr noundef %102, ptr noundef %0, ptr noundef %2, i32 noundef %8)
  %103 = load ptr, ptr %97, align 8, !tbaa !80
  %104 = tail call fastcc ptr @getCCGDerivedMesh(ptr noundef %103, i32 noundef %17, i32 noundef %14, ptr noundef %0)
  br label %121

105:                                              ; preds = %92
  %106 = icmp eq ptr %98, null
  %107 = or i1 %95, %106
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  tail call void @ccgSubSurf_free(ptr noundef nonnull %98) #10
  store ptr null, ptr %97, align 8, !tbaa !80
  br label %109

109:                                              ; preds = %108, %105
  %110 = and i32 %3, 16
  %111 = icmp eq i32 %110, 0
  %112 = select i1 %111, i32 6, i32 14
  %113 = or disjoint i32 %8, %112
  %114 = tail call fastcc ptr @_getSubSurf(ptr noundef null, i32 noundef %84, i32 noundef 3, i32 noundef %113)
  tail call fastcc void @ss_sync_from_derivedmesh(ptr noundef %114, ptr noundef %0, ptr noundef %2, i32 noundef %8)
  %115 = tail call fastcc ptr @getCCGDerivedMesh(ptr noundef %114, i32 noundef %17, i32 noundef %14, ptr noundef %0)
  br i1 %95, label %117, label %116

116:                                              ; preds = %109
  store ptr %114, ptr %97, align 8, !tbaa !80
  br label %119

117:                                              ; preds = %109
  %118 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %115, i64 0, i32 2
  store i32 1, ptr %118, align 8, !tbaa !79
  br label %119

119:                                              ; preds = %117, %116
  br i1 %111, label %121, label %120

120:                                              ; preds = %119
  tail call void @ccgSubSurf_setNumLayers(ptr noundef %114, i32 noundef 4) #10
  br label %121

121:                                              ; preds = %63, %60, %34, %119, %120, %99
  %122 = phi ptr [ %42, %34 ], [ %104, %99 ], [ %115, %120 ], [ %115, %119 ], [ %66, %63 ], [ %0, %60 ]
  ret ptr %122
}

declare i32 @get_render_subsurf_level(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_getSubSurf(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.CCGMeshIFC, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.CCGAllocatorIFC, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %8 = and i32 %3, 1
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %3, 2
  %11 = tail call i32 @llvm.smax.i32(i32 %1, i32 1)
  %12 = icmp eq ptr %0, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  call void @ccgSubSurf_getUseAgeCounts(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef null) #10
  %14 = load i32, ptr %6, align 4, !tbaa !54
  %15 = icmp eq i32 %14, %8
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = call i32 @ccgSubSurf_getSimpleSubdiv(ptr noundef nonnull %0) #10
  %18 = lshr i32 %3, 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %13
  call void @ccgSubSurf_free(ptr noundef nonnull %0) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br label %24

22:                                               ; preds = %16
  %23 = call i32 @ccgSubSurf_setSubdivisionLevels(ptr noundef nonnull %0, i32 noundef %11) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br label %64

24:                                               ; preds = %21, %4
  %25 = getelementptr inbounds %struct.CCGMeshIFC, ptr %5, i64 0, i32 2
  %26 = getelementptr inbounds %struct.CCGMeshIFC, ptr %5, i64 0, i32 1
  %27 = select i1 %9, i32 8, i32 12
  store i32 %27, ptr %25, align 4, !tbaa !81
  store i32 %27, ptr %26, align 4, !tbaa !83
  store i32 %27, ptr %5, align 4, !tbaa !84
  %28 = getelementptr inbounds %struct.CCGMeshIFC, ptr %5, i64 0, i32 3
  store i32 %2, ptr %28, align 4, !tbaa !85
  %29 = shl i32 %2, 2
  %30 = getelementptr inbounds %struct.CCGMeshIFC, ptr %5, i64 0, i32 4
  %31 = and i32 %3, 4
  %32 = icmp eq i32 %31, 0
  %33 = add i32 %29, 12
  %34 = select i1 %32, i32 %29, i32 %33
  %35 = and i32 %3, 8
  %36 = icmp eq i32 %35, 0
  %37 = lshr exact i32 %35, 1
  %38 = add i32 %34, %37
  store i32 %38, ptr %30, align 4, !tbaa !86
  %39 = lshr i32 %3, 4
  %40 = and i32 %39, 1
  %41 = getelementptr inbounds %struct.CCGMeshIFC, ptr %5, i64 0, i32 5
  store i32 %40, ptr %41, align 4, !tbaa !87
  %42 = icmp eq i32 %10, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #10
  %44 = call ptr @BLI_memarena_new(i64 noundef 65528, ptr noundef nonnull @.str) #10
  store ptr @arena_alloc, ptr %7, align 8, !tbaa !88
  %45 = getelementptr inbounds %struct.CCGAllocatorIFC, ptr %7, i64 0, i32 1
  store ptr @arena_realloc, ptr %45, align 8, !tbaa !90
  %46 = getelementptr inbounds %struct.CCGAllocatorIFC, ptr %7, i64 0, i32 2
  store ptr @arena_free, ptr %46, align 8, !tbaa !91
  %47 = getelementptr inbounds %struct.CCGAllocatorIFC, ptr %7, i64 0, i32 3
  store ptr @arena_release, ptr %47, align 8, !tbaa !92
  %48 = call ptr @ccgSubSurf_new(ptr noundef nonnull %5, i32 noundef %11, ptr noundef nonnull %7, ptr noundef %44) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #10
  br label %51

49:                                               ; preds = %24
  %50 = call ptr @ccgSubSurf_new(ptr noundef nonnull %5, i32 noundef %11, ptr noundef null, ptr noundef null) #10
  br label %51

51:                                               ; preds = %49, %43
  %52 = phi ptr [ %48, %43 ], [ %50, %49 ]
  br i1 %9, label %55, label %53

53:                                               ; preds = %51
  %54 = call i32 @ccgSubSurf_setUseAgeCounts(ptr noundef %52, i32 noundef 1, i32 noundef 8, i32 noundef 8, i32 noundef 8) #10
  br label %55

55:                                               ; preds = %53, %51
  br i1 %36, label %58, label %56

56:                                               ; preds = %55
  %57 = add i32 %29, 4
  call void @ccgSubSurf_setAllocMask(ptr noundef %52, i32 noundef 1, i32 noundef %29) #10
  br label %58

58:                                               ; preds = %56, %55
  %59 = phi i32 [ %57, %56 ], [ %29, %55 ]
  br i1 %32, label %62, label %60

60:                                               ; preds = %58
  %61 = call i32 @ccgSubSurf_setCalcVertexNormals(ptr noundef %52, i32 noundef 1, i32 noundef %59) #10
  br label %64

62:                                               ; preds = %58
  %63 = call i32 @ccgSubSurf_setCalcVertexNormals(ptr noundef %52, i32 noundef 0, i32 noundef 0) #10
  br label %64

64:                                               ; preds = %60, %62, %22
  %65 = phi ptr [ %0, %22 ], [ %52, %62 ], [ %52, %60 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  ret ptr %65
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ss_sync_from_derivedmesh(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = tail call i32 @ccgSubSurf_getSubdivisionLevels(ptr noundef %0) #10
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 31
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = tail call ptr %11(ptr noundef %1) #10
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 32
  %14 = load ptr, ptr %13, align 8, !tbaa !94
  %15 = tail call ptr %14(ptr noundef %1) #10
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 34
  %17 = load ptr, ptr %16, align 8, !tbaa !95
  %18 = tail call ptr %17(ptr noundef %1) #10
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 35
  %20 = load ptr, ptr %19, align 8, !tbaa !96
  %21 = tail call ptr %20(ptr noundef %1) #10
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 23
  %23 = load ptr, ptr %22, align 8, !tbaa !97
  %24 = tail call i32 %23(ptr noundef %1) #10
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 24
  %26 = load ptr, ptr %25, align 8, !tbaa !98
  %27 = tail call i32 %26(ptr noundef %1) #10
  %28 = tail call i32 @ccgSubSurf_initFullSync(ptr noundef %0) #10
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 50
  %30 = load ptr, ptr %29, align 8, !tbaa !99
  %31 = tail call ptr %30(ptr noundef %1, i32 noundef 7) #10
  %32 = icmp sgt i32 %24, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %4
  %34 = icmp eq ptr %2, null
  %35 = zext nneg i32 %24 to i64
  br label %36

36:                                               ; preds = %33, %52
  %37 = phi i64 [ 0, %33 ], [ %58, %52 ]
  %38 = phi ptr [ %12, %33 ], [ %59, %52 ]
  %39 = phi ptr [ %31, %33 ], [ %53, %52 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %40 = inttoptr i64 %37 to ptr
  br i1 %34, label %44, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds [3 x float], ptr %2, i64 %37
  %43 = call i32 @ccgSubSurf_syncVert(ptr noundef %0, ptr noundef %40, ptr noundef nonnull %42, i32 noundef 0, ptr noundef nonnull %5) #10
  br label %46

44:                                               ; preds = %36
  %45 = call i32 @ccgSubSurf_syncVert(ptr noundef %0, ptr noundef %40, ptr noundef %38, i32 noundef 0, ptr noundef nonnull %5) #10
  br label %46

46:                                               ; preds = %44, %41
  %47 = icmp eq ptr %39, null
  %48 = trunc i64 %37 to i32
  br i1 %47, label %52, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds i32, ptr %39, i64 1
  %51 = load i32, ptr %39, align 4, !tbaa !54
  br label %52

52:                                               ; preds = %46, %49
  %53 = phi ptr [ %50, %49 ], [ null, %46 ]
  %54 = phi i32 [ %51, %49 ], [ %48, %46 ]
  %55 = load ptr, ptr %5, align 8, !tbaa !100
  %56 = call ptr @ccgSubSurf_getVertUserData(ptr noundef %0, ptr noundef %55) #10
  %57 = getelementptr inbounds i32, ptr %56, i64 1
  store i32 %54, ptr %57, align 4, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  %58 = add nuw nsw i64 %37, 1
  %59 = getelementptr inbounds %struct.MVert, ptr %38, i64 1
  %60 = icmp eq i64 %58, %35
  br i1 %60, label %61, label %36, !llvm.loop !101

61:                                               ; preds = %52, %4
  %62 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 51
  %63 = load ptr, ptr %62, align 8, !tbaa !102
  %64 = call ptr %63(ptr noundef %1, i32 noundef 7) #10
  %65 = icmp sgt i32 %27, 0
  br i1 %65, label %66, label %104

66:                                               ; preds = %61
  %67 = icmp eq i32 %3, 0
  %68 = zext nneg i32 %27 to i64
  br label %69

69:                                               ; preds = %66, %95
  %70 = phi i64 [ 0, %66 ], [ %101, %95 ]
  %71 = phi ptr [ %15, %66 ], [ %102, %95 ]
  %72 = phi ptr [ %64, %66 ], [ %96, %95 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  br i1 %67, label %73, label %79

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.MEdge, ptr %71, i64 0, i32 2
  %75 = load i8, ptr %74, align 4, !tbaa !103
  %76 = uitofp i8 %75 to float
  %77 = fmul float %9, %76
  %78 = fdiv float %77, 2.550000e+02
  br label %79

79:                                               ; preds = %69, %73
  %80 = phi float [ %78, %73 ], [ %9, %69 ]
  %81 = inttoptr i64 %70 to ptr
  %82 = load i32, ptr %71, align 4, !tbaa !105
  %83 = zext i32 %82 to i64
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds %struct.MEdge, ptr %71, i64 0, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !106
  %87 = zext i32 %86 to i64
  %88 = inttoptr i64 %87 to ptr
  %89 = call i32 @ccgSubSurf_syncEdge(ptr noundef %0, ptr noundef %81, ptr noundef %84, ptr noundef %88, float noundef %80, ptr noundef nonnull %6) #10
  %90 = icmp eq ptr %72, null
  %91 = trunc i64 %70 to i32
  br i1 %90, label %95, label %92

92:                                               ; preds = %79
  %93 = getelementptr inbounds i32, ptr %72, i64 1
  %94 = load i32, ptr %72, align 4, !tbaa !54
  br label %95

95:                                               ; preds = %79, %92
  %96 = phi ptr [ %93, %92 ], [ null, %79 ]
  %97 = phi i32 [ %94, %92 ], [ %91, %79 ]
  %98 = load ptr, ptr %6, align 8, !tbaa !100
  %99 = call ptr @ccgSubSurf_getEdgeUserData(ptr noundef %0, ptr noundef %98) #10
  %100 = getelementptr inbounds i32, ptr %99, i64 1
  store i32 %97, ptr %100, align 4, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  %101 = add nuw nsw i64 %70, 1
  %102 = getelementptr inbounds %struct.MEdge, ptr %71, i64 1
  %103 = icmp eq i64 %101, %68
  br i1 %103, label %104, label %69, !llvm.loop !107

104:                                              ; preds = %95, %61
  %105 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 54
  %106 = load ptr, ptr %105, align 8, !tbaa !108
  %107 = call ptr %106(ptr noundef %1, i32 noundef 7) #10
  %108 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 9
  %109 = load i32, ptr %108, align 8, !tbaa !109
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %164

111:                                              ; preds = %104, %158
  %112 = phi i64 [ %159, %158 ], [ 0, %104 ]
  %113 = phi ptr [ %157, %158 ], [ %107, %104 ]
  %114 = phi ptr [ %160, %158 ], [ %21, %104 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  %115 = getelementptr inbounds %struct.MPoly, ptr %114, i64 0, i32 1
  %116 = load i32, ptr %115, align 4, !tbaa !47
  %117 = zext i32 %116 to i64
  %118 = call ptr @llvm.stacksave.p0()
  %119 = alloca ptr, i64 %117, align 16
  %120 = load i32, ptr %115, align 4, !tbaa !47
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %111
  %123 = load i32, ptr %114, align 4, !tbaa !50
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.MLoop, ptr %18, i64 %124
  %126 = zext nneg i32 %120 to i64
  br label %127

127:                                              ; preds = %122, %127
  %128 = phi i64 [ 0, %122 ], [ %134, %127 ]
  %129 = phi ptr [ %125, %122 ], [ %135, %127 ]
  %130 = load i32, ptr %129, align 4, !tbaa !110
  %131 = zext i32 %130 to i64
  %132 = inttoptr i64 %131 to ptr
  %133 = getelementptr inbounds ptr, ptr %119, i64 %128
  store ptr %132, ptr %133, align 8, !tbaa !100
  %134 = add nuw nsw i64 %128, 1
  %135 = getelementptr inbounds %struct.MLoop, ptr %129, i64 1
  %136 = icmp eq i64 %134, %126
  br i1 %136, label %137, label %127, !llvm.loop !112

137:                                              ; preds = %127, %111
  %138 = inttoptr i64 %112 to ptr
  %139 = call i32 @ccgSubSurf_syncFace(ptr noundef %0, ptr noundef %138, i32 noundef %120, ptr noundef nonnull %119, ptr noundef nonnull %7) #10
  %140 = icmp eq i32 %139, 2
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i1, ptr @ss_sync_from_derivedmesh.hasGivenError, align 4
  br i1 %142, label %156, label %143

143:                                              ; preds = %141
  store i1 true, ptr @ss_sync_from_derivedmesh.hasGivenError, align 4
  br label %156

144:                                              ; preds = %137
  %145 = icmp eq ptr %113, null
  %146 = trunc i64 %112 to i32
  br i1 %145, label %150, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds i32, ptr %113, i64 1
  %149 = load i32, ptr %113, align 4, !tbaa !54
  br label %150

150:                                              ; preds = %144, %147
  %151 = phi ptr [ %148, %147 ], [ null, %144 ]
  %152 = phi i32 [ %149, %147 ], [ %146, %144 ]
  %153 = load ptr, ptr %7, align 8, !tbaa !100
  %154 = call ptr @ccgSubSurf_getFaceUserData(ptr noundef %0, ptr noundef %153) #10
  %155 = getelementptr inbounds i32, ptr %154, i64 1
  store i32 %152, ptr %155, align 4, !tbaa !54
  br label %156

156:                                              ; preds = %141, %143, %150
  %157 = phi ptr [ %151, %150 ], [ %113, %143 ], [ %113, %141 ]
  call void @llvm.stackrestore.p0(ptr %118)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  br i1 %140, label %166, label %158

158:                                              ; preds = %156
  %159 = add nuw nsw i64 %112, 1
  %160 = getelementptr inbounds %struct.MPoly, ptr %114, i64 1
  %161 = load i32, ptr %108, align 8, !tbaa !109
  %162 = sext i32 %161 to i64
  %163 = icmp slt i64 %159, %162
  br i1 %163, label %111, label %164, !llvm.loop !113

164:                                              ; preds = %158, %104
  %165 = call i32 @ccgSubSurf_processSync(ptr noundef %0) #10
  br label %166

166:                                              ; preds = %156, %164
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @getCCGDerivedMesh(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.CCGMeshIFC, align 4
  %6 = alloca %struct.CCGAllocatorIFC, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x float], align 4
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !100
  %10 = tail call ptr %9(i64 noundef 1888, ptr noundef nonnull @.str.1) #10
  %11 = tail call i32 @ccgSubSurf_getNumFinalVerts(ptr noundef %0) #10
  %12 = tail call i32 @ccgSubSurf_getNumFinalEdges(ptr noundef %0) #10
  %13 = tail call i32 @ccgSubSurf_getNumFinalFaces(ptr noundef %0) #10
  %14 = tail call i32 @ccgSubSurf_getNumFinalFaces(ptr noundef %0) #10
  %15 = shl nsw i32 %14, 2
  %16 = tail call i32 @ccgSubSurf_getNumFinalFaces(ptr noundef %0) #10
  tail call void @DM_from_template(ptr noundef %10, ptr noundef %3, i32 noundef 2, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %15, i32 noundef %16) #10
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 4
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !114
  %20 = tail call zeroext i8 @CustomData_free_layer_active(ptr noundef nonnull %17, i32 noundef 8, i32 noundef %19) #10
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 3
  %22 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %21, i32 noundef 16) #10
  %23 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %21, i32 noundef 17) #10
  %24 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %21, i32 noundef 32) #10
  %25 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %21, i32 noundef 31) #10
  %26 = icmp eq i32 %22, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 2
  %29 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %28, i32 noundef 5) #10
  %30 = icmp eq i32 %29, %22
  br i1 %30, label %31, label %49

31:                                               ; preds = %27, %4
  %32 = icmp eq i32 %23, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 2
  %35 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %34, i32 noundef 6) #10
  %36 = icmp eq i32 %35, %23
  br i1 %36, label %37, label %49

37:                                               ; preds = %33, %31
  %38 = icmp eq i8 %24, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 2
  %41 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %40, i32 noundef 20) #10
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %39, %37
  %44 = icmp eq i8 %25, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 2
  %47 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %46, i32 noundef 13) #10
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45, %39, %33, %27
  %50 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 2
  %51 = tail call i32 @ccgSubSurf_getNumFinalFaces(ptr noundef %0) #10
  tail call void @CustomData_from_bmeshpoly(ptr noundef nonnull %50, ptr noundef nonnull %17, ptr noundef nonnull %21, i32 noundef %51) #10
  br label %52

52:                                               ; preds = %49, %45, %43
  %53 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 2
  %54 = tail call i32 @ccgSubSurf_getNumFinalFaces(ptr noundef %0) #10
  %55 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %53, i32 noundef 7, i32 noundef 1, ptr noundef null, i32 noundef %54) #10
  %56 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 75
  store ptr @ccgDM_getMinMax, ptr %56, align 8, !tbaa !115
  %57 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 23
  store ptr @ccgDM_getNumVerts, ptr %57, align 8, !tbaa !116
  %58 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 24
  store ptr @ccgDM_getNumEdges, ptr %58, align 8, !tbaa !117
  %59 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 25
  store ptr @ccgDM_getNumTessFaces, ptr %59, align 8, !tbaa !118
  %60 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 26
  store ptr @ccgDM_getNumLoops, ptr %60, align 8, !tbaa !119
  %61 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 27
  store ptr @ccgDM_getNumTessFaces, ptr %61, align 8, !tbaa !120
  %62 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 28
  store ptr @ccgDM_getFinalVert, ptr %62, align 8, !tbaa !121
  %63 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 29
  store ptr @ccgDM_getFinalEdge, ptr %63, align 8, !tbaa !122
  %64 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 30
  store ptr @ccgDM_getFinalFace, ptr %64, align 8, !tbaa !123
  %65 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 76
  store ptr @ccgDM_getFinalVertCo, ptr %65, align 8, !tbaa !124
  %66 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 78
  store ptr @ccgDM_getFinalVertNo, ptr %66, align 8, !tbaa !125
  %67 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 36
  store ptr @ccgDM_copyFinalVertArray, ptr %67, align 8, !tbaa !126
  %68 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 37
  store ptr @ccgDM_copyFinalEdgeArray, ptr %68, align 8, !tbaa !127
  %69 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 38
  store ptr @ccgDM_copyFinalFaceArray, ptr %69, align 8, !tbaa !128
  %70 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 39
  store ptr @ccgDM_copyFinalLoopArray, ptr %70, align 8, !tbaa !129
  %71 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 40
  store ptr @ccgDM_copyFinalPolyArray, ptr %71, align 8, !tbaa !130
  %72 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 46
  store ptr @ccgDM_get_vert_data, ptr %72, align 8, !tbaa !131
  %73 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 47
  store ptr @ccgDM_get_edge_data, ptr %73, align 8, !tbaa !132
  %74 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 48
  store ptr @ccgDM_get_tessface_data, ptr %74, align 8, !tbaa !133
  %75 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 49
  store ptr @ccgDM_get_poly_data, ptr %75, align 8, !tbaa !134
  %76 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 50
  store ptr @ccgDM_get_vert_data_layer, ptr %76, align 8, !tbaa !135
  %77 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 51
  store ptr @ccgDM_get_edge_data_layer, ptr %77, align 8, !tbaa !136
  %78 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 52
  store ptr @ccgDM_get_tessface_data_layer, ptr %78, align 8, !tbaa !137
  %79 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 54
  store ptr @ccgDM_get_poly_data_layer, ptr %79, align 8, !tbaa !138
  %80 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 63
  store ptr @ccgDM_getNumGrids, ptr %80, align 8, !tbaa !139
  %81 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 64
  store ptr @ccgDM_getGridSize, ptr %81, align 8, !tbaa !140
  %82 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 65
  store ptr @ccgDM_getGridData, ptr %82, align 8, !tbaa !141
  %83 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 66
  store ptr @ccgDM_getGridAdjacency, ptr %83, align 8, !tbaa !142
  %84 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 67
  store ptr @ccgDM_getGridOffset, ptr %84, align 8, !tbaa !143
  %85 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 68
  store ptr @ccgDM_getGridKey, ptr %85, align 8, !tbaa !144
  %86 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 69
  store ptr @ccgDM_getGridFlagMats, ptr %86, align 8, !tbaa !145
  %87 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 70
  store ptr @ccgDM_getGridHidden, ptr %87, align 8, !tbaa !146
  %88 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 80
  store ptr @ccgDM_getPolyMap, ptr %88, align 8, !tbaa !147
  %89 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 81
  store ptr @ccgDM_getPBVH, ptr %89, align 8, !tbaa !148
  %90 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 20
  store ptr @ccgDM_calcNormals, ptr %90, align 8, !tbaa !149
  %91 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 21
  store ptr @CDDM_calc_loop_normals, ptr %91, align 8, !tbaa !150
  %92 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 22
  store ptr @ccgDM_recalcTessellation, ptr %92, align 8, !tbaa !151
  %93 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 77
  store ptr @ccgdm_getVertCos, ptr %93, align 8, !tbaa !152
  %94 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 71
  store ptr @ccgDM_foreachMappedVert, ptr %94, align 8, !tbaa !153
  %95 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 72
  store ptr @ccgDM_foreachMappedEdge, ptr %95, align 8, !tbaa !154
  %96 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 73
  store ptr @ccgDM_foreachMappedLoop, ptr %96, align 8, !tbaa !155
  %97 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 74
  store ptr @ccgDM_foreachMappedFaceCenter, ptr %97, align 8, !tbaa !156
  %98 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 82
  store ptr @ccgDM_drawVerts, ptr %98, align 8, !tbaa !157
  %99 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 84
  store ptr @ccgDM_drawEdges, ptr %99, align 8, !tbaa !158
  %100 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 85
  store ptr @ccgDM_drawLooseEdges, ptr %100, align 8, !tbaa !159
  %101 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 86
  store ptr @ccgDM_drawFacesSolid, ptr %101, align 8, !tbaa !160
  %102 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 87
  store ptr @ccgDM_drawFacesTex, ptr %102, align 8, !tbaa !161
  %103 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 88
  store ptr @ccgDM_drawFacesGLSL, ptr %103, align 8, !tbaa !162
  %104 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 89
  store ptr @ccgDM_drawMappedFaces, ptr %104, align 8, !tbaa !163
  %105 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 90
  store ptr @ccgDM_drawMappedFacesTex, ptr %105, align 8, !tbaa !164
  %106 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 91
  store ptr @ccgDM_drawMappedFacesGLSL, ptr %106, align 8, !tbaa !165
  %107 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 94
  store ptr @ccgDM_drawMappedFacesMat, ptr %107, align 8, !tbaa !166
  %108 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 83
  store ptr @ccgDM_drawUVEdges, ptr %108, align 8, !tbaa !167
  %109 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 93
  store ptr @ccgDM_drawMappedEdgesInterp, ptr %109, align 8, !tbaa !168
  %110 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 92
  store ptr @ccgDM_drawMappedEdges, ptr %110, align 8, !tbaa !169
  %111 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 95
  store ptr @ccgDM_release, ptr %111, align 8, !tbaa !170
  %112 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %10, i64 0, i32 1
  store ptr %0, ptr %112, align 8, !tbaa !34
  %113 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %10, i64 0, i32 3
  store i32 %1, ptr %113, align 4, !tbaa !171
  %114 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %10, i64 0, i32 4
  store i32 %2, ptr %114, align 8, !tbaa !172
  %115 = tail call i32 @ccgSubSurf_getNumVerts(ptr noundef %0) #10
  %116 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !100
  %117 = sext i32 %115 to i64
  %118 = shl nsw i64 %117, 4
  %119 = tail call ptr %116(i64 noundef %118, ptr noundef nonnull @.str.2) #10
  %120 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %10, i64 0, i32 5
  store ptr %119, ptr %120, align 8, !tbaa !173
  %121 = tail call ptr @ccgSubSurf_getVertIterator(ptr noundef %0) #10
  %122 = tail call i32 @ccgVertIterator_isStopped(ptr noundef %121) #10
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %52, %124
  %125 = tail call ptr @ccgVertIterator_getCurrent(ptr noundef %121) #10
  %126 = load ptr, ptr %120, align 8, !tbaa !173
  %127 = tail call ptr @ccgSubSurf_getVertVertHandle(ptr noundef %125) #10
  %128 = ptrtoint ptr %127 to i64
  %129 = shl i64 %128, 32
  %130 = ashr exact i64 %129, 32
  %131 = getelementptr inbounds %struct.anon.1, ptr %126, i64 %130, i32 1
  store ptr %125, ptr %131, align 8, !tbaa !174
  tail call void @ccgVertIterator_next(ptr noundef %121) #10
  %132 = tail call i32 @ccgVertIterator_isStopped(ptr noundef %121) #10
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %124, label %134, !llvm.loop !176

134:                                              ; preds = %124, %52
  tail call void @ccgVertIterator_free(ptr noundef %121) #10
  %135 = tail call i32 @ccgSubSurf_getNumEdges(ptr noundef %0) #10
  %136 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !100
  %137 = sext i32 %135 to i64
  %138 = shl nsw i64 %137, 4
  %139 = tail call ptr %136(i64 noundef %138, ptr noundef nonnull @.str.3) #10
  %140 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %10, i64 0, i32 6
  store ptr %139, ptr %140, align 8, !tbaa !177
  %141 = tail call ptr @ccgSubSurf_getEdgeIterator(ptr noundef %0) #10
  %142 = tail call i32 @ccgEdgeIterator_isStopped(ptr noundef %141) #10
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %134, %144
  %145 = tail call ptr @ccgEdgeIterator_getCurrent(ptr noundef %141) #10
  %146 = load ptr, ptr %140, align 8, !tbaa !177
  %147 = tail call ptr @ccgSubSurf_getEdgeEdgeHandle(ptr noundef %145) #10
  %148 = ptrtoint ptr %147 to i64
  %149 = shl i64 %148, 32
  %150 = ashr exact i64 %149, 32
  %151 = getelementptr inbounds %struct.anon.2, ptr %146, i64 %150, i32 2
  store ptr %145, ptr %151, align 8, !tbaa !178
  tail call void @ccgEdgeIterator_next(ptr noundef %141) #10
  %152 = tail call i32 @ccgEdgeIterator_isStopped(ptr noundef %141) #10
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %144, label %154, !llvm.loop !180

154:                                              ; preds = %144, %134
  tail call void @ccgEdgeIterator_free(ptr noundef %141) #10
  %155 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %0) #10
  %156 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !100
  %157 = sext i32 %155 to i64
  %158 = mul nsw i64 %157, 24
  %159 = tail call ptr %156(i64 noundef %158, ptr noundef nonnull @.str.4) #10
  %160 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %10, i64 0, i32 7
  store ptr %159, ptr %160, align 8, !tbaa !44
  %161 = tail call ptr @ccgSubSurf_getFaceIterator(ptr noundef %0) #10
  %162 = tail call i32 @ccgFaceIterator_isStopped(ptr noundef %161) #10
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %154, %164
  %165 = tail call ptr @ccgFaceIterator_getCurrent(ptr noundef %161) #10
  %166 = load ptr, ptr %160, align 8, !tbaa !44
  %167 = tail call ptr @ccgSubSurf_getFaceFaceHandle(ptr noundef %165) #10
  %168 = ptrtoint ptr %167 to i64
  %169 = shl i64 %168, 32
  %170 = ashr exact i64 %169, 32
  %171 = getelementptr inbounds %struct.anon.0, ptr %166, i64 %170, i32 3
  store ptr %165, ptr %171, align 8, !tbaa !45
  tail call void @ccgFaceIterator_next(ptr noundef %161) #10
  %172 = tail call i32 @ccgFaceIterator_isStopped(ptr noundef %161) #10
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %164, label %174, !llvm.loop !181

174:                                              ; preds = %164, %154
  tail call void @ccgFaceIterator_free(ptr noundef %161) #10
  %175 = load ptr, ptr @MEM_callocN, align 8, !tbaa !100
  %176 = tail call i32 @ccgSubSurf_getNumFinalFaces(ptr noundef %0) #10
  %177 = sext i32 %176 to i64
  %178 = shl nsw i64 %177, 2
  %179 = tail call ptr %175(i64 noundef %178, ptr noundef nonnull @.str.5) #10
  %180 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %10, i64 0, i32 10
  store ptr %179, ptr %180, align 8, !tbaa !182
  %181 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %0) #10
  %182 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %0) #10
  %183 = add i32 %182, -1
  %184 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 32
  %185 = load ptr, ptr %184, align 8, !tbaa !94
  %186 = tail call ptr %185(ptr noundef %3) #10
  %187 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 4
  %188 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %187, i32 noundef 25) #10
  %189 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %187, i32 noundef 7) #10
  %190 = load ptr, ptr @MEM_callocN, align 8, !tbaa !100
  %191 = shl nsw i64 %137, 1
  %192 = tail call ptr %190(i64 noundef %191, ptr noundef nonnull @.str.6) #10
  %193 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %10, i64 0, i32 8
  store ptr %192, ptr %193, align 8, !tbaa !183
  %194 = load ptr, ptr @MEM_callocN, align 8, !tbaa !100
  %195 = shl nsw i64 %157, 2
  %196 = tail call ptr %194(i64 noundef %195, ptr noundef nonnull @.str.7) #10
  %197 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %10, i64 0, i32 9
  store ptr %196, ptr %197, align 8, !tbaa !184
  %198 = tail call ptr @DM_get_vert_data_layer(ptr noundef %10, i32 noundef 7) #10
  %199 = tail call ptr @DM_get_edge_data_layer(ptr noundef %10, i32 noundef 7) #10
  %200 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %10, i32 noundef 7) #10
  %201 = tail call ptr @DM_get_poly_data_layer(ptr noundef %10, i32 noundef 7) #10
  %202 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 1
  %203 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 1, i32 2
  %204 = load i32, ptr %203, align 4, !tbaa !185
  %205 = icmp ne ptr %199, null
  %206 = zext i1 %205 to i32
  %207 = icmp eq i32 %204, %206
  %208 = icmp sgt i32 %155, 0
  br i1 %208, label %209, label %238

209:                                              ; preds = %174
  %210 = shl i32 %183, 1
  %211 = add i32 %182, -2
  %212 = mul i32 %210, %211
  %213 = add i32 %212, %183
  %214 = sext i32 %182 to i64
  %215 = icmp sgt i32 %182, 0
  %216 = sitofp i32 %183 to float
  %217 = icmp eq ptr %188, null
  %218 = icmp sgt i32 %182, 2
  %219 = mul i32 %182, %182
  %220 = icmp sgt i32 %182, 2
  %221 = mul i32 %182, %182
  %222 = icmp sgt i32 %182, 1
  %223 = mul i32 %182, %182
  %224 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 3
  %225 = icmp sgt i32 %22, 0
  %226 = icmp sgt i32 %23, 0
  %227 = icmp eq i8 %24, 0
  %228 = icmp eq i8 %25, 0
  %229 = icmp eq ptr %189, null
  %230 = zext i32 %182 to i64
  %231 = zext i32 %182 to i64
  %232 = zext nneg i32 %155 to i64
  %233 = zext i32 %183 to i64
  %234 = zext i32 %183 to i64
  %235 = zext i32 %183 to i64
  %236 = zext i32 %183 to i64
  %237 = zext i32 %183 to i64
  br label %263

238:                                              ; preds = %730, %174
  %239 = phi i32 [ 0, %174 ], [ %301, %730 ]
  %240 = phi ptr [ null, %174 ], [ %302, %730 ]
  %241 = phi i32 [ 0, %174 ], [ %731, %730 ]
  %242 = phi ptr [ %198, %174 ], [ %525, %730 ]
  %243 = phi i32 [ 0, %174 ], [ %734, %730 ]
  %244 = phi i32 [ 0, %174 ], [ %735, %730 ]
  %245 = phi i32 [ 0, %174 ], [ %526, %730 ]
  %246 = icmp sgt i32 %135, 0
  br i1 %246, label %247, label %812

247:                                              ; preds = %238
  %248 = add i32 %181, -1
  %249 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  %250 = icmp ne ptr %192, null
  %251 = icmp sgt i32 %181, 2
  %252 = sitofp i32 %248 to float
  %253 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  %254 = icmp slt i32 %181, 2
  %255 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 1
  %256 = icmp sgt i32 %181, 1
  %257 = sext i32 %244 to i64
  %258 = sext i32 %248 to i64
  %259 = zext nneg i32 %135 to i64
  %260 = select i1 %207, i1 true, i1 %254
  %261 = select i1 %205, i1 %256, i1 false
  %262 = zext i32 %248 to i64
  br label %738

263:                                              ; preds = %209, %730
  %264 = phi i64 [ 0, %209 ], [ %736, %730 ]
  %265 = phi i32 [ 0, %209 ], [ %526, %730 ]
  %266 = phi i32 [ 0, %209 ], [ %735, %730 ]
  %267 = phi i32 [ 0, %209 ], [ %734, %730 ]
  %268 = phi ptr [ %198, %209 ], [ %525, %730 ]
  %269 = phi ptr [ %200, %209 ], [ %733, %730 ]
  %270 = phi ptr [ %201, %209 ], [ %732, %730 ]
  %271 = phi ptr [ %196, %209 ], [ %410, %730 ]
  %272 = phi i32 [ 0, %209 ], [ %416, %730 ]
  %273 = phi i32 [ 0, %209 ], [ %731, %730 ]
  %274 = phi ptr [ null, %209 ], [ %302, %730 ]
  %275 = phi i32 [ 0, %209 ], [ %301, %730 ]
  %276 = load ptr, ptr %160, align 8, !tbaa !44
  %277 = getelementptr inbounds %struct.anon.0, ptr %276, i64 %264, i32 3
  %278 = load ptr, ptr %277, align 8, !tbaa !45
  %279 = call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %278) #10
  %280 = mul i32 %279, %213
  %281 = call ptr @ccgSubSurf_getFaceFaceHandle(ptr noundef %278) #10
  %282 = ptrtoint ptr %281 to i64
  %283 = trunc i64 %282 to i32
  %284 = zext i32 %279 to i64
  %285 = call ptr @llvm.stacksave.p0()
  %286 = alloca i32, i64 %284, align 16
  %287 = alloca i32, i64 %284, align 16
  %288 = icmp sgt i32 %275, %279
  br i1 %288, label %300, label %289

289:                                              ; preds = %263
  %290 = load ptr, ptr @MEM_callocN, align 8, !tbaa !100
  %291 = add nsw i32 %279, 1
  %292 = sext i32 %291 to i64
  %293 = mul nsw i64 %292, 24
  %294 = call ptr %290(i64 noundef %293, ptr noundef nonnull @.str.17) #10
  %295 = icmp eq i32 %275, 0
  br i1 %295, label %300, label %296

296:                                              ; preds = %289
  %297 = sext i32 %275 to i64
  %298 = mul nsw i64 %297, 24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %294, ptr align 8 %274, i64 %298, i1 false)
  %299 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  call void %299(ptr noundef %274) #10
  br label %300

300:                                              ; preds = %289, %296, %263
  %301 = phi i32 [ %275, %263 ], [ %291, %296 ], [ %291, %289 ]
  %302 = phi ptr [ %274, %263 ], [ %294, %296 ], [ %294, %289 ]
  %303 = sext i32 %279 to i64
  %304 = getelementptr inbounds %struct.FaceVertWeightEntry, ptr %302, i64 %303, i32 2
  %305 = load i32, ptr %304, align 8, !tbaa !186
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %391

307:                                              ; preds = %300
  store i32 1, ptr %304, align 8, !tbaa !186
  %308 = load ptr, ptr @MEM_callocN, align 8, !tbaa !100
  %309 = mul nsw i64 %303, %214
  %310 = shl i64 %309, 2
  %311 = mul i64 %310, %309
  %312 = call ptr %308(i64 noundef %311, ptr noundef nonnull @.str.18) #10
  %313 = getelementptr inbounds %struct.FaceVertWeightEntry, ptr %302, i64 %303, i32 1
  store ptr %312, ptr %313, align 8, !tbaa !188
  %314 = sitofp i32 %279 to float
  %315 = fdiv float 1.000000e+00, %314
  %316 = icmp sgt i32 %279, 0
  br i1 %316, label %317, label %391

317:                                              ; preds = %307
  %318 = add nsw i32 %279, -4
  %319 = sitofp i32 %318 to float
  %320 = fneg float %319
  %321 = fneg float %315
  %322 = icmp sgt i32 %279, 3
  %323 = add nsw i32 %279, -3
  %324 = sitofp i32 %323 to float
  %325 = add nsw i32 %279, -1
  %326 = zext nneg i32 %279 to i64
  %327 = zext nneg i32 %279 to i64
  %328 = zext nneg i32 %279 to i64
  br label %329

329:                                              ; preds = %317, %387
  %330 = phi i64 [ 0, %317 ], [ %389, %387 ]
  %331 = phi ptr [ %312, %317 ], [ %388, %387 ]
  br i1 %215, label %332, label %387

332:                                              ; preds = %329
  %333 = trunc i64 %330 to i32
  %334 = add i32 %325, %333
  %335 = add nuw nsw i64 %330, 1
  %336 = srem i32 %334, %279
  %337 = sext i32 %336 to i64
  %338 = icmp eq i64 %335, %326
  %339 = and i64 %335, 4294967295
  %340 = select i1 %338, i64 0, i64 %339
  br label %341

341:                                              ; preds = %332, %384
  %342 = phi i32 [ 0, %332 ], [ %385, %384 ]
  %343 = phi ptr [ %331, %332 ], [ %381, %384 ]
  %344 = sitofp i32 %342 to float
  %345 = fdiv float %344, %216
  %346 = fmul float %345, 5.000000e-01
  %347 = fsub float 5.000000e-01, %346
  %348 = fsub float 1.000000e+00, %347
  %349 = fmul float %347, %320
  %350 = fmul float %347, %319
  %351 = call float @llvm.fmuladd.f32(float %350, float %321, float %348)
  br label %352

352:                                              ; preds = %341, %377
  %353 = phi i32 [ 0, %341 ], [ %382, %377 ]
  %354 = phi ptr [ %343, %341 ], [ %381, %377 ]
  %355 = sitofp i32 %353 to float
  %356 = fdiv float %355, %216
  %357 = fmul float %356, 5.000000e-01
  %358 = fsub float 5.000000e-01, %357
  %359 = fsub float 1.000000e+00, %358
  %360 = fmul float %349, %358
  %361 = fmul float %315, %360
  %362 = call float @llvm.fmuladd.f32(float %348, float %359, float %361)
  %363 = fmul float %351, %358
  %364 = fmul float %358, %320
  %365 = call float @llvm.fmuladd.f32(float %364, float %315, float %359)
  %366 = fmul float %347, %365
  br i1 %322, label %367, label %377

367:                                              ; preds = %352
  %368 = fadd float %363, %362
  %369 = fadd float %366, %368
  %370 = fsub float 1.000000e+00, %369
  %371 = fdiv float %370, %324
  br label %372

372:                                              ; preds = %367, %372
  %373 = phi i64 [ 0, %367 ], [ %375, %372 ]
  %374 = getelementptr inbounds float, ptr %354, i64 %373
  store float %371, ptr %374, align 4, !tbaa !66
  %375 = add nuw nsw i64 %373, 1
  %376 = icmp eq i64 %375, %328
  br i1 %376, label %377, label %372, !llvm.loop !189

377:                                              ; preds = %372, %352
  %378 = getelementptr inbounds float, ptr %354, i64 %330
  store float %362, ptr %378, align 4, !tbaa !66
  %379 = getelementptr inbounds float, ptr %354, i64 %337
  store float %363, ptr %379, align 4, !tbaa !66
  %380 = getelementptr inbounds float, ptr %354, i64 %340
  store float %366, ptr %380, align 4, !tbaa !66
  %381 = getelementptr inbounds float, ptr %354, i64 %303
  %382 = add nuw nsw i32 %353, 1
  %383 = icmp eq i32 %382, %182
  br i1 %383, label %384, label %352, !llvm.loop !190

384:                                              ; preds = %377
  %385 = add nuw nsw i32 %342, 1
  %386 = icmp eq i32 %385, %182
  br i1 %386, label %387, label %341, !llvm.loop !191

387:                                              ; preds = %384, %329
  %388 = phi ptr [ %331, %329 ], [ %381, %384 ]
  %389 = add nuw nsw i64 %330, 1
  %390 = icmp eq i64 %389, %327
  br i1 %390, label %391, label %329, !llvm.loop !192

391:                                              ; preds = %387, %307, %300
  %392 = getelementptr inbounds %struct.FaceVertWeightEntry, ptr %302, i64 %303, i32 1
  %393 = load ptr, ptr %392, align 8, !tbaa !188
  %394 = load ptr, ptr %160, align 8, !tbaa !44
  %395 = getelementptr inbounds %struct.anon.0, ptr %394, i64 %264
  store i32 %265, ptr %395, align 8, !tbaa !193
  %396 = getelementptr inbounds %struct.anon.0, ptr %394, i64 %264, i32 1
  store i32 %266, ptr %396, align 4, !tbaa !194
  %397 = getelementptr inbounds %struct.anon.0, ptr %394, i64 %264, i32 2
  store i32 %267, ptr %397, align 8, !tbaa !195
  br i1 %217, label %406, label %398

398:                                              ; preds = %391
  %399 = shl i64 %282, 32
  %400 = ashr exact i64 %399, 32
  %401 = getelementptr inbounds %struct.MPoly, ptr %188, i64 %400, i32 3
  %402 = load i8, ptr %401, align 2, !tbaa !196
  %403 = getelementptr inbounds %struct.DMFlagMat, ptr %271, i64 0, i32 1
  store i8 %402, ptr %403, align 2, !tbaa !197
  %404 = getelementptr inbounds %struct.MPoly, ptr %188, i64 %400, i32 2
  %405 = load i16, ptr %404, align 4, !tbaa !199
  br label %408

406:                                              ; preds = %391
  %407 = getelementptr inbounds %struct.DMFlagMat, ptr %271, i64 0, i32 1
  store i8 0, ptr %407, align 2, !tbaa !197
  br label %408

408:                                              ; preds = %406, %398
  %409 = phi i16 [ %405, %398 ], [ 0, %406 ]
  store i16 %409, ptr %271, align 2, !tbaa !200
  %410 = getelementptr inbounds %struct.DMFlagMat, ptr %271, i64 1
  %411 = call ptr @ccgSubSurf_getFaceUserData(ptr noundef %0, ptr noundef %278) #10
  store i32 %265, ptr %411, align 4, !tbaa !54
  %412 = icmp sgt i32 %279, 0
  br i1 %412, label %413, label %415

413:                                              ; preds = %408
  %414 = zext nneg i32 %279 to i64
  br label %420

415:                                              ; preds = %420, %408
  %416 = phi i32 [ %272, %408 ], [ %423, %420 ]
  %417 = icmp sgt i32 %279, 0
  br i1 %417, label %418, label %437

418:                                              ; preds = %415
  %419 = zext nneg i32 %279 to i64
  br label %427

420:                                              ; preds = %413, %420
  %421 = phi i64 [ 0, %413 ], [ %425, %420 ]
  %422 = phi i32 [ %272, %413 ], [ %423, %420 ]
  %423 = add nsw i32 %422, 1
  %424 = getelementptr inbounds i32, ptr %286, i64 %421
  store i32 %422, ptr %424, align 4, !tbaa !54
  %425 = add nuw nsw i64 %421, 1
  %426 = icmp eq i64 %425, %414
  br i1 %426, label %415, label %420, !llvm.loop !201

427:                                              ; preds = %418, %427
  %428 = phi i64 [ 0, %418 ], [ %435, %427 ]
  %429 = trunc i64 %428 to i32
  %430 = call ptr @ccgSubSurf_getFaceVert(ptr noundef %278, i32 noundef %429) #10
  %431 = call ptr @ccgSubSurf_getVertVertHandle(ptr noundef %430) #10
  %432 = ptrtoint ptr %431 to i64
  %433 = trunc i64 %432 to i32
  %434 = getelementptr inbounds i32, ptr %287, i64 %428
  store i32 %433, ptr %434, align 4, !tbaa !54
  %435 = add nuw nsw i64 %428, 1
  %436 = icmp eq i64 %435, %419
  br i1 %436, label %437, label %427, !llvm.loop !202

437:                                              ; preds = %427, %415
  call void @DM_interp_vert_data(ptr noundef %3, ptr noundef %10, ptr noundef nonnull %287, ptr noundef %393, i32 noundef %279, i32 noundef %265) #10
  %438 = icmp eq ptr %268, null
  br i1 %438, label %441, label %439

439:                                              ; preds = %437
  store i32 -1, ptr %268, align 4, !tbaa !54
  %440 = getelementptr inbounds i32, ptr %268, i64 1
  br label %441

441:                                              ; preds = %439, %437
  %442 = phi ptr [ %440, %439 ], [ null, %437 ]
  %443 = add nsw i32 %265, 1
  %444 = icmp sgt i32 %279, 0
  br i1 %444, label %445, label %449

445:                                              ; preds = %441
  %446 = mul i32 %219, %279
  %447 = zext nneg i32 %279 to i64
  %448 = zext nneg i32 %279 to i64
  br label %456

449:                                              ; preds = %479, %441
  %450 = phi ptr [ %442, %441 ], [ %480, %479 ]
  %451 = phi i32 [ %443, %441 ], [ %481, %479 ]
  %452 = icmp sgt i32 %279, 0
  br i1 %452, label %453, label %524

453:                                              ; preds = %449
  %454 = mul i32 %221, %279
  %455 = zext nneg i32 %279 to i64
  br label %484

456:                                              ; preds = %445, %479
  %457 = phi i64 [ 0, %445 ], [ %482, %479 ]
  %458 = phi i32 [ %443, %445 ], [ %481, %479 ]
  %459 = phi ptr [ %442, %445 ], [ %480, %479 ]
  br i1 %218, label %460, label %479

460:                                              ; preds = %456
  %461 = trunc i64 %457 to i32
  %462 = mul i32 %446, %461
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds float, ptr %393, i64 %463
  br label %465

465:                                              ; preds = %460, %474
  %466 = phi i64 [ 1, %460 ], [ %477, %474 ]
  %467 = phi i32 [ %458, %460 ], [ %476, %474 ]
  %468 = phi ptr [ %459, %460 ], [ %475, %474 ]
  %469 = mul nsw i64 %466, %447
  %470 = getelementptr inbounds float, ptr %464, i64 %469
  call void @DM_interp_vert_data(ptr noundef %3, ptr noundef %10, ptr noundef nonnull %287, ptr noundef nonnull %470, i32 noundef %279, i32 noundef %467) #10
  %471 = icmp eq ptr %468, null
  br i1 %471, label %474, label %472

472:                                              ; preds = %465
  store i32 -1, ptr %468, align 4, !tbaa !54
  %473 = getelementptr inbounds i32, ptr %468, i64 1
  br label %474

474:                                              ; preds = %472, %465
  %475 = phi ptr [ %473, %472 ], [ null, %465 ]
  %476 = add nsw i32 %467, 1
  %477 = add nuw nsw i64 %466, 1
  %478 = icmp eq i64 %477, %233
  br i1 %478, label %479, label %465, !llvm.loop !203

479:                                              ; preds = %474, %456
  %480 = phi ptr [ %459, %456 ], [ %475, %474 ]
  %481 = phi i32 [ %458, %456 ], [ %476, %474 ]
  %482 = add nuw nsw i64 %457, 1
  %483 = icmp eq i64 %482, %448
  br i1 %483, label %449, label %456, !llvm.loop !204

484:                                              ; preds = %453, %519
  %485 = phi i64 [ 0, %453 ], [ %522, %519 ]
  %486 = phi i32 [ %451, %453 ], [ %521, %519 ]
  %487 = phi ptr [ %450, %453 ], [ %520, %519 ]
  br i1 %220, label %488, label %519

488:                                              ; preds = %484
  %489 = trunc i64 %485 to i32
  %490 = mul i32 %454, %489
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds float, ptr %393, i64 %491
  br label %493

493:                                              ; preds = %488, %516
  %494 = phi i64 [ 1, %488 ], [ %517, %516 ]
  %495 = phi i32 [ %486, %488 ], [ %513, %516 ]
  %496 = phi ptr [ %487, %488 ], [ %512, %516 ]
  %497 = trunc i64 %494 to i32
  %498 = mul i32 %182, %497
  br label %499

499:                                              ; preds = %493, %511
  %500 = phi i64 [ 1, %493 ], [ %514, %511 ]
  %501 = phi i32 [ %495, %493 ], [ %513, %511 ]
  %502 = phi ptr [ %496, %493 ], [ %512, %511 ]
  %503 = trunc i64 %500 to i32
  %504 = add i32 %498, %503
  %505 = mul nsw i32 %504, %279
  %506 = zext nneg i32 %505 to i64
  %507 = getelementptr inbounds float, ptr %492, i64 %506
  call void @DM_interp_vert_data(ptr noundef %3, ptr noundef %10, ptr noundef nonnull %287, ptr noundef nonnull %507, i32 noundef %279, i32 noundef %501) #10
  %508 = icmp eq ptr %502, null
  br i1 %508, label %511, label %509

509:                                              ; preds = %499
  store i32 -1, ptr %502, align 4, !tbaa !54
  %510 = getelementptr inbounds i32, ptr %502, i64 1
  br label %511

511:                                              ; preds = %509, %499
  %512 = phi ptr [ %510, %509 ], [ null, %499 ]
  %513 = add nsw i32 %501, 1
  %514 = add nuw nsw i64 %500, 1
  %515 = icmp eq i64 %514, %235
  br i1 %515, label %516, label %499, !llvm.loop !205

516:                                              ; preds = %511
  %517 = add nuw nsw i64 %494, 1
  %518 = icmp eq i64 %517, %234
  br i1 %518, label %519, label %493, !llvm.loop !206

519:                                              ; preds = %516, %484
  %520 = phi ptr [ %487, %484 ], [ %512, %516 ]
  %521 = phi i32 [ %486, %484 ], [ %513, %516 ]
  %522 = add nuw nsw i64 %485, 1
  %523 = icmp eq i64 %522, %455
  br i1 %523, label %524, label %484, !llvm.loop !207

524:                                              ; preds = %519, %449
  %525 = phi ptr [ %450, %449 ], [ %520, %519 ]
  %526 = phi i32 [ %451, %449 ], [ %521, %519 ]
  %527 = icmp sgt i32 %280, 0
  %528 = select i1 %205, i1 %527, i1 false
  br i1 %528, label %529, label %535

529:                                              ; preds = %524
  %530 = sext i32 %266 to i64
  %531 = shl nsw i64 %530, 2
  %532 = getelementptr i8, ptr %199, i64 %531
  %533 = zext i32 %280 to i64
  %534 = shl nuw nsw i64 %533, 2
  call void @llvm.memset.p0.i64(ptr align 4 %532, i8 -1, i64 %534, i1 false), !tbaa !54
  br label %535

535:                                              ; preds = %529, %524
  %536 = icmp sgt i32 %279, 0
  br i1 %536, label %537, label %730

537:                                              ; preds = %535
  %538 = mul i32 %223, %279
  %539 = shl i64 %282, 32
  %540 = ashr exact i64 %539, 32
  %541 = getelementptr inbounds i32, ptr %189, i64 %540
  %542 = zext nneg i32 %279 to i64
  %543 = trunc i64 %264 to i32
  br label %544

544:                                              ; preds = %537, %723
  %545 = phi i64 [ 0, %537 ], [ %728, %723 ]
  %546 = phi i32 [ %267, %537 ], [ %727, %723 ]
  %547 = phi ptr [ %269, %537 ], [ %726, %723 ]
  %548 = phi ptr [ %270, %537 ], [ %725, %723 ]
  %549 = phi i32 [ %273, %537 ], [ %724, %723 ]
  br i1 %222, label %550, label %723

550:                                              ; preds = %544
  %551 = trunc i64 %545 to i32
  %552 = mul i32 %538, %551
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds float, ptr %393, i64 %553
  br label %555

555:                                              ; preds = %550, %720
  %556 = phi i64 [ 0, %550 ], [ %562, %720 ]
  %557 = phi i32 [ %546, %550 ], [ %721, %720 ]
  %558 = phi ptr [ %547, %550 ], [ %704, %720 ]
  %559 = phi ptr [ %548, %550 ], [ %713, %720 ]
  %560 = phi i32 [ %549, %550 ], [ %595, %720 ]
  %561 = mul i64 %556, %230
  %562 = add nuw nsw i64 %556, 1
  %563 = mul i64 %562, %231
  %564 = sext i32 %557 to i64
  br label %565

565:                                              ; preds = %555, %712
  %566 = phi i64 [ 0, %555 ], [ %583, %712 ]
  %567 = phi i64 [ %564, %555 ], [ %718, %712 ]
  %568 = phi ptr [ %558, %555 ], [ %704, %712 ]
  %569 = phi ptr [ %559, %555 ], [ %713, %712 ]
  %570 = phi i32 [ %560, %555 ], [ %595, %712 ]
  %571 = add i64 %566, %561
  %572 = trunc i64 %571 to i32
  %573 = mul nsw i32 %279, %572
  %574 = zext nneg i32 %573 to i64
  %575 = getelementptr inbounds float, ptr %554, i64 %574
  call void @CustomData_interp(ptr noundef nonnull %224, ptr noundef nonnull %21, ptr noundef nonnull %286, ptr noundef %575, ptr noundef null, i32 noundef %279, i32 noundef %570) #10
  %576 = add nsw i32 %570, 1
  %577 = add i64 %566, %563
  %578 = trunc i64 %577 to i32
  %579 = mul nsw i32 %279, %578
  %580 = zext nneg i32 %579 to i64
  %581 = getelementptr inbounds float, ptr %554, i64 %580
  call void @CustomData_interp(ptr noundef nonnull %224, ptr noundef nonnull %21, ptr noundef nonnull %286, ptr noundef %581, ptr noundef null, i32 noundef %279, i32 noundef %576) #10
  %582 = add nsw i32 %570, 2
  %583 = add nuw nsw i64 %566, 1
  %584 = add i64 %583, %563
  %585 = trunc i64 %584 to i32
  %586 = mul nsw i32 %279, %585
  %587 = zext nneg i32 %586 to i64
  %588 = getelementptr inbounds float, ptr %554, i64 %587
  call void @CustomData_interp(ptr noundef nonnull %224, ptr noundef nonnull %21, ptr noundef nonnull %286, ptr noundef nonnull %588, ptr noundef null, i32 noundef %279, i32 noundef %582) #10
  %589 = add nsw i32 %570, 3
  %590 = add i64 %583, %561
  %591 = trunc i64 %590 to i32
  %592 = mul nsw i32 %279, %591
  %593 = zext nneg i32 %592 to i64
  %594 = getelementptr inbounds float, ptr %554, i64 %593
  call void @CustomData_interp(ptr noundef nonnull %224, ptr noundef nonnull %21, ptr noundef nonnull %286, ptr noundef nonnull %594, ptr noundef null, i32 noundef %279, i32 noundef %589) #10
  %595 = add nsw i32 %570, 4
  %596 = trunc i64 %567 to i32
  call void @CustomData_copy_data(ptr noundef nonnull %187, ptr noundef nonnull %17, i32 noundef %283, i32 noundef %596, i32 noundef 1) #10
  br i1 %225, label %597, label %600

597:                                              ; preds = %565
  %598 = trunc i64 %567 to i32
  %599 = trunc i64 %567 to i32
  br label %603

600:                                              ; preds = %633, %565
  br i1 %226, label %601, label %660

601:                                              ; preds = %600
  %602 = trunc i64 %567 to i32
  br label %636

603:                                              ; preds = %597, %633
  %604 = phi i32 [ %634, %633 ], [ 0, %597 ]
  %605 = call ptr @CustomData_get_n(ptr noundef nonnull %53, i32 noundef 5, i32 noundef %598, i32 noundef %604) #10
  %606 = call ptr @CustomData_get_n(ptr noundef nonnull %17, i32 noundef 15, i32 noundef %599, i32 noundef %604) #10
  %607 = load ptr, ptr %606, align 8, !tbaa !208
  %608 = getelementptr inbounds %struct.MTFace, ptr %605, i64 0, i32 1
  store ptr %607, ptr %608, align 8, !tbaa !210
  %609 = getelementptr inbounds %struct.MTexPoly, ptr %606, i64 0, i32 1
  %610 = load i8, ptr %609, align 8, !tbaa !212
  %611 = getelementptr inbounds %struct.MTFace, ptr %605, i64 0, i32 2
  store i8 %610, ptr %611, align 8, !tbaa !213
  %612 = getelementptr inbounds %struct.MTexPoly, ptr %606, i64 0, i32 2
  %613 = load i8, ptr %612, align 1, !tbaa !214
  %614 = getelementptr inbounds %struct.MTFace, ptr %605, i64 0, i32 3
  store i8 %613, ptr %614, align 1, !tbaa !215
  %615 = getelementptr inbounds %struct.MTexPoly, ptr %606, i64 0, i32 3
  %616 = load i16, ptr %615, align 2, !tbaa !216
  %617 = getelementptr inbounds %struct.MTFace, ptr %605, i64 0, i32 4
  store i16 %616, ptr %617, align 2, !tbaa !217
  %618 = getelementptr inbounds %struct.MTexPoly, ptr %606, i64 0, i32 4
  %619 = load i16, ptr %618, align 4, !tbaa !218
  %620 = getelementptr inbounds %struct.MTFace, ptr %605, i64 0, i32 5
  store i16 %619, ptr %620, align 4, !tbaa !219
  %621 = call ptr @CustomData_get_n(ptr noundef nonnull %21, i32 noundef 16, i32 noundef %570, i32 noundef %604) #10
  br label %622

622:                                              ; preds = %603, %622
  %623 = phi i64 [ 0, %603 ], [ %630, %622 ]
  %624 = phi ptr [ %621, %603 ], [ %631, %622 ]
  %625 = getelementptr inbounds [4 x [2 x float]], ptr %605, i64 0, i64 %623
  %626 = load float, ptr %624, align 4, !tbaa !66
  store float %626, ptr %625, align 4, !tbaa !66
  %627 = getelementptr inbounds float, ptr %624, i64 1
  %628 = load float, ptr %627, align 4, !tbaa !66
  %629 = getelementptr inbounds float, ptr %625, i64 1
  store float %628, ptr %629, align 4, !tbaa !66
  %630 = add nuw nsw i64 %623, 1
  %631 = getelementptr inbounds %struct.MLoopUV, ptr %624, i64 1
  %632 = icmp eq i64 %630, 4
  br i1 %632, label %633, label %622, !llvm.loop !220

633:                                              ; preds = %622
  %634 = add nuw nsw i32 %604, 1
  %635 = icmp eq i32 %634, %22
  br i1 %635, label %600, label %603, !llvm.loop !221

636:                                              ; preds = %601, %657
  %637 = phi i32 [ %658, %657 ], [ 0, %601 ]
  %638 = call ptr @CustomData_get_n(ptr noundef nonnull %21, i32 noundef 17, i32 noundef %570, i32 noundef %637) #10
  %639 = call ptr @CustomData_get_n(ptr noundef nonnull %53, i32 noundef 6, i32 noundef %602, i32 noundef %637) #10
  br label %640

640:                                              ; preds = %636, %640
  %641 = phi i64 [ 0, %636 ], [ %654, %640 ]
  %642 = phi ptr [ %638, %636 ], [ %655, %640 ]
  %643 = getelementptr inbounds %struct.MCol, ptr %639, i64 %641
  %644 = load i8, ptr %642, align 1, !tbaa !222
  %645 = getelementptr inbounds %struct.MCol, ptr %639, i64 %641, i32 3
  store i8 %644, ptr %645, align 1, !tbaa !224
  %646 = getelementptr inbounds %struct.MLoopCol, ptr %642, i64 0, i32 1
  %647 = load i8, ptr %646, align 1, !tbaa !226
  %648 = getelementptr inbounds %struct.MCol, ptr %639, i64 %641, i32 2
  store i8 %647, ptr %648, align 1, !tbaa !227
  %649 = getelementptr inbounds %struct.MLoopCol, ptr %642, i64 0, i32 2
  %650 = load i8, ptr %649, align 1, !tbaa !228
  %651 = getelementptr inbounds %struct.MCol, ptr %639, i64 %641, i32 1
  store i8 %650, ptr %651, align 1, !tbaa !229
  %652 = getelementptr inbounds %struct.MLoopCol, ptr %642, i64 0, i32 3
  %653 = load i8, ptr %652, align 1, !tbaa !230
  store i8 %653, ptr %643, align 1, !tbaa !231
  %654 = add nuw nsw i64 %641, 1
  %655 = getelementptr inbounds %struct.MLoopCol, ptr %642, i64 1
  %656 = icmp eq i64 %654, 4
  br i1 %656, label %657, label %640, !llvm.loop !232

657:                                              ; preds = %640
  %658 = add nuw nsw i32 %637, 1
  %659 = icmp eq i32 %658, %23
  br i1 %659, label %660, label %636, !llvm.loop !233

660:                                              ; preds = %657, %600
  br i1 %227, label %682, label %661

661:                                              ; preds = %660
  %662 = call ptr @CustomData_get(ptr noundef nonnull %21, i32 noundef %570, i32 noundef 32) #10
  %663 = trunc i64 %567 to i32
  %664 = call ptr @CustomData_get(ptr noundef nonnull %53, i32 noundef %663, i32 noundef 20) #10
  br label %665

665:                                              ; preds = %661, %665
  %666 = phi i64 [ 0, %661 ], [ %679, %665 ]
  %667 = phi ptr [ %662, %661 ], [ %680, %665 ]
  %668 = getelementptr inbounds %struct.MCol, ptr %664, i64 %666
  %669 = load i8, ptr %667, align 1, !tbaa !222
  %670 = getelementptr inbounds %struct.MCol, ptr %664, i64 %666, i32 3
  store i8 %669, ptr %670, align 1, !tbaa !224
  %671 = getelementptr inbounds %struct.MLoopCol, ptr %667, i64 0, i32 1
  %672 = load i8, ptr %671, align 1, !tbaa !226
  %673 = getelementptr inbounds %struct.MCol, ptr %664, i64 %666, i32 2
  store i8 %672, ptr %673, align 1, !tbaa !227
  %674 = getelementptr inbounds %struct.MLoopCol, ptr %667, i64 0, i32 2
  %675 = load i8, ptr %674, align 1, !tbaa !228
  %676 = getelementptr inbounds %struct.MCol, ptr %664, i64 %666, i32 1
  store i8 %675, ptr %676, align 1, !tbaa !229
  %677 = getelementptr inbounds %struct.MLoopCol, ptr %667, i64 0, i32 3
  %678 = load i8, ptr %677, align 1, !tbaa !230
  store i8 %678, ptr %668, align 1, !tbaa !231
  %679 = add nuw nsw i64 %666, 1
  %680 = getelementptr inbounds %struct.MLoopCol, ptr %667, i64 1
  %681 = icmp eq i64 %679, 4
  br i1 %681, label %682, label %665, !llvm.loop !234

682:                                              ; preds = %665, %660
  br i1 %228, label %698, label %683

683:                                              ; preds = %682
  %684 = trunc i64 %567 to i32
  %685 = call ptr @CustomData_get(ptr noundef nonnull %53, i32 noundef %684, i32 noundef 13) #10
  %686 = call ptr @CustomData_get(ptr noundef nonnull %21, i32 noundef %570, i32 noundef 31) #10
  br label %687

687:                                              ; preds = %683, %687
  %688 = phi i64 [ 0, %683 ], [ %695, %687 ]
  %689 = phi ptr [ %686, %683 ], [ %696, %687 ]
  %690 = getelementptr inbounds [4 x [2 x float]], ptr %685, i64 0, i64 %688
  %691 = load float, ptr %689, align 4, !tbaa !66
  store float %691, ptr %690, align 4, !tbaa !66
  %692 = getelementptr inbounds float, ptr %689, i64 1
  %693 = load float, ptr %692, align 4, !tbaa !66
  %694 = getelementptr inbounds float, ptr %690, i64 1
  store float %693, ptr %694, align 4, !tbaa !66
  %695 = add nuw nsw i64 %688, 1
  %696 = getelementptr inbounds %struct.OrigSpaceLoop, ptr %689, i64 1
  %697 = icmp eq i64 %695, 4
  br i1 %697, label %698, label %687, !llvm.loop !235

698:                                              ; preds = %687, %682
  %699 = icmp eq ptr %568, null
  br i1 %699, label %703, label %700

700:                                              ; preds = %698
  %701 = trunc i64 %567 to i32
  store i32 %701, ptr %568, align 4, !tbaa !54
  %702 = getelementptr inbounds i32, ptr %568, i64 1
  br label %703

703:                                              ; preds = %700, %698
  %704 = phi ptr [ %702, %700 ], [ null, %698 ]
  %705 = icmp eq ptr %569, null
  br i1 %705, label %712, label %706

706:                                              ; preds = %703
  br i1 %229, label %709, label %707

707:                                              ; preds = %706
  %708 = load i32, ptr %541, align 4, !tbaa !54
  br label %709

709:                                              ; preds = %706, %707
  %710 = phi i32 [ %708, %707 ], [ %283, %706 ]
  store i32 %710, ptr %569, align 4, !tbaa !54
  %711 = getelementptr inbounds i32, ptr %569, i64 1
  br label %712

712:                                              ; preds = %709, %703
  %713 = phi ptr [ %711, %709 ], [ null, %703 ]
  %714 = load ptr, ptr %180, align 8, !tbaa !182
  %715 = getelementptr inbounds i32, ptr %714, i64 %567
  store i32 %543, ptr %715, align 4, !tbaa !54
  %716 = getelementptr inbounds i32, ptr %55, i64 %567
  %717 = trunc i64 %567 to i32
  store i32 %717, ptr %716, align 4, !tbaa !54
  %718 = add nsw i64 %567, 1
  %719 = icmp eq i64 %583, %237
  br i1 %719, label %720, label %565, !llvm.loop !236

720:                                              ; preds = %712
  %721 = trunc i64 %718 to i32
  %722 = icmp eq i64 %562, %236
  br i1 %722, label %723, label %555, !llvm.loop !237

723:                                              ; preds = %720, %544
  %724 = phi i32 [ %549, %544 ], [ %595, %720 ]
  %725 = phi ptr [ %548, %544 ], [ %713, %720 ]
  %726 = phi ptr [ %547, %544 ], [ %704, %720 ]
  %727 = phi i32 [ %546, %544 ], [ %721, %720 ]
  %728 = add nuw nsw i64 %545, 1
  %729 = icmp eq i64 %728, %542
  br i1 %729, label %730, label %544, !llvm.loop !238

730:                                              ; preds = %723, %535
  %731 = phi i32 [ %273, %535 ], [ %724, %723 ]
  %732 = phi ptr [ %270, %535 ], [ %725, %723 ]
  %733 = phi ptr [ %269, %535 ], [ %726, %723 ]
  %734 = phi i32 [ %267, %535 ], [ %727, %723 ]
  %735 = add nsw i32 %280, %266
  call void @llvm.stackrestore.p0(ptr %285)
  %736 = add nuw nsw i64 %264, 1
  %737 = icmp eq i64 %736, %232
  br i1 %737, label %238, label %263, !llvm.loop !239

738:                                              ; preds = %247, %806
  %739 = phi i64 [ %257, %247 ], [ %807, %806 ]
  %740 = phi i64 [ 0, %247 ], [ %808, %806 ]
  %741 = phi i32 [ %245, %247 ], [ %790, %806 ]
  %742 = phi ptr [ %242, %247 ], [ %789, %806 ]
  %743 = load ptr, ptr %140, align 8, !tbaa !177
  %744 = getelementptr inbounds %struct.anon.2, ptr %743, i64 %740, i32 2
  %745 = load ptr, ptr %744, align 8, !tbaa !178
  %746 = call ptr @ccgSubSurf_getEdgeUserData(ptr noundef %0, ptr noundef %745) #10
  %747 = getelementptr inbounds i32, ptr %746, i64 1
  %748 = load i32, ptr %747, align 4, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  %749 = call ptr @ccgSubSurf_getEdgeEdgeHandle(ptr noundef %745) #10
  %750 = ptrtoint ptr %749 to i64
  %751 = trunc i64 %750 to i32
  %752 = call ptr @ccgSubSurf_getEdgeVert0(ptr noundef %745) #10
  %753 = call ptr @ccgSubSurf_getVertVertHandle(ptr noundef %752) #10
  %754 = ptrtoint ptr %753 to i64
  %755 = trunc i64 %754 to i32
  store i32 %755, ptr %7, align 4, !tbaa !54
  %756 = call ptr @ccgSubSurf_getEdgeVert1(ptr noundef %745) #10
  %757 = call ptr @ccgSubSurf_getVertVertHandle(ptr noundef %756) #10
  %758 = ptrtoint ptr %757 to i64
  %759 = trunc i64 %758 to i32
  store i32 %759, ptr %249, align 4, !tbaa !54
  %760 = load ptr, ptr %140, align 8, !tbaa !177
  %761 = getelementptr inbounds %struct.anon.2, ptr %760, i64 %740
  store i32 %741, ptr %761, align 8, !tbaa !240
  %762 = getelementptr inbounds %struct.anon.2, ptr %760, i64 %740, i32 1
  %763 = trunc i64 %739 to i32
  store i32 %763, ptr %762, align 4, !tbaa !241
  %764 = icmp sgt i32 %751, -1
  %765 = select i1 %764, i1 %250, i1 false
  br i1 %765, label %766, label %771

766:                                              ; preds = %738
  %767 = and i64 %750, 4294967295
  %768 = getelementptr inbounds %struct.MEdge, ptr %186, i64 %767, i32 4
  %769 = load i16, ptr %768, align 2, !tbaa !242
  %770 = getelementptr inbounds i16, ptr %192, i64 %767
  store i16 %769, ptr %770, align 2, !tbaa !243
  br label %771

771:                                              ; preds = %766, %738
  %772 = call ptr @ccgSubSurf_getEdgeUserData(ptr noundef %0, ptr noundef %745) #10
  store i32 %741, ptr %772, align 4, !tbaa !54
  br i1 %251, label %773, label %788

773:                                              ; preds = %771, %783
  %774 = phi i32 [ %785, %783 ], [ %741, %771 ]
  %775 = phi ptr [ %784, %783 ], [ %742, %771 ]
  %776 = phi i32 [ %786, %783 ], [ 1, %771 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  %777 = sitofp i32 %776 to float
  %778 = fdiv float %777, %252
  store float %778, ptr %253, align 4, !tbaa !66
  %779 = fsub float 1.000000e+00, %778
  store float %779, ptr %8, align 4, !tbaa !66
  call void @DM_interp_vert_data(ptr noundef %3, ptr noundef %10, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 2, i32 noundef %774) #10
  %780 = icmp eq ptr %775, null
  br i1 %780, label %783, label %781

781:                                              ; preds = %773
  store i32 -1, ptr %775, align 4, !tbaa !54
  %782 = getelementptr inbounds i32, ptr %775, i64 1
  br label %783

783:                                              ; preds = %781, %773
  %784 = phi ptr [ %782, %781 ], [ null, %773 ]
  %785 = add nsw i32 %774, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  %786 = add nuw nsw i32 %776, 1
  %787 = icmp eq i32 %786, %248
  br i1 %787, label %788, label %773, !llvm.loop !244

788:                                              ; preds = %783, %771
  %789 = phi ptr [ %742, %771 ], [ %784, %783 ]
  %790 = phi i32 [ %741, %771 ], [ %785, %783 ]
  br i1 %260, label %798, label %791

791:                                              ; preds = %788
  %792 = trunc i64 %739 to i32
  br label %793

793:                                              ; preds = %791, %793
  %794 = phi i32 [ %796, %793 ], [ 0, %791 ]
  %795 = add nsw i32 %794, %792
  call void @CustomData_copy_data(ptr noundef nonnull %255, ptr noundef nonnull %202, i32 noundef %751, i32 noundef %795, i32 noundef 1) #10
  %796 = add nuw nsw i32 %794, 1
  %797 = icmp eq i32 %796, %248
  br i1 %797, label %798, label %793, !llvm.loop !245

798:                                              ; preds = %793, %788
  br i1 %261, label %799, label %806

799:                                              ; preds = %798
  %800 = getelementptr i32, ptr %199, i64 %739
  br label %801

801:                                              ; preds = %799, %801
  %802 = phi i64 [ 0, %799 ], [ %804, %801 ]
  %803 = getelementptr i32, ptr %800, i64 %802
  store i32 %748, ptr %803, align 4, !tbaa !54
  %804 = add nuw nsw i64 %802, 1
  %805 = icmp eq i64 %804, %262
  br i1 %805, label %806, label %801, !llvm.loop !246

806:                                              ; preds = %801, %798
  %807 = add i64 %739, %258
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  %808 = add nuw nsw i64 %740, 1
  %809 = icmp eq i64 %808, %259
  br i1 %809, label %810, label %738, !llvm.loop !247

810:                                              ; preds = %806
  %811 = trunc i64 %807 to i32
  br label %812

812:                                              ; preds = %810, %238
  %813 = phi ptr [ %242, %238 ], [ %789, %810 ]
  %814 = phi i32 [ %244, %238 ], [ %811, %810 ]
  %815 = phi i32 [ %245, %238 ], [ %790, %810 ]
  %816 = icmp eq i32 %2, 0
  br i1 %816, label %980, label %817

817:                                              ; preds = %812
  %818 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 3
  %819 = call i32 @CustomData_number_of_layers(ptr noundef nonnull %21, i32 noundef 16) #10
  %820 = call i32 @CustomData_number_of_layers(ptr noundef nonnull %818, i32 noundef 16) #10
  %821 = freeze i32 %820
  %822 = call i32 @llvm.smin.i32(i32 %819, i32 %821)
  %823 = icmp sgt i32 %822, 0
  br i1 %823, label %824, label %980

824:                                              ; preds = %817
  %825 = getelementptr inbounds %struct.CCGMeshIFC, ptr %5, i64 0, i32 2
  %826 = getelementptr inbounds %struct.CCGMeshIFC, ptr %5, i64 0, i32 1
  %827 = getelementptr inbounds %struct.CCGMeshIFC, ptr %5, i64 0, i32 3
  %828 = getelementptr inbounds %struct.CCGMeshIFC, ptr %5, i64 0, i32 4
  %829 = getelementptr inbounds %struct.CCGMeshIFC, ptr %5, i64 0, i32 5
  %830 = getelementptr inbounds %struct.CCGAllocatorIFC, ptr %6, i64 0, i32 1
  %831 = getelementptr inbounds %struct.CCGAllocatorIFC, ptr %6, i64 0, i32 2
  %832 = getelementptr inbounds %struct.CCGAllocatorIFC, ptr %6, i64 0, i32 3
  br label %833

833:                                              ; preds = %824, %977
  %834 = phi i32 [ 0, %824 ], [ %978, %977 ]
  %835 = call ptr @CustomData_get_layer_n(ptr noundef nonnull %818, i32 noundef 16, i32 noundef %834) #10
  %836 = call ptr @CustomData_get_layer_n(ptr noundef nonnull %53, i32 noundef 5, i32 noundef %834) #10
  %837 = call ptr @CustomData_get_layer_n(ptr noundef nonnull %21, i32 noundef 16, i32 noundef %834) #10
  %838 = icmp eq ptr %835, null
  br i1 %838, label %977, label %839

839:                                              ; preds = %833
  %840 = icmp ne ptr %836, null
  %841 = icmp ne ptr %837, null
  %842 = select i1 %840, i1 true, i1 %841
  br i1 %842, label %843, label %977

843:                                              ; preds = %839
  %844 = call i32 @ccgSubSurf_getSubdivisionLevels(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %845 = call i32 @llvm.smax.i32(i32 %844, i32 1)
  store i32 8, ptr %825, align 4, !tbaa !81
  store i32 8, ptr %826, align 4, !tbaa !83
  store i32 8, ptr %5, align 4, !tbaa !84
  store i32 2, ptr %827, align 4, !tbaa !85
  store i32 8, ptr %828, align 4, !tbaa !86
  store i32 0, ptr %829, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  %846 = call ptr @BLI_memarena_new(i64 noundef 65528, ptr noundef nonnull @.str) #10
  store ptr @arena_alloc, ptr %6, align 8, !tbaa !88
  store ptr @arena_realloc, ptr %830, align 8, !tbaa !90
  store ptr @arena_free, ptr %831, align 8, !tbaa !91
  store ptr @arena_release, ptr %832, align 8, !tbaa !92
  %847 = call ptr @ccgSubSurf_new(ptr noundef nonnull %5, i32 noundef %845, ptr noundef nonnull %6, ptr noundef %846) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  %848 = call i32 @ccgSubSurf_setCalcVertexNormals(ptr noundef %847, i32 noundef 0, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  %849 = call fastcc i32 @ss_sync_from_uv(ptr noundef %847, ptr noundef %0, ptr noundef %3, ptr noundef nonnull %835), !range !248
  %850 = icmp eq i32 %849, 0
  br i1 %850, label %851, label %852

851:                                              ; preds = %843
  call void @ccgSubSurf_free(ptr noundef %847) #10
  br label %977

852:                                              ; preds = %843
  %853 = call i32 @ccgSubSurf_getNumFaces(ptr noundef %847) #10
  %854 = call i32 @ccgSubSurf_getGridSize(ptr noundef %847) #10
  %855 = add i32 %854, -1
  %856 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !100
  %857 = sext i32 %853 to i64
  %858 = shl nsw i64 %857, 3
  %859 = call ptr %856(i64 noundef %858, ptr noundef nonnull @.str.19) #10
  %860 = call ptr @ccgSubSurf_getFaceIterator(ptr noundef %847) #10
  %861 = call i32 @ccgFaceIterator_isStopped(ptr noundef %860) #10
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %863, label %872

863:                                              ; preds = %852, %863
  %864 = call ptr @ccgFaceIterator_getCurrent(ptr noundef %860) #10
  %865 = call ptr @ccgSubSurf_getFaceFaceHandle(ptr noundef %864) #10
  %866 = ptrtoint ptr %865 to i64
  %867 = shl i64 %866, 32
  %868 = ashr exact i64 %867, 32
  %869 = getelementptr inbounds ptr, ptr %859, i64 %868
  store ptr %864, ptr %869, align 8, !tbaa !100
  call void @ccgFaceIterator_next(ptr noundef %860) #10
  %870 = call i32 @ccgFaceIterator_isStopped(ptr noundef %860) #10
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %863, label %872, !llvm.loop !249

872:                                              ; preds = %863, %852
  call void @ccgFaceIterator_free(ptr noundef %860) #10
  %873 = icmp sgt i32 %853, 0
  br i1 %873, label %874, label %975

874:                                              ; preds = %872
  %875 = icmp sgt i32 %854, 1
  %876 = zext nneg i32 %853 to i64
  %877 = zext i32 %855 to i64
  %878 = zext i32 %855 to i64
  br label %879

879:                                              ; preds = %874, %970
  %880 = phi i64 [ 0, %874 ], [ %973, %970 ]
  %881 = phi ptr [ %836, %874 ], [ %972, %970 ]
  %882 = phi ptr [ %837, %874 ], [ %971, %970 ]
  %883 = getelementptr inbounds ptr, ptr %859, i64 %880
  %884 = load ptr, ptr %883, align 8, !tbaa !100
  %885 = call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %884) #10
  %886 = icmp sgt i32 %885, 0
  br i1 %886, label %887, label %970

887:                                              ; preds = %879, %965
  %888 = phi ptr [ %967, %965 ], [ %881, %879 ]
  %889 = phi ptr [ %966, %965 ], [ %882, %879 ]
  %890 = phi i32 [ %968, %965 ], [ 0, %879 ]
  %891 = call ptr @ccgSubSurf_getFaceGridDataArray(ptr noundef %847, ptr noundef %884, i32 noundef %890) #10
  br i1 %875, label %892, label %965

892:                                              ; preds = %887, %963
  %893 = phi i64 [ %896, %963 ], [ 0, %887 ]
  %894 = phi ptr [ %936, %963 ], [ %888, %887 ]
  %895 = phi ptr [ %960, %963 ], [ %889, %887 ]
  %896 = add nuw nsw i64 %893, 1
  %897 = trunc i64 %896 to i32
  %898 = mul i32 %854, %897
  %899 = zext i32 %898 to i64
  %900 = trunc i64 %893 to i32
  %901 = mul i32 %854, %900
  %902 = zext i32 %901 to i64
  %903 = getelementptr [2 x float], ptr %891, i64 %902
  %904 = getelementptr [2 x float], ptr %891, i64 %899
  br label %905

905:                                              ; preds = %892, %959
  %906 = phi i64 [ 0, %892 ], [ %961, %959 ]
  %907 = phi ptr [ %894, %892 ], [ %936, %959 ]
  %908 = phi ptr [ %895, %892 ], [ %960, %959 ]
  %909 = getelementptr [2 x float], ptr %903, i64 %906
  %910 = getelementptr [2 x float], ptr %909, i64 1
  %911 = getelementptr [2 x float], ptr %904, i64 %906
  %912 = getelementptr [2 x float], ptr %911, i64 1
  %913 = icmp eq ptr %907, null
  br i1 %913, label %935, label %914

914:                                              ; preds = %905
  %915 = load float, ptr %909, align 4, !tbaa !66
  store float %915, ptr %907, align 4, !tbaa !66
  %916 = getelementptr inbounds float, ptr %909, i64 1
  %917 = load float, ptr %916, align 4, !tbaa !66
  %918 = getelementptr inbounds float, ptr %907, i64 1
  store float %917, ptr %918, align 4, !tbaa !66
  %919 = getelementptr inbounds [4 x [2 x float]], ptr %907, i64 0, i64 1
  %920 = load float, ptr %911, align 4, !tbaa !66
  store float %920, ptr %919, align 4, !tbaa !66
  %921 = getelementptr inbounds float, ptr %911, i64 1
  %922 = load float, ptr %921, align 4, !tbaa !66
  %923 = getelementptr inbounds [4 x [2 x float]], ptr %907, i64 0, i64 1, i64 1
  store float %922, ptr %923, align 4, !tbaa !66
  %924 = getelementptr inbounds [4 x [2 x float]], ptr %907, i64 0, i64 2
  %925 = load float, ptr %912, align 4, !tbaa !66
  store float %925, ptr %924, align 4, !tbaa !66
  %926 = getelementptr [2 x float], ptr %911, i64 1, i64 1
  %927 = load float, ptr %926, align 4, !tbaa !66
  %928 = getelementptr inbounds [4 x [2 x float]], ptr %907, i64 0, i64 2, i64 1
  store float %927, ptr %928, align 4, !tbaa !66
  %929 = getelementptr inbounds [4 x [2 x float]], ptr %907, i64 0, i64 3
  %930 = load float, ptr %910, align 4, !tbaa !66
  store float %930, ptr %929, align 4, !tbaa !66
  %931 = getelementptr [2 x float], ptr %909, i64 1, i64 1
  %932 = load float, ptr %931, align 4, !tbaa !66
  %933 = getelementptr inbounds [4 x [2 x float]], ptr %907, i64 0, i64 3, i64 1
  store float %932, ptr %933, align 4, !tbaa !66
  %934 = getelementptr inbounds %struct.MTFace, ptr %907, i64 1
  br label %935

935:                                              ; preds = %914, %905
  %936 = phi ptr [ %934, %914 ], [ null, %905 ]
  %937 = icmp eq ptr %908, null
  br i1 %937, label %959, label %938

938:                                              ; preds = %935
  %939 = load float, ptr %909, align 4, !tbaa !66
  store float %939, ptr %908, align 4, !tbaa !66
  %940 = getelementptr inbounds float, ptr %909, i64 1
  %941 = load float, ptr %940, align 4, !tbaa !66
  %942 = getelementptr inbounds float, ptr %908, i64 1
  store float %941, ptr %942, align 4, !tbaa !66
  %943 = getelementptr inbounds %struct.MLoopUV, ptr %908, i64 1
  %944 = load float, ptr %911, align 4, !tbaa !66
  store float %944, ptr %943, align 4, !tbaa !66
  %945 = getelementptr inbounds float, ptr %911, i64 1
  %946 = load float, ptr %945, align 4, !tbaa !66
  %947 = getelementptr inbounds %struct.MLoopUV, ptr %908, i64 1, i32 0, i64 1
  store float %946, ptr %947, align 4, !tbaa !66
  %948 = getelementptr inbounds %struct.MLoopUV, ptr %908, i64 2
  %949 = load float, ptr %912, align 4, !tbaa !66
  store float %949, ptr %948, align 4, !tbaa !66
  %950 = getelementptr [2 x float], ptr %911, i64 1, i64 1
  %951 = load float, ptr %950, align 4, !tbaa !66
  %952 = getelementptr inbounds %struct.MLoopUV, ptr %908, i64 2, i32 0, i64 1
  store float %951, ptr %952, align 4, !tbaa !66
  %953 = getelementptr inbounds %struct.MLoopUV, ptr %908, i64 3
  %954 = load float, ptr %910, align 4, !tbaa !66
  store float %954, ptr %953, align 4, !tbaa !66
  %955 = getelementptr [2 x float], ptr %909, i64 1, i64 1
  %956 = load float, ptr %955, align 4, !tbaa !66
  %957 = getelementptr inbounds %struct.MLoopUV, ptr %908, i64 3, i32 0, i64 1
  store float %956, ptr %957, align 4, !tbaa !66
  %958 = getelementptr inbounds %struct.MLoopUV, ptr %908, i64 4
  br label %959

959:                                              ; preds = %938, %935
  %960 = phi ptr [ %958, %938 ], [ null, %935 ]
  %961 = add nuw nsw i64 %906, 1
  %962 = icmp eq i64 %961, %878
  br i1 %962, label %963, label %905, !llvm.loop !250

963:                                              ; preds = %959
  %964 = icmp eq i64 %896, %877
  br i1 %964, label %965, label %892, !llvm.loop !251

965:                                              ; preds = %963, %887
  %966 = phi ptr [ %889, %887 ], [ %960, %963 ]
  %967 = phi ptr [ %888, %887 ], [ %936, %963 ]
  %968 = add nuw nsw i32 %890, 1
  %969 = icmp eq i32 %968, %885
  br i1 %969, label %970, label %887, !llvm.loop !252

970:                                              ; preds = %965, %879
  %971 = phi ptr [ %882, %879 ], [ %966, %965 ]
  %972 = phi ptr [ %881, %879 ], [ %967, %965 ]
  %973 = add nuw nsw i64 %880, 1
  %974 = icmp eq i64 %973, %876
  br i1 %974, label %975, label %879, !llvm.loop !253

975:                                              ; preds = %970, %872
  call void @ccgSubSurf_free(ptr noundef %847) #10
  %976 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  call void %976(ptr noundef %859) #10
  br label %977

977:                                              ; preds = %833, %839, %851, %975
  %978 = add nuw nsw i32 %834, 1
  %979 = icmp eq i32 %978, %822
  br i1 %979, label %980, label %833, !llvm.loop !254

980:                                              ; preds = %977, %817, %812
  %981 = icmp sgt i32 %115, 0
  br i1 %981, label %982, label %1009

982:                                              ; preds = %980
  %983 = zext nneg i32 %115 to i64
  br label %984

984:                                              ; preds = %982, %1004
  %985 = phi i64 [ 0, %982 ], [ %1007, %1004 ]
  %986 = phi i32 [ %815, %982 ], [ %1006, %1004 ]
  %987 = phi ptr [ %813, %982 ], [ %1005, %1004 ]
  %988 = load ptr, ptr %120, align 8, !tbaa !173
  %989 = getelementptr inbounds %struct.anon.1, ptr %988, i64 %985, i32 1
  %990 = load ptr, ptr %989, align 8, !tbaa !174
  %991 = load ptr, ptr %112, align 8, !tbaa !34
  %992 = call ptr @ccgSubSurf_getVertUserData(ptr noundef %991, ptr noundef %990) #10
  %993 = getelementptr inbounds i32, ptr %992, i64 1
  %994 = load i32, ptr %993, align 4, !tbaa !54
  %995 = call ptr @ccgSubSurf_getVertVertHandle(ptr noundef %990) #10
  %996 = ptrtoint ptr %995 to i64
  %997 = trunc i64 %996 to i32
  %998 = load ptr, ptr %120, align 8, !tbaa !173
  %999 = getelementptr inbounds %struct.anon.1, ptr %998, i64 %985
  store i32 %986, ptr %999, align 8, !tbaa !255
  %1000 = call ptr @ccgSubSurf_getVertUserData(ptr noundef %0, ptr noundef %990) #10
  store i32 %986, ptr %1000, align 4, !tbaa !54
  call void @DM_copy_vert_data(ptr noundef %3, ptr noundef %10, i32 noundef %997, i32 noundef %986, i32 noundef 1) #10
  %1001 = icmp eq ptr %987, null
  br i1 %1001, label %1004, label %1002

1002:                                             ; preds = %984
  store i32 %994, ptr %987, align 4, !tbaa !54
  %1003 = getelementptr inbounds i32, ptr %987, i64 1
  br label %1004

1004:                                             ; preds = %1002, %984
  %1005 = phi ptr [ %1003, %1002 ], [ null, %984 ]
  %1006 = add nsw i32 %986, 1
  %1007 = add nuw nsw i64 %985, 1
  %1008 = icmp eq i64 %1007, %983
  br i1 %1008, label %1009, label %984, !llvm.loop !256

1009:                                             ; preds = %1004, %980
  %1010 = phi i32 [ %815, %980 ], [ %1006, %1004 ]
  %1011 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 5
  store i32 %1010, ptr %1011, align 8, !tbaa !257
  %1012 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 6
  store i32 %814, ptr %1012, align 4, !tbaa !258
  %1013 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 7
  store i32 %243, ptr %1013, align 8, !tbaa !259
  %1014 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 8
  store i32 %241, ptr %1014, align 4, !tbaa !260
  store i32 %243, ptr %18, align 8, !tbaa !114
  %1015 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 16
  %1016 = load i32, ptr %1015, align 8, !tbaa !261
  %1017 = and i32 %1016, -2
  store i32 %1017, ptr %1015, align 8, !tbaa !261
  %1018 = icmp sgt i32 %239, 0
  br i1 %1018, label %1019, label %1033

1019:                                             ; preds = %1009
  %1020 = zext nneg i32 %239 to i64
  br label %1021

1021:                                             ; preds = %1019, %1030
  %1022 = phi i64 [ 0, %1019 ], [ %1031, %1030 ]
  %1023 = getelementptr inbounds %struct.FaceVertWeightEntry, ptr %240, i64 %1022, i32 2
  %1024 = load i32, ptr %1023, align 8, !tbaa !186
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %1030, label %1026

1026:                                             ; preds = %1021
  %1027 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  %1028 = getelementptr inbounds %struct.FaceVertWeightEntry, ptr %240, i64 %1022, i32 1
  %1029 = load ptr, ptr %1028, align 8, !tbaa !188
  call void %1027(ptr noundef %1029) #10
  br label %1030

1030:                                             ; preds = %1026, %1021
  %1031 = add nuw nsw i64 %1022, 1
  %1032 = icmp eq i64 %1031, %1020
  br i1 %1032, label %1033, label %1021, !llvm.loop !262

1033:                                             ; preds = %1030, %1009
  %1034 = icmp eq ptr %240, null
  br i1 %1034, label %1037, label %1035

1035:                                             ; preds = %1033
  %1036 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  call void %1036(ptr noundef nonnull %240) #10
  br label %1037

1037:                                             ; preds = %1033, %1035
  ret ptr %10
}

declare void @ccgSubSurf_free(ptr noundef) local_unnamed_addr #2

declare void @ccgSubSurf_setNumLayers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @subsurf_calculate_limit_positions(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.CCGMeshIFC, align 4
  %4 = alloca %struct.CCGAllocatorIFC, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  %5 = getelementptr inbounds %struct.CCGMeshIFC, ptr %3, i64 0, i32 2
  store i32 8, ptr %5, align 4, !tbaa !81
  %6 = getelementptr inbounds %struct.CCGMeshIFC, ptr %3, i64 0, i32 1
  store i32 8, ptr %6, align 4, !tbaa !83
  store i32 8, ptr %3, align 4, !tbaa !84
  %7 = getelementptr inbounds %struct.CCGMeshIFC, ptr %3, i64 0, i32 3
  store i32 3, ptr %7, align 4, !tbaa !85
  %8 = getelementptr inbounds %struct.CCGMeshIFC, ptr %3, i64 0, i32 4
  store i32 12, ptr %8, align 4, !tbaa !86
  %9 = getelementptr inbounds %struct.CCGMeshIFC, ptr %3, i64 0, i32 5
  store i32 0, ptr %9, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #10
  %10 = tail call ptr @BLI_memarena_new(i64 noundef 65528, ptr noundef nonnull @.str) #10
  store ptr @arena_alloc, ptr %4, align 8, !tbaa !88
  %11 = getelementptr inbounds %struct.CCGAllocatorIFC, ptr %4, i64 0, i32 1
  store ptr @arena_realloc, ptr %11, align 8, !tbaa !90
  %12 = getelementptr inbounds %struct.CCGAllocatorIFC, ptr %4, i64 0, i32 2
  store ptr @arena_free, ptr %12, align 8, !tbaa !91
  %13 = getelementptr inbounds %struct.CCGAllocatorIFC, ptr %4, i64 0, i32 3
  store ptr @arena_release, ptr %13, align 8, !tbaa !92
  %14 = call ptr @ccgSubSurf_new(ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %4, ptr noundef %10) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #10
  %15 = call i32 @ccgSubSurf_setCalcVertexNormals(ptr noundef %14, i32 noundef 0, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  %16 = call ptr @CDDM_from_mesh(ptr noundef %0) #10
  call fastcc void @ss_sync_from_derivedmesh(ptr noundef %14, ptr noundef %16, ptr noundef null, i32 noundef 0)
  %17 = call ptr @ccgSubSurf_getVertIterator(ptr noundef %14) #10
  %18 = call i32 @ccgVertIterator_isStopped(ptr noundef %17) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %116

20:                                               ; preds = %2, %80
  %21 = call ptr @ccgVertIterator_getCurrent(ptr noundef %17) #10
  %22 = call ptr @ccgSubSurf_getVertVertHandle(ptr noundef %21) #10
  %23 = ptrtoint ptr %22 to i64
  %24 = call i32 @ccgSubSurf_getVertNumEdges(ptr noundef %21) #10
  %25 = call i32 @ccgSubSurf_getVertNumFaces(ptr noundef %21) #10
  %26 = icmp sgt i32 %24, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %32, %20
  %28 = phi float [ 0.000000e+00, %20 ], [ %46, %32 ]
  %29 = phi float [ 0.000000e+00, %20 ], [ %43, %32 ]
  %30 = phi float [ 0.000000e+00, %20 ], [ %40, %32 ]
  %31 = icmp sgt i32 %25, 0
  br i1 %31, label %49, label %66

32:                                               ; preds = %20, %32
  %33 = phi i32 [ %47, %32 ], [ 0, %20 ]
  %34 = phi float [ %40, %32 ], [ 0.000000e+00, %20 ]
  %35 = phi float [ %43, %32 ], [ 0.000000e+00, %20 ]
  %36 = phi float [ %46, %32 ], [ 0.000000e+00, %20 ]
  %37 = call ptr @ccgSubSurf_getVertEdge(ptr noundef %21, i32 noundef %33) #10
  %38 = call ptr @ccgSubSurf_getEdgeData(ptr noundef %14, ptr noundef %37, i32 noundef 1) #10
  %39 = load float, ptr %38, align 4, !tbaa !66
  %40 = fadd float %34, %39
  %41 = getelementptr inbounds float, ptr %38, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !66
  %43 = fadd float %35, %42
  %44 = getelementptr inbounds float, ptr %38, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !66
  %46 = fadd float %36, %45
  %47 = add nuw nsw i32 %33, 1
  %48 = icmp eq i32 %47, %24
  br i1 %48, label %27, label %32, !llvm.loop !263

49:                                               ; preds = %27, %49
  %50 = phi i32 [ %64, %49 ], [ 0, %27 ]
  %51 = phi float [ %57, %49 ], [ 0.000000e+00, %27 ]
  %52 = phi float [ %60, %49 ], [ 0.000000e+00, %27 ]
  %53 = phi float [ %63, %49 ], [ 0.000000e+00, %27 ]
  %54 = call ptr @ccgSubSurf_getVertFace(ptr noundef %21, i32 noundef %50) #10
  %55 = call ptr @ccgSubSurf_getFaceCenterData(ptr noundef %54) #10
  %56 = load float, ptr %55, align 4, !tbaa !66
  %57 = fadd float %51, %56
  %58 = getelementptr inbounds float, ptr %55, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !66
  %60 = fadd float %52, %59
  %61 = getelementptr inbounds float, ptr %55, i64 2
  %62 = load float, ptr %61, align 4, !tbaa !66
  %63 = fadd float %53, %62
  %64 = add nuw nsw i32 %50, 1
  %65 = icmp eq i32 %64, %25
  br i1 %65, label %66, label %49, !llvm.loop !264

66:                                               ; preds = %49, %27
  %67 = phi float [ 0.000000e+00, %27 ], [ %63, %49 ]
  %68 = phi float [ 0.000000e+00, %27 ], [ %60, %49 ]
  %69 = phi float [ 0.000000e+00, %27 ], [ %57, %49 ]
  %70 = icmp eq i32 %25, 0
  %71 = icmp eq i32 %25, %24
  %72 = select i1 %70, i1 true, i1 %71
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = sitofp i32 %24 to float
  %75 = sitofp i32 %25 to float
  %76 = fdiv float %74, %75
  %77 = fmul float %76, %69
  %78 = fmul float %76, %68
  %79 = fmul float %76, %67
  br label %80

80:                                               ; preds = %73, %66
  %81 = phi float [ %67, %66 ], [ %79, %73 ]
  %82 = phi float [ %68, %66 ], [ %78, %73 ]
  %83 = phi float [ %69, %66 ], [ %77, %73 ]
  %84 = call ptr @ccgSubSurf_getVertData(ptr noundef %14, ptr noundef %21) #10
  %85 = load float, ptr %84, align 4, !tbaa !66
  %86 = sitofp i32 %24 to float
  %87 = fmul float %85, %86
  %88 = fmul float %30, 4.000000e+00
  %89 = call float @llvm.fmuladd.f32(float %87, float %86, float %88)
  %90 = fadd float %83, %89
  %91 = add nsw i32 %24, 5
  %92 = mul nsw i32 %91, %24
  %93 = sitofp i32 %92 to float
  %94 = fdiv float %90, %93
  %95 = shl i64 %23, 32
  %96 = ashr exact i64 %95, 32
  %97 = getelementptr inbounds [3 x float], ptr %1, i64 %96
  store float %94, ptr %97, align 4, !tbaa !66
  %98 = getelementptr inbounds float, ptr %84, i64 1
  %99 = load float, ptr %98, align 4, !tbaa !66
  %100 = fmul float %99, %86
  %101 = fmul float %29, 4.000000e+00
  %102 = call float @llvm.fmuladd.f32(float %100, float %86, float %101)
  %103 = fadd float %82, %102
  %104 = fdiv float %103, %93
  %105 = getelementptr inbounds [3 x float], ptr %1, i64 %96, i64 1
  store float %104, ptr %105, align 4, !tbaa !66
  %106 = getelementptr inbounds float, ptr %84, i64 2
  %107 = load float, ptr %106, align 4, !tbaa !66
  %108 = fmul float %107, %86
  %109 = fmul float %28, 4.000000e+00
  %110 = call float @llvm.fmuladd.f32(float %108, float %86, float %109)
  %111 = fadd float %81, %110
  %112 = fdiv float %111, %93
  %113 = getelementptr inbounds [3 x float], ptr %1, i64 %96, i64 2
  store float %112, ptr %113, align 4, !tbaa !66
  call void @ccgVertIterator_next(ptr noundef %17) #10
  %114 = call i32 @ccgVertIterator_isStopped(ptr noundef %17) #10
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %20, label %116, !llvm.loop !265

116:                                              ; preds = %80, %2
  call void @ccgVertIterator_free(ptr noundef %17) #10
  call void @ccgSubSurf_free(ptr noundef %14) #10
  %117 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 95
  %118 = load ptr, ptr %117, align 8, !tbaa !266
  call void %118(ptr noundef %16) #10
  ret void
}

declare ptr @CDDM_from_mesh(ptr noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getVertIterator(ptr noundef) local_unnamed_addr #2

declare i32 @ccgVertIterator_isStopped(ptr noundef) local_unnamed_addr #2

declare ptr @ccgVertIterator_getCurrent(ptr noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getVertVertHandle(ptr noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_getVertNumEdges(ptr noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_getVertNumFaces(ptr noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getVertEdge(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getEdgeData(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getVertFace(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getFaceCenterData(ptr noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getVertData(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare void @ccgVertIterator_next(ptr noundef) local_unnamed_addr #2

declare void @ccgVertIterator_free(ptr noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getFaceUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_getFaceNumVerts(ptr noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getFaceVert(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getVertUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getFaceEdge(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getEdgeUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getEdgeVert0(ptr noundef) local_unnamed_addr #2

declare void @ccgSubSurf_getUseAgeCounts(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_getSimpleSubdiv(ptr noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_setSubdivisionLevels(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @arena_alloc(ptr noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %1 to i64
  %4 = tail call ptr @BLI_memarena_alloc(ptr noundef %0, i64 noundef %3) #10
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define internal ptr @arena_realloc(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = sext i32 %2 to i64
  %6 = tail call ptr @BLI_memarena_alloc(ptr noundef %0, i64 noundef %5) #10
  %7 = icmp eq ptr %1, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = sext i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr nonnull align 1 %1, i64 %9, i1 false)
  br label %10

10:                                               ; preds = %8, %4
  ret ptr %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @arena_free(ptr nocapture readnone %0, ptr nocapture readnone %1) #4 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @arena_release(ptr noundef %0) #0 {
  tail call void @BLI_memarena_free(ptr noundef %0) #10
  ret void
}

declare ptr @ccgSubSurf_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_setUseAgeCounts(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ccgSubSurf_setAllocMask(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_setCalcVertexNormals(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_initFullSync(ptr noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_syncVert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_syncEdge(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #6

declare i32 @ccgSubSurf_syncFace(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #6

declare i32 @ccgSubSurf_processSync(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare void @DM_from_template(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_getNumFinalVerts(ptr noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_getNumFinalEdges(ptr noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_getNumFinalFaces(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_free_layer_active(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_from_bmeshpoly(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @ccgDM_getMinMax(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.CCGKey, align 4
  %5 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #10
  %7 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %6) #10
  %8 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %6) #10
  call void @CCG_key_top_level(ptr noundef nonnull %4, ptr noundef %6) #10
  %9 = call i32 @ccgSubSurf_getNumVerts(ptr noundef %6) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %12, align 4, !tbaa !66
  %13 = getelementptr inbounds float, ptr %2, i64 1
  store float 0.000000e+00, ptr %13, align 4, !tbaa !66
  store float 0.000000e+00, ptr %2, align 4, !tbaa !66
  %14 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %14, align 4, !tbaa !66
  %15 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %15, align 4, !tbaa !66
  store float 0.000000e+00, ptr %1, align 4, !tbaa !66
  br label %16

16:                                               ; preds = %11, %3
  %17 = call ptr @ccgSubSurf_getVertIterator(ptr noundef %6) #10
  %18 = call i32 @ccgVertIterator_isStopped(ptr noundef %17) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %16
  %21 = getelementptr inbounds float, ptr %1, i64 1
  %22 = getelementptr inbounds float, ptr %1, i64 2
  %23 = getelementptr inbounds float, ptr %2, i64 1
  %24 = getelementptr inbounds float, ptr %2, i64 2
  br label %25

25:                                               ; preds = %20, %59
  %26 = call ptr @ccgVertIterator_getCurrent(ptr noundef %17) #10
  %27 = call ptr @ccgSubSurf_getVertData(ptr noundef %6, ptr noundef %26) #10
  %28 = load float, ptr %1, align 4, !tbaa !66
  %29 = load float, ptr %27, align 4, !tbaa !66
  %30 = fcmp ogt float %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store float %29, ptr %1, align 4, !tbaa !66
  br label %32

32:                                               ; preds = %31, %25
  %33 = load float, ptr %21, align 4, !tbaa !66
  %34 = getelementptr inbounds float, ptr %27, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !66
  %36 = fcmp ogt float %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store float %35, ptr %21, align 4, !tbaa !66
  br label %38

38:                                               ; preds = %37, %32
  %39 = load float, ptr %22, align 4, !tbaa !66
  %40 = getelementptr inbounds float, ptr %27, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !66
  %42 = fcmp ogt float %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store float %41, ptr %22, align 4, !tbaa !66
  br label %44

44:                                               ; preds = %43, %38
  %45 = load float, ptr %2, align 4, !tbaa !66
  %46 = load float, ptr %27, align 4, !tbaa !66
  %47 = fcmp olt float %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store float %46, ptr %2, align 4, !tbaa !66
  br label %49

49:                                               ; preds = %48, %44
  %50 = load float, ptr %23, align 4, !tbaa !66
  %51 = load float, ptr %34, align 4, !tbaa !66
  %52 = fcmp olt float %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store float %51, ptr %23, align 4, !tbaa !66
  br label %54

54:                                               ; preds = %53, %49
  %55 = load float, ptr %24, align 4, !tbaa !66
  %56 = load float, ptr %40, align 4, !tbaa !66
  %57 = fcmp olt float %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store float %56, ptr %24, align 4, !tbaa !66
  br label %59

59:                                               ; preds = %54, %58
  call void @ccgVertIterator_next(ptr noundef %17) #10
  %60 = call i32 @ccgVertIterator_isStopped(ptr noundef %17) #10
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %25, label %62, !llvm.loop !267

62:                                               ; preds = %59, %16
  call void @ccgVertIterator_free(ptr noundef %17) #10
  %63 = call ptr @ccgSubSurf_getEdgeIterator(ptr noundef %6) #10
  %64 = call i32 @ccgEdgeIterator_isStopped(ptr noundef %63) #10
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %121

66:                                               ; preds = %62
  %67 = icmp sgt i32 %7, 0
  %68 = getelementptr inbounds %struct.CCGKey, ptr %4, i64 0, i32 1
  %69 = getelementptr inbounds float, ptr %1, i64 1
  %70 = getelementptr inbounds float, ptr %1, i64 2
  %71 = getelementptr inbounds float, ptr %2, i64 1
  %72 = getelementptr inbounds float, ptr %2, i64 2
  %73 = zext nneg i32 %7 to i64
  br label %74

74:                                               ; preds = %66, %118
  %75 = call ptr @ccgEdgeIterator_getCurrent(ptr noundef %63) #10
  %76 = call ptr @ccgSubSurf_getEdgeDataArray(ptr noundef %6, ptr noundef %75) #10
  br i1 %67, label %77, label %118

77:                                               ; preds = %74
  %78 = load i32, ptr %68, align 4, !tbaa !268
  %79 = sext i32 %78 to i64
  br label %80

80:                                               ; preds = %77, %115
  %81 = phi i64 [ 0, %77 ], [ %116, %115 ]
  %82 = mul nsw i64 %81, %79
  %83 = getelementptr inbounds i8, ptr %76, i64 %82
  %84 = load float, ptr %1, align 4, !tbaa !66
  %85 = load float, ptr %83, align 4, !tbaa !66
  %86 = fcmp ogt float %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store float %85, ptr %1, align 4, !tbaa !66
  br label %88

88:                                               ; preds = %87, %80
  %89 = load float, ptr %69, align 4, !tbaa !66
  %90 = getelementptr inbounds float, ptr %83, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !66
  %92 = fcmp ogt float %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store float %91, ptr %69, align 4, !tbaa !66
  br label %94

94:                                               ; preds = %93, %88
  %95 = load float, ptr %70, align 4, !tbaa !66
  %96 = getelementptr inbounds float, ptr %83, i64 2
  %97 = load float, ptr %96, align 4, !tbaa !66
  %98 = fcmp ogt float %95, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store float %97, ptr %70, align 4, !tbaa !66
  br label %100

100:                                              ; preds = %99, %94
  %101 = load float, ptr %2, align 4, !tbaa !66
  %102 = load float, ptr %83, align 4, !tbaa !66
  %103 = fcmp olt float %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store float %102, ptr %2, align 4, !tbaa !66
  br label %105

105:                                              ; preds = %104, %100
  %106 = load float, ptr %71, align 4, !tbaa !66
  %107 = load float, ptr %90, align 4, !tbaa !66
  %108 = fcmp olt float %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store float %107, ptr %71, align 4, !tbaa !66
  br label %110

110:                                              ; preds = %109, %105
  %111 = load float, ptr %72, align 4, !tbaa !66
  %112 = load float, ptr %96, align 4, !tbaa !66
  %113 = fcmp olt float %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  store float %112, ptr %72, align 4, !tbaa !66
  br label %115

115:                                              ; preds = %110, %114
  %116 = add nuw nsw i64 %81, 1
  %117 = icmp eq i64 %116, %73
  br i1 %117, label %118, label %80, !llvm.loop !270

118:                                              ; preds = %115, %74
  call void @ccgEdgeIterator_next(ptr noundef %63) #10
  %119 = call i32 @ccgEdgeIterator_isStopped(ptr noundef %63) #10
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %74, label %121, !llvm.loop !271

121:                                              ; preds = %118, %62
  call void @ccgEdgeIterator_free(ptr noundef %63) #10
  %122 = call ptr @ccgSubSurf_getFaceIterator(ptr noundef %6) #10
  %123 = call i32 @ccgFaceIterator_isStopped(ptr noundef %122) #10
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %198

125:                                              ; preds = %121
  %126 = icmp sgt i32 %8, 0
  %127 = getelementptr inbounds %struct.CCGKey, ptr %4, i64 0, i32 2
  %128 = getelementptr inbounds %struct.CCGKey, ptr %4, i64 0, i32 1
  %129 = getelementptr inbounds float, ptr %1, i64 1
  %130 = getelementptr inbounds float, ptr %1, i64 2
  %131 = getelementptr inbounds float, ptr %2, i64 1
  %132 = getelementptr inbounds float, ptr %2, i64 2
  %133 = zext nneg i32 %8 to i64
  %134 = zext nneg i32 %8 to i64
  br label %135

135:                                              ; preds = %125, %195
  %136 = call ptr @ccgFaceIterator_getCurrent(ptr noundef %122) #10
  %137 = call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %136) #10
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %195

139:                                              ; preds = %135, %192
  %140 = phi i32 [ %193, %192 ], [ 0, %135 ]
  %141 = call ptr @ccgSubSurf_getFaceGridDataArray(ptr noundef %6, ptr noundef %136, i32 noundef %140) #10
  br i1 %126, label %142, label %192

142:                                              ; preds = %139
  %143 = load i32, ptr %127, align 4
  %144 = load i32, ptr %128, align 4
  %145 = sext i32 %144 to i64
  %146 = sext i32 %143 to i64
  br label %147

147:                                              ; preds = %142, %189
  %148 = phi i64 [ 0, %142 ], [ %190, %189 ]
  %149 = mul nsw i64 %148, %146
  br label %150

150:                                              ; preds = %147, %186
  %151 = phi i64 [ 0, %147 ], [ %187, %186 ]
  %152 = add nsw i64 %149, %151
  %153 = mul nsw i64 %152, %145
  %154 = getelementptr inbounds i8, ptr %141, i64 %153
  %155 = load float, ptr %1, align 4, !tbaa !66
  %156 = load float, ptr %154, align 4, !tbaa !66
  %157 = fcmp ogt float %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %150
  store float %156, ptr %1, align 4, !tbaa !66
  br label %159

159:                                              ; preds = %158, %150
  %160 = load float, ptr %129, align 4, !tbaa !66
  %161 = getelementptr inbounds float, ptr %154, i64 1
  %162 = load float, ptr %161, align 4, !tbaa !66
  %163 = fcmp ogt float %160, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  store float %162, ptr %129, align 4, !tbaa !66
  br label %165

165:                                              ; preds = %164, %159
  %166 = load float, ptr %130, align 4, !tbaa !66
  %167 = getelementptr inbounds float, ptr %154, i64 2
  %168 = load float, ptr %167, align 4, !tbaa !66
  %169 = fcmp ogt float %166, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  store float %168, ptr %130, align 4, !tbaa !66
  br label %171

171:                                              ; preds = %170, %165
  %172 = load float, ptr %2, align 4, !tbaa !66
  %173 = load float, ptr %154, align 4, !tbaa !66
  %174 = fcmp olt float %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  store float %173, ptr %2, align 4, !tbaa !66
  br label %176

176:                                              ; preds = %175, %171
  %177 = load float, ptr %131, align 4, !tbaa !66
  %178 = load float, ptr %161, align 4, !tbaa !66
  %179 = fcmp olt float %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  store float %178, ptr %131, align 4, !tbaa !66
  br label %181

181:                                              ; preds = %180, %176
  %182 = load float, ptr %132, align 4, !tbaa !66
  %183 = load float, ptr %167, align 4, !tbaa !66
  %184 = fcmp olt float %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  store float %183, ptr %132, align 4, !tbaa !66
  br label %186

186:                                              ; preds = %181, %185
  %187 = add nuw nsw i64 %151, 1
  %188 = icmp eq i64 %187, %134
  br i1 %188, label %189, label %150, !llvm.loop !272

189:                                              ; preds = %186
  %190 = add nuw nsw i64 %148, 1
  %191 = icmp eq i64 %190, %133
  br i1 %191, label %192, label %147, !llvm.loop !273

192:                                              ; preds = %189, %139
  %193 = add nuw nsw i32 %140, 1
  %194 = icmp eq i32 %193, %137
  br i1 %194, label %195, label %139, !llvm.loop !274

195:                                              ; preds = %192, %135
  call void @ccgFaceIterator_next(ptr noundef %122) #10
  %196 = call i32 @ccgFaceIterator_isStopped(ptr noundef %122) #10
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %135, label %198, !llvm.loop !275

198:                                              ; preds = %195, %121
  call void @ccgFaceIterator_free(ptr noundef %122) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ccgDM_getNumVerts(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = tail call i32 @ccgSubSurf_getNumFinalVerts(ptr noundef %3) #10
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @ccgDM_getNumEdges(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = tail call i32 @ccgSubSurf_getNumFinalEdges(ptr noundef %3) #10
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @ccgDM_getNumTessFaces(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = tail call i32 @ccgSubSurf_getNumFinalFaces(ptr noundef %3) #10
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @ccgDM_getNumLoops(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = tail call i32 @ccgSubSurf_getNumFinalFaces(ptr noundef %3) #10
  %5 = shl nsw i32 %4, 2
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_getFinalVert(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CCGKey, align 4
  %5 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #10
  call void @CCG_key_top_level(ptr noundef nonnull %4, ptr noundef %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  %7 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !177
  %9 = load i32, ptr %8, align 8, !tbaa !240
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %11, label %72

11:                                               ; preds = %3
  %12 = call i32 @ccgSubSurf_getNumFaces(ptr noundef %6) #10
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %72

14:                                               ; preds = %11
  %15 = call i32 @ccgSubSurf_getNumFaces(ptr noundef %6) #10
  %16 = add i32 %15, -1
  %17 = call i32 @ccgSubSurf_getGridSize(ptr noundef %6) #10
  %18 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %19 = call i32 @llvm.smax.i32(i32 %16, i32 0)
  %20 = zext nneg i32 %19 to i64
  br label %21

21:                                               ; preds = %24, %14
  %22 = phi i64 [ %26, %24 ], [ 0, %14 ]
  %23 = icmp eq i64 %22, %20
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %18, align 8, !tbaa !44
  %26 = add nuw nsw i64 %22, 1
  %27 = getelementptr inbounds %struct.anon.0, ptr %25, i64 %26
  %28 = load i32, ptr %27, align 8, !tbaa !193
  %29 = icmp sgt i32 %28, %1
  br i1 %29, label %30, label %21, !llvm.loop !276

30:                                               ; preds = %24
  %31 = trunc i64 %22 to i32
  br label %32

32:                                               ; preds = %21, %30
  %33 = phi i32 [ %31, %30 ], [ %19, %21 ]
  %34 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !44
  %36 = zext nneg i32 %33 to i64
  %37 = getelementptr inbounds %struct.anon.0, ptr %35, i64 %36, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !45
  %39 = call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %38) #10
  %40 = add nsw i32 %17, -2
  %41 = mul nsw i32 %40, %40
  %42 = mul nsw i32 %39, %40
  %43 = add nsw i32 %42, 1
  %44 = mul nsw i32 %39, %41
  %45 = add nsw i32 %43, %44
  %46 = load ptr, ptr %34, align 8, !tbaa !44
  %47 = getelementptr inbounds %struct.anon.0, ptr %46, i64 %36
  %48 = load i32, ptr %47, align 8, !tbaa !193
  %49 = sub nsw i32 %1, %48
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %32
  %52 = call ptr @ccgSubSurf_getFaceCenterData(ptr noundef %38) #10
  br label %115

53:                                               ; preds = %32
  %54 = icmp sgt i32 %49, %42
  br i1 %54, label %61, label %55

55:                                               ; preds = %53
  %56 = add nsw i32 %49, -1
  %57 = sdiv i32 %56, %40
  %58 = srem i32 %56, %40
  %59 = add nuw nsw i32 %58, 1
  %60 = call ptr @ccgSubSurf_getFaceGridEdgeData(ptr noundef %6, ptr noundef %38, i32 noundef %57, i32 noundef %59) #10
  br label %115

61:                                               ; preds = %53
  %62 = icmp slt i32 %49, %45
  br i1 %62, label %63, label %142

63:                                               ; preds = %61
  %64 = sub nsw i32 %49, %43
  %65 = sdiv i32 %64, %41
  %66 = srem i32 %64, %41
  %67 = sdiv i32 %66, %40
  %68 = add nsw i32 %67, 1
  %69 = srem i32 %66, %40
  %70 = add nsw i32 %69, 1
  %71 = call ptr @ccgSubSurf_getFaceGridData(ptr noundef %6, ptr noundef %38, i32 noundef %65, i32 noundef %70, i32 noundef %68) #10
  br label %115

72:                                               ; preds = %11, %3
  %73 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 5
  %74 = load ptr, ptr %73, align 8, !tbaa !173
  %75 = load i32, ptr %74, align 8, !tbaa !255
  %76 = icmp sgt i32 %75, %1
  br i1 %76, label %77, label %107

77:                                               ; preds = %72
  %78 = call i32 @ccgSubSurf_getNumEdges(ptr noundef %6) #10
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %107

80:                                               ; preds = %77
  %81 = call i32 @ccgSubSurf_getNumEdges(ptr noundef %6) #10
  %82 = call i32 @llvm.smax.i32(i32 %81, i32 1)
  %83 = add nsw i32 %82, -1
  %84 = zext nneg i32 %83 to i64
  br label %85

85:                                               ; preds = %88, %80
  %86 = phi i64 [ %90, %88 ], [ 0, %80 ]
  %87 = icmp eq i64 %86, %84
  br i1 %87, label %96, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr %7, align 8, !tbaa !177
  %90 = add nuw nsw i64 %86, 1
  %91 = getelementptr inbounds %struct.anon.2, ptr %89, i64 %90
  %92 = load i32, ptr %91, align 8, !tbaa !240
  %93 = icmp sgt i32 %92, %1
  br i1 %93, label %94, label %85, !llvm.loop !277

94:                                               ; preds = %88
  %95 = trunc i64 %86 to i32
  br label %96

96:                                               ; preds = %85, %94
  %97 = phi i32 [ %95, %94 ], [ %83, %85 ]
  %98 = load ptr, ptr %7, align 8, !tbaa !177
  %99 = zext nneg i32 %97 to i64
  %100 = getelementptr inbounds %struct.anon.2, ptr %98, i64 %99
  %101 = getelementptr inbounds %struct.anon.2, ptr %98, i64 %99, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !178
  %103 = load i32, ptr %100, align 8, !tbaa !240
  %104 = add i32 %1, 1
  %105 = sub i32 %104, %103
  %106 = call ptr @ccgSubSurf_getEdgeData(ptr noundef %6, ptr noundef %102, i32 noundef %105) #10
  br label %115

107:                                              ; preds = %77, %72
  %108 = load ptr, ptr %73, align 8, !tbaa !173
  %109 = load i32, ptr %108, align 8, !tbaa !255
  %110 = sub nsw i32 %1, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.anon.1, ptr %108, i64 %111, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !174
  %114 = call ptr @ccgSubSurf_getVertData(ptr noundef %6, ptr noundef %113) #10
  br label %115

115:                                              ; preds = %107, %96, %55, %63, %51
  %116 = phi ptr [ %114, %107 ], [ %106, %96 ], [ %60, %55 ], [ %71, %63 ], [ %52, %51 ]
  %117 = load float, ptr %116, align 4, !tbaa !66
  store float %117, ptr %2, align 4, !tbaa !66
  %118 = getelementptr inbounds float, ptr %116, i64 1
  %119 = load float, ptr %118, align 4, !tbaa !66
  %120 = getelementptr inbounds float, ptr %2, i64 1
  store float %119, ptr %120, align 4, !tbaa !66
  %121 = getelementptr inbounds float, ptr %116, i64 2
  %122 = load float, ptr %121, align 4, !tbaa !66
  %123 = getelementptr inbounds float, ptr %2, i64 2
  store float %122, ptr %123, align 4, !tbaa !66
  %124 = getelementptr inbounds %struct.MVert, ptr %2, i64 0, i32 1
  %125 = getelementptr inbounds %struct.CCGKey, ptr %4, i64 0, i32 5
  %126 = load i32, ptr %125, align 4, !tbaa !278
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, ptr %116, i64 %127
  %129 = load float, ptr %128, align 4, !tbaa !66
  %130 = fmul float %129, 3.276700e+04
  %131 = fptosi float %130 to i16
  store i16 %131, ptr %124, align 2, !tbaa !243
  %132 = getelementptr inbounds float, ptr %128, i64 1
  %133 = load float, ptr %132, align 4, !tbaa !66
  %134 = fmul float %133, 3.276700e+04
  %135 = fptosi float %134 to i16
  %136 = getelementptr inbounds %struct.MVert, ptr %2, i64 0, i32 1, i64 1
  store i16 %135, ptr %136, align 2, !tbaa !243
  %137 = getelementptr inbounds float, ptr %128, i64 2
  %138 = load float, ptr %137, align 4, !tbaa !66
  %139 = fmul float %138, 3.276700e+04
  %140 = fptosi float %139 to i16
  %141 = getelementptr inbounds %struct.MVert, ptr %2, i64 0, i32 1, i64 2
  store i16 %140, ptr %141, align 2, !tbaa !243
  br label %142

142:                                              ; preds = %115, %61
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_getFinalEdge(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i64 12, i1 false)
  %6 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !177
  %8 = getelementptr inbounds %struct.anon.2, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !241
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %11, label %69

11:                                               ; preds = %3
  %12 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %5) #10
  %13 = add i32 %12, -1
  %14 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %5) #10
  %15 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %5) #10
  %16 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %17 = tail call i32 @llvm.smax.i32(i32 %13, i32 0)
  %18 = zext nneg i32 %17 to i64
  br label %19

19:                                               ; preds = %22, %11
  %20 = phi i64 [ %24, %22 ], [ 0, %11 ]
  %21 = icmp eq i64 %20, %18
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %16, align 8, !tbaa !44
  %24 = add nuw nsw i64 %20, 1
  %25 = getelementptr inbounds %struct.anon.0, ptr %23, i64 %24, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !194
  %27 = icmp sgt i32 %26, %1
  br i1 %27, label %28, label %19, !llvm.loop !279

28:                                               ; preds = %22
  %29 = trunc i64 %20 to i32
  br label %30

30:                                               ; preds = %19, %28
  %31 = phi i32 [ %29, %28 ], [ %17, %19 ]
  %32 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !44
  %34 = zext nneg i32 %31 to i64
  %35 = getelementptr inbounds %struct.anon.0, ptr %33, i64 %34, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !45
  %37 = add nsw i32 %14, -1
  %38 = add nsw i32 %14, -2
  %39 = shl i32 %37, 1
  %40 = mul i32 %39, %38
  %41 = getelementptr inbounds %struct.anon.0, ptr %33, i64 %34, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !194
  %43 = sub nsw i32 %1, %42
  %44 = add nsw i32 %40, %37
  %45 = sdiv i32 %43, %44
  %46 = srem i32 %43, %44
  %47 = icmp slt i32 %46, %37
  br i1 %47, label %48, label %53

48:                                               ; preds = %30
  %49 = tail call fastcc i32 @getFaceIndex(ptr noundef %5, ptr noundef %36, i32 noundef %45, i32 noundef %46, i32 noundef 0, i32 noundef %15, i32 noundef %14)
  store i32 %49, ptr %2, align 4, !tbaa !105
  %50 = add nsw i32 %46, 1
  %51 = tail call fastcc i32 @getFaceIndex(ptr noundef %5, ptr noundef %36, i32 noundef %45, i32 noundef %50, i32 noundef 0, i32 noundef %15, i32 noundef %14)
  %52 = getelementptr inbounds %struct.MEdge, ptr %2, i64 0, i32 1
  store i32 %51, ptr %52, align 4, !tbaa !106
  br label %130

53:                                               ; preds = %30
  %54 = sub nsw i32 %46, %37
  %55 = sdiv i32 %54, 2
  %56 = sdiv i32 %55, %37
  %57 = add nsw i32 %56, 1
  %58 = srem i32 %55, %37
  %59 = and i32 %54, 1
  %60 = icmp eq i32 %59, 0
  %61 = add nsw i32 %58, 1
  %62 = getelementptr inbounds %struct.MEdge, ptr %2, i64 0, i32 1
  br i1 %60, label %63, label %66

63:                                               ; preds = %53
  %64 = tail call fastcc i32 @getFaceIndex(ptr noundef %5, ptr noundef %36, i32 noundef %45, i32 noundef %57, i32 noundef %58, i32 noundef %15, i32 noundef %14)
  store i32 %64, ptr %2, align 4, !tbaa !105
  %65 = tail call fastcc i32 @getFaceIndex(ptr noundef %5, ptr noundef %36, i32 noundef %45, i32 noundef %57, i32 noundef %61, i32 noundef %15, i32 noundef %14)
  store i32 %65, ptr %62, align 4, !tbaa !106
  br label %130

66:                                               ; preds = %53
  %67 = tail call fastcc i32 @getFaceIndex(ptr noundef %5, ptr noundef %36, i32 noundef %45, i32 noundef %58, i32 noundef %57, i32 noundef %15, i32 noundef %14)
  store i32 %67, ptr %2, align 4, !tbaa !105
  %68 = tail call fastcc i32 @getFaceIndex(ptr noundef %5, ptr noundef %36, i32 noundef %45, i32 noundef %61, i32 noundef %57, i32 noundef %15, i32 noundef %14)
  store i32 %68, ptr %62, align 4, !tbaa !106
  br label %130

69:                                               ; preds = %3
  %70 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %5) #10
  %71 = load ptr, ptr %6, align 8, !tbaa !177
  %72 = getelementptr inbounds %struct.anon.2, ptr %71, i64 0, i32 1
  %73 = load i32, ptr %72, align 4, !tbaa !241
  %74 = sub nsw i32 %1, %73
  %75 = add nsw i32 %70, -1
  %76 = sdiv i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.anon.2, ptr %71, i64 %77, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !178
  %80 = tail call i32 @ccgSubSurf_getEdgeNumFaces(ptr noundef %79) #10
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %81, i16 128, i16 0
  %83 = load ptr, ptr %6, align 8, !tbaa !177
  %84 = getelementptr inbounds %struct.anon.2, ptr %83, i64 %77, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !241
  %86 = sub nsw i32 %1, %85
  %87 = tail call ptr @ccgSubSurf_getEdgeVert0(ptr noundef %79) #10
  %88 = tail call ptr @ccgSubSurf_getEdgeVert1(ptr noundef %79) #10
  %89 = tail call ptr @ccgSubSurf_getVertUserData(ptr noundef %5, ptr noundef %87) #10
  %90 = load i32, ptr %89, align 4, !tbaa !54
  %91 = tail call ptr @ccgSubSurf_getVertUserData(ptr noundef %5, ptr noundef %88) #10
  %92 = load i32, ptr %91, align 4, !tbaa !54
  %93 = tail call ptr @ccgSubSurf_getEdgeUserData(ptr noundef %5, ptr noundef %79) #10
  %94 = load i32, ptr %93, align 4, !tbaa !54
  %95 = icmp eq i32 %85, %1
  br i1 %95, label %101, label %96

96:                                               ; preds = %69
  %97 = icmp eq i32 %75, %86
  br i1 %97, label %101, label %98

98:                                               ; preds = %96
  %99 = add i32 %86, -1
  %100 = add i32 %99, %94
  br label %101

101:                                              ; preds = %69, %96, %98
  %102 = phi i32 [ %100, %98 ], [ %90, %69 ], [ %92, %96 ]
  store i32 %102, ptr %2, align 4, !tbaa !105
  %103 = add nsw i32 %86, 1
  %104 = tail call ptr @ccgSubSurf_getEdgeVert0(ptr noundef %79) #10
  %105 = tail call ptr @ccgSubSurf_getEdgeVert1(ptr noundef %79) #10
  %106 = tail call ptr @ccgSubSurf_getVertUserData(ptr noundef %5, ptr noundef %104) #10
  %107 = load i32, ptr %106, align 4, !tbaa !54
  %108 = tail call ptr @ccgSubSurf_getVertUserData(ptr noundef %5, ptr noundef %105) #10
  %109 = load i32, ptr %108, align 4, !tbaa !54
  %110 = tail call ptr @ccgSubSurf_getEdgeUserData(ptr noundef %5, ptr noundef %79) #10
  %111 = load i32, ptr %110, align 4, !tbaa !54
  %112 = icmp eq i32 %103, 0
  %113 = icmp eq i32 %75, %103
  %114 = add i32 %111, %86
  %115 = select i1 %113, i32 %109, i32 %114
  %116 = select i1 %112, i32 %107, i32 %115
  %117 = getelementptr inbounds %struct.MEdge, ptr %2, i64 0, i32 1
  store i32 %116, ptr %117, align 4, !tbaa !106
  %118 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 8
  %119 = load ptr, ptr %118, align 8, !tbaa !183
  %120 = icmp eq ptr %119, null
  br i1 %120, label %126, label %121

121:                                              ; preds = %101
  %122 = getelementptr inbounds i16, ptr %119, i64 %77
  %123 = load i16, ptr %122, align 2, !tbaa !243
  %124 = and i16 %123, 516
  %125 = or disjoint i16 %124, 34
  br label %126

126:                                              ; preds = %101, %121
  %127 = phi i16 [ %125, %121 ], [ 34, %101 ]
  %128 = or i16 %127, %82
  %129 = getelementptr inbounds %struct.MEdge, ptr %2, i64 0, i32 4
  store i16 %128, ptr %129, align 2, !tbaa !242
  br label %130

130:                                              ; preds = %48, %66, %63, %126
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_getFinalFace(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %5) #10
  %7 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %5) #10
  %8 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !259
  %12 = icmp sgt i32 %11, %1
  br i1 %12, label %13, label %54

13:                                               ; preds = %3
  %14 = add nsw i32 %6, -1
  %15 = mul nsw i32 %14, %14
  %16 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !182
  %18 = sext i32 %1 to i64
  %19 = getelementptr inbounds i32, ptr %17, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !54
  %21 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  %23 = sext i32 %20 to i64
  %24 = getelementptr inbounds %struct.anon.0, ptr %22, i64 %23, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !45
  %26 = getelementptr inbounds %struct.anon.0, ptr %22, i64 %23, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !195
  %28 = sub nsw i32 %1, %27
  %29 = sdiv i32 %28, %15
  %30 = srem i32 %28, %15
  %31 = sdiv i32 %30, %14
  %32 = srem i32 %30, %14
  %33 = tail call fastcc i32 @getFaceIndex(ptr noundef %5, ptr noundef %25, i32 noundef %29, i32 noundef %32, i32 noundef %31, i32 noundef %7, i32 noundef %6)
  store i32 %33, ptr %2, align 4, !tbaa !280
  %34 = add nsw i32 %31, 1
  %35 = tail call fastcc i32 @getFaceIndex(ptr noundef %5, ptr noundef %25, i32 noundef %29, i32 noundef %32, i32 noundef %34, i32 noundef %7, i32 noundef %6)
  %36 = getelementptr inbounds %struct.MFace, ptr %2, i64 0, i32 1
  store i32 %35, ptr %36, align 4, !tbaa !282
  %37 = add nsw i32 %32, 1
  %38 = tail call fastcc i32 @getFaceIndex(ptr noundef %5, ptr noundef %25, i32 noundef %29, i32 noundef %37, i32 noundef %34, i32 noundef %7, i32 noundef %6)
  %39 = getelementptr inbounds %struct.MFace, ptr %2, i64 0, i32 2
  store i32 %38, ptr %39, align 4, !tbaa !283
  %40 = tail call fastcc i32 @getFaceIndex(ptr noundef %5, ptr noundef %25, i32 noundef %29, i32 noundef %37, i32 noundef %31, i32 noundef %7, i32 noundef %6)
  %41 = getelementptr inbounds %struct.MFace, ptr %2, i64 0, i32 3
  store i32 %40, ptr %41, align 4, !tbaa !284
  %42 = icmp eq ptr %9, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %13
  %44 = getelementptr inbounds %struct.DMFlagMat, ptr %9, i64 %23
  %45 = getelementptr inbounds %struct.DMFlagMat, ptr %9, i64 %23, i32 1
  %46 = load i8, ptr %45, align 2, !tbaa !197
  %47 = getelementptr inbounds %struct.MFace, ptr %2, i64 0, i32 6
  store i8 %46, ptr %47, align 1, !tbaa !285
  %48 = load i16, ptr %44, align 2, !tbaa !200
  %49 = getelementptr inbounds %struct.MFace, ptr %2, i64 0, i32 4
  store i16 %48, ptr %49, align 4, !tbaa !286
  br label %52

50:                                               ; preds = %13
  %51 = getelementptr inbounds %struct.MFace, ptr %2, i64 0, i32 6
  store i8 1, ptr %51, align 1, !tbaa !285
  br label %52

52:                                               ; preds = %50, %43
  %53 = getelementptr inbounds %struct.MFace, ptr %2, i64 0, i32 5
  store i8 0, ptr %53, align 2, !tbaa !287
  br label %54

54:                                               ; preds = %3, %52
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_getFinalVertCo(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.MVert, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #10
  call void @ccgDM_getFinalVert(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4)
  %5 = load float, ptr %4, align 4, !tbaa !66
  store float %5, ptr %2, align 4, !tbaa !66
  %6 = getelementptr inbounds float, ptr %4, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !66
  %8 = getelementptr inbounds float, ptr %2, i64 1
  store float %7, ptr %8, align 4, !tbaa !66
  %9 = getelementptr inbounds float, ptr %4, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !66
  %11 = getelementptr inbounds float, ptr %2, i64 2
  store float %10, ptr %11, align 4, !tbaa !66
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_getFinalVertNo(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.MVert, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #10
  call void @ccgDM_getFinalVert(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4)
  %5 = getelementptr inbounds %struct.MVert, ptr %4, i64 0, i32 1
  %6 = load i16, ptr %5, align 4, !tbaa !243
  %7 = sitofp i16 %6 to float
  %8 = fmul float %7, 0x3F00002000000000
  store float %8, ptr %2, align 4, !tbaa !66
  %9 = getelementptr inbounds %struct.MVert, ptr %4, i64 0, i32 1, i64 1
  %10 = load i16, ptr %9, align 2, !tbaa !243
  %11 = sitofp i16 %10 to float
  %12 = fmul float %11, 0x3F00002000000000
  %13 = getelementptr inbounds float, ptr %2, i64 1
  store float %12, ptr %13, align 4, !tbaa !66
  %14 = getelementptr inbounds %struct.MVert, ptr %4, i64 0, i32 1, i64 2
  %15 = load i16, ptr %14, align 4, !tbaa !243
  %16 = sitofp i16 %15 to float
  %17 = fmul float %16, 0x3F00002000000000
  %18 = getelementptr inbounds float, ptr %2, i64 2
  store float %17, ptr %18, align 4, !tbaa !66
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_copyFinalVertArray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.CCGKey, align 4
  %4 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  %6 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %5) #10
  %7 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %5) #10
  call void @CCG_key_top_level(ptr noundef nonnull %3, ptr noundef %5) #10
  %8 = call i32 @ccgSubSurf_getNumFaces(ptr noundef %5) #10
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %152

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %12 = getelementptr inbounds %struct.CCGKey, ptr %3, i64 0, i32 5
  %13 = add i32 %6, -1
  %14 = icmp sgt i32 %6, 2
  %15 = icmp sgt i32 %6, 2
  %16 = zext nneg i32 %8 to i64
  br label %17

17:                                               ; preds = %10, %148
  %18 = phi i64 [ 0, %10 ], [ %150, %148 ]
  %19 = phi i32 [ 0, %10 ], [ %149, %148 ]
  %20 = load ptr, ptr %11, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.anon.0, ptr %20, i64 %18, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %22) #10
  %24 = call ptr @ccgSubSurf_getFaceCenterData(ptr noundef %22) #10
  %25 = add i32 %19, 1
  %26 = zext i32 %19 to i64
  %27 = getelementptr inbounds %struct.MVert, ptr %1, i64 %26
  %28 = load float, ptr %24, align 4, !tbaa !66
  store float %28, ptr %27, align 4, !tbaa !66
  %29 = getelementptr inbounds float, ptr %24, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !66
  %31 = getelementptr inbounds float, ptr %27, i64 1
  store float %30, ptr %31, align 4, !tbaa !66
  %32 = getelementptr inbounds float, ptr %24, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !66
  %34 = getelementptr inbounds float, ptr %27, i64 2
  store float %33, ptr %34, align 4, !tbaa !66
  %35 = getelementptr inbounds %struct.MVert, ptr %1, i64 %26, i32 1
  %36 = load i32, ptr %12, align 4, !tbaa !278
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %24, i64 %37
  %39 = load float, ptr %38, align 4, !tbaa !66
  %40 = fmul float %39, 3.276700e+04
  %41 = fptosi float %40 to i16
  store i16 %41, ptr %35, align 2, !tbaa !243
  %42 = getelementptr inbounds float, ptr %38, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !66
  %44 = fmul float %43, 3.276700e+04
  %45 = fptosi float %44 to i16
  %46 = getelementptr inbounds %struct.MVert, ptr %1, i64 %26, i32 1, i64 1
  store i16 %45, ptr %46, align 2, !tbaa !243
  %47 = getelementptr inbounds float, ptr %38, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !66
  %49 = fmul float %48, 3.276700e+04
  %50 = fptosi float %49 to i16
  %51 = getelementptr inbounds %struct.MVert, ptr %1, i64 %26, i32 1, i64 2
  store i16 %50, ptr %51, align 2, !tbaa !243
  %52 = getelementptr inbounds %struct.MVert, ptr %1, i64 %26, i32 3
  store i8 0, ptr %52, align 1, !tbaa !288
  %53 = getelementptr inbounds %struct.MVert, ptr %1, i64 %26, i32 2
  store i8 0, ptr %53, align 2, !tbaa !55
  %54 = icmp sgt i32 %23, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %96, %17
  %56 = phi i32 [ %25, %17 ], [ %97, %96 ]
  %57 = icmp sgt i32 %23, 0
  br i1 %57, label %100, label %148

58:                                               ; preds = %17, %96
  %59 = phi i32 [ %97, %96 ], [ %25, %17 ]
  %60 = phi i32 [ %98, %96 ], [ 0, %17 ]
  br i1 %14, label %61, label %96

61:                                               ; preds = %58, %61
  %62 = phi i32 [ %65, %61 ], [ %59, %58 ]
  %63 = phi i32 [ %94, %61 ], [ 1, %58 ]
  %64 = call ptr @ccgSubSurf_getFaceGridEdgeData(ptr noundef %5, ptr noundef %22, i32 noundef %60, i32 noundef %63) #10
  %65 = add i32 %62, 1
  %66 = zext i32 %62 to i64
  %67 = getelementptr inbounds %struct.MVert, ptr %1, i64 %66
  %68 = load float, ptr %64, align 4, !tbaa !66
  store float %68, ptr %67, align 4, !tbaa !66
  %69 = getelementptr inbounds float, ptr %64, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !66
  %71 = getelementptr inbounds float, ptr %67, i64 1
  store float %70, ptr %71, align 4, !tbaa !66
  %72 = getelementptr inbounds float, ptr %64, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !66
  %74 = getelementptr inbounds float, ptr %67, i64 2
  store float %73, ptr %74, align 4, !tbaa !66
  %75 = getelementptr inbounds %struct.MVert, ptr %1, i64 %66, i32 1
  %76 = load i32, ptr %12, align 4, !tbaa !278
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, ptr %64, i64 %77
  %79 = load float, ptr %78, align 4, !tbaa !66
  %80 = fmul float %79, 3.276700e+04
  %81 = fptosi float %80 to i16
  store i16 %81, ptr %75, align 2, !tbaa !243
  %82 = getelementptr inbounds float, ptr %78, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !66
  %84 = fmul float %83, 3.276700e+04
  %85 = fptosi float %84 to i16
  %86 = getelementptr inbounds %struct.MVert, ptr %1, i64 %66, i32 1, i64 1
  store i16 %85, ptr %86, align 2, !tbaa !243
  %87 = getelementptr inbounds float, ptr %78, i64 2
  %88 = load float, ptr %87, align 4, !tbaa !66
  %89 = fmul float %88, 3.276700e+04
  %90 = fptosi float %89 to i16
  %91 = getelementptr inbounds %struct.MVert, ptr %1, i64 %66, i32 1, i64 2
  store i16 %90, ptr %91, align 2, !tbaa !243
  %92 = getelementptr inbounds %struct.MVert, ptr %1, i64 %66, i32 3
  store i8 0, ptr %92, align 1, !tbaa !288
  %93 = getelementptr inbounds %struct.MVert, ptr %1, i64 %66, i32 2
  store i8 0, ptr %93, align 2, !tbaa !55
  %94 = add nuw nsw i32 %63, 1
  %95 = icmp eq i32 %94, %13
  br i1 %95, label %96, label %61, !llvm.loop !289

96:                                               ; preds = %61, %58
  %97 = phi i32 [ %59, %58 ], [ %65, %61 ]
  %98 = add nuw nsw i32 %60, 1
  %99 = icmp eq i32 %98, %23
  br i1 %99, label %55, label %58, !llvm.loop !290

100:                                              ; preds = %55, %144
  %101 = phi i32 [ %145, %144 ], [ %56, %55 ]
  %102 = phi i32 [ %146, %144 ], [ 0, %55 ]
  br i1 %15, label %103, label %144

103:                                              ; preds = %100, %141
  %104 = phi i32 [ %110, %141 ], [ %101, %100 ]
  %105 = phi i32 [ %142, %141 ], [ 1, %100 ]
  br label %106

106:                                              ; preds = %103, %106
  %107 = phi i32 [ %104, %103 ], [ %110, %106 ]
  %108 = phi i32 [ 1, %103 ], [ %139, %106 ]
  %109 = call ptr @ccgSubSurf_getFaceGridData(ptr noundef %5, ptr noundef %22, i32 noundef %102, i32 noundef %108, i32 noundef %105) #10
  %110 = add i32 %107, 1
  %111 = zext i32 %107 to i64
  %112 = getelementptr inbounds %struct.MVert, ptr %1, i64 %111
  %113 = load float, ptr %109, align 4, !tbaa !66
  store float %113, ptr %112, align 4, !tbaa !66
  %114 = getelementptr inbounds float, ptr %109, i64 1
  %115 = load float, ptr %114, align 4, !tbaa !66
  %116 = getelementptr inbounds float, ptr %112, i64 1
  store float %115, ptr %116, align 4, !tbaa !66
  %117 = getelementptr inbounds float, ptr %109, i64 2
  %118 = load float, ptr %117, align 4, !tbaa !66
  %119 = getelementptr inbounds float, ptr %112, i64 2
  store float %118, ptr %119, align 4, !tbaa !66
  %120 = getelementptr inbounds %struct.MVert, ptr %1, i64 %111, i32 1
  %121 = load i32, ptr %12, align 4, !tbaa !278
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, ptr %109, i64 %122
  %124 = load float, ptr %123, align 4, !tbaa !66
  %125 = fmul float %124, 3.276700e+04
  %126 = fptosi float %125 to i16
  store i16 %126, ptr %120, align 2, !tbaa !243
  %127 = getelementptr inbounds float, ptr %123, i64 1
  %128 = load float, ptr %127, align 4, !tbaa !66
  %129 = fmul float %128, 3.276700e+04
  %130 = fptosi float %129 to i16
  %131 = getelementptr inbounds %struct.MVert, ptr %1, i64 %111, i32 1, i64 1
  store i16 %130, ptr %131, align 2, !tbaa !243
  %132 = getelementptr inbounds float, ptr %123, i64 2
  %133 = load float, ptr %132, align 4, !tbaa !66
  %134 = fmul float %133, 3.276700e+04
  %135 = fptosi float %134 to i16
  %136 = getelementptr inbounds %struct.MVert, ptr %1, i64 %111, i32 1, i64 2
  store i16 %135, ptr %136, align 2, !tbaa !243
  %137 = getelementptr inbounds %struct.MVert, ptr %1, i64 %111, i32 3
  store i8 0, ptr %137, align 1, !tbaa !288
  %138 = getelementptr inbounds %struct.MVert, ptr %1, i64 %111, i32 2
  store i8 0, ptr %138, align 2, !tbaa !55
  %139 = add nuw nsw i32 %108, 1
  %140 = icmp eq i32 %139, %13
  br i1 %140, label %141, label %106, !llvm.loop !291

141:                                              ; preds = %106
  %142 = add nuw nsw i32 %105, 1
  %143 = icmp eq i32 %142, %13
  br i1 %143, label %144, label %103, !llvm.loop !292

144:                                              ; preds = %141, %100
  %145 = phi i32 [ %101, %100 ], [ %110, %141 ]
  %146 = add nuw nsw i32 %102, 1
  %147 = icmp eq i32 %146, %23
  br i1 %147, label %148, label %100, !llvm.loop !293

148:                                              ; preds = %144, %55
  %149 = phi i32 [ %56, %55 ], [ %145, %144 ]
  %150 = add nuw nsw i64 %18, 1
  %151 = icmp eq i64 %150, %16
  br i1 %151, label %152, label %17, !llvm.loop !294

152:                                              ; preds = %148, %2
  %153 = phi i32 [ 0, %2 ], [ %149, %148 ]
  %154 = call i32 @ccgSubSurf_getNumEdges(ptr noundef %5) #10
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %207

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 6
  %158 = icmp sgt i32 %7, 2
  %159 = getelementptr inbounds %struct.CCGKey, ptr %3, i64 0, i32 5
  %160 = zext nneg i32 %154 to i64
  %161 = add nsw i32 %7, -2
  br label %162

162:                                              ; preds = %156, %203
  %163 = phi i64 [ 0, %156 ], [ %205, %203 ]
  %164 = phi i32 [ %153, %156 ], [ %204, %203 ]
  %165 = load ptr, ptr %157, align 8, !tbaa !177
  %166 = getelementptr inbounds %struct.anon.2, ptr %165, i64 %163, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !178
  br i1 %158, label %168, label %203

168:                                              ; preds = %162, %168
  %169 = phi i32 [ %201, %168 ], [ 1, %162 ]
  %170 = phi i32 [ %172, %168 ], [ %164, %162 ]
  %171 = call ptr @ccgSubSurf_getEdgeData(ptr noundef %5, ptr noundef %167, i32 noundef %169) #10
  %172 = add i32 %170, 1
  %173 = zext i32 %170 to i64
  %174 = getelementptr inbounds %struct.MVert, ptr %1, i64 %173
  %175 = load float, ptr %171, align 4, !tbaa !66
  store float %175, ptr %174, align 4, !tbaa !66
  %176 = getelementptr inbounds float, ptr %171, i64 1
  %177 = load float, ptr %176, align 4, !tbaa !66
  %178 = getelementptr inbounds float, ptr %174, i64 1
  store float %177, ptr %178, align 4, !tbaa !66
  %179 = getelementptr inbounds float, ptr %171, i64 2
  %180 = load float, ptr %179, align 4, !tbaa !66
  %181 = getelementptr inbounds float, ptr %174, i64 2
  store float %180, ptr %181, align 4, !tbaa !66
  %182 = getelementptr inbounds %struct.MVert, ptr %1, i64 %173, i32 1
  %183 = load i32, ptr %159, align 4, !tbaa !278
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, ptr %171, i64 %184
  %186 = load float, ptr %185, align 4, !tbaa !66
  %187 = fmul float %186, 3.276700e+04
  %188 = fptosi float %187 to i16
  store i16 %188, ptr %182, align 2, !tbaa !243
  %189 = getelementptr inbounds float, ptr %185, i64 1
  %190 = load float, ptr %189, align 4, !tbaa !66
  %191 = fmul float %190, 3.276700e+04
  %192 = fptosi float %191 to i16
  %193 = getelementptr inbounds %struct.MVert, ptr %1, i64 %173, i32 1, i64 1
  store i16 %192, ptr %193, align 2, !tbaa !243
  %194 = getelementptr inbounds float, ptr %185, i64 2
  %195 = load float, ptr %194, align 4, !tbaa !66
  %196 = fmul float %195, 3.276700e+04
  %197 = fptosi float %196 to i16
  %198 = getelementptr inbounds %struct.MVert, ptr %1, i64 %173, i32 1, i64 2
  store i16 %197, ptr %198, align 2, !tbaa !243
  %199 = getelementptr inbounds %struct.MVert, ptr %1, i64 %173, i32 3
  store i8 0, ptr %199, align 1, !tbaa !288
  %200 = getelementptr inbounds %struct.MVert, ptr %1, i64 %173, i32 2
  store i8 0, ptr %200, align 2, !tbaa !55
  %201 = add nuw nsw i32 %169, 1
  %202 = icmp eq i32 %169, %161
  br i1 %202, label %203, label %168, !llvm.loop !295

203:                                              ; preds = %168, %162
  %204 = phi i32 [ %164, %162 ], [ %172, %168 ]
  %205 = add nuw nsw i64 %163, 1
  %206 = icmp eq i64 %205, %160
  br i1 %206, label %207, label %162, !llvm.loop !296

207:                                              ; preds = %203, %152
  %208 = phi i32 [ %153, %152 ], [ %204, %203 ]
  %209 = call i32 @ccgSubSurf_getNumVerts(ptr noundef %5) #10
  %210 = icmp sgt i32 %209, 0
  br i1 %210, label %211, label %253

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 5
  %213 = getelementptr inbounds %struct.CCGKey, ptr %3, i64 0, i32 5
  %214 = zext nneg i32 %209 to i64
  br label %215

215:                                              ; preds = %211, %215
  %216 = phi i64 [ 0, %211 ], [ %251, %215 ]
  %217 = phi i32 [ %208, %211 ], [ %222, %215 ]
  %218 = load ptr, ptr %212, align 8, !tbaa !173
  %219 = getelementptr inbounds %struct.anon.1, ptr %218, i64 %216, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !174
  %221 = call ptr @ccgSubSurf_getVertData(ptr noundef %5, ptr noundef %220) #10
  %222 = add i32 %217, 1
  %223 = zext i32 %217 to i64
  %224 = getelementptr inbounds %struct.MVert, ptr %1, i64 %223
  %225 = load float, ptr %221, align 4, !tbaa !66
  store float %225, ptr %224, align 4, !tbaa !66
  %226 = getelementptr inbounds float, ptr %221, i64 1
  %227 = load float, ptr %226, align 4, !tbaa !66
  %228 = getelementptr inbounds float, ptr %224, i64 1
  store float %227, ptr %228, align 4, !tbaa !66
  %229 = getelementptr inbounds float, ptr %221, i64 2
  %230 = load float, ptr %229, align 4, !tbaa !66
  %231 = getelementptr inbounds float, ptr %224, i64 2
  store float %230, ptr %231, align 4, !tbaa !66
  %232 = getelementptr inbounds %struct.MVert, ptr %1, i64 %223, i32 1
  %233 = load i32, ptr %213, align 4, !tbaa !278
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, ptr %221, i64 %234
  %236 = load float, ptr %235, align 4, !tbaa !66
  %237 = fmul float %236, 3.276700e+04
  %238 = fptosi float %237 to i16
  store i16 %238, ptr %232, align 2, !tbaa !243
  %239 = getelementptr inbounds float, ptr %235, i64 1
  %240 = load float, ptr %239, align 4, !tbaa !66
  %241 = fmul float %240, 3.276700e+04
  %242 = fptosi float %241 to i16
  %243 = getelementptr inbounds %struct.MVert, ptr %1, i64 %223, i32 1, i64 1
  store i16 %242, ptr %243, align 2, !tbaa !243
  %244 = getelementptr inbounds float, ptr %235, i64 2
  %245 = load float, ptr %244, align 4, !tbaa !66
  %246 = fmul float %245, 3.276700e+04
  %247 = fptosi float %246 to i16
  %248 = getelementptr inbounds %struct.MVert, ptr %1, i64 %223, i32 1, i64 2
  store i16 %247, ptr %248, align 2, !tbaa !243
  %249 = getelementptr inbounds %struct.MVert, ptr %1, i64 %223, i32 3
  store i8 0, ptr %249, align 1, !tbaa !288
  %250 = getelementptr inbounds %struct.MVert, ptr %1, i64 %223, i32 2
  store i8 0, ptr %250, align 2, !tbaa !55
  %251 = add nuw nsw i64 %216, 1
  %252 = icmp eq i64 %251, %214
  br i1 %252, label %253, label %215, !llvm.loop !297

253:                                              ; preds = %215, %207
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_copyFinalEdgeArray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %4) #10
  %6 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %4) #10
  %7 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !183
  %9 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !171
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i16 0, i16 34
  %13 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %4) #10
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %87

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %17 = add i32 %5, -1
  %18 = icmp sgt i32 %5, 1
  %19 = icmp sgt i32 %5, 2
  %20 = icmp sgt i32 %5, 1
  %21 = zext nneg i32 %13 to i64
  br label %22

22:                                               ; preds = %15, %83
  %23 = phi i64 [ 0, %15 ], [ %85, %83 ]
  %24 = phi i32 [ 0, %15 ], [ %84, %83 ]
  %25 = load ptr, ptr %16, align 8, !tbaa !44
  %26 = getelementptr inbounds %struct.anon.0, ptr %25, i64 %23, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !45
  %28 = tail call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %27) #10
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %83

30:                                               ; preds = %22, %79
  %31 = phi i32 [ %80, %79 ], [ %24, %22 ]
  %32 = phi i32 [ %81, %79 ], [ 0, %22 ]
  br i1 %18, label %35, label %33

33:                                               ; preds = %35, %30
  %34 = phi i32 [ %31, %30 ], [ %38, %35 ]
  br i1 %19, label %49, label %79

35:                                               ; preds = %30, %35
  %36 = phi i32 [ %38, %35 ], [ %31, %30 ]
  %37 = phi i32 [ %42, %35 ], [ 0, %30 ]
  %38 = add i32 %36, 1
  %39 = zext i32 %36 to i64
  %40 = getelementptr inbounds %struct.MEdge, ptr %1, i64 %39
  %41 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %27, i32 noundef %32, i32 noundef %37, i32 noundef 0, i32 noundef %6, i32 noundef %5)
  %42 = add nuw nsw i32 %37, 1
  %43 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %27, i32 noundef %32, i32 noundef %42, i32 noundef 0, i32 noundef %6, i32 noundef %5)
  store i32 %41, ptr %40, align 4, !tbaa !105
  %44 = getelementptr inbounds %struct.MEdge, ptr %1, i64 %39, i32 1
  store i32 %43, ptr %44, align 4, !tbaa !106
  %45 = getelementptr inbounds %struct.MEdge, ptr %1, i64 %39, i32 3
  store i8 0, ptr %45, align 1, !tbaa !298
  %46 = getelementptr inbounds %struct.MEdge, ptr %1, i64 %39, i32 2
  store i8 0, ptr %46, align 4, !tbaa !103
  %47 = getelementptr inbounds %struct.MEdge, ptr %1, i64 %39, i32 4
  store i16 %12, ptr %47, align 2, !tbaa !242
  %48 = icmp eq i32 %42, %17
  br i1 %48, label %33, label %35, !llvm.loop !299

49:                                               ; preds = %33, %75
  %50 = phi i32 [ %76, %75 ], [ %34, %33 ]
  %51 = phi i32 [ %77, %75 ], [ 1, %33 ]
  br i1 %20, label %52, label %75

52:                                               ; preds = %49, %52
  %53 = phi i32 [ %65, %52 ], [ %50, %49 ]
  %54 = phi i32 [ %59, %52 ], [ 0, %49 ]
  %55 = add i32 %53, 1
  %56 = zext i32 %53 to i64
  %57 = getelementptr inbounds %struct.MEdge, ptr %1, i64 %56
  %58 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %27, i32 noundef %32, i32 noundef %51, i32 noundef %54, i32 noundef %6, i32 noundef %5)
  %59 = add nuw nsw i32 %54, 1
  %60 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %27, i32 noundef %32, i32 noundef %51, i32 noundef %59, i32 noundef %6, i32 noundef %5)
  store i32 %58, ptr %57, align 4, !tbaa !105
  %61 = getelementptr inbounds %struct.MEdge, ptr %1, i64 %56, i32 1
  store i32 %60, ptr %61, align 4, !tbaa !106
  %62 = getelementptr inbounds %struct.MEdge, ptr %1, i64 %56, i32 3
  store i8 0, ptr %62, align 1, !tbaa !298
  %63 = getelementptr inbounds %struct.MEdge, ptr %1, i64 %56, i32 2
  store i8 0, ptr %63, align 4, !tbaa !103
  %64 = getelementptr inbounds %struct.MEdge, ptr %1, i64 %56, i32 4
  store i16 %12, ptr %64, align 2, !tbaa !242
  %65 = add i32 %53, 2
  %66 = zext i32 %55 to i64
  %67 = getelementptr inbounds %struct.MEdge, ptr %1, i64 %66
  %68 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %27, i32 noundef %32, i32 noundef %54, i32 noundef %51, i32 noundef %6, i32 noundef %5)
  %69 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %27, i32 noundef %32, i32 noundef %59, i32 noundef %51, i32 noundef %6, i32 noundef %5)
  store i32 %68, ptr %67, align 4, !tbaa !105
  %70 = getelementptr inbounds %struct.MEdge, ptr %1, i64 %66, i32 1
  store i32 %69, ptr %70, align 4, !tbaa !106
  %71 = getelementptr inbounds %struct.MEdge, ptr %1, i64 %66, i32 3
  store i8 0, ptr %71, align 1, !tbaa !298
  %72 = getelementptr inbounds %struct.MEdge, ptr %1, i64 %66, i32 2
  store i8 0, ptr %72, align 4, !tbaa !103
  %73 = getelementptr inbounds %struct.MEdge, ptr %1, i64 %66, i32 4
  store i16 %12, ptr %73, align 2, !tbaa !242
  %74 = icmp eq i32 %59, %17
  br i1 %74, label %75, label %52, !llvm.loop !300

75:                                               ; preds = %52, %49
  %76 = phi i32 [ %50, %49 ], [ %65, %52 ]
  %77 = add nuw nsw i32 %51, 1
  %78 = icmp eq i32 %77, %17
  br i1 %78, label %79, label %49, !llvm.loop !301

79:                                               ; preds = %75, %33
  %80 = phi i32 [ %34, %33 ], [ %76, %75 ]
  %81 = add nuw nsw i32 %32, 1
  %82 = icmp eq i32 %81, %28
  br i1 %82, label %83, label %30, !llvm.loop !302

83:                                               ; preds = %79, %22
  %84 = phi i32 [ %24, %22 ], [ %80, %79 ]
  %85 = add nuw nsw i64 %23, 1
  %86 = icmp eq i64 %85, %21
  br i1 %86, label %87, label %22, !llvm.loop !303

87:                                               ; preds = %83, %2
  %88 = phi i32 [ 0, %2 ], [ %84, %83 ]
  %89 = tail call i32 @ccgSubSurf_getNumEdges(ptr noundef %4) #10
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %158

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 6
  %93 = icmp eq ptr %8, null
  %94 = add i32 %6, -1
  %95 = icmp sgt i32 %6, 1
  %96 = zext nneg i32 %89 to i64
  br label %97

97:                                               ; preds = %91, %154
  %98 = phi i64 [ 0, %91 ], [ %156, %154 ]
  %99 = phi i32 [ %88, %91 ], [ %155, %154 ]
  %100 = load ptr, ptr %92, align 8, !tbaa !177
  %101 = getelementptr inbounds %struct.anon.2, ptr %100, i64 %98, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !178
  %103 = tail call ptr @ccgSubSurf_getEdgeEdgeHandle(ptr noundef %102) #10
  %104 = tail call i32 @ccgSubSurf_getEdgeNumFaces(ptr noundef %102) #10
  %105 = icmp eq i32 %104, 0
  %106 = select i1 %105, i16 128, i16 0
  br i1 %93, label %117, label %107

107:                                              ; preds = %97
  %108 = ptrtoint ptr %103 to i64
  %109 = and i64 %108, 4294967295
  %110 = icmp eq i64 %109, 4294967295
  br i1 %110, label %119, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds i16, ptr %8, i64 %98
  %113 = load i16, ptr %112, align 2, !tbaa !243
  %114 = and i16 %113, 516
  %115 = or disjoint i16 %106, %114
  %116 = or disjoint i16 %115, 34
  br label %119

117:                                              ; preds = %97
  %118 = or disjoint i16 %106, 34
  br label %119

119:                                              ; preds = %107, %111, %117
  %120 = phi i16 [ %116, %111 ], [ %106, %107 ], [ %118, %117 ]
  br i1 %95, label %121, label %154

121:                                              ; preds = %119, %121
  %122 = phi i32 [ %138, %121 ], [ 0, %119 ]
  %123 = phi i32 [ %124, %121 ], [ %99, %119 ]
  %124 = add i32 %123, 1
  %125 = zext i32 %123 to i64
  %126 = getelementptr inbounds %struct.MEdge, ptr %1, i64 %125
  %127 = tail call ptr @ccgSubSurf_getEdgeVert0(ptr noundef %102) #10
  %128 = tail call ptr @ccgSubSurf_getEdgeVert1(ptr noundef %102) #10
  %129 = tail call ptr @ccgSubSurf_getVertUserData(ptr noundef %4, ptr noundef %127) #10
  %130 = load i32, ptr %129, align 4, !tbaa !54
  %131 = tail call ptr @ccgSubSurf_getVertUserData(ptr noundef %4, ptr noundef %128) #10
  %132 = tail call ptr @ccgSubSurf_getEdgeUserData(ptr noundef %4, ptr noundef %102) #10
  %133 = load i32, ptr %132, align 4, !tbaa !54
  %134 = icmp eq i32 %122, 0
  %135 = add nsw i32 %122, -1
  %136 = add i32 %135, %133
  %137 = select i1 %134, i32 %130, i32 %136
  %138 = add nuw nsw i32 %122, 1
  %139 = tail call ptr @ccgSubSurf_getEdgeVert0(ptr noundef %102) #10
  %140 = tail call ptr @ccgSubSurf_getEdgeVert1(ptr noundef %102) #10
  %141 = tail call ptr @ccgSubSurf_getVertUserData(ptr noundef %4, ptr noundef %139) #10
  %142 = tail call ptr @ccgSubSurf_getVertUserData(ptr noundef %4, ptr noundef %140) #10
  %143 = load i32, ptr %142, align 4, !tbaa !54
  %144 = tail call ptr @ccgSubSurf_getEdgeUserData(ptr noundef %4, ptr noundef %102) #10
  %145 = load i32, ptr %144, align 4, !tbaa !54
  %146 = icmp eq i32 %94, %138
  %147 = add i32 %145, %122
  %148 = select i1 %146, i32 %143, i32 %147
  store i32 %137, ptr %126, align 4, !tbaa !105
  %149 = getelementptr inbounds %struct.MEdge, ptr %1, i64 %125, i32 1
  store i32 %148, ptr %149, align 4, !tbaa !106
  %150 = getelementptr inbounds %struct.MEdge, ptr %1, i64 %125, i32 3
  store i8 0, ptr %150, align 1, !tbaa !298
  %151 = getelementptr inbounds %struct.MEdge, ptr %1, i64 %125, i32 2
  store i8 0, ptr %151, align 4, !tbaa !103
  %152 = getelementptr inbounds %struct.MEdge, ptr %1, i64 %125, i32 4
  store i16 %120, ptr %152, align 2, !tbaa !242
  %153 = icmp eq i32 %138, %94
  br i1 %153, label %154, label %121, !llvm.loop !304

154:                                              ; preds = %121, %119
  %155 = phi i32 [ %99, %119 ], [ %124, %121 ]
  %156 = add nuw nsw i64 %98, 1
  %157 = icmp eq i64 %156, %96
  br i1 %157, label %158, label %97, !llvm.loop !305

158:                                              ; preds = %154, %87
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_copyFinalFaceArray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %4) #10
  %6 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %4) #10
  %7 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !184
  %9 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %4) #10
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %72

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %13 = icmp eq ptr %8, null
  %14 = add i32 %5, -1
  %15 = icmp sgt i32 %5, 1
  %16 = zext nneg i32 %9 to i64
  br label %17

17:                                               ; preds = %11, %68
  %18 = phi i64 [ 0, %11 ], [ %70, %68 ]
  %19 = phi i32 [ 0, %11 ], [ %69, %68 ]
  %20 = load ptr, ptr %12, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.anon.0, ptr %20, i64 %18, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = tail call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %22) #10
  br i1 %13, label %27, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.DMFlagMat, ptr %8, i64 %18, i32 1
  %26 = load i8, ptr %25, align 2, !tbaa !197
  br label %27

27:                                               ; preds = %17, %24
  %28 = phi i8 [ %26, %24 ], [ 1, %17 ]
  br i1 %13, label %32, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.DMFlagMat, ptr %8, i64 %18
  %31 = load i16, ptr %30, align 2, !tbaa !200
  br label %32

32:                                               ; preds = %27, %29
  %33 = phi i16 [ %31, %29 ], [ 0, %27 ]
  %34 = icmp sgt i32 %23, 0
  br i1 %34, label %35, label %68

35:                                               ; preds = %32, %64
  %36 = phi i32 [ %65, %64 ], [ %19, %32 ]
  %37 = phi i32 [ %66, %64 ], [ 0, %32 ]
  br i1 %15, label %38, label %64

38:                                               ; preds = %35, %60
  %39 = phi i32 [ %61, %60 ], [ %36, %35 ]
  %40 = phi i32 [ %62, %60 ], [ 0, %35 ]
  %41 = add nuw nsw i32 %40, 1
  %42 = sext i32 %39 to i64
  br label %43

43:                                               ; preds = %38, %43
  %44 = phi i64 [ %42, %38 ], [ %58, %43 ]
  %45 = phi i32 [ 0, %38 ], [ %50, %43 ]
  %46 = getelementptr inbounds %struct.MFace, ptr %1, i64 %44
  %47 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %22, i32 noundef %37, i32 noundef %45, i32 noundef %40, i32 noundef %6, i32 noundef %5)
  store i32 %47, ptr %46, align 4, !tbaa !280
  %48 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %22, i32 noundef %37, i32 noundef %45, i32 noundef %41, i32 noundef %6, i32 noundef %5)
  %49 = getelementptr inbounds %struct.MFace, ptr %1, i64 %44, i32 1
  store i32 %48, ptr %49, align 4, !tbaa !282
  %50 = add nuw nsw i32 %45, 1
  %51 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %22, i32 noundef %37, i32 noundef %50, i32 noundef %41, i32 noundef %6, i32 noundef %5)
  %52 = getelementptr inbounds %struct.MFace, ptr %1, i64 %44, i32 2
  store i32 %51, ptr %52, align 4, !tbaa !283
  %53 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %22, i32 noundef %37, i32 noundef %50, i32 noundef %40, i32 noundef %6, i32 noundef %5)
  %54 = getelementptr inbounds %struct.MFace, ptr %1, i64 %44, i32 3
  store i32 %53, ptr %54, align 4, !tbaa !284
  %55 = getelementptr inbounds %struct.MFace, ptr %1, i64 %44, i32 4
  store i16 %33, ptr %55, align 4, !tbaa !286
  %56 = getelementptr inbounds %struct.MFace, ptr %1, i64 %44, i32 6
  store i8 %28, ptr %56, align 1, !tbaa !285
  %57 = getelementptr inbounds %struct.MFace, ptr %1, i64 %44, i32 5
  store i8 0, ptr %57, align 2, !tbaa !287
  %58 = add nsw i64 %44, 1
  %59 = icmp eq i32 %50, %14
  br i1 %59, label %60, label %43, !llvm.loop !306

60:                                               ; preds = %43
  %61 = trunc i64 %58 to i32
  %62 = add nuw nsw i32 %40, 1
  %63 = icmp eq i32 %62, %14
  br i1 %63, label %64, label %38, !llvm.loop !307

64:                                               ; preds = %60, %35
  %65 = phi i32 [ %36, %35 ], [ %61, %60 ]
  %66 = add nuw nsw i32 %37, 1
  %67 = icmp eq i32 %66, %23
  br i1 %67, label %68, label %35, !llvm.loop !308

68:                                               ; preds = %64, %32
  %69 = phi i32 [ %19, %32 ], [ %65, %64 ]
  %70 = add nuw nsw i64 %18, 1
  %71 = icmp eq i64 %70, %16
  br i1 %71, label %72, label %17, !llvm.loop !309

72:                                               ; preds = %68, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_copyFinalLoopArray(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %4) #10
  %6 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %4) #10
  %7 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !310
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull @loops_cache_rwlock, i32 noundef 2) #10
  %11 = load ptr, ptr %7, align 8, !tbaa !310
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !258
  %16 = tail call ptr @BLI_edgehash_new_ex(ptr noundef nonnull @__func__.ccgDM_copyFinalLoopArray, i32 noundef %15) #10
  store ptr %16, ptr %7, align 8, !tbaa !310
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 32
  %18 = load ptr, ptr %17, align 8, !tbaa !311
  %19 = tail call ptr %18(ptr noundef %0) #10
  %20 = load i32, ptr %14, align 4, !tbaa !258
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %13, %22
  %23 = phi i64 [ %30, %22 ], [ 0, %13 ]
  %24 = load ptr, ptr %7, align 8, !tbaa !310
  %25 = getelementptr inbounds %struct.MEdge, ptr %19, i64 %23
  %26 = load i32, ptr %25, align 4, !tbaa !105
  %27 = getelementptr inbounds %struct.MEdge, ptr %19, i64 %23, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !106
  %29 = inttoptr i64 %23 to ptr
  tail call void @BLI_edgehash_insert(ptr noundef %24, i32 noundef %26, i32 noundef %28, ptr noundef %29) #10
  %30 = add nuw nsw i64 %23, 1
  %31 = load i32, ptr %14, align 4, !tbaa !258
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %22, label %34, !llvm.loop !312

34:                                               ; preds = %22, %13, %10
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull @loops_cache_rwlock) #10
  br label %35

35:                                               ; preds = %34, %2
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull @loops_cache_rwlock, i32 noundef 1) #10
  %36 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %4) #10
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %102

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %40 = add i32 %5, -1
  %41 = icmp sgt i32 %5, 1
  %42 = zext nneg i32 %36 to i64
  br label %43

43:                                               ; preds = %38, %98
  %44 = phi i64 [ 0, %38 ], [ %100, %98 ]
  %45 = phi ptr [ %1, %38 ], [ %99, %98 ]
  %46 = load ptr, ptr %39, align 8, !tbaa !44
  %47 = getelementptr inbounds %struct.anon.0, ptr %46, i64 %44, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !45
  %49 = tail call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %48) #10
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %98

51:                                               ; preds = %43, %94
  %52 = phi ptr [ %95, %94 ], [ %45, %43 ]
  %53 = phi i32 [ %96, %94 ], [ 0, %43 ]
  br i1 %41, label %54, label %94

54:                                               ; preds = %51, %91
  %55 = phi ptr [ %89, %91 ], [ %52, %51 ]
  %56 = phi i32 [ %92, %91 ], [ 0, %51 ]
  %57 = add nuw nsw i32 %56, 1
  br label %58

58:                                               ; preds = %54, %58
  %59 = phi ptr [ %55, %54 ], [ %89, %58 ]
  %60 = phi i32 [ 0, %54 ], [ %63, %58 ]
  %61 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %48, i32 noundef %53, i32 noundef %60, i32 noundef %56, i32 noundef %6, i32 noundef %5)
  %62 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %48, i32 noundef %53, i32 noundef %60, i32 noundef %57, i32 noundef %6, i32 noundef %5)
  %63 = add nuw nsw i32 %60, 1
  %64 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %48, i32 noundef %53, i32 noundef %63, i32 noundef %57, i32 noundef %6, i32 noundef %5)
  %65 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %48, i32 noundef %53, i32 noundef %63, i32 noundef %56, i32 noundef %6, i32 noundef %5)
  store i32 %61, ptr %59, align 4, !tbaa !110
  %66 = load ptr, ptr %7, align 8, !tbaa !310
  %67 = tail call ptr @BLI_edgehash_lookup(ptr noundef %66, i32 noundef %61, i32 noundef %62) #10
  %68 = ptrtoint ptr %67 to i64
  %69 = trunc i64 %68 to i32
  %70 = getelementptr inbounds %struct.MLoop, ptr %59, i64 0, i32 1
  store i32 %69, ptr %70, align 4, !tbaa !313
  %71 = getelementptr inbounds %struct.MLoop, ptr %59, i64 1
  store i32 %62, ptr %71, align 4, !tbaa !110
  %72 = load ptr, ptr %7, align 8, !tbaa !310
  %73 = tail call ptr @BLI_edgehash_lookup(ptr noundef %72, i32 noundef %62, i32 noundef %64) #10
  %74 = ptrtoint ptr %73 to i64
  %75 = trunc i64 %74 to i32
  %76 = getelementptr inbounds %struct.MLoop, ptr %59, i64 1, i32 1
  store i32 %75, ptr %76, align 4, !tbaa !313
  %77 = getelementptr inbounds %struct.MLoop, ptr %59, i64 2
  store i32 %64, ptr %77, align 4, !tbaa !110
  %78 = load ptr, ptr %7, align 8, !tbaa !310
  %79 = tail call ptr @BLI_edgehash_lookup(ptr noundef %78, i32 noundef %64, i32 noundef %65) #10
  %80 = ptrtoint ptr %79 to i64
  %81 = trunc i64 %80 to i32
  %82 = getelementptr inbounds %struct.MLoop, ptr %59, i64 2, i32 1
  store i32 %81, ptr %82, align 4, !tbaa !313
  %83 = getelementptr inbounds %struct.MLoop, ptr %59, i64 3
  store i32 %65, ptr %83, align 4, !tbaa !110
  %84 = load ptr, ptr %7, align 8, !tbaa !310
  %85 = tail call ptr @BLI_edgehash_lookup(ptr noundef %84, i32 noundef %65, i32 noundef %61) #10
  %86 = ptrtoint ptr %85 to i64
  %87 = trunc i64 %86 to i32
  %88 = getelementptr inbounds %struct.MLoop, ptr %59, i64 3, i32 1
  store i32 %87, ptr %88, align 4, !tbaa !313
  %89 = getelementptr inbounds %struct.MLoop, ptr %59, i64 4
  %90 = icmp eq i32 %63, %40
  br i1 %90, label %91, label %58, !llvm.loop !314

91:                                               ; preds = %58
  %92 = add nuw nsw i32 %56, 1
  %93 = icmp eq i32 %92, %40
  br i1 %93, label %94, label %54, !llvm.loop !315

94:                                               ; preds = %91, %51
  %95 = phi ptr [ %52, %51 ], [ %89, %91 ]
  %96 = add nuw nsw i32 %53, 1
  %97 = icmp eq i32 %96, %49
  br i1 %97, label %98, label %51, !llvm.loop !316

98:                                               ; preds = %94, %43
  %99 = phi ptr [ %45, %43 ], [ %95, %94 ]
  %100 = add nuw nsw i64 %44, 1
  %101 = icmp eq i64 %100, %42
  br i1 %101, label %102, label %43, !llvm.loop !317

102:                                              ; preds = %98, %35
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull @loops_cache_rwlock) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_copyFinalPolyArray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !184
  %8 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %4) #10
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %70

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %12 = icmp eq ptr %7, null
  %13 = add i32 %5, -1
  %14 = icmp sgt i32 %5, 1
  %15 = zext nneg i32 %8 to i64
  br label %16

16:                                               ; preds = %10, %65
  %17 = phi i64 [ 0, %10 ], [ %68, %65 ]
  %18 = phi i32 [ 0, %10 ], [ %67, %65 ]
  %19 = phi i32 [ 0, %10 ], [ %66, %65 ]
  %20 = load ptr, ptr %11, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.anon.0, ptr %20, i64 %17, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = tail call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %22) #10
  br i1 %12, label %27, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.DMFlagMat, ptr %7, i64 %17, i32 1
  %26 = load i8, ptr %25, align 2, !tbaa !197
  br label %27

27:                                               ; preds = %16, %24
  %28 = phi i8 [ %26, %24 ], [ 1, %16 ]
  br i1 %12, label %32, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.DMFlagMat, ptr %7, i64 %17
  %31 = load i16, ptr %30, align 2, !tbaa !200
  br label %32

32:                                               ; preds = %27, %29
  %33 = phi i16 [ %31, %29 ], [ 0, %27 ]
  %34 = icmp sgt i32 %23, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %32, %60
  %36 = phi i32 [ %62, %60 ], [ %18, %32 ]
  %37 = phi i32 [ %61, %60 ], [ %19, %32 ]
  %38 = phi i32 [ %63, %60 ], [ 0, %32 ]
  br i1 %14, label %39, label %60

39:                                               ; preds = %35, %56
  %40 = phi i32 [ %57, %56 ], [ %36, %35 ]
  %41 = phi i32 [ %52, %56 ], [ %37, %35 ]
  %42 = phi i32 [ %58, %56 ], [ 0, %35 ]
  %43 = sext i32 %40 to i64
  br label %44

44:                                               ; preds = %39, %44
  %45 = phi i64 [ %43, %39 ], [ %53, %44 ]
  %46 = phi i32 [ %41, %39 ], [ %52, %44 ]
  %47 = phi i32 [ 0, %39 ], [ %54, %44 ]
  %48 = getelementptr inbounds %struct.MPoly, ptr %1, i64 %45
  %49 = getelementptr inbounds %struct.MPoly, ptr %1, i64 %45, i32 2
  store i16 %33, ptr %49, align 4, !tbaa !199
  %50 = getelementptr inbounds %struct.MPoly, ptr %1, i64 %45, i32 3
  store i8 %28, ptr %50, align 2, !tbaa !196
  store i32 %46, ptr %48, align 4, !tbaa !50
  %51 = getelementptr inbounds %struct.MPoly, ptr %1, i64 %45, i32 1
  store i32 4, ptr %51, align 4, !tbaa !47
  %52 = add nsw i32 %46, 4
  %53 = add nsw i64 %45, 1
  %54 = add nuw nsw i32 %47, 1
  %55 = icmp eq i32 %54, %13
  br i1 %55, label %56, label %44, !llvm.loop !318

56:                                               ; preds = %44
  %57 = trunc i64 %53 to i32
  %58 = add nuw nsw i32 %42, 1
  %59 = icmp eq i32 %58, %13
  br i1 %59, label %60, label %39, !llvm.loop !319

60:                                               ; preds = %56, %35
  %61 = phi i32 [ %37, %35 ], [ %52, %56 ]
  %62 = phi i32 [ %36, %35 ], [ %57, %56 ]
  %63 = add nuw nsw i32 %38, 1
  %64 = icmp eq i32 %63, %23
  br i1 %64, label %65, label %35, !llvm.loop !320

65:                                               ; preds = %60, %32
  %66 = phi i32 [ %19, %32 ], [ %61, %60 ]
  %67 = phi i32 [ %18, %32 ], [ %62, %60 ]
  %68 = add nuw nsw i64 %17, 1
  %69 = icmp eq i64 %68, %15
  br i1 %69, label %70, label %16, !llvm.loop !321

70:                                               ; preds = %65, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @ccgDM_get_vert_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 7
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call ptr @ccgDM_get_vert_data_layer(ptr noundef %0, i32 noundef 7)
  br label %7

7:                                                ; preds = %5, %3
  %8 = tail call ptr @DM_get_vert_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #10
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal ptr @ccgDM_get_edge_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 7
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call ptr @ccgDM_get_edge_data_layer(ptr noundef %0, i32 noundef 7)
  br label %7

7:                                                ; preds = %5, %3
  %8 = tail call ptr @DM_get_edge_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #10
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal ptr @ccgDM_get_tessface_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  switch i32 %2, label %6 [
    i32 40, label %4
    i32 7, label %4
  ]

4:                                                ; preds = %3, %3
  %5 = tail call ptr @ccgDM_get_tessface_data_layer(ptr noundef %0, i32 noundef %2)
  br label %6

6:                                                ; preds = %3, %4
  %7 = tail call ptr @DM_get_tessface_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #10
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define internal ptr @ccgDM_get_poly_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 7
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 7) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  tail call void @DM_add_tessface_layer(ptr noundef %0, i32 noundef 7, i32 noundef 1, ptr noundef null) #10
  %9 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 7) #10
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %11 = load ptr, ptr %10, align 8, !tbaa !322
  %12 = tail call i32 %11(ptr noundef %0) #10
  tail call void @range_vn_i(ptr noundef %9, i32 noundef %12, i32 noundef 0) #10
  br label %13

13:                                               ; preds = %8, %5, %3
  %14 = tail call ptr @DM_get_poly_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #10
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define internal ptr @ccgDM_get_vert_data_layer(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 7
  br i1 %3, label %4, label %44

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull @origindex_cache_rwlock, i32 noundef 1) #10
  %7 = tail call ptr @DM_get_vert_data_layer(ptr noundef %0, i32 noundef 7) #10
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull @origindex_cache_rwlock) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %46

9:                                                ; preds = %4
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull @origindex_cache_rwlock, i32 noundef 2) #10
  tail call void @DM_add_vert_layer(ptr noundef %0, i32 noundef 7, i32 noundef 1, ptr noundef null) #10
  %10 = tail call ptr @DM_get_vert_data_layer(ptr noundef %0, i32 noundef 7) #10
  %11 = tail call i32 @ccgSubSurf_getNumVerts(ptr noundef %6) #10
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !323
  %14 = icmp sgt i32 %13, %11
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  %16 = xor i32 %11, -1
  %17 = add i32 %13, %16
  %18 = zext i32 %17 to i64
  %19 = shl nuw nsw i64 %18, 2
  %20 = add nuw nsw i64 %19, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %10, i8 -1, i64 %20, i1 false), !tbaa !54
  %21 = sub i32 %13, %11
  %22 = zext nneg i32 %21 to i64
  br label %23

23:                                               ; preds = %15, %9
  %24 = phi i64 [ 0, %9 ], [ %22, %15 ]
  %25 = icmp sgt i32 %11, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 5
  %28 = zext nneg i32 %11 to i64
  br label %29

29:                                               ; preds = %26, %29
  %30 = phi i64 [ 0, %26 ], [ %40, %29 ]
  %31 = phi i64 [ %24, %26 ], [ %41, %29 ]
  %32 = load ptr, ptr %27, align 8, !tbaa !173
  %33 = getelementptr inbounds %struct.anon.1, ptr %32, i64 %30, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !174
  %35 = load ptr, ptr %5, align 8, !tbaa !34
  %36 = tail call ptr @ccgSubSurf_getVertUserData(ptr noundef %35, ptr noundef %34) #10
  %37 = getelementptr inbounds i32, ptr %36, i64 1
  %38 = load i32, ptr %37, align 4, !tbaa !54
  %39 = getelementptr inbounds i32, ptr %10, i64 %31
  store i32 %38, ptr %39, align 4, !tbaa !54
  %40 = add nuw nsw i64 %30, 1
  %41 = add nuw nsw i64 %31, 1
  %42 = icmp eq i64 %40, %28
  br i1 %42, label %43, label %29, !llvm.loop !324

43:                                               ; preds = %29, %23
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull @origindex_cache_rwlock) #10
  br label %46

44:                                               ; preds = %2
  %45 = tail call ptr @DM_get_vert_data_layer(ptr noundef %0, i32 noundef %1) #10
  br label %46

46:                                               ; preds = %43, %4, %44
  %47 = phi ptr [ %45, %44 ], [ %10, %43 ], [ %7, %4 ]
  ret ptr %47
}

; Function Attrs: nounwind uwtable
define internal ptr @ccgDM_get_edge_data_layer(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 7
  br i1 %3, label %4, label %63

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %6) #10
  %8 = tail call ptr @DM_get_edge_data_layer(ptr noundef %0, i32 noundef 7) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %65

10:                                               ; preds = %4
  tail call void @DM_add_edge_layer(ptr noundef %0, i32 noundef 7, i32 noundef 1, ptr noundef null) #10
  %11 = tail call ptr @DM_get_edge_data_layer(ptr noundef %0, i32 noundef 7) #10
  %12 = tail call i32 @ccgSubSurf_getNumEdges(ptr noundef %6) #10
  %13 = add nsw i32 %7, -1
  %14 = mul nsw i32 %12, %13
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !325
  %17 = sub nsw i32 %16, %14
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %10
  %20 = xor i32 %14, -1
  %21 = add i32 %16, %20
  %22 = zext i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 2
  %24 = add nuw nsw i64 %23, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %11, i8 -1, i64 %24, i1 false), !tbaa !54
  %25 = zext nneg i32 %17 to i64
  br label %35

26:                                               ; preds = %35
  %27 = trunc i64 %37 to i32
  br label %28

28:                                               ; preds = %26, %10
  %29 = phi i32 [ 0, %10 ], [ %27, %26 ]
  %30 = icmp sgt i32 %12, 0
  br i1 %30, label %31, label %65

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 6
  %33 = icmp sgt i32 %7, 1
  %34 = zext nneg i32 %12 to i64
  br label %39

35:                                               ; preds = %19, %35
  %36 = phi i64 [ 0, %19 ], [ %37, %35 ]
  %37 = add nuw nsw i64 %36, 1
  %38 = icmp eq i64 %37, %25
  br i1 %38, label %26, label %35, !llvm.loop !326

39:                                               ; preds = %31, %59
  %40 = phi i64 [ 0, %31 ], [ %61, %59 ]
  %41 = phi i32 [ %29, %31 ], [ %60, %59 ]
  %42 = load ptr, ptr %32, align 8, !tbaa !177
  %43 = getelementptr inbounds %struct.anon.2, ptr %42, i64 %40, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !178
  %45 = tail call ptr @ccgSubSurf_getEdgeUserData(ptr noundef %6, ptr noundef %44) #10
  %46 = getelementptr inbounds i32, ptr %45, i64 1
  %47 = load i32, ptr %46, align 4, !tbaa !54
  br i1 %33, label %48, label %59

48:                                               ; preds = %39
  %49 = sext i32 %41 to i64
  br label %50

50:                                               ; preds = %48, %50
  %51 = phi i64 [ %49, %48 ], [ %55, %50 ]
  %52 = phi i32 [ 0, %48 ], [ %54, %50 ]
  %53 = getelementptr inbounds i32, ptr %11, i64 %51
  store i32 %47, ptr %53, align 4, !tbaa !54
  %54 = add nuw nsw i32 %52, 1
  %55 = add nsw i64 %51, 1
  %56 = icmp eq i32 %54, %13
  br i1 %56, label %57, label %50, !llvm.loop !327

57:                                               ; preds = %50
  %58 = trunc i64 %55 to i32
  br label %59

59:                                               ; preds = %57, %39
  %60 = phi i32 [ %41, %39 ], [ %58, %57 ]
  %61 = add nuw nsw i64 %40, 1
  %62 = icmp eq i64 %61, %34
  br i1 %62, label %65, label %39, !llvm.loop !328

63:                                               ; preds = %2
  %64 = tail call ptr @DM_get_edge_data_layer(ptr noundef %0, i32 noundef %1) #10
  br label %65

65:                                               ; preds = %59, %28, %4, %63
  %66 = phi ptr [ %64, %63 ], [ %8, %4 ], [ %11, %28 ], [ %11, %59 ]
  ret ptr %66
}

; Function Attrs: nounwind uwtable
define internal ptr @ccgDM_get_tessface_data_layer(ptr noundef %0, i32 noundef %1) #0 {
  switch i32 %1, label %49 [
    i32 7, label %3
    i32 40, label %11
  ]

3:                                                ; preds = %2
  %4 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 7) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %51

6:                                                ; preds = %3
  tail call void @DM_add_tessface_layer(ptr noundef %0, i32 noundef 7, i32 noundef 1, ptr noundef null) #10
  %7 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 7) #10
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %9 = load ptr, ptr %8, align 8, !tbaa !322
  %10 = tail call i32 %9(ptr noundef %0) #10
  tail call void @range_vn_i(ptr noundef %7, i32 noundef %10, i32 noundef 0) #10
  br label %51

11:                                               ; preds = %2
  %12 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 40) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %51

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = tail call i32 @ccgSubSurf_getNumFinalFaces(ptr noundef %16) #10
  %18 = shl i32 %17, 2
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 53
  %20 = load ptr, ptr %19, align 8, !tbaa !329
  %21 = tail call ptr %20(ptr noundef %0, i32 noundef 8) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %14
  tail call void @DM_add_tessface_layer(ptr noundef %0, i32 noundef 40, i32 noundef 1, ptr noundef null) #10
  %24 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 40) #10
  %25 = icmp sgt i32 %17, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %23
  %27 = tail call i32 @llvm.smax.i32(i32 %18, i32 1)
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi i32 [ %45, %28 ], [ 0, %26 ]
  %30 = phi ptr [ %46, %28 ], [ %24, %26 ]
  %31 = phi ptr [ %47, %28 ], [ %21, %26 ]
  %32 = load float, ptr %31, align 4, !tbaa !66
  %33 = fmul float %32, 3.276700e+04
  %34 = fptosi float %33 to i16
  store i16 %34, ptr %30, align 2, !tbaa !243
  %35 = getelementptr inbounds float, ptr %31, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !66
  %37 = fmul float %36, 3.276700e+04
  %38 = fptosi float %37 to i16
  %39 = getelementptr inbounds i16, ptr %30, i64 1
  store i16 %38, ptr %39, align 2, !tbaa !243
  %40 = getelementptr inbounds float, ptr %31, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !66
  %42 = fmul float %41, 3.276700e+04
  %43 = fptosi float %42 to i16
  %44 = getelementptr inbounds i16, ptr %30, i64 2
  store i16 %43, ptr %44, align 2, !tbaa !243
  %45 = add nuw nsw i32 %29, 1
  %46 = getelementptr inbounds [3 x i16], ptr %30, i64 1
  %47 = getelementptr inbounds [3 x float], ptr %31, i64 1
  %48 = icmp eq i32 %45, %27
  br i1 %48, label %51, label %28, !llvm.loop !330

49:                                               ; preds = %2
  %50 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef %1) #10
  br label %51

51:                                               ; preds = %28, %23, %14, %11, %6, %3, %49
  %52 = phi ptr [ %50, %49 ], [ %7, %6 ], [ %4, %3 ], [ %12, %11 ], [ null, %14 ], [ %24, %23 ], [ %24, %28 ]
  ret ptr %52
}

; Function Attrs: nounwind uwtable
define internal ptr @ccgDM_get_poly_data_layer(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 7
  br i1 %3, label %4, label %46

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %6) #10
  %8 = add nsw i32 %7, -1
  %9 = tail call ptr @DM_get_poly_data_layer(ptr noundef %0, i32 noundef 7) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %48

11:                                               ; preds = %4
  tail call void @DM_add_poly_layer(ptr noundef %0, i32 noundef 7, i32 noundef 1, ptr noundef null) #10
  %12 = tail call ptr @DM_get_poly_data_layer(ptr noundef %0, i32 noundef 7) #10
  %13 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %6) #10
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %17 = mul nsw i32 %8, %8
  %18 = zext nneg i32 %13 to i64
  br label %19

19:                                               ; preds = %15, %42
  %20 = phi i64 [ 0, %15 ], [ %44, %42 ]
  %21 = phi i32 [ 0, %15 ], [ %43, %42 ]
  %22 = load ptr, ptr %16, align 8, !tbaa !44
  %23 = getelementptr inbounds %struct.anon.0, ptr %22, i64 %20, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = tail call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %24) #10
  %26 = tail call ptr @ccgSubSurf_getFaceUserData(ptr noundef %6, ptr noundef %24) #10
  %27 = getelementptr inbounds i32, ptr %26, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !54
  %29 = mul nsw i32 %17, %25
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %19
  %32 = sext i32 %21 to i64
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi i64 [ %32, %31 ], [ %38, %33 ]
  %35 = phi i32 [ 0, %31 ], [ %37, %33 ]
  %36 = getelementptr inbounds i32, ptr %12, i64 %34
  store i32 %28, ptr %36, align 4, !tbaa !54
  %37 = add nuw nsw i32 %35, 1
  %38 = add nsw i64 %34, 1
  %39 = icmp eq i32 %37, %29
  br i1 %39, label %40, label %33, !llvm.loop !331

40:                                               ; preds = %33
  %41 = trunc i64 %38 to i32
  br label %42

42:                                               ; preds = %40, %19
  %43 = phi i32 [ %21, %19 ], [ %41, %40 ]
  %44 = add nuw nsw i64 %20, 1
  %45 = icmp eq i64 %44, %18
  br i1 %45, label %48, label %19, !llvm.loop !332

46:                                               ; preds = %2
  %47 = tail call ptr @DM_get_poly_data_layer(ptr noundef %0, i32 noundef %1) #10
  br label %48

48:                                               ; preds = %42, %11, %4, %46
  %49 = phi ptr [ %47, %46 ], [ %9, %4 ], [ %12, %11 ], [ %12, %42 ]
  ret ptr %49
}

; Function Attrs: nounwind uwtable
define internal i32 @ccgDM_getNumGrids(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %3) #10
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %8 = zext nneg i32 %4 to i64
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi i64 [ 0, %6 ], [ %17, %9 ]
  %11 = phi i32 [ 0, %6 ], [ %16, %9 ]
  %12 = load ptr, ptr %7, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.anon.0, ptr %12, i64 %10, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = tail call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %14) #10
  %16 = add nsw i32 %15, %11
  %17 = add nuw nsw i64 %10, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %9, !llvm.loop !333

19:                                               ; preds = %9, %1
  %20 = phi i32 [ 0, %1 ], [ %16, %9 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @ccgDM_getGridSize(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %3) #10
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal ptr @ccgDM_getGridData(ptr nocapture noundef %0) #0 {
  tail call fastcc void @ccgdm_create_grids(ptr noundef %0)
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !334
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal ptr @ccgDM_getGridAdjacency(ptr nocapture noundef %0) #0 {
  tail call fastcc void @ccgdm_create_grids(ptr noundef %0)
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !335
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal ptr @ccgDM_getGridOffset(ptr nocapture noundef %0) #0 {
  tail call fastcc void @ccgdm_create_grids(ptr noundef %0)
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !336
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_getGridKey(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  tail call void @CCG_key_top_level(ptr noundef %1, ptr noundef %4) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @ccgDM_getGridFlagMats(ptr nocapture noundef %0) #0 {
  tail call fastcc void @ccgdm_create_grids(ptr noundef %0)
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !337
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal ptr @ccgDM_getGridHidden(ptr nocapture noundef %0) #0 {
  tail call fastcc void @ccgdm_create_grids(ptr noundef %0)
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !338
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal ptr @ccgDM_getPolyMap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !339
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %28

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !340
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %28

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !341
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !347
  %17 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 13
  %18 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !348
  %20 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !350
  %22 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 26
  %23 = load i32, ptr %22, align 8, !tbaa !351
  %24 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 30
  %25 = load i32, ptr %24, align 8, !tbaa !352
  %26 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 31
  %27 = load i32, ptr %26, align 4, !tbaa !353
  tail call void @BKE_mesh_vert_poly_map_create(ptr noundef nonnull %7, ptr noundef nonnull %17, ptr noundef %19, ptr noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27) #10
  br label %28

28:                                               ; preds = %14, %10, %6, %2
  %29 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 12
  %30 = load ptr, ptr %29, align 8, !tbaa !340
  ret ptr %30
}

; Function Attrs: nounwind uwtable
define internal ptr @ccgDM_getPBVH(ptr noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.CCGKey, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  call void @CCG_key_top_level(ptr noundef nonnull %3, ptr noundef %5) #10
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 11
  store ptr null, ptr %8, align 8, !tbaa !354
  br label %105

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !355
  %12 = icmp eq ptr %11, null
  br i1 %12, label %105, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !339
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 15
  %18 = load ptr, ptr %17, align 8, !tbaa !356
  %19 = icmp eq ptr %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %13
  br i1 %16, label %35, label %21

21:                                               ; preds = %20
  call fastcc void @ccgdm_create_grids(ptr noundef %1)
  %22 = load ptr, ptr %10, align 8, !tbaa !355
  %23 = getelementptr inbounds %struct.SculptSession, ptr %22, i64 0, i32 15
  %24 = load ptr, ptr %23, align 8, !tbaa !356
  %25 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 14
  %26 = load ptr, ptr %25, align 8, !tbaa !334
  %27 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 15
  %28 = load ptr, ptr %27, align 8, !tbaa !335
  %29 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !358
  %31 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 18
  %32 = load ptr, ptr %31, align 8, !tbaa !337
  %33 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 19
  %34 = load ptr, ptr %33, align 8, !tbaa !338
  call void @BKE_pbvh_grids_update(ptr noundef %24, ptr noundef %26, ptr noundef %28, ptr noundef %30, ptr noundef %32, ptr noundef %34) #10
  br label %35

35:                                               ; preds = %21, %20
  %36 = load ptr, ptr %10, align 8, !tbaa !355
  %37 = getelementptr inbounds %struct.SculptSession, ptr %36, i64 0, i32 15
  %38 = load ptr, ptr %37, align 8, !tbaa !356
  %39 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 11
  store ptr %38, ptr %39, align 8, !tbaa !354
  br label %40

40:                                               ; preds = %35, %13
  %41 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 11
  %42 = load ptr, ptr %41, align 8, !tbaa !354
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %105

44:                                               ; preds = %40
  br i1 %16, label %77, label %45

45:                                               ; preds = %44
  call fastcc void @ccgdm_create_grids(ptr noundef %1)
  %46 = load ptr, ptr %4, align 8, !tbaa !34
  %47 = call i32 @ccgSubSurf_getNumFaces(ptr noundef %46) #10
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 7
  %51 = zext nneg i32 %47 to i64
  br label %52

52:                                               ; preds = %52, %49
  %53 = phi i64 [ 0, %49 ], [ %60, %52 ]
  %54 = phi i32 [ 0, %49 ], [ %59, %52 ]
  %55 = load ptr, ptr %50, align 8, !tbaa !44
  %56 = getelementptr inbounds %struct.anon.0, ptr %55, i64 %53, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !45
  %58 = call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %57) #10
  %59 = add nsw i32 %58, %54
  %60 = add nuw nsw i64 %53, 1
  %61 = icmp eq i64 %60, %51
  br i1 %61, label %62, label %52, !llvm.loop !333

62:                                               ; preds = %52, %45
  %63 = phi i32 [ 0, %45 ], [ %59, %52 ]
  %64 = call ptr @BKE_pbvh_new() #10
  store ptr %64, ptr %41, align 8, !tbaa !354
  %65 = load ptr, ptr %10, align 8, !tbaa !355
  %66 = getelementptr inbounds %struct.SculptSession, ptr %65, i64 0, i32 15
  store ptr %64, ptr %66, align 8, !tbaa !356
  %67 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 14
  %68 = load ptr, ptr %67, align 8, !tbaa !334
  %69 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 15
  %70 = load ptr, ptr %69, align 8, !tbaa !335
  %71 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 17
  %72 = load ptr, ptr %71, align 8, !tbaa !358
  %73 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 18
  %74 = load ptr, ptr %73, align 8, !tbaa !337
  %75 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 19
  %76 = load ptr, ptr %75, align 8, !tbaa !338
  call void @BKE_pbvh_build_grids(ptr noundef %64, ptr noundef %68, ptr noundef %70, i32 noundef %63, ptr noundef nonnull %3, ptr noundef %72, ptr noundef %74, ptr noundef %76) #10
  br label %96

77:                                               ; preds = %44
  %78 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %79 = load i16, ptr %78, align 8, !tbaa !341
  %80 = icmp eq i16 %79, 1
  br i1 %80, label %81, label %96

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %83 = load ptr, ptr %82, align 8, !tbaa !347
  %84 = call ptr @BKE_pbvh_new() #10
  store ptr %84, ptr %41, align 8, !tbaa !354
  %85 = load ptr, ptr %10, align 8, !tbaa !355
  %86 = getelementptr inbounds %struct.SculptSession, ptr %85, i64 0, i32 15
  store ptr %84, ptr %86, align 8, !tbaa !356
  %87 = getelementptr inbounds %struct.Mesh, ptr %83, i64 0, i32 12
  %88 = load ptr, ptr %87, align 8, !tbaa !359
  %89 = getelementptr inbounds %struct.Mesh, ptr %83, i64 0, i32 15
  %90 = load ptr, ptr %89, align 8, !tbaa !360
  %91 = getelementptr inbounds %struct.Mesh, ptr %83, i64 0, i32 28
  %92 = load i32, ptr %91, align 8, !tbaa !361
  %93 = getelementptr inbounds %struct.Mesh, ptr %83, i64 0, i32 26
  %94 = load i32, ptr %93, align 8, !tbaa !351
  %95 = getelementptr inbounds %struct.Mesh, ptr %83, i64 0, i32 21
  call void @BKE_pbvh_build_mesh(ptr noundef %84, ptr noundef %88, ptr noundef %90, i32 noundef %92, i32 noundef %94, ptr noundef nonnull %95) #10
  br label %96

96:                                               ; preds = %77, %81, %62
  %97 = load ptr, ptr %41, align 8, !tbaa !354
  %98 = icmp eq ptr %97, null
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = load ptr, ptr %10, align 8, !tbaa !355
  %101 = getelementptr inbounds %struct.SculptSession, ptr %100, i64 0, i32 16
  %102 = load i8, ptr %101, align 8, !tbaa !362
  call void @pbvh_show_diffuse_color_set(ptr noundef nonnull %97, i8 noundef zeroext %102) #10
  br label %103

103:                                              ; preds = %99, %96
  %104 = load ptr, ptr %41, align 8, !tbaa !354
  br label %105

105:                                              ; preds = %40, %9, %103, %7
  %106 = phi ptr [ %104, %103 ], [ null, %7 ], [ null, %9 ], [ %42, %40 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  ret ptr %106
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ccgDM_calcNormals(ptr nocapture noundef %0) #8 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %3 = load i32, ptr %2, align 8, !tbaa !363
  %4 = and i32 %3, -5
  store i32 %4, ptr %2, align 8, !tbaa !363
  ret void
}

declare void @CDDM_calc_loop_normals(ptr noundef, float noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @ccgDM_recalcTessellation(ptr nocapture readnone %0) #4 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgdm_getVertCos(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %4) #10
  %6 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %4) #10
  %7 = tail call i32 @ccgSubSurf_getNumVerts(ptr noundef %4) #10
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !100
  %9 = sext i32 %7 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call ptr %8(i64 noundef %10, ptr noundef nonnull @.str.14) #10
  %12 = tail call ptr @ccgSubSurf_getVertIterator(ptr noundef %4) #10
  %13 = tail call i32 @ccgVertIterator_isStopped(ptr noundef %12) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2, %15
  %16 = tail call ptr @ccgVertIterator_getCurrent(ptr noundef %12) #10
  %17 = tail call ptr @ccgSubSurf_getVertVertHandle(ptr noundef %16) #10
  %18 = ptrtoint ptr %17 to i64
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %16, ptr %21, align 8, !tbaa !100
  tail call void @ccgVertIterator_next(ptr noundef %12) #10
  %22 = tail call i32 @ccgVertIterator_isStopped(ptr noundef %12) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %15, label %24, !llvm.loop !364

24:                                               ; preds = %15, %2
  tail call void @ccgVertIterator_free(ptr noundef %12) #10
  %25 = tail call i32 @ccgSubSurf_getNumEdges(ptr noundef %4) #10
  %26 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !100
  %27 = sext i32 %25 to i64
  %28 = shl nsw i64 %27, 3
  %29 = tail call ptr %26(i64 noundef %28, ptr noundef nonnull @.str.15) #10
  %30 = tail call ptr @ccgSubSurf_getEdgeIterator(ptr noundef %4) #10
  %31 = tail call i32 @ccgEdgeIterator_isStopped(ptr noundef %30) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %24, %33
  %34 = tail call ptr @ccgEdgeIterator_getCurrent(ptr noundef %30) #10
  %35 = tail call ptr @ccgSubSurf_getEdgeEdgeHandle(ptr noundef %34) #10
  %36 = ptrtoint ptr %35 to i64
  %37 = shl i64 %36, 32
  %38 = ashr exact i64 %37, 32
  %39 = getelementptr inbounds ptr, ptr %29, i64 %38
  store ptr %34, ptr %39, align 8, !tbaa !100
  tail call void @ccgEdgeIterator_next(ptr noundef %30) #10
  %40 = tail call i32 @ccgEdgeIterator_isStopped(ptr noundef %30) #10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %33, label %42, !llvm.loop !365

42:                                               ; preds = %33, %24
  tail call void @ccgEdgeIterator_free(ptr noundef %30) #10
  %43 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %4) #10
  %44 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !100
  %45 = sext i32 %43 to i64
  %46 = shl nsw i64 %45, 3
  %47 = tail call ptr %44(i64 noundef %46, ptr noundef nonnull @.str.16) #10
  %48 = tail call ptr @ccgSubSurf_getFaceIterator(ptr noundef %4) #10
  %49 = tail call i32 @ccgFaceIterator_isStopped(ptr noundef %48) #10
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %42, %51
  %52 = tail call ptr @ccgFaceIterator_getCurrent(ptr noundef %48) #10
  %53 = tail call ptr @ccgSubSurf_getFaceFaceHandle(ptr noundef %52) #10
  %54 = ptrtoint ptr %53 to i64
  %55 = shl i64 %54, 32
  %56 = ashr exact i64 %55, 32
  %57 = getelementptr inbounds ptr, ptr %47, i64 %56
  store ptr %52, ptr %57, align 8, !tbaa !100
  tail call void @ccgFaceIterator_next(ptr noundef %48) #10
  %58 = tail call i32 @ccgFaceIterator_isStopped(ptr noundef %48) #10
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %51, label %60, !llvm.loop !366

60:                                               ; preds = %51, %42
  tail call void @ccgFaceIterator_free(ptr noundef %48) #10
  %61 = icmp sgt i32 %43, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %60
  %63 = add i32 %6, -1
  %64 = icmp sgt i32 %6, 2
  %65 = icmp sgt i32 %6, 2
  %66 = zext nneg i32 %43 to i64
  br label %74

67:                                               ; preds = %151, %60
  %68 = phi i32 [ 0, %60 ], [ %152, %151 ]
  %69 = icmp sgt i32 %25, 0
  br i1 %69, label %70, label %155

70:                                               ; preds = %67
  %71 = icmp sgt i32 %5, 2
  %72 = zext nneg i32 %25 to i64
  %73 = add nsw i32 %5, -2
  br label %161

74:                                               ; preds = %62, %151
  %75 = phi i64 [ 0, %62 ], [ %153, %151 ]
  %76 = phi i32 [ 0, %62 ], [ %152, %151 ]
  %77 = getelementptr inbounds ptr, ptr %47, i64 %75
  %78 = load ptr, ptr %77, align 8, !tbaa !100
  %79 = tail call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %78) #10
  %80 = add nsw i32 %76, 1
  %81 = sext i32 %76 to i64
  %82 = getelementptr inbounds [3 x float], ptr %1, i64 %81
  %83 = tail call ptr @ccgSubSurf_getFaceCenterData(ptr noundef %78) #10
  %84 = load float, ptr %83, align 4, !tbaa !66
  store float %84, ptr %82, align 4, !tbaa !66
  %85 = getelementptr inbounds float, ptr %83, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !66
  %87 = getelementptr inbounds float, ptr %82, i64 1
  store float %86, ptr %87, align 4, !tbaa !66
  %88 = getelementptr inbounds float, ptr %83, i64 2
  %89 = load float, ptr %88, align 4, !tbaa !66
  %90 = getelementptr inbounds float, ptr %82, i64 2
  store float %89, ptr %90, align 4, !tbaa !66
  %91 = icmp sgt i32 %79, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %117, %74
  %93 = phi i32 [ %80, %74 ], [ %118, %117 ]
  %94 = icmp sgt i32 %79, 0
  br i1 %94, label %121, label %151

95:                                               ; preds = %74, %117
  %96 = phi i32 [ %118, %117 ], [ %80, %74 ]
  %97 = phi i32 [ %119, %117 ], [ 0, %74 ]
  br i1 %64, label %98, label %117

98:                                               ; preds = %95
  %99 = sext i32 %96 to i64
  br label %100

100:                                              ; preds = %98, %100
  %101 = phi i64 [ %99, %98 ], [ %103, %100 ]
  %102 = phi i32 [ 1, %98 ], [ %113, %100 ]
  %103 = add nsw i64 %101, 1
  %104 = getelementptr inbounds [3 x float], ptr %1, i64 %101
  %105 = tail call ptr @ccgSubSurf_getFaceGridEdgeData(ptr noundef %4, ptr noundef %78, i32 noundef %97, i32 noundef %102) #10
  %106 = load float, ptr %105, align 4, !tbaa !66
  store float %106, ptr %104, align 4, !tbaa !66
  %107 = getelementptr inbounds float, ptr %105, i64 1
  %108 = load float, ptr %107, align 4, !tbaa !66
  %109 = getelementptr inbounds float, ptr %104, i64 1
  store float %108, ptr %109, align 4, !tbaa !66
  %110 = getelementptr inbounds float, ptr %105, i64 2
  %111 = load float, ptr %110, align 4, !tbaa !66
  %112 = getelementptr inbounds float, ptr %104, i64 2
  store float %111, ptr %112, align 4, !tbaa !66
  %113 = add nuw nsw i32 %102, 1
  %114 = icmp eq i32 %113, %63
  br i1 %114, label %115, label %100, !llvm.loop !367

115:                                              ; preds = %100
  %116 = trunc i64 %103 to i32
  br label %117

117:                                              ; preds = %115, %95
  %118 = phi i32 [ %96, %95 ], [ %116, %115 ]
  %119 = add nuw nsw i32 %97, 1
  %120 = icmp eq i32 %119, %79
  br i1 %120, label %92, label %95, !llvm.loop !368

121:                                              ; preds = %92, %147
  %122 = phi i32 [ %148, %147 ], [ %93, %92 ]
  %123 = phi i32 [ %149, %147 ], [ 0, %92 ]
  br i1 %65, label %124, label %147

124:                                              ; preds = %121, %143
  %125 = phi i32 [ %144, %143 ], [ %122, %121 ]
  %126 = phi i32 [ %145, %143 ], [ 1, %121 ]
  %127 = sext i32 %125 to i64
  br label %128

128:                                              ; preds = %124, %128
  %129 = phi i64 [ %127, %124 ], [ %131, %128 ]
  %130 = phi i32 [ 1, %124 ], [ %141, %128 ]
  %131 = add nsw i64 %129, 1
  %132 = getelementptr inbounds [3 x float], ptr %1, i64 %129
  %133 = tail call ptr @ccgSubSurf_getFaceGridData(ptr noundef %4, ptr noundef %78, i32 noundef %123, i32 noundef %130, i32 noundef %126) #10
  %134 = load float, ptr %133, align 4, !tbaa !66
  store float %134, ptr %132, align 4, !tbaa !66
  %135 = getelementptr inbounds float, ptr %133, i64 1
  %136 = load float, ptr %135, align 4, !tbaa !66
  %137 = getelementptr inbounds float, ptr %132, i64 1
  store float %136, ptr %137, align 4, !tbaa !66
  %138 = getelementptr inbounds float, ptr %133, i64 2
  %139 = load float, ptr %138, align 4, !tbaa !66
  %140 = getelementptr inbounds float, ptr %132, i64 2
  store float %139, ptr %140, align 4, !tbaa !66
  %141 = add nuw nsw i32 %130, 1
  %142 = icmp eq i32 %141, %63
  br i1 %142, label %143, label %128, !llvm.loop !369

143:                                              ; preds = %128
  %144 = trunc i64 %131 to i32
  %145 = add nuw nsw i32 %126, 1
  %146 = icmp eq i32 %145, %63
  br i1 %146, label %147, label %124, !llvm.loop !370

147:                                              ; preds = %143, %121
  %148 = phi i32 [ %122, %121 ], [ %144, %143 ]
  %149 = add nuw nsw i32 %123, 1
  %150 = icmp eq i32 %149, %79
  br i1 %150, label %151, label %121, !llvm.loop !371

151:                                              ; preds = %147, %92
  %152 = phi i32 [ %93, %92 ], [ %148, %147 ]
  %153 = add nuw nsw i64 %75, 1
  %154 = icmp eq i64 %153, %66
  br i1 %154, label %67, label %74, !llvm.loop !372

155:                                              ; preds = %185, %67
  %156 = phi i32 [ %68, %67 ], [ %186, %185 ]
  %157 = icmp sgt i32 %7, 0
  br i1 %157, label %158, label %206

158:                                              ; preds = %155
  %159 = sext i32 %156 to i64
  %160 = zext nneg i32 %7 to i64
  br label %189

161:                                              ; preds = %70, %185
  %162 = phi i64 [ 0, %70 ], [ %187, %185 ]
  %163 = phi i32 [ %68, %70 ], [ %186, %185 ]
  %164 = getelementptr inbounds ptr, ptr %29, i64 %162
  %165 = load ptr, ptr %164, align 8, !tbaa !100
  br i1 %71, label %166, label %185

166:                                              ; preds = %161
  %167 = sext i32 %163 to i64
  br label %168

168:                                              ; preds = %166, %168
  %169 = phi i64 [ %167, %166 ], [ %171, %168 ]
  %170 = phi i32 [ 1, %166 ], [ %181, %168 ]
  %171 = add nsw i64 %169, 1
  %172 = getelementptr inbounds [3 x float], ptr %1, i64 %169
  %173 = tail call ptr @ccgSubSurf_getEdgeData(ptr noundef %4, ptr noundef %165, i32 noundef %170) #10
  %174 = load float, ptr %173, align 4, !tbaa !66
  store float %174, ptr %172, align 4, !tbaa !66
  %175 = getelementptr inbounds float, ptr %173, i64 1
  %176 = load float, ptr %175, align 4, !tbaa !66
  %177 = getelementptr inbounds float, ptr %172, i64 1
  store float %176, ptr %177, align 4, !tbaa !66
  %178 = getelementptr inbounds float, ptr %173, i64 2
  %179 = load float, ptr %178, align 4, !tbaa !66
  %180 = getelementptr inbounds float, ptr %172, i64 2
  store float %179, ptr %180, align 4, !tbaa !66
  %181 = add nuw nsw i32 %170, 1
  %182 = icmp eq i32 %170, %73
  br i1 %182, label %183, label %168, !llvm.loop !373

183:                                              ; preds = %168
  %184 = trunc i64 %171 to i32
  br label %185

185:                                              ; preds = %183, %161
  %186 = phi i32 [ %163, %161 ], [ %184, %183 ]
  %187 = add nuw nsw i64 %162, 1
  %188 = icmp eq i64 %187, %72
  br i1 %188, label %155, label %161, !llvm.loop !374

189:                                              ; preds = %158, %189
  %190 = phi i64 [ 0, %158 ], [ %204, %189 ]
  %191 = phi i64 [ %159, %158 ], [ %194, %189 ]
  %192 = getelementptr inbounds ptr, ptr %11, i64 %190
  %193 = load ptr, ptr %192, align 8, !tbaa !100
  %194 = add nsw i64 %191, 1
  %195 = getelementptr inbounds [3 x float], ptr %1, i64 %191
  %196 = tail call ptr @ccgSubSurf_getVertData(ptr noundef %4, ptr noundef %193) #10
  %197 = load float, ptr %196, align 4, !tbaa !66
  store float %197, ptr %195, align 4, !tbaa !66
  %198 = getelementptr inbounds float, ptr %196, i64 1
  %199 = load float, ptr %198, align 4, !tbaa !66
  %200 = getelementptr inbounds float, ptr %195, i64 1
  store float %199, ptr %200, align 4, !tbaa !66
  %201 = getelementptr inbounds float, ptr %196, i64 2
  %202 = load float, ptr %201, align 4, !tbaa !66
  %203 = getelementptr inbounds float, ptr %195, i64 2
  store float %202, ptr %203, align 4, !tbaa !66
  %204 = add nuw nsw i64 %190, 1
  %205 = icmp eq i64 %204, %160
  br i1 %205, label %206, label %189, !llvm.loop !375

206:                                              ; preds = %189, %155
  %207 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %207(ptr noundef %11) #10
  %208 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %208(ptr noundef %29) #10
  %209 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %209(ptr noundef %47) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_foreachMappedVert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.CCGKey, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #10
  %6 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  call void @CCG_key_top_level(ptr noundef nonnull %5, ptr noundef %7) #10
  %8 = load ptr, ptr %6, align 8, !tbaa !34
  %9 = call ptr @ccgSubSurf_getVertIterator(ptr noundef %8) #10
  %10 = call i32 @ccgVertIterator_isStopped(ptr noundef %9) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %4
  %13 = and i32 %3, 1
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.CCGKey, ptr %5, i64 0, i32 5
  br label %16

16:                                               ; preds = %12, %30
  %17 = call ptr @ccgVertIterator_getCurrent(ptr noundef %9) #10
  %18 = load ptr, ptr %6, align 8, !tbaa !34
  %19 = call ptr @ccgSubSurf_getVertUserData(ptr noundef %18, ptr noundef %17) #10
  %20 = getelementptr inbounds i32, ptr %19, i64 1
  %21 = load i32, ptr %20, align 4, !tbaa !54
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr %6, align 8, !tbaa !34
  %25 = call ptr @ccgSubSurf_getVertData(ptr noundef %24, ptr noundef %17) #10
  %26 = load i32, ptr %15, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %25, i64 %27
  %29 = select i1 %14, ptr null, ptr %28
  call void %1(ptr noundef %2, i32 noundef %21, ptr noundef %25, ptr noundef %29, ptr noundef null) #10
  br label %30

30:                                               ; preds = %23, %16
  call void @ccgVertIterator_next(ptr noundef %9) #10
  %31 = call i32 @ccgVertIterator_isStopped(ptr noundef %9) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %16, label %33, !llvm.loop !376

33:                                               ; preds = %30, %4
  call void @ccgVertIterator_free(ptr noundef %9) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_foreachMappedEdge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.CCGKey, align 4
  %5 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #10
  %7 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %6) #10
  call void @CCG_key_top_level(ptr noundef nonnull %4, ptr noundef %6) #10
  %8 = call ptr @ccgSubSurf_getEdgeIterator(ptr noundef %6) #10
  %9 = call i32 @ccgEdgeIterator_isStopped(ptr noundef %8) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %3
  %12 = icmp sgt i32 %7, 1
  %13 = getelementptr inbounds %struct.CCGKey, ptr %4, i64 0, i32 1
  %14 = add nsw i32 %7, -2
  br label %15

15:                                               ; preds = %11, %34
  %16 = call ptr @ccgEdgeIterator_getCurrent(ptr noundef %8) #10
  %17 = call ptr @ccgSubSurf_getEdgeUserData(ptr noundef %6, ptr noundef %16) #10
  %18 = getelementptr inbounds i32, ptr %17, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !54
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %34, label %21

21:                                               ; preds = %15
  %22 = call ptr @ccgSubSurf_getEdgeDataArray(ptr noundef %6, ptr noundef %16) #10
  br i1 %12, label %23, label %34

23:                                               ; preds = %21, %23
  %24 = phi i32 [ %29, %23 ], [ 0, %21 ]
  %25 = load i32, ptr %13, align 4, !tbaa !268
  %26 = mul nsw i32 %25, %24
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %22, i64 %27
  %29 = add nuw nsw i32 %24, 1
  %30 = mul nsw i32 %25, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, ptr %22, i64 %31
  call void %1(ptr noundef %2, i32 noundef %19, ptr noundef %28, ptr noundef %32) #10
  %33 = icmp eq i32 %24, %14
  br i1 %33, label %34, label %23, !llvm.loop !377

34:                                               ; preds = %23, %21, %15
  call void @ccgEdgeIterator_next(ptr noundef %8) #10
  %35 = call i32 @ccgEdgeIterator_isStopped(ptr noundef %8) #10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %15, label %37, !llvm.loop !378

37:                                               ; preds = %34, %3
  call void @ccgEdgeIterator_free(ptr noundef %8) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_foreachMappedLoop(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = and i32 %3, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @DM_get_loop_data_layer(ptr noundef %0, i32 noundef 8) #10
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi ptr [ %8, %7 ], [ null, %4 ]
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  %13 = tail call ptr %12(ptr noundef %0) #10
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 34
  %15 = load ptr, ptr %14, align 8, !tbaa !95
  %16 = tail call ptr %15(ptr noundef %0) #10
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 35
  %18 = load ptr, ptr %17, align 8, !tbaa !96
  %19 = tail call ptr %18(ptr noundef %0) #10
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 50
  %21 = load ptr, ptr %20, align 8, !tbaa !99
  %22 = tail call ptr %21(ptr noundef %0, i32 noundef 7) #10
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 54
  %24 = load ptr, ptr %23, align 8, !tbaa !108
  %25 = tail call ptr %24(ptr noundef %0, i32 noundef 7) #10
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !109
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %81

29:                                               ; preds = %9
  %30 = icmp eq ptr %22, null
  %31 = icmp eq ptr %25, null
  br label %32

32:                                               ; preds = %29, %73
  %33 = phi i64 [ 0, %29 ], [ %76, %73 ]
  %34 = phi ptr [ %10, %29 ], [ %75, %73 ]
  %35 = phi ptr [ %16, %29 ], [ %74, %73 ]
  %36 = phi ptr [ %19, %29 ], [ %77, %73 ]
  %37 = getelementptr inbounds %struct.MPoly, ptr %36, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !47
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %73

40:                                               ; preds = %32
  %41 = getelementptr inbounds i32, ptr %25, i64 %33
  %42 = trunc i64 %33 to i32
  br label %43

43:                                               ; preds = %40, %68
  %44 = phi ptr [ %34, %40 ], [ %60, %68 ]
  %45 = phi ptr [ %35, %40 ], [ %70, %68 ]
  %46 = phi i32 [ 0, %40 ], [ %69, %68 ]
  br i1 %30, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %45, align 4, !tbaa !110
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, ptr %22, i64 %49
  br label %51

51:                                               ; preds = %43, %47
  %52 = phi ptr [ %50, %47 ], [ %45, %43 ]
  %53 = load i32, ptr %52, align 4, !tbaa !54
  br i1 %31, label %56, label %54

54:                                               ; preds = %51
  %55 = load i32, ptr %41, align 4, !tbaa !54
  br label %56

56:                                               ; preds = %51, %54
  %57 = phi i32 [ %55, %54 ], [ %42, %51 ]
  %58 = icmp eq ptr %44, null
  %59 = getelementptr inbounds [3 x float], ptr %44, i64 1
  %60 = select i1 %58, ptr null, ptr %59
  %61 = icmp eq i32 %53, -1
  %62 = icmp eq i32 %57, -1
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %56
  %65 = load i32, ptr %45, align 4, !tbaa !110
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.MVert, ptr %13, i64 %66
  tail call void %1(ptr noundef %2, i32 noundef %53, i32 noundef %57, ptr noundef %67, ptr noundef %44) #10
  br label %68

68:                                               ; preds = %64, %56
  %69 = add nuw nsw i32 %46, 1
  %70 = getelementptr inbounds %struct.MLoop, ptr %45, i64 1
  %71 = load i32, ptr %37, align 4, !tbaa !47
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %43, label %73, !llvm.loop !379

73:                                               ; preds = %68, %32
  %74 = phi ptr [ %35, %32 ], [ %70, %68 ]
  %75 = phi ptr [ %34, %32 ], [ %60, %68 ]
  %76 = add nuw nsw i64 %33, 1
  %77 = getelementptr inbounds %struct.MPoly, ptr %36, i64 1
  %78 = load i32, ptr %26, align 8, !tbaa !109
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %76, %79
  br i1 %80, label %32, label %81, !llvm.loop !380

81:                                               ; preds = %73, %9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_foreachMappedFaceCenter(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.CCGKey, align 4
  %6 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #10
  call void @CCG_key_top_level(ptr noundef nonnull %5, ptr noundef %7) #10
  %8 = call ptr @ccgSubSurf_getFaceIterator(ptr noundef %7) #10
  %9 = call i32 @ccgFaceIterator_isStopped(ptr noundef %8) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %4
  %12 = and i32 %3, 1
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.CCGKey, ptr %5, i64 0, i32 5
  br label %15

15:                                               ; preds = %11, %27
  %16 = call ptr @ccgFaceIterator_getCurrent(ptr noundef %8) #10
  %17 = call ptr @ccgSubSurf_getFaceUserData(ptr noundef %7, ptr noundef %16) #10
  %18 = getelementptr inbounds i32, ptr %17, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !54
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = call ptr @ccgSubSurf_getFaceGridData(ptr noundef %7, ptr noundef %16, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  %23 = load i32, ptr %14, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %22, i64 %24
  %26 = select i1 %13, ptr null, ptr %25
  call void %1(ptr noundef %2, i32 noundef %19, ptr noundef %22, ptr noundef %26) #10
  br label %27

27:                                               ; preds = %21, %15
  call void @ccgFaceIterator_next(ptr noundef %8) #10
  %28 = call i32 @ccgFaceIterator_isStopped(ptr noundef %8) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %15, label %30, !llvm.loop !381

30:                                               ; preds = %27, %4
  call void @ccgFaceIterator_free(ptr noundef %8) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_drawVerts(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %3) #10
  %5 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %3) #10
  tail call void @glBegin(i32 noundef 0) #10
  %6 = tail call ptr @ccgSubSurf_getVertIterator(ptr noundef %3) #10
  %7 = tail call i32 @ccgVertIterator_isStopped(ptr noundef %6) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1, %9
  %10 = tail call ptr @ccgVertIterator_getCurrent(ptr noundef %6) #10
  %11 = tail call ptr @ccgSubSurf_getVertData(ptr noundef %3, ptr noundef %10) #10
  tail call void @glVertex3fv(ptr noundef %11) #10
  tail call void @ccgVertIterator_next(ptr noundef %6) #10
  %12 = tail call i32 @ccgVertIterator_isStopped(ptr noundef %6) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %9, label %14, !llvm.loop !382

14:                                               ; preds = %9, %1
  tail call void @ccgVertIterator_free(ptr noundef %6) #10
  %15 = tail call ptr @ccgSubSurf_getEdgeIterator(ptr noundef %3) #10
  %16 = tail call i32 @ccgEdgeIterator_isStopped(ptr noundef %15) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = icmp sgt i32 %4, 2
  %20 = add nsw i32 %4, -2
  br label %21

21:                                               ; preds = %18, %28
  %22 = tail call ptr @ccgEdgeIterator_getCurrent(ptr noundef %15) #10
  br i1 %19, label %23, label %28

23:                                               ; preds = %21, %23
  %24 = phi i32 [ %26, %23 ], [ 1, %21 ]
  %25 = tail call ptr @ccgSubSurf_getEdgeData(ptr noundef %3, ptr noundef %22, i32 noundef %24) #10
  tail call void @glVertex3fv(ptr noundef %25) #10
  %26 = add nuw nsw i32 %24, 1
  %27 = icmp eq i32 %24, %20
  br i1 %27, label %28, label %23, !llvm.loop !383

28:                                               ; preds = %23, %21
  tail call void @ccgEdgeIterator_next(ptr noundef %15) #10
  %29 = tail call i32 @ccgEdgeIterator_isStopped(ptr noundef %15) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %21, label %31, !llvm.loop !384

31:                                               ; preds = %28, %14
  tail call void @ccgEdgeIterator_free(ptr noundef %15) #10
  %32 = tail call ptr @ccgSubSurf_getFaceIterator(ptr noundef %3) #10
  %33 = tail call i32 @ccgFaceIterator_isStopped(ptr noundef %32) #10
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %74

35:                                               ; preds = %31
  %36 = add i32 %5, -1
  %37 = icmp sgt i32 %5, 2
  %38 = icmp sgt i32 %5, 2
  br label %39

39:                                               ; preds = %35, %71
  %40 = tail call ptr @ccgFaceIterator_getCurrent(ptr noundef %32) #10
  %41 = tail call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %40) #10
  %42 = tail call ptr @ccgSubSurf_getFaceCenterData(ptr noundef %40) #10
  tail call void @glVertex3fv(ptr noundef %42) #10
  %43 = icmp sgt i32 %41, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %53, %39
  %45 = icmp sgt i32 %41, 0
  br i1 %45, label %56, label %71

46:                                               ; preds = %39, %53
  %47 = phi i32 [ %54, %53 ], [ 0, %39 ]
  br i1 %37, label %48, label %53

48:                                               ; preds = %46, %48
  %49 = phi i32 [ %51, %48 ], [ 1, %46 ]
  %50 = tail call ptr @ccgSubSurf_getFaceGridEdgeData(ptr noundef %3, ptr noundef %40, i32 noundef %47, i32 noundef %49) #10
  tail call void @glVertex3fv(ptr noundef %50) #10
  %51 = add nuw nsw i32 %49, 1
  %52 = icmp eq i32 %51, %36
  br i1 %52, label %53, label %48, !llvm.loop !385

53:                                               ; preds = %48, %46
  %54 = add nuw nsw i32 %47, 1
  %55 = icmp eq i32 %54, %41
  br i1 %55, label %44, label %46, !llvm.loop !386

56:                                               ; preds = %44, %68
  %57 = phi i32 [ %69, %68 ], [ 0, %44 ]
  br i1 %38, label %58, label %68

58:                                               ; preds = %56, %65
  %59 = phi i32 [ %66, %65 ], [ 1, %56 ]
  br label %60

60:                                               ; preds = %58, %60
  %61 = phi i32 [ 1, %58 ], [ %63, %60 ]
  %62 = tail call ptr @ccgSubSurf_getFaceGridData(ptr noundef %3, ptr noundef %40, i32 noundef %57, i32 noundef %61, i32 noundef %59) #10
  tail call void @glVertex3fv(ptr noundef %62) #10
  %63 = add nuw nsw i32 %61, 1
  %64 = icmp eq i32 %63, %36
  br i1 %64, label %65, label %60, !llvm.loop !387

65:                                               ; preds = %60
  %66 = add nuw nsw i32 %59, 1
  %67 = icmp eq i32 %66, %36
  br i1 %67, label %68, label %58, !llvm.loop !388

68:                                               ; preds = %65, %56
  %69 = add nuw nsw i32 %57, 1
  %70 = icmp eq i32 %69, %41
  br i1 %70, label %71, label %56, !llvm.loop !389

71:                                               ; preds = %68, %44
  tail call void @ccgFaceIterator_next(ptr noundef %32) #10
  %72 = tail call i32 @ccgFaceIterator_isStopped(ptr noundef %32) #10
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %39, label %74, !llvm.loop !390

74:                                               ; preds = %71, %31
  tail call void @ccgFaceIterator_free(ptr noundef %32) #10
  tail call void @glEnd() #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_drawEdges(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.CCGKey, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #10
  %10 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %9) #10
  %11 = tail call i32 @ccgSubSurf_getNumEdges(ptr noundef %9) #10
  %12 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %9) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  call void @CCG_key_top_level(ptr noundef nonnull %6, ptr noundef %9) #10
  %13 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !354
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20
  %18 = load ptr, ptr %17, align 8, !tbaa !339
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  call void @BKE_pbvh_get_grid_updates(ptr noundef nonnull %14, i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %21 = load i32, ptr %5, align 4, !tbaa !54
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %8, align 8, !tbaa !34
  %25 = load ptr, ptr %4, align 8, !tbaa !100
  %26 = call i32 @ccgSubSurf_updateFromFaces(ptr noundef %24, i32 noundef 0, ptr noundef %25, i32 noundef %21) #10
  %27 = load ptr, ptr %8, align 8, !tbaa !34
  %28 = load ptr, ptr %4, align 8, !tbaa !100
  %29 = load i32, ptr %5, align 4, !tbaa !54
  %30 = call i32 @ccgSubSurf_updateNormals(ptr noundef %27, ptr noundef %28, i32 noundef %29) #10
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  %32 = load ptr, ptr %4, align 8, !tbaa !100
  call void %31(ptr noundef %32) #10
  br label %33

33:                                               ; preds = %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %34

34:                                               ; preds = %3, %16, %33
  call void @ccgSubSurf_getUseAgeCounts(ptr noundef %9, ptr noundef nonnull %7, ptr noundef null, ptr noundef null, ptr noundef null) #10
  %35 = icmp sgt i32 %11, 0
  br i1 %35, label %36, label %93

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 6
  %38 = icmp eq i8 %1, 0
  %39 = icmp eq i8 %2, 0
  %40 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 8
  %41 = icmp sgt i32 %10, 1
  %42 = getelementptr inbounds %struct.CCGKey, ptr %6, i64 0, i32 1
  %43 = zext nneg i32 %11 to i64
  %44 = add nsw i32 %10, -2
  br label %45

45:                                               ; preds = %36, %90
  %46 = phi i64 [ 0, %36 ], [ %91, %90 ]
  %47 = load ptr, ptr %37, align 8, !tbaa !177
  %48 = getelementptr inbounds %struct.anon.2, ptr %47, i64 %46, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !178
  %50 = call ptr @ccgSubSurf_getEdgeDataArray(ptr noundef %9, ptr noundef %49) #10
  br i1 %38, label %51, label %54

51:                                               ; preds = %45
  %52 = call i32 @ccgSubSurf_getEdgeNumFaces(ptr noundef %49) #10
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %90, label %54

54:                                               ; preds = %51, %45
  br i1 %39, label %55, label %63

55:                                               ; preds = %54
  %56 = load ptr, ptr %40, align 8, !tbaa !183
  %57 = icmp eq ptr %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds i16, ptr %56, i64 %46
  %60 = load i16, ptr %59, align 2, !tbaa !243
  %61 = and i16 %60, 2
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %90, label %63

63:                                               ; preds = %58, %55, %54
  %64 = load i32, ptr %7, align 4, !tbaa !54
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !391
  %68 = and i32 %67, 16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = call i32 @ccgSubSurf_getEdgeAge(ptr noundef %9, ptr noundef %49) #10
  %72 = shl nsw i32 %71, 2
  %73 = sub nsw i32 255, %72
  %74 = call i32 @llvm.smax.i32(i32 %73, i32 0)
  %75 = trunc i32 %74 to i8
  call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext %75, i8 noundef zeroext 0) #10
  br label %76

76:                                               ; preds = %70, %66, %63
  call void @glBegin(i32 noundef 3) #10
  br i1 %41, label %77, label %89

77:                                               ; preds = %76, %77
  %78 = phi i32 [ %83, %77 ], [ 0, %76 ]
  %79 = load i32, ptr %42, align 4, !tbaa !268
  %80 = mul nsw i32 %79, %78
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, ptr %50, i64 %81
  call void @glVertex3fv(ptr noundef %82) #10
  %83 = add nuw nsw i32 %78, 1
  %84 = load i32, ptr %42, align 4, !tbaa !268
  %85 = mul nsw i32 %84, %83
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, ptr %50, i64 %86
  call void @glVertex3fv(ptr noundef %87) #10
  %88 = icmp eq i32 %78, %44
  br i1 %88, label %89, label %77, !llvm.loop !393

89:                                               ; preds = %77, %76
  call void @glEnd() #10
  br label %90

90:                                               ; preds = %58, %51, %89
  %91 = add nuw nsw i64 %46, 1
  %92 = icmp eq i64 %91, %43
  br i1 %92, label %93, label %45, !llvm.loop !394

93:                                               ; preds = %90, %34
  %94 = load i32, ptr %7, align 4, !tbaa !54
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %93
  %97 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !391
  %98 = and i32 %97, 16
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  br label %101

101:                                              ; preds = %100, %96, %93
  %102 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 3
  %103 = load i32, ptr %102, align 4, !tbaa !171
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %180, label %105

105:                                              ; preds = %101
  %106 = call i32 @ccgSubSurf_getNumFaces(ptr noundef %9) #10
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %180

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %110 = icmp sgt i32 %12, 0
  %111 = getelementptr inbounds %struct.CCGKey, ptr %6, i64 0, i32 1
  %112 = add i32 %12, -1
  %113 = icmp sgt i32 %12, 2
  %114 = icmp sgt i32 %12, 0
  %115 = getelementptr inbounds %struct.CCGKey, ptr %6, i64 0, i32 2
  %116 = getelementptr inbounds %struct.CCGKey, ptr %6, i64 0, i32 1
  %117 = icmp sgt i32 %12, 2
  %118 = icmp sgt i32 %12, 0
  %119 = getelementptr inbounds %struct.CCGKey, ptr %6, i64 0, i32 2
  %120 = getelementptr inbounds %struct.CCGKey, ptr %6, i64 0, i32 1
  %121 = zext nneg i32 %106 to i64
  br label %122

122:                                              ; preds = %108, %177
  %123 = phi i64 [ 0, %108 ], [ %178, %177 ]
  %124 = load ptr, ptr %109, align 8, !tbaa !44
  %125 = getelementptr inbounds %struct.anon.0, ptr %124, i64 %123, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !45
  %127 = call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %126) #10
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %177

129:                                              ; preds = %122, %174
  %130 = phi i32 [ %175, %174 ], [ 0, %122 ]
  %131 = call ptr @ccgSubSurf_getFaceGridDataArray(ptr noundef %9, ptr noundef %126, i32 noundef %130) #10
  call void @glBegin(i32 noundef 3) #10
  br i1 %110, label %132, label %140

132:                                              ; preds = %129, %132
  %133 = phi i32 [ %138, %132 ], [ 0, %129 ]
  %134 = load i32, ptr %111, align 4, !tbaa !268
  %135 = mul nsw i32 %134, %133
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, ptr %131, i64 %136
  call void @glVertex3fv(ptr noundef %137) #10
  %138 = add nuw nsw i32 %133, 1
  %139 = icmp eq i32 %138, %12
  br i1 %139, label %140, label %132, !llvm.loop !395

140:                                              ; preds = %132, %129
  call void @glEnd() #10
  br i1 %113, label %142, label %141

141:                                              ; preds = %155, %140
  br i1 %117, label %158, label %174

142:                                              ; preds = %140, %155
  %143 = phi i32 [ %156, %155 ], [ 1, %140 ]
  call void @glBegin(i32 noundef 3) #10
  br i1 %114, label %144, label %155

144:                                              ; preds = %142, %144
  %145 = phi i32 [ %153, %144 ], [ 0, %142 ]
  %146 = load i32, ptr %115, align 4, !tbaa !396
  %147 = mul nsw i32 %146, %143
  %148 = add nsw i32 %147, %145
  %149 = load i32, ptr %116, align 4, !tbaa !268
  %150 = mul nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, ptr %131, i64 %151
  call void @glVertex3fv(ptr noundef %152) #10
  %153 = add nuw nsw i32 %145, 1
  %154 = icmp eq i32 %153, %12
  br i1 %154, label %155, label %144, !llvm.loop !397

155:                                              ; preds = %144, %142
  call void @glEnd() #10
  %156 = add nuw nsw i32 %143, 1
  %157 = icmp eq i32 %156, %112
  br i1 %157, label %141, label %142, !llvm.loop !398

158:                                              ; preds = %141, %171
  %159 = phi i32 [ %172, %171 ], [ 1, %141 ]
  call void @glBegin(i32 noundef 3) #10
  br i1 %118, label %160, label %171

160:                                              ; preds = %158, %160
  %161 = phi i32 [ %169, %160 ], [ 0, %158 ]
  %162 = load i32, ptr %119, align 4, !tbaa !396
  %163 = mul nsw i32 %162, %161
  %164 = add nsw i32 %163, %159
  %165 = load i32, ptr %120, align 4, !tbaa !268
  %166 = mul nsw i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, ptr %131, i64 %167
  call void @glVertex3fv(ptr noundef %168) #10
  %169 = add nuw nsw i32 %161, 1
  %170 = icmp eq i32 %169, %12
  br i1 %170, label %171, label %160, !llvm.loop !399

171:                                              ; preds = %160, %158
  call void @glEnd() #10
  %172 = add nuw nsw i32 %159, 1
  %173 = icmp eq i32 %172, %112
  br i1 %173, label %174, label %158, !llvm.loop !400

174:                                              ; preds = %171, %141
  %175 = add nuw nsw i32 %130, 1
  %176 = icmp eq i32 %175, %127
  br i1 %176, label %177, label %129, !llvm.loop !401

177:                                              ; preds = %174, %122
  %178 = add nuw nsw i64 %123, 1
  %179 = icmp eq i64 %178, %121
  br i1 %179, label %180, label %122, !llvm.loop !402

180:                                              ; preds = %177, %105, %101
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_drawLooseEdges(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.CCGKey, align 4
  %3 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #10
  %5 = tail call i32 @ccgSubSurf_getNumEdges(ptr noundef %4) #10
  %6 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %4) #10
  call void @CCG_key_top_level(ptr noundef nonnull %2, ptr noundef %4) #10
  %7 = icmp sgt i32 %5, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 6
  %10 = icmp sgt i32 %6, 1
  %11 = getelementptr inbounds %struct.CCGKey, ptr %2, i64 0, i32 1
  %12 = zext nneg i32 %5 to i64
  %13 = add nsw i32 %6, -2
  br label %14

14:                                               ; preds = %8, %36
  %15 = phi i64 [ 0, %8 ], [ %37, %36 ]
  %16 = load ptr, ptr %9, align 8, !tbaa !177
  %17 = getelementptr inbounds %struct.anon.2, ptr %16, i64 %15, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !178
  %19 = call ptr @ccgSubSurf_getEdgeDataArray(ptr noundef %4, ptr noundef %18) #10
  %20 = call i32 @ccgSubSurf_getEdgeNumFaces(ptr noundef %18) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %14
  call void @glBegin(i32 noundef 3) #10
  br i1 %10, label %23, label %35

23:                                               ; preds = %22, %23
  %24 = phi i32 [ %29, %23 ], [ 0, %22 ]
  %25 = load i32, ptr %11, align 4, !tbaa !268
  %26 = mul nsw i32 %25, %24
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %19, i64 %27
  call void @glVertex3fv(ptr noundef %28) #10
  %29 = add nuw nsw i32 %24, 1
  %30 = load i32, ptr %11, align 4, !tbaa !268
  %31 = mul nsw i32 %30, %29
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, ptr %19, i64 %32
  call void @glVertex3fv(ptr noundef %33) #10
  %34 = icmp eq i32 %24, %13
  br i1 %34, label %35, label %23, !llvm.loop !403

35:                                               ; preds = %23, %22
  call void @glEnd() #10
  br label %36

36:                                               ; preds = %35, %14
  %37 = add nuw nsw i64 %15, 1
  %38 = icmp eq i64 %37, %12
  br i1 %38, label %39, label %14, !llvm.loop !404

39:                                               ; preds = %36, %1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_drawFacesSolid(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.CCGKey, align 4
  %9 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #10
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %12 = load ptr, ptr %11, align 8, !tbaa !405
  %13 = tail call ptr %12(ptr noundef %0, i32 noundef 40) #10
  %14 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %10) #10
  %15 = add nsw i32 %14, -1
  %16 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !184
  %18 = icmp eq i8 %2, 0
  %19 = select i1 %18, i32 1, i32 %15
  %20 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %10) #10
  call void @CCG_key_top_level(ptr noundef nonnull %8, ptr noundef %10) #10
  %21 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 11
  %22 = load ptr, ptr %21, align 8, !tbaa !354
  %23 = icmp eq ptr %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20
  %26 = load ptr, ptr %25, align 8, !tbaa !339
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %28

28:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  call void @BKE_pbvh_get_grid_updates(ptr noundef nonnull %22, i32 noundef 1, ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  %29 = load i32, ptr %7, align 4, !tbaa !54
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %9, align 8, !tbaa !34
  %33 = load ptr, ptr %6, align 8, !tbaa !100
  %34 = call i32 @ccgSubSurf_updateFromFaces(ptr noundef %32, i32 noundef 0, ptr noundef %33, i32 noundef %29) #10
  %35 = load ptr, ptr %9, align 8, !tbaa !34
  %36 = load ptr, ptr %6, align 8, !tbaa !100
  %37 = load i32, ptr %7, align 4, !tbaa !54
  %38 = call i32 @ccgSubSurf_updateNormals(ptr noundef %35, ptr noundef %36, i32 noundef %37) #10
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  %40 = load ptr, ptr %6, align 8, !tbaa !100
  call void %39(ptr noundef %40) #10
  br label %41

41:                                               ; preds = %31, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  br label %42

42:                                               ; preds = %4, %24, %41
  %43 = load ptr, ptr %21, align 8, !tbaa !354
  %44 = icmp eq ptr %43, null
  br i1 %44, label %56, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20
  %47 = load ptr, ptr %46, align 8, !tbaa !339
  %48 = icmp eq ptr %47, null
  %49 = icmp ne i8 %2, 0
  %50 = or i1 %49, %48
  br i1 %50, label %56, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !406
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %281, label %55

55:                                               ; preds = %51
  call void @BKE_pbvh_draw(ptr noundef nonnull %43, ptr noundef %1, ptr noundef null, ptr noundef %3, i8 noundef zeroext 0) #10
  call void @glShadeModel(i32 noundef 7424) #10
  br label %281

56:                                               ; preds = %45, %42
  %57 = icmp sgt i32 %20, 0
  br i1 %57, label %58, label %281

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %60 = icmp eq ptr %17, null
  %61 = mul nsw i32 %15, %15
  %62 = icmp eq ptr %3, null
  %63 = icmp sgt i32 %14, 1
  %64 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 2
  %65 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 1
  %66 = sext i32 %19 to i64
  %67 = icmp sgt i32 %14, 1
  %68 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 2
  %69 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 1
  %70 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %71 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %72 = icmp sgt i32 %14, 1
  %73 = icmp sgt i32 %14, 0
  %74 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 2
  %75 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 1
  %76 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 5
  %77 = zext nneg i32 %20 to i64
  br label %78

78:                                               ; preds = %58, %278
  %79 = phi i64 [ 0, %58 ], [ %279, %278 ]
  %80 = phi ptr [ %13, %58 ], [ %114, %278 ]
  %81 = phi i32 [ 0, %58 ], [ %127, %278 ]
  %82 = phi i32 [ -1, %58 ], [ %126, %278 ]
  %83 = phi i32 [ -1, %58 ], [ %125, %278 ]
  %84 = load ptr, ptr %59, align 8, !tbaa !44
  %85 = getelementptr inbounds %struct.anon.0, ptr %84, i64 %79, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !45
  %87 = call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %86) #10
  %88 = call ptr @ccgSubSurf_getFaceFaceHandle(ptr noundef %86) #10
  %89 = ptrtoint ptr %88 to i64
  br i1 %60, label %107, label %90

90:                                               ; preds = %78
  %91 = icmp eq ptr %80, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %90
  %93 = shl i64 %89, 32
  %94 = ashr exact i64 %93, 32
  %95 = getelementptr inbounds %struct.DMFlagMat, ptr %17, i64 %94, i32 1
  %96 = load i8, ptr %95, align 2, !tbaa !197
  %97 = and i8 %96, 1
  %98 = icmp ne i8 %97, 0
  br label %99

99:                                               ; preds = %92, %90
  %100 = phi i1 [ true, %90 ], [ %98, %92 ]
  %101 = select i1 %100, i32 7425, i32 7424
  %102 = shl i64 %89, 32
  %103 = ashr exact i64 %102, 32
  %104 = getelementptr inbounds %struct.DMFlagMat, ptr %17, i64 %103
  %105 = load i16, ptr %104, align 2, !tbaa !200
  %106 = sext i16 %105 to i32
  br label %107

107:                                              ; preds = %78, %99
  %108 = phi i32 [ %101, %99 ], [ 7425, %78 ]
  %109 = phi i32 [ %106, %99 ], [ 0, %78 ]
  %110 = icmp eq ptr %80, null
  %111 = mul nsw i32 %61, %87
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [4 x [3 x i16]], ptr %80, i64 %112
  %114 = select i1 %110, ptr null, ptr %113
  %115 = icmp eq i32 %83, %108
  %116 = icmp eq i32 %82, %109
  %117 = select i1 %115, i1 %116, i1 false
  br i1 %117, label %124, label %118

118:                                              ; preds = %107
  br i1 %62, label %122, label %119

119:                                              ; preds = %118
  %120 = add nsw i32 %109, 1
  %121 = call i32 %3(i32 noundef %120, ptr noundef null) #10
  br label %122

122:                                              ; preds = %118, %119
  %123 = phi i32 [ %121, %119 ], [ 1, %118 ]
  call void @glShadeModel(i32 noundef %108) #10
  br label %124

124:                                              ; preds = %107, %122
  %125 = phi i32 [ %108, %122 ], [ %83, %107 ]
  %126 = phi i32 [ %109, %122 ], [ %82, %107 ]
  %127 = phi i32 [ %123, %122 ], [ %81, %107 ]
  %128 = icmp ne i32 %127, 0
  %129 = icmp sgt i32 %87, 0
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %131, label %278

131:                                              ; preds = %124
  %132 = icmp eq i32 %125, 7425
  br label %133

133:                                              ; preds = %131, %274
  %134 = phi i32 [ 0, %131 ], [ %276, %274 ]
  %135 = phi ptr [ %80, %131 ], [ %275, %274 ]
  %136 = call ptr @ccgSubSurf_getFaceGridDataArray(ptr noundef %10, ptr noundef %86, i32 noundef %134) #10
  %137 = icmp eq ptr %135, null
  br i1 %137, label %175, label %138

138:                                              ; preds = %133
  call void @glBegin(i32 noundef 7) #10
  br i1 %63, label %139, label %272

139:                                              ; preds = %138, %172
  %140 = phi i32 [ %173, %172 ], [ 0, %138 ]
  %141 = phi ptr [ %170, %172 ], [ %135, %138 ]
  %142 = add nsw i32 %140, %19
  br label %143

143:                                              ; preds = %139, %143
  %144 = phi i32 [ 0, %139 ], [ %153, %143 ]
  %145 = phi ptr [ %141, %139 ], [ %170, %143 ]
  %146 = load i32, ptr %64, align 4, !tbaa !396
  %147 = mul nsw i32 %146, %140
  %148 = add nsw i32 %147, %144
  %149 = load i32, ptr %65, align 4, !tbaa !268
  %150 = mul nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, ptr %136, i64 %151
  %153 = add nsw i32 %144, %19
  %154 = add nsw i32 %147, %153
  %155 = mul nsw i32 %154, %149
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, ptr %136, i64 %156
  %158 = mul nsw i32 %146, %142
  %159 = add nsw i32 %158, %153
  %160 = mul nsw i32 %159, %149
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, ptr %136, i64 %161
  %163 = add nsw i32 %158, %144
  %164 = mul nsw i32 %163, %149
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, ptr %136, i64 %165
  %167 = getelementptr inbounds [4 x [3 x i16]], ptr %145, i64 0, i64 1
  call void @glNormal3sv(ptr noundef nonnull %167) #10
  call void @glVertex3fv(ptr noundef %166) #10
  %168 = getelementptr inbounds [4 x [3 x i16]], ptr %145, i64 0, i64 2
  call void @glNormal3sv(ptr noundef nonnull %168) #10
  call void @glVertex3fv(ptr noundef %162) #10
  %169 = getelementptr inbounds [4 x [3 x i16]], ptr %145, i64 0, i64 3
  call void @glNormal3sv(ptr noundef nonnull %169) #10
  call void @glVertex3fv(ptr noundef %157) #10
  call void @glNormal3sv(ptr noundef %145) #10
  call void @glVertex3fv(ptr noundef %152) #10
  %170 = getelementptr inbounds [4 x [3 x i16]], ptr %145, i64 %66
  %171 = icmp slt i32 %153, %15
  br i1 %171, label %143, label %172, !llvm.loop !407

172:                                              ; preds = %143
  %173 = add nsw i32 %140, %19
  %174 = icmp slt i32 %173, %15
  br i1 %174, label %139, label %272, !llvm.loop !408

175:                                              ; preds = %133
  br i1 %132, label %176, label %206

176:                                              ; preds = %175
  br i1 %72, label %177, label %274

177:                                              ; preds = %176, %203
  %178 = phi i32 [ %204, %203 ], [ 0, %176 ]
  call void @glBegin(i32 noundef 8) #10
  br i1 %73, label %179, label %203

179:                                              ; preds = %177
  %180 = add nsw i32 %178, %19
  br label %181

181:                                              ; preds = %179, %181
  %182 = phi i32 [ 0, %179 ], [ %201, %181 ]
  %183 = load i32, ptr %74, align 4, !tbaa !396
  %184 = mul nsw i32 %183, %178
  %185 = add nsw i32 %184, %182
  %186 = load i32, ptr %75, align 4, !tbaa !268
  %187 = mul nsw i32 %185, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, ptr %136, i64 %188
  %190 = mul nsw i32 %183, %180
  %191 = add nsw i32 %190, %182
  %192 = mul nsw i32 %191, %186
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, ptr %136, i64 %193
  %195 = load i32, ptr %76, align 4, !tbaa !278
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, ptr %189, i64 %196
  call void @glNormal3fv(ptr noundef %197) #10
  call void @glVertex3fv(ptr noundef %189) #10
  %198 = load i32, ptr %76, align 4, !tbaa !278
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, ptr %194, i64 %199
  call void @glNormal3fv(ptr noundef %200) #10
  call void @glVertex3fv(ptr noundef %194) #10
  %201 = add nsw i32 %182, %19
  %202 = icmp slt i32 %201, %14
  br i1 %202, label %181, label %203, !llvm.loop !409

203:                                              ; preds = %181, %177
  call void @glEnd() #10
  %204 = add nsw i32 %178, %19
  %205 = icmp slt i32 %204, %15
  br i1 %205, label %177, label %274, !llvm.loop !410

206:                                              ; preds = %175
  call void @glBegin(i32 noundef 7) #10
  br i1 %67, label %207, label %272

207:                                              ; preds = %206, %269
  %208 = phi i32 [ %270, %269 ], [ 0, %206 ]
  %209 = add nsw i32 %208, %19
  br label %210

210:                                              ; preds = %207, %210
  %211 = phi i32 [ 0, %207 ], [ %219, %210 ]
  %212 = load i32, ptr %68, align 4, !tbaa !396
  %213 = mul nsw i32 %212, %208
  %214 = add nsw i32 %213, %211
  %215 = load i32, ptr %69, align 4, !tbaa !268
  %216 = mul nsw i32 %214, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, ptr %136, i64 %217
  %219 = add nsw i32 %211, %19
  %220 = add nsw i32 %213, %219
  %221 = mul nsw i32 %220, %215
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, ptr %136, i64 %222
  %224 = mul nsw i32 %212, %209
  %225 = add nsw i32 %224, %219
  %226 = mul nsw i32 %225, %215
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, ptr %136, i64 %227
  %229 = add nsw i32 %224, %211
  %230 = mul nsw i32 %229, %215
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, ptr %136, i64 %231
  %233 = load float, ptr %228, align 4, !tbaa !66
  %234 = load float, ptr %218, align 4, !tbaa !66
  %235 = fsub float %233, %234
  %236 = getelementptr inbounds float, ptr %228, i64 1
  %237 = load float, ptr %236, align 4, !tbaa !66
  %238 = getelementptr inbounds float, ptr %218, i64 1
  %239 = load float, ptr %238, align 4, !tbaa !66
  %240 = fsub float %237, %239
  %241 = getelementptr inbounds float, ptr %228, i64 2
  %242 = load float, ptr %241, align 4, !tbaa !66
  %243 = getelementptr inbounds float, ptr %218, i64 2
  %244 = load float, ptr %243, align 4, !tbaa !66
  %245 = fsub float %242, %244
  %246 = load float, ptr %232, align 4, !tbaa !66
  %247 = load float, ptr %223, align 4, !tbaa !66
  %248 = fsub float %246, %247
  %249 = getelementptr inbounds float, ptr %232, i64 1
  %250 = load float, ptr %249, align 4, !tbaa !66
  %251 = getelementptr inbounds float, ptr %223, i64 1
  %252 = load float, ptr %251, align 4, !tbaa !66
  %253 = fsub float %250, %252
  %254 = getelementptr inbounds float, ptr %232, i64 2
  %255 = load float, ptr %254, align 4, !tbaa !66
  %256 = getelementptr inbounds float, ptr %223, i64 2
  %257 = load float, ptr %256, align 4, !tbaa !66
  %258 = fsub float %255, %257
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %259 = fneg float %258
  %260 = fmul float %240, %259
  %261 = call float @llvm.fmuladd.f32(float %253, float %245, float %260)
  store float %261, ptr %5, align 4, !tbaa !66
  %262 = fneg float %248
  %263 = fmul float %245, %262
  %264 = call float @llvm.fmuladd.f32(float %258, float %235, float %263)
  store float %264, ptr %70, align 4, !tbaa !66
  %265 = fneg float %253
  %266 = fmul float %235, %265
  %267 = call float @llvm.fmuladd.f32(float %248, float %240, float %266)
  store float %267, ptr %71, align 4, !tbaa !66
  call void @glNormal3fv(ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @glVertex3fv(ptr noundef nonnull %232) #10
  call void @glVertex3fv(ptr noundef nonnull %228) #10
  call void @glVertex3fv(ptr noundef nonnull %223) #10
  call void @glVertex3fv(ptr noundef nonnull %218) #10
  %268 = icmp slt i32 %219, %15
  br i1 %268, label %210, label %269, !llvm.loop !411

269:                                              ; preds = %210
  %270 = add nsw i32 %208, %19
  %271 = icmp slt i32 %270, %15
  br i1 %271, label %207, label %272, !llvm.loop !412

272:                                              ; preds = %172, %269, %206, %138
  %273 = phi ptr [ %135, %138 ], [ null, %206 ], [ null, %269 ], [ %170, %172 ]
  call void @glEnd() #10
  br label %274

274:                                              ; preds = %203, %272, %176
  %275 = phi ptr [ null, %176 ], [ %273, %272 ], [ null, %203 ]
  %276 = add nuw nsw i32 %134, 1
  %277 = icmp eq i32 %276, %87
  br i1 %277, label %278, label %133, !llvm.loop !413

278:                                              ; preds = %274, %124
  %279 = add nuw nsw i64 %79, 1
  %280 = icmp eq i64 %279, %77
  br i1 %280, label %281, label %78, !llvm.loop !414

281:                                              ; preds = %278, %56, %51, %55
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_drawFacesTex(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3, i32 noundef %4) #0 {
  tail call fastcc void @ccgDM_drawFacesTex_common(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_drawFacesGLSL(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 91
  %4 = load ptr, ptr %3, align 8, !tbaa !415
  tail call void %4(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_drawMappedFaces(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca [3 x float], align 4
  %8 = alloca %struct.CCGKey, align 4
  %9 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #10
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %12 = load ptr, ptr %11, align 8, !tbaa !405
  %13 = tail call ptr %12(ptr noundef %0, i32 noundef 40) #10
  %14 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %10) #10
  %15 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !184
  %17 = and i32 %5, 1
  %18 = add i32 %14, -1
  call void @CCG_key_top_level(ptr noundef nonnull %8, ptr noundef %10) #10
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %6
  %21 = load ptr, ptr %11, align 8, !tbaa !405
  %22 = call ptr %21(ptr noundef %0, i32 noundef 20) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load ptr, ptr %11, align 8, !tbaa !405
  %26 = call ptr %25(ptr noundef %0, i32 noundef 6) #10
  br label %27

27:                                               ; preds = %20, %24, %6
  %28 = phi ptr [ %22, %20 ], [ %26, %24 ], [ null, %6 ]
  %29 = call i32 @ccgSubSurf_getNumFaces(ptr noundef %10) #10
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %410

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %33 = and i32 %5, 2
  %34 = icmp ne i32 %33, 0
  %35 = icmp eq ptr %16, null
  %36 = select i1 %34, i1 true, i1 %35
  %37 = mul nsw i32 %18, %18
  %38 = icmp eq ptr %1, null
  %39 = icmp sgt i32 %14, 1
  %40 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 2
  %41 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 1
  %42 = icmp sgt i32 %14, 1
  %43 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 2
  %44 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 1
  %45 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 5
  %46 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 5
  %47 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 5
  %48 = add nsw i32 %14, -2
  %49 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 2
  %50 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 1
  %51 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 5
  %52 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 5
  %53 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 5
  %54 = icmp sgt i32 %14, 1
  %55 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 2
  %56 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 1
  %57 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %58 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %59 = zext nneg i32 %29 to i64
  br label %60

60:                                               ; preds = %31, %407
  %61 = phi i64 [ 0, %31 ], [ %408, %407 ]
  %62 = phi ptr [ %28, %31 ], [ %92, %407 ]
  %63 = phi ptr [ %13, %31 ], [ %96, %407 ]
  %64 = load ptr, ptr %32, align 8, !tbaa !44
  %65 = getelementptr inbounds %struct.anon.0, ptr %64, i64 %61, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !45
  %67 = call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %66) #10
  %68 = call ptr @ccgSubSurf_getFaceUserData(ptr noundef %10, ptr noundef %66) #10
  %69 = getelementptr inbounds i32, ptr %68, i64 1
  %70 = load i32, ptr %69, align 4, !tbaa !54
  %71 = call ptr @ccgSubSurf_getFaceFaceHandle(ptr noundef %66) #10
  %72 = ptrtoint ptr %71 to i64
  br i1 %36, label %85, label %73

73:                                               ; preds = %60
  %74 = icmp eq ptr %63, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %73
  %76 = shl i64 %72, 32
  %77 = ashr exact i64 %76, 32
  %78 = getelementptr inbounds %struct.DMFlagMat, ptr %16, i64 %77, i32 1
  %79 = load i8, ptr %78, align 2, !tbaa !197
  %80 = and i8 %79, 1
  %81 = icmp ne i8 %80, 0
  br label %82

82:                                               ; preds = %75, %73
  %83 = phi i1 [ true, %73 ], [ %81, %75 ]
  %84 = zext i1 %83 to i32
  br label %85

85:                                               ; preds = %60, %82
  %86 = phi i32 [ %84, %82 ], [ 1, %60 ]
  %87 = icmp eq ptr %62, null
  %88 = mul nsw i32 %37, %67
  %89 = shl nsw i32 %88, 2
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.MCol, ptr %62, i64 %90
  %92 = select i1 %87, ptr null, ptr %91
  %93 = icmp eq ptr %63, null
  %94 = sext i32 %88 to i64
  %95 = getelementptr inbounds [4 x [3 x i16]], ptr %63, i64 %94
  %96 = select i1 %93, ptr null, ptr %95
  %97 = icmp eq i32 %70, -1
  br i1 %97, label %98, label %109

98:                                               ; preds = %85
  br i1 %35, label %106, label %99

99:                                               ; preds = %98
  %100 = shl i64 %72, 32
  %101 = ashr exact i64 %100, 32
  %102 = getelementptr inbounds %struct.DMFlagMat, ptr %16, i64 %101
  %103 = load i16, ptr %102, align 2, !tbaa !200
  %104 = sext i16 %103 to i32
  %105 = add nsw i32 %104, 1
  br label %106

106:                                              ; preds = %98, %99
  %107 = phi i32 [ %105, %99 ], [ 1, %98 ]
  %108 = call i32 %2(i32 noundef %107, ptr noundef null) #10
  br label %112

109:                                              ; preds = %85
  br i1 %38, label %112, label %110

110:                                              ; preds = %109
  %111 = call i32 %1(ptr noundef %4, i32 noundef %70) #10
  br label %112

112:                                              ; preds = %109, %110, %106
  %113 = phi i32 [ %108, %106 ], [ %111, %110 ], [ 1, %109 ]
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %407, label %115

115:                                              ; preds = %112
  %116 = icmp eq i32 %113, 3
  br i1 %116, label %117, label %118

117:                                              ; preds = %115
  call void @glEnable(i32 noundef 2882) #10
  call void @glPolygonStipple(ptr noundef nonnull @stipple_quarttone) #10
  br label %118

118:                                              ; preds = %117, %115
  call void @glShadeModel(i32 noundef 7425) #10
  %119 = icmp sgt i32 %67, 0
  br i1 %119, label %120, label %405

120:                                              ; preds = %118
  %121 = icmp eq i32 %86, 0
  br label %122

122:                                              ; preds = %120, %400
  %123 = phi i32 [ 0, %120 ], [ %403, %400 ]
  %124 = phi ptr [ %62, %120 ], [ %402, %400 ]
  %125 = phi ptr [ %63, %120 ], [ %401, %400 ]
  %126 = call ptr @ccgSubSurf_getFaceGridDataArray(ptr noundef %10, ptr noundef %66, i32 noundef %123) #10
  %127 = icmp eq ptr %125, null
  br i1 %127, label %202, label %128

128:                                              ; preds = %122
  call void @glBegin(i32 noundef 7) #10
  br i1 %39, label %129, label %397

129:                                              ; preds = %128, %199
  %130 = phi i32 [ %200, %199 ], [ 0, %128 ]
  %131 = phi ptr [ %196, %199 ], [ %124, %128 ]
  %132 = phi ptr [ %197, %199 ], [ %125, %128 ]
  %133 = add nuw nsw i32 %130, 1
  br label %134

134:                                              ; preds = %129, %194
  %135 = phi i32 [ 0, %129 ], [ %145, %194 ]
  %136 = phi ptr [ %131, %129 ], [ %196, %194 ]
  %137 = phi ptr [ %132, %129 ], [ %197, %194 ]
  %138 = load i32, ptr %40, align 4, !tbaa !396
  %139 = mul nsw i32 %138, %130
  %140 = add nsw i32 %139, %135
  %141 = load i32, ptr %41, align 4, !tbaa !268
  %142 = mul nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, ptr %126, i64 %143
  %145 = add nuw nsw i32 %135, 1
  %146 = add nsw i32 %139, %145
  %147 = mul nsw i32 %146, %141
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, ptr %126, i64 %148
  %150 = mul nsw i32 %138, %133
  %151 = add nsw i32 %150, %145
  %152 = mul nsw i32 %151, %141
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, ptr %126, i64 %153
  %155 = add nsw i32 %150, %135
  %156 = mul nsw i32 %155, %141
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, ptr %126, i64 %157
  %159 = icmp eq ptr %136, null
  br i1 %159, label %174, label %160

160:                                              ; preds = %134
  %161 = getelementptr inbounds i8, ptr %136, i64 7
  %162 = load i8, ptr %161, align 1, !tbaa !416
  %163 = getelementptr inbounds i8, ptr %136, i64 6
  %164 = load i8, ptr %163, align 1, !tbaa !416
  %165 = getelementptr inbounds i8, ptr %136, i64 5
  %166 = load i8, ptr %165, align 1, !tbaa !416
  call void @glColor3ub(i8 noundef zeroext %162, i8 noundef zeroext %164, i8 noundef zeroext %166) #10
  %167 = getelementptr inbounds [4 x [3 x i16]], ptr %137, i64 0, i64 1
  call void @glNormal3sv(ptr noundef nonnull %167) #10
  call void @glVertex3fv(ptr noundef %158) #10
  %168 = getelementptr inbounds i8, ptr %136, i64 11
  %169 = load i8, ptr %168, align 1, !tbaa !416
  %170 = getelementptr inbounds i8, ptr %136, i64 10
  %171 = load i8, ptr %170, align 1, !tbaa !416
  %172 = getelementptr inbounds i8, ptr %136, i64 9
  %173 = load i8, ptr %172, align 1, !tbaa !416
  call void @glColor3ub(i8 noundef zeroext %169, i8 noundef zeroext %171, i8 noundef zeroext %173) #10
  br label %176

174:                                              ; preds = %134
  %175 = getelementptr inbounds [4 x [3 x i16]], ptr %137, i64 0, i64 1
  call void @glNormal3sv(ptr noundef nonnull %175) #10
  call void @glVertex3fv(ptr noundef %158) #10
  br label %176

176:                                              ; preds = %174, %160
  %177 = getelementptr inbounds [4 x [3 x i16]], ptr %137, i64 0, i64 2
  call void @glNormal3sv(ptr noundef nonnull %177) #10
  call void @glVertex3fv(ptr noundef %154) #10
  br i1 %159, label %192, label %178

178:                                              ; preds = %176
  %179 = getelementptr inbounds i8, ptr %136, i64 15
  %180 = load i8, ptr %179, align 1, !tbaa !416
  %181 = getelementptr inbounds i8, ptr %136, i64 14
  %182 = load i8, ptr %181, align 1, !tbaa !416
  %183 = getelementptr inbounds i8, ptr %136, i64 13
  %184 = load i8, ptr %183, align 1, !tbaa !416
  call void @glColor3ub(i8 noundef zeroext %180, i8 noundef zeroext %182, i8 noundef zeroext %184) #10
  %185 = getelementptr inbounds [4 x [3 x i16]], ptr %137, i64 0, i64 3
  call void @glNormal3sv(ptr noundef nonnull %185) #10
  call void @glVertex3fv(ptr noundef %149) #10
  %186 = getelementptr inbounds i8, ptr %136, i64 3
  %187 = load i8, ptr %186, align 1, !tbaa !416
  %188 = getelementptr inbounds i8, ptr %136, i64 2
  %189 = load i8, ptr %188, align 1, !tbaa !416
  %190 = getelementptr inbounds i8, ptr %136, i64 1
  %191 = load i8, ptr %190, align 1, !tbaa !416
  call void @glColor3ub(i8 noundef zeroext %187, i8 noundef zeroext %189, i8 noundef zeroext %191) #10
  br label %194

192:                                              ; preds = %176
  %193 = getelementptr inbounds [4 x [3 x i16]], ptr %137, i64 0, i64 3
  call void @glNormal3sv(ptr noundef nonnull %193) #10
  call void @glVertex3fv(ptr noundef %149) #10
  br label %194

194:                                              ; preds = %192, %178
  call void @glNormal3sv(ptr noundef %137) #10
  call void @glVertex3fv(ptr noundef %144) #10
  %195 = getelementptr inbounds i8, ptr %136, i64 16
  %196 = select i1 %159, ptr null, ptr %195
  %197 = getelementptr inbounds [4 x [3 x i16]], ptr %137, i64 1
  %198 = icmp eq i32 %145, %18
  br i1 %198, label %199, label %134, !llvm.loop !417

199:                                              ; preds = %194
  %200 = add nuw nsw i32 %130, 1
  %201 = icmp eq i32 %200, %18
  br i1 %201, label %397, label %129, !llvm.loop !418

202:                                              ; preds = %122
  br i1 %121, label %296, label %203

203:                                              ; preds = %202
  br i1 %42, label %204, label %400

204:                                              ; preds = %203, %289
  %205 = phi i32 [ %262, %289 ], [ 0, %203 ]
  %206 = phi ptr [ %294, %289 ], [ %124, %203 ]
  call void @glBegin(i32 noundef 8) #10
  %207 = add nuw nsw i32 %205, 1
  br label %208

208:                                              ; preds = %204, %244
  %209 = phi i32 [ 0, %204 ], [ %252, %244 ]
  %210 = phi ptr [ %206, %204 ], [ %251, %244 ]
  %211 = load i32, ptr %43, align 4, !tbaa !396
  %212 = mul nsw i32 %211, %205
  %213 = add nsw i32 %212, %209
  %214 = load i32, ptr %44, align 4, !tbaa !268
  %215 = mul nsw i32 %213, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, ptr %126, i64 %216
  %218 = mul nsw i32 %211, %207
  %219 = add nsw i32 %218, %209
  %220 = mul nsw i32 %219, %214
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, ptr %126, i64 %221
  %223 = icmp ne ptr %210, null
  br i1 %223, label %224, label %240

224:                                              ; preds = %208
  %225 = getelementptr inbounds i8, ptr %210, i64 3
  %226 = load i8, ptr %225, align 1, !tbaa !416
  %227 = getelementptr inbounds i8, ptr %210, i64 2
  %228 = load i8, ptr %227, align 1, !tbaa !416
  %229 = getelementptr inbounds i8, ptr %210, i64 1
  %230 = load i8, ptr %229, align 1, !tbaa !416
  call void @glColor3ub(i8 noundef zeroext %226, i8 noundef zeroext %228, i8 noundef zeroext %230) #10
  %231 = load i32, ptr %46, align 4, !tbaa !278
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, ptr %217, i64 %232
  call void @glNormal3fv(ptr noundef %233) #10
  call void @glVertex3fv(ptr noundef %217) #10
  %234 = getelementptr inbounds i8, ptr %210, i64 7
  %235 = load i8, ptr %234, align 1, !tbaa !416
  %236 = getelementptr inbounds i8, ptr %210, i64 6
  %237 = load i8, ptr %236, align 1, !tbaa !416
  %238 = getelementptr inbounds i8, ptr %210, i64 5
  %239 = load i8, ptr %238, align 1, !tbaa !416
  call void @glColor3ub(i8 noundef zeroext %235, i8 noundef zeroext %237, i8 noundef zeroext %239) #10
  br label %244

240:                                              ; preds = %208
  %241 = load i32, ptr %45, align 4, !tbaa !278
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, ptr %217, i64 %242
  call void @glNormal3fv(ptr noundef %243) #10
  call void @glVertex3fv(ptr noundef %217) #10
  br label %244

244:                                              ; preds = %240, %224
  %245 = load i32, ptr %47, align 4, !tbaa !278
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, ptr %222, i64 %246
  call void @glNormal3fv(ptr noundef %247) #10
  call void @glVertex3fv(ptr noundef %222) #10
  %248 = icmp ne i32 %209, %48
  %249 = and i1 %223, %248
  %250 = select i1 %249, i64 16, i64 0
  %251 = getelementptr inbounds i8, ptr %210, i64 %250
  %252 = add nuw nsw i32 %209, 1
  %253 = icmp eq i32 %252, %18
  br i1 %253, label %254, label %208, !llvm.loop !419

254:                                              ; preds = %244
  %255 = load i32, ptr %49, align 4, !tbaa !396
  %256 = mul nsw i32 %255, %205
  %257 = add nsw i32 %256, %252
  %258 = load i32, ptr %50, align 4, !tbaa !268
  %259 = mul nsw i32 %257, %258
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, ptr %126, i64 %260
  %262 = add nuw nsw i32 %205, 1
  %263 = mul nsw i32 %255, %262
  %264 = add nsw i32 %263, %252
  %265 = mul nsw i32 %264, %258
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, ptr %126, i64 %266
  %268 = icmp eq ptr %210, null
  br i1 %268, label %285, label %269

269:                                              ; preds = %254
  %270 = getelementptr inbounds i8, ptr %251, i64 15
  %271 = load i8, ptr %270, align 1, !tbaa !416
  %272 = getelementptr inbounds i8, ptr %251, i64 14
  %273 = load i8, ptr %272, align 1, !tbaa !416
  %274 = getelementptr inbounds i8, ptr %251, i64 13
  %275 = load i8, ptr %274, align 1, !tbaa !416
  call void @glColor3ub(i8 noundef zeroext %271, i8 noundef zeroext %273, i8 noundef zeroext %275) #10
  %276 = load i32, ptr %51, align 4, !tbaa !278
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8, ptr %261, i64 %277
  call void @glNormal3fv(ptr noundef %278) #10
  call void @glVertex3fv(ptr noundef %261) #10
  %279 = getelementptr inbounds i8, ptr %251, i64 11
  %280 = load i8, ptr %279, align 1, !tbaa !416
  %281 = getelementptr inbounds i8, ptr %251, i64 10
  %282 = load i8, ptr %281, align 1, !tbaa !416
  %283 = getelementptr inbounds i8, ptr %251, i64 9
  %284 = load i8, ptr %283, align 1, !tbaa !416
  call void @glColor3ub(i8 noundef zeroext %280, i8 noundef zeroext %282, i8 noundef zeroext %284) #10
  br label %289

285:                                              ; preds = %254
  %286 = load i32, ptr %52, align 4, !tbaa !278
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8, ptr %261, i64 %287
  call void @glNormal3fv(ptr noundef %288) #10
  call void @glVertex3fv(ptr noundef %261) #10
  br label %289

289:                                              ; preds = %285, %269
  %290 = load i32, ptr %53, align 4, !tbaa !278
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8, ptr %267, i64 %291
  call void @glNormal3fv(ptr noundef %292) #10
  call void @glVertex3fv(ptr noundef %267) #10
  %293 = getelementptr inbounds i8, ptr %251, i64 16
  %294 = select i1 %268, ptr null, ptr %293
  call void @glEnd() #10
  %295 = icmp eq i32 %262, %18
  br i1 %295, label %400, label %204, !llvm.loop !420

296:                                              ; preds = %202
  call void @glBegin(i32 noundef 7) #10
  br i1 %54, label %297, label %397

297:                                              ; preds = %296, %394
  %298 = phi i32 [ %395, %394 ], [ 0, %296 ]
  %299 = phi ptr [ %392, %394 ], [ %124, %296 ]
  %300 = add nuw nsw i32 %298, 1
  br label %301

301:                                              ; preds = %297, %390
  %302 = phi i32 [ 0, %297 ], [ %311, %390 ]
  %303 = phi ptr [ %299, %297 ], [ %392, %390 ]
  %304 = load i32, ptr %55, align 4, !tbaa !396
  %305 = mul nsw i32 %304, %298
  %306 = add nsw i32 %305, %302
  %307 = load i32, ptr %56, align 4, !tbaa !268
  %308 = mul nsw i32 %306, %307
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8, ptr %126, i64 %309
  %311 = add nuw nsw i32 %302, 1
  %312 = add nsw i32 %305, %311
  %313 = mul nsw i32 %312, %307
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i8, ptr %126, i64 %314
  %316 = mul nsw i32 %304, %300
  %317 = add nsw i32 %316, %311
  %318 = mul nsw i32 %317, %307
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8, ptr %126, i64 %319
  %321 = add nsw i32 %316, %302
  %322 = mul nsw i32 %321, %307
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8, ptr %126, i64 %323
  %325 = load float, ptr %320, align 4, !tbaa !66
  %326 = load float, ptr %310, align 4, !tbaa !66
  %327 = fsub float %325, %326
  %328 = getelementptr inbounds float, ptr %320, i64 1
  %329 = load float, ptr %328, align 4, !tbaa !66
  %330 = getelementptr inbounds float, ptr %310, i64 1
  %331 = load float, ptr %330, align 4, !tbaa !66
  %332 = fsub float %329, %331
  %333 = getelementptr inbounds float, ptr %320, i64 2
  %334 = load float, ptr %333, align 4, !tbaa !66
  %335 = getelementptr inbounds float, ptr %310, i64 2
  %336 = load float, ptr %335, align 4, !tbaa !66
  %337 = fsub float %334, %336
  %338 = load float, ptr %324, align 4, !tbaa !66
  %339 = load float, ptr %315, align 4, !tbaa !66
  %340 = fsub float %338, %339
  %341 = getelementptr inbounds float, ptr %324, i64 1
  %342 = load float, ptr %341, align 4, !tbaa !66
  %343 = getelementptr inbounds float, ptr %315, i64 1
  %344 = load float, ptr %343, align 4, !tbaa !66
  %345 = fsub float %342, %344
  %346 = getelementptr inbounds float, ptr %324, i64 2
  %347 = load float, ptr %346, align 4, !tbaa !66
  %348 = getelementptr inbounds float, ptr %315, i64 2
  %349 = load float, ptr %348, align 4, !tbaa !66
  %350 = fsub float %347, %349
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %351 = fneg float %350
  %352 = fmul float %332, %351
  %353 = call float @llvm.fmuladd.f32(float %345, float %337, float %352)
  store float %353, ptr %7, align 4, !tbaa !66
  %354 = fneg float %340
  %355 = fmul float %337, %354
  %356 = call float @llvm.fmuladd.f32(float %350, float %327, float %355)
  store float %356, ptr %57, align 4, !tbaa !66
  %357 = fneg float %345
  %358 = fmul float %327, %357
  %359 = call float @llvm.fmuladd.f32(float %340, float %332, float %358)
  store float %359, ptr %58, align 4, !tbaa !66
  call void @glNormal3fv(ptr noundef nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  %360 = icmp eq ptr %303, null
  br i1 %360, label %374, label %361

361:                                              ; preds = %301
  %362 = getelementptr inbounds i8, ptr %303, i64 7
  %363 = load i8, ptr %362, align 1, !tbaa !416
  %364 = getelementptr inbounds i8, ptr %303, i64 6
  %365 = load i8, ptr %364, align 1, !tbaa !416
  %366 = getelementptr inbounds i8, ptr %303, i64 5
  %367 = load i8, ptr %366, align 1, !tbaa !416
  call void @glColor3ub(i8 noundef zeroext %363, i8 noundef zeroext %365, i8 noundef zeroext %367) #10
  call void @glVertex3fv(ptr noundef nonnull %324) #10
  %368 = getelementptr inbounds i8, ptr %303, i64 11
  %369 = load i8, ptr %368, align 1, !tbaa !416
  %370 = getelementptr inbounds i8, ptr %303, i64 10
  %371 = load i8, ptr %370, align 1, !tbaa !416
  %372 = getelementptr inbounds i8, ptr %303, i64 9
  %373 = load i8, ptr %372, align 1, !tbaa !416
  call void @glColor3ub(i8 noundef zeroext %369, i8 noundef zeroext %371, i8 noundef zeroext %373) #10
  br label %375

374:                                              ; preds = %301
  call void @glVertex3fv(ptr noundef nonnull %324) #10
  br label %375

375:                                              ; preds = %374, %361
  call void @glVertex3fv(ptr noundef nonnull %320) #10
  br i1 %360, label %389, label %376

376:                                              ; preds = %375
  %377 = getelementptr inbounds i8, ptr %303, i64 15
  %378 = load i8, ptr %377, align 1, !tbaa !416
  %379 = getelementptr inbounds i8, ptr %303, i64 14
  %380 = load i8, ptr %379, align 1, !tbaa !416
  %381 = getelementptr inbounds i8, ptr %303, i64 13
  %382 = load i8, ptr %381, align 1, !tbaa !416
  call void @glColor3ub(i8 noundef zeroext %378, i8 noundef zeroext %380, i8 noundef zeroext %382) #10
  call void @glVertex3fv(ptr noundef nonnull %315) #10
  %383 = getelementptr inbounds i8, ptr %303, i64 3
  %384 = load i8, ptr %383, align 1, !tbaa !416
  %385 = getelementptr inbounds i8, ptr %303, i64 2
  %386 = load i8, ptr %385, align 1, !tbaa !416
  %387 = getelementptr inbounds i8, ptr %303, i64 1
  %388 = load i8, ptr %387, align 1, !tbaa !416
  call void @glColor3ub(i8 noundef zeroext %384, i8 noundef zeroext %386, i8 noundef zeroext %388) #10
  br label %390

389:                                              ; preds = %375
  call void @glVertex3fv(ptr noundef nonnull %315) #10
  br label %390

390:                                              ; preds = %389, %376
  call void @glVertex3fv(ptr noundef nonnull %310) #10
  %391 = getelementptr inbounds i8, ptr %303, i64 16
  %392 = select i1 %360, ptr null, ptr %391
  %393 = icmp eq i32 %311, %18
  br i1 %393, label %394, label %301, !llvm.loop !421

394:                                              ; preds = %390
  %395 = add nuw nsw i32 %298, 1
  %396 = icmp eq i32 %395, %18
  br i1 %396, label %397, label %297, !llvm.loop !422

397:                                              ; preds = %199, %394, %296, %128
  %398 = phi ptr [ %125, %128 ], [ null, %296 ], [ null, %394 ], [ %197, %199 ]
  %399 = phi ptr [ %124, %128 ], [ %124, %296 ], [ %392, %394 ], [ %196, %199 ]
  call void @glEnd() #10
  br label %400

400:                                              ; preds = %289, %397, %203
  %401 = phi ptr [ null, %203 ], [ %398, %397 ], [ null, %289 ]
  %402 = phi ptr [ %124, %203 ], [ %399, %397 ], [ %294, %289 ]
  %403 = add nuw nsw i32 %123, 1
  %404 = icmp eq i32 %403, %67
  br i1 %404, label %405, label %122, !llvm.loop !423

405:                                              ; preds = %400, %118
  br i1 %116, label %406, label %407

406:                                              ; preds = %405
  call void @glDisable(i32 noundef 2882) #10
  br label %407

407:                                              ; preds = %405, %406, %112
  %408 = add nuw nsw i64 %61, 1
  %409 = icmp eq i64 %408, %59
  br i1 %409, label %410, label %60, !llvm.loop !424

410:                                              ; preds = %407, %27
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_drawMappedFacesTex(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3, i32 noundef %4) #0 {
  tail call fastcc void @ccgDM_drawFacesTex_common(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_drawMappedFacesGLSL(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.CCGKey, align 4
  %9 = alloca %struct.GPUVertexAttribs, align 4
  %10 = alloca %struct.DMVertexAttribs, align 8
  %11 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 2564, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %10) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %10, i8 0, i64 376, i1 false)
  %13 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %12) #10
  %14 = add i32 %13, -1
  %15 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %12) #10
  %16 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !184
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %19 = load ptr, ptr %18, align 8, !tbaa !405
  %20 = tail call ptr %19(ptr noundef %0, i32 noundef 40) #10
  call void @CCG_key_top_level(ptr noundef nonnull %8, ptr noundef %12) #10
  %21 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 11
  %22 = load ptr, ptr %21, align 8, !tbaa !354
  %23 = icmp eq ptr %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20
  %26 = load ptr, ptr %25, align 8, !tbaa !339
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %28

28:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  call void @BKE_pbvh_get_grid_updates(ptr noundef nonnull %22, i32 noundef 1, ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  %29 = load i32, ptr %7, align 4, !tbaa !54
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %11, align 8, !tbaa !34
  %33 = load ptr, ptr %6, align 8, !tbaa !100
  %34 = call i32 @ccgSubSurf_updateFromFaces(ptr noundef %32, i32 noundef 0, ptr noundef %33, i32 noundef %29) #10
  %35 = load ptr, ptr %11, align 8, !tbaa !34
  %36 = load ptr, ptr %6, align 8, !tbaa !100
  %37 = load i32, ptr %7, align 4, !tbaa !54
  %38 = call i32 @ccgSubSurf_updateNormals(ptr noundef %35, ptr noundef %36, i32 noundef %37) #10
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  %40 = load ptr, ptr %6, align 8, !tbaa !100
  call void %39(ptr noundef %40) #10
  br label %41

41:                                               ; preds = %31, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  br label %42

42:                                               ; preds = %4, %24, %41
  %43 = call i32 @ccgSubSurf_getNumFaces(ptr noundef %12) #10
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %386

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %47 = icmp eq ptr %17, null
  %48 = mul nsw i32 %14, %14
  %49 = icmp ne ptr %2, null
  %50 = icmp sgt i32 %13, 1
  %51 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 2
  %52 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 1
  %53 = getelementptr inbounds %struct.DMVertexAttribs, ptr %10, i64 0, i32 7
  %54 = icmp sgt i32 %13, 1
  %55 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 2
  %56 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 1
  %57 = getelementptr inbounds %struct.DMVertexAttribs, ptr %10, i64 0, i32 7
  %58 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 5
  %59 = add nsw i32 %13, -2
  %60 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 2
  %61 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 1
  %62 = getelementptr inbounds %struct.DMVertexAttribs, ptr %10, i64 0, i32 7
  %63 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 5
  %64 = icmp sgt i32 %13, 1
  %65 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 2
  %66 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 1
  %67 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %68 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %69 = getelementptr inbounds %struct.DMVertexAttribs, ptr %10, i64 0, i32 7
  %70 = zext nneg i32 %43 to i64
  br label %71

71:                                               ; preds = %45, %382
  %72 = phi i64 [ 0, %45 ], [ %384, %382 ]
  %73 = phi ptr [ %20, %45 ], [ %111, %382 ]
  %74 = phi i32 [ 0, %45 ], [ %383, %382 ]
  %75 = phi i32 [ 0, %45 ], [ %119, %382 ]
  %76 = phi i32 [ -1, %45 ], [ %118, %382 ]
  %77 = load ptr, ptr %46, align 8, !tbaa !44
  %78 = getelementptr inbounds %struct.anon.0, ptr %77, i64 %72, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !45
  %80 = call ptr @ccgSubSurf_getFaceFaceHandle(ptr noundef %79) #10
  %81 = ptrtoint ptr %80 to i64
  %82 = call ptr @ccgSubSurf_getFaceUserData(ptr noundef %12, ptr noundef %79) #10
  %83 = getelementptr inbounds i32, ptr %82, i64 1
  %84 = load i32, ptr %83, align 4, !tbaa !54
  %85 = call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %79) #10
  br i1 %47, label %104, label %86

86:                                               ; preds = %71
  %87 = icmp eq ptr %73, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %86
  %89 = shl i64 %81, 32
  %90 = ashr exact i64 %89, 32
  %91 = getelementptr inbounds %struct.DMFlagMat, ptr %17, i64 %90, i32 1
  %92 = load i8, ptr %91, align 2, !tbaa !197
  %93 = and i8 %92, 1
  %94 = icmp ne i8 %93, 0
  br label %95

95:                                               ; preds = %88, %86
  %96 = phi i1 [ true, %86 ], [ %94, %88 ]
  %97 = zext i1 %96 to i32
  %98 = shl i64 %81, 32
  %99 = ashr exact i64 %98, 32
  %100 = getelementptr inbounds %struct.DMFlagMat, ptr %17, i64 %99
  %101 = load i16, ptr %100, align 2, !tbaa !200
  %102 = sext i16 %101 to i32
  %103 = add nsw i32 %102, 1
  br label %104

104:                                              ; preds = %71, %95
  %105 = phi i32 [ %97, %95 ], [ 1, %71 ]
  %106 = phi i32 [ %103, %95 ], [ 1, %71 ]
  %107 = icmp eq ptr %73, null
  %108 = mul nsw i32 %48, %85
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [4 x [3 x i16]], ptr %73, i64 %109
  %111 = select i1 %107, ptr null, ptr %110
  %112 = icmp eq i32 %106, %76
  br i1 %112, label %117, label %113

113:                                              ; preds = %104
  %114 = call i32 %1(i32 noundef %106, ptr noundef nonnull %9) #10
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  call void @DM_vertex_attributes_from_gpu(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %10) #10
  br label %117

117:                                              ; preds = %113, %116, %104
  %118 = phi i32 [ %106, %116 ], [ %106, %113 ], [ %76, %104 ]
  %119 = phi i32 [ %114, %116 ], [ 0, %113 ], [ %75, %104 ]
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %117
  %122 = icmp ne i32 %84, -1
  %123 = select i1 %49, i1 %122, i1 false
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = call i32 %2(ptr noundef %3, i32 noundef %84) #10
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124, %117
  %128 = add nsw i32 %108, %74
  br label %382

129:                                              ; preds = %124, %121
  %130 = icmp eq i32 %105, 0
  %131 = select i1 %130, i32 7424, i32 7425
  call void @glShadeModel(i32 noundef %131) #10
  %132 = icmp sgt i32 %85, 0
  br i1 %132, label %133, label %382

133:                                              ; preds = %129, %377
  %134 = phi i32 [ %379, %377 ], [ %74, %129 ]
  %135 = phi ptr [ %378, %377 ], [ %73, %129 ]
  %136 = phi i32 [ %380, %377 ], [ 0, %129 ]
  %137 = call ptr @ccgSubSurf_getFaceGridDataArray(ptr noundef %12, ptr noundef %79, i32 noundef %136) #10
  %138 = icmp eq ptr %135, null
  br i1 %138, label %203, label %139

139:                                              ; preds = %133
  call void @glBegin(i32 noundef 7) #10
  br i1 %50, label %140, label %374

140:                                              ; preds = %139, %200
  %141 = phi i32 [ %198, %200 ], [ %134, %139 ]
  %142 = phi ptr [ %197, %200 ], [ %135, %139 ]
  %143 = phi i32 [ %201, %200 ], [ 0, %139 ]
  %144 = add nuw nsw i32 %143, 1
  br label %145

145:                                              ; preds = %140, %195
  %146 = phi i32 [ %141, %140 ], [ %198, %195 ]
  %147 = phi ptr [ %142, %140 ], [ %197, %195 ]
  %148 = phi i32 [ 0, %140 ], [ %156, %195 ]
  %149 = load i32, ptr %51, align 4, !tbaa !396
  %150 = mul nsw i32 %149, %143
  %151 = add nsw i32 %150, %148
  %152 = load i32, ptr %52, align 4, !tbaa !268
  %153 = mul nsw i32 %151, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, ptr %137, i64 %154
  %156 = add nuw nsw i32 %148, 1
  %157 = add nsw i32 %150, %156
  %158 = mul nsw i32 %157, %152
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, ptr %137, i64 %159
  %161 = mul nsw i32 %149, %144
  %162 = add nsw i32 %161, %156
  %163 = mul nsw i32 %162, %152
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, ptr %137, i64 %164
  %166 = add nsw i32 %161, %148
  %167 = mul nsw i32 %166, %152
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, ptr %137, i64 %168
  %170 = load i32, ptr %53, align 4, !tbaa !425
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %145
  %173 = call fastcc i32 @getFaceIndex(ptr noundef %12, ptr noundef %79, i32 noundef %136, i32 noundef %148, i32 noundef %144, i32 noundef %15, i32 noundef %13)
  br label %174

174:                                              ; preds = %145, %172
  %175 = phi i32 [ %173, %172 ], [ 0, %145 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %10, i32 noundef %146, i32 noundef %175, i32 noundef 1)
  %176 = getelementptr inbounds [4 x [3 x i16]], ptr %147, i64 0, i64 1
  call void @glNormal3sv(ptr noundef nonnull %176) #10
  call void @glVertex3fv(ptr noundef %169) #10
  %177 = load i32, ptr %53, align 4, !tbaa !425
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %174
  %180 = call fastcc i32 @getFaceIndex(ptr noundef %12, ptr noundef %79, i32 noundef %136, i32 noundef %156, i32 noundef %144, i32 noundef %15, i32 noundef %13)
  br label %181

181:                                              ; preds = %174, %179
  %182 = phi i32 [ %180, %179 ], [ 0, %174 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %10, i32 noundef %146, i32 noundef %182, i32 noundef 2)
  %183 = getelementptr inbounds [4 x [3 x i16]], ptr %147, i64 0, i64 2
  call void @glNormal3sv(ptr noundef nonnull %183) #10
  call void @glVertex3fv(ptr noundef %165) #10
  %184 = load i32, ptr %53, align 4, !tbaa !425
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %181
  %187 = call fastcc i32 @getFaceIndex(ptr noundef %12, ptr noundef %79, i32 noundef %136, i32 noundef %156, i32 noundef %143, i32 noundef %15, i32 noundef %13)
  br label %188

188:                                              ; preds = %181, %186
  %189 = phi i32 [ %187, %186 ], [ 0, %181 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %10, i32 noundef %146, i32 noundef %189, i32 noundef 3)
  %190 = getelementptr inbounds [4 x [3 x i16]], ptr %147, i64 0, i64 3
  call void @glNormal3sv(ptr noundef nonnull %190) #10
  call void @glVertex3fv(ptr noundef %160) #10
  %191 = load i32, ptr %53, align 4, !tbaa !425
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %188
  %194 = call fastcc i32 @getFaceIndex(ptr noundef %12, ptr noundef %79, i32 noundef %136, i32 noundef %148, i32 noundef %143, i32 noundef %15, i32 noundef %13)
  br label %195

195:                                              ; preds = %188, %193
  %196 = phi i32 [ %194, %193 ], [ 0, %188 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %10, i32 noundef %146, i32 noundef %196, i32 noundef 0)
  call void @glNormal3sv(ptr noundef %147) #10
  call void @glVertex3fv(ptr noundef %155) #10
  %197 = getelementptr inbounds [4 x [3 x i16]], ptr %147, i64 1
  %198 = add nsw i32 %146, 1
  %199 = icmp eq i32 %156, %14
  br i1 %199, label %200, label %145, !llvm.loop !429

200:                                              ; preds = %195
  %201 = add nuw nsw i32 %143, 1
  %202 = icmp eq i32 %201, %14
  br i1 %202, label %374, label %140, !llvm.loop !430

203:                                              ; preds = %133
  br i1 %130, label %281, label %204

204:                                              ; preds = %203
  br i1 %54, label %205, label %377

205:                                              ; preds = %204, %274
  %206 = phi i32 [ %279, %274 ], [ %134, %204 ]
  %207 = phi i32 [ %255, %274 ], [ 0, %204 ]
  call void @glBegin(i32 noundef 8) #10
  %208 = add nuw nsw i32 %207, 1
  br label %209

209:                                              ; preds = %205, %237
  %210 = phi i32 [ %206, %205 ], [ %244, %237 ]
  %211 = phi i32 [ 0, %205 ], [ %245, %237 ]
  %212 = load i32, ptr %55, align 4, !tbaa !396
  %213 = mul nsw i32 %212, %207
  %214 = add nsw i32 %213, %211
  %215 = load i32, ptr %56, align 4, !tbaa !268
  %216 = mul nsw i32 %214, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, ptr %137, i64 %217
  %219 = mul nsw i32 %212, %208
  %220 = add nsw i32 %219, %211
  %221 = mul nsw i32 %220, %215
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, ptr %137, i64 %222
  %224 = load i32, ptr %57, align 4, !tbaa !425
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %228, label %226

226:                                              ; preds = %209
  %227 = call fastcc i32 @getFaceIndex(ptr noundef %12, ptr noundef %79, i32 noundef %136, i32 noundef %211, i32 noundef %207, i32 noundef %15, i32 noundef %13)
  br label %228

228:                                              ; preds = %209, %226
  %229 = phi i32 [ %227, %226 ], [ 0, %209 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %10, i32 noundef %210, i32 noundef %229, i32 noundef 0)
  %230 = load i32, ptr %58, align 4, !tbaa !278
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, ptr %218, i64 %231
  call void @glNormal3fv(ptr noundef %232) #10
  call void @glVertex3fv(ptr noundef %218) #10
  %233 = load i32, ptr %57, align 4, !tbaa !425
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %237, label %235

235:                                              ; preds = %228
  %236 = call fastcc i32 @getFaceIndex(ptr noundef %12, ptr noundef %79, i32 noundef %136, i32 noundef %211, i32 noundef %208, i32 noundef %15, i32 noundef %13)
  br label %237

237:                                              ; preds = %228, %235
  %238 = phi i32 [ %236, %235 ], [ 0, %228 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %10, i32 noundef %210, i32 noundef %238, i32 noundef 1)
  %239 = load i32, ptr %58, align 4, !tbaa !278
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8, ptr %223, i64 %240
  call void @glNormal3fv(ptr noundef %241) #10
  call void @glVertex3fv(ptr noundef %223) #10
  %242 = icmp ne i32 %211, %59
  %243 = zext i1 %242 to i32
  %244 = add nsw i32 %210, %243
  %245 = add nuw nsw i32 %211, 1
  %246 = icmp eq i32 %245, %14
  br i1 %246, label %247, label %209, !llvm.loop !431

247:                                              ; preds = %237
  %248 = load i32, ptr %60, align 4, !tbaa !396
  %249 = mul nsw i32 %248, %207
  %250 = add nsw i32 %249, %245
  %251 = load i32, ptr %61, align 4, !tbaa !268
  %252 = mul nsw i32 %250, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, ptr %137, i64 %253
  %255 = add nuw nsw i32 %207, 1
  %256 = mul nsw i32 %248, %255
  %257 = add nsw i32 %256, %245
  %258 = mul nsw i32 %257, %251
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, ptr %137, i64 %259
  %261 = load i32, ptr %62, align 4, !tbaa !425
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %265, label %263

263:                                              ; preds = %247
  %264 = call fastcc i32 @getFaceIndex(ptr noundef %12, ptr noundef %79, i32 noundef %136, i32 noundef %245, i32 noundef %207, i32 noundef %15, i32 noundef %13)
  br label %265

265:                                              ; preds = %247, %263
  %266 = phi i32 [ %264, %263 ], [ 0, %247 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %10, i32 noundef %244, i32 noundef %266, i32 noundef 3)
  %267 = load i32, ptr %63, align 4, !tbaa !278
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, ptr %254, i64 %268
  call void @glNormal3fv(ptr noundef %269) #10
  call void @glVertex3fv(ptr noundef %254) #10
  %270 = load i32, ptr %62, align 4, !tbaa !425
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %274, label %272

272:                                              ; preds = %265
  %273 = call fastcc i32 @getFaceIndex(ptr noundef %12, ptr noundef %79, i32 noundef %136, i32 noundef %245, i32 noundef %255, i32 noundef %15, i32 noundef %13)
  br label %274

274:                                              ; preds = %265, %272
  %275 = phi i32 [ %273, %272 ], [ 0, %265 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %10, i32 noundef %244, i32 noundef %275, i32 noundef 2)
  %276 = load i32, ptr %63, align 4, !tbaa !278
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8, ptr %260, i64 %277
  call void @glNormal3fv(ptr noundef %278) #10
  call void @glVertex3fv(ptr noundef %260) #10
  call void @glEnd() #10
  %279 = add nsw i32 %244, 1
  %280 = icmp eq i32 %255, %14
  br i1 %280, label %377, label %205, !llvm.loop !432

281:                                              ; preds = %203
  call void @glBegin(i32 noundef 7) #10
  br i1 %64, label %282, label %374

282:                                              ; preds = %281, %371
  %283 = phi i32 [ %369, %371 ], [ %134, %281 ]
  %284 = phi i32 [ %372, %371 ], [ 0, %281 ]
  %285 = add nuw nsw i32 %284, 1
  br label %286

286:                                              ; preds = %282, %367
  %287 = phi i32 [ %283, %282 ], [ %369, %367 ]
  %288 = phi i32 [ 0, %282 ], [ %296, %367 ]
  %289 = load i32, ptr %65, align 4, !tbaa !396
  %290 = mul nsw i32 %289, %284
  %291 = add nsw i32 %290, %288
  %292 = load i32, ptr %66, align 4, !tbaa !268
  %293 = mul nsw i32 %291, %292
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i8, ptr %137, i64 %294
  %296 = add nuw nsw i32 %288, 1
  %297 = add nsw i32 %290, %296
  %298 = mul nsw i32 %297, %292
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i8, ptr %137, i64 %299
  %301 = mul nsw i32 %289, %285
  %302 = add nsw i32 %301, %296
  %303 = mul nsw i32 %302, %292
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8, ptr %137, i64 %304
  %306 = add nsw i32 %301, %288
  %307 = mul nsw i32 %306, %292
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8, ptr %137, i64 %308
  %310 = load float, ptr %305, align 4, !tbaa !66
  %311 = load float, ptr %295, align 4, !tbaa !66
  %312 = fsub float %310, %311
  %313 = getelementptr inbounds float, ptr %305, i64 1
  %314 = load float, ptr %313, align 4, !tbaa !66
  %315 = getelementptr inbounds float, ptr %295, i64 1
  %316 = load float, ptr %315, align 4, !tbaa !66
  %317 = fsub float %314, %316
  %318 = getelementptr inbounds float, ptr %305, i64 2
  %319 = load float, ptr %318, align 4, !tbaa !66
  %320 = getelementptr inbounds float, ptr %295, i64 2
  %321 = load float, ptr %320, align 4, !tbaa !66
  %322 = fsub float %319, %321
  %323 = load float, ptr %309, align 4, !tbaa !66
  %324 = load float, ptr %300, align 4, !tbaa !66
  %325 = fsub float %323, %324
  %326 = getelementptr inbounds float, ptr %309, i64 1
  %327 = load float, ptr %326, align 4, !tbaa !66
  %328 = getelementptr inbounds float, ptr %300, i64 1
  %329 = load float, ptr %328, align 4, !tbaa !66
  %330 = fsub float %327, %329
  %331 = getelementptr inbounds float, ptr %309, i64 2
  %332 = load float, ptr %331, align 4, !tbaa !66
  %333 = getelementptr inbounds float, ptr %300, i64 2
  %334 = load float, ptr %333, align 4, !tbaa !66
  %335 = fsub float %332, %334
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %336 = fneg float %335
  %337 = fmul float %317, %336
  %338 = call float @llvm.fmuladd.f32(float %330, float %322, float %337)
  store float %338, ptr %5, align 4, !tbaa !66
  %339 = fneg float %325
  %340 = fmul float %322, %339
  %341 = call float @llvm.fmuladd.f32(float %335, float %312, float %340)
  store float %341, ptr %67, align 4, !tbaa !66
  %342 = fneg float %330
  %343 = fmul float %312, %342
  %344 = call float @llvm.fmuladd.f32(float %325, float %317, float %343)
  store float %344, ptr %68, align 4, !tbaa !66
  call void @glNormal3fv(ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  %345 = load i32, ptr %69, align 4, !tbaa !425
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %349, label %347

347:                                              ; preds = %286
  %348 = call fastcc i32 @getFaceIndex(ptr noundef %12, ptr noundef %79, i32 noundef %136, i32 noundef %288, i32 noundef %285, i32 noundef %15, i32 noundef %13)
  br label %349

349:                                              ; preds = %286, %347
  %350 = phi i32 [ %348, %347 ], [ 0, %286 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %10, i32 noundef %287, i32 noundef %350, i32 noundef 1)
  call void @glVertex3fv(ptr noundef nonnull %309) #10
  %351 = load i32, ptr %69, align 4, !tbaa !425
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %355, label %353

353:                                              ; preds = %349
  %354 = call fastcc i32 @getFaceIndex(ptr noundef %12, ptr noundef %79, i32 noundef %136, i32 noundef %296, i32 noundef %285, i32 noundef %15, i32 noundef %13)
  br label %355

355:                                              ; preds = %349, %353
  %356 = phi i32 [ %354, %353 ], [ 0, %349 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %10, i32 noundef %287, i32 noundef %356, i32 noundef 2)
  call void @glVertex3fv(ptr noundef nonnull %305) #10
  %357 = load i32, ptr %69, align 4, !tbaa !425
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %361, label %359

359:                                              ; preds = %355
  %360 = call fastcc i32 @getFaceIndex(ptr noundef %12, ptr noundef %79, i32 noundef %136, i32 noundef %296, i32 noundef %284, i32 noundef %15, i32 noundef %13)
  br label %361

361:                                              ; preds = %355, %359
  %362 = phi i32 [ %360, %359 ], [ 0, %355 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %10, i32 noundef %287, i32 noundef %362, i32 noundef 3)
  call void @glVertex3fv(ptr noundef nonnull %300) #10
  %363 = load i32, ptr %69, align 4, !tbaa !425
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %367, label %365

365:                                              ; preds = %361
  %366 = call fastcc i32 @getFaceIndex(ptr noundef %12, ptr noundef %79, i32 noundef %136, i32 noundef %288, i32 noundef %284, i32 noundef %15, i32 noundef %13)
  br label %367

367:                                              ; preds = %361, %365
  %368 = phi i32 [ %366, %365 ], [ 0, %361 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %10, i32 noundef %287, i32 noundef %368, i32 noundef 0)
  call void @glVertex3fv(ptr noundef nonnull %295) #10
  %369 = add nsw i32 %287, 1
  %370 = icmp eq i32 %296, %14
  br i1 %370, label %371, label %286, !llvm.loop !433

371:                                              ; preds = %367
  %372 = add nuw nsw i32 %284, 1
  %373 = icmp eq i32 %372, %14
  br i1 %373, label %374, label %282, !llvm.loop !434

374:                                              ; preds = %200, %371, %281, %139
  %375 = phi ptr [ %135, %139 ], [ null, %281 ], [ null, %371 ], [ %197, %200 ]
  %376 = phi i32 [ %134, %139 ], [ %134, %281 ], [ %369, %371 ], [ %198, %200 ]
  call void @glEnd() #10
  br label %377

377:                                              ; preds = %274, %374, %204
  %378 = phi ptr [ null, %204 ], [ %375, %374 ], [ null, %274 ]
  %379 = phi i32 [ %134, %204 ], [ %376, %374 ], [ %279, %274 ]
  %380 = add nuw nsw i32 %136, 1
  %381 = icmp eq i32 %380, %85
  br i1 %381, label %382, label %133, !llvm.loop !435

382:                                              ; preds = %377, %129, %127
  %383 = phi i32 [ %128, %127 ], [ %74, %129 ], [ %379, %377 ]
  %384 = add nuw nsw i64 %72, 1
  %385 = icmp eq i64 %384, %70
  br i1 %385, label %386, label %71, !llvm.loop !436

386:                                              ; preds = %382, %42
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 2564, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_drawMappedFacesMat(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.CCGKey, align 4
  %9 = alloca %struct.GPUVertexAttribs, align 4
  %10 = alloca %struct.DMVertexAttribs, align 8
  %11 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 2564, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %10) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %10, i8 0, i64 376, i1 false)
  %13 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %12) #10
  %14 = add i32 %13, -1
  %15 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %12) #10
  %16 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !184
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %19 = load ptr, ptr %18, align 8, !tbaa !405
  %20 = tail call ptr %19(ptr noundef %0, i32 noundef 40) #10
  call void @CCG_key_top_level(ptr noundef nonnull %8, ptr noundef %12) #10
  %21 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 11
  %22 = load ptr, ptr %21, align 8, !tbaa !354
  %23 = icmp eq ptr %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20
  %26 = load ptr, ptr %25, align 8, !tbaa !339
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %28

28:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  call void @BKE_pbvh_get_grid_updates(ptr noundef nonnull %22, i32 noundef 1, ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  %29 = load i32, ptr %7, align 4, !tbaa !54
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %11, align 8, !tbaa !34
  %33 = load ptr, ptr %6, align 8, !tbaa !100
  %34 = call i32 @ccgSubSurf_updateFromFaces(ptr noundef %32, i32 noundef 0, ptr noundef %33, i32 noundef %29) #10
  %35 = load ptr, ptr %11, align 8, !tbaa !34
  %36 = load ptr, ptr %6, align 8, !tbaa !100
  %37 = load i32, ptr %7, align 4, !tbaa !54
  %38 = call i32 @ccgSubSurf_updateNormals(ptr noundef %35, ptr noundef %36, i32 noundef %37) #10
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  %40 = load ptr, ptr %6, align 8, !tbaa !100
  call void %39(ptr noundef %40) #10
  br label %41

41:                                               ; preds = %31, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  br label %42

42:                                               ; preds = %4, %24, %41
  %43 = call i32 @ccgSubSurf_getNumFaces(ptr noundef %12) #10
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %379

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %47 = icmp eq ptr %17, null
  %48 = mul nsw i32 %14, %14
  %49 = icmp ne ptr %2, null
  %50 = icmp sgt i32 %13, 1
  %51 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 2
  %52 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 1
  %53 = getelementptr inbounds %struct.DMVertexAttribs, ptr %10, i64 0, i32 7
  %54 = icmp sgt i32 %13, 1
  %55 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 2
  %56 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 1
  %57 = getelementptr inbounds %struct.DMVertexAttribs, ptr %10, i64 0, i32 7
  %58 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 5
  %59 = add nsw i32 %13, -2
  %60 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 2
  %61 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 1
  %62 = getelementptr inbounds %struct.DMVertexAttribs, ptr %10, i64 0, i32 7
  %63 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 5
  %64 = icmp sgt i32 %13, 1
  %65 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 2
  %66 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 1
  %67 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %68 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %69 = getelementptr inbounds %struct.DMVertexAttribs, ptr %10, i64 0, i32 7
  %70 = zext nneg i32 %43 to i64
  br label %71

71:                                               ; preds = %45, %375
  %72 = phi i64 [ 0, %45 ], [ %377, %375 ]
  %73 = phi ptr [ %20, %45 ], [ %110, %375 ]
  %74 = phi i32 [ 0, %45 ], [ %376, %375 ]
  %75 = phi i32 [ -1, %45 ], [ %114, %375 ]
  %76 = load ptr, ptr %46, align 8, !tbaa !44
  %77 = getelementptr inbounds %struct.anon.0, ptr %76, i64 %72, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !45
  %79 = call ptr @ccgSubSurf_getFaceFaceHandle(ptr noundef %78) #10
  %80 = ptrtoint ptr %79 to i64
  %81 = call ptr @ccgSubSurf_getFaceUserData(ptr noundef %12, ptr noundef %78) #10
  %82 = getelementptr inbounds i32, ptr %81, i64 1
  %83 = load i32, ptr %82, align 4, !tbaa !54
  %84 = call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %78) #10
  br i1 %47, label %103, label %85

85:                                               ; preds = %71
  %86 = icmp eq ptr %73, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %85
  %88 = shl i64 %80, 32
  %89 = ashr exact i64 %88, 32
  %90 = getelementptr inbounds %struct.DMFlagMat, ptr %17, i64 %89, i32 1
  %91 = load i8, ptr %90, align 2, !tbaa !197
  %92 = and i8 %91, 1
  %93 = icmp ne i8 %92, 0
  br label %94

94:                                               ; preds = %87, %85
  %95 = phi i1 [ true, %85 ], [ %93, %87 ]
  %96 = zext i1 %95 to i32
  %97 = shl i64 %80, 32
  %98 = ashr exact i64 %97, 32
  %99 = getelementptr inbounds %struct.DMFlagMat, ptr %17, i64 %98
  %100 = load i16, ptr %99, align 2, !tbaa !200
  %101 = sext i16 %100 to i32
  %102 = add nsw i32 %101, 1
  br label %103

103:                                              ; preds = %71, %94
  %104 = phi i32 [ %96, %94 ], [ 1, %71 ]
  %105 = phi i32 [ %102, %94 ], [ 1, %71 ]
  %106 = icmp eq ptr %73, null
  %107 = mul nsw i32 %48, %84
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [4 x [3 x i16]], ptr %73, i64 %108
  %110 = select i1 %106, ptr null, ptr %109
  %111 = icmp eq i32 %105, %75
  br i1 %111, label %113, label %112

112:                                              ; preds = %103
  call void %1(ptr noundef %3, i32 noundef %105, ptr noundef nonnull %9) #10
  call void @DM_vertex_attributes_from_gpu(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %10) #10
  br label %113

113:                                              ; preds = %112, %103
  %114 = phi i32 [ %105, %112 ], [ %75, %103 ]
  %115 = icmp ne i32 %83, -1
  %116 = select i1 %49, i1 %115, i1 false
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = call zeroext i8 %2(ptr noundef %3, i32 noundef %83) #10
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = add nsw i32 %107, %74
  br label %375

122:                                              ; preds = %117, %113
  %123 = icmp eq i32 %104, 0
  %124 = select i1 %123, i32 7424, i32 7425
  call void @glShadeModel(i32 noundef %124) #10
  %125 = icmp sgt i32 %84, 0
  br i1 %125, label %126, label %375

126:                                              ; preds = %122, %370
  %127 = phi i32 [ %372, %370 ], [ %74, %122 ]
  %128 = phi ptr [ %371, %370 ], [ %73, %122 ]
  %129 = phi i32 [ %373, %370 ], [ 0, %122 ]
  %130 = call ptr @ccgSubSurf_getFaceGridDataArray(ptr noundef %12, ptr noundef %78, i32 noundef %129) #10
  %131 = icmp eq ptr %128, null
  br i1 %131, label %196, label %132

132:                                              ; preds = %126
  call void @glBegin(i32 noundef 7) #10
  br i1 %50, label %133, label %367

133:                                              ; preds = %132, %193
  %134 = phi i32 [ %191, %193 ], [ %127, %132 ]
  %135 = phi ptr [ %190, %193 ], [ %128, %132 ]
  %136 = phi i32 [ %194, %193 ], [ 0, %132 ]
  %137 = add nuw nsw i32 %136, 1
  br label %138

138:                                              ; preds = %133, %188
  %139 = phi i32 [ %134, %133 ], [ %191, %188 ]
  %140 = phi ptr [ %135, %133 ], [ %190, %188 ]
  %141 = phi i32 [ 0, %133 ], [ %149, %188 ]
  %142 = load i32, ptr %51, align 4, !tbaa !396
  %143 = mul nsw i32 %142, %136
  %144 = add nsw i32 %143, %141
  %145 = load i32, ptr %52, align 4, !tbaa !268
  %146 = mul nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, ptr %130, i64 %147
  %149 = add nuw nsw i32 %141, 1
  %150 = add nsw i32 %143, %149
  %151 = mul nsw i32 %150, %145
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, ptr %130, i64 %152
  %154 = mul nsw i32 %142, %137
  %155 = add nsw i32 %154, %149
  %156 = mul nsw i32 %155, %145
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, ptr %130, i64 %157
  %159 = add nsw i32 %154, %141
  %160 = mul nsw i32 %159, %145
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, ptr %130, i64 %161
  %163 = load i32, ptr %53, align 4, !tbaa !425
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %138
  %166 = call fastcc i32 @getFaceIndex(ptr noundef %12, ptr noundef %78, i32 noundef %129, i32 noundef %141, i32 noundef %137, i32 noundef %15, i32 noundef %13)
  br label %167

167:                                              ; preds = %138, %165
  %168 = phi i32 [ %166, %165 ], [ 0, %138 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %10, i32 noundef %139, i32 noundef %168, i32 noundef 1)
  %169 = getelementptr inbounds [4 x [3 x i16]], ptr %140, i64 0, i64 1
  call void @glNormal3sv(ptr noundef nonnull %169) #10
  call void @glVertex3fv(ptr noundef %162) #10
  %170 = load i32, ptr %53, align 4, !tbaa !425
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %167
  %173 = call fastcc i32 @getFaceIndex(ptr noundef %12, ptr noundef %78, i32 noundef %129, i32 noundef %149, i32 noundef %137, i32 noundef %15, i32 noundef %13)
  br label %174

174:                                              ; preds = %167, %172
  %175 = phi i32 [ %173, %172 ], [ 0, %167 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %10, i32 noundef %139, i32 noundef %175, i32 noundef 2)
  %176 = getelementptr inbounds [4 x [3 x i16]], ptr %140, i64 0, i64 2
  call void @glNormal3sv(ptr noundef nonnull %176) #10
  call void @glVertex3fv(ptr noundef %158) #10
  %177 = load i32, ptr %53, align 4, !tbaa !425
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %174
  %180 = call fastcc i32 @getFaceIndex(ptr noundef %12, ptr noundef %78, i32 noundef %129, i32 noundef %149, i32 noundef %136, i32 noundef %15, i32 noundef %13)
  br label %181

181:                                              ; preds = %174, %179
  %182 = phi i32 [ %180, %179 ], [ 0, %174 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %10, i32 noundef %139, i32 noundef %182, i32 noundef 3)
  %183 = getelementptr inbounds [4 x [3 x i16]], ptr %140, i64 0, i64 3
  call void @glNormal3sv(ptr noundef nonnull %183) #10
  call void @glVertex3fv(ptr noundef %153) #10
  %184 = load i32, ptr %53, align 4, !tbaa !425
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %181
  %187 = call fastcc i32 @getFaceIndex(ptr noundef %12, ptr noundef %78, i32 noundef %129, i32 noundef %141, i32 noundef %136, i32 noundef %15, i32 noundef %13)
  br label %188

188:                                              ; preds = %181, %186
  %189 = phi i32 [ %187, %186 ], [ 0, %181 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %10, i32 noundef %139, i32 noundef %189, i32 noundef 0)
  call void @glNormal3sv(ptr noundef %140) #10
  call void @glVertex3fv(ptr noundef %148) #10
  %190 = getelementptr inbounds [4 x [3 x i16]], ptr %140, i64 1
  %191 = add nsw i32 %139, 1
  %192 = icmp eq i32 %149, %14
  br i1 %192, label %193, label %138, !llvm.loop !437

193:                                              ; preds = %188
  %194 = add nuw nsw i32 %136, 1
  %195 = icmp eq i32 %194, %14
  br i1 %195, label %367, label %133, !llvm.loop !438

196:                                              ; preds = %126
  br i1 %123, label %274, label %197

197:                                              ; preds = %196
  br i1 %54, label %198, label %370

198:                                              ; preds = %197, %267
  %199 = phi i32 [ %272, %267 ], [ %127, %197 ]
  %200 = phi i32 [ %248, %267 ], [ 0, %197 ]
  call void @glBegin(i32 noundef 8) #10
  %201 = add nuw nsw i32 %200, 1
  br label %202

202:                                              ; preds = %198, %230
  %203 = phi i32 [ %199, %198 ], [ %237, %230 ]
  %204 = phi i32 [ 0, %198 ], [ %238, %230 ]
  %205 = load i32, ptr %55, align 4, !tbaa !396
  %206 = mul nsw i32 %205, %200
  %207 = add nsw i32 %206, %204
  %208 = load i32, ptr %56, align 4, !tbaa !268
  %209 = mul nsw i32 %207, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, ptr %130, i64 %210
  %212 = mul nsw i32 %205, %201
  %213 = add nsw i32 %212, %204
  %214 = mul nsw i32 %213, %208
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, ptr %130, i64 %215
  %217 = load i32, ptr %57, align 4, !tbaa !425
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %202
  %220 = call fastcc i32 @getFaceIndex(ptr noundef %12, ptr noundef %78, i32 noundef %129, i32 noundef %204, i32 noundef %200, i32 noundef %15, i32 noundef %13)
  br label %221

221:                                              ; preds = %202, %219
  %222 = phi i32 [ %220, %219 ], [ 0, %202 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %10, i32 noundef %203, i32 noundef %222, i32 noundef 0)
  %223 = load i32, ptr %58, align 4, !tbaa !278
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8, ptr %211, i64 %224
  call void @glNormal3fv(ptr noundef %225) #10
  call void @glVertex3fv(ptr noundef %211) #10
  %226 = load i32, ptr %57, align 4, !tbaa !425
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %221
  %229 = call fastcc i32 @getFaceIndex(ptr noundef %12, ptr noundef %78, i32 noundef %129, i32 noundef %204, i32 noundef %201, i32 noundef %15, i32 noundef %13)
  br label %230

230:                                              ; preds = %221, %228
  %231 = phi i32 [ %229, %228 ], [ 0, %221 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %10, i32 noundef %203, i32 noundef %231, i32 noundef 1)
  %232 = load i32, ptr %58, align 4, !tbaa !278
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, ptr %216, i64 %233
  call void @glNormal3fv(ptr noundef %234) #10
  call void @glVertex3fv(ptr noundef %216) #10
  %235 = icmp ne i32 %204, %59
  %236 = zext i1 %235 to i32
  %237 = add nsw i32 %203, %236
  %238 = add nuw nsw i32 %204, 1
  %239 = icmp eq i32 %238, %14
  br i1 %239, label %240, label %202, !llvm.loop !439

240:                                              ; preds = %230
  %241 = load i32, ptr %60, align 4, !tbaa !396
  %242 = mul nsw i32 %241, %200
  %243 = add nsw i32 %242, %238
  %244 = load i32, ptr %61, align 4, !tbaa !268
  %245 = mul nsw i32 %243, %244
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, ptr %130, i64 %246
  %248 = add nuw nsw i32 %200, 1
  %249 = mul nsw i32 %241, %248
  %250 = add nsw i32 %249, %238
  %251 = mul nsw i32 %250, %244
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, ptr %130, i64 %252
  %254 = load i32, ptr %62, align 4, !tbaa !425
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %258, label %256

256:                                              ; preds = %240
  %257 = call fastcc i32 @getFaceIndex(ptr noundef %12, ptr noundef %78, i32 noundef %129, i32 noundef %238, i32 noundef %200, i32 noundef %15, i32 noundef %13)
  br label %258

258:                                              ; preds = %240, %256
  %259 = phi i32 [ %257, %256 ], [ 0, %240 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %10, i32 noundef %237, i32 noundef %259, i32 noundef 3)
  %260 = load i32, ptr %63, align 4, !tbaa !278
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8, ptr %247, i64 %261
  call void @glNormal3fv(ptr noundef %262) #10
  call void @glVertex3fv(ptr noundef %247) #10
  %263 = load i32, ptr %62, align 4, !tbaa !425
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %267, label %265

265:                                              ; preds = %258
  %266 = call fastcc i32 @getFaceIndex(ptr noundef %12, ptr noundef %78, i32 noundef %129, i32 noundef %238, i32 noundef %248, i32 noundef %15, i32 noundef %13)
  br label %267

267:                                              ; preds = %258, %265
  %268 = phi i32 [ %266, %265 ], [ 0, %258 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %10, i32 noundef %237, i32 noundef %268, i32 noundef 2)
  %269 = load i32, ptr %63, align 4, !tbaa !278
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8, ptr %253, i64 %270
  call void @glNormal3fv(ptr noundef %271) #10
  call void @glVertex3fv(ptr noundef %253) #10
  call void @glEnd() #10
  %272 = add nsw i32 %237, 1
  %273 = icmp eq i32 %248, %14
  br i1 %273, label %370, label %198, !llvm.loop !440

274:                                              ; preds = %196
  call void @glBegin(i32 noundef 7) #10
  br i1 %64, label %275, label %367

275:                                              ; preds = %274, %364
  %276 = phi i32 [ %362, %364 ], [ %127, %274 ]
  %277 = phi i32 [ %365, %364 ], [ 0, %274 ]
  %278 = add nuw nsw i32 %277, 1
  br label %279

279:                                              ; preds = %275, %360
  %280 = phi i32 [ %276, %275 ], [ %362, %360 ]
  %281 = phi i32 [ 0, %275 ], [ %289, %360 ]
  %282 = load i32, ptr %65, align 4, !tbaa !396
  %283 = mul nsw i32 %282, %277
  %284 = add nsw i32 %283, %281
  %285 = load i32, ptr %66, align 4, !tbaa !268
  %286 = mul nsw i32 %284, %285
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8, ptr %130, i64 %287
  %289 = add nuw nsw i32 %281, 1
  %290 = add nsw i32 %283, %289
  %291 = mul nsw i32 %290, %285
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8, ptr %130, i64 %292
  %294 = mul nsw i32 %282, %278
  %295 = add nsw i32 %294, %289
  %296 = mul nsw i32 %295, %285
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i8, ptr %130, i64 %297
  %299 = add nsw i32 %294, %281
  %300 = mul nsw i32 %299, %285
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, ptr %130, i64 %301
  %303 = load float, ptr %298, align 4, !tbaa !66
  %304 = load float, ptr %288, align 4, !tbaa !66
  %305 = fsub float %303, %304
  %306 = getelementptr inbounds float, ptr %298, i64 1
  %307 = load float, ptr %306, align 4, !tbaa !66
  %308 = getelementptr inbounds float, ptr %288, i64 1
  %309 = load float, ptr %308, align 4, !tbaa !66
  %310 = fsub float %307, %309
  %311 = getelementptr inbounds float, ptr %298, i64 2
  %312 = load float, ptr %311, align 4, !tbaa !66
  %313 = getelementptr inbounds float, ptr %288, i64 2
  %314 = load float, ptr %313, align 4, !tbaa !66
  %315 = fsub float %312, %314
  %316 = load float, ptr %302, align 4, !tbaa !66
  %317 = load float, ptr %293, align 4, !tbaa !66
  %318 = fsub float %316, %317
  %319 = getelementptr inbounds float, ptr %302, i64 1
  %320 = load float, ptr %319, align 4, !tbaa !66
  %321 = getelementptr inbounds float, ptr %293, i64 1
  %322 = load float, ptr %321, align 4, !tbaa !66
  %323 = fsub float %320, %322
  %324 = getelementptr inbounds float, ptr %302, i64 2
  %325 = load float, ptr %324, align 4, !tbaa !66
  %326 = getelementptr inbounds float, ptr %293, i64 2
  %327 = load float, ptr %326, align 4, !tbaa !66
  %328 = fsub float %325, %327
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %329 = fneg float %328
  %330 = fmul float %310, %329
  %331 = call float @llvm.fmuladd.f32(float %323, float %315, float %330)
  store float %331, ptr %5, align 4, !tbaa !66
  %332 = fneg float %318
  %333 = fmul float %315, %332
  %334 = call float @llvm.fmuladd.f32(float %328, float %305, float %333)
  store float %334, ptr %67, align 4, !tbaa !66
  %335 = fneg float %323
  %336 = fmul float %305, %335
  %337 = call float @llvm.fmuladd.f32(float %318, float %310, float %336)
  store float %337, ptr %68, align 4, !tbaa !66
  call void @glNormal3fv(ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  %338 = load i32, ptr %69, align 4, !tbaa !425
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %342, label %340

340:                                              ; preds = %279
  %341 = call fastcc i32 @getFaceIndex(ptr noundef %12, ptr noundef %78, i32 noundef %129, i32 noundef %281, i32 noundef %278, i32 noundef %15, i32 noundef %13)
  br label %342

342:                                              ; preds = %279, %340
  %343 = phi i32 [ %341, %340 ], [ 0, %279 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %10, i32 noundef %280, i32 noundef %343, i32 noundef 1)
  call void @glVertex3fv(ptr noundef nonnull %302) #10
  %344 = load i32, ptr %69, align 4, !tbaa !425
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %348, label %346

346:                                              ; preds = %342
  %347 = call fastcc i32 @getFaceIndex(ptr noundef %12, ptr noundef %78, i32 noundef %129, i32 noundef %289, i32 noundef %278, i32 noundef %15, i32 noundef %13)
  br label %348

348:                                              ; preds = %342, %346
  %349 = phi i32 [ %347, %346 ], [ 0, %342 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %10, i32 noundef %280, i32 noundef %349, i32 noundef 2)
  call void @glVertex3fv(ptr noundef nonnull %298) #10
  %350 = load i32, ptr %69, align 4, !tbaa !425
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %354, label %352

352:                                              ; preds = %348
  %353 = call fastcc i32 @getFaceIndex(ptr noundef %12, ptr noundef %78, i32 noundef %129, i32 noundef %289, i32 noundef %277, i32 noundef %15, i32 noundef %13)
  br label %354

354:                                              ; preds = %348, %352
  %355 = phi i32 [ %353, %352 ], [ 0, %348 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %10, i32 noundef %280, i32 noundef %355, i32 noundef 3)
  call void @glVertex3fv(ptr noundef nonnull %293) #10
  %356 = load i32, ptr %69, align 4, !tbaa !425
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %360, label %358

358:                                              ; preds = %354
  %359 = call fastcc i32 @getFaceIndex(ptr noundef %12, ptr noundef %78, i32 noundef %129, i32 noundef %281, i32 noundef %277, i32 noundef %15, i32 noundef %13)
  br label %360

360:                                              ; preds = %354, %358
  %361 = phi i32 [ %359, %358 ], [ 0, %354 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %10, i32 noundef %280, i32 noundef %361, i32 noundef 0)
  call void @glVertex3fv(ptr noundef nonnull %288) #10
  %362 = add nsw i32 %280, 1
  %363 = icmp eq i32 %289, %14
  br i1 %363, label %364, label %279, !llvm.loop !441

364:                                              ; preds = %360
  %365 = add nuw nsw i32 %277, 1
  %366 = icmp eq i32 %365, %14
  br i1 %366, label %367, label %275, !llvm.loop !442

367:                                              ; preds = %193, %364, %274, %132
  %368 = phi ptr [ %128, %132 ], [ null, %274 ], [ null, %364 ], [ %190, %193 ]
  %369 = phi i32 [ %127, %132 ], [ %127, %274 ], [ %362, %364 ], [ %191, %193 ]
  call void @glEnd() #10
  br label %370

370:                                              ; preds = %267, %367, %197
  %371 = phi ptr [ null, %197 ], [ %368, %367 ], [ null, %267 ]
  %372 = phi i32 [ %127, %197 ], [ %369, %367 ], [ %272, %267 ]
  %373 = add nuw nsw i32 %129, 1
  %374 = icmp eq i32 %373, %84
  br i1 %374, label %375, label %126, !llvm.loop !443

375:                                              ; preds = %370, %122, %120
  %376 = phi i32 [ %121, %120 ], [ %74, %122 ], [ %372, %370 ]
  %377 = add nuw nsw i64 %72, 1
  %378 = icmp eq i64 %377, %70
  br i1 %378, label %379, label %71, !llvm.loop !444

379:                                              ; preds = %375, %42
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 2564, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_drawUVEdges(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  %3 = load ptr, ptr %2, align 8, !tbaa !445
  %4 = tail call ptr %3(ptr noundef %0) #10
  %5 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 5) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %1
  tail call void @glBegin(i32 noundef 1) #10
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !406
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %7, %28
  %12 = phi i32 [ %29, %28 ], [ 0, %7 ]
  %13 = phi ptr [ %31, %28 ], [ %5, %7 ]
  %14 = phi ptr [ %30, %28 ], [ %4, %7 ]
  %15 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 6
  %16 = load i8, ptr %15, align 1, !tbaa !285
  %17 = and i8 %16, 16
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %11
  tail call void @glVertex2fv(ptr noundef nonnull %13) #10
  %20 = getelementptr inbounds [4 x [2 x float]], ptr %13, i64 0, i64 1
  tail call void @glVertex2fv(ptr noundef nonnull %20) #10
  tail call void @glVertex2fv(ptr noundef nonnull %20) #10
  %21 = getelementptr inbounds [4 x [2 x float]], ptr %13, i64 0, i64 2
  tail call void @glVertex2fv(ptr noundef nonnull %21) #10
  %22 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !284
  %24 = icmp eq i32 %23, 0
  tail call void @glVertex2fv(ptr noundef nonnull %21) #10
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds [4 x [2 x float]], ptr %13, i64 0, i64 3
  tail call void @glVertex2fv(ptr noundef nonnull %26) #10
  tail call void @glVertex2fv(ptr noundef nonnull %26) #10
  br label %27

27:                                               ; preds = %19, %25
  tail call void @glVertex2fv(ptr noundef nonnull %13) #10
  br label %28

28:                                               ; preds = %27, %11
  %29 = add nuw nsw i32 %12, 1
  %30 = getelementptr inbounds %struct.MFace, ptr %14, i64 1
  %31 = getelementptr inbounds %struct.MTFace, ptr %13, i64 1
  %32 = load i32, ptr %8, align 8, !tbaa !406
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %11, label %34, !llvm.loop !446

34:                                               ; preds = %28, %7
  tail call void @glEnd() #10
  br label %35

35:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_drawMappedEdgesInterp(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = alloca %struct.CCGKey, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  %9 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %8) #10
  call void @CCG_key_top_level(ptr noundef nonnull %5, ptr noundef %8) #10
  call void @ccgSubSurf_getUseAgeCounts(ptr noundef %8, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef null) #10
  %10 = call ptr @ccgSubSurf_getEdgeIterator(ptr noundef %8) #10
  %11 = call i32 @ccgEdgeIterator_isStopped(ptr noundef %10) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %60

13:                                               ; preds = %4
  %14 = icmp eq ptr %1, null
  %15 = icmp slt i32 %9, 1
  %16 = add nsw i32 %9, -1
  %17 = sitofp i32 %16 to float
  %18 = getelementptr inbounds %struct.CCGKey, ptr %5, i64 0, i32 1
  %19 = call i32 @llvm.smax.i32(i32 %9, i32 1)
  br label %20

20:                                               ; preds = %13, %57
  %21 = call ptr @ccgEdgeIterator_getCurrent(ptr noundef %10) #10
  %22 = call ptr @ccgSubSurf_getEdgeDataArray(ptr noundef %8, ptr noundef %21) #10
  %23 = call ptr @ccgSubSurf_getEdgeUserData(ptr noundef %8, ptr noundef %21) #10
  %24 = getelementptr inbounds i32, ptr %23, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !54
  call void @glBegin(i32 noundef 3) #10
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %57, label %27

27:                                               ; preds = %20
  br i1 %14, label %32, label %28

28:                                               ; preds = %27
  %29 = call i32 %1(ptr noundef %3, i32 noundef %25) #10
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i1 true, i1 %15
  br i1 %31, label %57, label %33

32:                                               ; preds = %27
  br i1 %15, label %57, label %33

33:                                               ; preds = %32, %28
  br label %34

34:                                               ; preds = %33, %50
  %35 = phi i32 [ %55, %50 ], [ 0, %33 ]
  %36 = sitofp i32 %35 to float
  %37 = fdiv float %36, %17
  call void %2(ptr noundef %3, i32 noundef %25, float noundef %37) #10
  %38 = load i32, ptr %6, align 4, !tbaa !54
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %34
  %41 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !391
  %42 = and i32 %41, 16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = call i32 @ccgSubSurf_getEdgeAge(ptr noundef %8, ptr noundef %21) #10
  %46 = shl nsw i32 %45, 2
  %47 = sub nsw i32 255, %46
  %48 = call i32 @llvm.smax.i32(i32 %47, i32 0)
  %49 = trunc i32 %48 to i8
  call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext %49, i8 noundef zeroext 0) #10
  br label %50

50:                                               ; preds = %44, %40, %34
  %51 = load i32, ptr %18, align 4, !tbaa !268
  %52 = mul nsw i32 %51, %35
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, ptr %22, i64 %53
  call void @glVertex3fv(ptr noundef %54) #10
  %55 = add nuw nsw i32 %35, 1
  %56 = icmp eq i32 %55, %19
  br i1 %56, label %57, label %34, !llvm.loop !447

57:                                               ; preds = %50, %28, %32, %20
  call void @glEnd() #10
  call void @ccgEdgeIterator_next(ptr noundef %10) #10
  %58 = call i32 @ccgEdgeIterator_isStopped(ptr noundef %10) #10
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %20, label %60, !llvm.loop !448

60:                                               ; preds = %57, %4
  call void @ccgEdgeIterator_free(ptr noundef %10) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_drawMappedEdges(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.CCGKey, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %8 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %7) #10
  call void @CCG_key_top_level(ptr noundef nonnull %4, ptr noundef %7) #10
  call void @ccgSubSurf_getUseAgeCounts(ptr noundef %7, ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef null) #10
  %9 = call ptr @ccgSubSurf_getEdgeIterator(ptr noundef %7) #10
  %10 = call i32 @ccgEdgeIterator_isStopped(ptr noundef %9) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %57

12:                                               ; preds = %3
  %13 = icmp eq ptr %1, null
  %14 = icmp sgt i32 %8, 1
  %15 = getelementptr inbounds %struct.CCGKey, ptr %4, i64 0, i32 1
  %16 = add nsw i32 %8, -2
  br label %17

17:                                               ; preds = %12, %54
  %18 = call ptr @ccgEdgeIterator_getCurrent(ptr noundef %9) #10
  %19 = call ptr @ccgSubSurf_getEdgeDataArray(ptr noundef %7, ptr noundef %18) #10
  %20 = call ptr @ccgSubSurf_getEdgeUserData(ptr noundef %7, ptr noundef %18) #10
  %21 = getelementptr inbounds i32, ptr %20, i64 1
  %22 = load i32, ptr %21, align 4, !tbaa !54
  call void @glBegin(i32 noundef 3) #10
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %54, label %24

24:                                               ; preds = %17
  br i1 %13, label %28, label %25

25:                                               ; preds = %24
  %26 = call i32 %1(ptr noundef %2, i32 noundef %22) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %54, label %28

28:                                               ; preds = %25, %24
  %29 = load i32, ptr %5, align 4, !tbaa !54
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %28
  %32 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !391
  %33 = and i32 %32, 16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = call i32 @ccgSubSurf_getEdgeAge(ptr noundef %7, ptr noundef %18) #10
  %37 = shl nsw i32 %36, 2
  %38 = sub nsw i32 255, %37
  %39 = call i32 @llvm.smax.i32(i32 %38, i32 0)
  %40 = trunc i32 %39 to i8
  call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext %40, i8 noundef zeroext 0) #10
  br label %41

41:                                               ; preds = %35, %31, %28
  br i1 %14, label %42, label %54

42:                                               ; preds = %41, %42
  %43 = phi i32 [ %48, %42 ], [ 0, %41 ]
  %44 = load i32, ptr %15, align 4, !tbaa !268
  %45 = mul nsw i32 %44, %43
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %19, i64 %46
  call void @glVertex3fv(ptr noundef %47) #10
  %48 = add nuw nsw i32 %43, 1
  %49 = load i32, ptr %15, align 4, !tbaa !268
  %50 = mul nsw i32 %49, %48
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %19, i64 %51
  call void @glVertex3fv(ptr noundef %52) #10
  %53 = icmp eq i32 %43, %16
  br i1 %53, label %54, label %42, !llvm.loop !449

54:                                               ; preds = %42, %41, %25, %17
  call void @glEnd() #10
  call void @ccgEdgeIterator_next(ptr noundef %9) #10
  %55 = call i32 @ccgEdgeIterator_isStopped(ptr noundef %9) #10
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %17, label %57, !llvm.loop !450

57:                                               ; preds = %54, %3
  call void @ccgEdgeIterator_free(ptr noundef %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ccgDM_release(ptr noundef %0) #0 {
  %2 = tail call i32 @DM_release(ptr noundef %0) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %136, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20
  %6 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !451
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !452
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !453
  %16 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 26
  %17 = load ptr, ptr %5, align 8, !tbaa !339
  %18 = tail call i32 @BLI_findindex(ptr noundef nonnull %16, ptr noundef %17) #10
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store ptr null, ptr %5, align 8, !tbaa !339
  br label %21

21:                                               ; preds = %20, %13, %9
  %22 = load ptr, ptr %5, align 8, !tbaa !339
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %6, align 8, !tbaa !451
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @multires_modifier_update_mdisps(ptr noundef %0) #10
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i32, ptr %6, align 8, !tbaa !451
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @multires_modifier_update_hidden(ptr noundef %0) #10
  br label %34

34:                                               ; preds = %21, %33, %29, %4
  %35 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 21
  %36 = load ptr, ptr %35, align 8, !tbaa !310
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @BLI_edgehash_free(ptr noundef nonnull %36, ptr noundef null) #10
  br label %39

39:                                               ; preds = %38, %34
  %40 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 10
  %41 = load ptr, ptr %40, align 8, !tbaa !182
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %44(ptr noundef nonnull %41) #10
  br label %45

45:                                               ; preds = %43, %39
  %46 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 17
  %47 = load ptr, ptr %46, align 8, !tbaa !358
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %50(ptr noundef nonnull %47) #10
  br label %51

51:                                               ; preds = %49, %45
  %52 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 14
  %53 = load ptr, ptr %52, align 8, !tbaa !334
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %56(ptr noundef nonnull %53) #10
  br label %57

57:                                               ; preds = %55, %51
  %58 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 15
  %59 = load ptr, ptr %58, align 8, !tbaa !335
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %62(ptr noundef nonnull %59) #10
  br label %63

63:                                               ; preds = %61, %57
  %64 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 16
  %65 = load ptr, ptr %64, align 8, !tbaa !336
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %68(ptr noundef nonnull %65) #10
  br label %69

69:                                               ; preds = %67, %63
  %70 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 18
  %71 = load ptr, ptr %70, align 8, !tbaa !337
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %74(ptr noundef nonnull %71) #10
  br label %75

75:                                               ; preds = %73, %69
  %76 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 19
  %77 = load ptr, ptr %76, align 8, !tbaa !338
  %78 = icmp eq ptr %77, null
  br i1 %78, label %100, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 63
  %81 = load ptr, ptr %80, align 8, !tbaa !454
  %82 = tail call i32 %81(ptr noundef %0) #10
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %79
  %85 = zext nneg i32 %82 to i64
  br label %86

86:                                               ; preds = %84, %94
  %87 = phi i64 [ 0, %84 ], [ %95, %94 ]
  %88 = load ptr, ptr %76, align 8, !tbaa !338
  %89 = getelementptr inbounds ptr, ptr %88, i64 %87
  %90 = load ptr, ptr %89, align 8, !tbaa !100
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %86
  %93 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %93(ptr noundef nonnull %90) #10
  br label %94

94:                                               ; preds = %86, %92
  %95 = add nuw nsw i64 %87, 1
  %96 = icmp eq i64 %95, %85
  br i1 %96, label %97, label %86, !llvm.loop !455

97:                                               ; preds = %94, %79
  %98 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  %99 = load ptr, ptr %76, align 8, !tbaa !338
  tail call void %98(ptr noundef %99) #10
  br label %100

100:                                              ; preds = %97, %75
  %101 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 2
  %102 = load i32, ptr %101, align 8, !tbaa !79
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !34
  tail call void @ccgSubSurf_free(ptr noundef %106) #10
  br label %107

107:                                              ; preds = %104, %100
  %108 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 12
  %109 = load ptr, ptr %108, align 8, !tbaa !340
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %112(ptr noundef nonnull %109) #10
  br label %113

113:                                              ; preds = %111, %107
  %114 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 13
  %115 = load ptr, ptr %114, align 8, !tbaa !456
  %116 = icmp eq ptr %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %113
  %118 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %118(ptr noundef nonnull %115) #10
  br label %119

119:                                              ; preds = %117, %113
  %120 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  %121 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 8
  %122 = load ptr, ptr %121, align 8, !tbaa !183
  tail call void %120(ptr noundef %122) #10
  %123 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  %124 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 9
  %125 = load ptr, ptr %124, align 8, !tbaa !184
  tail call void %123(ptr noundef %125) #10
  %126 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  %127 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 5
  %128 = load ptr, ptr %127, align 8, !tbaa !173
  tail call void %126(ptr noundef %128) #10
  %129 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  %130 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 6
  %131 = load ptr, ptr %130, align 8, !tbaa !177
  tail call void %129(ptr noundef %131) #10
  %132 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  %133 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %134 = load ptr, ptr %133, align 8, !tbaa !44
  tail call void %132(ptr noundef %134) #10
  %135 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %135(ptr noundef %0) #10
  br label %136

136:                                              ; preds = %119, %1
  ret void
}

declare i32 @ccgSubSurf_getNumVerts(ptr noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_getNumEdges(ptr noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getEdgeIterator(ptr noundef) local_unnamed_addr #2

declare i32 @ccgEdgeIterator_isStopped(ptr noundef) local_unnamed_addr #2

declare ptr @ccgEdgeIterator_getCurrent(ptr noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getEdgeEdgeHandle(ptr noundef) local_unnamed_addr #2

declare void @ccgEdgeIterator_next(ptr noundef) local_unnamed_addr #2

declare void @ccgEdgeIterator_free(ptr noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getFaceIterator(ptr noundef) local_unnamed_addr #2

declare i32 @ccgFaceIterator_isStopped(ptr noundef) local_unnamed_addr #2

declare ptr @ccgFaceIterator_getCurrent(ptr noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getFaceFaceHandle(ptr noundef) local_unnamed_addr #2

declare void @ccgFaceIterator_next(ptr noundef) local_unnamed_addr #2

declare void @ccgFaceIterator_free(ptr noundef) local_unnamed_addr #2

declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @DM_get_vert_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @DM_get_edge_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @DM_get_tessface_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @DM_get_poly_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @DM_interp_vert_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_interp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_copy_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getEdgeVert1(ptr noundef) local_unnamed_addr #2

declare void @DM_copy_vert_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @CCG_key_top_level(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getEdgeDataArray(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getFaceGridDataArray(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getFaceGridEdgeData(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getFaceGridData(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_getEdgeNumFaces(ptr noundef) local_unnamed_addr #2

declare void @BLI_rw_mutex_lock(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_edgehash_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_edgehash_insert(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_rw_mutex_unlock(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_edgehash_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @DM_get_vert_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @DM_get_edge_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @DM_get_tessface_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @DM_get_poly_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @DM_add_vert_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @DM_add_edge_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @DM_add_tessface_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @range_vn_i(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @DM_add_poly_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ccgdm_create_grids(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !334
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %118

7:                                                ; preds = %1
  %8 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %3) #10
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %12 = zext nneg i32 %8 to i64
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi i64 [ 0, %10 ], [ %21, %13 ]
  %15 = phi i32 [ 0, %10 ], [ %20, %13 ]
  %16 = load ptr, ptr %11, align 8, !tbaa !44
  %17 = getelementptr inbounds %struct.anon.0, ptr %16, i64 %14, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = tail call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %18) #10
  %20 = add nsw i32 %19, %15
  %21 = add nuw nsw i64 %14, 1
  %22 = icmp eq i64 %21, %12
  br i1 %22, label %23, label %13, !llvm.loop !333

23:                                               ; preds = %13
  %24 = sext i32 %20 to i64
  br label %25

25:                                               ; preds = %23, %7
  %26 = phi i64 [ 0, %7 ], [ %24, %23 ]
  %27 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %3) #10
  %28 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !100
  %29 = sext i32 %27 to i64
  %30 = shl nsw i64 %29, 2
  %31 = tail call ptr %28(i64 noundef %30, ptr noundef nonnull @.str.8) #10
  %32 = icmp sgt i32 %27, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %35 = zext nneg i32 %27 to i64
  br label %36

36:                                               ; preds = %33, %36
  %37 = phi i64 [ 0, %33 ], [ %45, %36 ]
  %38 = phi i32 [ 0, %33 ], [ %44, %36 ]
  %39 = load ptr, ptr %34, align 8, !tbaa !44
  %40 = getelementptr inbounds %struct.anon.0, ptr %39, i64 %37, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !45
  %42 = tail call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %41) #10
  %43 = getelementptr inbounds i32, ptr %31, i64 %37
  store i32 %38, ptr %43, align 4, !tbaa !54
  %44 = add nsw i32 %42, %38
  %45 = add nuw nsw i64 %37, 1
  %46 = icmp eq i64 %45, %35
  br i1 %46, label %47, label %36, !llvm.loop !457

47:                                               ; preds = %36, %25
  %48 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !100
  %49 = shl nsw i64 %26, 3
  %50 = tail call ptr %48(i64 noundef %49, ptr noundef nonnull @.str.9) #10
  %51 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !100
  %52 = shl nsw i64 %26, 5
  %53 = tail call ptr %51(i64 noundef %52, ptr noundef nonnull @.str.10) #10
  %54 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !100
  %55 = tail call ptr %54(i64 noundef %49, ptr noundef nonnull @.str.11) #10
  %56 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !100
  %57 = shl nsw i64 %26, 2
  %58 = tail call ptr %56(i64 noundef %57, ptr noundef nonnull @.str.12) #10
  %59 = load ptr, ptr @MEM_callocN, align 8, !tbaa !100
  %60 = tail call ptr %59(i64 noundef %49, ptr noundef nonnull @.str.13) #10
  %61 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 19
  store ptr %60, ptr %61, align 8, !tbaa !338
  %62 = icmp sgt i32 %27, 0
  br i1 %62, label %63, label %113

63:                                               ; preds = %47
  %64 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %65 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 9
  %66 = zext nneg i32 %27 to i64
  br label %67

67:                                               ; preds = %63, %109
  %68 = phi i64 [ 0, %63 ], [ %111, %109 ]
  %69 = phi i32 [ 0, %63 ], [ %110, %109 ]
  %70 = load ptr, ptr %64, align 8, !tbaa !44
  %71 = getelementptr inbounds %struct.anon.0, ptr %70, i64 %68, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !45
  %73 = tail call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %72) #10
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %109

75:                                               ; preds = %67
  %76 = add nsw i32 %73, -1
  %77 = sext i32 %69 to i64
  br label %78

78:                                               ; preds = %75, %78
  %79 = phi i64 [ %77, %75 ], [ %105, %78 ]
  %80 = phi i32 [ 0, %75 ], [ %83, %78 ]
  %81 = add i32 %76, %80
  %82 = srem i32 %81, %73
  %83 = add nuw nsw i32 %80, 1
  %84 = add nuw nsw i32 %83, %73
  %85 = urem i32 %84, %73
  %86 = tail call ptr @ccgSubSurf_getFaceGridDataArray(ptr noundef %3, ptr noundef %72, i32 noundef %80) #10
  %87 = getelementptr inbounds ptr, ptr %50, i64 %79
  store ptr %86, ptr %87, align 8, !tbaa !100
  %88 = getelementptr inbounds ptr, ptr %55, i64 %79
  store ptr %72, ptr %88, align 8, !tbaa !100
  %89 = getelementptr inbounds %struct.DMFlagMat, ptr %58, i64 %79
  %90 = load ptr, ptr %65, align 8, !tbaa !184
  %91 = getelementptr inbounds %struct.DMFlagMat, ptr %90, i64 %68
  %92 = load i32, ptr %91, align 2
  store i32 %92, ptr %89, align 2
  %93 = getelementptr inbounds %struct.DMGridAdjacency, ptr %53, i64 %79
  %94 = add nsw i32 %85, %69
  store i32 %94, ptr %93, align 4, !tbaa !54
  %95 = getelementptr inbounds %struct.DMGridAdjacency, ptr %53, i64 %79, i32 1
  store i32 3, ptr %95, align 4, !tbaa !54
  %96 = tail call fastcc i32 @ccgdm_adjacent_grid(ptr noundef %31, ptr noundef %72, i32 noundef %82, i32 noundef 0)
  %97 = getelementptr inbounds [4 x i32], ptr %93, i64 0, i64 1
  store i32 %96, ptr %97, align 4, !tbaa !54
  %98 = getelementptr inbounds %struct.DMGridAdjacency, ptr %53, i64 %79, i32 1, i64 1
  store i32 1, ptr %98, align 4, !tbaa !54
  %99 = tail call fastcc i32 @ccgdm_adjacent_grid(ptr noundef %31, ptr noundef %72, i32 noundef %80, i32 noundef 1)
  %100 = getelementptr inbounds [4 x i32], ptr %93, i64 0, i64 2
  store i32 %99, ptr %100, align 4, !tbaa !54
  %101 = getelementptr inbounds %struct.DMGridAdjacency, ptr %53, i64 %79, i32 1, i64 2
  store i32 3, ptr %101, align 4, !tbaa !54
  %102 = add nsw i32 %82, %69
  %103 = getelementptr inbounds [4 x i32], ptr %93, i64 0, i64 3
  store i32 %102, ptr %103, align 4, !tbaa !54
  %104 = getelementptr inbounds %struct.DMGridAdjacency, ptr %53, i64 %79, i32 1, i64 3
  store i32 1, ptr %104, align 4, !tbaa !54
  %105 = add nsw i64 %79, 1
  %106 = icmp eq i32 %83, %73
  br i1 %106, label %107, label %78, !llvm.loop !458

107:                                              ; preds = %78
  %108 = trunc i64 %105 to i32
  br label %109

109:                                              ; preds = %107, %67
  %110 = phi i32 [ %69, %67 ], [ %108, %107 ]
  %111 = add nuw nsw i64 %68, 1
  %112 = icmp eq i64 %111, %66
  br i1 %112, label %113, label %67, !llvm.loop !459

113:                                              ; preds = %109, %47
  store ptr %50, ptr %4, align 8, !tbaa !334
  %114 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 17
  store ptr %55, ptr %114, align 8, !tbaa !358
  %115 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 15
  store ptr %53, ptr %115, align 8, !tbaa !335
  %116 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 16
  store ptr %31, ptr %116, align 8, !tbaa !336
  %117 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 18
  store ptr %58, ptr %117, align 8, !tbaa !337
  br label %118

118:                                              ; preds = %1, %113
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ccgdm_adjacent_grid(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @ccgSubSurf_getFaceEdge(ptr noundef %1, i32 noundef %2) #10
  %6 = tail call i32 @ccgSubSurf_getEdgeNumFaces(ptr noundef %5) #10
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %46

8:                                                ; preds = %4, %27
  %9 = phi i32 [ %29, %27 ], [ 0, %4 ]
  %10 = phi i32 [ %28, %27 ], [ 0, %4 ]
  %11 = phi i32 [ %30, %27 ], [ 0, %4 ]
  %12 = tail call ptr @ccgSubSurf_getEdgeFace(ptr noundef %5, i32 noundef %11) #10
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %27, label %14

14:                                               ; preds = %8
  %15 = tail call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %12) #10
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14, %21
  %18 = phi i32 [ %22, %21 ], [ 0, %14 ]
  %19 = tail call ptr @ccgSubSurf_getFaceEdge(ptr noundef %12, i32 noundef %18) #10
  %20 = icmp eq ptr %19, %5
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = add nuw nsw i32 %18, 1
  %23 = icmp eq i32 %22, %15
  br i1 %23, label %24, label %17, !llvm.loop !460

24:                                               ; preds = %21, %17, %14
  %25 = phi i32 [ 0, %14 ], [ %15, %21 ], [ %18, %17 ]
  %26 = icmp eq i32 %25, %15
  br i1 %26, label %27, label %32

27:                                               ; preds = %8, %24
  %28 = phi i32 [ %25, %24 ], [ %10, %8 ]
  %29 = phi i32 [ %15, %24 ], [ %9, %8 ]
  %30 = add nuw nsw i32 %11, 1
  %31 = icmp eq i32 %11, 0
  br i1 %31, label %8, label %32, !llvm.loop !461

32:                                               ; preds = %24, %27
  %33 = phi i32 [ %25, %24 ], [ %28, %27 ]
  %34 = phi i32 [ %15, %24 ], [ %29, %27 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = tail call ptr @ccgSubSurf_getFaceFaceHandle(ptr noundef %12) #10
  %38 = ptrtoint ptr %37 to i64
  %39 = shl i64 %38, 32
  %40 = ashr exact i64 %39, 32
  %41 = getelementptr inbounds i32, ptr %0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !54
  %43 = add nsw i32 %33, %3
  %44 = srem i32 %43, %34
  %45 = add nsw i32 %44, %42
  br label %46

46:                                               ; preds = %32, %4, %36
  %47 = phi i32 [ %45, %36 ], [ -1, %4 ], [ -1, %32 ]
  ret i32 %47
}

declare ptr @ccgSubSurf_getEdgeFace(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_mesh_vert_poly_map_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_pbvh_grids_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_pbvh_new() local_unnamed_addr #2

declare void @BKE_pbvh_build_grids(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_pbvh_build_mesh(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @pbvh_show_diffuse_color_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @DM_get_loop_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glVertex3fv(ptr noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

declare i32 @ccgSubSurf_getEdgeAge(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_pbvh_get_grid_updates(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_updateFromFaces(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ccgSubSurf_updateNormals(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_pbvh_draw(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @glShadeModel(i32 noundef) local_unnamed_addr #2

declare void @glNormal3sv(ptr noundef) local_unnamed_addr #2

declare void @glNormal3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ccgDM_drawFacesTex_common(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.CCGKey, align 4
  %10 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #10
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %13 = load ptr, ptr %12, align 8, !tbaa !405
  %14 = tail call ptr %13(ptr noundef %0, i32 noundef 20) #10
  %15 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 5) #10
  %16 = load ptr, ptr %12, align 8, !tbaa !405
  %17 = tail call ptr %16(ptr noundef %0, i32 noundef 40) #10
  %18 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !184
  %20 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %11) #10
  %21 = add i32 %20, -1
  call void @CCG_key_top_level(ptr noundef nonnull %9, ptr noundef %11) #10
  %22 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !354
  %24 = icmp eq ptr %23, null
  br i1 %24, label %43, label %25

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20
  %27 = load ptr, ptr %26, align 8, !tbaa !339
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  call void @BKE_pbvh_get_grid_updates(ptr noundef nonnull %23, i32 noundef 1, ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  %30 = load i32, ptr %8, align 4, !tbaa !54
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %10, align 8, !tbaa !34
  %34 = load ptr, ptr %7, align 8, !tbaa !100
  %35 = call i32 @ccgSubSurf_updateFromFaces(ptr noundef %33, i32 noundef 0, ptr noundef %34, i32 noundef %30) #10
  %36 = load ptr, ptr %10, align 8, !tbaa !34
  %37 = load ptr, ptr %7, align 8, !tbaa !100
  %38 = load i32, ptr %8, align 4, !tbaa !54
  %39 = call i32 @ccgSubSurf_updateNormals(ptr noundef %36, ptr noundef %37, i32 noundef %38) #10
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  %41 = load ptr, ptr %7, align 8, !tbaa !100
  call void %40(ptr noundef %41) #10
  br label %42

42:                                               ; preds = %32, %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  br label %43

43:                                               ; preds = %5, %25, %42
  %44 = icmp eq ptr %14, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load ptr, ptr %12, align 8, !tbaa !405
  %47 = call ptr %46(ptr noundef %0, i32 noundef 6) #10
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi ptr [ %14, %43 ], [ %47, %45 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load ptr, ptr %12, align 8, !tbaa !405
  %53 = call ptr %52(ptr noundef %0, i32 noundef 22) #10
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi ptr [ %49, %48 ], [ %53, %51 ]
  %56 = call i32 @ccgSubSurf_getNumFaces(ptr noundef %11) #10
  %57 = and i32 %4, 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %61 = call i32 @CustomData_get_stencil_layer(ptr noundef nonnull %60, i32 noundef 5) #10
  %62 = call ptr @CustomData_get_layer_n(ptr noundef nonnull %60, i32 noundef 5, i32 noundef %61) #10
  br label %63

63:                                               ; preds = %59, %54
  %64 = phi ptr [ %62, %59 ], [ null, %54 ]
  %65 = icmp sgt i32 %56, 0
  br i1 %65, label %66, label %602

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %68 = icmp eq ptr %19, null
  %69 = icmp eq ptr %64, null
  %70 = mul nsw i32 %21, %21
  %71 = icmp eq ptr %1, null
  %72 = icmp eq ptr %2, null
  %73 = mul nsw i32 %21, %21
  %74 = icmp sgt i32 %20, 1
  %75 = getelementptr inbounds %struct.CCGKey, ptr %9, i64 0, i32 2
  %76 = getelementptr inbounds %struct.CCGKey, ptr %9, i64 0, i32 1
  %77 = icmp sgt i32 %20, 1
  %78 = getelementptr inbounds %struct.CCGKey, ptr %9, i64 0, i32 2
  %79 = getelementptr inbounds %struct.CCGKey, ptr %9, i64 0, i32 1
  %80 = getelementptr inbounds %struct.CCGKey, ptr %9, i64 0, i32 5
  %81 = add nsw i32 %20, -2
  %82 = getelementptr inbounds %struct.CCGKey, ptr %9, i64 0, i32 2
  %83 = getelementptr inbounds %struct.CCGKey, ptr %9, i64 0, i32 1
  %84 = getelementptr inbounds %struct.CCGKey, ptr %9, i64 0, i32 5
  %85 = icmp sgt i32 %20, 1
  %86 = getelementptr inbounds %struct.CCGKey, ptr %9, i64 0, i32 2
  %87 = getelementptr inbounds %struct.CCGKey, ptr %9, i64 0, i32 1
  %88 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %89 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %90 = zext nneg i32 %56 to i64
  br label %91

91:                                               ; preds = %66, %596
  %92 = phi i64 [ 0, %66 ], [ %600, %596 ]
  %93 = phi ptr [ %55, %66 ], [ %599, %596 ]
  %94 = phi ptr [ %15, %66 ], [ %598, %596 ]
  %95 = phi ptr [ null, %66 ], [ %597, %596 ]
  %96 = phi ptr [ undef, %66 ], [ %147, %596 ]
  %97 = phi ptr [ %17, %66 ], [ %169, %596 ]
  %98 = phi i32 [ 0, %66 ], [ %146, %596 ]
  %99 = phi i32 [ -1, %66 ], [ %145, %596 ]
  %100 = load ptr, ptr %67, align 8, !tbaa !44
  %101 = getelementptr inbounds %struct.anon.0, ptr %100, i64 %92, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !45
  %103 = call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %102) #10
  %104 = call ptr @ccgSubSurf_getFaceUserData(ptr noundef %11, ptr noundef %102) #10
  %105 = getelementptr inbounds i32, ptr %104, i64 1
  %106 = load i32, ptr %105, align 4, !tbaa !54
  %107 = call ptr @ccgSubSurf_getFaceFaceHandle(ptr noundef %102) #10
  %108 = ptrtoint ptr %107 to i64
  br i1 %68, label %126, label %109

109:                                              ; preds = %91
  %110 = icmp eq ptr %97, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %109
  %112 = shl i64 %108, 32
  %113 = ashr exact i64 %112, 32
  %114 = getelementptr inbounds %struct.DMFlagMat, ptr %19, i64 %113, i32 1
  %115 = load i8, ptr %114, align 2, !tbaa !197
  %116 = and i8 %115, 1
  %117 = icmp ne i8 %116, 0
  br label %118

118:                                              ; preds = %111, %109
  %119 = phi i1 [ true, %109 ], [ %117, %111 ]
  %120 = zext i1 %119 to i32
  %121 = shl i64 %108, 32
  %122 = ashr exact i64 %121, 32
  %123 = getelementptr inbounds %struct.DMFlagMat, ptr %19, i64 %122
  %124 = load i16, ptr %123, align 2, !tbaa !200
  %125 = sext i16 %124 to i32
  br label %126

126:                                              ; preds = %91, %118
  %127 = phi i32 [ %120, %118 ], [ 1, %91 ]
  %128 = phi i32 [ %125, %118 ], [ 0, %91 ]
  br i1 %58, label %144, label %129

129:                                              ; preds = %126
  %130 = icmp eq i32 %128, %99
  br i1 %130, label %133, label %131

131:                                              ; preds = %129
  %132 = call ptr @DM_paint_uvlayer_active_get(ptr noundef %0, i32 noundef %128) #10
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %128, %131 ], [ %99, %129 ]
  %135 = phi ptr [ %132, %131 ], [ %96, %129 ]
  %136 = icmp eq ptr %135, null
  %137 = sext i32 %98 to i64
  %138 = getelementptr inbounds %struct.MTFace, ptr %135, i64 %137
  %139 = select i1 %136, ptr null, ptr %138
  %140 = getelementptr inbounds %struct.MTFace, ptr %64, i64 %137
  %141 = select i1 %69, ptr null, ptr %140
  %142 = mul nsw i32 %70, %103
  %143 = add nsw i32 %142, %98
  br label %144

144:                                              ; preds = %133, %126
  %145 = phi i32 [ %134, %133 ], [ %99, %126 ]
  %146 = phi i32 [ %143, %133 ], [ %98, %126 ]
  %147 = phi ptr [ %135, %133 ], [ %96, %126 ]
  %148 = phi ptr [ %141, %133 ], [ %95, %126 ]
  %149 = phi ptr [ %139, %133 ], [ %94, %126 ]
  br i1 %71, label %154, label %150

150:                                              ; preds = %144
  %151 = icmp ne ptr %93, null
  %152 = zext i1 %151 to i8
  %153 = call i32 %1(ptr noundef %149, i8 noundef zeroext %152, i32 noundef %128) #10
  br label %163

154:                                              ; preds = %144
  %155 = icmp eq i32 %106, -1
  br i1 %155, label %159, label %156

156:                                              ; preds = %154
  br i1 %72, label %163, label %157

157:                                              ; preds = %156
  %158 = call i32 %2(ptr noundef %3, i32 noundef %106) #10
  br label %163

159:                                              ; preds = %154
  %160 = call i32 @GPU_enable_material(i32 noundef %128, ptr noundef null) #10
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i32
  br label %163

163:                                              ; preds = %157, %156, %159, %150
  %164 = phi i32 [ %153, %150 ], [ %162, %159 ], [ %158, %157 ], [ 1, %156 ]
  %165 = icmp eq ptr %97, null
  %166 = mul nsw i32 %73, %103
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [4 x [3 x i16]], ptr %97, i64 %167
  %169 = select i1 %165, ptr null, ptr %168
  %170 = icmp eq i32 %164, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %163
  %172 = icmp eq ptr %149, null
  %173 = getelementptr inbounds %struct.MTFace, ptr %149, i64 %167
  %174 = select i1 %172, ptr null, ptr %173
  %175 = icmp eq ptr %93, null
  %176 = shl nsw i32 %166, 2
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.MCol, ptr %93, i64 %177
  %179 = select i1 %175, ptr null, ptr %178
  br label %596

180:                                              ; preds = %163
  %181 = icmp eq ptr %93, null
  %182 = shl nsw i32 %166, 2
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.MCol, ptr %93, i64 %183
  %185 = select i1 %181, ptr null, ptr %184
  %186 = icmp sgt i32 %103, 0
  br i1 %186, label %187, label %596

187:                                              ; preds = %180
  %188 = icmp eq i32 %164, 2
  %189 = select i1 %188, ptr null, ptr %93
  %190 = icmp eq i32 %127, 0
  br label %191

191:                                              ; preds = %187, %589
  %192 = phi ptr [ %149, %187 ], [ %593, %589 ]
  %193 = phi ptr [ %148, %187 ], [ %592, %589 ]
  %194 = phi ptr [ %97, %187 ], [ %591, %589 ]
  %195 = phi ptr [ %189, %187 ], [ %590, %589 ]
  %196 = phi i32 [ 0, %187 ], [ %594, %589 ]
  %197 = call ptr @ccgSubSurf_getFaceGridDataArray(ptr noundef %11, ptr noundef %102, i32 noundef %196) #10
  %198 = icmp eq ptr %194, null
  br i1 %198, label %309, label %199

199:                                              ; preds = %191
  call void @glShadeModel(i32 noundef 7425) #10
  call void @glBegin(i32 noundef 7) #10
  br i1 %74, label %200, label %584

200:                                              ; preds = %199, %306
  %201 = phi ptr [ %299, %306 ], [ %192, %199 ]
  %202 = phi ptr [ %301, %306 ], [ %193, %199 ]
  %203 = phi ptr [ %304, %306 ], [ %194, %199 ]
  %204 = phi ptr [ %303, %306 ], [ %195, %199 ]
  %205 = phi i32 [ %307, %306 ], [ 0, %199 ]
  %206 = add nuw nsw i32 %205, 1
  br label %207

207:                                              ; preds = %200, %297
  %208 = phi ptr [ %201, %200 ], [ %299, %297 ]
  %209 = phi ptr [ %202, %200 ], [ %301, %297 ]
  %210 = phi ptr [ %203, %200 ], [ %304, %297 ]
  %211 = phi ptr [ %204, %200 ], [ %303, %297 ]
  %212 = phi i32 [ 0, %200 ], [ %220, %297 ]
  %213 = load i32, ptr %75, align 4, !tbaa !396
  %214 = mul nsw i32 %213, %205
  %215 = add nsw i32 %214, %212
  %216 = load i32, ptr %76, align 4, !tbaa !268
  %217 = mul nsw i32 %215, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, ptr %197, i64 %218
  %220 = add nuw nsw i32 %212, 1
  %221 = add nsw i32 %214, %220
  %222 = mul nsw i32 %221, %216
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, ptr %197, i64 %223
  %225 = mul nsw i32 %213, %206
  %226 = add nsw i32 %225, %220
  %227 = mul nsw i32 %226, %216
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, ptr %197, i64 %228
  %230 = add nsw i32 %225, %212
  %231 = mul nsw i32 %230, %216
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, ptr %197, i64 %232
  %234 = icmp eq ptr %208, null
  br i1 %234, label %237, label %235

235:                                              ; preds = %207
  %236 = getelementptr inbounds [4 x [2 x float]], ptr %208, i64 0, i64 1
  call void @glTexCoord2fv(ptr noundef nonnull %236) #10
  br label %237

237:                                              ; preds = %235, %207
  %238 = icmp eq ptr %209, null
  br i1 %238, label %242, label %239

239:                                              ; preds = %237
  %240 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !100
  %241 = getelementptr inbounds [4 x [2 x float]], ptr %209, i64 0, i64 1
  call void %240(i32 noundef 33986, ptr noundef nonnull %241) #10
  br label %242

242:                                              ; preds = %239, %237
  %243 = icmp eq ptr %211, null
  br i1 %243, label %251, label %244

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %211, i64 7
  %246 = load i8, ptr %245, align 1, !tbaa !416
  %247 = getelementptr inbounds i8, ptr %211, i64 6
  %248 = load i8, ptr %247, align 1, !tbaa !416
  %249 = getelementptr inbounds i8, ptr %211, i64 5
  %250 = load i8, ptr %249, align 1, !tbaa !416
  call void @glColor3ub(i8 noundef zeroext %246, i8 noundef zeroext %248, i8 noundef zeroext %250) #10
  br label %251

251:                                              ; preds = %244, %242
  %252 = getelementptr inbounds [4 x [3 x i16]], ptr %210, i64 0, i64 1
  call void @glNormal3sv(ptr noundef nonnull %252) #10
  call void @glVertex3fv(ptr noundef %233) #10
  br i1 %234, label %255, label %253

253:                                              ; preds = %251
  %254 = getelementptr inbounds [4 x [2 x float]], ptr %208, i64 0, i64 2
  call void @glTexCoord2fv(ptr noundef nonnull %254) #10
  br label %255

255:                                              ; preds = %253, %251
  br i1 %238, label %259, label %256

256:                                              ; preds = %255
  %257 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !100
  %258 = getelementptr inbounds [4 x [2 x float]], ptr %209, i64 0, i64 2
  call void %257(i32 noundef 33986, ptr noundef nonnull %258) #10
  br label %259

259:                                              ; preds = %256, %255
  br i1 %243, label %267, label %260

260:                                              ; preds = %259
  %261 = getelementptr inbounds i8, ptr %211, i64 11
  %262 = load i8, ptr %261, align 1, !tbaa !416
  %263 = getelementptr inbounds i8, ptr %211, i64 10
  %264 = load i8, ptr %263, align 1, !tbaa !416
  %265 = getelementptr inbounds i8, ptr %211, i64 9
  %266 = load i8, ptr %265, align 1, !tbaa !416
  call void @glColor3ub(i8 noundef zeroext %262, i8 noundef zeroext %264, i8 noundef zeroext %266) #10
  br label %267

267:                                              ; preds = %260, %259
  %268 = getelementptr inbounds [4 x [3 x i16]], ptr %210, i64 0, i64 2
  call void @glNormal3sv(ptr noundef nonnull %268) #10
  call void @glVertex3fv(ptr noundef %229) #10
  br i1 %234, label %271, label %269

269:                                              ; preds = %267
  %270 = getelementptr inbounds [4 x [2 x float]], ptr %208, i64 0, i64 3
  call void @glTexCoord2fv(ptr noundef nonnull %270) #10
  br label %271

271:                                              ; preds = %269, %267
  br i1 %238, label %275, label %272

272:                                              ; preds = %271
  %273 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !100
  %274 = getelementptr inbounds [4 x [2 x float]], ptr %209, i64 0, i64 3
  call void %273(i32 noundef 33986, ptr noundef nonnull %274) #10
  br label %275

275:                                              ; preds = %272, %271
  br i1 %243, label %283, label %276

276:                                              ; preds = %275
  %277 = getelementptr inbounds i8, ptr %211, i64 15
  %278 = load i8, ptr %277, align 1, !tbaa !416
  %279 = getelementptr inbounds i8, ptr %211, i64 14
  %280 = load i8, ptr %279, align 1, !tbaa !416
  %281 = getelementptr inbounds i8, ptr %211, i64 13
  %282 = load i8, ptr %281, align 1, !tbaa !416
  call void @glColor3ub(i8 noundef zeroext %278, i8 noundef zeroext %280, i8 noundef zeroext %282) #10
  br label %283

283:                                              ; preds = %276, %275
  %284 = getelementptr inbounds [4 x [3 x i16]], ptr %210, i64 0, i64 3
  call void @glNormal3sv(ptr noundef nonnull %284) #10
  call void @glVertex3fv(ptr noundef %224) #10
  br i1 %234, label %286, label %285

285:                                              ; preds = %283
  call void @glTexCoord2fv(ptr noundef nonnull %208) #10
  br label %286

286:                                              ; preds = %285, %283
  br i1 %238, label %289, label %287

287:                                              ; preds = %286
  %288 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !100
  call void %288(i32 noundef 33986, ptr noundef nonnull %209) #10
  br label %289

289:                                              ; preds = %287, %286
  br i1 %243, label %297, label %290

290:                                              ; preds = %289
  %291 = getelementptr inbounds i8, ptr %211, i64 3
  %292 = load i8, ptr %291, align 1, !tbaa !416
  %293 = getelementptr inbounds i8, ptr %211, i64 2
  %294 = load i8, ptr %293, align 1, !tbaa !416
  %295 = getelementptr inbounds i8, ptr %211, i64 1
  %296 = load i8, ptr %295, align 1, !tbaa !416
  call void @glColor3ub(i8 noundef zeroext %292, i8 noundef zeroext %294, i8 noundef zeroext %296) #10
  br label %297

297:                                              ; preds = %290, %289
  call void @glNormal3sv(ptr noundef %210) #10
  call void @glVertex3fv(ptr noundef %219) #10
  %298 = getelementptr inbounds %struct.MTFace, ptr %208, i64 1
  %299 = select i1 %234, ptr null, ptr %298
  %300 = getelementptr inbounds %struct.MTFace, ptr %209, i64 1
  %301 = select i1 %238, ptr null, ptr %300
  %302 = getelementptr inbounds i8, ptr %211, i64 16
  %303 = select i1 %243, ptr null, ptr %302
  %304 = getelementptr inbounds [4 x [3 x i16]], ptr %210, i64 1
  %305 = icmp eq i32 %220, %21
  br i1 %305, label %306, label %207, !llvm.loop !462

306:                                              ; preds = %297
  %307 = add nuw nsw i32 %205, 1
  %308 = icmp eq i32 %307, %21
  br i1 %308, label %584, label %200, !llvm.loop !463

309:                                              ; preds = %191
  br i1 %190, label %443, label %310

310:                                              ; preds = %309
  call void @glShadeModel(i32 noundef 7425) #10
  br i1 %77, label %311, label %589

311:                                              ; preds = %310, %432
  %312 = phi ptr [ %437, %432 ], [ %192, %310 ]
  %313 = phi ptr [ %439, %432 ], [ %193, %310 ]
  %314 = phi ptr [ %441, %432 ], [ %195, %310 ]
  %315 = phi i32 [ %391, %432 ], [ 0, %310 ]
  call void @glBegin(i32 noundef 8) #10
  %316 = add nuw nsw i32 %315, 1
  br label %317

317:                                              ; preds = %311, %367
  %318 = phi ptr [ %312, %311 ], [ %380, %367 ]
  %319 = phi ptr [ %313, %311 ], [ %379, %367 ]
  %320 = phi ptr [ %314, %311 ], [ %378, %367 ]
  %321 = phi i32 [ 0, %311 ], [ %381, %367 ]
  %322 = load i32, ptr %78, align 4, !tbaa !396
  %323 = mul nsw i32 %322, %315
  %324 = add nsw i32 %323, %321
  %325 = load i32, ptr %79, align 4, !tbaa !268
  %326 = mul nsw i32 %324, %325
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8, ptr %197, i64 %327
  %329 = mul nsw i32 %322, %316
  %330 = add nsw i32 %329, %321
  %331 = mul nsw i32 %330, %325
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i8, ptr %197, i64 %332
  %334 = icmp eq ptr %318, null
  br i1 %334, label %336, label %335

335:                                              ; preds = %317
  call void @glTexCoord2fv(ptr noundef nonnull %318) #10
  br label %336

336:                                              ; preds = %335, %317
  %337 = icmp eq ptr %319, null
  br i1 %337, label %340, label %338

338:                                              ; preds = %336
  %339 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !100
  call void %339(i32 noundef 33986, ptr noundef nonnull %319) #10
  br label %340

340:                                              ; preds = %338, %336
  %341 = icmp eq ptr %320, null
  br i1 %341, label %349, label %342

342:                                              ; preds = %340
  %343 = getelementptr inbounds i8, ptr %320, i64 3
  %344 = load i8, ptr %343, align 1, !tbaa !416
  %345 = getelementptr inbounds i8, ptr %320, i64 2
  %346 = load i8, ptr %345, align 1, !tbaa !416
  %347 = getelementptr inbounds i8, ptr %320, i64 1
  %348 = load i8, ptr %347, align 1, !tbaa !416
  call void @glColor3ub(i8 noundef zeroext %344, i8 noundef zeroext %346, i8 noundef zeroext %348) #10
  br label %349

349:                                              ; preds = %342, %340
  %350 = load i32, ptr %80, align 4, !tbaa !278
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i8, ptr %328, i64 %351
  call void @glNormal3fv(ptr noundef %352) #10
  call void @glVertex3fv(ptr noundef %328) #10
  br i1 %334, label %355, label %353

353:                                              ; preds = %349
  %354 = getelementptr inbounds [4 x [2 x float]], ptr %318, i64 0, i64 1
  call void @glTexCoord2fv(ptr noundef nonnull %354) #10
  br label %355

355:                                              ; preds = %353, %349
  br i1 %337, label %359, label %356

356:                                              ; preds = %355
  %357 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !100
  %358 = getelementptr inbounds [4 x [2 x float]], ptr %319, i64 0, i64 1
  call void %357(i32 noundef 33986, ptr noundef nonnull %358) #10
  br label %359

359:                                              ; preds = %356, %355
  br i1 %341, label %367, label %360

360:                                              ; preds = %359
  %361 = getelementptr inbounds i8, ptr %320, i64 7
  %362 = load i8, ptr %361, align 1, !tbaa !416
  %363 = getelementptr inbounds i8, ptr %320, i64 6
  %364 = load i8, ptr %363, align 1, !tbaa !416
  %365 = getelementptr inbounds i8, ptr %320, i64 5
  %366 = load i8, ptr %365, align 1, !tbaa !416
  call void @glColor3ub(i8 noundef zeroext %362, i8 noundef zeroext %364, i8 noundef zeroext %366) #10
  br label %367

367:                                              ; preds = %360, %359
  %368 = load i32, ptr %80, align 4, !tbaa !278
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i8, ptr %333, i64 %369
  call void @glNormal3fv(ptr noundef %370) #10
  call void @glVertex3fv(ptr noundef %333) #10
  %371 = icmp eq i32 %321, %81
  %372 = getelementptr inbounds %struct.MTFace, ptr %318, i64 1
  %373 = select i1 %334, ptr null, ptr %372
  %374 = getelementptr inbounds %struct.MTFace, ptr %319, i64 1
  %375 = select i1 %337, ptr null, ptr %374
  %376 = getelementptr inbounds i8, ptr %320, i64 16
  %377 = select i1 %341, ptr null, ptr %376
  %378 = select i1 %371, ptr %320, ptr %377
  %379 = select i1 %371, ptr %319, ptr %375
  %380 = select i1 %371, ptr %318, ptr %373
  %381 = add nuw nsw i32 %321, 1
  %382 = icmp eq i32 %381, %21
  br i1 %382, label %383, label %317, !llvm.loop !464

383:                                              ; preds = %367
  %384 = load i32, ptr %82, align 4, !tbaa !396
  %385 = mul nsw i32 %384, %315
  %386 = add nsw i32 %385, %381
  %387 = load i32, ptr %83, align 4, !tbaa !268
  %388 = mul nsw i32 %386, %387
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i8, ptr %197, i64 %389
  %391 = add nuw nsw i32 %315, 1
  %392 = mul nsw i32 %384, %391
  %393 = add nsw i32 %392, %381
  %394 = mul nsw i32 %393, %387
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i8, ptr %197, i64 %395
  %397 = icmp eq ptr %380, null
  br i1 %397, label %400, label %398

398:                                              ; preds = %383
  %399 = getelementptr inbounds [4 x [2 x float]], ptr %380, i64 0, i64 3
  call void @glTexCoord2fv(ptr noundef nonnull %399) #10
  br label %400

400:                                              ; preds = %398, %383
  %401 = icmp eq ptr %379, null
  br i1 %401, label %405, label %402

402:                                              ; preds = %400
  %403 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !100
  %404 = getelementptr inbounds [4 x [2 x float]], ptr %379, i64 0, i64 3
  call void %403(i32 noundef 33986, ptr noundef nonnull %404) #10
  br label %405

405:                                              ; preds = %402, %400
  %406 = icmp eq ptr %378, null
  br i1 %406, label %414, label %407

407:                                              ; preds = %405
  %408 = getelementptr inbounds i8, ptr %378, i64 15
  %409 = load i8, ptr %408, align 1, !tbaa !416
  %410 = getelementptr inbounds i8, ptr %378, i64 14
  %411 = load i8, ptr %410, align 1, !tbaa !416
  %412 = getelementptr inbounds i8, ptr %378, i64 13
  %413 = load i8, ptr %412, align 1, !tbaa !416
  call void @glColor3ub(i8 noundef zeroext %409, i8 noundef zeroext %411, i8 noundef zeroext %413) #10
  br label %414

414:                                              ; preds = %407, %405
  %415 = load i32, ptr %84, align 4, !tbaa !278
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i8, ptr %390, i64 %416
  call void @glNormal3fv(ptr noundef %417) #10
  call void @glVertex3fv(ptr noundef %390) #10
  br i1 %397, label %420, label %418

418:                                              ; preds = %414
  %419 = getelementptr inbounds [4 x [2 x float]], ptr %380, i64 0, i64 2
  call void @glTexCoord2fv(ptr noundef nonnull %419) #10
  br label %420

420:                                              ; preds = %418, %414
  br i1 %401, label %424, label %421

421:                                              ; preds = %420
  %422 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !100
  %423 = getelementptr inbounds [4 x [2 x float]], ptr %379, i64 0, i64 2
  call void %422(i32 noundef 33986, ptr noundef nonnull %423) #10
  br label %424

424:                                              ; preds = %421, %420
  br i1 %406, label %432, label %425

425:                                              ; preds = %424
  %426 = getelementptr inbounds i8, ptr %378, i64 11
  %427 = load i8, ptr %426, align 1, !tbaa !416
  %428 = getelementptr inbounds i8, ptr %378, i64 10
  %429 = load i8, ptr %428, align 1, !tbaa !416
  %430 = getelementptr inbounds i8, ptr %378, i64 9
  %431 = load i8, ptr %430, align 1, !tbaa !416
  call void @glColor3ub(i8 noundef zeroext %427, i8 noundef zeroext %429, i8 noundef zeroext %431) #10
  br label %432

432:                                              ; preds = %425, %424
  %433 = load i32, ptr %84, align 4, !tbaa !278
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i8, ptr %396, i64 %434
  call void @glNormal3fv(ptr noundef %435) #10
  call void @glVertex3fv(ptr noundef %396) #10
  %436 = getelementptr inbounds %struct.MTFace, ptr %380, i64 1
  %437 = select i1 %397, ptr null, ptr %436
  %438 = getelementptr inbounds %struct.MTFace, ptr %379, i64 1
  %439 = select i1 %401, ptr null, ptr %438
  %440 = getelementptr inbounds i8, ptr %378, i64 16
  %441 = select i1 %406, ptr null, ptr %440
  call void @glEnd() #10
  %442 = icmp eq i32 %391, %21
  br i1 %442, label %589, label %311, !llvm.loop !465

443:                                              ; preds = %309
  %444 = icmp eq ptr %195, null
  %445 = select i1 %444, i32 7424, i32 7425
  call void @glShadeModel(i32 noundef %445) #10
  call void @glBegin(i32 noundef 7) #10
  br i1 %85, label %446, label %584

446:                                              ; preds = %443, %581
  %447 = phi ptr [ %575, %581 ], [ %192, %443 ]
  %448 = phi ptr [ %577, %581 ], [ %193, %443 ]
  %449 = phi ptr [ %579, %581 ], [ %195, %443 ]
  %450 = phi i32 [ %582, %581 ], [ 0, %443 ]
  %451 = add nuw nsw i32 %450, 1
  br label %452

452:                                              ; preds = %446, %573
  %453 = phi ptr [ %447, %446 ], [ %575, %573 ]
  %454 = phi ptr [ %448, %446 ], [ %577, %573 ]
  %455 = phi ptr [ %449, %446 ], [ %579, %573 ]
  %456 = phi i32 [ 0, %446 ], [ %464, %573 ]
  %457 = load i32, ptr %86, align 4, !tbaa !396
  %458 = mul nsw i32 %457, %450
  %459 = add nsw i32 %458, %456
  %460 = load i32, ptr %87, align 4, !tbaa !268
  %461 = mul nsw i32 %459, %460
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i8, ptr %197, i64 %462
  %464 = add nuw nsw i32 %456, 1
  %465 = add nsw i32 %458, %464
  %466 = mul nsw i32 %465, %460
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i8, ptr %197, i64 %467
  %469 = mul nsw i32 %457, %451
  %470 = add nsw i32 %469, %464
  %471 = mul nsw i32 %470, %460
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i8, ptr %197, i64 %472
  %474 = add nsw i32 %469, %456
  %475 = mul nsw i32 %474, %460
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i8, ptr %197, i64 %476
  %478 = load float, ptr %473, align 4, !tbaa !66
  %479 = load float, ptr %463, align 4, !tbaa !66
  %480 = fsub float %478, %479
  %481 = getelementptr inbounds float, ptr %473, i64 1
  %482 = load float, ptr %481, align 4, !tbaa !66
  %483 = getelementptr inbounds float, ptr %463, i64 1
  %484 = load float, ptr %483, align 4, !tbaa !66
  %485 = fsub float %482, %484
  %486 = getelementptr inbounds float, ptr %473, i64 2
  %487 = load float, ptr %486, align 4, !tbaa !66
  %488 = getelementptr inbounds float, ptr %463, i64 2
  %489 = load float, ptr %488, align 4, !tbaa !66
  %490 = fsub float %487, %489
  %491 = load float, ptr %477, align 4, !tbaa !66
  %492 = load float, ptr %468, align 4, !tbaa !66
  %493 = fsub float %491, %492
  %494 = getelementptr inbounds float, ptr %477, i64 1
  %495 = load float, ptr %494, align 4, !tbaa !66
  %496 = getelementptr inbounds float, ptr %468, i64 1
  %497 = load float, ptr %496, align 4, !tbaa !66
  %498 = fsub float %495, %497
  %499 = getelementptr inbounds float, ptr %477, i64 2
  %500 = load float, ptr %499, align 4, !tbaa !66
  %501 = getelementptr inbounds float, ptr %468, i64 2
  %502 = load float, ptr %501, align 4, !tbaa !66
  %503 = fsub float %500, %502
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %504 = fneg float %503
  %505 = fmul float %485, %504
  %506 = call float @llvm.fmuladd.f32(float %498, float %490, float %505)
  store float %506, ptr %6, align 4, !tbaa !66
  %507 = fneg float %493
  %508 = fmul float %490, %507
  %509 = call float @llvm.fmuladd.f32(float %503, float %480, float %508)
  store float %509, ptr %88, align 4, !tbaa !66
  %510 = fneg float %498
  %511 = fmul float %480, %510
  %512 = call float @llvm.fmuladd.f32(float %493, float %485, float %511)
  store float %512, ptr %89, align 4, !tbaa !66
  call void @glNormal3fv(ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  %513 = icmp eq ptr %453, null
  br i1 %513, label %516, label %514

514:                                              ; preds = %452
  %515 = getelementptr inbounds [4 x [2 x float]], ptr %453, i64 0, i64 1
  call void @glTexCoord2fv(ptr noundef nonnull %515) #10
  br label %516

516:                                              ; preds = %514, %452
  %517 = icmp eq ptr %454, null
  br i1 %517, label %521, label %518

518:                                              ; preds = %516
  %519 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !100
  %520 = getelementptr inbounds [4 x [2 x float]], ptr %454, i64 0, i64 1
  call void %519(i32 noundef 33986, ptr noundef nonnull %520) #10
  br label %521

521:                                              ; preds = %518, %516
  %522 = icmp eq ptr %455, null
  br i1 %522, label %530, label %523

523:                                              ; preds = %521
  %524 = getelementptr inbounds i8, ptr %455, i64 7
  %525 = load i8, ptr %524, align 1, !tbaa !416
  %526 = getelementptr inbounds i8, ptr %455, i64 6
  %527 = load i8, ptr %526, align 1, !tbaa !416
  %528 = getelementptr inbounds i8, ptr %455, i64 5
  %529 = load i8, ptr %528, align 1, !tbaa !416
  call void @glColor3ub(i8 noundef zeroext %525, i8 noundef zeroext %527, i8 noundef zeroext %529) #10
  br label %530

530:                                              ; preds = %523, %521
  call void @glVertex3fv(ptr noundef nonnull %477) #10
  br i1 %513, label %533, label %531

531:                                              ; preds = %530
  %532 = getelementptr inbounds [4 x [2 x float]], ptr %453, i64 0, i64 2
  call void @glTexCoord2fv(ptr noundef nonnull %532) #10
  br label %533

533:                                              ; preds = %531, %530
  br i1 %517, label %537, label %534

534:                                              ; preds = %533
  %535 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !100
  %536 = getelementptr inbounds [4 x [2 x float]], ptr %454, i64 0, i64 2
  call void %535(i32 noundef 33986, ptr noundef nonnull %536) #10
  br label %537

537:                                              ; preds = %534, %533
  br i1 %522, label %545, label %538

538:                                              ; preds = %537
  %539 = getelementptr inbounds i8, ptr %455, i64 11
  %540 = load i8, ptr %539, align 1, !tbaa !416
  %541 = getelementptr inbounds i8, ptr %455, i64 10
  %542 = load i8, ptr %541, align 1, !tbaa !416
  %543 = getelementptr inbounds i8, ptr %455, i64 9
  %544 = load i8, ptr %543, align 1, !tbaa !416
  call void @glColor3ub(i8 noundef zeroext %540, i8 noundef zeroext %542, i8 noundef zeroext %544) #10
  br label %545

545:                                              ; preds = %538, %537
  call void @glVertex3fv(ptr noundef nonnull %473) #10
  br i1 %513, label %548, label %546

546:                                              ; preds = %545
  %547 = getelementptr inbounds [4 x [2 x float]], ptr %453, i64 0, i64 3
  call void @glTexCoord2fv(ptr noundef nonnull %547) #10
  br label %548

548:                                              ; preds = %546, %545
  br i1 %517, label %552, label %549

549:                                              ; preds = %548
  %550 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !100
  %551 = getelementptr inbounds [4 x [2 x float]], ptr %454, i64 0, i64 3
  call void %550(i32 noundef 33986, ptr noundef nonnull %551) #10
  br label %552

552:                                              ; preds = %549, %548
  br i1 %522, label %560, label %553

553:                                              ; preds = %552
  %554 = getelementptr inbounds i8, ptr %455, i64 15
  %555 = load i8, ptr %554, align 1, !tbaa !416
  %556 = getelementptr inbounds i8, ptr %455, i64 14
  %557 = load i8, ptr %556, align 1, !tbaa !416
  %558 = getelementptr inbounds i8, ptr %455, i64 13
  %559 = load i8, ptr %558, align 1, !tbaa !416
  call void @glColor3ub(i8 noundef zeroext %555, i8 noundef zeroext %557, i8 noundef zeroext %559) #10
  br label %560

560:                                              ; preds = %553, %552
  call void @glVertex3fv(ptr noundef nonnull %468) #10
  br i1 %513, label %562, label %561

561:                                              ; preds = %560
  call void @glTexCoord2fv(ptr noundef nonnull %453) #10
  br label %562

562:                                              ; preds = %561, %560
  br i1 %517, label %565, label %563

563:                                              ; preds = %562
  %564 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !100
  call void %564(i32 noundef 33986, ptr noundef nonnull %454) #10
  br label %565

565:                                              ; preds = %563, %562
  br i1 %522, label %573, label %566

566:                                              ; preds = %565
  %567 = getelementptr inbounds i8, ptr %455, i64 3
  %568 = load i8, ptr %567, align 1, !tbaa !416
  %569 = getelementptr inbounds i8, ptr %455, i64 2
  %570 = load i8, ptr %569, align 1, !tbaa !416
  %571 = getelementptr inbounds i8, ptr %455, i64 1
  %572 = load i8, ptr %571, align 1, !tbaa !416
  call void @glColor3ub(i8 noundef zeroext %568, i8 noundef zeroext %570, i8 noundef zeroext %572) #10
  br label %573

573:                                              ; preds = %566, %565
  call void @glVertex3fv(ptr noundef nonnull %463) #10
  %574 = getelementptr inbounds %struct.MTFace, ptr %453, i64 1
  %575 = select i1 %513, ptr null, ptr %574
  %576 = getelementptr inbounds %struct.MTFace, ptr %454, i64 1
  %577 = select i1 %517, ptr null, ptr %576
  %578 = getelementptr inbounds i8, ptr %455, i64 16
  %579 = select i1 %522, ptr null, ptr %578
  %580 = icmp eq i32 %464, %21
  br i1 %580, label %581, label %452, !llvm.loop !466

581:                                              ; preds = %573
  %582 = add nuw nsw i32 %450, 1
  %583 = icmp eq i32 %582, %21
  br i1 %583, label %584, label %446, !llvm.loop !467

584:                                              ; preds = %306, %581, %443, %199
  %585 = phi ptr [ %195, %199 ], [ %195, %443 ], [ %579, %581 ], [ %303, %306 ]
  %586 = phi ptr [ %194, %199 ], [ null, %443 ], [ null, %581 ], [ %304, %306 ]
  %587 = phi ptr [ %193, %199 ], [ %193, %443 ], [ %577, %581 ], [ %301, %306 ]
  %588 = phi ptr [ %192, %199 ], [ %192, %443 ], [ %575, %581 ], [ %299, %306 ]
  call void @glEnd() #10
  br label %589

589:                                              ; preds = %432, %584, %310
  %590 = phi ptr [ %195, %310 ], [ %585, %584 ], [ %441, %432 ]
  %591 = phi ptr [ null, %310 ], [ %586, %584 ], [ null, %432 ]
  %592 = phi ptr [ %193, %310 ], [ %587, %584 ], [ %439, %432 ]
  %593 = phi ptr [ %192, %310 ], [ %588, %584 ], [ %437, %432 ]
  %594 = add nuw nsw i32 %196, 1
  %595 = icmp eq i32 %594, %103
  br i1 %595, label %596, label %191, !llvm.loop !468

596:                                              ; preds = %589, %180, %171
  %597 = phi ptr [ %148, %171 ], [ %148, %180 ], [ %592, %589 ]
  %598 = phi ptr [ %174, %171 ], [ %149, %180 ], [ %593, %589 ]
  %599 = phi ptr [ %179, %171 ], [ %185, %180 ], [ %185, %589 ]
  %600 = add nuw nsw i64 %92, 1
  %601 = icmp eq i64 %600, %90
  br i1 %601, label %602, label %91, !llvm.loop !469

602:                                              ; preds = %596, %63
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #10
  ret void
}

declare i32 @CustomData_get_stencil_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_get_layer_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @DM_paint_uvlayer_active_get(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @GPU_enable_material(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glTexCoord2fv(ptr noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @glPolygonStipple(ptr noundef) local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @DM_vertex_attributes_from_gpu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ccgdm_draw_attrib_vertex(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !425
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !470
  %13 = icmp eq ptr %12, null
  %14 = sext i32 %2 to i64
  %15 = getelementptr inbounds [3 x float], ptr %12, i64 %14
  %16 = select i1 %13, ptr %5, ptr %15
  %17 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 3, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !471
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %10
  call void @glTexCoord3fv(ptr noundef %16) #10
  br label %25

21:                                               ; preds = %10
  %22 = load ptr, ptr @__glewVertexAttrib3fvARB, align 8, !tbaa !100
  %23 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 3, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !472
  call void %22(i32 noundef %24, ptr noundef %16) #10
  br label %25

25:                                               ; preds = %20, %21, %4
  %26 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !473
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = sext i32 %1 to i64
  %31 = zext nneg i32 %3 to i64
  br label %43

32:                                               ; preds = %59, %25
  %33 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 5
  %34 = load i32, ptr %33, align 4, !tbaa !474
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %87

36:                                               ; preds = %32
  %37 = shl nsw i32 %1, 2
  %38 = add nsw i32 %37, %3
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 1
  %41 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 2
  %42 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 3
  br label %64

43:                                               ; preds = %29, %59
  %44 = phi i64 [ 0, %29 ], [ %60, %59 ]
  %45 = getelementptr inbounds [8 x %struct.anon.4], ptr %0, i64 0, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !475
  %47 = icmp eq ptr %46, null
  %48 = getelementptr inbounds %struct.MTFace, ptr %46, i64 %30
  %49 = getelementptr inbounds [4 x [2 x float]], ptr %48, i64 0, i64 %31
  %50 = select i1 %47, ptr %5, ptr %49
  %51 = getelementptr inbounds [8 x %struct.anon.4], ptr %0, i64 0, i64 %44, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !476
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %43
  call void @glTexCoord2fv(ptr noundef %50) #10
  br label %59

55:                                               ; preds = %43
  %56 = load ptr, ptr @__glewVertexAttrib2fvARB, align 8, !tbaa !100
  %57 = getelementptr inbounds [8 x %struct.anon.4], ptr %0, i64 0, i64 %44, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !477
  call void %56(i32 noundef %58, ptr noundef %50) #10
  br label %59

59:                                               ; preds = %55, %54
  %60 = add nuw nsw i64 %44, 1
  %61 = load i32, ptr %26, align 8, !tbaa !473
  %62 = sext i32 %61 to i64
  %63 = icmp slt i64 %60, %62
  br i1 %63, label %43, label %32, !llvm.loop !478

64:                                               ; preds = %36, %79
  %65 = phi i64 [ 0, %36 ], [ %83, %79 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  %66 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 1, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !479
  %68 = icmp eq ptr %67, null
  br i1 %68, label %78, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.MCol, ptr %67, i64 %39
  %71 = getelementptr inbounds %struct.MCol, ptr %67, i64 %39, i32 3
  %72 = load i8, ptr %71, align 1, !tbaa !224
  store i8 %72, ptr %6, align 4, !tbaa !416
  %73 = getelementptr inbounds %struct.MCol, ptr %67, i64 %39, i32 2
  %74 = load i8, ptr %73, align 1, !tbaa !227
  store i8 %74, ptr %40, align 1, !tbaa !416
  %75 = getelementptr inbounds %struct.MCol, ptr %67, i64 %39, i32 1
  %76 = load i8, ptr %75, align 1, !tbaa !229
  store i8 %76, ptr %41, align 2, !tbaa !416
  %77 = load i8, ptr %70, align 1, !tbaa !231
  store i8 %77, ptr %42, align 1, !tbaa !416
  br label %79

78:                                               ; preds = %64
  store i32 0, ptr %6, align 4
  br label %79

79:                                               ; preds = %78, %69
  %80 = load ptr, ptr @__glewVertexAttrib4ubvARB, align 8, !tbaa !100
  %81 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 1, i64 %65, i32 2
  %82 = load i32, ptr %81, align 4, !tbaa !480
  call void %80(i32 noundef %82, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %83 = add nuw nsw i64 %65, 1
  %84 = load i32, ptr %33, align 4, !tbaa !474
  %85 = sext i32 %84 to i64
  %86 = icmp slt i64 %83, %85
  br i1 %86, label %64, label %87, !llvm.loop !481

87:                                               ; preds = %79, %32
  %88 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 6
  %89 = load i32, ptr %88, align 8, !tbaa !482
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %103, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !483
  %94 = icmp eq ptr %93, null
  %95 = shl nsw i32 %1, 2
  %96 = add nsw i32 %95, %3
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [4 x float], ptr %93, i64 %97
  %99 = select i1 %94, ptr %5, ptr %98
  %100 = load ptr, ptr @__glewVertexAttrib4fvARB, align 8, !tbaa !100
  %101 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 2, i32 2
  %102 = load i32, ptr %101, align 4, !tbaa !484
  call void %100(i32 noundef %102, ptr noundef %99) #10
  br label %103

103:                                              ; preds = %91, %87
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret void
}

declare void @glTexCoord3fv(ptr noundef) local_unnamed_addr #2

declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

declare i32 @DM_release(ptr noundef) local_unnamed_addr #2

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @multires_modifier_update_mdisps(ptr noundef) local_unnamed_addr #2

declare void @multires_modifier_update_hidden(ptr noundef) local_unnamed_addr #2

declare void @BLI_edgehash_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CustomData_get_n(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @ss_sync_from_uv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 35
  %11 = load ptr, ptr %10, align 8, !tbaa !96
  %12 = tail call ptr %11(ptr noundef %2) #10
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 34
  %14 = load ptr, ptr %13, align 8, !tbaa !95
  %15 = tail call ptr %14(ptr noundef %2) #10
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 31
  %17 = load ptr, ptr %16, align 8, !tbaa !93
  %18 = tail call ptr %17(ptr noundef %2) #10
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %20 = load ptr, ptr %19, align 8, !tbaa !97
  %21 = tail call i32 %20(ptr noundef %2) #10
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 27
  %23 = load ptr, ptr %22, align 8, !tbaa !485
  %24 = tail call i32 %23(ptr noundef %2) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %25 = tail call i32 @ccgSubSurf_getSubdivisionLevels(ptr noundef %0) #10
  %26 = sitofp i32 %25 to float
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  %27 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float 0x3F1A36E2E0000000, ptr %27, align 4, !tbaa !66
  store float 0x3F1A36E2E0000000, ptr %5, align 4, !tbaa !66
  %28 = call ptr @BKE_mesh_uv_vert_map_create(ptr noundef %12, ptr noundef %15, ptr noundef %3, i32 noundef %24, i32 noundef %21, i32 noundef 0, ptr noundef nonnull %5) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %264, label %30

30:                                               ; preds = %4
  %31 = call i32 @ccgSubSurf_initFullSync(ptr noundef %0) #10
  %32 = icmp sgt i32 %21, 0
  br i1 %32, label %33, label %91

33:                                               ; preds = %30
  %34 = getelementptr inbounds float, ptr %6, i64 1
  %35 = zext nneg i32 %21 to i64
  br label %36

36:                                               ; preds = %33, %88
  %37 = phi i64 [ 0, %33 ], [ %89, %88 ]
  %38 = trunc i64 %37 to i32
  %39 = call ptr @BKE_mesh_uv_vert_map_get_vert(ptr noundef nonnull %28, i32 noundef %38) #10
  %40 = icmp eq ptr %39, null
  br i1 %40, label %88, label %41

41:                                               ; preds = %36
  %42 = trunc i64 %37 to i32
  %43 = call ptr @BKE_mesh_uv_vert_map_get_vert(ptr noundef nonnull %28, i32 noundef %42) #10
  br label %44

44:                                               ; preds = %48, %41
  %45 = phi ptr [ %43, %41 ], [ %46, %48 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !486
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.UvMapVert, ptr %46, i64 0, i32 3
  %50 = load i8, ptr %49, align 1, !tbaa !488
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %44, label %57, !llvm.loop !489

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.MVert, ptr %18, i64 %37, i32 2
  %54 = load i8, ptr %53, align 2, !tbaa !55
  %55 = and i8 %54, 64
  %56 = icmp ne i8 %55, 0
  br label %57

57:                                               ; preds = %48, %52
  %58 = phi i1 [ %56, %52 ], [ true, %48 ]
  %59 = zext i1 %58 to i32
  %60 = trunc i64 %37 to i32
  %61 = call ptr @BKE_mesh_uv_vert_map_get_vert(ptr noundef nonnull %28, i32 noundef %60) #10
  %62 = icmp eq ptr %61, null
  br i1 %62, label %88, label %63

63:                                               ; preds = %57, %85
  %64 = phi ptr [ %86, %85 ], [ %61, %57 ]
  %65 = getelementptr inbounds %struct.UvMapVert, ptr %64, i64 0, i32 3
  %66 = load i8, ptr %65, align 1, !tbaa !488
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %85, label %68

68:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  %69 = getelementptr inbounds %struct.UvMapVert, ptr %64, i64 0, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !490
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.MPoly, ptr %12, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !50
  %74 = getelementptr inbounds %struct.UvMapVert, ptr %64, i64 0, i32 2
  %75 = load i8, ptr %74, align 4, !tbaa !491
  %76 = zext i8 %75 to i32
  %77 = add nsw i32 %73, %76
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds %struct.MLoopUV, ptr %3, i64 %78
  %81 = load float, ptr %80, align 4, !tbaa !66
  store float %81, ptr %6, align 4, !tbaa !66
  %82 = getelementptr inbounds float, ptr %80, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !66
  store float %83, ptr %34, align 4, !tbaa !66
  %84 = call i32 @ccgSubSurf_syncVert(ptr noundef %0, ptr noundef %79, ptr noundef nonnull %6, i32 noundef %59, ptr noundef nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  br label %85

85:                                               ; preds = %63, %68
  %86 = load ptr, ptr %64, align 8, !tbaa !486
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %63, !llvm.loop !492

88:                                               ; preds = %85, %57, %36
  %89 = add nuw nsw i64 %37, 1
  %90 = icmp eq i64 %89, %35
  br i1 %90, label %91, label %36, !llvm.loop !493

91:                                               ; preds = %88, %30
  %92 = shl nsw i32 %24, 1
  %93 = call ptr @BLI_edgeset_new_ex(ptr noundef nonnull @__func__.ss_sync_from_uv, i32 noundef %92) #10
  %94 = icmp sgt i32 %24, 0
  br i1 %94, label %95, label %201

95:                                               ; preds = %91
  %96 = zext nneg i32 %24 to i64
  br label %97

97:                                               ; preds = %95, %198
  %98 = phi i64 [ 0, %95 ], [ %199, %198 ]
  %99 = getelementptr inbounds %struct.MPoly, ptr %12, i64 %98
  %100 = getelementptr inbounds %struct.MPoly, ptr %12, i64 %98, i32 1
  %101 = load i32, ptr %100, align 4, !tbaa !47
  %102 = inttoptr i64 %98 to ptr
  %103 = call ptr @ccgSubSurf_getFace(ptr noundef %1, ptr noundef %102) #10
  %104 = load i32, ptr %99, align 4, !tbaa !50
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.MLoop, ptr %15, i64 %105
  %107 = zext i32 %101 to i64
  %108 = call ptr @llvm.stacksave.p0()
  %109 = alloca ptr, i64 %107, align 16
  %110 = getelementptr inbounds %struct.MPoly, ptr %12, i64 %98, i32 1
  %111 = load i32, ptr %110, align 4, !tbaa !47
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %151

113:                                              ; preds = %97
  %114 = zext nneg i32 %111 to i64
  br label %115

115:                                              ; preds = %135, %113
  %116 = phi i64 [ 0, %113 ], [ %149, %135 ]
  %117 = getelementptr inbounds %struct.MLoop, ptr %106, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !110
  %119 = call ptr @BKE_mesh_uv_vert_map_get_vert(ptr noundef nonnull %28, i32 noundef %118) #10
  %120 = icmp eq ptr %119, null
  br i1 %120, label %135, label %121

121:                                              ; preds = %115, %132
  %122 = phi ptr [ %133, %132 ], [ %119, %115 ]
  %123 = phi ptr [ %127, %132 ], [ %119, %115 ]
  %124 = getelementptr inbounds %struct.UvMapVert, ptr %122, i64 0, i32 3
  %125 = load i8, ptr %124, align 1, !tbaa !488
  %126 = icmp eq i8 %125, 0
  %127 = select i1 %126, ptr %123, ptr %122
  %128 = getelementptr inbounds %struct.UvMapVert, ptr %122, i64 0, i32 1
  %129 = load i32, ptr %128, align 8, !tbaa !490
  %130 = zext i32 %129 to i64
  %131 = icmp eq i64 %98, %130
  br i1 %131, label %135, label %132

132:                                              ; preds = %121
  %133 = load ptr, ptr %122, align 8, !tbaa !486
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %121, !llvm.loop !494

135:                                              ; preds = %132, %121, %115
  %136 = phi ptr [ %119, %115 ], [ %127, %121 ], [ %127, %132 ]
  %137 = getelementptr inbounds %struct.UvMapVert, ptr %136, i64 0, i32 1
  %138 = load i32, ptr %137, align 8, !tbaa !490
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.MPoly, ptr %12, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !50
  %142 = getelementptr inbounds %struct.UvMapVert, ptr %136, i64 0, i32 2
  %143 = load i8, ptr %142, align 4, !tbaa !491
  %144 = zext i8 %143 to i32
  %145 = add nsw i32 %141, %144
  %146 = sext i32 %145 to i64
  %147 = inttoptr i64 %146 to ptr
  %148 = getelementptr inbounds ptr, ptr %109, i64 %116
  store ptr %147, ptr %148, align 8, !tbaa !100
  %149 = add nuw nsw i64 %116, 1
  %150 = icmp eq i64 %149, %114
  br i1 %150, label %151, label %115, !llvm.loop !495

151:                                              ; preds = %135, %97
  %152 = icmp sgt i32 %101, 0
  br i1 %152, label %153, label %198

153:                                              ; preds = %151
  %154 = add nsw i32 %101, -1
  %155 = zext nneg i32 %101 to i64
  br label %156

156:                                              ; preds = %153, %194
  %157 = phi i64 [ 0, %153 ], [ %195, %194 ]
  %158 = phi i32 [ %154, %153 ], [ %196, %194 ]
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds ptr, ptr %109, i64 %159
  %161 = load ptr, ptr %160, align 8, !tbaa !100
  %162 = ptrtoint ptr %161 to i64
  %163 = trunc i64 %162 to i32
  %164 = getelementptr inbounds ptr, ptr %109, i64 %157
  %165 = load ptr, ptr %164, align 8, !tbaa !100
  %166 = ptrtoint ptr %165 to i64
  %167 = trunc i64 %166 to i32
  %168 = getelementptr inbounds %struct.MLoop, ptr %106, i64 %159
  %169 = load i32, ptr %168, align 4, !tbaa !110
  %170 = getelementptr inbounds %struct.MLoop, ptr %106, i64 %157
  %171 = load i32, ptr %170, align 4, !tbaa !110
  %172 = call zeroext i8 @BLI_edgeset_add(ptr noundef %93, i32 noundef %163, i32 noundef %167) #10
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %194, label %174

174:                                              ; preds = %156
  %175 = zext i32 %171 to i64
  %176 = zext i32 %169 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  %177 = call ptr @ccgSubSurf_getFaceEdge(ptr noundef %103, i32 noundef %158) #10
  %178 = load i32, ptr %99, align 4, !tbaa !50
  %179 = add nsw i32 %178, %158
  %180 = sext i32 %179 to i64
  %181 = inttoptr i64 %180 to ptr
  %182 = getelementptr inbounds %struct.MVert, ptr %18, i64 %176, i32 2
  %183 = load i8, ptr %182, align 2, !tbaa !55
  %184 = getelementptr inbounds %struct.MVert, ptr %18, i64 %175, i32 2
  %185 = load i8, ptr %184, align 2, !tbaa !55
  %186 = and i8 %183, 64
  %187 = and i8 %186, %185
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %174
  %190 = call float @ccgSubSurf_getEdgeCrease(ptr noundef %177) #10
  br label %191

191:                                              ; preds = %174, %189
  %192 = phi float [ %190, %189 ], [ %26, %174 ]
  %193 = call i32 @ccgSubSurf_syncEdge(ptr noundef %0, ptr noundef %181, ptr noundef %161, ptr noundef %165, float noundef %192, ptr noundef nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  br label %194

194:                                              ; preds = %191, %156
  %195 = add nuw nsw i64 %157, 1
  %196 = trunc i64 %157 to i32
  %197 = icmp eq i64 %195, %155
  br i1 %197, label %198, label %156, !llvm.loop !496

198:                                              ; preds = %194, %151
  call void @llvm.stackrestore.p0(ptr %108)
  %199 = add nuw nsw i64 %98, 1
  %200 = icmp eq i64 %199, %96
  br i1 %200, label %201, label %97, !llvm.loop !497

201:                                              ; preds = %198, %91
  call void @BLI_edgeset_free(ptr noundef %93) #10
  %202 = icmp sgt i32 %24, 0
  br i1 %202, label %203, label %262

203:                                              ; preds = %201
  %204 = zext nneg i32 %24 to i64
  br label %205

205:                                              ; preds = %203, %257
  %206 = phi i64 [ 0, %203 ], [ %260, %257 ]
  %207 = getelementptr inbounds %struct.MPoly, ptr %12, i64 %206
  %208 = load i32, ptr %207, align 4, !tbaa !50
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.MLoop, ptr %15, i64 %209
  %211 = getelementptr inbounds %struct.MPoly, ptr %12, i64 %206, i32 1
  %212 = load i32, ptr %211, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  %213 = zext i32 %212 to i64
  %214 = call ptr @llvm.stacksave.p0()
  %215 = alloca ptr, i64 %213, align 16
  %216 = getelementptr inbounds %struct.MPoly, ptr %12, i64 %206, i32 1
  %217 = load i32, ptr %216, align 4, !tbaa !47
  %218 = icmp sgt i32 %217, 0
  br i1 %218, label %219, label %257

219:                                              ; preds = %205
  %220 = zext nneg i32 %217 to i64
  br label %221

221:                                              ; preds = %241, %219
  %222 = phi i64 [ 0, %219 ], [ %255, %241 ]
  %223 = getelementptr inbounds %struct.MLoop, ptr %210, i64 %222
  %224 = load i32, ptr %223, align 4, !tbaa !110
  %225 = call ptr @BKE_mesh_uv_vert_map_get_vert(ptr noundef nonnull %28, i32 noundef %224) #10
  %226 = icmp eq ptr %225, null
  br i1 %226, label %241, label %227

227:                                              ; preds = %221, %238
  %228 = phi ptr [ %239, %238 ], [ %225, %221 ]
  %229 = phi ptr [ %233, %238 ], [ %225, %221 ]
  %230 = getelementptr inbounds %struct.UvMapVert, ptr %228, i64 0, i32 3
  %231 = load i8, ptr %230, align 1, !tbaa !488
  %232 = icmp eq i8 %231, 0
  %233 = select i1 %232, ptr %229, ptr %228
  %234 = getelementptr inbounds %struct.UvMapVert, ptr %228, i64 0, i32 1
  %235 = load i32, ptr %234, align 8, !tbaa !490
  %236 = zext i32 %235 to i64
  %237 = icmp eq i64 %206, %236
  br i1 %237, label %241, label %238

238:                                              ; preds = %227
  %239 = load ptr, ptr %228, align 8, !tbaa !486
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %227, !llvm.loop !494

241:                                              ; preds = %238, %227, %221
  %242 = phi ptr [ %225, %221 ], [ %233, %227 ], [ %233, %238 ]
  %243 = getelementptr inbounds %struct.UvMapVert, ptr %242, i64 0, i32 1
  %244 = load i32, ptr %243, align 8, !tbaa !490
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds %struct.MPoly, ptr %12, i64 %245
  %247 = load i32, ptr %246, align 4, !tbaa !50
  %248 = getelementptr inbounds %struct.UvMapVert, ptr %242, i64 0, i32 2
  %249 = load i8, ptr %248, align 4, !tbaa !491
  %250 = zext i8 %249 to i32
  %251 = add nsw i32 %247, %250
  %252 = sext i32 %251 to i64
  %253 = inttoptr i64 %252 to ptr
  %254 = getelementptr inbounds ptr, ptr %215, i64 %222
  store ptr %253, ptr %254, align 8, !tbaa !100
  %255 = add nuw nsw i64 %222, 1
  %256 = icmp eq i64 %255, %220
  br i1 %256, label %257, label %221, !llvm.loop !495

257:                                              ; preds = %241, %205
  %258 = inttoptr i64 %206 to ptr
  %259 = call i32 @ccgSubSurf_syncFace(ptr noundef %0, ptr noundef %258, i32 noundef %212, ptr noundef nonnull %215, ptr noundef nonnull %9) #10
  call void @llvm.stackrestore.p0(ptr %214)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  %260 = add nuw nsw i64 %206, 1
  %261 = icmp eq i64 %260, %204
  br i1 %261, label %262, label %205, !llvm.loop !498

262:                                              ; preds = %257, %201
  call void @BKE_mesh_uv_vert_map_free(ptr noundef nonnull %28) #10
  %263 = call i32 @ccgSubSurf_processSync(ptr noundef %0) #10
  br label %264

264:                                              ; preds = %4, %262
  %265 = phi i32 [ 1, %262 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret i32 %265
}

declare ptr @BKE_mesh_uv_vert_map_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_mesh_uv_vert_map_get_vert(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_edgeset_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ccgSubSurf_getFace(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_edgeset_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare float @ccgSubSurf_getEdgeCrease(ptr noundef) local_unnamed_addr #2

declare void @BLI_edgeset_free(ptr noundef) local_unnamed_addr #2

declare void @BKE_mesh_uv_vert_map_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

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
!34 = !{!35, !38, i64 1688}
!35 = !{!"CCGDerivedMesh", !36, i64 0, !38, i64 1688, !41, i64 1696, !41, i64 1700, !41, i64 1704, !38, i64 1712, !38, i64 1720, !38, i64 1728, !38, i64 1736, !38, i64 1744, !38, i64 1752, !38, i64 1760, !38, i64 1768, !38, i64 1776, !38, i64 1784, !38, i64 1792, !38, i64 1800, !38, i64 1808, !38, i64 1816, !38, i64 1824, !43, i64 1832, !38, i64 1880}
!36 = !{!"DerivedMesh", !37, i64 0, !37, i64 200, !37, i64 400, !37, i64 600, !37, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !38, i64 1032, !38, i64 1040, !41, i64 1048, !42, i64 1052, !41, i64 1056, !41, i64 1060, !38, i64 1064, !39, i64 1072, !38, i64 1080, !38, i64 1088, !38, i64 1096, !38, i64 1104, !38, i64 1112, !38, i64 1120, !38, i64 1128, !38, i64 1136, !38, i64 1144, !38, i64 1152, !38, i64 1160, !38, i64 1168, !38, i64 1176, !38, i64 1184, !38, i64 1192, !38, i64 1200, !38, i64 1208, !38, i64 1216, !38, i64 1224, !38, i64 1232, !38, i64 1240, !38, i64 1248, !38, i64 1256, !38, i64 1264, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !38, i64 1304, !38, i64 1312, !38, i64 1320, !38, i64 1328, !38, i64 1336, !38, i64 1344, !38, i64 1352, !38, i64 1360, !38, i64 1368, !38, i64 1376, !38, i64 1384, !38, i64 1392, !38, i64 1400, !38, i64 1408, !38, i64 1416, !38, i64 1424, !38, i64 1432, !38, i64 1440, !38, i64 1448, !38, i64 1456, !38, i64 1464, !38, i64 1472, !38, i64 1480, !38, i64 1488, !38, i64 1496, !38, i64 1504, !38, i64 1512, !38, i64 1520, !38, i64 1528, !38, i64 1536, !38, i64 1544, !38, i64 1552, !38, i64 1560, !38, i64 1568, !38, i64 1576, !38, i64 1584, !38, i64 1592, !38, i64 1600, !38, i64 1608, !38, i64 1616, !38, i64 1624, !38, i64 1632, !38, i64 1640, !38, i64 1648, !38, i64 1656, !38, i64 1664, !38, i64 1672, !38, i64 1680}
!37 = !{!"CustomData", !38, i64 0, !39, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !38, i64 184, !38, i64 192}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!"float", !39, i64 0}
!43 = !{!"", !38, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !38, i64 24, !38, i64 32, !41, i64 40}
!44 = !{!35, !38, i64 1728}
!45 = !{!46, !38, i64 16}
!46 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !38, i64 16}
!47 = !{!48, !41, i64 4}
!48 = !{!"MPoly", !41, i64 0, !41, i64 4, !49, i64 8, !39, i64 10, !39, i64 11}
!49 = !{!"short", !39, i64 0}
!50 = !{!48, !41, i64 0}
!51 = !{!52, !41, i64 4}
!52 = !{!"MDisps", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 16}
!53 = !{!52, !38, i64 16}
!54 = !{!41, !41, i64 0}
!55 = !{!56, !39, i64 18}
!56 = !{!"MVert", !39, i64 0, !39, i64 12, !39, i64 18, !39, i64 19}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = distinct !{!60, !58, !59}
!61 = distinct !{!61, !58, !59}
!62 = distinct !{!62, !58, !59}
!63 = !{!64, !38, i64 0}
!64 = !{!"GridPaintMask", !38, i64 0, !41, i64 8, !41, i64 12}
!65 = !{!64, !41, i64 8}
!66 = !{!42, !42, i64 0}
!67 = distinct !{!67, !58, !59}
!68 = distinct !{!68, !58, !59}
!69 = distinct !{!69, !58, !59}
!70 = distinct !{!70, !58, !59}
!71 = !{!72, !49, i64 112}
!72 = !{!"SubsurfModifierData", !73, i64 0, !49, i64 112, !49, i64 114, !49, i64 116, !49, i64 118, !38, i64 120, !38, i64 128}
!73 = !{!"ModifierData", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !39, i64 32, !38, i64 96, !38, i64 104}
!74 = !{!72, !49, i64 118}
!75 = !{!72, !38, i64 96}
!76 = !{!72, !49, i64 114}
!77 = !{!72, !38, i64 120}
!78 = !{!72, !49, i64 116}
!79 = !{!35, !41, i64 1696}
!80 = !{!72, !38, i64 128}
!81 = !{!82, !41, i64 8}
!82 = !{!"CCGMeshIFC", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20}
!83 = !{!82, !41, i64 4}
!84 = !{!82, !41, i64 0}
!85 = !{!82, !41, i64 12}
!86 = !{!82, !41, i64 16}
!87 = !{!82, !41, i64 20}
!88 = !{!89, !38, i64 0}
!89 = !{!"CCGAllocatorIFC", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24}
!90 = !{!89, !38, i64 8}
!91 = !{!89, !38, i64 16}
!92 = !{!89, !38, i64 24}
!93 = !{!36, !38, i64 1168}
!94 = !{!36, !38, i64 1176}
!95 = !{!36, !38, i64 1192}
!96 = !{!36, !38, i64 1200}
!97 = !{!36, !38, i64 1104}
!98 = !{!36, !38, i64 1112}
!99 = !{!36, !38, i64 1320}
!100 = !{!38, !38, i64 0}
!101 = distinct !{!101, !58, !59}
!102 = !{!36, !38, i64 1328}
!103 = !{!104, !39, i64 8}
!104 = !{!"MEdge", !41, i64 0, !41, i64 4, !39, i64 8, !39, i64 9, !49, i64 10}
!105 = !{!104, !41, i64 0}
!106 = !{!104, !41, i64 4}
!107 = distinct !{!107, !58, !59}
!108 = !{!36, !38, i64 1352}
!109 = !{!36, !41, i64 1016}
!110 = !{!111, !41, i64 0}
!111 = !{!"MLoop", !41, i64 0, !41, i64 4}
!112 = distinct !{!112, !58, !59}
!113 = distinct !{!113, !58, !59}
!114 = !{!35, !41, i64 1016}
!115 = !{!35, !38, i64 1520}
!116 = !{!35, !38, i64 1104}
!117 = !{!35, !38, i64 1112}
!118 = !{!35, !38, i64 1120}
!119 = !{!35, !38, i64 1128}
!120 = !{!35, !38, i64 1136}
!121 = !{!35, !38, i64 1144}
!122 = !{!35, !38, i64 1152}
!123 = !{!35, !38, i64 1160}
!124 = !{!35, !38, i64 1528}
!125 = !{!35, !38, i64 1544}
!126 = !{!35, !38, i64 1208}
!127 = !{!35, !38, i64 1216}
!128 = !{!35, !38, i64 1224}
!129 = !{!35, !38, i64 1232}
!130 = !{!35, !38, i64 1240}
!131 = !{!35, !38, i64 1288}
!132 = !{!35, !38, i64 1296}
!133 = !{!35, !38, i64 1304}
!134 = !{!35, !38, i64 1312}
!135 = !{!35, !38, i64 1320}
!136 = !{!35, !38, i64 1328}
!137 = !{!35, !38, i64 1336}
!138 = !{!35, !38, i64 1352}
!139 = !{!35, !38, i64 1424}
!140 = !{!35, !38, i64 1432}
!141 = !{!35, !38, i64 1440}
!142 = !{!35, !38, i64 1448}
!143 = !{!35, !38, i64 1456}
!144 = !{!35, !38, i64 1464}
!145 = !{!35, !38, i64 1472}
!146 = !{!35, !38, i64 1480}
!147 = !{!35, !38, i64 1560}
!148 = !{!35, !38, i64 1568}
!149 = !{!35, !38, i64 1080}
!150 = !{!35, !38, i64 1088}
!151 = !{!35, !38, i64 1096}
!152 = !{!35, !38, i64 1536}
!153 = !{!35, !38, i64 1488}
!154 = !{!35, !38, i64 1496}
!155 = !{!35, !38, i64 1504}
!156 = !{!35, !38, i64 1512}
!157 = !{!35, !38, i64 1576}
!158 = !{!35, !38, i64 1592}
!159 = !{!35, !38, i64 1600}
!160 = !{!35, !38, i64 1608}
!161 = !{!35, !38, i64 1616}
!162 = !{!35, !38, i64 1624}
!163 = !{!35, !38, i64 1632}
!164 = !{!35, !38, i64 1640}
!165 = !{!35, !38, i64 1648}
!166 = !{!35, !38, i64 1672}
!167 = !{!35, !38, i64 1584}
!168 = !{!35, !38, i64 1664}
!169 = !{!35, !38, i64 1656}
!170 = !{!35, !38, i64 1680}
!171 = !{!35, !41, i64 1700}
!172 = !{!35, !41, i64 1704}
!173 = !{!35, !38, i64 1712}
!174 = !{!175, !38, i64 8}
!175 = !{!"", !41, i64 0, !38, i64 8}
!176 = distinct !{!176, !58, !59}
!177 = !{!35, !38, i64 1720}
!178 = !{!179, !38, i64 8}
!179 = !{!"", !41, i64 0, !41, i64 4, !38, i64 8}
!180 = distinct !{!180, !58, !59}
!181 = distinct !{!181, !58, !59}
!182 = !{!35, !38, i64 1752}
!183 = !{!35, !38, i64 1736}
!184 = !{!35, !38, i64 1744}
!185 = !{!35, !41, i64 372}
!186 = !{!187, !41, i64 16}
!187 = !{!"FaceVertWeightEntry", !38, i64 0, !38, i64 8, !41, i64 16}
!188 = !{!187, !38, i64 8}
!189 = distinct !{!189, !58, !59}
!190 = distinct !{!190, !58, !59}
!191 = distinct !{!191, !58, !59}
!192 = distinct !{!192, !58, !59}
!193 = !{!46, !41, i64 0}
!194 = !{!46, !41, i64 4}
!195 = !{!46, !41, i64 8}
!196 = !{!48, !39, i64 10}
!197 = !{!198, !39, i64 2}
!198 = !{!"DMFlagMat", !49, i64 0, !39, i64 2}
!199 = !{!48, !49, i64 8}
!200 = !{!198, !49, i64 0}
!201 = distinct !{!201, !58, !59}
!202 = distinct !{!202, !58, !59}
!203 = distinct !{!203, !58, !59}
!204 = distinct !{!204, !58, !59}
!205 = distinct !{!205, !58, !59}
!206 = distinct !{!206, !58, !59}
!207 = distinct !{!207, !58, !59}
!208 = !{!209, !38, i64 0}
!209 = !{!"MTexPoly", !38, i64 0, !39, i64 8, !39, i64 9, !49, i64 10, !49, i64 12, !49, i64 14}
!210 = !{!211, !38, i64 32}
!211 = !{!"MTFace", !39, i64 0, !38, i64 32, !39, i64 40, !39, i64 41, !49, i64 42, !49, i64 44, !49, i64 46}
!212 = !{!209, !39, i64 8}
!213 = !{!211, !39, i64 40}
!214 = !{!209, !39, i64 9}
!215 = !{!211, !39, i64 41}
!216 = !{!209, !49, i64 10}
!217 = !{!211, !49, i64 42}
!218 = !{!209, !49, i64 12}
!219 = !{!211, !49, i64 44}
!220 = distinct !{!220, !58, !59}
!221 = distinct !{!221, !58, !59}
!222 = !{!223, !39, i64 0}
!223 = !{!"MLoopCol", !39, i64 0, !39, i64 1, !39, i64 2, !39, i64 3}
!224 = !{!225, !39, i64 3}
!225 = !{!"MCol", !39, i64 0, !39, i64 1, !39, i64 2, !39, i64 3}
!226 = !{!223, !39, i64 1}
!227 = !{!225, !39, i64 2}
!228 = !{!223, !39, i64 2}
!229 = !{!225, !39, i64 1}
!230 = !{!223, !39, i64 3}
!231 = !{!225, !39, i64 0}
!232 = distinct !{!232, !58, !59}
!233 = distinct !{!233, !58, !59}
!234 = distinct !{!234, !58, !59}
!235 = distinct !{!235, !58, !59}
!236 = distinct !{!236, !58, !59}
!237 = distinct !{!237, !58, !59}
!238 = distinct !{!238, !58, !59}
!239 = distinct !{!239, !58, !59}
!240 = !{!179, !41, i64 0}
!241 = !{!179, !41, i64 4}
!242 = !{!104, !49, i64 10}
!243 = !{!49, !49, i64 0}
!244 = distinct !{!244, !58, !59}
!245 = distinct !{!245, !58, !59}
!246 = distinct !{!246, !58, !59}
!247 = distinct !{!247, !58, !59}
!248 = !{i32 0, i32 2}
!249 = distinct !{!249, !58, !59}
!250 = distinct !{!250, !58, !59}
!251 = distinct !{!251, !58, !59}
!252 = distinct !{!252, !58, !59}
!253 = distinct !{!253, !58, !59}
!254 = distinct !{!254, !58, !59}
!255 = !{!175, !41, i64 0}
!256 = distinct !{!256, !58, !59}
!257 = !{!35, !41, i64 1000}
!258 = !{!35, !41, i64 1004}
!259 = !{!35, !41, i64 1008}
!260 = !{!35, !41, i64 1012}
!261 = !{!35, !41, i64 1056}
!262 = distinct !{!262, !58, !59}
!263 = distinct !{!263, !58, !59}
!264 = distinct !{!264, !58, !59}
!265 = distinct !{!265, !58, !59}
!266 = !{!36, !38, i64 1680}
!267 = distinct !{!267, !58, !59}
!268 = !{!269, !41, i64 4}
!269 = !{!"CCGKey", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!270 = distinct !{!270, !58, !59}
!271 = distinct !{!271, !58, !59}
!272 = distinct !{!272, !58, !59}
!273 = distinct !{!273, !58, !59}
!274 = distinct !{!274, !58, !59}
!275 = distinct !{!275, !58, !59}
!276 = distinct !{!276, !58, !59}
!277 = distinct !{!277, !58, !59}
!278 = !{!269, !41, i64 20}
!279 = distinct !{!279, !58, !59}
!280 = !{!281, !41, i64 0}
!281 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !49, i64 16, !39, i64 18, !39, i64 19}
!282 = !{!281, !41, i64 4}
!283 = !{!281, !41, i64 8}
!284 = !{!281, !41, i64 12}
!285 = !{!281, !39, i64 19}
!286 = !{!281, !49, i64 16}
!287 = !{!281, !39, i64 18}
!288 = !{!56, !39, i64 19}
!289 = distinct !{!289, !58, !59}
!290 = distinct !{!290, !58, !59}
!291 = distinct !{!291, !58, !59}
!292 = distinct !{!292, !58, !59}
!293 = distinct !{!293, !58, !59}
!294 = distinct !{!294, !58, !59}
!295 = distinct !{!295, !58, !59}
!296 = distinct !{!296, !58, !59}
!297 = distinct !{!297, !58, !59}
!298 = !{!104, !39, i64 9}
!299 = distinct !{!299, !58, !59}
!300 = distinct !{!300, !58, !59}
!301 = distinct !{!301, !58, !59}
!302 = distinct !{!302, !58, !59}
!303 = distinct !{!303, !58, !59}
!304 = distinct !{!304, !58, !59}
!305 = distinct !{!305, !58, !59}
!306 = distinct !{!306, !58, !59}
!307 = distinct !{!307, !58, !59}
!308 = distinct !{!308, !58, !59}
!309 = distinct !{!309, !58, !59}
!310 = !{!35, !38, i64 1880}
!311 = !{!35, !38, i64 1176}
!312 = distinct !{!312, !58, !59}
!313 = !{!111, !41, i64 4}
!314 = distinct !{!314, !58, !59}
!315 = distinct !{!315, !58, !59}
!316 = distinct !{!316, !58, !59}
!317 = distinct !{!317, !58, !59}
!318 = distinct !{!318, !58, !59}
!319 = distinct !{!319, !58, !59}
!320 = distinct !{!320, !58, !59}
!321 = distinct !{!321, !58, !59}
!322 = !{!36, !38, i64 1120}
!323 = !{!36, !41, i64 1000}
!324 = distinct !{!324, !58, !59}
!325 = !{!36, !41, i64 1004}
!326 = distinct !{!326, !58, !59}
!327 = distinct !{!327, !58, !59}
!328 = distinct !{!328, !58, !59}
!329 = !{!36, !38, i64 1344}
!330 = distinct !{!330, !58, !59}
!331 = distinct !{!331, !58, !59}
!332 = distinct !{!332, !58, !59}
!333 = distinct !{!333, !58, !59}
!334 = !{!35, !38, i64 1784}
!335 = !{!35, !38, i64 1792}
!336 = !{!35, !38, i64 1800}
!337 = !{!35, !38, i64 1816}
!338 = !{!35, !38, i64 1824}
!339 = !{!35, !38, i64 1832}
!340 = !{!35, !38, i64 1768}
!341 = !{!342, !49, i64 136}
!342 = !{!"Object", !343, i64 0, !38, i64 120, !38, i64 128, !49, i64 136, !49, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !39, i64 152, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !38, i64 296, !38, i64 304, !344, i64 312, !38, i64 360, !345, i64 368, !345, i64 384, !345, i64 400, !345, i64 416, !41, i64 432, !41, i64 436, !38, i64 440, !38, i64 448, !41, i64 456, !41, i64 460, !39, i64 464, !39, i64 476, !39, i64 488, !39, i64 500, !39, i64 512, !39, i64 524, !39, i64 536, !39, i64 548, !39, i64 560, !39, i64 576, !39, i64 592, !39, i64 604, !42, i64 616, !42, i64 620, !39, i64 624, !39, i64 688, !39, i64 752, !39, i64 816, !39, i64 880, !41, i64 944, !49, i64 948, !49, i64 950, !49, i64 952, !49, i64 954, !49, i64 956, !49, i64 958, !49, i64 960, !49, i64 962, !49, i64 964, !39, i64 966, !39, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !49, i64 1036, !49, i64 1038, !49, i64 1040, !39, i64 1042, !39, i64 1043, !49, i64 1044, !39, i64 1046, !39, i64 1047, !42, i64 1048, !42, i64 1052, !345, i64 1056, !345, i64 1072, !345, i64 1088, !345, i64 1104, !42, i64 1120, !49, i64 1124, !49, i64 1126, !39, i64 1128, !41, i64 1144, !41, i64 1148, !38, i64 1152, !39, i64 1160, !39, i64 1161, !49, i64 1162, !39, i64 1164, !345, i64 1176, !345, i64 1192, !345, i64 1208, !345, i64 1224, !38, i64 1240, !38, i64 1248, !38, i64 1256, !39, i64 1264, !39, i64 1265, !49, i64 1266, !42, i64 1268, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !346, i64 1304, !346, i64 1312, !41, i64 1320, !41, i64 1324, !345, i64 1328, !345, i64 1344, !38, i64 1360, !38, i64 1368, !38, i64 1376, !39, i64 1384, !38, i64 1392, !345, i64 1400, !38, i64 1416}
!343 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !39, i64 32, !49, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !38, i64 112}
!344 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !49, i64 16, !49, i64 18, !49, i64 20, !49, i64 22, !49, i64 24, !49, i64 26, !49, i64 28, !49, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!345 = !{!"ListBase", !38, i64 0, !38, i64 8}
!346 = !{!"long", !39, i64 0}
!347 = !{!342, !38, i64 296}
!348 = !{!349, !38, i64 168}
!349 = !{!"Mesh", !343, i64 0, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !38, i64 152, !38, i64 160, !38, i64 168, !38, i64 176, !38, i64 184, !38, i64 192, !38, i64 200, !38, i64 208, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !37, i64 280, !37, i64 480, !37, i64 680, !37, i64 880, !37, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !39, i64 1308, !39, i64 1320, !39, i64 1332, !41, i64 1344, !49, i64 1348, !49, i64 1350, !42, i64 1352, !41, i64 1356, !39, i64 1360, !39, i64 1361, !39, i64 1362, !39, i64 1363, !39, i64 1364, !39, i64 1365, !49, i64 1366, !38, i64 1368}
!350 = !{!349, !38, i64 184}
!351 = !{!349, !41, i64 1280}
!352 = !{!349, !41, i64 1296}
!353 = !{!349, !41, i64 1300}
!354 = !{!35, !38, i64 1760}
!355 = !{!342, !38, i64 128}
!356 = !{!357, !38, i64 104}
!357 = !{!"SculptSession", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !41, i64 32, !41, i64 36, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !41, i64 80, !41, i64 84, !39, i64 88, !38, i64 96, !38, i64 104, !39, i64 112, !39, i64 113, !38, i64 120, !38, i64 128, !38, i64 136, !39, i64 144, !41, i64 148, !38, i64 152, !41, i64 160, !38, i64 168, !38, i64 176, !38, i64 184, !38, i64 192, !39, i64 200, !39, i64 204, !39, i64 216, !41, i64 228}
!358 = !{!35, !38, i64 1808}
!359 = !{!349, !38, i64 208}
!360 = !{!349, !38, i64 232}
!361 = !{!349, !41, i64 1288}
!362 = !{!357, !39, i64 112}
!363 = !{!36, !41, i64 1056}
!364 = distinct !{!364, !58, !59}
!365 = distinct !{!365, !58, !59}
!366 = distinct !{!366, !58, !59}
!367 = distinct !{!367, !58, !59}
!368 = distinct !{!368, !58, !59}
!369 = distinct !{!369, !58, !59}
!370 = distinct !{!370, !58, !59}
!371 = distinct !{!371, !58, !59}
!372 = distinct !{!372, !58, !59}
!373 = distinct !{!373, !58, !59}
!374 = distinct !{!374, !58, !59}
!375 = distinct !{!375, !58, !59}
!376 = distinct !{!376, !58, !59}
!377 = distinct !{!377, !58, !59}
!378 = distinct !{!378, !58, !59}
!379 = distinct !{!379, !58, !59}
!380 = distinct !{!380, !58, !59}
!381 = distinct !{!381, !58, !59}
!382 = distinct !{!382, !58, !59}
!383 = distinct !{!383, !58, !59}
!384 = distinct !{!384, !58, !59}
!385 = distinct !{!385, !58, !59}
!386 = distinct !{!386, !58, !59}
!387 = distinct !{!387, !58, !59}
!388 = distinct !{!388, !58, !59}
!389 = distinct !{!389, !58, !59}
!390 = distinct !{!390, !58, !59}
!391 = !{!392, !41, i64 2096}
!392 = !{!"Global", !38, i64 0, !39, i64 8, !39, i64 1032, !39, i64 2056, !39, i64 2057, !39, i64 2058, !345, i64 2064, !39, i64 2080, !39, i64 2081, !39, i64 2082, !49, i64 2084, !49, i64 2086, !49, i64 2088, !39, i64 2090, !49, i64 2092, !41, i64 2096, !41, i64 2100, !39, i64 2104, !41, i64 2108, !41, i64 2112, !39, i64 2116}
!393 = distinct !{!393, !58, !59}
!394 = distinct !{!394, !58, !59}
!395 = distinct !{!395, !58, !59}
!396 = !{!269, !41, i64 8}
!397 = distinct !{!397, !58, !59}
!398 = distinct !{!398, !58, !59}
!399 = distinct !{!399, !58, !59}
!400 = distinct !{!400, !58, !59}
!401 = distinct !{!401, !58, !59}
!402 = distinct !{!402, !58, !59}
!403 = distinct !{!403, !58, !59}
!404 = distinct !{!404, !58, !59}
!405 = !{!36, !38, i64 1336}
!406 = !{!36, !41, i64 1008}
!407 = distinct !{!407, !58, !59}
!408 = distinct !{!408, !58, !59}
!409 = distinct !{!409, !58, !59}
!410 = distinct !{!410, !58, !59}
!411 = distinct !{!411, !58, !59}
!412 = distinct !{!412, !58, !59}
!413 = distinct !{!413, !58, !59}
!414 = distinct !{!414, !58, !59}
!415 = !{!36, !38, i64 1648}
!416 = !{!39, !39, i64 0}
!417 = distinct !{!417, !58, !59}
!418 = distinct !{!418, !58, !59}
!419 = distinct !{!419, !58, !59}
!420 = distinct !{!420, !58, !59}
!421 = distinct !{!421, !58, !59}
!422 = distinct !{!422, !58, !59}
!423 = distinct !{!423, !58, !59}
!424 = distinct !{!424, !58, !59}
!425 = !{!426, !41, i64 372}
!426 = !{!"DMVertexAttribs", !39, i64 0, !39, i64 192, !427, i64 320, !428, i64 336, !41, i64 360, !41, i64 364, !41, i64 368, !41, i64 372}
!427 = !{!"", !38, i64 0, !41, i64 8, !41, i64 12}
!428 = !{!"", !38, i64 0, !41, i64 8, !41, i64 12, !41, i64 16}
!429 = distinct !{!429, !58, !59}
!430 = distinct !{!430, !58, !59}
!431 = distinct !{!431, !58, !59}
!432 = distinct !{!432, !58, !59}
!433 = distinct !{!433, !58, !59}
!434 = distinct !{!434, !58, !59}
!435 = distinct !{!435, !58, !59}
!436 = distinct !{!436, !58, !59}
!437 = distinct !{!437, !58, !59}
!438 = distinct !{!438, !58, !59}
!439 = distinct !{!439, !58, !59}
!440 = distinct !{!440, !58, !59}
!441 = distinct !{!441, !58, !59}
!442 = distinct !{!442, !58, !59}
!443 = distinct !{!443, !58, !59}
!444 = distinct !{!444, !58, !59}
!445 = !{!36, !38, i64 1184}
!446 = distinct !{!446, !58, !59}
!447 = distinct !{!447, !58, !59}
!448 = distinct !{!448, !58, !59}
!449 = distinct !{!449, !58, !59}
!450 = distinct !{!450, !58, !59}
!451 = !{!35, !41, i64 1872}
!452 = !{!35, !41, i64 1840}
!453 = !{!35, !38, i64 1864}
!454 = !{!36, !38, i64 1424}
!455 = distinct !{!455, !58, !59}
!456 = !{!35, !38, i64 1776}
!457 = distinct !{!457, !58, !59}
!458 = distinct !{!458, !58, !59}
!459 = distinct !{!459, !58, !59}
!460 = distinct !{!460, !58, !59}
!461 = distinct !{!461, !58, !59}
!462 = distinct !{!462, !58, !59}
!463 = distinct !{!463, !58, !59}
!464 = distinct !{!464, !58, !59}
!465 = distinct !{!465, !58, !59}
!466 = distinct !{!466, !58, !59}
!467 = distinct !{!467, !58, !59}
!468 = distinct !{!468, !58, !59}
!469 = distinct !{!469, !58, !59}
!470 = !{!426, !38, i64 336}
!471 = !{!426, !41, i64 352}
!472 = !{!426, !41, i64 348}
!473 = !{!426, !41, i64 360}
!474 = !{!426, !41, i64 364}
!475 = !{!428, !38, i64 0}
!476 = !{!428, !41, i64 16}
!477 = !{!428, !41, i64 12}
!478 = distinct !{!478, !58, !59}
!479 = !{!427, !38, i64 0}
!480 = !{!427, !41, i64 12}
!481 = distinct !{!481, !58, !59}
!482 = !{!426, !41, i64 368}
!483 = !{!426, !38, i64 320}
!484 = !{!426, !41, i64 332}
!485 = !{!36, !38, i64 1136}
!486 = !{!487, !38, i64 0}
!487 = !{!"UvMapVert", !38, i64 0, !41, i64 8, !39, i64 12, !39, i64 13, !39, i64 14}
!488 = !{!487, !39, i64 13}
!489 = distinct !{!489, !58, !59}
!490 = !{!487, !41, i64 8}
!491 = !{!487, !39, i64 12}
!492 = distinct !{!492, !58, !59}
!493 = distinct !{!493, !58, !59}
!494 = distinct !{!494, !58, !59}
!495 = distinct !{!495, !58, !59}
!496 = distinct !{!496, !58, !59}
!497 = distinct !{!497, !58, !59}
!498 = distinct !{!498, !58, !59}
