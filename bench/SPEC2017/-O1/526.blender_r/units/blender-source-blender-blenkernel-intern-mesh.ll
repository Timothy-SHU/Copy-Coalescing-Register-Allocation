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
%struct.EdgeHashIterator = type { ptr, ptr, i32 }
%struct._eh_Entry = type { ptr, i32, i32, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.EdgeLink = type { ptr, ptr, ptr }
%struct.VertLink = type { ptr, ptr, i32 }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
%struct.MSelect = type { i32, i32 }
%struct.EvaluationContext = type { i32 }

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
@switch.table.BKE_mesh_cmp = private unnamed_addr constant [12 x ptr] [ptr null, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], align 8

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_mesh_cmp(ptr noundef readonly %0, ptr noundef readonly %1, float noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %85

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 26
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %85

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %15 = load i32, ptr %14, align 4, !tbaa !44
  %16 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 27
  %17 = load i32, ptr %16, align 4, !tbaa !44
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %85

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %21 = load i32, ptr %20, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 30
  %23 = load i32, ptr %22, align 8, !tbaa !45
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %85

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %27 = load i32, ptr %26, align 4, !tbaa !46
  %28 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 31
  %29 = load i32, ptr %28, align 4, !tbaa !46
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %85

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 21
  %33 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 21
  %34 = tail call fastcc i32 @customdata_compare(ptr noundef nonnull %32, ptr noundef nonnull %33, ptr noundef nonnull %0, ptr noundef nonnull %1, float noundef %2)
  switch i32 %34, label %45 [
    i32 0, label %46
    i32 1, label %85
    i32 2, label %35
    i32 3, label %36
    i32 4, label %37
    i32 5, label %38
    i32 6, label %39
    i32 7, label %40
    i32 8, label %41
    i32 9, label %42
    i32 10, label %43
    i32 11, label %44
  ]

35:                                               ; preds = %31
  br label %85

36:                                               ; preds = %31
  br label %85

37:                                               ; preds = %31
  br label %85

38:                                               ; preds = %31
  br label %85

39:                                               ; preds = %31
  br label %85

40:                                               ; preds = %31
  br label %85

41:                                               ; preds = %31
  br label %85

42:                                               ; preds = %31
  br label %85

43:                                               ; preds = %31
  br label %85

44:                                               ; preds = %31
  br label %85

45:                                               ; preds = %31
  br label %85

46:                                               ; preds = %31
  %47 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22
  %48 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 22
  %49 = tail call fastcc i32 @customdata_compare(ptr noundef nonnull %47, ptr noundef nonnull %48, ptr noundef nonnull %0, ptr noundef nonnull %1, float noundef %2)
  switch i32 %49, label %60 [
    i32 0, label %61
    i32 1, label %85
    i32 2, label %50
    i32 3, label %51
    i32 4, label %52
    i32 5, label %53
    i32 6, label %54
    i32 7, label %55
    i32 8, label %56
    i32 9, label %57
    i32 10, label %58
    i32 11, label %59
  ]

50:                                               ; preds = %46
  br label %85

51:                                               ; preds = %46
  br label %85

52:                                               ; preds = %46
  br label %85

53:                                               ; preds = %46
  br label %85

54:                                               ; preds = %46
  br label %85

55:                                               ; preds = %46
  br label %85

56:                                               ; preds = %46
  br label %85

57:                                               ; preds = %46
  br label %85

58:                                               ; preds = %46
  br label %85

59:                                               ; preds = %46
  br label %85

60:                                               ; preds = %46
  br label %85

61:                                               ; preds = %46
  %62 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %63 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 25
  %64 = tail call fastcc i32 @customdata_compare(ptr noundef nonnull %62, ptr noundef nonnull %63, ptr noundef nonnull %0, ptr noundef nonnull %1, float noundef %2)
  switch i32 %64, label %75 [
    i32 0, label %76
    i32 1, label %85
    i32 2, label %65
    i32 3, label %66
    i32 4, label %67
    i32 5, label %68
    i32 6, label %69
    i32 7, label %70
    i32 8, label %71
    i32 9, label %72
    i32 10, label %73
    i32 11, label %74
  ]

65:                                               ; preds = %61
  br label %85

66:                                               ; preds = %61
  br label %85

67:                                               ; preds = %61
  br label %85

68:                                               ; preds = %61
  br label %85

69:                                               ; preds = %61
  br label %85

70:                                               ; preds = %61
  br label %85

71:                                               ; preds = %61
  br label %85

72:                                               ; preds = %61
  br label %85

73:                                               ; preds = %61
  br label %85

74:                                               ; preds = %61
  br label %85

75:                                               ; preds = %61
  br label %85

76:                                               ; preds = %61
  %77 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %78 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 24
  %79 = tail call fastcc i32 @customdata_compare(ptr noundef nonnull %77, ptr noundef nonnull %78, ptr noundef nonnull %0, ptr noundef nonnull %1, float noundef %2)
  %80 = icmp ult i32 %79, 12
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = zext nneg i32 %79 to i64
  %83 = getelementptr inbounds [12 x ptr], ptr @switch.table.BKE_mesh_cmp, i64 0, i64 %82
  %84 = load ptr, ptr %83, align 8
  br label %85

85:                                               ; preds = %76, %81, %75, %74, %73, %72, %71, %70, %69, %68, %67, %66, %65, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %31, %25, %19, %13, %7, %3
  %86 = phi ptr [ @.str, %3 ], [ @.str.1, %7 ], [ @.str.2, %13 ], [ @.str.3, %19 ], [ @.str.4, %25 ], [ @.str.31, %45 ], [ @.str.30, %44 ], [ @.str.29, %43 ], [ @.str.28, %42 ], [ @.str.27, %41 ], [ @.str.26, %40 ], [ @.str.25, %39 ], [ @.str.24, %38 ], [ @.str.23, %37 ], [ @.str.22, %36 ], [ @.str.21, %35 ], [ @.str.20, %31 ], [ @.str.31, %60 ], [ @.str.30, %59 ], [ @.str.29, %58 ], [ @.str.28, %57 ], [ @.str.27, %56 ], [ @.str.26, %55 ], [ @.str.25, %54 ], [ @.str.24, %53 ], [ @.str.23, %52 ], [ @.str.22, %51 ], [ @.str.21, %50 ], [ @.str.20, %46 ], [ @.str.31, %75 ], [ @.str.30, %74 ], [ @.str.29, %73 ], [ @.str.28, %72 ], [ @.str.27, %71 ], [ @.str.26, %70 ], [ @.str.25, %69 ], [ @.str.24, %68 ], [ @.str.23, %67 ], [ @.str.22, %66 ], [ @.str.21, %65 ], [ @.str.20, %61 ], [ %84, %81 ], [ @.str.31, %76 ]
  ret ptr %86
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @customdata_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, float noundef %4) unnamed_addr #0 {
  %6 = fmul float %4, %4
  %7 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !47
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 8, !tbaa !48
  %12 = zext nneg i32 %8 to i64
  br label %22

13:                                               ; preds = %29, %5
  %14 = phi i32 [ 0, %5 ], [ %30, %29 ]
  %15 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !47
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %13
  %20 = load ptr, ptr %1, align 8, !tbaa !48
  %21 = zext nneg i32 %17 to i64
  br label %33

22:                                               ; preds = %10, %29
  %23 = phi i64 [ 0, %10 ], [ %31, %29 ]
  %24 = phi i32 [ 0, %10 ], [ %30, %29 ]
  %25 = getelementptr inbounds %struct.CustomDataLayer, ptr %11, i64 %23
  %26 = load i32, ptr %25, align 8, !tbaa !49
  switch i32 %26, label %29 [
    i32 0, label %27
    i32 3, label %27
    i32 25, label %27
    i32 16, label %27
    i32 17, label %27
    i32 15, label %27
    i32 2, label %27
  ]

27:                                               ; preds = %22, %22, %22, %22, %22, %22, %22
  %28 = add nsw i32 %24, 1
  br label %29

29:                                               ; preds = %22, %27
  %30 = phi i32 [ %28, %27 ], [ %24, %22 ]
  %31 = add nuw nsw i64 %23, 1
  %32 = icmp eq i64 %31, %12
  br i1 %32, label %13, label %22, !llvm.loop !51

33:                                               ; preds = %19, %40
  %34 = phi i64 [ 0, %19 ], [ %42, %40 ]
  %35 = phi i32 [ 0, %19 ], [ %41, %40 ]
  %36 = getelementptr inbounds %struct.CustomDataLayer, ptr %20, i64 %34
  %37 = load i32, ptr %36, align 8, !tbaa !49
  switch i32 %37, label %40 [
    i32 0, label %38
    i32 3, label %38
    i32 25, label %38
    i32 16, label %38
    i32 17, label %38
    i32 15, label %38
    i32 2, label %38
  ]

38:                                               ; preds = %33, %33, %33, %33, %33, %33, %33
  %39 = add nsw i32 %35, 1
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi i32 [ %39, %38 ], [ %35, %33 ]
  %42 = add nuw nsw i64 %34, 1
  %43 = icmp eq i64 %42, %21
  br i1 %43, label %44, label %33, !llvm.loop !54

44:                                               ; preds = %40, %13
  %45 = phi i32 [ 0, %13 ], [ %41, %40 ]
  %46 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 2
  %47 = icmp eq i32 %14, %45
  br i1 %47, label %48, label %476

48:                                               ; preds = %44
  %49 = icmp sgt i32 %14, 0
  br i1 %49, label %50, label %476

50:                                               ; preds = %48
  %51 = load ptr, ptr %1, align 8, !tbaa !48
  %52 = load ptr, ptr %0, align 8, !tbaa !48
  %53 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 26
  %54 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 27
  %55 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 30
  %56 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 9
  %57 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 9
  %58 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 31
  %59 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 31
  %60 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 31
  %61 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 26
  br label %62

62:                                               ; preds = %50, %472
  %63 = phi i32 [ undef, %50 ], [ %473, %472 ]
  %64 = phi ptr [ %52, %50 ], [ %81, %472 ]
  %65 = phi ptr [ %51, %50 ], [ %94, %472 ]
  %66 = phi i32 [ 0, %50 ], [ %474, %472 ]
  %67 = phi i32 [ 0, %50 ], [ %80, %472 ]
  %68 = phi i32 [ 0, %50 ], [ %93, %472 ]
  %69 = load i32, ptr %15, align 4, !tbaa !47
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %62, %75
  %72 = phi ptr [ %77, %75 ], [ %64, %62 ]
  %73 = phi i32 [ %76, %75 ], [ %67, %62 ]
  %74 = load i32, ptr %72, align 8, !tbaa !49
  switch i32 %74, label %75 [
    i32 0, label %79
    i32 3, label %79
    i32 25, label %79
    i32 16, label %79
    i32 17, label %79
    i32 15, label %79
    i32 2, label %79
  ]

75:                                               ; preds = %71
  %76 = add i32 %73, 1
  %77 = getelementptr inbounds %struct.CustomDataLayer, ptr %72, i64 1
  %78 = icmp eq i32 %76, %69
  br i1 %78, label %79, label %71, !llvm.loop !55

79:                                               ; preds = %75, %71, %71, %71, %71, %71, %71, %71, %62
  %80 = phi i32 [ %67, %62 ], [ %69, %75 ], [ %73, %71 ], [ %73, %71 ], [ %73, %71 ], [ %73, %71 ], [ %73, %71 ], [ %73, %71 ], [ %73, %71 ]
  %81 = phi ptr [ %64, %62 ], [ %77, %75 ], [ %72, %71 ], [ %72, %71 ], [ %72, %71 ], [ %72, %71 ], [ %72, %71 ], [ %72, %71 ], [ %72, %71 ]
  %82 = load i32, ptr %46, align 4, !tbaa !47
  %83 = icmp slt i32 %68, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %79, %88
  %85 = phi ptr [ %90, %88 ], [ %65, %79 ]
  %86 = phi i32 [ %89, %88 ], [ %68, %79 ]
  %87 = load i32, ptr %85, align 8, !tbaa !49
  switch i32 %87, label %88 [
    i32 0, label %92
    i32 3, label %92
    i32 25, label %92
    i32 16, label %92
    i32 17, label %92
    i32 15, label %92
    i32 2, label %92
  ]

88:                                               ; preds = %84
  %89 = add i32 %86, 1
  %90 = getelementptr inbounds %struct.CustomDataLayer, ptr %85, i64 1
  %91 = icmp eq i32 %89, %82
  br i1 %91, label %92, label %84, !llvm.loop !56

92:                                               ; preds = %88, %84, %84, %84, %84, %84, %84, %84, %79
  %93 = phi i32 [ %68, %79 ], [ %82, %88 ], [ %86, %84 ], [ %86, %84 ], [ %86, %84 ], [ %86, %84 ], [ %86, %84 ], [ %86, %84 ], [ %86, %84 ]
  %94 = phi ptr [ %65, %79 ], [ %90, %88 ], [ %85, %84 ], [ %85, %84 ], [ %85, %84 ], [ %85, %84 ], [ %85, %84 ], [ %85, %84 ], [ %85, %84 ]
  %95 = load i32, ptr %81, align 8, !tbaa !49
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %154

97:                                               ; preds = %92
  %98 = load i32, ptr %53, align 8, !tbaa !34
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %151

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.CustomDataLayer, ptr %94, i64 0, i32 9
  %102 = load ptr, ptr %101, align 8, !tbaa !57
  %103 = getelementptr inbounds %struct.CustomDataLayer, ptr %81, i64 0, i32 9
  %104 = load ptr, ptr %103, align 8, !tbaa !57
  %105 = load float, ptr %102, align 4, !tbaa !58
  %106 = load float, ptr %104, align 4, !tbaa !58
  %107 = fsub float %105, %106
  %108 = getelementptr inbounds float, ptr %102, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !58
  %110 = getelementptr inbounds float, ptr %104, i64 1
  %111 = load float, ptr %110, align 4, !tbaa !58
  %112 = fsub float %109, %111
  %113 = getelementptr inbounds float, ptr %102, i64 2
  %114 = load float, ptr %113, align 4, !tbaa !58
  %115 = getelementptr inbounds float, ptr %104, i64 2
  %116 = load float, ptr %115, align 4, !tbaa !58
  %117 = fsub float %114, %116
  %118 = fmul float %112, %112
  %119 = tail call float @llvm.fmuladd.f32(float %107, float %107, float %118)
  %120 = tail call float @llvm.fmuladd.f32(float %117, float %117, float %119)
  %121 = fcmp ogt float %120, %6
  br i1 %121, label %151, label %142

122:                                              ; preds = %142
  %123 = getelementptr inbounds %struct.MVert, ptr %143, i64 1
  %124 = getelementptr inbounds %struct.MVert, ptr %144, i64 1
  %125 = load float, ptr %124, align 4, !tbaa !58
  %126 = load float, ptr %123, align 4, !tbaa !58
  %127 = fsub float %125, %126
  %128 = getelementptr inbounds %struct.MVert, ptr %144, i64 1, i32 0, i64 1
  %129 = load float, ptr %128, align 4, !tbaa !58
  %130 = getelementptr inbounds %struct.MVert, ptr %143, i64 1, i32 0, i64 1
  %131 = load float, ptr %130, align 4, !tbaa !58
  %132 = fsub float %129, %131
  %133 = getelementptr inbounds %struct.MVert, ptr %144, i64 1, i32 0, i64 2
  %134 = load float, ptr %133, align 4, !tbaa !58
  %135 = getelementptr inbounds %struct.MVert, ptr %143, i64 1, i32 0, i64 2
  %136 = load float, ptr %135, align 4, !tbaa !58
  %137 = fsub float %134, %136
  %138 = fmul float %132, %132
  %139 = tail call float @llvm.fmuladd.f32(float %127, float %127, float %138)
  %140 = tail call float @llvm.fmuladd.f32(float %137, float %137, float %139)
  %141 = fcmp ogt float %140, %6
  br i1 %141, label %148, label %142, !llvm.loop !59

142:                                              ; preds = %100, %122
  %143 = phi ptr [ %123, %122 ], [ %104, %100 ]
  %144 = phi ptr [ %124, %122 ], [ %102, %100 ]
  %145 = phi i32 [ %146, %122 ], [ 0, %100 ]
  %146 = add nuw nsw i32 %145, 1
  %147 = icmp eq i32 %146, %98
  br i1 %147, label %148, label %122, !llvm.loop !59

148:                                              ; preds = %122, %142
  %149 = phi i32 [ 10, %122 ], [ %63, %142 ]
  %150 = icmp slt i32 %146, %98
  br label %151

151:                                              ; preds = %148, %100, %97
  %152 = phi i1 [ %99, %97 ], [ %99, %100 ], [ %150, %148 ]
  %153 = phi i32 [ %63, %97 ], [ 10, %100 ], [ %149, %148 ]
  br i1 %152, label %476, label %154

154:                                              ; preds = %151, %92
  %155 = phi i32 [ %153, %151 ], [ %63, %92 ]
  %156 = icmp eq i32 %95, 3
  br i1 %156, label %157, label %201

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.CustomDataLayer, ptr %81, i64 0, i32 9
  %159 = load ptr, ptr %158, align 8, !tbaa !57
  %160 = getelementptr inbounds %struct.CustomDataLayer, ptr %94, i64 0, i32 9
  %161 = load ptr, ptr %160, align 8, !tbaa !57
  %162 = load i32, ptr %54, align 4, !tbaa !44
  %163 = tail call ptr @BLI_edgehash_new_ex(ptr noundef nonnull @__func__.customdata_compare, i32 noundef %162) #15
  %164 = icmp sgt i32 %162, 0
  br i1 %164, label %173, label %165

165:                                              ; preds = %173, %157
  %166 = icmp sgt i32 %162, 0
  br i1 %166, label %167, label %194

167:                                              ; preds = %165
  %168 = load i32, ptr %161, align 4, !tbaa !60
  %169 = getelementptr inbounds %struct.MEdge, ptr %161, i64 0, i32 1
  %170 = load i32, ptr %169, align 4, !tbaa !62
  %171 = tail call ptr @BLI_edgehash_lookup(ptr noundef %163, i32 noundef %168, i32 noundef %170) #15
  %172 = icmp eq ptr %171, null
  br i1 %172, label %198, label %189

173:                                              ; preds = %157, %173
  %174 = phi i32 [ %179, %173 ], [ 0, %157 ]
  %175 = phi ptr [ %180, %173 ], [ %159, %157 ]
  %176 = load i32, ptr %175, align 4, !tbaa !60
  %177 = getelementptr inbounds %struct.MEdge, ptr %175, i64 0, i32 1
  %178 = load i32, ptr %177, align 4, !tbaa !62
  tail call void @BLI_edgehash_insert(ptr noundef %163, i32 noundef %176, i32 noundef %178, ptr noundef nonnull %175) #15
  %179 = add nuw nsw i32 %174, 1
  %180 = getelementptr inbounds %struct.MEdge, ptr %175, i64 1
  %181 = icmp eq i32 %179, %162
  br i1 %181, label %165, label %173, !llvm.loop !63

182:                                              ; preds = %189
  %183 = getelementptr inbounds %struct.MEdge, ptr %190, i64 1
  %184 = load i32, ptr %183, align 4, !tbaa !60
  %185 = getelementptr inbounds %struct.MEdge, ptr %190, i64 1, i32 1
  %186 = load i32, ptr %185, align 4, !tbaa !62
  %187 = tail call ptr @BLI_edgehash_lookup(ptr noundef %163, i32 noundef %184, i32 noundef %186) #15
  %188 = icmp eq ptr %187, null
  br i1 %188, label %196, label %189, !llvm.loop !64

189:                                              ; preds = %167, %182
  %190 = phi ptr [ %183, %182 ], [ %161, %167 ]
  %191 = phi i32 [ %192, %182 ], [ 0, %167 ]
  %192 = add nuw nsw i32 %191, 1
  %193 = icmp eq i32 %192, %162
  br i1 %193, label %194, label %182, !llvm.loop !64

194:                                              ; preds = %189, %165
  %195 = phi i1 [ %166, %165 ], [ false, %189 ]
  tail call void @BLI_edgehash_free(ptr noundef %163, ptr noundef null) #15
  br label %198

196:                                              ; preds = %182
  %197 = icmp slt i32 %192, %162
  br label %198

198:                                              ; preds = %196, %167, %194
  %199 = phi i1 [ %195, %194 ], [ %166, %167 ], [ %197, %196 ]
  %200 = phi i32 [ %155, %194 ], [ 9, %167 ], [ 9, %196 ]
  br i1 %199, label %476, label %201

201:                                              ; preds = %198, %154
  %202 = phi i32 [ %200, %198 ], [ %155, %154 ]
  %203 = load i32, ptr %81, align 8, !tbaa !49
  %204 = icmp eq i32 %203, 25
  br i1 %204, label %205, label %259

205:                                              ; preds = %201
  %206 = load i32, ptr %55, align 8, !tbaa !45
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %256

208:                                              ; preds = %205
  %209 = getelementptr inbounds %struct.CustomDataLayer, ptr %94, i64 0, i32 9
  %210 = load ptr, ptr %209, align 8, !tbaa !57
  %211 = getelementptr inbounds %struct.CustomDataLayer, ptr %81, i64 0, i32 9
  %212 = load ptr, ptr %211, align 8, !tbaa !57
  br label %213

213:                                              ; preds = %208, %250
  %214 = phi i1 [ %254, %250 ], [ %207, %208 ]
  %215 = phi i32 [ %249, %250 ], [ %202, %208 ]
  %216 = phi ptr [ %253, %250 ], [ %210, %208 ]
  %217 = phi ptr [ %252, %250 ], [ %212, %208 ]
  %218 = phi i32 [ %251, %250 ], [ 0, %208 ]
  %219 = getelementptr inbounds %struct.MPoly, ptr %217, i64 0, i32 1
  %220 = load i32, ptr %219, align 4, !tbaa !65
  %221 = getelementptr inbounds %struct.MPoly, ptr %216, i64 0, i32 1
  %222 = load i32, ptr %221, align 4, !tbaa !65
  %223 = icmp eq i32 %220, %222
  br i1 %223, label %224, label %247

224:                                              ; preds = %213
  %225 = icmp sgt i32 %220, 0
  br i1 %225, label %226, label %247

226:                                              ; preds = %224
  %227 = load ptr, ptr %57, align 8, !tbaa !67
  %228 = load i32, ptr %216, align 4, !tbaa !68
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.MLoop, ptr %227, i64 %229
  %231 = load ptr, ptr %56, align 8, !tbaa !67
  %232 = load i32, ptr %217, align 4, !tbaa !68
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.MLoop, ptr %231, i64 %233
  br label %235

235:                                              ; preds = %226, %242
  %236 = phi i32 [ %243, %242 ], [ 0, %226 ]
  %237 = phi ptr [ %245, %242 ], [ %230, %226 ]
  %238 = phi ptr [ %244, %242 ], [ %234, %226 ]
  %239 = load i32, ptr %238, align 4, !tbaa !69
  %240 = load i32, ptr %237, align 4, !tbaa !69
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %247

242:                                              ; preds = %235
  %243 = add nuw nsw i32 %236, 1
  %244 = getelementptr inbounds %struct.MLoop, ptr %238, i64 1
  %245 = getelementptr inbounds %struct.MLoop, ptr %237, i64 1
  %246 = icmp eq i32 %243, %220
  br i1 %246, label %247, label %235, !llvm.loop !71

247:                                              ; preds = %235, %242, %224, %213
  %248 = phi i1 [ false, %213 ], [ true, %224 ], [ %241, %242 ], [ %241, %235 ]
  %249 = phi i32 [ 8, %213 ], [ %215, %224 ], [ 7, %235 ], [ %215, %242 ]
  br i1 %248, label %250, label %256

250:                                              ; preds = %247
  %251 = add nuw nsw i32 %218, 1
  %252 = getelementptr inbounds %struct.MPoly, ptr %217, i64 1
  %253 = getelementptr inbounds %struct.MPoly, ptr %216, i64 1
  %254 = icmp slt i32 %251, %206
  %255 = icmp eq i32 %251, %206
  br i1 %255, label %256, label %213, !llvm.loop !72

256:                                              ; preds = %247, %250, %205
  %257 = phi i1 [ %207, %205 ], [ %214, %247 ], [ %254, %250 ]
  %258 = phi i32 [ %202, %205 ], [ %249, %250 ], [ %249, %247 ]
  br i1 %257, label %476, label %259

259:                                              ; preds = %256, %201
  %260 = phi i32 [ %258, %256 ], [ %202, %201 ]
  %261 = icmp eq i32 %203, 26
  br i1 %261, label %262, label %291

262:                                              ; preds = %259
  %263 = load i32, ptr %58, align 4, !tbaa !46
  %264 = icmp sgt i32 %263, 0
  br i1 %264, label %265, label %288

265:                                              ; preds = %262
  %266 = getelementptr inbounds %struct.CustomDataLayer, ptr %94, i64 0, i32 9
  %267 = load ptr, ptr %266, align 8, !tbaa !57
  %268 = getelementptr inbounds %struct.CustomDataLayer, ptr %81, i64 0, i32 9
  %269 = load ptr, ptr %268, align 8, !tbaa !57
  %270 = load i32, ptr %269, align 4, !tbaa !69
  %271 = load i32, ptr %267, align 4, !tbaa !69
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %279, label %288

273:                                              ; preds = %279
  %274 = getelementptr inbounds %struct.MLoop, ptr %281, i64 1
  %275 = getelementptr inbounds %struct.MLoop, ptr %282, i64 1
  %276 = load i32, ptr %274, align 4, !tbaa !69
  %277 = load i32, ptr %275, align 4, !tbaa !69
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %285, !llvm.loop !73

279:                                              ; preds = %265, %273
  %280 = phi i32 [ %283, %273 ], [ 0, %265 ]
  %281 = phi ptr [ %274, %273 ], [ %269, %265 ]
  %282 = phi ptr [ %275, %273 ], [ %267, %265 ]
  %283 = add nuw nsw i32 %280, 1
  %284 = icmp eq i32 %283, %263
  br i1 %284, label %285, label %273, !llvm.loop !73

285:                                              ; preds = %273, %279
  %286 = phi i32 [ 6, %273 ], [ %260, %279 ]
  %287 = icmp slt i32 %283, %263
  br label %288

288:                                              ; preds = %285, %265, %262
  %289 = phi i1 [ %264, %262 ], [ %264, %265 ], [ %287, %285 ]
  %290 = phi i32 [ %260, %262 ], [ 6, %265 ], [ %286, %285 ]
  br i1 %289, label %476, label %291

291:                                              ; preds = %288, %259
  %292 = phi i32 [ %290, %288 ], [ %260, %259 ]
  %293 = icmp eq i32 %203, 16
  br i1 %293, label %294, label %339

294:                                              ; preds = %291
  %295 = load i32, ptr %59, align 4, !tbaa !46
  %296 = icmp sgt i32 %295, 0
  br i1 %296, label %297, label %336

297:                                              ; preds = %294
  %298 = getelementptr inbounds %struct.CustomDataLayer, ptr %94, i64 0, i32 9
  %299 = load ptr, ptr %298, align 8, !tbaa !57
  %300 = getelementptr inbounds %struct.CustomDataLayer, ptr %81, i64 0, i32 9
  %301 = load ptr, ptr %300, align 8, !tbaa !57
  %302 = load float, ptr %299, align 4, !tbaa !58
  %303 = load float, ptr %301, align 4, !tbaa !58
  %304 = fsub float %302, %303
  %305 = getelementptr inbounds float, ptr %299, i64 1
  %306 = load float, ptr %305, align 4, !tbaa !58
  %307 = getelementptr inbounds float, ptr %301, i64 1
  %308 = load float, ptr %307, align 4, !tbaa !58
  %309 = fsub float %306, %308
  %310 = fmul float %309, %309
  %311 = tail call float @llvm.fmuladd.f32(float %304, float %304, float %310)
  %312 = fcmp ogt float %311, %6
  br i1 %312, label %336, label %327

313:                                              ; preds = %327
  %314 = getelementptr inbounds %struct.MLoopUV, ptr %329, i64 1
  %315 = getelementptr inbounds %struct.MLoopUV, ptr %330, i64 1
  %316 = load float, ptr %315, align 4, !tbaa !58
  %317 = load float, ptr %314, align 4, !tbaa !58
  %318 = fsub float %316, %317
  %319 = getelementptr inbounds %struct.MLoopUV, ptr %330, i64 1, i32 0, i64 1
  %320 = load float, ptr %319, align 4, !tbaa !58
  %321 = getelementptr inbounds %struct.MLoopUV, ptr %329, i64 1, i32 0, i64 1
  %322 = load float, ptr %321, align 4, !tbaa !58
  %323 = fsub float %320, %322
  %324 = fmul float %323, %323
  %325 = tail call float @llvm.fmuladd.f32(float %318, float %318, float %324)
  %326 = fcmp ogt float %325, %6
  br i1 %326, label %333, label %327, !llvm.loop !74

327:                                              ; preds = %297, %313
  %328 = phi i32 [ %331, %313 ], [ 0, %297 ]
  %329 = phi ptr [ %314, %313 ], [ %301, %297 ]
  %330 = phi ptr [ %315, %313 ], [ %299, %297 ]
  %331 = add nuw nsw i32 %328, 1
  %332 = icmp eq i32 %331, %295
  br i1 %332, label %333, label %313, !llvm.loop !74

333:                                              ; preds = %313, %327
  %334 = phi i32 [ 5, %313 ], [ %292, %327 ]
  %335 = icmp slt i32 %331, %295
  br label %336

336:                                              ; preds = %333, %297, %294
  %337 = phi i1 [ %296, %294 ], [ %296, %297 ], [ %335, %333 ]
  %338 = phi i32 [ %292, %294 ], [ 5, %297 ], [ %334, %333 ]
  br i1 %337, label %476, label %339

339:                                              ; preds = %336, %291
  %340 = phi i32 [ %338, %336 ], [ %292, %291 ]
  %341 = icmp eq i32 %203, 17
  br i1 %341, label %342, label %413

342:                                              ; preds = %339
  %343 = load i32, ptr %60, align 4, !tbaa !46
  %344 = icmp sgt i32 %343, 0
  br i1 %344, label %345, label %410

345:                                              ; preds = %342
  %346 = getelementptr inbounds %struct.CustomDataLayer, ptr %94, i64 0, i32 9
  %347 = load ptr, ptr %346, align 8, !tbaa !57
  %348 = getelementptr inbounds %struct.CustomDataLayer, ptr %81, i64 0, i32 9
  %349 = load ptr, ptr %348, align 8, !tbaa !57
  %350 = load i8, ptr %349, align 1, !tbaa !75
  %351 = zext i8 %350 to i32
  %352 = load i8, ptr %347, align 1, !tbaa !75
  %353 = zext i8 %352 to i32
  %354 = sub nsw i32 %351, %353
  %355 = tail call i32 @llvm.abs.i32(i32 %354, i1 true)
  %356 = sitofp i32 %355 to float
  %357 = fcmp ogt float %356, %4
  br i1 %357, label %410, label %369

358:                                              ; preds = %406
  %359 = getelementptr inbounds %struct.MLoopCol, ptr %371, i64 1
  %360 = getelementptr inbounds %struct.MLoopCol, ptr %372, i64 1
  %361 = load i8, ptr %359, align 1, !tbaa !75
  %362 = zext i8 %361 to i32
  %363 = load i8, ptr %360, align 1, !tbaa !75
  %364 = zext i8 %363 to i32
  %365 = sub nsw i32 %362, %364
  %366 = tail call i32 @llvm.abs.i32(i32 %365, i1 true)
  %367 = sitofp i32 %366 to float
  %368 = fcmp ogt float %367, %4
  br i1 %368, label %410, label %369, !llvm.loop !77

369:                                              ; preds = %345, %358
  %370 = phi i32 [ %407, %358 ], [ 0, %345 ]
  %371 = phi ptr [ %359, %358 ], [ %349, %345 ]
  %372 = phi ptr [ %360, %358 ], [ %347, %345 ]
  %373 = phi i1 [ %408, %358 ], [ %344, %345 ]
  %374 = getelementptr inbounds %struct.MLoopCol, ptr %371, i64 0, i32 1
  %375 = load i8, ptr %374, align 1, !tbaa !78
  %376 = zext i8 %375 to i32
  %377 = getelementptr inbounds %struct.MLoopCol, ptr %372, i64 0, i32 1
  %378 = load i8, ptr %377, align 1, !tbaa !78
  %379 = zext i8 %378 to i32
  %380 = sub nsw i32 %376, %379
  %381 = tail call i32 @llvm.abs.i32(i32 %380, i1 true)
  %382 = sitofp i32 %381 to float
  %383 = fcmp ogt float %382, %4
  br i1 %383, label %410, label %384

384:                                              ; preds = %369
  %385 = getelementptr inbounds %struct.MLoopCol, ptr %371, i64 0, i32 2
  %386 = load i8, ptr %385, align 1, !tbaa !79
  %387 = zext i8 %386 to i32
  %388 = getelementptr inbounds %struct.MLoopCol, ptr %372, i64 0, i32 2
  %389 = load i8, ptr %388, align 1, !tbaa !79
  %390 = zext i8 %389 to i32
  %391 = sub nsw i32 %387, %390
  %392 = tail call i32 @llvm.abs.i32(i32 %391, i1 true)
  %393 = sitofp i32 %392 to float
  %394 = fcmp ogt float %393, %4
  br i1 %394, label %410, label %395

395:                                              ; preds = %384
  %396 = getelementptr inbounds %struct.MLoopCol, ptr %371, i64 0, i32 3
  %397 = load i8, ptr %396, align 1, !tbaa !80
  %398 = zext i8 %397 to i32
  %399 = getelementptr inbounds %struct.MLoopCol, ptr %372, i64 0, i32 3
  %400 = load i8, ptr %399, align 1, !tbaa !80
  %401 = zext i8 %400 to i32
  %402 = sub nsw i32 %398, %401
  %403 = tail call i32 @llvm.abs.i32(i32 %402, i1 true)
  %404 = sitofp i32 %403 to float
  %405 = fcmp ogt float %404, %4
  br i1 %405, label %410, label %406

406:                                              ; preds = %395
  %407 = add nuw nsw i32 %370, 1
  %408 = icmp slt i32 %407, %343
  %409 = icmp eq i32 %407, %343
  br i1 %409, label %410, label %358, !llvm.loop !77

410:                                              ; preds = %406, %358, %369, %384, %395, %345, %342
  %411 = phi i1 [ %344, %342 ], [ %344, %345 ], [ %373, %395 ], [ %373, %384 ], [ %373, %369 ], [ %408, %358 ], [ %408, %406 ]
  %412 = phi i32 [ %340, %342 ], [ 4, %345 ], [ 4, %395 ], [ 4, %384 ], [ 4, %369 ], [ 4, %358 ], [ %340, %406 ]
  br i1 %411, label %476, label %413

413:                                              ; preds = %410, %339
  %414 = phi i32 [ %412, %410 ], [ %340, %339 ]
  %415 = icmp eq i32 %203, 2
  br i1 %415, label %416, label %472

416:                                              ; preds = %413
  %417 = load i32, ptr %61, align 8, !tbaa !34
  %418 = icmp sgt i32 %417, 0
  br i1 %418, label %419, label %469

419:                                              ; preds = %416
  %420 = getelementptr inbounds %struct.CustomDataLayer, ptr %94, i64 0, i32 9
  %421 = load ptr, ptr %420, align 8, !tbaa !57
  %422 = getelementptr inbounds %struct.CustomDataLayer, ptr %81, i64 0, i32 9
  %423 = load ptr, ptr %422, align 8, !tbaa !57
  br label %424

424:                                              ; preds = %419, %463
  %425 = phi i1 [ %467, %463 ], [ %418, %419 ]
  %426 = phi i32 [ %462, %463 ], [ %414, %419 ]
  %427 = phi ptr [ %466, %463 ], [ %421, %419 ]
  %428 = phi ptr [ %465, %463 ], [ %423, %419 ]
  %429 = phi i32 [ %464, %463 ], [ 0, %419 ]
  %430 = getelementptr inbounds %struct.MDeformVert, ptr %428, i64 0, i32 1
  %431 = load i32, ptr %430, align 8, !tbaa !81
  %432 = getelementptr inbounds %struct.MDeformVert, ptr %427, i64 0, i32 1
  %433 = load i32, ptr %432, align 8, !tbaa !81
  %434 = icmp eq i32 %431, %433
  br i1 %434, label %435, label %460

435:                                              ; preds = %424
  %436 = icmp sgt i32 %431, 0
  br i1 %436, label %437, label %460

437:                                              ; preds = %435
  %438 = load ptr, ptr %428, align 8, !tbaa !83
  %439 = load ptr, ptr %427, align 8, !tbaa !83
  br label %440

440:                                              ; preds = %437, %455
  %441 = phi ptr [ %458, %455 ], [ %439, %437 ]
  %442 = phi ptr [ %457, %455 ], [ %438, %437 ]
  %443 = phi i32 [ %456, %455 ], [ 0, %437 ]
  %444 = load i32, ptr %442, align 4, !tbaa !84
  %445 = load i32, ptr %441, align 4, !tbaa !84
  %446 = icmp eq i32 %444, %445
  br i1 %446, label %447, label %460

447:                                              ; preds = %440
  %448 = getelementptr inbounds %struct.MDeformWeight, ptr %442, i64 0, i32 1
  %449 = load float, ptr %448, align 4, !tbaa !86
  %450 = getelementptr inbounds %struct.MDeformWeight, ptr %441, i64 0, i32 1
  %451 = load float, ptr %450, align 4, !tbaa !86
  %452 = fsub float %449, %451
  %453 = tail call float @llvm.fabs.f32(float %452)
  %454 = fcmp ogt float %453, %4
  br i1 %454, label %460, label %455

455:                                              ; preds = %447
  %456 = add nuw nsw i32 %443, 1
  %457 = getelementptr inbounds %struct.MDeformWeight, ptr %442, i64 1
  %458 = getelementptr inbounds %struct.MDeformWeight, ptr %441, i64 1
  %459 = icmp eq i32 %456, %431
  br i1 %459, label %460, label %440, !llvm.loop !87

460:                                              ; preds = %440, %447, %455, %435, %424
  %461 = phi i1 [ false, %424 ], [ true, %435 ], [ true, %455 ], [ false, %447 ], [ false, %440 ]
  %462 = phi i32 [ 3, %424 ], [ %426, %435 ], [ %426, %455 ], [ 1, %447 ], [ 2, %440 ]
  br i1 %461, label %463, label %469

463:                                              ; preds = %460
  %464 = add nuw nsw i32 %429, 1
  %465 = getelementptr inbounds %struct.MDeformVert, ptr %428, i64 1
  %466 = getelementptr inbounds %struct.MDeformVert, ptr %427, i64 1
  %467 = icmp slt i32 %464, %417
  %468 = icmp eq i32 %464, %417
  br i1 %468, label %469, label %424, !llvm.loop !88

469:                                              ; preds = %460, %463, %416
  %470 = phi i1 [ %418, %416 ], [ %425, %460 ], [ %467, %463 ]
  %471 = phi i32 [ %414, %416 ], [ %462, %463 ], [ %462, %460 ]
  br i1 %470, label %476, label %472

472:                                              ; preds = %413, %469
  %473 = phi i32 [ %471, %469 ], [ %414, %413 ]
  %474 = add nuw nsw i32 %66, 1
  %475 = icmp eq i32 %474, %14
  br i1 %475, label %476, label %62, !llvm.loop !89

476:                                              ; preds = %469, %410, %336, %288, %256, %198, %151, %472, %48, %44
  %477 = phi i32 [ 11, %44 ], [ 0, %48 ], [ 0, %472 ], [ %153, %151 ], [ %200, %198 ], [ %258, %256 ], [ %290, %288 ], [ %338, %336 ], [ %412, %410 ], [ %471, %469 ]
  ret i32 %477
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_ensure_skin_customdata(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 8, !tbaa !91
  br label %8

8:                                                ; preds = %1, %6
  %9 = phi ptr [ %7, %6 ], [ null, %1 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 24
  %13 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %12, i32 noundef 36) #15
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #15
  tail call void @BM_data_layer_add(ptr noundef nonnull %9, ptr noundef nonnull %12, i32 noundef 36) #15
  %16 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  store i8 1, ptr %16, align 4, !tbaa !94
  %17 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %17, align 8, !tbaa !96
  %18 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %18, align 8, !tbaa !97
  %19 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !98
  store ptr %20, ptr %2, align 8, !tbaa !101
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %2) #15
  %21 = load ptr, ptr %18, align 8, !tbaa !97
  %22 = call ptr %21(ptr noundef nonnull %2) #15
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %15
  %25 = load ptr, ptr %22, align 8, !tbaa !102
  %26 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %12, ptr noundef %25, i32 noundef 36) #15
  %27 = getelementptr inbounds %struct.MVertSkin, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !105
  %29 = or i32 %28, 1
  store i32 %29, ptr %27, align 4, !tbaa !105
  br label %30

30:                                               ; preds = %24, %15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #15
  br label %44

31:                                               ; preds = %8
  %32 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 21
  %33 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %32, i32 noundef 36) #15
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %37 = load i32, ptr %36, align 8, !tbaa !34
  %38 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %32, i32 noundef 36, i32 noundef 2, ptr noundef null, i32 noundef %37) #15
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.MVertSkin, ptr %38, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !105
  %43 = or i32 %42, 1
  store i32 %43, ptr %41, align 4, !tbaa !105
  br label %44

44:                                               ; preds = %31, %40, %35, %11, %30
  ret void
}

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_data_layer_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_update_customdata_pointers(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @BKE_editmesh_update_linked_customdata(ptr noundef nonnull %4) #15
  br label %7

7:                                                ; preds = %6, %2
  %8 = icmp eq i8 %1, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %11 = load i32, ptr %10, align 8, !tbaa !107
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %15 = load i32, ptr %14, align 8, !tbaa !45
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %19 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %18, i32 noundef 15) #15
  %20 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %21 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %20, i32 noundef 17) #15
  %22 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %23 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %22, i32 noundef 5) #15
  %24 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %22, i32 noundef 6) #15
  %25 = icmp eq i32 %23, %19
  %26 = icmp eq i32 %24, %21
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %37, label %28

28:                                               ; preds = %17
  %29 = load i32, ptr %10, align 8, !tbaa !107
  tail call void @CustomData_free(ptr noundef nonnull %22, i32 noundef %29) #15
  %30 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %31 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 18
  store ptr null, ptr %31, align 8, !tbaa !108
  store i32 0, ptr %10, align 8, !tbaa !107
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  tail call void @CustomData_from_bmeshpoly(ptr noundef nonnull %22, ptr noundef nonnull %18, ptr noundef nonnull %20, i32 noundef 0) #15
  %32 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !109
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef nonnull @__func__.mesh_ensure_tessellation_customdata, i32 noundef %23, i32 noundef %19, i32 noundef %24, i32 noundef %21)
  br label %37

37:                                               ; preds = %7, %13, %17, %28, %35
  %38 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %39 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %40 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  tail call void @CustomData_bmesh_update_active_layers(ptr noundef nonnull %38, ptr noundef nonnull %39, ptr noundef nonnull %40) #15
  %41 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 21
  %42 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %41, i32 noundef 0) #15
  %43 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  store ptr %42, ptr %43, align 8, !tbaa !111
  %44 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %41, i32 noundef 2) #15
  %45 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 17
  store ptr %44, ptr %45, align 8, !tbaa !112
  %46 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22
  %47 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %46, i32 noundef 3) #15
  %48 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  store ptr %47, ptr %48, align 8, !tbaa !113
  %49 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %38, i32 noundef 4) #15
  %50 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  store ptr %49, ptr %50, align 8, !tbaa !114
  %51 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %38, i32 noundef 6) #15
  %52 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 18
  store ptr %51, ptr %52, align 8, !tbaa !108
  %53 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %38, i32 noundef 5) #15
  %54 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 13
  store ptr %53, ptr %54, align 8, !tbaa !115
  %55 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %39, i32 noundef 25) #15
  %56 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  store ptr %55, ptr %56, align 8, !tbaa !116
  %57 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %40, i32 noundef 26) #15
  %58 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  store ptr %57, ptr %58, align 8, !tbaa !67
  %59 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %39, i32 noundef 15) #15
  %60 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 8
  store ptr %59, ptr %60, align 8, !tbaa !117
  %61 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %40, i32 noundef 17) #15
  %62 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 11
  store ptr %61, ptr %62, align 8, !tbaa !118
  %63 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %40, i32 noundef 16) #15
  %64 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 10
  store ptr %63, ptr %64, align 8, !tbaa !119
  ret void
}

declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_unlink(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %39, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 47
  %9 = load i16, ptr %8, align 2, !tbaa !121
  %10 = icmp sgt i16 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = zext nneg i16 %9 to i64
  br label %13

13:                                               ; preds = %11, %23
  %14 = phi i64 [ 0, %11 ], [ %24, %23 ]
  %15 = load ptr, ptr %4, align 8, !tbaa !120
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !122
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !123
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr %20, align 4, !tbaa !123
  br label %23

23:                                               ; preds = %19, %13
  store ptr null, ptr %16, align 8, !tbaa !122
  %24 = add nuw nsw i64 %14, 1
  %25 = icmp eq i64 %24, %12
  br i1 %25, label %26, label %13, !llvm.loop !127

26:                                               ; preds = %23, %7, %3
  %27 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !128
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ID, ptr %28, i64 0, i32 6
  %32 = load i32, ptr %31, align 4, !tbaa !129
  %33 = add nsw i32 %32, -1
  store i32 %33, ptr %31, align 4, !tbaa !129
  br label %34

34:                                               ; preds = %30, %26
  store ptr null, ptr %27, align 8, !tbaa !128
  %35 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 19
  %36 = load ptr, ptr %35, align 8, !tbaa !131
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store ptr null, ptr %35, align 8, !tbaa !131
  br label %39

39:                                               ; preds = %34, %38, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_free(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  %4 = icmp eq ptr %0, null
  %5 = or i1 %4, %3
  br i1 %5, label %42, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !120
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 47
  %12 = load i16, ptr %11, align 2, !tbaa !121
  %13 = icmp sgt i16 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = zext nneg i16 %12 to i64
  br label %16

16:                                               ; preds = %26, %14
  %17 = phi i64 [ 0, %14 ], [ %27, %26 ]
  %18 = load ptr, ptr %7, align 8, !tbaa !120
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !122
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !123
  %25 = add nsw i32 %24, -1
  store i32 %25, ptr %23, align 4, !tbaa !123
  br label %26

26:                                               ; preds = %22, %16
  store ptr null, ptr %19, align 8, !tbaa !122
  %27 = add nuw nsw i64 %17, 1
  %28 = icmp eq i64 %27, %15
  br i1 %28, label %29, label %16, !llvm.loop !127

29:                                               ; preds = %26, %10, %6
  %30 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !128
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ID, ptr %31, i64 0, i32 6
  %35 = load i32, ptr %34, align 4, !tbaa !129
  %36 = add nsw i32 %35, -1
  store i32 %36, ptr %34, align 4, !tbaa !129
  br label %37

37:                                               ; preds = %33, %29
  store ptr null, ptr %30, align 8, !tbaa !128
  %38 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 19
  %39 = load ptr, ptr %38, align 8, !tbaa !131
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store ptr null, ptr %38, align 8, !tbaa !131
  br label %42

42:                                               ; preds = %41, %37, %2
  %43 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 21
  %44 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %45 = load i32, ptr %44, align 8, !tbaa !34
  tail call void @CustomData_free(ptr noundef nonnull %43, i32 noundef %45) #15
  %46 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22
  %47 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %48 = load i32, ptr %47, align 4, !tbaa !44
  tail call void @CustomData_free(ptr noundef nonnull %46, i32 noundef %48) #15
  %49 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %50 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %51 = load i32, ptr %50, align 8, !tbaa !107
  tail call void @CustomData_free(ptr noundef nonnull %49, i32 noundef %51) #15
  %52 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %53 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %54 = load i32, ptr %53, align 4, !tbaa !46
  tail call void @CustomData_free(ptr noundef nonnull %52, i32 noundef %54) #15
  %55 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %56 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %57 = load i32, ptr %56, align 8, !tbaa !45
  tail call void @CustomData_free(ptr noundef nonnull %55, i32 noundef %57) #15
  %58 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !132
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %42
  tail call void @BKE_free_animdata(ptr noundef %0) #15
  store ptr null, ptr %58, align 8, !tbaa !132
  br label %62

62:                                               ; preds = %61, %42
  %63 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 5
  %64 = load ptr, ptr %63, align 8, !tbaa !120
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr @MEM_freeN, align 8, !tbaa !122
  tail call void %67(ptr noundef nonnull %64) #15
  br label %68

68:                                               ; preds = %66, %62
  %69 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !133
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !122
  tail call void %73(ptr noundef nonnull %70) #15
  br label %74

74:                                               ; preds = %72, %68
  %75 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 6
  %76 = load ptr, ptr %75, align 8, !tbaa !134
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr @MEM_freeN, align 8, !tbaa !122
  tail call void %79(ptr noundef nonnull %76) #15
  br label %80

80:                                               ; preds = %78, %74
  %81 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %82 = load ptr, ptr %81, align 8, !tbaa !90
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr @MEM_freeN, align 8, !tbaa !122
  tail call void %85(ptr noundef nonnull %82) #15
  br label %86

86:                                               ; preds = %84, %80
  ret void
}

declare void @CustomData_free(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mesh_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 17741, ptr noundef %1) #15
  %4 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 34
  %5 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 34, i64 2
  store float 1.000000e+00, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 34, i64 1
  store float 1.000000e+00, ptr %6, align 4, !tbaa !58
  store float 1.000000e+00, ptr %4, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 39
  store float 3.000000e+01, ptr %7, align 8, !tbaa !135
  %8 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 37
  store i16 1, ptr %8, align 4, !tbaa !136
  %9 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 36
  store i32 67, ptr %9, align 8, !tbaa !137
  %10 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 21
  tail call void @CustomData_reset(ptr noundef nonnull %10) #15
  %11 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 22
  tail call void @CustomData_reset(ptr noundef nonnull %11) #15
  %12 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 23
  tail call void @CustomData_reset(ptr noundef nonnull %12) #15
  %13 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 24
  tail call void @CustomData_reset(ptr noundef nonnull %13) #15
  %14 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 25
  tail call void @CustomData_reset(ptr noundef nonnull %14) #15
  ret ptr %3
}

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @CustomData_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mesh_copy_ex(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 28
  %4 = load i32, ptr %3, align 8, !tbaa !107
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 30
  %8 = load i32, ptr %7, align 8, !tbaa !45
  %9 = icmp eq i32 %8, 0
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i1 [ false, %2 ], [ %9, %6 ]
  %12 = tail call ptr @BKE_libblock_copy_ex(ptr noundef %0, ptr noundef %1) #15
  %13 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !122
  %14 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !120
  %16 = tail call ptr %13(ptr noundef %15) #15
  %17 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 5
  store ptr %16, ptr %17, align 8, !tbaa !120
  %18 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 47
  %19 = load i16, ptr %18, align 2, !tbaa !121
  %20 = icmp sgt i16 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %10, %21
  %22 = phi i64 [ %26, %21 ], [ 0, %10 ]
  %23 = load ptr, ptr %17, align 8, !tbaa !120
  %24 = getelementptr inbounds ptr, ptr %23, i64 %22
  %25 = load ptr, ptr %24, align 8, !tbaa !122
  tail call void @id_us_plus(ptr noundef %25) #15
  %26 = add nuw nsw i64 %22, 1
  %27 = load i16, ptr %18, align 2, !tbaa !121
  %28 = sext i16 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %21, label %30, !llvm.loop !138

30:                                               ; preds = %21, %10
  %31 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 19
  %32 = load ptr, ptr %31, align 8, !tbaa !131
  tail call void @id_us_plus(ptr noundef %32) #15
  %33 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 21
  %34 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 21
  %35 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !139
  %36 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 26
  %37 = load i32, ptr %36, align 8, !tbaa !34
  tail call void @CustomData_copy(ptr noundef nonnull %33, ptr noundef nonnull %34, i64 noundef %35, i32 noundef 4, i32 noundef %37) #15
  %38 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 22
  %39 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 22
  %40 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 27
  %41 = load i32, ptr %40, align 4, !tbaa !44
  tail call void @CustomData_copy(ptr noundef nonnull %38, ptr noundef nonnull %39, i64 noundef %35, i32 noundef 4, i32 noundef %41) #15
  %42 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 25
  %43 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 25
  %44 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 31
  %45 = load i32, ptr %44, align 4, !tbaa !46
  tail call void @CustomData_copy(ptr noundef nonnull %42, ptr noundef nonnull %43, i64 noundef %35, i32 noundef 4, i32 noundef %45) #15
  %46 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 24
  %47 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 24
  %48 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 30
  %49 = load i32, ptr %48, align 8, !tbaa !45
  tail call void @CustomData_copy(ptr noundef nonnull %46, ptr noundef nonnull %47, i64 noundef %35, i32 noundef 4, i32 noundef %49) #15
  br i1 %11, label %50, label %55

50:                                               ; preds = %30
  %51 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 23
  %52 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 23
  %53 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 28
  %54 = load i32, ptr %53, align 8, !tbaa !107
  tail call void @CustomData_copy(ptr noundef nonnull %51, ptr noundef nonnull %52, i64 noundef %35, i32 noundef 4, i32 noundef %54) #15
  br label %60

55:                                               ; preds = %30
  %56 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 23
  tail call void @CustomData_reset(ptr noundef nonnull %56) #15
  %57 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 12
  %58 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 18
  store ptr null, ptr %58, align 8, !tbaa !108
  %59 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 28
  store i32 0, ptr %59, align 8, !tbaa !107
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %57, i8 0, i64 16, i1 false)
  br label %60

60:                                               ; preds = %55, %50
  %61 = zext i1 %11 to i8
  tail call void @BKE_mesh_update_customdata_pointers(ptr noundef %12, i8 noundef zeroext %61)
  %62 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 23, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !140
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 23
  br label %73

67:                                               ; preds = %97, %60
  %68 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 24, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !141
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %130

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 30
  br label %102

73:                                               ; preds = %65, %97
  %74 = phi i64 [ 0, %65 ], [ %98, %97 ]
  %75 = load ptr, ptr %66, align 8, !tbaa !142
  %76 = getelementptr inbounds %struct.CustomDataLayer, ptr %75, i64 %74
  %77 = load i32, ptr %76, align 8, !tbaa !49
  %78 = icmp eq i32 %77, 5
  br i1 %78, label %79, label %97

79:                                               ; preds = %73
  %80 = load i32, ptr %3, align 8, !tbaa !107
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.CustomDataLayer, ptr %75, i64 %74, i32 9
  %84 = load ptr, ptr %83, align 8, !tbaa !57
  br label %85

85:                                               ; preds = %82, %92
  %86 = phi ptr [ %94, %92 ], [ %84, %82 ]
  %87 = phi i32 [ %93, %92 ], [ 0, %82 ]
  %88 = getelementptr inbounds %struct.MTFace, ptr %86, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !143
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  tail call void @id_lib_extern(ptr noundef nonnull %89) #15
  br label %92

92:                                               ; preds = %85, %91
  %93 = add nuw nsw i32 %87, 1
  %94 = getelementptr inbounds %struct.MTFace, ptr %86, i64 1
  %95 = load i32, ptr %3, align 8, !tbaa !107
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %85, label %97, !llvm.loop !145

97:                                               ; preds = %92, %79, %73
  %98 = add nuw nsw i64 %74, 1
  %99 = load i32, ptr %62, align 4, !tbaa !140
  %100 = sext i32 %99 to i64
  %101 = icmp slt i64 %98, %100
  br i1 %101, label %73, label %67, !llvm.loop !146

102:                                              ; preds = %71, %125
  %103 = phi i64 [ 0, %71 ], [ %126, %125 ]
  %104 = load ptr, ptr %46, align 8, !tbaa !147
  %105 = getelementptr inbounds %struct.CustomDataLayer, ptr %104, i64 %103
  %106 = load i32, ptr %105, align 8, !tbaa !49
  %107 = icmp eq i32 %106, 15
  br i1 %107, label %108, label %125

108:                                              ; preds = %102
  %109 = load i32, ptr %72, align 8, !tbaa !45
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.CustomDataLayer, ptr %104, i64 %103, i32 9
  %113 = load ptr, ptr %112, align 8, !tbaa !57
  br label %114

114:                                              ; preds = %111, %120
  %115 = phi i32 [ %121, %120 ], [ 0, %111 ]
  %116 = phi ptr [ %122, %120 ], [ %113, %111 ]
  %117 = load ptr, ptr %116, align 8, !tbaa !148
  %118 = icmp eq ptr %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %114
  tail call void @id_lib_extern(ptr noundef nonnull %117) #15
  br label %120

120:                                              ; preds = %114, %119
  %121 = add nuw nsw i32 %115, 1
  %122 = getelementptr inbounds %struct.MTexPoly, ptr %116, i64 1
  %123 = load i32, ptr %72, align 8, !tbaa !45
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %114, label %125, !llvm.loop !150

125:                                              ; preds = %120, %108, %102
  %126 = add nuw nsw i64 %103, 1
  %127 = load i32, ptr %68, align 4, !tbaa !141
  %128 = sext i32 %127 to i64
  %129 = icmp slt i64 %126, %128
  br i1 %129, label %102, label %130, !llvm.loop !151

130:                                              ; preds = %125, %67
  %131 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 20
  store ptr null, ptr %131, align 8, !tbaa !90
  %132 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !122
  %133 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 6
  %134 = load ptr, ptr %133, align 8, !tbaa !134
  %135 = tail call ptr %132(ptr noundef %134) #15
  store ptr %135, ptr %133, align 8, !tbaa !134
  %136 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !122
  %137 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !133
  %139 = tail call ptr %136(ptr noundef %138) #15
  store ptr %139, ptr %137, align 8, !tbaa !133
  %140 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 4
  %141 = load ptr, ptr %140, align 8, !tbaa !128
  %142 = tail call ptr @BKE_key_copy(ptr noundef %141) #15
  %143 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 4
  store ptr %142, ptr %143, align 8, !tbaa !128
  %144 = icmp eq ptr %142, null
  br i1 %144, label %147, label %145

145:                                              ; preds = %130
  %146 = getelementptr inbounds %struct.Key, ptr %142, i64 0, i32 8
  store ptr %12, ptr %146, align 8, !tbaa !152
  br label %147

147:                                              ; preds = %145, %130
  ret ptr %12
}

declare ptr @BKE_libblock_copy_ex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

declare void @CustomData_copy(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @id_lib_extern(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_key_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mesh_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !153
  %3 = tail call ptr @BKE_mesh_copy_ex(ptr noundef %2, ptr noundef %0)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_mesh_to_bmesh(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMAllocTemplate, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %5 = load i32, ptr %4, align 8, !tbaa !34
  store i32 %5, ptr %3, align 4, !tbaa !154
  %6 = getelementptr inbounds %struct.BMAllocTemplate, ptr %3, i64 0, i32 1
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %8 = load i32, ptr %7, align 4, !tbaa !44
  store i32 %8, ptr %6, align 4, !tbaa !156
  %9 = getelementptr inbounds %struct.BMAllocTemplate, ptr %3, i64 0, i32 2
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %11 = load i32, ptr %10, align 4, !tbaa !46
  store i32 %11, ptr %9, align 4, !tbaa !157
  %12 = getelementptr inbounds %struct.BMAllocTemplate, ptr %3, i64 0, i32 3
  %13 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %14 = load i32, ptr %13, align 8, !tbaa !45
  store i32 %14, ptr %12, align 4, !tbaa !158
  %15 = call ptr @BM_mesh_create(ptr noundef nonnull %3) #15
  %16 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 115
  %17 = load i16, ptr %16, align 2, !tbaa !159
  %18 = sext i16 %17 to i32
  call void @BM_mesh_bm_from_me(ptr noundef %15, ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %18) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  ret ptr %15
}

declare ptr @BM_mesh_create(ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_bm_from_me(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_make_local(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !153
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !162
  %5 = icmp eq ptr %4, null
  br i1 %5, label %81, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !163
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %80, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !122
  %13 = icmp eq ptr %12, null
  br i1 %13, label %40, label %14

14:                                               ; preds = %10, %31
  %15 = phi ptr [ %34, %31 ], [ %12, %10 ]
  %16 = phi i8 [ %33, %31 ], [ 0, %10 ]
  %17 = phi i8 [ %32, %31 ], [ 0, %10 ]
  %18 = icmp eq i8 %16, 0
  %19 = icmp eq i8 %17, 0
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !164
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !165
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, i8 1, i8 %17
  %30 = select i1 %28, i8 %16, i8 1
  br label %31

31:                                               ; preds = %25, %21
  %32 = phi i8 [ %17, %21 ], [ %29, %25 ]
  %33 = phi i8 [ %16, %21 ], [ %30, %25 ]
  %34 = load ptr, ptr %15, align 8, !tbaa !122
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %14, !llvm.loop !166

36:                                               ; preds = %31, %14
  %37 = phi i8 [ %17, %14 ], [ %32, %31 ]
  %38 = phi i8 [ %16, %14 ], [ %33, %31 ]
  %39 = icmp ne i8 %37, 0
  br label %40

40:                                               ; preds = %36, %10
  %41 = phi i1 [ false, %10 ], [ %39, %36 ]
  %42 = phi i8 [ 0, %10 ], [ %38, %36 ]
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %80, label %45

45:                                               ; preds = %40
  %46 = icmp ne i8 %42, 0
  %47 = select i1 %41, i1 %46, i1 false
  br i1 %47, label %48, label %81

48:                                               ; preds = %45
  %49 = tail call ptr @BKE_mesh_copy_ex(ptr noundef %2, ptr noundef %0)
  %50 = getelementptr inbounds %struct.ID, ptr %49, i64 0, i32 6
  store i32 0, ptr %50, align 4, !tbaa !163
  %51 = load ptr, ptr %3, align 8, !tbaa !162
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %51, ptr noundef %49) #15
  %52 = load ptr, ptr %11, align 8, !tbaa !122
  %53 = icmp eq ptr %52, null
  br i1 %53, label %81, label %54

54:                                               ; preds = %48, %77
  %55 = phi ptr [ %78, %77 ], [ %52, %48 ]
  %56 = getelementptr inbounds %struct.Object, ptr %55, i64 0, i32 19
  %57 = load ptr, ptr %56, align 8, !tbaa !164
  %58 = icmp eq ptr %57, %0
  br i1 %58, label %59, label %77

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.ID, ptr %55, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !165
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %77

63:                                               ; preds = %59
  tail call void @multires_force_update(ptr noundef nonnull %55) #15
  %64 = getelementptr inbounds %struct.Object, ptr %55, i64 0, i32 3
  %65 = load i16, ptr %64, align 8, !tbaa !167
  %66 = icmp eq i16 %65, 1
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load ptr, ptr %56, align 8, !tbaa !164
  %69 = icmp eq ptr %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.ID, ptr %68, i64 0, i32 6
  %72 = load i32, ptr %71, align 4, !tbaa !163
  %73 = add nsw i32 %72, -1
  store i32 %73, ptr %71, align 4, !tbaa !163
  br label %74

74:                                               ; preds = %70, %67
  store ptr %49, ptr %56, align 8, !tbaa !164
  tail call void @id_us_plus(ptr noundef %49) #15
  br label %75

75:                                               ; preds = %74, %63
  %76 = load ptr, ptr @G, align 8, !tbaa !153
  tail call void @test_object_materials(ptr noundef %76, ptr noundef %49) #15
  tail call void @test_object_modifiers(ptr noundef nonnull %55) #15
  br label %77

77:                                               ; preds = %54, %75, %59
  %78 = load ptr, ptr %55, align 8, !tbaa !122
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %54, !llvm.loop !168

80:                                               ; preds = %40, %6
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #15
  tail call fastcc void @expand_local_mesh(ptr noundef %0)
  br label %81

81:                                               ; preds = %77, %80, %48, %45, %1
  ret void
}

declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @expand_local_mesh(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !131
  tail call void @id_lib_extern(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !115
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !117
  %10 = icmp eq ptr %9, null
  br i1 %10, label %82, label %11

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !141
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %17 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  br label %25

18:                                               ; preds = %48, %11
  %19 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !140
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %82

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %24 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  br label %53

25:                                               ; preds = %15, %48
  %26 = phi i64 [ 0, %15 ], [ %49, %48 ]
  %27 = load ptr, ptr %16, align 8, !tbaa !147
  %28 = getelementptr inbounds %struct.CustomDataLayer, ptr %27, i64 %26
  %29 = load i32, ptr %28, align 8, !tbaa !49
  %30 = icmp eq i32 %29, 15
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = load i32, ptr %17, align 8, !tbaa !45
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.CustomDataLayer, ptr %27, i64 %26, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !57
  br label %37

37:                                               ; preds = %34, %43
  %38 = phi ptr [ %45, %43 ], [ %36, %34 ]
  %39 = phi i32 [ %44, %43 ], [ 0, %34 ]
  %40 = load ptr, ptr %38, align 8, !tbaa !148
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  tail call void @id_lib_extern(ptr noundef nonnull %40) #15
  br label %43

43:                                               ; preds = %37, %42
  %44 = add nuw nsw i32 %39, 1
  %45 = getelementptr inbounds %struct.MTexPoly, ptr %38, i64 1
  %46 = load i32, ptr %17, align 8, !tbaa !45
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %37, label %48, !llvm.loop !169

48:                                               ; preds = %43, %31, %25
  %49 = add nuw nsw i64 %26, 1
  %50 = load i32, ptr %12, align 4, !tbaa !141
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %25, label %18, !llvm.loop !170

53:                                               ; preds = %22, %77
  %54 = phi i64 [ 0, %22 ], [ %78, %77 ]
  %55 = load ptr, ptr %23, align 8, !tbaa !142
  %56 = getelementptr inbounds %struct.CustomDataLayer, ptr %55, i64 %54
  %57 = load i32, ptr %56, align 8, !tbaa !49
  %58 = icmp eq i32 %57, 5
  br i1 %58, label %59, label %77

59:                                               ; preds = %53
  %60 = load i32, ptr %24, align 8, !tbaa !107
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.CustomDataLayer, ptr %55, i64 %54, i32 9
  %64 = load ptr, ptr %63, align 8, !tbaa !57
  br label %65

65:                                               ; preds = %62, %72
  %66 = phi ptr [ %74, %72 ], [ %64, %62 ]
  %67 = phi i32 [ %73, %72 ], [ 0, %62 ]
  %68 = getelementptr inbounds %struct.MTFace, ptr %66, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !143
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  tail call void @id_lib_extern(ptr noundef nonnull %69) #15
  br label %72

72:                                               ; preds = %65, %71
  %73 = add nuw nsw i32 %67, 1
  %74 = getelementptr inbounds %struct.MTFace, ptr %66, i64 1
  %75 = load i32, ptr %24, align 8, !tbaa !107
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %65, label %77, !llvm.loop !171

77:                                               ; preds = %72, %59, %53
  %78 = add nuw nsw i64 %54, 1
  %79 = load i32, ptr %19, align 4, !tbaa !140
  %80 = sext i32 %79 to i64
  %81 = icmp slt i64 %78, %80
  br i1 %81, label %53, label %82, !llvm.loop !172

82:                                               ; preds = %77, %18, %7
  %83 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 5
  %84 = load ptr, ptr %83, align 8, !tbaa !120
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 47
  %88 = load i16, ptr %87, align 2, !tbaa !121
  tail call void @extern_local_matarar(ptr noundef nonnull %84, i16 noundef signext %88) #15
  br label %89

89:                                               ; preds = %86, %82
  ret void
}

declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_assign_object(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @multires_force_update(ptr noundef %0) #15
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !167
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !164
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !163
  %15 = add nsw i32 %14, -1
  store i32 %15, ptr %13, align 4, !tbaa !163
  br label %16

16:                                               ; preds = %12, %8
  store ptr %1, ptr %9, align 8, !tbaa !164
  tail call void @id_us_plus(ptr noundef %1) #15
  br label %17

17:                                               ; preds = %16, %4
  %18 = load ptr, ptr @G, align 8, !tbaa !153
  tail call void @test_object_materials(ptr noundef %18, ptr noundef %1) #15
  tail call void @test_object_modifiers(ptr noundef nonnull %0) #15
  br label %19

19:                                               ; preds = %2, %17
  ret void
}

; Function Attrs: nounwind uwtable
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
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = sext i32 %1 to i64
  %26 = getelementptr inbounds %struct.CustomDataLayer, ptr %24, i64 %25
  %27 = load ptr, ptr %22, align 8, !tbaa !48
  %28 = sext i32 %2 to i64
  %29 = getelementptr inbounds %struct.CustomDataLayer, ptr %27, i64 %28
  %30 = icmp ne ptr %21, null
  %31 = and i1 %7, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %20
  %33 = load ptr, ptr %21, align 8, !tbaa !48
  %34 = sext i32 %3 to i64
  %35 = getelementptr inbounds %struct.CustomDataLayer, ptr %33, i64 %34
  br label %36

36:                                               ; preds = %20, %32
  %37 = phi ptr [ %35, %32 ], [ null, %20 ]
  %38 = getelementptr inbounds %struct.CustomDataLayer, ptr %24, i64 %25, i32 8
  %39 = icmp eq ptr %38, %4
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = tail call ptr @BLI_strncpy(ptr noundef nonnull %38, ptr noundef %4, i64 noundef 64) #15
  %42 = load ptr, ptr %23, align 8, !tbaa !48
  %43 = ptrtoint ptr %26 to i64
  %44 = ptrtoint ptr %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 104
  %47 = trunc i64 %46 to i32
  tail call void @CustomData_set_layer_unique_name(ptr noundef nonnull %23, i32 noundef %47) #15
  br label %48

48:                                               ; preds = %40, %36
  %49 = getelementptr inbounds %struct.CustomDataLayer, ptr %37, i64 0, i32 8
  %50 = getelementptr inbounds %struct.CustomDataLayer, ptr %27, i64 %28, i32 8
  %51 = icmp eq ptr %37, null
  %52 = icmp eq ptr %37, null
  %53 = getelementptr inbounds %struct.CustomDataLayer, ptr %37, i64 0, i32 8
  br label %54

54:                                               ; preds = %81, %48
  %55 = phi i32 [ 1, %48 ], [ %82, %81 ]
  %56 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(1) %50) #16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  br i1 %51, label %83, label %59

59:                                               ; preds = %58
  %60 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(1) %49) #16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %83, label %62

62:                                               ; preds = %54, %59
  %63 = urem i32 %55, %8
  switch i32 %63, label %71 [
    i32 0, label %64
    i32 1, label %66
    i32 2, label %68
  ]

64:                                               ; preds = %62
  %65 = tail call ptr @BLI_strncpy(ptr noundef nonnull %38, ptr noundef nonnull %50, i64 noundef 64) #15
  br label %72

66:                                               ; preds = %62
  %67 = tail call ptr @BLI_strncpy(ptr noundef nonnull %50, ptr noundef nonnull %38, i64 noundef 64) #15
  br label %72

68:                                               ; preds = %62
  br i1 %52, label %81, label %69

69:                                               ; preds = %68
  %70 = tail call ptr @BLI_strncpy(ptr noundef nonnull %53, ptr noundef nonnull %38, i64 noundef 64) #15
  br label %72

71:                                               ; preds = %62
  unreachable

72:                                               ; preds = %69, %66, %64
  %73 = phi ptr [ %23, %64 ], [ %22, %66 ], [ %21, %69 ]
  %74 = phi ptr [ %26, %64 ], [ %29, %66 ], [ %37, %69 ]
  %75 = ptrtoint ptr %74 to i64
  %76 = load ptr, ptr %73, align 8, !tbaa !48
  %77 = ptrtoint ptr %76 to i64
  %78 = sub i64 %75, %77
  %79 = sdiv exact i64 %78, 104
  %80 = trunc i64 %79 to i32
  tail call void @CustomData_set_layer_unique_name(ptr noundef nonnull %73, i32 noundef %80) #15
  br label %81

81:                                               ; preds = %72, %68
  %82 = add nuw nsw i32 %55, 1
  br label %54, !llvm.loop !173

83:                                               ; preds = %58, %59
  ret i8 1
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @CustomData_set_layer_unique_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
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
  %19 = load i32, ptr %18, align 4, !tbaa !47
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %12, %17, %8
  %23 = phi ptr [ %11, %8 ], [ %14, %17 ], [ %14, %12 ]
  %24 = phi ptr [ null, %8 ], [ %15, %17 ], [ %15, %12 ]
  %25 = phi ptr [ %10, %8 ], [ %13, %17 ], [ %13, %12 ]
  %26 = phi i8 [ 0, %8 ], [ %21, %17 ], [ 0, %12 ]
  %27 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %25, i32 noundef 15) #15
  %28 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %23, i32 noundef 16) #15
  %29 = icmp ne i8 %26, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = tail call i32 @CustomData_get_layer_index(ptr noundef %24, i32 noundef 5) #15
  br label %32

32:                                               ; preds = %22, %30
  %33 = phi i32 [ %31, %30 ], [ -1, %22 ]
  %34 = tail call i32 @CustomData_get_named_layer(ptr noundef nonnull %25, i32 noundef 15, ptr noundef %1) #15
  %35 = tail call i32 @CustomData_get_named_layer(ptr noundef nonnull %23, i32 noundef 16, ptr noundef %1) #15
  br i1 %29, label %36, label %38

36:                                               ; preds = %32
  %37 = tail call i32 @CustomData_get_named_layer(ptr noundef %24, i32 noundef 5, ptr noundef %1) #15
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
  %59 = tail call zeroext i8 @BKE_mesh_uv_cdlayer_rename_index(ptr noundef %0, i32 noundef %54, i32 noundef %55, i32 noundef %58, ptr noundef %2, i8 noundef zeroext %26)
  br label %60

60:                                               ; preds = %43, %50
  %61 = phi i8 [ 1, %50 ], [ 0, %43 ]
  ret i8 %61
}

declare i32 @CustomData_get_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CustomData_get_named_layer(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_boundbox_calc(ptr nocapture noundef %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !133
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !122
  %12 = tail call ptr %11(i64 noundef 104, ptr noundef nonnull @.str.5) #15
  store ptr %12, ptr %7, align 8, !tbaa !133
  br label %13

13:                                               ; preds = %10, %3
  %14 = load ptr, ptr %7, align 8, !tbaa !133
  %15 = icmp eq ptr %1, null
  %16 = select i1 %15, ptr %6, ptr %1
  %17 = icmp eq ptr %2, null
  %18 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0x46293E5940000000, ptr %18, align 4, !tbaa !58
  %19 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float 0x46293E5940000000, ptr %19, align 4, !tbaa !58
  store float 0x46293E5940000000, ptr %4, align 4, !tbaa !58
  %20 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %20, align 4, !tbaa !58
  %21 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %21, align 4, !tbaa !58
  store float 0xC6293E5940000000, ptr %5, align 4, !tbaa !58
  %22 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %23 = load i32, ptr %22, align 8, !tbaa !34
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %27 = load ptr, ptr %26, align 8, !tbaa !111
  br label %28

28:                                               ; preds = %25, %28
  %29 = phi ptr [ %32, %28 ], [ %27, %25 ]
  %30 = phi i32 [ %31, %28 ], [ %23, %25 ]
  %31 = add nsw i32 %30, -1
  call void @minmax_v3v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %29) #15
  %32 = getelementptr inbounds %struct.MVert, ptr %29, i64 1
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %34, label %28, !llvm.loop !174

34:                                               ; preds = %28, %13
  %35 = load i32, ptr %22, align 8, !tbaa !34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store float -1.000000e+00, ptr %18, align 4, !tbaa !58
  store float -1.000000e+00, ptr %19, align 4, !tbaa !58
  store float -1.000000e+00, ptr %4, align 4, !tbaa !58
  store float 1.000000e+00, ptr %20, align 4, !tbaa !58
  store float 1.000000e+00, ptr %21, align 4, !tbaa !58
  store float 1.000000e+00, ptr %5, align 4, !tbaa !58
  br label %38

38:                                               ; preds = %37, %34
  call void @mid_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  br i1 %17, label %54, label %39

39:                                               ; preds = %38
  %40 = load float, ptr %5, align 4, !tbaa !58
  %41 = load float, ptr %4, align 4, !tbaa !58
  %42 = fsub float %40, %41
  %43 = fmul float %42, 5.000000e-01
  store float %43, ptr %2, align 4, !tbaa !58
  %44 = getelementptr inbounds float, ptr %2, i64 1
  %45 = load float, ptr %21, align 4, !tbaa !58
  %46 = load float, ptr %19, align 4, !tbaa !58
  %47 = fsub float %45, %46
  %48 = fmul float %47, 5.000000e-01
  store float %48, ptr %44, align 4, !tbaa !58
  %49 = getelementptr inbounds float, ptr %2, i64 2
  %50 = load float, ptr %20, align 4, !tbaa !58
  %51 = load float, ptr %18, align 4, !tbaa !58
  %52 = fsub float %50, %51
  %53 = fmul float %52, 5.000000e-01
  store float %53, ptr %49, align 4, !tbaa !58
  br label %54

54:                                               ; preds = %38, %39
  call void @BKE_boundbox_init_from_minmax(ptr noundef %14, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %55 = getelementptr inbounds %struct.BoundBox, ptr %14, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !175
  %57 = and i32 %56, -3
  store i32 %57, ptr %55, align 4, !tbaa !175
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_mesh_minmax(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !111
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %14, %10 ], [ %9, %7 ]
  %12 = phi i32 [ %13, %10 ], [ %5, %7 ]
  %13 = add nsw i32 %12, -1
  tail call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef %11) #15
  %14 = getelementptr inbounds %struct.MVert, ptr %11, i64 1
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %16, label %10, !llvm.loop !174

16:                                               ; preds = %10, %3
  %17 = load i32, ptr %4, align 8, !tbaa !34
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i8
  ret i8 %19
}

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_boundbox_init_from_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_texspace_calc(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  call void @BKE_mesh_boundbox_calc(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 37
  %5 = load i16, ptr %4, align 4, !tbaa !136
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %46, label %8

8:                                                ; preds = %1, %23
  %9 = phi i64 [ %24, %23 ], [ 0, %1 ]
  %10 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !58
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
  store float %22, ptr %10, align 4, !tbaa !58
  br label %23

23:                                               ; preds = %21, %17
  %24 = add nuw nsw i64 %9, 1
  %25 = icmp eq i64 %24, 3
  br i1 %25, label %26, label %8, !llvm.loop !177

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 33
  %28 = load float, ptr %2, align 4, !tbaa !58
  store float %28, ptr %27, align 4, !tbaa !58
  %29 = getelementptr inbounds float, ptr %2, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !58
  %31 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 33, i64 1
  store float %30, ptr %31, align 4, !tbaa !58
  %32 = getelementptr inbounds float, ptr %2, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !58
  %34 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 33, i64 2
  store float %33, ptr %34, align 4, !tbaa !58
  %35 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 34
  %36 = load float, ptr %3, align 4, !tbaa !58
  store float %36, ptr %35, align 4, !tbaa !58
  %37 = getelementptr inbounds float, ptr %3, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !58
  %39 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 34, i64 1
  store float %38, ptr %39, align 4, !tbaa !58
  %40 = getelementptr inbounds float, ptr %3, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !58
  %42 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 34, i64 2
  store float %41, ptr %42, align 4, !tbaa !58
  %43 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 35
  store float 0.000000e+00, ptr %43, align 4, !tbaa !58
  %44 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 35, i64 1
  store float 0.000000e+00, ptr %44, align 4, !tbaa !58
  %45 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 35, i64 2
  store float 0.000000e+00, ptr %45, align 4, !tbaa !58
  br label %46

46:                                               ; preds = %26, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mesh_boundbox_get(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !164
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 15
  %7 = load ptr, ptr %6, align 8, !tbaa !178
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %64

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !133
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.BoundBox, ptr %11, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !175
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %62, label %18

18:                                               ; preds = %13, %9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  call void @BKE_mesh_boundbox_calc(ptr noundef %5, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %19 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 37
  %20 = load i16, ptr %19, align 4, !tbaa !136
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %61, label %23

23:                                               ; preds = %18, %38
  %24 = phi i64 [ %39, %38 ], [ 0, %18 ]
  %25 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %24
  %26 = load float, ptr %25, align 4, !tbaa !58
  %27 = fcmp oeq float %26, 0.000000e+00
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = fcmp ogt float %26, 0.000000e+00
  %30 = fcmp olt float %26, 0x3EE4F8B580000000
  %31 = and i1 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = fcmp olt float %26, 0.000000e+00
  %34 = fcmp ogt float %26, 0xBEE4F8B580000000
  %35 = and i1 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %28, %23
  %37 = phi float [ 1.000000e+00, %23 ], [ 0x3EE4F8B580000000, %28 ], [ 0xBEE4F8B580000000, %32 ]
  store float %37, ptr %25, align 4, !tbaa !58
  br label %38

38:                                               ; preds = %36, %32
  %39 = add nuw nsw i64 %24, 1
  %40 = icmp eq i64 %39, 3
  br i1 %40, label %41, label %23, !llvm.loop !177

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 33
  %43 = load float, ptr %2, align 4, !tbaa !58
  store float %43, ptr %42, align 4, !tbaa !58
  %44 = getelementptr inbounds float, ptr %2, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !58
  %46 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 33, i64 1
  store float %45, ptr %46, align 4, !tbaa !58
  %47 = getelementptr inbounds float, ptr %2, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !58
  %49 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 33, i64 2
  store float %48, ptr %49, align 4, !tbaa !58
  %50 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 34
  %51 = load float, ptr %3, align 4, !tbaa !58
  store float %51, ptr %50, align 4, !tbaa !58
  %52 = getelementptr inbounds float, ptr %3, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !58
  %54 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 34, i64 1
  store float %53, ptr %54, align 4, !tbaa !58
  %55 = getelementptr inbounds float, ptr %3, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !58
  %57 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 34, i64 2
  store float %56, ptr %57, align 4, !tbaa !58
  %58 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 35
  store float 0.000000e+00, ptr %58, align 4, !tbaa !58
  %59 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 35, i64 1
  store float 0.000000e+00, ptr %59, align 4, !tbaa !58
  %60 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 35, i64 2
  store float 0.000000e+00, ptr %60, align 4, !tbaa !58
  br label %61

61:                                               ; preds = %18, %41
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #15
  br label %62

62:                                               ; preds = %61, %13
  %63 = load ptr, ptr %10, align 8, !tbaa !133
  br label %64

64:                                               ; preds = %1, %62
  %65 = phi ptr [ %63, %62 ], [ %7, %1 ]
  ret ptr %65
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_texspace_get(ptr nocapture noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !133
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.BoundBox, ptr %8, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !175
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %59, label %15

15:                                               ; preds = %10, %4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  call void @BKE_mesh_boundbox_calc(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %16 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 37
  %17 = load i16, ptr %16, align 4, !tbaa !136
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %58, label %20

20:                                               ; preds = %15, %35
  %21 = phi i64 [ %36, %35 ], [ 0, %15 ]
  %22 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %21
  %23 = load float, ptr %22, align 4, !tbaa !58
  %24 = fcmp oeq float %23, 0.000000e+00
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = fcmp ogt float %23, 0.000000e+00
  %27 = fcmp olt float %23, 0x3EE4F8B580000000
  %28 = and i1 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = fcmp olt float %23, 0.000000e+00
  %31 = fcmp ogt float %23, 0xBEE4F8B580000000
  %32 = and i1 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %25, %20
  %34 = phi float [ 1.000000e+00, %20 ], [ 0x3EE4F8B580000000, %25 ], [ 0xBEE4F8B580000000, %29 ]
  store float %34, ptr %22, align 4, !tbaa !58
  br label %35

35:                                               ; preds = %33, %29
  %36 = add nuw nsw i64 %21, 1
  %37 = icmp eq i64 %36, 3
  br i1 %37, label %38, label %20, !llvm.loop !177

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 33
  %40 = load float, ptr %5, align 4, !tbaa !58
  store float %40, ptr %39, align 4, !tbaa !58
  %41 = getelementptr inbounds float, ptr %5, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !58
  %43 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 33, i64 1
  store float %42, ptr %43, align 4, !tbaa !58
  %44 = getelementptr inbounds float, ptr %5, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !58
  %46 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 33, i64 2
  store float %45, ptr %46, align 4, !tbaa !58
  %47 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 34
  %48 = load float, ptr %6, align 4, !tbaa !58
  store float %48, ptr %47, align 4, !tbaa !58
  %49 = getelementptr inbounds float, ptr %6, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !58
  %51 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 34, i64 1
  store float %50, ptr %51, align 4, !tbaa !58
  %52 = getelementptr inbounds float, ptr %6, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !58
  %54 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 34, i64 2
  store float %53, ptr %54, align 4, !tbaa !58
  %55 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 35
  store float 0.000000e+00, ptr %55, align 4, !tbaa !58
  %56 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 35, i64 1
  store float 0.000000e+00, ptr %56, align 4, !tbaa !58
  %57 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 35, i64 2
  store float 0.000000e+00, ptr %57, align 4, !tbaa !58
  br label %58

58:                                               ; preds = %15, %38
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  br label %59

59:                                               ; preds = %58, %10
  %60 = icmp eq ptr %1, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 33
  %63 = load float, ptr %62, align 4, !tbaa !58
  store float %63, ptr %1, align 4, !tbaa !58
  %64 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 33, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !58
  %66 = getelementptr inbounds float, ptr %1, i64 1
  store float %65, ptr %66, align 4, !tbaa !58
  %67 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 33, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !58
  %69 = getelementptr inbounds float, ptr %1, i64 2
  store float %68, ptr %69, align 4, !tbaa !58
  br label %70

70:                                               ; preds = %61, %59
  %71 = icmp eq ptr %2, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 35
  %74 = load float, ptr %73, align 4, !tbaa !58
  store float %74, ptr %2, align 4, !tbaa !58
  %75 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 35, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !58
  %77 = getelementptr inbounds float, ptr %2, i64 1
  store float %76, ptr %77, align 4, !tbaa !58
  %78 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 35, i64 2
  %79 = load float, ptr %78, align 4, !tbaa !58
  %80 = getelementptr inbounds float, ptr %2, i64 2
  store float %79, ptr %80, align 4, !tbaa !58
  br label %81

81:                                               ; preds = %72, %70
  %82 = icmp eq ptr %3, null
  br i1 %82, label %92, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 34
  %85 = load float, ptr %84, align 4, !tbaa !58
  store float %85, ptr %3, align 4, !tbaa !58
  %86 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 34, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !58
  %88 = getelementptr inbounds float, ptr %3, i64 1
  store float %87, ptr %88, align 4, !tbaa !58
  %89 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 34, i64 2
  %90 = load float, ptr %89, align 4, !tbaa !58
  %91 = getelementptr inbounds float, ptr %3, i64 2
  store float %90, ptr %91, align 4, !tbaa !58
  br label %92

92:                                               ; preds = %83, %81
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_texspace_copy_from_object(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %7 = call i32 @BKE_object_obdata_texspace_get(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4) #15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %40, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %6, align 8, !tbaa !122
  %11 = load i16, ptr %10, align 2, !tbaa !179
  %12 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 37
  store i16 %11, ptr %12, align 4, !tbaa !136
  %13 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 33
  %14 = load ptr, ptr %3, align 8, !tbaa !122
  %15 = load float, ptr %14, align 4, !tbaa !58
  store float %15, ptr %13, align 4, !tbaa !58
  %16 = getelementptr inbounds float, ptr %14, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !58
  %18 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 33, i64 1
  store float %17, ptr %18, align 4, !tbaa !58
  %19 = getelementptr inbounds float, ptr %14, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !58
  %21 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 33, i64 2
  store float %20, ptr %21, align 4, !tbaa !58
  %22 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 34
  %23 = load ptr, ptr %5, align 8, !tbaa !122
  %24 = load float, ptr %23, align 4, !tbaa !58
  store float %24, ptr %22, align 4, !tbaa !58
  %25 = getelementptr inbounds float, ptr %23, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !58
  %27 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 34, i64 1
  store float %26, ptr %27, align 4, !tbaa !58
  %28 = getelementptr inbounds float, ptr %23, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !58
  %30 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 34, i64 2
  store float %29, ptr %30, align 4, !tbaa !58
  %31 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 35
  %32 = load ptr, ptr %4, align 8, !tbaa !122
  %33 = load float, ptr %32, align 4, !tbaa !58
  store float %33, ptr %31, align 4, !tbaa !58
  %34 = getelementptr inbounds float, ptr %32, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !58
  %36 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 35, i64 1
  store float %35, ptr %36, align 4, !tbaa !58
  %37 = getelementptr inbounds float, ptr %32, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !58
  %39 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 35, i64 2
  store float %38, ptr %39, align 4, !tbaa !58
  br label %40

40:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret void
}

declare i32 @BKE_object_obdata_texspace_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mesh_orco_verts_get(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !131
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr %3, ptr %5
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !122
  %9 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 26
  %10 = load i32, ptr %9, align 8, !tbaa !34
  %11 = sext i32 %10 to i64
  %12 = mul nsw i64 %11, 12
  %13 = tail call ptr %8(i64 noundef %12, ptr noundef nonnull @.str.6) #15
  %14 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 26
  %15 = load i32, ptr %14, align 8, !tbaa !34
  %16 = load i32, ptr %9, align 8, !tbaa !34
  %17 = tail call i32 @llvm.smin.i32(i32 %15, i32 %16)
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 15
  %21 = load ptr, ptr %20, align 8, !tbaa !111
  %22 = zext nneg i32 %17 to i64
  br label %23

23:                                               ; preds = %19, %23
  %24 = phi i64 [ 0, %19 ], [ %34, %23 ]
  %25 = phi ptr [ %21, %19 ], [ %35, %23 ]
  %26 = getelementptr inbounds [3 x float], ptr %13, i64 %24
  %27 = load float, ptr %25, align 4, !tbaa !58
  store float %27, ptr %26, align 4, !tbaa !58
  %28 = getelementptr inbounds float, ptr %25, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !58
  %30 = getelementptr inbounds float, ptr %26, i64 1
  store float %29, ptr %30, align 4, !tbaa !58
  %31 = getelementptr inbounds float, ptr %25, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !58
  %33 = getelementptr inbounds float, ptr %26, i64 2
  store float %32, ptr %33, align 4, !tbaa !58
  %34 = add nuw nsw i64 %24, 1
  %35 = getelementptr inbounds %struct.MVert, ptr %25, i64 1
  %36 = icmp eq i64 %34, %22
  br i1 %36, label %37, label %23, !llvm.loop !180

37:                                               ; preds = %23, %1
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_orco_verts_transform(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !131
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr %0, ptr %8
  %11 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !133
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.BoundBox, ptr %12, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !175
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %63, label %19

19:                                               ; preds = %14, %4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  call void @BKE_mesh_boundbox_calc(ptr noundef %10, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %20 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 37
  %21 = load i16, ptr %20, align 4, !tbaa !136
  %22 = and i16 %21, 1
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %62, label %24

24:                                               ; preds = %19, %39
  %25 = phi i64 [ %40, %39 ], [ 0, %19 ]
  %26 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %25
  %27 = load float, ptr %26, align 4, !tbaa !58
  %28 = fcmp oeq float %27, 0.000000e+00
  br i1 %28, label %37, label %29

29:                                               ; preds = %24
  %30 = fcmp ogt float %27, 0.000000e+00
  %31 = fcmp olt float %27, 0x3EE4F8B580000000
  %32 = and i1 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = fcmp olt float %27, 0.000000e+00
  %35 = fcmp ogt float %27, 0xBEE4F8B580000000
  %36 = and i1 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %29, %24
  %38 = phi float [ 1.000000e+00, %24 ], [ 0x3EE4F8B580000000, %29 ], [ 0xBEE4F8B580000000, %33 ]
  store float %38, ptr %26, align 4, !tbaa !58
  br label %39

39:                                               ; preds = %37, %33
  %40 = add nuw nsw i64 %25, 1
  %41 = icmp eq i64 %40, 3
  br i1 %41, label %42, label %24, !llvm.loop !177

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 33
  %44 = load float, ptr %5, align 4, !tbaa !58
  store float %44, ptr %43, align 4, !tbaa !58
  %45 = getelementptr inbounds float, ptr %5, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !58
  %47 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 33, i64 1
  store float %46, ptr %47, align 4, !tbaa !58
  %48 = getelementptr inbounds float, ptr %5, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !58
  %50 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 33, i64 2
  store float %49, ptr %50, align 4, !tbaa !58
  %51 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 34
  %52 = load float, ptr %6, align 4, !tbaa !58
  store float %52, ptr %51, align 4, !tbaa !58
  %53 = getelementptr inbounds float, ptr %6, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !58
  %55 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 34, i64 1
  store float %54, ptr %55, align 4, !tbaa !58
  %56 = getelementptr inbounds float, ptr %6, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !58
  %58 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 34, i64 2
  store float %57, ptr %58, align 4, !tbaa !58
  %59 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 35
  store float 0.000000e+00, ptr %59, align 4, !tbaa !58
  %60 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 35, i64 1
  store float 0.000000e+00, ptr %60, align 4, !tbaa !58
  %61 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 35, i64 2
  store float 0.000000e+00, ptr %61, align 4, !tbaa !58
  br label %62

62:                                               ; preds = %19, %42
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  br label %63

63:                                               ; preds = %14, %62
  %64 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 33
  %65 = load float, ptr %64, align 4, !tbaa !58
  %66 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 33, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !58
  %68 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 33, i64 2
  %69 = load float, ptr %68, align 4, !tbaa !58
  %70 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 34
  %71 = load float, ptr %70, align 4, !tbaa !58
  %72 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 34, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !58
  %74 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 34, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !58
  %76 = icmp eq i32 %3, 0
  %77 = icmp sgt i32 %2, 0
  br i1 %76, label %81, label %78

78:                                               ; preds = %63
  br i1 %77, label %79, label %113

79:                                               ; preds = %78
  %80 = zext nneg i32 %2 to i64
  br label %84

81:                                               ; preds = %63
  br i1 %77, label %82, label %113

82:                                               ; preds = %81
  %83 = zext nneg i32 %2 to i64
  br label %97

84:                                               ; preds = %79, %84
  %85 = phi i64 [ 0, %79 ], [ %95, %84 ]
  %86 = getelementptr inbounds [3 x float], ptr %1, i64 %85
  %87 = load float, ptr %86, align 4, !tbaa !58
  %88 = call float @llvm.fmuladd.f32(float %87, float %71, float %65)
  store float %88, ptr %86, align 4, !tbaa !58
  %89 = getelementptr inbounds float, ptr %86, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !58
  %91 = call float @llvm.fmuladd.f32(float %90, float %73, float %67)
  store float %91, ptr %89, align 4, !tbaa !58
  %92 = getelementptr inbounds float, ptr %86, i64 2
  %93 = load float, ptr %92, align 4, !tbaa !58
  %94 = call float @llvm.fmuladd.f32(float %93, float %75, float %69)
  store float %94, ptr %92, align 4, !tbaa !58
  %95 = add nuw nsw i64 %85, 1
  %96 = icmp eq i64 %95, %80
  br i1 %96, label %113, label %84, !llvm.loop !181

97:                                               ; preds = %82, %97
  %98 = phi i64 [ 0, %82 ], [ %111, %97 ]
  %99 = getelementptr inbounds [3 x float], ptr %1, i64 %98
  %100 = load float, ptr %99, align 4, !tbaa !58
  %101 = fsub float %100, %65
  %102 = fdiv float %101, %71
  store float %102, ptr %99, align 4, !tbaa !58
  %103 = getelementptr inbounds float, ptr %99, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !58
  %105 = fsub float %104, %67
  %106 = fdiv float %105, %73
  store float %106, ptr %103, align 4, !tbaa !58
  %107 = getelementptr inbounds float, ptr %99, i64 2
  %108 = load float, ptr %107, align 4, !tbaa !58
  %109 = fsub float %108, %69
  %110 = fdiv float %109, %75
  store float %110, ptr %107, align 4, !tbaa !58
  %111 = add nuw nsw i64 %98, 1
  %112 = icmp eq i64 %111, %83
  br i1 %112, label %113, label %97, !llvm.loop !182

113:                                              ; preds = %84, %97, %78, %81
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @test_index_face(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !183
  %7 = icmp ne i32 %6, 0
  %8 = icmp eq i32 %3, 4
  %9 = or i1 %8, %7
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !185
  %13 = icmp eq i32 %6, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  store i32 0, ptr %11, align 4, !tbaa !185
  %15 = add nsw i32 %3, -1
  br label %16

16:                                               ; preds = %4, %14, %10
  %17 = phi i32 [ %15, %14 ], [ %3, %10 ], [ %3, %4 ]
  %18 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !186
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !185
  %24 = icmp ne i32 %23, 0
  %25 = icmp eq i32 %19, %6
  %26 = and i1 %25, %24
  br i1 %26, label %29, label %33

27:                                               ; preds = %16
  %28 = icmp eq i32 %19, %6
  br i1 %28, label %29, label %33

29:                                               ; preds = %21, %27
  %30 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !185
  store i32 %31, ptr %5, align 4, !tbaa !183
  store i32 0, ptr %30, align 4, !tbaa !185
  %32 = add nsw i32 %17, -1
  br label %33

33:                                               ; preds = %29, %27, %21
  %34 = phi i32 [ %32, %29 ], [ %17, %27 ], [ %17, %21 ]
  %35 = load i32, ptr %0, align 4, !tbaa !187
  %36 = icmp eq i32 %35, %19
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, ptr %5, align 4, !tbaa !183
  store i32 %38, ptr %18, align 4, !tbaa !186
  %39 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !185
  store i32 %40, ptr %5, align 4, !tbaa !183
  store i32 0, ptr %39, align 4, !tbaa !185
  %41 = add nsw i32 %34, -1
  br label %42

42:                                               ; preds = %37, %33
  %43 = phi i32 [ %41, %37 ], [ %34, %33 ]
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i32, ptr %18, align 4, !tbaa !186
  %47 = icmp eq i32 %35, %46
  br i1 %47, label %94, label %48

48:                                               ; preds = %45
  %49 = load i32, ptr %5, align 4, !tbaa !183
  %50 = icmp eq i32 %46, %49
  %51 = icmp eq i32 %49, %35
  %52 = or i1 %50, %51
  br i1 %52, label %94, label %71

53:                                               ; preds = %42
  %54 = icmp eq i32 %43, 4
  br i1 %54, label %55, label %71

55:                                               ; preds = %53
  %56 = load i32, ptr %18, align 4, !tbaa !186
  %57 = icmp eq i32 %35, %56
  br i1 %57, label %94, label %58

58:                                               ; preds = %55
  %59 = load i32, ptr %5, align 4, !tbaa !183
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %94, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 3
  %63 = load i32, ptr %62, align 4, !tbaa !185
  %64 = icmp eq i32 %59, %63
  %65 = icmp eq i32 %63, %35
  %66 = or i1 %64, %65
  %67 = icmp eq i32 %35, %59
  %68 = or i1 %67, %66
  %69 = icmp eq i32 %56, %63
  %70 = or i1 %69, %68
  br i1 %70, label %94, label %71

71:                                               ; preds = %61, %48, %53
  br i1 %44, label %72, label %78

72:                                               ; preds = %71
  %73 = load i32, ptr %5, align 4, !tbaa !183
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %72
  %76 = load i32, ptr %18, align 4, !tbaa !186
  store i32 %76, ptr %0, align 4, !tbaa !187
  store i32 %73, ptr %18, align 4, !tbaa !186
  store i32 %35, ptr %5, align 4, !tbaa !183
  %77 = icmp eq ptr %1, null
  br i1 %77, label %94, label %92

78:                                               ; preds = %71
  %79 = icmp eq i32 %43, 4
  br i1 %79, label %80, label %94

80:                                               ; preds = %78
  %81 = load i32, ptr %5, align 4, !tbaa !183
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 3
  %85 = load i32, ptr %84, align 4, !tbaa !185
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %83, %80
  store i32 %81, ptr %0, align 4, !tbaa !187
  store i32 %35, ptr %5, align 4, !tbaa !183
  %88 = load i32, ptr %18, align 4, !tbaa !186
  %89 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 3
  %90 = load i32, ptr %89, align 4, !tbaa !185
  store i32 %90, ptr %18, align 4, !tbaa !186
  store i32 %88, ptr %89, align 4, !tbaa !185
  %91 = icmp eq ptr %1, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %87, %75
  %93 = phi ptr [ @test_index_face.corner_indices, %75 ], [ @test_index_face.corner_indices.7, %87 ]
  tail call void @CustomData_swap(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %93) #15
  br label %94

94:                                               ; preds = %92, %75, %72, %83, %87, %78, %55, %58, %61, %45, %48
  %95 = phi i32 [ 0, %48 ], [ 0, %45 ], [ 0, %61 ], [ 0, %58 ], [ 0, %55 ], [ %43, %78 ], [ %43, %87 ], [ %43, %83 ], [ %43, %72 ], [ %43, %75 ], [ %43, %92 ]
  ret i32 %95
}

declare void @CustomData_swap(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_mesh_from_object(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !167
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !164
  br label %10

10:                                               ; preds = %3, %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ], [ null, %3 ]
  ret ptr %11
}

declare void @multires_force_update(ptr noundef) local_unnamed_addr #2

declare void @test_object_materials(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @test_object_modifiers(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_from_metaball(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !188
  %4 = icmp eq ptr %3, null
  br i1 %4, label %110, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.DispList, ptr %3, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !189
  %8 = icmp eq i16 %7, 5
  br i1 %8, label %9, label %110

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 21
  %11 = getelementptr inbounds %struct.DispList, ptr %3, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !191
  %13 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %10, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %12) #15
  %14 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 25
  %15 = getelementptr inbounds %struct.DispList, ptr %3, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !192
  %17 = shl nsw i32 %16, 2
  %18 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %14, i32 noundef 26, i32 noundef 1, ptr noundef null, i32 noundef %17) #15
  %19 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 24
  %20 = load i32, ptr %15, align 4, !tbaa !192
  %21 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %19, i32 noundef 25, i32 noundef 1, ptr noundef null, i32 noundef %20) #15
  %22 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 15
  store ptr %13, ptr %22, align 8, !tbaa !111
  %23 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 9
  store ptr %18, ptr %23, align 8, !tbaa !67
  %24 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 7
  store ptr %21, ptr %24, align 8, !tbaa !116
  %25 = load i32, ptr %11, align 8, !tbaa !191
  %26 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 26
  store i32 %25, ptr %26, align 8, !tbaa !34
  %27 = load i32, ptr %15, align 4, !tbaa !192
  %28 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 30
  store i32 %27, ptr %28, align 8, !tbaa !45
  %29 = icmp eq i32 %25, 0
  br i1 %29, label %66, label %30

30:                                               ; preds = %9
  %31 = getelementptr inbounds %struct.DispList, ptr %3, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !193
  %33 = getelementptr inbounds %struct.DispList, ptr %3, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !194
  br label %35

35:                                               ; preds = %30, %35
  %36 = phi ptr [ %62, %35 ], [ %13, %30 ]
  %37 = phi i32 [ %40, %35 ], [ %25, %30 ]
  %38 = phi ptr [ %64, %35 ], [ %32, %30 ]
  %39 = phi ptr [ %63, %35 ], [ %34, %30 ]
  %40 = add nsw i32 %37, -1
  %41 = load float, ptr %38, align 4, !tbaa !58
  store float %41, ptr %36, align 4, !tbaa !58
  %42 = getelementptr inbounds float, ptr %38, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !58
  %44 = getelementptr inbounds float, ptr %36, i64 1
  store float %43, ptr %44, align 4, !tbaa !58
  %45 = getelementptr inbounds float, ptr %38, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !58
  %47 = getelementptr inbounds float, ptr %36, i64 2
  store float %46, ptr %47, align 4, !tbaa !58
  %48 = getelementptr inbounds %struct.MVert, ptr %36, i64 0, i32 1
  %49 = load float, ptr %39, align 4, !tbaa !58
  %50 = fmul float %49, 3.276700e+04
  %51 = fptosi float %50 to i16
  store i16 %51, ptr %48, align 2, !tbaa !179
  %52 = getelementptr inbounds float, ptr %39, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !58
  %54 = fmul float %53, 3.276700e+04
  %55 = fptosi float %54 to i16
  %56 = getelementptr inbounds %struct.MVert, ptr %36, i64 0, i32 1, i64 1
  store i16 %55, ptr %56, align 2, !tbaa !179
  %57 = getelementptr inbounds float, ptr %39, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !58
  %59 = fmul float %58, 3.276700e+04
  %60 = fptosi float %59 to i16
  %61 = getelementptr inbounds %struct.MVert, ptr %36, i64 0, i32 1, i64 2
  store i16 %60, ptr %61, align 2, !tbaa !179
  %62 = getelementptr inbounds %struct.MVert, ptr %36, i64 1
  %63 = getelementptr inbounds float, ptr %39, i64 3
  %64 = getelementptr inbounds float, ptr %38, i64 3
  %65 = icmp eq i32 %40, 0
  br i1 %65, label %66, label %35, !llvm.loop !195

66:                                               ; preds = %35, %9
  %67 = icmp eq i32 %27, 0
  br i1 %67, label %109, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.DispList, ptr %3, i64 0, i32 10
  %70 = load ptr, ptr %69, align 8, !tbaa !196
  %71 = ptrtoint ptr %18 to i64
  %72 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 31
  %73 = load i32, ptr %72, align 4, !tbaa !46
  br label %74

74:                                               ; preds = %68, %96
  %75 = phi i32 [ %73, %68 ], [ %106, %96 ]
  %76 = phi i32 [ %27, %68 ], [ %80, %96 ]
  %77 = phi ptr [ %70, %68 ], [ %107, %96 ]
  %78 = phi ptr [ %21, %68 ], [ %103, %96 ]
  %79 = phi ptr [ %18, %68 ], [ %105, %96 ]
  %80 = add nsw i32 %76, -1
  %81 = getelementptr inbounds i32, ptr %77, i64 2
  %82 = load i32, ptr %81, align 4, !tbaa !197
  %83 = getelementptr inbounds i32, ptr %77, i64 3
  %84 = load i32, ptr %83, align 4, !tbaa !197
  %85 = icmp eq i32 %82, %84
  %86 = select i1 %85, i32 3, i32 4
  %87 = load i32, ptr %77, align 4, !tbaa !197
  store i32 %87, ptr %79, align 4, !tbaa !69
  %88 = getelementptr inbounds i32, ptr %77, i64 1
  %89 = load i32, ptr %88, align 4, !tbaa !197
  %90 = getelementptr inbounds %struct.MLoop, ptr %79, i64 1
  store i32 %89, ptr %90, align 4, !tbaa !69
  %91 = load i32, ptr %81, align 4, !tbaa !197
  %92 = getelementptr inbounds %struct.MLoop, ptr %79, i64 2
  store i32 %91, ptr %92, align 4, !tbaa !69
  br i1 %85, label %96, label %93

93:                                               ; preds = %74
  %94 = load i32, ptr %83, align 4, !tbaa !197
  %95 = getelementptr inbounds %struct.MLoop, ptr %79, i64 3
  store i32 %94, ptr %95, align 4, !tbaa !69
  br label %96

96:                                               ; preds = %93, %74
  %97 = getelementptr inbounds %struct.MPoly, ptr %78, i64 0, i32 1
  store i32 %86, ptr %97, align 4, !tbaa !65
  %98 = ptrtoint ptr %79 to i64
  %99 = sub i64 %98, %71
  %100 = lshr exact i64 %99, 3
  %101 = trunc i64 %100 to i32
  store i32 %101, ptr %78, align 4, !tbaa !68
  %102 = getelementptr inbounds %struct.MPoly, ptr %78, i64 0, i32 3
  store i8 1, ptr %102, align 2, !tbaa !198
  %103 = getelementptr inbounds %struct.MPoly, ptr %78, i64 1
  %104 = zext nneg i32 %86 to i64
  %105 = getelementptr inbounds %struct.MLoop, ptr %79, i64 %104
  %106 = add nsw i32 %75, %86
  store i32 %106, ptr %72, align 4, !tbaa !46
  %107 = getelementptr inbounds i32, ptr %77, i64 4
  %108 = icmp eq i32 %80, 0
  br i1 %108, label %109, label %74, !llvm.loop !199

109:                                              ; preds = %96, %66
  tail call void @BKE_mesh_update_customdata_pointers(ptr noundef %1, i8 noundef zeroext 1)
  tail call void @BKE_mesh_calc_normals(ptr noundef %1) #15
  tail call void @BKE_mesh_calc_edges(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 0) #15
  br label %110

110:                                              ; preds = %5, %109, %2
  ret void
}

declare void @BKE_mesh_calc_normals(ptr noundef) local_unnamed_addr #2

declare void @BKE_mesh_calc_edges(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @BKE_mesh_nurbs_to_mdata(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef %5, ptr nocapture noundef %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8) local_unnamed_addr #0 {
  %10 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %12 = load ptr, ptr %11, align 8, !tbaa !200
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !201
  br label %15

15:                                               ; preds = %14, %9
  %16 = call i32 @BKE_mesh_nurbs_displist_to_mdata(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef null, ptr noundef %7, ptr noundef %8), !range !202
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #15
  ret i32 %16
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @BKE_mesh_nurbs_displist_to_mdata(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef %6, ptr nocapture noundef %7, ptr noundef writeonly %8, ptr nocapture noundef writeonly %9, ptr nocapture noundef writeonly %10) local_unnamed_addr #0 {
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !164
  %14 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 23
  %15 = load i32, ptr %14, align 4, !tbaa !203
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %15, 6
  %19 = icmp ne i32 %18, 0
  %20 = and i1 %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %23 = load i16, ptr %22, align 8, !tbaa !167
  %24 = icmp eq i16 %23, 3
  br label %25

25:                                               ; preds = %21, %11
  %26 = phi i1 [ true, %11 ], [ %24, %21 ]
  %27 = load ptr, ptr %1, align 8, !tbaa !122
  %28 = icmp eq ptr %27, null
  br i1 %28, label %93, label %29

29:                                               ; preds = %25, %86
  %30 = phi ptr [ %91, %86 ], [ %27, %25 ]
  %31 = phi i32 [ %90, %86 ], [ 0, %25 ]
  %32 = phi i32 [ %89, %86 ], [ 0, %25 ]
  %33 = phi i32 [ %88, %86 ], [ 0, %25 ]
  %34 = phi i32 [ %87, %86 ], [ 0, %25 ]
  %35 = getelementptr inbounds %struct.DispList, ptr %30, i64 0, i32 2
  %36 = load i16, ptr %35, align 8, !tbaa !189
  switch i16 %36, label %86 [
    i16 1, label %37
    i16 0, label %47
    i16 2, label %56
    i16 4, label %77
  ]

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.DispList, ptr %30, i64 0, i32 4
  %39 = load i32, ptr %38, align 4, !tbaa !192
  %40 = getelementptr inbounds %struct.DispList, ptr %30, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !191
  %42 = mul nsw i32 %41, %39
  %43 = add nsw i32 %42, %33
  %44 = add nsw i32 %41, -1
  %45 = mul nsw i32 %44, %39
  %46 = add nsw i32 %45, %34
  br label %86

47:                                               ; preds = %29
  br i1 %26, label %48, label %86

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.DispList, ptr %30, i64 0, i32 4
  %50 = load i32, ptr %49, align 4, !tbaa !192
  %51 = getelementptr inbounds %struct.DispList, ptr %30, i64 0, i32 5
  %52 = load i32, ptr %51, align 8, !tbaa !191
  %53 = mul nsw i32 %52, %50
  %54 = add nsw i32 %53, %33
  %55 = add nsw i32 %53, %34
  br label %86

56:                                               ; preds = %29
  %57 = getelementptr inbounds %struct.DispList, ptr %30, i64 0, i32 4
  %58 = load i32, ptr %57, align 4, !tbaa !192
  %59 = getelementptr inbounds %struct.DispList, ptr %30, i64 0, i32 5
  %60 = load i32, ptr %59, align 8, !tbaa !191
  %61 = mul nsw i32 %60, %58
  %62 = add nsw i32 %61, %33
  %63 = add nsw i32 %58, -1
  %64 = getelementptr inbounds %struct.DispList, ptr %30, i64 0, i32 3
  %65 = load i16, ptr %64, align 2, !tbaa !206
  %66 = zext i16 %65 to i32
  %67 = lshr i32 %66, 1
  %68 = and i32 %67, 1
  %69 = add nsw i32 %63, %68
  %70 = add nsw i32 %60, -1
  %71 = and i32 %66, 1
  %72 = add nsw i32 %70, %71
  %73 = mul nsw i32 %69, %72
  %74 = add nsw i32 %73, %31
  %75 = shl nsw i32 %73, 2
  %76 = add nsw i32 %75, %32
  br label %86

77:                                               ; preds = %29
  %78 = getelementptr inbounds %struct.DispList, ptr %30, i64 0, i32 5
  %79 = load i32, ptr %78, align 8, !tbaa !191
  %80 = add nsw i32 %79, %33
  %81 = getelementptr inbounds %struct.DispList, ptr %30, i64 0, i32 4
  %82 = load i32, ptr %81, align 4, !tbaa !192
  %83 = add nsw i32 %82, %31
  %84 = mul nsw i32 %82, 3
  %85 = add nsw i32 %84, %32
  br label %86

86:                                               ; preds = %29, %48, %47, %77, %56, %37
  %87 = phi i32 [ %34, %29 ], [ %34, %77 ], [ %34, %56 ], [ %55, %48 ], [ %34, %47 ], [ %46, %37 ]
  %88 = phi i32 [ %33, %29 ], [ %80, %77 ], [ %62, %56 ], [ %54, %48 ], [ %33, %47 ], [ %43, %37 ]
  %89 = phi i32 [ %32, %29 ], [ %85, %77 ], [ %76, %56 ], [ %32, %48 ], [ %32, %47 ], [ %32, %37 ]
  %90 = phi i32 [ %31, %29 ], [ %83, %77 ], [ %74, %56 ], [ %31, %48 ], [ %31, %47 ], [ %31, %37 ]
  %91 = load ptr, ptr %30, align 8, !tbaa !122
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %29, !llvm.loop !207

93:                                               ; preds = %86, %25
  %94 = phi i32 [ 0, %25 ], [ %87, %86 ]
  %95 = phi i32 [ 0, %25 ], [ %88, %86 ]
  %96 = phi i32 [ 0, %25 ], [ %89, %86 ]
  %97 = phi i32 [ 0, %25 ], [ %90, %86 ]
  %98 = icmp eq i32 %95, 0
  br i1 %98, label %597, label %99

99:                                               ; preds = %93
  %100 = load ptr, ptr @MEM_callocN, align 8, !tbaa !122
  %101 = sext i32 %95 to i64
  %102 = mul nsw i64 %101, 20
  %103 = tail call ptr %100(i64 noundef %102, ptr noundef nonnull @.str.8) #15
  store ptr %103, ptr %2, align 8, !tbaa !122
  %104 = load ptr, ptr @MEM_callocN, align 8, !tbaa !122
  %105 = sext i32 %94 to i64
  %106 = mul nsw i64 %105, 12
  %107 = tail call ptr %104(i64 noundef %106, ptr noundef nonnull @.str.9) #15
  store ptr %107, ptr %4, align 8, !tbaa !122
  %108 = load ptr, ptr @MEM_callocN, align 8, !tbaa !122
  %109 = sext i32 %97 to i64
  %110 = shl nsw i64 %109, 5
  %111 = tail call ptr %108(i64 noundef %110, ptr noundef nonnull @.str.10) #15
  store ptr %111, ptr %6, align 8, !tbaa !122
  %112 = load ptr, ptr @MEM_callocN, align 8, !tbaa !122
  %113 = mul nsw i64 %109, 12
  %114 = tail call ptr %112(i64 noundef %113, ptr noundef nonnull @.str.10) #15
  store ptr %114, ptr %7, align 8, !tbaa !122
  %115 = icmp eq ptr %8, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %99
  %117 = load ptr, ptr @MEM_callocN, align 8, !tbaa !122
  %118 = mul nsw i64 %109, 48
  %119 = tail call ptr %117(i64 noundef %118, ptr noundef nonnull @.str.11) #15
  store ptr %119, ptr %8, align 8, !tbaa !122
  br label %120

120:                                              ; preds = %116, %99
  %121 = phi ptr [ %119, %116 ], [ null, %99 ]
  %122 = load ptr, ptr %1, align 8, !tbaa !122
  %123 = icmp eq ptr %122, null
  br i1 %123, label %497, label %124

124:                                              ; preds = %120, %488
  %125 = phi ptr [ %495, %488 ], [ %122, %120 ]
  %126 = phi ptr [ %494, %488 ], [ %103, %120 ]
  %127 = phi ptr [ %493, %488 ], [ %114, %120 ]
  %128 = phi ptr [ %492, %488 ], [ %111, %120 ]
  %129 = phi i32 [ %491, %488 ], [ 0, %120 ]
  %130 = phi ptr [ %490, %488 ], [ %107, %120 ]
  %131 = phi ptr [ %489, %488 ], [ %121, %120 ]
  %132 = getelementptr inbounds %struct.DispList, ptr %125, i64 0, i32 7
  %133 = load i16, ptr %132, align 2, !tbaa !208
  %134 = and i16 %133, 1
  %135 = icmp eq i16 %134, 0
  %136 = getelementptr inbounds %struct.DispList, ptr %125, i64 0, i32 2
  %137 = load i16, ptr %136, align 8, !tbaa !189
  switch i16 %137, label %488 [
    i16 1, label %138
    i16 0, label %191
    i16 4, label %248
    i16 2, label %334
  ]

138:                                              ; preds = %124
  %139 = getelementptr inbounds %struct.DispList, ptr %125, i64 0, i32 4
  %140 = load i32, ptr %139, align 4, !tbaa !192
  %141 = getelementptr inbounds %struct.DispList, ptr %125, i64 0, i32 5
  %142 = load i32, ptr %141, align 8, !tbaa !191
  %143 = mul nsw i32 %142, %140
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %138
  %146 = getelementptr inbounds %struct.DispList, ptr %125, i64 0, i32 8
  %147 = load ptr, ptr %146, align 8, !tbaa !193
  br label %156

148:                                              ; preds = %156
  %149 = add i32 %129, %143
  br label %150

150:                                              ; preds = %148, %138
  %151 = phi i32 [ %129, %138 ], [ %149, %148 ]
  %152 = phi ptr [ %126, %138 ], [ %169, %148 ]
  %153 = icmp sgt i32 %140, 0
  br i1 %153, label %154, label %488

154:                                              ; preds = %150
  %155 = icmp sgt i32 %142, 1
  br label %171

156:                                              ; preds = %145, %156
  %157 = phi ptr [ %169, %156 ], [ %126, %145 ]
  %158 = phi i32 [ %160, %156 ], [ %143, %145 ]
  %159 = phi ptr [ %168, %156 ], [ %147, %145 ]
  %160 = add nsw i32 %158, -1
  %161 = load float, ptr %159, align 4, !tbaa !58
  store float %161, ptr %157, align 4, !tbaa !58
  %162 = getelementptr inbounds float, ptr %159, i64 1
  %163 = load float, ptr %162, align 4, !tbaa !58
  %164 = getelementptr inbounds float, ptr %157, i64 1
  store float %163, ptr %164, align 4, !tbaa !58
  %165 = getelementptr inbounds float, ptr %159, i64 2
  %166 = load float, ptr %165, align 4, !tbaa !58
  %167 = getelementptr inbounds float, ptr %157, i64 2
  store float %166, ptr %167, align 4, !tbaa !58
  %168 = getelementptr inbounds float, ptr %159, i64 3
  %169 = getelementptr inbounds %struct.MVert, ptr %157, i64 1
  %170 = icmp eq i32 %160, 0
  br i1 %170, label %148, label %156, !llvm.loop !209

171:                                              ; preds = %154, %187
  %172 = phi i32 [ 0, %154 ], [ %189, %187 ]
  %173 = phi ptr [ %130, %154 ], [ %188, %187 ]
  br i1 %155, label %174, label %187

174:                                              ; preds = %171
  %175 = mul nsw i32 %172, %142
  %176 = add nsw i32 %175, %129
  br label %177

177:                                              ; preds = %174, %177
  %178 = phi i32 [ 1, %174 ], [ %185, %177 ]
  %179 = phi ptr [ %173, %174 ], [ %184, %177 ]
  %180 = add nsw i32 %176, %178
  %181 = add nsw i32 %180, -1
  store i32 %181, ptr %179, align 4, !tbaa !60
  %182 = getelementptr inbounds %struct.MEdge, ptr %179, i64 0, i32 1
  store i32 %180, ptr %182, align 4, !tbaa !62
  %183 = getelementptr inbounds %struct.MEdge, ptr %179, i64 0, i32 4
  store i16 162, ptr %183, align 2, !tbaa !210
  %184 = getelementptr inbounds %struct.MEdge, ptr %179, i64 1
  %185 = add nuw nsw i32 %178, 1
  %186 = icmp eq i32 %185, %142
  br i1 %186, label %187, label %177, !llvm.loop !211

187:                                              ; preds = %177, %171
  %188 = phi ptr [ %173, %171 ], [ %184, %177 ]
  %189 = add nuw nsw i32 %172, 1
  %190 = icmp eq i32 %189, %140
  br i1 %190, label %488, label %171, !llvm.loop !212

191:                                              ; preds = %124
  br i1 %26, label %192, label %488

192:                                              ; preds = %191
  %193 = getelementptr inbounds %struct.DispList, ptr %125, i64 0, i32 4
  %194 = load i32, ptr %193, align 4, !tbaa !192
  %195 = getelementptr inbounds %struct.DispList, ptr %125, i64 0, i32 5
  %196 = load i32, ptr %195, align 8, !tbaa !191
  %197 = mul nsw i32 %196, %194
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %192
  %200 = getelementptr inbounds %struct.DispList, ptr %125, i64 0, i32 8
  %201 = load ptr, ptr %200, align 8, !tbaa !193
  br label %211

202:                                              ; preds = %211
  %203 = add i32 %129, %197
  br label %204

204:                                              ; preds = %202, %192
  %205 = phi i32 [ %129, %192 ], [ %203, %202 ]
  %206 = phi ptr [ %126, %192 ], [ %224, %202 ]
  %207 = icmp sgt i32 %194, 0
  br i1 %207, label %208, label %488

208:                                              ; preds = %204
  %209 = icmp sgt i32 %196, 0
  %210 = add nsw i32 %196, -1
  br label %226

211:                                              ; preds = %199, %211
  %212 = phi ptr [ %224, %211 ], [ %126, %199 ]
  %213 = phi i32 [ %215, %211 ], [ %197, %199 ]
  %214 = phi ptr [ %223, %211 ], [ %201, %199 ]
  %215 = add nsw i32 %213, -1
  %216 = load float, ptr %214, align 4, !tbaa !58
  store float %216, ptr %212, align 4, !tbaa !58
  %217 = getelementptr inbounds float, ptr %214, i64 1
  %218 = load float, ptr %217, align 4, !tbaa !58
  %219 = getelementptr inbounds float, ptr %212, i64 1
  store float %218, ptr %219, align 4, !tbaa !58
  %220 = getelementptr inbounds float, ptr %214, i64 2
  %221 = load float, ptr %220, align 4, !tbaa !58
  %222 = getelementptr inbounds float, ptr %212, i64 2
  store float %221, ptr %222, align 4, !tbaa !58
  %223 = getelementptr inbounds float, ptr %214, i64 3
  %224 = getelementptr inbounds %struct.MVert, ptr %212, i64 1
  %225 = icmp eq i32 %215, 0
  br i1 %225, label %202, label %211, !llvm.loop !213

226:                                              ; preds = %208, %244
  %227 = phi i32 [ 0, %208 ], [ %246, %244 ]
  %228 = phi ptr [ %130, %208 ], [ %245, %244 ]
  br i1 %209, label %229, label %244

229:                                              ; preds = %226
  %230 = mul nsw i32 %227, %196
  %231 = add nsw i32 %230, %129
  br label %232

232:                                              ; preds = %229, %232
  %233 = phi i32 [ 0, %229 ], [ %242, %232 ]
  %234 = phi ptr [ %228, %229 ], [ %241, %232 ]
  %235 = add nsw i32 %233, %231
  store i32 %235, ptr %234, align 4, !tbaa !60
  %236 = icmp eq i32 %233, %210
  %237 = add nsw i32 %235, 1
  %238 = select i1 %236, i32 %231, i32 %237
  %239 = getelementptr inbounds %struct.MEdge, ptr %234, i64 0, i32 1
  store i32 %238, ptr %239, align 4, !tbaa !62
  %240 = getelementptr inbounds %struct.MEdge, ptr %234, i64 0, i32 4
  store i16 162, ptr %240, align 2, !tbaa !210
  %241 = getelementptr inbounds %struct.MEdge, ptr %234, i64 1
  %242 = add nuw nsw i32 %233, 1
  %243 = icmp eq i32 %242, %196
  br i1 %243, label %244, label %232, !llvm.loop !214

244:                                              ; preds = %232, %226
  %245 = phi ptr [ %228, %226 ], [ %241, %232 ]
  %246 = add nuw nsw i32 %227, 1
  %247 = icmp eq i32 %246, %194
  br i1 %247, label %488, label %226, !llvm.loop !215

248:                                              ; preds = %124
  %249 = getelementptr inbounds %struct.DispList, ptr %125, i64 0, i32 5
  %250 = load i32, ptr %249, align 8, !tbaa !191
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %272, label %252

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.DispList, ptr %125, i64 0, i32 8
  %254 = load ptr, ptr %253, align 8, !tbaa !193
  br label %255

255:                                              ; preds = %252, %255
  %256 = phi ptr [ %268, %255 ], [ %126, %252 ]
  %257 = phi i32 [ %259, %255 ], [ %250, %252 ]
  %258 = phi ptr [ %267, %255 ], [ %254, %252 ]
  %259 = add nsw i32 %257, -1
  %260 = load float, ptr %258, align 4, !tbaa !58
  store float %260, ptr %256, align 4, !tbaa !58
  %261 = getelementptr inbounds float, ptr %258, i64 1
  %262 = load float, ptr %261, align 4, !tbaa !58
  %263 = getelementptr inbounds float, ptr %256, i64 1
  store float %262, ptr %263, align 4, !tbaa !58
  %264 = getelementptr inbounds float, ptr %258, i64 2
  %265 = load float, ptr %264, align 4, !tbaa !58
  %266 = getelementptr inbounds float, ptr %256, i64 2
  store float %265, ptr %266, align 4, !tbaa !58
  %267 = getelementptr inbounds float, ptr %258, i64 3
  %268 = getelementptr inbounds %struct.MVert, ptr %256, i64 1
  %269 = icmp eq i32 %259, 0
  br i1 %269, label %270, label %255, !llvm.loop !216

270:                                              ; preds = %255
  %271 = add i32 %129, %250
  br label %272

272:                                              ; preds = %270, %248
  %273 = phi i32 [ %129, %248 ], [ %271, %270 ]
  %274 = phi ptr [ %126, %248 ], [ %268, %270 ]
  %275 = getelementptr inbounds %struct.DispList, ptr %125, i64 0, i32 4
  %276 = load i32, ptr %275, align 4, !tbaa !192
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %488, label %278

278:                                              ; preds = %272
  %279 = getelementptr inbounds %struct.DispList, ptr %125, i64 0, i32 10
  %280 = load ptr, ptr %279, align 8, !tbaa !196
  %281 = load ptr, ptr %6, align 8, !tbaa !122
  %282 = ptrtoint ptr %281 to i64
  %283 = getelementptr inbounds %struct.DispList, ptr %125, i64 0, i32 6
  %284 = load i16, ptr %283, align 4, !tbaa !217
  %285 = add nsw i32 %250, -1
  %286 = sitofp i32 %285 to float
  br label %287

287:                                              ; preds = %278, %329
  %288 = phi i32 [ %276, %278 ], [ %293, %329 ]
  %289 = phi ptr [ %127, %278 ], [ %330, %329 ]
  %290 = phi ptr [ %128, %278 ], [ %331, %329 ]
  %291 = phi ptr [ %280, %278 ], [ %332, %329 ]
  %292 = phi ptr [ %131, %278 ], [ %324, %329 ]
  %293 = add nsw i32 %288, -1
  %294 = load i32, ptr %291, align 4, !tbaa !197
  %295 = add nsw i32 %294, %129
  store i32 %295, ptr %290, align 4, !tbaa !69
  %296 = getelementptr inbounds i32, ptr %291, i64 2
  %297 = load i32, ptr %296, align 4, !tbaa !197
  %298 = add nsw i32 %297, %129
  %299 = getelementptr inbounds %struct.MLoop, ptr %290, i64 1
  store i32 %298, ptr %299, align 4, !tbaa !69
  %300 = getelementptr inbounds i32, ptr %291, i64 1
  %301 = load i32, ptr %300, align 4, !tbaa !197
  %302 = add nsw i32 %301, %129
  %303 = getelementptr inbounds %struct.MLoop, ptr %290, i64 2
  store i32 %302, ptr %303, align 4, !tbaa !69
  %304 = ptrtoint ptr %290 to i64
  %305 = sub i64 %304, %282
  %306 = lshr exact i64 %305, 3
  %307 = trunc i64 %306 to i32
  store i32 %307, ptr %289, align 4, !tbaa !68
  %308 = getelementptr inbounds %struct.MPoly, ptr %289, i64 0, i32 1
  store i32 3, ptr %308, align 4, !tbaa !65
  %309 = getelementptr inbounds %struct.MPoly, ptr %289, i64 0, i32 2
  store i16 %284, ptr %309, align 4, !tbaa !218
  %310 = icmp eq ptr %292, null
  br i1 %310, label %323, label %311

311:                                              ; preds = %287, %311
  %312 = phi i64 [ %320, %311 ], [ 0, %287 ]
  %313 = phi ptr [ %321, %311 ], [ %292, %287 ]
  %314 = getelementptr inbounds %struct.MLoop, ptr %290, i64 %312
  %315 = load i32, ptr %314, align 4, !tbaa !69
  %316 = sub i32 %315, %129
  %317 = uitofp i32 %316 to float
  %318 = fdiv float %317, %286
  store float %318, ptr %313, align 4, !tbaa !58
  %319 = getelementptr inbounds [2 x float], ptr %313, i64 0, i64 1
  store float 0.000000e+00, ptr %319, align 4, !tbaa !58
  %320 = add nuw nsw i64 %312, 1
  %321 = getelementptr inbounds %struct.MLoopUV, ptr %313, i64 1
  %322 = icmp eq i64 %320, 3
  br i1 %322, label %323, label %311, !llvm.loop !219

323:                                              ; preds = %311, %287
  %324 = phi ptr [ null, %287 ], [ %321, %311 ]
  br i1 %135, label %329, label %325

325:                                              ; preds = %323
  %326 = getelementptr inbounds %struct.MPoly, ptr %289, i64 0, i32 3
  %327 = load i8, ptr %326, align 2, !tbaa !198
  %328 = or i8 %327, 1
  store i8 %328, ptr %326, align 2, !tbaa !198
  br label %329

329:                                              ; preds = %325, %323
  %330 = getelementptr inbounds %struct.MPoly, ptr %289, i64 1
  %331 = getelementptr inbounds %struct.MLoop, ptr %290, i64 3
  %332 = getelementptr inbounds i32, ptr %291, i64 3
  %333 = icmp eq i32 %293, 0
  br i1 %333, label %488, label %287, !llvm.loop !220

334:                                              ; preds = %124
  %335 = getelementptr inbounds %struct.DispList, ptr %125, i64 0, i32 4
  %336 = load i32, ptr %335, align 4, !tbaa !192
  %337 = getelementptr inbounds %struct.DispList, ptr %125, i64 0, i32 5
  %338 = load i32, ptr %337, align 8, !tbaa !191
  %339 = mul nsw i32 %338, %336
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %346, label %341

341:                                              ; preds = %334
  %342 = getelementptr inbounds %struct.DispList, ptr %125, i64 0, i32 8
  %343 = load ptr, ptr %342, align 8, !tbaa !193
  br label %373

344:                                              ; preds = %373
  %345 = add i32 %129, %339
  br label %346

346:                                              ; preds = %344, %334
  %347 = phi i32 [ %129, %334 ], [ %345, %344 ]
  %348 = phi ptr [ %126, %334 ], [ %386, %344 ]
  %349 = icmp sgt i32 %336, 0
  br i1 %349, label %350, label %488

350:                                              ; preds = %346
  %351 = getelementptr inbounds %struct.DispList, ptr %125, i64 0, i32 3
  %352 = load i16, ptr %351, align 2, !tbaa !206
  %353 = and i16 %352, 2
  %354 = icmp eq i16 %353, 0
  %355 = add nsw i32 %336, -1
  %356 = and i16 %352, 1
  %357 = icmp eq i16 %356, 0
  %358 = getelementptr inbounds %struct.DispList, ptr %125, i64 0, i32 6
  %359 = zext i16 %352 to i32
  %360 = and i32 %359, 1
  %361 = icmp eq i32 %360, 0
  %362 = and i32 %359, 2
  %363 = icmp eq i32 %362, 0
  %364 = select i1 %363, i32 %355, i32 %336
  %365 = and i32 %359, 2
  %366 = icmp eq i32 %365, 0
  %367 = select i1 %366, i32 %355, i32 %336
  %368 = sext i1 %361 to i32
  %369 = add nsw i32 %338, %368
  %370 = select i1 %361, i32 %367, i32 %364
  %371 = sitofp i32 %370 to float
  %372 = sitofp i32 %369 to float
  br label %388

373:                                              ; preds = %341, %373
  %374 = phi ptr [ %386, %373 ], [ %126, %341 ]
  %375 = phi i32 [ %377, %373 ], [ %339, %341 ]
  %376 = phi ptr [ %385, %373 ], [ %343, %341 ]
  %377 = add nsw i32 %375, -1
  %378 = load float, ptr %376, align 4, !tbaa !58
  store float %378, ptr %374, align 4, !tbaa !58
  %379 = getelementptr inbounds float, ptr %376, i64 1
  %380 = load float, ptr %379, align 4, !tbaa !58
  %381 = getelementptr inbounds float, ptr %374, i64 1
  store float %380, ptr %381, align 4, !tbaa !58
  %382 = getelementptr inbounds float, ptr %376, i64 2
  %383 = load float, ptr %382, align 4, !tbaa !58
  %384 = getelementptr inbounds float, ptr %374, i64 2
  store float %383, ptr %384, align 4, !tbaa !58
  %385 = getelementptr inbounds float, ptr %376, i64 3
  %386 = getelementptr inbounds %struct.MVert, ptr %374, i64 1
  %387 = icmp eq i32 %377, 0
  br i1 %387, label %344, label %373, !llvm.loop !221

388:                                              ; preds = %350, %482
  %389 = phi ptr [ %127, %350 ], [ %485, %482 ]
  %390 = phi ptr [ %128, %350 ], [ %484, %482 ]
  %391 = phi i32 [ 0, %350 ], [ %486, %482 ]
  %392 = phi ptr [ %131, %350 ], [ %483, %482 ]
  %393 = icmp eq i32 %391, %355
  %394 = select i1 %354, i1 %393, i1 false
  br i1 %394, label %488, label %395

395:                                              ; preds = %388
  %396 = mul nsw i32 %391, %338
  %397 = add nsw i32 %396, %129
  br i1 %357, label %401, label %398

398:                                              ; preds = %395
  %399 = add nsw i32 %397, %338
  %400 = add nsw i32 %399, -1
  br label %404

401:                                              ; preds = %395
  %402 = add nsw i32 %397, 1
  %403 = add nsw i32 %402, %338
  br label %404

404:                                              ; preds = %401, %398
  %405 = phi i32 [ 0, %398 ], [ 1, %401 ]
  %406 = phi i32 [ %397, %398 ], [ %402, %401 ]
  %407 = phi i32 [ %400, %398 ], [ %397, %401 ]
  %408 = phi i32 [ %399, %398 ], [ %403, %401 ]
  %409 = icmp slt i32 %405, %338
  br i1 %409, label %410, label %482

410:                                              ; preds = %404
  %411 = xor i1 %393, true
  %412 = select i1 %354, i1 true, i1 %411
  %413 = select i1 %412, i32 0, i32 %339
  %414 = sub i32 %338, %413
  %415 = add i32 %414, %407
  %416 = select i1 %412, i32 0, i32 %339
  %417 = sub nsw i32 %408, %416
  %418 = load ptr, ptr %6, align 8, !tbaa !122
  %419 = ptrtoint ptr %418 to i64
  %420 = load i16, ptr %358, align 4, !tbaa !217
  br label %421

421:                                              ; preds = %410, %475
  %422 = phi ptr [ %389, %410 ], [ %476, %475 ]
  %423 = phi ptr [ %390, %410 ], [ %477, %475 ]
  %424 = phi i32 [ %415, %410 ], [ %425, %475 ]
  %425 = phi i32 [ %417, %410 ], [ %478, %475 ]
  %426 = phi i32 [ %407, %410 ], [ %427, %475 ]
  %427 = phi i32 [ %406, %410 ], [ %479, %475 ]
  %428 = phi i32 [ %405, %410 ], [ %480, %475 ]
  %429 = phi ptr [ %392, %410 ], [ %470, %475 ]
  store i32 %427, ptr %423, align 4, !tbaa !69
  %430 = getelementptr inbounds %struct.MLoop, ptr %423, i64 1
  store i32 %425, ptr %430, align 4, !tbaa !69
  %431 = getelementptr inbounds %struct.MLoop, ptr %423, i64 2
  store i32 %424, ptr %431, align 4, !tbaa !69
  %432 = getelementptr inbounds %struct.MLoop, ptr %423, i64 3
  store i32 %426, ptr %432, align 4, !tbaa !69
  %433 = ptrtoint ptr %423 to i64
  %434 = sub i64 %433, %419
  %435 = lshr exact i64 %434, 3
  %436 = trunc i64 %435 to i32
  store i32 %436, ptr %422, align 4, !tbaa !68
  %437 = getelementptr inbounds %struct.MPoly, ptr %422, i64 0, i32 1
  store i32 4, ptr %437, align 4, !tbaa !65
  %438 = getelementptr inbounds %struct.MPoly, ptr %422, i64 0, i32 2
  store i16 %420, ptr %438, align 4, !tbaa !218
  %439 = icmp eq ptr %429, null
  br i1 %439, label %469, label %440

440:                                              ; preds = %421, %465
  %441 = phi i64 [ %466, %465 ], [ 0, %421 ]
  %442 = phi ptr [ %467, %465 ], [ %429, %421 ]
  %443 = getelementptr inbounds %struct.MLoop, ptr %423, i64 %441
  %444 = load i32, ptr %443, align 4, !tbaa !69
  %445 = sub i32 %444, %129
  %446 = sdiv i32 %445, %338
  %447 = sitofp i32 %446 to float
  %448 = fdiv float %447, %371
  store float %448, ptr %442, align 4, !tbaa !58
  %449 = srem i32 %445, %338
  %450 = sitofp i32 %449 to float
  %451 = fdiv float %450, %372
  %452 = getelementptr inbounds [2 x float], ptr %442, i64 0, i64 1
  store float %451, ptr %452, align 4, !tbaa !58
  %453 = trunc i64 %441 to i32
  %454 = add i32 %453, -1
  %455 = icmp ult i32 %454, 2
  %456 = fcmp oeq float %448, 0.000000e+00
  %457 = select i1 %455, i1 %456, i1 false
  br i1 %457, label %458, label %459

458:                                              ; preds = %440
  store float 1.000000e+00, ptr %442, align 4, !tbaa !58
  br label %459

459:                                              ; preds = %440, %458
  %460 = icmp ult i64 %441, 2
  br i1 %460, label %461, label %465

461:                                              ; preds = %459
  %462 = load float, ptr %452, align 4, !tbaa !58
  %463 = fcmp oeq float %462, 0.000000e+00
  br i1 %463, label %464, label %465

464:                                              ; preds = %461
  store float 1.000000e+00, ptr %452, align 4, !tbaa !58
  br label %465

465:                                              ; preds = %459, %464, %461
  %466 = add nuw nsw i64 %441, 1
  %467 = getelementptr inbounds %struct.MLoopUV, ptr %442, i64 1
  %468 = icmp eq i64 %466, 4
  br i1 %468, label %469, label %440, !llvm.loop !222

469:                                              ; preds = %465, %421
  %470 = phi ptr [ null, %421 ], [ %467, %465 ]
  br i1 %135, label %475, label %471

471:                                              ; preds = %469
  %472 = getelementptr inbounds %struct.MPoly, ptr %422, i64 0, i32 3
  %473 = load i8, ptr %472, align 2, !tbaa !198
  %474 = or i8 %473, 1
  store i8 %474, ptr %472, align 2, !tbaa !198
  br label %475

475:                                              ; preds = %471, %469
  %476 = getelementptr inbounds %struct.MPoly, ptr %422, i64 1
  %477 = getelementptr inbounds %struct.MLoop, ptr %423, i64 4
  %478 = add nsw i32 %425, 1
  %479 = add nsw i32 %427, 1
  %480 = add nuw nsw i32 %428, 1
  %481 = icmp eq i32 %480, %338
  br i1 %481, label %482, label %421, !llvm.loop !223

482:                                              ; preds = %475, %404
  %483 = phi ptr [ %392, %404 ], [ %470, %475 ]
  %484 = phi ptr [ %390, %404 ], [ %477, %475 ]
  %485 = phi ptr [ %389, %404 ], [ %476, %475 ]
  %486 = add nuw nsw i32 %391, 1
  %487 = icmp eq i32 %486, %336
  br i1 %487, label %488, label %388, !llvm.loop !224

488:                                              ; preds = %482, %388, %329, %244, %187, %346, %272, %204, %150, %124, %191
  %489 = phi ptr [ %131, %191 ], [ %131, %124 ], [ %131, %150 ], [ %131, %204 ], [ %131, %272 ], [ %131, %346 ], [ %131, %187 ], [ %131, %244 ], [ %324, %329 ], [ %392, %388 ], [ %483, %482 ]
  %490 = phi ptr [ %130, %191 ], [ %130, %124 ], [ %130, %150 ], [ %130, %204 ], [ %130, %272 ], [ %130, %346 ], [ %188, %187 ], [ %245, %244 ], [ %130, %329 ], [ %130, %388 ], [ %130, %482 ]
  %491 = phi i32 [ %129, %191 ], [ %129, %124 ], [ %151, %150 ], [ %205, %204 ], [ %273, %272 ], [ %347, %346 ], [ %151, %187 ], [ %205, %244 ], [ %273, %329 ], [ %347, %388 ], [ %347, %482 ]
  %492 = phi ptr [ %128, %191 ], [ %128, %124 ], [ %128, %150 ], [ %128, %204 ], [ %128, %272 ], [ %128, %346 ], [ %128, %187 ], [ %128, %244 ], [ %331, %329 ], [ %390, %388 ], [ %484, %482 ]
  %493 = phi ptr [ %127, %191 ], [ %127, %124 ], [ %127, %150 ], [ %127, %204 ], [ %127, %272 ], [ %127, %346 ], [ %127, %187 ], [ %127, %244 ], [ %330, %329 ], [ %389, %388 ], [ %485, %482 ]
  %494 = phi ptr [ %126, %191 ], [ %126, %124 ], [ %152, %150 ], [ %206, %204 ], [ %274, %272 ], [ %348, %346 ], [ %152, %187 ], [ %206, %244 ], [ %274, %329 ], [ %348, %388 ], [ %348, %482 ]
  %495 = load ptr, ptr %125, align 8, !tbaa !122
  %496 = icmp eq ptr %495, null
  br i1 %496, label %497, label %124, !llvm.loop !225

497:                                              ; preds = %488, %120
  %498 = icmp eq i32 %97, 0
  br i1 %498, label %595, label %499

499:                                              ; preds = %497
  %500 = load ptr, ptr %7, align 8, !tbaa !122
  %501 = load ptr, ptr %6, align 8, !tbaa !122
  %502 = shl nsw i32 %97, 1
  %503 = tail call i32 @llvm.smax.i32(i32 %502, i32 %94)
  %504 = tail call ptr @BLI_edgehash_new_ex(ptr noundef nonnull @__func__.make_edges_mdata_extend, i32 noundef %503) #15
  %505 = icmp sgt i32 %97, 0
  br i1 %505, label %506, label %515

506:                                              ; preds = %499, %506
  %507 = phi i32 [ %512, %506 ], [ 0, %499 ]
  %508 = phi ptr [ %513, %506 ], [ %500, %499 ]
  %509 = load i32, ptr %508, align 4, !tbaa !68
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds %struct.MLoop, ptr %501, i64 %510
  tail call void @BKE_mesh_poly_edgehash_insert(ptr noundef %504, ptr noundef nonnull %508, ptr noundef %511) #15
  %512 = add nuw nsw i32 %507, 1
  %513 = getelementptr inbounds %struct.MPoly, ptr %508, i64 1
  %514 = icmp eq i32 %512, %97
  br i1 %514, label %515, label %506, !llvm.loop !226

515:                                              ; preds = %506, %499
  %516 = tail call i32 @BLI_edgehash_size(ptr noundef %504) #15
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %593, label %518

518:                                              ; preds = %515
  %519 = load ptr, ptr %4, align 8, !tbaa !122
  %520 = icmp eq ptr %519, null
  br i1 %520, label %527, label %521

521:                                              ; preds = %518
  %522 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !122
  %523 = add nsw i32 %516, %94
  %524 = sext i32 %523 to i64
  %525 = mul nsw i64 %524, 12
  %526 = tail call ptr %522(ptr noundef nonnull %519, i64 noundef %525, ptr noundef nonnull @__func__.make_edges_mdata_extend) #15
  br label %532

527:                                              ; preds = %518
  %528 = load ptr, ptr @MEM_callocN, align 8, !tbaa !122
  %529 = sext i32 %516 to i64
  %530 = mul nsw i64 %529, 12
  %531 = tail call ptr %528(i64 noundef %530, ptr noundef nonnull @__func__.make_edges_mdata_extend) #15
  br label %532

532:                                              ; preds = %527, %521
  %533 = phi ptr [ %526, %521 ], [ %531, %527 ]
  store ptr %533, ptr %4, align 8, !tbaa !122
  %534 = add nsw i32 %516, %94
  %535 = tail call ptr @BLI_edgehashIterator_new(ptr noundef %504) #15
  %536 = getelementptr inbounds %struct.EdgeHashIterator, ptr %535, i64 0, i32 1
  %537 = load ptr, ptr %536, align 8, !tbaa !227
  %538 = icmp eq ptr %537, null
  br i1 %538, label %560, label %539

539:                                              ; preds = %532
  %540 = getelementptr inbounds %struct.MEdge, ptr %533, i64 %105
  br label %541

541:                                              ; preds = %539, %541
  %542 = phi ptr [ %558, %541 ], [ %537, %539 ]
  %543 = phi i32 [ %557, %541 ], [ %94, %539 ]
  %544 = phi ptr [ %556, %541 ], [ %540, %539 ]
  %545 = getelementptr inbounds %struct.MEdge, ptr %544, i64 0, i32 1
  %546 = getelementptr inbounds %struct._eh_Entry, ptr %542, i64 0, i32 1
  %547 = load i32, ptr %546, align 8, !tbaa !229
  store i32 %547, ptr %544, align 4, !tbaa !197
  %548 = getelementptr inbounds %struct._eh_Entry, ptr %542, i64 0, i32 2
  %549 = load i32, ptr %548, align 4, !tbaa !231
  store i32 %549, ptr %545, align 4, !tbaa !197
  %550 = zext i32 %543 to i64
  %551 = inttoptr i64 %550 to ptr
  %552 = getelementptr inbounds %struct._eh_Entry, ptr %542, i64 0, i32 3
  store ptr %551, ptr %552, align 8, !tbaa !232
  %553 = getelementptr inbounds %struct.MEdge, ptr %544, i64 0, i32 3
  store i8 0, ptr %553, align 1, !tbaa !233
  %554 = getelementptr inbounds %struct.MEdge, ptr %544, i64 0, i32 2
  store i8 0, ptr %554, align 4, !tbaa !234
  %555 = getelementptr inbounds %struct.MEdge, ptr %544, i64 0, i32 4
  store i16 34, ptr %555, align 2, !tbaa !210
  tail call void @BLI_edgehashIterator_step(ptr noundef %535) #15
  %556 = getelementptr inbounds %struct.MEdge, ptr %544, i64 1
  %557 = add i32 %543, 1
  %558 = load ptr, ptr %536, align 8, !tbaa !227
  %559 = icmp eq ptr %558, null
  br i1 %559, label %560, label %541, !llvm.loop !235

560:                                              ; preds = %541, %532
  tail call void @BLI_edgehashIterator_free(ptr noundef %535) #15
  %561 = icmp sgt i32 %97, 0
  br i1 %561, label %562, label %593

562:                                              ; preds = %560, %589
  %563 = phi i32 [ %590, %589 ], [ 0, %560 ]
  %564 = phi ptr [ %591, %589 ], [ %500, %560 ]
  %565 = getelementptr inbounds %struct.MPoly, ptr %564, i64 0, i32 1
  %566 = load i32, ptr %565, align 4, !tbaa !65
  %567 = icmp sgt i32 %566, 0
  br i1 %567, label %568, label %589

568:                                              ; preds = %562
  %569 = load i32, ptr %564, align 4, !tbaa !68
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds %struct.MLoop, ptr %501, i64 %570
  %572 = zext nneg i32 %566 to i64
  %573 = getelementptr %struct.MLoop, ptr %571, i64 %572
  %574 = getelementptr %struct.MLoop, ptr %573, i64 -1
  br label %575

575:                                              ; preds = %568, %575
  %576 = phi i32 [ %585, %575 ], [ 0, %568 ]
  %577 = phi ptr [ %578, %575 ], [ %574, %568 ]
  %578 = phi ptr [ %586, %575 ], [ %571, %568 ]
  %579 = load i32, ptr %577, align 4, !tbaa !69
  %580 = load i32, ptr %578, align 4, !tbaa !69
  %581 = tail call ptr @BLI_edgehash_lookup(ptr noundef %504, i32 noundef %579, i32 noundef %580) #15
  %582 = ptrtoint ptr %581 to i64
  %583 = trunc i64 %582 to i32
  %584 = getelementptr inbounds %struct.MLoop, ptr %577, i64 0, i32 1
  store i32 %583, ptr %584, align 4, !tbaa !236
  %585 = add nuw nsw i32 %576, 1
  %586 = getelementptr inbounds %struct.MLoop, ptr %578, i64 1
  %587 = load i32, ptr %565, align 4, !tbaa !65
  %588 = icmp slt i32 %585, %587
  br i1 %588, label %575, label %589, !llvm.loop !237

589:                                              ; preds = %575, %562
  %590 = add nuw nsw i32 %563, 1
  %591 = getelementptr inbounds %struct.MPoly, ptr %564, i64 1
  %592 = icmp eq i32 %590, %97
  br i1 %592, label %593, label %562, !llvm.loop !238

593:                                              ; preds = %589, %560, %515
  %594 = phi i32 [ %94, %515 ], [ %534, %560 ], [ %534, %589 ]
  tail call void @BLI_edgehash_free(ptr noundef %504, ptr noundef null) #15
  br label %595

595:                                              ; preds = %593, %497
  %596 = phi i32 [ %94, %497 ], [ %594, %593 ]
  store i32 %97, ptr %10, align 4, !tbaa !197
  store i32 %96, ptr %9, align 4, !tbaa !197
  store i32 %596, ptr %5, align 4, !tbaa !197
  store i32 %95, ptr %3, align 4, !tbaa !197
  br label %597

597:                                              ; preds = %93, %595
  %598 = phi i32 [ 0, %595 ], [ -1, %93 ]
  ret i32 %598
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_from_nurbs_displist(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = load ptr, ptr @G, align 8, !tbaa !153
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %17 = load ptr, ptr %16, align 8, !tbaa !239
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  store ptr null, ptr %6, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  store ptr null, ptr %7, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  store ptr null, ptr %8, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  store ptr null, ptr %9, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #15
  store ptr null, ptr %10, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #15
  %18 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !164
  %20 = icmp eq ptr %17, null
  br i1 %20, label %21, label %74

21:                                               ; preds = %3
  %22 = icmp eq i8 %2, 0
  %23 = select i1 %22, ptr null, ptr %9
  %24 = call i32 @BKE_mesh_nurbs_displist_to_mdata(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %11, ptr noundef nonnull %7, ptr noundef nonnull %12, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef %23, ptr noundef nonnull %13, ptr noundef nonnull %14), !range !202
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %159

26:                                               ; preds = %21
  %27 = load ptr, ptr @G, align 8, !tbaa !153
  %28 = call ptr @BKE_libblock_alloc(ptr noundef %27, i16 noundef signext 17741, ptr noundef nonnull @.str.12) #15
  %29 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 34
  %30 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 34, i64 2
  store float 1.000000e+00, ptr %30, align 8, !tbaa !58
  %31 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 34, i64 1
  store float 1.000000e+00, ptr %31, align 4, !tbaa !58
  store float 1.000000e+00, ptr %29, align 8, !tbaa !58
  %32 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 39
  store float 3.000000e+01, ptr %32, align 8, !tbaa !135
  %33 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 37
  store i16 1, ptr %33, align 4, !tbaa !136
  %34 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 36
  store i32 67, ptr %34, align 8, !tbaa !137
  %35 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 21
  call void @CustomData_reset(ptr noundef nonnull %35) #15
  %36 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 22
  call void @CustomData_reset(ptr noundef nonnull %36) #15
  %37 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 23
  call void @CustomData_reset(ptr noundef nonnull %37) #15
  %38 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 24
  call void @CustomData_reset(ptr noundef nonnull %38) #15
  %39 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 25
  call void @CustomData_reset(ptr noundef nonnull %39) #15
  %40 = load i32, ptr %11, align 4, !tbaa !197
  %41 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 26
  store i32 %40, ptr %41, align 8, !tbaa !34
  %42 = load i32, ptr %12, align 4, !tbaa !197
  %43 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 27
  store i32 %42, ptr %43, align 4, !tbaa !44
  %44 = load i32, ptr %13, align 4, !tbaa !197
  %45 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 31
  store i32 %44, ptr %45, align 4, !tbaa !46
  %46 = load i32, ptr %14, align 4, !tbaa !197
  %47 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 30
  store i32 %46, ptr %47, align 8, !tbaa !45
  %48 = load ptr, ptr %6, align 8, !tbaa !122
  %49 = call ptr @CustomData_add_layer(ptr noundef nonnull %35, i32 noundef 0, i32 noundef 0, ptr noundef %48, i32 noundef %40) #15
  %50 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 15
  store ptr %49, ptr %50, align 8, !tbaa !111
  %51 = load ptr, ptr %7, align 8, !tbaa !122
  %52 = load i32, ptr %43, align 4, !tbaa !44
  %53 = call ptr @CustomData_add_layer(ptr noundef nonnull %36, i32 noundef 3, i32 noundef 0, ptr noundef %51, i32 noundef %52) #15
  %54 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 16
  store ptr %53, ptr %54, align 8, !tbaa !113
  %55 = load ptr, ptr %8, align 8, !tbaa !122
  %56 = load i32, ptr %45, align 4, !tbaa !46
  %57 = call ptr @CustomData_add_layer(ptr noundef nonnull %39, i32 noundef 26, i32 noundef 0, ptr noundef %55, i32 noundef %56) #15
  %58 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 9
  store ptr %57, ptr %58, align 8, !tbaa !67
  %59 = load ptr, ptr %10, align 8, !tbaa !122
  %60 = load i32, ptr %47, align 8, !tbaa !45
  %61 = call ptr @CustomData_add_layer(ptr noundef nonnull %38, i32 noundef 25, i32 noundef 0, ptr noundef %59, i32 noundef %60) #15
  %62 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 7
  store ptr %61, ptr %62, align 8, !tbaa !116
  %63 = load ptr, ptr %9, align 8, !tbaa !122
  %64 = icmp eq ptr %63, null
  br i1 %64, label %73, label %65

65:                                               ; preds = %26
  %66 = load i32, ptr %47, align 8, !tbaa !45
  %67 = call ptr @CustomData_add_layer_named(ptr noundef nonnull %38, i32 noundef 15, i32 noundef 2, ptr noundef null, i32 noundef %66, ptr noundef nonnull @.str.13) #15
  %68 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 8
  store ptr %67, ptr %68, align 8, !tbaa !117
  %69 = load ptr, ptr %9, align 8, !tbaa !122
  %70 = load i32, ptr %45, align 4, !tbaa !46
  %71 = call ptr @CustomData_add_layer_named(ptr noundef nonnull %39, i32 noundef 16, i32 noundef 0, ptr noundef %69, i32 noundef %70, ptr noundef nonnull @.str.13) #15
  %72 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 10
  store ptr %71, ptr %72, align 8, !tbaa !119
  br label %73

73:                                               ; preds = %65, %26
  call void @BKE_mesh_calc_normals(ptr noundef %28) #15
  br label %88

74:                                               ; preds = %3
  %75 = tail call ptr @BKE_libblock_alloc(ptr noundef %15, i16 noundef signext 17741, ptr noundef nonnull @.str.12) #15
  %76 = getelementptr inbounds %struct.Mesh, ptr %75, i64 0, i32 34
  %77 = getelementptr inbounds %struct.Mesh, ptr %75, i64 0, i32 34, i64 2
  store float 1.000000e+00, ptr %77, align 8, !tbaa !58
  %78 = getelementptr inbounds %struct.Mesh, ptr %75, i64 0, i32 34, i64 1
  store float 1.000000e+00, ptr %78, align 4, !tbaa !58
  store float 1.000000e+00, ptr %76, align 8, !tbaa !58
  %79 = getelementptr inbounds %struct.Mesh, ptr %75, i64 0, i32 39
  store float 3.000000e+01, ptr %79, align 8, !tbaa !135
  %80 = getelementptr inbounds %struct.Mesh, ptr %75, i64 0, i32 37
  store i16 1, ptr %80, align 4, !tbaa !136
  %81 = getelementptr inbounds %struct.Mesh, ptr %75, i64 0, i32 36
  store i32 67, ptr %81, align 8, !tbaa !137
  %82 = getelementptr inbounds %struct.Mesh, ptr %75, i64 0, i32 21
  tail call void @CustomData_reset(ptr noundef nonnull %82) #15
  %83 = getelementptr inbounds %struct.Mesh, ptr %75, i64 0, i32 22
  tail call void @CustomData_reset(ptr noundef nonnull %83) #15
  %84 = getelementptr inbounds %struct.Mesh, ptr %75, i64 0, i32 23
  tail call void @CustomData_reset(ptr noundef nonnull %84) #15
  %85 = getelementptr inbounds %struct.Mesh, ptr %75, i64 0, i32 24
  tail call void @CustomData_reset(ptr noundef nonnull %85) #15
  %86 = getelementptr inbounds %struct.Mesh, ptr %75, i64 0, i32 25
  tail call void @CustomData_reset(ptr noundef nonnull %86) #15
  %87 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !139
  tail call void @DM_to_mesh(ptr noundef nonnull %17, ptr noundef %75, ptr noundef %0, i64 noundef %87) #15
  br label %88

88:                                               ; preds = %74, %73
  %89 = phi ptr [ %28, %73 ], [ %75, %74 ]
  %90 = getelementptr inbounds %struct.Curve, ptr %19, i64 0, i32 22
  %91 = load i16, ptr %90, align 2, !tbaa !240
  %92 = getelementptr inbounds %struct.Mesh, ptr %89, i64 0, i32 47
  store i16 %91, ptr %92, align 2, !tbaa !121
  %93 = getelementptr inbounds %struct.Curve, ptr %19, i64 0, i32 10
  %94 = load ptr, ptr %93, align 8, !tbaa !241
  %95 = getelementptr inbounds %struct.Mesh, ptr %89, i64 0, i32 5
  store ptr %94, ptr %95, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  call void @BKE_mesh_boundbox_calc(ptr noundef %89, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %96 = getelementptr inbounds %struct.Mesh, ptr %89, i64 0, i32 37
  %97 = load i16, ptr %96, align 4, !tbaa !136
  %98 = and i16 %97, 1
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %138, label %100

100:                                              ; preds = %88, %115
  %101 = phi i64 [ %116, %115 ], [ 0, %88 ]
  %102 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %101
  %103 = load float, ptr %102, align 4, !tbaa !58
  %104 = fcmp oeq float %103, 0.000000e+00
  br i1 %104, label %113, label %105

105:                                              ; preds = %100
  %106 = fcmp ogt float %103, 0.000000e+00
  %107 = fcmp olt float %103, 0x3EE4F8B580000000
  %108 = and i1 %106, %107
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = fcmp olt float %103, 0.000000e+00
  %111 = fcmp ogt float %103, 0xBEE4F8B580000000
  %112 = and i1 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109, %105, %100
  %114 = phi float [ 1.000000e+00, %100 ], [ 0x3EE4F8B580000000, %105 ], [ 0xBEE4F8B580000000, %109 ]
  store float %114, ptr %102, align 4, !tbaa !58
  br label %115

115:                                              ; preds = %113, %109
  %116 = add nuw nsw i64 %101, 1
  %117 = icmp eq i64 %116, 3
  br i1 %117, label %118, label %100, !llvm.loop !177

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.Mesh, ptr %89, i64 0, i32 33
  %120 = load float, ptr %4, align 4, !tbaa !58
  store float %120, ptr %119, align 4, !tbaa !58
  %121 = getelementptr inbounds float, ptr %4, i64 1
  %122 = load float, ptr %121, align 4, !tbaa !58
  %123 = getelementptr inbounds %struct.Mesh, ptr %89, i64 0, i32 33, i64 1
  store float %122, ptr %123, align 4, !tbaa !58
  %124 = getelementptr inbounds float, ptr %4, i64 2
  %125 = load float, ptr %124, align 4, !tbaa !58
  %126 = getelementptr inbounds %struct.Mesh, ptr %89, i64 0, i32 33, i64 2
  store float %125, ptr %126, align 4, !tbaa !58
  %127 = getelementptr inbounds %struct.Mesh, ptr %89, i64 0, i32 34
  %128 = load float, ptr %5, align 4, !tbaa !58
  store float %128, ptr %127, align 4, !tbaa !58
  %129 = getelementptr inbounds float, ptr %5, i64 1
  %130 = load float, ptr %129, align 4, !tbaa !58
  %131 = getelementptr inbounds %struct.Mesh, ptr %89, i64 0, i32 34, i64 1
  store float %130, ptr %131, align 4, !tbaa !58
  %132 = getelementptr inbounds float, ptr %5, i64 2
  %133 = load float, ptr %132, align 4, !tbaa !58
  %134 = getelementptr inbounds %struct.Mesh, ptr %89, i64 0, i32 34, i64 2
  store float %133, ptr %134, align 4, !tbaa !58
  %135 = getelementptr inbounds %struct.Mesh, ptr %89, i64 0, i32 35
  store float 0.000000e+00, ptr %135, align 4, !tbaa !58
  %136 = getelementptr inbounds %struct.Mesh, ptr %89, i64 0, i32 35, i64 1
  store float 0.000000e+00, ptr %136, align 4, !tbaa !58
  %137 = getelementptr inbounds %struct.Mesh, ptr %89, i64 0, i32 35, i64 2
  store float 0.000000e+00, ptr %137, align 4, !tbaa !58
  br label %138

138:                                              ; preds = %88, %118
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  store ptr null, ptr %93, align 8, !tbaa !241
  store i16 0, ptr %90, align 2, !tbaa !240
  %139 = load ptr, ptr %18, align 8, !tbaa !164
  %140 = icmp eq ptr %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %138
  call void @BKE_libblock_free(ptr noundef %15, ptr noundef nonnull %139) #15
  br label %142

142:                                              ; preds = %141, %138
  store ptr %89, ptr %18, align 8, !tbaa !164
  %143 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  store i16 1, ptr %143, align 8, !tbaa !167
  %144 = getelementptr inbounds %struct.Main, ptr %15, i64 0, i32 13
  %145 = load ptr, ptr %144, align 8, !tbaa !122
  %146 = icmp eq ptr %145, null
  br i1 %146, label %159, label %147

147:                                              ; preds = %142, %156
  %148 = phi ptr [ %157, %156 ], [ %145, %142 ]
  %149 = getelementptr inbounds %struct.Object, ptr %148, i64 0, i32 19
  %150 = load ptr, ptr %149, align 8, !tbaa !164
  %151 = icmp eq ptr %150, %19
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.Object, ptr %148, i64 0, i32 3
  store i16 1, ptr %153, align 8, !tbaa !167
  %154 = load ptr, ptr %18, align 8, !tbaa !164
  store ptr %154, ptr %149, align 8, !tbaa !164
  %155 = load ptr, ptr %18, align 8, !tbaa !164
  call void @id_us_plus(ptr noundef %155) #15
  br label %156

156:                                              ; preds = %152, %147
  %157 = load ptr, ptr %148, align 8, !tbaa !122
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %147, !llvm.loop !242

159:                                              ; preds = %156, %142, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  ret void
}

declare ptr @CustomData_add_layer_named(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @DM_to_mesh(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BKE_libblock_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_from_nurbs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !164
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 23
  %6 = load i32, ptr %5, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %8 = load ptr, ptr %7, align 8, !tbaa !200
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !201
  br label %11

11:                                               ; preds = %10, %1
  %12 = trunc i32 %6 to i8
  %13 = lshr i8 %12, 5
  %14 = and i8 %13, 1
  call void @BKE_mesh_from_nurbs_displist(ptr noundef %0, ptr noundef nonnull %2, i8 noundef zeroext %14)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_to_curve_nurblist(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  %7 = load ptr, ptr %6, align 8, !tbaa !243
  %8 = tail call ptr %7(ptr noundef %0) #15
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 32
  %10 = load ptr, ptr %9, align 8, !tbaa !245
  %11 = tail call ptr %10(ptr noundef %0) #15
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 35
  %13 = load ptr, ptr %12, align 8, !tbaa !246
  %14 = tail call ptr %13(ptr noundef %0) #15
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 34
  %16 = load ptr, ptr %15, align 8, !tbaa !247
  %17 = tail call ptr %16(ptr noundef %0) #15
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 24
  %19 = load ptr, ptr %18, align 8, !tbaa !248
  %20 = tail call i32 %19(ptr noundef %0) #15
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 27
  %22 = load ptr, ptr %21, align 8, !tbaa !249
  %23 = tail call i32 %22(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !122
  %25 = sext i32 %20 to i64
  %26 = shl nsw i64 %25, 2
  %27 = tail call ptr %24(i64 noundef %26, ptr noundef nonnull @__func__.BKE_mesh_to_curve_nurblist) #15
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
  %37 = load i32, ptr %36, align 4, !tbaa !65
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  %40 = load i32, ptr %34, align 4, !tbaa !68
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.MLoop, ptr %17, i64 %41
  br label %43

43:                                               ; preds = %39, %43
  %44 = phi i32 [ %52, %43 ], [ 0, %39 ]
  %45 = phi ptr [ %53, %43 ], [ %42, %39 ]
  %46 = getelementptr inbounds %struct.MLoop, ptr %45, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !236
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, ptr %27, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !197
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %49, align 4, !tbaa !197
  %52 = add nuw nsw i32 %44, 1
  %53 = getelementptr inbounds %struct.MLoop, ptr %45, i64 1
  %54 = load i32, ptr %36, align 4, !tbaa !65
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %43, label %56, !llvm.loop !250

56:                                               ; preds = %43, %33
  %57 = add nuw nsw i32 %35, 1
  %58 = getelementptr inbounds %struct.MPoly, ptr %34, i64 1
  %59 = icmp eq i32 %57, %23
  br i1 %59, label %29, label %33, !llvm.loop !251

60:                                               ; preds = %31, %70
  %61 = phi i64 [ 0, %31 ], [ %71, %70 ]
  %62 = phi ptr [ %11, %31 ], [ %72, %70 ]
  %63 = getelementptr inbounds i32, ptr %27, i64 %61
  %64 = load i32, ptr %63, align 4, !tbaa !197
  %65 = icmp eq i32 %64, %2
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load ptr, ptr @MEM_callocN, align 8, !tbaa !122
  %68 = call ptr %67(i64 noundef 24, ptr noundef nonnull @.str.14) #15
  %69 = getelementptr inbounds %struct.EdgeLink, ptr %68, i64 0, i32 2
  store ptr %62, ptr %69, align 8, !tbaa !252
  call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %68) #15
  br label %70

70:                                               ; preds = %60, %66
  %71 = add nuw nsw i64 %61, 1
  %72 = getelementptr inbounds %struct.MEdge, ptr %62, i64 1
  %73 = icmp eq i64 %71, %32
  br i1 %73, label %74, label %60, !llvm.loop !254

74:                                               ; preds = %70, %29
  %75 = load ptr, ptr @MEM_freeN, align 8, !tbaa !122
  call void %75(ptr noundef %27) #15
  %76 = load ptr, ptr %4, align 8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %200, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.ListBase, ptr %4, i64 0, i32 1
  %80 = getelementptr inbounds %struct.ListBase, ptr %5, i64 0, i32 1
  br label %81

81:                                               ; preds = %78, %197
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %82 = load ptr, ptr %79, align 8, !tbaa !255
  %83 = getelementptr inbounds %struct.EdgeLink, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !252
  %85 = load i32, ptr %84, align 4, !tbaa !60
  %86 = getelementptr inbounds %struct.MEdge, ptr %84, i64 0, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !62
  %88 = load ptr, ptr @MEM_callocN, align 8, !tbaa !122
  %89 = call ptr %88(i64 noundef 24, ptr noundef nonnull @.str.33) #15
  %90 = getelementptr inbounds %struct.VertLink, ptr %89, i64 0, i32 2
  store i32 %85, ptr %90, align 8, !tbaa !256
  call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %89) #15
  %91 = load ptr, ptr @MEM_callocN, align 8, !tbaa !122
  %92 = call ptr %91(i64 noundef 24, ptr noundef nonnull @.str.33) #15
  %93 = getelementptr inbounds %struct.VertLink, ptr %92, i64 0, i32 2
  store i32 %87, ptr %93, align 8, !tbaa !256
  call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %92) #15
  %94 = load ptr, ptr %79, align 8, !tbaa !255
  call void @BLI_freelinkN(ptr noundef nonnull %4, ptr noundef %94) #15
  br label %101

95:                                               ; preds = %147, %101
  %96 = phi i32 [ %104, %101 ], [ %148, %147 ]
  %97 = phi i32 [ %103, %101 ], [ %149, %147 ]
  %98 = phi i32 [ %102, %101 ], [ %150, %147 ]
  %99 = phi i8 [ 0, %101 ], [ %151, %147 ]
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %153, label %101, !llvm.loop !258

101:                                              ; preds = %81, %95
  %102 = phi i32 [ %87, %81 ], [ %98, %95 ]
  %103 = phi i32 [ %85, %81 ], [ %97, %95 ]
  %104 = phi i32 [ 2, %81 ], [ %96, %95 ]
  %105 = load ptr, ptr %79, align 8, !tbaa !255
  %106 = icmp eq ptr %105, null
  br i1 %106, label %95, label %107

107:                                              ; preds = %101, %147
  %108 = phi ptr [ %114, %147 ], [ %105, %101 ]
  %109 = phi i8 [ %151, %147 ], [ 0, %101 ]
  %110 = phi i32 [ %150, %147 ], [ %102, %101 ]
  %111 = phi i32 [ %149, %147 ], [ %103, %101 ]
  %112 = phi i32 [ %148, %147 ], [ %104, %101 ]
  %113 = getelementptr inbounds %struct.EdgeLink, ptr %108, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !259
  %115 = getelementptr inbounds %struct.EdgeLink, ptr %108, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !252
  %117 = load i32, ptr %116, align 4, !tbaa !60
  %118 = icmp eq i32 %117, %110
  %119 = getelementptr inbounds %struct.MEdge, ptr %116, i64 0, i32 1
  %120 = load i32, ptr %119, align 4, !tbaa !62
  br i1 %118, label %121, label %125

121:                                              ; preds = %107
  %122 = load ptr, ptr @MEM_callocN, align 8, !tbaa !122
  %123 = call ptr %122(i64 noundef 24, ptr noundef nonnull @.str.33) #15
  %124 = getelementptr inbounds %struct.VertLink, ptr %123, i64 0, i32 2
  store i32 %120, ptr %124, align 8, !tbaa !256
  call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %123) #15
  br label %143

125:                                              ; preds = %107
  %126 = icmp eq i32 %120, %110
  br i1 %126, label %127, label %131

127:                                              ; preds = %125
  %128 = load ptr, ptr @MEM_callocN, align 8, !tbaa !122
  %129 = call ptr %128(i64 noundef 24, ptr noundef nonnull @.str.33) #15
  %130 = getelementptr inbounds %struct.VertLink, ptr %129, i64 0, i32 2
  store i32 %117, ptr %130, align 8, !tbaa !256
  call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %129) #15
  br label %143

131:                                              ; preds = %125
  %132 = icmp eq i32 %117, %111
  br i1 %132, label %133, label %137

133:                                              ; preds = %131
  %134 = load ptr, ptr @MEM_callocN, align 8, !tbaa !122
  %135 = call ptr %134(i64 noundef 24, ptr noundef nonnull @.str.33) #15
  %136 = getelementptr inbounds %struct.VertLink, ptr %135, i64 0, i32 2
  store i32 %120, ptr %136, align 8, !tbaa !256
  call void @BLI_addhead(ptr noundef nonnull %5, ptr noundef %135) #15
  br label %143

137:                                              ; preds = %131
  %138 = icmp eq i32 %120, %111
  br i1 %138, label %139, label %147

139:                                              ; preds = %137
  %140 = load ptr, ptr @MEM_callocN, align 8, !tbaa !122
  %141 = call ptr %140(i64 noundef 24, ptr noundef nonnull @.str.33) #15
  %142 = getelementptr inbounds %struct.VertLink, ptr %141, i64 0, i32 2
  store i32 %117, ptr %142, align 8, !tbaa !256
  call void @BLI_addhead(ptr noundef nonnull %5, ptr noundef %141) #15
  br label %143

143:                                              ; preds = %121, %133, %139, %127
  %144 = phi i32 [ %117, %139 ], [ %120, %133 ], [ %111, %127 ], [ %111, %121 ]
  %145 = phi i32 [ %110, %139 ], [ %110, %133 ], [ %117, %127 ], [ %120, %121 ]
  %146 = add nsw i32 %112, 1
  call void @BLI_freelinkN(ptr noundef nonnull %4, ptr noundef nonnull %108) #15
  br label %147

147:                                              ; preds = %143, %137
  %148 = phi i32 [ %112, %137 ], [ %146, %143 ]
  %149 = phi i32 [ %111, %137 ], [ %144, %143 ]
  %150 = phi i32 [ %110, %137 ], [ %145, %143 ]
  %151 = phi i8 [ %109, %137 ], [ 1, %143 ]
  %152 = icmp eq ptr %114, null
  br i1 %152, label %95, label %107, !llvm.loop !260

153:                                              ; preds = %95
  %154 = icmp eq i32 %97, %98
  br i1 %154, label %155, label %158

155:                                              ; preds = %153
  %156 = load ptr, ptr %80, align 8, !tbaa !255
  call void @BLI_freelinkN(ptr noundef nonnull %5, ptr noundef %156) #15
  %157 = add nsw i32 %96, -1
  br label %158

158:                                              ; preds = %155, %153
  %159 = phi i32 [ %157, %155 ], [ %96, %153 ]
  %160 = load ptr, ptr @MEM_callocN, align 8, !tbaa !122
  %161 = call ptr %160(i64 noundef 88, ptr noundef nonnull @.str.15) #15
  %162 = getelementptr inbounds %struct.Nurb, ptr %161, i64 0, i32 6
  store i32 %159, ptr %162, align 8, !tbaa !261
  %163 = getelementptr inbounds %struct.Nurb, ptr %161, i64 0, i32 7
  store i32 1, ptr %163, align 4, !tbaa !263
  %164 = getelementptr inbounds %struct.Nurb, ptr %161, i64 0, i32 11
  store i16 4, ptr %164, align 8, !tbaa !264
  %165 = zext i1 %154 to i16
  %166 = or disjoint i16 %165, 2
  %167 = getelementptr inbounds %struct.Nurb, ptr %161, i64 0, i32 13
  store i16 %166, ptr %167, align 4, !tbaa !265
  %168 = getelementptr inbounds %struct.Nurb, ptr %161, i64 0, i32 9
  store i16 12, ptr %168, align 4, !tbaa !266
  %169 = load ptr, ptr @MEM_callocN, align 8, !tbaa !122
  %170 = sext i32 %159 to i64
  %171 = mul nsw i64 %170, 36
  %172 = call ptr %169(i64 noundef %171, ptr noundef nonnull @.str.16) #15
  %173 = getelementptr inbounds %struct.Nurb, ptr %161, i64 0, i32 17
  store ptr %172, ptr %173, align 8, !tbaa !267
  %174 = icmp sgt i32 %159, 0
  br i1 %174, label %175, label %197

175:                                              ; preds = %158, %175
  %176 = phi ptr [ %179, %175 ], [ %5, %158 ]
  %177 = phi ptr [ %195, %175 ], [ %172, %158 ]
  %178 = phi i32 [ %194, %175 ], [ 0, %158 ]
  %179 = load ptr, ptr %176, align 8, !tbaa !122
  %180 = getelementptr inbounds %struct.VertLink, ptr %179, i64 0, i32 2
  %181 = load i32, ptr %180, align 8, !tbaa !256
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.MVert, ptr %8, i64 %182
  %184 = load float, ptr %183, align 4, !tbaa !58
  store float %184, ptr %177, align 4, !tbaa !58
  %185 = getelementptr inbounds float, ptr %183, i64 1
  %186 = load float, ptr %185, align 4, !tbaa !58
  %187 = getelementptr inbounds float, ptr %177, i64 1
  store float %186, ptr %187, align 4, !tbaa !58
  %188 = getelementptr inbounds float, ptr %183, i64 2
  %189 = load float, ptr %188, align 4, !tbaa !58
  %190 = getelementptr inbounds float, ptr %177, i64 2
  store float %189, ptr %190, align 4, !tbaa !58
  %191 = getelementptr inbounds %struct.BPoint, ptr %177, i64 0, i32 3
  store i16 1, ptr %191, align 4, !tbaa !268
  %192 = getelementptr inbounds %struct.BPoint, ptr %177, i64 0, i32 2
  store float 1.000000e+00, ptr %192, align 4, !tbaa !270
  %193 = getelementptr inbounds %struct.BPoint, ptr %177, i64 0, i32 5
  store float 1.000000e+00, ptr %193, align 4, !tbaa !271
  %194 = add nuw nsw i32 %178, 1
  %195 = getelementptr inbounds %struct.BPoint, ptr %177, i64 1
  %196 = icmp eq i32 %194, %159
  br i1 %196, label %197, label %175, !llvm.loop !272

197:                                              ; preds = %175, %158
  call void @BLI_freelistN(ptr noundef nonnull %5) #15
  call void @BLI_addtail(ptr noundef %1, ptr noundef %161) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  %198 = load ptr, ptr %4, align 8, !tbaa !188
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %81

200:                                              ; preds = %197, %74
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_to_curve(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !139
  %5 = tail call ptr @mesh_get_derived_final(ptr noundef %0, ptr noundef %1, i64 noundef %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @BKE_mesh_to_curve_nurblist(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 0)
  call void @BKE_mesh_to_curve_nurblist(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 1)
  %6 = load ptr, ptr %3, align 8, !tbaa !188
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr @G, align 8, !tbaa !153
  %10 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %11 = call ptr @BKE_curve_add(ptr noundef %9, ptr noundef nonnull %10, i32 noundef 2) #15
  %12 = getelementptr inbounds %struct.Curve, ptr %11, i64 0, i32 23
  %13 = load i32, ptr %12, align 4, !tbaa !203
  %14 = or i32 %13, 1
  store i32 %14, ptr %12, align 4, !tbaa !203
  %15 = getelementptr inbounds %struct.Curve, ptr %11, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !201
  %16 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !164
  %18 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 6
  %19 = load i32, ptr %18, align 4, !tbaa !163
  %20 = add nsw i32 %19, -1
  store i32 %20, ptr %18, align 4, !tbaa !163
  store ptr %11, ptr %16, align 8, !tbaa !164
  %21 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  store i16 2, ptr %21, align 8, !tbaa !167
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 10
  store i32 1, ptr %22, align 4, !tbaa !273
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 95
  %24 = load ptr, ptr %23, align 8, !tbaa !274
  call void %24(ptr noundef %5) #15
  %25 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 120
  store ptr null, ptr %25, align 8, !tbaa !239
  %26 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 15
  %27 = load ptr, ptr %26, align 8, !tbaa !178
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %8
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !122
  call void %30(ptr noundef nonnull %27) #15
  store ptr null, ptr %26, align 8, !tbaa !178
  br label %35

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 10
  store i32 0, ptr %32, align 4, !tbaa !273
  %33 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 95
  %34 = load ptr, ptr %33, align 8, !tbaa !274
  call void %34(ptr noundef %5) #15
  br label %35

35:                                               ; preds = %31, %8, %29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  ret void
}

declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @BKE_curve_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_material_index_remove(ptr nocapture noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %4 = load i32, ptr %3, align 8, !tbaa !45
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !116
  br label %9

9:                                                ; preds = %6, %19
  %10 = phi i32 [ %20, %19 ], [ 0, %6 ]
  %11 = phi ptr [ %21, %19 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct.MPoly, ptr %11, i64 0, i32 2
  %13 = load i16, ptr %12, align 4, !tbaa !218
  %14 = icmp eq i16 %13, 0
  %15 = icmp slt i16 %13, %1
  %16 = or i1 %14, %15
  br i1 %16, label %19, label %17

17:                                               ; preds = %9
  %18 = add i16 %13, -1
  store i16 %18, ptr %12, align 4, !tbaa !218
  br label %19

19:                                               ; preds = %9, %17
  %20 = add nuw nsw i32 %10, 1
  %21 = getelementptr inbounds %struct.MPoly, ptr %11, i64 1
  %22 = icmp eq i32 %20, %4
  br i1 %22, label %23, label %9, !llvm.loop !275

23:                                               ; preds = %19, %2
  %24 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %25 = load i32, ptr %24, align 8, !tbaa !107
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %29 = load ptr, ptr %28, align 8, !tbaa !114
  br label %30

30:                                               ; preds = %27, %40
  %31 = phi i32 [ %41, %40 ], [ 0, %27 ]
  %32 = phi ptr [ %42, %40 ], [ %29, %27 ]
  %33 = getelementptr inbounds %struct.MFace, ptr %32, i64 0, i32 4
  %34 = load i16, ptr %33, align 4, !tbaa !276
  %35 = icmp eq i16 %34, 0
  %36 = icmp slt i16 %34, %1
  %37 = or i1 %35, %36
  br i1 %37, label %40, label %38

38:                                               ; preds = %30
  %39 = add i16 %34, -1
  store i16 %39, ptr %33, align 4, !tbaa !276
  br label %40

40:                                               ; preds = %30, %38
  %41 = add nuw nsw i32 %31, 1
  %42 = getelementptr inbounds %struct.MFace, ptr %32, i64 1
  %43 = icmp eq i32 %41, %25
  br i1 %43, label %44, label %30, !llvm.loop !277

44:                                               ; preds = %40, %23
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_material_index_clear(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %3 = load i32, ptr %2, align 8, !tbaa !45
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !116
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i32 [ %12, %8 ], [ 0, %5 ]
  %10 = phi ptr [ %13, %8 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.MPoly, ptr %10, i64 0, i32 2
  store i16 0, ptr %11, align 4, !tbaa !218
  %12 = add nuw nsw i32 %9, 1
  %13 = getelementptr inbounds %struct.MPoly, ptr %10, i64 1
  %14 = icmp eq i32 %12, %3
  br i1 %14, label %15, label %8, !llvm.loop !278

15:                                               ; preds = %8, %1
  %16 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %17 = load i32, ptr %16, align 8, !tbaa !107
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !114
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i32 [ %26, %22 ], [ 0, %19 ]
  %24 = phi ptr [ %27, %22 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.MFace, ptr %24, i64 0, i32 4
  store i16 0, ptr %25, align 4, !tbaa !276
  %26 = add nuw nsw i32 %23, 1
  %27 = getelementptr inbounds %struct.MFace, ptr %24, i64 1
  %28 = icmp eq i32 %26, %17
  br i1 %28, label %29, label %22, !llvm.loop !279

29:                                               ; preds = %22, %15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_smooth_flag_set(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !164
  %5 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 30
  %6 = load i32, ptr %5, align 8, !tbaa !45
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !116
  %11 = icmp ne i32 %1, 0
  %12 = zext nneg i32 %6 to i64
  %13 = zext i1 %11 to i8
  br label %24

14:                                               ; preds = %24, %2
  %15 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 28
  %16 = load i32, ptr %15, align 8, !tbaa !107
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !114
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
  br i1 %31, label %14, label %24, !llvm.loop !280

32:                                               ; preds = %18, %32
  %33 = phi i64 [ 0, %18 ], [ %38, %32 ]
  %34 = getelementptr inbounds %struct.MFace, ptr %20, i64 %33, i32 6
  %35 = load i8, ptr %34, align 1, !tbaa !281
  %36 = and i8 %35, -2
  %37 = or disjoint i8 %36, %23
  store i8 %37, ptr %34, align 1, !tbaa !281
  %38 = add nuw nsw i64 %33, 1
  %39 = icmp eq i64 %38, %22
  br i1 %39, label %40, label %32, !llvm.loop !282

40:                                               ; preds = %32, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mesh_vertexCos_get(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !122
  %6 = sext i32 %4 to i64
  %7 = mul nsw i64 %6, 12
  %8 = tail call ptr %5(i64 noundef %7, ptr noundef nonnull @.str.17) #15
  %9 = icmp eq ptr %1, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 %4, ptr %1, align 4, !tbaa !197
  br label %11

11:                                               ; preds = %10, %2
  %12 = icmp sgt i32 %4, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !111
  %16 = zext nneg i32 %4 to i64
  br label %17

17:                                               ; preds = %13, %17
  %18 = phi i64 [ 0, %13 ], [ %28, %17 ]
  %19 = getelementptr inbounds [3 x float], ptr %8, i64 %18
  %20 = getelementptr inbounds %struct.MVert, ptr %15, i64 %18
  %21 = load float, ptr %20, align 4, !tbaa !58
  store float %21, ptr %19, align 4, !tbaa !58
  %22 = getelementptr inbounds float, ptr %20, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !58
  %24 = getelementptr inbounds float, ptr %19, i64 1
  store float %23, ptr %24, align 4, !tbaa !58
  %25 = getelementptr inbounds float, ptr %20, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !58
  %27 = getelementptr inbounds float, ptr %19, i64 2
  store float %26, ptr %27, align 4, !tbaa !58
  %28 = add nuw nsw i64 %18, 1
  %29 = icmp eq i64 %28, %16
  br i1 %29, label %30, label %17, !llvm.loop !283

30:                                               ; preds = %17, %11
  ret ptr %8
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @poly_find_loop_from_vert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #9 {
  %4 = getelementptr inbounds %struct.MPoly, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !65
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %3, %12
  %8 = phi i32 [ %13, %12 ], [ 0, %3 ]
  %9 = phi ptr [ %14, %12 ], [ %1, %3 ]
  %10 = load i32, ptr %9, align 4, !tbaa !69
  %11 = icmp eq i32 %10, %2
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = add nuw nsw i32 %8, 1
  %14 = getelementptr inbounds %struct.MLoop, ptr %9, i64 1
  %15 = icmp eq i32 %13, %5
  br i1 %15, label %16, label %7, !llvm.loop !284

16:                                               ; preds = %7, %12, %3
  %17 = phi i32 [ -1, %3 ], [ %8, %7 ], [ -1, %12 ]
  ret i32 %17
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @poly_get_adj_loops_from_vert(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #10 {
  %5 = load i32, ptr %1, align 4, !tbaa !68
  %6 = getelementptr inbounds %struct.MPoly, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !65
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = sext i32 %5 to i64
  %11 = getelementptr inbounds %struct.MLoop, ptr %2, i64 %10
  br label %12

12:                                               ; preds = %9, %17
  %13 = phi i32 [ %18, %17 ], [ 0, %9 ]
  %14 = phi ptr [ %19, %17 ], [ %11, %9 ]
  %15 = load i32, ptr %14, align 4, !tbaa !69
  %16 = icmp eq i32 %15, %3
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = add nuw nsw i32 %13, 1
  %19 = getelementptr inbounds %struct.MLoop, ptr %14, i64 1
  %20 = icmp eq i32 %18, %7
  br i1 %20, label %21, label %12, !llvm.loop !284

21:                                               ; preds = %12, %17, %4
  %22 = phi i32 [ -1, %4 ], [ %13, %12 ], [ -1, %17 ]
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %47, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.MPoly, ptr %1, i64 0, i32 1
  %26 = add nsw i32 %22, %5
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.MLoop, ptr %2, i64 %27
  %29 = add i32 %7, -1
  %30 = add i32 %29, %22
  %31 = srem i32 %30, %7
  %32 = add nsw i32 %31, %5
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.MLoop, ptr %2, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !69
  store i32 %35, ptr %0, align 4, !tbaa !197
  %36 = load i32, ptr %28, align 4, !tbaa !69
  %37 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %36, ptr %37, align 4, !tbaa !197
  %38 = load i32, ptr %1, align 4, !tbaa !68
  %39 = add nuw nsw i32 %22, 1
  %40 = load i32, ptr %25, align 4, !tbaa !65
  %41 = srem i32 %39, %40
  %42 = add nsw i32 %41, %38
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.MLoop, ptr %2, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !69
  %46 = getelementptr inbounds i32, ptr %0, i64 2
  store i32 %45, ptr %46, align 4, !tbaa !197
  br label %47

47:                                               ; preds = %24, %21
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @BKE_mesh_edge_other_vert(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = load i32, ptr %0, align 4, !tbaa !60
  %4 = icmp eq i32 %3, %1
  %5 = getelementptr inbounds %struct.MEdge, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !62
  %7 = icmp eq i32 %6, %1
  %8 = select i1 %7, i32 %3, i32 -1
  %9 = select i1 %4, i32 %6, i32 %8
  ret i32 %9
}

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_transform(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !111
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %14, %10 ], [ %9, %7 ]
  %12 = phi i32 [ %13, %10 ], [ 0, %7 ]
  tail call void @mul_m4_v3(ptr noundef %1, ptr noundef %11) #15
  %13 = add nuw nsw i32 %12, 1
  %14 = getelementptr inbounds %struct.MVert, ptr %11, i64 1
  %15 = load i32, ptr %4, align 8, !tbaa !34
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %10, label %17, !llvm.loop !285

17:                                               ; preds = %10, %3
  %18 = icmp eq i8 %2, 0
  br i1 %18, label %44, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !128
  %22 = icmp eq ptr %21, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Key, ptr %21, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !122
  %26 = icmp eq ptr %25, null
  br i1 %26, label %44, label %30

27:                                               ; preds = %38, %30
  %28 = load ptr, ptr %31, align 8, !tbaa !122
  %29 = icmp eq ptr %28, null
  br i1 %29, label %44, label %30, !llvm.loop !286

30:                                               ; preds = %23, %27
  %31 = phi ptr [ %28, %27 ], [ %25, %23 ]
  %32 = getelementptr inbounds %struct.KeyBlock, ptr %31, i64 0, i32 8
  %33 = load i32, ptr %32, align 8, !tbaa !287
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %27, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.KeyBlock, ptr %31, i64 0, i32 10
  %37 = load ptr, ptr %36, align 8, !tbaa !289
  br label %38

38:                                               ; preds = %35, %38
  %39 = phi ptr [ %42, %38 ], [ %37, %35 ]
  %40 = phi i32 [ %41, %38 ], [ %33, %35 ]
  %41 = add nsw i32 %40, -1
  tail call void @mul_m4_v3(ptr noundef %1, ptr noundef %39) #15
  %42 = getelementptr inbounds float, ptr %39, i64 3
  %43 = icmp eq i32 %41, 0
  br i1 %43, label %27, label %38, !llvm.loop !290

44:                                               ; preds = %27, %23, %19, %17
  ret void
}

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_translate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !111
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = getelementptr inbounds float, ptr %1, i64 2
  br label %12

12:                                               ; preds = %7, %12
  %13 = phi ptr [ %9, %7 ], [ %27, %12 ]
  %14 = phi i32 [ %5, %7 ], [ %15, %12 ]
  %15 = add nsw i32 %14, -1
  %16 = load float, ptr %1, align 4, !tbaa !58
  %17 = load float, ptr %13, align 4, !tbaa !58
  %18 = fadd float %16, %17
  store float %18, ptr %13, align 4, !tbaa !58
  %19 = load float, ptr %10, align 4, !tbaa !58
  %20 = getelementptr inbounds float, ptr %13, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !58
  %22 = fadd float %19, %21
  store float %22, ptr %20, align 4, !tbaa !58
  %23 = load float, ptr %11, align 4, !tbaa !58
  %24 = getelementptr inbounds float, ptr %13, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !58
  %26 = fadd float %23, %25
  store float %26, ptr %24, align 4, !tbaa !58
  %27 = getelementptr inbounds %struct.MVert, ptr %13, i64 1
  %28 = icmp eq i32 %15, 0
  br i1 %28, label %29, label %12, !llvm.loop !291

29:                                               ; preds = %12, %3
  %30 = icmp eq i8 %2, 0
  br i1 %30, label %70, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !128
  %34 = icmp eq ptr %33, null
  br i1 %34, label %70, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.Key, ptr %33, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !122
  %38 = icmp eq ptr %37, null
  br i1 %38, label %70, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds float, ptr %1, i64 1
  %41 = getelementptr inbounds float, ptr %1, i64 2
  br label %45

42:                                               ; preds = %53, %45
  %43 = load ptr, ptr %46, align 8, !tbaa !122
  %44 = icmp eq ptr %43, null
  br i1 %44, label %70, label %45, !llvm.loop !292

45:                                               ; preds = %39, %42
  %46 = phi ptr [ %37, %39 ], [ %43, %42 ]
  %47 = getelementptr inbounds %struct.KeyBlock, ptr %46, i64 0, i32 8
  %48 = load i32, ptr %47, align 8, !tbaa !287
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %42, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.KeyBlock, ptr %46, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !289
  br label %53

53:                                               ; preds = %50, %53
  %54 = phi ptr [ %68, %53 ], [ %52, %50 ]
  %55 = phi i32 [ %56, %53 ], [ %48, %50 ]
  %56 = add nsw i32 %55, -1
  %57 = load float, ptr %1, align 4, !tbaa !58
  %58 = load float, ptr %54, align 4, !tbaa !58
  %59 = fadd float %57, %58
  store float %59, ptr %54, align 4, !tbaa !58
  %60 = load float, ptr %40, align 4, !tbaa !58
  %61 = getelementptr inbounds float, ptr %54, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !58
  %63 = fadd float %60, %62
  store float %63, ptr %61, align 4, !tbaa !58
  %64 = load float, ptr %41, align 4, !tbaa !58
  %65 = getelementptr inbounds float, ptr %54, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !58
  %67 = fadd float %64, %66
  store float %67, ptr %65, align 4, !tbaa !58
  %68 = getelementptr inbounds float, ptr %54, i64 3
  %69 = icmp eq i32 %56, 0
  br i1 %69, label %42, label %53, !llvm.loop !293

70:                                               ; preds = %42, %35, %31, %29
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_ensure_navmesh(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %3 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %2, i32 noundef 24) #15
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %7 = load i32, ptr %6, align 8, !tbaa !45
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !122
  %9 = sext i32 %7 to i64
  %10 = shl nsw i64 %9, 2
  %11 = tail call ptr %8(i64 noundef %10, ptr noundef nonnull @__func__.BKE_mesh_ensure_navmesh) #15
  %12 = icmp sgt i32 %7, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %5
  %14 = zext nneg i32 %7 to i64
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i64 [ 0, %13 ], [ %17, %15 ]
  %17 = add nuw nsw i64 %16, 1
  %18 = getelementptr inbounds i32, ptr %11, i64 %16
  %19 = trunc i64 %17 to i32
  store i32 %19, ptr %18, align 4, !tbaa !197
  %20 = icmp eq i64 %17, %14
  br i1 %20, label %21, label %15, !llvm.loop !294

21:                                               ; preds = %15, %5
  %22 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %2, i32 noundef 24, i32 noundef 0, ptr noundef %11, i32 noundef %7, ptr noundef nonnull @.str.18) #15
  br label %23

23:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_tessface_calc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %6 = load ptr, ptr %5, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %8 = load i32, ptr %7, align 8, !tbaa !107
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %10 = load i32, ptr %9, align 4, !tbaa !46
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %12 = load i32, ptr %11, align 8, !tbaa !45
  %13 = tail call i32 @BKE_mesh_recalc_tessellation(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i8 noundef zeroext 0) #15
  store i32 %13, ptr %7, align 8, !tbaa !107
  tail call void @BKE_mesh_update_customdata_pointers(ptr noundef %0, i8 noundef zeroext 1)
  ret void
}

declare i32 @BKE_mesh_recalc_tessellation(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_tessface_ensure(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %3 = load i32, ptr %2, align 8, !tbaa !45
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %7 = load i32, ptr %6, align 8, !tbaa !107
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %12 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %13 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !111
  %15 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %16 = load i32, ptr %15, align 4, !tbaa !46
  %17 = tail call i32 @BKE_mesh_recalc_tessellation(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef %14, i32 noundef %7, i32 noundef %16, i32 noundef %3, i8 noundef zeroext 0) #15
  store i32 %17, ptr %6, align 8, !tbaa !107
  tail call void @BKE_mesh_update_customdata_pointers(ptr noundef %0, i8 noundef zeroext 1)
  br label %18

18:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_tessface_clear(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %4 = load i32, ptr %3, align 8, !tbaa !107
  tail call void @CustomData_free(ptr noundef nonnull %2, i32 noundef %4) #15
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 18
  store ptr null, ptr %6, align 8, !tbaa !108
  store i32 0, ptr %3, align 8, !tbaa !107
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mesh_do_versions_cd_flag_init(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 41
  %3 = load i8, ptr %2, align 8, !tbaa !295
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %59

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %11 = load ptr, ptr %10, align 8, !tbaa !111
  br label %12

12:                                               ; preds = %9, %19
  %13 = phi i32 [ %21, %19 ], [ 0, %9 ]
  %14 = phi ptr [ %20, %19 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.MVert, ptr %14, i64 0, i32 3
  %16 = load i8, ptr %15, align 1, !tbaa !296
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store i8 1, ptr %2, align 8, !tbaa !295
  br label %23

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.MVert, ptr %14, i64 1
  %21 = add nuw nsw i32 %13, 1
  %22 = icmp eq i32 %21, %7
  br i1 %22, label %23, label %12, !llvm.loop !298

23:                                               ; preds = %19, %5, %18
  %24 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %25 = load i32, ptr %24, align 4, !tbaa !44
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %29 = load ptr, ptr %28, align 8, !tbaa !113
  br label %30

30:                                               ; preds = %56, %27
  %31 = phi i32 [ 0, %27 ], [ %57, %56 ]
  %32 = phi ptr [ %29, %27 ], [ %58, %56 ]
  %33 = getelementptr inbounds %struct.MEdge, ptr %32, i64 0, i32 3
  %34 = load i8, ptr %33, align 1, !tbaa !233
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load i8, ptr %2, align 8, !tbaa !295
  %38 = or i8 %37, 2
  store i8 %38, ptr %2, align 8, !tbaa !295
  %39 = and i8 %37, 4
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %36, %30
  %42 = getelementptr inbounds %struct.MEdge, ptr %32, i64 0, i32 2
  %43 = load i8, ptr %42, align 4, !tbaa !234
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = load i8, ptr %2, align 8, !tbaa !295
  %47 = or i8 %46, 4
  store i8 %47, ptr %2, align 8, !tbaa !295
  %48 = and i8 %46, 2
  %49 = icmp eq i8 %48, 0
  %50 = add nuw nsw i32 %31, 1
  %51 = icmp slt i32 %50, %25
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %56, label %59

53:                                               ; preds = %41
  %54 = add nuw nsw i32 %31, 1
  %55 = icmp slt i32 %54, %25
  br i1 %55, label %56, label %59

56:                                               ; preds = %53, %45
  %57 = phi i32 [ %54, %53 ], [ %50, %45 ]
  %58 = getelementptr inbounds %struct.MEdge, ptr %32, i64 1
  br label %30, !llvm.loop !299

59:                                               ; preds = %45, %36, %53, %23, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_mselect_clear(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !134
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !122
  tail call void %6(ptr noundef nonnull %3) #15
  store ptr null, ptr %2, align 8, !tbaa !134
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 29
  store i32 0, ptr %8, align 4, !tbaa !300
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_mselect_validate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 29
  %3 = load i32, ptr %2, align 4, !tbaa !300
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %73, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !134
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !122
  %9 = sext i32 %3 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call ptr %8(i64 noundef %10, ptr noundef nonnull @.str.19) #15
  %12 = load i32, ptr %2, align 4, !tbaa !300
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %57

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %16 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %17 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  br label %18

18:                                               ; preds = %14, %51
  %19 = phi i64 [ 0, %14 ], [ %53, %51 ]
  %20 = phi i32 [ 0, %14 ], [ %52, %51 ]
  %21 = getelementptr inbounds %struct.MSelect, ptr %7, i64 %19
  %22 = load i32, ptr %21, align 4, !tbaa !301
  %23 = getelementptr inbounds %struct.MSelect, ptr %7, i64 %19, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !303
  switch i32 %24, label %51 [
    i32 0, label %25
    i32 1, label %32
    i32 2, label %39
  ]

25:                                               ; preds = %18
  %26 = load ptr, ptr %17, align 8, !tbaa !111
  %27 = sext i32 %22 to i64
  %28 = getelementptr inbounds %struct.MVert, ptr %26, i64 %27, i32 2
  %29 = load i8, ptr %28, align 2, !tbaa !304
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %51, label %46

32:                                               ; preds = %18
  %33 = load ptr, ptr %16, align 8, !tbaa !113
  %34 = sext i32 %22 to i64
  %35 = getelementptr inbounds %struct.MEdge, ptr %33, i64 %34, i32 4
  %36 = load i16, ptr %35, align 2, !tbaa !210
  %37 = and i16 %36, 1
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %51, label %46

39:                                               ; preds = %18
  %40 = load ptr, ptr %15, align 8, !tbaa !116
  %41 = sext i32 %22 to i64
  %42 = getelementptr inbounds %struct.MPoly, ptr %40, i64 %41, i32 3
  %43 = load i8, ptr %42, align 2, !tbaa !198
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %39, %32, %25
  %47 = sext i32 %20 to i64
  %48 = getelementptr inbounds %struct.MSelect, ptr %11, i64 %47
  %49 = load i64, ptr %21, align 4
  store i64 %49, ptr %48, align 4
  %50 = add nsw i32 %20, 1
  br label %51

51:                                               ; preds = %46, %18, %39, %32, %25
  %52 = phi i32 [ %20, %18 ], [ %20, %39 ], [ %20, %32 ], [ %20, %25 ], [ %50, %46 ]
  %53 = add nuw nsw i64 %19, 1
  %54 = load i32, ptr %2, align 4, !tbaa !300
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %18, label %57, !llvm.loop !305

57:                                               ; preds = %51, %5
  %58 = phi i32 [ 0, %5 ], [ %52, %51 ]
  %59 = load ptr, ptr @MEM_freeN, align 8, !tbaa !122
  tail call void %59(ptr noundef %7) #15
  %60 = icmp eq i32 %58, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !122
  tail call void %62(ptr noundef %11) #15
  br label %71

63:                                               ; preds = %57
  %64 = load i32, ptr %2, align 4, !tbaa !300
  %65 = icmp eq i32 %58, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !122
  %68 = sext i32 %58 to i64
  %69 = shl nsw i64 %68, 3
  %70 = tail call ptr %67(ptr noundef %11, i64 noundef %69, ptr noundef nonnull @__func__.BKE_mesh_mselect_validate) #15
  br label %71

71:                                               ; preds = %63, %66, %61
  %72 = phi ptr [ null, %61 ], [ %70, %66 ], [ %11, %63 ]
  store i32 %58, ptr %2, align 4, !tbaa !300
  store ptr %72, ptr %6, align 8, !tbaa !134
  br label %73

73:                                               ; preds = %1, %71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_mesh_mselect_find(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 29
  %5 = load i32, ptr %4, align 4, !tbaa !300
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !134
  %10 = zext nneg i32 %5 to i64
  br label %11

11:                                               ; preds = %7, %20
  %12 = phi i64 [ 0, %7 ], [ %21, %20 ]
  %13 = getelementptr inbounds %struct.MSelect, ptr %9, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !301
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.MSelect, ptr %9, i64 %12, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !303
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %23, label %20

20:                                               ; preds = %11, %16
  %21 = add nuw nsw i64 %12, 1
  %22 = icmp eq i64 %21, %10
  br i1 %22, label %25, label %11, !llvm.loop !306

23:                                               ; preds = %16
  %24 = trunc i64 %12 to i32
  br label %25

25:                                               ; preds = %23, %20, %3
  %26 = phi i32 [ -1, %3 ], [ %24, %23 ], [ -1, %20 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_mesh_mselect_active_get(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 29
  %4 = load i32, ptr %3, align 4, !tbaa !300
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !134
  %9 = sext i32 %4 to i64
  %10 = getelementptr %struct.MSelect, ptr %8, i64 %9
  %11 = getelementptr %struct.MSelect, ptr %10, i64 -1, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !303
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = getelementptr %struct.MSelect, ptr %10, i64 -1
  %16 = load i32, ptr %15, align 4, !tbaa !301
  br label %17

17:                                               ; preds = %2, %6, %14
  %18 = phi i32 [ %16, %14 ], [ -1, %6 ], [ -1, %2 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_mselect_active_set(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 29
  %5 = load i32, ptr %4, align 4, !tbaa !300
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !134
  %10 = zext nneg i32 %5 to i64
  br label %11

11:                                               ; preds = %7, %20
  %12 = phi i64 [ 0, %7 ], [ %21, %20 ]
  %13 = getelementptr inbounds %struct.MSelect, ptr %9, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !301
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.MSelect, ptr %9, i64 %12, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !303
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %23, label %20

20:                                               ; preds = %16, %11
  %21 = add nuw nsw i64 %12, 1
  %22 = icmp eq i64 %21, %10
  br i1 %22, label %25, label %11, !llvm.loop !306

23:                                               ; preds = %16
  %24 = trunc i64 %12 to i32
  br label %25

25:                                               ; preds = %23, %20, %3
  %26 = phi i32 [ -1, %3 ], [ %24, %23 ], [ -1, %20 ]
  %27 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 29
  %28 = icmp eq i32 %26, -1
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !122
  %31 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !134
  %33 = add nsw i32 %5, 1
  %34 = sext i32 %33 to i64
  %35 = shl nsw i64 %34, 3
  %36 = tail call ptr %30(ptr noundef %32, i64 noundef %35, ptr noundef nonnull @__func__.BKE_mesh_mselect_active_set) #15
  store ptr %36, ptr %31, align 8, !tbaa !134
  %37 = load i32, ptr %27, align 4, !tbaa !300
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.MSelect, ptr %36, i64 %38
  store i32 %1, ptr %39, align 4, !tbaa !301
  %40 = getelementptr inbounds %struct.MSelect, ptr %36, i64 %38, i32 1
  store i32 %2, ptr %40, align 4, !tbaa !303
  %41 = add nsw i32 %37, 1
  store i32 %41, ptr %27, align 4, !tbaa !300
  br label %60

42:                                               ; preds = %25
  %43 = add nsw i32 %5, -1
  %44 = icmp eq i32 %26, %43
  br i1 %44, label %60, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !134
  %48 = sext i32 %26 to i64
  %49 = getelementptr inbounds %struct.MSelect, ptr %47, i64 %48
  %50 = load i64, ptr %49, align 4
  %51 = sext i32 %5 to i64
  %52 = getelementptr %struct.MSelect, ptr %47, i64 %51
  %53 = getelementptr %struct.MSelect, ptr %52, i64 -1
  %54 = load i64, ptr %53, align 4
  store i64 %54, ptr %49, align 4
  %55 = load ptr, ptr %46, align 8, !tbaa !134
  %56 = load i32, ptr %27, align 4, !tbaa !300
  %57 = sext i32 %56 to i64
  %58 = getelementptr %struct.MSelect, ptr %55, i64 %57
  %59 = getelementptr %struct.MSelect, ptr %58, i64 -1
  store i64 %50, ptr %59, align 4
  br label %60

60:                                               ; preds = %42, %45, %29
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mesh_new_from_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca %struct.ListBase, align 8
  %17 = alloca ptr, align 8
  %18 = alloca %struct.ListBase, align 8
  %19 = alloca %struct.EvaluationContext, align 4
  %20 = alloca %struct.ListBase, align 8
  %21 = icmp eq i32 %4, 2
  %22 = icmp eq i32 %3, 0
  %23 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %24 = load i16, ptr %23, align 8, !tbaa !167
  switch i16 %24, label %296 [
    i16 4, label %25
    i16 2, label %25
    i16 3, label %25
    i16 5, label %90
    i16 1, label %149
  ]

25:                                               ; preds = %7, %7, %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #15
  store ptr null, ptr %17, align 8, !tbaa !122
  %26 = tail call ptr @BKE_object_copy_ex(ptr noundef %0, ptr noundef %2, i8 noundef zeroext 1) #15
  %27 = getelementptr inbounds %struct.Object, ptr %26, i64 0, i32 19
  %28 = load ptr, ptr %27, align 8, !tbaa !164
  %29 = getelementptr inbounds %struct.ID, ptr %28, i64 0, i32 6
  %30 = load i32, ptr %29, align 4, !tbaa !307
  %31 = add nsw i32 %30, -1
  store i32 %31, ptr %29, align 4, !tbaa !307
  br i1 %22, label %32, label %33

32:                                               ; preds = %25
  tail call void @BKE_object_free_modifiers(ptr noundef %26) #15
  br label %33

33:                                               ; preds = %32, %25
  %34 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %35 = load ptr, ptr %34, align 8, !tbaa !164
  %36 = tail call ptr @BKE_curve_copy(ptr noundef %35) #15
  store ptr %36, ptr %27, align 8, !tbaa !164
  %37 = getelementptr inbounds %struct.Curve, ptr %28, i64 0, i32 53
  %38 = load ptr, ptr %37, align 8, !tbaa !308
  %39 = getelementptr inbounds %struct.Curve, ptr %36, i64 0, i32 53
  store ptr %38, ptr %39, align 8, !tbaa !308
  %40 = getelementptr inbounds %struct.Curve, ptr %28, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !309
  %42 = getelementptr inbounds %struct.Curve, ptr %36, i64 0, i32 4
  store ptr %41, ptr %42, align 8, !tbaa !309
  %43 = zext i1 %21 to i8
  call void @BKE_displist_make_curveTypes_forRender(ptr noundef %1, ptr noundef %26, ptr noundef nonnull %16, ptr noundef nonnull %17, i8 noundef zeroext 0, i8 noundef zeroext %43) #15
  store ptr null, ptr %39, align 8, !tbaa !308
  store ptr null, ptr %42, align 8, !tbaa !309
  %44 = load ptr, ptr %17, align 8, !tbaa !122
  %45 = getelementptr inbounds %struct.Object, ptr %26, i64 0, i32 120
  store ptr %44, ptr %45, align 8, !tbaa !239
  %46 = getelementptr inbounds %struct.Curve, ptr %28, i64 0, i32 23
  %47 = load i32, ptr %46, align 4, !tbaa !203
  %48 = trunc i32 %47 to i8
  %49 = lshr i8 %48, 5
  %50 = and i8 %49, 1
  call void @BKE_mesh_from_nurbs_displist(ptr noundef %26, ptr noundef nonnull %16, i8 noundef zeroext %50)
  %51 = load ptr, ptr %27, align 8, !tbaa !164
  call void @BKE_displist_free(ptr noundef nonnull %16) #15
  %52 = getelementptr inbounds %struct.Object, ptr %26, i64 0, i32 3
  %53 = load i16, ptr %52, align 8, !tbaa !167
  %54 = icmp eq i16 %53, 1
  br i1 %54, label %55, label %295

55:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #15
  %56 = call i32 @BKE_object_obdata_texspace_get(ptr noundef %2, ptr noundef nonnull %15, ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef nonnull %13) #15
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %89, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %15, align 8, !tbaa !122
  %60 = load i16, ptr %59, align 2, !tbaa !179
  %61 = getelementptr inbounds %struct.Mesh, ptr %51, i64 0, i32 37
  store i16 %60, ptr %61, align 4, !tbaa !136
  %62 = getelementptr inbounds %struct.Mesh, ptr %51, i64 0, i32 33
  %63 = load ptr, ptr %12, align 8, !tbaa !122
  %64 = load float, ptr %63, align 4, !tbaa !58
  store float %64, ptr %62, align 4, !tbaa !58
  %65 = getelementptr inbounds float, ptr %63, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !58
  %67 = getelementptr inbounds %struct.Mesh, ptr %51, i64 0, i32 33, i64 1
  store float %66, ptr %67, align 4, !tbaa !58
  %68 = getelementptr inbounds float, ptr %63, i64 2
  %69 = load float, ptr %68, align 4, !tbaa !58
  %70 = getelementptr inbounds %struct.Mesh, ptr %51, i64 0, i32 33, i64 2
  store float %69, ptr %70, align 4, !tbaa !58
  %71 = getelementptr inbounds %struct.Mesh, ptr %51, i64 0, i32 34
  %72 = load ptr, ptr %14, align 8, !tbaa !122
  %73 = load float, ptr %72, align 4, !tbaa !58
  store float %73, ptr %71, align 4, !tbaa !58
  %74 = getelementptr inbounds float, ptr %72, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !58
  %76 = getelementptr inbounds %struct.Mesh, ptr %51, i64 0, i32 34, i64 1
  store float %75, ptr %76, align 4, !tbaa !58
  %77 = getelementptr inbounds float, ptr %72, i64 2
  %78 = load float, ptr %77, align 4, !tbaa !58
  %79 = getelementptr inbounds %struct.Mesh, ptr %51, i64 0, i32 34, i64 2
  store float %78, ptr %79, align 4, !tbaa !58
  %80 = getelementptr inbounds %struct.Mesh, ptr %51, i64 0, i32 35
  %81 = load ptr, ptr %13, align 8, !tbaa !122
  %82 = load float, ptr %81, align 4, !tbaa !58
  store float %82, ptr %80, align 4, !tbaa !58
  %83 = getelementptr inbounds float, ptr %81, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !58
  %85 = getelementptr inbounds %struct.Mesh, ptr %51, i64 0, i32 35, i64 1
  store float %84, ptr %85, align 4, !tbaa !58
  %86 = getelementptr inbounds float, ptr %81, i64 2
  %87 = load float, ptr %86, align 4, !tbaa !58
  %88 = getelementptr inbounds %struct.Mesh, ptr %51, i64 0, i32 35, i64 2
  store float %87, ptr %88, align 4, !tbaa !58
  br label %89

89:                                               ; preds = %55, %58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #15
  call void @BKE_libblock_free_us(ptr noundef %0, ptr noundef %26) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #15
  br i1 %54, label %184, label %296

90:                                               ; preds = %7
  %91 = tail call ptr @BKE_mball_basis_find(ptr noundef %1, ptr noundef %2) #15
  %92 = icmp eq ptr %91, %2
  br i1 %92, label %93, label %147

93:                                               ; preds = %90
  %94 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 17741, ptr noundef nonnull @.str.12) #15
  %95 = getelementptr inbounds %struct.Mesh, ptr %94, i64 0, i32 34
  %96 = getelementptr inbounds %struct.Mesh, ptr %94, i64 0, i32 34, i64 2
  store float 1.000000e+00, ptr %96, align 8, !tbaa !58
  %97 = getelementptr inbounds %struct.Mesh, ptr %94, i64 0, i32 34, i64 1
  store float 1.000000e+00, ptr %97, align 4, !tbaa !58
  store float 1.000000e+00, ptr %95, align 8, !tbaa !58
  %98 = getelementptr inbounds %struct.Mesh, ptr %94, i64 0, i32 39
  store float 3.000000e+01, ptr %98, align 8, !tbaa !135
  %99 = getelementptr inbounds %struct.Mesh, ptr %94, i64 0, i32 37
  store i16 1, ptr %99, align 4, !tbaa !136
  %100 = getelementptr inbounds %struct.Mesh, ptr %94, i64 0, i32 36
  store i32 67, ptr %100, align 8, !tbaa !137
  %101 = getelementptr inbounds %struct.Mesh, ptr %94, i64 0, i32 21
  tail call void @CustomData_reset(ptr noundef nonnull %101) #15
  %102 = getelementptr inbounds %struct.Mesh, ptr %94, i64 0, i32 22
  tail call void @CustomData_reset(ptr noundef nonnull %102) #15
  %103 = getelementptr inbounds %struct.Mesh, ptr %94, i64 0, i32 23
  tail call void @CustomData_reset(ptr noundef nonnull %103) #15
  %104 = getelementptr inbounds %struct.Mesh, ptr %94, i64 0, i32 24
  tail call void @CustomData_reset(ptr noundef nonnull %104) #15
  %105 = getelementptr inbounds %struct.Mesh, ptr %94, i64 0, i32 25
  tail call void @CustomData_reset(ptr noundef nonnull %105) #15
  %106 = getelementptr inbounds %struct.ID, ptr %94, i64 0, i32 6
  %107 = load i32, ptr %106, align 4, !tbaa !163
  %108 = add nsw i32 %107, -1
  store i32 %108, ptr %106, align 4, !tbaa !163
  br i1 %21, label %109, label %110

109:                                              ; preds = %93
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #15
  store i32 2, ptr %19, align 4, !tbaa !310
  call void @BKE_displist_make_mball_forRender(ptr noundef nonnull %19, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %18) #15
  call void @BKE_mesh_from_metaball(ptr noundef nonnull %18, ptr noundef %94)
  call void @BKE_displist_free(ptr noundef nonnull %18) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #15
  br label %116

110:                                              ; preds = %93
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %111 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 118
  %112 = load ptr, ptr %111, align 8, !tbaa !200
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %112, i64 16, i1 false), !tbaa.struct !201
  br label %115

115:                                              ; preds = %114, %110
  call void @BKE_mesh_from_metaball(ptr noundef nonnull %20, ptr noundef %94)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #15
  br label %116

116:                                              ; preds = %115, %109
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #15
  %117 = call i32 @BKE_object_obdata_texspace_get(ptr noundef %2, ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %9) #15
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %146, label %119

119:                                              ; preds = %116
  %120 = load ptr, ptr %11, align 8, !tbaa !122
  %121 = load i16, ptr %120, align 2, !tbaa !179
  store i16 %121, ptr %99, align 4, !tbaa !136
  %122 = getelementptr inbounds %struct.Mesh, ptr %94, i64 0, i32 33
  %123 = load ptr, ptr %8, align 8, !tbaa !122
  %124 = load float, ptr %123, align 4, !tbaa !58
  store float %124, ptr %122, align 4, !tbaa !58
  %125 = getelementptr inbounds float, ptr %123, i64 1
  %126 = load float, ptr %125, align 4, !tbaa !58
  %127 = getelementptr inbounds %struct.Mesh, ptr %94, i64 0, i32 33, i64 1
  store float %126, ptr %127, align 4, !tbaa !58
  %128 = getelementptr inbounds float, ptr %123, i64 2
  %129 = load float, ptr %128, align 4, !tbaa !58
  %130 = getelementptr inbounds %struct.Mesh, ptr %94, i64 0, i32 33, i64 2
  store float %129, ptr %130, align 4, !tbaa !58
  %131 = load ptr, ptr %10, align 8, !tbaa !122
  %132 = load float, ptr %131, align 4, !tbaa !58
  store float %132, ptr %95, align 4, !tbaa !58
  %133 = getelementptr inbounds float, ptr %131, i64 1
  %134 = load float, ptr %133, align 4, !tbaa !58
  store float %134, ptr %97, align 4, !tbaa !58
  %135 = getelementptr inbounds float, ptr %131, i64 2
  %136 = load float, ptr %135, align 4, !tbaa !58
  store float %136, ptr %96, align 4, !tbaa !58
  %137 = getelementptr inbounds %struct.Mesh, ptr %94, i64 0, i32 35
  %138 = load ptr, ptr %9, align 8, !tbaa !122
  %139 = load float, ptr %138, align 4, !tbaa !58
  store float %139, ptr %137, align 4, !tbaa !58
  %140 = getelementptr inbounds float, ptr %138, i64 1
  %141 = load float, ptr %140, align 4, !tbaa !58
  %142 = getelementptr inbounds %struct.Mesh, ptr %94, i64 0, i32 35, i64 1
  store float %141, ptr %142, align 4, !tbaa !58
  %143 = getelementptr inbounds float, ptr %138, i64 2
  %144 = load float, ptr %143, align 4, !tbaa !58
  %145 = getelementptr inbounds %struct.Mesh, ptr %94, i64 0, i32 35, i64 2
  store float %144, ptr %145, align 4, !tbaa !58
  br label %146

146:                                              ; preds = %116, %119
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  br label %147

147:                                              ; preds = %90, %146
  %148 = phi ptr [ %94, %146 ], [ undef, %90 ]
  br i1 %92, label %184, label %296

149:                                              ; preds = %7
  br i1 %22, label %150, label %154

150:                                              ; preds = %149
  %151 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %152 = load ptr, ptr %151, align 8, !tbaa !164
  %153 = tail call ptr @BKE_mesh_copy_ex(ptr noundef %0, ptr noundef %152)
  br label %179

154:                                              ; preds = %149
  %155 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !139
  %156 = icmp eq i32 %6, 0
  %157 = or i64 %155, 16384
  %158 = select i1 %156, i64 %155, i64 %157
  br i1 %21, label %159, label %161

159:                                              ; preds = %154
  %160 = tail call ptr @mesh_create_derived_render(ptr noundef %1, ptr noundef %2, i64 noundef %158) #15
  br label %163

161:                                              ; preds = %154
  %162 = tail call ptr @mesh_create_derived_view(ptr noundef %1, ptr noundef %2, i64 noundef %158) #15
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi ptr [ %160, %159 ], [ %162, %161 ]
  %165 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 17741, ptr noundef nonnull @.str.12) #15
  %166 = getelementptr inbounds %struct.Mesh, ptr %165, i64 0, i32 34
  %167 = getelementptr inbounds %struct.Mesh, ptr %165, i64 0, i32 34, i64 2
  store float 1.000000e+00, ptr %167, align 8, !tbaa !58
  %168 = getelementptr inbounds %struct.Mesh, ptr %165, i64 0, i32 34, i64 1
  store float 1.000000e+00, ptr %168, align 4, !tbaa !58
  store float 1.000000e+00, ptr %166, align 8, !tbaa !58
  %169 = getelementptr inbounds %struct.Mesh, ptr %165, i64 0, i32 39
  store float 3.000000e+01, ptr %169, align 8, !tbaa !135
  %170 = getelementptr inbounds %struct.Mesh, ptr %165, i64 0, i32 37
  store i16 1, ptr %170, align 4, !tbaa !136
  %171 = getelementptr inbounds %struct.Mesh, ptr %165, i64 0, i32 36
  store i32 67, ptr %171, align 8, !tbaa !137
  %172 = getelementptr inbounds %struct.Mesh, ptr %165, i64 0, i32 21
  tail call void @CustomData_reset(ptr noundef nonnull %172) #15
  %173 = getelementptr inbounds %struct.Mesh, ptr %165, i64 0, i32 22
  tail call void @CustomData_reset(ptr noundef nonnull %173) #15
  %174 = getelementptr inbounds %struct.Mesh, ptr %165, i64 0, i32 23
  tail call void @CustomData_reset(ptr noundef nonnull %174) #15
  %175 = getelementptr inbounds %struct.Mesh, ptr %165, i64 0, i32 24
  tail call void @CustomData_reset(ptr noundef nonnull %175) #15
  %176 = getelementptr inbounds %struct.Mesh, ptr %165, i64 0, i32 25
  tail call void @CustomData_reset(ptr noundef nonnull %176) #15
  tail call void @DM_to_mesh(ptr noundef %164, ptr noundef %165, ptr noundef %2, i64 noundef %158) #15
  %177 = getelementptr inbounds %struct.DerivedMesh, ptr %164, i64 0, i32 95
  %178 = load ptr, ptr %177, align 8, !tbaa !274
  tail call void %178(ptr noundef %164) #15
  br label %179

179:                                              ; preds = %163, %150
  %180 = phi ptr [ %153, %150 ], [ %165, %163 ]
  %181 = getelementptr inbounds %struct.ID, ptr %180, i64 0, i32 6
  %182 = load i32, ptr %181, align 4, !tbaa !163
  %183 = add nsw i32 %182, -1
  store i32 %183, ptr %181, align 4, !tbaa !163
  br label %184

184:                                              ; preds = %89, %147, %179
  %185 = phi ptr [ null, %179 ], [ null, %147 ], [ %28, %89 ]
  %186 = phi ptr [ %180, %179 ], [ %148, %147 ], [ %51, %89 ]
  %187 = load i16, ptr %23, align 8, !tbaa !167
  switch i16 %187, label %275 [
    i16 3, label %188
    i16 4, label %188
    i16 2, label %188
    i16 1, label %225
  ]

188:                                              ; preds = %184, %184, %184
  %189 = getelementptr inbounds %struct.Curve, ptr %185, i64 0, i32 22
  %190 = load i16, ptr %189, align 2, !tbaa !240
  %191 = getelementptr inbounds %struct.Mesh, ptr %186, i64 0, i32 47
  store i16 %190, ptr %191, align 2, !tbaa !121
  %192 = getelementptr inbounds %struct.Curve, ptr %185, i64 0, i32 10
  %193 = load ptr, ptr %192, align 8, !tbaa !241
  %194 = icmp ne ptr %193, null
  %195 = icmp sgt i16 %190, 0
  %196 = select i1 %194, i1 %195, i1 false
  br i1 %196, label %197, label %275

197:                                              ; preds = %188
  %198 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 30
  %199 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 29
  %200 = getelementptr inbounds %struct.Mesh, ptr %186, i64 0, i32 5
  %201 = zext nneg i16 %190 to i64
  br label %202

202:                                              ; preds = %197, %223
  %203 = phi i64 [ %201, %197 ], [ %204, %223 ]
  %204 = add nsw i64 %203, -1
  %205 = load ptr, ptr %198, align 8, !tbaa !312
  %206 = getelementptr inbounds i8, ptr %205, i64 %204
  %207 = load i8, ptr %206, align 1, !tbaa !101
  %208 = icmp eq i8 %207, 0
  %209 = select i1 %208, ptr %192, ptr %199
  %210 = load ptr, ptr %209, align 8, !tbaa !122
  %211 = getelementptr inbounds ptr, ptr %210, i64 %204
  %212 = load ptr, ptr %211, align 8, !tbaa !122
  %213 = load ptr, ptr %200, align 8, !tbaa !120
  %214 = getelementptr inbounds ptr, ptr %213, i64 %204
  store ptr %212, ptr %214, align 8, !tbaa !122
  %215 = load ptr, ptr %200, align 8, !tbaa !120
  %216 = getelementptr inbounds ptr, ptr %215, i64 %204
  %217 = load ptr, ptr %216, align 8, !tbaa !122
  %218 = icmp eq ptr %217, null
  br i1 %218, label %223, label %219

219:                                              ; preds = %202
  %220 = getelementptr inbounds %struct.ID, ptr %217, i64 0, i32 6
  %221 = load i32, ptr %220, align 4, !tbaa !123
  %222 = add nsw i32 %221, 1
  store i32 %222, ptr %220, align 4, !tbaa !123
  br label %223

223:                                              ; preds = %219, %202
  %224 = icmp sgt i64 %203, 1
  br i1 %224, label %202, label %275, !llvm.loop !313

225:                                              ; preds = %184
  br i1 %22, label %275, label %226

226:                                              ; preds = %225
  %227 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %228 = load ptr, ptr %227, align 8, !tbaa !164
  %229 = getelementptr inbounds %struct.Mesh, ptr %228, i64 0, i32 38
  %230 = load i16, ptr %229, align 2, !tbaa !314
  %231 = getelementptr inbounds %struct.Mesh, ptr %186, i64 0, i32 38
  store i16 %230, ptr %231, align 2, !tbaa !314
  %232 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !122
  %233 = getelementptr inbounds %struct.Mesh, ptr %228, i64 0, i32 5
  %234 = load ptr, ptr %233, align 8, !tbaa !120
  %235 = call ptr %232(ptr noundef %234) #15
  %236 = getelementptr inbounds %struct.Mesh, ptr %186, i64 0, i32 5
  store ptr %235, ptr %236, align 8, !tbaa !120
  %237 = getelementptr inbounds %struct.Mesh, ptr %228, i64 0, i32 47
  %238 = load i16, ptr %237, align 2, !tbaa !121
  %239 = getelementptr inbounds %struct.Mesh, ptr %186, i64 0, i32 47
  store i16 %238, ptr %239, align 2, !tbaa !121
  %240 = getelementptr inbounds %struct.Mesh, ptr %228, i64 0, i32 39
  %241 = load float, ptr %240, align 8, !tbaa !135
  %242 = getelementptr inbounds %struct.Mesh, ptr %186, i64 0, i32 39
  store float %241, ptr %242, align 8, !tbaa !135
  %243 = load ptr, ptr %233, align 8, !tbaa !120
  %244 = icmp eq ptr %243, null
  br i1 %244, label %275, label %245

245:                                              ; preds = %226
  %246 = load i16, ptr %237, align 2, !tbaa !121
  %247 = icmp sgt i16 %246, 0
  br i1 %247, label %248, label %275

248:                                              ; preds = %245
  %249 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 30
  %250 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 29
  %251 = zext nneg i16 %246 to i64
  br label %252

252:                                              ; preds = %248, %273
  %253 = phi i64 [ %251, %248 ], [ %254, %273 ]
  %254 = add nsw i64 %253, -1
  %255 = load ptr, ptr %249, align 8, !tbaa !312
  %256 = getelementptr inbounds i8, ptr %255, i64 %254
  %257 = load i8, ptr %256, align 1, !tbaa !101
  %258 = icmp eq i8 %257, 0
  %259 = select i1 %258, ptr %233, ptr %250
  %260 = load ptr, ptr %259, align 8, !tbaa !122
  %261 = getelementptr inbounds ptr, ptr %260, i64 %254
  %262 = load ptr, ptr %261, align 8, !tbaa !122
  %263 = load ptr, ptr %236, align 8, !tbaa !120
  %264 = getelementptr inbounds ptr, ptr %263, i64 %254
  store ptr %262, ptr %264, align 8, !tbaa !122
  %265 = load ptr, ptr %236, align 8, !tbaa !120
  %266 = getelementptr inbounds ptr, ptr %265, i64 %254
  %267 = load ptr, ptr %266, align 8, !tbaa !122
  %268 = icmp eq ptr %267, null
  br i1 %268, label %273, label %269

269:                                              ; preds = %252
  %270 = getelementptr inbounds %struct.ID, ptr %267, i64 0, i32 6
  %271 = load i32, ptr %270, align 4, !tbaa !123
  %272 = add nsw i32 %271, 1
  store i32 %272, ptr %270, align 4, !tbaa !123
  br label %273

273:                                              ; preds = %269, %252
  %274 = icmp sgt i64 %253, 1
  br i1 %274, label %252, label %275, !llvm.loop !315

275:                                              ; preds = %273, %223, %245, %226, %225, %188, %184
  %276 = icmp eq i32 %5, 0
  br i1 %276, label %294, label %277

277:                                              ; preds = %275
  %278 = getelementptr inbounds %struct.Mesh, ptr %186, i64 0, i32 30
  %279 = load i32, ptr %278, align 8, !tbaa !45
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %294, label %281

281:                                              ; preds = %277
  %282 = getelementptr inbounds %struct.Mesh, ptr %186, i64 0, i32 28
  %283 = load i32, ptr %282, align 8, !tbaa !107
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %294

285:                                              ; preds = %281
  %286 = getelementptr inbounds %struct.Mesh, ptr %186, i64 0, i32 23
  %287 = getelementptr inbounds %struct.Mesh, ptr %186, i64 0, i32 25
  %288 = getelementptr inbounds %struct.Mesh, ptr %186, i64 0, i32 24
  %289 = getelementptr inbounds %struct.Mesh, ptr %186, i64 0, i32 15
  %290 = load ptr, ptr %289, align 8, !tbaa !111
  %291 = getelementptr inbounds %struct.Mesh, ptr %186, i64 0, i32 31
  %292 = load i32, ptr %291, align 4, !tbaa !46
  %293 = call i32 @BKE_mesh_recalc_tessellation(ptr noundef nonnull %286, ptr noundef nonnull %287, ptr noundef nonnull %288, ptr noundef %290, i32 noundef %283, i32 noundef %292, i32 noundef %279, i8 noundef zeroext 0) #15
  store i32 %293, ptr %282, align 8, !tbaa !107
  call void @BKE_mesh_update_customdata_pointers(ptr noundef %186, i8 noundef zeroext 1)
  br label %294

294:                                              ; preds = %285, %281, %277, %275
  call void @test_object_materials(ptr noundef %0, ptr noundef %186) #15
  br label %296

295:                                              ; preds = %33
  call void @BKE_libblock_free_us(ptr noundef %0, ptr noundef %26) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #15
  br label %296

296:                                              ; preds = %295, %7, %89, %147, %294
  %297 = phi ptr [ %186, %294 ], [ null, %147 ], [ null, %89 ], [ null, %7 ], [ null, %295 ]
  ret ptr %297
}

declare ptr @BKE_object_copy_ex(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_object_free_modifiers(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_curve_copy(ptr noundef) local_unnamed_addr #2

declare void @BKE_displist_make_curveTypes_forRender(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_displist_free(ptr noundef) local_unnamed_addr #2

declare void @BKE_libblock_free_us(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_mball_basis_find(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_displist_make_mball_forRender(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @mesh_create_derived_render(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @mesh_create_derived_view(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @BLI_edgehash_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_edgehash_insert(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_edgehash_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_edgehash_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @BKE_editmesh_update_linked_customdata(ptr noundef) local_unnamed_addr #2

declare void @CustomData_bmesh_update_active_layers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_from_bmeshpoly(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #13

declare void @extern_local_matarar(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @BKE_mesh_poly_edgehash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_edgehash_size(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_edgehashIterator_new(ptr noundef) local_unnamed_addr #2

declare void @BLI_edgehashIterator_step(ptr noundef) local_unnamed_addr #2

declare void @BLI_edgehashIterator_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }

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
!47 = !{!42, !41, i64 172}
!48 = !{!42, !37, i64 0}
!49 = !{!50, !41, i64 0}
!50 = !{!"CustomDataLayer", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = distinct !{!54, !52, !53}
!55 = distinct !{!55, !52, !53}
!56 = distinct !{!56, !52, !53}
!57 = !{!50, !37, i64 96}
!58 = !{!43, !43, i64 0}
!59 = distinct !{!59, !52, !53}
!60 = !{!61, !41, i64 0}
!61 = !{!"MEdge", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 9, !40, i64 10}
!62 = !{!61, !41, i64 4}
!63 = distinct !{!63, !52, !53}
!64 = distinct !{!64, !52, !53}
!65 = !{!66, !41, i64 4}
!66 = !{!"MPoly", !41, i64 0, !41, i64 4, !40, i64 8, !38, i64 10, !38, i64 11}
!67 = !{!35, !37, i64 184}
!68 = !{!66, !41, i64 0}
!69 = !{!70, !41, i64 0}
!70 = !{!"MLoop", !41, i64 0, !41, i64 4}
!71 = distinct !{!71, !52, !53}
!72 = distinct !{!72, !52, !53}
!73 = distinct !{!73, !52, !53}
!74 = distinct !{!74, !52, !53}
!75 = !{!76, !38, i64 0}
!76 = !{!"MLoopCol", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3}
!77 = distinct !{!77, !52, !53}
!78 = !{!76, !38, i64 1}
!79 = !{!76, !38, i64 2}
!80 = !{!76, !38, i64 3}
!81 = !{!82, !41, i64 8}
!82 = !{!"MDeformVert", !37, i64 0, !41, i64 8, !41, i64 12}
!83 = !{!82, !37, i64 0}
!84 = !{!85, !41, i64 0}
!85 = !{!"MDeformWeight", !41, i64 0, !43, i64 4}
!86 = !{!85, !43, i64 4}
!87 = distinct !{!87, !52, !53}
!88 = distinct !{!88, !52, !53}
!89 = distinct !{!89, !52, !53}
!90 = !{!35, !37, i64 272}
!91 = !{!92, !37, i64 0}
!92 = !{!"BMEditMesh", !37, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !41, i64 32, !37, i64 40, !37, i64 48, !93, i64 56, !37, i64 64, !41, i64 72, !37, i64 80, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !41, i64 104}
!93 = !{!"long", !38, i64 0}
!94 = !{!95, !38, i64 60}
!95 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !41, i64 56, !38, i64 60}
!96 = !{!95, !37, i64 40}
!97 = !{!95, !37, i64 48}
!98 = !{!99, !37, i64 32}
!99 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !41, i64 128, !37, i64 136, !42, i64 144, !42, i64 344, !42, i64 544, !42, i64 744, !40, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !100, i64 960, !37, i64 976, !100, i64 984, !37, i64 1000}
!100 = !{!"ListBase", !37, i64 0, !37, i64 8}
!101 = !{!38, !38, i64 0}
!102 = !{!103, !37, i64 0}
!103 = !{!"BMVert", !104, i64 0, !37, i64 16, !38, i64 24, !38, i64 36, !37, i64 48}
!104 = !{!"BMHeader", !37, i64 0, !41, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!105 = !{!106, !41, i64 12}
!106 = !{!"MVertSkin", !38, i64 0, !41, i64 12}
!107 = !{!35, !41, i64 1288}
!108 = !{!35, !37, i64 256}
!109 = !{!110, !41, i64 2100}
!110 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !100, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!111 = !{!35, !37, i64 232}
!112 = !{!35, !37, i64 248}
!113 = !{!35, !37, i64 240}
!114 = !{!35, !37, i64 208}
!115 = !{!35, !37, i64 216}
!116 = !{!35, !37, i64 168}
!117 = !{!35, !37, i64 176}
!118 = !{!35, !37, i64 200}
!119 = !{!35, !37, i64 192}
!120 = !{!35, !37, i64 152}
!121 = !{!35, !40, i64 1366}
!122 = !{!37, !37, i64 0}
!123 = !{!124, !41, i64 100}
!124 = !{!"Material", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !43, i64 132, !43, i64 136, !43, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !43, i64 208, !43, i64 212, !43, i64 216, !43, i64 220, !125, i64 224, !126, i64 312, !43, i64 328, !43, i64 332, !43, i64 336, !43, i64 340, !43, i64 344, !43, i64 348, !43, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !38, i64 362, !38, i64 363, !43, i64 364, !43, i64 368, !40, i64 372, !40, i64 374, !43, i64 376, !43, i64 380, !43, i64 384, !43, i64 388, !40, i64 392, !40, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !43, i64 420, !43, i64 424, !43, i64 428, !43, i64 432, !43, i64 436, !43, i64 440, !43, i64 444, !43, i64 448, !43, i64 452, !43, i64 456, !38, i64 460, !43, i64 524, !43, i64 528, !43, i64 532, !41, i64 536, !38, i64 540, !38, i64 541, !38, i64 542, !38, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !38, i64 550, !38, i64 551, !40, i64 552, !40, i64 554, !43, i64 556, !43, i64 560, !38, i64 564, !43, i64 580, !43, i64 584, !40, i64 588, !40, i64 590, !37, i64 592, !37, i64 600, !38, i64 608, !38, i64 609, !38, i64 610, !38, i64 611, !40, i64 612, !40, i64 614, !43, i64 616, !43, i64 620, !38, i64 624, !37, i64 768, !37, i64 776, !37, i64 784, !37, i64 792, !43, i64 800, !43, i64 804, !43, i64 808, !43, i64 812, !43, i64 816, !40, i64 820, !40, i64 822, !38, i64 824, !38, i64 836, !43, i64 848, !43, i64 852, !43, i64 856, !43, i64 860, !43, i64 864, !43, i64 868, !43, i64 872, !40, i64 876, !40, i64 878, !41, i64 880, !40, i64 884, !40, i64 886, !38, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !38, i64 914, !37, i64 920, !100, i64 928}
!125 = !{!"VolumeSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !38, i64 16, !38, i64 28, !38, i64 40, !43, i64 52, !43, i64 56, !43, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !43, i64 72, !43, i64 76, !43, i64 80, !43, i64 84}
!126 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!127 = distinct !{!127, !52, !53}
!128 = !{!35, !37, i64 144}
!129 = !{!130, !41, i64 100}
!130 = !{!"Key", !36, i64 0, !37, i64 120, !37, i64 128, !38, i64 136, !41, i64 168, !41, i64 172, !100, i64 176, !37, i64 192, !37, i64 200, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !43, i64 216, !41, i64 220}
!131 = !{!35, !37, i64 264}
!132 = !{!35, !37, i64 120}
!133 = !{!35, !37, i64 128}
!134 = !{!35, !37, i64 160}
!135 = !{!35, !43, i64 1352}
!136 = !{!35, !40, i64 1348}
!137 = !{!35, !41, i64 1344}
!138 = distinct !{!138, !52, !53}
!139 = !{!93, !93, i64 0}
!140 = !{!35, !41, i64 852}
!141 = !{!35, !41, i64 1052}
!142 = !{!35, !37, i64 680}
!143 = !{!144, !37, i64 32}
!144 = !{!"MTFace", !38, i64 0, !37, i64 32, !38, i64 40, !38, i64 41, !40, i64 42, !40, i64 44, !40, i64 46}
!145 = distinct !{!145, !52, !53}
!146 = distinct !{!146, !52, !53}
!147 = !{!35, !37, i64 880}
!148 = !{!149, !37, i64 0}
!149 = !{!"MTexPoly", !37, i64 0, !38, i64 8, !38, i64 9, !40, i64 10, !40, i64 12, !40, i64 14}
!150 = distinct !{!150, !52, !53}
!151 = distinct !{!151, !52, !53}
!152 = !{!130, !37, i64 200}
!153 = !{!110, !37, i64 0}
!154 = !{!155, !41, i64 0}
!155 = !{!"BMAllocTemplate", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!156 = !{!155, !41, i64 4}
!157 = !{!155, !41, i64 8}
!158 = !{!155, !41, i64 12}
!159 = !{!160, !40, i64 1266}
!160 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !161, i64 312, !37, i64 360, !100, i64 368, !100, i64 384, !100, i64 400, !100, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !43, i64 616, !43, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !43, i64 988, !43, i64 992, !43, i64 996, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !43, i64 1028, !43, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !43, i64 1048, !43, i64 1052, !100, i64 1056, !100, i64 1072, !100, i64 1088, !100, i64 1104, !43, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !100, i64 1176, !100, i64 1192, !100, i64 1208, !100, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !43, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !93, i64 1304, !93, i64 1312, !41, i64 1320, !41, i64 1324, !100, i64 1328, !100, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !100, i64 1400, !37, i64 1416}
!161 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!162 = !{!35, !37, i64 24}
!163 = !{!35, !41, i64 100}
!164 = !{!160, !37, i64 296}
!165 = !{!160, !37, i64 24}
!166 = distinct !{!166, !52, !53}
!167 = !{!160, !40, i64 136}
!168 = distinct !{!168, !52, !53}
!169 = distinct !{!169, !52, !53}
!170 = distinct !{!170, !52, !53}
!171 = distinct !{!171, !52, !53}
!172 = distinct !{!172, !52, !53}
!173 = distinct !{!173, !52, !53}
!174 = distinct !{!174, !52, !53}
!175 = !{!176, !41, i64 96}
!176 = !{!"BoundBox", !38, i64 0, !41, i64 96, !41, i64 100}
!177 = distinct !{!177, !52, !53}
!178 = !{!160, !37, i64 264}
!179 = !{!40, !40, i64 0}
!180 = distinct !{!180, !52, !53}
!181 = distinct !{!181, !52, !53}
!182 = distinct !{!182, !52, !53}
!183 = !{!184, !41, i64 8}
!184 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !38, i64 18, !38, i64 19}
!185 = !{!184, !41, i64 12}
!186 = !{!184, !41, i64 4}
!187 = !{!184, !41, i64 0}
!188 = !{!100, !37, i64 0}
!189 = !{!190, !40, i64 16}
!190 = !{!"DispList", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32, !37, i64 40, !37, i64 48, !41, i64 56, !41, i64 60, !37, i64 64}
!191 = !{!190, !41, i64 24}
!192 = !{!190, !41, i64 20}
!193 = !{!190, !37, i64 32}
!194 = !{!190, !37, i64 40}
!195 = distinct !{!195, !52, !53}
!196 = !{!190, !37, i64 48}
!197 = !{!41, !41, i64 0}
!198 = !{!66, !38, i64 10}
!199 = distinct !{!199, !52, !53}
!200 = !{!160, !37, i64 1280}
!201 = !{i64 0, i64 8, !122, i64 8, i64 8, !122}
!202 = !{i32 -1, i32 1}
!203 = !{!204, !41, i64 268}
!204 = !{!"Curve", !36, i64 0, !37, i64 120, !37, i64 128, !100, i64 136, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !38, i64 220, !38, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !43, i64 252, !43, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !41, i64 268, !43, i64 272, !43, i64 276, !43, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !41, i64 292, !41, i64 296, !38, i64 300, !40, i64 304, !38, i64 306, !38, i64 307, !43, i64 308, !43, i64 312, !43, i64 316, !43, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !43, i64 340, !43, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !37, i64 368, !37, i64 376, !38, i64 384, !37, i64 448, !37, i64 456, !37, i64 464, !37, i64 472, !37, i64 480, !41, i64 488, !41, i64 492, !37, i64 496, !205, i64 504, !43, i64 512, !43, i64 516, !43, i64 520, !38, i64 524, !38, i64 525, !38, i64 526}
!205 = !{!"CharInfo", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !40, i64 6}
!206 = !{!190, !40, i64 18}
!207 = distinct !{!207, !52, !53}
!208 = !{!190, !40, i64 30}
!209 = distinct !{!209, !52, !53}
!210 = !{!61, !40, i64 10}
!211 = distinct !{!211, !52, !53}
!212 = distinct !{!212, !52, !53}
!213 = distinct !{!213, !52, !53}
!214 = distinct !{!214, !52, !53}
!215 = distinct !{!215, !52, !53}
!216 = distinct !{!216, !52, !53}
!217 = !{!190, !40, i64 28}
!218 = !{!66, !40, i64 8}
!219 = distinct !{!219, !52, !53}
!220 = distinct !{!220, !52, !53}
!221 = distinct !{!221, !52, !53}
!222 = distinct !{!222, !52, !53}
!223 = distinct !{!223, !52, !53}
!224 = distinct !{!224, !52, !53}
!225 = distinct !{!225, !52, !53}
!226 = distinct !{!226, !52, !53}
!227 = !{!228, !37, i64 8}
!228 = !{!"EdgeHashIterator", !37, i64 0, !37, i64 8, !41, i64 16}
!229 = !{!230, !41, i64 8}
!230 = !{!"_eh_Entry", !37, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!231 = !{!230, !41, i64 12}
!232 = !{!230, !37, i64 16}
!233 = !{!61, !38, i64 9}
!234 = !{!61, !38, i64 8}
!235 = distinct !{!235, !52, !53}
!236 = !{!70, !41, i64 4}
!237 = distinct !{!237, !52, !53}
!238 = distinct !{!238, !52, !53}
!239 = !{!160, !37, i64 1296}
!240 = !{!204, !40, i64 266}
!241 = !{!204, !37, i64 200}
!242 = distinct !{!242, !52, !53}
!243 = !{!244, !37, i64 1168}
!244 = !{!"DerivedMesh", !42, i64 0, !42, i64 200, !42, i64 400, !42, i64 600, !42, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !43, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!245 = !{!244, !37, i64 1176}
!246 = !{!244, !37, i64 1200}
!247 = !{!244, !37, i64 1192}
!248 = !{!244, !37, i64 1112}
!249 = !{!244, !37, i64 1136}
!250 = distinct !{!250, !52, !53}
!251 = distinct !{!251, !52, !53}
!252 = !{!253, !37, i64 16}
!253 = !{!"EdgeLink", !37, i64 0, !37, i64 8, !37, i64 16}
!254 = distinct !{!254, !52, !53}
!255 = !{!100, !37, i64 8}
!256 = !{!257, !41, i64 16}
!257 = !{!"VertLink", !37, i64 0, !37, i64 8, !41, i64 16}
!258 = distinct !{!258, !52, !53}
!259 = !{!253, !37, i64 8}
!260 = distinct !{!260, !52, !53}
!261 = !{!262, !41, i64 24}
!262 = !{!"Nurb", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !41, i64 24, !41, i64 28, !38, i64 32, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !40, i64 80, !40, i64 82, !41, i64 84}
!263 = !{!262, !41, i64 28}
!264 = !{!262, !40, i64 40}
!265 = !{!262, !40, i64 44}
!266 = !{!262, !40, i64 36}
!267 = !{!262, !37, i64 64}
!268 = !{!269, !40, i64 24}
!269 = !{!"BPoint", !38, i64 0, !43, i64 16, !43, i64 20, !40, i64 24, !40, i64 26, !43, i64 28, !43, i64 32}
!270 = !{!269, !43, i64 20}
!271 = !{!269, !43, i64 28}
!272 = distinct !{!272, !52, !53}
!273 = !{!244, !41, i64 1020}
!274 = !{!244, !37, i64 1680}
!275 = distinct !{!275, !52, !53}
!276 = !{!184, !40, i64 16}
!277 = distinct !{!277, !52, !53}
!278 = distinct !{!278, !52, !53}
!279 = distinct !{!279, !52, !53}
!280 = distinct !{!280, !52, !53}
!281 = !{!184, !38, i64 19}
!282 = distinct !{!282, !52, !53}
!283 = distinct !{!283, !52, !53}
!284 = distinct !{!284, !52, !53}
!285 = distinct !{!285, !52, !53}
!286 = distinct !{!286, !52, !53}
!287 = !{!288, !41, i64 32}
!288 = !{!"KeyBlock", !37, i64 0, !37, i64 8, !43, i64 16, !43, i64 20, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !37, i64 40, !38, i64 48, !38, i64 112, !43, i64 176, !43, i64 180}
!289 = !{!288, !37, i64 40}
!290 = distinct !{!290, !52, !53}
!291 = distinct !{!291, !52, !53}
!292 = distinct !{!292, !52, !53}
!293 = distinct !{!293, !52, !53}
!294 = distinct !{!294, !52, !53}
!295 = !{!35, !38, i64 1360}
!296 = !{!297, !38, i64 19}
!297 = !{!"MVert", !38, i64 0, !38, i64 12, !38, i64 18, !38, i64 19}
!298 = distinct !{!298, !52, !53}
!299 = distinct !{!299, !52, !53}
!300 = !{!35, !41, i64 1292}
!301 = !{!302, !41, i64 0}
!302 = !{!"MSelect", !41, i64 0, !41, i64 4}
!303 = !{!302, !41, i64 4}
!304 = !{!297, !38, i64 18}
!305 = distinct !{!305, !52, !53}
!306 = distinct !{!306, !52, !53}
!307 = !{!204, !41, i64 100}
!308 = !{!204, !37, i64 376}
!309 = !{!204, !37, i64 152}
!310 = !{!311, !41, i64 0}
!311 = !{!"EvaluationContext", !41, i64 0}
!312 = !{!160, !37, i64 448}
!313 = distinct !{!313, !52, !53}
!314 = !{!35, !40, i64 1350}
!315 = distinct !{!315, !52, !53}
