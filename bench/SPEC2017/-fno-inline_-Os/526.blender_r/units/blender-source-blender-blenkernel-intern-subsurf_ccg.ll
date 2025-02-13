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
%struct.WeightTable = type { ptr, i32 }
%struct.anon.1 = type { i32, ptr }
%struct.anon.2 = type { i32, i32, ptr }
%struct.DMFlagMat = type { i16, i8 }
%struct.CCGKey = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.SculptSession = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, i8, i8, ptr, ptr, ptr, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i8, [3 x float], [3 x float], i32 }
%struct.MCol = type { i8, i8, i8, i8 }
%struct.GPUVertexAttribs = type { [32 x %struct.anon.3], i32 }
%struct.anon.3 = type { i32, i32, i32, i32, [64 x i8] }
%struct.DMVertexAttribs = type { [8 x %struct.anon.4], [8 x %struct.anon.5], %struct.anon.6, %struct.anon.7, i32, i32, i32, i32 }
%struct.anon.4 = type { ptr, i32, i32, i32 }
%struct.anon.5 = type { ptr, i32, i32 }
%struct.anon.6 = type { ptr, i32, i32 }
%struct.anon.7 = type { ptr, i32, i32, i32 }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.FaceVertWeightEntry = type { ptr, ptr, i32 }
%struct.MTexPoly = type { ptr, i8, i8, i16, i16, i16 }
%struct.MLoopUV = type { [2 x float], i32 }
%struct.MLoopCol = type { i8, i8, i8, i8 }
%struct.OrigSpaceLoop = type { [2 x float] }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @subsurf_copy_grid_hidden(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call i32 @ccgSubSurf_getSubdivisionLevels(ptr noundef %6) #14
  %8 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %6) #14
  %9 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %6) #14
  %10 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %6) #14
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
  %33 = tail call i32 @BKE_ccg_gridsize(i32 noundef %32) #14
  %34 = load i32, ptr %31, align 4, !tbaa !51
  %35 = tail call i32 @BKE_ccg_factor(i32 noundef %7, i32 noundef %34) #14
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
  %45 = tail call fastcc i32 @getFaceIndex(ptr noundef %6, ptr noundef %20, i32 noundef %27, i32 noundef %44, i32 noundef %41, i32 noundef %9, i32 noundef %8) #15
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
  br i1 %67, label %68, label %40, !llvm.loop !59

68:                                               ; preds = %65, %26
  %69 = add nuw nsw i32 %27, 1
  %70 = load i32, ptr %21, align 4, !tbaa !47
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %26, label %72, !llvm.loop !60

72:                                               ; preds = %68, %16
  %73 = add nuw nsw i64 %17, 1
  %74 = icmp eq i64 %73, %15
  br i1 %74, label %75, label %16, !llvm.loop !61

75:                                               ; preds = %72, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @ccgSubSurf_getSubdivisionLevels(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_getGridSize(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_getEdgeSize(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_getNumFaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_ccg_gridsize(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_ccg_factor(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @getFaceIndex(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 !PGOFuncName !62 {
  %8 = tail call ptr @ccgSubSurf_getFaceUserData(ptr noundef %0, ptr noundef %1) #14
  %9 = load i32, ptr %8, align 4, !tbaa !54
  %10 = tail call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %1) #14
  %11 = add nsw i32 %6, -1
  %12 = sub i32 1, %6
  %13 = icmp eq i32 %11, %3
  %14 = icmp eq i32 %11, %4
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %7
  %17 = tail call ptr @ccgSubSurf_getFaceVert(ptr noundef %1, i32 noundef %2) #14
  %18 = tail call ptr @ccgSubSurf_getVertUserData(ptr noundef %0, ptr noundef %17) #14
  %19 = load i32, ptr %18, align 4, !tbaa !54
  br label %84

20:                                               ; preds = %7
  br i1 %13, label %21, label %37

21:                                               ; preds = %20
  %22 = tail call ptr @ccgSubSurf_getFaceVert(ptr noundef %1, i32 noundef %2) #14
  %23 = tail call ptr @ccgSubSurf_getFaceEdge(ptr noundef %1, i32 noundef %2) #14
  %24 = tail call ptr @ccgSubSurf_getEdgeUserData(ptr noundef %0, ptr noundef %23) #14
  %25 = load i32, ptr %24, align 4, !tbaa !54
  %26 = tail call ptr @ccgSubSurf_getEdgeVert0(ptr noundef %23) #14
  %27 = icmp eq ptr %22, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = xor i32 %4, -1
  %30 = add i32 %29, %3
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
  %39 = tail call ptr @ccgSubSurf_getFaceVert(ptr noundef %1, i32 noundef %2) #14
  %40 = add i32 %2, -1
  %41 = add i32 %40, %10
  %42 = srem i32 %41, %10
  %43 = tail call ptr @ccgSubSurf_getFaceEdge(ptr noundef %1, i32 noundef %42) #14
  %44 = tail call ptr @ccgSubSurf_getEdgeUserData(ptr noundef %0, ptr noundef %43) #14
  %45 = load i32, ptr %44, align 4, !tbaa !54
  %46 = tail call ptr @ccgSubSurf_getEdgeVert0(ptr noundef %43) #14
  %47 = icmp eq ptr %39, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = xor i32 %3, -1
  %50 = add i32 %49, %4
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @subsurf_copy_grid_paint_mask(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call i32 @ccgSubSurf_getSubdivisionLevels(ptr noundef %6) #14
  %8 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %6) #14
  %9 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %6) #14
  %10 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %6) #14
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %67

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %14 = icmp sgt i32 %8, 0
  %15 = zext nneg i32 %10 to i64
  %16 = zext nneg i32 %8 to i64
  br label %17

17:                                               ; preds = %12, %64
  %18 = phi i64 [ 0, %12 ], [ %65, %64 ]
  %19 = load ptr, ptr %13, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct.anon.0, ptr %19, i64 %18, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct.MPoly, ptr %1, i64 %18
  %23 = getelementptr inbounds %struct.MPoly, ptr %1, i64 %18, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !47
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %64

26:                                               ; preds = %17, %60
  %27 = phi i32 [ %61, %60 ], [ 0, %17 ]
  %28 = load i32, ptr %22, align 4, !tbaa !50
  %29 = add nsw i32 %28, %27
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.GridPaintMask, ptr %3, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !63
  %33 = icmp eq ptr %32, null
  br i1 %33, label %60, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.GridPaintMask, ptr %3, i64 %30, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !65
  %37 = tail call i32 @BKE_ccg_factor(i32 noundef %7, i32 noundef %36) #14
  %38 = load i32, ptr %35, align 8, !tbaa !65
  %39 = tail call i32 @BKE_ccg_gridsize(i32 noundef %38) #14
  br i1 %14, label %40, label %60

40:                                               ; preds = %34, %57
  %41 = phi i32 [ %58, %57 ], [ 0, %34 ]
  %42 = mul i32 %41, %39
  br label %43

43:                                               ; preds = %40, %43
  %44 = phi i64 [ 0, %40 ], [ %55, %43 ]
  %45 = trunc i64 %44 to i32
  %46 = tail call fastcc i32 @getFaceIndex(ptr noundef %6, ptr noundef %21, i32 noundef %27, i32 noundef %45, i32 noundef %41, i32 noundef %9, i32 noundef %8) #15
  %47 = add i32 %42, %45
  %48 = mul i32 %47, %37
  %49 = load ptr, ptr %31, align 8, !tbaa !63
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds float, ptr %49, i64 %50
  %52 = load float, ptr %51, align 4, !tbaa !66
  %53 = sext i32 %46 to i64
  %54 = getelementptr inbounds float, ptr %2, i64 %53
  store float %52, ptr %54, align 4, !tbaa !66
  %55 = add nuw nsw i64 %44, 1
  %56 = icmp eq i64 %55, %16
  br i1 %56, label %57, label %43, !llvm.loop !67

57:                                               ; preds = %43
  %58 = add nuw nsw i32 %41, 1
  %59 = icmp eq i32 %58, %8
  br i1 %59, label %60, label %40, !llvm.loop !68

60:                                               ; preds = %57, %34, %26
  %61 = add nuw nsw i32 %27, 1
  %62 = load i32, ptr %23, align 4, !tbaa !47
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %26, label %64, !llvm.loop !69

64:                                               ; preds = %60, %17
  %65 = add nuw nsw i64 %18, 1
  %66 = icmp eq i64 %65, %15
  br i1 %66, label %67, label %17, !llvm.loop !70

67:                                               ; preds = %64, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %29 = tail call i32 @get_render_subsurf_level(ptr noundef nonnull %25, i32 noundef %28) #14
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
  %40 = tail call fastcc ptr @_getSubSurf(ptr noundef %37, i32 noundef %35, i32 noundef 3, i32 noundef %39) #15
  store ptr %40, ptr %36, align 8, !tbaa !77
  tail call fastcc void @ss_sync_from_derivedmesh(ptr noundef %40, ptr noundef %0, ptr noundef %2, i32 noundef %8) #15
  %41 = load ptr, ptr %36, align 8, !tbaa !77
  %42 = tail call fastcc ptr @getCCGDerivedMesh(ptr noundef %41, i32 noundef %17, i32 noundef %14, ptr noundef %0) #15
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
  %55 = tail call i32 @get_render_subsurf_level(ptr noundef nonnull %51, i32 noundef %54) #14
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
  %65 = tail call fastcc ptr @_getSubSurf(ptr noundef null, i32 noundef %61, i32 noundef 3, i32 noundef %64) #15
  tail call fastcc void @ss_sync_from_derivedmesh(ptr noundef %65, ptr noundef %0, ptr noundef %2, i32 noundef %8) #15
  %66 = tail call fastcc ptr @getCCGDerivedMesh(ptr noundef %65, i32 noundef %17, i32 noundef %14, ptr noundef %0) #15
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
  %78 = tail call i32 @get_render_subsurf_level(ptr noundef nonnull %74, i32 noundef %77) #14
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
  tail call void @ccgSubSurf_free(ptr noundef nonnull %89) #14
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
  %102 = tail call fastcc ptr @_getSubSurf(ptr noundef %98, i32 noundef %84, i32 noundef 3, i32 noundef %101) #15
  store ptr %102, ptr %97, align 8, !tbaa !80
  tail call fastcc void @ss_sync_from_derivedmesh(ptr noundef %102, ptr noundef %0, ptr noundef %2, i32 noundef %8) #15
  %103 = load ptr, ptr %97, align 8, !tbaa !80
  %104 = tail call fastcc ptr @getCCGDerivedMesh(ptr noundef %103, i32 noundef %17, i32 noundef %14, ptr noundef %0) #15
  br label %121

105:                                              ; preds = %92
  %106 = icmp eq ptr %98, null
  %107 = or i1 %95, %106
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  tail call void @ccgSubSurf_free(ptr noundef nonnull %98) #14
  store ptr null, ptr %97, align 8, !tbaa !80
  br label %109

109:                                              ; preds = %108, %105
  %110 = and i32 %3, 16
  %111 = icmp eq i32 %110, 0
  %112 = select i1 %111, i32 6, i32 14
  %113 = or disjoint i32 %8, %112
  %114 = tail call fastcc ptr @_getSubSurf(ptr noundef null, i32 noundef %84, i32 noundef 3, i32 noundef %113) #15
  tail call fastcc void @ss_sync_from_derivedmesh(ptr noundef %114, ptr noundef %0, ptr noundef %2, i32 noundef %8) #15
  %115 = tail call fastcc ptr @getCCGDerivedMesh(ptr noundef %114, i32 noundef %17, i32 noundef %14, ptr noundef %0) #15
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
  tail call void @ccgSubSurf_setNumLayers(ptr noundef %114, i32 noundef 4) #14
  br label %121

121:                                              ; preds = %63, %60, %34, %119, %120, %99
  %122 = phi ptr [ %42, %34 ], [ %104, %99 ], [ %115, %120 ], [ %115, %119 ], [ %66, %63 ], [ %0, %60 ]
  ret ptr %122
}

; Function Attrs: optsize
declare i32 @get_render_subsurf_level(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @_getSubSurf(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !81 {
  %5 = alloca %struct.CCGMeshIFC, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.CCGAllocatorIFC, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  %8 = and i32 %3, 1
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %3, 2
  %11 = tail call i32 @llvm.smax.i32(i32 %1, i32 1)
  %12 = icmp eq ptr %0, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  call void @ccgSubSurf_getUseAgeCounts(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef null) #14
  %14 = load i32, ptr %6, align 4, !tbaa !54
  %15 = icmp eq i32 %14, %8
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = call i32 @ccgSubSurf_getSimpleSubdiv(ptr noundef nonnull %0) #14
  %18 = lshr i32 %3, 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %13
  call void @ccgSubSurf_free(ptr noundef nonnull %0) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br label %24

22:                                               ; preds = %16
  %23 = call i32 @ccgSubSurf_setSubdivisionLevels(ptr noundef nonnull %0, i32 noundef %11) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br label %64

24:                                               ; preds = %21, %4
  %25 = select i1 %9, i32 8, i32 12
  %26 = getelementptr inbounds %struct.CCGMeshIFC, ptr %5, i64 0, i32 2
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.CCGMeshIFC, ptr %5, i64 0, i32 1
  store i32 %25, ptr %27, align 4
  store i32 %25, ptr %5, align 4, !tbaa !82
  %28 = getelementptr inbounds %struct.CCGMeshIFC, ptr %5, i64 0, i32 3
  store i32 %2, ptr %28, align 4, !tbaa !84
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
  store i32 %38, ptr %30, align 4, !tbaa !85
  %39 = lshr i32 %3, 4
  %40 = and i32 %39, 1
  %41 = getelementptr inbounds %struct.CCGMeshIFC, ptr %5, i64 0, i32 5
  store i32 %40, ptr %41, align 4, !tbaa !86
  %42 = icmp eq i32 %10, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  %44 = call ptr @BLI_memarena_new(i64 noundef 65528, ptr noundef nonnull @.str) #14
  store ptr @arena_alloc, ptr %7, align 8, !tbaa !87
  %45 = getelementptr inbounds %struct.CCGAllocatorIFC, ptr %7, i64 0, i32 1
  store ptr @arena_realloc, ptr %45, align 8, !tbaa !89
  %46 = getelementptr inbounds %struct.CCGAllocatorIFC, ptr %7, i64 0, i32 2
  store ptr @arena_free, ptr %46, align 8, !tbaa !90
  %47 = getelementptr inbounds %struct.CCGAllocatorIFC, ptr %7, i64 0, i32 3
  store ptr @arena_release, ptr %47, align 8, !tbaa !91
  %48 = call ptr @ccgSubSurf_new(ptr noundef nonnull %5, i32 noundef %11, ptr noundef nonnull %7, ptr noundef %44) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  br label %51

49:                                               ; preds = %24
  %50 = call ptr @ccgSubSurf_new(ptr noundef nonnull %5, i32 noundef %11, ptr noundef null, ptr noundef null) #14
  br label %51

51:                                               ; preds = %49, %43
  %52 = phi ptr [ %48, %43 ], [ %50, %49 ]
  br i1 %9, label %55, label %53

53:                                               ; preds = %51
  %54 = call i32 @ccgSubSurf_setUseAgeCounts(ptr noundef %52, i32 noundef 1, i32 noundef 8, i32 noundef 8, i32 noundef 8) #14
  br label %55

55:                                               ; preds = %53, %51
  br i1 %36, label %58, label %56

56:                                               ; preds = %55
  %57 = add i32 %29, 4
  call void @ccgSubSurf_setAllocMask(ptr noundef %52, i32 noundef 1, i32 noundef %29) #14
  br label %58

58:                                               ; preds = %56, %55
  %59 = phi i32 [ %57, %56 ], [ %29, %55 ]
  br i1 %32, label %62, label %60

60:                                               ; preds = %58
  %61 = call i32 @ccgSubSurf_setCalcVertexNormals(ptr noundef %52, i32 noundef 1, i32 noundef %59) #14
  br label %64

62:                                               ; preds = %58
  %63 = call i32 @ccgSubSurf_setCalcVertexNormals(ptr noundef %52, i32 noundef 0, i32 noundef 0) #14
  br label %64

64:                                               ; preds = %60, %62, %22
  %65 = phi ptr [ %0, %22 ], [ %52, %62 ], [ %52, %60 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret ptr %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ss_sync_from_derivedmesh(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !92 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = tail call i32 @ccgSubSurf_getSubdivisionLevels(ptr noundef %0) #14
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 31
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = tail call ptr %11(ptr noundef %1) #14
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 32
  %14 = load ptr, ptr %13, align 8, !tbaa !94
  %15 = tail call ptr %14(ptr noundef %1) #14
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 34
  %17 = load ptr, ptr %16, align 8, !tbaa !95
  %18 = tail call ptr %17(ptr noundef %1) #14
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 35
  %20 = load ptr, ptr %19, align 8, !tbaa !96
  %21 = tail call ptr %20(ptr noundef %1) #14
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 23
  %23 = load ptr, ptr %22, align 8, !tbaa !97
  %24 = tail call i32 %23(ptr noundef %1) #14
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 24
  %26 = load ptr, ptr %25, align 8, !tbaa !98
  %27 = tail call i32 %26(ptr noundef %1) #14
  %28 = tail call i32 @ccgSubSurf_initFullSync(ptr noundef %0) #14
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 50
  %30 = load ptr, ptr %29, align 8, !tbaa !99
  %31 = tail call ptr %30(ptr noundef %1, i32 noundef 7) #14
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %40 = inttoptr i64 %37 to ptr
  br i1 %34, label %44, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds [3 x float], ptr %2, i64 %37
  %43 = call i32 @ccgSubSurf_syncVert(ptr noundef %0, ptr noundef %40, ptr noundef nonnull %42, i32 noundef 0, ptr noundef nonnull %5) #14
  br label %46

44:                                               ; preds = %36
  %45 = call i32 @ccgSubSurf_syncVert(ptr noundef %0, ptr noundef %40, ptr noundef %38, i32 noundef 0, ptr noundef nonnull %5) #14
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
  %56 = call ptr @ccgSubSurf_getVertUserData(ptr noundef %0, ptr noundef %55) #14
  %57 = getelementptr inbounds i32, ptr %56, i64 1
  store i32 %54, ptr %57, align 4, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  %58 = add nuw nsw i64 %37, 1
  %59 = getelementptr inbounds %struct.MVert, ptr %38, i64 1
  %60 = icmp eq i64 %58, %35
  br i1 %60, label %61, label %36, !llvm.loop !101

61:                                               ; preds = %52, %4
  %62 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 51
  %63 = load ptr, ptr %62, align 8, !tbaa !102
  %64 = call ptr %63(ptr noundef %1, i32 noundef 7) #14
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
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
  %89 = call i32 @ccgSubSurf_syncEdge(ptr noundef %0, ptr noundef %81, ptr noundef %84, ptr noundef %88, float noundef %80, ptr noundef nonnull %6) #14
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
  %99 = call ptr @ccgSubSurf_getEdgeUserData(ptr noundef %0, ptr noundef %98) #14
  %100 = getelementptr inbounds i32, ptr %99, i64 1
  store i32 %97, ptr %100, align 4, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  %101 = add nuw nsw i64 %70, 1
  %102 = getelementptr inbounds %struct.MEdge, ptr %71, i64 1
  %103 = icmp eq i64 %101, %68
  br i1 %103, label %104, label %69, !llvm.loop !107

104:                                              ; preds = %95, %61
  %105 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 54
  %106 = load ptr, ptr %105, align 8, !tbaa !108
  %107 = call ptr %106(ptr noundef %1, i32 noundef 7) #14
  %108 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 9
  %109 = load i32, ptr %108, align 8, !tbaa !109
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %162

111:                                              ; preds = %104, %151
  %112 = phi i64 [ %157, %151 ], [ 0, %104 ]
  %113 = phi ptr [ %152, %151 ], [ %107, %104 ]
  %114 = phi ptr [ %158, %151 ], [ %21, %104 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
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
  %139 = call i32 @ccgSubSurf_syncFace(ptr noundef %0, ptr noundef %138, i32 noundef %120, ptr noundef nonnull %119, ptr noundef nonnull %7) #14
  %140 = icmp eq i32 %139, 2
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i1, ptr @ss_sync_from_derivedmesh.hasGivenError, align 4
  br i1 %142, label %150, label %143

143:                                              ; preds = %141
  store i1 true, ptr @ss_sync_from_derivedmesh.hasGivenError, align 4
  br label %150

144:                                              ; preds = %137
  %145 = icmp eq ptr %113, null
  %146 = trunc i64 %112 to i32
  br i1 %145, label %151, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds i32, ptr %113, i64 1
  %149 = load i32, ptr %113, align 4, !tbaa !54
  br label %151

150:                                              ; preds = %141, %143
  call void @llvm.stackrestore.p0(ptr %118)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %164

151:                                              ; preds = %144, %147
  %152 = phi ptr [ %148, %147 ], [ null, %144 ]
  %153 = phi i32 [ %149, %147 ], [ %146, %144 ]
  %154 = load ptr, ptr %7, align 8, !tbaa !100
  %155 = call ptr @ccgSubSurf_getFaceUserData(ptr noundef %0, ptr noundef %154) #14
  %156 = getelementptr inbounds i32, ptr %155, i64 1
  store i32 %153, ptr %156, align 4, !tbaa !54
  call void @llvm.stackrestore.p0(ptr %118)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  %157 = add nuw nsw i64 %112, 1
  %158 = getelementptr inbounds %struct.MPoly, ptr %114, i64 1
  %159 = load i32, ptr %108, align 8, !tbaa !109
  %160 = sext i32 %159 to i64
  %161 = icmp slt i64 %157, %160
  br i1 %161, label %111, label %162, !llvm.loop !113

162:                                              ; preds = %151, %104
  %163 = call i32 @ccgSubSurf_processSync(ptr noundef %0) #14
  br label %164

164:                                              ; preds = %150, %162
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @getCCGDerivedMesh(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !114 {
  %5 = alloca %struct.WeightTable, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x float], align 4
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !100
  %9 = tail call ptr %8(i64 noundef 1888, ptr noundef nonnull @.str.1) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %10 = tail call i32 @ccgSubSurf_getNumFinalVerts(ptr noundef %0) #14
  %11 = tail call i32 @ccgSubSurf_getNumFinalEdges(ptr noundef %0) #14
  %12 = tail call i32 @ccgSubSurf_getNumFinalFaces(ptr noundef %0) #14
  %13 = tail call i32 @ccgSubSurf_getNumFinalFaces(ptr noundef %0) #14
  %14 = shl nsw i32 %13, 2
  %15 = tail call i32 @ccgSubSurf_getNumFinalFaces(ptr noundef %0) #14
  tail call void @DM_from_template(ptr noundef %9, ptr noundef %3, i32 noundef 2, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %14, i32 noundef %15) #14
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 4
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !115
  %19 = tail call zeroext i8 @CustomData_free_layer_active(ptr noundef nonnull %16, i32 noundef 8, i32 noundef %18) #14
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 3
  %21 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %20, i32 noundef 16) #14
  %22 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %20, i32 noundef 17) #14
  %23 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %20, i32 noundef 32) #14
  %24 = zext i8 %23 to i32
  %25 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %20, i32 noundef 31) #14
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %21, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 2
  %30 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %29, i32 noundef 5) #14
  %31 = icmp eq i32 %30, %21
  br i1 %31, label %32, label %50

32:                                               ; preds = %28, %4
  %33 = icmp eq i32 %22, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 2
  %36 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %35, i32 noundef 6) #14
  %37 = icmp eq i32 %36, %22
  br i1 %37, label %38, label %50

38:                                               ; preds = %34, %32
  %39 = icmp eq i8 %23, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 2
  %42 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %41, i32 noundef 20) #14
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40, %38
  %45 = icmp eq i8 %25, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 2
  %48 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %47, i32 noundef 13) #14
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %40, %34, %28
  %51 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 2
  %52 = tail call i32 @ccgSubSurf_getNumFinalFaces(ptr noundef %0) #14
  tail call void @CustomData_from_bmeshpoly(ptr noundef nonnull %51, ptr noundef nonnull %16, ptr noundef nonnull %20, i32 noundef %52) #14
  br label %53

53:                                               ; preds = %50, %46, %44
  %54 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 2
  %55 = tail call i32 @ccgSubSurf_getNumFinalFaces(ptr noundef %0) #14
  %56 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %54, i32 noundef 7, i32 noundef 1, ptr noundef null, i32 noundef %55) #14
  %57 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 75
  store ptr @ccgDM_getMinMax, ptr %57, align 8, !tbaa !116
  %58 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 23
  store ptr @ccgDM_getNumVerts, ptr %58, align 8, !tbaa !117
  %59 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 24
  store ptr @ccgDM_getNumEdges, ptr %59, align 8, !tbaa !118
  %60 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 25
  store ptr @ccgDM_getNumTessFaces, ptr %60, align 8, !tbaa !119
  %61 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 26
  store ptr @ccgDM_getNumLoops, ptr %61, align 8, !tbaa !120
  %62 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 27
  store ptr @ccgDM_getNumTessFaces, ptr %62, align 8, !tbaa !121
  %63 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 28
  store ptr @ccgDM_getFinalVert, ptr %63, align 8, !tbaa !122
  %64 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 29
  store ptr @ccgDM_getFinalEdge, ptr %64, align 8, !tbaa !123
  %65 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 30
  store ptr @ccgDM_getFinalFace, ptr %65, align 8, !tbaa !124
  %66 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 76
  store ptr @ccgDM_getFinalVertCo, ptr %66, align 8, !tbaa !125
  %67 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 78
  store ptr @ccgDM_getFinalVertNo, ptr %67, align 8, !tbaa !126
  %68 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 36
  store ptr @ccgDM_copyFinalVertArray, ptr %68, align 8, !tbaa !127
  %69 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 37
  store ptr @ccgDM_copyFinalEdgeArray, ptr %69, align 8, !tbaa !128
  %70 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 38
  store ptr @ccgDM_copyFinalFaceArray, ptr %70, align 8, !tbaa !129
  %71 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 39
  store ptr @ccgDM_copyFinalLoopArray, ptr %71, align 8, !tbaa !130
  %72 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 40
  store ptr @ccgDM_copyFinalPolyArray, ptr %72, align 8, !tbaa !131
  %73 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 46
  store ptr @ccgDM_get_vert_data, ptr %73, align 8, !tbaa !132
  %74 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 47
  store ptr @ccgDM_get_edge_data, ptr %74, align 8, !tbaa !133
  %75 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 48
  store ptr @ccgDM_get_tessface_data, ptr %75, align 8, !tbaa !134
  %76 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 49
  store ptr @ccgDM_get_poly_data, ptr %76, align 8, !tbaa !135
  %77 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 50
  store ptr @ccgDM_get_vert_data_layer, ptr %77, align 8, !tbaa !136
  %78 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 51
  store ptr @ccgDM_get_edge_data_layer, ptr %78, align 8, !tbaa !137
  %79 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 52
  store ptr @ccgDM_get_tessface_data_layer, ptr %79, align 8, !tbaa !138
  %80 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 54
  store ptr @ccgDM_get_poly_data_layer, ptr %80, align 8, !tbaa !139
  %81 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 63
  store ptr @ccgDM_getNumGrids, ptr %81, align 8, !tbaa !140
  %82 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 64
  store ptr @ccgDM_getGridSize, ptr %82, align 8, !tbaa !141
  %83 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 65
  store ptr @ccgDM_getGridData, ptr %83, align 8, !tbaa !142
  %84 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 66
  store ptr @ccgDM_getGridAdjacency, ptr %84, align 8, !tbaa !143
  %85 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 67
  store ptr @ccgDM_getGridOffset, ptr %85, align 8, !tbaa !144
  %86 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 68
  store ptr @ccgDM_getGridKey, ptr %86, align 8, !tbaa !145
  %87 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 69
  store ptr @ccgDM_getGridFlagMats, ptr %87, align 8, !tbaa !146
  %88 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 70
  store ptr @ccgDM_getGridHidden, ptr %88, align 8, !tbaa !147
  %89 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 80
  store ptr @ccgDM_getPolyMap, ptr %89, align 8, !tbaa !148
  %90 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 81
  store ptr @ccgDM_getPBVH, ptr %90, align 8, !tbaa !149
  %91 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 20
  store ptr @ccgDM_calcNormals, ptr %91, align 8, !tbaa !150
  %92 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 21
  store ptr @CDDM_calc_loop_normals, ptr %92, align 8, !tbaa !151
  %93 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 22
  store ptr @ccgDM_recalcTessellation, ptr %93, align 8, !tbaa !152
  %94 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 77
  store ptr @ccgdm_getVertCos, ptr %94, align 8, !tbaa !153
  %95 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 71
  store ptr @ccgDM_foreachMappedVert, ptr %95, align 8, !tbaa !154
  %96 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 72
  store ptr @ccgDM_foreachMappedEdge, ptr %96, align 8, !tbaa !155
  %97 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 73
  store ptr @ccgDM_foreachMappedLoop, ptr %97, align 8, !tbaa !156
  %98 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 74
  store ptr @ccgDM_foreachMappedFaceCenter, ptr %98, align 8, !tbaa !157
  %99 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 82
  store ptr @ccgDM_drawVerts, ptr %99, align 8, !tbaa !158
  %100 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 84
  store ptr @ccgDM_drawEdges, ptr %100, align 8, !tbaa !159
  %101 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 85
  store ptr @ccgDM_drawLooseEdges, ptr %101, align 8, !tbaa !160
  %102 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 86
  store ptr @ccgDM_drawFacesSolid, ptr %102, align 8, !tbaa !161
  %103 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 87
  store ptr @ccgDM_drawFacesTex, ptr %103, align 8, !tbaa !162
  %104 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 88
  store ptr @ccgDM_drawFacesGLSL, ptr %104, align 8, !tbaa !163
  %105 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 89
  store ptr @ccgDM_drawMappedFaces, ptr %105, align 8, !tbaa !164
  %106 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 90
  store ptr @ccgDM_drawMappedFacesTex, ptr %106, align 8, !tbaa !165
  %107 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 91
  store ptr @ccgDM_drawMappedFacesGLSL, ptr %107, align 8, !tbaa !166
  %108 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 94
  store ptr @ccgDM_drawMappedFacesMat, ptr %108, align 8, !tbaa !167
  %109 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 83
  store ptr @ccgDM_drawUVEdges, ptr %109, align 8, !tbaa !168
  %110 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 93
  store ptr @ccgDM_drawMappedEdgesInterp, ptr %110, align 8, !tbaa !169
  %111 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 92
  store ptr @ccgDM_drawMappedEdges, ptr %111, align 8, !tbaa !170
  %112 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 95
  store ptr @ccgDM_release, ptr %112, align 8, !tbaa !171
  %113 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %9, i64 0, i32 1
  store ptr %0, ptr %113, align 8, !tbaa !34
  %114 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %9, i64 0, i32 3
  store i32 %1, ptr %114, align 4, !tbaa !172
  %115 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %9, i64 0, i32 4
  store i32 %2, ptr %115, align 8, !tbaa !173
  %116 = tail call i32 @ccgSubSurf_getNumVerts(ptr noundef %0) #14
  %117 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !100
  %118 = sext i32 %116 to i64
  %119 = shl nsw i64 %118, 4
  %120 = tail call ptr %117(i64 noundef %119, ptr noundef nonnull @.str.2) #14
  %121 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %9, i64 0, i32 5
  store ptr %120, ptr %121, align 8, !tbaa !174
  %122 = tail call ptr @ccgSubSurf_getVertIterator(ptr noundef %0) #14
  %123 = tail call i32 @ccgVertIterator_isStopped(ptr noundef %122) #14
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %53, %125
  %126 = tail call ptr @ccgVertIterator_getCurrent(ptr noundef %122) #14
  %127 = load ptr, ptr %121, align 8, !tbaa !174
  %128 = tail call ptr @ccgSubSurf_getVertVertHandle(ptr noundef %126) #14
  %129 = ptrtoint ptr %128 to i64
  %130 = shl i64 %129, 32
  %131 = ashr exact i64 %130, 32
  %132 = getelementptr inbounds %struct.anon.1, ptr %127, i64 %131, i32 1
  store ptr %126, ptr %132, align 8, !tbaa !175
  tail call void @ccgVertIterator_next(ptr noundef %122) #14
  %133 = tail call i32 @ccgVertIterator_isStopped(ptr noundef %122) #14
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %125, label %135, !llvm.loop !177

135:                                              ; preds = %125, %53
  tail call void @ccgVertIterator_free(ptr noundef %122) #14
  %136 = tail call i32 @ccgSubSurf_getNumEdges(ptr noundef %0) #14
  %137 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !100
  %138 = sext i32 %136 to i64
  %139 = shl nsw i64 %138, 4
  %140 = tail call ptr %137(i64 noundef %139, ptr noundef nonnull @.str.3) #14
  %141 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %9, i64 0, i32 6
  store ptr %140, ptr %141, align 8, !tbaa !178
  %142 = tail call ptr @ccgSubSurf_getEdgeIterator(ptr noundef %0) #14
  %143 = tail call i32 @ccgEdgeIterator_isStopped(ptr noundef %142) #14
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %135, %145
  %146 = tail call ptr @ccgEdgeIterator_getCurrent(ptr noundef %142) #14
  %147 = load ptr, ptr %141, align 8, !tbaa !178
  %148 = tail call ptr @ccgSubSurf_getEdgeEdgeHandle(ptr noundef %146) #14
  %149 = ptrtoint ptr %148 to i64
  %150 = shl i64 %149, 32
  %151 = ashr exact i64 %150, 32
  %152 = getelementptr inbounds %struct.anon.2, ptr %147, i64 %151, i32 2
  store ptr %146, ptr %152, align 8, !tbaa !179
  tail call void @ccgEdgeIterator_next(ptr noundef %142) #14
  %153 = tail call i32 @ccgEdgeIterator_isStopped(ptr noundef %142) #14
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %145, label %155, !llvm.loop !181

155:                                              ; preds = %145, %135
  tail call void @ccgEdgeIterator_free(ptr noundef %142) #14
  %156 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %0) #14
  %157 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !100
  %158 = sext i32 %156 to i64
  %159 = mul nsw i64 %158, 24
  %160 = tail call ptr %157(i64 noundef %159, ptr noundef nonnull @.str.4) #14
  %161 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %9, i64 0, i32 7
  store ptr %160, ptr %161, align 8, !tbaa !44
  %162 = tail call ptr @ccgSubSurf_getFaceIterator(ptr noundef %0) #14
  %163 = tail call i32 @ccgFaceIterator_isStopped(ptr noundef %162) #14
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %155, %165
  %166 = tail call ptr @ccgFaceIterator_getCurrent(ptr noundef %162) #14
  %167 = load ptr, ptr %161, align 8, !tbaa !44
  %168 = tail call ptr @ccgSubSurf_getFaceFaceHandle(ptr noundef %166) #14
  %169 = ptrtoint ptr %168 to i64
  %170 = shl i64 %169, 32
  %171 = ashr exact i64 %170, 32
  %172 = getelementptr inbounds %struct.anon.0, ptr %167, i64 %171, i32 3
  store ptr %166, ptr %172, align 8, !tbaa !45
  tail call void @ccgFaceIterator_next(ptr noundef %162) #14
  %173 = tail call i32 @ccgFaceIterator_isStopped(ptr noundef %162) #14
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %165, label %175, !llvm.loop !182

175:                                              ; preds = %165, %155
  tail call void @ccgFaceIterator_free(ptr noundef %162) #14
  %176 = load ptr, ptr @MEM_callocN, align 8, !tbaa !100
  %177 = tail call i32 @ccgSubSurf_getNumFinalFaces(ptr noundef %0) #14
  %178 = sext i32 %177 to i64
  %179 = shl nsw i64 %178, 2
  %180 = tail call ptr %176(i64 noundef %179, ptr noundef nonnull @.str.5) #14
  %181 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %9, i64 0, i32 10
  store ptr %180, ptr %181, align 8, !tbaa !183
  %182 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %0) #14
  %183 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %0) #14
  %184 = add i32 %183, -2
  %185 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 32
  %186 = load ptr, ptr %185, align 8, !tbaa !94
  %187 = tail call ptr %186(ptr noundef %3) #14
  %188 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 4
  %189 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %188, i32 noundef 25) #14
  %190 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %188, i32 noundef 7) #14
  %191 = load ptr, ptr @MEM_callocN, align 8, !tbaa !100
  %192 = shl nsw i64 %138, 1
  %193 = tail call ptr %191(i64 noundef %192, ptr noundef nonnull @.str.6) #14
  %194 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %9, i64 0, i32 8
  store ptr %193, ptr %194, align 8, !tbaa !184
  %195 = load ptr, ptr @MEM_callocN, align 8, !tbaa !100
  %196 = shl nsw i64 %158, 2
  %197 = tail call ptr %195(i64 noundef %196, ptr noundef nonnull @.str.7) #14
  %198 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %9, i64 0, i32 9
  store ptr %197, ptr %198, align 8, !tbaa !185
  %199 = tail call ptr @DM_get_vert_data_layer(ptr noundef nonnull %9, i32 noundef 7) #14
  %200 = tail call ptr @DM_get_edge_data_layer(ptr noundef nonnull %9, i32 noundef 7) #14
  %201 = tail call ptr @DM_get_tessface_data_layer(ptr noundef nonnull %9, i32 noundef 7) #14
  %202 = tail call ptr @DM_get_poly_data_layer(ptr noundef nonnull %9, i32 noundef 7) #14
  %203 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 1
  %204 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 1, i32 2
  %205 = load i32, ptr %204, align 4, !tbaa !186
  %206 = icmp ne ptr %200, null
  %207 = zext i1 %206 to i32
  %208 = icmp eq i32 %205, %207
  %209 = icmp sgt i32 %156, 0
  br i1 %209, label %210, label %225

210:                                              ; preds = %175
  %211 = add i32 %183, -1
  %212 = shl i32 %211, 1
  %213 = mul i32 %212, %184
  %214 = add i32 %213, %211
  %215 = icmp eq ptr %189, null
  %216 = icmp sgt i32 %183, 2
  %217 = mul i32 %183, %183
  %218 = icmp sgt i32 %183, 1
  %219 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 3
  %220 = icmp eq ptr %190, null
  %221 = zext nneg i32 %156 to i64
  %222 = zext nneg i32 %211 to i64
  %223 = zext nneg i32 %211 to i64
  %224 = zext nneg i32 %211 to i64
  br label %253

225:                                              ; preds = %497, %175
  %226 = phi i32 [ 0, %175 ], [ %498, %497 ]
  %227 = phi ptr [ %199, %175 ], [ %396, %497 ]
  %228 = phi i32 [ 0, %175 ], [ %501, %497 ]
  %229 = phi i32 [ 0, %175 ], [ %502, %497 ]
  %230 = phi i32 [ 0, %175 ], [ %397, %497 ]
  %231 = icmp sgt i32 %136, 0
  br i1 %231, label %232, label %596

232:                                              ; preds = %225
  %233 = add i32 %182, -1
  %234 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  %235 = icmp ne ptr %193, null
  %236 = icmp sgt i32 %182, 2
  %237 = sitofp i32 %233 to float
  %238 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %239 = icmp slt i32 %182, 2
  %240 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 1
  %241 = icmp sgt i32 %182, 1
  %242 = sext i32 %229 to i64
  %243 = sext i32 %233 to i64
  %244 = zext nneg i32 %136 to i64
  %245 = select i1 %208, i1 true, i1 %239
  %246 = select i1 %206, i1 %241, i1 false
  %247 = zext i32 %233 to i64
  %248 = add nuw nsw i64 %247, 3
  %249 = and i64 %248, 8589934588
  %250 = add nsw i64 %247, -1
  %251 = insertelement <4 x i64> poison, i64 %250, i64 0
  %252 = shufflevector <4 x i64> %251, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %505

253:                                              ; preds = %210, %497
  %254 = phi i64 [ 0, %210 ], [ %503, %497 ]
  %255 = phi i32 [ 0, %210 ], [ %397, %497 ]
  %256 = phi i32 [ 0, %210 ], [ %502, %497 ]
  %257 = phi i32 [ 0, %210 ], [ %501, %497 ]
  %258 = phi ptr [ %199, %210 ], [ %396, %497 ]
  %259 = phi ptr [ %201, %210 ], [ %500, %497 ]
  %260 = phi ptr [ %202, %210 ], [ %499, %497 ]
  %261 = phi ptr [ %197, %210 ], [ %292, %497 ]
  %262 = phi i32 [ 0, %210 ], [ %314, %497 ]
  %263 = phi i32 [ 0, %210 ], [ %498, %497 ]
  %264 = load ptr, ptr %161, align 8, !tbaa !44
  %265 = getelementptr inbounds %struct.anon.0, ptr %264, i64 %254, i32 3
  %266 = load ptr, ptr %265, align 8, !tbaa !45
  %267 = call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %266) #14
  %268 = mul i32 %267, %214
  %269 = call ptr @ccgSubSurf_getFaceFaceHandle(ptr noundef %266) #14
  %270 = ptrtoint ptr %269 to i64
  %271 = trunc i64 %270 to i32
  %272 = zext i32 %267 to i64
  %273 = call ptr @llvm.stacksave.p0()
  %274 = alloca i32, i64 %272, align 16
  %275 = alloca i32, i64 %272, align 16
  %276 = call fastcc ptr @get_ss_weights(ptr noundef nonnull %5, i32 noundef %184, i32 noundef %267) #15
  %277 = load ptr, ptr %161, align 8, !tbaa !44
  %278 = getelementptr inbounds %struct.anon.0, ptr %277, i64 %254
  store i32 %255, ptr %278, align 8, !tbaa !187
  %279 = getelementptr inbounds %struct.anon.0, ptr %277, i64 %254, i32 1
  store i32 %256, ptr %279, align 4, !tbaa !188
  %280 = getelementptr inbounds %struct.anon.0, ptr %277, i64 %254, i32 2
  store i32 %257, ptr %280, align 8, !tbaa !189
  br i1 %215, label %288, label %281

281:                                              ; preds = %253
  %282 = shl i64 %270, 32
  %283 = ashr exact i64 %282, 32
  %284 = getelementptr inbounds %struct.MPoly, ptr %189, i64 %283, i32 3
  %285 = load i8, ptr %284, align 2, !tbaa !190
  %286 = getelementptr inbounds %struct.MPoly, ptr %189, i64 %283, i32 2
  %287 = load i16, ptr %286, align 4, !tbaa !191
  br label %288

288:                                              ; preds = %253, %281
  %289 = phi i8 [ %285, %281 ], [ 0, %253 ]
  %290 = phi i16 [ %287, %281 ], [ 0, %253 ]
  %291 = getelementptr inbounds %struct.DMFlagMat, ptr %261, i64 0, i32 1
  store i8 %289, ptr %291, align 2
  store i16 %290, ptr %261, align 2, !tbaa !192
  %292 = getelementptr inbounds %struct.DMFlagMat, ptr %261, i64 1
  %293 = call ptr @ccgSubSurf_getFaceUserData(ptr noundef %0, ptr noundef %266) #14
  store i32 %255, ptr %293, align 4, !tbaa !54
  %294 = icmp sgt i32 %267, 0
  br i1 %294, label %296, label %313

295:                                              ; preds = %296
  br i1 %294, label %303, label %313

296:                                              ; preds = %288, %296
  %297 = phi i64 [ %301, %296 ], [ 0, %288 ]
  %298 = phi i32 [ %299, %296 ], [ %262, %288 ]
  %299 = add nsw i32 %298, 1
  %300 = getelementptr inbounds i32, ptr %274, i64 %297
  store i32 %298, ptr %300, align 4, !tbaa !54
  %301 = add nuw nsw i64 %297, 1
  %302 = icmp eq i64 %301, %272
  br i1 %302, label %295, label %296, !llvm.loop !194

303:                                              ; preds = %295, %303
  %304 = phi i64 [ %311, %303 ], [ 0, %295 ]
  %305 = trunc i64 %304 to i32
  %306 = call ptr @ccgSubSurf_getFaceVert(ptr noundef %266, i32 noundef %305) #14
  %307 = call ptr @ccgSubSurf_getVertVertHandle(ptr noundef %306) #14
  %308 = ptrtoint ptr %307 to i64
  %309 = trunc i64 %308 to i32
  %310 = getelementptr inbounds i32, ptr %275, i64 %304
  store i32 %309, ptr %310, align 4, !tbaa !54
  %311 = add nuw nsw i64 %304, 1
  %312 = icmp eq i64 %311, %272
  br i1 %312, label %313, label %303, !llvm.loop !195

313:                                              ; preds = %303, %288, %295
  %314 = phi i32 [ %299, %295 ], [ %262, %288 ], [ %299, %303 ]
  call void @DM_interp_vert_data(ptr noundef %3, ptr noundef %9, ptr noundef nonnull %275, ptr noundef %276, i32 noundef %267, i32 noundef %255) #14
  %315 = icmp eq ptr %258, null
  br i1 %315, label %318, label %316

316:                                              ; preds = %313
  store i32 -1, ptr %258, align 4, !tbaa !54
  %317 = getelementptr inbounds i32, ptr %258, i64 1
  br label %318

318:                                              ; preds = %316, %313
  %319 = phi ptr [ %317, %316 ], [ null, %313 ]
  %320 = add nsw i32 %255, 1
  br i1 %294, label %321, label %395

321:                                              ; preds = %318
  %322 = mul i32 %217, %267
  %323 = zext nneg i32 %267 to i64
  br label %327

324:                                              ; preds = %350
  br i1 %294, label %325, label %395

325:                                              ; preds = %324
  %326 = mul i32 %217, %267
  br label %355

327:                                              ; preds = %321, %350
  %328 = phi i64 [ 0, %321 ], [ %353, %350 ]
  %329 = phi i32 [ %320, %321 ], [ %352, %350 ]
  %330 = phi ptr [ %319, %321 ], [ %351, %350 ]
  br i1 %216, label %331, label %350

331:                                              ; preds = %327
  %332 = trunc i64 %328 to i32
  %333 = mul i32 %322, %332
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds float, ptr %276, i64 %334
  br label %336

336:                                              ; preds = %331, %345
  %337 = phi i64 [ 1, %331 ], [ %348, %345 ]
  %338 = phi i32 [ %329, %331 ], [ %347, %345 ]
  %339 = phi ptr [ %330, %331 ], [ %346, %345 ]
  %340 = mul nsw i64 %337, %323
  %341 = getelementptr inbounds float, ptr %335, i64 %340
  call void @DM_interp_vert_data(ptr noundef %3, ptr noundef %9, ptr noundef nonnull %275, ptr noundef nonnull %341, i32 noundef %267, i32 noundef %338) #14
  %342 = icmp eq ptr %339, null
  br i1 %342, label %345, label %343

343:                                              ; preds = %336
  store i32 -1, ptr %339, align 4, !tbaa !54
  %344 = getelementptr inbounds i32, ptr %339, i64 1
  br label %345

345:                                              ; preds = %343, %336
  %346 = phi ptr [ %344, %343 ], [ null, %336 ]
  %347 = add nsw i32 %338, 1
  %348 = add nuw nsw i64 %337, 1
  %349 = icmp eq i64 %348, %222
  br i1 %349, label %350, label %336, !llvm.loop !196

350:                                              ; preds = %345, %327
  %351 = phi ptr [ %330, %327 ], [ %346, %345 ]
  %352 = phi i32 [ %329, %327 ], [ %347, %345 ]
  %353 = add nuw nsw i64 %328, 1
  %354 = icmp eq i64 %353, %272
  br i1 %354, label %324, label %327, !llvm.loop !197

355:                                              ; preds = %325, %390
  %356 = phi i64 [ 0, %325 ], [ %393, %390 ]
  %357 = phi i32 [ %352, %325 ], [ %392, %390 ]
  %358 = phi ptr [ %351, %325 ], [ %391, %390 ]
  br i1 %216, label %359, label %390

359:                                              ; preds = %355
  %360 = trunc i64 %356 to i32
  %361 = mul i32 %326, %360
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds float, ptr %276, i64 %362
  br label %364

364:                                              ; preds = %359, %387
  %365 = phi i64 [ 1, %359 ], [ %388, %387 ]
  %366 = phi i32 [ %357, %359 ], [ %384, %387 ]
  %367 = phi ptr [ %358, %359 ], [ %383, %387 ]
  %368 = trunc i64 %365 to i32
  %369 = mul i32 %183, %368
  br label %370

370:                                              ; preds = %364, %382
  %371 = phi i64 [ 1, %364 ], [ %385, %382 ]
  %372 = phi i32 [ %366, %364 ], [ %384, %382 ]
  %373 = phi ptr [ %367, %364 ], [ %383, %382 ]
  %374 = trunc i64 %371 to i32
  %375 = add i32 %369, %374
  %376 = mul nsw i32 %375, %267
  %377 = zext nneg i32 %376 to i64
  %378 = getelementptr inbounds float, ptr %363, i64 %377
  call void @DM_interp_vert_data(ptr noundef %3, ptr noundef %9, ptr noundef nonnull %275, ptr noundef nonnull %378, i32 noundef %267, i32 noundef %372) #14
  %379 = icmp eq ptr %373, null
  br i1 %379, label %382, label %380

380:                                              ; preds = %370
  store i32 -1, ptr %373, align 4, !tbaa !54
  %381 = getelementptr inbounds i32, ptr %373, i64 1
  br label %382

382:                                              ; preds = %380, %370
  %383 = phi ptr [ %381, %380 ], [ null, %370 ]
  %384 = add nsw i32 %372, 1
  %385 = add nuw nsw i64 %371, 1
  %386 = icmp eq i64 %385, %223
  br i1 %386, label %387, label %370, !llvm.loop !198

387:                                              ; preds = %382
  %388 = add nuw nsw i64 %365, 1
  %389 = icmp eq i64 %388, %223
  br i1 %389, label %390, label %364, !llvm.loop !199

390:                                              ; preds = %387, %355
  %391 = phi ptr [ %358, %355 ], [ %383, %387 ]
  %392 = phi i32 [ %357, %355 ], [ %384, %387 ]
  %393 = add nuw nsw i64 %356, 1
  %394 = icmp eq i64 %393, %272
  br i1 %394, label %395, label %355, !llvm.loop !200

395:                                              ; preds = %390, %318, %324
  %396 = phi ptr [ %351, %324 ], [ %319, %318 ], [ %391, %390 ]
  %397 = phi i32 [ %352, %324 ], [ %320, %318 ], [ %392, %390 ]
  %398 = icmp sgt i32 %268, 0
  %399 = select i1 %206, i1 %398, i1 false
  br i1 %399, label %400, label %406

400:                                              ; preds = %395
  %401 = sext i32 %256 to i64
  %402 = shl nsw i64 %401, 2
  %403 = getelementptr i8, ptr %200, i64 %402
  %404 = zext nneg i32 %268 to i64
  %405 = shl nuw nsw i64 %404, 2
  call void @llvm.memset.p0.i64(ptr align 4 %403, i8 -1, i64 %405, i1 false), !tbaa !54
  br label %406

406:                                              ; preds = %400, %395
  br i1 %294, label %407, label %497

407:                                              ; preds = %406
  %408 = mul i32 %217, %267
  %409 = shl i64 %270, 32
  %410 = ashr exact i64 %409, 32
  %411 = getelementptr inbounds i32, ptr %190, i64 %410
  %412 = trunc i64 %254 to i32
  br label %413

413:                                              ; preds = %407, %490
  %414 = phi i64 [ 0, %407 ], [ %495, %490 ]
  %415 = phi i32 [ %257, %407 ], [ %494, %490 ]
  %416 = phi ptr [ %259, %407 ], [ %493, %490 ]
  %417 = phi ptr [ %260, %407 ], [ %492, %490 ]
  %418 = phi i32 [ %263, %407 ], [ %491, %490 ]
  br i1 %218, label %419, label %490

419:                                              ; preds = %413
  %420 = trunc i64 %414 to i32
  %421 = mul i32 %408, %420
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds float, ptr %276, i64 %422
  br label %424

424:                                              ; preds = %419, %487
  %425 = phi i64 [ 0, %419 ], [ %430, %487 ]
  %426 = phi i32 [ %415, %419 ], [ %488, %487 ]
  %427 = phi ptr [ %416, %419 ], [ %472, %487 ]
  %428 = phi ptr [ %417, %419 ], [ %481, %487 ]
  %429 = phi i32 [ %418, %419 ], [ %466, %487 ]
  %430 = add nuw nsw i64 %425, 1
  %431 = sext i32 %426 to i64
  %432 = trunc i64 %425 to i32
  %433 = mul i32 %183, %432
  %434 = trunc i64 %430 to i32
  %435 = mul i32 %183, %434
  br label %436

436:                                              ; preds = %424, %480
  %437 = phi i64 [ 0, %424 ], [ %454, %480 ]
  %438 = phi i64 [ %431, %424 ], [ %485, %480 ]
  %439 = phi ptr [ %427, %424 ], [ %472, %480 ]
  %440 = phi ptr [ %428, %424 ], [ %481, %480 ]
  %441 = phi i32 [ %429, %424 ], [ %466, %480 ]
  %442 = trunc i64 %437 to i32
  %443 = add i32 %433, %442
  %444 = mul nsw i32 %443, %267
  %445 = zext nneg i32 %444 to i64
  %446 = getelementptr inbounds float, ptr %423, i64 %445
  call void @CustomData_interp(ptr noundef nonnull %219, ptr noundef nonnull %20, ptr noundef nonnull %274, ptr noundef %446, ptr noundef null, i32 noundef %267, i32 noundef %441) #14
  %447 = add nsw i32 %441, 1
  %448 = trunc i64 %437 to i32
  %449 = add i32 %435, %448
  %450 = mul nsw i32 %449, %267
  %451 = zext nneg i32 %450 to i64
  %452 = getelementptr inbounds float, ptr %423, i64 %451
  call void @CustomData_interp(ptr noundef nonnull %219, ptr noundef nonnull %20, ptr noundef nonnull %274, ptr noundef %452, ptr noundef null, i32 noundef %267, i32 noundef %447) #14
  %453 = add nsw i32 %441, 2
  %454 = add nuw nsw i64 %437, 1
  %455 = trunc i64 %454 to i32
  %456 = add i32 %435, %455
  %457 = mul nsw i32 %456, %267
  %458 = zext nneg i32 %457 to i64
  %459 = getelementptr inbounds float, ptr %423, i64 %458
  call void @CustomData_interp(ptr noundef nonnull %219, ptr noundef nonnull %20, ptr noundef nonnull %274, ptr noundef nonnull %459, ptr noundef null, i32 noundef %267, i32 noundef %453) #14
  %460 = add nsw i32 %441, 3
  %461 = trunc i64 %454 to i32
  %462 = add i32 %433, %461
  %463 = mul nsw i32 %462, %267
  %464 = zext nneg i32 %463 to i64
  %465 = getelementptr inbounds float, ptr %423, i64 %464
  call void @CustomData_interp(ptr noundef nonnull %219, ptr noundef nonnull %20, ptr noundef nonnull %274, ptr noundef nonnull %465, ptr noundef null, i32 noundef %267, i32 noundef %460) #14
  %466 = add nsw i32 %441, 4
  %467 = trunc i64 %438 to i32
  call void @CustomData_copy_data(ptr noundef nonnull %188, ptr noundef nonnull %16, i32 noundef %271, i32 noundef %467, i32 noundef 1) #14
  call fastcc void @ccg_loops_to_corners(ptr noundef nonnull %54, ptr noundef nonnull %20, ptr noundef nonnull %16, i32 noundef %441, i32 noundef %467, i32 noundef %467, i32 noundef %21, i32 noundef %22, i32 noundef %24, i32 noundef %26) #15
  %468 = icmp eq ptr %439, null
  br i1 %468, label %471, label %469

469:                                              ; preds = %436
  store i32 %467, ptr %439, align 4, !tbaa !54
  %470 = getelementptr inbounds i32, ptr %439, i64 1
  br label %471

471:                                              ; preds = %469, %436
  %472 = phi ptr [ %470, %469 ], [ null, %436 ]
  %473 = icmp eq ptr %440, null
  br i1 %473, label %480, label %474

474:                                              ; preds = %471
  br i1 %220, label %477, label %475

475:                                              ; preds = %474
  %476 = load i32, ptr %411, align 4, !tbaa !54
  br label %477

477:                                              ; preds = %474, %475
  %478 = phi i32 [ %476, %475 ], [ %271, %474 ]
  store i32 %478, ptr %440, align 4, !tbaa !54
  %479 = getelementptr inbounds i32, ptr %440, i64 1
  br label %480

480:                                              ; preds = %477, %471
  %481 = phi ptr [ %479, %477 ], [ null, %471 ]
  %482 = load ptr, ptr %181, align 8, !tbaa !183
  %483 = getelementptr inbounds i32, ptr %482, i64 %438
  store i32 %412, ptr %483, align 4, !tbaa !54
  %484 = getelementptr inbounds i32, ptr %56, i64 %438
  store i32 %467, ptr %484, align 4, !tbaa !54
  %485 = add nsw i64 %438, 1
  %486 = icmp eq i64 %454, %224
  br i1 %486, label %487, label %436, !llvm.loop !201

487:                                              ; preds = %480
  %488 = trunc i64 %485 to i32
  %489 = icmp eq i64 %430, %224
  br i1 %489, label %490, label %424, !llvm.loop !202

490:                                              ; preds = %487, %413
  %491 = phi i32 [ %418, %413 ], [ %466, %487 ]
  %492 = phi ptr [ %417, %413 ], [ %481, %487 ]
  %493 = phi ptr [ %416, %413 ], [ %472, %487 ]
  %494 = phi i32 [ %415, %413 ], [ %488, %487 ]
  %495 = add nuw nsw i64 %414, 1
  %496 = icmp eq i64 %495, %272
  br i1 %496, label %497, label %413, !llvm.loop !203

497:                                              ; preds = %490, %406
  %498 = phi i32 [ %263, %406 ], [ %491, %490 ]
  %499 = phi ptr [ %260, %406 ], [ %492, %490 ]
  %500 = phi ptr [ %259, %406 ], [ %493, %490 ]
  %501 = phi i32 [ %257, %406 ], [ %494, %490 ]
  %502 = add nsw i32 %268, %256
  call void @llvm.stackrestore.p0(ptr %273)
  %503 = add nuw nsw i64 %254, 1
  %504 = icmp eq i64 %503, %221
  br i1 %504, label %225, label %253, !llvm.loop !204

505:                                              ; preds = %232, %590
  %506 = phi i64 [ %242, %232 ], [ %591, %590 ]
  %507 = phi i64 [ 0, %232 ], [ %592, %590 ]
  %508 = phi i32 [ %230, %232 ], [ %555, %590 ]
  %509 = phi ptr [ %227, %232 ], [ %554, %590 ]
  %510 = load ptr, ptr %141, align 8, !tbaa !178
  %511 = getelementptr inbounds %struct.anon.2, ptr %510, i64 %507, i32 2
  %512 = load ptr, ptr %511, align 8, !tbaa !179
  %513 = call fastcc i32 @ccgDM_getEdgeMapIndex(ptr noundef %0, ptr noundef %512) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %514 = call ptr @ccgSubSurf_getEdgeEdgeHandle(ptr noundef %512) #14
  %515 = ptrtoint ptr %514 to i64
  %516 = trunc i64 %515 to i32
  %517 = call ptr @ccgSubSurf_getEdgeVert0(ptr noundef %512) #14
  %518 = call ptr @ccgSubSurf_getVertVertHandle(ptr noundef %517) #14
  %519 = ptrtoint ptr %518 to i64
  %520 = trunc i64 %519 to i32
  store i32 %520, ptr %6, align 4, !tbaa !54
  %521 = call ptr @ccgSubSurf_getEdgeVert1(ptr noundef %512) #14
  %522 = call ptr @ccgSubSurf_getVertVertHandle(ptr noundef %521) #14
  %523 = ptrtoint ptr %522 to i64
  %524 = trunc i64 %523 to i32
  store i32 %524, ptr %234, align 4, !tbaa !54
  %525 = load ptr, ptr %141, align 8, !tbaa !178
  %526 = getelementptr inbounds %struct.anon.2, ptr %525, i64 %507
  store i32 %508, ptr %526, align 8, !tbaa !205
  %527 = getelementptr inbounds %struct.anon.2, ptr %525, i64 %507, i32 1
  %528 = trunc i64 %506 to i32
  store i32 %528, ptr %527, align 4, !tbaa !206
  %529 = icmp sgt i32 %516, -1
  %530 = select i1 %529, i1 %235, i1 false
  br i1 %530, label %531, label %536

531:                                              ; preds = %505
  %532 = and i64 %515, 4294967295
  %533 = getelementptr inbounds %struct.MEdge, ptr %187, i64 %532, i32 4
  %534 = load i16, ptr %533, align 2, !tbaa !207
  %535 = getelementptr inbounds i16, ptr %193, i64 %532
  store i16 %534, ptr %535, align 2, !tbaa !208
  br label %536

536:                                              ; preds = %531, %505
  %537 = call ptr @ccgSubSurf_getEdgeUserData(ptr noundef %0, ptr noundef %512) #14
  store i32 %508, ptr %537, align 4, !tbaa !54
  br i1 %236, label %538, label %553

538:                                              ; preds = %536, %548
  %539 = phi i32 [ %550, %548 ], [ %508, %536 ]
  %540 = phi ptr [ %549, %548 ], [ %509, %536 ]
  %541 = phi i32 [ %551, %548 ], [ 1, %536 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %542 = sitofp i32 %541 to float
  %543 = fdiv float %542, %237
  store float %543, ptr %238, align 4, !tbaa !66
  %544 = fsub float 1.000000e+00, %543
  store float %544, ptr %7, align 4, !tbaa !66
  call void @DM_interp_vert_data(ptr noundef %3, ptr noundef %9, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 2, i32 noundef %539) #14
  %545 = icmp eq ptr %540, null
  br i1 %545, label %548, label %546

546:                                              ; preds = %538
  store i32 -1, ptr %540, align 4, !tbaa !54
  %547 = getelementptr inbounds i32, ptr %540, i64 1
  br label %548

548:                                              ; preds = %546, %538
  %549 = phi ptr [ %547, %546 ], [ null, %538 ]
  %550 = add nsw i32 %539, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  %551 = add nuw nsw i32 %541, 1
  %552 = icmp eq i32 %551, %233
  br i1 %552, label %553, label %538, !llvm.loop !209

553:                                              ; preds = %548, %536
  %554 = phi ptr [ %509, %536 ], [ %549, %548 ]
  %555 = phi i32 [ %508, %536 ], [ %550, %548 ]
  br i1 %245, label %561, label %556

556:                                              ; preds = %553, %556
  %557 = phi i32 [ %559, %556 ], [ 0, %553 ]
  %558 = add nsw i32 %557, %528
  call void @CustomData_copy_data(ptr noundef nonnull %240, ptr noundef nonnull %203, i32 noundef %516, i32 noundef %558, i32 noundef 1) #14
  %559 = add nuw nsw i32 %557, 1
  %560 = icmp eq i32 %559, %233
  br i1 %560, label %561, label %556, !llvm.loop !210

561:                                              ; preds = %556, %553
  br i1 %246, label %562, label %590

562:                                              ; preds = %561
  %563 = getelementptr i32, ptr %200, i64 %506
  br label %564

564:                                              ; preds = %586, %562
  %565 = phi i64 [ 0, %562 ], [ %587, %586 ]
  %566 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %562 ], [ %588, %586 ]
  %567 = icmp ule <4 x i64> %566, %252
  %568 = extractelement <4 x i1> %567, i64 0
  br i1 %568, label %569, label %571

569:                                              ; preds = %564
  %570 = getelementptr i32, ptr %563, i64 %565
  store i32 %513, ptr %570, align 4, !tbaa !54
  br label %571

571:                                              ; preds = %569, %564
  %572 = extractelement <4 x i1> %567, i64 1
  br i1 %572, label %573, label %576

573:                                              ; preds = %571
  %574 = or disjoint i64 %565, 1
  %575 = getelementptr i32, ptr %563, i64 %574
  store i32 %513, ptr %575, align 4, !tbaa !54
  br label %576

576:                                              ; preds = %573, %571
  %577 = extractelement <4 x i1> %567, i64 2
  br i1 %577, label %578, label %581

578:                                              ; preds = %576
  %579 = or disjoint i64 %565, 2
  %580 = getelementptr i32, ptr %563, i64 %579
  store i32 %513, ptr %580, align 4, !tbaa !54
  br label %581

581:                                              ; preds = %578, %576
  %582 = extractelement <4 x i1> %567, i64 3
  br i1 %582, label %583, label %586

583:                                              ; preds = %581
  %584 = or disjoint i64 %565, 3
  %585 = getelementptr i32, ptr %563, i64 %584
  store i32 %513, ptr %585, align 4, !tbaa !54
  br label %586

586:                                              ; preds = %583, %581
  %587 = add i64 %565, 4
  %588 = add <4 x i64> %566, <i64 4, i64 4, i64 4, i64 4>
  %589 = icmp eq i64 %587, %249
  br i1 %589, label %590, label %564, !llvm.loop !211

590:                                              ; preds = %586, %561
  %591 = add i64 %506, %243
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  %592 = add nuw nsw i64 %507, 1
  %593 = icmp eq i64 %592, %244
  br i1 %593, label %594, label %505, !llvm.loop !214

594:                                              ; preds = %590
  %595 = trunc i64 %591 to i32
  br label %596

596:                                              ; preds = %594, %225
  %597 = phi ptr [ %227, %225 ], [ %554, %594 ]
  %598 = phi i32 [ %229, %225 ], [ %595, %594 ]
  %599 = phi i32 [ %230, %225 ], [ %555, %594 ]
  %600 = icmp eq i32 %2, 0
  br i1 %600, label %612, label %601

601:                                              ; preds = %596
  %602 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 3
  %603 = call i32 @CustomData_number_of_layers(ptr noundef nonnull %20, i32 noundef 16) #14
  %604 = call i32 @CustomData_number_of_layers(ptr noundef nonnull %602, i32 noundef 16) #14
  %605 = freeze i32 %604
  %606 = call i32 @llvm.smin.i32(i32 %603, i32 %605)
  %607 = icmp sgt i32 %606, 0
  br i1 %607, label %608, label %612

608:                                              ; preds = %601, %608
  %609 = phi i32 [ %610, %608 ], [ 0, %601 ]
  call fastcc void @set_subsurf_uv(ptr noundef %0, ptr noundef %3, ptr noundef %9, i32 noundef %609) #15
  %610 = add nuw nsw i32 %609, 1
  %611 = icmp eq i32 %610, %606
  br i1 %611, label %612, label %608, !llvm.loop !215

612:                                              ; preds = %608, %601, %596
  %613 = icmp sgt i32 %116, 0
  br i1 %613, label %614, label %639

614:                                              ; preds = %612
  %615 = zext nneg i32 %116 to i64
  br label %616

616:                                              ; preds = %614, %634
  %617 = phi i64 [ 0, %614 ], [ %637, %634 ]
  %618 = phi i32 [ %599, %614 ], [ %636, %634 ]
  %619 = phi ptr [ %597, %614 ], [ %635, %634 ]
  %620 = load ptr, ptr %121, align 8, !tbaa !174
  %621 = getelementptr inbounds %struct.anon.1, ptr %620, i64 %617, i32 1
  %622 = load ptr, ptr %621, align 8, !tbaa !175
  %623 = load ptr, ptr %113, align 8, !tbaa !34
  %624 = call fastcc i32 @ccgDM_getVertMapIndex(ptr noundef %623, ptr noundef %622) #15
  %625 = call ptr @ccgSubSurf_getVertVertHandle(ptr noundef %622) #14
  %626 = ptrtoint ptr %625 to i64
  %627 = trunc i64 %626 to i32
  %628 = load ptr, ptr %121, align 8, !tbaa !174
  %629 = getelementptr inbounds %struct.anon.1, ptr %628, i64 %617
  store i32 %618, ptr %629, align 8, !tbaa !216
  %630 = call ptr @ccgSubSurf_getVertUserData(ptr noundef %0, ptr noundef %622) #14
  store i32 %618, ptr %630, align 4, !tbaa !54
  call void @DM_copy_vert_data(ptr noundef %3, ptr noundef %9, i32 noundef %627, i32 noundef %618, i32 noundef 1) #14
  %631 = icmp eq ptr %619, null
  br i1 %631, label %634, label %632

632:                                              ; preds = %616
  store i32 %624, ptr %619, align 4, !tbaa !54
  %633 = getelementptr inbounds i32, ptr %619, i64 1
  br label %634

634:                                              ; preds = %632, %616
  %635 = phi ptr [ %633, %632 ], [ null, %616 ]
  %636 = add nsw i32 %618, 1
  %637 = add nuw nsw i64 %617, 1
  %638 = icmp eq i64 %637, %615
  br i1 %638, label %639, label %616, !llvm.loop !217

639:                                              ; preds = %634, %612
  %640 = phi i32 [ %599, %612 ], [ %636, %634 ]
  %641 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 5
  store i32 %640, ptr %641, align 8, !tbaa !218
  %642 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 6
  store i32 %598, ptr %642, align 4, !tbaa !219
  %643 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 7
  store i32 %228, ptr %643, align 8, !tbaa !220
  %644 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 8
  store i32 %226, ptr %644, align 4, !tbaa !221
  store i32 %228, ptr %17, align 8, !tbaa !115
  %645 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 16
  %646 = load i32, ptr %645, align 8, !tbaa !222
  %647 = and i32 %646, -2
  store i32 %647, ptr %645, align 8, !tbaa !222
  call fastcc void @free_ss_weights(ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret ptr %9
}

; Function Attrs: optsize
declare void @ccgSubSurf_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ccgSubSurf_setNumLayers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @subsurf_calculate_limit_positions(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = tail call fastcc ptr @_getSubSurf(ptr noundef null, i32 noundef 1, i32 noundef 3, i32 noundef 2) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  %6 = tail call ptr @CDDM_from_mesh(ptr noundef %0) #14
  tail call fastcc void @ss_sync_from_derivedmesh(ptr noundef %5, ptr noundef %6, ptr noundef null, i32 noundef 0) #15
  %7 = tail call ptr @ccgSubSurf_getVertIterator(ptr noundef %5) #14
  %8 = tail call i32 @ccgVertIterator_isStopped(ptr noundef %7) #14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %82

10:                                               ; preds = %2
  %11 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %12 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %13 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %14 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  br label %15

15:                                               ; preds = %10, %44
  %16 = tail call ptr @ccgVertIterator_getCurrent(ptr noundef %7) #14
  %17 = tail call ptr @ccgSubSurf_getVertVertHandle(ptr noundef %16) #14
  %18 = ptrtoint ptr %17 to i64
  %19 = tail call i32 @ccgSubSurf_getVertNumEdges(ptr noundef %16) #14
  %20 = tail call i32 @ccgSubSurf_getVertNumFaces(ptr noundef %16) #14
  call fastcc void @zero_v3(ptr noundef nonnull %3) #15
  call fastcc void @zero_v3(ptr noundef nonnull %4) #15
  %21 = icmp sgt i32 %19, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %24, %15
  %23 = icmp sgt i32 %20, 0
  br i1 %23, label %30, label %36

24:                                               ; preds = %15, %24
  %25 = phi i32 [ %28, %24 ], [ 0, %15 ]
  %26 = tail call ptr @ccgSubSurf_getVertEdge(ptr noundef %16, i32 noundef %25) #14
  %27 = tail call ptr @ccgSubSurf_getEdgeData(ptr noundef %5, ptr noundef %26, i32 noundef 1) #14
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef %27) #15
  %28 = add nuw nsw i32 %25, 1
  %29 = icmp eq i32 %28, %19
  br i1 %29, label %22, label %24, !llvm.loop !223

30:                                               ; preds = %22, %30
  %31 = phi i32 [ %34, %30 ], [ 0, %22 ]
  %32 = tail call ptr @ccgSubSurf_getVertFace(ptr noundef %16, i32 noundef %31) #14
  %33 = tail call ptr @ccgSubSurf_getFaceCenterData(ptr noundef %32) #14
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef %33) #15
  %34 = add nuw nsw i32 %31, 1
  %35 = icmp eq i32 %34, %20
  br i1 %35, label %36, label %30, !llvm.loop !224

36:                                               ; preds = %30, %22
  %37 = icmp eq i32 %20, 0
  %38 = icmp eq i32 %20, %19
  %39 = select i1 %37, i1 true, i1 %38
  %40 = sitofp i32 %19 to float
  br i1 %39, label %44, label %41

41:                                               ; preds = %36
  %42 = sitofp i32 %20 to float
  %43 = fdiv float %40, %42
  call fastcc void @mul_v3_fl(ptr noundef nonnull %4, float noundef %43) #15
  br label %44

44:                                               ; preds = %36, %41
  %45 = tail call ptr @ccgSubSurf_getVertData(ptr noundef %5, ptr noundef %16) #14
  %46 = load float, ptr %45, align 4, !tbaa !66
  %47 = fmul float %46, %40
  %48 = load float, ptr %3, align 4, !tbaa !66
  %49 = fmul float %48, 4.000000e+00
  %50 = tail call float @llvm.fmuladd.f32(float %47, float %40, float %49)
  %51 = load float, ptr %4, align 4, !tbaa !66
  %52 = fadd float %51, %50
  %53 = add nsw i32 %19, 5
  %54 = mul nsw i32 %53, %19
  %55 = sitofp i32 %54 to float
  %56 = fdiv float %52, %55
  %57 = shl i64 %18, 32
  %58 = ashr exact i64 %57, 32
  %59 = getelementptr inbounds [3 x float], ptr %1, i64 %58
  store float %56, ptr %59, align 4, !tbaa !66
  %60 = getelementptr inbounds float, ptr %45, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !66
  %62 = fmul float %61, %40
  %63 = load float, ptr %11, align 4, !tbaa !66
  %64 = fmul float %63, 4.000000e+00
  %65 = tail call float @llvm.fmuladd.f32(float %62, float %40, float %64)
  %66 = load float, ptr %12, align 4, !tbaa !66
  %67 = fadd float %66, %65
  %68 = fdiv float %67, %55
  %69 = getelementptr inbounds [3 x float], ptr %1, i64 %58, i64 1
  store float %68, ptr %69, align 4, !tbaa !66
  %70 = getelementptr inbounds float, ptr %45, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !66
  %72 = fmul float %71, %40
  %73 = load float, ptr %13, align 4, !tbaa !66
  %74 = fmul float %73, 4.000000e+00
  %75 = tail call float @llvm.fmuladd.f32(float %72, float %40, float %74)
  %76 = load float, ptr %14, align 4, !tbaa !66
  %77 = fadd float %76, %75
  %78 = fdiv float %77, %55
  %79 = getelementptr inbounds [3 x float], ptr %1, i64 %58, i64 2
  store float %78, ptr %79, align 4, !tbaa !66
  tail call void @ccgVertIterator_next(ptr noundef %7) #14
  %80 = tail call i32 @ccgVertIterator_isStopped(ptr noundef %7) #14
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %15, label %82, !llvm.loop !225

82:                                               ; preds = %44, %2
  tail call void @ccgVertIterator_free(ptr noundef %7) #14
  tail call void @ccgSubSurf_free(ptr noundef %5) #14
  %83 = getelementptr inbounds %struct.DerivedMesh, ptr %6, i64 0, i32 95
  %84 = load ptr, ptr %83, align 8, !tbaa !226
  tail call void %84(ptr noundef %6) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  ret void
}

; Function Attrs: optsize
declare ptr @CDDM_from_mesh(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ccgSubSurf_getVertIterator(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgVertIterator_isStopped(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ccgVertIterator_getCurrent(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ccgSubSurf_getVertVertHandle(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_getVertNumEdges(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_getVertNumFaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !227 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !66
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !66
  ret void
}

; Function Attrs: optsize
declare ptr @ccgSubSurf_getVertEdge(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !228 {
  %4 = load float, ptr %1, align 4, !tbaa !66
  %5 = load float, ptr %2, align 4, !tbaa !66
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !66
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !66
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !66
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !66
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !66
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !66
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !66
  ret void
}

; Function Attrs: optsize
declare ptr @ccgSubSurf_getEdgeData(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ccgSubSurf_getVertFace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !229 {
  %3 = load float, ptr %1, align 4, !tbaa !66
  %4 = load float, ptr %0, align 4, !tbaa !66
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !66
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !66
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !66
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !66
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !66
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !66
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !66
  ret void
}

; Function Attrs: optsize
declare ptr @ccgSubSurf_getFaceCenterData(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #4 !PGOFuncName !230 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !66
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !66
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !66
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: optsize
declare ptr @ccgSubSurf_getVertData(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: optsize
declare void @ccgVertIterator_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ccgVertIterator_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ccgSubSurf_getFaceUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_getFaceNumVerts(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ccgSubSurf_getFaceVert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ccgSubSurf_getVertUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ccgSubSurf_getFaceEdge(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ccgSubSurf_getEdgeUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ccgSubSurf_getEdgeVert0(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ccgSubSurf_getUseAgeCounts(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_getSimpleSubdiv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_setSubdivisionLevels(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @arena_alloc(ptr noundef %0, i32 noundef %1) #0 !PGOFuncName !231 {
  %3 = sext i32 %1 to i64
  %4 = tail call ptr @BLI_memarena_alloc(ptr noundef %0, i64 noundef %3) #14
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @arena_realloc(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 !PGOFuncName !232 {
  %5 = sext i32 %2 to i64
  %6 = tail call ptr @BLI_memarena_alloc(ptr noundef %0, i64 noundef %5) #14
  %7 = icmp eq ptr %1, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = sext i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr nonnull align 1 %1, i64 %9, i1 false)
  br label %10

10:                                               ; preds = %8, %4
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @arena_free(ptr nocapture readnone %0, ptr nocapture readnone %1) #6 !PGOFuncName !233 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @arena_release(ptr noundef %0) #0 !PGOFuncName !234 {
  tail call void @BLI_memarena_free(ptr noundef %0) #14
  ret void
}

; Function Attrs: optsize
declare ptr @ccgSubSurf_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_setUseAgeCounts(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ccgSubSurf_setAllocMask(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_setCalcVertexNormals(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_initFullSync(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_syncVert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_syncEdge(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #8

; Function Attrs: optsize
declare i32 @ccgSubSurf_syncFace(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #8

; Function Attrs: optsize
declare i32 @ccgSubSurf_processSync(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: optsize
declare void @DM_from_template(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_getNumFinalVerts(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_getNumFinalEdges(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_getNumFinalFaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CustomData_free_layer_active(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_from_bmeshpoly(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_getMinMax(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #0 !PGOFuncName !235 {
  %4 = alloca %struct.CCGKey, align 4
  %5 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #16
  %7 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %6) #14
  %8 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %6) #14
  call void @CCG_key_top_level(ptr noundef nonnull %4, ptr noundef %6) #14
  %9 = call i32 @ccgSubSurf_getNumVerts(ptr noundef %6) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %12, align 4, !tbaa !66
  store <2 x float> zeroinitializer, ptr %2, align 4, !tbaa !66
  %13 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %13, align 4, !tbaa !66
  store <2 x float> zeroinitializer, ptr %1, align 4, !tbaa !66
  br label %14

14:                                               ; preds = %11, %3
  %15 = call ptr @ccgSubSurf_getVertIterator(ptr noundef %6) #14
  %16 = call i32 @ccgVertIterator_isStopped(ptr noundef %15) #14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14, %18
  %19 = call ptr @ccgVertIterator_getCurrent(ptr noundef %15) #14
  %20 = call ptr @ccgSubSurf_getVertData(ptr noundef %6, ptr noundef %19) #14
  call fastcc void @minmax_v3_v3v3(ptr noundef %20, ptr noundef %1, ptr noundef %2) #15
  call void @ccgVertIterator_next(ptr noundef %15) #14
  %21 = call i32 @ccgVertIterator_isStopped(ptr noundef %15) #14
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %18, label %23, !llvm.loop !236

23:                                               ; preds = %18, %14
  call void @ccgVertIterator_free(ptr noundef %15) #14
  %24 = call ptr @ccgSubSurf_getEdgeIterator(ptr noundef %6) #14
  %25 = call i32 @ccgEdgeIterator_isStopped(ptr noundef %24) #14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = icmp sgt i32 %7, 0
  br label %29

29:                                               ; preds = %27, %37
  %30 = call ptr @ccgEdgeIterator_getCurrent(ptr noundef %24) #14
  %31 = call ptr @ccgSubSurf_getEdgeDataArray(ptr noundef %6, ptr noundef %30) #14
  br i1 %28, label %32, label %37

32:                                               ; preds = %29, %32
  %33 = phi i32 [ %35, %32 ], [ 0, %29 ]
  %34 = call fastcc ptr @CCG_elem_offset_co(ptr noundef nonnull %4, ptr noundef %31, i32 noundef %33) #15
  call fastcc void @minmax_v3_v3v3(ptr noundef %34, ptr noundef %1, ptr noundef %2) #15
  %35 = add nuw nsw i32 %33, 1
  %36 = icmp eq i32 %35, %7
  br i1 %36, label %37, label %32, !llvm.loop !237

37:                                               ; preds = %32, %29
  call void @ccgEdgeIterator_next(ptr noundef %24) #14
  %38 = call i32 @ccgEdgeIterator_isStopped(ptr noundef %24) #14
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %29, label %40, !llvm.loop !238

40:                                               ; preds = %37, %23
  call void @ccgEdgeIterator_free(ptr noundef %24) #14
  %41 = call ptr @ccgSubSurf_getFaceIterator(ptr noundef %6) #14
  %42 = call i32 @ccgFaceIterator_isStopped(ptr noundef %41) #14
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %40
  %45 = icmp sgt i32 %8, 0
  br label %46

46:                                               ; preds = %44, %66
  %47 = call ptr @ccgFaceIterator_getCurrent(ptr noundef %41) #14
  %48 = call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %47) #14
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %46, %63
  %51 = phi i32 [ %64, %63 ], [ 0, %46 ]
  %52 = call ptr @ccgSubSurf_getFaceGridDataArray(ptr noundef %6, ptr noundef %47, i32 noundef %51) #14
  br i1 %45, label %53, label %63

53:                                               ; preds = %50, %60
  %54 = phi i32 [ %61, %60 ], [ 0, %50 ]
  br label %55

55:                                               ; preds = %53, %55
  %56 = phi i32 [ 0, %53 ], [ %58, %55 ]
  %57 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %4, ptr noundef %52, i32 noundef %56, i32 noundef %54) #15
  call fastcc void @minmax_v3_v3v3(ptr noundef %57, ptr noundef %1, ptr noundef %2) #15
  %58 = add nuw nsw i32 %56, 1
  %59 = icmp eq i32 %58, %8
  br i1 %59, label %60, label %55, !llvm.loop !239

60:                                               ; preds = %55
  %61 = add nuw nsw i32 %54, 1
  %62 = icmp eq i32 %61, %8
  br i1 %62, label %63, label %53, !llvm.loop !240

63:                                               ; preds = %60, %50
  %64 = add nuw nsw i32 %51, 1
  %65 = icmp eq i32 %64, %48
  br i1 %65, label %66, label %50, !llvm.loop !241

66:                                               ; preds = %63, %46
  call void @ccgFaceIterator_next(ptr noundef %41) #14
  %67 = call i32 @ccgFaceIterator_isStopped(ptr noundef %41) #14
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %46, label %69, !llvm.loop !242

69:                                               ; preds = %66, %40
  call void @ccgFaceIterator_free(ptr noundef %41) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ccgDM_getNumVerts(ptr nocapture noundef readonly %0) #0 !PGOFuncName !243 {
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = tail call i32 @ccgSubSurf_getNumFinalVerts(ptr noundef %3) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ccgDM_getNumEdges(ptr nocapture noundef readonly %0) #0 !PGOFuncName !244 {
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = tail call i32 @ccgSubSurf_getNumFinalEdges(ptr noundef %3) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ccgDM_getNumTessFaces(ptr nocapture noundef readonly %0) #0 !PGOFuncName !245 {
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = tail call i32 @ccgSubSurf_getNumFinalFaces(ptr noundef %3) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ccgDM_getNumLoops(ptr nocapture noundef readonly %0) #0 !PGOFuncName !246 {
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = tail call i32 @ccgSubSurf_getNumFinalFaces(ptr noundef %3) #14
  %5 = shl nsw i32 %4, 2
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_getFinalVert(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 !PGOFuncName !247 {
  %4 = alloca %struct.CCGKey, align 4
  %5 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #16
  call void @CCG_key_top_level(ptr noundef nonnull %4, ptr noundef %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  %7 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !178
  %9 = load i32, ptr %8, align 8, !tbaa !205
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %11, label %69

11:                                               ; preds = %3
  %12 = call i32 @ccgSubSurf_getNumFaces(ptr noundef %6) #14
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %69

14:                                               ; preds = %11
  %15 = call i32 @ccgSubSurf_getNumFaces(ptr noundef %6) #14
  %16 = add i32 %15, -1
  %17 = call i32 @ccgSubSurf_getGridSize(ptr noundef %6) #14
  %18 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %19 = call i32 @llvm.smax.i32(i32 %16, i32 0)
  %20 = zext nneg i32 %19 to i64
  %21 = load ptr, ptr %18, align 8, !tbaa !44
  br label %22

22:                                               ; preds = %25, %14
  %23 = phi i64 [ %26, %25 ], [ 0, %14 ]
  %24 = icmp eq i64 %23, %20
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = add nuw nsw i64 %23, 1
  %27 = getelementptr inbounds %struct.anon.0, ptr %21, i64 %26
  %28 = load i32, ptr %27, align 8, !tbaa !187
  %29 = icmp sgt i32 %28, %1
  br i1 %29, label %30, label %22, !llvm.loop !248

30:                                               ; preds = %25
  %31 = and i64 %23, 4294967295
  br label %32

32:                                               ; preds = %22, %30
  %33 = phi i64 [ %31, %30 ], [ %20, %22 ]
  %34 = getelementptr inbounds %struct.anon.0, ptr %21, i64 %33, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !45
  %36 = call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %35) #14
  %37 = add nsw i32 %17, -2
  %38 = mul nsw i32 %37, %37
  %39 = mul nsw i32 %36, %37
  %40 = add nsw i32 %39, 1
  %41 = mul nsw i32 %36, %38
  %42 = add nsw i32 %40, %41
  %43 = load ptr, ptr %18, align 8, !tbaa !44
  %44 = getelementptr inbounds %struct.anon.0, ptr %43, i64 %33
  %45 = load i32, ptr %44, align 8, !tbaa !187
  %46 = sub nsw i32 %1, %45
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %32
  %49 = call ptr @ccgSubSurf_getFaceCenterData(ptr noundef %35) #14
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef %49) #15
  br label %113

50:                                               ; preds = %32
  %51 = icmp sgt i32 %46, %39
  br i1 %51, label %58, label %52

52:                                               ; preds = %50
  %53 = add nsw i32 %46, -1
  %54 = sdiv i32 %53, %37
  %55 = srem i32 %53, %37
  %56 = add nuw nsw i32 %55, 1
  %57 = call ptr @ccgSubSurf_getFaceGridEdgeData(ptr noundef %6, ptr noundef %35, i32 noundef %54, i32 noundef %56) #14
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef %57) #15
  br label %113

58:                                               ; preds = %50
  %59 = icmp slt i32 %46, %42
  br i1 %59, label %60, label %117

60:                                               ; preds = %58
  %61 = sub nsw i32 %46, %40
  %62 = sdiv i32 %61, %38
  %63 = srem i32 %61, %38
  %64 = sdiv i32 %63, %37
  %65 = add nsw i32 %64, 1
  %66 = srem i32 %63, %37
  %67 = add nsw i32 %66, 1
  %68 = call ptr @ccgSubSurf_getFaceGridData(ptr noundef %6, ptr noundef %35, i32 noundef %62, i32 noundef %67, i32 noundef %65) #14
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef %68) #15
  br label %113

69:                                               ; preds = %11, %3
  %70 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !174
  %72 = load i32, ptr %71, align 8, !tbaa !216
  %73 = icmp sgt i32 %72, %1
  br i1 %73, label %74, label %105

74:                                               ; preds = %69
  %75 = call i32 @ccgSubSurf_getNumEdges(ptr noundef %6) #14
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr %70, align 8, !tbaa !174
  %79 = load i32, ptr %78, align 8, !tbaa !216
  br label %105

80:                                               ; preds = %74
  %81 = call i32 @ccgSubSurf_getNumEdges(ptr noundef %6) #14
  %82 = call i32 @llvm.smax.i32(i32 %81, i32 1)
  %83 = add nsw i32 %82, -1
  %84 = zext nneg i32 %83 to i64
  %85 = load ptr, ptr %7, align 8, !tbaa !178
  br label %86

86:                                               ; preds = %89, %80
  %87 = phi i64 [ %90, %89 ], [ 0, %80 ]
  %88 = icmp eq i64 %87, %84
  br i1 %88, label %96, label %89

89:                                               ; preds = %86
  %90 = add nuw nsw i64 %87, 1
  %91 = getelementptr inbounds %struct.anon.2, ptr %85, i64 %90
  %92 = load i32, ptr %91, align 8, !tbaa !205
  %93 = icmp sgt i32 %92, %1
  br i1 %93, label %94, label %86, !llvm.loop !249

94:                                               ; preds = %89
  %95 = and i64 %87, 4294967295
  br label %96

96:                                               ; preds = %86, %94
  %97 = phi i64 [ %95, %94 ], [ %84, %86 ]
  %98 = getelementptr inbounds %struct.anon.2, ptr %85, i64 %97
  %99 = getelementptr inbounds %struct.anon.2, ptr %85, i64 %97, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !179
  %101 = load i32, ptr %98, align 8, !tbaa !205
  %102 = add i32 %1, 1
  %103 = sub i32 %102, %101
  %104 = call ptr @ccgSubSurf_getEdgeData(ptr noundef %6, ptr noundef %100, i32 noundef %103) #14
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef %104) #15
  br label %113

105:                                              ; preds = %77, %69
  %106 = phi i32 [ %79, %77 ], [ %72, %69 ]
  %107 = phi ptr [ %78, %77 ], [ %71, %69 ]
  %108 = sub nsw i32 %1, %106
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.anon.1, ptr %107, i64 %109, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !175
  %112 = call ptr @ccgSubSurf_getVertData(ptr noundef %6, ptr noundef %111) #14
  call fastcc void @copy_v3_v3(ptr noundef nonnull %2, ptr noundef %112) #15
  br label %113

113:                                              ; preds = %105, %96, %52, %60, %48
  %114 = phi ptr [ %49, %48 ], [ %68, %60 ], [ %57, %52 ], [ %104, %96 ], [ %112, %105 ]
  %115 = getelementptr inbounds %struct.MVert, ptr %2, i64 0, i32 1
  %116 = call fastcc ptr @CCG_elem_no(ptr noundef nonnull %4, ptr noundef %114) #15
  call fastcc void @normal_float_to_short_v3(ptr noundef nonnull %115, ptr noundef %116) #15
  br label %117

117:                                              ; preds = %113, %58
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_getFinalEdge(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 !PGOFuncName !250 {
  %4 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i64 12, i1 false)
  %6 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !178
  %8 = getelementptr inbounds %struct.anon.2, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !206
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %11, label %66

11:                                               ; preds = %3
  %12 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %5) #14
  %13 = add i32 %12, -1
  %14 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %5) #14
  %15 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %5) #14
  %16 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %17 = tail call i32 @llvm.smax.i32(i32 %13, i32 0)
  %18 = zext nneg i32 %17 to i64
  %19 = load ptr, ptr %16, align 8, !tbaa !44
  br label %20

20:                                               ; preds = %23, %11
  %21 = phi i64 [ %24, %23 ], [ 0, %11 ]
  %22 = icmp eq i64 %21, %18
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = add nuw nsw i64 %21, 1
  %25 = getelementptr inbounds %struct.anon.0, ptr %19, i64 %24, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !188
  %27 = icmp sgt i32 %26, %1
  br i1 %27, label %28, label %20, !llvm.loop !251

28:                                               ; preds = %23
  %29 = and i64 %21, 4294967295
  br label %30

30:                                               ; preds = %20, %28
  %31 = phi i64 [ %29, %28 ], [ %18, %20 ]
  %32 = getelementptr inbounds %struct.anon.0, ptr %19, i64 %31, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !45
  %34 = add nsw i32 %14, -1
  %35 = add nsw i32 %14, -2
  %36 = shl i32 %34, 1
  %37 = mul i32 %36, %35
  %38 = getelementptr inbounds %struct.anon.0, ptr %19, i64 %31, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !188
  %40 = sub nsw i32 %1, %39
  %41 = add nsw i32 %37, %34
  %42 = sdiv i32 %40, %41
  %43 = srem i32 %40, %41
  %44 = icmp slt i32 %43, %34
  br i1 %44, label %45, label %50

45:                                               ; preds = %30
  %46 = tail call fastcc i32 @getFaceIndex(ptr noundef %5, ptr noundef %33, i32 noundef %42, i32 noundef %43, i32 noundef 0, i32 noundef %15, i32 noundef %14) #15
  store i32 %46, ptr %2, align 4, !tbaa !105
  %47 = add nsw i32 %43, 1
  %48 = tail call fastcc i32 @getFaceIndex(ptr noundef %5, ptr noundef %33, i32 noundef %42, i32 noundef %47, i32 noundef 0, i32 noundef %15, i32 noundef %14) #15
  %49 = getelementptr inbounds %struct.MEdge, ptr %2, i64 0, i32 1
  store i32 %48, ptr %49, align 4, !tbaa !106
  br label %100

50:                                               ; preds = %30
  %51 = sub nsw i32 %43, %34
  %52 = sdiv i32 %51, 2
  %53 = sdiv i32 %52, %34
  %54 = add nsw i32 %53, 1
  %55 = srem i32 %52, %34
  %56 = and i32 %51, 1
  %57 = icmp eq i32 %56, 0
  %58 = add nsw i32 %55, 1
  %59 = getelementptr inbounds %struct.MEdge, ptr %2, i64 0, i32 1
  br i1 %57, label %60, label %63

60:                                               ; preds = %50
  %61 = tail call fastcc i32 @getFaceIndex(ptr noundef %5, ptr noundef %33, i32 noundef %42, i32 noundef %54, i32 noundef %55, i32 noundef %15, i32 noundef %14) #15
  store i32 %61, ptr %2, align 4, !tbaa !105
  %62 = tail call fastcc i32 @getFaceIndex(ptr noundef %5, ptr noundef %33, i32 noundef %42, i32 noundef %54, i32 noundef %58, i32 noundef %15, i32 noundef %14) #15
  store i32 %62, ptr %59, align 4, !tbaa !106
  br label %100

63:                                               ; preds = %50
  %64 = tail call fastcc i32 @getFaceIndex(ptr noundef %5, ptr noundef %33, i32 noundef %42, i32 noundef %55, i32 noundef %54, i32 noundef %15, i32 noundef %14) #15
  store i32 %64, ptr %2, align 4, !tbaa !105
  %65 = tail call fastcc i32 @getFaceIndex(ptr noundef %5, ptr noundef %33, i32 noundef %42, i32 noundef %58, i32 noundef %54, i32 noundef %15, i32 noundef %14) #15
  store i32 %65, ptr %59, align 4, !tbaa !106
  br label %100

66:                                               ; preds = %3
  %67 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %5) #14
  %68 = load ptr, ptr %6, align 8, !tbaa !178
  %69 = getelementptr inbounds %struct.anon.2, ptr %68, i64 0, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !206
  %71 = sub nsw i32 %1, %70
  %72 = add nsw i32 %67, -1
  %73 = sdiv i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.anon.2, ptr %68, i64 %74, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !179
  %77 = tail call i32 @ccgSubSurf_getEdgeNumFaces(ptr noundef %76) #14
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i16 128, i16 0
  %80 = load ptr, ptr %6, align 8, !tbaa !178
  %81 = getelementptr inbounds %struct.anon.2, ptr %80, i64 %74, i32 1
  %82 = load i32, ptr %81, align 4, !tbaa !206
  %83 = sub nsw i32 %1, %82
  %84 = tail call fastcc i32 @getEdgeIndex(ptr noundef %5, ptr noundef %76, i32 noundef %83, i32 noundef %67) #15
  store i32 %84, ptr %2, align 4, !tbaa !105
  %85 = add nsw i32 %83, 1
  %86 = tail call fastcc i32 @getEdgeIndex(ptr noundef %5, ptr noundef %76, i32 noundef %85, i32 noundef %67) #15
  %87 = getelementptr inbounds %struct.MEdge, ptr %2, i64 0, i32 1
  store i32 %86, ptr %87, align 4, !tbaa !106
  %88 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 8
  %89 = load ptr, ptr %88, align 8, !tbaa !184
  %90 = icmp eq ptr %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %66
  %92 = getelementptr inbounds i16, ptr %89, i64 %74
  %93 = load i16, ptr %92, align 2, !tbaa !208
  %94 = and i16 %93, 516
  %95 = or disjoint i16 %94, 34
  br label %96

96:                                               ; preds = %66, %91
  %97 = phi i16 [ %95, %91 ], [ 34, %66 ]
  %98 = or i16 %97, %79
  %99 = getelementptr inbounds %struct.MEdge, ptr %2, i64 0, i32 4
  store i16 %98, ptr %99, align 2, !tbaa !207
  br label %100

100:                                              ; preds = %45, %63, %60, %96
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_getFinalFace(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 !PGOFuncName !252 {
  %4 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %5) #14
  %7 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %5) #14
  %8 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !185
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !220
  %12 = icmp sgt i32 %11, %1
  br i1 %12, label %13, label %53

13:                                               ; preds = %3
  %14 = add nsw i32 %6, -1
  %15 = mul nsw i32 %14, %14
  %16 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !183
  %18 = sext i32 %1 to i64
  %19 = getelementptr inbounds i32, ptr %17, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !54
  %21 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  %23 = sext i32 %20 to i64
  %24 = getelementptr inbounds %struct.anon.0, ptr %22, i64 %23, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !45
  %26 = getelementptr inbounds %struct.anon.0, ptr %22, i64 %23, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !189
  %28 = sub nsw i32 %1, %27
  %29 = sdiv i32 %28, %15
  %30 = srem i32 %28, %15
  %31 = sdiv i32 %30, %14
  %32 = srem i32 %30, %14
  %33 = tail call fastcc i32 @getFaceIndex(ptr noundef %5, ptr noundef %25, i32 noundef %29, i32 noundef %32, i32 noundef %31, i32 noundef %7, i32 noundef %6) #15
  store i32 %33, ptr %2, align 4, !tbaa !253
  %34 = add nsw i32 %31, 1
  %35 = tail call fastcc i32 @getFaceIndex(ptr noundef %5, ptr noundef %25, i32 noundef %29, i32 noundef %32, i32 noundef %34, i32 noundef %7, i32 noundef %6) #15
  %36 = getelementptr inbounds %struct.MFace, ptr %2, i64 0, i32 1
  store i32 %35, ptr %36, align 4, !tbaa !255
  %37 = add nsw i32 %32, 1
  %38 = tail call fastcc i32 @getFaceIndex(ptr noundef %5, ptr noundef %25, i32 noundef %29, i32 noundef %37, i32 noundef %34, i32 noundef %7, i32 noundef %6) #15
  %39 = getelementptr inbounds %struct.MFace, ptr %2, i64 0, i32 2
  store i32 %38, ptr %39, align 4, !tbaa !256
  %40 = tail call fastcc i32 @getFaceIndex(ptr noundef %5, ptr noundef %25, i32 noundef %29, i32 noundef %37, i32 noundef %31, i32 noundef %7, i32 noundef %6) #15
  %41 = getelementptr inbounds %struct.MFace, ptr %2, i64 0, i32 3
  store i32 %40, ptr %41, align 4, !tbaa !257
  %42 = icmp eq ptr %9, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %13
  %44 = getelementptr inbounds %struct.DMFlagMat, ptr %9, i64 %23
  %45 = getelementptr inbounds %struct.DMFlagMat, ptr %9, i64 %23, i32 1
  %46 = load i8, ptr %45, align 2, !tbaa !258
  %47 = load i16, ptr %44, align 2, !tbaa !192
  %48 = getelementptr inbounds %struct.MFace, ptr %2, i64 0, i32 4
  store i16 %47, ptr %48, align 4, !tbaa !259
  br label %49

49:                                               ; preds = %13, %43
  %50 = phi i8 [ %46, %43 ], [ 1, %13 ]
  %51 = getelementptr inbounds %struct.MFace, ptr %2, i64 0, i32 6
  store i8 %50, ptr %51, align 1
  %52 = getelementptr inbounds %struct.MFace, ptr %2, i64 0, i32 5
  store i8 0, ptr %52, align 2, !tbaa !260
  br label %53

53:                                               ; preds = %3, %49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_getFinalVertCo(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 !PGOFuncName !261 {
  %4 = alloca %struct.MVert, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #16
  call void @ccgDM_getFinalVert(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #15
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_getFinalVertNo(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 !PGOFuncName !262 {
  %4 = alloca %struct.MVert, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #16
  call void @ccgDM_getFinalVert(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #15
  %5 = getelementptr inbounds %struct.MVert, ptr %4, i64 0, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef %2, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_copyFinalVertArray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 !PGOFuncName !263 {
  %3 = alloca %struct.CCGKey, align 4
  %4 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #16
  %6 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %5) #14
  %7 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %5) #14
  call void @CCG_key_top_level(ptr noundef nonnull %3, ptr noundef %5) #14
  %8 = call i32 @ccgSubSurf_getNumFaces(ptr noundef %5) #14
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %70

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %12 = add i32 %6, -1
  %13 = icmp sgt i32 %6, 2
  %14 = zext nneg i32 %8 to i64
  br label %15

15:                                               ; preds = %10, %66
  %16 = phi i64 [ 0, %10 ], [ %68, %66 ]
  %17 = phi i32 [ 0, %10 ], [ %67, %66 ]
  %18 = load ptr, ptr %11, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.anon.0, ptr %18, i64 %16, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  %21 = call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %20) #14
  %22 = call ptr @ccgSubSurf_getFaceCenterData(ptr noundef %20) #14
  %23 = add i32 %17, 1
  %24 = zext i32 %17 to i64
  %25 = getelementptr inbounds %struct.MVert, ptr %1, i64 %24
  call fastcc void @ccgDM_to_MVert(ptr noundef %25, ptr noundef nonnull %3, ptr noundef %22) #15
  %26 = icmp sgt i32 %21, 0
  br i1 %26, label %28, label %66

27:                                               ; preds = %40
  br i1 %26, label %44, label %66

28:                                               ; preds = %15, %40
  %29 = phi i32 [ %41, %40 ], [ %23, %15 ]
  %30 = phi i32 [ %42, %40 ], [ 0, %15 ]
  br i1 %13, label %31, label %40

31:                                               ; preds = %28, %31
  %32 = phi i32 [ %35, %31 ], [ %29, %28 ]
  %33 = phi i32 [ %38, %31 ], [ 1, %28 ]
  %34 = call ptr @ccgSubSurf_getFaceGridEdgeData(ptr noundef %5, ptr noundef %20, i32 noundef %30, i32 noundef %33) #14
  %35 = add i32 %32, 1
  %36 = zext i32 %32 to i64
  %37 = getelementptr inbounds %struct.MVert, ptr %1, i64 %36
  call fastcc void @ccgDM_to_MVert(ptr noundef %37, ptr noundef nonnull %3, ptr noundef %34) #15
  %38 = add nuw nsw i32 %33, 1
  %39 = icmp eq i32 %38, %12
  br i1 %39, label %40, label %31, !llvm.loop !264

40:                                               ; preds = %31, %28
  %41 = phi i32 [ %29, %28 ], [ %35, %31 ]
  %42 = add nuw nsw i32 %30, 1
  %43 = icmp eq i32 %42, %21
  br i1 %43, label %27, label %28, !llvm.loop !265

44:                                               ; preds = %27, %62
  %45 = phi i32 [ %63, %62 ], [ %41, %27 ]
  %46 = phi i32 [ %64, %62 ], [ 0, %27 ]
  br i1 %13, label %47, label %62

47:                                               ; preds = %44, %59
  %48 = phi i32 [ %54, %59 ], [ %45, %44 ]
  %49 = phi i32 [ %60, %59 ], [ 1, %44 ]
  br label %50

50:                                               ; preds = %47, %50
  %51 = phi i32 [ %48, %47 ], [ %54, %50 ]
  %52 = phi i32 [ 1, %47 ], [ %57, %50 ]
  %53 = call ptr @ccgSubSurf_getFaceGridData(ptr noundef %5, ptr noundef %20, i32 noundef %46, i32 noundef %52, i32 noundef %49) #14
  %54 = add i32 %51, 1
  %55 = zext i32 %51 to i64
  %56 = getelementptr inbounds %struct.MVert, ptr %1, i64 %55
  call fastcc void @ccgDM_to_MVert(ptr noundef %56, ptr noundef nonnull %3, ptr noundef %53) #15
  %57 = add nuw nsw i32 %52, 1
  %58 = icmp eq i32 %57, %12
  br i1 %58, label %59, label %50, !llvm.loop !266

59:                                               ; preds = %50
  %60 = add nuw nsw i32 %49, 1
  %61 = icmp eq i32 %60, %12
  br i1 %61, label %62, label %47, !llvm.loop !267

62:                                               ; preds = %59, %44
  %63 = phi i32 [ %45, %44 ], [ %54, %59 ]
  %64 = add nuw nsw i32 %46, 1
  %65 = icmp eq i32 %64, %21
  br i1 %65, label %66, label %44, !llvm.loop !268

66:                                               ; preds = %62, %15, %27
  %67 = phi i32 [ %41, %27 ], [ %23, %15 ], [ %63, %62 ]
  %68 = add nuw nsw i64 %16, 1
  %69 = icmp eq i64 %68, %14
  br i1 %69, label %70, label %15, !llvm.loop !269

70:                                               ; preds = %66, %2
  %71 = phi i32 [ 0, %2 ], [ %67, %66 ]
  %72 = call i32 @ccgSubSurf_getNumEdges(ptr noundef %5) #14
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %98

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 6
  %76 = icmp sgt i32 %7, 2
  %77 = zext nneg i32 %72 to i64
  %78 = add nsw i32 %7, -2
  br label %79

79:                                               ; preds = %74, %94
  %80 = phi i64 [ 0, %74 ], [ %96, %94 ]
  %81 = phi i32 [ %71, %74 ], [ %95, %94 ]
  %82 = load ptr, ptr %75, align 8, !tbaa !178
  %83 = getelementptr inbounds %struct.anon.2, ptr %82, i64 %80, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !179
  br i1 %76, label %85, label %94

85:                                               ; preds = %79, %85
  %86 = phi i32 [ %92, %85 ], [ 1, %79 ]
  %87 = phi i32 [ %89, %85 ], [ %81, %79 ]
  %88 = call ptr @ccgSubSurf_getEdgeData(ptr noundef %5, ptr noundef %84, i32 noundef %86) #14
  %89 = add i32 %87, 1
  %90 = zext i32 %87 to i64
  %91 = getelementptr inbounds %struct.MVert, ptr %1, i64 %90
  call fastcc void @ccgDM_to_MVert(ptr noundef %91, ptr noundef nonnull %3, ptr noundef %88) #15
  %92 = add nuw nsw i32 %86, 1
  %93 = icmp eq i32 %86, %78
  br i1 %93, label %94, label %85, !llvm.loop !270

94:                                               ; preds = %85, %79
  %95 = phi i32 [ %81, %79 ], [ %89, %85 ]
  %96 = add nuw nsw i64 %80, 1
  %97 = icmp eq i64 %96, %77
  br i1 %97, label %98, label %79, !llvm.loop !271

98:                                               ; preds = %94, %70
  %99 = phi i32 [ %71, %70 ], [ %95, %94 ]
  %100 = call i32 @ccgSubSurf_getNumVerts(ptr noundef %5) #14
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 5
  %104 = zext nneg i32 %100 to i64
  br label %105

105:                                              ; preds = %102, %105
  %106 = phi i64 [ 0, %102 ], [ %115, %105 ]
  %107 = phi i32 [ %99, %102 ], [ %112, %105 ]
  %108 = load ptr, ptr %103, align 8, !tbaa !174
  %109 = getelementptr inbounds %struct.anon.1, ptr %108, i64 %106, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !175
  %111 = call ptr @ccgSubSurf_getVertData(ptr noundef %5, ptr noundef %110) #14
  %112 = add i32 %107, 1
  %113 = zext i32 %107 to i64
  %114 = getelementptr inbounds %struct.MVert, ptr %1, i64 %113
  call fastcc void @ccgDM_to_MVert(ptr noundef %114, ptr noundef nonnull %3, ptr noundef %111) #15
  %115 = add nuw nsw i64 %106, 1
  %116 = icmp eq i64 %115, %104
  br i1 %116, label %117, label %105, !llvm.loop !272

117:                                              ; preds = %105, %98
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_copyFinalEdgeArray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 !PGOFuncName !273 {
  %3 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %4) #14
  %6 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %4) #14
  %7 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !184
  %9 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !172
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i16 0, i16 34
  %13 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %4) #14
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %73

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %17 = add i32 %5, -1
  %18 = icmp sgt i32 %5, 1
  %19 = icmp sgt i32 %5, 2
  %20 = zext nneg i32 %13 to i64
  br label %21

21:                                               ; preds = %15, %69
  %22 = phi i64 [ 0, %15 ], [ %71, %69 ]
  %23 = phi i32 [ 0, %15 ], [ %70, %69 ]
  %24 = load ptr, ptr %16, align 8, !tbaa !44
  %25 = getelementptr inbounds %struct.anon.0, ptr %24, i64 %22, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !45
  %27 = tail call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %26) #14
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %69

29:                                               ; preds = %21, %65
  %30 = phi i32 [ %66, %65 ], [ %23, %21 ]
  %31 = phi i32 [ %67, %65 ], [ 0, %21 ]
  br i1 %18, label %33, label %65

32:                                               ; preds = %33
  br i1 %19, label %43, label %65

33:                                               ; preds = %29, %33
  %34 = phi i32 [ %36, %33 ], [ %30, %29 ]
  %35 = phi i32 [ %40, %33 ], [ 0, %29 ]
  %36 = add i32 %34, 1
  %37 = zext i32 %34 to i64
  %38 = getelementptr inbounds %struct.MEdge, ptr %1, i64 %37
  %39 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %26, i32 noundef %31, i32 noundef %35, i32 noundef 0, i32 noundef %6, i32 noundef %5) #15
  %40 = add nuw nsw i32 %35, 1
  %41 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %26, i32 noundef %31, i32 noundef %40, i32 noundef 0, i32 noundef %6, i32 noundef %5) #15
  tail call fastcc void @ccgDM_to_MEdge(ptr noundef %38, i32 noundef %39, i32 noundef %41, i16 noundef signext %12) #15
  %42 = icmp eq i32 %40, %17
  br i1 %42, label %32, label %33, !llvm.loop !274

43:                                               ; preds = %32, %61
  %44 = phi i32 [ %62, %61 ], [ %36, %32 ]
  %45 = phi i32 [ %63, %61 ], [ 1, %32 ]
  br i1 %18, label %46, label %61

46:                                               ; preds = %43, %46
  %47 = phi i32 [ %55, %46 ], [ %44, %43 ]
  %48 = phi i32 [ %53, %46 ], [ 0, %43 ]
  %49 = add i32 %47, 1
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds %struct.MEdge, ptr %1, i64 %50
  %52 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %26, i32 noundef %31, i32 noundef %45, i32 noundef %48, i32 noundef %6, i32 noundef %5) #15
  %53 = add nuw nsw i32 %48, 1
  %54 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %26, i32 noundef %31, i32 noundef %45, i32 noundef %53, i32 noundef %6, i32 noundef %5) #15
  tail call fastcc void @ccgDM_to_MEdge(ptr noundef %51, i32 noundef %52, i32 noundef %54, i16 noundef signext %12) #15
  %55 = add i32 %47, 2
  %56 = zext i32 %49 to i64
  %57 = getelementptr inbounds %struct.MEdge, ptr %1, i64 %56
  %58 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %26, i32 noundef %31, i32 noundef %48, i32 noundef %45, i32 noundef %6, i32 noundef %5) #15
  %59 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %26, i32 noundef %31, i32 noundef %53, i32 noundef %45, i32 noundef %6, i32 noundef %5) #15
  tail call fastcc void @ccgDM_to_MEdge(ptr noundef %57, i32 noundef %58, i32 noundef %59, i16 noundef signext %12) #15
  %60 = icmp eq i32 %53, %17
  br i1 %60, label %61, label %46, !llvm.loop !275

61:                                               ; preds = %46, %43
  %62 = phi i32 [ %44, %43 ], [ %55, %46 ]
  %63 = add nuw nsw i32 %45, 1
  %64 = icmp eq i32 %63, %17
  br i1 %64, label %65, label %43, !llvm.loop !276

65:                                               ; preds = %61, %29, %32
  %66 = phi i32 [ %36, %32 ], [ %30, %29 ], [ %62, %61 ]
  %67 = add nuw nsw i32 %31, 1
  %68 = icmp eq i32 %67, %27
  br i1 %68, label %69, label %29, !llvm.loop !277

69:                                               ; preds = %65, %21
  %70 = phi i32 [ %23, %21 ], [ %66, %65 ]
  %71 = add nuw nsw i64 %22, 1
  %72 = icmp eq i64 %71, %20
  br i1 %72, label %73, label %21, !llvm.loop !278

73:                                               ; preds = %69, %2
  %74 = phi i32 [ 0, %2 ], [ %70, %69 ]
  %75 = tail call i32 @ccgSubSurf_getNumEdges(ptr noundef %4) #14
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %121

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 6
  %79 = icmp eq ptr %8, null
  %80 = icmp sgt i32 %6, 1
  %81 = zext nneg i32 %75 to i64
  %82 = add nsw i32 %6, -2
  br label %83

83:                                               ; preds = %77, %117
  %84 = phi i64 [ 0, %77 ], [ %119, %117 ]
  %85 = phi i32 [ %74, %77 ], [ %118, %117 ]
  %86 = load ptr, ptr %78, align 8, !tbaa !178
  %87 = getelementptr inbounds %struct.anon.2, ptr %86, i64 %84, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !179
  %89 = tail call ptr @ccgSubSurf_getEdgeEdgeHandle(ptr noundef %88) #14
  %90 = tail call i32 @ccgSubSurf_getEdgeNumFaces(ptr noundef %88) #14
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, i16 128, i16 0
  br i1 %79, label %103, label %93

93:                                               ; preds = %83
  %94 = ptrtoint ptr %89 to i64
  %95 = and i64 %94, 4294967295
  %96 = icmp eq i64 %95, 4294967295
  br i1 %96, label %105, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds i16, ptr %8, i64 %84
  %99 = load i16, ptr %98, align 2, !tbaa !208
  %100 = and i16 %99, 516
  %101 = or disjoint i16 %92, %100
  %102 = or disjoint i16 %101, 34
  br label %105

103:                                              ; preds = %83
  %104 = or disjoint i16 %92, 34
  br label %105

105:                                              ; preds = %93, %97, %103
  %106 = phi i16 [ %102, %97 ], [ %92, %93 ], [ %104, %103 ]
  br i1 %80, label %107, label %117

107:                                              ; preds = %105, %107
  %108 = phi i32 [ %114, %107 ], [ 0, %105 ]
  %109 = phi i32 [ %110, %107 ], [ %85, %105 ]
  %110 = add i32 %109, 1
  %111 = zext i32 %109 to i64
  %112 = getelementptr inbounds %struct.MEdge, ptr %1, i64 %111
  %113 = tail call fastcc i32 @getEdgeIndex(ptr noundef %4, ptr noundef %88, i32 noundef %108, i32 noundef %6) #15
  %114 = add nuw nsw i32 %108, 1
  %115 = tail call fastcc i32 @getEdgeIndex(ptr noundef %4, ptr noundef %88, i32 noundef %114, i32 noundef %6) #15
  tail call fastcc void @ccgDM_to_MEdge(ptr noundef %112, i32 noundef %113, i32 noundef %115, i16 noundef signext %106) #15
  %116 = icmp eq i32 %108, %82
  br i1 %116, label %117, label %107, !llvm.loop !279

117:                                              ; preds = %107, %105
  %118 = phi i32 [ %85, %105 ], [ %110, %107 ]
  %119 = add nuw nsw i64 %84, 1
  %120 = icmp eq i64 %119, %81
  br i1 %120, label %121, label %83, !llvm.loop !280

121:                                              ; preds = %117, %73
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_copyFinalFaceArray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 !PGOFuncName !281 {
  %3 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %4) #14
  %6 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %4) #14
  %7 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !185
  %9 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %4) #14
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %69

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %13 = icmp eq ptr %8, null
  %14 = add i32 %5, -1
  %15 = icmp sgt i32 %5, 1
  %16 = zext nneg i32 %9 to i64
  br label %17

17:                                               ; preds = %11, %65
  %18 = phi i64 [ 0, %11 ], [ %67, %65 ]
  %19 = phi i32 [ 0, %11 ], [ %66, %65 ]
  %20 = load ptr, ptr %12, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.anon.0, ptr %20, i64 %18, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = tail call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %22) #14
  br i1 %13, label %29, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.DMFlagMat, ptr %8, i64 %18, i32 1
  %26 = load i8, ptr %25, align 2, !tbaa !258
  %27 = getelementptr inbounds %struct.DMFlagMat, ptr %8, i64 %18
  %28 = load i16, ptr %27, align 2, !tbaa !192
  br label %29

29:                                               ; preds = %17, %24
  %30 = phi i8 [ %26, %24 ], [ 1, %17 ]
  %31 = phi i16 [ %28, %24 ], [ 0, %17 ]
  %32 = icmp sgt i32 %23, 0
  br i1 %32, label %33, label %65

33:                                               ; preds = %29, %61
  %34 = phi i32 [ %62, %61 ], [ %19, %29 ]
  %35 = phi i32 [ %63, %61 ], [ 0, %29 ]
  br i1 %15, label %36, label %61

36:                                               ; preds = %33, %58
  %37 = phi i32 [ %59, %58 ], [ %34, %33 ]
  %38 = phi i32 [ %39, %58 ], [ 0, %33 ]
  %39 = add nuw nsw i32 %38, 1
  %40 = sext i32 %37 to i64
  br label %41

41:                                               ; preds = %36, %41
  %42 = phi i64 [ %40, %36 ], [ %56, %41 ]
  %43 = phi i32 [ 0, %36 ], [ %48, %41 ]
  %44 = getelementptr inbounds %struct.MFace, ptr %1, i64 %42
  %45 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %22, i32 noundef %35, i32 noundef %43, i32 noundef %38, i32 noundef %6, i32 noundef %5) #15
  store i32 %45, ptr %44, align 4, !tbaa !253
  %46 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %22, i32 noundef %35, i32 noundef %43, i32 noundef %39, i32 noundef %6, i32 noundef %5) #15
  %47 = getelementptr inbounds %struct.MFace, ptr %1, i64 %42, i32 1
  store i32 %46, ptr %47, align 4, !tbaa !255
  %48 = add nuw nsw i32 %43, 1
  %49 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %22, i32 noundef %35, i32 noundef %48, i32 noundef %39, i32 noundef %6, i32 noundef %5) #15
  %50 = getelementptr inbounds %struct.MFace, ptr %1, i64 %42, i32 2
  store i32 %49, ptr %50, align 4, !tbaa !256
  %51 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %22, i32 noundef %35, i32 noundef %48, i32 noundef %38, i32 noundef %6, i32 noundef %5) #15
  %52 = getelementptr inbounds %struct.MFace, ptr %1, i64 %42, i32 3
  store i32 %51, ptr %52, align 4, !tbaa !257
  %53 = getelementptr inbounds %struct.MFace, ptr %1, i64 %42, i32 4
  store i16 %31, ptr %53, align 4, !tbaa !259
  %54 = getelementptr inbounds %struct.MFace, ptr %1, i64 %42, i32 6
  store i8 %30, ptr %54, align 1, !tbaa !282
  %55 = getelementptr inbounds %struct.MFace, ptr %1, i64 %42, i32 5
  store i8 0, ptr %55, align 2, !tbaa !260
  %56 = add nsw i64 %42, 1
  %57 = icmp eq i32 %48, %14
  br i1 %57, label %58, label %41, !llvm.loop !283

58:                                               ; preds = %41
  %59 = trunc i64 %56 to i32
  %60 = icmp eq i32 %39, %14
  br i1 %60, label %61, label %36, !llvm.loop !284

61:                                               ; preds = %58, %33
  %62 = phi i32 [ %34, %33 ], [ %59, %58 ]
  %63 = add nuw nsw i32 %35, 1
  %64 = icmp eq i32 %63, %23
  br i1 %64, label %65, label %33, !llvm.loop !285

65:                                               ; preds = %61, %29
  %66 = phi i32 [ %19, %29 ], [ %62, %61 ]
  %67 = add nuw nsw i64 %18, 1
  %68 = icmp eq i64 %67, %16
  br i1 %68, label %69, label %17, !llvm.loop !286

69:                                               ; preds = %65, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_copyFinalLoopArray(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 !PGOFuncName !287 {
  %3 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %4) #14
  %6 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %4) #14
  %7 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !288
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull @loops_cache_rwlock, i32 noundef 2) #14
  %11 = load ptr, ptr %7, align 8, !tbaa !288
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !219
  %16 = tail call ptr @BLI_edgehash_new_ex(ptr noundef nonnull @__func__.ccgDM_copyFinalLoopArray, i32 noundef %15) #14
  store ptr %16, ptr %7, align 8, !tbaa !288
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 32
  %18 = load ptr, ptr %17, align 8, !tbaa !289
  %19 = tail call ptr %18(ptr noundef nonnull %0) #14
  %20 = load i32, ptr %14, align 4, !tbaa !219
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %13, %22
  %23 = phi i64 [ %30, %22 ], [ 0, %13 ]
  %24 = load ptr, ptr %7, align 8, !tbaa !288
  %25 = getelementptr inbounds %struct.MEdge, ptr %19, i64 %23
  %26 = load i32, ptr %25, align 4, !tbaa !105
  %27 = getelementptr inbounds %struct.MEdge, ptr %19, i64 %23, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !106
  %29 = inttoptr i64 %23 to ptr
  tail call void @BLI_edgehash_insert(ptr noundef %24, i32 noundef %26, i32 noundef %28, ptr noundef %29) #14
  %30 = add nuw nsw i64 %23, 1
  %31 = load i32, ptr %14, align 4, !tbaa !219
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %22, label %34, !llvm.loop !290

34:                                               ; preds = %22, %13, %10
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull @loops_cache_rwlock) #14
  br label %35

35:                                               ; preds = %34, %2
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull @loops_cache_rwlock, i32 noundef 1) #14
  %36 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %4) #14
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %101

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %40 = add i32 %5, -1
  %41 = icmp sgt i32 %5, 1
  %42 = zext nneg i32 %36 to i64
  br label %43

43:                                               ; preds = %38, %97
  %44 = phi i64 [ 0, %38 ], [ %99, %97 ]
  %45 = phi ptr [ %1, %38 ], [ %98, %97 ]
  %46 = load ptr, ptr %39, align 8, !tbaa !44
  %47 = getelementptr inbounds %struct.anon.0, ptr %46, i64 %44, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !45
  %49 = tail call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %48) #14
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %97

51:                                               ; preds = %43, %93
  %52 = phi ptr [ %94, %93 ], [ %45, %43 ]
  %53 = phi i32 [ %95, %93 ], [ 0, %43 ]
  br i1 %41, label %54, label %93

54:                                               ; preds = %51, %91
  %55 = phi ptr [ %89, %91 ], [ %52, %51 ]
  %56 = phi i32 [ %57, %91 ], [ 0, %51 ]
  %57 = add nuw nsw i32 %56, 1
  br label %58

58:                                               ; preds = %54, %58
  %59 = phi ptr [ %55, %54 ], [ %89, %58 ]
  %60 = phi i32 [ 0, %54 ], [ %63, %58 ]
  %61 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %48, i32 noundef %53, i32 noundef %60, i32 noundef %56, i32 noundef %6, i32 noundef %5) #15
  %62 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %48, i32 noundef %53, i32 noundef %60, i32 noundef %57, i32 noundef %6, i32 noundef %5) #15
  %63 = add nuw nsw i32 %60, 1
  %64 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %48, i32 noundef %53, i32 noundef %63, i32 noundef %57, i32 noundef %6, i32 noundef %5) #15
  %65 = tail call fastcc i32 @getFaceIndex(ptr noundef %4, ptr noundef %48, i32 noundef %53, i32 noundef %63, i32 noundef %56, i32 noundef %6, i32 noundef %5) #15
  store i32 %61, ptr %59, align 4, !tbaa !110
  %66 = load ptr, ptr %7, align 8, !tbaa !288
  %67 = tail call ptr @BLI_edgehash_lookup(ptr noundef %66, i32 noundef %61, i32 noundef %62) #14
  %68 = ptrtoint ptr %67 to i64
  %69 = trunc i64 %68 to i32
  %70 = getelementptr inbounds %struct.MLoop, ptr %59, i64 0, i32 1
  store i32 %69, ptr %70, align 4, !tbaa !291
  %71 = getelementptr inbounds %struct.MLoop, ptr %59, i64 1
  store i32 %62, ptr %71, align 4, !tbaa !110
  %72 = load ptr, ptr %7, align 8, !tbaa !288
  %73 = tail call ptr @BLI_edgehash_lookup(ptr noundef %72, i32 noundef %62, i32 noundef %64) #14
  %74 = ptrtoint ptr %73 to i64
  %75 = trunc i64 %74 to i32
  %76 = getelementptr inbounds %struct.MLoop, ptr %59, i64 1, i32 1
  store i32 %75, ptr %76, align 4, !tbaa !291
  %77 = getelementptr inbounds %struct.MLoop, ptr %59, i64 2
  store i32 %64, ptr %77, align 4, !tbaa !110
  %78 = load ptr, ptr %7, align 8, !tbaa !288
  %79 = tail call ptr @BLI_edgehash_lookup(ptr noundef %78, i32 noundef %64, i32 noundef %65) #14
  %80 = ptrtoint ptr %79 to i64
  %81 = trunc i64 %80 to i32
  %82 = getelementptr inbounds %struct.MLoop, ptr %59, i64 2, i32 1
  store i32 %81, ptr %82, align 4, !tbaa !291
  %83 = getelementptr inbounds %struct.MLoop, ptr %59, i64 3
  store i32 %65, ptr %83, align 4, !tbaa !110
  %84 = load ptr, ptr %7, align 8, !tbaa !288
  %85 = tail call ptr @BLI_edgehash_lookup(ptr noundef %84, i32 noundef %65, i32 noundef %61) #14
  %86 = ptrtoint ptr %85 to i64
  %87 = trunc i64 %86 to i32
  %88 = getelementptr inbounds %struct.MLoop, ptr %59, i64 3, i32 1
  store i32 %87, ptr %88, align 4, !tbaa !291
  %89 = getelementptr inbounds %struct.MLoop, ptr %59, i64 4
  %90 = icmp eq i32 %63, %40
  br i1 %90, label %91, label %58, !llvm.loop !292

91:                                               ; preds = %58
  %92 = icmp eq i32 %57, %40
  br i1 %92, label %93, label %54, !llvm.loop !293

93:                                               ; preds = %91, %51
  %94 = phi ptr [ %52, %51 ], [ %89, %91 ]
  %95 = add nuw nsw i32 %53, 1
  %96 = icmp eq i32 %95, %49
  br i1 %96, label %97, label %51, !llvm.loop !294

97:                                               ; preds = %93, %43
  %98 = phi ptr [ %45, %43 ], [ %94, %93 ]
  %99 = add nuw nsw i64 %44, 1
  %100 = icmp eq i64 %99, %42
  br i1 %100, label %101, label %43, !llvm.loop !295

101:                                              ; preds = %97, %35
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull @loops_cache_rwlock) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_copyFinalPolyArray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 !PGOFuncName !296 {
  %3 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %4) #14
  %6 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !185
  %8 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %4) #14
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %68

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %12 = icmp eq ptr %7, null
  %13 = add i32 %5, -1
  %14 = icmp sgt i32 %5, 1
  %15 = zext nneg i32 %8 to i64
  br label %16

16:                                               ; preds = %10, %63
  %17 = phi i64 [ 0, %10 ], [ %66, %63 ]
  %18 = phi i32 [ 0, %10 ], [ %65, %63 ]
  %19 = phi i32 [ 0, %10 ], [ %64, %63 ]
  %20 = load ptr, ptr %11, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.anon.0, ptr %20, i64 %17, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = tail call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %22) #14
  br i1 %12, label %29, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.DMFlagMat, ptr %7, i64 %17, i32 1
  %26 = load i8, ptr %25, align 2, !tbaa !258
  %27 = getelementptr inbounds %struct.DMFlagMat, ptr %7, i64 %17
  %28 = load i16, ptr %27, align 2, !tbaa !192
  br label %29

29:                                               ; preds = %16, %24
  %30 = phi i8 [ %26, %24 ], [ 1, %16 ]
  %31 = phi i16 [ %28, %24 ], [ 0, %16 ]
  %32 = icmp sgt i32 %23, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %29, %58
  %34 = phi i32 [ %60, %58 ], [ %18, %29 ]
  %35 = phi i32 [ %59, %58 ], [ %19, %29 ]
  %36 = phi i32 [ %61, %58 ], [ 0, %29 ]
  br i1 %14, label %37, label %58

37:                                               ; preds = %33, %54
  %38 = phi i32 [ %55, %54 ], [ %34, %33 ]
  %39 = phi i32 [ %50, %54 ], [ %35, %33 ]
  %40 = phi i32 [ %56, %54 ], [ 0, %33 ]
  %41 = sext i32 %38 to i64
  br label %42

42:                                               ; preds = %37, %42
  %43 = phi i64 [ %41, %37 ], [ %51, %42 ]
  %44 = phi i32 [ %39, %37 ], [ %50, %42 ]
  %45 = phi i32 [ 0, %37 ], [ %52, %42 ]
  %46 = getelementptr inbounds %struct.MPoly, ptr %1, i64 %43
  %47 = getelementptr inbounds %struct.MPoly, ptr %1, i64 %43, i32 2
  store i16 %31, ptr %47, align 4, !tbaa !191
  %48 = getelementptr inbounds %struct.MPoly, ptr %1, i64 %43, i32 3
  store i8 %30, ptr %48, align 2, !tbaa !190
  store i32 %44, ptr %46, align 4, !tbaa !50
  %49 = getelementptr inbounds %struct.MPoly, ptr %1, i64 %43, i32 1
  store i32 4, ptr %49, align 4, !tbaa !47
  %50 = add nsw i32 %44, 4
  %51 = add nsw i64 %43, 1
  %52 = add nuw nsw i32 %45, 1
  %53 = icmp eq i32 %52, %13
  br i1 %53, label %54, label %42, !llvm.loop !297

54:                                               ; preds = %42
  %55 = trunc i64 %51 to i32
  %56 = add nuw nsw i32 %40, 1
  %57 = icmp eq i32 %56, %13
  br i1 %57, label %58, label %37, !llvm.loop !298

58:                                               ; preds = %54, %33
  %59 = phi i32 [ %35, %33 ], [ %50, %54 ]
  %60 = phi i32 [ %34, %33 ], [ %55, %54 ]
  %61 = add nuw nsw i32 %36, 1
  %62 = icmp eq i32 %61, %23
  br i1 %62, label %63, label %33, !llvm.loop !299

63:                                               ; preds = %58, %29
  %64 = phi i32 [ %19, %29 ], [ %59, %58 ]
  %65 = phi i32 [ %18, %29 ], [ %60, %58 ]
  %66 = add nuw nsw i64 %17, 1
  %67 = icmp eq i64 %66, %15
  br i1 %67, label %68, label %16, !llvm.loop !300

68:                                               ; preds = %63, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ccgDM_get_vert_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !PGOFuncName !301 {
  %4 = icmp eq i32 %2, 7
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call ptr @ccgDM_get_vert_data_layer(ptr noundef %0, i32 noundef 7) #15
  br label %7

7:                                                ; preds = %5, %3
  %8 = tail call ptr @DM_get_vert_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #14
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ccgDM_get_edge_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !PGOFuncName !302 {
  %4 = icmp eq i32 %2, 7
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call ptr @ccgDM_get_edge_data_layer(ptr noundef %0, i32 noundef 7) #15
  br label %7

7:                                                ; preds = %5, %3
  %8 = tail call ptr @DM_get_edge_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #14
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ccgDM_get_tessface_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !PGOFuncName !303 {
  switch i32 %2, label %6 [
    i32 40, label %4
    i32 7, label %4
  ]

4:                                                ; preds = %3, %3
  %5 = tail call ptr @ccgDM_get_tessface_data_layer(ptr noundef %0, i32 noundef %2) #15
  br label %6

6:                                                ; preds = %3, %4
  %7 = tail call ptr @DM_get_tessface_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #14
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ccgDM_get_poly_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !PGOFuncName !304 {
  %4 = icmp eq i32 %2, 7
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call ptr @ccgDM_get_tessface_data_layer(ptr noundef %0, i32 noundef 7) #15
  br label %7

7:                                                ; preds = %5, %3
  %8 = tail call ptr @DM_get_poly_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #14
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ccgDM_get_vert_data_layer(ptr noundef %0, i32 noundef %1) #0 !PGOFuncName !305 {
  %3 = icmp eq i32 %1, 7
  br i1 %3, label %4, label %42

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull @origindex_cache_rwlock, i32 noundef 1) #14
  %7 = tail call ptr @DM_get_vert_data_layer(ptr noundef %0, i32 noundef 7) #14
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull @origindex_cache_rwlock) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %44

9:                                                ; preds = %4
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull @origindex_cache_rwlock, i32 noundef 2) #14
  tail call void @DM_add_vert_layer(ptr noundef nonnull %0, i32 noundef 7, i32 noundef 1, ptr noundef null) #14
  %10 = tail call ptr @DM_get_vert_data_layer(ptr noundef nonnull %0, i32 noundef 7) #14
  %11 = tail call i32 @ccgSubSurf_getNumVerts(ptr noundef %6) #14
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !306
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
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 5
  %28 = zext nneg i32 %11 to i64
  br label %29

29:                                               ; preds = %26, %29
  %30 = phi i64 [ 0, %26 ], [ %38, %29 ]
  %31 = phi i64 [ %24, %26 ], [ %39, %29 ]
  %32 = load ptr, ptr %27, align 8, !tbaa !174
  %33 = getelementptr inbounds %struct.anon.1, ptr %32, i64 %30, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !175
  %35 = load ptr, ptr %5, align 8, !tbaa !34
  %36 = tail call fastcc i32 @ccgDM_getVertMapIndex(ptr noundef %35, ptr noundef %34) #15
  %37 = getelementptr inbounds i32, ptr %10, i64 %31
  store i32 %36, ptr %37, align 4, !tbaa !54
  %38 = add nuw nsw i64 %30, 1
  %39 = add nuw nsw i64 %31, 1
  %40 = icmp eq i64 %38, %28
  br i1 %40, label %41, label %29, !llvm.loop !307

41:                                               ; preds = %29, %23
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull @origindex_cache_rwlock) #14
  br label %44

42:                                               ; preds = %2
  %43 = tail call ptr @DM_get_vert_data_layer(ptr noundef %0, i32 noundef %1) #14
  br label %44

44:                                               ; preds = %41, %4, %42
  %45 = phi ptr [ %43, %42 ], [ %10, %41 ], [ %7, %4 ]
  ret ptr %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ccgDM_get_edge_data_layer(ptr noundef %0, i32 noundef %1) #0 !PGOFuncName !308 {
  %3 = icmp eq i32 %1, 7
  br i1 %3, label %4, label %54

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %6) #14
  %8 = tail call ptr @DM_get_edge_data_layer(ptr noundef %0, i32 noundef 7) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %56

10:                                               ; preds = %4
  tail call void @DM_add_edge_layer(ptr noundef nonnull %0, i32 noundef 7, i32 noundef 1, ptr noundef null) #14
  %11 = tail call ptr @DM_get_edge_data_layer(ptr noundef nonnull %0, i32 noundef 7) #14
  %12 = tail call i32 @ccgSubSurf_getNumEdges(ptr noundef %6) #14
  %13 = add nsw i32 %7, -1
  %14 = mul nsw i32 %12, %13
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !309
  %17 = sub nsw i32 %16, %14
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %10
  %20 = xor i32 %14, -1
  %21 = add i32 %16, %20
  %22 = zext i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 2
  %24 = add nuw nsw i64 %23, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %11, i8 -1, i64 %24, i1 false), !tbaa !54
  br label %25

25:                                               ; preds = %19, %10
  %26 = phi i32 [ 0, %10 ], [ %17, %19 ]
  %27 = icmp sgt i32 %12, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 6
  %30 = icmp sgt i32 %7, 1
  %31 = zext nneg i32 %12 to i64
  br label %32

32:                                               ; preds = %28, %50
  %33 = phi i64 [ 0, %28 ], [ %52, %50 ]
  %34 = phi i32 [ %26, %28 ], [ %51, %50 ]
  %35 = load ptr, ptr %29, align 8, !tbaa !178
  %36 = getelementptr inbounds %struct.anon.2, ptr %35, i64 %33, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !179
  %38 = tail call fastcc i32 @ccgDM_getEdgeMapIndex(ptr noundef %6, ptr noundef %37) #15
  br i1 %30, label %39, label %50

39:                                               ; preds = %32
  %40 = sext i32 %34 to i64
  br label %41

41:                                               ; preds = %39, %41
  %42 = phi i64 [ %40, %39 ], [ %46, %41 ]
  %43 = phi i32 [ 0, %39 ], [ %45, %41 ]
  %44 = getelementptr inbounds i32, ptr %11, i64 %42
  store i32 %38, ptr %44, align 4, !tbaa !54
  %45 = add nuw nsw i32 %43, 1
  %46 = add nsw i64 %42, 1
  %47 = icmp eq i32 %45, %13
  br i1 %47, label %48, label %41, !llvm.loop !310

48:                                               ; preds = %41
  %49 = trunc i64 %46 to i32
  br label %50

50:                                               ; preds = %48, %32
  %51 = phi i32 [ %34, %32 ], [ %49, %48 ]
  %52 = add nuw nsw i64 %33, 1
  %53 = icmp eq i64 %52, %31
  br i1 %53, label %56, label %32, !llvm.loop !311

54:                                               ; preds = %2
  %55 = tail call ptr @DM_get_edge_data_layer(ptr noundef %0, i32 noundef %1) #14
  br label %56

56:                                               ; preds = %50, %25, %4, %54
  %57 = phi ptr [ %55, %54 ], [ %8, %4 ], [ %11, %25 ], [ %11, %50 ]
  ret ptr %57
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ccgDM_get_tessface_data_layer(ptr noundef %0, i32 noundef %1) #0 !PGOFuncName !312 {
  switch i32 %1, label %31 [
    i32 7, label %3
    i32 40, label %11
  ]

3:                                                ; preds = %2
  %4 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 7) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %33

6:                                                ; preds = %3
  tail call void @DM_add_tessface_layer(ptr noundef %0, i32 noundef 7, i32 noundef 1, ptr noundef null) #14
  %7 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 7) #14
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %9 = load ptr, ptr %8, align 8, !tbaa !313
  %10 = tail call i32 %9(ptr noundef %0) #14
  tail call void @range_vn_i(ptr noundef %7, i32 noundef %10, i32 noundef 0) #14
  br label %33

11:                                               ; preds = %2
  %12 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 40) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  %15 = tail call i32 @ccgDM_getNumLoops(ptr noundef %0) #15
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 53
  %17 = load ptr, ptr %16, align 8, !tbaa !314
  %18 = tail call ptr %17(ptr noundef %0, i32 noundef 8) #14
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %14
  tail call void @DM_add_tessface_layer(ptr noundef nonnull %0, i32 noundef 40, i32 noundef 1, ptr noundef null) #14
  %21 = tail call ptr @DM_get_tessface_data_layer(ptr noundef nonnull %0, i32 noundef 40) #14
  %22 = icmp sgt i32 %15, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %20, %23
  %24 = phi i32 [ %27, %23 ], [ 0, %20 ]
  %25 = phi ptr [ %28, %23 ], [ %21, %20 ]
  %26 = phi ptr [ %29, %23 ], [ %18, %20 ]
  tail call fastcc void @normal_float_to_short_v3(ptr noundef %25, ptr noundef nonnull %26) #15
  %27 = add nuw nsw i32 %24, 1
  %28 = getelementptr inbounds [3 x i16], ptr %25, i64 1
  %29 = getelementptr inbounds [3 x float], ptr %26, i64 1
  %30 = icmp eq i32 %27, %15
  br i1 %30, label %33, label %23, !llvm.loop !315

31:                                               ; preds = %2
  %32 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef %1) #14
  br label %33

33:                                               ; preds = %23, %20, %14, %11, %6, %3, %31
  %34 = phi ptr [ %32, %31 ], [ %7, %6 ], [ %4, %3 ], [ %12, %11 ], [ null, %14 ], [ %21, %20 ], [ %21, %23 ]
  ret ptr %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ccgDM_get_poly_data_layer(ptr noundef %0, i32 noundef %1) #0 !PGOFuncName !316 {
  %3 = icmp eq i32 %1, 7
  br i1 %3, label %4, label %44

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %6) #14
  %8 = add nsw i32 %7, -1
  %9 = tail call ptr @DM_get_poly_data_layer(ptr noundef %0, i32 noundef 7) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %46

11:                                               ; preds = %4
  tail call void @DM_add_poly_layer(ptr noundef nonnull %0, i32 noundef 7, i32 noundef 1, ptr noundef null) #14
  %12 = tail call ptr @DM_get_poly_data_layer(ptr noundef nonnull %0, i32 noundef 7) #14
  %13 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %6) #14
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %17 = mul nsw i32 %8, %8
  %18 = zext nneg i32 %13 to i64
  br label %19

19:                                               ; preds = %15, %40
  %20 = phi i64 [ 0, %15 ], [ %42, %40 ]
  %21 = phi i32 [ 0, %15 ], [ %41, %40 ]
  %22 = load ptr, ptr %16, align 8, !tbaa !44
  %23 = getelementptr inbounds %struct.anon.0, ptr %22, i64 %20, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = tail call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %24) #14
  %26 = tail call fastcc i32 @ccgDM_getFaceMapIndex(ptr noundef %6, ptr noundef %24) #15
  %27 = mul nsw i32 %17, %25
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %19
  %30 = sext i32 %21 to i64
  br label %31

31:                                               ; preds = %29, %31
  %32 = phi i64 [ %30, %29 ], [ %36, %31 ]
  %33 = phi i32 [ 0, %29 ], [ %35, %31 ]
  %34 = getelementptr inbounds i32, ptr %12, i64 %32
  store i32 %26, ptr %34, align 4, !tbaa !54
  %35 = add nuw nsw i32 %33, 1
  %36 = add nsw i64 %32, 1
  %37 = icmp eq i32 %35, %27
  br i1 %37, label %38, label %31, !llvm.loop !317

38:                                               ; preds = %31
  %39 = trunc i64 %36 to i32
  br label %40

40:                                               ; preds = %38, %19
  %41 = phi i32 [ %21, %19 ], [ %39, %38 ]
  %42 = add nuw nsw i64 %20, 1
  %43 = icmp eq i64 %42, %18
  br i1 %43, label %46, label %19, !llvm.loop !318

44:                                               ; preds = %2
  %45 = tail call ptr @DM_get_poly_data_layer(ptr noundef %0, i32 noundef %1) #14
  br label %46

46:                                               ; preds = %40, %11, %4, %44
  %47 = phi ptr [ %45, %44 ], [ %9, %4 ], [ %12, %11 ], [ %12, %40 ]
  ret ptr %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ccgDM_getNumGrids(ptr nocapture noundef readonly %0) #0 !PGOFuncName !319 {
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %3) #14
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
  %15 = tail call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %14) #14
  %16 = add nsw i32 %15, %11
  %17 = add nuw nsw i64 %10, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %9, !llvm.loop !320

19:                                               ; preds = %9, %1
  %20 = phi i32 [ 0, %1 ], [ %16, %9 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ccgDM_getGridSize(ptr nocapture noundef readonly %0) #0 !PGOFuncName !321 {
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %3) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ccgDM_getGridData(ptr nocapture noundef %0) #0 !PGOFuncName !322 {
  tail call fastcc void @ccgdm_create_grids(ptr noundef %0) #15
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !323
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ccgDM_getGridAdjacency(ptr nocapture noundef %0) #0 !PGOFuncName !324 {
  tail call fastcc void @ccgdm_create_grids(ptr noundef %0) #15
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !325
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ccgDM_getGridOffset(ptr nocapture noundef %0) #0 !PGOFuncName !326 {
  tail call fastcc void @ccgdm_create_grids(ptr noundef %0) #15
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !327
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_getGridKey(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !328 {
  %3 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  tail call void @CCG_key_top_level(ptr noundef %1, ptr noundef %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ccgDM_getGridFlagMats(ptr nocapture noundef %0) #0 !PGOFuncName !329 {
  tail call fastcc void @ccgdm_create_grids(ptr noundef %0) #15
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !330
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ccgDM_getGridHidden(ptr nocapture noundef %0) #0 !PGOFuncName !331 {
  tail call fastcc void @ccgdm_create_grids(ptr noundef %0) #15
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ccgDM_getPolyMap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !333 {
  %3 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !334
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %28

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !335
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %28

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !336
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !342
  %17 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 13
  %18 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !343
  %20 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !345
  %22 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 26
  %23 = load i32, ptr %22, align 8, !tbaa !346
  %24 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 30
  %25 = load i32, ptr %24, align 8, !tbaa !347
  %26 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 31
  %27 = load i32, ptr %26, align 4, !tbaa !348
  tail call void @BKE_mesh_vert_poly_map_create(ptr noundef nonnull %7, ptr noundef nonnull %17, ptr noundef %19, ptr noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27) #14
  br label %28

28:                                               ; preds = %14, %10, %6, %2
  %29 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 12
  %30 = load ptr, ptr %29, align 8, !tbaa !335
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ccgDM_getPBVH(ptr noundef readonly %0, ptr nocapture noundef %1) #0 !PGOFuncName !349 {
  %3 = alloca %struct.CCGKey, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  call void @CCG_key_top_level(ptr noundef nonnull %3, ptr noundef %5) #14
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 11
  store ptr null, ptr %8, align 8, !tbaa !350
  br label %91

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !351
  %12 = icmp eq ptr %11, null
  br i1 %12, label %91, label %13

13:                                               ; preds = %9
  %14 = call fastcc i32 @ccgDM_use_grid_pbvh(ptr noundef nonnull %1) #15, !range !352
  %15 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 15
  %16 = load ptr, ptr %15, align 8, !tbaa !353
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !350
  br label %43

21:                                               ; preds = %13
  %22 = icmp eq i32 %14, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %21
  call fastcc void @ccgdm_create_grids(ptr noundef nonnull %1) #15
  %24 = load ptr, ptr %10, align 8, !tbaa !351
  %25 = getelementptr inbounds %struct.SculptSession, ptr %24, i64 0, i32 15
  %26 = load ptr, ptr %25, align 8, !tbaa !353
  %27 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 14
  %28 = load ptr, ptr %27, align 8, !tbaa !323
  %29 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 15
  %30 = load ptr, ptr %29, align 8, !tbaa !325
  %31 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 17
  %32 = load ptr, ptr %31, align 8, !tbaa !355
  %33 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 18
  %34 = load ptr, ptr %33, align 8, !tbaa !330
  %35 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 19
  %36 = load ptr, ptr %35, align 8, !tbaa !332
  call void @BKE_pbvh_grids_update(ptr noundef %26, ptr noundef %28, ptr noundef %30, ptr noundef %32, ptr noundef %34, ptr noundef %36) #14
  %37 = load ptr, ptr %10, align 8, !tbaa !351
  %38 = getelementptr inbounds %struct.SculptSession, ptr %37, i64 0, i32 15
  %39 = load ptr, ptr %38, align 8, !tbaa !353
  br label %40

40:                                               ; preds = %23, %21
  %41 = phi ptr [ %39, %23 ], [ %16, %21 ]
  %42 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 11
  store ptr %41, ptr %42, align 8, !tbaa !350
  br label %43

43:                                               ; preds = %18, %40
  %44 = phi ptr [ %20, %18 ], [ %41, %40 ]
  %45 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 11
  %46 = icmp eq ptr %44, null
  br i1 %46, label %47, label %91

47:                                               ; preds = %43
  %48 = icmp eq i32 %14, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %47
  call fastcc void @ccgdm_create_grids(ptr noundef nonnull %1) #15
  %50 = call i32 @ccgDM_getNumGrids(ptr noundef nonnull %1) #15
  %51 = call ptr @BKE_pbvh_new() #14
  store ptr %51, ptr %45, align 8, !tbaa !350
  %52 = load ptr, ptr %10, align 8, !tbaa !351
  %53 = getelementptr inbounds %struct.SculptSession, ptr %52, i64 0, i32 15
  store ptr %51, ptr %53, align 8, !tbaa !353
  %54 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 14
  %55 = load ptr, ptr %54, align 8, !tbaa !323
  %56 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 15
  %57 = load ptr, ptr %56, align 8, !tbaa !325
  %58 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 17
  %59 = load ptr, ptr %58, align 8, !tbaa !355
  %60 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 18
  %61 = load ptr, ptr %60, align 8, !tbaa !330
  %62 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %1, i64 0, i32 19
  %63 = load ptr, ptr %62, align 8, !tbaa !332
  call void @BKE_pbvh_build_grids(ptr noundef %51, ptr noundef %55, ptr noundef %57, i32 noundef %50, ptr noundef nonnull %3, ptr noundef %59, ptr noundef %61, ptr noundef %63) #14
  br label %83

64:                                               ; preds = %47
  %65 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %66 = load i16, ptr %65, align 8, !tbaa !336
  %67 = icmp eq i16 %66, 1
  br i1 %67, label %68, label %83

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %70 = load ptr, ptr %69, align 8, !tbaa !342
  %71 = call ptr @BKE_pbvh_new() #14
  store ptr %71, ptr %45, align 8, !tbaa !350
  %72 = load ptr, ptr %10, align 8, !tbaa !351
  %73 = getelementptr inbounds %struct.SculptSession, ptr %72, i64 0, i32 15
  store ptr %71, ptr %73, align 8, !tbaa !353
  %74 = getelementptr inbounds %struct.Mesh, ptr %70, i64 0, i32 12
  %75 = load ptr, ptr %74, align 8, !tbaa !356
  %76 = getelementptr inbounds %struct.Mesh, ptr %70, i64 0, i32 15
  %77 = load ptr, ptr %76, align 8, !tbaa !357
  %78 = getelementptr inbounds %struct.Mesh, ptr %70, i64 0, i32 28
  %79 = load i32, ptr %78, align 8, !tbaa !358
  %80 = getelementptr inbounds %struct.Mesh, ptr %70, i64 0, i32 26
  %81 = load i32, ptr %80, align 8, !tbaa !346
  %82 = getelementptr inbounds %struct.Mesh, ptr %70, i64 0, i32 21
  call void @BKE_pbvh_build_mesh(ptr noundef %71, ptr noundef %75, ptr noundef %77, i32 noundef %79, i32 noundef %81, ptr noundef nonnull %82) #14
  br label %83

83:                                               ; preds = %64, %68, %49
  %84 = load ptr, ptr %45, align 8, !tbaa !350
  %85 = icmp eq ptr %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %10, align 8, !tbaa !351
  %88 = getelementptr inbounds %struct.SculptSession, ptr %87, i64 0, i32 16
  %89 = load i8, ptr %88, align 8, !tbaa !359
  call void @pbvh_show_diffuse_color_set(ptr noundef nonnull %84, i8 noundef zeroext %89) #14
  %90 = load ptr, ptr %45, align 8, !tbaa !350
  br label %91

91:                                               ; preds = %83, %86, %43, %9, %7
  %92 = phi ptr [ null, %7 ], [ null, %9 ], [ %44, %43 ], [ %90, %86 ], [ null, %83 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #16
  ret ptr %92
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @ccgDM_calcNormals(ptr nocapture noundef %0) #4 !PGOFuncName !360 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %3 = load i32, ptr %2, align 8, !tbaa !361
  %4 = and i32 %3, -5
  store i32 %4, ptr %2, align 8, !tbaa !361
  ret void
}

; Function Attrs: optsize
declare void @CDDM_calc_loop_normals(ptr noundef, float noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @ccgDM_recalcTessellation(ptr nocapture readnone %0) #6 !PGOFuncName !362 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgdm_getVertCos(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 !PGOFuncName !363 {
  %3 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %4) #14
  %6 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %4) #14
  %7 = tail call i32 @ccgSubSurf_getNumVerts(ptr noundef %4) #14
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !100
  %9 = sext i32 %7 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call ptr %8(i64 noundef %10, ptr noundef nonnull @.str.14) #14
  %12 = tail call ptr @ccgSubSurf_getVertIterator(ptr noundef %4) #14
  %13 = tail call i32 @ccgVertIterator_isStopped(ptr noundef %12) #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2, %15
  %16 = tail call ptr @ccgVertIterator_getCurrent(ptr noundef %12) #14
  %17 = tail call ptr @ccgSubSurf_getVertVertHandle(ptr noundef %16) #14
  %18 = ptrtoint ptr %17 to i64
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %16, ptr %21, align 8, !tbaa !100
  tail call void @ccgVertIterator_next(ptr noundef %12) #14
  %22 = tail call i32 @ccgVertIterator_isStopped(ptr noundef %12) #14
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %15, label %24, !llvm.loop !364

24:                                               ; preds = %15, %2
  tail call void @ccgVertIterator_free(ptr noundef %12) #14
  %25 = tail call i32 @ccgSubSurf_getNumEdges(ptr noundef %4) #14
  %26 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !100
  %27 = sext i32 %25 to i64
  %28 = shl nsw i64 %27, 3
  %29 = tail call ptr %26(i64 noundef %28, ptr noundef nonnull @.str.15) #14
  %30 = tail call ptr @ccgSubSurf_getEdgeIterator(ptr noundef %4) #14
  %31 = tail call i32 @ccgEdgeIterator_isStopped(ptr noundef %30) #14
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %24, %33
  %34 = tail call ptr @ccgEdgeIterator_getCurrent(ptr noundef %30) #14
  %35 = tail call ptr @ccgSubSurf_getEdgeEdgeHandle(ptr noundef %34) #14
  %36 = ptrtoint ptr %35 to i64
  %37 = shl i64 %36, 32
  %38 = ashr exact i64 %37, 32
  %39 = getelementptr inbounds ptr, ptr %29, i64 %38
  store ptr %34, ptr %39, align 8, !tbaa !100
  tail call void @ccgEdgeIterator_next(ptr noundef %30) #14
  %40 = tail call i32 @ccgEdgeIterator_isStopped(ptr noundef %30) #14
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %33, label %42, !llvm.loop !365

42:                                               ; preds = %33, %24
  tail call void @ccgEdgeIterator_free(ptr noundef %30) #14
  %43 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %4) #14
  %44 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !100
  %45 = sext i32 %43 to i64
  %46 = shl nsw i64 %45, 3
  %47 = tail call ptr %44(i64 noundef %46, ptr noundef nonnull @.str.16) #14
  %48 = tail call ptr @ccgSubSurf_getFaceIterator(ptr noundef %4) #14
  %49 = tail call i32 @ccgFaceIterator_isStopped(ptr noundef %48) #14
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %42, %51
  %52 = tail call ptr @ccgFaceIterator_getCurrent(ptr noundef %48) #14
  %53 = tail call ptr @ccgSubSurf_getFaceFaceHandle(ptr noundef %52) #14
  %54 = ptrtoint ptr %53 to i64
  %55 = shl i64 %54, 32
  %56 = ashr exact i64 %55, 32
  %57 = getelementptr inbounds ptr, ptr %47, i64 %56
  store ptr %52, ptr %57, align 8, !tbaa !100
  tail call void @ccgFaceIterator_next(ptr noundef %48) #14
  %58 = tail call i32 @ccgFaceIterator_isStopped(ptr noundef %48) #14
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %51, label %60, !llvm.loop !366

60:                                               ; preds = %51, %42
  tail call void @ccgFaceIterator_free(ptr noundef %48) #14
  %61 = icmp sgt i32 %43, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %60
  %63 = add i32 %6, -1
  %64 = icmp sgt i32 %6, 2
  %65 = zext nneg i32 %43 to i64
  br label %73

66:                                               ; preds = %127, %60
  %67 = phi i32 [ 0, %60 ], [ %128, %127 ]
  %68 = icmp sgt i32 %25, 0
  br i1 %68, label %69, label %131

69:                                               ; preds = %66
  %70 = icmp sgt i32 %5, 2
  %71 = zext nneg i32 %25 to i64
  %72 = add nsw i32 %5, -2
  br label %137

73:                                               ; preds = %62, %127
  %74 = phi i64 [ 0, %62 ], [ %129, %127 ]
  %75 = phi i32 [ 0, %62 ], [ %128, %127 ]
  %76 = getelementptr inbounds ptr, ptr %47, i64 %74
  %77 = load ptr, ptr %76, align 8, !tbaa !100
  %78 = tail call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %77) #14
  %79 = add nsw i32 %75, 1
  %80 = sext i32 %75 to i64
  %81 = getelementptr inbounds [3 x float], ptr %1, i64 %80
  %82 = tail call ptr @ccgSubSurf_getFaceCenterData(ptr noundef %77) #14
  tail call fastcc void @copy_v3_v3(ptr noundef %81, ptr noundef %82) #15
  %83 = icmp sgt i32 %78, 0
  br i1 %83, label %85, label %127

84:                                               ; preds = %100
  br i1 %83, label %104, label %127

85:                                               ; preds = %73, %100
  %86 = phi i32 [ %101, %100 ], [ %79, %73 ]
  %87 = phi i32 [ %102, %100 ], [ 0, %73 ]
  br i1 %64, label %88, label %100

88:                                               ; preds = %85
  %89 = sext i32 %86 to i64
  br label %90

90:                                               ; preds = %88, %90
  %91 = phi i64 [ %89, %88 ], [ %93, %90 ]
  %92 = phi i32 [ 1, %88 ], [ %96, %90 ]
  %93 = add nsw i64 %91, 1
  %94 = getelementptr inbounds [3 x float], ptr %1, i64 %91
  %95 = tail call ptr @ccgSubSurf_getFaceGridEdgeData(ptr noundef %4, ptr noundef %77, i32 noundef %87, i32 noundef %92) #14
  tail call fastcc void @copy_v3_v3(ptr noundef %94, ptr noundef %95) #15
  %96 = add nuw nsw i32 %92, 1
  %97 = icmp eq i32 %96, %63
  br i1 %97, label %98, label %90, !llvm.loop !367

98:                                               ; preds = %90
  %99 = trunc i64 %93 to i32
  br label %100

100:                                              ; preds = %98, %85
  %101 = phi i32 [ %86, %85 ], [ %99, %98 ]
  %102 = add nuw nsw i32 %87, 1
  %103 = icmp eq i32 %102, %78
  br i1 %103, label %84, label %85, !llvm.loop !368

104:                                              ; preds = %84, %123
  %105 = phi i32 [ %124, %123 ], [ %101, %84 ]
  %106 = phi i32 [ %125, %123 ], [ 0, %84 ]
  br i1 %64, label %107, label %123

107:                                              ; preds = %104, %119
  %108 = phi i32 [ %120, %119 ], [ %105, %104 ]
  %109 = phi i32 [ %121, %119 ], [ 1, %104 ]
  %110 = sext i32 %108 to i64
  br label %111

111:                                              ; preds = %107, %111
  %112 = phi i64 [ %110, %107 ], [ %114, %111 ]
  %113 = phi i32 [ 1, %107 ], [ %117, %111 ]
  %114 = add nsw i64 %112, 1
  %115 = getelementptr inbounds [3 x float], ptr %1, i64 %112
  %116 = tail call ptr @ccgSubSurf_getFaceGridData(ptr noundef %4, ptr noundef %77, i32 noundef %106, i32 noundef %113, i32 noundef %109) #14
  tail call fastcc void @copy_v3_v3(ptr noundef %115, ptr noundef %116) #15
  %117 = add nuw nsw i32 %113, 1
  %118 = icmp eq i32 %117, %63
  br i1 %118, label %119, label %111, !llvm.loop !369

119:                                              ; preds = %111
  %120 = trunc i64 %114 to i32
  %121 = add nuw nsw i32 %109, 1
  %122 = icmp eq i32 %121, %63
  br i1 %122, label %123, label %107, !llvm.loop !370

123:                                              ; preds = %119, %104
  %124 = phi i32 [ %105, %104 ], [ %120, %119 ]
  %125 = add nuw nsw i32 %106, 1
  %126 = icmp eq i32 %125, %78
  br i1 %126, label %127, label %104, !llvm.loop !371

127:                                              ; preds = %123, %73, %84
  %128 = phi i32 [ %101, %84 ], [ %79, %73 ], [ %124, %123 ]
  %129 = add nuw nsw i64 %74, 1
  %130 = icmp eq i64 %129, %65
  br i1 %130, label %66, label %73, !llvm.loop !372

131:                                              ; preds = %154, %66
  %132 = phi i32 [ %67, %66 ], [ %155, %154 ]
  %133 = icmp sgt i32 %7, 0
  br i1 %133, label %134, label %168

134:                                              ; preds = %131
  %135 = sext i32 %132 to i64
  %136 = zext nneg i32 %7 to i64
  br label %158

137:                                              ; preds = %69, %154
  %138 = phi i64 [ 0, %69 ], [ %156, %154 ]
  %139 = phi i32 [ %67, %69 ], [ %155, %154 ]
  %140 = getelementptr inbounds ptr, ptr %29, i64 %138
  %141 = load ptr, ptr %140, align 8, !tbaa !100
  br i1 %70, label %142, label %154

142:                                              ; preds = %137
  %143 = sext i32 %139 to i64
  br label %144

144:                                              ; preds = %142, %144
  %145 = phi i64 [ %143, %142 ], [ %147, %144 ]
  %146 = phi i32 [ 1, %142 ], [ %150, %144 ]
  %147 = add nsw i64 %145, 1
  %148 = getelementptr inbounds [3 x float], ptr %1, i64 %145
  %149 = tail call ptr @ccgSubSurf_getEdgeData(ptr noundef %4, ptr noundef %141, i32 noundef %146) #14
  tail call fastcc void @copy_v3_v3(ptr noundef %148, ptr noundef %149) #15
  %150 = add nuw nsw i32 %146, 1
  %151 = icmp eq i32 %146, %72
  br i1 %151, label %152, label %144, !llvm.loop !373

152:                                              ; preds = %144
  %153 = trunc i64 %147 to i32
  br label %154

154:                                              ; preds = %152, %137
  %155 = phi i32 [ %139, %137 ], [ %153, %152 ]
  %156 = add nuw nsw i64 %138, 1
  %157 = icmp eq i64 %156, %71
  br i1 %157, label %131, label %137, !llvm.loop !374

158:                                              ; preds = %134, %158
  %159 = phi i64 [ 0, %134 ], [ %166, %158 ]
  %160 = phi i64 [ %135, %134 ], [ %163, %158 ]
  %161 = getelementptr inbounds ptr, ptr %11, i64 %159
  %162 = load ptr, ptr %161, align 8, !tbaa !100
  %163 = add nsw i64 %160, 1
  %164 = getelementptr inbounds [3 x float], ptr %1, i64 %160
  %165 = tail call ptr @ccgSubSurf_getVertData(ptr noundef %4, ptr noundef %162) #14
  tail call fastcc void @copy_v3_v3(ptr noundef %164, ptr noundef %165) #15
  %166 = add nuw nsw i64 %159, 1
  %167 = icmp eq i64 %166, %136
  br i1 %167, label %168, label %158, !llvm.loop !375

168:                                              ; preds = %158, %131
  %169 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %169(ptr noundef %11) #14
  %170 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %170(ptr noundef %29) #14
  %171 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %171(ptr noundef %47) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_foreachMappedVert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 !PGOFuncName !376 {
  %5 = alloca %struct.CCGKey, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  %6 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  call void @CCG_key_top_level(ptr noundef nonnull %5, ptr noundef %7) #14
  %8 = load ptr, ptr %6, align 8, !tbaa !34
  %9 = call ptr @ccgSubSurf_getVertIterator(ptr noundef %8) #14
  %10 = call i32 @ccgVertIterator_isStopped(ptr noundef %9) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %4
  %13 = and i32 %3, 1
  %14 = icmp eq i32 %13, 0
  br label %15

15:                                               ; preds = %12, %27
  %16 = call ptr @ccgVertIterator_getCurrent(ptr noundef %9) #14
  %17 = load ptr, ptr %6, align 8, !tbaa !34
  %18 = call fastcc i32 @ccgDM_getVertMapIndex(ptr noundef %17, ptr noundef %16) #15
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %6, align 8, !tbaa !34
  %22 = call ptr @ccgSubSurf_getVertData(ptr noundef %21, ptr noundef %16) #14
  br i1 %14, label %25, label %23

23:                                               ; preds = %20
  %24 = call fastcc ptr @CCG_elem_no(ptr noundef nonnull %5, ptr noundef %22) #15
  br label %25

25:                                               ; preds = %20, %23
  %26 = phi ptr [ %24, %23 ], [ null, %20 ]
  call void %1(ptr noundef %2, i32 noundef %18, ptr noundef %22, ptr noundef %26, ptr noundef null) #14
  br label %27

27:                                               ; preds = %25, %15
  call void @ccgVertIterator_next(ptr noundef %9) #14
  %28 = call i32 @ccgVertIterator_isStopped(ptr noundef %9) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %15, label %30, !llvm.loop !377

30:                                               ; preds = %27, %4
  call void @ccgVertIterator_free(ptr noundef %9) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_foreachMappedEdge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !378 {
  %4 = alloca %struct.CCGKey, align 4
  %5 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #16
  %7 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %6) #14
  call void @CCG_key_top_level(ptr noundef nonnull %4, ptr noundef %6) #14
  %8 = call ptr @ccgSubSurf_getEdgeIterator(ptr noundef %6) #14
  %9 = call i32 @ccgEdgeIterator_isStopped(ptr noundef %8) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %3
  %12 = icmp sgt i32 %7, 1
  %13 = add nsw i32 %7, -2
  br label %14

14:                                               ; preds = %11, %26
  %15 = call ptr @ccgEdgeIterator_getCurrent(ptr noundef %8) #14
  %16 = call fastcc i32 @ccgDM_getEdgeMapIndex(ptr noundef %6, ptr noundef %15) #15
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = call ptr @ccgSubSurf_getEdgeDataArray(ptr noundef %6, ptr noundef %15) #14
  br i1 %12, label %20, label %26

20:                                               ; preds = %18, %20
  %21 = phi i32 [ %23, %20 ], [ 0, %18 ]
  %22 = call fastcc ptr @CCG_elem_offset_co(ptr noundef nonnull %4, ptr noundef %19, i32 noundef %21) #15
  %23 = add nuw nsw i32 %21, 1
  %24 = call fastcc ptr @CCG_elem_offset_co(ptr noundef nonnull %4, ptr noundef %19, i32 noundef %23) #15
  call void %1(ptr noundef %2, i32 noundef %16, ptr noundef %22, ptr noundef %24) #14
  %25 = icmp eq i32 %21, %13
  br i1 %25, label %26, label %20, !llvm.loop !379

26:                                               ; preds = %20, %18, %14
  call void @ccgEdgeIterator_next(ptr noundef %8) #14
  %27 = call i32 @ccgEdgeIterator_isStopped(ptr noundef %8) #14
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %14, label %29, !llvm.loop !380

29:                                               ; preds = %26, %3
  call void @ccgEdgeIterator_free(ptr noundef %8) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_foreachMappedLoop(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 !PGOFuncName !381 {
  %5 = and i32 %3, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @DM_get_loop_data_layer(ptr noundef %0, i32 noundef 8) #14
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi ptr [ %8, %7 ], [ null, %4 ]
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  %13 = tail call ptr %12(ptr noundef %0) #14
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 34
  %15 = load ptr, ptr %14, align 8, !tbaa !95
  %16 = tail call ptr %15(ptr noundef %0) #14
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 35
  %18 = load ptr, ptr %17, align 8, !tbaa !96
  %19 = tail call ptr %18(ptr noundef %0) #14
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 50
  %21 = load ptr, ptr %20, align 8, !tbaa !99
  %22 = tail call ptr %21(ptr noundef %0, i32 noundef 7) #14
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 54
  %24 = load ptr, ptr %23, align 8, !tbaa !108
  %25 = tail call ptr %24(ptr noundef %0, i32 noundef 7) #14
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !109
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %86

29:                                               ; preds = %9
  %30 = icmp eq ptr %22, null
  %31 = icmp eq ptr %25, null
  br label %32

32:                                               ; preds = %29, %78
  %33 = phi i32 [ %27, %29 ], [ %79, %78 ]
  %34 = phi i64 [ 0, %29 ], [ %82, %78 ]
  %35 = phi ptr [ %10, %29 ], [ %81, %78 ]
  %36 = phi ptr [ %16, %29 ], [ %80, %78 ]
  %37 = phi ptr [ %19, %29 ], [ %83, %78 ]
  %38 = getelementptr inbounds %struct.MPoly, ptr %37, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !47
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %78

41:                                               ; preds = %32
  %42 = getelementptr inbounds i32, ptr %25, i64 %34
  %43 = trunc i64 %34 to i32
  br label %44

44:                                               ; preds = %41, %71
  %45 = phi i32 [ %39, %41 ], [ %72, %71 ]
  %46 = phi ptr [ %35, %41 ], [ %62, %71 ]
  %47 = phi ptr [ %36, %41 ], [ %74, %71 ]
  %48 = phi i32 [ 0, %41 ], [ %73, %71 ]
  br i1 %30, label %53, label %49

49:                                               ; preds = %44
  %50 = load i32, ptr %47, align 4, !tbaa !110
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %22, i64 %51
  br label %53

53:                                               ; preds = %44, %49
  %54 = phi ptr [ %52, %49 ], [ %47, %44 ]
  %55 = load i32, ptr %54, align 4, !tbaa !54
  br i1 %31, label %58, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr %42, align 4, !tbaa !54
  br label %58

58:                                               ; preds = %53, %56
  %59 = phi i32 [ %57, %56 ], [ %43, %53 ]
  %60 = icmp eq ptr %46, null
  %61 = getelementptr inbounds [3 x float], ptr %46, i64 1
  %62 = select i1 %60, ptr null, ptr %61
  %63 = icmp eq i32 %55, -1
  %64 = icmp eq i32 %59, -1
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %58
  %67 = load i32, ptr %47, align 4, !tbaa !110
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.MVert, ptr %13, i64 %68
  tail call void %1(ptr noundef %2, i32 noundef %55, i32 noundef %59, ptr noundef %69, ptr noundef %46) #14
  %70 = load i32, ptr %38, align 4, !tbaa !47
  br label %71

71:                                               ; preds = %66, %58
  %72 = phi i32 [ %70, %66 ], [ %45, %58 ]
  %73 = add nuw nsw i32 %48, 1
  %74 = getelementptr inbounds %struct.MLoop, ptr %47, i64 1
  %75 = icmp slt i32 %73, %72
  br i1 %75, label %44, label %76, !llvm.loop !382

76:                                               ; preds = %71
  %77 = load i32, ptr %26, align 8, !tbaa !109
  br label %78

78:                                               ; preds = %76, %32
  %79 = phi i32 [ %33, %32 ], [ %77, %76 ]
  %80 = phi ptr [ %36, %32 ], [ %74, %76 ]
  %81 = phi ptr [ %35, %32 ], [ %62, %76 ]
  %82 = add nuw nsw i64 %34, 1
  %83 = getelementptr inbounds %struct.MPoly, ptr %37, i64 1
  %84 = sext i32 %79 to i64
  %85 = icmp slt i64 %82, %84
  br i1 %85, label %32, label %86, !llvm.loop !383

86:                                               ; preds = %78, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_foreachMappedFaceCenter(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 !PGOFuncName !384 {
  %5 = alloca %struct.CCGKey, align 4
  %6 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  call void @CCG_key_top_level(ptr noundef nonnull %5, ptr noundef %7) #14
  %8 = call ptr @ccgSubSurf_getFaceIterator(ptr noundef %7) #14
  %9 = call i32 @ccgFaceIterator_isStopped(ptr noundef %8) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %4
  %12 = and i32 %3, 1
  %13 = icmp eq i32 %12, 0
  br label %14

14:                                               ; preds = %11, %24
  %15 = call ptr @ccgFaceIterator_getCurrent(ptr noundef %8) #14
  %16 = call fastcc i32 @ccgDM_getFaceMapIndex(ptr noundef %7, ptr noundef %15) #15
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = call ptr @ccgSubSurf_getFaceGridData(ptr noundef %7, ptr noundef %15, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14
  br i1 %13, label %22, label %20

20:                                               ; preds = %18
  %21 = call fastcc ptr @CCG_elem_no(ptr noundef nonnull %5, ptr noundef %19) #15
  br label %22

22:                                               ; preds = %18, %20
  %23 = phi ptr [ %21, %20 ], [ null, %18 ]
  call void %1(ptr noundef %2, i32 noundef %16, ptr noundef %19, ptr noundef %23) #14
  br label %24

24:                                               ; preds = %22, %14
  call void @ccgFaceIterator_next(ptr noundef %8) #14
  %25 = call i32 @ccgFaceIterator_isStopped(ptr noundef %8) #14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %14, label %27, !llvm.loop !385

27:                                               ; preds = %24, %4
  call void @ccgFaceIterator_free(ptr noundef %8) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_drawVerts(ptr nocapture noundef readonly %0) #0 !PGOFuncName !386 {
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %3) #14
  %5 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %3) #14
  tail call void @glBegin(i32 noundef 0) #14
  %6 = tail call ptr @ccgSubSurf_getVertIterator(ptr noundef %3) #14
  %7 = tail call i32 @ccgVertIterator_isStopped(ptr noundef %6) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1, %9
  %10 = tail call ptr @ccgVertIterator_getCurrent(ptr noundef %6) #14
  %11 = tail call ptr @ccgSubSurf_getVertData(ptr noundef %3, ptr noundef %10) #14
  tail call void @glVertex3fv(ptr noundef %11) #14
  tail call void @ccgVertIterator_next(ptr noundef %6) #14
  %12 = tail call i32 @ccgVertIterator_isStopped(ptr noundef %6) #14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %9, label %14, !llvm.loop !387

14:                                               ; preds = %9, %1
  tail call void @ccgVertIterator_free(ptr noundef %6) #14
  %15 = tail call ptr @ccgSubSurf_getEdgeIterator(ptr noundef %3) #14
  %16 = tail call i32 @ccgEdgeIterator_isStopped(ptr noundef %15) #14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = icmp sgt i32 %4, 2
  %20 = add nsw i32 %4, -2
  br label %21

21:                                               ; preds = %18, %28
  %22 = tail call ptr @ccgEdgeIterator_getCurrent(ptr noundef %15) #14
  br i1 %19, label %23, label %28

23:                                               ; preds = %21, %23
  %24 = phi i32 [ %26, %23 ], [ 1, %21 ]
  %25 = tail call ptr @ccgSubSurf_getEdgeData(ptr noundef %3, ptr noundef %22, i32 noundef %24) #14
  tail call void @glVertex3fv(ptr noundef %25) #14
  %26 = add nuw nsw i32 %24, 1
  %27 = icmp eq i32 %24, %20
  br i1 %27, label %28, label %23, !llvm.loop !388

28:                                               ; preds = %23, %21
  tail call void @ccgEdgeIterator_next(ptr noundef %15) #14
  %29 = tail call i32 @ccgEdgeIterator_isStopped(ptr noundef %15) #14
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %21, label %31, !llvm.loop !389

31:                                               ; preds = %28, %14
  tail call void @ccgEdgeIterator_free(ptr noundef %15) #14
  %32 = tail call ptr @ccgSubSurf_getFaceIterator(ptr noundef %3) #14
  %33 = tail call i32 @ccgFaceIterator_isStopped(ptr noundef %32) #14
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %72

35:                                               ; preds = %31
  %36 = add i32 %5, -1
  %37 = icmp sgt i32 %5, 2
  br label %38

38:                                               ; preds = %35, %69
  %39 = tail call ptr @ccgFaceIterator_getCurrent(ptr noundef %32) #14
  %40 = tail call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %39) #14
  %41 = tail call ptr @ccgSubSurf_getFaceCenterData(ptr noundef %39) #14
  tail call void @glVertex3fv(ptr noundef %41) #14
  %42 = icmp sgt i32 %40, 0
  br i1 %42, label %44, label %69

43:                                               ; preds = %51
  br i1 %42, label %54, label %69

44:                                               ; preds = %38, %51
  %45 = phi i32 [ %52, %51 ], [ 0, %38 ]
  br i1 %37, label %46, label %51

46:                                               ; preds = %44, %46
  %47 = phi i32 [ %49, %46 ], [ 1, %44 ]
  %48 = tail call ptr @ccgSubSurf_getFaceGridEdgeData(ptr noundef %3, ptr noundef %39, i32 noundef %45, i32 noundef %47) #14
  tail call void @glVertex3fv(ptr noundef %48) #14
  %49 = add nuw nsw i32 %47, 1
  %50 = icmp eq i32 %49, %36
  br i1 %50, label %51, label %46, !llvm.loop !390

51:                                               ; preds = %46, %44
  %52 = add nuw nsw i32 %45, 1
  %53 = icmp eq i32 %52, %40
  br i1 %53, label %43, label %44, !llvm.loop !391

54:                                               ; preds = %43, %66
  %55 = phi i32 [ %67, %66 ], [ 0, %43 ]
  br i1 %37, label %56, label %66

56:                                               ; preds = %54, %63
  %57 = phi i32 [ %64, %63 ], [ 1, %54 ]
  br label %58

58:                                               ; preds = %56, %58
  %59 = phi i32 [ 1, %56 ], [ %61, %58 ]
  %60 = tail call ptr @ccgSubSurf_getFaceGridData(ptr noundef %3, ptr noundef %39, i32 noundef %55, i32 noundef %59, i32 noundef %57) #14
  tail call void @glVertex3fv(ptr noundef %60) #14
  %61 = add nuw nsw i32 %59, 1
  %62 = icmp eq i32 %61, %36
  br i1 %62, label %63, label %58, !llvm.loop !392

63:                                               ; preds = %58
  %64 = add nuw nsw i32 %57, 1
  %65 = icmp eq i32 %64, %36
  br i1 %65, label %66, label %56, !llvm.loop !393

66:                                               ; preds = %63, %54
  %67 = add nuw nsw i32 %55, 1
  %68 = icmp eq i32 %67, %40
  br i1 %68, label %69, label %54, !llvm.loop !394

69:                                               ; preds = %66, %38, %43
  tail call void @ccgFaceIterator_next(ptr noundef %32) #14
  %70 = tail call i32 @ccgFaceIterator_isStopped(ptr noundef %32) #14
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %38, label %72, !llvm.loop !395

72:                                               ; preds = %69, %31
  tail call void @ccgFaceIterator_free(ptr noundef %32) #14
  tail call void @glEnd() #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_drawEdges(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 !PGOFuncName !396 {
  %4 = alloca %struct.CCGKey, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #16
  %8 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %7) #14
  %9 = tail call i32 @ccgSubSurf_getNumEdges(ptr noundef %7) #14
  %10 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %7) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  call void @CCG_key_top_level(ptr noundef nonnull %4, ptr noundef %7) #14
  call fastcc void @ccgdm_pbvh_update(ptr noundef %0) #15
  call void @ccgSubSurf_getUseAgeCounts(ptr noundef %7, ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef null) #14
  %11 = icmp sgt i32 %9, 0
  br i1 %11, label %12, label %62

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 6
  %14 = icmp eq i8 %1, 0
  %15 = icmp eq i8 %2, 0
  %16 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 8
  %17 = icmp sgt i32 %8, 1
  %18 = zext nneg i32 %9 to i64
  %19 = add nsw i32 %8, -2
  br label %20

20:                                               ; preds = %12, %59
  %21 = phi i64 [ 0, %12 ], [ %60, %59 ]
  %22 = load ptr, ptr %13, align 8, !tbaa !178
  %23 = getelementptr inbounds %struct.anon.2, ptr %22, i64 %21, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !179
  %25 = call ptr @ccgSubSurf_getEdgeDataArray(ptr noundef %7, ptr noundef %24) #14
  br i1 %14, label %26, label %29

26:                                               ; preds = %20
  %27 = call i32 @ccgSubSurf_getEdgeNumFaces(ptr noundef %24) #14
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %59, label %29

29:                                               ; preds = %26, %20
  br i1 %15, label %30, label %38

30:                                               ; preds = %29
  %31 = load ptr, ptr %16, align 8, !tbaa !184
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds i16, ptr %31, i64 %21
  %35 = load i16, ptr %34, align 2, !tbaa !208
  %36 = and i16 %35, 2
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %59, label %38

38:                                               ; preds = %33, %30, %29
  %39 = load i32, ptr %5, align 4, !tbaa !54
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %38
  %42 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !397
  %43 = and i32 %42, 16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = call i32 @ccgSubSurf_getEdgeAge(ptr noundef %7, ptr noundef %24) #14
  %47 = shl nsw i32 %46, 2
  %48 = sub nsw i32 255, %47
  %49 = call i32 @llvm.smax.i32(i32 %48, i32 0)
  %50 = trunc i32 %49 to i8
  call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext %50, i8 noundef zeroext 0) #14
  br label %51

51:                                               ; preds = %45, %41, %38
  call void @glBegin(i32 noundef 3) #14
  br i1 %17, label %52, label %58

52:                                               ; preds = %51, %52
  %53 = phi i32 [ %55, %52 ], [ 0, %51 ]
  %54 = call fastcc ptr @CCG_elem_offset_co(ptr noundef nonnull %4, ptr noundef %25, i32 noundef %53) #15
  call void @glVertex3fv(ptr noundef %54) #14
  %55 = add nuw nsw i32 %53, 1
  %56 = call fastcc ptr @CCG_elem_offset_co(ptr noundef nonnull %4, ptr noundef %25, i32 noundef %55) #15
  call void @glVertex3fv(ptr noundef %56) #14
  %57 = icmp eq i32 %53, %19
  br i1 %57, label %58, label %52, !llvm.loop !399

58:                                               ; preds = %52, %51
  call void @glEnd() #14
  br label %59

59:                                               ; preds = %33, %26, %58
  %60 = add nuw nsw i64 %21, 1
  %61 = icmp eq i64 %60, %18
  br i1 %61, label %62, label %20, !llvm.loop !400

62:                                               ; preds = %59, %3
  %63 = load i32, ptr %5, align 4, !tbaa !54
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !397
  %67 = and i32 %66, 16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  br label %70

70:                                               ; preds = %69, %65, %62
  %71 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 3
  %72 = load i32, ptr %71, align 4, !tbaa !172
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %127, label %74

74:                                               ; preds = %70
  %75 = call i32 @ccgSubSurf_getNumFaces(ptr noundef %7) #14
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %127

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %79 = icmp sgt i32 %10, 0
  %80 = add i32 %10, -1
  %81 = icmp sgt i32 %10, 2
  %82 = zext nneg i32 %75 to i64
  br label %83

83:                                               ; preds = %77, %124
  %84 = phi i64 [ 0, %77 ], [ %125, %124 ]
  %85 = load ptr, ptr %78, align 8, !tbaa !44
  %86 = getelementptr inbounds %struct.anon.0, ptr %85, i64 %84, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !45
  %88 = call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %87) #14
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %124

90:                                               ; preds = %83, %121
  %91 = phi i32 [ %122, %121 ], [ 0, %83 ]
  %92 = call ptr @ccgSubSurf_getFaceGridDataArray(ptr noundef %7, ptr noundef %87, i32 noundef %91) #14
  call void @glBegin(i32 noundef 3) #14
  br i1 %79, label %94, label %93

93:                                               ; preds = %90
  call void @glEnd() #14
  br label %121

94:                                               ; preds = %90, %94
  %95 = phi i32 [ %97, %94 ], [ 0, %90 ]
  %96 = call fastcc ptr @CCG_elem_offset_co(ptr noundef nonnull %4, ptr noundef %92, i32 noundef %95) #15
  call void @glVertex3fv(ptr noundef %96) #14
  %97 = add nuw nsw i32 %95, 1
  %98 = icmp eq i32 %97, %10
  br i1 %98, label %99, label %94, !llvm.loop !401

99:                                               ; preds = %94
  call void @glEnd() #14
  br i1 %81, label %101, label %121

100:                                              ; preds = %108
  br i1 %81, label %111, label %121

101:                                              ; preds = %99, %108
  %102 = phi i32 [ %109, %108 ], [ 1, %99 ]
  call void @glBegin(i32 noundef 3) #14
  br i1 %79, label %103, label %108

103:                                              ; preds = %101, %103
  %104 = phi i32 [ %106, %103 ], [ 0, %101 ]
  %105 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %4, ptr noundef %92, i32 noundef %104, i32 noundef %102) #15
  call void @glVertex3fv(ptr noundef %105) #14
  %106 = add nuw nsw i32 %104, 1
  %107 = icmp eq i32 %106, %10
  br i1 %107, label %108, label %103, !llvm.loop !402

108:                                              ; preds = %103, %101
  call void @glEnd() #14
  %109 = add nuw nsw i32 %102, 1
  %110 = icmp eq i32 %109, %80
  br i1 %110, label %100, label %101, !llvm.loop !403

111:                                              ; preds = %100, %118
  %112 = phi i32 [ %119, %118 ], [ 1, %100 ]
  call void @glBegin(i32 noundef 3) #14
  br i1 %79, label %113, label %118

113:                                              ; preds = %111, %113
  %114 = phi i32 [ %116, %113 ], [ 0, %111 ]
  %115 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %4, ptr noundef %92, i32 noundef %112, i32 noundef %114) #15
  call void @glVertex3fv(ptr noundef %115) #14
  %116 = add nuw nsw i32 %114, 1
  %117 = icmp eq i32 %116, %10
  br i1 %117, label %118, label %113, !llvm.loop !404

118:                                              ; preds = %113, %111
  call void @glEnd() #14
  %119 = add nuw nsw i32 %112, 1
  %120 = icmp eq i32 %119, %80
  br i1 %120, label %121, label %111, !llvm.loop !405

121:                                              ; preds = %118, %99, %93, %100
  %122 = add nuw nsw i32 %91, 1
  %123 = icmp eq i32 %122, %88
  br i1 %123, label %124, label %90, !llvm.loop !406

124:                                              ; preds = %121, %83
  %125 = add nuw nsw i64 %84, 1
  %126 = icmp eq i64 %125, %82
  br i1 %126, label %127, label %83, !llvm.loop !407

127:                                              ; preds = %124, %74, %70
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_drawLooseEdges(ptr nocapture noundef readonly %0) #0 !PGOFuncName !408 {
  %2 = alloca %struct.CCGKey, align 4
  %3 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #16
  %5 = tail call i32 @ccgSubSurf_getNumEdges(ptr noundef %4) #14
  %6 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %4) #14
  call void @CCG_key_top_level(ptr noundef nonnull %2, ptr noundef %4) #14
  %7 = icmp sgt i32 %5, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 6
  %10 = icmp sgt i32 %6, 1
  %11 = zext nneg i32 %5 to i64
  %12 = add nsw i32 %6, -2
  br label %13

13:                                               ; preds = %8, %29
  %14 = phi i64 [ 0, %8 ], [ %30, %29 ]
  %15 = load ptr, ptr %9, align 8, !tbaa !178
  %16 = getelementptr inbounds %struct.anon.2, ptr %15, i64 %14, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !179
  %18 = call ptr @ccgSubSurf_getEdgeDataArray(ptr noundef %4, ptr noundef %17) #14
  %19 = call i32 @ccgSubSurf_getEdgeNumFaces(ptr noundef %17) #14
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  call void @glBegin(i32 noundef 3) #14
  br i1 %10, label %22, label %28

22:                                               ; preds = %21, %22
  %23 = phi i32 [ %25, %22 ], [ 0, %21 ]
  %24 = call fastcc ptr @CCG_elem_offset_co(ptr noundef nonnull %2, ptr noundef %18, i32 noundef %23) #15
  call void @glVertex3fv(ptr noundef %24) #14
  %25 = add nuw nsw i32 %23, 1
  %26 = call fastcc ptr @CCG_elem_offset_co(ptr noundef nonnull %2, ptr noundef %18, i32 noundef %25) #15
  call void @glVertex3fv(ptr noundef %26) #14
  %27 = icmp eq i32 %23, %12
  br i1 %27, label %28, label %22, !llvm.loop !409

28:                                               ; preds = %22, %21
  call void @glEnd() #14
  br label %29

29:                                               ; preds = %28, %13
  %30 = add nuw nsw i64 %14, 1
  %31 = icmp eq i64 %30, %11
  br i1 %31, label %32, label %13, !llvm.loop !410

32:                                               ; preds = %29, %1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_drawFacesSolid(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #0 !PGOFuncName !411 {
  %5 = alloca %struct.CCGKey, align 4
  %6 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %9 = load ptr, ptr %8, align 8, !tbaa !412
  %10 = tail call ptr %9(ptr noundef %0, i32 noundef 40) #14
  %11 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %7) #14
  %12 = add nsw i32 %11, -1
  %13 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !185
  %15 = icmp eq i8 %2, 0
  %16 = select i1 %15, i32 1, i32 %12
  %17 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %7) #14
  call void @CCG_key_top_level(ptr noundef nonnull %5, ptr noundef %7) #14
  call fastcc void @ccgdm_pbvh_update(ptr noundef %0) #15
  %18 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !350
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20
  %23 = load ptr, ptr %22, align 8, !tbaa !334
  %24 = icmp eq ptr %23, null
  %25 = icmp ne i8 %2, 0
  %26 = or i1 %25, %24
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !413
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %160, label %31

31:                                               ; preds = %27
  call void @BKE_pbvh_draw(ptr noundef nonnull %19, ptr noundef %1, ptr noundef null, ptr noundef %3, i8 noundef zeroext 0) #14
  call void @glShadeModel(i32 noundef 7424) #14
  br label %160

32:                                               ; preds = %21, %4
  %33 = icmp sgt i32 %17, 0
  br i1 %33, label %34, label %160

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %36 = icmp eq ptr %14, null
  %37 = mul nsw i32 %12, %12
  %38 = icmp eq ptr %3, null
  %39 = icmp sgt i32 %11, 1
  %40 = sext i32 %16 to i64
  %41 = icmp sgt i32 %11, 0
  %42 = zext nneg i32 %17 to i64
  br label %43

43:                                               ; preds = %34, %157
  %44 = phi i64 [ 0, %34 ], [ %158, %157 ]
  %45 = phi ptr [ %10, %34 ], [ %78, %157 ]
  %46 = phi i32 [ 0, %34 ], [ %91, %157 ]
  %47 = phi i32 [ -1, %34 ], [ %90, %157 ]
  %48 = phi i32 [ -1, %34 ], [ %89, %157 ]
  %49 = load ptr, ptr %35, align 8, !tbaa !44
  %50 = getelementptr inbounds %struct.anon.0, ptr %49, i64 %44, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !45
  %52 = call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %51) #14
  %53 = call ptr @ccgSubSurf_getFaceFaceHandle(ptr noundef %51) #14
  br i1 %36, label %71, label %54

54:                                               ; preds = %43
  %55 = ptrtoint ptr %53 to i64
  %56 = icmp eq ptr %45, null
  %57 = shl i64 %55, 32
  %58 = ashr exact i64 %57, 32
  br i1 %56, label %59, label %66

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.DMFlagMat, ptr %14, i64 %58, i32 1
  %61 = load i8, ptr %60, align 2, !tbaa !258
  %62 = freeze i8 %61
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  %65 = select i1 %64, i32 7424, i32 7425
  br label %66

66:                                               ; preds = %59, %54
  %67 = phi i32 [ 7425, %54 ], [ %65, %59 ]
  %68 = getelementptr inbounds %struct.DMFlagMat, ptr %14, i64 %58
  %69 = load i16, ptr %68, align 2, !tbaa !192
  %70 = sext i16 %69 to i32
  br label %71

71:                                               ; preds = %43, %66
  %72 = phi i32 [ %67, %66 ], [ 7425, %43 ]
  %73 = phi i32 [ %70, %66 ], [ 0, %43 ]
  %74 = icmp eq ptr %45, null
  %75 = mul nsw i32 %37, %52
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [4 x [3 x i16]], ptr %45, i64 %76
  %78 = select i1 %74, ptr null, ptr %77
  %79 = icmp eq i32 %48, %72
  %80 = icmp eq i32 %47, %73
  %81 = select i1 %79, i1 %80, i1 false
  br i1 %81, label %88, label %82

82:                                               ; preds = %71
  br i1 %38, label %86, label %83

83:                                               ; preds = %82
  %84 = add nsw i32 %73, 1
  %85 = call i32 %3(i32 noundef %84, ptr noundef null) #14
  br label %86

86:                                               ; preds = %82, %83
  %87 = phi i32 [ %85, %83 ], [ 1, %82 ]
  call void @glShadeModel(i32 noundef %72) #14
  br label %88

88:                                               ; preds = %71, %86
  %89 = phi i32 [ %72, %86 ], [ %48, %71 ]
  %90 = phi i32 [ %73, %86 ], [ %47, %71 ]
  %91 = phi i32 [ %87, %86 ], [ %46, %71 ]
  %92 = icmp ne i32 %91, 0
  %93 = icmp sgt i32 %52, 0
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %95, label %157

95:                                               ; preds = %88
  %96 = icmp eq i32 %89, 7425
  br label %97

97:                                               ; preds = %95, %153
  %98 = phi i32 [ 0, %95 ], [ %155, %153 ]
  %99 = phi ptr [ %45, %95 ], [ %154, %153 ]
  %100 = call ptr @ccgSubSurf_getFaceGridDataArray(ptr noundef %7, ptr noundef %51, i32 noundef %98) #14
  %101 = icmp eq ptr %99, null
  br i1 %101, label %122, label %102

102:                                              ; preds = %97
  call void @glBegin(i32 noundef 7) #14
  br i1 %39, label %103, label %151

103:                                              ; preds = %102, %120
  %104 = phi i32 [ %106, %120 ], [ 0, %102 ]
  %105 = phi ptr [ %118, %120 ], [ %99, %102 ]
  %106 = add nsw i32 %104, %16
  br label %107

107:                                              ; preds = %103, %107
  %108 = phi i32 [ 0, %103 ], [ %111, %107 ]
  %109 = phi ptr [ %105, %103 ], [ %118, %107 ]
  %110 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %5, ptr noundef %100, i32 noundef %108, i32 noundef %104) #15
  %111 = add nsw i32 %108, %16
  %112 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %5, ptr noundef %100, i32 noundef %111, i32 noundef %104) #15
  %113 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %5, ptr noundef %100, i32 noundef %111, i32 noundef %106) #15
  %114 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %5, ptr noundef %100, i32 noundef %108, i32 noundef %106) #15
  %115 = getelementptr inbounds [4 x [3 x i16]], ptr %109, i64 0, i64 1
  call void @glNormal3sv(ptr noundef nonnull %115) #14
  call void @glVertex3fv(ptr noundef %114) #14
  %116 = getelementptr inbounds [4 x [3 x i16]], ptr %109, i64 0, i64 2
  call void @glNormal3sv(ptr noundef nonnull %116) #14
  call void @glVertex3fv(ptr noundef %113) #14
  %117 = getelementptr inbounds [4 x [3 x i16]], ptr %109, i64 0, i64 3
  call void @glNormal3sv(ptr noundef nonnull %117) #14
  call void @glVertex3fv(ptr noundef %112) #14
  call void @glNormal3sv(ptr noundef %109) #14
  call void @glVertex3fv(ptr noundef %110) #14
  %118 = getelementptr inbounds [4 x [3 x i16]], ptr %109, i64 %40
  %119 = icmp slt i32 %111, %12
  br i1 %119, label %107, label %120, !llvm.loop !414

120:                                              ; preds = %107
  %121 = icmp slt i32 %106, %12
  br i1 %121, label %103, label %151, !llvm.loop !415

122:                                              ; preds = %97
  br i1 %96, label %123, label %137

123:                                              ; preds = %122
  br i1 %39, label %124, label %153

124:                                              ; preds = %123, %135
  %125 = phi i32 [ %126, %135 ], [ 0, %123 ]
  call void @glBegin(i32 noundef 8) #14
  %126 = add nsw i32 %125, %16
  br i1 %41, label %127, label %135

127:                                              ; preds = %124, %127
  %128 = phi i32 [ %133, %127 ], [ 0, %124 ]
  %129 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %5, ptr noundef %100, i32 noundef %128, i32 noundef %125) #15
  %130 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %5, ptr noundef %100, i32 noundef %128, i32 noundef %126) #15
  %131 = call fastcc ptr @CCG_elem_no(ptr noundef nonnull %5, ptr noundef %129) #15
  call void @glNormal3fv(ptr noundef %131) #14
  call void @glVertex3fv(ptr noundef %129) #14
  %132 = call fastcc ptr @CCG_elem_no(ptr noundef nonnull %5, ptr noundef %130) #15
  call void @glNormal3fv(ptr noundef %132) #14
  call void @glVertex3fv(ptr noundef %130) #14
  %133 = add nsw i32 %128, %16
  %134 = icmp slt i32 %133, %11
  br i1 %134, label %127, label %135, !llvm.loop !416

135:                                              ; preds = %127, %124
  call void @glEnd() #14
  %136 = icmp slt i32 %126, %12
  br i1 %136, label %124, label %153, !llvm.loop !417

137:                                              ; preds = %122
  call void @glBegin(i32 noundef 7) #14
  br i1 %39, label %138, label %151

138:                                              ; preds = %137, %149
  %139 = phi i32 [ %140, %149 ], [ 0, %137 ]
  %140 = add nsw i32 %139, %16
  br label %141

141:                                              ; preds = %138, %141
  %142 = phi i32 [ 0, %138 ], [ %144, %141 ]
  %143 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %5, ptr noundef %100, i32 noundef %142, i32 noundef %139) #15
  %144 = add nsw i32 %142, %16
  %145 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %5, ptr noundef %100, i32 noundef %144, i32 noundef %139) #15
  %146 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %5, ptr noundef %100, i32 noundef %144, i32 noundef %140) #15
  %147 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %5, ptr noundef %100, i32 noundef %142, i32 noundef %140) #15
  call fastcc void @ccgDM_glNormalFast(ptr noundef %143, ptr noundef %145, ptr noundef %146, ptr noundef %147) #15
  call void @glVertex3fv(ptr noundef %147) #14
  call void @glVertex3fv(ptr noundef %146) #14
  call void @glVertex3fv(ptr noundef %145) #14
  call void @glVertex3fv(ptr noundef %143) #14
  %148 = icmp slt i32 %144, %12
  br i1 %148, label %141, label %149, !llvm.loop !418

149:                                              ; preds = %141
  %150 = icmp slt i32 %140, %12
  br i1 %150, label %138, label %151, !llvm.loop !419

151:                                              ; preds = %120, %149, %137, %102
  %152 = phi ptr [ %99, %102 ], [ null, %137 ], [ null, %149 ], [ %118, %120 ]
  call void @glEnd() #14
  br label %153

153:                                              ; preds = %135, %151, %123
  %154 = phi ptr [ null, %123 ], [ %152, %151 ], [ null, %135 ]
  %155 = add nuw nsw i32 %98, 1
  %156 = icmp eq i32 %155, %52
  br i1 %156, label %157, label %97, !llvm.loop !420

157:                                              ; preds = %153, %88
  %158 = add nuw nsw i64 %44, 1
  %159 = icmp eq i64 %158, %42
  br i1 %159, label %160, label %43, !llvm.loop !421

160:                                              ; preds = %157, %32, %27, %31
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_drawFacesTex(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3, i32 noundef %4) #0 !PGOFuncName !422 {
  tail call fastcc void @ccgDM_drawFacesTex_common(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %3, i32 noundef %4) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_drawFacesGLSL(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !423 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 91
  %4 = load ptr, ptr %3, align 8, !tbaa !424
  tail call void %4(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_drawMappedFaces(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr noundef %4, i32 noundef %5) #0 !PGOFuncName !425 {
  %7 = alloca %struct.CCGKey, align 4
  %8 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #16
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %11 = load ptr, ptr %10, align 8, !tbaa !412
  %12 = tail call ptr %11(ptr noundef %0, i32 noundef 40) #14
  %13 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %9) #14
  %14 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !185
  %16 = and i32 %5, 1
  %17 = add i32 %13, -1
  call void @CCG_key_top_level(ptr noundef nonnull %7, ptr noundef %9) #14
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %6
  %20 = load ptr, ptr %10, align 8, !tbaa !412
  %21 = call ptr %20(ptr noundef nonnull %0, i32 noundef 20) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load ptr, ptr %10, align 8, !tbaa !412
  %25 = call ptr %24(ptr noundef nonnull %0, i32 noundef 6) #14
  br label %26

26:                                               ; preds = %19, %23, %6
  %27 = phi ptr [ %21, %19 ], [ %25, %23 ], [ null, %6 ]
  %28 = call i32 @ccgSubSurf_getNumFaces(ptr noundef %9) #14
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %282

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %32 = and i32 %5, 2
  %33 = icmp ne i32 %32, 0
  %34 = icmp eq ptr %15, null
  %35 = select i1 %33, i1 true, i1 %34
  %36 = mul nsw i32 %17, %17
  %37 = icmp eq ptr %1, null
  %38 = icmp sgt i32 %13, 1
  %39 = add nsw i32 %13, -2
  %40 = zext nneg i32 %28 to i64
  br label %41

41:                                               ; preds = %30, %279
  %42 = phi i64 [ 0, %30 ], [ %280, %279 ]
  %43 = phi ptr [ %27, %30 ], [ %71, %279 ]
  %44 = phi ptr [ %12, %30 ], [ %75, %279 ]
  %45 = load ptr, ptr %31, align 8, !tbaa !44
  %46 = getelementptr inbounds %struct.anon.0, ptr %45, i64 %42, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !45
  %48 = call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %47) #14
  %49 = call fastcc i32 @ccgDM_getFaceMapIndex(ptr noundef %9, ptr noundef %47) #15
  %50 = call ptr @ccgSubSurf_getFaceFaceHandle(ptr noundef %47) #14
  %51 = ptrtoint ptr %50 to i64
  br i1 %35, label %64, label %52

52:                                               ; preds = %41
  %53 = icmp eq ptr %44, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %52
  %55 = shl i64 %51, 32
  %56 = ashr exact i64 %55, 32
  %57 = getelementptr inbounds %struct.DMFlagMat, ptr %15, i64 %56, i32 1
  %58 = load i8, ptr %57, align 2, !tbaa !258
  %59 = and i8 %58, 1
  %60 = icmp ne i8 %59, 0
  br label %61

61:                                               ; preds = %54, %52
  %62 = phi i1 [ true, %52 ], [ %60, %54 ]
  %63 = zext i1 %62 to i32
  br label %64

64:                                               ; preds = %41, %61
  %65 = phi i32 [ %63, %61 ], [ 1, %41 ]
  %66 = icmp eq ptr %43, null
  %67 = mul nsw i32 %36, %48
  %68 = shl nsw i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.MCol, ptr %43, i64 %69
  %71 = select i1 %66, ptr null, ptr %70
  %72 = icmp eq ptr %44, null
  %73 = sext i32 %67 to i64
  %74 = getelementptr inbounds [4 x [3 x i16]], ptr %44, i64 %73
  %75 = select i1 %72, ptr null, ptr %74
  %76 = icmp eq i32 %49, -1
  br i1 %76, label %77, label %88

77:                                               ; preds = %64
  br i1 %34, label %85, label %78

78:                                               ; preds = %77
  %79 = shl i64 %51, 32
  %80 = ashr exact i64 %79, 32
  %81 = getelementptr inbounds %struct.DMFlagMat, ptr %15, i64 %80
  %82 = load i16, ptr %81, align 2, !tbaa !192
  %83 = sext i16 %82 to i32
  %84 = add nsw i32 %83, 1
  br label %85

85:                                               ; preds = %77, %78
  %86 = phi i32 [ %84, %78 ], [ 1, %77 ]
  %87 = call i32 %2(i32 noundef %86, ptr noundef null) #14
  br label %91

88:                                               ; preds = %64
  br i1 %37, label %94, label %89

89:                                               ; preds = %88
  %90 = call i32 %1(ptr noundef %4, i32 noundef %49) #14
  br label %91

91:                                               ; preds = %89, %85
  %92 = phi i32 [ %87, %85 ], [ %90, %89 ]
  switch i32 %92, label %94 [
    i32 0, label %279
    i32 3, label %93
  ]

93:                                               ; preds = %91
  call void @glEnable(i32 noundef 2882) #14
  call void @glPolygonStipple(ptr noundef nonnull @stipple_quarttone) #14
  br label %94

94:                                               ; preds = %91, %88, %93
  %95 = phi i1 [ true, %93 ], [ false, %88 ], [ false, %91 ]
  call void @glShadeModel(i32 noundef 7425) #14
  %96 = icmp sgt i32 %48, 0
  br i1 %96, label %97, label %277

97:                                               ; preds = %94
  %98 = icmp eq i32 %65, 0
  br label %99

99:                                               ; preds = %97, %272
  %100 = phi i32 [ 0, %97 ], [ %275, %272 ]
  %101 = phi ptr [ %43, %97 ], [ %274, %272 ]
  %102 = phi ptr [ %44, %97 ], [ %273, %272 ]
  %103 = call ptr @ccgSubSurf_getFaceGridDataArray(ptr noundef %9, ptr noundef %47, i32 noundef %100) #14
  %104 = icmp eq ptr %102, null
  br i1 %104, label %162, label %105

105:                                              ; preds = %99
  call void @glBegin(i32 noundef 7) #14
  br i1 %38, label %106, label %269

106:                                              ; preds = %105, %160
  %107 = phi i32 [ %110, %160 ], [ 0, %105 ]
  %108 = phi ptr [ %157, %160 ], [ %101, %105 ]
  %109 = phi ptr [ %158, %160 ], [ %102, %105 ]
  %110 = add nuw nsw i32 %107, 1
  br label %111

111:                                              ; preds = %106, %155
  %112 = phi i32 [ 0, %106 ], [ %116, %155 ]
  %113 = phi ptr [ %108, %106 ], [ %157, %155 ]
  %114 = phi ptr [ %109, %106 ], [ %158, %155 ]
  %115 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %7, ptr noundef %103, i32 noundef %112, i32 noundef %107) #15
  %116 = add nuw nsw i32 %112, 1
  %117 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %7, ptr noundef %103, i32 noundef %116, i32 noundef %107) #15
  %118 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %7, ptr noundef %103, i32 noundef %116, i32 noundef %110) #15
  %119 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %7, ptr noundef %103, i32 noundef %112, i32 noundef %110) #15
  %120 = icmp eq ptr %113, null
  br i1 %120, label %135, label %121

121:                                              ; preds = %111
  %122 = getelementptr inbounds i8, ptr %113, i64 7
  %123 = load i8, ptr %122, align 1, !tbaa !426
  %124 = getelementptr inbounds i8, ptr %113, i64 6
  %125 = load i8, ptr %124, align 1, !tbaa !426
  %126 = getelementptr inbounds i8, ptr %113, i64 5
  %127 = load i8, ptr %126, align 1, !tbaa !426
  call void @glColor3ub(i8 noundef zeroext %123, i8 noundef zeroext %125, i8 noundef zeroext %127) #14
  %128 = getelementptr inbounds [4 x [3 x i16]], ptr %114, i64 0, i64 1
  call void @glNormal3sv(ptr noundef nonnull %128) #14
  call void @glVertex3fv(ptr noundef %119) #14
  %129 = getelementptr inbounds i8, ptr %113, i64 11
  %130 = load i8, ptr %129, align 1, !tbaa !426
  %131 = getelementptr inbounds i8, ptr %113, i64 10
  %132 = load i8, ptr %131, align 1, !tbaa !426
  %133 = getelementptr inbounds i8, ptr %113, i64 9
  %134 = load i8, ptr %133, align 1, !tbaa !426
  call void @glColor3ub(i8 noundef zeroext %130, i8 noundef zeroext %132, i8 noundef zeroext %134) #14
  br label %137

135:                                              ; preds = %111
  %136 = getelementptr inbounds [4 x [3 x i16]], ptr %114, i64 0, i64 1
  call void @glNormal3sv(ptr noundef nonnull %136) #14
  call void @glVertex3fv(ptr noundef %119) #14
  br label %137

137:                                              ; preds = %135, %121
  %138 = getelementptr inbounds [4 x [3 x i16]], ptr %114, i64 0, i64 2
  call void @glNormal3sv(ptr noundef nonnull %138) #14
  call void @glVertex3fv(ptr noundef %118) #14
  br i1 %120, label %153, label %139

139:                                              ; preds = %137
  %140 = getelementptr inbounds i8, ptr %113, i64 15
  %141 = load i8, ptr %140, align 1, !tbaa !426
  %142 = getelementptr inbounds i8, ptr %113, i64 14
  %143 = load i8, ptr %142, align 1, !tbaa !426
  %144 = getelementptr inbounds i8, ptr %113, i64 13
  %145 = load i8, ptr %144, align 1, !tbaa !426
  call void @glColor3ub(i8 noundef zeroext %141, i8 noundef zeroext %143, i8 noundef zeroext %145) #14
  %146 = getelementptr inbounds [4 x [3 x i16]], ptr %114, i64 0, i64 3
  call void @glNormal3sv(ptr noundef nonnull %146) #14
  call void @glVertex3fv(ptr noundef %117) #14
  %147 = getelementptr inbounds i8, ptr %113, i64 3
  %148 = load i8, ptr %147, align 1, !tbaa !426
  %149 = getelementptr inbounds i8, ptr %113, i64 2
  %150 = load i8, ptr %149, align 1, !tbaa !426
  %151 = getelementptr inbounds i8, ptr %113, i64 1
  %152 = load i8, ptr %151, align 1, !tbaa !426
  call void @glColor3ub(i8 noundef zeroext %148, i8 noundef zeroext %150, i8 noundef zeroext %152) #14
  br label %155

153:                                              ; preds = %137
  %154 = getelementptr inbounds [4 x [3 x i16]], ptr %114, i64 0, i64 3
  call void @glNormal3sv(ptr noundef nonnull %154) #14
  call void @glVertex3fv(ptr noundef %117) #14
  br label %155

155:                                              ; preds = %153, %139
  call void @glNormal3sv(ptr noundef nonnull %114) #14
  call void @glVertex3fv(ptr noundef %115) #14
  %156 = getelementptr inbounds i8, ptr %113, i64 16
  %157 = select i1 %120, ptr null, ptr %156
  %158 = getelementptr inbounds [4 x [3 x i16]], ptr %114, i64 1
  %159 = icmp eq i32 %116, %17
  br i1 %159, label %160, label %111, !llvm.loop !427

160:                                              ; preds = %155
  %161 = icmp eq i32 %110, %17
  br i1 %161, label %269, label %106, !llvm.loop !428

162:                                              ; preds = %99
  br i1 %98, label %223, label %163

163:                                              ; preds = %162
  br i1 %38, label %164, label %272

164:                                              ; preds = %163, %218
  %165 = phi i32 [ %167, %218 ], [ 0, %163 ]
  %166 = phi ptr [ %221, %218 ], [ %101, %163 ]
  call void @glBegin(i32 noundef 8) #14
  %167 = add nuw nsw i32 %165, 1
  br label %168

168:                                              ; preds = %164, %190
  %169 = phi i32 [ 0, %164 ], [ %196, %190 ]
  %170 = phi ptr [ %166, %164 ], [ %195, %190 ]
  %171 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %7, ptr noundef %103, i32 noundef %169, i32 noundef %165) #15
  %172 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %7, ptr noundef %103, i32 noundef %169, i32 noundef %167) #15
  %173 = icmp ne ptr %170, null
  br i1 %173, label %174, label %188

174:                                              ; preds = %168
  %175 = getelementptr inbounds i8, ptr %170, i64 3
  %176 = load i8, ptr %175, align 1, !tbaa !426
  %177 = getelementptr inbounds i8, ptr %170, i64 2
  %178 = load i8, ptr %177, align 1, !tbaa !426
  %179 = getelementptr inbounds i8, ptr %170, i64 1
  %180 = load i8, ptr %179, align 1, !tbaa !426
  call void @glColor3ub(i8 noundef zeroext %176, i8 noundef zeroext %178, i8 noundef zeroext %180) #14
  %181 = call fastcc ptr @CCG_elem_no(ptr noundef nonnull %7, ptr noundef %171) #15
  call void @glNormal3fv(ptr noundef %181) #14
  call void @glVertex3fv(ptr noundef %171) #14
  %182 = getelementptr inbounds i8, ptr %170, i64 7
  %183 = load i8, ptr %182, align 1, !tbaa !426
  %184 = getelementptr inbounds i8, ptr %170, i64 6
  %185 = load i8, ptr %184, align 1, !tbaa !426
  %186 = getelementptr inbounds i8, ptr %170, i64 5
  %187 = load i8, ptr %186, align 1, !tbaa !426
  call void @glColor3ub(i8 noundef zeroext %183, i8 noundef zeroext %185, i8 noundef zeroext %187) #14
  br label %190

188:                                              ; preds = %168
  %189 = call fastcc ptr @CCG_elem_no(ptr noundef nonnull %7, ptr noundef %171) #15
  call void @glNormal3fv(ptr noundef %189) #14
  call void @glVertex3fv(ptr noundef %171) #14
  br label %190

190:                                              ; preds = %188, %174
  %191 = call fastcc ptr @CCG_elem_no(ptr noundef nonnull %7, ptr noundef %172) #15
  call void @glNormal3fv(ptr noundef %191) #14
  call void @glVertex3fv(ptr noundef %172) #14
  %192 = icmp ne i32 %169, %39
  %193 = and i1 %173, %192
  %194 = select i1 %193, i64 16, i64 0
  %195 = getelementptr inbounds i8, ptr %170, i64 %194
  %196 = add nuw nsw i32 %169, 1
  %197 = icmp eq i32 %196, %17
  br i1 %197, label %198, label %168, !llvm.loop !429

198:                                              ; preds = %190
  %199 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %7, ptr noundef %103, i32 noundef %17, i32 noundef %165) #15
  %200 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %7, ptr noundef %103, i32 noundef %17, i32 noundef %167) #15
  %201 = icmp eq ptr %170, null
  br i1 %201, label %216, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %195, i64 15
  %204 = load i8, ptr %203, align 1, !tbaa !426
  %205 = getelementptr inbounds i8, ptr %195, i64 14
  %206 = load i8, ptr %205, align 1, !tbaa !426
  %207 = getelementptr inbounds i8, ptr %195, i64 13
  %208 = load i8, ptr %207, align 1, !tbaa !426
  call void @glColor3ub(i8 noundef zeroext %204, i8 noundef zeroext %206, i8 noundef zeroext %208) #14
  %209 = call fastcc ptr @CCG_elem_no(ptr noundef nonnull %7, ptr noundef %199) #15
  call void @glNormal3fv(ptr noundef %209) #14
  call void @glVertex3fv(ptr noundef %199) #14
  %210 = getelementptr inbounds i8, ptr %195, i64 11
  %211 = load i8, ptr %210, align 1, !tbaa !426
  %212 = getelementptr inbounds i8, ptr %195, i64 10
  %213 = load i8, ptr %212, align 1, !tbaa !426
  %214 = getelementptr inbounds i8, ptr %195, i64 9
  %215 = load i8, ptr %214, align 1, !tbaa !426
  call void @glColor3ub(i8 noundef zeroext %211, i8 noundef zeroext %213, i8 noundef zeroext %215) #14
  br label %218

216:                                              ; preds = %198
  %217 = call fastcc ptr @CCG_elem_no(ptr noundef nonnull %7, ptr noundef %199) #15
  call void @glNormal3fv(ptr noundef %217) #14
  call void @glVertex3fv(ptr noundef %199) #14
  br label %218

218:                                              ; preds = %216, %202
  %219 = call fastcc ptr @CCG_elem_no(ptr noundef nonnull %7, ptr noundef %200) #15
  call void @glNormal3fv(ptr noundef %219) #14
  call void @glVertex3fv(ptr noundef %200) #14
  %220 = getelementptr inbounds i8, ptr %195, i64 16
  %221 = select i1 %201, ptr null, ptr %220
  call void @glEnd() #14
  %222 = icmp eq i32 %167, %17
  br i1 %222, label %272, label %164, !llvm.loop !430

223:                                              ; preds = %162
  call void @glBegin(i32 noundef 7) #14
  br i1 %38, label %224, label %269

224:                                              ; preds = %223, %267
  %225 = phi i32 [ %227, %267 ], [ 0, %223 ]
  %226 = phi ptr [ %265, %267 ], [ %101, %223 ]
  %227 = add nuw nsw i32 %225, 1
  br label %228

228:                                              ; preds = %224, %263
  %229 = phi i32 [ 0, %224 ], [ %232, %263 ]
  %230 = phi ptr [ %226, %224 ], [ %265, %263 ]
  %231 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %7, ptr noundef %103, i32 noundef %229, i32 noundef %225) #15
  %232 = add nuw nsw i32 %229, 1
  %233 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %7, ptr noundef %103, i32 noundef %232, i32 noundef %225) #15
  %234 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %7, ptr noundef %103, i32 noundef %232, i32 noundef %227) #15
  %235 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %7, ptr noundef %103, i32 noundef %229, i32 noundef %227) #15
  call fastcc void @ccgDM_glNormalFast(ptr noundef %231, ptr noundef %233, ptr noundef %234, ptr noundef %235) #15
  %236 = icmp eq ptr %230, null
  br i1 %236, label %262, label %237

237:                                              ; preds = %228
  %238 = getelementptr inbounds i8, ptr %230, i64 7
  %239 = load i8, ptr %238, align 1, !tbaa !426
  %240 = getelementptr inbounds i8, ptr %230, i64 6
  %241 = load i8, ptr %240, align 1, !tbaa !426
  %242 = getelementptr inbounds i8, ptr %230, i64 5
  %243 = load i8, ptr %242, align 1, !tbaa !426
  call void @glColor3ub(i8 noundef zeroext %239, i8 noundef zeroext %241, i8 noundef zeroext %243) #14
  call void @glVertex3fv(ptr noundef %235) #14
  %244 = getelementptr inbounds i8, ptr %230, i64 11
  %245 = load i8, ptr %244, align 1, !tbaa !426
  %246 = getelementptr inbounds i8, ptr %230, i64 10
  %247 = load i8, ptr %246, align 1, !tbaa !426
  %248 = getelementptr inbounds i8, ptr %230, i64 9
  %249 = load i8, ptr %248, align 1, !tbaa !426
  call void @glColor3ub(i8 noundef zeroext %245, i8 noundef zeroext %247, i8 noundef zeroext %249) #14
  call void @glVertex3fv(ptr noundef %234) #14
  %250 = getelementptr inbounds i8, ptr %230, i64 15
  %251 = load i8, ptr %250, align 1, !tbaa !426
  %252 = getelementptr inbounds i8, ptr %230, i64 14
  %253 = load i8, ptr %252, align 1, !tbaa !426
  %254 = getelementptr inbounds i8, ptr %230, i64 13
  %255 = load i8, ptr %254, align 1, !tbaa !426
  call void @glColor3ub(i8 noundef zeroext %251, i8 noundef zeroext %253, i8 noundef zeroext %255) #14
  call void @glVertex3fv(ptr noundef %233) #14
  %256 = getelementptr inbounds i8, ptr %230, i64 3
  %257 = load i8, ptr %256, align 1, !tbaa !426
  %258 = getelementptr inbounds i8, ptr %230, i64 2
  %259 = load i8, ptr %258, align 1, !tbaa !426
  %260 = getelementptr inbounds i8, ptr %230, i64 1
  %261 = load i8, ptr %260, align 1, !tbaa !426
  call void @glColor3ub(i8 noundef zeroext %257, i8 noundef zeroext %259, i8 noundef zeroext %261) #14
  br label %263

262:                                              ; preds = %228
  call void @glVertex3fv(ptr noundef %235) #14
  call void @glVertex3fv(ptr noundef %234) #14
  call void @glVertex3fv(ptr noundef %233) #14
  br label %263

263:                                              ; preds = %262, %237
  call void @glVertex3fv(ptr noundef %231) #14
  %264 = getelementptr inbounds i8, ptr %230, i64 16
  %265 = select i1 %236, ptr null, ptr %264
  %266 = icmp eq i32 %232, %17
  br i1 %266, label %267, label %228, !llvm.loop !431

267:                                              ; preds = %263
  %268 = icmp eq i32 %227, %17
  br i1 %268, label %269, label %224, !llvm.loop !432

269:                                              ; preds = %160, %267, %223, %105
  %270 = phi ptr [ %102, %105 ], [ null, %223 ], [ null, %267 ], [ %158, %160 ]
  %271 = phi ptr [ %101, %105 ], [ %101, %223 ], [ %265, %267 ], [ %157, %160 ]
  call void @glEnd() #14
  br label %272

272:                                              ; preds = %218, %269, %163
  %273 = phi ptr [ null, %163 ], [ %270, %269 ], [ null, %218 ]
  %274 = phi ptr [ %101, %163 ], [ %271, %269 ], [ %221, %218 ]
  %275 = add nuw nsw i32 %100, 1
  %276 = icmp eq i32 %275, %48
  br i1 %276, label %277, label %99, !llvm.loop !433

277:                                              ; preds = %272, %94
  br i1 %95, label %278, label %279

278:                                              ; preds = %277
  call void @glDisable(i32 noundef 2882) #14
  br label %279

279:                                              ; preds = %91, %277, %278
  %280 = add nuw nsw i64 %42, 1
  %281 = icmp eq i64 %280, %40
  br i1 %281, label %282, label %41, !llvm.loop !434

282:                                              ; preds = %279, %26
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_drawMappedFacesTex(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3, i32 noundef %4) #0 !PGOFuncName !435 {
  tail call fastcc void @ccgDM_drawFacesTex_common(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %3, i32 noundef %4) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_drawMappedFacesGLSL(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !436 {
  %5 = alloca %struct.CCGKey, align 4
  %6 = alloca %struct.GPUVertexAttribs, align 4
  %7 = alloca %struct.DMVertexAttribs, align 8
  %8 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 2564, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %7, i8 0, i64 376, i1 false)
  %10 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %9) #14
  %11 = add i32 %10, -1
  %12 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %9) #14
  %13 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !185
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %16 = load ptr, ptr %15, align 8, !tbaa !412
  %17 = tail call ptr %16(ptr noundef %0, i32 noundef 40) #14
  call void @CCG_key_top_level(ptr noundef nonnull %5, ptr noundef %9) #14
  call fastcc void @ccgdm_pbvh_update(ptr noundef %0) #15
  %18 = call i32 @ccgSubSurf_getNumFaces(ptr noundef %9) #14
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %246

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %22 = icmp eq ptr %14, null
  %23 = mul nsw i32 %11, %11
  %24 = icmp ne ptr %2, null
  %25 = icmp sgt i32 %10, 1
  %26 = getelementptr inbounds %struct.DMVertexAttribs, ptr %7, i64 0, i32 7
  %27 = add nsw i32 %10, -2
  %28 = zext nneg i32 %18 to i64
  br label %29

29:                                               ; preds = %20, %240
  %30 = phi i64 [ 0, %20 ], [ %244, %240 ]
  %31 = phi ptr [ %17, %20 ], [ %65, %240 ]
  %32 = phi i32 [ 0, %20 ], [ %243, %240 ]
  %33 = phi i32 [ 0, %20 ], [ %241, %240 ]
  %34 = phi i32 [ -1, %20 ], [ %242, %240 ]
  %35 = load ptr, ptr %21, align 8, !tbaa !44
  %36 = getelementptr inbounds %struct.anon.0, ptr %35, i64 %30, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !45
  %38 = call ptr @ccgSubSurf_getFaceFaceHandle(ptr noundef %37) #14
  %39 = call fastcc i32 @ccgDM_getFaceMapIndex(ptr noundef %9, ptr noundef %37) #15
  %40 = call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %37) #14
  br i1 %22, label %58, label %41

41:                                               ; preds = %29
  %42 = ptrtoint ptr %38 to i64
  %43 = icmp eq ptr %31, null
  %44 = shl i64 %42, 32
  %45 = ashr exact i64 %44, 32
  br i1 %43, label %46, label %51

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.DMFlagMat, ptr %14, i64 %45, i32 1
  %48 = load i8, ptr %47, align 2, !tbaa !258
  %49 = and i8 %48, 1
  %50 = icmp ne i8 %49, 0
  br label %51

51:                                               ; preds = %41, %46
  %52 = phi i1 [ %50, %46 ], [ true, %41 ]
  %53 = zext i1 %52 to i32
  %54 = getelementptr inbounds %struct.DMFlagMat, ptr %14, i64 %45
  %55 = load i16, ptr %54, align 2, !tbaa !192
  %56 = sext i16 %55 to i32
  %57 = add nsw i32 %56, 1
  br label %58

58:                                               ; preds = %29, %51
  %59 = phi i32 [ %53, %51 ], [ 1, %29 ]
  %60 = phi i32 [ %57, %51 ], [ 1, %29 ]
  %61 = icmp eq ptr %31, null
  %62 = mul nsw i32 %23, %40
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x [3 x i16]], ptr %31, i64 %63
  %65 = select i1 %61, ptr null, ptr %64
  %66 = icmp eq i32 %60, %34
  br i1 %66, label %71, label %67

67:                                               ; preds = %58
  %68 = call i32 %1(i32 noundef %60, ptr noundef nonnull %6) #14
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %67
  call void @DM_vertex_attributes_from_gpu(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  br label %73

71:                                               ; preds = %58
  %72 = icmp eq i32 %33, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %70, %71
  %74 = phi i32 [ %68, %70 ], [ %33, %71 ]
  %75 = phi i32 [ %60, %70 ], [ %34, %71 ]
  %76 = icmp ne i32 %39, -1
  %77 = select i1 %24, i1 %76, i1 false
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = call i32 %2(ptr noundef %3, i32 noundef %39) #14
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %67, %78, %71
  %82 = phi i32 [ %74, %78 ], [ 0, %71 ], [ 0, %67 ]
  %83 = phi i32 [ %75, %78 ], [ %34, %71 ], [ %60, %67 ]
  %84 = add nsw i32 %62, %32
  br label %240

85:                                               ; preds = %78, %73
  %86 = icmp eq i32 %59, 0
  %87 = select i1 %86, i32 7424, i32 7425
  call void @glShadeModel(i32 noundef %87) #14
  %88 = icmp sgt i32 %40, 0
  br i1 %88, label %89, label %240

89:                                               ; preds = %85, %235
  %90 = phi i32 [ %237, %235 ], [ %32, %85 ]
  %91 = phi ptr [ %236, %235 ], [ %31, %85 ]
  %92 = phi i32 [ %238, %235 ], [ 0, %85 ]
  %93 = call ptr @ccgSubSurf_getFaceGridDataArray(ptr noundef %9, ptr noundef %37, i32 noundef %92) #14
  %94 = icmp eq ptr %91, null
  br i1 %94, label %142, label %95

95:                                               ; preds = %89
  call void @glBegin(i32 noundef 7) #14
  br i1 %25, label %96, label %232

96:                                               ; preds = %95, %140
  %97 = phi i32 [ %138, %140 ], [ %90, %95 ]
  %98 = phi ptr [ %137, %140 ], [ %91, %95 ]
  %99 = phi i32 [ %100, %140 ], [ 0, %95 ]
  %100 = add nuw nsw i32 %99, 1
  br label %101

101:                                              ; preds = %96, %135
  %102 = phi i32 [ %97, %96 ], [ %138, %135 ]
  %103 = phi ptr [ %98, %96 ], [ %137, %135 ]
  %104 = phi i32 [ 0, %96 ], [ %106, %135 ]
  %105 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %5, ptr noundef %93, i32 noundef %104, i32 noundef %99) #15
  %106 = add nuw nsw i32 %104, 1
  %107 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %5, ptr noundef %93, i32 noundef %106, i32 noundef %99) #15
  %108 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %5, ptr noundef %93, i32 noundef %106, i32 noundef %100) #15
  %109 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %5, ptr noundef %93, i32 noundef %104, i32 noundef %100) #15
  %110 = load i32, ptr %26, align 4, !tbaa !437
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %101
  %113 = call fastcc i32 @getFaceIndex(ptr noundef %9, ptr noundef %37, i32 noundef %92, i32 noundef %104, i32 noundef %100, i32 noundef %12, i32 noundef %10) #15
  br label %114

114:                                              ; preds = %101, %112
  %115 = phi i32 [ %113, %112 ], [ 0, %101 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %7, i32 noundef %102, i32 noundef %115, i32 noundef 1) #15
  %116 = getelementptr inbounds [4 x [3 x i16]], ptr %103, i64 0, i64 1
  call void @glNormal3sv(ptr noundef nonnull %116) #14
  call void @glVertex3fv(ptr noundef %109) #14
  %117 = load i32, ptr %26, align 4, !tbaa !437
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %114
  %120 = call fastcc i32 @getFaceIndex(ptr noundef %9, ptr noundef %37, i32 noundef %92, i32 noundef %106, i32 noundef %100, i32 noundef %12, i32 noundef %10) #15
  br label %121

121:                                              ; preds = %114, %119
  %122 = phi i32 [ %120, %119 ], [ 0, %114 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %7, i32 noundef %102, i32 noundef %122, i32 noundef 2) #15
  %123 = getelementptr inbounds [4 x [3 x i16]], ptr %103, i64 0, i64 2
  call void @glNormal3sv(ptr noundef nonnull %123) #14
  call void @glVertex3fv(ptr noundef %108) #14
  %124 = load i32, ptr %26, align 4, !tbaa !437
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %121
  %127 = call fastcc i32 @getFaceIndex(ptr noundef %9, ptr noundef %37, i32 noundef %92, i32 noundef %106, i32 noundef %99, i32 noundef %12, i32 noundef %10) #15
  br label %128

128:                                              ; preds = %121, %126
  %129 = phi i32 [ %127, %126 ], [ 0, %121 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %7, i32 noundef %102, i32 noundef %129, i32 noundef 3) #15
  %130 = getelementptr inbounds [4 x [3 x i16]], ptr %103, i64 0, i64 3
  call void @glNormal3sv(ptr noundef nonnull %130) #14
  call void @glVertex3fv(ptr noundef %107) #14
  %131 = load i32, ptr %26, align 4, !tbaa !437
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %128
  %134 = call fastcc i32 @getFaceIndex(ptr noundef %9, ptr noundef %37, i32 noundef %92, i32 noundef %104, i32 noundef %99, i32 noundef %12, i32 noundef %10) #15
  br label %135

135:                                              ; preds = %128, %133
  %136 = phi i32 [ %134, %133 ], [ 0, %128 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %7, i32 noundef %102, i32 noundef %136, i32 noundef 0) #15
  call void @glNormal3sv(ptr noundef nonnull %103) #14
  call void @glVertex3fv(ptr noundef %105) #14
  %137 = getelementptr inbounds [4 x [3 x i16]], ptr %103, i64 1
  %138 = add nsw i32 %102, 1
  %139 = icmp eq i32 %106, %11
  br i1 %139, label %140, label %101, !llvm.loop !441

140:                                              ; preds = %135
  %141 = icmp eq i32 %100, %11
  br i1 %141, label %232, label %96, !llvm.loop !442

142:                                              ; preds = %89
  br i1 %86, label %191, label %143

143:                                              ; preds = %142
  br i1 %25, label %144, label %235

144:                                              ; preds = %143, %186
  %145 = phi i32 [ %189, %186 ], [ %90, %143 ]
  %146 = phi i32 [ %147, %186 ], [ 0, %143 ]
  call void @glBegin(i32 noundef 8) #14
  %147 = add nuw nsw i32 %146, 1
  br label %148

148:                                              ; preds = %144, %164
  %149 = phi i32 [ %145, %144 ], [ %169, %164 ]
  %150 = phi i32 [ 0, %144 ], [ %170, %164 ]
  %151 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %5, ptr noundef %93, i32 noundef %150, i32 noundef %146) #15
  %152 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %5, ptr noundef %93, i32 noundef %150, i32 noundef %147) #15
  %153 = load i32, ptr %26, align 4, !tbaa !437
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %148
  %156 = call fastcc i32 @getFaceIndex(ptr noundef %9, ptr noundef %37, i32 noundef %92, i32 noundef %150, i32 noundef %146, i32 noundef %12, i32 noundef %10) #15
  br label %157

157:                                              ; preds = %148, %155
  %158 = phi i32 [ %156, %155 ], [ 0, %148 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %7, i32 noundef %149, i32 noundef %158, i32 noundef 0) #15
  %159 = call fastcc ptr @CCG_elem_no(ptr noundef nonnull %5, ptr noundef %151) #15
  call void @glNormal3fv(ptr noundef %159) #14
  call void @glVertex3fv(ptr noundef %151) #14
  %160 = load i32, ptr %26, align 4, !tbaa !437
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %157
  %163 = call fastcc i32 @getFaceIndex(ptr noundef %9, ptr noundef %37, i32 noundef %92, i32 noundef %150, i32 noundef %147, i32 noundef %12, i32 noundef %10) #15
  br label %164

164:                                              ; preds = %157, %162
  %165 = phi i32 [ %163, %162 ], [ 0, %157 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %7, i32 noundef %149, i32 noundef %165, i32 noundef 1) #15
  %166 = call fastcc ptr @CCG_elem_no(ptr noundef nonnull %5, ptr noundef %152) #15
  call void @glNormal3fv(ptr noundef %166) #14
  call void @glVertex3fv(ptr noundef %152) #14
  %167 = icmp ne i32 %150, %27
  %168 = zext i1 %167 to i32
  %169 = add nsw i32 %149, %168
  %170 = add nuw nsw i32 %150, 1
  %171 = icmp eq i32 %170, %11
  br i1 %171, label %172, label %148, !llvm.loop !443

172:                                              ; preds = %164
  %173 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %5, ptr noundef %93, i32 noundef %11, i32 noundef %146) #15
  %174 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %5, ptr noundef %93, i32 noundef %11, i32 noundef %147) #15
  %175 = load i32, ptr %26, align 4, !tbaa !437
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %172
  %178 = call fastcc i32 @getFaceIndex(ptr noundef %9, ptr noundef %37, i32 noundef %92, i32 noundef %11, i32 noundef %146, i32 noundef %12, i32 noundef %10) #15
  br label %179

179:                                              ; preds = %172, %177
  %180 = phi i32 [ %178, %177 ], [ 0, %172 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %7, i32 noundef %169, i32 noundef %180, i32 noundef 3) #15
  %181 = call fastcc ptr @CCG_elem_no(ptr noundef nonnull %5, ptr noundef %173) #15
  call void @glNormal3fv(ptr noundef %181) #14
  call void @glVertex3fv(ptr noundef %173) #14
  %182 = load i32, ptr %26, align 4, !tbaa !437
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %179
  %185 = call fastcc i32 @getFaceIndex(ptr noundef %9, ptr noundef %37, i32 noundef %92, i32 noundef %11, i32 noundef %147, i32 noundef %12, i32 noundef %10) #15
  br label %186

186:                                              ; preds = %179, %184
  %187 = phi i32 [ %185, %184 ], [ 0, %179 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %7, i32 noundef %169, i32 noundef %187, i32 noundef 2) #15
  %188 = call fastcc ptr @CCG_elem_no(ptr noundef nonnull %5, ptr noundef %174) #15
  call void @glNormal3fv(ptr noundef %188) #14
  call void @glVertex3fv(ptr noundef %174) #14
  call void @glEnd() #14
  %189 = add nsw i32 %169, 1
  %190 = icmp eq i32 %147, %11
  br i1 %190, label %235, label %144, !llvm.loop !444

191:                                              ; preds = %142
  call void @glBegin(i32 noundef 7) #14
  br i1 %25, label %192, label %232

192:                                              ; preds = %191, %230
  %193 = phi i32 [ %228, %230 ], [ %90, %191 ]
  %194 = phi i32 [ %195, %230 ], [ 0, %191 ]
  %195 = add nuw nsw i32 %194, 1
  br label %196

196:                                              ; preds = %192, %226
  %197 = phi i32 [ %193, %192 ], [ %228, %226 ]
  %198 = phi i32 [ 0, %192 ], [ %200, %226 ]
  %199 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %5, ptr noundef %93, i32 noundef %198, i32 noundef %194) #15
  %200 = add nuw nsw i32 %198, 1
  %201 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %5, ptr noundef %93, i32 noundef %200, i32 noundef %194) #15
  %202 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %5, ptr noundef %93, i32 noundef %200, i32 noundef %195) #15
  %203 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %5, ptr noundef %93, i32 noundef %198, i32 noundef %195) #15
  call fastcc void @ccgDM_glNormalFast(ptr noundef %199, ptr noundef %201, ptr noundef %202, ptr noundef %203) #15
  %204 = load i32, ptr %26, align 4, !tbaa !437
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %196
  %207 = call fastcc i32 @getFaceIndex(ptr noundef %9, ptr noundef %37, i32 noundef %92, i32 noundef %198, i32 noundef %195, i32 noundef %12, i32 noundef %10) #15
  br label %208

208:                                              ; preds = %196, %206
  %209 = phi i32 [ %207, %206 ], [ 0, %196 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %7, i32 noundef %197, i32 noundef %209, i32 noundef 1) #15
  call void @glVertex3fv(ptr noundef %203) #14
  %210 = load i32, ptr %26, align 4, !tbaa !437
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %208
  %213 = call fastcc i32 @getFaceIndex(ptr noundef %9, ptr noundef %37, i32 noundef %92, i32 noundef %200, i32 noundef %195, i32 noundef %12, i32 noundef %10) #15
  br label %214

214:                                              ; preds = %208, %212
  %215 = phi i32 [ %213, %212 ], [ 0, %208 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %7, i32 noundef %197, i32 noundef %215, i32 noundef 2) #15
  call void @glVertex3fv(ptr noundef %202) #14
  %216 = load i32, ptr %26, align 4, !tbaa !437
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %214
  %219 = call fastcc i32 @getFaceIndex(ptr noundef %9, ptr noundef %37, i32 noundef %92, i32 noundef %200, i32 noundef %194, i32 noundef %12, i32 noundef %10) #15
  br label %220

220:                                              ; preds = %214, %218
  %221 = phi i32 [ %219, %218 ], [ 0, %214 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %7, i32 noundef %197, i32 noundef %221, i32 noundef 3) #15
  call void @glVertex3fv(ptr noundef %201) #14
  %222 = load i32, ptr %26, align 4, !tbaa !437
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %220
  %225 = call fastcc i32 @getFaceIndex(ptr noundef %9, ptr noundef %37, i32 noundef %92, i32 noundef %198, i32 noundef %194, i32 noundef %12, i32 noundef %10) #15
  br label %226

226:                                              ; preds = %220, %224
  %227 = phi i32 [ %225, %224 ], [ 0, %220 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %7, i32 noundef %197, i32 noundef %227, i32 noundef 0) #15
  call void @glVertex3fv(ptr noundef %199) #14
  %228 = add nsw i32 %197, 1
  %229 = icmp eq i32 %200, %11
  br i1 %229, label %230, label %196, !llvm.loop !445

230:                                              ; preds = %226
  %231 = icmp eq i32 %195, %11
  br i1 %231, label %232, label %192, !llvm.loop !446

232:                                              ; preds = %140, %230, %191, %95
  %233 = phi ptr [ %91, %95 ], [ null, %191 ], [ null, %230 ], [ %137, %140 ]
  %234 = phi i32 [ %90, %95 ], [ %90, %191 ], [ %228, %230 ], [ %138, %140 ]
  call void @glEnd() #14
  br label %235

235:                                              ; preds = %186, %232, %143
  %236 = phi ptr [ null, %143 ], [ %233, %232 ], [ null, %186 ]
  %237 = phi i32 [ %90, %143 ], [ %234, %232 ], [ %189, %186 ]
  %238 = add nuw nsw i32 %92, 1
  %239 = icmp eq i32 %238, %40
  br i1 %239, label %240, label %89, !llvm.loop !447

240:                                              ; preds = %235, %85, %81
  %241 = phi i32 [ %82, %81 ], [ %74, %85 ], [ %74, %235 ]
  %242 = phi i32 [ %83, %81 ], [ %75, %85 ], [ %75, %235 ]
  %243 = phi i32 [ %84, %81 ], [ %32, %85 ], [ %237, %235 ]
  %244 = add nuw nsw i64 %30, 1
  %245 = icmp eq i64 %244, %28
  br i1 %245, label %246, label %29, !llvm.loop !448

246:                                              ; preds = %240, %4
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 2564, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_drawMappedFacesMat(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !449 {
  %5 = alloca %struct.CCGKey, align 4
  %6 = alloca %struct.GPUVertexAttribs, align 4
  %7 = alloca %struct.DMVertexAttribs, align 8
  %8 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 2564, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %7, i8 0, i64 376, i1 false)
  %10 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %9) #14
  %11 = add i32 %10, -1
  %12 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %9) #14
  %13 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !185
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %16 = load ptr, ptr %15, align 8, !tbaa !412
  %17 = tail call ptr %16(ptr noundef %0, i32 noundef 40) #14
  call void @CCG_key_top_level(ptr noundef nonnull %5, ptr noundef %9) #14
  call fastcc void @ccgdm_pbvh_update(ptr noundef %0) #15
  %18 = call i32 @ccgSubSurf_getNumFaces(ptr noundef %9) #14
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %235

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %22 = icmp eq ptr %14, null
  %23 = mul nsw i32 %11, %11
  %24 = icmp ne ptr %2, null
  %25 = icmp sgt i32 %10, 1
  %26 = getelementptr inbounds %struct.DMVertexAttribs, ptr %7, i64 0, i32 7
  %27 = add nsw i32 %10, -2
  %28 = zext nneg i32 %18 to i64
  br label %29

29:                                               ; preds = %20, %231
  %30 = phi i64 [ 0, %20 ], [ %233, %231 ]
  %31 = phi ptr [ %17, %20 ], [ %64, %231 ]
  %32 = phi i32 [ 0, %20 ], [ %232, %231 ]
  %33 = phi i32 [ -1, %20 ], [ %68, %231 ]
  %34 = load ptr, ptr %21, align 8, !tbaa !44
  %35 = getelementptr inbounds %struct.anon.0, ptr %34, i64 %30, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !45
  %37 = call ptr @ccgSubSurf_getFaceFaceHandle(ptr noundef %36) #14
  %38 = call fastcc i32 @ccgDM_getFaceMapIndex(ptr noundef %9, ptr noundef %36) #15
  %39 = call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %36) #14
  br i1 %22, label %57, label %40

40:                                               ; preds = %29
  %41 = ptrtoint ptr %37 to i64
  %42 = icmp eq ptr %31, null
  %43 = shl i64 %41, 32
  %44 = ashr exact i64 %43, 32
  br i1 %42, label %45, label %50

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.DMFlagMat, ptr %14, i64 %44, i32 1
  %47 = load i8, ptr %46, align 2, !tbaa !258
  %48 = and i8 %47, 1
  %49 = icmp ne i8 %48, 0
  br label %50

50:                                               ; preds = %40, %45
  %51 = phi i1 [ %49, %45 ], [ true, %40 ]
  %52 = zext i1 %51 to i32
  %53 = getelementptr inbounds %struct.DMFlagMat, ptr %14, i64 %44
  %54 = load i16, ptr %53, align 2, !tbaa !192
  %55 = sext i16 %54 to i32
  %56 = add nsw i32 %55, 1
  br label %57

57:                                               ; preds = %29, %50
  %58 = phi i32 [ %52, %50 ], [ 1, %29 ]
  %59 = phi i32 [ %56, %50 ], [ 1, %29 ]
  %60 = icmp eq ptr %31, null
  %61 = mul nsw i32 %23, %39
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [4 x [3 x i16]], ptr %31, i64 %62
  %64 = select i1 %60, ptr null, ptr %63
  %65 = icmp eq i32 %59, %33
  br i1 %65, label %67, label %66

66:                                               ; preds = %57
  call void %1(ptr noundef %3, i32 noundef %59, ptr noundef nonnull %6) #14
  call void @DM_vertex_attributes_from_gpu(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  br label %67

67:                                               ; preds = %66, %57
  %68 = phi i32 [ %59, %66 ], [ %33, %57 ]
  %69 = icmp ne i32 %38, -1
  %70 = select i1 %24, i1 %69, i1 false
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = call zeroext i8 %2(ptr noundef %3, i32 noundef %38) #14
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = add nsw i32 %61, %32
  br label %231

76:                                               ; preds = %71, %67
  %77 = icmp eq i32 %58, 0
  %78 = select i1 %77, i32 7424, i32 7425
  call void @glShadeModel(i32 noundef %78) #14
  %79 = icmp sgt i32 %39, 0
  br i1 %79, label %80, label %231

80:                                               ; preds = %76, %226
  %81 = phi i32 [ %228, %226 ], [ %32, %76 ]
  %82 = phi ptr [ %227, %226 ], [ %31, %76 ]
  %83 = phi i32 [ %229, %226 ], [ 0, %76 ]
  %84 = call ptr @ccgSubSurf_getFaceGridDataArray(ptr noundef %9, ptr noundef %36, i32 noundef %83) #14
  %85 = icmp eq ptr %82, null
  br i1 %85, label %133, label %86

86:                                               ; preds = %80
  call void @glBegin(i32 noundef 7) #14
  br i1 %25, label %87, label %223

87:                                               ; preds = %86, %131
  %88 = phi i32 [ %129, %131 ], [ %81, %86 ]
  %89 = phi ptr [ %128, %131 ], [ %82, %86 ]
  %90 = phi i32 [ %91, %131 ], [ 0, %86 ]
  %91 = add nuw nsw i32 %90, 1
  br label %92

92:                                               ; preds = %87, %126
  %93 = phi i32 [ %88, %87 ], [ %129, %126 ]
  %94 = phi ptr [ %89, %87 ], [ %128, %126 ]
  %95 = phi i32 [ 0, %87 ], [ %97, %126 ]
  %96 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %5, ptr noundef %84, i32 noundef %95, i32 noundef %90) #15
  %97 = add nuw nsw i32 %95, 1
  %98 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %5, ptr noundef %84, i32 noundef %97, i32 noundef %90) #15
  %99 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %5, ptr noundef %84, i32 noundef %97, i32 noundef %91) #15
  %100 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %5, ptr noundef %84, i32 noundef %95, i32 noundef %91) #15
  %101 = load i32, ptr %26, align 4, !tbaa !437
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %92
  %104 = call fastcc i32 @getFaceIndex(ptr noundef %9, ptr noundef %36, i32 noundef %83, i32 noundef %95, i32 noundef %91, i32 noundef %12, i32 noundef %10) #15
  br label %105

105:                                              ; preds = %92, %103
  %106 = phi i32 [ %104, %103 ], [ 0, %92 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %7, i32 noundef %93, i32 noundef %106, i32 noundef 1) #15
  %107 = getelementptr inbounds [4 x [3 x i16]], ptr %94, i64 0, i64 1
  call void @glNormal3sv(ptr noundef nonnull %107) #14
  call void @glVertex3fv(ptr noundef %100) #14
  %108 = load i32, ptr %26, align 4, !tbaa !437
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %105
  %111 = call fastcc i32 @getFaceIndex(ptr noundef %9, ptr noundef %36, i32 noundef %83, i32 noundef %97, i32 noundef %91, i32 noundef %12, i32 noundef %10) #15
  br label %112

112:                                              ; preds = %105, %110
  %113 = phi i32 [ %111, %110 ], [ 0, %105 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %7, i32 noundef %93, i32 noundef %113, i32 noundef 2) #15
  %114 = getelementptr inbounds [4 x [3 x i16]], ptr %94, i64 0, i64 2
  call void @glNormal3sv(ptr noundef nonnull %114) #14
  call void @glVertex3fv(ptr noundef %99) #14
  %115 = load i32, ptr %26, align 4, !tbaa !437
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %112
  %118 = call fastcc i32 @getFaceIndex(ptr noundef %9, ptr noundef %36, i32 noundef %83, i32 noundef %97, i32 noundef %90, i32 noundef %12, i32 noundef %10) #15
  br label %119

119:                                              ; preds = %112, %117
  %120 = phi i32 [ %118, %117 ], [ 0, %112 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %7, i32 noundef %93, i32 noundef %120, i32 noundef 3) #15
  %121 = getelementptr inbounds [4 x [3 x i16]], ptr %94, i64 0, i64 3
  call void @glNormal3sv(ptr noundef nonnull %121) #14
  call void @glVertex3fv(ptr noundef %98) #14
  %122 = load i32, ptr %26, align 4, !tbaa !437
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %119
  %125 = call fastcc i32 @getFaceIndex(ptr noundef %9, ptr noundef %36, i32 noundef %83, i32 noundef %95, i32 noundef %90, i32 noundef %12, i32 noundef %10) #15
  br label %126

126:                                              ; preds = %119, %124
  %127 = phi i32 [ %125, %124 ], [ 0, %119 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %7, i32 noundef %93, i32 noundef %127, i32 noundef 0) #15
  call void @glNormal3sv(ptr noundef nonnull %94) #14
  call void @glVertex3fv(ptr noundef %96) #14
  %128 = getelementptr inbounds [4 x [3 x i16]], ptr %94, i64 1
  %129 = add nsw i32 %93, 1
  %130 = icmp eq i32 %97, %11
  br i1 %130, label %131, label %92, !llvm.loop !450

131:                                              ; preds = %126
  %132 = icmp eq i32 %91, %11
  br i1 %132, label %223, label %87, !llvm.loop !451

133:                                              ; preds = %80
  br i1 %77, label %182, label %134

134:                                              ; preds = %133
  br i1 %25, label %135, label %226

135:                                              ; preds = %134, %177
  %136 = phi i32 [ %180, %177 ], [ %81, %134 ]
  %137 = phi i32 [ %138, %177 ], [ 0, %134 ]
  call void @glBegin(i32 noundef 8) #14
  %138 = add nuw nsw i32 %137, 1
  br label %139

139:                                              ; preds = %135, %155
  %140 = phi i32 [ %136, %135 ], [ %160, %155 ]
  %141 = phi i32 [ 0, %135 ], [ %161, %155 ]
  %142 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %5, ptr noundef %84, i32 noundef %141, i32 noundef %137) #15
  %143 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %5, ptr noundef %84, i32 noundef %141, i32 noundef %138) #15
  %144 = load i32, ptr %26, align 4, !tbaa !437
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %139
  %147 = call fastcc i32 @getFaceIndex(ptr noundef %9, ptr noundef %36, i32 noundef %83, i32 noundef %141, i32 noundef %137, i32 noundef %12, i32 noundef %10) #15
  br label %148

148:                                              ; preds = %139, %146
  %149 = phi i32 [ %147, %146 ], [ 0, %139 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %7, i32 noundef %140, i32 noundef %149, i32 noundef 0) #15
  %150 = call fastcc ptr @CCG_elem_no(ptr noundef nonnull %5, ptr noundef %142) #15
  call void @glNormal3fv(ptr noundef %150) #14
  call void @glVertex3fv(ptr noundef %142) #14
  %151 = load i32, ptr %26, align 4, !tbaa !437
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %148
  %154 = call fastcc i32 @getFaceIndex(ptr noundef %9, ptr noundef %36, i32 noundef %83, i32 noundef %141, i32 noundef %138, i32 noundef %12, i32 noundef %10) #15
  br label %155

155:                                              ; preds = %148, %153
  %156 = phi i32 [ %154, %153 ], [ 0, %148 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %7, i32 noundef %140, i32 noundef %156, i32 noundef 1) #15
  %157 = call fastcc ptr @CCG_elem_no(ptr noundef nonnull %5, ptr noundef %143) #15
  call void @glNormal3fv(ptr noundef %157) #14
  call void @glVertex3fv(ptr noundef %143) #14
  %158 = icmp ne i32 %141, %27
  %159 = zext i1 %158 to i32
  %160 = add nsw i32 %140, %159
  %161 = add nuw nsw i32 %141, 1
  %162 = icmp eq i32 %161, %11
  br i1 %162, label %163, label %139, !llvm.loop !452

163:                                              ; preds = %155
  %164 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %5, ptr noundef %84, i32 noundef %11, i32 noundef %137) #15
  %165 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %5, ptr noundef %84, i32 noundef %11, i32 noundef %138) #15
  %166 = load i32, ptr %26, align 4, !tbaa !437
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %163
  %169 = call fastcc i32 @getFaceIndex(ptr noundef %9, ptr noundef %36, i32 noundef %83, i32 noundef %11, i32 noundef %137, i32 noundef %12, i32 noundef %10) #15
  br label %170

170:                                              ; preds = %163, %168
  %171 = phi i32 [ %169, %168 ], [ 0, %163 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %7, i32 noundef %160, i32 noundef %171, i32 noundef 3) #15
  %172 = call fastcc ptr @CCG_elem_no(ptr noundef nonnull %5, ptr noundef %164) #15
  call void @glNormal3fv(ptr noundef %172) #14
  call void @glVertex3fv(ptr noundef %164) #14
  %173 = load i32, ptr %26, align 4, !tbaa !437
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %170
  %176 = call fastcc i32 @getFaceIndex(ptr noundef %9, ptr noundef %36, i32 noundef %83, i32 noundef %11, i32 noundef %138, i32 noundef %12, i32 noundef %10) #15
  br label %177

177:                                              ; preds = %170, %175
  %178 = phi i32 [ %176, %175 ], [ 0, %170 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %7, i32 noundef %160, i32 noundef %178, i32 noundef 2) #15
  %179 = call fastcc ptr @CCG_elem_no(ptr noundef nonnull %5, ptr noundef %165) #15
  call void @glNormal3fv(ptr noundef %179) #14
  call void @glVertex3fv(ptr noundef %165) #14
  call void @glEnd() #14
  %180 = add nsw i32 %160, 1
  %181 = icmp eq i32 %138, %11
  br i1 %181, label %226, label %135, !llvm.loop !453

182:                                              ; preds = %133
  call void @glBegin(i32 noundef 7) #14
  br i1 %25, label %183, label %223

183:                                              ; preds = %182, %221
  %184 = phi i32 [ %219, %221 ], [ %81, %182 ]
  %185 = phi i32 [ %186, %221 ], [ 0, %182 ]
  %186 = add nuw nsw i32 %185, 1
  br label %187

187:                                              ; preds = %183, %217
  %188 = phi i32 [ %184, %183 ], [ %219, %217 ]
  %189 = phi i32 [ 0, %183 ], [ %191, %217 ]
  %190 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %5, ptr noundef %84, i32 noundef %189, i32 noundef %185) #15
  %191 = add nuw nsw i32 %189, 1
  %192 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %5, ptr noundef %84, i32 noundef %191, i32 noundef %185) #15
  %193 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %5, ptr noundef %84, i32 noundef %191, i32 noundef %186) #15
  %194 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %5, ptr noundef %84, i32 noundef %189, i32 noundef %186) #15
  call fastcc void @ccgDM_glNormalFast(ptr noundef %190, ptr noundef %192, ptr noundef %193, ptr noundef %194) #15
  %195 = load i32, ptr %26, align 4, !tbaa !437
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %187
  %198 = call fastcc i32 @getFaceIndex(ptr noundef %9, ptr noundef %36, i32 noundef %83, i32 noundef %189, i32 noundef %186, i32 noundef %12, i32 noundef %10) #15
  br label %199

199:                                              ; preds = %187, %197
  %200 = phi i32 [ %198, %197 ], [ 0, %187 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %7, i32 noundef %188, i32 noundef %200, i32 noundef 1) #15
  call void @glVertex3fv(ptr noundef %194) #14
  %201 = load i32, ptr %26, align 4, !tbaa !437
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %199
  %204 = call fastcc i32 @getFaceIndex(ptr noundef %9, ptr noundef %36, i32 noundef %83, i32 noundef %191, i32 noundef %186, i32 noundef %12, i32 noundef %10) #15
  br label %205

205:                                              ; preds = %199, %203
  %206 = phi i32 [ %204, %203 ], [ 0, %199 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %7, i32 noundef %188, i32 noundef %206, i32 noundef 2) #15
  call void @glVertex3fv(ptr noundef %193) #14
  %207 = load i32, ptr %26, align 4, !tbaa !437
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %205
  %210 = call fastcc i32 @getFaceIndex(ptr noundef %9, ptr noundef %36, i32 noundef %83, i32 noundef %191, i32 noundef %185, i32 noundef %12, i32 noundef %10) #15
  br label %211

211:                                              ; preds = %205, %209
  %212 = phi i32 [ %210, %209 ], [ 0, %205 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %7, i32 noundef %188, i32 noundef %212, i32 noundef 3) #15
  call void @glVertex3fv(ptr noundef %192) #14
  %213 = load i32, ptr %26, align 4, !tbaa !437
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %211
  %216 = call fastcc i32 @getFaceIndex(ptr noundef %9, ptr noundef %36, i32 noundef %83, i32 noundef %189, i32 noundef %185, i32 noundef %12, i32 noundef %10) #15
  br label %217

217:                                              ; preds = %211, %215
  %218 = phi i32 [ %216, %215 ], [ 0, %211 ]
  call fastcc void @ccgdm_draw_attrib_vertex(ptr noundef nonnull %7, i32 noundef %188, i32 noundef %218, i32 noundef 0) #15
  call void @glVertex3fv(ptr noundef %190) #14
  %219 = add nsw i32 %188, 1
  %220 = icmp eq i32 %191, %11
  br i1 %220, label %221, label %187, !llvm.loop !454

221:                                              ; preds = %217
  %222 = icmp eq i32 %186, %11
  br i1 %222, label %223, label %183, !llvm.loop !455

223:                                              ; preds = %131, %221, %182, %86
  %224 = phi ptr [ %82, %86 ], [ null, %182 ], [ null, %221 ], [ %128, %131 ]
  %225 = phi i32 [ %81, %86 ], [ %81, %182 ], [ %219, %221 ], [ %129, %131 ]
  call void @glEnd() #14
  br label %226

226:                                              ; preds = %177, %223, %134
  %227 = phi ptr [ null, %134 ], [ %224, %223 ], [ null, %177 ]
  %228 = phi i32 [ %81, %134 ], [ %225, %223 ], [ %180, %177 ]
  %229 = add nuw nsw i32 %83, 1
  %230 = icmp eq i32 %229, %39
  br i1 %230, label %231, label %80, !llvm.loop !456

231:                                              ; preds = %226, %76, %74
  %232 = phi i32 [ %75, %74 ], [ %32, %76 ], [ %228, %226 ]
  %233 = add nuw nsw i64 %30, 1
  %234 = icmp eq i64 %233, %28
  br i1 %234, label %235, label %29, !llvm.loop !457

235:                                              ; preds = %231, %4
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 2564, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_drawUVEdges(ptr noundef %0) #0 !PGOFuncName !458 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  %3 = load ptr, ptr %2, align 8, !tbaa !459
  %4 = tail call ptr %3(ptr noundef %0) #14
  %5 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 5) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %1
  tail call void @glBegin(i32 noundef 1) #14
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !413
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %7, %28
  %12 = phi i32 [ %29, %28 ], [ 0, %7 ]
  %13 = phi ptr [ %31, %28 ], [ %5, %7 ]
  %14 = phi ptr [ %30, %28 ], [ %4, %7 ]
  %15 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 6
  %16 = load i8, ptr %15, align 1, !tbaa !282
  %17 = and i8 %16, 16
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %11
  tail call void @glVertex2fv(ptr noundef nonnull %13) #14
  %20 = getelementptr inbounds [4 x [2 x float]], ptr %13, i64 0, i64 1
  tail call void @glVertex2fv(ptr noundef nonnull %20) #14
  tail call void @glVertex2fv(ptr noundef nonnull %20) #14
  %21 = getelementptr inbounds [4 x [2 x float]], ptr %13, i64 0, i64 2
  tail call void @glVertex2fv(ptr noundef nonnull %21) #14
  %22 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !257
  %24 = icmp eq i32 %23, 0
  tail call void @glVertex2fv(ptr noundef nonnull %21) #14
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds [4 x [2 x float]], ptr %13, i64 0, i64 3
  tail call void @glVertex2fv(ptr noundef nonnull %26) #14
  tail call void @glVertex2fv(ptr noundef nonnull %26) #14
  br label %27

27:                                               ; preds = %19, %25
  tail call void @glVertex2fv(ptr noundef nonnull %13) #14
  br label %28

28:                                               ; preds = %27, %11
  %29 = add nuw nsw i32 %12, 1
  %30 = getelementptr inbounds %struct.MFace, ptr %14, i64 1
  %31 = getelementptr inbounds %struct.MTFace, ptr %13, i64 1
  %32 = load i32, ptr %8, align 8, !tbaa !413
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %11, label %34, !llvm.loop !460

34:                                               ; preds = %28, %7
  tail call void @glEnd() #14
  br label %35

35:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_drawMappedEdgesInterp(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !461 {
  %5 = alloca %struct.CCGKey, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %9 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %8) #14
  call void @CCG_key_top_level(ptr noundef nonnull %5, ptr noundef %8) #14
  call void @ccgSubSurf_getUseAgeCounts(ptr noundef %8, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef null) #14
  %10 = call ptr @ccgSubSurf_getEdgeIterator(ptr noundef %8) #14
  %11 = call i32 @ccgEdgeIterator_isStopped(ptr noundef %10) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %54

13:                                               ; preds = %4
  %14 = icmp eq ptr %1, null
  %15 = icmp slt i32 %9, 1
  %16 = add nsw i32 %9, -1
  %17 = sitofp i32 %16 to float
  %18 = call i32 @llvm.smax.i32(i32 %9, i32 1)
  br label %19

19:                                               ; preds = %13, %51
  %20 = call ptr @ccgEdgeIterator_getCurrent(ptr noundef %10) #14
  %21 = call ptr @ccgSubSurf_getEdgeDataArray(ptr noundef %8, ptr noundef %20) #14
  %22 = call fastcc i32 @ccgDM_getEdgeMapIndex(ptr noundef %8, ptr noundef %20) #15
  call void @glBegin(i32 noundef 3) #14
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %51, label %24

24:                                               ; preds = %19
  br i1 %14, label %29, label %25

25:                                               ; preds = %24
  %26 = call i32 %1(ptr noundef %3, i32 noundef %22) #14
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i1 true, i1 %15
  br i1 %28, label %51, label %30

29:                                               ; preds = %24
  br i1 %15, label %51, label %30

30:                                               ; preds = %29, %25
  br label %31

31:                                               ; preds = %30, %47
  %32 = phi i32 [ %49, %47 ], [ 0, %30 ]
  %33 = sitofp i32 %32 to float
  %34 = fdiv float %33, %17
  call void %2(ptr noundef %3, i32 noundef %22, float noundef %34) #14
  %35 = load i32, ptr %6, align 4, !tbaa !54
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %31
  %38 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !397
  %39 = and i32 %38, 16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = call i32 @ccgSubSurf_getEdgeAge(ptr noundef %8, ptr noundef %20) #14
  %43 = shl nsw i32 %42, 2
  %44 = sub nsw i32 255, %43
  %45 = call i32 @llvm.smax.i32(i32 %44, i32 0)
  %46 = trunc i32 %45 to i8
  call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext %46, i8 noundef zeroext 0) #14
  br label %47

47:                                               ; preds = %41, %37, %31
  %48 = call fastcc ptr @CCG_elem_offset_co(ptr noundef nonnull %5, ptr noundef %21, i32 noundef %32) #15
  call void @glVertex3fv(ptr noundef %48) #14
  %49 = add nuw nsw i32 %32, 1
  %50 = icmp eq i32 %49, %18
  br i1 %50, label %51, label %31, !llvm.loop !462

51:                                               ; preds = %47, %25, %29, %19
  call void @glEnd() #14
  call void @ccgEdgeIterator_next(ptr noundef %10) #14
  %52 = call i32 @ccgEdgeIterator_isStopped(ptr noundef %10) #14
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %19, label %54, !llvm.loop !463

54:                                               ; preds = %51, %4
  call void @ccgEdgeIterator_free(ptr noundef %10) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_drawMappedEdges(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !464 {
  %4 = alloca %struct.CCGKey, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %8 = tail call i32 @ccgSubSurf_getEdgeSize(ptr noundef %7) #14
  call void @CCG_key_top_level(ptr noundef nonnull %4, ptr noundef %7) #14
  call void @ccgSubSurf_getUseAgeCounts(ptr noundef %7, ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef null) #14
  %9 = call ptr @ccgSubSurf_getEdgeIterator(ptr noundef %7) #14
  %10 = call i32 @ccgEdgeIterator_isStopped(ptr noundef %9) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %3
  %13 = icmp eq ptr %1, null
  %14 = icmp sgt i32 %8, 1
  %15 = add nsw i32 %8, -2
  br label %16

16:                                               ; preds = %12, %45
  %17 = call ptr @ccgEdgeIterator_getCurrent(ptr noundef %9) #14
  %18 = call ptr @ccgSubSurf_getEdgeDataArray(ptr noundef %7, ptr noundef %17) #14
  %19 = call fastcc i32 @ccgDM_getEdgeMapIndex(ptr noundef %7, ptr noundef %17) #15
  call void @glBegin(i32 noundef 3) #14
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %45, label %21

21:                                               ; preds = %16
  br i1 %13, label %25, label %22

22:                                               ; preds = %21
  %23 = call i32 %1(ptr noundef %2, i32 noundef %19) #14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %22, %21
  %26 = load i32, ptr %5, align 4, !tbaa !54
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !397
  %30 = and i32 %29, 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = call i32 @ccgSubSurf_getEdgeAge(ptr noundef %7, ptr noundef %17) #14
  %34 = shl nsw i32 %33, 2
  %35 = sub nsw i32 255, %34
  %36 = call i32 @llvm.smax.i32(i32 %35, i32 0)
  %37 = trunc i32 %36 to i8
  call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext %37, i8 noundef zeroext 0) #14
  br label %38

38:                                               ; preds = %32, %28, %25
  br i1 %14, label %39, label %45

39:                                               ; preds = %38, %39
  %40 = phi i32 [ %42, %39 ], [ 0, %38 ]
  %41 = call fastcc ptr @CCG_elem_offset_co(ptr noundef nonnull %4, ptr noundef %18, i32 noundef %40) #15
  call void @glVertex3fv(ptr noundef %41) #14
  %42 = add nuw nsw i32 %40, 1
  %43 = call fastcc ptr @CCG_elem_offset_co(ptr noundef nonnull %4, ptr noundef %18, i32 noundef %42) #15
  call void @glVertex3fv(ptr noundef %43) #14
  %44 = icmp eq i32 %40, %15
  br i1 %44, label %45, label %39, !llvm.loop !465

45:                                               ; preds = %39, %38, %22, %16
  call void @glEnd() #14
  call void @ccgEdgeIterator_next(ptr noundef %9) #14
  %46 = call i32 @ccgEdgeIterator_isStopped(ptr noundef %9) #14
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %16, label %48, !llvm.loop !466

48:                                               ; preds = %45, %3
  call void @ccgEdgeIterator_free(ptr noundef %9) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccgDM_release(ptr noundef %0) #0 !PGOFuncName !467 {
  %2 = tail call i32 @DM_release(ptr noundef %0) #14
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %137, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20
  %6 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !468
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %35, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !469
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !470
  %16 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 26
  %17 = load ptr, ptr %5, align 8, !tbaa !334
  %18 = tail call i32 @BLI_findindex(ptr noundef nonnull %16, ptr noundef %17) #14
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store ptr null, ptr %5, align 8, !tbaa !334
  br label %35

21:                                               ; preds = %13, %9
  %22 = load ptr, ptr %5, align 8, !tbaa !334
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %6, align 8, !tbaa !468
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  tail call void @multires_modifier_update_mdisps(ptr noundef nonnull %0) #14
  %29 = load i32, ptr %6, align 8, !tbaa !468
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i32 [ %29, %28 ], [ %25, %24 ]
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @multires_modifier_update_hidden(ptr noundef nonnull %0) #14
  br label %35

35:                                               ; preds = %20, %21, %34, %30, %4
  %36 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 21
  %37 = load ptr, ptr %36, align 8, !tbaa !288
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @BLI_edgehash_free(ptr noundef nonnull %37, ptr noundef null) #14
  br label %40

40:                                               ; preds = %39, %35
  %41 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 10
  %42 = load ptr, ptr %41, align 8, !tbaa !183
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %45(ptr noundef nonnull %42) #14
  br label %46

46:                                               ; preds = %44, %40
  %47 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 17
  %48 = load ptr, ptr %47, align 8, !tbaa !355
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %51(ptr noundef nonnull %48) #14
  br label %52

52:                                               ; preds = %50, %46
  %53 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 14
  %54 = load ptr, ptr %53, align 8, !tbaa !323
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %57(ptr noundef nonnull %54) #14
  br label %58

58:                                               ; preds = %56, %52
  %59 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 15
  %60 = load ptr, ptr %59, align 8, !tbaa !325
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %63(ptr noundef nonnull %60) #14
  br label %64

64:                                               ; preds = %62, %58
  %65 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 16
  %66 = load ptr, ptr %65, align 8, !tbaa !327
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %69(ptr noundef nonnull %66) #14
  br label %70

70:                                               ; preds = %68, %64
  %71 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 18
  %72 = load ptr, ptr %71, align 8, !tbaa !330
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %75(ptr noundef nonnull %72) #14
  br label %76

76:                                               ; preds = %74, %70
  %77 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 19
  %78 = load ptr, ptr %77, align 8, !tbaa !332
  %79 = icmp eq ptr %78, null
  br i1 %79, label %101, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 63
  %82 = load ptr, ptr %81, align 8, !tbaa !471
  %83 = tail call i32 %82(ptr noundef nonnull %0) #14
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %80
  %86 = zext nneg i32 %83 to i64
  br label %87

87:                                               ; preds = %85, %95
  %88 = phi i64 [ 0, %85 ], [ %96, %95 ]
  %89 = load ptr, ptr %77, align 8, !tbaa !332
  %90 = getelementptr inbounds ptr, ptr %89, i64 %88
  %91 = load ptr, ptr %90, align 8, !tbaa !100
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %87
  %94 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %94(ptr noundef nonnull %91) #14
  br label %95

95:                                               ; preds = %87, %93
  %96 = add nuw nsw i64 %88, 1
  %97 = icmp eq i64 %96, %86
  br i1 %97, label %98, label %87, !llvm.loop !472

98:                                               ; preds = %95, %80
  %99 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  %100 = load ptr, ptr %77, align 8, !tbaa !332
  tail call void %99(ptr noundef %100) #14
  br label %101

101:                                              ; preds = %98, %76
  %102 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 2
  %103 = load i32, ptr %102, align 8, !tbaa !79
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !34
  tail call void @ccgSubSurf_free(ptr noundef %107) #14
  br label %108

108:                                              ; preds = %105, %101
  %109 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 12
  %110 = load ptr, ptr %109, align 8, !tbaa !335
  %111 = icmp eq ptr %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %113(ptr noundef nonnull %110) #14
  br label %114

114:                                              ; preds = %112, %108
  %115 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 13
  %116 = load ptr, ptr %115, align 8, !tbaa !473
  %117 = icmp eq ptr %116, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %114
  %119 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %119(ptr noundef nonnull %116) #14
  br label %120

120:                                              ; preds = %118, %114
  %121 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  %122 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 8
  %123 = load ptr, ptr %122, align 8, !tbaa !184
  tail call void %121(ptr noundef %123) #14
  %124 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  %125 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 9
  %126 = load ptr, ptr %125, align 8, !tbaa !185
  tail call void %124(ptr noundef %126) #14
  %127 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  %128 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 5
  %129 = load ptr, ptr %128, align 8, !tbaa !174
  tail call void %127(ptr noundef %129) #14
  %130 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  %131 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 6
  %132 = load ptr, ptr %131, align 8, !tbaa !178
  tail call void %130(ptr noundef %132) #14
  %133 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  %134 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %135 = load ptr, ptr %134, align 8, !tbaa !44
  tail call void %133(ptr noundef %135) #14
  %136 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %136(ptr noundef nonnull %0) #14
  br label %137

137:                                              ; preds = %120, %1
  ret void
}

; Function Attrs: optsize
declare i32 @ccgSubSurf_getNumVerts(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_getNumEdges(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ccgSubSurf_getEdgeIterator(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgEdgeIterator_isStopped(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ccgEdgeIterator_getCurrent(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ccgSubSurf_getEdgeEdgeHandle(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ccgEdgeIterator_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ccgEdgeIterator_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ccgSubSurf_getFaceIterator(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgFaceIterator_isStopped(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ccgFaceIterator_getCurrent(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ccgSubSurf_getFaceFaceHandle(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ccgFaceIterator_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ccgFaceIterator_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DM_get_vert_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DM_get_edge_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DM_get_tessface_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DM_get_poly_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_ss_weights(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !474 {
  %4 = getelementptr inbounds %struct.WeightTable, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !475
  %6 = icmp sgt i32 %5, %2
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !477
  br label %24

9:                                                ; preds = %3
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !100
  %11 = add nsw i32 %2, 1
  %12 = sext i32 %11 to i64
  %13 = mul nsw i64 %12, 24
  %14 = tail call ptr %10(i64 noundef %13, ptr noundef nonnull @.str.17) #14
  %15 = load i32, ptr %4, align 8, !tbaa !475
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %9
  %18 = load ptr, ptr %0, align 8, !tbaa !477
  %19 = sext i32 %15 to i64
  %20 = mul nsw i64 %19, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 8 %18, i64 %20, i1 false)
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  %22 = load ptr, ptr %0, align 8, !tbaa !477
  tail call void %21(ptr noundef %22) #14
  br label %23

23:                                               ; preds = %17, %9
  store ptr %14, ptr %0, align 8, !tbaa !477
  store i32 %11, ptr %4, align 8, !tbaa !475
  br label %24

24:                                               ; preds = %7, %23
  %25 = phi ptr [ %8, %7 ], [ %14, %23 ]
  %26 = sext i32 %2 to i64
  %27 = getelementptr inbounds %struct.FaceVertWeightEntry, ptr %25, i64 %26, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !478
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.FaceVertWeightEntry, ptr %25, i64 %26, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !480
  br label %150

33:                                               ; preds = %24
  store i32 1, ptr %27, align 8, !tbaa !478
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !100
  %35 = add nsw i32 %1, 2
  %36 = sext i32 %35 to i64
  %37 = mul nsw i64 %26, %36
  %38 = shl i64 %37, 2
  %39 = mul i64 %38, %37
  %40 = tail call ptr %34(i64 noundef %39, ptr noundef nonnull @.str.18) #14
  %41 = load ptr, ptr %0, align 8, !tbaa !477
  %42 = getelementptr inbounds %struct.FaceVertWeightEntry, ptr %41, i64 %26, i32 1
  store ptr %40, ptr %42, align 8, !tbaa !480
  %43 = sitofp i32 %2 to float
  %44 = fdiv float 1.000000e+00, %43
  %45 = icmp sgt i32 %2, 0
  br i1 %45, label %46, label %150

46:                                               ; preds = %33
  %47 = icmp sgt i32 %1, -2
  %48 = add nsw i32 %1, 1
  %49 = sitofp i32 %48 to float
  %50 = add nsw i32 %2, -4
  %51 = sitofp i32 %50 to float
  %52 = fneg float %51
  %53 = fneg float %44
  %54 = icmp ugt i32 %2, 3
  %55 = add nsw i32 %2, -3
  %56 = sitofp i32 %55 to float
  %57 = add nsw i32 %2, -1
  %58 = tail call i32 @llvm.smax.i32(i32 %35, i32 1)
  %59 = zext nneg i32 %2 to i64
  %60 = add nuw nsw i64 %59, 3
  %61 = and i64 %60, 4294967292
  %62 = add nsw i64 %59, -1
  %63 = insertelement <4 x i64> poison, i64 %62, i64 0
  %64 = shufflevector <4 x i64> %63, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %65

65:                                               ; preds = %46, %146
  %66 = phi i64 [ 0, %46 ], [ %147, %146 ]
  %67 = phi ptr [ %40, %46 ], [ %148, %146 ]
  br i1 %47, label %70, label %68

68:                                               ; preds = %65
  %69 = add nuw nsw i64 %66, 1
  br label %146

70:                                               ; preds = %65
  %71 = trunc i64 %66 to i32
  %72 = add i32 %57, %71
  %73 = add nuw nsw i64 %66, 1
  %74 = srem i32 %72, %2
  %75 = sext i32 %74 to i64
  %76 = icmp eq i64 %73, %59
  %77 = and i64 %73, 4294967295
  %78 = select i1 %76, i64 0, i64 %77
  br label %79

79:                                               ; preds = %70, %143
  %80 = phi i32 [ 0, %70 ], [ %144, %143 ]
  %81 = phi ptr [ %67, %70 ], [ %140, %143 ]
  %82 = sitofp i32 %80 to float
  %83 = fdiv float %82, %49
  %84 = fmul float %83, 5.000000e-01
  %85 = fsub float 5.000000e-01, %84
  %86 = fsub float 1.000000e+00, %85
  %87 = fmul float %85, %52
  %88 = fmul float %85, %51
  %89 = tail call float @llvm.fmuladd.f32(float %88, float %53, float %86)
  br label %90

90:                                               ; preds = %79, %136
  %91 = phi i32 [ 0, %79 ], [ %141, %136 ]
  %92 = phi ptr [ %81, %79 ], [ %140, %136 ]
  %93 = sitofp i32 %91 to float
  %94 = fdiv float %93, %49
  %95 = fmul float %94, 5.000000e-01
  %96 = fsub float 5.000000e-01, %95
  %97 = fsub float 1.000000e+00, %96
  %98 = fmul float %87, %96
  %99 = fmul float %44, %98
  %100 = tail call float @llvm.fmuladd.f32(float %86, float %97, float %99)
  %101 = fmul float %89, %96
  %102 = fmul float %96, %52
  %103 = tail call float @llvm.fmuladd.f32(float %102, float %44, float %97)
  %104 = fmul float %85, %103
  br i1 %54, label %105, label %136

105:                                              ; preds = %90
  %106 = fadd float %101, %100
  %107 = fadd float %104, %106
  %108 = fsub float 1.000000e+00, %107
  %109 = fdiv float %108, %56
  br label %110

110:                                              ; preds = %132, %105
  %111 = phi i64 [ 0, %105 ], [ %133, %132 ]
  %112 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %105 ], [ %134, %132 ]
  %113 = icmp ule <4 x i64> %112, %64
  %114 = extractelement <4 x i1> %113, i64 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = getelementptr inbounds float, ptr %92, i64 %111
  store float %109, ptr %116, align 4, !tbaa !66
  br label %117

117:                                              ; preds = %115, %110
  %118 = extractelement <4 x i1> %113, i64 1
  br i1 %118, label %119, label %122

119:                                              ; preds = %117
  %120 = or disjoint i64 %111, 1
  %121 = getelementptr inbounds float, ptr %92, i64 %120
  store float %109, ptr %121, align 4, !tbaa !66
  br label %122

122:                                              ; preds = %119, %117
  %123 = extractelement <4 x i1> %113, i64 2
  br i1 %123, label %124, label %127

124:                                              ; preds = %122
  %125 = or disjoint i64 %111, 2
  %126 = getelementptr inbounds float, ptr %92, i64 %125
  store float %109, ptr %126, align 4, !tbaa !66
  br label %127

127:                                              ; preds = %124, %122
  %128 = extractelement <4 x i1> %113, i64 3
  br i1 %128, label %129, label %132

129:                                              ; preds = %127
  %130 = or disjoint i64 %111, 3
  %131 = getelementptr inbounds float, ptr %92, i64 %130
  store float %109, ptr %131, align 4, !tbaa !66
  br label %132

132:                                              ; preds = %129, %127
  %133 = add i64 %111, 4
  %134 = add <4 x i64> %112, <i64 4, i64 4, i64 4, i64 4>
  %135 = icmp eq i64 %133, %61
  br i1 %135, label %136, label %110, !llvm.loop !481

136:                                              ; preds = %132, %90
  %137 = getelementptr inbounds float, ptr %92, i64 %66
  store float %100, ptr %137, align 4, !tbaa !66
  %138 = getelementptr inbounds float, ptr %92, i64 %75
  store float %101, ptr %138, align 4, !tbaa !66
  %139 = getelementptr inbounds float, ptr %92, i64 %78
  store float %104, ptr %139, align 4, !tbaa !66
  %140 = getelementptr inbounds float, ptr %92, i64 %26
  %141 = add nuw nsw i32 %91, 1
  %142 = icmp eq i32 %141, %58
  br i1 %142, label %143, label %90, !llvm.loop !482

143:                                              ; preds = %136
  %144 = add nuw nsw i32 %80, 1
  %145 = icmp eq i32 %144, %58
  br i1 %145, label %146, label %79, !llvm.loop !483

146:                                              ; preds = %143, %68
  %147 = phi i64 [ %69, %68 ], [ %73, %143 ]
  %148 = phi ptr [ %67, %68 ], [ %140, %143 ]
  %149 = icmp eq i64 %147, %59
  br i1 %149, label %150, label %65, !llvm.loop !484

150:                                              ; preds = %146, %30, %33
  %151 = phi ptr [ %40, %33 ], [ %32, %30 ], [ %40, %146 ]
  ret ptr %151
}

; Function Attrs: optsize
declare void @DM_interp_vert_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_interp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_copy_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ccg_loops_to_corners(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #0 !PGOFuncName !485 {
  %11 = icmp sgt i32 %6, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %37, %10
  %13 = icmp sgt i32 %7, 0
  br i1 %13, label %40, label %56

14:                                               ; preds = %10, %37
  %15 = phi i32 [ %38, %37 ], [ 0, %10 ]
  %16 = tail call ptr @CustomData_get_n(ptr noundef %0, i32 noundef 5, i32 noundef %4, i32 noundef %15) #14
  %17 = tail call ptr @CustomData_get_n(ptr noundef %2, i32 noundef 15, i32 noundef %5, i32 noundef %15) #14
  %18 = load ptr, ptr %17, align 8, !tbaa !486
  %19 = getelementptr inbounds %struct.MTFace, ptr %16, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !488
  %20 = getelementptr inbounds %struct.MTexPoly, ptr %17, i64 0, i32 1
  %21 = load i8, ptr %20, align 8, !tbaa !490
  %22 = getelementptr inbounds %struct.MTFace, ptr %16, i64 0, i32 2
  store i8 %21, ptr %22, align 8, !tbaa !491
  %23 = getelementptr inbounds %struct.MTexPoly, ptr %17, i64 0, i32 2
  %24 = load i8, ptr %23, align 1, !tbaa !492
  %25 = getelementptr inbounds %struct.MTFace, ptr %16, i64 0, i32 3
  store i8 %24, ptr %25, align 1, !tbaa !493
  %26 = getelementptr inbounds %struct.MTexPoly, ptr %17, i64 0, i32 3
  %27 = getelementptr inbounds %struct.MTFace, ptr %16, i64 0, i32 4
  %28 = load <2 x i16>, ptr %26, align 2, !tbaa !208
  store <2 x i16> %28, ptr %27, align 2, !tbaa !208
  %29 = tail call ptr @CustomData_get_n(ptr noundef %1, i32 noundef 16, i32 noundef %3, i32 noundef %15) #14
  br label %30

30:                                               ; preds = %14, %30
  %31 = phi i64 [ 0, %14 ], [ %34, %30 ]
  %32 = phi ptr [ %29, %14 ], [ %35, %30 ]
  %33 = getelementptr inbounds [4 x [2 x float]], ptr %16, i64 0, i64 %31
  tail call fastcc void @copy_v2_v2(ptr noundef %33, ptr noundef %32) #15
  %34 = add nuw nsw i64 %31, 1
  %35 = getelementptr inbounds %struct.MLoopUV, ptr %32, i64 1
  %36 = icmp eq i64 %34, 4
  br i1 %36, label %37, label %30, !llvm.loop !494

37:                                               ; preds = %30
  %38 = add nuw nsw i32 %15, 1
  %39 = icmp eq i32 %38, %6
  br i1 %39, label %12, label %14, !llvm.loop !495

40:                                               ; preds = %12, %53
  %41 = phi i32 [ %54, %53 ], [ 0, %12 ]
  %42 = tail call ptr @CustomData_get_n(ptr noundef %1, i32 noundef 17, i32 noundef %3, i32 noundef %41) #14
  %43 = tail call ptr @CustomData_get_n(ptr noundef %0, i32 noundef 6, i32 noundef %4, i32 noundef %41) #14
  br label %44

44:                                               ; preds = %40, %44
  %45 = phi i64 [ 0, %40 ], [ %50, %44 ]
  %46 = phi ptr [ %42, %40 ], [ %51, %44 ]
  %47 = getelementptr inbounds %struct.MCol, ptr %43, i64 %45
  %48 = load <4 x i8>, ptr %46, align 1, !tbaa !426
  %49 = shufflevector <4 x i8> %48, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %49, ptr %47, align 1, !tbaa !426
  %50 = add nuw nsw i64 %45, 1
  %51 = getelementptr inbounds %struct.MLoopCol, ptr %46, i64 1
  %52 = icmp eq i64 %50, 4
  br i1 %52, label %53, label %44, !llvm.loop !496

53:                                               ; preds = %44
  %54 = add nuw nsw i32 %41, 1
  %55 = icmp eq i32 %54, %7
  br i1 %55, label %56, label %40, !llvm.loop !497

56:                                               ; preds = %53, %12
  %57 = icmp eq i32 %8, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %56
  %59 = tail call ptr @CustomData_get(ptr noundef %1, i32 noundef %3, i32 noundef 32) #14
  %60 = tail call ptr @CustomData_get(ptr noundef %0, i32 noundef %4, i32 noundef 20) #14
  br label %61

61:                                               ; preds = %58, %61
  %62 = phi i64 [ 0, %58 ], [ %67, %61 ]
  %63 = phi ptr [ %59, %58 ], [ %68, %61 ]
  %64 = getelementptr inbounds %struct.MCol, ptr %60, i64 %62
  %65 = load <4 x i8>, ptr %63, align 1, !tbaa !426
  %66 = shufflevector <4 x i8> %65, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %66, ptr %64, align 1, !tbaa !426
  %67 = add nuw nsw i64 %62, 1
  %68 = getelementptr inbounds %struct.MLoopCol, ptr %63, i64 1
  %69 = icmp eq i64 %67, 4
  br i1 %69, label %70, label %61, !llvm.loop !498

70:                                               ; preds = %61, %56
  %71 = icmp eq i32 %9, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %70
  %73 = tail call ptr @CustomData_get(ptr noundef %0, i32 noundef %4, i32 noundef 13) #14
  %74 = tail call ptr @CustomData_get(ptr noundef %1, i32 noundef %3, i32 noundef 31) #14
  br label %75

75:                                               ; preds = %72, %75
  %76 = phi i64 [ 0, %72 ], [ %79, %75 ]
  %77 = phi ptr [ %74, %72 ], [ %80, %75 ]
  %78 = getelementptr inbounds [4 x [2 x float]], ptr %73, i64 0, i64 %76
  tail call fastcc void @copy_v2_v2(ptr noundef %78, ptr noundef %77) #15
  %79 = add nuw nsw i64 %76, 1
  %80 = getelementptr inbounds %struct.OrigSpaceLoop, ptr %77, i64 1
  %81 = icmp eq i64 %79, 4
  br i1 %81, label %82, label %75, !llvm.loop !499

82:                                               ; preds = %75, %70
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ccgDM_getEdgeMapIndex(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !500 {
  %3 = tail call ptr @ccgSubSurf_getEdgeUserData(ptr noundef %0, ptr noundef %1) #14
  %4 = getelementptr inbounds i32, ptr %3, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !54
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @ccgSubSurf_getEdgeVert1(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_subsurf_uv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !501 {
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 3
  %6 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %5, i32 noundef 16, i32 noundef %3) #14
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 2
  %8 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %7, i32 noundef 5, i32 noundef %3) #14
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 3
  %10 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %9, i32 noundef 16, i32 noundef %3) #14
  %11 = icmp eq ptr %6, null
  br i1 %11, label %114, label %12

12:                                               ; preds = %4
  %13 = icmp ne ptr %8, null
  %14 = icmp ne ptr %10, null
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %16, label %114

16:                                               ; preds = %12
  %17 = tail call i32 @ccgSubSurf_getSubdivisionLevels(ptr noundef %0) #14
  %18 = tail call fastcc ptr @_getSubSurf(ptr noundef null, i32 noundef %17, i32 noundef 2, i32 noundef 2) #15
  %19 = tail call fastcc i32 @ss_sync_from_uv(ptr noundef %18, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6) #15, !range !352
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  tail call void @ccgSubSurf_free(ptr noundef %18) #14
  br label %114

22:                                               ; preds = %16
  %23 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %18) #14
  %24 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %18) #14
  %25 = add i32 %24, -1
  %26 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !100
  %27 = sext i32 %23 to i64
  %28 = shl nsw i64 %27, 3
  %29 = tail call ptr %26(i64 noundef %28, ptr noundef nonnull @.str.19) #14
  %30 = tail call ptr @ccgSubSurf_getFaceIterator(ptr noundef %18) #14
  %31 = tail call i32 @ccgFaceIterator_isStopped(ptr noundef %30) #14
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %22, %33
  %34 = tail call ptr @ccgFaceIterator_getCurrent(ptr noundef %30) #14
  %35 = tail call ptr @ccgSubSurf_getFaceFaceHandle(ptr noundef %34) #14
  %36 = ptrtoint ptr %35 to i64
  %37 = shl i64 %36, 32
  %38 = ashr exact i64 %37, 32
  %39 = getelementptr inbounds ptr, ptr %29, i64 %38
  store ptr %34, ptr %39, align 8, !tbaa !100
  tail call void @ccgFaceIterator_next(ptr noundef %30) #14
  %40 = tail call i32 @ccgFaceIterator_isStopped(ptr noundef %30) #14
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %33, label %42, !llvm.loop !502

42:                                               ; preds = %33, %22
  tail call void @ccgFaceIterator_free(ptr noundef %30) #14
  %43 = icmp sgt i32 %23, 0
  br i1 %43, label %44, label %112

44:                                               ; preds = %42
  %45 = icmp sgt i32 %24, 1
  %46 = zext nneg i32 %23 to i64
  %47 = zext nneg i32 %25 to i64
  br label %48

48:                                               ; preds = %44, %107
  %49 = phi i64 [ 0, %44 ], [ %110, %107 ]
  %50 = phi ptr [ %8, %44 ], [ %109, %107 ]
  %51 = phi ptr [ %10, %44 ], [ %108, %107 ]
  %52 = getelementptr inbounds ptr, ptr %29, i64 %49
  %53 = load ptr, ptr %52, align 8, !tbaa !100
  %54 = tail call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %53) #14
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %107

56:                                               ; preds = %48, %102
  %57 = phi ptr [ %104, %102 ], [ %50, %48 ]
  %58 = phi ptr [ %103, %102 ], [ %51, %48 ]
  %59 = phi i32 [ %105, %102 ], [ 0, %48 ]
  %60 = tail call ptr @ccgSubSurf_getFaceGridDataArray(ptr noundef %18, ptr noundef %53, i32 noundef %59) #14
  br i1 %45, label %61, label %102

61:                                               ; preds = %56, %100
  %62 = phi i64 [ %65, %100 ], [ 0, %56 ]
  %63 = phi ptr [ %89, %100 ], [ %57, %56 ]
  %64 = phi ptr [ %97, %100 ], [ %58, %56 ]
  %65 = add nuw nsw i64 %62, 1
  %66 = trunc i64 %62 to i32
  %67 = mul i32 %24, %66
  %68 = zext i32 %67 to i64
  %69 = trunc i64 %65 to i32
  %70 = mul i32 %24, %69
  %71 = zext i32 %70 to i64
  %72 = getelementptr [2 x float], ptr %60, i64 %68
  %73 = getelementptr [2 x float], ptr %60, i64 %71
  br label %74

74:                                               ; preds = %61, %96
  %75 = phi i64 [ 0, %61 ], [ %98, %96 ]
  %76 = phi ptr [ %63, %61 ], [ %89, %96 ]
  %77 = phi ptr [ %64, %61 ], [ %97, %96 ]
  %78 = getelementptr [2 x float], ptr %72, i64 %75
  %79 = getelementptr [2 x float], ptr %78, i64 1
  %80 = getelementptr [2 x float], ptr %73, i64 %75
  %81 = getelementptr [2 x float], ptr %80, i64 1
  %82 = icmp eq ptr %76, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %74
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %76, ptr noundef %78) #15
  %84 = getelementptr inbounds [4 x [2 x float]], ptr %76, i64 0, i64 1
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %84, ptr noundef %80) #15
  %85 = getelementptr inbounds [4 x [2 x float]], ptr %76, i64 0, i64 2
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %85, ptr noundef %81) #15
  %86 = getelementptr inbounds [4 x [2 x float]], ptr %76, i64 0, i64 3
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %86, ptr noundef %79) #15
  %87 = getelementptr inbounds %struct.MTFace, ptr %76, i64 1
  br label %88

88:                                               ; preds = %83, %74
  %89 = phi ptr [ %87, %83 ], [ null, %74 ]
  %90 = icmp eq ptr %77, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %77, ptr noundef %78) #15
  %92 = getelementptr inbounds %struct.MLoopUV, ptr %77, i64 1
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %92, ptr noundef %80) #15
  %93 = getelementptr inbounds %struct.MLoopUV, ptr %77, i64 2
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %93, ptr noundef %81) #15
  %94 = getelementptr inbounds %struct.MLoopUV, ptr %77, i64 3
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %94, ptr noundef %79) #15
  %95 = getelementptr inbounds %struct.MLoopUV, ptr %77, i64 4
  br label %96

96:                                               ; preds = %91, %88
  %97 = phi ptr [ %95, %91 ], [ null, %88 ]
  %98 = add nuw nsw i64 %75, 1
  %99 = icmp eq i64 %98, %47
  br i1 %99, label %100, label %74, !llvm.loop !503

100:                                              ; preds = %96
  %101 = icmp eq i64 %65, %47
  br i1 %101, label %102, label %61, !llvm.loop !504

102:                                              ; preds = %100, %56
  %103 = phi ptr [ %58, %56 ], [ %97, %100 ]
  %104 = phi ptr [ %57, %56 ], [ %89, %100 ]
  %105 = add nuw nsw i32 %59, 1
  %106 = icmp eq i32 %105, %54
  br i1 %106, label %107, label %56, !llvm.loop !505

107:                                              ; preds = %102, %48
  %108 = phi ptr [ %51, %48 ], [ %103, %102 ]
  %109 = phi ptr [ %50, %48 ], [ %104, %102 ]
  %110 = add nuw nsw i64 %49, 1
  %111 = icmp eq i64 %110, %46
  br i1 %111, label %112, label %48, !llvm.loop !506

112:                                              ; preds = %107, %42
  tail call void @ccgSubSurf_free(ptr noundef %18) #14
  %113 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %113(ptr noundef %29) #14
  br label %114

114:                                              ; preds = %4, %12, %112, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ccgDM_getVertMapIndex(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !507 {
  %3 = tail call ptr @ccgSubSurf_getVertUserData(ptr noundef %0, ptr noundef %1) #14
  %4 = getelementptr inbounds i32, ptr %3, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !54
  ret i32 %5
}

; Function Attrs: optsize
declare void @DM_copy_vert_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_ss_weights(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !508 {
  %2 = getelementptr inbounds %struct.WeightTable, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !475
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %1, %17
  %6 = phi i32 [ %18, %17 ], [ %3, %1 ]
  %7 = phi i64 [ %19, %17 ], [ 0, %1 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !477
  %9 = getelementptr inbounds %struct.FaceVertWeightEntry, ptr %8, i64 %7, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !478
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %5
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  %14 = getelementptr inbounds %struct.FaceVertWeightEntry, ptr %8, i64 %7, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !480
  tail call void %13(ptr noundef %15) #14
  %16 = load i32, ptr %2, align 8, !tbaa !475
  br label %17

17:                                               ; preds = %5, %12
  %18 = phi i32 [ %6, %5 ], [ %16, %12 ]
  %19 = add nuw nsw i64 %7, 1
  %20 = sext i32 %18 to i64
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %5, label %22, !llvm.loop !509

22:                                               ; preds = %17, %1
  %23 = load ptr, ptr %0, align 8, !tbaa !477
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %26(ptr noundef nonnull %23) #14
  br label %27

27:                                               ; preds = %25, %22
  ret void
}

; Function Attrs: optsize
declare void @CCG_key_top_level(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @minmax_v3_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #4 !PGOFuncName !510 {
  %4 = load float, ptr %1, align 4, !tbaa !66
  %5 = load float, ptr %0, align 4, !tbaa !66
  %6 = fcmp ogt float %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store float %5, ptr %1, align 4, !tbaa !66
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !66
  %11 = getelementptr inbounds float, ptr %0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !66
  %13 = fcmp ogt float %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store float %12, ptr %9, align 4, !tbaa !66
  br label %15

15:                                               ; preds = %14, %8
  %16 = getelementptr inbounds float, ptr %1, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !66
  %18 = getelementptr inbounds float, ptr %0, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !66
  %20 = fcmp ogt float %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store float %19, ptr %16, align 4, !tbaa !66
  br label %22

22:                                               ; preds = %21, %15
  %23 = load float, ptr %2, align 4, !tbaa !66
  %24 = load float, ptr %0, align 4, !tbaa !66
  %25 = fcmp olt float %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store float %24, ptr %2, align 4, !tbaa !66
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds float, ptr %2, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !66
  %30 = load float, ptr %11, align 4, !tbaa !66
  %31 = fcmp olt float %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store float %30, ptr %28, align 4, !tbaa !66
  br label %33

33:                                               ; preds = %32, %27
  %34 = getelementptr inbounds float, ptr %2, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !66
  %36 = load float, ptr %18, align 4, !tbaa !66
  %37 = fcmp olt float %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store float %36, ptr %34, align 4, !tbaa !66
  br label %39

39:                                               ; preds = %38, %33
  ret void
}

; Function Attrs: optsize
declare ptr @ccgSubSurf_getEdgeDataArray(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_offset_co(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) unnamed_addr #10 !PGOFuncName !511 {
  %4 = tail call fastcc ptr @CCG_elem_offset(ptr noundef %0, ptr noundef %1, i32 noundef %2) #15
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @ccgSubSurf_getFaceGridDataArray(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_grid_elem_co(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 !PGOFuncName !512 {
  %5 = tail call fastcc ptr @CCG_grid_elem(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #15
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_offset(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) unnamed_addr #10 !PGOFuncName !513 {
  %4 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !514
  %6 = mul nsw i32 %5, %2
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %1, i64 %7
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_grid_elem(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 !PGOFuncName !516 {
  %5 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !517
  %7 = mul nsw i32 %6, %3
  %8 = add nsw i32 %7, %2
  %9 = tail call fastcc ptr @CCG_elem_offset(ptr noundef %0, ptr noundef %1, i32 noundef %8) #15
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !518 {
  %3 = load float, ptr %1, align 4, !tbaa !66
  store float %3, ptr %0, align 4, !tbaa !66
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !66
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !66
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !66
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_float_to_short_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !519 {
  %3 = load <2 x float>, ptr %1, align 4, !tbaa !66
  %4 = fmul <2 x float> %3, <float 3.276700e+04, float 3.276700e+04>
  %5 = fptosi <2 x float> %4 to <2 x i16>
  store <2 x i16> %5, ptr %0, align 2, !tbaa !208
  %6 = getelementptr inbounds float, ptr %1, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !66
  %8 = fmul float %7, 3.276700e+04
  %9 = fptosi float %8 to i16
  %10 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %9, ptr %10, align 2, !tbaa !208
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_no(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #10 !PGOFuncName !520 {
  %3 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !521
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @ccgSubSurf_getFaceGridEdgeData(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ccgSubSurf_getFaceGridData(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_getEdgeNumFaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @getEdgeIndex(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !522 {
  %5 = tail call ptr @ccgSubSurf_getEdgeVert0(ptr noundef %1) #14
  %6 = tail call ptr @ccgSubSurf_getEdgeVert1(ptr noundef %1) #14
  %7 = tail call ptr @ccgSubSurf_getVertUserData(ptr noundef %0, ptr noundef %5) #14
  %8 = load i32, ptr %7, align 4, !tbaa !54
  %9 = tail call ptr @ccgSubSurf_getVertUserData(ptr noundef %0, ptr noundef %6) #14
  %10 = load i32, ptr %9, align 4, !tbaa !54
  %11 = tail call ptr @ccgSubSurf_getEdgeUserData(ptr noundef %0, ptr noundef %1) #14
  %12 = load i32, ptr %11, align 4, !tbaa !54
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = add nsw i32 %3, -1
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = add i32 %2, -1
  %19 = add i32 %18, %12
  br label %20

20:                                               ; preds = %14, %4, %17
  %21 = phi i32 [ %19, %17 ], [ %8, %4 ], [ %10, %14 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_short_to_float_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !523 {
  %3 = load <2 x i16>, ptr %1, align 2, !tbaa !208
  %4 = sitofp <2 x i16> %3 to <2 x float>
  %5 = fmul <2 x float> %4, <float 0x3F00002000000000, float 0x3F00002000000000>
  store <2 x float> %5, ptr %0, align 4, !tbaa !66
  %6 = getelementptr inbounds i16, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2, !tbaa !208
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 0x3F00002000000000
  %10 = getelementptr inbounds float, ptr %0, i64 2
  store float %9, ptr %10, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ccgDM_to_MVert(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #11 !PGOFuncName !524 {
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef %2) #15
  %4 = getelementptr inbounds %struct.MVert, ptr %0, i64 0, i32 1
  %5 = tail call fastcc ptr @CCG_elem_no(ptr noundef %1, ptr noundef %2) #15
  tail call fastcc void @normal_float_to_short_v3(ptr noundef nonnull %4, ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.MVert, ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 1, !tbaa !525
  %7 = getelementptr inbounds %struct.MVert, ptr %0, i64 0, i32 2
  store i8 0, ptr %7, align 2, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @ccgDM_to_MEdge(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i16 noundef signext %3) unnamed_addr #3 !PGOFuncName !526 {
  store i32 %1, ptr %0, align 4, !tbaa !105
  %5 = getelementptr inbounds %struct.MEdge, ptr %0, i64 0, i32 1
  store i32 %2, ptr %5, align 4, !tbaa !106
  %6 = getelementptr inbounds %struct.MEdge, ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 1, !tbaa !527
  %7 = getelementptr inbounds %struct.MEdge, ptr %0, i64 0, i32 2
  store i8 0, ptr %7, align 4, !tbaa !103
  %8 = getelementptr inbounds %struct.MEdge, ptr %0, i64 0, i32 4
  store i16 %3, ptr %8, align 2, !tbaa !207
  ret void
}

; Function Attrs: optsize
declare void @BLI_rw_mutex_lock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_edgehash_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_edgehash_insert(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_rw_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_edgehash_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DM_get_vert_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DM_get_edge_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DM_get_tessface_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DM_get_poly_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_add_vert_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_add_edge_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_add_tessface_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @range_vn_i(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_add_poly_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ccgDM_getFaceMapIndex(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !528 {
  %3 = tail call ptr @ccgSubSurf_getFaceUserData(ptr noundef %0, ptr noundef %1) #14
  %4 = getelementptr inbounds i32, ptr %3, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !54
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ccgdm_create_grids(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !529 {
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !323
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %100

7:                                                ; preds = %1
  %8 = tail call i32 @ccgDM_getNumGrids(ptr noundef nonnull %0) #15
  %9 = tail call i32 @ccgSubSurf_getNumFaces(ptr noundef %3) #14
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !100
  %11 = sext i32 %9 to i64
  %12 = shl nsw i64 %11, 2
  %13 = tail call ptr %10(i64 noundef %12, ptr noundef nonnull @.str.8) #14
  %14 = icmp sgt i32 %9, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %17 = zext nneg i32 %9 to i64
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi i64 [ 0, %15 ], [ %27, %18 ]
  %20 = phi i32 [ 0, %15 ], [ %26, %18 ]
  %21 = load ptr, ptr %16, align 8, !tbaa !44
  %22 = getelementptr inbounds %struct.anon.0, ptr %21, i64 %19, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = tail call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %23) #14
  %25 = getelementptr inbounds i32, ptr %13, i64 %19
  store i32 %20, ptr %25, align 4, !tbaa !54
  %26 = add nsw i32 %24, %20
  %27 = add nuw nsw i64 %19, 1
  %28 = icmp eq i64 %27, %17
  br i1 %28, label %29, label %18, !llvm.loop !530

29:                                               ; preds = %18, %7
  %30 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !100
  %31 = sext i32 %8 to i64
  %32 = shl nsw i64 %31, 3
  %33 = tail call ptr %30(i64 noundef %32, ptr noundef nonnull @.str.9) #14
  %34 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !100
  %35 = shl nsw i64 %31, 5
  %36 = tail call ptr %34(i64 noundef %35, ptr noundef nonnull @.str.10) #14
  %37 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !100
  %38 = tail call ptr %37(i64 noundef %32, ptr noundef nonnull @.str.11) #14
  %39 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !100
  %40 = shl nsw i64 %31, 2
  %41 = tail call ptr %39(i64 noundef %40, ptr noundef nonnull @.str.12) #14
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !100
  %43 = tail call ptr %42(i64 noundef %32, ptr noundef nonnull @.str.13) #14
  %44 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 19
  store ptr %43, ptr %44, align 8, !tbaa !332
  br i1 %14, label %45, label %95

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %47 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 9
  %48 = zext nneg i32 %9 to i64
  br label %49

49:                                               ; preds = %45, %91
  %50 = phi i64 [ 0, %45 ], [ %93, %91 ]
  %51 = phi i32 [ 0, %45 ], [ %92, %91 ]
  %52 = load ptr, ptr %46, align 8, !tbaa !44
  %53 = getelementptr inbounds %struct.anon.0, ptr %52, i64 %50, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !45
  %55 = tail call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %54) #14
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %91

57:                                               ; preds = %49
  %58 = add nsw i32 %55, -1
  %59 = sext i32 %51 to i64
  br label %60

60:                                               ; preds = %57, %60
  %61 = phi i64 [ %59, %57 ], [ %87, %60 ]
  %62 = phi i32 [ 0, %57 ], [ %65, %60 ]
  %63 = add i32 %58, %62
  %64 = srem i32 %63, %55
  %65 = add nuw nsw i32 %62, 1
  %66 = add nuw nsw i32 %65, %55
  %67 = urem i32 %66, %55
  %68 = tail call ptr @ccgSubSurf_getFaceGridDataArray(ptr noundef %3, ptr noundef %54, i32 noundef %62) #14
  %69 = getelementptr inbounds ptr, ptr %33, i64 %61
  store ptr %68, ptr %69, align 8, !tbaa !100
  %70 = getelementptr inbounds ptr, ptr %38, i64 %61
  store ptr %54, ptr %70, align 8, !tbaa !100
  %71 = getelementptr inbounds %struct.DMFlagMat, ptr %41, i64 %61
  %72 = load ptr, ptr %47, align 8, !tbaa !185
  %73 = getelementptr inbounds %struct.DMFlagMat, ptr %72, i64 %50
  %74 = load i32, ptr %73, align 2
  store i32 %74, ptr %71, align 2
  %75 = getelementptr inbounds %struct.DMGridAdjacency, ptr %36, i64 %61
  %76 = add nsw i32 %67, %51
  store i32 %76, ptr %75, align 4, !tbaa !54
  %77 = getelementptr inbounds %struct.DMGridAdjacency, ptr %36, i64 %61, i32 1
  store i32 3, ptr %77, align 4, !tbaa !54
  %78 = tail call fastcc i32 @ccgdm_adjacent_grid(ptr noundef %13, ptr noundef %54, i32 noundef %64, i32 noundef 0) #15
  %79 = getelementptr inbounds [4 x i32], ptr %75, i64 0, i64 1
  store i32 %78, ptr %79, align 4, !tbaa !54
  %80 = getelementptr inbounds %struct.DMGridAdjacency, ptr %36, i64 %61, i32 1, i64 1
  store i32 1, ptr %80, align 4, !tbaa !54
  %81 = tail call fastcc i32 @ccgdm_adjacent_grid(ptr noundef %13, ptr noundef %54, i32 noundef %62, i32 noundef 1) #15
  %82 = getelementptr inbounds [4 x i32], ptr %75, i64 0, i64 2
  store i32 %81, ptr %82, align 4, !tbaa !54
  %83 = getelementptr inbounds %struct.DMGridAdjacency, ptr %36, i64 %61, i32 1, i64 2
  store i32 3, ptr %83, align 4, !tbaa !54
  %84 = add nsw i32 %64, %51
  %85 = getelementptr inbounds [4 x i32], ptr %75, i64 0, i64 3
  store i32 %84, ptr %85, align 4, !tbaa !54
  %86 = getelementptr inbounds %struct.DMGridAdjacency, ptr %36, i64 %61, i32 1, i64 3
  store i32 1, ptr %86, align 4, !tbaa !54
  %87 = add nsw i64 %61, 1
  %88 = icmp eq i32 %65, %55
  br i1 %88, label %89, label %60, !llvm.loop !531

89:                                               ; preds = %60
  %90 = trunc i64 %87 to i32
  br label %91

91:                                               ; preds = %89, %49
  %92 = phi i32 [ %51, %49 ], [ %90, %89 ]
  %93 = add nuw nsw i64 %50, 1
  %94 = icmp eq i64 %93, %48
  br i1 %94, label %95, label %49, !llvm.loop !532

95:                                               ; preds = %91, %29
  store ptr %33, ptr %4, align 8, !tbaa !323
  %96 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 17
  store ptr %38, ptr %96, align 8, !tbaa !355
  %97 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 15
  store ptr %36, ptr %97, align 8, !tbaa !325
  %98 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 16
  store ptr %13, ptr %98, align 8, !tbaa !327
  %99 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 18
  store ptr %41, ptr %99, align 8, !tbaa !330
  br label %100

100:                                              ; preds = %1, %95
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ccgdm_adjacent_grid(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !533 {
  %5 = tail call ptr @ccgSubSurf_getFaceEdge(ptr noundef %1, i32 noundef %2) #14
  %6 = tail call i32 @ccgSubSurf_getEdgeNumFaces(ptr noundef %5) #14
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %45

8:                                                ; preds = %4, %28
  %9 = phi i32 [ %30, %28 ], [ 0, %4 ]
  %10 = phi i32 [ %29, %28 ], [ 0, %4 ]
  %11 = phi i1 [ false, %28 ], [ true, %4 ]
  %12 = phi i32 [ 1, %28 ], [ 0, %4 ]
  %13 = tail call ptr @ccgSubSurf_getEdgeFace(ptr noundef %5, i32 noundef %12) #14
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %28, label %15

15:                                               ; preds = %8
  %16 = tail call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %13) #14
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15, %22
  %19 = phi i32 [ %23, %22 ], [ 0, %15 ]
  %20 = tail call ptr @ccgSubSurf_getFaceEdge(ptr noundef %13, i32 noundef %19) #14
  %21 = icmp eq ptr %20, %5
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = add nuw nsw i32 %19, 1
  %24 = icmp eq i32 %23, %16
  br i1 %24, label %28, label %18, !llvm.loop !534

25:                                               ; preds = %18, %15
  %26 = phi i32 [ 0, %15 ], [ %19, %18 ]
  %27 = icmp eq i32 %26, %16
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %8, %25
  %29 = phi i32 [ %16, %25 ], [ %10, %8 ], [ %16, %22 ]
  %30 = phi i32 [ %16, %25 ], [ %9, %8 ], [ %16, %22 ]
  br i1 %11, label %8, label %31, !llvm.loop !535

31:                                               ; preds = %25, %28
  %32 = phi i32 [ %26, %25 ], [ %29, %28 ]
  %33 = phi i32 [ %16, %25 ], [ %30, %28 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %31
  %36 = tail call ptr @ccgSubSurf_getFaceFaceHandle(ptr noundef %13) #14
  %37 = ptrtoint ptr %36 to i64
  %38 = shl i64 %37, 32
  %39 = ashr exact i64 %38, 32
  %40 = getelementptr inbounds i32, ptr %0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !54
  %42 = add nsw i32 %32, %3
  %43 = srem i32 %42, %33
  %44 = add nsw i32 %43, %41
  br label %45

45:                                               ; preds = %31, %4, %35
  %46 = phi i32 [ %44, %35 ], [ -1, %4 ], [ -1, %31 ]
  ret i32 %46
}

; Function Attrs: optsize
declare ptr @ccgSubSurf_getEdgeFace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_vert_poly_map_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @ccgDM_use_grid_pbvh(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !536 {
  %2 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !334
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare void @BKE_pbvh_grids_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_pbvh_new() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pbvh_build_grids(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pbvh_build_mesh(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @pbvh_show_diffuse_color_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DM_get_loop_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ccgdm_pbvh_update(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !537 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !350
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = tail call fastcc i32 @ccgDM_use_grid_pbvh(ptr noundef nonnull %0) #15, !range !352
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @BKE_pbvh_get_grid_updates(ptr noundef nonnull %5, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %3) #14
  %11 = load i32, ptr %3, align 4, !tbaa !54
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = load ptr, ptr %2, align 8, !tbaa !100
  %17 = call i32 @ccgSubSurf_updateFromFaces(ptr noundef %15, i32 noundef 0, ptr noundef %16, i32 noundef %11) #14
  %18 = load ptr, ptr %14, align 8, !tbaa !34
  %19 = load ptr, ptr %2, align 8, !tbaa !100
  %20 = load i32, ptr %3, align 4, !tbaa !54
  %21 = call i32 @ccgSubSurf_updateNormals(ptr noundef %18, ptr noundef %19, i32 noundef %20) #14
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  %23 = load ptr, ptr %2, align 8, !tbaa !100
  call void %22(ptr noundef %23) #14
  br label %24

24:                                               ; preds = %13, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %25

25:                                               ; preds = %24, %7, %1
  ret void
}

; Function Attrs: optsize
declare i32 @ccgSubSurf_getEdgeAge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pbvh_get_grid_updates(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_updateFromFaces(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ccgSubSurf_updateNormals(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pbvh_draw(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glShadeModel(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glNormal3sv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glNormal3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ccgDM_glNormalFast(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !538 {
  %5 = alloca [3 x float], align 8
  %6 = load float, ptr %2, align 4, !tbaa !66
  %7 = load float, ptr %0, align 4, !tbaa !66
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !66
  %10 = getelementptr inbounds float, ptr %0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !66
  %12 = fsub float %9, %11
  %13 = getelementptr inbounds float, ptr %2, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !66
  %15 = getelementptr inbounds float, ptr %0, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !66
  %17 = load float, ptr %3, align 4, !tbaa !66
  %18 = load float, ptr %1, align 4, !tbaa !66
  %19 = fsub float %17, %18
  %20 = getelementptr inbounds float, ptr %3, i64 1
  %21 = getelementptr inbounds float, ptr %1, i64 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  %22 = insertelement <2 x float> poison, float %14, i64 0
  %23 = insertelement <2 x float> %22, float %6, i64 1
  %24 = insertelement <2 x float> poison, float %16, i64 0
  %25 = insertelement <2 x float> %24, float %7, i64 1
  %26 = fsub <2 x float> %23, %25
  %27 = load <2 x float>, ptr %20, align 4, !tbaa !66
  %28 = load <2 x float>, ptr %21, align 4, !tbaa !66
  %29 = fsub <2 x float> %27, %28
  %30 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %31 = insertelement <2 x float> %30, float %19, i64 1
  %32 = fneg <2 x float> %31
  %33 = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %34 = insertelement <2 x float> %33, float %12, i64 0
  %35 = fmul <2 x float> %34, %32
  %36 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %29, <2 x float> %26, <2 x float> %35)
  store <2 x float> %36, ptr %5, align 8, !tbaa !66
  %37 = extractelement <2 x float> %29, i64 0
  %38 = fneg float %37
  %39 = extractelement <2 x float> %26, i64 1
  %40 = fmul float %39, %38
  %41 = tail call float @llvm.fmuladd.f32(float %19, float %12, float %40)
  %42 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float %41, ptr %42, align 8, !tbaa !66
  call void @glNormal3fv(ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ccgDM_drawFacesTex_common(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !539 {
  %6 = alloca %struct.CCGKey, align 4
  %7 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #16
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !412
  %11 = tail call ptr %10(ptr noundef %0, i32 noundef 20) #14
  %12 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 5) #14
  %13 = load ptr, ptr %9, align 8, !tbaa !412
  %14 = tail call ptr %13(ptr noundef %0, i32 noundef 40) #14
  %15 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !185
  %17 = tail call i32 @ccgSubSurf_getGridSize(ptr noundef %8) #14
  %18 = add i32 %17, -1
  call void @CCG_key_top_level(ptr noundef nonnull %6, ptr noundef %8) #14
  call fastcc void @ccgdm_pbvh_update(ptr noundef %0) #15
  %19 = icmp eq ptr %11, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load ptr, ptr %9, align 8, !tbaa !412
  %22 = call ptr %21(ptr noundef nonnull %0, i32 noundef 6) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load ptr, ptr %9, align 8, !tbaa !412
  %26 = call ptr %25(ptr noundef nonnull %0, i32 noundef 22) #14
  br label %27

27:                                               ; preds = %5, %24, %20
  %28 = phi ptr [ %22, %20 ], [ %26, %24 ], [ %11, %5 ]
  %29 = call i32 @ccgSubSurf_getNumFaces(ptr noundef %8) #14
  %30 = and i32 %4, 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %34 = call i32 @CustomData_get_stencil_layer(ptr noundef nonnull %33, i32 noundef 5) #14
  %35 = call ptr @CustomData_get_layer_n(ptr noundef nonnull %33, i32 noundef 5, i32 noundef %34) #14
  br label %36

36:                                               ; preds = %32, %27
  %37 = phi ptr [ %35, %32 ], [ null, %27 ]
  %38 = icmp sgt i32 %29, 0
  br i1 %38, label %39, label %468

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.CCGDerivedMesh, ptr %0, i64 0, i32 7
  %41 = icmp eq ptr %16, null
  %42 = icmp eq ptr %37, null
  %43 = mul nsw i32 %18, %18
  %44 = icmp eq ptr %1, null
  %45 = icmp eq ptr %2, null
  %46 = icmp sgt i32 %17, 1
  %47 = add nsw i32 %17, -2
  %48 = zext nneg i32 %29 to i64
  br label %49

49:                                               ; preds = %39, %461
  %50 = phi i64 [ 0, %39 ], [ %466, %461 ]
  %51 = phi ptr [ %28, %39 ], [ %465, %461 ]
  %52 = phi ptr [ %12, %39 ], [ %464, %461 ]
  %53 = phi ptr [ null, %39 ], [ %463, %461 ]
  %54 = phi ptr [ undef, %39 ], [ %101, %461 ]
  %55 = phi ptr [ %14, %39 ], [ %462, %461 ]
  %56 = phi i32 [ 0, %39 ], [ %100, %461 ]
  %57 = phi i32 [ -1, %39 ], [ %99, %461 ]
  %58 = load ptr, ptr %40, align 8, !tbaa !44
  %59 = getelementptr inbounds %struct.anon.0, ptr %58, i64 %50, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !45
  %61 = call i32 @ccgSubSurf_getFaceNumVerts(ptr noundef %60) #14
  %62 = call fastcc i32 @ccgDM_getFaceMapIndex(ptr noundef %8, ptr noundef %60) #15
  %63 = call ptr @ccgSubSurf_getFaceFaceHandle(ptr noundef %60) #14
  br i1 %41, label %80, label %64

64:                                               ; preds = %49
  %65 = ptrtoint ptr %63 to i64
  %66 = icmp eq ptr %55, null
  %67 = shl i64 %65, 32
  %68 = ashr exact i64 %67, 32
  br i1 %66, label %69, label %74

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.DMFlagMat, ptr %16, i64 %68, i32 1
  %71 = load i8, ptr %70, align 2, !tbaa !258
  %72 = and i8 %71, 1
  %73 = icmp ne i8 %72, 0
  br label %74

74:                                               ; preds = %64, %69
  %75 = phi i1 [ %73, %69 ], [ true, %64 ]
  %76 = zext i1 %75 to i32
  %77 = getelementptr inbounds %struct.DMFlagMat, ptr %16, i64 %68
  %78 = load i16, ptr %77, align 2, !tbaa !192
  %79 = sext i16 %78 to i32
  br label %80

80:                                               ; preds = %49, %74
  %81 = phi i32 [ %76, %74 ], [ 1, %49 ]
  %82 = phi i32 [ %79, %74 ], [ 0, %49 ]
  br i1 %31, label %98, label %83

83:                                               ; preds = %80
  %84 = icmp eq i32 %82, %57
  br i1 %84, label %87, label %85

85:                                               ; preds = %83
  %86 = call ptr @DM_paint_uvlayer_active_get(ptr noundef nonnull %0, i32 noundef %82) #14
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %82, %85 ], [ %57, %83 ]
  %89 = phi ptr [ %86, %85 ], [ %54, %83 ]
  %90 = icmp eq ptr %89, null
  %91 = sext i32 %56 to i64
  %92 = getelementptr inbounds %struct.MTFace, ptr %89, i64 %91
  %93 = select i1 %90, ptr null, ptr %92
  %94 = getelementptr inbounds %struct.MTFace, ptr %37, i64 %91
  %95 = select i1 %42, ptr null, ptr %94
  %96 = mul nsw i32 %43, %61
  %97 = add nsw i32 %96, %56
  br label %98

98:                                               ; preds = %87, %80
  %99 = phi i32 [ %88, %87 ], [ %57, %80 ]
  %100 = phi i32 [ %97, %87 ], [ %56, %80 ]
  %101 = phi ptr [ %89, %87 ], [ %54, %80 ]
  %102 = phi ptr [ %95, %87 ], [ %53, %80 ]
  %103 = phi ptr [ %93, %87 ], [ %52, %80 ]
  br i1 %44, label %108, label %104

104:                                              ; preds = %98
  %105 = icmp ne ptr %51, null
  %106 = zext i1 %105 to i8
  %107 = call i32 %1(ptr noundef %103, i8 noundef zeroext %106, i32 noundef %82) #14
  br label %123

108:                                              ; preds = %98
  %109 = icmp eq i32 %62, -1
  br i1 %109, label %119, label %110

110:                                              ; preds = %108
  br i1 %45, label %111, label %117

111:                                              ; preds = %110
  %112 = icmp eq ptr %55, null
  %113 = mul nsw i32 %43, %61
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [4 x [3 x i16]], ptr %55, i64 %114
  %116 = select i1 %112, ptr null, ptr %115
  br label %140

117:                                              ; preds = %110
  %118 = call i32 %2(ptr noundef %3, i32 noundef %62) #14
  br label %123

119:                                              ; preds = %108
  %120 = call i32 @GPU_enable_material(i32 noundef %82, ptr noundef null) #14
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i32
  br label %123

123:                                              ; preds = %117, %119, %104
  %124 = phi i32 [ %107, %104 ], [ %122, %119 ], [ %118, %117 ]
  %125 = icmp eq ptr %55, null
  %126 = mul nsw i32 %43, %61
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [4 x [3 x i16]], ptr %55, i64 %127
  %129 = select i1 %125, ptr null, ptr %128
  %130 = icmp eq i32 %124, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %123
  %132 = icmp eq ptr %103, null
  %133 = getelementptr inbounds %struct.MTFace, ptr %103, i64 %127
  %134 = select i1 %132, ptr null, ptr %133
  %135 = icmp eq ptr %51, null
  %136 = shl nsw i32 %126, 2
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.MCol, ptr %51, i64 %137
  %139 = select i1 %135, ptr null, ptr %138
  br label %461

140:                                              ; preds = %111, %123
  %141 = phi ptr [ %116, %111 ], [ %129, %123 ]
  %142 = phi i32 [ %113, %111 ], [ %126, %123 ]
  %143 = phi i32 [ 1, %111 ], [ %124, %123 ]
  %144 = icmp eq ptr %51, null
  %145 = shl nsw i32 %142, 2
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.MCol, ptr %51, i64 %146
  %148 = select i1 %144, ptr null, ptr %147
  %149 = icmp sgt i32 %61, 0
  br i1 %149, label %150, label %461

150:                                              ; preds = %140
  %151 = icmp eq i32 %143, 2
  %152 = select i1 %151, ptr null, ptr %51
  %153 = icmp eq i32 %81, 0
  br label %154

154:                                              ; preds = %150, %454
  %155 = phi ptr [ %103, %150 ], [ %458, %454 ]
  %156 = phi ptr [ %102, %150 ], [ %457, %454 ]
  %157 = phi ptr [ %55, %150 ], [ %456, %454 ]
  %158 = phi ptr [ %152, %150 ], [ %455, %454 ]
  %159 = phi i32 [ 0, %150 ], [ %459, %454 ]
  %160 = call ptr @ccgSubSurf_getFaceGridDataArray(ptr noundef %8, ptr noundef %60, i32 noundef %159) #14
  %161 = icmp eq ptr %157, null
  br i1 %161, label %255, label %162

162:                                              ; preds = %154
  call void @glShadeModel(i32 noundef 7425) #14
  call void @glBegin(i32 noundef 7) #14
  br i1 %46, label %163, label %449

163:                                              ; preds = %162, %253
  %164 = phi ptr [ %246, %253 ], [ %155, %162 ]
  %165 = phi ptr [ %248, %253 ], [ %156, %162 ]
  %166 = phi ptr [ %251, %253 ], [ %157, %162 ]
  %167 = phi ptr [ %250, %253 ], [ %158, %162 ]
  %168 = phi i32 [ %169, %253 ], [ 0, %162 ]
  %169 = add nuw nsw i32 %168, 1
  br label %170

170:                                              ; preds = %163, %244
  %171 = phi ptr [ %164, %163 ], [ %246, %244 ]
  %172 = phi ptr [ %165, %163 ], [ %248, %244 ]
  %173 = phi ptr [ %166, %163 ], [ %251, %244 ]
  %174 = phi ptr [ %167, %163 ], [ %250, %244 ]
  %175 = phi i32 [ 0, %163 ], [ %177, %244 ]
  %176 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %6, ptr noundef %160, i32 noundef %175, i32 noundef %168) #15
  %177 = add nuw nsw i32 %175, 1
  %178 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %6, ptr noundef %160, i32 noundef %177, i32 noundef %168) #15
  %179 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %6, ptr noundef %160, i32 noundef %177, i32 noundef %169) #15
  %180 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %6, ptr noundef %160, i32 noundef %175, i32 noundef %169) #15
  %181 = icmp eq ptr %171, null
  br i1 %181, label %184, label %182

182:                                              ; preds = %170
  %183 = getelementptr inbounds [4 x [2 x float]], ptr %171, i64 0, i64 1
  call void @glTexCoord2fv(ptr noundef nonnull %183) #14
  br label %184

184:                                              ; preds = %182, %170
  %185 = icmp eq ptr %172, null
  br i1 %185, label %189, label %186

186:                                              ; preds = %184
  %187 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !100
  %188 = getelementptr inbounds [4 x [2 x float]], ptr %172, i64 0, i64 1
  call void %187(i32 noundef 33986, ptr noundef nonnull %188) #14
  br label %189

189:                                              ; preds = %186, %184
  %190 = icmp eq ptr %174, null
  br i1 %190, label %198, label %191

191:                                              ; preds = %189
  %192 = getelementptr inbounds i8, ptr %174, i64 7
  %193 = load i8, ptr %192, align 1, !tbaa !426
  %194 = getelementptr inbounds i8, ptr %174, i64 6
  %195 = load i8, ptr %194, align 1, !tbaa !426
  %196 = getelementptr inbounds i8, ptr %174, i64 5
  %197 = load i8, ptr %196, align 1, !tbaa !426
  call void @glColor3ub(i8 noundef zeroext %193, i8 noundef zeroext %195, i8 noundef zeroext %197) #14
  br label %198

198:                                              ; preds = %191, %189
  %199 = getelementptr inbounds [4 x [3 x i16]], ptr %173, i64 0, i64 1
  call void @glNormal3sv(ptr noundef nonnull %199) #14
  call void @glVertex3fv(ptr noundef %180) #14
  br i1 %181, label %202, label %200

200:                                              ; preds = %198
  %201 = getelementptr inbounds [4 x [2 x float]], ptr %171, i64 0, i64 2
  call void @glTexCoord2fv(ptr noundef nonnull %201) #14
  br label %202

202:                                              ; preds = %200, %198
  br i1 %185, label %206, label %203

203:                                              ; preds = %202
  %204 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !100
  %205 = getelementptr inbounds [4 x [2 x float]], ptr %172, i64 0, i64 2
  call void %204(i32 noundef 33986, ptr noundef nonnull %205) #14
  br label %206

206:                                              ; preds = %203, %202
  br i1 %190, label %214, label %207

207:                                              ; preds = %206
  %208 = getelementptr inbounds i8, ptr %174, i64 11
  %209 = load i8, ptr %208, align 1, !tbaa !426
  %210 = getelementptr inbounds i8, ptr %174, i64 10
  %211 = load i8, ptr %210, align 1, !tbaa !426
  %212 = getelementptr inbounds i8, ptr %174, i64 9
  %213 = load i8, ptr %212, align 1, !tbaa !426
  call void @glColor3ub(i8 noundef zeroext %209, i8 noundef zeroext %211, i8 noundef zeroext %213) #14
  br label %214

214:                                              ; preds = %207, %206
  %215 = getelementptr inbounds [4 x [3 x i16]], ptr %173, i64 0, i64 2
  call void @glNormal3sv(ptr noundef nonnull %215) #14
  call void @glVertex3fv(ptr noundef %179) #14
  br i1 %181, label %218, label %216

216:                                              ; preds = %214
  %217 = getelementptr inbounds [4 x [2 x float]], ptr %171, i64 0, i64 3
  call void @glTexCoord2fv(ptr noundef nonnull %217) #14
  br label %218

218:                                              ; preds = %216, %214
  br i1 %185, label %222, label %219

219:                                              ; preds = %218
  %220 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !100
  %221 = getelementptr inbounds [4 x [2 x float]], ptr %172, i64 0, i64 3
  call void %220(i32 noundef 33986, ptr noundef nonnull %221) #14
  br label %222

222:                                              ; preds = %219, %218
  br i1 %190, label %230, label %223

223:                                              ; preds = %222
  %224 = getelementptr inbounds i8, ptr %174, i64 15
  %225 = load i8, ptr %224, align 1, !tbaa !426
  %226 = getelementptr inbounds i8, ptr %174, i64 14
  %227 = load i8, ptr %226, align 1, !tbaa !426
  %228 = getelementptr inbounds i8, ptr %174, i64 13
  %229 = load i8, ptr %228, align 1, !tbaa !426
  call void @glColor3ub(i8 noundef zeroext %225, i8 noundef zeroext %227, i8 noundef zeroext %229) #14
  br label %230

230:                                              ; preds = %223, %222
  %231 = getelementptr inbounds [4 x [3 x i16]], ptr %173, i64 0, i64 3
  call void @glNormal3sv(ptr noundef nonnull %231) #14
  call void @glVertex3fv(ptr noundef %178) #14
  br i1 %181, label %233, label %232

232:                                              ; preds = %230
  call void @glTexCoord2fv(ptr noundef nonnull %171) #14
  br label %233

233:                                              ; preds = %232, %230
  br i1 %185, label %236, label %234

234:                                              ; preds = %233
  %235 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !100
  call void %235(i32 noundef 33986, ptr noundef nonnull %172) #14
  br label %236

236:                                              ; preds = %234, %233
  br i1 %190, label %244, label %237

237:                                              ; preds = %236
  %238 = getelementptr inbounds i8, ptr %174, i64 3
  %239 = load i8, ptr %238, align 1, !tbaa !426
  %240 = getelementptr inbounds i8, ptr %174, i64 2
  %241 = load i8, ptr %240, align 1, !tbaa !426
  %242 = getelementptr inbounds i8, ptr %174, i64 1
  %243 = load i8, ptr %242, align 1, !tbaa !426
  call void @glColor3ub(i8 noundef zeroext %239, i8 noundef zeroext %241, i8 noundef zeroext %243) #14
  br label %244

244:                                              ; preds = %237, %236
  call void @glNormal3sv(ptr noundef nonnull %173) #14
  call void @glVertex3fv(ptr noundef %176) #14
  %245 = getelementptr inbounds %struct.MTFace, ptr %171, i64 1
  %246 = select i1 %181, ptr null, ptr %245
  %247 = getelementptr inbounds %struct.MTFace, ptr %172, i64 1
  %248 = select i1 %185, ptr null, ptr %247
  %249 = getelementptr inbounds i8, ptr %174, i64 16
  %250 = select i1 %190, ptr null, ptr %249
  %251 = getelementptr inbounds [4 x [3 x i16]], ptr %173, i64 1
  %252 = icmp eq i32 %177, %18
  br i1 %252, label %253, label %170, !llvm.loop !540

253:                                              ; preds = %244
  %254 = icmp eq i32 %169, %18
  br i1 %254, label %449, label %163, !llvm.loop !541

255:                                              ; preds = %154
  br i1 %153, label %360, label %256

256:                                              ; preds = %255
  call void @glShadeModel(i32 noundef 7425) #14
  br i1 %46, label %257, label %454

257:                                              ; preds = %256, %351
  %258 = phi ptr [ %354, %351 ], [ %155, %256 ]
  %259 = phi ptr [ %356, %351 ], [ %156, %256 ]
  %260 = phi ptr [ %358, %351 ], [ %158, %256 ]
  %261 = phi i32 [ %262, %351 ], [ 0, %256 ]
  call void @glBegin(i32 noundef 8) #14
  %262 = add nuw nsw i32 %261, 1
  br label %263

263:                                              ; preds = %257, %301
  %264 = phi ptr [ %258, %257 ], [ %312, %301 ]
  %265 = phi ptr [ %259, %257 ], [ %311, %301 ]
  %266 = phi ptr [ %260, %257 ], [ %310, %301 ]
  %267 = phi i32 [ 0, %257 ], [ %313, %301 ]
  %268 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %6, ptr noundef %160, i32 noundef %267, i32 noundef %261) #15
  %269 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %6, ptr noundef %160, i32 noundef %267, i32 noundef %262) #15
  %270 = icmp eq ptr %264, null
  br i1 %270, label %272, label %271

271:                                              ; preds = %263
  call void @glTexCoord2fv(ptr noundef nonnull %264) #14
  br label %272

272:                                              ; preds = %271, %263
  %273 = icmp eq ptr %265, null
  br i1 %273, label %276, label %274

274:                                              ; preds = %272
  %275 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !100
  call void %275(i32 noundef 33986, ptr noundef nonnull %265) #14
  br label %276

276:                                              ; preds = %274, %272
  %277 = icmp eq ptr %266, null
  br i1 %277, label %285, label %278

278:                                              ; preds = %276
  %279 = getelementptr inbounds i8, ptr %266, i64 3
  %280 = load i8, ptr %279, align 1, !tbaa !426
  %281 = getelementptr inbounds i8, ptr %266, i64 2
  %282 = load i8, ptr %281, align 1, !tbaa !426
  %283 = getelementptr inbounds i8, ptr %266, i64 1
  %284 = load i8, ptr %283, align 1, !tbaa !426
  call void @glColor3ub(i8 noundef zeroext %280, i8 noundef zeroext %282, i8 noundef zeroext %284) #14
  br label %285

285:                                              ; preds = %278, %276
  %286 = call fastcc ptr @CCG_elem_no(ptr noundef nonnull %6, ptr noundef %268) #15
  call void @glNormal3fv(ptr noundef %286) #14
  call void @glVertex3fv(ptr noundef %268) #14
  br i1 %270, label %289, label %287

287:                                              ; preds = %285
  %288 = getelementptr inbounds [4 x [2 x float]], ptr %264, i64 0, i64 1
  call void @glTexCoord2fv(ptr noundef nonnull %288) #14
  br label %289

289:                                              ; preds = %287, %285
  br i1 %273, label %293, label %290

290:                                              ; preds = %289
  %291 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !100
  %292 = getelementptr inbounds [4 x [2 x float]], ptr %265, i64 0, i64 1
  call void %291(i32 noundef 33986, ptr noundef nonnull %292) #14
  br label %293

293:                                              ; preds = %290, %289
  br i1 %277, label %301, label %294

294:                                              ; preds = %293
  %295 = getelementptr inbounds i8, ptr %266, i64 7
  %296 = load i8, ptr %295, align 1, !tbaa !426
  %297 = getelementptr inbounds i8, ptr %266, i64 6
  %298 = load i8, ptr %297, align 1, !tbaa !426
  %299 = getelementptr inbounds i8, ptr %266, i64 5
  %300 = load i8, ptr %299, align 1, !tbaa !426
  call void @glColor3ub(i8 noundef zeroext %296, i8 noundef zeroext %298, i8 noundef zeroext %300) #14
  br label %301

301:                                              ; preds = %294, %293
  %302 = call fastcc ptr @CCG_elem_no(ptr noundef nonnull %6, ptr noundef %269) #15
  call void @glNormal3fv(ptr noundef %302) #14
  call void @glVertex3fv(ptr noundef %269) #14
  %303 = icmp eq i32 %267, %47
  %304 = getelementptr inbounds %struct.MTFace, ptr %264, i64 1
  %305 = select i1 %270, ptr null, ptr %304
  %306 = getelementptr inbounds %struct.MTFace, ptr %265, i64 1
  %307 = select i1 %273, ptr null, ptr %306
  %308 = getelementptr inbounds i8, ptr %266, i64 16
  %309 = select i1 %277, ptr null, ptr %308
  %310 = select i1 %303, ptr %266, ptr %309
  %311 = select i1 %303, ptr %265, ptr %307
  %312 = select i1 %303, ptr %264, ptr %305
  %313 = add nuw nsw i32 %267, 1
  %314 = icmp eq i32 %313, %18
  br i1 %314, label %315, label %263, !llvm.loop !542

315:                                              ; preds = %301
  %316 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %6, ptr noundef %160, i32 noundef %18, i32 noundef %261) #15
  %317 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %6, ptr noundef %160, i32 noundef %18, i32 noundef %262) #15
  %318 = icmp eq ptr %312, null
  br i1 %318, label %321, label %319

319:                                              ; preds = %315
  %320 = getelementptr inbounds [4 x [2 x float]], ptr %312, i64 0, i64 3
  call void @glTexCoord2fv(ptr noundef nonnull %320) #14
  br label %321

321:                                              ; preds = %319, %315
  %322 = icmp eq ptr %311, null
  br i1 %322, label %326, label %323

323:                                              ; preds = %321
  %324 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !100
  %325 = getelementptr inbounds [4 x [2 x float]], ptr %311, i64 0, i64 3
  call void %324(i32 noundef 33986, ptr noundef nonnull %325) #14
  br label %326

326:                                              ; preds = %323, %321
  %327 = icmp eq ptr %310, null
  br i1 %327, label %335, label %328

328:                                              ; preds = %326
  %329 = getelementptr inbounds i8, ptr %310, i64 15
  %330 = load i8, ptr %329, align 1, !tbaa !426
  %331 = getelementptr inbounds i8, ptr %310, i64 14
  %332 = load i8, ptr %331, align 1, !tbaa !426
  %333 = getelementptr inbounds i8, ptr %310, i64 13
  %334 = load i8, ptr %333, align 1, !tbaa !426
  call void @glColor3ub(i8 noundef zeroext %330, i8 noundef zeroext %332, i8 noundef zeroext %334) #14
  br label %335

335:                                              ; preds = %328, %326
  %336 = call fastcc ptr @CCG_elem_no(ptr noundef nonnull %6, ptr noundef %316) #15
  call void @glNormal3fv(ptr noundef %336) #14
  call void @glVertex3fv(ptr noundef %316) #14
  br i1 %318, label %339, label %337

337:                                              ; preds = %335
  %338 = getelementptr inbounds [4 x [2 x float]], ptr %312, i64 0, i64 2
  call void @glTexCoord2fv(ptr noundef nonnull %338) #14
  br label %339

339:                                              ; preds = %337, %335
  br i1 %322, label %343, label %340

340:                                              ; preds = %339
  %341 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !100
  %342 = getelementptr inbounds [4 x [2 x float]], ptr %311, i64 0, i64 2
  call void %341(i32 noundef 33986, ptr noundef nonnull %342) #14
  br label %343

343:                                              ; preds = %340, %339
  br i1 %327, label %351, label %344

344:                                              ; preds = %343
  %345 = getelementptr inbounds i8, ptr %310, i64 11
  %346 = load i8, ptr %345, align 1, !tbaa !426
  %347 = getelementptr inbounds i8, ptr %310, i64 10
  %348 = load i8, ptr %347, align 1, !tbaa !426
  %349 = getelementptr inbounds i8, ptr %310, i64 9
  %350 = load i8, ptr %349, align 1, !tbaa !426
  call void @glColor3ub(i8 noundef zeroext %346, i8 noundef zeroext %348, i8 noundef zeroext %350) #14
  br label %351

351:                                              ; preds = %344, %343
  %352 = call fastcc ptr @CCG_elem_no(ptr noundef nonnull %6, ptr noundef %317) #15
  call void @glNormal3fv(ptr noundef %352) #14
  call void @glVertex3fv(ptr noundef %317) #14
  %353 = getelementptr inbounds %struct.MTFace, ptr %312, i64 1
  %354 = select i1 %318, ptr null, ptr %353
  %355 = getelementptr inbounds %struct.MTFace, ptr %311, i64 1
  %356 = select i1 %322, ptr null, ptr %355
  %357 = getelementptr inbounds i8, ptr %310, i64 16
  %358 = select i1 %327, ptr null, ptr %357
  call void @glEnd() #14
  %359 = icmp eq i32 %262, %18
  br i1 %359, label %454, label %257, !llvm.loop !543

360:                                              ; preds = %255
  %361 = icmp eq ptr %158, null
  %362 = select i1 %361, i32 7424, i32 7425
  call void @glShadeModel(i32 noundef %362) #14
  call void @glBegin(i32 noundef 7) #14
  br i1 %46, label %363, label %449

363:                                              ; preds = %360, %447
  %364 = phi ptr [ %441, %447 ], [ %155, %360 ]
  %365 = phi ptr [ %443, %447 ], [ %156, %360 ]
  %366 = phi ptr [ %445, %447 ], [ %158, %360 ]
  %367 = phi i32 [ %368, %447 ], [ 0, %360 ]
  %368 = add nuw nsw i32 %367, 1
  br label %369

369:                                              ; preds = %363, %439
  %370 = phi ptr [ %364, %363 ], [ %441, %439 ]
  %371 = phi ptr [ %365, %363 ], [ %443, %439 ]
  %372 = phi ptr [ %366, %363 ], [ %445, %439 ]
  %373 = phi i32 [ 0, %363 ], [ %375, %439 ]
  %374 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %6, ptr noundef %160, i32 noundef %373, i32 noundef %367) #15
  %375 = add nuw nsw i32 %373, 1
  %376 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %6, ptr noundef %160, i32 noundef %375, i32 noundef %367) #15
  %377 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %6, ptr noundef %160, i32 noundef %375, i32 noundef %368) #15
  %378 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %6, ptr noundef %160, i32 noundef %373, i32 noundef %368) #15
  call fastcc void @ccgDM_glNormalFast(ptr noundef %374, ptr noundef %376, ptr noundef %377, ptr noundef %378) #15
  %379 = icmp eq ptr %370, null
  br i1 %379, label %382, label %380

380:                                              ; preds = %369
  %381 = getelementptr inbounds [4 x [2 x float]], ptr %370, i64 0, i64 1
  call void @glTexCoord2fv(ptr noundef nonnull %381) #14
  br label %382

382:                                              ; preds = %380, %369
  %383 = icmp eq ptr %371, null
  br i1 %383, label %387, label %384

384:                                              ; preds = %382
  %385 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !100
  %386 = getelementptr inbounds [4 x [2 x float]], ptr %371, i64 0, i64 1
  call void %385(i32 noundef 33986, ptr noundef nonnull %386) #14
  br label %387

387:                                              ; preds = %384, %382
  %388 = icmp eq ptr %372, null
  br i1 %388, label %396, label %389

389:                                              ; preds = %387
  %390 = getelementptr inbounds i8, ptr %372, i64 7
  %391 = load i8, ptr %390, align 1, !tbaa !426
  %392 = getelementptr inbounds i8, ptr %372, i64 6
  %393 = load i8, ptr %392, align 1, !tbaa !426
  %394 = getelementptr inbounds i8, ptr %372, i64 5
  %395 = load i8, ptr %394, align 1, !tbaa !426
  call void @glColor3ub(i8 noundef zeroext %391, i8 noundef zeroext %393, i8 noundef zeroext %395) #14
  br label %396

396:                                              ; preds = %389, %387
  call void @glVertex3fv(ptr noundef %378) #14
  br i1 %379, label %399, label %397

397:                                              ; preds = %396
  %398 = getelementptr inbounds [4 x [2 x float]], ptr %370, i64 0, i64 2
  call void @glTexCoord2fv(ptr noundef nonnull %398) #14
  br label %399

399:                                              ; preds = %397, %396
  br i1 %383, label %403, label %400

400:                                              ; preds = %399
  %401 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !100
  %402 = getelementptr inbounds [4 x [2 x float]], ptr %371, i64 0, i64 2
  call void %401(i32 noundef 33986, ptr noundef nonnull %402) #14
  br label %403

403:                                              ; preds = %400, %399
  br i1 %388, label %411, label %404

404:                                              ; preds = %403
  %405 = getelementptr inbounds i8, ptr %372, i64 11
  %406 = load i8, ptr %405, align 1, !tbaa !426
  %407 = getelementptr inbounds i8, ptr %372, i64 10
  %408 = load i8, ptr %407, align 1, !tbaa !426
  %409 = getelementptr inbounds i8, ptr %372, i64 9
  %410 = load i8, ptr %409, align 1, !tbaa !426
  call void @glColor3ub(i8 noundef zeroext %406, i8 noundef zeroext %408, i8 noundef zeroext %410) #14
  br label %411

411:                                              ; preds = %404, %403
  call void @glVertex3fv(ptr noundef %377) #14
  br i1 %379, label %414, label %412

412:                                              ; preds = %411
  %413 = getelementptr inbounds [4 x [2 x float]], ptr %370, i64 0, i64 3
  call void @glTexCoord2fv(ptr noundef nonnull %413) #14
  br label %414

414:                                              ; preds = %412, %411
  br i1 %383, label %418, label %415

415:                                              ; preds = %414
  %416 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !100
  %417 = getelementptr inbounds [4 x [2 x float]], ptr %371, i64 0, i64 3
  call void %416(i32 noundef 33986, ptr noundef nonnull %417) #14
  br label %418

418:                                              ; preds = %415, %414
  br i1 %388, label %426, label %419

419:                                              ; preds = %418
  %420 = getelementptr inbounds i8, ptr %372, i64 15
  %421 = load i8, ptr %420, align 1, !tbaa !426
  %422 = getelementptr inbounds i8, ptr %372, i64 14
  %423 = load i8, ptr %422, align 1, !tbaa !426
  %424 = getelementptr inbounds i8, ptr %372, i64 13
  %425 = load i8, ptr %424, align 1, !tbaa !426
  call void @glColor3ub(i8 noundef zeroext %421, i8 noundef zeroext %423, i8 noundef zeroext %425) #14
  br label %426

426:                                              ; preds = %419, %418
  call void @glVertex3fv(ptr noundef %376) #14
  br i1 %379, label %428, label %427

427:                                              ; preds = %426
  call void @glTexCoord2fv(ptr noundef nonnull %370) #14
  br label %428

428:                                              ; preds = %427, %426
  br i1 %383, label %431, label %429

429:                                              ; preds = %428
  %430 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !100
  call void %430(i32 noundef 33986, ptr noundef nonnull %371) #14
  br label %431

431:                                              ; preds = %429, %428
  br i1 %388, label %439, label %432

432:                                              ; preds = %431
  %433 = getelementptr inbounds i8, ptr %372, i64 3
  %434 = load i8, ptr %433, align 1, !tbaa !426
  %435 = getelementptr inbounds i8, ptr %372, i64 2
  %436 = load i8, ptr %435, align 1, !tbaa !426
  %437 = getelementptr inbounds i8, ptr %372, i64 1
  %438 = load i8, ptr %437, align 1, !tbaa !426
  call void @glColor3ub(i8 noundef zeroext %434, i8 noundef zeroext %436, i8 noundef zeroext %438) #14
  br label %439

439:                                              ; preds = %432, %431
  call void @glVertex3fv(ptr noundef %374) #14
  %440 = getelementptr inbounds %struct.MTFace, ptr %370, i64 1
  %441 = select i1 %379, ptr null, ptr %440
  %442 = getelementptr inbounds %struct.MTFace, ptr %371, i64 1
  %443 = select i1 %383, ptr null, ptr %442
  %444 = getelementptr inbounds i8, ptr %372, i64 16
  %445 = select i1 %388, ptr null, ptr %444
  %446 = icmp eq i32 %375, %18
  br i1 %446, label %447, label %369, !llvm.loop !544

447:                                              ; preds = %439
  %448 = icmp eq i32 %368, %18
  br i1 %448, label %449, label %363, !llvm.loop !545

449:                                              ; preds = %253, %447, %360, %162
  %450 = phi ptr [ %158, %162 ], [ %158, %360 ], [ %445, %447 ], [ %250, %253 ]
  %451 = phi ptr [ %157, %162 ], [ null, %360 ], [ null, %447 ], [ %251, %253 ]
  %452 = phi ptr [ %156, %162 ], [ %156, %360 ], [ %443, %447 ], [ %248, %253 ]
  %453 = phi ptr [ %155, %162 ], [ %155, %360 ], [ %441, %447 ], [ %246, %253 ]
  call void @glEnd() #14
  br label %454

454:                                              ; preds = %351, %449, %256
  %455 = phi ptr [ %158, %256 ], [ %450, %449 ], [ %358, %351 ]
  %456 = phi ptr [ null, %256 ], [ %451, %449 ], [ null, %351 ]
  %457 = phi ptr [ %156, %256 ], [ %452, %449 ], [ %356, %351 ]
  %458 = phi ptr [ %155, %256 ], [ %453, %449 ], [ %354, %351 ]
  %459 = add nuw nsw i32 %159, 1
  %460 = icmp eq i32 %459, %61
  br i1 %460, label %461, label %154, !llvm.loop !546

461:                                              ; preds = %454, %140, %131
  %462 = phi ptr [ %129, %131 ], [ %141, %140 ], [ %141, %454 ]
  %463 = phi ptr [ %102, %131 ], [ %102, %140 ], [ %457, %454 ]
  %464 = phi ptr [ %134, %131 ], [ %103, %140 ], [ %458, %454 ]
  %465 = phi ptr [ %139, %131 ], [ %148, %140 ], [ %148, %454 ]
  %466 = add nuw nsw i64 %50, 1
  %467 = icmp eq i64 %466, %48
  br i1 %467, label %468, label %49, !llvm.loop !547

468:                                              ; preds = %461, %36
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #16
  ret void
}

; Function Attrs: optsize
declare i32 @CustomData_get_stencil_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_get_layer_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DM_paint_uvlayer_active_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GPU_enable_material(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTexCoord2fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPolygonStipple(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_vertex_attributes_from_gpu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ccgdm_draw_attrib_vertex(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !548 {
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !437
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !549
  %13 = icmp eq ptr %12, null
  %14 = sext i32 %2 to i64
  %15 = getelementptr inbounds [3 x float], ptr %12, i64 %14
  %16 = select i1 %13, ptr %5, ptr %15
  %17 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 3, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !550
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %10
  call void @glTexCoord3fv(ptr noundef %16) #14
  br label %25

21:                                               ; preds = %10
  %22 = load ptr, ptr @__glewVertexAttrib3fvARB, align 8, !tbaa !100
  %23 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 3, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !551
  call void %22(i32 noundef %24, ptr noundef %16) #14
  br label %25

25:                                               ; preds = %20, %21, %4
  %26 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !552
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = sext i32 %1 to i64
  %31 = zext nneg i32 %3 to i64
  br label %43

32:                                               ; preds = %59, %25
  %33 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 5
  %34 = load i32, ptr %33, align 4, !tbaa !553
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %88

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
  %46 = load ptr, ptr %45, align 8, !tbaa !554
  %47 = icmp eq ptr %46, null
  %48 = getelementptr inbounds %struct.MTFace, ptr %46, i64 %30
  %49 = getelementptr inbounds [4 x [2 x float]], ptr %48, i64 0, i64 %31
  %50 = select i1 %47, ptr %5, ptr %49
  %51 = getelementptr inbounds [8 x %struct.anon.4], ptr %0, i64 0, i64 %44, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !555
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %43
  call void @glTexCoord2fv(ptr noundef %50) #14
  br label %59

55:                                               ; preds = %43
  %56 = load ptr, ptr @__glewVertexAttrib2fvARB, align 8, !tbaa !100
  %57 = getelementptr inbounds [8 x %struct.anon.4], ptr %0, i64 0, i64 %44, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !556
  call void %56(i32 noundef %58, ptr noundef %50) #14
  br label %59

59:                                               ; preds = %55, %54
  %60 = add nuw nsw i64 %44, 1
  %61 = load i32, ptr %26, align 8, !tbaa !552
  %62 = sext i32 %61 to i64
  %63 = icmp slt i64 %60, %62
  br i1 %63, label %43, label %32, !llvm.loop !557

64:                                               ; preds = %36, %79
  %65 = phi i64 [ 0, %36 ], [ %84, %79 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %66 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 1, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !558
  %68 = icmp eq ptr %67, null
  br i1 %68, label %78, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.MCol, ptr %67, i64 %39
  %71 = getelementptr inbounds %struct.MCol, ptr %67, i64 %39, i32 3
  %72 = load i8, ptr %71, align 1, !tbaa !559
  store i8 %72, ptr %6, align 1, !tbaa !426
  %73 = getelementptr inbounds %struct.MCol, ptr %67, i64 %39, i32 2
  %74 = load i8, ptr %73, align 1, !tbaa !561
  store i8 %74, ptr %40, align 1, !tbaa !426
  %75 = getelementptr inbounds %struct.MCol, ptr %67, i64 %39, i32 1
  %76 = load i8, ptr %75, align 1, !tbaa !562
  store i8 %76, ptr %41, align 1, !tbaa !426
  %77 = load i8, ptr %70, align 1, !tbaa !563
  br label %79

78:                                               ; preds = %64
  store i8 0, ptr %6, align 1, !tbaa !426
  store i8 0, ptr %40, align 1, !tbaa !426
  store i8 0, ptr %41, align 1, !tbaa !426
  br label %79

79:                                               ; preds = %78, %69
  %80 = phi i8 [ %77, %69 ], [ 0, %78 ]
  store i8 %80, ptr %42, align 1, !tbaa !426
  %81 = load ptr, ptr @__glewVertexAttrib4ubvARB, align 8, !tbaa !100
  %82 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 1, i64 %65, i32 2
  %83 = load i32, ptr %82, align 4, !tbaa !564
  call void %81(i32 noundef %83, ptr noundef nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  %84 = add nuw nsw i64 %65, 1
  %85 = load i32, ptr %33, align 4, !tbaa !553
  %86 = sext i32 %85 to i64
  %87 = icmp slt i64 %84, %86
  br i1 %87, label %64, label %88, !llvm.loop !565

88:                                               ; preds = %79, %32
  %89 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 6
  %90 = load i32, ptr %89, align 8, !tbaa !566
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %104, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !567
  %95 = icmp eq ptr %94, null
  %96 = shl nsw i32 %1, 2
  %97 = add nsw i32 %96, %3
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [4 x float], ptr %94, i64 %98
  %100 = select i1 %95, ptr %5, ptr %99
  %101 = load ptr, ptr @__glewVertexAttrib4fvARB, align 8, !tbaa !100
  %102 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 2, i32 2
  %103 = load i32, ptr %102, align 4, !tbaa !568
  call void %101(i32 noundef %103, ptr noundef %100) #14
  br label %104

104:                                              ; preds = %92, %88
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret void
}

; Function Attrs: optsize
declare void @glTexCoord3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @DM_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @multires_modifier_update_mdisps(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @multires_modifier_update_hidden(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_edgehash_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_get_n(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !569 {
  %3 = load float, ptr %1, align 4, !tbaa !66
  store float %3, ptr %0, align 4, !tbaa !66
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !66
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !66
  ret void
}

; Function Attrs: optsize
declare ptr @CustomData_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ss_sync_from_uv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !570 {
  %5 = alloca [2 x float], align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 35
  %11 = load ptr, ptr %10, align 8, !tbaa !96
  %12 = tail call ptr %11(ptr noundef %2) #14
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 34
  %14 = load ptr, ptr %13, align 8, !tbaa !95
  %15 = tail call ptr %14(ptr noundef %2) #14
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 31
  %17 = load ptr, ptr %16, align 8, !tbaa !93
  %18 = tail call ptr %17(ptr noundef %2) #14
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %20 = load ptr, ptr %19, align 8, !tbaa !97
  %21 = tail call i32 %20(ptr noundef %2) #14
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 27
  %23 = load ptr, ptr %22, align 8, !tbaa !571
  %24 = tail call i32 %23(ptr noundef %2) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %25 = tail call i32 @ccgSubSurf_getSubdivisionLevels(ptr noundef %0) #14
  %26 = sitofp i32 %25 to float
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  store <2 x float> <float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000>, ptr %5, align 8, !tbaa !66
  %27 = call ptr @BKE_mesh_uv_vert_map_create(ptr noundef %12, ptr noundef %15, ptr noundef %3, i32 noundef %24, i32 noundef %21, i32 noundef 0, ptr noundef nonnull %5) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %174, label %29

29:                                               ; preds = %4
  %30 = call i32 @ccgSubSurf_initFullSync(ptr noundef %0) #14
  %31 = icmp sgt i32 %21, 0
  br i1 %31, label %32, label %84

32:                                               ; preds = %29
  %33 = zext nneg i32 %21 to i64
  br label %34

34:                                               ; preds = %32, %81
  %35 = phi i64 [ 0, %32 ], [ %82, %81 ]
  %36 = trunc i64 %35 to i32
  %37 = call ptr @BKE_mesh_uv_vert_map_get_vert(ptr noundef nonnull %27, i32 noundef %36) #14
  %38 = icmp eq ptr %37, null
  br i1 %38, label %81, label %39

39:                                               ; preds = %34
  %40 = call ptr @BKE_mesh_uv_vert_map_get_vert(ptr noundef nonnull %27, i32 noundef %36) #14
  br label %41

41:                                               ; preds = %45, %39
  %42 = phi ptr [ %40, %39 ], [ %43, %45 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !572
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.UvMapVert, ptr %43, i64 0, i32 3
  %47 = load i8, ptr %46, align 1, !tbaa !574
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %41, label %54, !llvm.loop !575

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.MVert, ptr %18, i64 %35, i32 2
  %51 = load i8, ptr %50, align 2, !tbaa !55
  %52 = and i8 %51, 64
  %53 = icmp ne i8 %52, 0
  br label %54

54:                                               ; preds = %45, %49
  %55 = phi i1 [ %53, %49 ], [ true, %45 ]
  %56 = zext i1 %55 to i32
  %57 = call ptr @BKE_mesh_uv_vert_map_get_vert(ptr noundef nonnull %27, i32 noundef %36) #14
  %58 = icmp eq ptr %57, null
  br i1 %58, label %81, label %59

59:                                               ; preds = %54, %78
  %60 = phi ptr [ %79, %78 ], [ %57, %54 ]
  %61 = getelementptr inbounds %struct.UvMapVert, ptr %60, i64 0, i32 3
  %62 = load i8, ptr %61, align 1, !tbaa !574
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %65 = getelementptr inbounds %struct.UvMapVert, ptr %60, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !576
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.MPoly, ptr %12, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !50
  %70 = getelementptr inbounds %struct.UvMapVert, ptr %60, i64 0, i32 2
  %71 = load i8, ptr %70, align 4, !tbaa !577
  %72 = zext i8 %71 to i32
  %73 = add nsw i32 %69, %72
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to ptr
  %76 = getelementptr inbounds %struct.MLoopUV, ptr %3, i64 %74
  call fastcc void @copy_v2_v2(ptr noundef nonnull %6, ptr noundef %76) #15
  %77 = call i32 @ccgSubSurf_syncVert(ptr noundef %0, ptr noundef %75, ptr noundef nonnull %6, i32 noundef %56, ptr noundef nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %78

78:                                               ; preds = %59, %64
  %79 = load ptr, ptr %60, align 8, !tbaa !572
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %59, !llvm.loop !578

81:                                               ; preds = %78, %54, %34
  %82 = add nuw nsw i64 %35, 1
  %83 = icmp eq i64 %82, %33
  br i1 %83, label %84, label %34, !llvm.loop !579

84:                                               ; preds = %81, %29
  %85 = shl nsw i32 %24, 1
  %86 = call ptr @BLI_edgeset_new_ex(ptr noundef nonnull @__func__.ss_sync_from_uv, i32 noundef %85) #14
  %87 = icmp sgt i32 %24, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  call void @BLI_edgeset_free(ptr noundef %86) #14
  br label %172

89:                                               ; preds = %84
  %90 = zext nneg i32 %24 to i64
  br label %91

91:                                               ; preds = %89, %150
  %92 = phi i64 [ 0, %89 ], [ %151, %150 ]
  %93 = getelementptr inbounds %struct.MPoly, ptr %12, i64 %92
  %94 = getelementptr inbounds %struct.MPoly, ptr %12, i64 %92, i32 1
  %95 = load i32, ptr %94, align 4, !tbaa !47
  %96 = inttoptr i64 %92 to ptr
  %97 = call ptr @ccgSubSurf_getFace(ptr noundef %1, ptr noundef %96) #14
  %98 = load i32, ptr %93, align 4, !tbaa !50
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.MLoop, ptr %15, i64 %99
  %101 = zext i32 %95 to i64
  %102 = call ptr @llvm.stacksave.p0()
  %103 = alloca ptr, i64 %101, align 16
  %104 = trunc i64 %92 to i32
  call fastcc void @get_face_uv_map_vert(ptr noundef nonnull %27, ptr noundef %12, ptr noundef %100, i32 noundef %104, ptr noundef nonnull %103) #15
  %105 = icmp sgt i32 %95, 0
  br i1 %105, label %106, label %150

106:                                              ; preds = %91
  %107 = add nsw i32 %95, -1
  br label %108

108:                                              ; preds = %106, %146
  %109 = phi i64 [ 0, %106 ], [ %147, %146 ]
  %110 = phi i32 [ %107, %106 ], [ %148, %146 ]
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds ptr, ptr %103, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !100
  %114 = ptrtoint ptr %113 to i64
  %115 = trunc i64 %114 to i32
  %116 = getelementptr inbounds ptr, ptr %103, i64 %109
  %117 = load ptr, ptr %116, align 8, !tbaa !100
  %118 = ptrtoint ptr %117 to i64
  %119 = trunc i64 %118 to i32
  %120 = getelementptr inbounds %struct.MLoop, ptr %100, i64 %111
  %121 = load i32, ptr %120, align 4, !tbaa !110
  %122 = getelementptr inbounds %struct.MLoop, ptr %100, i64 %109
  %123 = load i32, ptr %122, align 4, !tbaa !110
  %124 = call zeroext i8 @BLI_edgeset_add(ptr noundef %86, i32 noundef %115, i32 noundef %119) #14
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %146, label %126

126:                                              ; preds = %108
  %127 = zext i32 %123 to i64
  %128 = zext i32 %121 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %129 = call ptr @ccgSubSurf_getFaceEdge(ptr noundef %97, i32 noundef %110) #14
  %130 = load i32, ptr %93, align 4, !tbaa !50
  %131 = add nsw i32 %130, %110
  %132 = sext i32 %131 to i64
  %133 = inttoptr i64 %132 to ptr
  %134 = getelementptr inbounds %struct.MVert, ptr %18, i64 %128, i32 2
  %135 = load i8, ptr %134, align 2, !tbaa !55
  %136 = getelementptr inbounds %struct.MVert, ptr %18, i64 %127, i32 2
  %137 = load i8, ptr %136, align 2, !tbaa !55
  %138 = and i8 %135, 64
  %139 = and i8 %138, %137
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %126
  %142 = call float @ccgSubSurf_getEdgeCrease(ptr noundef %129) #14
  br label %143

143:                                              ; preds = %126, %141
  %144 = phi float [ %142, %141 ], [ %26, %126 ]
  %145 = call i32 @ccgSubSurf_syncEdge(ptr noundef %0, ptr noundef %133, ptr noundef %113, ptr noundef %117, float noundef %144, ptr noundef nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %146

146:                                              ; preds = %143, %108
  %147 = add nuw nsw i64 %109, 1
  %148 = trunc i64 %109 to i32
  %149 = icmp eq i64 %147, %101
  br i1 %149, label %150, label %108, !llvm.loop !580

150:                                              ; preds = %146, %91
  call void @llvm.stackrestore.p0(ptr %102)
  %151 = add nuw nsw i64 %92, 1
  %152 = icmp eq i64 %151, %90
  br i1 %152, label %153, label %91, !llvm.loop !581

153:                                              ; preds = %150
  call void @BLI_edgeset_free(ptr noundef %86) #14
  br i1 %87, label %154, label %172

154:                                              ; preds = %153
  %155 = zext nneg i32 %24 to i64
  br label %156

156:                                              ; preds = %154, %156
  %157 = phi i64 [ 0, %154 ], [ %170, %156 ]
  %158 = getelementptr inbounds %struct.MPoly, ptr %12, i64 %157
  %159 = load i32, ptr %158, align 4, !tbaa !50
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.MLoop, ptr %15, i64 %160
  %162 = getelementptr inbounds %struct.MPoly, ptr %12, i64 %157, i32 1
  %163 = load i32, ptr %162, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %164 = zext i32 %163 to i64
  %165 = call ptr @llvm.stacksave.p0()
  %166 = alloca ptr, i64 %164, align 16
  %167 = trunc i64 %157 to i32
  call fastcc void @get_face_uv_map_vert(ptr noundef nonnull %27, ptr noundef %12, ptr noundef %161, i32 noundef %167, ptr noundef nonnull %166) #15
  %168 = inttoptr i64 %157 to ptr
  %169 = call i32 @ccgSubSurf_syncFace(ptr noundef %0, ptr noundef %168, i32 noundef %163, ptr noundef nonnull %166, ptr noundef nonnull %9) #14
  call void @llvm.stackrestore.p0(ptr %165)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  %170 = add nuw nsw i64 %157, 1
  %171 = icmp eq i64 %170, %155
  br i1 %171, label %172, label %156, !llvm.loop !582

172:                                              ; preds = %156, %88, %153
  call void @BKE_mesh_uv_vert_map_free(ptr noundef nonnull %27) #14
  %173 = call i32 @ccgSubSurf_processSync(ptr noundef %0) #14
  br label %174

174:                                              ; preds = %4, %172
  %175 = phi i32 [ 1, %172 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret i32 %175
}

; Function Attrs: optsize
declare ptr @BKE_mesh_uv_vert_map_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_mesh_uv_vert_map_get_vert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_edgeset_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ccgSubSurf_getFace(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_face_uv_map_vert(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !PGOFuncName !583 {
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds %struct.MPoly, ptr %1, i64 %6, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !47
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %46

10:                                               ; preds = %5
  %11 = zext nneg i32 %8 to i64
  br label %12

12:                                               ; preds = %10, %31
  %13 = phi i64 [ 0, %10 ], [ %44, %31 ]
  %14 = getelementptr inbounds %struct.MLoop, ptr %2, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !110
  %16 = tail call ptr @BKE_mesh_uv_vert_map_get_vert(ptr noundef %0, i32 noundef %15) #14
  %17 = icmp ne ptr %16, null
  tail call void @llvm.assume(i1 %17)
  br label %18

18:                                               ; preds = %12, %28
  %19 = phi ptr [ %29, %28 ], [ %16, %12 ]
  %20 = phi ptr [ %24, %28 ], [ %16, %12 ]
  %21 = getelementptr inbounds %struct.UvMapVert, ptr %19, i64 0, i32 3
  %22 = load i8, ptr %21, align 1, !tbaa !574
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %23, ptr %20, ptr %19
  %25 = getelementptr inbounds %struct.UvMapVert, ptr %19, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !576
  %27 = icmp eq i32 %26, %3
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  %29 = load ptr, ptr %19, align 8, !tbaa !572
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !584

31:                                               ; preds = %28, %18
  %32 = getelementptr inbounds %struct.UvMapVert, ptr %24, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !576
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.MPoly, ptr %1, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !50
  %37 = getelementptr inbounds %struct.UvMapVert, ptr %24, i64 0, i32 2
  %38 = load i8, ptr %37, align 4, !tbaa !577
  %39 = zext i8 %38 to i32
  %40 = add nsw i32 %36, %39
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to ptr
  %43 = getelementptr inbounds ptr, ptr %4, i64 %13
  store ptr %42, ptr %43, align 8, !tbaa !100
  %44 = add nuw nsw i64 %13, 1
  %45 = icmp eq i64 %44, %11
  br i1 %45, label %46, label %12, !llvm.loop !585

46:                                               ; preds = %31, %5
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_edgeset_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @ccgSubSurf_getEdgeCrease(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_edgeset_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_uv_vert_map_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }
attributes #16 = { nounwind }

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
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.mustprogress"}
!59 = distinct !{!59, !58}
!60 = distinct !{!60, !58}
!61 = distinct !{!61, !58}
!62 = !{!"subsurf_ccg.c:getFaceIndex"}
!63 = !{!64, !38, i64 0}
!64 = !{!"GridPaintMask", !38, i64 0, !41, i64 8, !41, i64 12}
!65 = !{!64, !41, i64 8}
!66 = !{!42, !42, i64 0}
!67 = distinct !{!67, !58}
!68 = distinct !{!68, !58}
!69 = distinct !{!69, !58}
!70 = distinct !{!70, !58}
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
!81 = !{!"subsurf_ccg.c:_getSubSurf"}
!82 = !{!83, !41, i64 0}
!83 = !{!"CCGMeshIFC", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20}
!84 = !{!83, !41, i64 12}
!85 = !{!83, !41, i64 16}
!86 = !{!83, !41, i64 20}
!87 = !{!88, !38, i64 0}
!88 = !{!"CCGAllocatorIFC", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24}
!89 = !{!88, !38, i64 8}
!90 = !{!88, !38, i64 16}
!91 = !{!88, !38, i64 24}
!92 = !{!"subsurf_ccg.c:ss_sync_from_derivedmesh"}
!93 = !{!36, !38, i64 1168}
!94 = !{!36, !38, i64 1176}
!95 = !{!36, !38, i64 1192}
!96 = !{!36, !38, i64 1200}
!97 = !{!36, !38, i64 1104}
!98 = !{!36, !38, i64 1112}
!99 = !{!36, !38, i64 1320}
!100 = !{!38, !38, i64 0}
!101 = distinct !{!101, !58}
!102 = !{!36, !38, i64 1328}
!103 = !{!104, !39, i64 8}
!104 = !{!"MEdge", !41, i64 0, !41, i64 4, !39, i64 8, !39, i64 9, !49, i64 10}
!105 = !{!104, !41, i64 0}
!106 = !{!104, !41, i64 4}
!107 = distinct !{!107, !58}
!108 = !{!36, !38, i64 1352}
!109 = !{!36, !41, i64 1016}
!110 = !{!111, !41, i64 0}
!111 = !{!"MLoop", !41, i64 0, !41, i64 4}
!112 = distinct !{!112, !58}
!113 = distinct !{!113, !58}
!114 = !{!"subsurf_ccg.c:getCCGDerivedMesh"}
!115 = !{!35, !41, i64 1016}
!116 = !{!35, !38, i64 1520}
!117 = !{!35, !38, i64 1104}
!118 = !{!35, !38, i64 1112}
!119 = !{!35, !38, i64 1120}
!120 = !{!35, !38, i64 1128}
!121 = !{!35, !38, i64 1136}
!122 = !{!35, !38, i64 1144}
!123 = !{!35, !38, i64 1152}
!124 = !{!35, !38, i64 1160}
!125 = !{!35, !38, i64 1528}
!126 = !{!35, !38, i64 1544}
!127 = !{!35, !38, i64 1208}
!128 = !{!35, !38, i64 1216}
!129 = !{!35, !38, i64 1224}
!130 = !{!35, !38, i64 1232}
!131 = !{!35, !38, i64 1240}
!132 = !{!35, !38, i64 1288}
!133 = !{!35, !38, i64 1296}
!134 = !{!35, !38, i64 1304}
!135 = !{!35, !38, i64 1312}
!136 = !{!35, !38, i64 1320}
!137 = !{!35, !38, i64 1328}
!138 = !{!35, !38, i64 1336}
!139 = !{!35, !38, i64 1352}
!140 = !{!35, !38, i64 1424}
!141 = !{!35, !38, i64 1432}
!142 = !{!35, !38, i64 1440}
!143 = !{!35, !38, i64 1448}
!144 = !{!35, !38, i64 1456}
!145 = !{!35, !38, i64 1464}
!146 = !{!35, !38, i64 1472}
!147 = !{!35, !38, i64 1480}
!148 = !{!35, !38, i64 1560}
!149 = !{!35, !38, i64 1568}
!150 = !{!35, !38, i64 1080}
!151 = !{!35, !38, i64 1088}
!152 = !{!35, !38, i64 1096}
!153 = !{!35, !38, i64 1536}
!154 = !{!35, !38, i64 1488}
!155 = !{!35, !38, i64 1496}
!156 = !{!35, !38, i64 1504}
!157 = !{!35, !38, i64 1512}
!158 = !{!35, !38, i64 1576}
!159 = !{!35, !38, i64 1592}
!160 = !{!35, !38, i64 1600}
!161 = !{!35, !38, i64 1608}
!162 = !{!35, !38, i64 1616}
!163 = !{!35, !38, i64 1624}
!164 = !{!35, !38, i64 1632}
!165 = !{!35, !38, i64 1640}
!166 = !{!35, !38, i64 1648}
!167 = !{!35, !38, i64 1672}
!168 = !{!35, !38, i64 1584}
!169 = !{!35, !38, i64 1664}
!170 = !{!35, !38, i64 1656}
!171 = !{!35, !38, i64 1680}
!172 = !{!35, !41, i64 1700}
!173 = !{!35, !41, i64 1704}
!174 = !{!35, !38, i64 1712}
!175 = !{!176, !38, i64 8}
!176 = !{!"", !41, i64 0, !38, i64 8}
!177 = distinct !{!177, !58}
!178 = !{!35, !38, i64 1720}
!179 = !{!180, !38, i64 8}
!180 = !{!"", !41, i64 0, !41, i64 4, !38, i64 8}
!181 = distinct !{!181, !58}
!182 = distinct !{!182, !58}
!183 = !{!35, !38, i64 1752}
!184 = !{!35, !38, i64 1736}
!185 = !{!35, !38, i64 1744}
!186 = !{!35, !41, i64 372}
!187 = !{!46, !41, i64 0}
!188 = !{!46, !41, i64 4}
!189 = !{!46, !41, i64 8}
!190 = !{!48, !39, i64 10}
!191 = !{!48, !49, i64 8}
!192 = !{!193, !49, i64 0}
!193 = !{!"DMFlagMat", !49, i64 0, !39, i64 2}
!194 = distinct !{!194, !58}
!195 = distinct !{!195, !58}
!196 = distinct !{!196, !58}
!197 = distinct !{!197, !58}
!198 = distinct !{!198, !58}
!199 = distinct !{!199, !58}
!200 = distinct !{!200, !58}
!201 = distinct !{!201, !58}
!202 = distinct !{!202, !58}
!203 = distinct !{!203, !58}
!204 = distinct !{!204, !58}
!205 = !{!180, !41, i64 0}
!206 = !{!180, !41, i64 4}
!207 = !{!104, !49, i64 10}
!208 = !{!49, !49, i64 0}
!209 = distinct !{!209, !58}
!210 = distinct !{!210, !58}
!211 = distinct !{!211, !58, !212, !213}
!212 = !{!"llvm.loop.isvectorized", i32 1}
!213 = !{!"llvm.loop.unroll.runtime.disable"}
!214 = distinct !{!214, !58}
!215 = distinct !{!215, !58}
!216 = !{!176, !41, i64 0}
!217 = distinct !{!217, !58}
!218 = !{!35, !41, i64 1000}
!219 = !{!35, !41, i64 1004}
!220 = !{!35, !41, i64 1008}
!221 = !{!35, !41, i64 1012}
!222 = !{!35, !41, i64 1056}
!223 = distinct !{!223, !58}
!224 = distinct !{!224, !58}
!225 = distinct !{!225, !58}
!226 = !{!36, !38, i64 1680}
!227 = !{!"subsurf_ccg.c:zero_v3"}
!228 = !{!"subsurf_ccg.c:add_v3_v3v3"}
!229 = !{!"subsurf_ccg.c:add_v3_v3"}
!230 = !{!"subsurf_ccg.c:mul_v3_fl"}
!231 = !{!"subsurf_ccg.c:arena_alloc"}
!232 = !{!"subsurf_ccg.c:arena_realloc"}
!233 = !{!"subsurf_ccg.c:arena_free"}
!234 = !{!"subsurf_ccg.c:arena_release"}
!235 = !{!"subsurf_ccg.c:ccgDM_getMinMax"}
!236 = distinct !{!236, !58}
!237 = distinct !{!237, !58}
!238 = distinct !{!238, !58}
!239 = distinct !{!239, !58}
!240 = distinct !{!240, !58}
!241 = distinct !{!241, !58}
!242 = distinct !{!242, !58}
!243 = !{!"subsurf_ccg.c:ccgDM_getNumVerts"}
!244 = !{!"subsurf_ccg.c:ccgDM_getNumEdges"}
!245 = !{!"subsurf_ccg.c:ccgDM_getNumTessFaces"}
!246 = !{!"subsurf_ccg.c:ccgDM_getNumLoops"}
!247 = !{!"subsurf_ccg.c:ccgDM_getFinalVert"}
!248 = distinct !{!248, !58}
!249 = distinct !{!249, !58}
!250 = !{!"subsurf_ccg.c:ccgDM_getFinalEdge"}
!251 = distinct !{!251, !58}
!252 = !{!"subsurf_ccg.c:ccgDM_getFinalFace"}
!253 = !{!254, !41, i64 0}
!254 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !49, i64 16, !39, i64 18, !39, i64 19}
!255 = !{!254, !41, i64 4}
!256 = !{!254, !41, i64 8}
!257 = !{!254, !41, i64 12}
!258 = !{!193, !39, i64 2}
!259 = !{!254, !49, i64 16}
!260 = !{!254, !39, i64 18}
!261 = !{!"subsurf_ccg.c:ccgDM_getFinalVertCo"}
!262 = !{!"subsurf_ccg.c:ccgDM_getFinalVertNo"}
!263 = !{!"subsurf_ccg.c:ccgDM_copyFinalVertArray"}
!264 = distinct !{!264, !58}
!265 = distinct !{!265, !58}
!266 = distinct !{!266, !58}
!267 = distinct !{!267, !58}
!268 = distinct !{!268, !58}
!269 = distinct !{!269, !58}
!270 = distinct !{!270, !58}
!271 = distinct !{!271, !58}
!272 = distinct !{!272, !58}
!273 = !{!"subsurf_ccg.c:ccgDM_copyFinalEdgeArray"}
!274 = distinct !{!274, !58}
!275 = distinct !{!275, !58}
!276 = distinct !{!276, !58}
!277 = distinct !{!277, !58}
!278 = distinct !{!278, !58}
!279 = distinct !{!279, !58}
!280 = distinct !{!280, !58}
!281 = !{!"subsurf_ccg.c:ccgDM_copyFinalFaceArray"}
!282 = !{!254, !39, i64 19}
!283 = distinct !{!283, !58}
!284 = distinct !{!284, !58}
!285 = distinct !{!285, !58}
!286 = distinct !{!286, !58}
!287 = !{!"subsurf_ccg.c:ccgDM_copyFinalLoopArray"}
!288 = !{!35, !38, i64 1880}
!289 = !{!35, !38, i64 1176}
!290 = distinct !{!290, !58}
!291 = !{!111, !41, i64 4}
!292 = distinct !{!292, !58}
!293 = distinct !{!293, !58}
!294 = distinct !{!294, !58}
!295 = distinct !{!295, !58}
!296 = !{!"subsurf_ccg.c:ccgDM_copyFinalPolyArray"}
!297 = distinct !{!297, !58}
!298 = distinct !{!298, !58}
!299 = distinct !{!299, !58}
!300 = distinct !{!300, !58}
!301 = !{!"subsurf_ccg.c:ccgDM_get_vert_data"}
!302 = !{!"subsurf_ccg.c:ccgDM_get_edge_data"}
!303 = !{!"subsurf_ccg.c:ccgDM_get_tessface_data"}
!304 = !{!"subsurf_ccg.c:ccgDM_get_poly_data"}
!305 = !{!"subsurf_ccg.c:ccgDM_get_vert_data_layer"}
!306 = !{!36, !41, i64 1000}
!307 = distinct !{!307, !58}
!308 = !{!"subsurf_ccg.c:ccgDM_get_edge_data_layer"}
!309 = !{!36, !41, i64 1004}
!310 = distinct !{!310, !58}
!311 = distinct !{!311, !58}
!312 = !{!"subsurf_ccg.c:ccgDM_get_tessface_data_layer"}
!313 = !{!36, !38, i64 1120}
!314 = !{!36, !38, i64 1344}
!315 = distinct !{!315, !58}
!316 = !{!"subsurf_ccg.c:ccgDM_get_poly_data_layer"}
!317 = distinct !{!317, !58}
!318 = distinct !{!318, !58}
!319 = !{!"subsurf_ccg.c:ccgDM_getNumGrids"}
!320 = distinct !{!320, !58}
!321 = !{!"subsurf_ccg.c:ccgDM_getGridSize"}
!322 = !{!"subsurf_ccg.c:ccgDM_getGridData"}
!323 = !{!35, !38, i64 1784}
!324 = !{!"subsurf_ccg.c:ccgDM_getGridAdjacency"}
!325 = !{!35, !38, i64 1792}
!326 = !{!"subsurf_ccg.c:ccgDM_getGridOffset"}
!327 = !{!35, !38, i64 1800}
!328 = !{!"subsurf_ccg.c:ccgDM_getGridKey"}
!329 = !{!"subsurf_ccg.c:ccgDM_getGridFlagMats"}
!330 = !{!35, !38, i64 1816}
!331 = !{!"subsurf_ccg.c:ccgDM_getGridHidden"}
!332 = !{!35, !38, i64 1824}
!333 = !{!"subsurf_ccg.c:ccgDM_getPolyMap"}
!334 = !{!35, !38, i64 1832}
!335 = !{!35, !38, i64 1768}
!336 = !{!337, !49, i64 136}
!337 = !{!"Object", !338, i64 0, !38, i64 120, !38, i64 128, !49, i64 136, !49, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !39, i64 152, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !38, i64 296, !38, i64 304, !339, i64 312, !38, i64 360, !340, i64 368, !340, i64 384, !340, i64 400, !340, i64 416, !41, i64 432, !41, i64 436, !38, i64 440, !38, i64 448, !41, i64 456, !41, i64 460, !39, i64 464, !39, i64 476, !39, i64 488, !39, i64 500, !39, i64 512, !39, i64 524, !39, i64 536, !39, i64 548, !39, i64 560, !39, i64 576, !39, i64 592, !39, i64 604, !42, i64 616, !42, i64 620, !39, i64 624, !39, i64 688, !39, i64 752, !39, i64 816, !39, i64 880, !41, i64 944, !49, i64 948, !49, i64 950, !49, i64 952, !49, i64 954, !49, i64 956, !49, i64 958, !49, i64 960, !49, i64 962, !49, i64 964, !39, i64 966, !39, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !49, i64 1036, !49, i64 1038, !49, i64 1040, !39, i64 1042, !39, i64 1043, !49, i64 1044, !39, i64 1046, !39, i64 1047, !42, i64 1048, !42, i64 1052, !340, i64 1056, !340, i64 1072, !340, i64 1088, !340, i64 1104, !42, i64 1120, !49, i64 1124, !49, i64 1126, !39, i64 1128, !41, i64 1144, !41, i64 1148, !38, i64 1152, !39, i64 1160, !39, i64 1161, !49, i64 1162, !39, i64 1164, !340, i64 1176, !340, i64 1192, !340, i64 1208, !340, i64 1224, !38, i64 1240, !38, i64 1248, !38, i64 1256, !39, i64 1264, !39, i64 1265, !49, i64 1266, !42, i64 1268, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !341, i64 1304, !341, i64 1312, !41, i64 1320, !41, i64 1324, !340, i64 1328, !340, i64 1344, !38, i64 1360, !38, i64 1368, !38, i64 1376, !39, i64 1384, !38, i64 1392, !340, i64 1400, !38, i64 1416}
!338 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !39, i64 32, !49, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !38, i64 112}
!339 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !49, i64 16, !49, i64 18, !49, i64 20, !49, i64 22, !49, i64 24, !49, i64 26, !49, i64 28, !49, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!340 = !{!"ListBase", !38, i64 0, !38, i64 8}
!341 = !{!"long", !39, i64 0}
!342 = !{!337, !38, i64 296}
!343 = !{!344, !38, i64 168}
!344 = !{!"Mesh", !338, i64 0, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !38, i64 152, !38, i64 160, !38, i64 168, !38, i64 176, !38, i64 184, !38, i64 192, !38, i64 200, !38, i64 208, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !37, i64 280, !37, i64 480, !37, i64 680, !37, i64 880, !37, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !39, i64 1308, !39, i64 1320, !39, i64 1332, !41, i64 1344, !49, i64 1348, !49, i64 1350, !42, i64 1352, !41, i64 1356, !39, i64 1360, !39, i64 1361, !39, i64 1362, !39, i64 1363, !39, i64 1364, !39, i64 1365, !49, i64 1366, !38, i64 1368}
!345 = !{!344, !38, i64 184}
!346 = !{!344, !41, i64 1280}
!347 = !{!344, !41, i64 1296}
!348 = !{!344, !41, i64 1300}
!349 = !{!"subsurf_ccg.c:ccgDM_getPBVH"}
!350 = !{!35, !38, i64 1760}
!351 = !{!337, !38, i64 128}
!352 = !{i32 0, i32 2}
!353 = !{!354, !38, i64 104}
!354 = !{!"SculptSession", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !41, i64 32, !41, i64 36, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !41, i64 80, !41, i64 84, !39, i64 88, !38, i64 96, !38, i64 104, !39, i64 112, !39, i64 113, !38, i64 120, !38, i64 128, !38, i64 136, !39, i64 144, !41, i64 148, !38, i64 152, !41, i64 160, !38, i64 168, !38, i64 176, !38, i64 184, !38, i64 192, !39, i64 200, !39, i64 204, !39, i64 216, !41, i64 228}
!355 = !{!35, !38, i64 1808}
!356 = !{!344, !38, i64 208}
!357 = !{!344, !38, i64 232}
!358 = !{!344, !41, i64 1288}
!359 = !{!354, !39, i64 112}
!360 = !{!"subsurf_ccg.c:ccgDM_calcNormals"}
!361 = !{!36, !41, i64 1056}
!362 = !{!"subsurf_ccg.c:ccgDM_recalcTessellation"}
!363 = !{!"subsurf_ccg.c:ccgdm_getVertCos"}
!364 = distinct !{!364, !58}
!365 = distinct !{!365, !58}
!366 = distinct !{!366, !58}
!367 = distinct !{!367, !58}
!368 = distinct !{!368, !58}
!369 = distinct !{!369, !58}
!370 = distinct !{!370, !58}
!371 = distinct !{!371, !58}
!372 = distinct !{!372, !58}
!373 = distinct !{!373, !58}
!374 = distinct !{!374, !58}
!375 = distinct !{!375, !58}
!376 = !{!"subsurf_ccg.c:ccgDM_foreachMappedVert"}
!377 = distinct !{!377, !58}
!378 = !{!"subsurf_ccg.c:ccgDM_foreachMappedEdge"}
!379 = distinct !{!379, !58}
!380 = distinct !{!380, !58}
!381 = !{!"subsurf_ccg.c:ccgDM_foreachMappedLoop"}
!382 = distinct !{!382, !58}
!383 = distinct !{!383, !58}
!384 = !{!"subsurf_ccg.c:ccgDM_foreachMappedFaceCenter"}
!385 = distinct !{!385, !58}
!386 = !{!"subsurf_ccg.c:ccgDM_drawVerts"}
!387 = distinct !{!387, !58}
!388 = distinct !{!388, !58}
!389 = distinct !{!389, !58}
!390 = distinct !{!390, !58}
!391 = distinct !{!391, !58}
!392 = distinct !{!392, !58}
!393 = distinct !{!393, !58}
!394 = distinct !{!394, !58}
!395 = distinct !{!395, !58}
!396 = !{!"subsurf_ccg.c:ccgDM_drawEdges"}
!397 = !{!398, !41, i64 2096}
!398 = !{!"Global", !38, i64 0, !39, i64 8, !39, i64 1032, !39, i64 2056, !39, i64 2057, !39, i64 2058, !340, i64 2064, !39, i64 2080, !39, i64 2081, !39, i64 2082, !49, i64 2084, !49, i64 2086, !49, i64 2088, !39, i64 2090, !49, i64 2092, !41, i64 2096, !41, i64 2100, !39, i64 2104, !41, i64 2108, !41, i64 2112, !39, i64 2116}
!399 = distinct !{!399, !58}
!400 = distinct !{!400, !58}
!401 = distinct !{!401, !58}
!402 = distinct !{!402, !58}
!403 = distinct !{!403, !58}
!404 = distinct !{!404, !58}
!405 = distinct !{!405, !58}
!406 = distinct !{!406, !58}
!407 = distinct !{!407, !58}
!408 = !{!"subsurf_ccg.c:ccgDM_drawLooseEdges"}
!409 = distinct !{!409, !58}
!410 = distinct !{!410, !58}
!411 = !{!"subsurf_ccg.c:ccgDM_drawFacesSolid"}
!412 = !{!36, !38, i64 1336}
!413 = !{!36, !41, i64 1008}
!414 = distinct !{!414, !58}
!415 = distinct !{!415, !58}
!416 = distinct !{!416, !58}
!417 = distinct !{!417, !58}
!418 = distinct !{!418, !58}
!419 = distinct !{!419, !58}
!420 = distinct !{!420, !58}
!421 = distinct !{!421, !58}
!422 = !{!"subsurf_ccg.c:ccgDM_drawFacesTex"}
!423 = !{!"subsurf_ccg.c:ccgDM_drawFacesGLSL"}
!424 = !{!36, !38, i64 1648}
!425 = !{!"subsurf_ccg.c:ccgDM_drawMappedFaces"}
!426 = !{!39, !39, i64 0}
!427 = distinct !{!427, !58}
!428 = distinct !{!428, !58}
!429 = distinct !{!429, !58}
!430 = distinct !{!430, !58}
!431 = distinct !{!431, !58}
!432 = distinct !{!432, !58}
!433 = distinct !{!433, !58}
!434 = distinct !{!434, !58}
!435 = !{!"subsurf_ccg.c:ccgDM_drawMappedFacesTex"}
!436 = !{!"subsurf_ccg.c:ccgDM_drawMappedFacesGLSL"}
!437 = !{!438, !41, i64 372}
!438 = !{!"DMVertexAttribs", !39, i64 0, !39, i64 192, !439, i64 320, !440, i64 336, !41, i64 360, !41, i64 364, !41, i64 368, !41, i64 372}
!439 = !{!"", !38, i64 0, !41, i64 8, !41, i64 12}
!440 = !{!"", !38, i64 0, !41, i64 8, !41, i64 12, !41, i64 16}
!441 = distinct !{!441, !58}
!442 = distinct !{!442, !58}
!443 = distinct !{!443, !58}
!444 = distinct !{!444, !58}
!445 = distinct !{!445, !58}
!446 = distinct !{!446, !58}
!447 = distinct !{!447, !58}
!448 = distinct !{!448, !58}
!449 = !{!"subsurf_ccg.c:ccgDM_drawMappedFacesMat"}
!450 = distinct !{!450, !58}
!451 = distinct !{!451, !58}
!452 = distinct !{!452, !58}
!453 = distinct !{!453, !58}
!454 = distinct !{!454, !58}
!455 = distinct !{!455, !58}
!456 = distinct !{!456, !58}
!457 = distinct !{!457, !58}
!458 = !{!"subsurf_ccg.c:ccgDM_drawUVEdges"}
!459 = !{!36, !38, i64 1184}
!460 = distinct !{!460, !58}
!461 = !{!"subsurf_ccg.c:ccgDM_drawMappedEdgesInterp"}
!462 = distinct !{!462, !58}
!463 = distinct !{!463, !58}
!464 = !{!"subsurf_ccg.c:ccgDM_drawMappedEdges"}
!465 = distinct !{!465, !58}
!466 = distinct !{!466, !58}
!467 = !{!"subsurf_ccg.c:ccgDM_release"}
!468 = !{!35, !41, i64 1872}
!469 = !{!35, !41, i64 1840}
!470 = !{!35, !38, i64 1864}
!471 = !{!36, !38, i64 1424}
!472 = distinct !{!472, !58}
!473 = !{!35, !38, i64 1776}
!474 = !{!"subsurf_ccg.c:get_ss_weights"}
!475 = !{!476, !41, i64 8}
!476 = !{!"WeightTable", !38, i64 0, !41, i64 8}
!477 = !{!476, !38, i64 0}
!478 = !{!479, !41, i64 16}
!479 = !{!"FaceVertWeightEntry", !38, i64 0, !38, i64 8, !41, i64 16}
!480 = !{!479, !38, i64 8}
!481 = distinct !{!481, !58, !212, !213}
!482 = distinct !{!482, !58}
!483 = distinct !{!483, !58}
!484 = distinct !{!484, !58}
!485 = !{!"subsurf_ccg.c:ccg_loops_to_corners"}
!486 = !{!487, !38, i64 0}
!487 = !{!"MTexPoly", !38, i64 0, !39, i64 8, !39, i64 9, !49, i64 10, !49, i64 12, !49, i64 14}
!488 = !{!489, !38, i64 32}
!489 = !{!"MTFace", !39, i64 0, !38, i64 32, !39, i64 40, !39, i64 41, !49, i64 42, !49, i64 44, !49, i64 46}
!490 = !{!487, !39, i64 8}
!491 = !{!489, !39, i64 40}
!492 = !{!487, !39, i64 9}
!493 = !{!489, !39, i64 41}
!494 = distinct !{!494, !58}
!495 = distinct !{!495, !58}
!496 = distinct !{!496, !58}
!497 = distinct !{!497, !58}
!498 = distinct !{!498, !58}
!499 = distinct !{!499, !58}
!500 = !{!"subsurf_ccg.c:ccgDM_getEdgeMapIndex"}
!501 = !{!"subsurf_ccg.c:set_subsurf_uv"}
!502 = distinct !{!502, !58}
!503 = distinct !{!503, !58}
!504 = distinct !{!504, !58}
!505 = distinct !{!505, !58}
!506 = distinct !{!506, !58}
!507 = !{!"subsurf_ccg.c:ccgDM_getVertMapIndex"}
!508 = !{!"subsurf_ccg.c:free_ss_weights"}
!509 = distinct !{!509, !58}
!510 = !{!"subsurf_ccg.c:minmax_v3_v3v3"}
!511 = !{!"subsurf_ccg.c:CCG_elem_offset_co"}
!512 = !{!"subsurf_ccg.c:CCG_grid_elem_co"}
!513 = !{!"subsurf_ccg.c:CCG_elem_offset"}
!514 = !{!515, !41, i64 4}
!515 = !{!"CCGKey", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!516 = !{!"subsurf_ccg.c:CCG_grid_elem"}
!517 = !{!515, !41, i64 8}
!518 = !{!"subsurf_ccg.c:copy_v3_v3"}
!519 = !{!"subsurf_ccg.c:normal_float_to_short_v3"}
!520 = !{!"subsurf_ccg.c:CCG_elem_no"}
!521 = !{!515, !41, i64 20}
!522 = !{!"subsurf_ccg.c:getEdgeIndex"}
!523 = !{!"subsurf_ccg.c:normal_short_to_float_v3"}
!524 = !{!"subsurf_ccg.c:ccgDM_to_MVert"}
!525 = !{!56, !39, i64 19}
!526 = !{!"subsurf_ccg.c:ccgDM_to_MEdge"}
!527 = !{!104, !39, i64 9}
!528 = !{!"subsurf_ccg.c:ccgDM_getFaceMapIndex"}
!529 = !{!"subsurf_ccg.c:ccgdm_create_grids"}
!530 = distinct !{!530, !58}
!531 = distinct !{!531, !58}
!532 = distinct !{!532, !58}
!533 = !{!"subsurf_ccg.c:ccgdm_adjacent_grid"}
!534 = distinct !{!534, !58}
!535 = distinct !{!535, !58}
!536 = !{!"subsurf_ccg.c:ccgDM_use_grid_pbvh"}
!537 = !{!"subsurf_ccg.c:ccgdm_pbvh_update"}
!538 = !{!"subsurf_ccg.c:ccgDM_glNormalFast"}
!539 = !{!"subsurf_ccg.c:ccgDM_drawFacesTex_common"}
!540 = distinct !{!540, !58}
!541 = distinct !{!541, !58}
!542 = distinct !{!542, !58}
!543 = distinct !{!543, !58}
!544 = distinct !{!544, !58}
!545 = distinct !{!545, !58}
!546 = distinct !{!546, !58}
!547 = distinct !{!547, !58}
!548 = !{!"subsurf_ccg.c:ccgdm_draw_attrib_vertex"}
!549 = !{!438, !38, i64 336}
!550 = !{!438, !41, i64 352}
!551 = !{!438, !41, i64 348}
!552 = !{!438, !41, i64 360}
!553 = !{!438, !41, i64 364}
!554 = !{!440, !38, i64 0}
!555 = !{!440, !41, i64 16}
!556 = !{!440, !41, i64 12}
!557 = distinct !{!557, !58}
!558 = !{!439, !38, i64 0}
!559 = !{!560, !39, i64 3}
!560 = !{!"MCol", !39, i64 0, !39, i64 1, !39, i64 2, !39, i64 3}
!561 = !{!560, !39, i64 2}
!562 = !{!560, !39, i64 1}
!563 = !{!560, !39, i64 0}
!564 = !{!439, !41, i64 12}
!565 = distinct !{!565, !58}
!566 = !{!438, !41, i64 368}
!567 = !{!438, !38, i64 320}
!568 = !{!438, !41, i64 332}
!569 = !{!"subsurf_ccg.c:copy_v2_v2"}
!570 = !{!"subsurf_ccg.c:ss_sync_from_uv"}
!571 = !{!36, !38, i64 1136}
!572 = !{!573, !38, i64 0}
!573 = !{!"UvMapVert", !38, i64 0, !41, i64 8, !39, i64 12, !39, i64 13, !39, i64 14}
!574 = !{!573, !39, i64 13}
!575 = distinct !{!575, !58}
!576 = !{!573, !41, i64 8}
!577 = !{!573, !39, i64 12}
!578 = distinct !{!578, !58}
!579 = distinct !{!579, !58}
!580 = distinct !{!580, !58}
!581 = distinct !{!581, !58}
!582 = distinct !{!582, !58}
!583 = !{!"subsurf_ccg.c:get_face_uv_map_vert"}
!584 = distinct !{!584, !58}
!585 = distinct !{!585, !58}
