; ModuleID = 'blender/source/blender/blenkernel/intern/mesh.c'
source_filename = "blender/source/blender/blenkernel/intern/mesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MLoop = type { i32, i32 }
%struct.MLoopUV = type { [2 x float], i32 }
%struct.MLoopCol = type { i8, i8, i8, i8 }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.MDeformWeight = type { i32, float }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.MVertSkin = type { [3 x float], i32 }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.MTexPoly = type { ptr, i8, i8, i16, i16, i16 }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.BMAllocTemplate = type { i32, i32, i32, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.BoundBox = type { [8 x [3 x float]], i32, i32 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.DispList = type { ptr, ptr, i16, i16, i32, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.EdgeLink = type { ptr, ptr, ptr }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.VertLink = type { ptr, ptr, i32 }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
%struct.MSelect = type { i32, i32 }
%struct.EvaluationContext = type { i32 }
%struct.EdgeHashIterator = type { ptr, ptr, i32 }
%struct._eh_Entry = type { ptr, i32, i32, ptr }

@.str = private unnamed_addr constant [26 x i8] c"Requires two input meshes\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Number of verts don't match\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Number of edges don't match\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Number of faces don't match\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Number of loops don't match\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@CD_MASK_MESH = external local_unnamed_addr constant i64, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"boundbox\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"orco mesh\00", align 1
@test_index_face.corner_indices = internal global [4 x i32] [i32 1, i32 2, i32 0, i32 3], align 16
@test_index_face.corner_indices.7 = internal global [4 x i32] [i32 2, i32 3, i32 0, i32 1], align 16
@.str.8 = private unnamed_addr constant [17 x i8] c"nurbs_init mvert\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"nurbs_init medge\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"nurbs_init mloop\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"nurbs_init mloopuv\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Mesh\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Orco\00", align 1
@__func__.BKE_mesh_to_curve_nurblist = private unnamed_addr constant [27 x i8] c"BKE_mesh_to_curve_nurblist\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"EdgeLink\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"MeshNurb\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"bpoints\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [11 x i8] c"vertexcos1\00", align 1
@__func__.BKE_mesh_ensure_navmesh = private unnamed_addr constant [24 x i8] c"BKE_mesh_ensure_navmesh\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"recastData\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"Mesh selection history\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.BKE_mesh_mselect_validate = private unnamed_addr constant [26 x i8] c"BKE_mesh_mselect_validate\00", align 1
@__func__.BKE_mesh_mselect_active_set = private unnamed_addr constant [28 x i8] c"BKE_mesh_mselect_active_set\00", align 1
@__func__.customdata_compare = private unnamed_addr constant [19 x i8] c"customdata_compare\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"Vertex Weight Mismatch\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"Vertex Group Mismatch\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"Vertex Doesn't Belong To Same Number Of Groups\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"Vertex Color Mismatch\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"UV Mismatch\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"Loop Mismatch\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"Loop Vert Mismatch In Poly Test\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"Loop Vert Mismatch\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"Edge Mismatch\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"Vertex Coordinate Mismatch\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"CustomData Layer Count Mismatch\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"Mesh Comparison Code Unknown\00", align 1
@.str.32 = private unnamed_addr constant [146 x i8] c"%s: warning! Tessellation uvs or vcol data got out of sync, had to reset!\0A    CD_MTFACE: %d != CD_MTEXPOLY: %d || CD_MCOL: %d != CD_MLOOPCOL: %d\0A\00", align 1
@__func__.mesh_ensure_tessellation_customdata = private unnamed_addr constant [36 x i8] c"mesh_ensure_tessellation_customdata\00", align 1
@__func__.make_edges_mdata_extend = private unnamed_addr constant [24 x i8] c"make_edges_mdata_extend\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"VertLink\00", align 1
@reltable.cmpcode_to_str = private unnamed_addr constant [11 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.20 to i64), i64 ptrtoint (ptr @reltable.cmpcode_to_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.21 to i64), i64 ptrtoint (ptr @reltable.cmpcode_to_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.22 to i64), i64 ptrtoint (ptr @reltable.cmpcode_to_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.23 to i64), i64 ptrtoint (ptr @reltable.cmpcode_to_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.24 to i64), i64 ptrtoint (ptr @reltable.cmpcode_to_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.25 to i64), i64 ptrtoint (ptr @reltable.cmpcode_to_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.26 to i64), i64 ptrtoint (ptr @reltable.cmpcode_to_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.27 to i64), i64 ptrtoint (ptr @reltable.cmpcode_to_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.28 to i64), i64 ptrtoint (ptr @reltable.cmpcode_to_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.29 to i64), i64 ptrtoint (ptr @reltable.cmpcode_to_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.30 to i64), i64 ptrtoint (ptr @reltable.cmpcode_to_str to i64)) to i32)], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_mesh_cmp(ptr noundef readonly %0, ptr noundef readonly %1, float noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %54

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 26
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %54

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %15 = load i32, ptr %14, align 4, !tbaa !44
  %16 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 27
  %17 = load i32, ptr %16, align 4, !tbaa !44
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %21 = load i32, ptr %20, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 30
  %23 = load i32, ptr %22, align 8, !tbaa !45
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %27 = load i32, ptr %26, align 4, !tbaa !46
  %28 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 31
  %29 = load i32, ptr %28, align 4, !tbaa !46
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 21
  %33 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 21
  %34 = tail call fastcc i32 @customdata_compare(ptr noundef nonnull %32, ptr noundef nonnull %33, ptr noundef nonnull %0, ptr noundef nonnull %1, float noundef %2) #21
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22
  %38 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 22
  %39 = tail call fastcc i32 @customdata_compare(ptr noundef nonnull %37, ptr noundef nonnull %38, ptr noundef nonnull %0, ptr noundef nonnull %1, float noundef %2) #21
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %43 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 25
  %44 = tail call fastcc i32 @customdata_compare(ptr noundef nonnull %42, ptr noundef nonnull %43, ptr noundef nonnull %0, ptr noundef nonnull %1, float noundef %2) #21
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %48 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 24
  %49 = tail call fastcc i32 @customdata_compare(ptr noundef nonnull %47, ptr noundef nonnull %48, ptr noundef nonnull %0, ptr noundef nonnull %1, float noundef %2) #21
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46, %41, %36, %31
  %52 = phi i32 [ %34, %31 ], [ %39, %36 ], [ %44, %41 ], [ %49, %46 ]
  %53 = tail call fastcc ptr @cmpcode_to_str(i32 noundef %52) #21
  br label %54

54:                                               ; preds = %51, %46, %25, %19, %13, %7, %3
  %55 = phi ptr [ @.str, %3 ], [ @.str.1, %7 ], [ @.str.2, %13 ], [ @.str.3, %19 ], [ @.str.4, %25 ], [ null, %46 ], [ %53, %51 ]
  ret ptr %55
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @customdata_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, float noundef %4) unnamed_addr #0 !PGOFuncName !47 {
  %6 = fmul float %4, %4
  %7 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !48
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 8, !tbaa !49
  %12 = zext nneg i32 %8 to i64
  br label %21

13:                                               ; preds = %28, %5
  %14 = phi i32 [ 0, %5 ], [ %29, %28 ]
  %15 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !48
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %13
  %19 = load ptr, ptr %1, align 8, !tbaa !49
  %20 = zext nneg i32 %16 to i64
  br label %32

21:                                               ; preds = %10, %28
  %22 = phi i64 [ 0, %10 ], [ %30, %28 ]
  %23 = phi i32 [ 0, %10 ], [ %29, %28 ]
  %24 = getelementptr inbounds %struct.CustomDataLayer, ptr %11, i64 %22
  %25 = load i32, ptr %24, align 8, !tbaa !50
  switch i32 %25, label %28 [
    i32 0, label %26
    i32 3, label %26
    i32 25, label %26
    i32 16, label %26
    i32 17, label %26
    i32 15, label %26
    i32 2, label %26
  ]

26:                                               ; preds = %21, %21, %21, %21, %21, %21, %21
  %27 = add nsw i32 %23, 1
  br label %28

28:                                               ; preds = %21, %26
  %29 = phi i32 [ %27, %26 ], [ %23, %21 ]
  %30 = add nuw nsw i64 %22, 1
  %31 = icmp eq i64 %30, %12
  br i1 %31, label %13, label %21, !llvm.loop !52

32:                                               ; preds = %18, %39
  %33 = phi i64 [ 0, %18 ], [ %41, %39 ]
  %34 = phi i32 [ 0, %18 ], [ %40, %39 ]
  %35 = getelementptr inbounds %struct.CustomDataLayer, ptr %19, i64 %33
  %36 = load i32, ptr %35, align 8, !tbaa !50
  switch i32 %36, label %39 [
    i32 0, label %37
    i32 3, label %37
    i32 25, label %37
    i32 16, label %37
    i32 17, label %37
    i32 15, label %37
    i32 2, label %37
  ]

37:                                               ; preds = %32, %32, %32, %32, %32, %32, %32
  %38 = add nsw i32 %34, 1
  br label %39

39:                                               ; preds = %32, %37
  %40 = phi i32 [ %38, %37 ], [ %34, %32 ]
  %41 = add nuw nsw i64 %33, 1
  %42 = icmp eq i64 %41, %20
  br i1 %42, label %43, label %32, !llvm.loop !54

43:                                               ; preds = %39, %13
  %44 = phi i32 [ 0, %13 ], [ %40, %39 ]
  %45 = icmp eq i32 %14, %44
  br i1 %45, label %46, label %344

46:                                               ; preds = %43
  %47 = icmp sgt i32 %14, 0
  br i1 %47, label %48, label %344

48:                                               ; preds = %46
  %49 = load ptr, ptr %1, align 8, !tbaa !49
  %50 = load ptr, ptr %0, align 8, !tbaa !49
  %51 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 26
  %52 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 27
  %53 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 30
  %54 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 9
  %55 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 9
  %56 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 31
  br label %57

57:                                               ; preds = %48, %341
  %58 = phi ptr [ %50, %48 ], [ %75, %341 ]
  %59 = phi ptr [ %49, %48 ], [ %88, %341 ]
  %60 = phi i32 [ 0, %48 ], [ %342, %341 ]
  %61 = phi i32 [ 0, %48 ], [ %74, %341 ]
  %62 = phi i32 [ 0, %48 ], [ %87, %341 ]
  %63 = load i32, ptr %7, align 4, !tbaa !48
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %57, %69
  %66 = phi ptr [ %71, %69 ], [ %58, %57 ]
  %67 = phi i32 [ %70, %69 ], [ %61, %57 ]
  %68 = load i32, ptr %66, align 8, !tbaa !50
  switch i32 %68, label %69 [
    i32 0, label %73
    i32 3, label %73
    i32 25, label %73
    i32 16, label %73
    i32 17, label %73
    i32 15, label %73
    i32 2, label %73
  ]

69:                                               ; preds = %65
  %70 = add i32 %67, 1
  %71 = getelementptr inbounds %struct.CustomDataLayer, ptr %66, i64 1
  %72 = icmp eq i32 %70, %63
  br i1 %72, label %73, label %65, !llvm.loop !55

73:                                               ; preds = %69, %65, %65, %65, %65, %65, %65, %65, %57
  %74 = phi i32 [ %61, %57 ], [ %67, %65 ], [ %67, %65 ], [ %67, %65 ], [ %67, %65 ], [ %67, %65 ], [ %67, %65 ], [ %67, %65 ], [ %63, %69 ]
  %75 = phi ptr [ %58, %57 ], [ %66, %65 ], [ %66, %65 ], [ %66, %65 ], [ %66, %65 ], [ %66, %65 ], [ %66, %65 ], [ %66, %65 ], [ %71, %69 ]
  %76 = load i32, ptr %15, align 4, !tbaa !48
  %77 = icmp slt i32 %62, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %73, %82
  %79 = phi ptr [ %84, %82 ], [ %59, %73 ]
  %80 = phi i32 [ %83, %82 ], [ %62, %73 ]
  %81 = load i32, ptr %79, align 8, !tbaa !50
  switch i32 %81, label %82 [
    i32 0, label %86
    i32 3, label %86
    i32 25, label %86
    i32 16, label %86
    i32 17, label %86
    i32 15, label %86
    i32 2, label %86
  ]

82:                                               ; preds = %78
  %83 = add i32 %80, 1
  %84 = getelementptr inbounds %struct.CustomDataLayer, ptr %79, i64 1
  %85 = icmp eq i32 %83, %76
  br i1 %85, label %86, label %78, !llvm.loop !56

86:                                               ; preds = %82, %78, %78, %78, %78, %78, %78, %78, %73
  %87 = phi i32 [ %62, %73 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %80, %78 ], [ %76, %82 ]
  %88 = phi ptr [ %59, %73 ], [ %79, %78 ], [ %79, %78 ], [ %79, %78 ], [ %79, %78 ], [ %79, %78 ], [ %79, %78 ], [ %79, %78 ], [ %84, %82 ]
  %89 = load i32, ptr %75, align 8, !tbaa !50
  switch i32 %89, label %141 [
    i32 0, label %90
    i32 3, label %109
  ]

90:                                               ; preds = %86
  %91 = load i32, ptr %51, align 8, !tbaa !34
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %341

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.CustomDataLayer, ptr %88, i64 0, i32 9
  %95 = load ptr, ptr %94, align 8, !tbaa !57
  %96 = getelementptr inbounds %struct.CustomDataLayer, ptr %75, i64 0, i32 9
  %97 = load ptr, ptr %96, align 8, !tbaa !57
  br label %98

98:                                               ; preds = %93, %104
  %99 = phi i32 [ %105, %104 ], [ 0, %93 ]
  %100 = phi ptr [ %107, %104 ], [ %95, %93 ]
  %101 = phi ptr [ %106, %104 ], [ %97, %93 ]
  %102 = tail call fastcc float @len_squared_v3v3(ptr noundef %101, ptr noundef %100) #21
  %103 = fcmp ogt float %102, %6
  br i1 %103, label %344, label %104

104:                                              ; preds = %98
  %105 = add nuw nsw i32 %99, 1
  %106 = getelementptr inbounds %struct.MVert, ptr %101, i64 1
  %107 = getelementptr inbounds %struct.MVert, ptr %100, i64 1
  %108 = icmp eq i32 %105, %91
  br i1 %108, label %341, label %98, !llvm.loop !58

109:                                              ; preds = %86
  %110 = getelementptr inbounds %struct.CustomDataLayer, ptr %75, i64 0, i32 9
  %111 = load ptr, ptr %110, align 8, !tbaa !57
  %112 = getelementptr inbounds %struct.CustomDataLayer, ptr %88, i64 0, i32 9
  %113 = load ptr, ptr %112, align 8, !tbaa !57
  %114 = load i32, ptr %52, align 4, !tbaa !44
  %115 = tail call ptr @BLI_edgehash_new_ex(ptr noundef nonnull @__func__.customdata_compare, i32 noundef %114) #22
  %116 = icmp sgt i32 %114, 0
  br i1 %116, label %118, label %139

117:                                              ; preds = %118
  br i1 %116, label %127, label %139

118:                                              ; preds = %109, %118
  %119 = phi i32 [ %124, %118 ], [ 0, %109 ]
  %120 = phi ptr [ %125, %118 ], [ %111, %109 ]
  %121 = load i32, ptr %120, align 4, !tbaa !59
  %122 = getelementptr inbounds %struct.MEdge, ptr %120, i64 0, i32 1
  %123 = load i32, ptr %122, align 4, !tbaa !61
  tail call void @BLI_edgehash_insert(ptr noundef %115, i32 noundef %121, i32 noundef %123, ptr noundef nonnull %120) #22
  %124 = add nuw nsw i32 %119, 1
  %125 = getelementptr inbounds %struct.MEdge, ptr %120, i64 1
  %126 = icmp eq i32 %124, %114
  br i1 %126, label %117, label %118, !llvm.loop !62

127:                                              ; preds = %117, %135
  %128 = phi i32 [ %136, %135 ], [ 0, %117 ]
  %129 = phi ptr [ %137, %135 ], [ %113, %117 ]
  %130 = load i32, ptr %129, align 4, !tbaa !59
  %131 = getelementptr inbounds %struct.MEdge, ptr %129, i64 0, i32 1
  %132 = load i32, ptr %131, align 4, !tbaa !61
  %133 = tail call ptr @BLI_edgehash_lookup(ptr noundef %115, i32 noundef %130, i32 noundef %132) #22
  %134 = icmp eq ptr %133, null
  br i1 %134, label %344, label %135

135:                                              ; preds = %127
  %136 = add nuw nsw i32 %128, 1
  %137 = getelementptr inbounds %struct.MEdge, ptr %129, i64 1
  %138 = icmp eq i32 %136, %114
  br i1 %138, label %139, label %127, !llvm.loop !63

139:                                              ; preds = %135, %109, %117
  tail call void @BLI_edgehash_free(ptr noundef %115, ptr noundef null) #22
  %140 = load i32, ptr %75, align 8, !tbaa !50
  br label %141

141:                                              ; preds = %86, %139
  %142 = phi i32 [ %89, %86 ], [ %140, %139 ]
  switch i32 %142, label %341 [
    i32 25, label %158
    i32 26, label %203
    i32 16, label %153
    i32 17, label %148
    i32 2, label %143
  ]

143:                                              ; preds = %141
  %144 = getelementptr inbounds %struct.CustomDataLayer, ptr %75, i64 0, i32 9
  %145 = load ptr, ptr %144, align 8, !tbaa !57
  %146 = getelementptr inbounds %struct.CustomDataLayer, ptr %88, i64 0, i32 9
  %147 = load ptr, ptr %146, align 8, !tbaa !57
  br label %297

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.CustomDataLayer, ptr %75, i64 0, i32 9
  %150 = load ptr, ptr %149, align 8, !tbaa !57
  %151 = getelementptr inbounds %struct.CustomDataLayer, ptr %88, i64 0, i32 9
  %152 = load ptr, ptr %151, align 8, !tbaa !57
  br label %240

153:                                              ; preds = %141
  %154 = getelementptr inbounds %struct.CustomDataLayer, ptr %75, i64 0, i32 9
  %155 = load ptr, ptr %154, align 8, !tbaa !57
  %156 = getelementptr inbounds %struct.CustomDataLayer, ptr %88, i64 0, i32 9
  %157 = load ptr, ptr %156, align 8, !tbaa !57
  br label %223

158:                                              ; preds = %141
  %159 = load i32, ptr %53, align 8, !tbaa !45
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %341

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.CustomDataLayer, ptr %88, i64 0, i32 9
  %163 = load ptr, ptr %162, align 8, !tbaa !57
  %164 = getelementptr inbounds %struct.CustomDataLayer, ptr %75, i64 0, i32 9
  %165 = load ptr, ptr %164, align 8, !tbaa !57
  br label %166

166:                                              ; preds = %161, %198
  %167 = phi ptr [ %201, %198 ], [ %163, %161 ]
  %168 = phi ptr [ %200, %198 ], [ %165, %161 ]
  %169 = phi i32 [ %199, %198 ], [ 0, %161 ]
  %170 = getelementptr inbounds %struct.MPoly, ptr %168, i64 0, i32 1
  %171 = load i32, ptr %170, align 4, !tbaa !64
  %172 = getelementptr inbounds %struct.MPoly, ptr %167, i64 0, i32 1
  %173 = load i32, ptr %172, align 4, !tbaa !64
  %174 = icmp eq i32 %171, %173
  br i1 %174, label %175, label %344

175:                                              ; preds = %166
  %176 = icmp sgt i32 %171, 0
  br i1 %176, label %177, label %198

177:                                              ; preds = %175
  %178 = load ptr, ptr %55, align 8, !tbaa !66
  %179 = load i32, ptr %167, align 4, !tbaa !67
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.MLoop, ptr %178, i64 %180
  %182 = load ptr, ptr %54, align 8, !tbaa !66
  %183 = load i32, ptr %168, align 4, !tbaa !67
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.MLoop, ptr %182, i64 %184
  br label %186

186:                                              ; preds = %177, %193
  %187 = phi i32 [ %194, %193 ], [ 0, %177 ]
  %188 = phi ptr [ %196, %193 ], [ %181, %177 ]
  %189 = phi ptr [ %195, %193 ], [ %185, %177 ]
  %190 = load i32, ptr %189, align 4, !tbaa !68
  %191 = load i32, ptr %188, align 4, !tbaa !68
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %344

193:                                              ; preds = %186
  %194 = add nuw nsw i32 %187, 1
  %195 = getelementptr inbounds %struct.MLoop, ptr %189, i64 1
  %196 = getelementptr inbounds %struct.MLoop, ptr %188, i64 1
  %197 = icmp eq i32 %194, %171
  br i1 %197, label %198, label %186, !llvm.loop !70

198:                                              ; preds = %193, %175
  %199 = add nuw nsw i32 %169, 1
  %200 = getelementptr inbounds %struct.MPoly, ptr %168, i64 1
  %201 = getelementptr inbounds %struct.MPoly, ptr %167, i64 1
  %202 = icmp eq i32 %199, %159
  br i1 %202, label %341, label %166, !llvm.loop !71

203:                                              ; preds = %141
  %204 = getelementptr inbounds %struct.CustomDataLayer, ptr %75, i64 0, i32 9
  %205 = load ptr, ptr %204, align 8, !tbaa !57
  %206 = getelementptr inbounds %struct.CustomDataLayer, ptr %88, i64 0, i32 9
  %207 = load ptr, ptr %206, align 8, !tbaa !57
  %208 = load i32, ptr %56, align 4, !tbaa !46
  %209 = icmp sgt i32 %208, 0
  br i1 %209, label %210, label %341

210:                                              ; preds = %203, %217
  %211 = phi ptr [ %220, %217 ], [ %207, %203 ]
  %212 = phi ptr [ %219, %217 ], [ %205, %203 ]
  %213 = phi i32 [ %218, %217 ], [ 0, %203 ]
  %214 = load i32, ptr %212, align 4, !tbaa !68
  %215 = load i32, ptr %211, align 4, !tbaa !68
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %344

217:                                              ; preds = %210
  %218 = add nuw nsw i32 %213, 1
  %219 = getelementptr inbounds %struct.MLoop, ptr %212, i64 1
  %220 = getelementptr inbounds %struct.MLoop, ptr %211, i64 1
  %221 = icmp eq i32 %218, %208
  br i1 %221, label %222, label %210, !llvm.loop !72

222:                                              ; preds = %217
  switch i32 %142, label %341 [
    i32 16, label %223
    i32 17, label %240
    i32 2, label %297
  ]

223:                                              ; preds = %153, %222
  %224 = phi ptr [ %157, %153 ], [ %207, %222 ]
  %225 = phi ptr [ %155, %153 ], [ %205, %222 ]
  %226 = load i32, ptr %56, align 4, !tbaa !46
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %341

228:                                              ; preds = %223, %234
  %229 = phi ptr [ %237, %234 ], [ %224, %223 ]
  %230 = phi ptr [ %236, %234 ], [ %225, %223 ]
  %231 = phi i32 [ %235, %234 ], [ 0, %223 ]
  %232 = tail call fastcc float @len_squared_v2v2(ptr noundef %230, ptr noundef %229) #21
  %233 = fcmp ogt float %232, %6
  br i1 %233, label %344, label %234

234:                                              ; preds = %228
  %235 = add nuw nsw i32 %231, 1
  %236 = getelementptr inbounds %struct.MLoopUV, ptr %230, i64 1
  %237 = getelementptr inbounds %struct.MLoopUV, ptr %229, i64 1
  %238 = icmp eq i32 %235, %226
  br i1 %238, label %239, label %228, !llvm.loop !73

239:                                              ; preds = %234
  switch i32 %142, label %341 [
    i32 17, label %240
    i32 2, label %297
  ]

240:                                              ; preds = %148, %222, %239
  %241 = phi ptr [ %152, %148 ], [ %207, %222 ], [ %224, %239 ]
  %242 = phi ptr [ %150, %148 ], [ %205, %222 ], [ %225, %239 ]
  %243 = load i32, ptr %56, align 4, !tbaa !46
  %244 = icmp sgt i32 %243, 0
  br i1 %244, label %245, label %341

245:                                              ; preds = %240, %290
  %246 = phi ptr [ %293, %290 ], [ %241, %240 ]
  %247 = phi ptr [ %292, %290 ], [ %242, %240 ]
  %248 = phi i32 [ %291, %290 ], [ 0, %240 ]
  %249 = load i8, ptr %247, align 1, !tbaa !74
  %250 = zext i8 %249 to i32
  %251 = load i8, ptr %246, align 1, !tbaa !74
  %252 = zext i8 %251 to i32
  %253 = sub nsw i32 %250, %252
  %254 = tail call i32 @llvm.abs.i32(i32 %253, i1 true)
  %255 = sitofp i32 %254 to float
  %256 = fcmp ogt float %255, %4
  br i1 %256, label %344, label %257

257:                                              ; preds = %245
  %258 = getelementptr inbounds %struct.MLoopCol, ptr %247, i64 0, i32 1
  %259 = load i8, ptr %258, align 1, !tbaa !76
  %260 = zext i8 %259 to i32
  %261 = getelementptr inbounds %struct.MLoopCol, ptr %246, i64 0, i32 1
  %262 = load i8, ptr %261, align 1, !tbaa !76
  %263 = zext i8 %262 to i32
  %264 = sub nsw i32 %260, %263
  %265 = tail call i32 @llvm.abs.i32(i32 %264, i1 true)
  %266 = sitofp i32 %265 to float
  %267 = fcmp ogt float %266, %4
  br i1 %267, label %344, label %268

268:                                              ; preds = %257
  %269 = getelementptr inbounds %struct.MLoopCol, ptr %247, i64 0, i32 2
  %270 = load i8, ptr %269, align 1, !tbaa !77
  %271 = zext i8 %270 to i32
  %272 = getelementptr inbounds %struct.MLoopCol, ptr %246, i64 0, i32 2
  %273 = load i8, ptr %272, align 1, !tbaa !77
  %274 = zext i8 %273 to i32
  %275 = sub nsw i32 %271, %274
  %276 = tail call i32 @llvm.abs.i32(i32 %275, i1 true)
  %277 = sitofp i32 %276 to float
  %278 = fcmp ogt float %277, %4
  br i1 %278, label %344, label %279

279:                                              ; preds = %268
  %280 = getelementptr inbounds %struct.MLoopCol, ptr %247, i64 0, i32 3
  %281 = load i8, ptr %280, align 1, !tbaa !78
  %282 = zext i8 %281 to i32
  %283 = getelementptr inbounds %struct.MLoopCol, ptr %246, i64 0, i32 3
  %284 = load i8, ptr %283, align 1, !tbaa !78
  %285 = zext i8 %284 to i32
  %286 = sub nsw i32 %282, %285
  %287 = tail call i32 @llvm.abs.i32(i32 %286, i1 true)
  %288 = sitofp i32 %287 to float
  %289 = fcmp ogt float %288, %4
  br i1 %289, label %344, label %290

290:                                              ; preds = %279
  %291 = add nuw nsw i32 %248, 1
  %292 = getelementptr inbounds %struct.MLoopCol, ptr %247, i64 1
  %293 = getelementptr inbounds %struct.MLoopCol, ptr %246, i64 1
  %294 = icmp eq i32 %291, %243
  br i1 %294, label %295, label %245, !llvm.loop !79

295:                                              ; preds = %290
  %296 = icmp eq i32 %142, 2
  br i1 %296, label %297, label %341

297:                                              ; preds = %143, %222, %239, %295
  %298 = phi ptr [ %147, %143 ], [ %207, %222 ], [ %224, %239 ], [ %241, %295 ]
  %299 = phi ptr [ %145, %143 ], [ %205, %222 ], [ %225, %239 ], [ %242, %295 ]
  %300 = load i32, ptr %51, align 8, !tbaa !34
  %301 = icmp sgt i32 %300, 0
  br i1 %301, label %302, label %341

302:                                              ; preds = %297, %336
  %303 = phi ptr [ %339, %336 ], [ %298, %297 ]
  %304 = phi ptr [ %338, %336 ], [ %299, %297 ]
  %305 = phi i32 [ %337, %336 ], [ 0, %297 ]
  %306 = getelementptr inbounds %struct.MDeformVert, ptr %304, i64 0, i32 1
  %307 = load i32, ptr %306, align 8, !tbaa !80
  %308 = getelementptr inbounds %struct.MDeformVert, ptr %303, i64 0, i32 1
  %309 = load i32, ptr %308, align 8, !tbaa !80
  %310 = icmp eq i32 %307, %309
  br i1 %310, label %311, label %344

311:                                              ; preds = %302
  %312 = icmp sgt i32 %307, 0
  br i1 %312, label %313, label %336

313:                                              ; preds = %311
  %314 = load ptr, ptr %304, align 8, !tbaa !82
  %315 = load ptr, ptr %303, align 8, !tbaa !82
  br label %316

316:                                              ; preds = %313, %331
  %317 = phi ptr [ %334, %331 ], [ %315, %313 ]
  %318 = phi ptr [ %333, %331 ], [ %314, %313 ]
  %319 = phi i32 [ %332, %331 ], [ 0, %313 ]
  %320 = load i32, ptr %318, align 4, !tbaa !83
  %321 = load i32, ptr %317, align 4, !tbaa !83
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %323, label %344

323:                                              ; preds = %316
  %324 = getelementptr inbounds %struct.MDeformWeight, ptr %318, i64 0, i32 1
  %325 = load float, ptr %324, align 4, !tbaa !85
  %326 = getelementptr inbounds %struct.MDeformWeight, ptr %317, i64 0, i32 1
  %327 = load float, ptr %326, align 4, !tbaa !85
  %328 = fsub float %325, %327
  %329 = tail call float @llvm.fabs.f32(float %328)
  %330 = fcmp ogt float %329, %4
  br i1 %330, label %344, label %331

331:                                              ; preds = %323
  %332 = add nuw nsw i32 %319, 1
  %333 = getelementptr inbounds %struct.MDeformWeight, ptr %318, i64 1
  %334 = getelementptr inbounds %struct.MDeformWeight, ptr %317, i64 1
  %335 = icmp eq i32 %332, %307
  br i1 %335, label %336, label %316, !llvm.loop !86

336:                                              ; preds = %331, %311
  %337 = add nuw nsw i32 %305, 1
  %338 = getelementptr inbounds %struct.MDeformVert, ptr %304, i64 1
  %339 = getelementptr inbounds %struct.MDeformVert, ptr %303, i64 1
  %340 = icmp eq i32 %337, %300
  br i1 %340, label %341, label %302, !llvm.loop !87

341:                                              ; preds = %104, %336, %198, %240, %223, %203, %90, %158, %297, %141, %222, %239, %295
  %342 = add nuw nsw i32 %60, 1
  %343 = icmp eq i32 %342, %14
  br i1 %343, label %344, label %57, !llvm.loop !88

344:                                              ; preds = %341, %127, %98, %210, %228, %279, %268, %257, %245, %302, %166, %323, %316, %186, %46, %43
  %345 = phi i32 [ 11, %43 ], [ 0, %46 ], [ 7, %186 ], [ 1, %323 ], [ 2, %316 ], [ 8, %166 ], [ 3, %302 ], [ 4, %245 ], [ 4, %257 ], [ 4, %268 ], [ 4, %279 ], [ 5, %228 ], [ 6, %210 ], [ 10, %98 ], [ 9, %127 ], [ 0, %341 ]
  ret i32 %345
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @cmpcode_to_str(i32 noundef %0) unnamed_addr #2 !PGOFuncName !89 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 11
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  %6 = shl i64 %5, 2
  %7 = call ptr @llvm.load.relative.i64(ptr @reltable.cmpcode_to_str, i64 %6)
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ @.str.31, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_ensure_skin_customdata(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 8, !tbaa !91
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 24
  %11 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %10, i32 noundef 36) #22
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #23
  tail call void @BM_data_layer_add(ptr noundef nonnull %7, ptr noundef nonnull %10, i32 noundef 36) #22
  %14 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef nonnull %7) #21
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %14, align 8, !tbaa !94
  %18 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %10, ptr noundef %17, i32 noundef 36) #22
  %19 = getelementptr inbounds %struct.MVertSkin, ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !97
  %21 = or i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !97
  br label %22

22:                                               ; preds = %16, %13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #23
  br label %36

23:                                               ; preds = %1, %6
  %24 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 21
  %25 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %24, i32 noundef 36) #22
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %29 = load i32, ptr %28, align 8, !tbaa !34
  %30 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %24, i32 noundef 36, i32 noundef 2, ptr noundef null, i32 noundef %29) #22
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.MVertSkin, ptr %30, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !97
  %35 = or i32 %34, 1
  store i32 %35, ptr %33, align 4, !tbaa !97
  br label %36

36:                                               ; preds = %23, %32, %27, %9, %22
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_data_layer_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !99 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) #21
  %3 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #21
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !100 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !101
  %4 = tail call ptr %3(ptr noundef %0) #22
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_update_customdata_pointers(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  tail call fastcc void @mesh_update_linked_customdata(ptr noundef %0, i8 noundef zeroext %1) #21
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 21
  %4 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %3, i32 noundef 0) #22
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  store ptr %4, ptr %5, align 8, !tbaa !103
  %6 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %3, i32 noundef 2) #22
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 17
  store ptr %6, ptr %7, align 8, !tbaa !104
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22
  %9 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %8, i32 noundef 3) #22
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  store ptr %9, ptr %10, align 8, !tbaa !105
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %12 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %11, i32 noundef 4) #22
  %13 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  store ptr %12, ptr %13, align 8, !tbaa !106
  %14 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %11, i32 noundef 6) #22
  %15 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 18
  store ptr %14, ptr %15, align 8, !tbaa !107
  %16 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %11, i32 noundef 5) #22
  %17 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 13
  store ptr %16, ptr %17, align 8, !tbaa !108
  %18 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %19 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %18, i32 noundef 25) #22
  %20 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  store ptr %19, ptr %20, align 8, !tbaa !109
  %21 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %22 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %21, i32 noundef 26) #22
  %23 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  store ptr %22, ptr %23, align 8, !tbaa !66
  %24 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %18, i32 noundef 15) #22
  %25 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 8
  store ptr %24, ptr %25, align 8, !tbaa !110
  %26 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %21, i32 noundef 17) #22
  %27 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 11
  store ptr %26, ptr %27, align 8, !tbaa !111
  %28 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %21, i32 noundef 16) #22
  %29 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 10
  store ptr %28, ptr %29, align 8, !tbaa !112
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mesh_update_linked_customdata(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !PGOFuncName !113 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @BKE_editmesh_update_linked_customdata(ptr noundef nonnull %4) #22
  br label %7

7:                                                ; preds = %6, %2
  %8 = icmp eq i8 %1, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  tail call fastcc void @mesh_ensure_tessellation_customdata(ptr noundef nonnull %0) #21
  br label %10

10:                                               ; preds = %9, %7
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %12 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %13 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  tail call void @CustomData_bmesh_update_active_layers(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13) #22
  ret void
}

; Function Attrs: optsize
declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_unlink(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %39, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !114
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 47
  %9 = load i16, ptr %8, align 2, !tbaa !115
  %10 = icmp sgt i16 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = zext nneg i16 %9 to i64
  br label %13

13:                                               ; preds = %11, %23
  %14 = phi i64 [ 0, %11 ], [ %24, %23 ]
  %15 = load ptr, ptr %4, align 8, !tbaa !114
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !116
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !117
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr %20, align 4, !tbaa !117
  br label %23

23:                                               ; preds = %19, %13
  store ptr null, ptr %16, align 8, !tbaa !116
  %24 = add nuw nsw i64 %14, 1
  %25 = icmp eq i64 %24, %12
  br i1 %25, label %26, label %13, !llvm.loop !122

26:                                               ; preds = %23, %7, %3
  %27 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !123
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ID, ptr %28, i64 0, i32 6
  %32 = load i32, ptr %31, align 4, !tbaa !124
  %33 = add nsw i32 %32, -1
  store i32 %33, ptr %31, align 4, !tbaa !124
  br label %34

34:                                               ; preds = %30, %26
  store ptr null, ptr %27, align 8, !tbaa !123
  %35 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 19
  %36 = load ptr, ptr %35, align 8, !tbaa !126
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store ptr null, ptr %35, align 8, !tbaa !126
  br label %39

39:                                               ; preds = %34, %38, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_free(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @BKE_mesh_unlink(ptr noundef %0) #21
  br label %5

5:                                                ; preds = %4, %2
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 21
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %8 = load i32, ptr %7, align 8, !tbaa !34
  tail call void @CustomData_free(ptr noundef nonnull %6, i32 noundef %8) #22
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %11 = load i32, ptr %10, align 4, !tbaa !44
  tail call void @CustomData_free(ptr noundef nonnull %9, i32 noundef %11) #22
  %12 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %13 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %14 = load i32, ptr %13, align 8, !tbaa !127
  tail call void @CustomData_free(ptr noundef nonnull %12, i32 noundef %14) #22
  %15 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %16 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %17 = load i32, ptr %16, align 4, !tbaa !46
  tail call void @CustomData_free(ptr noundef nonnull %15, i32 noundef %17) #22
  %18 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %19 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %20 = load i32, ptr %19, align 8, !tbaa !45
  tail call void @CustomData_free(ptr noundef nonnull %18, i32 noundef %20) #22
  %21 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !128
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  tail call void @BKE_free_animdata(ptr noundef nonnull %0) #22
  store ptr null, ptr %21, align 8, !tbaa !128
  br label %25

25:                                               ; preds = %24, %5
  %26 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !114
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !116
  tail call void %30(ptr noundef nonnull %27) #22
  br label %31

31:                                               ; preds = %29, %25
  %32 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !129
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !116
  tail call void %36(ptr noundef nonnull %33) #22
  br label %37

37:                                               ; preds = %35, %31
  %38 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !130
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !116
  tail call void %42(ptr noundef nonnull %39) #22
  br label %43

43:                                               ; preds = %41, %37
  %44 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %45 = load ptr, ptr %44, align 8, !tbaa !90
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !116
  tail call void %48(ptr noundef nonnull %45) #22
  br label %49

49:                                               ; preds = %47, %43
  ret void
}

; Function Attrs: optsize
declare void @CustomData_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mesh_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 17741, ptr noundef %1) #22
  %4 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 34
  %5 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 34, i64 2
  store float 1.000000e+00, ptr %5, align 8, !tbaa !131
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %4, align 8, !tbaa !131
  %6 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 39
  store float 3.000000e+01, ptr %6, align 8, !tbaa !132
  %7 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 37
  store i16 1, ptr %7, align 4, !tbaa !133
  %8 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 36
  store i32 67, ptr %8, align 8, !tbaa !134
  %9 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 21
  tail call void @CustomData_reset(ptr noundef nonnull %9) #22
  %10 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 22
  tail call void @CustomData_reset(ptr noundef nonnull %10) #22
  %11 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 23
  tail call void @CustomData_reset(ptr noundef nonnull %11) #22
  %12 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 24
  tail call void @CustomData_reset(ptr noundef nonnull %12) #22
  %13 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 25
  tail call void @CustomData_reset(ptr noundef nonnull %13) #22
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CustomData_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mesh_copy_ex(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 28
  %4 = load i32, ptr %3, align 8, !tbaa !127
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 30
  %8 = load i32, ptr %7, align 8, !tbaa !45
  %9 = icmp eq i32 %8, 0
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i1 [ false, %2 ], [ %9, %6 ]
  %12 = tail call ptr @BKE_libblock_copy_ex(ptr noundef %0, ptr noundef nonnull %1) #22
  %13 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !116
  %14 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !114
  %16 = tail call ptr %13(ptr noundef %15) #22
  %17 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 5
  store ptr %16, ptr %17, align 8, !tbaa !114
  %18 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 47
  %19 = load i16, ptr %18, align 2, !tbaa !115
  %20 = icmp sgt i16 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %10, %21
  %22 = phi i64 [ %26, %21 ], [ 0, %10 ]
  %23 = load ptr, ptr %17, align 8, !tbaa !114
  %24 = getelementptr inbounds ptr, ptr %23, i64 %22
  %25 = load ptr, ptr %24, align 8, !tbaa !116
  tail call void @id_us_plus(ptr noundef %25) #22
  %26 = add nuw nsw i64 %22, 1
  %27 = load i16, ptr %18, align 2, !tbaa !115
  %28 = sext i16 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %21, label %30, !llvm.loop !135

30:                                               ; preds = %21, %10
  %31 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 19
  %32 = load ptr, ptr %31, align 8, !tbaa !126
  tail call void @id_us_plus(ptr noundef %32) #22
  %33 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 21
  %34 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 21
  %35 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !136
  %36 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 26
  %37 = load i32, ptr %36, align 8, !tbaa !34
  tail call void @CustomData_copy(ptr noundef nonnull %33, ptr noundef nonnull %34, i64 noundef %35, i32 noundef 4, i32 noundef %37) #22
  %38 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 22
  %39 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 22
  %40 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 27
  %41 = load i32, ptr %40, align 4, !tbaa !44
  tail call void @CustomData_copy(ptr noundef nonnull %38, ptr noundef nonnull %39, i64 noundef %35, i32 noundef 4, i32 noundef %41) #22
  %42 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 25
  %43 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 25
  %44 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 31
  %45 = load i32, ptr %44, align 4, !tbaa !46
  tail call void @CustomData_copy(ptr noundef nonnull %42, ptr noundef nonnull %43, i64 noundef %35, i32 noundef 4, i32 noundef %45) #22
  %46 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 24
  %47 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 24
  %48 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 30
  %49 = load i32, ptr %48, align 8, !tbaa !45
  tail call void @CustomData_copy(ptr noundef nonnull %46, ptr noundef nonnull %47, i64 noundef %35, i32 noundef 4, i32 noundef %49) #22
  br i1 %11, label %50, label %55

50:                                               ; preds = %30
  %51 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 23
  %52 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 23
  %53 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 28
  %54 = load i32, ptr %53, align 8, !tbaa !127
  tail call void @CustomData_copy(ptr noundef nonnull %51, ptr noundef nonnull %52, i64 noundef %35, i32 noundef 4, i32 noundef %54) #22
  br label %56

55:                                               ; preds = %30
  tail call fastcc void @mesh_tessface_clear_intern(ptr noundef nonnull %12, i32 noundef 0) #21
  br label %56

56:                                               ; preds = %55, %50
  %57 = zext i1 %11 to i8
  tail call void @BKE_mesh_update_customdata_pointers(ptr noundef nonnull %12, i8 noundef zeroext %57) #21
  %58 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 23, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !137
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 23
  br label %69

63:                                               ; preds = %98, %56
  %64 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 24, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !138
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %136

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 30
  br label %103

69:                                               ; preds = %61, %98
  %70 = phi i32 [ %59, %61 ], [ %99, %98 ]
  %71 = phi i64 [ 0, %61 ], [ %100, %98 ]
  %72 = load ptr, ptr %62, align 8, !tbaa !139
  %73 = getelementptr inbounds %struct.CustomDataLayer, ptr %72, i64 %71
  %74 = load i32, ptr %73, align 8, !tbaa !50
  %75 = icmp eq i32 %74, 5
  br i1 %75, label %76, label %98

76:                                               ; preds = %69
  %77 = load i32, ptr %3, align 8, !tbaa !127
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.CustomDataLayer, ptr %72, i64 %71, i32 9
  %81 = load ptr, ptr %80, align 8, !tbaa !57
  br label %82

82:                                               ; preds = %79, %91
  %83 = phi i32 [ %92, %91 ], [ %77, %79 ]
  %84 = phi ptr [ %94, %91 ], [ %81, %79 ]
  %85 = phi i32 [ %93, %91 ], [ 0, %79 ]
  %86 = getelementptr inbounds %struct.MTFace, ptr %84, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !140
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %82
  tail call void @id_lib_extern(ptr noundef nonnull %87) #22
  %90 = load i32, ptr %3, align 8, !tbaa !127
  br label %91

91:                                               ; preds = %82, %89
  %92 = phi i32 [ %83, %82 ], [ %90, %89 ]
  %93 = add nuw nsw i32 %85, 1
  %94 = getelementptr inbounds %struct.MTFace, ptr %84, i64 1
  %95 = icmp slt i32 %93, %92
  br i1 %95, label %82, label %96, !llvm.loop !142

96:                                               ; preds = %91
  %97 = load i32, ptr %58, align 4, !tbaa !137
  br label %98

98:                                               ; preds = %96, %76, %69
  %99 = phi i32 [ %97, %96 ], [ %70, %76 ], [ %70, %69 ]
  %100 = add nuw nsw i64 %71, 1
  %101 = sext i32 %99 to i64
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %69, label %63, !llvm.loop !143

103:                                              ; preds = %67, %131
  %104 = phi i32 [ %65, %67 ], [ %132, %131 ]
  %105 = phi i64 [ 0, %67 ], [ %133, %131 ]
  %106 = load ptr, ptr %46, align 8, !tbaa !144
  %107 = getelementptr inbounds %struct.CustomDataLayer, ptr %106, i64 %105
  %108 = load i32, ptr %107, align 8, !tbaa !50
  %109 = icmp eq i32 %108, 15
  br i1 %109, label %110, label %131

110:                                              ; preds = %103
  %111 = load i32, ptr %68, align 8, !tbaa !45
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %131

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.CustomDataLayer, ptr %106, i64 %105, i32 9
  %115 = load ptr, ptr %114, align 8, !tbaa !57
  br label %116

116:                                              ; preds = %113, %124
  %117 = phi i32 [ %125, %124 ], [ %111, %113 ]
  %118 = phi i32 [ %126, %124 ], [ 0, %113 ]
  %119 = phi ptr [ %127, %124 ], [ %115, %113 ]
  %120 = load ptr, ptr %119, align 8, !tbaa !145
  %121 = icmp eq ptr %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %116
  tail call void @id_lib_extern(ptr noundef nonnull %120) #22
  %123 = load i32, ptr %68, align 8, !tbaa !45
  br label %124

124:                                              ; preds = %116, %122
  %125 = phi i32 [ %117, %116 ], [ %123, %122 ]
  %126 = add nuw nsw i32 %118, 1
  %127 = getelementptr inbounds %struct.MTexPoly, ptr %119, i64 1
  %128 = icmp slt i32 %126, %125
  br i1 %128, label %116, label %129, !llvm.loop !147

129:                                              ; preds = %124
  %130 = load i32, ptr %64, align 4, !tbaa !138
  br label %131

131:                                              ; preds = %129, %110, %103
  %132 = phi i32 [ %130, %129 ], [ %104, %110 ], [ %104, %103 ]
  %133 = add nuw nsw i64 %105, 1
  %134 = sext i32 %132 to i64
  %135 = icmp slt i64 %133, %134
  br i1 %135, label %103, label %136, !llvm.loop !148

136:                                              ; preds = %131, %63
  %137 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 20
  store ptr null, ptr %137, align 8, !tbaa !90
  %138 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !116
  %139 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 6
  %140 = load ptr, ptr %139, align 8, !tbaa !130
  %141 = tail call ptr %138(ptr noundef %140) #22
  store ptr %141, ptr %139, align 8, !tbaa !130
  %142 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !116
  %143 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !129
  %145 = tail call ptr %142(ptr noundef %144) #22
  store ptr %145, ptr %143, align 8, !tbaa !129
  %146 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 4
  %147 = load ptr, ptr %146, align 8, !tbaa !123
  %148 = tail call ptr @BKE_key_copy(ptr noundef %147) #22
  %149 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 4
  store ptr %148, ptr %149, align 8, !tbaa !123
  %150 = icmp eq ptr %148, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %136
  %152 = getelementptr inbounds %struct.Key, ptr %148, i64 0, i32 8
  store ptr %12, ptr %152, align 8, !tbaa !149
  br label %153

153:                                              ; preds = %151, %136
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @BKE_libblock_copy_ex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CustomData_copy(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mesh_tessface_clear_intern(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !150 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  br i1 %3, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %7 = load i32, ptr %6, align 8, !tbaa !127
  tail call void @CustomData_free(ptr noundef nonnull %4, i32 noundef %7) #22
  br label %9

8:                                                ; preds = %2
  tail call void @CustomData_reset(ptr noundef nonnull %4) #22
  br label %9

9:                                                ; preds = %8, %5
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 18
  store ptr null, ptr %11, align 8, !tbaa !107
  %12 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  store i32 0, ptr %12, align 8, !tbaa !127
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @id_lib_extern(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_key_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mesh_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !151
  %3 = tail call ptr @BKE_mesh_copy_ex(ptr noundef %2, ptr noundef %0) #21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_mesh_to_bmesh(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMAllocTemplate, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %5 = load <2 x i32>, ptr %4, align 8, !tbaa !153
  store <2 x i32> %5, ptr %3, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.BMAllocTemplate, ptr %3, i64 0, i32 2
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %8 = load <2 x i32>, ptr %7, align 8, !tbaa !153
  %9 = shufflevector <2 x i32> %8, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %9, ptr %6, align 8, !tbaa !153
  %10 = call ptr @BM_mesh_create(ptr noundef nonnull %3) #22
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 115
  %12 = load i16, ptr %11, align 2, !tbaa !154
  %13 = sext i16 %12 to i32
  call void @BM_mesh_bm_from_me(ptr noundef %10, ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %13) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @BM_mesh_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_mesh_bm_from_me(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_make_local(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !157
  %5 = icmp eq ptr %4, null
  br i1 %5, label %66, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !158
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef nonnull %0) #22
  tail call fastcc void @expand_local_mesh(ptr noundef nonnull %0) #21
  br label %66

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !116
  %14 = icmp eq ptr %13, null
  br i1 %14, label %66, label %15

15:                                               ; preds = %11, %32
  %16 = phi ptr [ %35, %32 ], [ %13, %11 ]
  %17 = phi i8 [ %34, %32 ], [ 0, %11 ]
  %18 = phi i8 [ %33, %32 ], [ 0, %11 ]
  %19 = icmp eq i8 %17, 0
  %20 = icmp eq i8 %18, 0
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !159
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !160
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, i8 1, i8 %18
  %31 = select i1 %29, i8 %17, i8 1
  br label %32

32:                                               ; preds = %26, %22
  %33 = phi i8 [ %18, %22 ], [ %30, %26 ]
  %34 = phi i8 [ %17, %22 ], [ %31, %26 ]
  %35 = load ptr, ptr %16, align 8, !tbaa !116
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %15, !llvm.loop !161

37:                                               ; preds = %32
  %38 = icmp ne i8 %33, 0
  %39 = icmp eq i8 %34, 0
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #22
  tail call fastcc void @expand_local_mesh(ptr noundef %0) #21
  br label %66

42:                                               ; preds = %15, %37
  %43 = phi i8 [ %34, %37 ], [ %17, %15 ]
  %44 = phi i1 [ %38, %37 ], [ true, %15 ]
  %45 = icmp ne i8 %43, 0
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %66

47:                                               ; preds = %42
  %48 = tail call ptr @BKE_mesh_copy(ptr noundef %0) #21
  %49 = getelementptr inbounds %struct.ID, ptr %48, i64 0, i32 6
  store i32 0, ptr %49, align 4, !tbaa !158
  %50 = load ptr, ptr %3, align 8, !tbaa !157
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %50, ptr noundef %48) #22
  %51 = load ptr, ptr %12, align 8, !tbaa !116
  %52 = icmp eq ptr %51, null
  br i1 %52, label %66, label %53

53:                                               ; preds = %47, %63
  %54 = phi ptr [ %64, %63 ], [ %51, %47 ]
  %55 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 19
  %56 = load ptr, ptr %55, align 8, !tbaa !159
  %57 = icmp eq ptr %56, %0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.ID, ptr %54, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !160
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  tail call void @BKE_mesh_assign_object(ptr noundef nonnull %54, ptr noundef %48) #21
  br label %63

63:                                               ; preds = %53, %62, %58
  %64 = load ptr, ptr %54, align 8, !tbaa !116
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %53, !llvm.loop !162

66:                                               ; preds = %63, %11, %47, %41, %42, %1, %10
  ret void
}

; Function Attrs: optsize
declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_local_mesh(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !163 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !126
  tail call void @id_lib_extern(ptr noundef %3) #22
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !108
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !110
  %10 = icmp eq ptr %9, null
  br i1 %10, label %92, label %11

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !138
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %17 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  br label %25

18:                                               ; preds = %53, %11
  %19 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !137
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %92

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %24 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  br label %58

25:                                               ; preds = %15, %53
  %26 = phi i32 [ %13, %15 ], [ %54, %53 ]
  %27 = phi i64 [ 0, %15 ], [ %55, %53 ]
  %28 = load ptr, ptr %16, align 8, !tbaa !144
  %29 = getelementptr inbounds %struct.CustomDataLayer, ptr %28, i64 %27
  %30 = load i32, ptr %29, align 8, !tbaa !50
  %31 = icmp eq i32 %30, 15
  br i1 %31, label %32, label %53

32:                                               ; preds = %25
  %33 = load i32, ptr %17, align 8, !tbaa !45
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.CustomDataLayer, ptr %28, i64 %27, i32 9
  %37 = load ptr, ptr %36, align 8, !tbaa !57
  br label %38

38:                                               ; preds = %35, %46
  %39 = phi i32 [ %47, %46 ], [ %33, %35 ]
  %40 = phi ptr [ %49, %46 ], [ %37, %35 ]
  %41 = phi i32 [ %48, %46 ], [ 0, %35 ]
  %42 = load ptr, ptr %40, align 8, !tbaa !145
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  tail call void @id_lib_extern(ptr noundef nonnull %42) #22
  %45 = load i32, ptr %17, align 8, !tbaa !45
  br label %46

46:                                               ; preds = %38, %44
  %47 = phi i32 [ %39, %38 ], [ %45, %44 ]
  %48 = add nuw nsw i32 %41, 1
  %49 = getelementptr inbounds %struct.MTexPoly, ptr %40, i64 1
  %50 = icmp slt i32 %48, %47
  br i1 %50, label %38, label %51, !llvm.loop !164

51:                                               ; preds = %46
  %52 = load i32, ptr %12, align 4, !tbaa !138
  br label %53

53:                                               ; preds = %51, %32, %25
  %54 = phi i32 [ %52, %51 ], [ %26, %32 ], [ %26, %25 ]
  %55 = add nuw nsw i64 %27, 1
  %56 = sext i32 %54 to i64
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %25, label %18, !llvm.loop !165

58:                                               ; preds = %22, %87
  %59 = phi i32 [ %20, %22 ], [ %88, %87 ]
  %60 = phi i64 [ 0, %22 ], [ %89, %87 ]
  %61 = load ptr, ptr %23, align 8, !tbaa !139
  %62 = getelementptr inbounds %struct.CustomDataLayer, ptr %61, i64 %60
  %63 = load i32, ptr %62, align 8, !tbaa !50
  %64 = icmp eq i32 %63, 5
  br i1 %64, label %65, label %87

65:                                               ; preds = %58
  %66 = load i32, ptr %24, align 8, !tbaa !127
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.CustomDataLayer, ptr %61, i64 %60, i32 9
  %70 = load ptr, ptr %69, align 8, !tbaa !57
  br label %71

71:                                               ; preds = %68, %80
  %72 = phi i32 [ %81, %80 ], [ %66, %68 ]
  %73 = phi ptr [ %83, %80 ], [ %70, %68 ]
  %74 = phi i32 [ %82, %80 ], [ 0, %68 ]
  %75 = getelementptr inbounds %struct.MTFace, ptr %73, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !140
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %71
  tail call void @id_lib_extern(ptr noundef nonnull %76) #22
  %79 = load i32, ptr %24, align 8, !tbaa !127
  br label %80

80:                                               ; preds = %71, %78
  %81 = phi i32 [ %72, %71 ], [ %79, %78 ]
  %82 = add nuw nsw i32 %74, 1
  %83 = getelementptr inbounds %struct.MTFace, ptr %73, i64 1
  %84 = icmp slt i32 %82, %81
  br i1 %84, label %71, label %85, !llvm.loop !166

85:                                               ; preds = %80
  %86 = load i32, ptr %19, align 4, !tbaa !137
  br label %87

87:                                               ; preds = %85, %65, %58
  %88 = phi i32 [ %86, %85 ], [ %59, %65 ], [ %59, %58 ]
  %89 = add nuw nsw i64 %60, 1
  %90 = sext i32 %88 to i64
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %58, label %92, !llvm.loop !167

92:                                               ; preds = %87, %18, %7
  %93 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 5
  %94 = load ptr, ptr %93, align 8, !tbaa !114
  %95 = icmp eq ptr %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 47
  %98 = load i16, ptr %97, align 2, !tbaa !115
  tail call void @extern_local_matarar(ptr noundef nonnull %94, i16 noundef signext %98) #22
  br label %99

99:                                               ; preds = %96, %92
  ret void
}

; Function Attrs: optsize
declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_assign_object(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @multires_force_update(ptr noundef %0) #22
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !168
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !159
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !158
  %15 = add nsw i32 %14, -1
  store i32 %15, ptr %13, align 4, !tbaa !158
  br label %16

16:                                               ; preds = %12, %8
  store ptr %1, ptr %9, align 8, !tbaa !159
  tail call void @id_us_plus(ptr noundef %1) #22
  br label %17

17:                                               ; preds = %16, %4
  %18 = load ptr, ptr @G, align 8, !tbaa !151
  tail call void @test_object_materials(ptr noundef %18, ptr noundef %1) #22
  tail call void @test_object_modifiers(ptr noundef nonnull %0) #22
  br label %19

19:                                               ; preds = %2, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_mesh_uv_cdlayer_rename_index(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = icmp ne i8 %5, 0
  %8 = select i1 %7, i32 3, i32 2
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !90
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr %10, align 8, !tbaa !91
  %14 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 27
  %15 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 26
  br label %20

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %18 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %19 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi ptr [ null, %12 ], [ %19, %16 ]
  %22 = phi ptr [ %15, %12 ], [ %18, %16 ]
  %23 = phi ptr [ %14, %12 ], [ %17, %16 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = sext i32 %1 to i64
  %26 = getelementptr inbounds %struct.CustomDataLayer, ptr %24, i64 %25
  %27 = load ptr, ptr %22, align 8, !tbaa !49
  %28 = sext i32 %2 to i64
  %29 = getelementptr inbounds %struct.CustomDataLayer, ptr %27, i64 %28
  %30 = icmp ne ptr %21, null
  %31 = and i1 %7, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %20
  %33 = load ptr, ptr %21, align 8, !tbaa !49
  %34 = sext i32 %3 to i64
  %35 = getelementptr inbounds %struct.CustomDataLayer, ptr %33, i64 %34
  br label %36

36:                                               ; preds = %20, %32
  %37 = phi ptr [ %35, %32 ], [ null, %20 ]
  %38 = getelementptr inbounds %struct.CustomDataLayer, ptr %24, i64 %25, i32 8
  %39 = icmp eq ptr %38, %4
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = ptrtoint ptr %26 to i64
  br label %50

42:                                               ; preds = %36
  %43 = tail call ptr @BLI_strncpy(ptr noundef nonnull %38, ptr noundef %4, i64 noundef 64) #22
  %44 = load ptr, ptr %23, align 8, !tbaa !49
  %45 = ptrtoint ptr %26 to i64
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 104
  %49 = trunc i64 %48 to i32
  tail call void @CustomData_set_layer_unique_name(ptr noundef nonnull %23, i32 noundef %49) #22
  br label %50

50:                                               ; preds = %40, %42
  %51 = phi i64 [ %41, %40 ], [ %45, %42 ]
  %52 = getelementptr inbounds %struct.CustomDataLayer, ptr %37, i64 0, i32 8
  %53 = getelementptr inbounds %struct.CustomDataLayer, ptr %27, i64 %28, i32 8
  %54 = icmp eq ptr %37, null
  %55 = ptrtoint ptr %37 to i64
  %56 = ptrtoint ptr %29 to i64
  br label %57

57:                                               ; preds = %83, %50
  %58 = phi i32 [ 1, %50 ], [ %84, %83 ]
  %59 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(1) %53) #24
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  br i1 %54, label %85, label %62

62:                                               ; preds = %61
  %63 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(1) %52) #24
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %85, label %65

65:                                               ; preds = %57, %62
  %66 = urem i32 %58, %8
  switch i32 %66, label %74 [
    i32 0, label %67
    i32 1, label %69
    i32 2, label %71
  ]

67:                                               ; preds = %65
  %68 = tail call ptr @BLI_strncpy(ptr noundef nonnull %38, ptr noundef nonnull %53, i64 noundef 64) #22
  br label %75

69:                                               ; preds = %65
  %70 = tail call ptr @BLI_strncpy(ptr noundef nonnull %53, ptr noundef nonnull %38, i64 noundef 64) #22
  br label %75

71:                                               ; preds = %65
  br i1 %54, label %83, label %72

72:                                               ; preds = %71
  %73 = tail call ptr @BLI_strncpy(ptr noundef nonnull %52, ptr noundef nonnull %38, i64 noundef 64) #22
  br label %75

74:                                               ; preds = %65
  unreachable

75:                                               ; preds = %72, %69, %67
  %76 = phi ptr [ %23, %67 ], [ %22, %69 ], [ %21, %72 ]
  %77 = phi i64 [ %51, %67 ], [ %56, %69 ], [ %55, %72 ]
  %78 = load ptr, ptr %76, align 8, !tbaa !49
  %79 = ptrtoint ptr %78 to i64
  %80 = sub i64 %77, %79
  %81 = sdiv exact i64 %80, 104
  %82 = trunc i64 %81 to i32
  tail call void @CustomData_set_layer_unique_name(ptr noundef nonnull %76, i32 noundef %82) #22
  br label %83

83:                                               ; preds = %75, %71
  %84 = add nuw nsw i32 %58, 1
  br label %57, !llvm.loop !169

85:                                               ; preds = %61, %62
  ret i8 1
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CustomData_set_layer_unique_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_mesh_uv_cdlayer_rename(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !91
  %10 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 27
  %11 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 26
  br label %22

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %14 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %15 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %16 = icmp eq i8 %3, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !48
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %12, %17, %8
  %23 = phi ptr [ %11, %8 ], [ %14, %17 ], [ %14, %12 ]
  %24 = phi ptr [ null, %8 ], [ %15, %17 ], [ %15, %12 ]
  %25 = phi ptr [ %10, %8 ], [ %13, %17 ], [ %13, %12 ]
  %26 = phi i8 [ 0, %8 ], [ %21, %17 ], [ 0, %12 ]
  %27 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %25, i32 noundef 15) #22
  %28 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %23, i32 noundef 16) #22
  %29 = icmp ne i8 %26, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = tail call i32 @CustomData_get_layer_index(ptr noundef %24, i32 noundef 5) #22
  br label %32

32:                                               ; preds = %22, %30
  %33 = phi i32 [ %31, %30 ], [ -1, %22 ]
  %34 = tail call i32 @CustomData_get_named_layer(ptr noundef nonnull %25, i32 noundef 15, ptr noundef %1) #22
  %35 = tail call i32 @CustomData_get_named_layer(ptr noundef nonnull %23, i32 noundef 16, ptr noundef %1) #22
  br i1 %29, label %36, label %38

36:                                               ; preds = %32
  %37 = tail call i32 @CustomData_get_named_layer(ptr noundef %24, i32 noundef 5, ptr noundef %1) #22
  br label %38

38:                                               ; preds = %32, %36
  %39 = phi i32 [ %37, %36 ], [ -1, %32 ]
  %40 = icmp eq i32 %34, -1
  %41 = icmp eq i32 %35, -1
  br i1 %40, label %42, label %45

42:                                               ; preds = %38
  br i1 %41, label %43, label %50

43:                                               ; preds = %42
  %44 = icmp eq i32 %39, -1
  br i1 %44, label %60, label %50

45:                                               ; preds = %38
  %46 = select i1 %41, i32 %34, i32 %35
  %47 = icmp eq i32 %39, -1
  %48 = and i1 %29, %47
  %49 = select i1 %48, i32 %34, i32 %39
  br label %50

50:                                               ; preds = %45, %42, %43
  %51 = phi i32 [ %35, %42 ], [ %39, %43 ], [ %34, %45 ]
  %52 = phi i32 [ %35, %42 ], [ %39, %43 ], [ %46, %45 ]
  %53 = phi i32 [ %39, %42 ], [ %39, %43 ], [ %49, %45 ]
  %54 = add nsw i32 %51, %27
  %55 = add nsw i32 %52, %28
  %56 = icmp eq i32 %53, -1
  %57 = add nsw i32 %53, %33
  %58 = select i1 %56, i32 -1, i32 %57
  %59 = tail call zeroext i8 @BKE_mesh_uv_cdlayer_rename_index(ptr noundef nonnull %0, i32 noundef %54, i32 noundef %55, i32 noundef %58, ptr noundef %2, i8 noundef zeroext %26) #21
  br label %60

60:                                               ; preds = %43, %50
  %61 = phi i8 [ 1, %50 ], [ 0, %43 ]
  ret i8 %61
}

; Function Attrs: optsize
declare i32 @CustomData_get_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @CustomData_get_named_layer(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_boundbox_calc(ptr nocapture noundef %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !129
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !116
  %12 = tail call ptr %11(i64 noundef 104, ptr noundef nonnull @.str.5) #22
  store ptr %12, ptr %7, align 8, !tbaa !129
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi ptr [ %12, %10 ], [ %8, %3 ]
  %15 = icmp eq ptr %1, null
  %16 = select i1 %15, ptr %6, ptr %1
  %17 = icmp eq ptr %2, null
  %18 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0x46293E5940000000, ptr %18, align 8, !tbaa !131
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %4, align 8, !tbaa !131
  %19 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %19, align 8, !tbaa !131
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %5, align 8, !tbaa !131
  %20 = call zeroext i8 @BKE_mesh_minmax(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #21, !range !170
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store float -1.000000e+00, ptr %18, align 8, !tbaa !131
  store <2 x float> <float -1.000000e+00, float -1.000000e+00>, ptr %4, align 8, !tbaa !131
  store float 1.000000e+00, ptr %19, align 8, !tbaa !131
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %5, align 8, !tbaa !131
  br label %23

23:                                               ; preds = %22, %13
  call void @mid_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  br i1 %17, label %34, label %24

24:                                               ; preds = %23
  %25 = load <2 x float>, ptr %5, align 8, !tbaa !131
  %26 = load <2 x float>, ptr %4, align 8, !tbaa !131
  %27 = fsub <2 x float> %25, %26
  %28 = fmul <2 x float> %27, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %28, ptr %2, align 4, !tbaa !131
  %29 = load float, ptr %19, align 8, !tbaa !131
  %30 = load float, ptr %18, align 8, !tbaa !131
  %31 = fsub float %29, %30
  %32 = fmul float %31, 5.000000e-01
  %33 = getelementptr inbounds float, ptr %2, i64 2
  store float %32, ptr %33, align 4, !tbaa !131
  br label %34

34:                                               ; preds = %23, %24
  call void @BKE_boundbox_init_from_minmax(ptr noundef %14, ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %35 = getelementptr inbounds %struct.BoundBox, ptr %14, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !171
  %37 = and i32 %36, -3
  store i32 %37, ptr %35, align 4, !tbaa !171
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_mesh_minmax(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !103
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %14, %10 ], [ %9, %7 ]
  %12 = phi i32 [ %13, %10 ], [ %5, %7 ]
  %13 = add nsw i32 %12, -1
  tail call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef %11) #22
  %14 = getelementptr inbounds %struct.MVert, ptr %11, i64 1
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %16, label %10, !llvm.loop !173

16:                                               ; preds = %10
  %17 = load i32, ptr %4, align 8, !tbaa !34
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %16, %3
  %21 = phi i8 [ %19, %16 ], [ 0, %3 ]
  ret i8 %21
}

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_boundbox_init_from_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_texspace_calc(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  call void @BKE_mesh_boundbox_calc(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 37
  %5 = load i16, ptr %4, align 4, !tbaa !133
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %1, %23
  %9 = phi i64 [ %24, %23 ], [ 0, %1 ]
  %10 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !131
  %12 = fcmp oeq float %11, 0.000000e+00
  br i1 %12, label %21, label %13

13:                                               ; preds = %8
  %14 = fcmp ogt float %11, 0.000000e+00
  %15 = fcmp olt float %11, 0x3EE4F8B580000000
  %16 = and i1 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = fcmp olt float %11, 0.000000e+00
  %19 = fcmp ogt float %11, 0xBEE4F8B580000000
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %13, %8
  %22 = phi float [ 1.000000e+00, %8 ], [ 0x3EE4F8B580000000, %13 ], [ 0xBEE4F8B580000000, %17 ]
  store float %22, ptr %10, align 4, !tbaa !131
  br label %23

23:                                               ; preds = %21, %17
  %24 = add nuw nsw i64 %9, 1
  %25 = icmp eq i64 %24, 3
  br i1 %25, label %26, label %8, !llvm.loop !174

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 33
  call fastcc void @copy_v3_v3(ptr noundef nonnull %27, ptr noundef nonnull %2) #21
  %28 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 34
  call fastcc void @copy_v3_v3(ptr noundef nonnull %28, ptr noundef nonnull %3) #21
  %29 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 35
  call fastcc void @zero_v3(ptr noundef nonnull %29) #21
  br label %30

30:                                               ; preds = %26, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !175 {
  %3 = load float, ptr %1, align 4, !tbaa !131
  store float %3, ptr %0, align 4, !tbaa !131
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !131
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !131
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !131
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #7 !PGOFuncName !176 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !131
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !131
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mesh_boundbox_get(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 15
  %5 = load ptr, ptr %4, align 8, !tbaa !177
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !129
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.BoundBox, ptr %9, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !171
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11, %7
  tail call void @BKE_mesh_texspace_calc(ptr noundef nonnull %3) #21
  %17 = load ptr, ptr %8, align 8, !tbaa !129
  br label %18

18:                                               ; preds = %11, %16, %1
  %19 = phi ptr [ %5, %1 ], [ %17, %16 ], [ %9, %11 ]
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_texspace_get(ptr nocapture noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !129
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.BoundBox, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !171
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %4
  tail call void @BKE_mesh_texspace_calc(ptr noundef nonnull %0) #21
  br label %14

14:                                               ; preds = %13, %8
  %15 = icmp eq ptr %1, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 33
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %1, ptr noundef nonnull %17) #21
  br label %18

18:                                               ; preds = %16, %14
  %19 = icmp eq ptr %2, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 35
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %21) #21
  br label %22

22:                                               ; preds = %20, %18
  %23 = icmp eq ptr %3, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 34
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %25) #21
  br label %26

26:                                               ; preds = %24, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_texspace_copy_from_object(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  %7 = call i32 @BKE_object_obdata_texspace_get(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4) #22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %6, align 8, !tbaa !116
  %11 = load i16, ptr %10, align 2, !tbaa !178
  %12 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 37
  store i16 %11, ptr %12, align 4, !tbaa !133
  %13 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 33
  %14 = load ptr, ptr %3, align 8, !tbaa !116
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef %14) #21
  %15 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 34
  %16 = load ptr, ptr %5, align 8, !tbaa !116
  call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef %16) #21
  %17 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 35
  %18 = load ptr, ptr %4, align 8, !tbaa !116
  call fastcc void @copy_v3_v3(ptr noundef nonnull %17, ptr noundef %18) #21
  br label %19

19:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  ret void
}

; Function Attrs: optsize
declare i32 @BKE_object_obdata_texspace_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mesh_orco_verts_get(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !126
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr %3, ptr %5
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !116
  %9 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 26
  %10 = load i32, ptr %9, align 8, !tbaa !34
  %11 = sext i32 %10 to i64
  %12 = mul nsw i64 %11, 12
  %13 = tail call ptr %8(i64 noundef %12, ptr noundef nonnull @.str.6) #22
  %14 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 26
  %15 = load i32, ptr %14, align 8, !tbaa !34
  %16 = load i32, ptr %9, align 8, !tbaa !34
  %17 = tail call fastcc i32 @min_ii(i32 noundef %15, i32 noundef %16) #21
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 15
  %21 = load ptr, ptr %20, align 8, !tbaa !103
  %22 = zext nneg i32 %17 to i64
  br label %23

23:                                               ; preds = %19, %23
  %24 = phi i64 [ 0, %19 ], [ %27, %23 ]
  %25 = phi ptr [ %21, %19 ], [ %28, %23 ]
  %26 = getelementptr inbounds [3 x float], ptr %13, i64 %24
  tail call fastcc void @copy_v3_v3(ptr noundef %26, ptr noundef %25) #21
  %27 = add nuw nsw i64 %24, 1
  %28 = getelementptr inbounds %struct.MVert, ptr %25, i64 1
  %29 = icmp eq i64 %27, %22
  br i1 %29, label %30, label %23, !llvm.loop !179

30:                                               ; preds = %23, %1
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !180 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_orco_verts_transform(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !126
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr %0, ptr %8
  call void @BKE_mesh_texspace_get(ptr noundef %10, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %6) #21
  %11 = icmp eq i32 %3, 0
  %12 = icmp sgt i32 %2, 0
  br i1 %11, label %16, label %13

13:                                               ; preds = %4
  br i1 %12, label %14, label %42

14:                                               ; preds = %13
  %15 = zext nneg i32 %2 to i64
  br label %25

16:                                               ; preds = %4
  br i1 %12, label %17, label %42

17:                                               ; preds = %16
  %18 = load <2 x float>, ptr %5, align 8, !tbaa !131
  %19 = load <2 x float>, ptr %6, align 8, !tbaa !131
  %20 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %21 = load float, ptr %20, align 8, !tbaa !131
  %22 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %23 = load float, ptr %22, align 8, !tbaa !131
  %24 = zext nneg i32 %2 to i64
  br label %30

25:                                               ; preds = %14, %25
  %26 = phi i64 [ 0, %14 ], [ %28, %25 ]
  %27 = getelementptr inbounds [3 x float], ptr %1, i64 %26
  call fastcc void @madd_v3_v3v3v3(ptr noundef %27, ptr noundef nonnull %5, ptr noundef %27, ptr noundef nonnull %6) #21
  %28 = add nuw nsw i64 %26, 1
  %29 = icmp eq i64 %28, %15
  br i1 %29, label %42, label %25, !llvm.loop !181

30:                                               ; preds = %17, %30
  %31 = phi i64 [ 0, %17 ], [ %40, %30 ]
  %32 = getelementptr inbounds [3 x float], ptr %1, i64 %31
  %33 = load <2 x float>, ptr %32, align 4, !tbaa !131
  %34 = fsub <2 x float> %33, %18
  %35 = fdiv <2 x float> %34, %19
  store <2 x float> %35, ptr %32, align 4, !tbaa !131
  %36 = getelementptr inbounds float, ptr %32, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !131
  %38 = fsub float %37, %21
  %39 = fdiv float %38, %23
  store float %39, ptr %36, align 4, !tbaa !131
  %40 = add nuw nsw i64 %31, 1
  %41 = icmp eq i64 %40, %24
  br i1 %41, label %42, label %30, !llvm.loop !182

42:                                               ; preds = %25, %30, %13, %16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #6 !PGOFuncName !183 {
  %5 = load float, ptr %1, align 4, !tbaa !131
  %6 = load float, ptr %2, align 4, !tbaa !131
  %7 = load float, ptr %3, align 4, !tbaa !131
  %8 = tail call float @llvm.fmuladd.f32(float %6, float %7, float %5)
  store float %8, ptr %0, align 4, !tbaa !131
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !131
  %11 = getelementptr inbounds float, ptr %2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !131
  %13 = getelementptr inbounds float, ptr %3, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !131
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  %16 = getelementptr inbounds float, ptr %0, i64 1
  store float %15, ptr %16, align 4, !tbaa !131
  %17 = getelementptr inbounds float, ptr %1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !131
  %19 = getelementptr inbounds float, ptr %2, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !131
  %21 = getelementptr inbounds float, ptr %3, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !131
  %23 = tail call float @llvm.fmuladd.f32(float %20, float %22, float %18)
  %24 = getelementptr inbounds float, ptr %0, i64 2
  store float %23, ptr %24, align 4, !tbaa !131
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @test_index_face(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !184
  %7 = icmp ne i32 %6, 0
  %8 = icmp eq i32 %3, 4
  %9 = or i1 %8, %7
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !186
  %13 = icmp eq i32 %6, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  store i32 0, ptr %11, align 4, !tbaa !186
  %15 = add nsw i32 %3, -1
  br label %16

16:                                               ; preds = %4, %14, %10
  %17 = phi i32 [ %15, %14 ], [ %3, %10 ], [ %3, %4 ]
  %18 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !187
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !186
  %24 = icmp ne i32 %23, 0
  %25 = icmp eq i32 %6, 0
  %26 = and i1 %25, %24
  br i1 %26, label %32, label %36

27:                                               ; preds = %16
  %28 = icmp eq i32 %19, %6
  br i1 %28, label %29, label %36

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !186
  br label %32

32:                                               ; preds = %29, %21
  %33 = phi i32 [ %31, %29 ], [ %23, %21 ]
  %34 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 3
  store i32 %33, ptr %5, align 4, !tbaa !184
  store i32 0, ptr %34, align 4, !tbaa !186
  %35 = add nsw i32 %17, -1
  br label %36

36:                                               ; preds = %32, %27, %21
  %37 = phi i32 [ %33, %32 ], [ %6, %27 ], [ %6, %21 ]
  %38 = phi i32 [ %35, %32 ], [ %17, %27 ], [ %17, %21 ]
  %39 = load i32, ptr %0, align 4, !tbaa !188
  %40 = icmp eq i32 %39, %19
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  store i32 %37, ptr %18, align 4, !tbaa !187
  %42 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !186
  store i32 %43, ptr %5, align 4, !tbaa !184
  store i32 0, ptr %42, align 4, !tbaa !186
  %44 = add nsw i32 %38, -1
  br label %45

45:                                               ; preds = %41, %36
  %46 = phi i32 [ %43, %41 ], [ %37, %36 ]
  %47 = phi i32 [ %37, %41 ], [ %19, %36 ]
  %48 = phi i32 [ %44, %41 ], [ %38, %36 ]
  switch i32 %48, label %81 [
    i32 3, label %49
    i32 4, label %55
  ]

49:                                               ; preds = %45
  %50 = icmp eq i32 %39, %47
  br i1 %50, label %81, label %51

51:                                               ; preds = %49
  %52 = icmp eq i32 %47, %46
  %53 = icmp eq i32 %46, %39
  %54 = or i1 %52, %53
  br i1 %54, label %81, label %69

55:                                               ; preds = %45
  %56 = icmp eq i32 %39, %47
  %57 = icmp eq i32 %47, %46
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %81, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !186
  %62 = icmp eq i32 %46, %61
  %63 = icmp eq i32 %61, %39
  %64 = or i1 %62, %63
  %65 = icmp eq i32 %39, %46
  %66 = or i1 %65, %64
  %67 = icmp eq i32 %47, %61
  %68 = or i1 %67, %66
  br i1 %68, label %81, label %73

69:                                               ; preds = %51
  %70 = icmp eq i32 %46, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %69
  store i32 %47, ptr %0, align 4, !tbaa !188
  store i32 0, ptr %18, align 4, !tbaa !187
  store i32 %39, ptr %5, align 4, !tbaa !184
  %72 = icmp eq ptr %1, null
  br i1 %72, label %81, label %79

73:                                               ; preds = %59
  %74 = icmp eq i32 %46, 0
  %75 = icmp eq i32 %61, 0
  %76 = or i1 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  store i32 %46, ptr %0, align 4, !tbaa !188
  store i32 %39, ptr %5, align 4, !tbaa !184
  store i32 %61, ptr %18, align 4, !tbaa !187
  store i32 %47, ptr %60, align 4, !tbaa !186
  %78 = icmp eq ptr %1, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %77, %71
  %80 = phi ptr [ @test_index_face.corner_indices, %71 ], [ @test_index_face.corner_indices.7, %77 ]
  tail call void @CustomData_swap(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %80) #22
  br label %81

81:                                               ; preds = %79, %73, %45, %71, %69, %77, %55, %59, %49, %51
  %82 = phi i32 [ 0, %51 ], [ 0, %49 ], [ 0, %59 ], [ 0, %55 ], [ 4, %77 ], [ 3, %69 ], [ 3, %71 ], [ %48, %45 ], [ 4, %73 ], [ %48, %79 ]
  ret i32 %82
}

; Function Attrs: optsize
declare void @CustomData_swap(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_mesh_from_object(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !168
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !159
  br label %10

10:                                               ; preds = %3, %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ], [ null, %3 ]
  ret ptr %11
}

; Function Attrs: optsize
declare void @multires_force_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @test_object_materials(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @test_object_modifiers(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_from_metaball(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !189
  %4 = icmp eq ptr %3, null
  br i1 %4, label %93, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.DispList, ptr %3, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !190
  %8 = icmp eq i16 %7, 5
  br i1 %8, label %9, label %93

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 21
  %11 = getelementptr inbounds %struct.DispList, ptr %3, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !192
  %13 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %10, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %12) #22
  %14 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 25
  %15 = getelementptr inbounds %struct.DispList, ptr %3, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !193
  %17 = shl nsw i32 %16, 2
  %18 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %14, i32 noundef 26, i32 noundef 1, ptr noundef null, i32 noundef %17) #22
  %19 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 24
  %20 = load i32, ptr %15, align 4, !tbaa !193
  %21 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %19, i32 noundef 25, i32 noundef 1, ptr noundef null, i32 noundef %20) #22
  %22 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 15
  store ptr %13, ptr %22, align 8, !tbaa !103
  %23 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 9
  store ptr %18, ptr %23, align 8, !tbaa !66
  %24 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 7
  store ptr %21, ptr %24, align 8, !tbaa !109
  %25 = load i32, ptr %11, align 8, !tbaa !192
  %26 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 26
  store i32 %25, ptr %26, align 8, !tbaa !34
  %27 = load i32, ptr %15, align 4, !tbaa !193
  %28 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 30
  store i32 %27, ptr %28, align 8, !tbaa !45
  %29 = icmp eq i32 %25, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %9
  %31 = getelementptr inbounds %struct.DispList, ptr %3, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !194
  %33 = getelementptr inbounds %struct.DispList, ptr %3, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !195
  br label %35

35:                                               ; preds = %30, %35
  %36 = phi ptr [ %42, %35 ], [ %13, %30 ]
  %37 = phi i32 [ %40, %35 ], [ %25, %30 ]
  %38 = phi ptr [ %44, %35 ], [ %32, %30 ]
  %39 = phi ptr [ %43, %35 ], [ %34, %30 ]
  %40 = add nsw i32 %37, -1
  tail call fastcc void @copy_v3_v3(ptr noundef %36, ptr noundef %38) #21
  %41 = getelementptr inbounds %struct.MVert, ptr %36, i64 0, i32 1
  tail call fastcc void @normal_float_to_short_v3(ptr noundef nonnull %41, ptr noundef %39) #21
  %42 = getelementptr inbounds %struct.MVert, ptr %36, i64 1
  %43 = getelementptr inbounds float, ptr %39, i64 3
  %44 = getelementptr inbounds float, ptr %38, i64 3
  %45 = icmp eq i32 %40, 0
  br i1 %45, label %46, label %35, !llvm.loop !196

46:                                               ; preds = %35
  %47 = load i32, ptr %15, align 4, !tbaa !193
  br label %48

48:                                               ; preds = %46, %9
  %49 = phi i32 [ %47, %46 ], [ %27, %9 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %92, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.DispList, ptr %3, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !197
  %54 = ptrtoint ptr %18 to i64
  %55 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 31
  %56 = load i32, ptr %55, align 4, !tbaa !46
  br label %57

57:                                               ; preds = %51, %79
  %58 = phi i32 [ %56, %51 ], [ %89, %79 ]
  %59 = phi i32 [ %49, %51 ], [ %63, %79 ]
  %60 = phi ptr [ %53, %51 ], [ %90, %79 ]
  %61 = phi ptr [ %21, %51 ], [ %86, %79 ]
  %62 = phi ptr [ %18, %51 ], [ %88, %79 ]
  %63 = add nsw i32 %59, -1
  %64 = getelementptr inbounds i32, ptr %60, i64 2
  %65 = load i32, ptr %64, align 4, !tbaa !153
  %66 = getelementptr inbounds i32, ptr %60, i64 3
  %67 = load i32, ptr %66, align 4, !tbaa !153
  %68 = icmp eq i32 %65, %67
  %69 = select i1 %68, i32 3, i32 4
  %70 = load i32, ptr %60, align 4, !tbaa !153
  store i32 %70, ptr %62, align 4, !tbaa !68
  %71 = getelementptr inbounds i32, ptr %60, i64 1
  %72 = load i32, ptr %71, align 4, !tbaa !153
  %73 = getelementptr inbounds %struct.MLoop, ptr %62, i64 1
  store i32 %72, ptr %73, align 4, !tbaa !68
  %74 = load i32, ptr %64, align 4, !tbaa !153
  %75 = getelementptr inbounds %struct.MLoop, ptr %62, i64 2
  store i32 %74, ptr %75, align 4, !tbaa !68
  br i1 %68, label %79, label %76

76:                                               ; preds = %57
  %77 = load i32, ptr %66, align 4, !tbaa !153
  %78 = getelementptr inbounds %struct.MLoop, ptr %62, i64 3
  store i32 %77, ptr %78, align 4, !tbaa !68
  br label %79

79:                                               ; preds = %76, %57
  %80 = getelementptr inbounds %struct.MPoly, ptr %61, i64 0, i32 1
  store i32 %69, ptr %80, align 4, !tbaa !64
  %81 = ptrtoint ptr %62 to i64
  %82 = sub i64 %81, %54
  %83 = lshr exact i64 %82, 3
  %84 = trunc i64 %83 to i32
  store i32 %84, ptr %61, align 4, !tbaa !67
  %85 = getelementptr inbounds %struct.MPoly, ptr %61, i64 0, i32 3
  store i8 1, ptr %85, align 2, !tbaa !198
  %86 = getelementptr inbounds %struct.MPoly, ptr %61, i64 1
  %87 = zext nneg i32 %69 to i64
  %88 = getelementptr inbounds %struct.MLoop, ptr %62, i64 %87
  %89 = add nsw i32 %58, %69
  store i32 %89, ptr %55, align 4, !tbaa !46
  %90 = getelementptr inbounds i32, ptr %60, i64 4
  %91 = icmp eq i32 %63, 0
  br i1 %91, label %92, label %57, !llvm.loop !199

92:                                               ; preds = %79, %48
  tail call void @BKE_mesh_update_customdata_pointers(ptr noundef %1, i8 noundef zeroext 1) #21
  tail call void @BKE_mesh_calc_normals(ptr noundef %1) #22
  tail call void @BKE_mesh_calc_edges(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 0) #22
  br label %93

93:                                               ; preds = %5, %92, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_float_to_short_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !200 {
  %3 = load <2 x float>, ptr %1, align 4, !tbaa !131
  %4 = fmul <2 x float> %3, <float 3.276700e+04, float 3.276700e+04>
  %5 = fptosi <2 x float> %4 to <2 x i16>
  store <2 x i16> %5, ptr %0, align 2, !tbaa !178
  %6 = getelementptr inbounds float, ptr %1, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !131
  %8 = fmul float %7, 3.276700e+04
  %9 = fptosi float %8 to i16
  %10 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %9, ptr %10, align 2, !tbaa !178
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_calc_normals(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_mesh_calc_edges(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @BKE_mesh_nurbs_to_mdata(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef %5, ptr nocapture noundef %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8) local_unnamed_addr #0 {
  %10 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %12 = load ptr, ptr %11, align 8, !tbaa !201
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !202
  br label %15

15:                                               ; preds = %14, %9
  %16 = call i32 @BKE_mesh_nurbs_displist_to_mdata(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef null, ptr noundef %7, ptr noundef %8) #21, !range !203
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #23
  ret i32 %16
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @BKE_mesh_nurbs_displist_to_mdata(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef %6, ptr nocapture noundef %7, ptr noundef writeonly %8, ptr nocapture noundef writeonly %9, ptr nocapture noundef writeonly %10) local_unnamed_addr #0 {
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #23
  %15 = getelementptr inbounds %struct.Curve, ptr %14, i64 0, i32 23
  %16 = load i32, ptr %15, align 4, !tbaa !204
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %16, 6
  %20 = icmp ne i32 %19, 0
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %24 = load i16, ptr %23, align 8, !tbaa !168
  %25 = icmp eq i16 %24, 3
  br label %26

26:                                               ; preds = %22, %11
  %27 = phi i1 [ true, %11 ], [ %25, %22 ]
  %28 = load ptr, ptr %1, align 8, !tbaa !116
  %29 = icmp eq ptr %28, null
  br i1 %29, label %483, label %30

30:                                               ; preds = %26, %87
  %31 = phi ptr [ %92, %87 ], [ %28, %26 ]
  %32 = phi i32 [ %91, %87 ], [ 0, %26 ]
  %33 = phi i32 [ %90, %87 ], [ 0, %26 ]
  %34 = phi i32 [ %89, %87 ], [ 0, %26 ]
  %35 = phi i32 [ %88, %87 ], [ 0, %26 ]
  %36 = getelementptr inbounds %struct.DispList, ptr %31, i64 0, i32 2
  %37 = load i16, ptr %36, align 8, !tbaa !190
  switch i16 %37, label %87 [
    i16 1, label %38
    i16 0, label %48
    i16 2, label %57
    i16 4, label %78
  ]

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.DispList, ptr %31, i64 0, i32 4
  %40 = load i32, ptr %39, align 4, !tbaa !193
  %41 = getelementptr inbounds %struct.DispList, ptr %31, i64 0, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !192
  %43 = mul nsw i32 %42, %40
  %44 = add nsw i32 %43, %34
  %45 = add nsw i32 %42, -1
  %46 = mul nsw i32 %45, %40
  %47 = add nsw i32 %46, %35
  br label %87

48:                                               ; preds = %30
  br i1 %27, label %49, label %87

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.DispList, ptr %31, i64 0, i32 4
  %51 = load i32, ptr %50, align 4, !tbaa !193
  %52 = getelementptr inbounds %struct.DispList, ptr %31, i64 0, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !192
  %54 = mul nsw i32 %53, %51
  %55 = add nsw i32 %54, %34
  %56 = add nsw i32 %35, %54
  br label %87

57:                                               ; preds = %30
  %58 = getelementptr inbounds %struct.DispList, ptr %31, i64 0, i32 4
  %59 = load i32, ptr %58, align 4, !tbaa !193
  %60 = getelementptr inbounds %struct.DispList, ptr %31, i64 0, i32 5
  %61 = load i32, ptr %60, align 8, !tbaa !192
  %62 = mul nsw i32 %61, %59
  %63 = add nsw i32 %62, %34
  %64 = add nsw i32 %59, -1
  %65 = getelementptr inbounds %struct.DispList, ptr %31, i64 0, i32 3
  %66 = load i16, ptr %65, align 2, !tbaa !207
  %67 = zext i16 %66 to i32
  %68 = lshr i32 %67, 1
  %69 = and i32 %68, 1
  %70 = add nsw i32 %64, %69
  %71 = add nsw i32 %61, -1
  %72 = and i32 %67, 1
  %73 = add nsw i32 %71, %72
  %74 = mul nsw i32 %70, %73
  %75 = add nsw i32 %74, %32
  %76 = shl nsw i32 %74, 2
  %77 = add nsw i32 %76, %33
  br label %87

78:                                               ; preds = %30
  %79 = getelementptr inbounds %struct.DispList, ptr %31, i64 0, i32 5
  %80 = load i32, ptr %79, align 8, !tbaa !192
  %81 = add nsw i32 %80, %34
  %82 = getelementptr inbounds %struct.DispList, ptr %31, i64 0, i32 4
  %83 = load i32, ptr %82, align 4, !tbaa !193
  %84 = add nsw i32 %83, %32
  %85 = mul nsw i32 %83, 3
  %86 = add nsw i32 %85, %33
  br label %87

87:                                               ; preds = %30, %49, %48, %78, %57, %38
  %88 = phi i32 [ %47, %38 ], [ %56, %49 ], [ %35, %48 ], [ %35, %57 ], [ %35, %78 ], [ %35, %30 ]
  %89 = phi i32 [ %44, %38 ], [ %55, %49 ], [ %34, %48 ], [ %63, %57 ], [ %81, %78 ], [ %34, %30 ]
  %90 = phi i32 [ %33, %38 ], [ %33, %49 ], [ %33, %48 ], [ %77, %57 ], [ %86, %78 ], [ %33, %30 ]
  %91 = phi i32 [ %32, %38 ], [ %32, %49 ], [ %32, %48 ], [ %75, %57 ], [ %84, %78 ], [ %32, %30 ]
  %92 = load ptr, ptr %31, align 8, !tbaa !116
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %30, !llvm.loop !208

94:                                               ; preds = %87
  store i32 %88, ptr %12, align 4, !tbaa !153
  %95 = icmp eq i32 %89, 0
  br i1 %95, label %483, label %96

96:                                               ; preds = %94
  %97 = load ptr, ptr @MEM_callocN, align 8, !tbaa !116
  %98 = sext i32 %89 to i64
  %99 = mul nsw i64 %98, 20
  %100 = tail call ptr %97(i64 noundef %99, ptr noundef nonnull @.str.8) #22
  store ptr %100, ptr %2, align 8, !tbaa !116
  %101 = load ptr, ptr @MEM_callocN, align 8, !tbaa !116
  %102 = sext i32 %88 to i64
  %103 = mul nsw i64 %102, 12
  %104 = tail call ptr %101(i64 noundef %103, ptr noundef nonnull @.str.9) #22
  store ptr %104, ptr %4, align 8, !tbaa !116
  %105 = load ptr, ptr @MEM_callocN, align 8, !tbaa !116
  %106 = sext i32 %91 to i64
  %107 = shl nsw i64 %106, 5
  %108 = tail call ptr %105(i64 noundef %107, ptr noundef nonnull @.str.10) #22
  store ptr %108, ptr %6, align 8, !tbaa !116
  %109 = load ptr, ptr @MEM_callocN, align 8, !tbaa !116
  %110 = mul nsw i64 %106, 12
  %111 = tail call ptr %109(i64 noundef %110, ptr noundef nonnull @.str.10) #22
  store ptr %111, ptr %7, align 8, !tbaa !116
  %112 = icmp eq ptr %8, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %96
  %114 = load ptr, ptr @MEM_callocN, align 8, !tbaa !116
  %115 = mul nsw i64 %106, 48
  %116 = tail call ptr %114(i64 noundef %115, ptr noundef nonnull @.str.11) #22
  store ptr %116, ptr %8, align 8, !tbaa !116
  br label %117

117:                                              ; preds = %113, %96
  %118 = phi ptr [ %116, %113 ], [ null, %96 ]
  %119 = load ptr, ptr %1, align 8, !tbaa !116
  %120 = icmp eq ptr %119, null
  br i1 %120, label %476, label %121

121:                                              ; preds = %117, %467
  %122 = phi ptr [ %474, %467 ], [ %119, %117 ]
  %123 = phi ptr [ %473, %467 ], [ %100, %117 ]
  %124 = phi ptr [ %472, %467 ], [ %111, %117 ]
  %125 = phi ptr [ %471, %467 ], [ %108, %117 ]
  %126 = phi i32 [ %470, %467 ], [ 0, %117 ]
  %127 = phi ptr [ %469, %467 ], [ %104, %117 ]
  %128 = phi ptr [ %468, %467 ], [ %118, %117 ]
  %129 = getelementptr inbounds %struct.DispList, ptr %122, i64 0, i32 7
  %130 = load i16, ptr %129, align 2, !tbaa !209
  %131 = and i16 %130, 1
  %132 = icmp eq i16 %131, 0
  %133 = getelementptr inbounds %struct.DispList, ptr %122, i64 0, i32 2
  %134 = load i16, ptr %133, align 8, !tbaa !190
  switch i16 %134, label %467 [
    i16 1, label %135
    i16 0, label %184
    i16 4, label %237
    i16 2, label %318
  ]

135:                                              ; preds = %121
  %136 = getelementptr inbounds %struct.DispList, ptr %122, i64 0, i32 4
  %137 = load i32, ptr %136, align 4, !tbaa !193
  %138 = getelementptr inbounds %struct.DispList, ptr %122, i64 0, i32 5
  %139 = load i32, ptr %138, align 8, !tbaa !192
  %140 = mul nsw i32 %139, %137
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.DispList, ptr %122, i64 0, i32 8
  %144 = load ptr, ptr %143, align 8, !tbaa !194
  br label %156

145:                                              ; preds = %156
  %146 = add i32 %126, %140
  %147 = load i32, ptr %136, align 4, !tbaa !193
  br label %148

148:                                              ; preds = %145, %135
  %149 = phi i32 [ %137, %135 ], [ %147, %145 ]
  %150 = phi i32 [ %126, %135 ], [ %146, %145 ]
  %151 = phi ptr [ %123, %135 ], [ %162, %145 ]
  %152 = icmp sgt i32 %149, 0
  br i1 %152, label %153, label %467

153:                                              ; preds = %148
  %154 = load i32, ptr %138, align 8, !tbaa !192
  %155 = icmp sgt i32 %154, 1
  br label %164

156:                                              ; preds = %142, %156
  %157 = phi ptr [ %162, %156 ], [ %123, %142 ]
  %158 = phi i32 [ %160, %156 ], [ %140, %142 ]
  %159 = phi ptr [ %161, %156 ], [ %144, %142 ]
  %160 = add nsw i32 %158, -1
  tail call fastcc void @copy_v3_v3(ptr noundef %157, ptr noundef %159) #21
  %161 = getelementptr inbounds float, ptr %159, i64 3
  %162 = getelementptr inbounds %struct.MVert, ptr %157, i64 1
  %163 = icmp eq i32 %160, 0
  br i1 %163, label %145, label %156, !llvm.loop !210

164:                                              ; preds = %153, %180
  %165 = phi i32 [ 0, %153 ], [ %182, %180 ]
  %166 = phi ptr [ %127, %153 ], [ %181, %180 ]
  br i1 %155, label %167, label %180

167:                                              ; preds = %164
  %168 = mul nsw i32 %154, %165
  %169 = add nsw i32 %168, %126
  br label %170

170:                                              ; preds = %167, %170
  %171 = phi i32 [ 1, %167 ], [ %178, %170 ]
  %172 = phi ptr [ %166, %167 ], [ %177, %170 ]
  %173 = add nsw i32 %169, %171
  %174 = add nsw i32 %173, -1
  store i32 %174, ptr %172, align 4, !tbaa !59
  %175 = getelementptr inbounds %struct.MEdge, ptr %172, i64 0, i32 1
  store i32 %173, ptr %175, align 4, !tbaa !61
  %176 = getelementptr inbounds %struct.MEdge, ptr %172, i64 0, i32 4
  store i16 162, ptr %176, align 2, !tbaa !211
  %177 = getelementptr inbounds %struct.MEdge, ptr %172, i64 1
  %178 = add nuw nsw i32 %171, 1
  %179 = icmp eq i32 %178, %154
  br i1 %179, label %180, label %170, !llvm.loop !212

180:                                              ; preds = %170, %164
  %181 = phi ptr [ %166, %164 ], [ %177, %170 ]
  %182 = add nuw nsw i32 %165, 1
  %183 = icmp eq i32 %182, %149
  br i1 %183, label %467, label %164, !llvm.loop !213

184:                                              ; preds = %121
  br i1 %27, label %185, label %467

185:                                              ; preds = %184
  %186 = getelementptr inbounds %struct.DispList, ptr %122, i64 0, i32 4
  %187 = load i32, ptr %186, align 4, !tbaa !193
  %188 = getelementptr inbounds %struct.DispList, ptr %122, i64 0, i32 5
  %189 = load i32, ptr %188, align 8, !tbaa !192
  %190 = mul nsw i32 %189, %187
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %198, label %192

192:                                              ; preds = %185
  %193 = getelementptr inbounds %struct.DispList, ptr %122, i64 0, i32 8
  %194 = load ptr, ptr %193, align 8, !tbaa !194
  br label %207

195:                                              ; preds = %207
  %196 = add i32 %126, %190
  %197 = load i32, ptr %186, align 4, !tbaa !193
  br label %198

198:                                              ; preds = %195, %185
  %199 = phi i32 [ %187, %185 ], [ %197, %195 ]
  %200 = phi i32 [ %126, %185 ], [ %196, %195 ]
  %201 = phi ptr [ %123, %185 ], [ %213, %195 ]
  %202 = icmp sgt i32 %199, 0
  br i1 %202, label %203, label %467

203:                                              ; preds = %198
  %204 = load i32, ptr %188, align 8, !tbaa !192
  %205 = icmp sgt i32 %204, 0
  %206 = add nsw i32 %204, -1
  br label %215

207:                                              ; preds = %192, %207
  %208 = phi ptr [ %213, %207 ], [ %123, %192 ]
  %209 = phi i32 [ %211, %207 ], [ %190, %192 ]
  %210 = phi ptr [ %212, %207 ], [ %194, %192 ]
  %211 = add nsw i32 %209, -1
  tail call fastcc void @copy_v3_v3(ptr noundef %208, ptr noundef %210) #21
  %212 = getelementptr inbounds float, ptr %210, i64 3
  %213 = getelementptr inbounds %struct.MVert, ptr %208, i64 1
  %214 = icmp eq i32 %211, 0
  br i1 %214, label %195, label %207, !llvm.loop !214

215:                                              ; preds = %203, %233
  %216 = phi i32 [ 0, %203 ], [ %235, %233 ]
  %217 = phi ptr [ %127, %203 ], [ %234, %233 ]
  br i1 %205, label %218, label %233

218:                                              ; preds = %215
  %219 = mul nsw i32 %204, %216
  %220 = add nsw i32 %219, %126
  br label %221

221:                                              ; preds = %218, %221
  %222 = phi i32 [ 0, %218 ], [ %231, %221 ]
  %223 = phi ptr [ %217, %218 ], [ %230, %221 ]
  %224 = add nsw i32 %222, %220
  store i32 %224, ptr %223, align 4, !tbaa !59
  %225 = icmp eq i32 %222, %206
  %226 = add nsw i32 %224, 1
  %227 = select i1 %225, i32 %220, i32 %226
  %228 = getelementptr inbounds %struct.MEdge, ptr %223, i64 0, i32 1
  store i32 %227, ptr %228, align 4
  %229 = getelementptr inbounds %struct.MEdge, ptr %223, i64 0, i32 4
  store i16 162, ptr %229, align 2, !tbaa !211
  %230 = getelementptr inbounds %struct.MEdge, ptr %223, i64 1
  %231 = add nuw nsw i32 %222, 1
  %232 = icmp eq i32 %231, %204
  br i1 %232, label %233, label %221, !llvm.loop !215

233:                                              ; preds = %221, %215
  %234 = phi ptr [ %217, %215 ], [ %230, %221 ]
  %235 = add nuw nsw i32 %216, 1
  %236 = icmp eq i32 %235, %199
  br i1 %236, label %467, label %215, !llvm.loop !216

237:                                              ; preds = %121
  %238 = getelementptr inbounds %struct.DispList, ptr %122, i64 0, i32 5
  %239 = load i32, ptr %238, align 8, !tbaa !192
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %254, label %241

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.DispList, ptr %122, i64 0, i32 8
  %243 = load ptr, ptr %242, align 8, !tbaa !194
  br label %244

244:                                              ; preds = %241, %244
  %245 = phi ptr [ %250, %244 ], [ %123, %241 ]
  %246 = phi i32 [ %248, %244 ], [ %239, %241 ]
  %247 = phi ptr [ %249, %244 ], [ %243, %241 ]
  %248 = add nsw i32 %246, -1
  tail call fastcc void @copy_v3_v3(ptr noundef %245, ptr noundef %247) #21
  %249 = getelementptr inbounds float, ptr %247, i64 3
  %250 = getelementptr inbounds %struct.MVert, ptr %245, i64 1
  %251 = icmp eq i32 %248, 0
  br i1 %251, label %252, label %244, !llvm.loop !217

252:                                              ; preds = %244
  %253 = add i32 %126, %239
  br label %254

254:                                              ; preds = %252, %237
  %255 = phi i32 [ %126, %237 ], [ %253, %252 ]
  %256 = phi ptr [ %123, %237 ], [ %250, %252 ]
  %257 = getelementptr inbounds %struct.DispList, ptr %122, i64 0, i32 4
  %258 = load i32, ptr %257, align 4, !tbaa !193
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %467, label %260

260:                                              ; preds = %254
  %261 = getelementptr inbounds %struct.DispList, ptr %122, i64 0, i32 10
  %262 = load ptr, ptr %261, align 8, !tbaa !197
  %263 = load ptr, ptr %6, align 8, !tbaa !116
  %264 = ptrtoint ptr %263 to i64
  %265 = getelementptr inbounds %struct.DispList, ptr %122, i64 0, i32 6
  %266 = load i16, ptr %265, align 4, !tbaa !218
  br label %267

267:                                              ; preds = %260, %313
  %268 = phi i32 [ %258, %260 ], [ %273, %313 ]
  %269 = phi ptr [ %124, %260 ], [ %314, %313 ]
  %270 = phi ptr [ %125, %260 ], [ %315, %313 ]
  %271 = phi ptr [ %262, %260 ], [ %316, %313 ]
  %272 = phi ptr [ %128, %260 ], [ %308, %313 ]
  %273 = add nsw i32 %268, -1
  %274 = load i32, ptr %271, align 4, !tbaa !153
  %275 = add nsw i32 %274, %126
  store i32 %275, ptr %270, align 4, !tbaa !68
  %276 = getelementptr inbounds i32, ptr %271, i64 2
  %277 = load i32, ptr %276, align 4, !tbaa !153
  %278 = add nsw i32 %277, %126
  %279 = getelementptr inbounds %struct.MLoop, ptr %270, i64 1
  store i32 %278, ptr %279, align 4, !tbaa !68
  %280 = getelementptr inbounds i32, ptr %271, i64 1
  %281 = load i32, ptr %280, align 4, !tbaa !153
  %282 = add nsw i32 %281, %126
  %283 = getelementptr inbounds %struct.MLoop, ptr %270, i64 2
  store i32 %282, ptr %283, align 4, !tbaa !68
  %284 = ptrtoint ptr %270 to i64
  %285 = sub i64 %284, %264
  %286 = lshr exact i64 %285, 3
  %287 = trunc i64 %286 to i32
  store i32 %287, ptr %269, align 4, !tbaa !67
  %288 = getelementptr inbounds %struct.MPoly, ptr %269, i64 0, i32 1
  store i32 3, ptr %288, align 4, !tbaa !64
  %289 = getelementptr inbounds %struct.MPoly, ptr %269, i64 0, i32 2
  store i16 %266, ptr %289, align 4, !tbaa !219
  %290 = icmp eq ptr %272, null
  br i1 %290, label %307, label %291

291:                                              ; preds = %267
  %292 = load i32, ptr %238, align 8, !tbaa !192
  %293 = add nsw i32 %292, -1
  %294 = sitofp i32 %293 to float
  br label %295

295:                                              ; preds = %291, %295
  %296 = phi i64 [ 0, %291 ], [ %304, %295 ]
  %297 = phi ptr [ %272, %291 ], [ %305, %295 ]
  %298 = getelementptr inbounds %struct.MLoop, ptr %270, i64 %296
  %299 = load i32, ptr %298, align 4, !tbaa !68
  %300 = sub i32 %299, %126
  %301 = uitofp i32 %300 to float
  %302 = fdiv float %301, %294
  store float %302, ptr %297, align 4, !tbaa !131
  %303 = getelementptr inbounds [2 x float], ptr %297, i64 0, i64 1
  store float 0.000000e+00, ptr %303, align 4, !tbaa !131
  %304 = add nuw nsw i64 %296, 1
  %305 = getelementptr inbounds %struct.MLoopUV, ptr %297, i64 1
  %306 = icmp eq i64 %304, 3
  br i1 %306, label %307, label %295, !llvm.loop !220

307:                                              ; preds = %295, %267
  %308 = phi ptr [ null, %267 ], [ %305, %295 ]
  br i1 %132, label %313, label %309

309:                                              ; preds = %307
  %310 = getelementptr inbounds %struct.MPoly, ptr %269, i64 0, i32 3
  %311 = load i8, ptr %310, align 2, !tbaa !198
  %312 = or i8 %311, 1
  store i8 %312, ptr %310, align 2, !tbaa !198
  br label %313

313:                                              ; preds = %309, %307
  %314 = getelementptr inbounds %struct.MPoly, ptr %269, i64 1
  %315 = getelementptr inbounds %struct.MLoop, ptr %270, i64 3
  %316 = getelementptr inbounds i32, ptr %271, i64 3
  %317 = icmp eq i32 %273, 0
  br i1 %317, label %467, label %267, !llvm.loop !221

318:                                              ; preds = %121
  %319 = getelementptr inbounds %struct.DispList, ptr %122, i64 0, i32 4
  %320 = load i32, ptr %319, align 4, !tbaa !193
  %321 = getelementptr inbounds %struct.DispList, ptr %122, i64 0, i32 5
  %322 = load i32, ptr %321, align 8, !tbaa !192
  %323 = mul nsw i32 %322, %320
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %331, label %325

325:                                              ; preds = %318
  %326 = getelementptr inbounds %struct.DispList, ptr %122, i64 0, i32 8
  %327 = load ptr, ptr %326, align 8, !tbaa !194
  br label %353

328:                                              ; preds = %353
  %329 = add i32 %126, %323
  %330 = load i32, ptr %319, align 4, !tbaa !193
  br label %331

331:                                              ; preds = %328, %318
  %332 = phi i32 [ %320, %318 ], [ %330, %328 ]
  %333 = phi i32 [ %126, %318 ], [ %329, %328 ]
  %334 = phi ptr [ %123, %318 ], [ %359, %328 ]
  %335 = icmp sgt i32 %332, 0
  br i1 %335, label %336, label %467

336:                                              ; preds = %331
  %337 = getelementptr inbounds %struct.DispList, ptr %122, i64 0, i32 3
  %338 = load i16, ptr %337, align 2, !tbaa !207
  %339 = and i16 %338, 2
  %340 = icmp eq i16 %339, 0
  %341 = add nsw i32 %332, -1
  %342 = and i16 %338, 1
  %343 = icmp eq i16 %342, 0
  %344 = getelementptr inbounds %struct.DispList, ptr %122, i64 0, i32 6
  %345 = zext i16 %338 to i32
  %346 = and i32 %345, 1
  %347 = and i32 %345, 2
  %348 = icmp eq i32 %347, 0
  %349 = select i1 %348, i32 %341, i32 %332
  %350 = add nsw i32 %346, -1
  %351 = sitofp i32 %349 to float
  %352 = insertelement <2 x float> poison, float %351, i64 0
  br label %361

353:                                              ; preds = %325, %353
  %354 = phi ptr [ %359, %353 ], [ %123, %325 ]
  %355 = phi i32 [ %357, %353 ], [ %323, %325 ]
  %356 = phi ptr [ %358, %353 ], [ %327, %325 ]
  %357 = add nsw i32 %355, -1
  tail call fastcc void @copy_v3_v3(ptr noundef %354, ptr noundef %356) #21
  %358 = getelementptr inbounds float, ptr %356, i64 3
  %359 = getelementptr inbounds %struct.MVert, ptr %354, i64 1
  %360 = icmp eq i32 %357, 0
  br i1 %360, label %328, label %353, !llvm.loop !222

361:                                              ; preds = %336, %461
  %362 = phi ptr [ %124, %336 ], [ %464, %461 ]
  %363 = phi ptr [ %125, %336 ], [ %463, %461 ]
  %364 = phi i32 [ 0, %336 ], [ %465, %461 ]
  %365 = phi ptr [ %128, %336 ], [ %462, %461 ]
  %366 = icmp eq i32 %364, %341
  %367 = select i1 %340, i1 %366, i1 false
  br i1 %367, label %467, label %368

368:                                              ; preds = %361
  %369 = load i32, ptr %321, align 8, !tbaa !192
  %370 = mul nsw i32 %369, %364
  %371 = add nsw i32 %370, %126
  br i1 %343, label %375, label %372

372:                                              ; preds = %368
  %373 = add nsw i32 %371, %369
  %374 = add nsw i32 %373, -1
  br label %378

375:                                              ; preds = %368
  %376 = add nsw i32 %371, 1
  %377 = add nsw i32 %376, %369
  br label %378

378:                                              ; preds = %375, %372
  %379 = phi i32 [ 0, %372 ], [ 1, %375 ]
  %380 = phi i32 [ %371, %372 ], [ %376, %375 ]
  %381 = phi i32 [ %374, %372 ], [ %371, %375 ]
  %382 = phi i32 [ %373, %372 ], [ %377, %375 ]
  %383 = icmp slt i32 %379, %369
  br i1 %383, label %384, label %461

384:                                              ; preds = %378
  %385 = xor i1 %366, true
  %386 = select i1 %340, i1 true, i1 %385
  %387 = add nsw i32 %381, %369
  %388 = mul nsw i32 %369, %332
  %389 = select i1 %386, i32 0, i32 %388
  %390 = sub nsw i32 %387, %389
  %391 = select i1 %386, i32 0, i32 %388
  %392 = sub nsw i32 %382, %391
  %393 = load ptr, ptr %6, align 8, !tbaa !116
  %394 = ptrtoint ptr %393 to i64
  %395 = load i16, ptr %344, align 4, !tbaa !218
  %396 = add nsw i32 %369, %350
  %397 = sitofp i32 %396 to float
  %398 = insertelement <2 x float> %352, float %397, i64 1
  br label %399

399:                                              ; preds = %384, %454
  %400 = phi ptr [ %362, %384 ], [ %455, %454 ]
  %401 = phi ptr [ %363, %384 ], [ %456, %454 ]
  %402 = phi i32 [ %390, %384 ], [ %403, %454 ]
  %403 = phi i32 [ %392, %384 ], [ %457, %454 ]
  %404 = phi i32 [ %381, %384 ], [ %405, %454 ]
  %405 = phi i32 [ %380, %384 ], [ %458, %454 ]
  %406 = phi i32 [ %379, %384 ], [ %459, %454 ]
  %407 = phi ptr [ %365, %384 ], [ %449, %454 ]
  store i32 %405, ptr %401, align 4, !tbaa !68
  %408 = getelementptr inbounds %struct.MLoop, ptr %401, i64 1
  store i32 %403, ptr %408, align 4, !tbaa !68
  %409 = getelementptr inbounds %struct.MLoop, ptr %401, i64 2
  store i32 %402, ptr %409, align 4, !tbaa !68
  %410 = getelementptr inbounds %struct.MLoop, ptr %401, i64 3
  store i32 %404, ptr %410, align 4, !tbaa !68
  %411 = ptrtoint ptr %401 to i64
  %412 = sub i64 %411, %394
  %413 = lshr exact i64 %412, 3
  %414 = trunc i64 %413 to i32
  store i32 %414, ptr %400, align 4, !tbaa !67
  %415 = getelementptr inbounds %struct.MPoly, ptr %400, i64 0, i32 1
  store i32 4, ptr %415, align 4, !tbaa !64
  %416 = getelementptr inbounds %struct.MPoly, ptr %400, i64 0, i32 2
  store i16 %395, ptr %416, align 4, !tbaa !219
  %417 = icmp eq ptr %407, null
  br i1 %417, label %448, label %418

418:                                              ; preds = %399, %444
  %419 = phi i64 [ %445, %444 ], [ 0, %399 ]
  %420 = phi ptr [ %446, %444 ], [ %407, %399 ]
  %421 = getelementptr inbounds %struct.MLoop, ptr %401, i64 %419
  %422 = load i32, ptr %421, align 4, !tbaa !68
  %423 = sub i32 %422, %126
  %424 = sdiv i32 %423, %369
  %425 = srem i32 %423, %369
  %426 = getelementptr inbounds [2 x float], ptr %420, i64 0, i64 1
  %427 = insertelement <2 x i32> poison, i32 %424, i64 0
  %428 = insertelement <2 x i32> %427, i32 %425, i64 1
  %429 = sitofp <2 x i32> %428 to <2 x float>
  %430 = fdiv <2 x float> %429, %398
  store <2 x float> %430, ptr %420, align 4, !tbaa !131
  %431 = trunc i64 %419 to i32
  %432 = add i32 %431, -1
  %433 = icmp ult i32 %432, 2
  %434 = extractelement <2 x float> %430, i64 0
  %435 = fcmp oeq float %434, 0.000000e+00
  %436 = select i1 %433, i1 %435, i1 false
  br i1 %436, label %437, label %438

437:                                              ; preds = %418
  store float 1.000000e+00, ptr %420, align 4, !tbaa !131
  br label %438

438:                                              ; preds = %418, %437
  %439 = icmp ult i64 %419, 2
  %440 = extractelement <2 x float> %430, i64 1
  %441 = fcmp oeq float %440, 0.000000e+00
  %442 = select i1 %439, i1 %441, i1 false
  br i1 %442, label %443, label %444

443:                                              ; preds = %438
  store float 1.000000e+00, ptr %426, align 4, !tbaa !131
  br label %444

444:                                              ; preds = %438, %443
  %445 = add nuw nsw i64 %419, 1
  %446 = getelementptr inbounds %struct.MLoopUV, ptr %420, i64 1
  %447 = icmp eq i64 %445, 4
  br i1 %447, label %448, label %418, !llvm.loop !223

448:                                              ; preds = %444, %399
  %449 = phi ptr [ null, %399 ], [ %446, %444 ]
  br i1 %132, label %454, label %450

450:                                              ; preds = %448
  %451 = getelementptr inbounds %struct.MPoly, ptr %400, i64 0, i32 3
  %452 = load i8, ptr %451, align 2, !tbaa !198
  %453 = or i8 %452, 1
  store i8 %453, ptr %451, align 2, !tbaa !198
  br label %454

454:                                              ; preds = %450, %448
  %455 = getelementptr inbounds %struct.MPoly, ptr %400, i64 1
  %456 = getelementptr inbounds %struct.MLoop, ptr %401, i64 4
  %457 = add nsw i32 %403, 1
  %458 = add nsw i32 %405, 1
  %459 = add nuw nsw i32 %406, 1
  %460 = icmp eq i32 %459, %369
  br i1 %460, label %461, label %399, !llvm.loop !224

461:                                              ; preds = %454, %378
  %462 = phi ptr [ %365, %378 ], [ %449, %454 ]
  %463 = phi ptr [ %363, %378 ], [ %456, %454 ]
  %464 = phi ptr [ %362, %378 ], [ %455, %454 ]
  %465 = add nuw nsw i32 %364, 1
  %466 = icmp eq i32 %465, %332
  br i1 %466, label %467, label %361, !llvm.loop !225

467:                                              ; preds = %461, %361, %313, %233, %180, %331, %254, %198, %148, %121, %184
  %468 = phi ptr [ %128, %184 ], [ %128, %121 ], [ %128, %148 ], [ %128, %198 ], [ %128, %254 ], [ %128, %331 ], [ %128, %180 ], [ %128, %233 ], [ %308, %313 ], [ %462, %461 ], [ %365, %361 ]
  %469 = phi ptr [ %127, %184 ], [ %127, %121 ], [ %127, %148 ], [ %127, %198 ], [ %127, %254 ], [ %127, %331 ], [ %181, %180 ], [ %234, %233 ], [ %127, %313 ], [ %127, %361 ], [ %127, %461 ]
  %470 = phi i32 [ %126, %184 ], [ %126, %121 ], [ %150, %148 ], [ %200, %198 ], [ %255, %254 ], [ %333, %331 ], [ %150, %180 ], [ %200, %233 ], [ %255, %313 ], [ %333, %361 ], [ %333, %461 ]
  %471 = phi ptr [ %125, %184 ], [ %125, %121 ], [ %125, %148 ], [ %125, %198 ], [ %125, %254 ], [ %125, %331 ], [ %125, %180 ], [ %125, %233 ], [ %315, %313 ], [ %463, %461 ], [ %363, %361 ]
  %472 = phi ptr [ %124, %184 ], [ %124, %121 ], [ %124, %148 ], [ %124, %198 ], [ %124, %254 ], [ %124, %331 ], [ %124, %180 ], [ %124, %233 ], [ %314, %313 ], [ %464, %461 ], [ %362, %361 ]
  %473 = phi ptr [ %123, %184 ], [ %123, %121 ], [ %151, %148 ], [ %201, %198 ], [ %256, %254 ], [ %334, %331 ], [ %151, %180 ], [ %201, %233 ], [ %256, %313 ], [ %334, %361 ], [ %334, %461 ]
  %474 = load ptr, ptr %122, align 8, !tbaa !116
  %475 = icmp eq ptr %474, null
  br i1 %475, label %476, label %121, !llvm.loop !226

476:                                              ; preds = %467, %117
  %477 = icmp eq i32 %91, 0
  br i1 %477, label %481, label %478

478:                                              ; preds = %476
  %479 = load ptr, ptr %7, align 8, !tbaa !116
  %480 = load ptr, ptr %6, align 8, !tbaa !116
  call fastcc void @make_edges_mdata_extend(ptr noundef nonnull %4, ptr noundef nonnull %12, ptr noundef %479, ptr noundef %480, i32 noundef %91) #21
  br label %481

481:                                              ; preds = %478, %476
  store i32 %91, ptr %10, align 4, !tbaa !153
  store i32 %90, ptr %9, align 4, !tbaa !153
  %482 = load i32, ptr %12, align 4, !tbaa !153
  store i32 %482, ptr %5, align 4, !tbaa !153
  store i32 %89, ptr %3, align 4, !tbaa !153
  br label %483

483:                                              ; preds = %26, %94, %481
  %484 = phi i32 [ 0, %481 ], [ -1, %94 ], [ -1, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #23
  ret i32 %484
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_edges_mdata_extend(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !227 {
  %6 = load i32, ptr %1, align 4, !tbaa !153
  %7 = shl nsw i32 %4, 1
  %8 = tail call fastcc i32 @max_ii(i32 noundef %6, i32 noundef %7) #21
  %9 = tail call ptr @BLI_edgehash_new_ex(ptr noundef nonnull @__func__.make_edges_mdata_extend, i32 noundef %8) #22
  %10 = icmp sgt i32 %4, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %5, %11
  %12 = phi i32 [ %17, %11 ], [ 0, %5 ]
  %13 = phi ptr [ %18, %11 ], [ %2, %5 ]
  %14 = load i32, ptr %13, align 4, !tbaa !67
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.MLoop, ptr %3, i64 %15
  tail call void @BKE_mesh_poly_edgehash_insert(ptr noundef %9, ptr noundef nonnull %13, ptr noundef %16) #22
  %17 = add nuw nsw i32 %12, 1
  %18 = getelementptr inbounds %struct.MPoly, ptr %13, i64 1
  %19 = icmp eq i32 %17, %4
  br i1 %19, label %20, label %11, !llvm.loop !228

20:                                               ; preds = %11, %5
  %21 = tail call i32 @BLI_edgehash_size(ptr noundef %9) #22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %92, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %0, align 8, !tbaa !116
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !116
  %28 = add nsw i32 %21, %6
  %29 = sext i32 %28 to i64
  %30 = mul nsw i64 %29, 12
  %31 = tail call ptr %27(ptr noundef nonnull %24, i64 noundef %30, ptr noundef nonnull @__func__.make_edges_mdata_extend) #22
  br label %38

32:                                               ; preds = %23
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !116
  %34 = sext i32 %21 to i64
  %35 = mul nsw i64 %34, 12
  %36 = tail call ptr %33(i64 noundef %35, ptr noundef nonnull @__func__.make_edges_mdata_extend) #22
  %37 = add nsw i32 %21, %6
  br label %38

38:                                               ; preds = %32, %26
  %39 = phi i32 [ %37, %32 ], [ %28, %26 ]
  %40 = phi ptr [ %36, %32 ], [ %31, %26 ]
  store ptr %40, ptr %0, align 8, !tbaa !116
  %41 = tail call ptr @BLI_edgehashIterator_new(ptr noundef %9) #22
  %42 = tail call fastcc zeroext i8 @BLI_edgehashIterator_isDone(ptr noundef %41) #21, !range !170
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %38
  %45 = sext i32 %6 to i64
  %46 = getelementptr inbounds %struct.MEdge, ptr %40, i64 %45
  br label %47

47:                                               ; preds = %44, %47
  %48 = phi i32 [ %57, %47 ], [ %6, %44 ]
  %49 = phi ptr [ %56, %47 ], [ %46, %44 ]
  %50 = getelementptr inbounds %struct.MEdge, ptr %49, i64 0, i32 1
  tail call fastcc void @BLI_edgehashIterator_getKey(ptr noundef %41, ptr noundef %49, ptr noundef nonnull %50) #21
  %51 = zext i32 %48 to i64
  %52 = inttoptr i64 %51 to ptr
  tail call fastcc void @BLI_edgehashIterator_setValue(ptr noundef %41, ptr noundef %52) #21
  %53 = getelementptr inbounds %struct.MEdge, ptr %49, i64 0, i32 3
  store i8 0, ptr %53, align 1, !tbaa !229
  %54 = getelementptr inbounds %struct.MEdge, ptr %49, i64 0, i32 2
  store i8 0, ptr %54, align 4, !tbaa !230
  %55 = getelementptr inbounds %struct.MEdge, ptr %49, i64 0, i32 4
  store i16 34, ptr %55, align 2, !tbaa !211
  tail call void @BLI_edgehashIterator_step(ptr noundef %41) #22
  %56 = getelementptr inbounds %struct.MEdge, ptr %49, i64 1
  %57 = add i32 %48, 1
  %58 = tail call fastcc zeroext i8 @BLI_edgehashIterator_isDone(ptr noundef %41) #21, !range !170
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %47, label %60, !llvm.loop !231

60:                                               ; preds = %47, %38
  tail call void @BLI_edgehashIterator_free(ptr noundef %41) #22
  store i32 %39, ptr %1, align 4, !tbaa !153
  br i1 %10, label %61, label %92

61:                                               ; preds = %60, %88
  %62 = phi i32 [ %89, %88 ], [ 0, %60 ]
  %63 = phi ptr [ %90, %88 ], [ %2, %60 ]
  %64 = getelementptr inbounds %struct.MPoly, ptr %63, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !64
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %61
  %68 = load i32, ptr %63, align 4, !tbaa !67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.MLoop, ptr %3, i64 %69
  %71 = zext nneg i32 %65 to i64
  %72 = getelementptr %struct.MLoop, ptr %70, i64 %71
  %73 = getelementptr %struct.MLoop, ptr %72, i64 -1
  br label %74

74:                                               ; preds = %67, %74
  %75 = phi i32 [ %84, %74 ], [ 0, %67 ]
  %76 = phi ptr [ %77, %74 ], [ %73, %67 ]
  %77 = phi ptr [ %85, %74 ], [ %70, %67 ]
  %78 = load i32, ptr %76, align 4, !tbaa !68
  %79 = load i32, ptr %77, align 4, !tbaa !68
  %80 = tail call ptr @BLI_edgehash_lookup(ptr noundef %9, i32 noundef %78, i32 noundef %79) #22
  %81 = ptrtoint ptr %80 to i64
  %82 = trunc i64 %81 to i32
  %83 = getelementptr inbounds %struct.MLoop, ptr %76, i64 0, i32 1
  store i32 %82, ptr %83, align 4, !tbaa !232
  %84 = add nuw nsw i32 %75, 1
  %85 = getelementptr inbounds %struct.MLoop, ptr %77, i64 1
  %86 = load i32, ptr %64, align 4, !tbaa !64
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %74, label %88, !llvm.loop !233

88:                                               ; preds = %74, %61
  %89 = add nuw nsw i32 %62, 1
  %90 = getelementptr inbounds %struct.MPoly, ptr %63, i64 1
  %91 = icmp eq i32 %89, %4
  br i1 %91, label %92, label %61, !llvm.loop !234

92:                                               ; preds = %88, %60, %20
  tail call void @BLI_edgehash_free(ptr noundef %9, ptr noundef null) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_from_nurbs_displist(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = load ptr, ptr @G, align 8, !tbaa !151
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %15 = load ptr, ptr %14, align 8, !tbaa !235
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  store ptr null, ptr %4, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  store ptr null, ptr %5, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  store ptr null, ptr %6, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  store ptr null, ptr %7, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #23
  store ptr null, ptr %8, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #23
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !159
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %65

19:                                               ; preds = %3
  %20 = icmp eq i8 %2, 0
  %21 = select i1 %20, ptr null, ptr %7
  %22 = call i32 @BKE_mesh_nurbs_displist_to_mdata(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef %21, ptr noundef nonnull %11, ptr noundef nonnull %12) #21, !range !203
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %95

24:                                               ; preds = %19
  %25 = load ptr, ptr @G, align 8, !tbaa !151
  %26 = call ptr @BKE_mesh_add(ptr noundef %25, ptr noundef nonnull @.str.12) #21
  %27 = load i32, ptr %9, align 4, !tbaa !153
  %28 = getelementptr inbounds %struct.Mesh, ptr %26, i64 0, i32 26
  store i32 %27, ptr %28, align 8, !tbaa !34
  %29 = load i32, ptr %10, align 4, !tbaa !153
  %30 = getelementptr inbounds %struct.Mesh, ptr %26, i64 0, i32 27
  store i32 %29, ptr %30, align 4, !tbaa !44
  %31 = load i32, ptr %11, align 4, !tbaa !153
  %32 = getelementptr inbounds %struct.Mesh, ptr %26, i64 0, i32 31
  store i32 %31, ptr %32, align 4, !tbaa !46
  %33 = load i32, ptr %12, align 4, !tbaa !153
  %34 = getelementptr inbounds %struct.Mesh, ptr %26, i64 0, i32 30
  store i32 %33, ptr %34, align 8, !tbaa !45
  %35 = getelementptr inbounds %struct.Mesh, ptr %26, i64 0, i32 21
  %36 = load ptr, ptr %4, align 8, !tbaa !116
  %37 = call ptr @CustomData_add_layer(ptr noundef nonnull %35, i32 noundef 0, i32 noundef 0, ptr noundef %36, i32 noundef %27) #22
  %38 = getelementptr inbounds %struct.Mesh, ptr %26, i64 0, i32 15
  store ptr %37, ptr %38, align 8, !tbaa !103
  %39 = getelementptr inbounds %struct.Mesh, ptr %26, i64 0, i32 22
  %40 = load ptr, ptr %5, align 8, !tbaa !116
  %41 = load i32, ptr %30, align 4, !tbaa !44
  %42 = call ptr @CustomData_add_layer(ptr noundef nonnull %39, i32 noundef 3, i32 noundef 0, ptr noundef %40, i32 noundef %41) #22
  %43 = getelementptr inbounds %struct.Mesh, ptr %26, i64 0, i32 16
  store ptr %42, ptr %43, align 8, !tbaa !105
  %44 = getelementptr inbounds %struct.Mesh, ptr %26, i64 0, i32 25
  %45 = load ptr, ptr %6, align 8, !tbaa !116
  %46 = load i32, ptr %32, align 4, !tbaa !46
  %47 = call ptr @CustomData_add_layer(ptr noundef nonnull %44, i32 noundef 26, i32 noundef 0, ptr noundef %45, i32 noundef %46) #22
  %48 = getelementptr inbounds %struct.Mesh, ptr %26, i64 0, i32 9
  store ptr %47, ptr %48, align 8, !tbaa !66
  %49 = getelementptr inbounds %struct.Mesh, ptr %26, i64 0, i32 24
  %50 = load ptr, ptr %8, align 8, !tbaa !116
  %51 = load i32, ptr %34, align 8, !tbaa !45
  %52 = call ptr @CustomData_add_layer(ptr noundef nonnull %49, i32 noundef 25, i32 noundef 0, ptr noundef %50, i32 noundef %51) #22
  %53 = getelementptr inbounds %struct.Mesh, ptr %26, i64 0, i32 7
  store ptr %52, ptr %53, align 8, !tbaa !109
  %54 = load ptr, ptr %7, align 8, !tbaa !116
  %55 = icmp eq ptr %54, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %24
  %57 = load i32, ptr %34, align 8, !tbaa !45
  %58 = call ptr @CustomData_add_layer_named(ptr noundef nonnull %49, i32 noundef 15, i32 noundef 2, ptr noundef null, i32 noundef %57, ptr noundef nonnull @.str.13) #22
  %59 = getelementptr inbounds %struct.Mesh, ptr %26, i64 0, i32 8
  store ptr %58, ptr %59, align 8, !tbaa !110
  %60 = load ptr, ptr %7, align 8, !tbaa !116
  %61 = load i32, ptr %32, align 4, !tbaa !46
  %62 = call ptr @CustomData_add_layer_named(ptr noundef nonnull %44, i32 noundef 16, i32 noundef 0, ptr noundef %60, i32 noundef %61, ptr noundef nonnull @.str.13) #22
  %63 = getelementptr inbounds %struct.Mesh, ptr %26, i64 0, i32 10
  store ptr %62, ptr %63, align 8, !tbaa !112
  br label %64

64:                                               ; preds = %56, %24
  call void @BKE_mesh_calc_normals(ptr noundef nonnull %26) #22
  br label %68

65:                                               ; preds = %3
  %66 = tail call ptr @BKE_mesh_add(ptr noundef %13, ptr noundef nonnull @.str.12) #21
  %67 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !136
  tail call void @DM_to_mesh(ptr noundef nonnull %15, ptr noundef %66, ptr noundef nonnull %0, i64 noundef %67) #22
  br label %68

68:                                               ; preds = %65, %64
  %69 = phi ptr [ %26, %64 ], [ %66, %65 ]
  %70 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 22
  %71 = load i16, ptr %70, align 2, !tbaa !236
  %72 = getelementptr inbounds %struct.Mesh, ptr %69, i64 0, i32 47
  store i16 %71, ptr %72, align 2, !tbaa !115
  %73 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 10
  %74 = load ptr, ptr %73, align 8, !tbaa !237
  %75 = getelementptr inbounds %struct.Mesh, ptr %69, i64 0, i32 5
  store ptr %74, ptr %75, align 8, !tbaa !114
  call void @BKE_mesh_texspace_calc(ptr noundef %69) #21
  store ptr null, ptr %73, align 8, !tbaa !237
  store i16 0, ptr %70, align 2, !tbaa !236
  %76 = load ptr, ptr %16, align 8, !tbaa !159
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %68
  call void @BKE_libblock_free(ptr noundef %13, ptr noundef nonnull %76) #22
  br label %79

79:                                               ; preds = %78, %68
  store ptr %69, ptr %16, align 8, !tbaa !159
  %80 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  store i16 1, ptr %80, align 8, !tbaa !168
  %81 = getelementptr inbounds %struct.Main, ptr %13, i64 0, i32 13
  %82 = load ptr, ptr %81, align 8, !tbaa !116
  %83 = icmp eq ptr %82, null
  br i1 %83, label %95, label %84

84:                                               ; preds = %79, %92
  %85 = phi ptr [ %93, %92 ], [ %82, %79 ]
  %86 = getelementptr inbounds %struct.Object, ptr %85, i64 0, i32 19
  %87 = load ptr, ptr %86, align 8, !tbaa !159
  %88 = icmp eq ptr %87, %17
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.Object, ptr %85, i64 0, i32 3
  store i16 1, ptr %90, align 8, !tbaa !168
  %91 = load ptr, ptr %16, align 8, !tbaa !159
  store ptr %91, ptr %86, align 8, !tbaa !159
  call void @id_us_plus(ptr noundef %91) #22
  br label %92

92:                                               ; preds = %89, %84
  %93 = load ptr, ptr %85, align 8, !tbaa !116
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %84, !llvm.loop !238

95:                                               ; preds = %92, %79, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  ret void
}

; Function Attrs: optsize
declare ptr @CustomData_add_layer_named(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DM_to_mesh(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_libblock_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_from_nurbs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !159
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 23
  %6 = load i32, ptr %5, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %8 = load ptr, ptr %7, align 8, !tbaa !201
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !202
  br label %11

11:                                               ; preds = %10, %1
  %12 = trunc i32 %6 to i8
  %13 = lshr i8 %12, 5
  %14 = and i8 %13, 1
  call void @BKE_mesh_from_nurbs_displist(ptr noundef nonnull %0, ptr noundef nonnull %2, i8 noundef zeroext %14) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_to_curve_nurblist(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  %7 = load ptr, ptr %6, align 8, !tbaa !239
  %8 = tail call ptr %7(ptr noundef %0) #22
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 32
  %10 = load ptr, ptr %9, align 8, !tbaa !241
  %11 = tail call ptr %10(ptr noundef %0) #22
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 35
  %13 = load ptr, ptr %12, align 8, !tbaa !242
  %14 = tail call ptr %13(ptr noundef %0) #22
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 34
  %16 = load ptr, ptr %15, align 8, !tbaa !243
  %17 = tail call ptr %16(ptr noundef %0) #22
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 24
  %19 = load ptr, ptr %18, align 8, !tbaa !244
  %20 = tail call i32 %19(ptr noundef %0) #22
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 27
  %22 = load ptr, ptr %21, align 8, !tbaa !245
  %23 = tail call i32 %22(ptr noundef %0) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !116
  %25 = sext i32 %20 to i64
  %26 = shl nsw i64 %25, 2
  %27 = tail call ptr %24(i64 noundef %26, ptr noundef nonnull @__func__.BKE_mesh_to_curve_nurblist) #22
  %28 = icmp sgt i32 %23, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %56, %3
  %30 = icmp sgt i32 %20, 0
  br i1 %30, label %31, label %74

31:                                               ; preds = %29
  %32 = zext nneg i32 %20 to i64
  br label %60

33:                                               ; preds = %3, %56
  %34 = phi ptr [ %58, %56 ], [ %14, %3 ]
  %35 = phi i32 [ %57, %56 ], [ 0, %3 ]
  %36 = getelementptr inbounds %struct.MPoly, ptr %34, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !64
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  %40 = load i32, ptr %34, align 4, !tbaa !67
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.MLoop, ptr %17, i64 %41
  br label %43

43:                                               ; preds = %39, %43
  %44 = phi i32 [ %52, %43 ], [ 0, %39 ]
  %45 = phi ptr [ %53, %43 ], [ %42, %39 ]
  %46 = getelementptr inbounds %struct.MLoop, ptr %45, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !232
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, ptr %27, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !153
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %49, align 4, !tbaa !153
  %52 = add nuw nsw i32 %44, 1
  %53 = getelementptr inbounds %struct.MLoop, ptr %45, i64 1
  %54 = load i32, ptr %36, align 4, !tbaa !64
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %43, label %56, !llvm.loop !246

56:                                               ; preds = %43, %33
  %57 = add nuw nsw i32 %35, 1
  %58 = getelementptr inbounds %struct.MPoly, ptr %34, i64 1
  %59 = icmp eq i32 %57, %23
  br i1 %59, label %29, label %33, !llvm.loop !247

60:                                               ; preds = %31, %70
  %61 = phi i64 [ 0, %31 ], [ %71, %70 ]
  %62 = phi ptr [ %11, %31 ], [ %72, %70 ]
  %63 = getelementptr inbounds i32, ptr %27, i64 %61
  %64 = load i32, ptr %63, align 4, !tbaa !153
  %65 = icmp eq i32 %64, %2
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load ptr, ptr @MEM_callocN, align 8, !tbaa !116
  %68 = call ptr %67(i64 noundef 24, ptr noundef nonnull @.str.14) #22
  %69 = getelementptr inbounds %struct.EdgeLink, ptr %68, i64 0, i32 2
  store ptr %62, ptr %69, align 8, !tbaa !248
  call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %68) #22
  br label %70

70:                                               ; preds = %60, %66
  %71 = add nuw nsw i64 %61, 1
  %72 = getelementptr inbounds %struct.MEdge, ptr %62, i64 1
  %73 = icmp eq i64 %71, %32
  br i1 %73, label %74, label %60, !llvm.loop !250

74:                                               ; preds = %70, %29
  %75 = load ptr, ptr @MEM_freeN, align 8, !tbaa !116
  call void %75(ptr noundef %27) #22
  %76 = load ptr, ptr %4, align 8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %174, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.ListBase, ptr %4, i64 0, i32 1
  %80 = getelementptr inbounds %struct.ListBase, ptr %5, i64 0, i32 1
  br label %81

81:                                               ; preds = %78, %171
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %82 = load ptr, ptr %79, align 8, !tbaa !251
  %83 = getelementptr inbounds %struct.EdgeLink, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !248
  %85 = load i32, ptr %84, align 4, !tbaa !59
  %86 = getelementptr inbounds %struct.MEdge, ptr %84, i64 0, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !61
  call fastcc void @appendPolyLineVert(ptr noundef nonnull %5, i32 noundef %85) #21
  call fastcc void @appendPolyLineVert(ptr noundef nonnull %5, i32 noundef %87) #21
  %88 = load ptr, ptr %79, align 8, !tbaa !251
  call void @BLI_freelinkN(ptr noundef nonnull %4, ptr noundef %88) #22
  br label %91

89:                                               ; preds = %125
  %90 = icmp eq i8 %129, 0
  br i1 %90, label %131, label %91, !llvm.loop !252

91:                                               ; preds = %81, %89
  %92 = phi i32 [ %87, %81 ], [ %128, %89 ]
  %93 = phi i32 [ %85, %81 ], [ %127, %89 ]
  %94 = phi i32 [ 2, %81 ], [ %126, %89 ]
  %95 = load ptr, ptr %79, align 8, !tbaa !251
  %96 = icmp eq ptr %95, null
  br i1 %96, label %131, label %97

97:                                               ; preds = %91, %125
  %98 = phi ptr [ %104, %125 ], [ %95, %91 ]
  %99 = phi i8 [ %129, %125 ], [ 0, %91 ]
  %100 = phi i32 [ %128, %125 ], [ %92, %91 ]
  %101 = phi i32 [ %127, %125 ], [ %93, %91 ]
  %102 = phi i32 [ %126, %125 ], [ %94, %91 ]
  %103 = getelementptr inbounds %struct.EdgeLink, ptr %98, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !253
  %105 = getelementptr inbounds %struct.EdgeLink, ptr %98, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !248
  %107 = load i32, ptr %106, align 4, !tbaa !59
  %108 = icmp eq i32 %107, %100
  %109 = getelementptr inbounds %struct.MEdge, ptr %106, i64 0, i32 1
  %110 = load i32, ptr %109, align 4, !tbaa !61
  br i1 %108, label %111, label %112

111:                                              ; preds = %97
  call fastcc void @appendPolyLineVert(ptr noundef nonnull %5, i32 noundef %110) #21
  br label %121

112:                                              ; preds = %97
  %113 = icmp eq i32 %110, %100
  br i1 %113, label %114, label %115

114:                                              ; preds = %112
  call fastcc void @appendPolyLineVert(ptr noundef nonnull %5, i32 noundef %107) #21
  br label %121

115:                                              ; preds = %112
  %116 = icmp eq i32 %107, %101
  br i1 %116, label %117, label %118

117:                                              ; preds = %115
  call fastcc void @prependPolyLineVert(ptr noundef nonnull %5, i32 noundef %110) #21
  br label %121

118:                                              ; preds = %115
  %119 = icmp eq i32 %110, %101
  br i1 %119, label %120, label %125

120:                                              ; preds = %118
  call fastcc void @prependPolyLineVert(ptr noundef nonnull %5, i32 noundef %107) #21
  br label %121

121:                                              ; preds = %111, %117, %120, %114
  %122 = phi i32 [ %107, %120 ], [ %110, %117 ], [ %101, %114 ], [ %101, %111 ]
  %123 = phi i32 [ %100, %120 ], [ %100, %117 ], [ %107, %114 ], [ %110, %111 ]
  %124 = add nsw i32 %102, 1
  call void @BLI_freelinkN(ptr noundef nonnull %4, ptr noundef nonnull %98) #22
  br label %125

125:                                              ; preds = %121, %118
  %126 = phi i32 [ %102, %118 ], [ %124, %121 ]
  %127 = phi i32 [ %101, %118 ], [ %122, %121 ]
  %128 = phi i32 [ %100, %118 ], [ %123, %121 ]
  %129 = phi i8 [ %99, %118 ], [ 1, %121 ]
  %130 = icmp eq ptr %104, null
  br i1 %130, label %89, label %97, !llvm.loop !254

131:                                              ; preds = %91, %89
  %132 = phi i32 [ %128, %89 ], [ %92, %91 ]
  %133 = phi i32 [ %127, %89 ], [ %93, %91 ]
  %134 = phi i32 [ %126, %89 ], [ %94, %91 ]
  %135 = icmp eq i32 %133, %132
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load ptr, ptr %80, align 8, !tbaa !251
  call void @BLI_freelinkN(ptr noundef nonnull %5, ptr noundef %137) #22
  %138 = add nsw i32 %134, -1
  br label %139

139:                                              ; preds = %136, %131
  %140 = phi i32 [ %138, %136 ], [ %134, %131 ]
  %141 = load ptr, ptr @MEM_callocN, align 8, !tbaa !116
  %142 = call ptr %141(i64 noundef 88, ptr noundef nonnull @.str.15) #22
  %143 = getelementptr inbounds %struct.Nurb, ptr %142, i64 0, i32 6
  store i32 %140, ptr %143, align 8, !tbaa !255
  %144 = getelementptr inbounds %struct.Nurb, ptr %142, i64 0, i32 7
  store i32 1, ptr %144, align 4, !tbaa !257
  %145 = getelementptr inbounds %struct.Nurb, ptr %142, i64 0, i32 11
  store i16 4, ptr %145, align 8, !tbaa !258
  %146 = zext i1 %135 to i16
  %147 = or disjoint i16 %146, 2
  %148 = getelementptr inbounds %struct.Nurb, ptr %142, i64 0, i32 13
  store i16 %147, ptr %148, align 4, !tbaa !259
  %149 = getelementptr inbounds %struct.Nurb, ptr %142, i64 0, i32 9
  store i16 12, ptr %149, align 4, !tbaa !260
  %150 = load ptr, ptr @MEM_callocN, align 8, !tbaa !116
  %151 = sext i32 %140 to i64
  %152 = mul nsw i64 %151, 36
  %153 = call ptr %150(i64 noundef %152, ptr noundef nonnull @.str.16) #22
  %154 = getelementptr inbounds %struct.Nurb, ptr %142, i64 0, i32 17
  store ptr %153, ptr %154, align 8, !tbaa !261
  %155 = icmp sgt i32 %140, 0
  br i1 %155, label %156, label %171

156:                                              ; preds = %139, %156
  %157 = phi ptr [ %160, %156 ], [ %5, %139 ]
  %158 = phi ptr [ %169, %156 ], [ %153, %139 ]
  %159 = phi i32 [ %168, %156 ], [ 0, %139 ]
  %160 = load ptr, ptr %157, align 8, !tbaa !116
  %161 = getelementptr inbounds %struct.VertLink, ptr %160, i64 0, i32 2
  %162 = load i32, ptr %161, align 8, !tbaa !262
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.MVert, ptr %8, i64 %163
  call fastcc void @copy_v3_v3(ptr noundef %158, ptr noundef %164) #21
  %165 = getelementptr inbounds %struct.BPoint, ptr %158, i64 0, i32 3
  store i16 1, ptr %165, align 4, !tbaa !264
  %166 = getelementptr inbounds %struct.BPoint, ptr %158, i64 0, i32 2
  store float 1.000000e+00, ptr %166, align 4, !tbaa !266
  %167 = getelementptr inbounds %struct.BPoint, ptr %158, i64 0, i32 5
  store float 1.000000e+00, ptr %167, align 4, !tbaa !267
  %168 = add nuw nsw i32 %159, 1
  %169 = getelementptr inbounds %struct.BPoint, ptr %158, i64 1
  %170 = icmp eq i32 %168, %140
  br i1 %170, label %171, label %156, !llvm.loop !268

171:                                              ; preds = %156, %139
  call void @BLI_freelistN(ptr noundef nonnull %5) #22
  call void @BLI_addtail(ptr noundef %1, ptr noundef %142) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #23
  %172 = load ptr, ptr %4, align 8, !tbaa !189
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %81

174:                                              ; preds = %171, %74
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #23
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @appendPolyLineVert(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !269 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !116
  %4 = tail call ptr %3(i64 noundef 24, ptr noundef nonnull @.str.33) #22
  %5 = getelementptr inbounds %struct.VertLink, ptr %4, i64 0, i32 2
  store i32 %1, ptr %5, align 8, !tbaa !262
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %4) #22
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prependPolyLineVert(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !270 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !116
  %4 = tail call ptr %3(i64 noundef 24, ptr noundef nonnull @.str.33) #22
  %5 = getelementptr inbounds %struct.VertLink, ptr %4, i64 0, i32 2
  store i32 %1, ptr %5, align 8, !tbaa !262
  tail call void @BLI_addhead(ptr noundef %0, ptr noundef %4) #22
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_to_curve(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !136
  %5 = tail call ptr @mesh_get_derived_final(ptr noundef %0, ptr noundef %1, i64 noundef %4) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @BKE_mesh_to_curve_nurblist(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 0) #21
  call void @BKE_mesh_to_curve_nurblist(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 1) #21
  %6 = load ptr, ptr %3, align 8, !tbaa !189
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr @G, align 8, !tbaa !151
  %10 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %11 = call ptr @BKE_curve_add(ptr noundef %9, ptr noundef nonnull %10, i32 noundef 2) #22
  %12 = getelementptr inbounds %struct.Curve, ptr %11, i64 0, i32 23
  %13 = load i32, ptr %12, align 4, !tbaa !204
  %14 = or i32 %13, 1
  store i32 %14, ptr %12, align 4, !tbaa !204
  %15 = getelementptr inbounds %struct.Curve, ptr %11, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !202
  %16 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !159
  %18 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 6
  %19 = load i32, ptr %18, align 4, !tbaa !158
  %20 = add nsw i32 %19, -1
  store i32 %20, ptr %18, align 4, !tbaa !158
  store ptr %11, ptr %16, align 8, !tbaa !159
  %21 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  store i16 2, ptr %21, align 8, !tbaa !168
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 10
  store i32 1, ptr %22, align 4, !tbaa !271
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 95
  %24 = load ptr, ptr %23, align 8, !tbaa !272
  call void %24(ptr noundef %5) #22
  %25 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 120
  store ptr null, ptr %25, align 8, !tbaa !235
  %26 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 15
  %27 = load ptr, ptr %26, align 8, !tbaa !177
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %8
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !116
  call void %30(ptr noundef nonnull %27) #22
  store ptr null, ptr %26, align 8, !tbaa !177
  br label %35

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 10
  store i32 0, ptr %32, align 4, !tbaa !271
  %33 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 95
  %34 = load ptr, ptr %33, align 8, !tbaa !272
  call void %34(ptr noundef %5) #22
  br label %35

35:                                               ; preds = %31, %8, %29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  ret void
}

; Function Attrs: optsize
declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_curve_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_material_index_remove(ptr nocapture noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %4 = load i32, ptr %3, align 8, !tbaa !45
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  br label %9

9:                                                ; preds = %6, %19
  %10 = phi i32 [ %20, %19 ], [ 0, %6 ]
  %11 = phi ptr [ %21, %19 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct.MPoly, ptr %11, i64 0, i32 2
  %13 = load i16, ptr %12, align 4, !tbaa !219
  %14 = icmp eq i16 %13, 0
  %15 = icmp slt i16 %13, %1
  %16 = or i1 %14, %15
  br i1 %16, label %19, label %17

17:                                               ; preds = %9
  %18 = add i16 %13, -1
  store i16 %18, ptr %12, align 4, !tbaa !219
  br label %19

19:                                               ; preds = %9, %17
  %20 = add nuw nsw i32 %10, 1
  %21 = getelementptr inbounds %struct.MPoly, ptr %11, i64 1
  %22 = icmp eq i32 %20, %4
  br i1 %22, label %23, label %9, !llvm.loop !273

23:                                               ; preds = %19, %2
  %24 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %25 = load i32, ptr %24, align 8, !tbaa !127
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %29 = load ptr, ptr %28, align 8, !tbaa !106
  br label %30

30:                                               ; preds = %27, %40
  %31 = phi i32 [ %41, %40 ], [ 0, %27 ]
  %32 = phi ptr [ %42, %40 ], [ %29, %27 ]
  %33 = getelementptr inbounds %struct.MFace, ptr %32, i64 0, i32 4
  %34 = load i16, ptr %33, align 4, !tbaa !274
  %35 = icmp eq i16 %34, 0
  %36 = icmp slt i16 %34, %1
  %37 = or i1 %35, %36
  br i1 %37, label %40, label %38

38:                                               ; preds = %30
  %39 = add i16 %34, -1
  store i16 %39, ptr %33, align 4, !tbaa !274
  br label %40

40:                                               ; preds = %30, %38
  %41 = add nuw nsw i32 %31, 1
  %42 = getelementptr inbounds %struct.MFace, ptr %32, i64 1
  %43 = icmp eq i32 %41, %25
  br i1 %43, label %44, label %30, !llvm.loop !275

44:                                               ; preds = %40, %23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_material_index_clear(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %3 = load i32, ptr %2, align 8, !tbaa !45
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !109
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i32 [ %12, %8 ], [ 0, %5 ]
  %10 = phi ptr [ %13, %8 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.MPoly, ptr %10, i64 0, i32 2
  store i16 0, ptr %11, align 4, !tbaa !219
  %12 = add nuw nsw i32 %9, 1
  %13 = getelementptr inbounds %struct.MPoly, ptr %10, i64 1
  %14 = icmp eq i32 %12, %3
  br i1 %14, label %15, label %8, !llvm.loop !276

15:                                               ; preds = %8, %1
  %16 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %17 = load i32, ptr %16, align 8, !tbaa !127
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !106
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i32 [ %26, %22 ], [ 0, %19 ]
  %24 = phi ptr [ %27, %22 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.MFace, ptr %24, i64 0, i32 4
  store i16 0, ptr %25, align 4, !tbaa !274
  %26 = add nuw nsw i32 %23, 1
  %27 = getelementptr inbounds %struct.MFace, ptr %24, i64 1
  %28 = icmp eq i32 %26, %17
  br i1 %28, label %29, label %22, !llvm.loop !277

29:                                               ; preds = %22, %15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_smooth_flag_set(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !159
  %5 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 30
  %6 = load i32, ptr %5, align 8, !tbaa !45
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !109
  %11 = icmp ne i32 %1, 0
  %12 = zext nneg i32 %6 to i64
  %13 = zext i1 %11 to i8
  br label %24

14:                                               ; preds = %24, %2
  %15 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 28
  %16 = load i32, ptr %15, align 8, !tbaa !127
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !106
  %21 = icmp ne i32 %1, 0
  %22 = zext nneg i32 %16 to i64
  %23 = zext i1 %21 to i8
  br label %32

24:                                               ; preds = %8, %24
  %25 = phi i64 [ 0, %8 ], [ %30, %24 ]
  %26 = getelementptr inbounds %struct.MPoly, ptr %10, i64 %25, i32 3
  %27 = load i8, ptr %26, align 2, !tbaa !198
  %28 = and i8 %27, -2
  %29 = or disjoint i8 %28, %13
  store i8 %29, ptr %26, align 2, !tbaa !198
  %30 = add nuw nsw i64 %25, 1
  %31 = icmp eq i64 %30, %12
  br i1 %31, label %14, label %24, !llvm.loop !278

32:                                               ; preds = %18, %32
  %33 = phi i64 [ 0, %18 ], [ %38, %32 ]
  %34 = getelementptr inbounds %struct.MFace, ptr %20, i64 %33, i32 6
  %35 = load i8, ptr %34, align 1, !tbaa !279
  %36 = and i8 %35, -2
  %37 = or disjoint i8 %36, %23
  store i8 %37, ptr %34, align 1, !tbaa !279
  %38 = add nuw nsw i64 %33, 1
  %39 = icmp eq i64 %38, %22
  br i1 %39, label %40, label %32, !llvm.loop !280

40:                                               ; preds = %32, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mesh_vertexCos_get(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !116
  %6 = sext i32 %4 to i64
  %7 = mul nsw i64 %6, 12
  %8 = tail call ptr %5(i64 noundef %7, ptr noundef nonnull @.str.17) #22
  %9 = icmp eq ptr %1, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 %4, ptr %1, align 4, !tbaa !153
  br label %11

11:                                               ; preds = %10, %2
  %12 = icmp sgt i32 %4, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %15 = zext nneg i32 %4 to i64
  br label %16

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %21, %16 ]
  %18 = getelementptr inbounds [3 x float], ptr %8, i64 %17
  %19 = load ptr, ptr %14, align 8, !tbaa !103
  %20 = getelementptr inbounds %struct.MVert, ptr %19, i64 %17
  tail call fastcc void @copy_v3_v3(ptr noundef %18, ptr noundef %20) #21
  %21 = add nuw nsw i64 %17, 1
  %22 = icmp eq i64 %21, %15
  br i1 %22, label %23, label %16, !llvm.loop !281

23:                                               ; preds = %16, %11
  ret ptr %8
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @poly_find_loop_from_vert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.MPoly, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !64
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %3, %12
  %8 = phi i32 [ %13, %12 ], [ 0, %3 ]
  %9 = phi ptr [ %14, %12 ], [ %1, %3 ]
  %10 = load i32, ptr %9, align 4, !tbaa !68
  %11 = icmp eq i32 %10, %2
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = add nuw nsw i32 %8, 1
  %14 = getelementptr inbounds %struct.MLoop, ptr %9, i64 1
  %15 = icmp eq i32 %13, %5
  br i1 %15, label %16, label %7, !llvm.loop !282

16:                                               ; preds = %7, %12, %3
  %17 = phi i32 [ -1, %3 ], [ -1, %12 ], [ %8, %7 ]
  ret i32 %17
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @poly_get_adj_loops_from_vert(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #13 {
  %5 = load i32, ptr %1, align 4, !tbaa !67
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.MLoop, ptr %2, i64 %6
  %8 = tail call i32 @poly_find_loop_from_vert(ptr noundef nonnull %1, ptr noundef %7, i32 noundef %3) #21
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %34, label %10

10:                                               ; preds = %4
  %11 = add nsw i32 %8, %5
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.MLoop, ptr %2, i64 %12
  %14 = getelementptr inbounds %struct.MPoly, ptr %1, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !64
  %16 = add i32 %8, -1
  %17 = add i32 %16, %15
  %18 = srem i32 %17, %15
  %19 = add nsw i32 %18, %5
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.MLoop, ptr %2, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !68
  store i32 %22, ptr %0, align 4, !tbaa !153
  %23 = load i32, ptr %13, align 4, !tbaa !68
  %24 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %23, ptr %24, align 4, !tbaa !153
  %25 = load i32, ptr %1, align 4, !tbaa !67
  %26 = add nuw nsw i32 %8, 1
  %27 = load i32, ptr %14, align 4, !tbaa !64
  %28 = srem i32 %26, %27
  %29 = add nsw i32 %28, %25
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.MLoop, ptr %2, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !68
  %33 = getelementptr inbounds i32, ptr %0, i64 2
  store i32 %32, ptr %33, align 4, !tbaa !153
  br label %34

34:                                               ; preds = %10, %4
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @BKE_mesh_edge_other_vert(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = load i32, ptr %0, align 4, !tbaa !59
  %4 = icmp eq i32 %3, %1
  %5 = getelementptr inbounds %struct.MEdge, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !61
  %7 = icmp eq i32 %6, %1
  %8 = select i1 %7, i32 %3, i32 -1
  %9 = select i1 %4, i32 %6, i32 %8
  ret i32 %9
}

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_transform(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !103
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %14, %10 ], [ %9, %7 ]
  %12 = phi i32 [ %13, %10 ], [ 0, %7 ]
  tail call void @mul_m4_v3(ptr noundef %1, ptr noundef %11) #22
  %13 = add nuw nsw i32 %12, 1
  %14 = getelementptr inbounds %struct.MVert, ptr %11, i64 1
  %15 = load i32, ptr %4, align 8, !tbaa !34
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %10, label %17, !llvm.loop !283

17:                                               ; preds = %10, %3
  %18 = icmp eq i8 %2, 0
  br i1 %18, label %44, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !123
  %22 = icmp eq ptr %21, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Key, ptr %21, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !116
  %26 = icmp eq ptr %25, null
  br i1 %26, label %44, label %30

27:                                               ; preds = %38, %30
  %28 = load ptr, ptr %31, align 8, !tbaa !116
  %29 = icmp eq ptr %28, null
  br i1 %29, label %44, label %30, !llvm.loop !284

30:                                               ; preds = %23, %27
  %31 = phi ptr [ %28, %27 ], [ %25, %23 ]
  %32 = getelementptr inbounds %struct.KeyBlock, ptr %31, i64 0, i32 8
  %33 = load i32, ptr %32, align 8, !tbaa !285
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %27, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.KeyBlock, ptr %31, i64 0, i32 10
  %37 = load ptr, ptr %36, align 8, !tbaa !287
  br label %38

38:                                               ; preds = %35, %38
  %39 = phi ptr [ %42, %38 ], [ %37, %35 ]
  %40 = phi i32 [ %41, %38 ], [ %33, %35 ]
  %41 = add nsw i32 %40, -1
  tail call void @mul_m4_v3(ptr noundef %1, ptr noundef %39) #22
  %42 = getelementptr inbounds float, ptr %39, i64 3
  %43 = icmp eq i32 %41, 0
  br i1 %43, label %27, label %38, !llvm.loop !288

44:                                               ; preds = %27, %23, %19, %17
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_translate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !103
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %14, %10 ], [ %9, %7 ]
  %12 = phi i32 [ %13, %10 ], [ %5, %7 ]
  %13 = add nsw i32 %12, -1
  tail call fastcc void @add_v3_v3(ptr noundef %11, ptr noundef %1) #21
  %14 = getelementptr inbounds %struct.MVert, ptr %11, i64 1
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %16, label %10, !llvm.loop !289

16:                                               ; preds = %10, %3
  %17 = icmp eq i8 %2, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !123
  %21 = icmp eq ptr %20, null
  br i1 %21, label %43, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Key, ptr %20, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !116
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %29

26:                                               ; preds = %37, %29
  %27 = load ptr, ptr %30, align 8, !tbaa !116
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29, !llvm.loop !290

29:                                               ; preds = %22, %26
  %30 = phi ptr [ %27, %26 ], [ %24, %22 ]
  %31 = getelementptr inbounds %struct.KeyBlock, ptr %30, i64 0, i32 8
  %32 = load i32, ptr %31, align 8, !tbaa !285
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %26, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.KeyBlock, ptr %30, i64 0, i32 10
  %36 = load ptr, ptr %35, align 8, !tbaa !287
  br label %37

37:                                               ; preds = %34, %37
  %38 = phi ptr [ %41, %37 ], [ %36, %34 ]
  %39 = phi i32 [ %40, %37 ], [ %32, %34 ]
  %40 = add nsw i32 %39, -1
  tail call fastcc void @add_v3_v3(ptr noundef %38, ptr noundef %1) #21
  %41 = getelementptr inbounds float, ptr %38, i64 3
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %26, label %37, !llvm.loop !291

43:                                               ; preds = %26, %22, %18, %16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !292 {
  %3 = load float, ptr %1, align 4, !tbaa !131
  %4 = load float, ptr %0, align 4, !tbaa !131
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !131
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !131
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !131
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !131
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !131
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !131
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !131
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_ensure_navmesh(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %3 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %2, i32 noundef 24) #22
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %57

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %7 = load i32, ptr %6, align 8, !tbaa !45
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !116
  %9 = sext i32 %7 to i64
  %10 = shl nsw i64 %9, 2
  %11 = tail call ptr %8(i64 noundef %10, ptr noundef nonnull @__func__.BKE_mesh_ensure_navmesh) #22
  %12 = icmp sgt i32 %7, 0
  br i1 %12, label %13, label %55

13:                                               ; preds = %5
  %14 = zext nneg i32 %7 to i64
  %15 = add nuw nsw i64 %14, 3
  %16 = and i64 %15, 4294967292
  %17 = add nsw i64 %14, -1
  %18 = insertelement <4 x i64> poison, i64 %17, i64 0
  %19 = shufflevector <4 x i64> %18, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %20

20:                                               ; preds = %51, %13
  %21 = phi i64 [ 0, %13 ], [ %52, %51 ]
  %22 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %13 ], [ %53, %51 ]
  %23 = icmp ule <4 x i64> %22, %19
  %24 = add nuw nsw <4 x i64> %22, <i64 1, i64 1, i64 1, i64 1>
  %25 = extractelement <4 x i1> %23, i64 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = getelementptr inbounds i32, ptr %11, i64 %21
  %28 = bitcast <4 x i64> %24 to <8 x i32>
  %29 = extractelement <8 x i32> %28, i64 0
  store i32 %29, ptr %27, align 4, !tbaa !153
  br label %30

30:                                               ; preds = %26, %20
  %31 = extractelement <4 x i1> %23, i64 1
  br i1 %31, label %32, label %37

32:                                               ; preds = %30
  %33 = or disjoint i64 %21, 1
  %34 = getelementptr inbounds i32, ptr %11, i64 %33
  %35 = bitcast <4 x i64> %24 to <8 x i32>
  %36 = extractelement <8 x i32> %35, i64 2
  store i32 %36, ptr %34, align 4, !tbaa !153
  br label %37

37:                                               ; preds = %32, %30
  %38 = extractelement <4 x i1> %23, i64 2
  br i1 %38, label %39, label %44

39:                                               ; preds = %37
  %40 = or disjoint i64 %21, 2
  %41 = getelementptr inbounds i32, ptr %11, i64 %40
  %42 = bitcast <4 x i64> %24 to <8 x i32>
  %43 = extractelement <8 x i32> %42, i64 4
  store i32 %43, ptr %41, align 4, !tbaa !153
  br label %44

44:                                               ; preds = %39, %37
  %45 = extractelement <4 x i1> %23, i64 3
  br i1 %45, label %46, label %51

46:                                               ; preds = %44
  %47 = or disjoint i64 %21, 3
  %48 = getelementptr inbounds i32, ptr %11, i64 %47
  %49 = bitcast <4 x i64> %24 to <8 x i32>
  %50 = extractelement <8 x i32> %49, i64 6
  store i32 %50, ptr %48, align 4, !tbaa !153
  br label %51

51:                                               ; preds = %46, %44
  %52 = add i64 %21, 4
  %53 = add <4 x i64> %22, <i64 4, i64 4, i64 4, i64 4>
  %54 = icmp eq i64 %52, %16
  br i1 %54, label %55, label %20, !llvm.loop !293

55:                                               ; preds = %51, %5
  %56 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %2, i32 noundef 24, i32 noundef 0, ptr noundef %11, i32 noundef %7, ptr noundef nonnull @.str.18) #22
  br label %57

57:                                               ; preds = %55, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_tessface_calc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %8 = load i32, ptr %7, align 8, !tbaa !127
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %10 = load i32, ptr %9, align 4, !tbaa !46
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %12 = load i32, ptr %11, align 8, !tbaa !45
  %13 = tail call i32 @BKE_mesh_recalc_tessellation(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i8 noundef zeroext 0) #22
  store i32 %13, ptr %7, align 8, !tbaa !127
  tail call void @BKE_mesh_update_customdata_pointers(ptr noundef %0, i8 noundef zeroext 1) #21
  ret void
}

; Function Attrs: optsize
declare i32 @BKE_mesh_recalc_tessellation(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_tessface_ensure(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %3 = load i32, ptr %2, align 8, !tbaa !45
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %7 = load i32, ptr %6, align 8, !tbaa !127
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @BKE_mesh_tessface_calc(ptr noundef nonnull %0) #21
  br label %10

10:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_tessface_clear(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @mesh_tessface_clear_intern(ptr noundef %0, i32 noundef 1) #21
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_do_versions_cd_flag_init(ptr nocapture noundef %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 41
  %3 = load i8, ptr %2, align 8, !tbaa !296
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %61

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %11 = load ptr, ptr %10, align 8, !tbaa !103
  br label %12

12:                                               ; preds = %9, %19
  %13 = phi i32 [ %21, %19 ], [ 0, %9 ]
  %14 = phi ptr [ %20, %19 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.MVert, ptr %14, i64 0, i32 3
  %16 = load i8, ptr %15, align 1, !tbaa !297
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store i8 1, ptr %2, align 8, !tbaa !296
  br label %23

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.MVert, ptr %14, i64 1
  %21 = add nuw nsw i32 %13, 1
  %22 = icmp eq i32 %21, %7
  br i1 %22, label %23, label %12, !llvm.loop !299

23:                                               ; preds = %19, %5, %18
  %24 = phi i8 [ 0, %5 ], [ 1, %18 ], [ 0, %19 ]
  %25 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %26 = load i32, ptr %25, align 4, !tbaa !44
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %30 = load ptr, ptr %29, align 8, !tbaa !105
  br label %31

31:                                               ; preds = %57, %28
  %32 = phi i8 [ %24, %28 ], [ %58, %57 ]
  %33 = phi i32 [ 0, %28 ], [ %59, %57 ]
  %34 = phi ptr [ %30, %28 ], [ %60, %57 ]
  %35 = getelementptr inbounds %struct.MEdge, ptr %34, i64 0, i32 3
  %36 = load i8, ptr %35, align 1, !tbaa !229
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  %39 = or i8 %32, 2
  store i8 %39, ptr %2, align 8, !tbaa !296
  %40 = and i8 %32, 4
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %38, %31
  %43 = phi i8 [ %39, %38 ], [ %32, %31 ]
  %44 = getelementptr inbounds %struct.MEdge, ptr %34, i64 0, i32 2
  %45 = load i8, ptr %44, align 4, !tbaa !230
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  %48 = or i8 %43, 4
  store i8 %48, ptr %2, align 8, !tbaa !296
  %49 = and i8 %43, 2
  %50 = icmp eq i8 %49, 0
  %51 = add nuw nsw i32 %33, 1
  %52 = icmp slt i32 %51, %26
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %57, label %61

54:                                               ; preds = %42
  %55 = add nuw nsw i32 %33, 1
  %56 = icmp slt i32 %55, %26
  br i1 %56, label %57, label %61

57:                                               ; preds = %54, %47
  %58 = phi i8 [ %43, %54 ], [ %48, %47 ]
  %59 = phi i32 [ %55, %54 ], [ %51, %47 ]
  %60 = getelementptr inbounds %struct.MEdge, ptr %34, i64 1
  br label %31, !llvm.loop !300

61:                                               ; preds = %47, %38, %54, %23, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_mselect_clear(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !130
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !116
  tail call void %6(ptr noundef nonnull %3) #22
  store ptr null, ptr %2, align 8, !tbaa !130
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 29
  store i32 0, ptr %8, align 4, !tbaa !301
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_mselect_validate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 29
  %3 = load i32, ptr %2, align 4, !tbaa !301
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %75, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !130
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !116
  %9 = sext i32 %3 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call ptr %8(i64 noundef %10, ptr noundef nonnull @.str.19) #22
  %12 = load i32, ptr %2, align 4, !tbaa !301
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !116
  tail call void %15(ptr noundef %7) #22
  br label %62

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %18 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %19 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  br label %20

20:                                               ; preds = %16, %53
  %21 = phi i64 [ 0, %16 ], [ %55, %53 ]
  %22 = phi i32 [ 0, %16 ], [ %54, %53 ]
  %23 = getelementptr inbounds %struct.MSelect, ptr %7, i64 %21
  %24 = load i32, ptr %23, align 4, !tbaa !302
  %25 = getelementptr inbounds %struct.MSelect, ptr %7, i64 %21, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !304
  switch i32 %26, label %53 [
    i32 0, label %27
    i32 1, label %34
    i32 2, label %41
  ]

27:                                               ; preds = %20
  %28 = load ptr, ptr %19, align 8, !tbaa !103
  %29 = sext i32 %24 to i64
  %30 = getelementptr inbounds %struct.MVert, ptr %28, i64 %29, i32 2
  %31 = load i8, ptr %30, align 2, !tbaa !305
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %53, label %48

34:                                               ; preds = %20
  %35 = load ptr, ptr %18, align 8, !tbaa !105
  %36 = sext i32 %24 to i64
  %37 = getelementptr inbounds %struct.MEdge, ptr %35, i64 %36, i32 4
  %38 = load i16, ptr %37, align 2, !tbaa !211
  %39 = and i16 %38, 1
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %53, label %48

41:                                               ; preds = %20
  %42 = load ptr, ptr %17, align 8, !tbaa !109
  %43 = sext i32 %24 to i64
  %44 = getelementptr inbounds %struct.MPoly, ptr %42, i64 %43, i32 3
  %45 = load i8, ptr %44, align 2, !tbaa !198
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %41, %34, %27
  %49 = sext i32 %22 to i64
  %50 = getelementptr inbounds %struct.MSelect, ptr %11, i64 %49
  %51 = load i64, ptr %23, align 4
  store i64 %51, ptr %50, align 4
  %52 = add nsw i32 %22, 1
  br label %53

53:                                               ; preds = %48, %20, %41, %34, %27
  %54 = phi i32 [ %22, %20 ], [ %22, %41 ], [ %22, %34 ], [ %22, %27 ], [ %52, %48 ]
  %55 = add nuw nsw i64 %21, 1
  %56 = load i32, ptr %2, align 4, !tbaa !301
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %55, %57
  br i1 %58, label %20, label %59, !llvm.loop !306

59:                                               ; preds = %53
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !116
  tail call void %60(ptr noundef nonnull %7) #22
  %61 = icmp eq i32 %54, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %14, %59
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !116
  tail call void %63(ptr noundef %11) #22
  br label %72

64:                                               ; preds = %59
  %65 = load i32, ptr %2, align 4, !tbaa !301
  %66 = icmp eq i32 %54, %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !116
  %69 = sext i32 %54 to i64
  %70 = shl nsw i64 %69, 3
  %71 = tail call ptr %68(ptr noundef %11, i64 noundef %70, ptr noundef nonnull @__func__.BKE_mesh_mselect_validate) #22
  br label %72

72:                                               ; preds = %64, %67, %62
  %73 = phi i32 [ 0, %62 ], [ %54, %67 ], [ %54, %64 ]
  %74 = phi ptr [ null, %62 ], [ %71, %67 ], [ %11, %64 ]
  store i32 %73, ptr %2, align 4, !tbaa !301
  store ptr %74, ptr %6, align 8, !tbaa !130
  br label %75

75:                                               ; preds = %1, %72
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_mesh_mselect_find(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 29
  %5 = load i32, ptr %4, align 4, !tbaa !301
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !130
  %10 = zext nneg i32 %5 to i64
  br label %11

11:                                               ; preds = %7, %20
  %12 = phi i64 [ 0, %7 ], [ %21, %20 ]
  %13 = getelementptr inbounds %struct.MSelect, ptr %9, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !302
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.MSelect, ptr %9, i64 %12, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !304
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %23, label %20

20:                                               ; preds = %11, %16
  %21 = add nuw nsw i64 %12, 1
  %22 = icmp eq i64 %21, %10
  br i1 %22, label %25, label %11, !llvm.loop !307

23:                                               ; preds = %16
  %24 = trunc i64 %12 to i32
  br label %25

25:                                               ; preds = %20, %23, %3
  %26 = phi i32 [ -1, %3 ], [ %24, %23 ], [ -1, %20 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_mesh_mselect_active_get(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 29
  %4 = load i32, ptr %3, align 4, !tbaa !301
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !130
  %9 = sext i32 %4 to i64
  %10 = getelementptr %struct.MSelect, ptr %8, i64 %9
  %11 = getelementptr %struct.MSelect, ptr %10, i64 -1, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !304
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = getelementptr %struct.MSelect, ptr %10, i64 -1
  %16 = load i32, ptr %15, align 4, !tbaa !302
  br label %17

17:                                               ; preds = %2, %6, %14
  %18 = phi i32 [ %16, %14 ], [ -1, %6 ], [ -1, %2 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_mselect_active_set(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @BKE_mesh_mselect_find(ptr noundef %0, i32 noundef %1, i32 noundef %2) #21
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %21

6:                                                ; preds = %3
  %7 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !116
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !130
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 29
  %11 = load i32, ptr %10, align 4, !tbaa !301
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  %15 = tail call ptr %7(ptr noundef %9, i64 noundef %14, ptr noundef nonnull @__func__.BKE_mesh_mselect_active_set) #22
  store ptr %15, ptr %8, align 8, !tbaa !130
  %16 = load i32, ptr %10, align 4, !tbaa !301
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.MSelect, ptr %15, i64 %17
  store i32 %1, ptr %18, align 4, !tbaa !302
  %19 = getelementptr inbounds %struct.MSelect, ptr %15, i64 %17, i32 1
  store i32 %2, ptr %19, align 4, !tbaa !304
  %20 = add nsw i32 %16, 1
  store i32 %20, ptr %10, align 4, !tbaa !301
  br label %41

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 29
  %23 = load i32, ptr %22, align 4, !tbaa !301
  %24 = add nsw i32 %23, -1
  %25 = icmp eq i32 %4, %24
  br i1 %25, label %41, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !130
  %29 = sext i32 %4 to i64
  %30 = getelementptr inbounds %struct.MSelect, ptr %28, i64 %29
  %31 = load i64, ptr %30, align 4
  %32 = sext i32 %23 to i64
  %33 = getelementptr %struct.MSelect, ptr %28, i64 %32
  %34 = getelementptr %struct.MSelect, ptr %33, i64 -1
  %35 = load i64, ptr %34, align 4
  store i64 %35, ptr %30, align 4
  %36 = load ptr, ptr %27, align 8, !tbaa !130
  %37 = load i32, ptr %22, align 4, !tbaa !301
  %38 = sext i32 %37 to i64
  %39 = getelementptr %struct.MSelect, ptr %36, i64 %38
  %40 = getelementptr %struct.MSelect, ptr %39, i64 -1
  store i64 %31, ptr %40, align 4
  br label %41

41:                                               ; preds = %21, %26, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mesh_new_from_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.ListBase, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.ListBase, align 8
  %11 = alloca %struct.EvaluationContext, align 4
  %12 = alloca %struct.ListBase, align 8
  %13 = icmp eq i32 %4, 2
  %14 = icmp eq i32 %3, 0
  %15 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !168
  switch i16 %16, label %184 [
    i16 4, label %17
    i16 2, label %17
    i16 3, label %17
    i16 5, label %49
    i16 1, label %65
  ]

17:                                               ; preds = %7, %7, %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #23
  store ptr null, ptr %9, align 8, !tbaa !116
  %18 = tail call ptr @BKE_object_copy_ex(ptr noundef %0, ptr noundef nonnull %2, i8 noundef zeroext 1) #22
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !159
  %21 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !308
  %23 = add nsw i32 %22, -1
  store i32 %23, ptr %21, align 4, !tbaa !308
  br i1 %14, label %24, label %25

24:                                               ; preds = %17
  tail call void @BKE_object_free_modifiers(ptr noundef nonnull %18) #22
  br label %25

25:                                               ; preds = %24, %17
  %26 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !159
  %28 = tail call ptr @BKE_curve_copy(ptr noundef %27) #22
  store ptr %28, ptr %19, align 8, !tbaa !159
  %29 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 53
  %30 = load ptr, ptr %29, align 8, !tbaa !309
  %31 = getelementptr inbounds %struct.Curve, ptr %28, i64 0, i32 53
  store ptr %30, ptr %31, align 8, !tbaa !309
  %32 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !310
  %34 = getelementptr inbounds %struct.Curve, ptr %28, i64 0, i32 4
  store ptr %33, ptr %34, align 8, !tbaa !310
  %35 = zext i1 %13 to i8
  call void @BKE_displist_make_curveTypes_forRender(ptr noundef %1, ptr noundef nonnull %18, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext 0, i8 noundef zeroext %35) #22
  store ptr null, ptr %31, align 8, !tbaa !309
  store ptr null, ptr %34, align 8, !tbaa !310
  %36 = load ptr, ptr %9, align 8, !tbaa !116
  %37 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 120
  store ptr %36, ptr %37, align 8, !tbaa !235
  %38 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 23
  %39 = load i32, ptr %38, align 4, !tbaa !204
  %40 = trunc i32 %39 to i8
  %41 = lshr i8 %40, 5
  %42 = and i8 %41, 1
  call void @BKE_mesh_from_nurbs_displist(ptr noundef nonnull %18, ptr noundef nonnull %8, i8 noundef zeroext %42) #21
  %43 = load ptr, ptr %19, align 8, !tbaa !159
  call void @BKE_displist_free(ptr noundef nonnull %8) #22
  %44 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 3
  %45 = load i16, ptr %44, align 8, !tbaa !168
  %46 = icmp eq i16 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %25
  call void @BKE_mesh_texspace_copy_from_object(ptr noundef %43, ptr noundef nonnull %2) #21
  call void @BKE_libblock_free_us(ptr noundef %0, ptr noundef nonnull %18) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #23
  br label %89

48:                                               ; preds = %25
  call void @BKE_libblock_free_us(ptr noundef %0, ptr noundef nonnull %18) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #23
  br label %184

49:                                               ; preds = %7
  %50 = tail call ptr @BKE_mball_basis_find(ptr noundef %1, ptr noundef nonnull %2) #22
  %51 = icmp eq ptr %50, %2
  br i1 %51, label %52, label %184

52:                                               ; preds = %49
  %53 = tail call ptr @BKE_mesh_add(ptr noundef %0, ptr noundef nonnull @.str.12) #21
  %54 = getelementptr inbounds %struct.ID, ptr %53, i64 0, i32 6
  %55 = load i32, ptr %54, align 4, !tbaa !158
  %56 = add nsw i32 %55, -1
  store i32 %56, ptr %54, align 4, !tbaa !158
  br i1 %13, label %57, label %58

57:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #23
  store i32 2, ptr %11, align 4, !tbaa !311
  call void @BKE_displist_make_mball_forRender(ptr noundef nonnull %11, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %10) #22
  call void @BKE_mesh_from_metaball(ptr noundef nonnull %10, ptr noundef nonnull %53) #21
  call void @BKE_displist_free(ptr noundef nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #23
  br label %64

58:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %59 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 118
  %60 = load ptr, ptr %59, align 8, !tbaa !201
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %60, i64 16, i1 false), !tbaa.struct !202
  br label %63

63:                                               ; preds = %62, %58
  call void @BKE_mesh_from_metaball(ptr noundef nonnull %12, ptr noundef nonnull %53) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #23
  br label %64

64:                                               ; preds = %57, %63
  call void @BKE_mesh_texspace_copy_from_object(ptr noundef nonnull %53, ptr noundef nonnull %2) #21
  br label %89

65:                                               ; preds = %7
  br i1 %14, label %66, label %70

66:                                               ; preds = %65
  %67 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %68 = load ptr, ptr %67, align 8, !tbaa !159
  %69 = tail call ptr @BKE_mesh_copy_ex(ptr noundef %0, ptr noundef %68) #21
  br label %84

70:                                               ; preds = %65
  %71 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !136
  %72 = icmp eq i32 %6, 0
  %73 = or i64 %71, 16384
  %74 = select i1 %72, i64 %71, i64 %73
  br i1 %13, label %75, label %77

75:                                               ; preds = %70
  %76 = tail call ptr @mesh_create_derived_render(ptr noundef %1, ptr noundef nonnull %2, i64 noundef %74) #22
  br label %79

77:                                               ; preds = %70
  %78 = tail call ptr @mesh_create_derived_view(ptr noundef %1, ptr noundef nonnull %2, i64 noundef %74) #22
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi ptr [ %76, %75 ], [ %78, %77 ]
  %81 = tail call ptr @BKE_mesh_add(ptr noundef %0, ptr noundef nonnull @.str.12) #21
  tail call void @DM_to_mesh(ptr noundef %80, ptr noundef %81, ptr noundef nonnull %2, i64 noundef %74) #22
  %82 = getelementptr inbounds %struct.DerivedMesh, ptr %80, i64 0, i32 95
  %83 = load ptr, ptr %82, align 8, !tbaa !272
  tail call void %83(ptr noundef %80) #22
  br label %84

84:                                               ; preds = %79, %66
  %85 = phi ptr [ %69, %66 ], [ %81, %79 ]
  %86 = getelementptr inbounds %struct.ID, ptr %85, i64 0, i32 6
  %87 = load i32, ptr %86, align 4, !tbaa !158
  %88 = add nsw i32 %87, -1
  store i32 %88, ptr %86, align 4, !tbaa !158
  br label %89

89:                                               ; preds = %64, %47, %84
  %90 = phi ptr [ null, %84 ], [ %20, %47 ], [ null, %64 ]
  %91 = phi ptr [ %85, %84 ], [ %43, %47 ], [ %53, %64 ]
  %92 = load i16, ptr %15, align 8, !tbaa !168
  switch i16 %92, label %180 [
    i16 3, label %93
    i16 4, label %93
    i16 2, label %93
    i16 1, label %131
  ]

93:                                               ; preds = %89, %89, %89
  %94 = getelementptr inbounds %struct.Curve, ptr %90, i64 0, i32 22
  %95 = load i16, ptr %94, align 2, !tbaa !236
  %96 = getelementptr inbounds %struct.Mesh, ptr %91, i64 0, i32 47
  store i16 %95, ptr %96, align 2, !tbaa !115
  %97 = getelementptr inbounds %struct.Curve, ptr %90, i64 0, i32 10
  %98 = load ptr, ptr %97, align 8, !tbaa !237
  %99 = icmp ne ptr %98, null
  %100 = icmp sgt i16 %95, 0
  %101 = select i1 %99, i1 %100, i1 false
  br i1 %101, label %102, label %180

102:                                              ; preds = %93
  %103 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 30
  %104 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 29
  %105 = getelementptr inbounds %struct.Mesh, ptr %91, i64 0, i32 5
  %106 = zext nneg i16 %95 to i64
  %107 = load ptr, ptr %105, align 8, !tbaa !114
  br label %108

108:                                              ; preds = %102, %129
  %109 = phi ptr [ %107, %102 ], [ %121, %129 ]
  %110 = phi i64 [ %106, %102 ], [ %111, %129 ]
  %111 = add nsw i64 %110, -1
  %112 = load ptr, ptr %103, align 8, !tbaa !313
  %113 = getelementptr inbounds i8, ptr %112, i64 %111
  %114 = load i8, ptr %113, align 1, !tbaa !314
  %115 = icmp eq i8 %114, 0
  %116 = select i1 %115, ptr %97, ptr %104
  %117 = load ptr, ptr %116, align 8, !tbaa !116
  %118 = getelementptr inbounds ptr, ptr %117, i64 %111
  %119 = load ptr, ptr %118, align 8, !tbaa !116
  %120 = getelementptr inbounds ptr, ptr %109, i64 %111
  store ptr %119, ptr %120, align 8, !tbaa !116
  %121 = load ptr, ptr %105, align 8, !tbaa !114
  %122 = getelementptr inbounds ptr, ptr %121, i64 %111
  %123 = load ptr, ptr %122, align 8, !tbaa !116
  %124 = icmp eq ptr %123, null
  br i1 %124, label %129, label %125

125:                                              ; preds = %108
  %126 = getelementptr inbounds %struct.ID, ptr %123, i64 0, i32 6
  %127 = load i32, ptr %126, align 4, !tbaa !117
  %128 = add nsw i32 %127, 1
  store i32 %128, ptr %126, align 4, !tbaa !117
  br label %129

129:                                              ; preds = %125, %108
  %130 = icmp ugt i64 %110, 1
  br i1 %130, label %108, label %180, !llvm.loop !315

131:                                              ; preds = %89
  br i1 %14, label %180, label %132

132:                                              ; preds = %131
  %133 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %134 = load ptr, ptr %133, align 8, !tbaa !159
  %135 = getelementptr inbounds %struct.Mesh, ptr %134, i64 0, i32 38
  %136 = load i16, ptr %135, align 2, !tbaa !316
  %137 = getelementptr inbounds %struct.Mesh, ptr %91, i64 0, i32 38
  store i16 %136, ptr %137, align 2, !tbaa !316
  %138 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !116
  %139 = getelementptr inbounds %struct.Mesh, ptr %134, i64 0, i32 5
  %140 = load ptr, ptr %139, align 8, !tbaa !114
  %141 = call ptr %138(ptr noundef %140) #22
  %142 = getelementptr inbounds %struct.Mesh, ptr %91, i64 0, i32 5
  store ptr %141, ptr %142, align 8, !tbaa !114
  %143 = getelementptr inbounds %struct.Mesh, ptr %134, i64 0, i32 47
  %144 = load i16, ptr %143, align 2, !tbaa !115
  %145 = getelementptr inbounds %struct.Mesh, ptr %91, i64 0, i32 47
  store i16 %144, ptr %145, align 2, !tbaa !115
  %146 = getelementptr inbounds %struct.Mesh, ptr %134, i64 0, i32 39
  %147 = load float, ptr %146, align 8, !tbaa !132
  %148 = getelementptr inbounds %struct.Mesh, ptr %91, i64 0, i32 39
  store float %147, ptr %148, align 8, !tbaa !132
  %149 = load ptr, ptr %139, align 8, !tbaa !114
  %150 = icmp ne ptr %149, null
  %151 = icmp sgt i16 %144, 0
  %152 = select i1 %150, i1 %151, i1 false
  br i1 %152, label %153, label %180

153:                                              ; preds = %132
  %154 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 30
  %155 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 29
  %156 = zext nneg i16 %144 to i64
  br label %157

157:                                              ; preds = %153, %178
  %158 = phi ptr [ %141, %153 ], [ %170, %178 ]
  %159 = phi i64 [ %156, %153 ], [ %160, %178 ]
  %160 = add nsw i64 %159, -1
  %161 = load ptr, ptr %154, align 8, !tbaa !313
  %162 = getelementptr inbounds i8, ptr %161, i64 %160
  %163 = load i8, ptr %162, align 1, !tbaa !314
  %164 = icmp eq i8 %163, 0
  %165 = select i1 %164, ptr %139, ptr %155
  %166 = load ptr, ptr %165, align 8, !tbaa !116
  %167 = getelementptr inbounds ptr, ptr %166, i64 %160
  %168 = load ptr, ptr %167, align 8, !tbaa !116
  %169 = getelementptr inbounds ptr, ptr %158, i64 %160
  store ptr %168, ptr %169, align 8, !tbaa !116
  %170 = load ptr, ptr %142, align 8, !tbaa !114
  %171 = getelementptr inbounds ptr, ptr %170, i64 %160
  %172 = load ptr, ptr %171, align 8, !tbaa !116
  %173 = icmp eq ptr %172, null
  br i1 %173, label %178, label %174

174:                                              ; preds = %157
  %175 = getelementptr inbounds %struct.ID, ptr %172, i64 0, i32 6
  %176 = load i32, ptr %175, align 4, !tbaa !117
  %177 = add nsw i32 %176, 1
  store i32 %177, ptr %175, align 4, !tbaa !117
  br label %178

178:                                              ; preds = %174, %157
  %179 = icmp ugt i64 %159, 1
  br i1 %179, label %157, label %180, !llvm.loop !317

180:                                              ; preds = %178, %129, %132, %131, %93, %89
  %181 = icmp eq i32 %5, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %180
  call void @BKE_mesh_tessface_ensure(ptr noundef %91) #21
  br label %183

183:                                              ; preds = %182, %180
  call void @test_object_materials(ptr noundef %0, ptr noundef %91) #22
  br label %184

184:                                              ; preds = %49, %48, %7, %183
  %185 = phi ptr [ %91, %183 ], [ null, %48 ], [ null, %7 ], [ null, %49 ]
  ret ptr %185
}

; Function Attrs: optsize
declare ptr @BKE_object_copy_ex(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_object_free_modifiers(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_curve_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_displist_make_curveTypes_forRender(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_displist_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_libblock_free_us(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_mball_basis_find(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_displist_make_mball_forRender(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @mesh_create_derived_render(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @mesh_create_derived_view(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !318 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #21
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  ret float %4
}

; Function Attrs: optsize
declare ptr @BLI_edgehash_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_edgehash_insert(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_edgehash_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_edgehash_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !319 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #21
  %4 = call fastcc float @dot_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  ret float %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !320 {
  %4 = load float, ptr %1, align 4, !tbaa !131
  %5 = load float, ptr %2, align 4, !tbaa !131
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !131
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !131
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !131
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !131
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !131
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !131
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !321 {
  %3 = load float, ptr %0, align 4, !tbaa !131
  %4 = load float, ptr %1, align 4, !tbaa !131
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !131
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !131
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !131
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !131
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !322 {
  %4 = load float, ptr %1, align 4, !tbaa !131
  %5 = load float, ptr %2, align 4, !tbaa !131
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !131
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !131
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !131
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !323 {
  %3 = load float, ptr %0, align 4, !tbaa !131
  %4 = load float, ptr %1, align 4, !tbaa !131
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !131
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !131
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !324 {
  %3 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 1, ptr %3, align 4, !tbaa !325
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %4, align 8, !tbaa !326
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %5, align 8, !tbaa !101
  %6 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !327
  store ptr %7, ptr %0, align 8, !tbaa !314
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #3

; Function Attrs: optsize
declare void @BKE_editmesh_update_linked_customdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mesh_ensure_tessellation_customdata(ptr noundef %0) unnamed_addr #0 !PGOFuncName !329 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %3 = load i32, ptr %2, align 8, !tbaa !127
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %7 = load i32, ptr %6, align 8, !tbaa !45
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %11 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %10, i32 noundef 15) #22
  %12 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %13 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %12, i32 noundef 17) #22
  %14 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %15 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %14, i32 noundef 5) #22
  %16 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %14, i32 noundef 6) #22
  %17 = icmp eq i32 %15, %11
  %18 = icmp eq i32 %16, %13
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %27, label %20

20:                                               ; preds = %9
  tail call void @BKE_mesh_tessface_clear(ptr noundef nonnull %0) #21
  %21 = load i32, ptr %2, align 8, !tbaa !127
  tail call void @CustomData_from_bmeshpoly(ptr noundef nonnull %14, ptr noundef nonnull %10, ptr noundef nonnull %12, i32 noundef %21) #22
  %22 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !330
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef nonnull @__func__.mesh_ensure_tessellation_customdata, i32 noundef %15, i32 noundef %11, i32 noundef %16, i32 noundef %13) #21
  br label %27

27:                                               ; preds = %25, %20, %9, %5
  ret void
}

; Function Attrs: optsize
declare void @CustomData_bmesh_update_active_layers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CustomData_from_bmeshpoly(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: optsize
declare void @extern_local_matarar(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !331 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: optsize
declare void @BKE_mesh_poly_edgehash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_edgehash_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_edgehashIterator_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_edgehashIterator_isDone(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !332 {
  %2 = getelementptr inbounds %struct.EdgeHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !333
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @BLI_edgehashIterator_getKey(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #17 !PGOFuncName !335 {
  %4 = getelementptr inbounds %struct.EdgeHashIterator, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !333
  %6 = getelementptr inbounds %struct._eh_Entry, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !336
  store i32 %7, ptr %1, align 4, !tbaa !153
  %8 = getelementptr inbounds %struct._eh_Entry, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !338
  store i32 %9, ptr %2, align 4, !tbaa !153
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @BLI_edgehashIterator_setValue(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #18 !PGOFuncName !339 {
  %3 = getelementptr inbounds %struct.EdgeHashIterator, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !333
  %5 = getelementptr inbounds %struct._eh_Entry, ptr %4, i64 0, i32 3
  store ptr %1, ptr %5, align 8, !tbaa !340
  ret void
}

; Function Attrs: optsize
declare void @BLI_edgehashIterator_step(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_edgehashIterator_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #20

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { optsize }
attributes #22 = { nounwind optsize }
attributes #23 = { nounwind }
attributes #24 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!35, !41, i64 1280}
!35 = !{!"Mesh", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !42, i64 280, !42, i64 480, !42, i64 680, !42, i64 880, !42, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !43, i64 1352, !41, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !40, i64 1366, !37, i64 1368}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!43 = !{!"float", !38, i64 0}
!44 = !{!35, !41, i64 1284}
!45 = !{!35, !41, i64 1296}
!46 = !{!35, !41, i64 1300}
!47 = !{!"mesh.c:customdata_compare"}
!48 = !{!42, !41, i64 172}
!49 = !{!42, !37, i64 0}
!50 = !{!51, !41, i64 0}
!51 = !{!"CustomDataLayer", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = distinct !{!54, !53}
!55 = distinct !{!55, !53}
!56 = distinct !{!56, !53}
!57 = !{!51, !37, i64 96}
!58 = distinct !{!58, !53}
!59 = !{!60, !41, i64 0}
!60 = !{!"MEdge", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 9, !40, i64 10}
!61 = !{!60, !41, i64 4}
!62 = distinct !{!62, !53}
!63 = distinct !{!63, !53}
!64 = !{!65, !41, i64 4}
!65 = !{!"MPoly", !41, i64 0, !41, i64 4, !40, i64 8, !38, i64 10, !38, i64 11}
!66 = !{!35, !37, i64 184}
!67 = !{!65, !41, i64 0}
!68 = !{!69, !41, i64 0}
!69 = !{!"MLoop", !41, i64 0, !41, i64 4}
!70 = distinct !{!70, !53}
!71 = distinct !{!71, !53}
!72 = distinct !{!72, !53}
!73 = distinct !{!73, !53}
!74 = !{!75, !38, i64 0}
!75 = !{!"MLoopCol", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3}
!76 = !{!75, !38, i64 1}
!77 = !{!75, !38, i64 2}
!78 = !{!75, !38, i64 3}
!79 = distinct !{!79, !53}
!80 = !{!81, !41, i64 8}
!81 = !{!"MDeformVert", !37, i64 0, !41, i64 8, !41, i64 12}
!82 = !{!81, !37, i64 0}
!83 = !{!84, !41, i64 0}
!84 = !{!"MDeformWeight", !41, i64 0, !43, i64 4}
!85 = !{!84, !43, i64 4}
!86 = distinct !{!86, !53}
!87 = distinct !{!87, !53}
!88 = distinct !{!88, !53}
!89 = !{!"mesh.c:cmpcode_to_str"}
!90 = !{!35, !37, i64 272}
!91 = !{!92, !37, i64 0}
!92 = !{!"BMEditMesh", !37, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !41, i64 32, !37, i64 40, !37, i64 48, !93, i64 56, !37, i64 64, !41, i64 72, !37, i64 80, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !41, i64 104}
!93 = !{!"long", !38, i64 0}
!94 = !{!95, !37, i64 0}
!95 = !{!"BMVert", !96, i64 0, !37, i64 16, !38, i64 24, !38, i64 36, !37, i64 48}
!96 = !{!"BMHeader", !37, i64 0, !41, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!97 = !{!98, !41, i64 12}
!98 = !{!"MVertSkin", !38, i64 0, !41, i64 12}
!99 = !{!"mesh.c:BM_iter_new"}
!100 = !{!"mesh.c:BM_iter_step"}
!101 = !{!102, !37, i64 48}
!102 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !41, i64 56, !38, i64 60}
!103 = !{!35, !37, i64 232}
!104 = !{!35, !37, i64 248}
!105 = !{!35, !37, i64 240}
!106 = !{!35, !37, i64 208}
!107 = !{!35, !37, i64 256}
!108 = !{!35, !37, i64 216}
!109 = !{!35, !37, i64 168}
!110 = !{!35, !37, i64 176}
!111 = !{!35, !37, i64 200}
!112 = !{!35, !37, i64 192}
!113 = !{!"mesh.c:mesh_update_linked_customdata"}
!114 = !{!35, !37, i64 152}
!115 = !{!35, !40, i64 1366}
!116 = !{!37, !37, i64 0}
!117 = !{!118, !41, i64 100}
!118 = !{!"Material", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !43, i64 132, !43, i64 136, !43, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !43, i64 208, !43, i64 212, !43, i64 216, !43, i64 220, !119, i64 224, !120, i64 312, !43, i64 328, !43, i64 332, !43, i64 336, !43, i64 340, !43, i64 344, !43, i64 348, !43, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !38, i64 362, !38, i64 363, !43, i64 364, !43, i64 368, !40, i64 372, !40, i64 374, !43, i64 376, !43, i64 380, !43, i64 384, !43, i64 388, !40, i64 392, !40, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !43, i64 420, !43, i64 424, !43, i64 428, !43, i64 432, !43, i64 436, !43, i64 440, !43, i64 444, !43, i64 448, !43, i64 452, !43, i64 456, !38, i64 460, !43, i64 524, !43, i64 528, !43, i64 532, !41, i64 536, !38, i64 540, !38, i64 541, !38, i64 542, !38, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !38, i64 550, !38, i64 551, !40, i64 552, !40, i64 554, !43, i64 556, !43, i64 560, !38, i64 564, !43, i64 580, !43, i64 584, !40, i64 588, !40, i64 590, !37, i64 592, !37, i64 600, !38, i64 608, !38, i64 609, !38, i64 610, !38, i64 611, !40, i64 612, !40, i64 614, !43, i64 616, !43, i64 620, !38, i64 624, !37, i64 768, !37, i64 776, !37, i64 784, !37, i64 792, !43, i64 800, !43, i64 804, !43, i64 808, !43, i64 812, !43, i64 816, !40, i64 820, !40, i64 822, !38, i64 824, !38, i64 836, !43, i64 848, !43, i64 852, !43, i64 856, !43, i64 860, !43, i64 864, !43, i64 868, !43, i64 872, !40, i64 876, !40, i64 878, !41, i64 880, !40, i64 884, !40, i64 886, !38, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !38, i64 914, !37, i64 920, !121, i64 928}
!119 = !{!"VolumeSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !38, i64 16, !38, i64 28, !38, i64 40, !43, i64 52, !43, i64 56, !43, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !43, i64 72, !43, i64 76, !43, i64 80, !43, i64 84}
!120 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!121 = !{!"ListBase", !37, i64 0, !37, i64 8}
!122 = distinct !{!122, !53}
!123 = !{!35, !37, i64 144}
!124 = !{!125, !41, i64 100}
!125 = !{!"Key", !36, i64 0, !37, i64 120, !37, i64 128, !38, i64 136, !41, i64 168, !41, i64 172, !121, i64 176, !37, i64 192, !37, i64 200, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !43, i64 216, !41, i64 220}
!126 = !{!35, !37, i64 264}
!127 = !{!35, !41, i64 1288}
!128 = !{!35, !37, i64 120}
!129 = !{!35, !37, i64 128}
!130 = !{!35, !37, i64 160}
!131 = !{!43, !43, i64 0}
!132 = !{!35, !43, i64 1352}
!133 = !{!35, !40, i64 1348}
!134 = !{!35, !41, i64 1344}
!135 = distinct !{!135, !53}
!136 = !{!93, !93, i64 0}
!137 = !{!35, !41, i64 852}
!138 = !{!35, !41, i64 1052}
!139 = !{!35, !37, i64 680}
!140 = !{!141, !37, i64 32}
!141 = !{!"MTFace", !38, i64 0, !37, i64 32, !38, i64 40, !38, i64 41, !40, i64 42, !40, i64 44, !40, i64 46}
!142 = distinct !{!142, !53}
!143 = distinct !{!143, !53}
!144 = !{!35, !37, i64 880}
!145 = !{!146, !37, i64 0}
!146 = !{!"MTexPoly", !37, i64 0, !38, i64 8, !38, i64 9, !40, i64 10, !40, i64 12, !40, i64 14}
!147 = distinct !{!147, !53}
!148 = distinct !{!148, !53}
!149 = !{!125, !37, i64 200}
!150 = !{!"mesh.c:mesh_tessface_clear_intern"}
!151 = !{!152, !37, i64 0}
!152 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !121, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!153 = !{!41, !41, i64 0}
!154 = !{!155, !40, i64 1266}
!155 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !156, i64 312, !37, i64 360, !121, i64 368, !121, i64 384, !121, i64 400, !121, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !43, i64 616, !43, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !43, i64 988, !43, i64 992, !43, i64 996, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !43, i64 1028, !43, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !43, i64 1048, !43, i64 1052, !121, i64 1056, !121, i64 1072, !121, i64 1088, !121, i64 1104, !43, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !121, i64 1176, !121, i64 1192, !121, i64 1208, !121, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !43, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !93, i64 1304, !93, i64 1312, !41, i64 1320, !41, i64 1324, !121, i64 1328, !121, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !121, i64 1400, !37, i64 1416}
!156 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!157 = !{!35, !37, i64 24}
!158 = !{!35, !41, i64 100}
!159 = !{!155, !37, i64 296}
!160 = !{!155, !37, i64 24}
!161 = distinct !{!161, !53}
!162 = distinct !{!162, !53}
!163 = !{!"mesh.c:expand_local_mesh"}
!164 = distinct !{!164, !53}
!165 = distinct !{!165, !53}
!166 = distinct !{!166, !53}
!167 = distinct !{!167, !53}
!168 = !{!155, !40, i64 136}
!169 = distinct !{!169, !53}
!170 = !{i8 0, i8 2}
!171 = !{!172, !41, i64 96}
!172 = !{!"BoundBox", !38, i64 0, !41, i64 96, !41, i64 100}
!173 = distinct !{!173, !53}
!174 = distinct !{!174, !53}
!175 = !{!"mesh.c:copy_v3_v3"}
!176 = !{!"mesh.c:zero_v3"}
!177 = !{!155, !37, i64 264}
!178 = !{!40, !40, i64 0}
!179 = distinct !{!179, !53}
!180 = !{!"mesh.c:min_ii"}
!181 = distinct !{!181, !53}
!182 = distinct !{!182, !53}
!183 = !{!"mesh.c:madd_v3_v3v3v3"}
!184 = !{!185, !41, i64 8}
!185 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !38, i64 18, !38, i64 19}
!186 = !{!185, !41, i64 12}
!187 = !{!185, !41, i64 4}
!188 = !{!185, !41, i64 0}
!189 = !{!121, !37, i64 0}
!190 = !{!191, !40, i64 16}
!191 = !{!"DispList", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32, !37, i64 40, !37, i64 48, !41, i64 56, !41, i64 60, !37, i64 64}
!192 = !{!191, !41, i64 24}
!193 = !{!191, !41, i64 20}
!194 = !{!191, !37, i64 32}
!195 = !{!191, !37, i64 40}
!196 = distinct !{!196, !53}
!197 = !{!191, !37, i64 48}
!198 = !{!65, !38, i64 10}
!199 = distinct !{!199, !53}
!200 = !{!"mesh.c:normal_float_to_short_v3"}
!201 = !{!155, !37, i64 1280}
!202 = !{i64 0, i64 8, !116, i64 8, i64 8, !116}
!203 = !{i32 -1, i32 1}
!204 = !{!205, !41, i64 268}
!205 = !{!"Curve", !36, i64 0, !37, i64 120, !37, i64 128, !121, i64 136, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !38, i64 220, !38, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !43, i64 252, !43, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !41, i64 268, !43, i64 272, !43, i64 276, !43, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !41, i64 292, !41, i64 296, !38, i64 300, !40, i64 304, !38, i64 306, !38, i64 307, !43, i64 308, !43, i64 312, !43, i64 316, !43, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !43, i64 340, !43, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !37, i64 368, !37, i64 376, !38, i64 384, !37, i64 448, !37, i64 456, !37, i64 464, !37, i64 472, !37, i64 480, !41, i64 488, !41, i64 492, !37, i64 496, !206, i64 504, !43, i64 512, !43, i64 516, !43, i64 520, !38, i64 524, !38, i64 525, !38, i64 526}
!206 = !{!"CharInfo", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !40, i64 6}
!207 = !{!191, !40, i64 18}
!208 = distinct !{!208, !53}
!209 = !{!191, !40, i64 30}
!210 = distinct !{!210, !53}
!211 = !{!60, !40, i64 10}
!212 = distinct !{!212, !53}
!213 = distinct !{!213, !53}
!214 = distinct !{!214, !53}
!215 = distinct !{!215, !53}
!216 = distinct !{!216, !53}
!217 = distinct !{!217, !53}
!218 = !{!191, !40, i64 28}
!219 = !{!65, !40, i64 8}
!220 = distinct !{!220, !53}
!221 = distinct !{!221, !53}
!222 = distinct !{!222, !53}
!223 = distinct !{!223, !53}
!224 = distinct !{!224, !53}
!225 = distinct !{!225, !53}
!226 = distinct !{!226, !53}
!227 = !{!"mesh.c:make_edges_mdata_extend"}
!228 = distinct !{!228, !53}
!229 = !{!60, !38, i64 9}
!230 = !{!60, !38, i64 8}
!231 = distinct !{!231, !53}
!232 = !{!69, !41, i64 4}
!233 = distinct !{!233, !53}
!234 = distinct !{!234, !53}
!235 = !{!155, !37, i64 1296}
!236 = !{!205, !40, i64 266}
!237 = !{!205, !37, i64 200}
!238 = distinct !{!238, !53}
!239 = !{!240, !37, i64 1168}
!240 = !{!"DerivedMesh", !42, i64 0, !42, i64 200, !42, i64 400, !42, i64 600, !42, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !43, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!241 = !{!240, !37, i64 1176}
!242 = !{!240, !37, i64 1200}
!243 = !{!240, !37, i64 1192}
!244 = !{!240, !37, i64 1112}
!245 = !{!240, !37, i64 1136}
!246 = distinct !{!246, !53}
!247 = distinct !{!247, !53}
!248 = !{!249, !37, i64 16}
!249 = !{!"EdgeLink", !37, i64 0, !37, i64 8, !37, i64 16}
!250 = distinct !{!250, !53}
!251 = !{!121, !37, i64 8}
!252 = distinct !{!252, !53}
!253 = !{!249, !37, i64 8}
!254 = distinct !{!254, !53}
!255 = !{!256, !41, i64 24}
!256 = !{!"Nurb", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !41, i64 24, !41, i64 28, !38, i64 32, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !40, i64 80, !40, i64 82, !41, i64 84}
!257 = !{!256, !41, i64 28}
!258 = !{!256, !40, i64 40}
!259 = !{!256, !40, i64 44}
!260 = !{!256, !40, i64 36}
!261 = !{!256, !37, i64 64}
!262 = !{!263, !41, i64 16}
!263 = !{!"VertLink", !37, i64 0, !37, i64 8, !41, i64 16}
!264 = !{!265, !40, i64 24}
!265 = !{!"BPoint", !38, i64 0, !43, i64 16, !43, i64 20, !40, i64 24, !40, i64 26, !43, i64 28, !43, i64 32}
!266 = !{!265, !43, i64 20}
!267 = !{!265, !43, i64 28}
!268 = distinct !{!268, !53}
!269 = !{!"mesh.c:appendPolyLineVert"}
!270 = !{!"mesh.c:prependPolyLineVert"}
!271 = !{!240, !41, i64 1020}
!272 = !{!240, !37, i64 1680}
!273 = distinct !{!273, !53}
!274 = !{!185, !40, i64 16}
!275 = distinct !{!275, !53}
!276 = distinct !{!276, !53}
!277 = distinct !{!277, !53}
!278 = distinct !{!278, !53}
!279 = !{!185, !38, i64 19}
!280 = distinct !{!280, !53}
!281 = distinct !{!281, !53}
!282 = distinct !{!282, !53}
!283 = distinct !{!283, !53}
!284 = distinct !{!284, !53}
!285 = !{!286, !41, i64 32}
!286 = !{!"KeyBlock", !37, i64 0, !37, i64 8, !43, i64 16, !43, i64 20, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !37, i64 40, !38, i64 48, !38, i64 112, !43, i64 176, !43, i64 180}
!287 = !{!286, !37, i64 40}
!288 = distinct !{!288, !53}
!289 = distinct !{!289, !53}
!290 = distinct !{!290, !53}
!291 = distinct !{!291, !53}
!292 = !{!"mesh.c:add_v3_v3"}
!293 = distinct !{!293, !53, !294, !295}
!294 = !{!"llvm.loop.isvectorized", i32 1}
!295 = !{!"llvm.loop.unroll.runtime.disable"}
!296 = !{!35, !38, i64 1360}
!297 = !{!298, !38, i64 19}
!298 = !{!"MVert", !38, i64 0, !38, i64 12, !38, i64 18, !38, i64 19}
!299 = distinct !{!299, !53}
!300 = distinct !{!300, !53}
!301 = !{!35, !41, i64 1292}
!302 = !{!303, !41, i64 0}
!303 = !{!"MSelect", !41, i64 0, !41, i64 4}
!304 = !{!303, !41, i64 4}
!305 = !{!298, !38, i64 18}
!306 = distinct !{!306, !53}
!307 = distinct !{!307, !53}
!308 = !{!205, !41, i64 100}
!309 = !{!205, !37, i64 376}
!310 = !{!205, !37, i64 152}
!311 = !{!312, !41, i64 0}
!312 = !{!"EvaluationContext", !41, i64 0}
!313 = !{!155, !37, i64 448}
!314 = !{!38, !38, i64 0}
!315 = distinct !{!315, !53}
!316 = !{!35, !40, i64 1350}
!317 = distinct !{!317, !53}
!318 = !{!"mesh.c:len_squared_v3v3"}
!319 = !{!"mesh.c:len_squared_v2v2"}
!320 = !{!"mesh.c:sub_v3_v3v3"}
!321 = !{!"mesh.c:dot_v3v3"}
!322 = !{!"mesh.c:sub_v2_v2v2"}
!323 = !{!"mesh.c:dot_v2v2"}
!324 = !{!"mesh.c:BM_iter_init"}
!325 = !{!102, !38, i64 60}
!326 = !{!102, !37, i64 40}
!327 = !{!328, !37, i64 32}
!328 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !41, i64 128, !37, i64 136, !42, i64 144, !42, i64 344, !42, i64 544, !42, i64 744, !40, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !121, i64 960, !37, i64 976, !121, i64 984, !37, i64 1000}
!329 = !{!"mesh.c:mesh_ensure_tessellation_customdata"}
!330 = !{!152, !41, i64 2100}
!331 = !{!"mesh.c:max_ii"}
!332 = !{!"mesh.c:BLI_edgehashIterator_isDone"}
!333 = !{!334, !37, i64 8}
!334 = !{!"EdgeHashIterator", !37, i64 0, !37, i64 8, !41, i64 16}
!335 = !{!"mesh.c:BLI_edgehashIterator_getKey"}
!336 = !{!337, !41, i64 8}
!337 = !{!"_eh_Entry", !37, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!338 = !{!337, !41, i64 12}
!339 = !{!"mesh.c:BLI_edgehashIterator_setValue"}
!340 = !{!337, !37, i64 16}
