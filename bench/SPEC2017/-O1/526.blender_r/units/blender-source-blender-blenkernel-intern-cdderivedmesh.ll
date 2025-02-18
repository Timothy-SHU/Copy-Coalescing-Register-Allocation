; ModuleID = 'blender/source/blender/blenkernel/intern/cdderivedmesh.c'
source_filename = "blender/source/blender/blenkernel/intern/cdderivedmesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.CDDerivedMesh = type { %struct.DerivedMesh, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.MTexPoly = type { ptr, i8, i8, i16, i16, i16 }
%struct.MCol = type { i8, i8, i8, i8 }
%struct.MLoopCol = type { i8, i8, i8, i8 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MLoop = type { i32, i32 }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.PolyKey = type { i32, i32, i32, i32 }
%struct.MeshElemMap = type { ptr, i32 }
%struct.EdgeHashIterator = type { ptr, ptr, i32 }
%struct._eh_Entry = type { ptr, i32, i32, ptr }
%struct.SculptSession = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, i8, i8, ptr, ptr, ptr, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i8, [3 x float], [3 x float], i32 }
%struct.GPUDrawObject = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i8 }
%struct.GPUBufferMaterial = type { i32, i32, i16 }
%struct.GPUVertexAttribs = type { [32 x %struct.anon], i32 }
%struct.anon = type { i32, i32, i32, i32, [64 x i8] }
%struct.DMVertexAttribs = type { [8 x %struct.anon.0], [8 x %struct.anon.1], %struct.anon.2, %struct.anon.3, i32, i32, i32, i32 }
%struct.anon.0 = type { ptr, i32, i32, i32 }
%struct.anon.1 = type { ptr, i32, i32 }
%struct.anon.2 = type { ptr, i32, i32 }
%struct.anon.3 = type { ptr, i32, i32, i32 }
%struct.GPUAttrib = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"CDDM_new dm\00", align 1
@__func__.CDDM_from_mesh = private unnamed_addr constant [15 x i8] c"CDDM_from_mesh\00", align 1
@CD_MASK_MESH = external local_unnamed_addr constant i64, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"Orco\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"CDDM_from_template dest\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"face_nors\00", align 1
@__func__.CDDM_merge_verts = private unnamed_addr constant [17 x i8] c"CDDM_merge_verts\00", align 1
@__func__.CDDM_calc_edges_tessface = private unnamed_addr constant [25 x i8] c"CDDM_calc_edges_tessface\00", align 1
@__func__.CDDM_calc_edges = private unnamed_addr constant [16 x i8] c"CDDM_calc_edges\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"cdDM_getPBVH vertCos\00", align 1
@__glewMultiTexCoord2fv = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@stipple_quarttone = external global [128 x i8], align 16
@__glewVertexAttrib3fvARB = external local_unnamed_addr global ptr, align 8
@__glewVertexAttrib2fvARB = external local_unnamed_addr global ptr, align 8
@__glewVertexAttrib4ubvARB = external local_unnamed_addr global ptr, align 8
@__glewVertexAttrib4fvARB = external local_unnamed_addr global ptr, align 8
@CD_MASK_DERIVEDMESH = external local_unnamed_addr constant i64, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"CDDM_copy cddm\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @CDDM_recalc_tessellation_ex(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %6 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !43
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 4, !tbaa !44
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !45
  %14 = tail call i32 @BKE_mesh_recalc_tessellation(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i8 noundef zeroext %1) #11
  store i32 %14, ptr %8, align 8, !tbaa !43
  %15 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %3, i32 noundef 4) #11
  %16 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  store ptr %15, ptr %16, align 8, !tbaa !46
  tail call void @CustomData_bmesh_update_active_layers(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @BKE_mesh_recalc_tessellation(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_bmesh_update_active_layers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @CDDM_recalc_tessellation(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %5 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 4, !tbaa !44
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !45
  %13 = tail call i32 @BKE_mesh_recalc_tessellation(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i8 noundef zeroext 1) #11
  store i32 %13, ptr %7, align 8, !tbaa !43
  %14 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %2, i32 noundef 4) #11
  %15 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  store ptr %14, ptr %15, align 8, !tbaa !46
  tail call void @CustomData_bmesh_update_active_layers(ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CDDM_new(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %7 = tail call ptr %6(i64 noundef 1760, ptr noundef nonnull @.str) #11
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 75
  store ptr @cdDM_getMinMax, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 23
  store ptr @cdDM_getNumVerts, ptr %9, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 24
  store ptr @cdDM_getNumEdges, ptr %10, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 25
  store ptr @cdDM_getNumTessFaces, ptr %11, align 8, !tbaa !51
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 26
  store ptr @cdDM_getNumLoops, ptr %12, align 8, !tbaa !52
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 27
  store ptr @cdDM_getNumPolys, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 28
  store ptr @cdDM_getVert, ptr %14, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 29
  store ptr @cdDM_getEdge, ptr %15, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 30
  store ptr @cdDM_getTessFace, ptr %16, align 8, !tbaa !56
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 36
  store ptr @cdDM_copyVertArray, ptr %17, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 37
  store ptr @cdDM_copyEdgeArray, ptr %18, align 8, !tbaa !58
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 38
  store ptr @cdDM_copyTessFaceArray, ptr %19, align 8, !tbaa !59
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 39
  store ptr @cdDM_copyLoopArray, ptr %20, align 8, !tbaa !60
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 40
  store ptr @cdDM_copyPolyArray, ptr %21, align 8, !tbaa !61
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 46
  store ptr @DM_get_vert_data, ptr %22, align 8, !tbaa !62
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 47
  store ptr @DM_get_edge_data, ptr %23, align 8, !tbaa !63
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 48
  store ptr @DM_get_tessface_data, ptr %24, align 8, !tbaa !64
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 50
  store ptr @DM_get_vert_data_layer, ptr %25, align 8, !tbaa !65
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 51
  store ptr @DM_get_edge_data_layer, ptr %26, align 8, !tbaa !66
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 52
  store ptr @DM_get_tessface_data_layer, ptr %27, align 8, !tbaa !67
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 20
  store ptr @CDDM_calc_normals, ptr %28, align 8, !tbaa !68
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 21
  store ptr @CDDM_calc_loop_normals, ptr %29, align 8, !tbaa !69
  %30 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 22
  store ptr @CDDM_recalc_tessellation, ptr %30, align 8, !tbaa !70
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 77
  store ptr @cdDM_getVertCos, ptr %31, align 8, !tbaa !71
  %32 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 76
  store ptr @cdDM_getVertCo, ptr %32, align 8, !tbaa !72
  %33 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 78
  store ptr @cdDM_getVertNo, ptr %33, align 8, !tbaa !73
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 81
  store ptr @cdDM_getPBVH, ptr %34, align 8, !tbaa !74
  %35 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 80
  store ptr @cdDM_getPolyMap, ptr %35, align 8, !tbaa !75
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 82
  store ptr @cdDM_drawVerts, ptr %36, align 8, !tbaa !76
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 83
  store ptr @cdDM_drawUVEdges, ptr %37, align 8, !tbaa !77
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 84
  store ptr @cdDM_drawEdges, ptr %38, align 8, !tbaa !78
  %39 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 85
  store ptr @cdDM_drawLooseEdges, ptr %39, align 8, !tbaa !79
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 92
  store ptr @cdDM_drawMappedEdges, ptr %40, align 8, !tbaa !80
  %41 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 86
  store ptr @cdDM_drawFacesSolid, ptr %41, align 8, !tbaa !81
  %42 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 87
  store ptr @cdDM_drawFacesTex, ptr %42, align 8, !tbaa !82
  %43 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 88
  store ptr @cdDM_drawFacesGLSL, ptr %43, align 8, !tbaa !83
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 89
  store ptr @cdDM_drawMappedFaces, ptr %44, align 8, !tbaa !84
  %45 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 90
  store ptr @cdDM_drawMappedFacesTex, ptr %45, align 8, !tbaa !85
  %46 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 91
  store ptr @cdDM_drawMappedFacesGLSL, ptr %46, align 8, !tbaa !86
  %47 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 94
  store ptr @cdDM_drawMappedFacesMat, ptr %47, align 8, !tbaa !87
  %48 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 71
  store ptr @cdDM_foreachMappedVert, ptr %48, align 8, !tbaa !88
  %49 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 72
  store ptr @cdDM_foreachMappedEdge, ptr %49, align 8, !tbaa !89
  %50 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 73
  store ptr @cdDM_foreachMappedLoop, ptr %50, align 8, !tbaa !90
  %51 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 74
  store ptr @cdDM_foreachMappedFaceCenter, ptr %51, align 8, !tbaa !91
  %52 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 95
  store ptr @cdDM_release, ptr %52, align 8, !tbaa !92
  tail call void @DM_init(ptr noundef %7, i32 noundef 0, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #11
  %53 = tail call ptr @CustomData_add_layer(ptr noundef %7, i32 noundef 7, i32 noundef 1, ptr noundef null, i32 noundef %0) #11
  %54 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 1
  %55 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %54, i32 noundef 7, i32 noundef 1, ptr noundef null, i32 noundef %1) #11
  %56 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 2
  %57 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %56, i32 noundef 7, i32 noundef 1, ptr noundef null, i32 noundef %2) #11
  %58 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 4
  %59 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %58, i32 noundef 7, i32 noundef 1, ptr noundef null, i32 noundef %4) #11
  %60 = tail call ptr @CustomData_add_layer(ptr noundef %7, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %0) #11
  %61 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %54, i32 noundef 3, i32 noundef 1, ptr noundef null, i32 noundef %1) #11
  %62 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %56, i32 noundef 4, i32 noundef 1, ptr noundef null, i32 noundef %2) #11
  %63 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 3
  %64 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %63, i32 noundef 26, i32 noundef 1, ptr noundef null, i32 noundef %3) #11
  %65 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %58, i32 noundef 25, i32 noundef 1, ptr noundef null, i32 noundef %4) #11
  %66 = tail call ptr @CustomData_get_layer(ptr noundef %7, i32 noundef 0) #11
  %67 = getelementptr inbounds %struct.CDDerivedMesh, ptr %7, i64 0, i32 1
  store ptr %66, ptr %67, align 8, !tbaa !34
  %68 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %54, i32 noundef 3) #11
  %69 = getelementptr inbounds %struct.CDDerivedMesh, ptr %7, i64 0, i32 2
  store ptr %68, ptr %69, align 8, !tbaa !93
  %70 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %56, i32 noundef 4) #11
  %71 = getelementptr inbounds %struct.CDDerivedMesh, ptr %7, i64 0, i32 3
  store ptr %70, ptr %71, align 8, !tbaa !46
  %72 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %63, i32 noundef 26) #11
  %73 = getelementptr inbounds %struct.CDDerivedMesh, ptr %7, i64 0, i32 4
  store ptr %72, ptr %73, align 8, !tbaa !94
  %74 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %58, i32 noundef 25) #11
  %75 = getelementptr inbounds %struct.CDDerivedMesh, ptr %7, i64 0, i32 5
  store ptr %74, ptr %75, align 8, !tbaa !95
  ret ptr %7
}

declare void @DM_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @CDDM_from_mesh(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %3 = tail call ptr %2(i64 noundef 1760, ptr noundef nonnull @__func__.CDDM_from_mesh) #11
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 75
  store ptr @cdDM_getMinMax, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 23
  store ptr @cdDM_getNumVerts, ptr %5, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 24
  store ptr @cdDM_getNumEdges, ptr %6, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 25
  store ptr @cdDM_getNumTessFaces, ptr %7, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 26
  store ptr @cdDM_getNumLoops, ptr %8, align 8, !tbaa !52
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 27
  store ptr @cdDM_getNumPolys, ptr %9, align 8, !tbaa !53
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 28
  store ptr @cdDM_getVert, ptr %10, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 29
  store ptr @cdDM_getEdge, ptr %11, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 30
  store ptr @cdDM_getTessFace, ptr %12, align 8, !tbaa !56
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 36
  store ptr @cdDM_copyVertArray, ptr %13, align 8, !tbaa !57
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 37
  store ptr @cdDM_copyEdgeArray, ptr %14, align 8, !tbaa !58
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 38
  store ptr @cdDM_copyTessFaceArray, ptr %15, align 8, !tbaa !59
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 39
  store ptr @cdDM_copyLoopArray, ptr %16, align 8, !tbaa !60
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 40
  store ptr @cdDM_copyPolyArray, ptr %17, align 8, !tbaa !61
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 46
  store ptr @DM_get_vert_data, ptr %18, align 8, !tbaa !62
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 47
  store ptr @DM_get_edge_data, ptr %19, align 8, !tbaa !63
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 48
  store ptr @DM_get_tessface_data, ptr %20, align 8, !tbaa !64
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 50
  store ptr @DM_get_vert_data_layer, ptr %21, align 8, !tbaa !65
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 51
  store ptr @DM_get_edge_data_layer, ptr %22, align 8, !tbaa !66
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 52
  store ptr @DM_get_tessface_data_layer, ptr %23, align 8, !tbaa !67
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 20
  store ptr @CDDM_calc_normals, ptr %24, align 8, !tbaa !68
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 21
  store ptr @CDDM_calc_loop_normals, ptr %25, align 8, !tbaa !69
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 22
  store ptr @CDDM_recalc_tessellation, ptr %26, align 8, !tbaa !70
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 77
  store ptr @cdDM_getVertCos, ptr %27, align 8, !tbaa !71
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 76
  store ptr @cdDM_getVertCo, ptr %28, align 8, !tbaa !72
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 78
  store ptr @cdDM_getVertNo, ptr %29, align 8, !tbaa !73
  %30 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 81
  store ptr @cdDM_getPBVH, ptr %30, align 8, !tbaa !74
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 80
  store ptr @cdDM_getPolyMap, ptr %31, align 8, !tbaa !75
  %32 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 82
  store ptr @cdDM_drawVerts, ptr %32, align 8, !tbaa !76
  %33 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 83
  store ptr @cdDM_drawUVEdges, ptr %33, align 8, !tbaa !77
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 84
  store ptr @cdDM_drawEdges, ptr %34, align 8, !tbaa !78
  %35 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 85
  store ptr @cdDM_drawLooseEdges, ptr %35, align 8, !tbaa !79
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 92
  store ptr @cdDM_drawMappedEdges, ptr %36, align 8, !tbaa !80
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 86
  store ptr @cdDM_drawFacesSolid, ptr %37, align 8, !tbaa !81
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 87
  store ptr @cdDM_drawFacesTex, ptr %38, align 8, !tbaa !82
  %39 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 88
  store ptr @cdDM_drawFacesGLSL, ptr %39, align 8, !tbaa !83
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 89
  store ptr @cdDM_drawMappedFaces, ptr %40, align 8, !tbaa !84
  %41 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 90
  store ptr @cdDM_drawMappedFacesTex, ptr %41, align 8, !tbaa !85
  %42 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 91
  store ptr @cdDM_drawMappedFacesGLSL, ptr %42, align 8, !tbaa !86
  %43 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 94
  store ptr @cdDM_drawMappedFacesMat, ptr %43, align 8, !tbaa !87
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 71
  store ptr @cdDM_foreachMappedVert, ptr %44, align 8, !tbaa !88
  %45 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 72
  store ptr @cdDM_foreachMappedEdge, ptr %45, align 8, !tbaa !89
  %46 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 73
  store ptr @cdDM_foreachMappedLoop, ptr %46, align 8, !tbaa !90
  %47 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 74
  store ptr @cdDM_foreachMappedFaceCenter, ptr %47, align 8, !tbaa !91
  %48 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 95
  store ptr @cdDM_release, ptr %48, align 8, !tbaa !92
  %49 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !96
  %50 = and i64 %49, -524289
  %51 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %52 = load i32, ptr %51, align 8, !tbaa !98
  %53 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %54 = load i32, ptr %53, align 4, !tbaa !102
  %55 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %56 = load i32, ptr %55, align 8, !tbaa !103
  %57 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %58 = load i32, ptr %57, align 4, !tbaa !104
  %59 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %60 = load i32, ptr %59, align 8, !tbaa !105
  tail call void @DM_init(ptr noundef %3, i32 noundef 0, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60) #11
  %61 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 11
  store i32 1, ptr %61, align 8, !tbaa !106
  %62 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 41
  %63 = load i8, ptr %62, align 8, !tbaa !107
  %64 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 19
  store i8 %63, ptr %64, align 8, !tbaa !108
  %65 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 21
  %66 = load i32, ptr %51, align 8, !tbaa !98
  %67 = tail call zeroext i8 @CustomData_merge(ptr noundef nonnull %65, ptr noundef %3, i64 noundef %50, i32 noundef 3, i32 noundef %66) #11
  %68 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22
  %69 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 1
  %70 = load i32, ptr %53, align 4, !tbaa !102
  %71 = tail call zeroext i8 @CustomData_merge(ptr noundef nonnull %68, ptr noundef nonnull %69, i64 noundef %50, i32 noundef 3, i32 noundef %70) #11
  %72 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %73 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 2
  %74 = or i64 %50, 128
  %75 = load i32, ptr %55, align 8, !tbaa !103
  %76 = tail call zeroext i8 @CustomData_merge(ptr noundef nonnull %72, ptr noundef nonnull %73, i64 noundef %74, i32 noundef 3, i32 noundef %75) #11
  %77 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %78 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 3
  %79 = load i32, ptr %57, align 4, !tbaa !104
  %80 = tail call zeroext i8 @CustomData_merge(ptr noundef nonnull %77, ptr noundef nonnull %78, i64 noundef %50, i32 noundef 3, i32 noundef %79) #11
  %81 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %82 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 4
  %83 = load i32, ptr %59, align 8, !tbaa !105
  %84 = tail call zeroext i8 @CustomData_merge(ptr noundef nonnull %81, ptr noundef nonnull %82, i64 noundef %50, i32 noundef 3, i32 noundef %83) #11
  %85 = tail call ptr @CustomData_get_layer(ptr noundef %3, i32 noundef 0) #11
  %86 = getelementptr inbounds %struct.CDDerivedMesh, ptr %3, i64 0, i32 1
  store ptr %85, ptr %86, align 8, !tbaa !34
  %87 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %69, i32 noundef 3) #11
  %88 = getelementptr inbounds %struct.CDDerivedMesh, ptr %3, i64 0, i32 2
  store ptr %87, ptr %88, align 8, !tbaa !93
  %89 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %78, i32 noundef 26) #11
  %90 = getelementptr inbounds %struct.CDDerivedMesh, ptr %3, i64 0, i32 4
  store ptr %89, ptr %90, align 8, !tbaa !94
  %91 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %82, i32 noundef 25) #11
  %92 = getelementptr inbounds %struct.CDDerivedMesh, ptr %3, i64 0, i32 5
  store ptr %91, ptr %92, align 8, !tbaa !95
  %93 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %73, i32 noundef 4) #11
  %94 = getelementptr inbounds %struct.CDDerivedMesh, ptr %3, i64 0, i32 3
  store ptr %93, ptr %94, align 8, !tbaa !46
  ret ptr %3
}

declare zeroext i8 @CustomData_merge(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @CDDM_from_curve(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %4 = load ptr, ptr %3, align 8, !tbaa !109
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !113
  br label %7

7:                                                ; preds = %6, %1
  %8 = call ptr @CDDM_from_curve_displist(ptr noundef %0, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret ptr %8
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local ptr @CDDM_from_curve_displist(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  store ptr null, ptr %7, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  %14 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 23
  %15 = load i32, ptr %14, align 4, !tbaa !115
  %16 = and i32 %15, 32
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, ptr null, ptr %7
  %19 = call i32 @BKE_mesh_nurbs_displist_to_mdata(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %18, ptr noundef nonnull %10, ptr noundef nonnull %11) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = call ptr @CDDM_new(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %76

23:                                               ; preds = %2
  %24 = load i32, ptr %8, align 4, !tbaa !118
  %25 = load i32, ptr %9, align 4, !tbaa !118
  %26 = load i32, ptr %10, align 4, !tbaa !118
  %27 = load i32, ptr %11, align 4, !tbaa !118
  %28 = call ptr @CDDM_new(i32 noundef %24, i32 noundef %25, i32 noundef 0, i32 noundef %26, i32 noundef %27)
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %28, i64 0, i32 11
  store i32 1, ptr %29, align 8, !tbaa !106
  %30 = getelementptr inbounds %struct.DerivedMesh, ptr %28, i64 0, i32 16
  %31 = load i32, ptr %30, align 8, !tbaa !119
  %32 = or i32 %31, 4
  store i32 %32, ptr %30, align 8, !tbaa !119
  %33 = getelementptr inbounds %struct.CDDerivedMesh, ptr %28, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = load ptr, ptr %3, align 8, !tbaa !47
  %36 = load i32, ptr %8, align 4, !tbaa !118
  %37 = sext i32 %36 to i64
  %38 = mul nsw i64 %37, 20
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %34, ptr align 4 %35, i64 %38, i1 false)
  %39 = getelementptr inbounds %struct.CDDerivedMesh, ptr %28, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !93
  %41 = load ptr, ptr %4, align 8, !tbaa !47
  %42 = load i32, ptr %9, align 4, !tbaa !118
  %43 = sext i32 %42 to i64
  %44 = mul nsw i64 %43, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %40, ptr align 4 %41, i64 %44, i1 false)
  %45 = getelementptr inbounds %struct.CDDerivedMesh, ptr %28, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !94
  %47 = load ptr, ptr %5, align 8, !tbaa !47
  %48 = load i32, ptr %10, align 4, !tbaa !118
  %49 = sext i32 %48 to i64
  %50 = shl nsw i64 %49, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %46, ptr align 4 %47, i64 %50, i1 false)
  %51 = getelementptr inbounds %struct.CDDerivedMesh, ptr %28, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !95
  %53 = load ptr, ptr %6, align 8, !tbaa !47
  %54 = load i32, ptr %11, align 4, !tbaa !118
  %55 = sext i32 %54 to i64
  %56 = mul nsw i64 %55, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %52, ptr align 4 %53, i64 %56, i1 false)
  %57 = load ptr, ptr %7, align 8, !tbaa !47
  %58 = icmp eq ptr %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %23
  %60 = getelementptr inbounds %struct.DerivedMesh, ptr %28, i64 0, i32 4
  %61 = load i32, ptr %11, align 4, !tbaa !118
  %62 = call ptr @CustomData_add_layer_named(ptr noundef nonnull %60, i32 noundef 15, i32 noundef 2, ptr noundef null, i32 noundef %61, ptr noundef nonnull @.str.1) #11
  %63 = getelementptr inbounds %struct.DerivedMesh, ptr %28, i64 0, i32 3
  %64 = load ptr, ptr %7, align 8, !tbaa !47
  %65 = load i32, ptr %10, align 4, !tbaa !118
  %66 = call ptr @CustomData_add_layer_named(ptr noundef nonnull %63, i32 noundef 16, i32 noundef 0, ptr noundef %64, i32 noundef %65, ptr noundef nonnull @.str.1) #11
  br label %67

67:                                               ; preds = %59, %23
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %69 = load ptr, ptr %3, align 8, !tbaa !47
  call void %68(ptr noundef %69) #11
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %71 = load ptr, ptr %4, align 8, !tbaa !47
  call void %70(ptr noundef %71) #11
  %72 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %73 = load ptr, ptr %5, align 8, !tbaa !47
  call void %72(ptr noundef %73) #11
  %74 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %75 = load ptr, ptr %6, align 8, !tbaa !47
  call void %74(ptr noundef %75) #11
  br label %76

76:                                               ; preds = %67, %21
  %77 = phi ptr [ %22, %21 ], [ %28, %67 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret ptr %77
}

declare i32 @BKE_mesh_nurbs_displist_to_mdata(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CustomData_add_layer_named(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @CDDM_from_bmesh(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @cddm_from_bmesh_ex(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @cddm_from_bmesh_ex(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  %7 = load i32, ptr %0, align 8, !tbaa !120
  %8 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !122
  %10 = icmp eq i8 %2, 0
  %11 = select i1 %10, i32 0, i32 %3
  %12 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !123
  %14 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !124
  %16 = tail call ptr @CDDM_new(i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  %17 = getelementptr inbounds %struct.CDDerivedMesh, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.CDDerivedMesh, ptr %16, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !93
  %21 = getelementptr inbounds %struct.CDDerivedMesh, ptr %16, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.CDDerivedMesh, ptr %16, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !94
  %25 = getelementptr inbounds %struct.CDDerivedMesh, ptr %16, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !95
  %27 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %28 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %27, i32 noundef 17) #11
  %29 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  %30 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %29, i32 noundef 15) #11
  %31 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %32 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %31, i32 noundef 29) #11
  %33 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %34 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %33, i32 noundef 29) #11
  %35 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %33, i32 noundef 30) #11
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 11
  store i32 1, ptr %36, align 8, !tbaa !106
  %37 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %29, i32 noundef 7) #11
  %38 = icmp eq i8 %37, 0
  %39 = icmp eq i8 %1, 0
  %40 = load i64, ptr @CD_MASK_DERIVEDMESH, align 8
  %41 = or i64 %40, 524288
  %42 = select i1 %39, i64 %40, i64 %41
  %43 = and i64 %42, -268435457
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 5
  %45 = load i32, ptr %44, align 8, !tbaa !125
  %46 = tail call zeroext i8 @CustomData_merge(ptr noundef nonnull %31, ptr noundef %16, i64 noundef %43, i32 noundef 1, i32 noundef %45) #11
  %47 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 1
  %48 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 6
  %49 = load i32, ptr %48, align 4, !tbaa !126
  %50 = tail call zeroext i8 @CustomData_merge(ptr noundef nonnull %33, ptr noundef nonnull %47, i64 noundef %43, i32 noundef 1, i32 noundef %49) #11
  %51 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 3
  %52 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 8
  %53 = load i32, ptr %52, align 4, !tbaa !44
  %54 = tail call zeroext i8 @CustomData_merge(ptr noundef nonnull %27, ptr noundef nonnull %51, i64 noundef %43, i32 noundef 1, i32 noundef %53) #11
  %55 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 4
  %56 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 9
  %57 = load i32, ptr %56, align 8, !tbaa !45
  %58 = tail call zeroext i8 @CustomData_merge(ptr noundef nonnull %29, ptr noundef nonnull %55, i64 noundef %43, i32 noundef 1, i32 noundef %57) #11
  br i1 %10, label %61, label %59

59:                                               ; preds = %5
  %60 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 2
  tail call void @CustomData_from_bmeshpoly(ptr noundef nonnull %60, ptr noundef nonnull %55, ptr noundef nonnull %51, i32 noundef %3) #11
  br label %61

61:                                               ; preds = %59, %5
  %62 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 50
  %63 = load ptr, ptr %62, align 8, !tbaa !65
  %64 = tail call ptr %63(ptr noundef %16, i32 noundef 7) #11
  %65 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 1, ptr %65, align 4, !tbaa !127
  %66 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %66, align 8, !tbaa !129
  %67 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %67, align 8, !tbaa !130
  %68 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %69 = load ptr, ptr %68, align 8, !tbaa !131
  store ptr %69, ptr %6, align 8, !tbaa !132
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #11
  %70 = load ptr, ptr %67, align 8, !tbaa !130
  %71 = call ptr %70(ptr noundef nonnull %6) #11
  %72 = icmp eq ptr %71, null
  br i1 %72, label %125, label %73

73:                                               ; preds = %61
  %74 = icmp eq i32 %32, -1
  %75 = sext i32 %32 to i64
  br label %76

76:                                               ; preds = %73, %118
  %77 = phi ptr [ %71, %73 ], [ %122, %118 ]
  %78 = phi ptr [ %64, %73 ], [ %119, %118 ]
  %79 = phi i32 [ 0, %73 ], [ %123, %118 ]
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.MVert, ptr %18, i64 %80
  %82 = getelementptr inbounds %struct.BMVert, ptr %77, i64 0, i32 2
  %83 = load float, ptr %82, align 4, !tbaa !133
  store float %83, ptr %81, align 4, !tbaa !133
  %84 = getelementptr inbounds %struct.BMVert, ptr %77, i64 0, i32 2, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !133
  %86 = getelementptr inbounds float, ptr %81, i64 1
  store float %85, ptr %86, align 4, !tbaa !133
  %87 = getelementptr inbounds %struct.BMVert, ptr %77, i64 0, i32 2, i64 2
  %88 = load float, ptr %87, align 4, !tbaa !133
  %89 = getelementptr inbounds float, ptr %81, i64 2
  store float %88, ptr %89, align 4, !tbaa !133
  %90 = getelementptr inbounds %struct.BMHeader, ptr %77, i64 0, i32 1
  store i32 %79, ptr %90, align 8, !tbaa !134
  %91 = getelementptr inbounds %struct.MVert, ptr %18, i64 %80, i32 1
  %92 = getelementptr inbounds %struct.BMVert, ptr %77, i64 0, i32 3
  %93 = load float, ptr %92, align 4, !tbaa !133
  %94 = fmul float %93, 3.276700e+04
  %95 = fptosi float %94 to i16
  store i16 %95, ptr %91, align 2, !tbaa !136
  %96 = getelementptr inbounds %struct.BMVert, ptr %77, i64 0, i32 3, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !133
  %98 = fmul float %97, 3.276700e+04
  %99 = fptosi float %98 to i16
  %100 = getelementptr inbounds i16, ptr %91, i64 1
  store i16 %99, ptr %100, align 2, !tbaa !136
  %101 = getelementptr inbounds %struct.BMVert, ptr %77, i64 0, i32 3, i64 2
  %102 = load float, ptr %101, align 4, !tbaa !133
  %103 = fmul float %102, 3.276700e+04
  %104 = fptosi float %103 to i16
  %105 = getelementptr inbounds i16, ptr %91, i64 2
  store i16 %104, ptr %105, align 2, !tbaa !136
  %106 = call zeroext i8 @BM_vert_flag_to_mflag(ptr noundef nonnull %77) #11
  %107 = getelementptr inbounds %struct.MVert, ptr %18, i64 %80, i32 2
  store i8 %106, ptr %107, align 2, !tbaa !137
  br i1 %74, label %115, label %108

108:                                              ; preds = %76
  %109 = load ptr, ptr %77, align 8, !tbaa !139
  %110 = getelementptr inbounds i8, ptr %109, i64 %75
  %111 = load float, ptr %110, align 4, !tbaa !133
  %112 = fmul float %111, 2.550000e+02
  %113 = fptoui float %112 to i8
  %114 = getelementptr inbounds %struct.MVert, ptr %18, i64 %80, i32 3
  store i8 %113, ptr %114, align 1, !tbaa !141
  br label %115

115:                                              ; preds = %108, %76
  br i1 %38, label %116, label %118

116:                                              ; preds = %115
  %117 = getelementptr inbounds i32, ptr %78, i64 1
  store i32 %79, ptr %78, align 4, !tbaa !118
  br label %118

118:                                              ; preds = %116, %115
  %119 = phi ptr [ %117, %116 ], [ %78, %115 ]
  %120 = load ptr, ptr %77, align 8, !tbaa !139
  call void @CustomData_from_bmesh_block(ptr noundef nonnull %31, ptr noundef %16, ptr noundef %120, i32 noundef %79) #11
  %121 = load ptr, ptr %67, align 8, !tbaa !130
  %122 = call ptr %121(ptr noundef nonnull %6) #11
  %123 = add i32 %79, 1
  %124 = icmp eq ptr %122, null
  br i1 %124, label %125, label %76, !llvm.loop !142

125:                                              ; preds = %118, %61
  %126 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %127 = load i8, ptr %126, align 4, !tbaa !145
  %128 = and i8 %127, -2
  store i8 %128, ptr %126, align 4, !tbaa !145
  %129 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 51
  %130 = load ptr, ptr %129, align 8, !tbaa !66
  %131 = call ptr %130(ptr noundef %16, i32 noundef 7) #11
  store i8 2, ptr %65, align 4, !tbaa !127
  store ptr @bmiter__elem_of_mesh_begin, ptr %66, align 8, !tbaa !129
  store ptr @bmiter__elem_of_mesh_step, ptr %67, align 8, !tbaa !130
  %132 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %133 = load ptr, ptr %132, align 8, !tbaa !146
  store ptr %133, ptr %6, align 8, !tbaa !132
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #11
  %134 = load ptr, ptr %67, align 8, !tbaa !130
  %135 = call ptr %134(ptr noundef nonnull %6) #11
  %136 = icmp eq ptr %135, null
  br i1 %136, label %198, label %137

137:                                              ; preds = %125
  %138 = icmp eq i32 %35, -1
  %139 = sext i32 %35 to i64
  %140 = icmp eq i32 %34, -1
  %141 = sext i32 %34 to i64
  br label %142

142:                                              ; preds = %137, %192
  %143 = phi ptr [ %135, %137 ], [ %195, %192 ]
  %144 = phi ptr [ %131, %137 ], [ %193, %192 ]
  %145 = phi i32 [ 0, %137 ], [ %196, %192 ]
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.MEdge, ptr %20, i64 %146
  %148 = getelementptr inbounds %struct.BMHeader, ptr %143, i64 0, i32 1
  store i32 %145, ptr %148, align 8, !tbaa !134
  %149 = getelementptr inbounds %struct.BMEdge, ptr %143, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !147
  %151 = getelementptr inbounds %struct.BMHeader, ptr %150, i64 0, i32 1
  %152 = load i32, ptr %151, align 8, !tbaa !134
  store i32 %152, ptr %147, align 4, !tbaa !150
  %153 = getelementptr inbounds %struct.BMEdge, ptr %143, i64 0, i32 3
  %154 = load ptr, ptr %153, align 8, !tbaa !152
  %155 = getelementptr inbounds %struct.BMHeader, ptr %154, i64 0, i32 1
  %156 = load i32, ptr %155, align 8, !tbaa !134
  %157 = getelementptr inbounds %struct.MEdge, ptr %20, i64 %146, i32 1
  store i32 %156, ptr %157, align 4, !tbaa !153
  %158 = call signext i16 @BM_edge_flag_to_mflag(ptr noundef nonnull %143) #11
  %159 = getelementptr inbounds %struct.MEdge, ptr %20, i64 %146, i32 4
  store i16 %158, ptr %159, align 2, !tbaa !154
  %160 = and i16 %158, 2
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %142
  %163 = getelementptr inbounds %struct.BMEdge, ptr %143, i64 0, i32 4
  %164 = load ptr, ptr %163, align 8, !tbaa !155
  %165 = icmp eq ptr %164, null
  br i1 %165, label %172, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.BMLoop, ptr %164, i64 0, i32 4
  %168 = load ptr, ptr %167, align 8, !tbaa !156
  %169 = icmp eq ptr %164, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = or disjoint i16 %158, 2
  store i16 %171, ptr %159, align 2, !tbaa !154
  br label %172

172:                                              ; preds = %162, %166, %170, %142
  br i1 %138, label %180, label %173

173:                                              ; preds = %172
  %174 = load ptr, ptr %143, align 8, !tbaa !158
  %175 = getelementptr inbounds i8, ptr %174, i64 %139
  %176 = load float, ptr %175, align 4, !tbaa !133
  %177 = fmul float %176, 2.550000e+02
  %178 = fptoui float %177 to i8
  %179 = getelementptr inbounds %struct.MEdge, ptr %20, i64 %146, i32 2
  store i8 %178, ptr %179, align 4, !tbaa !159
  br label %180

180:                                              ; preds = %173, %172
  br i1 %140, label %188, label %181

181:                                              ; preds = %180
  %182 = load ptr, ptr %143, align 8, !tbaa !158
  %183 = getelementptr inbounds i8, ptr %182, i64 %141
  %184 = load float, ptr %183, align 4, !tbaa !133
  %185 = fmul float %184, 2.550000e+02
  %186 = fptoui float %185 to i8
  %187 = getelementptr inbounds %struct.MEdge, ptr %20, i64 %146, i32 3
  store i8 %186, ptr %187, align 1, !tbaa !160
  br label %188

188:                                              ; preds = %181, %180
  %189 = load ptr, ptr %143, align 8, !tbaa !158
  call void @CustomData_from_bmesh_block(ptr noundef nonnull %33, ptr noundef nonnull %47, ptr noundef %189, i32 noundef %145) #11
  br i1 %38, label %190, label %192

190:                                              ; preds = %188
  %191 = getelementptr inbounds i32, ptr %144, i64 1
  store i32 %145, ptr %144, align 4, !tbaa !118
  br label %192

192:                                              ; preds = %190, %188
  %193 = phi ptr [ %191, %190 ], [ %144, %188 ]
  %194 = load ptr, ptr %67, align 8, !tbaa !130
  %195 = call ptr %194(ptr noundef nonnull %6) #11
  %196 = add i32 %145, 1
  %197 = icmp eq ptr %195, null
  br i1 %197, label %198, label %142, !llvm.loop !161

198:                                              ; preds = %192, %125
  %199 = load i8, ptr %126, align 4, !tbaa !145
  %200 = and i8 %199, -3
  store i8 %200, ptr %126, align 4, !tbaa !145
  br i1 %10, label %347, label %201

201:                                              ; preds = %198
  call void @BM_mesh_elem_index_ensure(ptr noundef nonnull %0, i8 noundef zeroext 8) #11
  %202 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 52
  %203 = load ptr, ptr %202, align 8, !tbaa !67
  %204 = call ptr %203(ptr noundef %16, i32 noundef 7) #11
  %205 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 7
  %206 = load i32, ptr %205, align 8, !tbaa !43
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %347, label %208

208:                                              ; preds = %201
  %209 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 2
  %210 = icmp sgt i32 %30, 0
  %211 = icmp sgt i32 %28, 0
  br label %212

212:                                              ; preds = %208, %340
  %213 = phi i64 [ 0, %208 ], [ %343, %340 ]
  %214 = phi ptr [ %204, %208 ], [ %246, %340 ]
  %215 = getelementptr inbounds %struct.MFace, ptr %22, i64 %213
  %216 = getelementptr inbounds [3 x ptr], ptr %4, i64 %213
  %217 = load ptr, ptr %216, align 8, !tbaa !47
  %218 = getelementptr inbounds %struct.BMLoop, ptr %217, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !162
  %220 = getelementptr inbounds %struct.BMLoop, ptr %217, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !163
  %222 = getelementptr inbounds %struct.BMHeader, ptr %221, i64 0, i32 1
  %223 = load i32, ptr %222, align 8, !tbaa !134
  store i32 %223, ptr %215, align 4, !tbaa !164
  %224 = getelementptr inbounds ptr, ptr %216, i64 1
  %225 = load ptr, ptr %224, align 8, !tbaa !47
  %226 = getelementptr inbounds %struct.BMLoop, ptr %225, i64 0, i32 1
  %227 = load ptr, ptr %226, align 8, !tbaa !163
  %228 = getelementptr inbounds %struct.BMHeader, ptr %227, i64 0, i32 1
  %229 = load i32, ptr %228, align 8, !tbaa !134
  %230 = getelementptr inbounds %struct.MFace, ptr %22, i64 %213, i32 1
  store i32 %229, ptr %230, align 4, !tbaa !166
  %231 = getelementptr inbounds ptr, ptr %216, i64 2
  %232 = load ptr, ptr %231, align 8, !tbaa !47
  %233 = getelementptr inbounds %struct.BMLoop, ptr %232, i64 0, i32 1
  %234 = load ptr, ptr %233, align 8, !tbaa !163
  %235 = getelementptr inbounds %struct.BMHeader, ptr %234, i64 0, i32 1
  %236 = load i32, ptr %235, align 8, !tbaa !134
  %237 = getelementptr inbounds %struct.MFace, ptr %22, i64 %213, i32 2
  store i32 %236, ptr %237, align 4, !tbaa !167
  %238 = getelementptr inbounds %struct.MFace, ptr %22, i64 %213, i32 3
  store i32 0, ptr %238, align 4, !tbaa !168
  %239 = getelementptr inbounds %struct.BMFace, ptr %219, i64 0, i32 5
  %240 = load i16, ptr %239, align 8, !tbaa !169
  %241 = getelementptr inbounds %struct.MFace, ptr %22, i64 %213, i32 4
  store i16 %240, ptr %241, align 4, !tbaa !171
  %242 = call zeroext i8 @BM_face_flag_to_mflag(ptr noundef %219) #11
  %243 = getelementptr inbounds %struct.MFace, ptr %22, i64 %213, i32 6
  store i8 %242, ptr %243, align 1, !tbaa !172
  %244 = getelementptr inbounds %struct.BMHeader, ptr %219, i64 0, i32 1
  %245 = load i32, ptr %244, align 8, !tbaa !134
  %246 = getelementptr inbounds i32, ptr %214, i64 1
  store i32 %245, ptr %214, align 4, !tbaa !118
  %247 = load ptr, ptr %216, align 8, !tbaa !47
  %248 = getelementptr inbounds %struct.BMLoop, ptr %247, i64 0, i32 3
  %249 = load ptr, ptr %248, align 8, !tbaa !162
  %250 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %27, i32 noundef 32) #11
  br i1 %210, label %251, label %253

251:                                              ; preds = %212
  %252 = trunc i64 %213 to i32
  br label %256

253:                                              ; preds = %288, %212
  br i1 %211, label %254, label %316

254:                                              ; preds = %253
  %255 = trunc i64 %213 to i32
  br label %291

256:                                              ; preds = %251, %288
  %257 = phi i32 [ %289, %288 ], [ 0, %251 ]
  %258 = call ptr @CustomData_get_n(ptr noundef nonnull %209, i32 noundef 5, i32 noundef %252, i32 noundef %257) #11
  %259 = load ptr, ptr %249, align 8, !tbaa !173
  %260 = call ptr @CustomData_bmesh_get_n(ptr noundef nonnull %29, ptr noundef %259, i32 noundef 15, i32 noundef %257) #11
  %261 = load ptr, ptr %260, align 8, !tbaa !174
  %262 = getelementptr inbounds %struct.MTFace, ptr %258, i64 0, i32 1
  store ptr %261, ptr %262, align 8, !tbaa !176
  %263 = getelementptr inbounds %struct.MTexPoly, ptr %260, i64 0, i32 1
  %264 = load i8, ptr %263, align 8, !tbaa !178
  %265 = getelementptr inbounds %struct.MTFace, ptr %258, i64 0, i32 2
  store i8 %264, ptr %265, align 8, !tbaa !179
  %266 = getelementptr inbounds %struct.MTexPoly, ptr %260, i64 0, i32 2
  %267 = load i8, ptr %266, align 1, !tbaa !180
  %268 = getelementptr inbounds %struct.MTFace, ptr %258, i64 0, i32 3
  store i8 %267, ptr %268, align 1, !tbaa !181
  %269 = getelementptr inbounds %struct.MTexPoly, ptr %260, i64 0, i32 3
  %270 = load i16, ptr %269, align 2, !tbaa !182
  %271 = getelementptr inbounds %struct.MTFace, ptr %258, i64 0, i32 4
  store i16 %270, ptr %271, align 2, !tbaa !183
  %272 = getelementptr inbounds %struct.MTexPoly, ptr %260, i64 0, i32 4
  %273 = load i16, ptr %272, align 4, !tbaa !184
  %274 = getelementptr inbounds %struct.MTFace, ptr %258, i64 0, i32 5
  store i16 %273, ptr %274, align 4, !tbaa !185
  br label %275

275:                                              ; preds = %256, %275
  %276 = phi i64 [ 0, %256 ], [ %286, %275 ]
  %277 = getelementptr inbounds ptr, ptr %216, i64 %276
  %278 = load ptr, ptr %277, align 8, !tbaa !47
  %279 = load ptr, ptr %278, align 8, !tbaa !186
  %280 = call ptr @CustomData_bmesh_get_n(ptr noundef nonnull %27, ptr noundef %279, i32 noundef 16, i32 noundef %257) #11
  %281 = getelementptr inbounds [4 x [2 x float]], ptr %258, i64 0, i64 %276
  %282 = load float, ptr %280, align 4, !tbaa !133
  store float %282, ptr %281, align 4, !tbaa !133
  %283 = getelementptr inbounds float, ptr %280, i64 1
  %284 = load float, ptr %283, align 4, !tbaa !133
  %285 = getelementptr inbounds float, ptr %281, i64 1
  store float %284, ptr %285, align 4, !tbaa !133
  %286 = add nuw nsw i64 %276, 1
  %287 = icmp eq i64 %286, 3
  br i1 %287, label %288, label %275, !llvm.loop !187

288:                                              ; preds = %275
  %289 = add nuw nsw i32 %257, 1
  %290 = icmp eq i32 %289, %30
  br i1 %290, label %253, label %256, !llvm.loop !188

291:                                              ; preds = %254, %313
  %292 = phi i32 [ %314, %313 ], [ 0, %254 ]
  %293 = call ptr @CustomData_get_n(ptr noundef nonnull %209, i32 noundef 6, i32 noundef %255, i32 noundef %292) #11
  br label %294

294:                                              ; preds = %291, %294
  %295 = phi i64 [ 0, %291 ], [ %311, %294 ]
  %296 = getelementptr inbounds ptr, ptr %216, i64 %295
  %297 = load ptr, ptr %296, align 8, !tbaa !47
  %298 = load ptr, ptr %297, align 8, !tbaa !186
  %299 = call ptr @CustomData_bmesh_get_n(ptr noundef nonnull %27, ptr noundef %298, i32 noundef 17, i32 noundef %292) #11
  %300 = getelementptr inbounds %struct.MCol, ptr %293, i64 %295
  %301 = load i8, ptr %299, align 1, !tbaa !189
  %302 = getelementptr inbounds %struct.MCol, ptr %293, i64 %295, i32 3
  store i8 %301, ptr %302, align 1, !tbaa !191
  %303 = getelementptr inbounds %struct.MLoopCol, ptr %299, i64 0, i32 1
  %304 = load i8, ptr %303, align 1, !tbaa !193
  %305 = getelementptr inbounds %struct.MCol, ptr %293, i64 %295, i32 2
  store i8 %304, ptr %305, align 1, !tbaa !194
  %306 = getelementptr inbounds %struct.MLoopCol, ptr %299, i64 0, i32 2
  %307 = load i8, ptr %306, align 1, !tbaa !195
  %308 = getelementptr inbounds %struct.MCol, ptr %293, i64 %295, i32 1
  store i8 %307, ptr %308, align 1, !tbaa !196
  %309 = getelementptr inbounds %struct.MLoopCol, ptr %299, i64 0, i32 3
  %310 = load i8, ptr %309, align 1, !tbaa !197
  store i8 %310, ptr %300, align 1, !tbaa !198
  %311 = add nuw nsw i64 %295, 1
  %312 = icmp eq i64 %311, 3
  br i1 %312, label %313, label %294, !llvm.loop !199

313:                                              ; preds = %294
  %314 = add nuw nsw i32 %292, 1
  %315 = icmp eq i32 %314, %28
  br i1 %315, label %316, label %291, !llvm.loop !200

316:                                              ; preds = %313, %253
  %317 = icmp eq i8 %250, 0
  br i1 %317, label %340, label %318

318:                                              ; preds = %316
  %319 = trunc i64 %213 to i32
  %320 = call ptr @CustomData_get(ptr noundef nonnull %209, i32 noundef %319, i32 noundef 20) #11
  br label %321

321:                                              ; preds = %318, %321
  %322 = phi i64 [ 0, %318 ], [ %338, %321 ]
  %323 = getelementptr inbounds ptr, ptr %216, i64 %322
  %324 = load ptr, ptr %323, align 8, !tbaa !47
  %325 = load ptr, ptr %324, align 8, !tbaa !186
  %326 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %27, ptr noundef %325, i32 noundef 32) #11
  %327 = getelementptr inbounds %struct.MCol, ptr %320, i64 %322
  %328 = load i8, ptr %326, align 1, !tbaa !189
  %329 = getelementptr inbounds %struct.MCol, ptr %320, i64 %322, i32 3
  store i8 %328, ptr %329, align 1, !tbaa !191
  %330 = getelementptr inbounds %struct.MLoopCol, ptr %326, i64 0, i32 1
  %331 = load i8, ptr %330, align 1, !tbaa !193
  %332 = getelementptr inbounds %struct.MCol, ptr %320, i64 %322, i32 2
  store i8 %331, ptr %332, align 1, !tbaa !194
  %333 = getelementptr inbounds %struct.MLoopCol, ptr %326, i64 0, i32 2
  %334 = load i8, ptr %333, align 1, !tbaa !195
  %335 = getelementptr inbounds %struct.MCol, ptr %320, i64 %322, i32 1
  store i8 %334, ptr %335, align 1, !tbaa !196
  %336 = getelementptr inbounds %struct.MLoopCol, ptr %326, i64 0, i32 3
  %337 = load i8, ptr %336, align 1, !tbaa !197
  store i8 %337, ptr %327, align 1, !tbaa !198
  %338 = add nuw nsw i64 %322, 1
  %339 = icmp eq i64 %338, 3
  br i1 %339, label %340, label %321, !llvm.loop !201

340:                                              ; preds = %321, %316
  %341 = trunc i64 %213 to i32
  %342 = call i32 @test_index_face(ptr noundef nonnull %215, ptr noundef nonnull %209, i32 noundef %341, i32 noundef 3) #11
  %343 = add nuw nsw i64 %213, 1
  %344 = load i32, ptr %205, align 8, !tbaa !43
  %345 = zext i32 %344 to i64
  %346 = icmp ult i64 %343, %345
  br i1 %346, label %212, label %347, !llvm.loop !202

347:                                              ; preds = %340, %201, %198
  %348 = call ptr @CustomData_get_layer(ptr noundef nonnull %55, i32 noundef 7) #11
  store i8 3, ptr %65, align 4, !tbaa !127
  store ptr @bmiter__elem_of_mesh_begin, ptr %66, align 8, !tbaa !129
  store ptr @bmiter__elem_of_mesh_step, ptr %67, align 8, !tbaa !130
  %349 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %350 = load ptr, ptr %349, align 8, !tbaa !203
  store ptr %350, ptr %6, align 8, !tbaa !132
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #11
  %351 = load ptr, ptr %67, align 8, !tbaa !130
  %352 = call ptr %351(ptr noundef nonnull %6) #11
  %353 = icmp eq ptr %352, null
  br i1 %353, label %403, label %354

354:                                              ; preds = %347, %397
  %355 = phi ptr [ %400, %397 ], [ %352, %347 ]
  %356 = phi ptr [ %389, %397 ], [ %24, %347 ]
  %357 = phi ptr [ %398, %397 ], [ %348, %347 ]
  %358 = phi i32 [ %401, %397 ], [ 0, %347 ]
  %359 = phi i32 [ %388, %397 ], [ 0, %347 ]
  %360 = zext i32 %358 to i64
  %361 = getelementptr inbounds %struct.MPoly, ptr %26, i64 %360
  %362 = getelementptr inbounds %struct.BMHeader, ptr %355, i64 0, i32 1
  store i32 %358, ptr %362, align 8, !tbaa !134
  %363 = getelementptr inbounds %struct.BMFace, ptr %355, i64 0, i32 3
  %364 = load i32, ptr %363, align 8, !tbaa !204
  %365 = getelementptr inbounds %struct.MPoly, ptr %26, i64 %360, i32 1
  store i32 %364, ptr %365, align 4, !tbaa !205
  %366 = call zeroext i8 @BM_face_flag_to_mflag(ptr noundef nonnull %355) #11
  %367 = getelementptr inbounds %struct.MPoly, ptr %26, i64 %360, i32 3
  store i8 %366, ptr %367, align 2, !tbaa !207
  store i32 %359, ptr %361, align 4, !tbaa !208
  %368 = getelementptr inbounds %struct.BMFace, ptr %355, i64 0, i32 5
  %369 = load i16, ptr %368, align 8, !tbaa !169
  %370 = getelementptr inbounds %struct.MPoly, ptr %26, i64 %360, i32 2
  store i16 %369, ptr %370, align 4, !tbaa !209
  %371 = getelementptr inbounds %struct.BMFace, ptr %355, i64 0, i32 2
  %372 = load ptr, ptr %371, align 8, !tbaa !210
  br label %373

373:                                              ; preds = %373, %354
  %374 = phi i32 [ %359, %354 ], [ %388, %373 ]
  %375 = phi ptr [ %356, %354 ], [ %389, %373 ]
  %376 = phi ptr [ %372, %354 ], [ %391, %373 ]
  %377 = getelementptr inbounds %struct.BMLoop, ptr %376, i64 0, i32 1
  %378 = load ptr, ptr %377, align 8, !tbaa !163
  %379 = getelementptr inbounds %struct.BMHeader, ptr %378, i64 0, i32 1
  %380 = load i32, ptr %379, align 8, !tbaa !134
  store i32 %380, ptr %375, align 4, !tbaa !211
  %381 = getelementptr inbounds %struct.BMLoop, ptr %376, i64 0, i32 2
  %382 = load ptr, ptr %381, align 8, !tbaa !213
  %383 = getelementptr inbounds %struct.BMHeader, ptr %382, i64 0, i32 1
  %384 = load i32, ptr %383, align 8, !tbaa !134
  %385 = getelementptr inbounds %struct.MLoop, ptr %375, i64 0, i32 1
  store i32 %384, ptr %385, align 4, !tbaa !214
  %386 = load ptr, ptr %376, align 8, !tbaa !186
  call void @CustomData_from_bmesh_block(ptr noundef nonnull %27, ptr noundef nonnull %51, ptr noundef %386, i32 noundef %374) #11
  %387 = getelementptr inbounds %struct.BMHeader, ptr %376, i64 0, i32 1
  store i32 %374, ptr %387, align 8, !tbaa !134
  %388 = add i32 %374, 1
  %389 = getelementptr inbounds %struct.MLoop, ptr %375, i64 1
  %390 = getelementptr inbounds %struct.BMLoop, ptr %376, i64 0, i32 6
  %391 = load ptr, ptr %390, align 8, !tbaa !215
  %392 = icmp eq ptr %391, %372
  br i1 %392, label %393, label %373, !llvm.loop !216

393:                                              ; preds = %373
  %394 = load ptr, ptr %355, align 8, !tbaa !173
  call void @CustomData_from_bmesh_block(ptr noundef nonnull %29, ptr noundef nonnull %55, ptr noundef %394, i32 noundef %358) #11
  br i1 %38, label %395, label %397

395:                                              ; preds = %393
  %396 = getelementptr inbounds i32, ptr %357, i64 1
  store i32 %358, ptr %357, align 4, !tbaa !118
  br label %397

397:                                              ; preds = %395, %393
  %398 = phi ptr [ %396, %395 ], [ %357, %393 ]
  %399 = load ptr, ptr %67, align 8, !tbaa !130
  %400 = call ptr %399(ptr noundef nonnull %6) #11
  %401 = add i32 %358, 1
  %402 = icmp eq ptr %400, null
  br i1 %402, label %403, label %354, !llvm.loop !217

403:                                              ; preds = %397, %347
  %404 = load i8, ptr %126, align 4, !tbaa !145
  %405 = and i8 %404, -13
  store i8 %405, ptr %126, align 4, !tbaa !145
  %406 = call zeroext i8 @BM_mesh_cd_flag_from_bmesh(ptr noundef nonnull %0) #11
  %407 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 19
  store i8 %406, ptr %407, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CDDM_from_editbmesh(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !218
  %5 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !220
  %7 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !221
  %9 = tail call fastcc ptr @cddm_from_bmesh_ex(ptr noundef %4, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %6, ptr noundef %8)
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CDDM_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @cddm_copy_ex(ptr noundef %0, i32 noundef 0)
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @cddm_copy_ex(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %4 = tail call ptr %3(i64 noundef 1760, ptr noundef nonnull @.str.5) #11
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 75
  store ptr @cdDM_getMinMax, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 23
  store ptr @cdDM_getNumVerts, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 24
  store ptr @cdDM_getNumEdges, ptr %7, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 25
  store ptr @cdDM_getNumTessFaces, ptr %8, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 26
  store ptr @cdDM_getNumLoops, ptr %9, align 8, !tbaa !52
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 27
  store ptr @cdDM_getNumPolys, ptr %10, align 8, !tbaa !53
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 28
  store ptr @cdDM_getVert, ptr %11, align 8, !tbaa !54
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 29
  store ptr @cdDM_getEdge, ptr %12, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 30
  store ptr @cdDM_getTessFace, ptr %13, align 8, !tbaa !56
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 36
  store ptr @cdDM_copyVertArray, ptr %14, align 8, !tbaa !57
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 37
  store ptr @cdDM_copyEdgeArray, ptr %15, align 8, !tbaa !58
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 38
  store ptr @cdDM_copyTessFaceArray, ptr %16, align 8, !tbaa !59
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 39
  store ptr @cdDM_copyLoopArray, ptr %17, align 8, !tbaa !60
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 40
  store ptr @cdDM_copyPolyArray, ptr %18, align 8, !tbaa !61
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 46
  store ptr @DM_get_vert_data, ptr %19, align 8, !tbaa !62
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 47
  store ptr @DM_get_edge_data, ptr %20, align 8, !tbaa !63
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 48
  store ptr @DM_get_tessface_data, ptr %21, align 8, !tbaa !64
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 50
  store ptr @DM_get_vert_data_layer, ptr %22, align 8, !tbaa !65
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 51
  store ptr @DM_get_edge_data_layer, ptr %23, align 8, !tbaa !66
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 52
  store ptr @DM_get_tessface_data_layer, ptr %24, align 8, !tbaa !67
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 20
  store ptr @CDDM_calc_normals, ptr %25, align 8, !tbaa !68
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 21
  store ptr @CDDM_calc_loop_normals, ptr %26, align 8, !tbaa !69
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 22
  store ptr @CDDM_recalc_tessellation, ptr %27, align 8, !tbaa !70
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 77
  store ptr @cdDM_getVertCos, ptr %28, align 8, !tbaa !71
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 76
  store ptr @cdDM_getVertCo, ptr %29, align 8, !tbaa !72
  %30 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 78
  store ptr @cdDM_getVertNo, ptr %30, align 8, !tbaa !73
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 81
  store ptr @cdDM_getPBVH, ptr %31, align 8, !tbaa !74
  %32 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 80
  store ptr @cdDM_getPolyMap, ptr %32, align 8, !tbaa !75
  %33 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 82
  store ptr @cdDM_drawVerts, ptr %33, align 8, !tbaa !76
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 83
  store ptr @cdDM_drawUVEdges, ptr %34, align 8, !tbaa !77
  %35 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 84
  store ptr @cdDM_drawEdges, ptr %35, align 8, !tbaa !78
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 85
  store ptr @cdDM_drawLooseEdges, ptr %36, align 8, !tbaa !79
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 92
  store ptr @cdDM_drawMappedEdges, ptr %37, align 8, !tbaa !80
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 86
  store ptr @cdDM_drawFacesSolid, ptr %38, align 8, !tbaa !81
  %39 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 87
  store ptr @cdDM_drawFacesTex, ptr %39, align 8, !tbaa !82
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 88
  store ptr @cdDM_drawFacesGLSL, ptr %40, align 8, !tbaa !83
  %41 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 89
  store ptr @cdDM_drawMappedFaces, ptr %41, align 8, !tbaa !84
  %42 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 90
  store ptr @cdDM_drawMappedFacesTex, ptr %42, align 8, !tbaa !85
  %43 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 91
  store ptr @cdDM_drawMappedFacesGLSL, ptr %43, align 8, !tbaa !86
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 94
  store ptr @cdDM_drawMappedFacesMat, ptr %44, align 8, !tbaa !87
  %45 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 71
  store ptr @cdDM_foreachMappedVert, ptr %45, align 8, !tbaa !88
  %46 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 72
  store ptr @cdDM_foreachMappedEdge, ptr %46, align 8, !tbaa !89
  %47 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 73
  store ptr @cdDM_foreachMappedLoop, ptr %47, align 8, !tbaa !90
  %48 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 74
  store ptr @cdDM_foreachMappedFaceCenter, ptr %48, align 8, !tbaa !91
  %49 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 95
  store ptr @cdDM_release, ptr %49, align 8, !tbaa !92
  %50 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !125
  %52 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %53 = load i32, ptr %52, align 4, !tbaa !126
  %54 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %55 = load i32, ptr %54, align 8, !tbaa !43
  %56 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %57 = load i32, ptr %56, align 4, !tbaa !44
  %58 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !45
  %60 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 50
  %61 = load ptr, ptr %60, align 8, !tbaa !65
  %62 = tail call ptr %61(ptr noundef %0, i32 noundef 7) #11
  %63 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 51
  %64 = load ptr, ptr %63, align 8, !tbaa !66
  %65 = tail call ptr %64(ptr noundef %0, i32 noundef 7) #11
  %66 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %67 = load ptr, ptr %66, align 8, !tbaa !67
  %68 = tail call ptr %67(ptr noundef %0, i32 noundef 7) #11
  %69 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 54
  %70 = load ptr, ptr %69, align 8, !tbaa !222
  %71 = tail call ptr %70(ptr noundef %0, i32 noundef 7) #11
  tail call void @DM_from_template(ptr noundef %4, ptr noundef %0, i32 noundef 0, i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59) #11
  %72 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 11
  %73 = load i32, ptr %72, align 8, !tbaa !106
  %74 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 11
  store i32 %73, ptr %74, align 8, !tbaa !106
  %75 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 19
  %76 = load i8, ptr %75, align 8, !tbaa !108
  %77 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 19
  store i8 %76, ptr %77, align 8, !tbaa !108
  %78 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %79 = load i32, ptr %78, align 8, !tbaa !119
  %80 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 16
  store i32 %79, ptr %80, align 8, !tbaa !119
  tail call void @CustomData_copy_data(ptr noundef %0, ptr noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef %51) #11
  %81 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %82 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 1
  tail call void @CustomData_copy_data(ptr noundef nonnull %81, ptr noundef nonnull %82, i32 noundef 0, i32 noundef 0, i32 noundef %53) #11
  %83 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %84 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 2
  tail call void @CustomData_copy_data(ptr noundef nonnull %83, ptr noundef nonnull %84, i32 noundef 0, i32 noundef 0, i32 noundef %55) #11
  %85 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 41
  %86 = load ptr, ptr %85, align 8, !tbaa !223
  %87 = tail call ptr %86(ptr noundef %0) #11
  %88 = getelementptr inbounds %struct.CDDerivedMesh, ptr %4, i64 0, i32 1
  store ptr %87, ptr %88, align 8, !tbaa !34
  %89 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 42
  %90 = load ptr, ptr %89, align 8, !tbaa !224
  %91 = tail call ptr %90(ptr noundef %0) #11
  %92 = getelementptr inbounds %struct.CDDerivedMesh, ptr %4, i64 0, i32 2
  store ptr %91, ptr %92, align 8, !tbaa !93
  %93 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 43
  %94 = load ptr, ptr %93, align 8, !tbaa !225
  %95 = tail call ptr %94(ptr noundef %0) #11
  %96 = getelementptr inbounds %struct.CDDerivedMesh, ptr %4, i64 0, i32 3
  store ptr %95, ptr %96, align 8, !tbaa !46
  %97 = load ptr, ptr %88, align 8, !tbaa !34
  %98 = tail call ptr @CustomData_add_layer(ptr noundef %4, i32 noundef 0, i32 noundef 0, ptr noundef %97, i32 noundef %51) #11
  %99 = load ptr, ptr %92, align 8, !tbaa !93
  %100 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %82, i32 noundef 3, i32 noundef 0, ptr noundef %99, i32 noundef %53) #11
  %101 = load ptr, ptr %96, align 8, !tbaa !46
  %102 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %84, i32 noundef 4, i32 noundef 0, ptr noundef %101, i32 noundef %55) #11
  %103 = icmp eq i32 %1, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %2
  tail call void @DM_DupPolys(ptr noundef %0, ptr noundef %4) #11
  br label %120

105:                                              ; preds = %2
  %106 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 3
  %107 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 4
  %108 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 6
  %109 = load i32, ptr %108, align 4, !tbaa !226
  %110 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 7
  %111 = load i32, ptr %110, align 8, !tbaa !227
  %112 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 8
  %113 = load i32, ptr %112, align 4, !tbaa !228
  %114 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 9
  %115 = load i32, ptr %114, align 8, !tbaa !229
  %116 = load ptr, ptr %92, align 8, !tbaa !93
  %117 = load ptr, ptr %96, align 8, !tbaa !46
  %118 = getelementptr inbounds %struct.CDDerivedMesh, ptr %4, i64 0, i32 4
  %119 = getelementptr inbounds %struct.CDDerivedMesh, ptr %4, i64 0, i32 5
  tail call void @BKE_mesh_convert_mfaces_to_mpolys_ex(ptr noundef null, ptr noundef nonnull %84, ptr noundef nonnull %106, ptr noundef nonnull %107, i32 noundef %109, i32 noundef %111, i32 noundef %113, i32 noundef %115, ptr noundef %116, ptr noundef %117, ptr noundef nonnull %112, ptr noundef nonnull %114, ptr noundef nonnull %118, ptr noundef nonnull %119) #11
  br label %120

120:                                              ; preds = %105, %104
  %121 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 3
  %122 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %121, i32 noundef 26) #11
  %123 = getelementptr inbounds %struct.CDDerivedMesh, ptr %4, i64 0, i32 4
  store ptr %122, ptr %123, align 8, !tbaa !94
  %124 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 4
  %125 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %124, i32 noundef 25) #11
  %126 = getelementptr inbounds %struct.CDDerivedMesh, ptr %4, i64 0, i32 5
  store ptr %125, ptr %126, align 8, !tbaa !95
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CDDM_copy_from_tessface(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @cddm_copy_ex(ptr noundef %0, i32 noundef 1)
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CDDM_from_template(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %8 = tail call ptr %7(i64 noundef 1760, ptr noundef nonnull @.str.2) #11
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 75
  store ptr @cdDM_getMinMax, ptr %9, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 23
  store ptr @cdDM_getNumVerts, ptr %10, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 24
  store ptr @cdDM_getNumEdges, ptr %11, align 8, !tbaa !50
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 25
  store ptr @cdDM_getNumTessFaces, ptr %12, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 26
  store ptr @cdDM_getNumLoops, ptr %13, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 27
  store ptr @cdDM_getNumPolys, ptr %14, align 8, !tbaa !53
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 28
  store ptr @cdDM_getVert, ptr %15, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 29
  store ptr @cdDM_getEdge, ptr %16, align 8, !tbaa !55
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 30
  store ptr @cdDM_getTessFace, ptr %17, align 8, !tbaa !56
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 36
  store ptr @cdDM_copyVertArray, ptr %18, align 8, !tbaa !57
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 37
  store ptr @cdDM_copyEdgeArray, ptr %19, align 8, !tbaa !58
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 38
  store ptr @cdDM_copyTessFaceArray, ptr %20, align 8, !tbaa !59
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 39
  store ptr @cdDM_copyLoopArray, ptr %21, align 8, !tbaa !60
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 40
  store ptr @cdDM_copyPolyArray, ptr %22, align 8, !tbaa !61
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 46
  store ptr @DM_get_vert_data, ptr %23, align 8, !tbaa !62
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 47
  store ptr @DM_get_edge_data, ptr %24, align 8, !tbaa !63
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 48
  store ptr @DM_get_tessface_data, ptr %25, align 8, !tbaa !64
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 50
  store ptr @DM_get_vert_data_layer, ptr %26, align 8, !tbaa !65
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 51
  store ptr @DM_get_edge_data_layer, ptr %27, align 8, !tbaa !66
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 52
  store ptr @DM_get_tessface_data_layer, ptr %28, align 8, !tbaa !67
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 20
  store ptr @CDDM_calc_normals, ptr %29, align 8, !tbaa !68
  %30 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 21
  store ptr @CDDM_calc_loop_normals, ptr %30, align 8, !tbaa !69
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 22
  store ptr @CDDM_recalc_tessellation, ptr %31, align 8, !tbaa !70
  %32 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 77
  store ptr @cdDM_getVertCos, ptr %32, align 8, !tbaa !71
  %33 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 76
  store ptr @cdDM_getVertCo, ptr %33, align 8, !tbaa !72
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 78
  store ptr @cdDM_getVertNo, ptr %34, align 8, !tbaa !73
  %35 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 81
  store ptr @cdDM_getPBVH, ptr %35, align 8, !tbaa !74
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 80
  store ptr @cdDM_getPolyMap, ptr %36, align 8, !tbaa !75
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 82
  store ptr @cdDM_drawVerts, ptr %37, align 8, !tbaa !76
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 83
  store ptr @cdDM_drawUVEdges, ptr %38, align 8, !tbaa !77
  %39 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 84
  store ptr @cdDM_drawEdges, ptr %39, align 8, !tbaa !78
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 85
  store ptr @cdDM_drawLooseEdges, ptr %40, align 8, !tbaa !79
  %41 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 92
  store ptr @cdDM_drawMappedEdges, ptr %41, align 8, !tbaa !80
  %42 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 86
  store ptr @cdDM_drawFacesSolid, ptr %42, align 8, !tbaa !81
  %43 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 87
  store ptr @cdDM_drawFacesTex, ptr %43, align 8, !tbaa !82
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 88
  store ptr @cdDM_drawFacesGLSL, ptr %44, align 8, !tbaa !83
  %45 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 89
  store ptr @cdDM_drawMappedFaces, ptr %45, align 8, !tbaa !84
  %46 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 90
  store ptr @cdDM_drawMappedFacesTex, ptr %46, align 8, !tbaa !85
  %47 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 91
  store ptr @cdDM_drawMappedFacesGLSL, ptr %47, align 8, !tbaa !86
  %48 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 94
  store ptr @cdDM_drawMappedFacesMat, ptr %48, align 8, !tbaa !87
  %49 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 71
  store ptr @cdDM_foreachMappedVert, ptr %49, align 8, !tbaa !88
  %50 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 72
  store ptr @cdDM_foreachMappedEdge, ptr %50, align 8, !tbaa !89
  %51 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 73
  store ptr @cdDM_foreachMappedLoop, ptr %51, align 8, !tbaa !90
  %52 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 74
  store ptr @cdDM_foreachMappedFaceCenter, ptr %52, align 8, !tbaa !91
  %53 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 95
  store ptr @cdDM_release, ptr %53, align 8, !tbaa !92
  %54 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 50
  %55 = load ptr, ptr %54, align 8, !tbaa !65
  %56 = tail call ptr %55(ptr noundef %0, i32 noundef 7) #11
  %57 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 51
  %58 = load ptr, ptr %57, align 8, !tbaa !66
  %59 = tail call ptr %58(ptr noundef %0, i32 noundef 7) #11
  %60 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %61 = load ptr, ptr %60, align 8, !tbaa !67
  %62 = tail call ptr %61(ptr noundef %0, i32 noundef 7) #11
  %63 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 54
  %64 = load ptr, ptr %63, align 8, !tbaa !222
  %65 = tail call ptr %64(ptr noundef %0, i32 noundef 7) #11
  tail call void @DM_from_template(ptr noundef %8, ptr noundef %0, i32 noundef 0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #11
  %66 = tail call ptr @CustomData_add_layer(ptr noundef %8, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %1) #11
  %67 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 1
  %68 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %67, i32 noundef 3, i32 noundef 1, ptr noundef null, i32 noundef %2) #11
  %69 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 2
  %70 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %69, i32 noundef 4, i32 noundef 1, ptr noundef null, i32 noundef %3) #11
  %71 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 3
  %72 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %71, i32 noundef 26, i32 noundef 1, ptr noundef null, i32 noundef %4) #11
  %73 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 4
  %74 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %73, i32 noundef 25, i32 noundef 1, ptr noundef null, i32 noundef %5) #11
  %75 = tail call ptr @CustomData_get_layer(ptr noundef %8, i32 noundef 7) #11
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %6
  %78 = tail call ptr @CustomData_add_layer(ptr noundef %8, i32 noundef 7, i32 noundef 1, ptr noundef null, i32 noundef %1) #11
  br label %79

79:                                               ; preds = %77, %6
  %80 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %67, i32 noundef 7) #11
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %67, i32 noundef 7, i32 noundef 1, ptr noundef null, i32 noundef %2) #11
  br label %84

84:                                               ; preds = %82, %79
  %85 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %69, i32 noundef 7) #11
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %69, i32 noundef 7, i32 noundef 1, ptr noundef null, i32 noundef %3) #11
  br label %89

89:                                               ; preds = %87, %84
  %90 = tail call ptr @CustomData_get_layer(ptr noundef %8, i32 noundef 0) #11
  %91 = getelementptr inbounds %struct.CDDerivedMesh, ptr %8, i64 0, i32 1
  store ptr %90, ptr %91, align 8, !tbaa !34
  %92 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %67, i32 noundef 3) #11
  %93 = getelementptr inbounds %struct.CDDerivedMesh, ptr %8, i64 0, i32 2
  store ptr %92, ptr %93, align 8, !tbaa !93
  %94 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %69, i32 noundef 4) #11
  %95 = getelementptr inbounds %struct.CDDerivedMesh, ptr %8, i64 0, i32 3
  store ptr %94, ptr %95, align 8, !tbaa !46
  %96 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %71, i32 noundef 26) #11
  %97 = getelementptr inbounds %struct.CDDerivedMesh, ptr %8, i64 0, i32 4
  store ptr %96, ptr %97, align 8, !tbaa !94
  %98 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %73, i32 noundef 25) #11
  %99 = getelementptr inbounds %struct.CDDerivedMesh, ptr %8, i64 0, i32 5
  store ptr %98, ptr %99, align 8, !tbaa !95
  ret ptr %8
}

declare void @DM_from_template(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @CDDM_apply_vert_coords(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !125
  %5 = tail call ptr @CustomData_duplicate_referenced_layer(ptr noundef %0, i32 noundef 0, i32 noundef %4) #11
  %6 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !34
  %7 = load i32, ptr %3, align 8, !tbaa !125
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = zext nneg i32 %7 to i64
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %22, %11 ]
  %13 = phi ptr [ %5, %9 ], [ %23, %11 ]
  %14 = getelementptr inbounds [3 x float], ptr %1, i64 %12
  %15 = load float, ptr %14, align 4, !tbaa !133
  store float %15, ptr %13, align 4, !tbaa !133
  %16 = getelementptr inbounds float, ptr %14, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !133
  %18 = getelementptr inbounds float, ptr %13, i64 1
  store float %17, ptr %18, align 4, !tbaa !133
  %19 = getelementptr inbounds float, ptr %14, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !133
  %21 = getelementptr inbounds float, ptr %13, i64 2
  store float %20, ptr %21, align 4, !tbaa !133
  %22 = add nuw nsw i64 %12, 1
  %23 = getelementptr inbounds %struct.MVert, ptr %13, i64 1
  %24 = icmp eq i64 %22, %10
  br i1 %24, label %25, label %11, !llvm.loop !230

25:                                               ; preds = %11, %2
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %27 = load i32, ptr %26, align 8, !tbaa !231
  %28 = or i32 %27, 4
  store i32 %28, ptr %26, align 8, !tbaa !231
  ret void
}

declare ptr @CustomData_duplicate_referenced_layer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @CDDM_apply_vert_normals(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !125
  %5 = tail call ptr @CustomData_duplicate_referenced_layer(ptr noundef %0, i32 noundef 0, i32 noundef %4) #11
  %6 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !34
  %7 = load i32, ptr %3, align 8, !tbaa !125
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = zext nneg i32 %7 to i64
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %23, %11 ]
  %13 = phi ptr [ %5, %9 ], [ %24, %11 ]
  %14 = getelementptr inbounds %struct.MVert, ptr %13, i64 0, i32 1
  %15 = getelementptr inbounds [3 x i16], ptr %1, i64 %12
  %16 = load i16, ptr %15, align 2, !tbaa !136
  store i16 %16, ptr %14, align 2, !tbaa !136
  %17 = getelementptr inbounds i16, ptr %15, i64 1
  %18 = load i16, ptr %17, align 2, !tbaa !136
  %19 = getelementptr inbounds %struct.MVert, ptr %13, i64 0, i32 1, i64 1
  store i16 %18, ptr %19, align 2, !tbaa !136
  %20 = getelementptr inbounds i16, ptr %15, i64 2
  %21 = load i16, ptr %20, align 2, !tbaa !136
  %22 = getelementptr inbounds %struct.MVert, ptr %13, i64 0, i32 1, i64 2
  store i16 %21, ptr %22, align 2, !tbaa !136
  %23 = add nuw nsw i64 %12, 1
  %24 = getelementptr inbounds %struct.MVert, ptr %13, i64 1
  %25 = icmp eq i64 %23, %10
  br i1 %25, label %26, label %11, !llvm.loop !232

26:                                               ; preds = %11, %2
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %28 = load i32, ptr %27, align 8, !tbaa !231
  %29 = and i32 %28, -5
  store i32 %29, ptr %27, align 8, !tbaa !231
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CDDM_calc_normals_mapping_ex(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !125
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %48, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  br i1 %9, label %11, label %23

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %17 = load i32, ptr %16, align 4, !tbaa !44
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !45
  %20 = tail call i32 @BKE_mesh_recalc_tessellation(ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef %15, i32 noundef %8, i32 noundef %17, i32 noundef %19, i8 noundef zeroext 0) #11
  store i32 %20, ptr %7, align 8, !tbaa !43
  %21 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %10, i32 noundef 4) #11
  %22 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  store ptr %21, ptr %22, align 8, !tbaa !46
  tail call void @CustomData_bmesh_update_active_layers(ptr noundef nonnull %10, ptr noundef nonnull %13, ptr noundef nonnull %12) #11
  br label %24

23:                                               ; preds = %6
  tail call void @CustomData_free_layers(ptr noundef nonnull %10, i32 noundef 8, i32 noundef %8) #11
  br label %24

24:                                               ; preds = %23, %11
  %25 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %26 = load i32, ptr %7, align 8, !tbaa !43
  %27 = sext i32 %26 to i64
  %28 = mul nsw i64 %27, 12
  %29 = tail call ptr %25(i64 noundef %28, ptr noundef nonnull @.str.3) #11
  %30 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = load i32, ptr %3, align 8, !tbaa !125
  %33 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !94
  %35 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !95
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %38 = load i32, ptr %37, align 4, !tbaa !44
  %39 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !45
  %41 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  %43 = load i32, ptr %7, align 8, !tbaa !43
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %45 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %44, i32 noundef 7) #11
  tail call void @BKE_mesh_calc_normals_mapping_ex(ptr noundef %31, i32 noundef %32, ptr noundef %34, ptr noundef %36, i32 noundef %38, i32 noundef %40, ptr noundef null, ptr noundef %42, i32 noundef %43, ptr noundef %45, ptr noundef %29, i8 noundef zeroext %1) #11
  %46 = load i32, ptr %7, align 8, !tbaa !43
  %47 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %44, i32 noundef 8, i32 noundef 0, ptr noundef %29, i32 noundef %46) #11
  br label %48

48:                                               ; preds = %2, %24
  %49 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %50 = load i32, ptr %49, align 8, !tbaa !231
  %51 = and i32 %50, -5
  store i32 %51, ptr %49, align 8, !tbaa !231
  ret void
}

declare void @CustomData_free_layers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_mesh_calc_normals_mapping_ex(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @CDDM_get_loops(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !94
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @CDDM_get_polys(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @CDDM_calc_normals_mapping(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i8 @CustomData_is_referenced_layer(ptr noundef %0, i32 noundef 0) #11
  tail call void @CDDM_calc_normals_mapping_ex(ptr noundef %0, i8 noundef zeroext %2)
  ret void
}

declare zeroext i8 @CustomData_is_referenced_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @CDDM_calc_normals(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !125
  %4 = tail call ptr @CustomData_duplicate_referenced_layer(ptr noundef %0, i32 noundef 0, i32 noundef %3) #11
  %5 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !34
  %6 = load i32, ptr %2, align 8, !tbaa !125
  %7 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !94
  %9 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !95
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %12 = load i32, ptr %11, align 4, !tbaa !44
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !45
  tail call void @BKE_mesh_calc_normals_poly(ptr noundef %4, i32 noundef %6, ptr noundef %8, ptr noundef %10, i32 noundef %12, i32 noundef %14, ptr noundef null, i8 noundef zeroext 0) #11
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %16 = load i32, ptr %15, align 8, !tbaa !231
  %17 = and i32 %16, -5
  store i32 %17, ptr %15, align 8, !tbaa !231
  ret void
}

declare void @BKE_mesh_calc_normals_poly(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @CDDM_calc_loop_normals(ptr noundef %0, float noundef %1) #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  %4 = load ptr, ptr %3, align 8, !tbaa !233
  %5 = tail call ptr %4(ptr noundef %0) #11
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 32
  %7 = load ptr, ptr %6, align 8, !tbaa !234
  %8 = tail call ptr %7(ptr noundef %0) #11
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 34
  %10 = load ptr, ptr %9, align 8, !tbaa !235
  %11 = tail call ptr %10(ptr noundef %0) #11
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 35
  %13 = load ptr, ptr %12, align 8, !tbaa !236
  %14 = tail call ptr %13(ptr noundef %0) #11
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = tail call i32 %16(ptr noundef %0) #11
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 24
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = tail call i32 %19(ptr noundef %0) #11
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 26
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = tail call i32 %22(ptr noundef %0) #11
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 27
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  %26 = tail call i32 %25(ptr noundef %0) #11
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 58
  %28 = load ptr, ptr %27, align 8, !tbaa !237
  %29 = tail call ptr %28(ptr noundef %0) #11
  %30 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %29, i32 noundef 8) #11
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %2
  %33 = tail call ptr @CustomData_get_layer(ptr noundef %29, i32 noundef 8) #11
  br label %36

34:                                               ; preds = %2
  %35 = tail call ptr @CustomData_add_layer(ptr noundef %29, i32 noundef 8, i32 noundef 1, ptr noundef null, i32 noundef %23) #11
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi ptr [ %33, %32 ], [ %35, %34 ]
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 59
  %39 = load ptr, ptr %38, align 8, !tbaa !238
  %40 = tail call ptr %39(ptr noundef %0) #11
  %41 = tail call ptr @CustomData_get_layer(ptr noundef %40, i32 noundef 8) #11
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = tail call ptr @CustomData_add_layer(ptr noundef %40, i32 noundef 8, i32 noundef 1, ptr noundef null, i32 noundef %26) #11
  br label %45

45:                                               ; preds = %43, %36
  %46 = phi ptr [ %41, %36 ], [ %44, %43 ]
  %47 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %48 = load i32, ptr %47, align 8, !tbaa !119
  %49 = and i32 %48, 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i8
  tail call void @BKE_mesh_calc_normals_poly(ptr noundef %5, i32 noundef %17, ptr noundef %11, ptr noundef %14, i32 noundef %23, i32 noundef %26, ptr noundef %46, i8 noundef zeroext %51) #11
  %52 = load i32, ptr %47, align 8, !tbaa !119
  %53 = and i32 %52, -5
  store i32 %53, ptr %47, align 8, !tbaa !119
  tail call void @BKE_mesh_normals_loop_split(ptr noundef %5, i32 noundef %17, ptr noundef %8, i32 noundef %20, ptr noundef %11, ptr noundef %37, i32 noundef %23, ptr noundef %14, ptr noundef %46, i32 noundef %26, float noundef %1) #11
  ret void
}

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_mesh_normals_loop_split(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @CDDM_calc_normals_tessface(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !125
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @CustomData_duplicate_referenced_layer(ptr noundef %0, i32 noundef 0, i32 noundef %3) #11
  %7 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %9 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %8, i32 noundef 8) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !43
  %14 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %8, i32 noundef 8, i32 noundef 1, ptr noundef null, i32 noundef %13) #11
  br label %15

15:                                               ; preds = %11, %5
  %16 = phi ptr [ %9, %5 ], [ %14, %11 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !34
  %18 = load i32, ptr %2, align 8, !tbaa !125
  %19 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !43
  tail call void @BKE_mesh_calc_normals_tessface(ptr noundef %17, i32 noundef %18, ptr noundef %20, i32 noundef %22, ptr noundef %16) #11
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %24 = load i32, ptr %23, align 8, !tbaa !231
  %25 = and i32 %24, -5
  store i32 %25, ptr %23, align 8, !tbaa !231
  br label %26

26:                                               ; preds = %1, %15
  ret void
}

declare void @BKE_mesh_calc_normals_tessface(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @CDDM_merge_verts(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PolyKey, align 4
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !125
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !126
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 4, !tbaa !44
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !45
  %14 = sub nsw i32 %7, %2
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %16 = sext i32 %14 to i64
  %17 = mul nsw i64 %16, 20
  %18 = tail call ptr %15(i64 noundef %17, ptr noundef nonnull @__func__.CDDM_merge_verts) #11
  %19 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %20 = shl nsw i64 %16, 2
  %21 = tail call ptr %19(i64 noundef %20, ptr noundef nonnull @__func__.CDDM_merge_verts) #11
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %23 = sext i32 %7 to i64
  %24 = shl nsw i64 %23, 2
  %25 = tail call ptr %22(i64 noundef %24, ptr noundef nonnull @__func__.CDDM_merge_verts) #11
  %26 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %27 = sext i32 %9 to i64
  %28 = mul nsw i64 %27, 12
  %29 = tail call ptr %26(i64 noundef %28, ptr noundef nonnull @__func__.CDDM_merge_verts) #11
  %30 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %31 = shl nsw i64 %27, 2
  %32 = tail call ptr %30(i64 noundef %31, ptr noundef nonnull @__func__.CDDM_merge_verts) #11
  %33 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %34 = tail call ptr %33(i64 noundef %31, ptr noundef nonnull @__func__.CDDM_merge_verts) #11
  %35 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %36 = sext i32 %11 to i64
  %37 = shl nsw i64 %36, 3
  %38 = tail call ptr %35(i64 noundef %37, ptr noundef nonnull @__func__.CDDM_merge_verts) #11
  %39 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %40 = shl nsw i64 %36, 2
  %41 = tail call ptr %39(i64 noundef %40, ptr noundef nonnull @__func__.CDDM_merge_verts) #11
  %42 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %43 = sext i32 %13 to i64
  %44 = mul nsw i64 %43, 12
  %45 = tail call ptr %42(i64 noundef %44, ptr noundef nonnull @__func__.CDDM_merge_verts) #11
  %46 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %47 = shl nsw i64 %43, 2
  %48 = tail call ptr %46(i64 noundef %47, ptr noundef nonnull @__func__.CDDM_merge_verts) #11
  %49 = tail call ptr @BLI_edgehash_new_ex(ptr noundef nonnull @__func__.CDDM_merge_verts, i32 noundef %9) #11
  %50 = icmp sgt i32 %7, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %4
  %52 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !34
  %54 = zext nneg i32 %7 to i64
  br label %60

55:                                               ; preds = %78, %4
  %56 = phi i32 [ 0, %4 ], [ %82, %78 ]
  %57 = icmp sgt i32 %7, 0
  br i1 %57, label %58, label %100

58:                                               ; preds = %55
  %59 = zext nneg i32 %7 to i64
  br label %87

60:                                               ; preds = %51, %78
  %61 = phi i64 [ 0, %51 ], [ %84, %78 ]
  %62 = phi ptr [ %53, %51 ], [ %85, %78 ]
  %63 = phi i32 [ 0, %51 ], [ %82, %78 ]
  %64 = phi i32 [ 0, %51 ], [ %81, %78 ]
  %65 = phi i32 [ 0, %51 ], [ %80, %78 ]
  %66 = getelementptr inbounds i32, ptr %1, i64 %61
  %67 = load i32, ptr %66, align 4, !tbaa !118
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %78

69:                                               ; preds = %60
  %70 = add i32 %64, 1
  %71 = zext i32 %64 to i64
  %72 = getelementptr inbounds i32, ptr %21, i64 %71
  %73 = trunc i64 %61 to i32
  store i32 %73, ptr %72, align 4, !tbaa !118
  %74 = add i32 %63, 1
  %75 = zext i32 %63 to i64
  %76 = getelementptr inbounds %struct.MVert, ptr %18, i64 %75
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %76, ptr noundef nonnull align 4 dereferenceable(20) %62, i64 20, i1 false), !tbaa.struct !239
  %77 = add nsw i32 %65, 1
  br label %78

78:                                               ; preds = %60, %69
  %79 = phi i32 [ %65, %69 ], [ 0, %60 ]
  %80 = phi i32 [ %77, %69 ], [ %65, %60 ]
  %81 = phi i32 [ %70, %69 ], [ %64, %60 ]
  %82 = phi i32 [ %74, %69 ], [ %63, %60 ]
  %83 = getelementptr inbounds i32, ptr %25, i64 %61
  store i32 %79, ptr %83, align 4, !tbaa !118
  %84 = add nuw nsw i64 %61, 1
  %85 = getelementptr inbounds %struct.MVert, ptr %62, i64 1
  %86 = icmp eq i64 %84, %54
  br i1 %86, label %55, label %60, !llvm.loop !240

87:                                               ; preds = %58, %97
  %88 = phi i64 [ 0, %58 ], [ %98, %97 ]
  %89 = getelementptr inbounds i32, ptr %1, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !118
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = sext i32 %90 to i64
  %94 = getelementptr inbounds i32, ptr %25, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !118
  %96 = getelementptr inbounds i32, ptr %25, i64 %88
  store i32 %95, ptr %96, align 4, !tbaa !118
  br label %97

97:                                               ; preds = %87, %92
  %98 = add nuw nsw i64 %88, 1
  %99 = icmp eq i64 %98, %59
  br i1 %99, label %100, label %87, !llvm.loop !241

100:                                              ; preds = %97, %55
  %101 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 2
  %102 = icmp sgt i32 %9, 0
  br i1 %102, label %103, label %155

103:                                              ; preds = %100
  %104 = load ptr, ptr %101, align 8, !tbaa !93
  %105 = zext nneg i32 %9 to i64
  br label %106

106:                                              ; preds = %103, %148
  %107 = phi i64 [ 0, %103 ], [ %152, %148 ]
  %108 = phi ptr [ %104, %103 ], [ %153, %148 ]
  %109 = phi i32 [ 0, %103 ], [ %151, %148 ]
  %110 = phi i32 [ 0, %103 ], [ %150, %148 ]
  %111 = phi i32 [ 0, %103 ], [ %149, %148 ]
  %112 = load i32, ptr %108, align 4, !tbaa !150
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, ptr %1, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !118
  %116 = icmp eq i32 %115, -1
  %117 = select i1 %116, i32 %112, i32 %115
  %118 = getelementptr inbounds %struct.MEdge, ptr %108, i64 0, i32 1
  %119 = load i32, ptr %118, align 4, !tbaa !153
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, ptr %1, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !118
  %123 = icmp eq i32 %122, -1
  %124 = select i1 %123, i32 %119, i32 %122
  %125 = icmp eq i32 %117, %124
  br i1 %125, label %146, label %126

126:                                              ; preds = %106
  %127 = tail call ptr @BLI_edgehash_lookup_p(ptr noundef %49, i32 noundef %117, i32 noundef %124) #11
  %128 = icmp eq ptr %127, null
  br i1 %128, label %134, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr %127, align 8, !tbaa !47
  %131 = ptrtoint ptr %130 to i64
  %132 = trunc i64 %131 to i32
  %133 = getelementptr inbounds i32, ptr %34, i64 %107
  store i32 %132, ptr %133, align 4, !tbaa !118
  br label %148

134:                                              ; preds = %126
  %135 = add i32 %110, 1
  %136 = zext i32 %110 to i64
  %137 = getelementptr inbounds i32, ptr %32, i64 %136
  %138 = trunc i64 %107 to i32
  store i32 %138, ptr %137, align 4, !tbaa !118
  %139 = add i32 %109, 1
  %140 = zext i32 %109 to i64
  %141 = getelementptr inbounds %struct.MEdge, ptr %29, i64 %140
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %141, ptr noundef nonnull align 4 dereferenceable(12) %108, i64 12, i1 false), !tbaa.struct !242
  %142 = getelementptr inbounds i32, ptr %34, i64 %107
  store i32 %111, ptr %142, align 4, !tbaa !118
  %143 = sext i32 %111 to i64
  %144 = inttoptr i64 %143 to ptr
  tail call void @BLI_edgehash_insert(ptr noundef %49, i32 noundef %117, i32 noundef %124, ptr noundef %144) #11
  %145 = add nsw i32 %111, 1
  br label %148

146:                                              ; preds = %106
  %147 = getelementptr inbounds i32, ptr %34, i64 %107
  store i32 -1, ptr %147, align 4, !tbaa !118
  br label %148

148:                                              ; preds = %129, %134, %146
  %149 = phi i32 [ %111, %146 ], [ %111, %129 ], [ %145, %134 ]
  %150 = phi i32 [ %110, %146 ], [ %110, %129 ], [ %135, %134 ]
  %151 = phi i32 [ %109, %146 ], [ %109, %129 ], [ %139, %134 ]
  %152 = add nuw nsw i64 %107, 1
  %153 = getelementptr inbounds %struct.MEdge, ptr %108, i64 1
  %154 = icmp eq i64 %152, %105
  br i1 %154, label %155, label %106, !llvm.loop !243

155:                                              ; preds = %148, %100
  %156 = phi i32 [ 0, %100 ], [ %151, %148 ]
  %157 = icmp eq i32 %3, 1
  br i1 %157, label %158, label %216

158:                                              ; preds = %155
  %159 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %160 = shl nsw i64 %43, 4
  %161 = tail call ptr %159(i64 noundef %160, ptr noundef nonnull @__func__.CDDM_merge_verts) #11
  %162 = tail call ptr @BLI_gset_new_ex(ptr noundef nonnull @poly_gset_hash_fn, ptr noundef nonnull @poly_gset_compare_fn, ptr noundef nonnull @__func__.CDDM_merge_verts, i32 noundef %13) #11
  tail call void @BLI_gset_flag_set(ptr noundef %162, i32 noundef 1) #11
  %163 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 5
  %164 = icmp sgt i32 %13, 0
  br i1 %164, label %165, label %202

165:                                              ; preds = %158
  %166 = load ptr, ptr %163, align 8, !tbaa !95
  %167 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 4
  br label %168

168:                                              ; preds = %165, %197
  %169 = phi ptr [ %161, %165 ], [ %200, %197 ]
  %170 = phi i32 [ 0, %165 ], [ %198, %197 ]
  %171 = phi ptr [ %166, %165 ], [ %199, %197 ]
  store i32 %170, ptr %169, align 4, !tbaa !244
  %172 = getelementptr inbounds %struct.MPoly, ptr %171, i64 0, i32 1
  %173 = load i32, ptr %172, align 4, !tbaa !205
  %174 = getelementptr inbounds %struct.PolyKey, ptr %169, i64 0, i32 1
  store i32 %173, ptr %174, align 4, !tbaa !246
  %175 = load ptr, ptr %167, align 8, !tbaa !94
  %176 = load i32, ptr %171, align 4, !tbaa !208
  %177 = getelementptr inbounds %struct.PolyKey, ptr %169, i64 0, i32 3
  store i32 0, ptr %177, align 4, !tbaa !247
  %178 = getelementptr inbounds %struct.PolyKey, ptr %169, i64 0, i32 2
  store i32 0, ptr %178, align 4, !tbaa !248
  %179 = icmp sgt i32 %173, 0
  br i1 %179, label %180, label %197

180:                                              ; preds = %168
  %181 = sext i32 %176 to i64
  %182 = getelementptr inbounds %struct.MLoop, ptr %175, i64 %181
  %183 = load i32, ptr %178, align 4, !tbaa !248
  %184 = load i32, ptr %177, align 4, !tbaa !247
  br label %185

185:                                              ; preds = %180, %185
  %186 = phi i32 [ %184, %180 ], [ %192, %185 ]
  %187 = phi i32 [ %183, %180 ], [ %191, %185 ]
  %188 = phi ptr [ %182, %180 ], [ %194, %185 ]
  %189 = phi i32 [ 0, %180 ], [ %193, %185 ]
  %190 = load i32, ptr %188, align 4, !tbaa !211
  %191 = add i32 %187, %190
  %192 = xor i32 %186, %190
  %193 = add nuw nsw i32 %189, 1
  %194 = getelementptr inbounds %struct.MLoop, ptr %188, i64 1
  %195 = icmp eq i32 %193, %173
  br i1 %195, label %196, label %185, !llvm.loop !249

196:                                              ; preds = %185
  store i32 %191, ptr %178, align 4, !tbaa !248
  store i32 %192, ptr %177, align 4, !tbaa !247
  br label %197

197:                                              ; preds = %196, %168
  tail call void @BLI_gset_insert(ptr noundef %162, ptr noundef nonnull %169) #11
  %198 = add nuw nsw i32 %170, 1
  %199 = getelementptr inbounds %struct.MPoly, ptr %171, i64 1
  %200 = getelementptr inbounds %struct.PolyKey, ptr %169, i64 1
  %201 = icmp eq i32 %198, %13
  br i1 %201, label %202, label %168, !llvm.loop !250

202:                                              ; preds = %197, %158
  %203 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 8
  %204 = load ptr, ptr %203, align 8, !tbaa !251
  %205 = icmp eq ptr %204, null
  br i1 %205, label %211, label %206

206:                                              ; preds = %202
  %207 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %207(ptr noundef nonnull %204) #11
  %208 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %209 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 9
  %210 = load ptr, ptr %209, align 8, !tbaa !252
  tail call void %208(ptr noundef %210) #11
  br label %211

211:                                              ; preds = %206, %202
  %212 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 9
  %213 = load ptr, ptr %163, align 8, !tbaa !95
  %214 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 4
  %215 = load ptr, ptr %214, align 8, !tbaa !94
  tail call void @BKE_mesh_vert_poly_map_create(ptr noundef nonnull %203, ptr noundef nonnull %212, ptr noundef %213, ptr noundef %215, i32 noundef %7, i32 noundef %13, i32 noundef %11) #11
  br label %216

216:                                              ; preds = %211, %155
  %217 = phi ptr [ %161, %211 ], [ undef, %155 ]
  %218 = phi ptr [ %162, %211 ], [ null, %155 ]
  %219 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 5
  %220 = icmp sgt i32 %13, 0
  br i1 %220, label %221, label %432

221:                                              ; preds = %216
  %222 = load ptr, ptr %219, align 8, !tbaa !95
  %223 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 4
  %224 = icmp eq i32 %3, 0
  %225 = getelementptr inbounds %struct.PolyKey, ptr %5, i64 0, i32 3
  %226 = getelementptr inbounds %struct.PolyKey, ptr %5, i64 0, i32 2
  %227 = getelementptr inbounds %struct.PolyKey, ptr %5, i64 0, i32 1
  %228 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 8
  %229 = select i1 %224, i32 19, i32 0
  br label %230

230:                                              ; preds = %221, %424
  %231 = phi i32 [ 0, %221 ], [ %428, %424 ]
  %232 = phi i32 [ 0, %221 ], [ %429, %424 ]
  %233 = phi i32 [ 0, %221 ], [ %427, %424 ]
  %234 = phi i32 [ 0, %221 ], [ %426, %424 ]
  %235 = phi i32 [ 0, %221 ], [ %425, %424 ]
  %236 = phi ptr [ %222, %221 ], [ %430, %424 ]
  %237 = load ptr, ptr %223, align 8, !tbaa !94
  %238 = getelementptr inbounds %struct.MPoly, ptr %236, i64 0, i32 1
  %239 = load i32, ptr %238, align 4, !tbaa !205
  %240 = icmp sgt i32 %239, 0
  br i1 %240, label %241, label %257

241:                                              ; preds = %230
  %242 = load i32, ptr %236, align 4, !tbaa !208
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.MLoop, ptr %237, i64 %243
  br label %245

245:                                              ; preds = %241, %253
  %246 = phi ptr [ %255, %253 ], [ %244, %241 ]
  %247 = phi i32 [ %254, %253 ], [ 0, %241 ]
  %248 = load i32, ptr %246, align 4, !tbaa !211
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds i32, ptr %1, i64 %249
  %251 = load i32, ptr %250, align 4, !tbaa !118
  %252 = icmp eq i32 %251, -1
  br i1 %252, label %347, label %253

253:                                              ; preds = %245
  %254 = add nuw nsw i32 %247, 1
  %255 = getelementptr inbounds %struct.MLoop, ptr %246, i64 1
  %256 = icmp eq i32 %254, %239
  br i1 %256, label %257, label %245, !llvm.loop !253

257:                                              ; preds = %253, %230
  %258 = getelementptr inbounds %struct.MPoly, ptr %236, i64 0, i32 1
  br i1 %157, label %259, label %349

259:                                              ; preds = %257
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %260 = load i32, ptr %236, align 4, !tbaa !208
  store i32 0, ptr %225, align 4, !tbaa !247
  store i32 0, ptr %226, align 4, !tbaa !248
  store i32 0, ptr %227, align 4, !tbaa !246
  %261 = load i32, ptr %258, align 4, !tbaa !205
  %262 = icmp sgt i32 %261, 0
  br i1 %262, label %263, label %300

263:                                              ; preds = %259
  %264 = load i32, ptr %227, align 4, !tbaa !246
  %265 = load i32, ptr %225, align 4, !tbaa !247
  %266 = load i32, ptr %226, align 4, !tbaa !248
  %267 = sext i32 %260 to i64
  %268 = getelementptr inbounds %struct.MLoop, ptr %237, i64 %267
  %269 = zext nneg i32 %261 to i64
  %270 = getelementptr inbounds %struct.MLoop, ptr %268, i64 %269
  %271 = getelementptr inbounds %struct.MLoop, ptr %270, i64 -1
  %272 = load i32, ptr %271, align 4, !tbaa !211
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds i32, ptr %1, i64 %273
  %275 = load i32, ptr %274, align 4, !tbaa !118
  br label %276

276:                                              ; preds = %263, %292
  %277 = phi i32 [ %296, %292 ], [ %275, %263 ]
  %278 = phi ptr [ %298, %292 ], [ %268, %263 ]
  %279 = phi i32 [ %297, %292 ], [ 0, %263 ]
  %280 = phi i32 [ %295, %292 ], [ %266, %263 ]
  %281 = phi i32 [ %294, %292 ], [ %265, %263 ]
  %282 = phi i32 [ %293, %292 ], [ %264, %263 ]
  %283 = load i32, ptr %278, align 4, !tbaa !211
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds i32, ptr %1, i64 %284
  %286 = load i32, ptr %285, align 4, !tbaa !118
  %287 = icmp eq i32 %286, %277
  br i1 %287, label %292, label %288

288:                                              ; preds = %276
  %289 = add i32 %280, %286
  store i32 %289, ptr %226, align 4, !tbaa !248
  %290 = xor i32 %281, %286
  store i32 %290, ptr %225, align 4, !tbaa !247
  %291 = add nsw i32 %282, 1
  store i32 %291, ptr %227, align 4, !tbaa !246
  br label %292

292:                                              ; preds = %276, %288
  %293 = phi i32 [ %282, %276 ], [ %291, %288 ]
  %294 = phi i32 [ %281, %276 ], [ %290, %288 ]
  %295 = phi i32 [ %280, %276 ], [ %289, %288 ]
  %296 = phi i32 [ %277, %276 ], [ %286, %288 ]
  %297 = add nuw nsw i32 %279, 1
  %298 = getelementptr inbounds %struct.MLoop, ptr %278, i64 1
  %299 = icmp eq i32 %297, %261
  br i1 %299, label %300, label %276, !llvm.loop !254

300:                                              ; preds = %292, %259
  %301 = call zeroext i8 @BLI_gset_haskey(ptr noundef %218, ptr noundef nonnull %5) #11
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %344, label %303

303:                                              ; preds = %300
  %304 = load ptr, ptr %223, align 8, !tbaa !94
  %305 = load i32, ptr %236, align 4, !tbaa !208
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.MLoop, ptr %304, i64 %306
  %308 = load i32, ptr %307, align 4, !tbaa !211
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds i32, ptr %1, i64 %309
  %311 = load i32, ptr %310, align 4, !tbaa !118
  %312 = load ptr, ptr %228, align 8, !tbaa !251
  %313 = sext i32 %311 to i64
  %314 = getelementptr inbounds %struct.MeshElemMap, ptr %312, i64 %313, i32 1
  %315 = load i32, ptr %314, align 8, !tbaa !255
  %316 = icmp sgt i32 %315, 0
  br i1 %316, label %317, label %341

317:                                              ; preds = %303
  %318 = getelementptr inbounds %struct.MeshElemMap, ptr %312, i64 %313
  %319 = load ptr, ptr %219, align 8, !tbaa !95
  %320 = load ptr, ptr %318, align 8, !tbaa !257
  %321 = zext nneg i32 %315 to i64
  br label %322

322:                                              ; preds = %335, %317
  %323 = phi i64 [ %338, %335 ], [ 0, %317 ]
  %324 = phi i8 [ %337, %335 ], [ 0, %317 ]
  %325 = getelementptr inbounds i32, ptr %320, i64 %323
  %326 = load i32, ptr %325, align 4, !tbaa !118
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.MPoly, ptr %319, i64 %327
  %329 = call fastcc i32 @cddm_poly_compare(ptr noundef %304, ptr noundef nonnull %236, ptr noundef %328, ptr noundef %1, i32 noundef 1), !range !258
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %335

331:                                              ; preds = %322
  %332 = call fastcc i32 @cddm_poly_compare(ptr noundef %304, ptr noundef nonnull %236, ptr noundef %328, ptr noundef %1, i32 noundef -1), !range !258
  %333 = icmp eq i32 %332, 0
  %334 = select i1 %333, i8 %324, i8 1
  br label %335

335:                                              ; preds = %331, %322
  %336 = phi i1 [ false, %322 ], [ %333, %331 ]
  %337 = phi i8 [ 1, %322 ], [ %334, %331 ]
  %338 = add nuw nsw i64 %323, 1
  %339 = icmp ult i64 %338, %321
  %340 = select i1 %336, i1 %339, i1 false
  br i1 %340, label %322, label %341, !llvm.loop !259

341:                                              ; preds = %335, %303
  %342 = phi i8 [ 0, %303 ], [ %337, %335 ]
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %341, %300
  br label %345

345:                                              ; preds = %341, %344
  %346 = phi i32 [ 0, %344 ], [ 19, %341 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  br label %349

347:                                              ; preds = %245
  %348 = getelementptr inbounds %struct.MPoly, ptr %236, i64 0, i32 1
  br label %349

349:                                              ; preds = %345, %257, %347
  %350 = phi ptr [ %258, %257 ], [ %348, %347 ], [ %258, %345 ]
  %351 = phi i32 [ %229, %257 ], [ 0, %347 ], [ %346, %345 ]
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %424

353:                                              ; preds = %349
  %354 = load i32, ptr %350, align 4, !tbaa !205
  %355 = icmp sgt i32 %354, 0
  br i1 %355, label %356, label %405

356:                                              ; preds = %353
  %357 = load ptr, ptr %223, align 8, !tbaa !94
  %358 = load i32, ptr %236, align 4, !tbaa !208
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.MLoop, ptr %357, i64 %359
  br label %361

361:                                              ; preds = %356, %397
  %362 = phi ptr [ %402, %397 ], [ %360, %356 ]
  %363 = phi i32 [ %400, %397 ], [ %231, %356 ]
  %364 = phi i32 [ %399, %397 ], [ 0, %356 ]
  %365 = phi i32 [ %401, %397 ], [ 0, %356 ]
  %366 = phi i32 [ %398, %397 ], [ %233, %356 ]
  %367 = load ptr, ptr %101, align 8, !tbaa !93
  %368 = getelementptr inbounds %struct.MLoop, ptr %362, i64 0, i32 1
  %369 = load i32, ptr %368, align 4, !tbaa !214
  %370 = zext i32 %369 to i64
  %371 = getelementptr inbounds %struct.MEdge, ptr %367, i64 %370
  %372 = load i32, ptr %371, align 4, !tbaa !150
  %373 = zext i32 %372 to i64
  %374 = getelementptr inbounds i32, ptr %1, i64 %373
  %375 = load i32, ptr %374, align 4, !tbaa !118
  %376 = icmp eq i32 %375, -1
  %377 = select i1 %376, i32 %372, i32 %375
  %378 = getelementptr inbounds %struct.MEdge, ptr %367, i64 %370, i32 1
  %379 = load i32, ptr %378, align 4, !tbaa !153
  %380 = zext i32 %379 to i64
  %381 = getelementptr inbounds i32, ptr %1, i64 %380
  %382 = load i32, ptr %381, align 4, !tbaa !118
  %383 = icmp eq i32 %382, -1
  %384 = select i1 %383, i32 %379, i32 %382
  %385 = icmp eq i32 %377, %384
  br i1 %385, label %397, label %386

386:                                              ; preds = %361
  %387 = load i32, ptr %236, align 4, !tbaa !208
  %388 = add nsw i32 %387, %365
  %389 = add i32 %366, 1
  %390 = zext i32 %366 to i64
  %391 = getelementptr inbounds i32, ptr %41, i64 %390
  store i32 %388, ptr %391, align 4, !tbaa !118
  %392 = add i32 %363, 1
  %393 = zext i32 %363 to i64
  %394 = getelementptr inbounds %struct.MLoop, ptr %38, i64 %393
  %395 = load i64, ptr %362, align 4
  store i64 %395, ptr %394, align 4
  %396 = add nsw i32 %364, 1
  br label %397

397:                                              ; preds = %386, %361
  %398 = phi i32 [ %389, %386 ], [ %366, %361 ]
  %399 = phi i32 [ %396, %386 ], [ %364, %361 ]
  %400 = phi i32 [ %392, %386 ], [ %363, %361 ]
  %401 = add nuw nsw i32 %365, 1
  %402 = getelementptr inbounds %struct.MLoop, ptr %362, i64 1
  %403 = load i32, ptr %350, align 4, !tbaa !205
  %404 = icmp slt i32 %401, %403
  br i1 %404, label %361, label %405, !llvm.loop !260

405:                                              ; preds = %397, %353
  %406 = phi i32 [ %233, %353 ], [ %398, %397 ]
  %407 = phi i32 [ 0, %353 ], [ %399, %397 ]
  %408 = phi i32 [ %231, %353 ], [ %400, %397 ]
  %409 = icmp eq i32 %407, 0
  br i1 %409, label %424, label %410

410:                                              ; preds = %405
  %411 = icmp slt i32 %407, 3
  br i1 %411, label %412, label %415

412:                                              ; preds = %410
  %413 = sub i32 %406, %407
  %414 = sub i32 %408, %407
  br label %424

415:                                              ; preds = %410
  %416 = add i32 %235, 1
  %417 = zext i32 %235 to i64
  %418 = getelementptr inbounds %struct.MPoly, ptr %45, i64 %417
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %418, ptr noundef nonnull align 4 dereferenceable(12) %236, i64 12, i1 false), !tbaa.struct !261
  %419 = getelementptr inbounds %struct.MPoly, ptr %45, i64 %417, i32 1
  store i32 %407, ptr %419, align 4, !tbaa !205
  %420 = sub i32 %408, %407
  store i32 %420, ptr %418, align 4, !tbaa !208
  %421 = add i32 %234, 1
  %422 = zext i32 %234 to i64
  %423 = getelementptr inbounds i32, ptr %48, i64 %422
  store i32 %232, ptr %423, align 4, !tbaa !118
  br label %424

424:                                              ; preds = %405, %349, %415, %412
  %425 = phi i32 [ %235, %412 ], [ %416, %415 ], [ %235, %349 ], [ %235, %405 ]
  %426 = phi i32 [ %234, %412 ], [ %421, %415 ], [ %234, %349 ], [ %234, %405 ]
  %427 = phi i32 [ %413, %412 ], [ %406, %415 ], [ %233, %349 ], [ %406, %405 ]
  %428 = phi i32 [ %414, %412 ], [ %408, %415 ], [ %231, %349 ], [ %408, %405 ]
  %429 = add nuw nsw i32 %232, 1
  %430 = getelementptr inbounds %struct.MPoly, ptr %236, i64 1
  %431 = icmp eq i32 %429, %13
  br i1 %431, label %432, label %230, !llvm.loop !262

432:                                              ; preds = %424, %216
  %433 = phi i32 [ 0, %216 ], [ %425, %424 ]
  %434 = phi i32 [ 0, %216 ], [ %428, %424 ]
  %435 = icmp eq ptr %218, null
  br i1 %435, label %438, label %436

436:                                              ; preds = %432
  call void @BLI_gset_free(ptr noundef nonnull %218, ptr noundef null) #11
  %437 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %437(ptr noundef %217) #11
  br label %438

438:                                              ; preds = %436, %432
  %439 = call ptr @CDDM_from_template(ptr noundef %0, i32 noundef %56, i32 noundef %156, i32 noundef 0, i32 noundef %434, i32 noundef %433)
  %440 = getelementptr inbounds %struct.DerivedMesh, ptr %439, i64 0, i32 6
  %441 = load i32, ptr %440, align 4, !tbaa !226
  %442 = icmp sgt i32 %441, 0
  br i1 %442, label %443, label %446

443:                                              ; preds = %438
  %444 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %445 = getelementptr inbounds %struct.DerivedMesh, ptr %439, i64 0, i32 1
  br label %453

446:                                              ; preds = %470, %438
  %447 = getelementptr inbounds %struct.DerivedMesh, ptr %439, i64 0, i32 8
  %448 = load i32, ptr %447, align 4, !tbaa !228
  %449 = icmp sgt i32 %448, 0
  br i1 %449, label %450, label %479

450:                                              ; preds = %446
  %451 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %452 = getelementptr inbounds %struct.DerivedMesh, ptr %439, i64 0, i32 3
  br label %483

453:                                              ; preds = %443, %470
  %454 = phi i64 [ 0, %443 ], [ %474, %470 ]
  %455 = phi ptr [ %29, %443 ], [ %475, %470 ]
  %456 = load i32, ptr %455, align 4, !tbaa !150
  %457 = zext i32 %456 to i64
  %458 = getelementptr inbounds i32, ptr %25, i64 %457
  %459 = load i32, ptr %458, align 4, !tbaa !118
  %460 = icmp eq i32 %459, -1
  br i1 %460, label %462, label %461

461:                                              ; preds = %453
  store i32 %459, ptr %455, align 4, !tbaa !150
  br label %462

462:                                              ; preds = %461, %453
  %463 = getelementptr inbounds %struct.MEdge, ptr %455, i64 0, i32 1
  %464 = load i32, ptr %463, align 4, !tbaa !153
  %465 = zext i32 %464 to i64
  %466 = getelementptr inbounds i32, ptr %25, i64 %465
  %467 = load i32, ptr %466, align 4, !tbaa !118
  %468 = icmp eq i32 %467, -1
  br i1 %468, label %470, label %469

469:                                              ; preds = %462
  store i32 %467, ptr %463, align 4, !tbaa !153
  br label %470

470:                                              ; preds = %469, %462
  %471 = getelementptr inbounds i32, ptr %32, i64 %454
  %472 = load i32, ptr %471, align 4, !tbaa !118
  %473 = trunc i64 %454 to i32
  call void @CustomData_copy_data(ptr noundef nonnull %444, ptr noundef nonnull %445, i32 noundef %472, i32 noundef %473, i32 noundef 1) #11
  %474 = add nuw nsw i64 %454, 1
  %475 = getelementptr inbounds %struct.MEdge, ptr %455, i64 1
  %476 = load i32, ptr %440, align 4, !tbaa !226
  %477 = sext i32 %476 to i64
  %478 = icmp slt i64 %474, %477
  br i1 %478, label %453, label %446, !llvm.loop !263

479:                                              ; preds = %500, %446
  %480 = getelementptr inbounds %struct.DerivedMesh, ptr %439, i64 0, i32 5
  %481 = load i32, ptr %480, align 8, !tbaa !264
  %482 = icmp sgt i32 %481, 0
  br i1 %482, label %516, label %509

483:                                              ; preds = %450, %500
  %484 = phi i64 [ 0, %450 ], [ %504, %500 ]
  %485 = phi ptr [ %38, %450 ], [ %505, %500 ]
  %486 = getelementptr inbounds %struct.MLoop, ptr %485, i64 0, i32 1
  %487 = load i32, ptr %486, align 4, !tbaa !214
  %488 = zext i32 %487 to i64
  %489 = getelementptr inbounds i32, ptr %34, i64 %488
  %490 = load i32, ptr %489, align 4, !tbaa !118
  %491 = icmp eq i32 %490, -1
  br i1 %491, label %493, label %492

492:                                              ; preds = %483
  store i32 %490, ptr %486, align 4, !tbaa !214
  br label %493

493:                                              ; preds = %492, %483
  %494 = load i32, ptr %485, align 4, !tbaa !211
  %495 = zext i32 %494 to i64
  %496 = getelementptr inbounds i32, ptr %25, i64 %495
  %497 = load i32, ptr %496, align 4, !tbaa !118
  %498 = icmp eq i32 %497, -1
  br i1 %498, label %500, label %499

499:                                              ; preds = %493
  store i32 %497, ptr %485, align 4, !tbaa !211
  br label %500

500:                                              ; preds = %499, %493
  %501 = getelementptr inbounds i32, ptr %41, i64 %484
  %502 = load i32, ptr %501, align 4, !tbaa !118
  %503 = trunc i64 %484 to i32
  call void @CustomData_copy_data(ptr noundef nonnull %451, ptr noundef nonnull %452, i32 noundef %502, i32 noundef %503, i32 noundef 1) #11
  %504 = add nuw nsw i64 %484, 1
  %505 = getelementptr inbounds %struct.MLoop, ptr %485, i64 1
  %506 = load i32, ptr %447, align 4, !tbaa !228
  %507 = sext i32 %506 to i64
  %508 = icmp slt i64 %504, %507
  br i1 %508, label %483, label %479, !llvm.loop !265

509:                                              ; preds = %516, %479
  %510 = getelementptr inbounds %struct.DerivedMesh, ptr %439, i64 0, i32 9
  %511 = load i32, ptr %510, align 8, !tbaa !229
  %512 = icmp sgt i32 %511, 0
  br i1 %512, label %513, label %534

513:                                              ; preds = %509
  %514 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %515 = getelementptr inbounds %struct.DerivedMesh, ptr %439, i64 0, i32 4
  br label %525

516:                                              ; preds = %479, %516
  %517 = phi i64 [ %521, %516 ], [ 0, %479 ]
  %518 = getelementptr inbounds i32, ptr %21, i64 %517
  %519 = load i32, ptr %518, align 4, !tbaa !118
  %520 = trunc i64 %517 to i32
  call void @CustomData_copy_data(ptr noundef %0, ptr noundef %439, i32 noundef %519, i32 noundef %520, i32 noundef 1) #11
  %521 = add nuw nsw i64 %517, 1
  %522 = load i32, ptr %480, align 8, !tbaa !264
  %523 = sext i32 %522 to i64
  %524 = icmp slt i64 %521, %523
  br i1 %524, label %516, label %509, !llvm.loop !266

525:                                              ; preds = %513, %525
  %526 = phi i64 [ 0, %513 ], [ %530, %525 ]
  %527 = getelementptr inbounds i32, ptr %48, i64 %526
  %528 = load i32, ptr %527, align 4, !tbaa !118
  %529 = trunc i64 %526 to i32
  call void @CustomData_copy_data(ptr noundef nonnull %514, ptr noundef nonnull %515, i32 noundef %528, i32 noundef %529, i32 noundef 1) #11
  %530 = add nuw nsw i64 %526, 1
  %531 = load i32, ptr %510, align 8, !tbaa !229
  %532 = sext i32 %531 to i64
  %533 = icmp slt i64 %530, %532
  br i1 %533, label %525, label %534, !llvm.loop !267

534:                                              ; preds = %525, %509
  %535 = getelementptr inbounds %struct.CDDerivedMesh, ptr %439, i64 0, i32 1
  %536 = load ptr, ptr %535, align 8, !tbaa !34
  %537 = zext i32 %56 to i64
  %538 = mul nuw nsw i64 %537, 20
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %536, ptr align 4 %18, i64 %538, i1 false)
  %539 = getelementptr inbounds %struct.CDDerivedMesh, ptr %439, i64 0, i32 2
  %540 = load ptr, ptr %539, align 8, !tbaa !93
  %541 = zext i32 %156 to i64
  %542 = mul nuw nsw i64 %541, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %540, ptr align 4 %29, i64 %542, i1 false)
  %543 = getelementptr inbounds %struct.CDDerivedMesh, ptr %439, i64 0, i32 4
  %544 = load ptr, ptr %543, align 8, !tbaa !94
  %545 = zext i32 %434 to i64
  %546 = shl nuw nsw i64 %545, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %544, ptr align 4 %38, i64 %546, i1 false)
  %547 = getelementptr inbounds %struct.CDDerivedMesh, ptr %439, i64 0, i32 5
  %548 = load ptr, ptr %547, align 8, !tbaa !95
  %549 = zext i32 %433 to i64
  %550 = mul nuw nsw i64 %549, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %548, ptr align 4 %45, i64 %550, i1 false)
  %551 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %551(ptr noundef %18) #11
  %552 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %552(ptr noundef %29) #11
  %553 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %553(ptr noundef %38) #11
  %554 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %554(ptr noundef %45) #11
  %555 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %555(ptr noundef %25) #11
  %556 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %556(ptr noundef %34) #11
  %557 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %557(ptr noundef %21) #11
  %558 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %558(ptr noundef %32) #11
  %559 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %559(ptr noundef %41) #11
  %560 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %560(ptr noundef %48) #11
  call void @BLI_edgehash_free(ptr noundef %49, ptr noundef null) #11
  %561 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 10
  store i32 1, ptr %561, align 4, !tbaa !268
  %562 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 95
  %563 = load ptr, ptr %562, align 8, !tbaa !92
  call void %563(ptr noundef %0) #11
  ret ptr %439
}

declare ptr @BLI_edgehash_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_edgehash_lookup_p(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_edgehash_insert(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_gset_new_ex(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @poly_gset_hash_fn(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PolyKey, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !248
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i8 @poly_gset_compare_fn(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.PolyKey, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !248
  %5 = getelementptr inbounds %struct.PolyKey, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !248
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.PolyKey, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !247
  %11 = getelementptr inbounds %struct.PolyKey, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !247
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.PolyKey, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !246
  %17 = getelementptr inbounds %struct.PolyKey, ptr %1, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !246
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %14, %8, %2
  br label %21

21:                                               ; preds = %14, %20
  %22 = phi i8 [ 1, %20 ], [ 0, %14 ]
  ret i8 %22
}

declare void @BLI_gset_flag_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_gset_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mesh_vert_poly_map_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_gset_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @cddm_poly_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #6 {
  %6 = load i32, ptr %1, align 4, !tbaa !208
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.MLoop, ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !211
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %3, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !118
  %13 = icmp eq i32 %12, -1
  %14 = select i1 %13, i32 %9, i32 %12
  %15 = load i32, ptr %2, align 4, !tbaa !208
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.MLoop, ptr %0, i64 %16
  %18 = getelementptr inbounds %struct.MPoly, ptr %2, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !205
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %121

21:                                               ; preds = %5
  %22 = load i32, ptr %17, align 4, !tbaa !211
  %23 = icmp eq i32 %22, %14
  br i1 %23, label %35, label %28

24:                                               ; preds = %28
  %25 = getelementptr inbounds %struct.MLoop, ptr %30, i64 1
  %26 = load i32, ptr %25, align 4, !tbaa !211
  %27 = icmp eq i32 %26, %14
  br i1 %27, label %33, label %28, !llvm.loop !269

28:                                               ; preds = %21, %24
  %29 = phi i32 [ %31, %24 ], [ 0, %21 ]
  %30 = phi ptr [ %25, %24 ], [ %17, %21 ]
  %31 = add nuw nsw i32 %29, 1
  %32 = icmp eq i32 %31, %19
  br i1 %32, label %121, label %24, !llvm.loop !269

33:                                               ; preds = %24
  %34 = icmp slt i32 %31, %19
  br label %35

35:                                               ; preds = %33, %21
  %36 = phi i1 [ %34, %33 ], [ %20, %21 ]
  %37 = phi ptr [ %25, %33 ], [ %17, %21 ]
  %38 = phi i32 [ %31, %33 ], [ 0, %21 ]
  br i1 %36, label %39, label %121

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.MPoly, ptr %1, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !205
  %42 = add nsw i32 %19, -1
  br label %43

43:                                               ; preds = %39, %107
  %44 = phi i32 [ %87, %107 ], [ %14, %39 ]
  %45 = phi i32 [ %85, %107 ], [ 0, %39 ]
  %46 = phi i32 [ %91, %107 ], [ 0, %39 ]
  %47 = phi i8 [ %88, %107 ], [ 0, %39 ]
  %48 = phi ptr [ %89, %107 ], [ %8, %39 ]
  %49 = phi ptr [ %115, %107 ], [ %37, %39 ]
  %50 = load i32, ptr %49, align 4, !tbaa !211
  %51 = add nsw i32 %45, 1
  %52 = icmp eq i32 %51, %41
  br i1 %52, label %68, label %53

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.MLoop, ptr %48, i64 1
  %55 = load i32, ptr %54, align 4, !tbaa !211
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, ptr %3, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !118
  %59 = icmp eq i32 %58, -1
  %60 = select i1 %59, i32 %55, i32 %58
  %61 = icmp eq i32 %60, %50
  br i1 %61, label %62, label %84, !llvm.loop !270

62:                                               ; preds = %53, %75
  %63 = phi i32 [ %82, %75 ], [ %60, %53 ]
  %64 = phi ptr [ %76, %75 ], [ %54, %53 ]
  %65 = phi i32 [ %66, %75 ], [ %51, %53 ]
  %66 = add nsw i32 %65, 1
  %67 = icmp eq i32 %66, %41
  br i1 %67, label %68, label %75, !llvm.loop !270

68:                                               ; preds = %62, %43
  %69 = phi i32 [ %44, %43 ], [ %63, %62 ]
  %70 = phi ptr [ %48, %43 ], [ %64, %62 ]
  %71 = phi i32 [ %51, %43 ], [ %41, %62 ]
  %72 = phi i1 [ %52, %43 ], [ %67, %62 ]
  %73 = icmp eq i32 %46, %42
  %74 = zext i1 %73 to i8
  br label %84

75:                                               ; preds = %62
  %76 = getelementptr inbounds %struct.MLoop, ptr %64, i64 1
  %77 = load i32, ptr %76, align 4, !tbaa !211
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, ptr %3, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !118
  %81 = icmp eq i32 %80, -1
  %82 = select i1 %81, i32 %77, i32 %80
  %83 = icmp eq i32 %82, %50
  br i1 %83, label %62, label %84, !llvm.loop !270

84:                                               ; preds = %75, %53, %68
  %85 = phi i32 [ %71, %68 ], [ %51, %53 ], [ %66, %75 ]
  %86 = phi i1 [ %72, %68 ], [ %52, %53 ], [ %67, %75 ]
  %87 = phi i32 [ %69, %68 ], [ %60, %53 ], [ %82, %75 ]
  %88 = phi i8 [ %74, %68 ], [ %47, %53 ], [ %47, %75 ]
  %89 = phi ptr [ %70, %68 ], [ %54, %53 ], [ %76, %75 ]
  br i1 %86, label %118, label %90

90:                                               ; preds = %84
  %91 = add nuw nsw i32 %46, 1
  %92 = icmp eq i32 %91, %19
  br i1 %92, label %93, label %107

93:                                               ; preds = %90
  %94 = icmp slt i32 %85, %41
  br i1 %94, label %95, label %118

95:                                               ; preds = %93, %103
  %96 = phi ptr [ %105, %103 ], [ %89, %93 ]
  %97 = phi i32 [ %104, %103 ], [ %85, %93 ]
  %98 = load i32, ptr %96, align 4, !tbaa !211
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, ptr %3, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !118
  %102 = icmp eq i32 %101, %14
  br i1 %102, label %103, label %118

103:                                              ; preds = %95
  %104 = add i32 %97, 1
  %105 = getelementptr inbounds %struct.MLoop, ptr %96, i64 1
  %106 = icmp eq i32 %104, %41
  br i1 %106, label %118, label %95, !llvm.loop !271

107:                                              ; preds = %90
  %108 = mul nsw i32 %91, %4
  %109 = add nsw i32 %108, %38
  %110 = srem i32 %109, %19
  %111 = icmp slt i32 %110, 0
  %112 = select i1 %111, i32 %19, i32 0
  %113 = add nsw i32 %112, %110
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.MLoop, ptr %17, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !211
  %117 = icmp eq i32 %116, %87
  br i1 %117, label %43, label %118, !llvm.loop !272

118:                                              ; preds = %107, %84, %95, %103, %93
  %119 = phi i8 [ 1, %93 ], [ 1, %103 ], [ 0, %95 ], [ %88, %84 ], [ 0, %107 ]
  %120 = zext nneg i8 %119 to i32
  br label %121

121:                                              ; preds = %28, %5, %35, %118
  %122 = phi i32 [ %120, %118 ], [ 0, %35 ], [ 0, %5 ], [ 0, %28 ]
  ret i32 %122
}

declare void @BLI_gset_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CustomData_copy_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_edgehash_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @CDDM_calc_edges_tessface(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.CustomData, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %2) #11
  %3 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = shl nsw i32 %6, 1
  %8 = tail call ptr @BLI_edgeset_new_ex(ptr noundef nonnull @__func__.CDDM_calc_edges_tessface, i32 noundef %7) #11
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %1, %28
  %11 = phi ptr [ %33, %28 ], [ %4, %1 ]
  %12 = phi i32 [ %32, %28 ], [ 0, %1 ]
  %13 = load i32, ptr %11, align 4, !tbaa !164
  %14 = getelementptr inbounds %struct.MFace, ptr %11, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !166
  %16 = tail call zeroext i8 @BLI_edgeset_add(ptr noundef %8, i32 noundef %13, i32 noundef %15) #11
  %17 = load i32, ptr %14, align 4, !tbaa !166
  %18 = getelementptr inbounds %struct.MFace, ptr %11, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !167
  %20 = tail call zeroext i8 @BLI_edgeset_add(ptr noundef %8, i32 noundef %17, i32 noundef %19) #11
  %21 = getelementptr inbounds %struct.MFace, ptr %11, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !168
  %23 = icmp eq i32 %22, 0
  %24 = load i32, ptr %18, align 4, !tbaa !167
  br i1 %23, label %28, label %25

25:                                               ; preds = %10
  %26 = tail call zeroext i8 @BLI_edgeset_add(ptr noundef %8, i32 noundef %24, i32 noundef %22) #11
  %27 = load i32, ptr %21, align 4, !tbaa !168
  br label %28

28:                                               ; preds = %10, %25
  %29 = phi i32 [ %27, %25 ], [ %24, %10 ]
  %30 = load i32, ptr %11, align 4, !tbaa !164
  %31 = tail call zeroext i8 @BLI_edgeset_add(ptr noundef %8, i32 noundef %29, i32 noundef %30) #11
  %32 = add nuw nsw i32 %12, 1
  %33 = getelementptr inbounds %struct.MFace, ptr %11, i64 1
  %34 = icmp eq i32 %32, %6
  br i1 %34, label %35, label %10, !llvm.loop !273

35:                                               ; preds = %28, %1
  %36 = tail call i32 @BLI_edgeset_size(ptr noundef %8) #11
  call void @CustomData_reset(ptr noundef nonnull %2) #11
  %37 = call ptr @CustomData_add_layer(ptr noundef nonnull %2, i32 noundef 3, i32 noundef 1, ptr noundef null, i32 noundef %36) #11
  %38 = call ptr @CustomData_add_layer(ptr noundef nonnull %2, i32 noundef 7, i32 noundef 1, ptr noundef null, i32 noundef %36) #11
  %39 = call ptr @CustomData_get_layer(ptr noundef nonnull %2, i32 noundef 3) #11
  %40 = call ptr @CustomData_get_layer(ptr noundef nonnull %2, i32 noundef 7) #11
  %41 = call ptr @BLI_edgehashIterator_new(ptr noundef %8) #11
  %42 = getelementptr inbounds %struct.EdgeHashIterator, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !274
  %44 = icmp eq ptr %43, null
  br i1 %44, label %59, label %45

45:                                               ; preds = %35, %45
  %46 = phi ptr [ %57, %45 ], [ %43, %35 ]
  %47 = phi ptr [ %55, %45 ], [ %39, %35 ]
  %48 = phi ptr [ %56, %45 ], [ %40, %35 ]
  %49 = getelementptr inbounds %struct.MEdge, ptr %47, i64 0, i32 1
  %50 = getelementptr inbounds %struct._eh_Entry, ptr %46, i64 0, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !276
  store i32 %51, ptr %47, align 4, !tbaa !118
  %52 = getelementptr inbounds %struct._eh_Entry, ptr %46, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !278
  store i32 %53, ptr %49, align 4, !tbaa !118
  %54 = getelementptr inbounds %struct.MEdge, ptr %47, i64 0, i32 4
  store i16 34, ptr %54, align 2, !tbaa !154
  store i32 -1, ptr %48, align 4, !tbaa !118
  call void @BLI_edgehashIterator_step(ptr noundef %41) #11
  %55 = getelementptr inbounds %struct.MEdge, ptr %47, i64 1
  %56 = getelementptr inbounds i32, ptr %48, i64 1
  %57 = load ptr, ptr %42, align 8, !tbaa !274
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %45, !llvm.loop !279

59:                                               ; preds = %45, %35
  call void @BLI_edgehashIterator_free(ptr noundef %41) #11
  %60 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %61 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %62 = load i32, ptr %61, align 4, !tbaa !126
  call void @CustomData_free(ptr noundef nonnull %60, i32 noundef %62) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %60, ptr noundef nonnull align 8 dereferenceable(200) %2, i64 200, i1 false), !tbaa.struct !280
  store i32 %36, ptr %61, align 4, !tbaa !126
  %63 = call ptr @CustomData_get_layer(ptr noundef nonnull %60, i32 noundef 3) #11
  %64 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 2
  store ptr %63, ptr %64, align 8, !tbaa !93
  call void @BLI_edgeset_free(ptr noundef %8) #11
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %2) #11
  ret void
}

declare ptr @BLI_edgeset_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_edgeset_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BLI_edgeset_size(ptr noundef) local_unnamed_addr #2

declare void @CustomData_reset(ptr noundef) local_unnamed_addr #2

declare void @CustomData_free(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_edgeset_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @CDDM_calc_edges(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.CustomData, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %2) #11
  %3 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 4, !tbaa !44
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !126
  %11 = tail call ptr @DM_get_edge_data_layer(ptr noundef %0, i32 noundef 7) #11
  %12 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  %14 = icmp ne ptr %13, null
  %15 = select i1 %14, i32 %10, i32 0
  %16 = sdiv i32 %8, 2
  %17 = tail call i32 @llvm.smax.i32(i32 %16, i32 %15)
  %18 = tail call ptr @BLI_edgehash_new_ex(ptr noundef nonnull @__func__.CDDM_calc_edges, i32 noundef %17) #11
  %19 = icmp sgt i32 %10, 0
  %20 = select i1 %14, i1 %19, i1 false
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = zext i32 %10 to i64
  br label %23

23:                                               ; preds = %21, %23
  %24 = phi i64 [ 0, %21 ], [ %29, %23 ]
  %25 = phi ptr [ %13, %21 ], [ %31, %23 ]
  %26 = load i32, ptr %25, align 4, !tbaa !150
  %27 = getelementptr inbounds %struct.MEdge, ptr %25, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !153
  %29 = add nuw nsw i64 %24, 1
  %30 = inttoptr i64 %29 to ptr
  tail call void @BLI_edgehash_insert(ptr noundef %18, i32 noundef %26, i32 noundef %28, ptr noundef nonnull %30) #11
  %31 = getelementptr inbounds %struct.MEdge, ptr %25, i64 1
  %32 = icmp eq i64 %29, %22
  br i1 %32, label %33, label %23, !llvm.loop !281

33:                                               ; preds = %23, %1
  %34 = icmp sgt i32 %6, 0
  br i1 %34, label %35, label %69

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 4
  br label %37

37:                                               ; preds = %35, %65
  %38 = phi ptr [ %4, %35 ], [ %67, %65 ]
  %39 = phi i32 [ 0, %35 ], [ %66, %65 ]
  %40 = getelementptr inbounds %struct.MPoly, ptr %38, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !205
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %37
  %44 = load ptr, ptr %36, align 8, !tbaa !94
  %45 = load i32, ptr %38, align 4, !tbaa !208
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.MLoop, ptr %44, i64 %46
  br label %48

48:                                               ; preds = %43, %48
  %49 = phi i32 [ %63, %48 ], [ %41, %43 ]
  %50 = phi ptr [ %62, %48 ], [ %47, %43 ]
  %51 = phi i32 [ %55, %48 ], [ 0, %43 ]
  %52 = load i32, ptr %50, align 4, !tbaa !211
  %53 = load ptr, ptr %36, align 8, !tbaa !94
  %54 = load i32, ptr %38, align 4, !tbaa !208
  %55 = add nuw nsw i32 %51, 1
  %56 = srem i32 %55, %49
  %57 = add nsw i32 %56, %54
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.MLoop, ptr %53, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !211
  %61 = tail call zeroext i8 @BLI_edgehash_reinsert(ptr noundef %18, i32 noundef %52, i32 noundef %60, ptr noundef null) #11
  %62 = getelementptr inbounds %struct.MLoop, ptr %50, i64 1
  %63 = load i32, ptr %40, align 4, !tbaa !205
  %64 = icmp slt i32 %55, %63
  br i1 %64, label %48, label %65, !llvm.loop !282

65:                                               ; preds = %48, %37
  %66 = add nuw nsw i32 %39, 1
  %67 = getelementptr inbounds %struct.MPoly, ptr %38, i64 1
  %68 = icmp eq i32 %66, %6
  br i1 %68, label %69, label %37, !llvm.loop !283

69:                                               ; preds = %65, %33
  %70 = tail call i32 @BLI_edgehash_size(ptr noundef %18) #11
  call void @CustomData_reset(ptr noundef nonnull %2) #11
  %71 = call ptr @CustomData_add_layer(ptr noundef nonnull %2, i32 noundef 3, i32 noundef 1, ptr noundef null, i32 noundef %70) #11
  %72 = call ptr @CustomData_add_layer(ptr noundef nonnull %2, i32 noundef 7, i32 noundef 1, ptr noundef null, i32 noundef %70) #11
  %73 = load ptr, ptr %12, align 8, !tbaa !93
  %74 = call ptr @CustomData_get_layer(ptr noundef nonnull %2, i32 noundef 3) #11
  %75 = call ptr @CustomData_get_layer(ptr noundef nonnull %2, i32 noundef 7) #11
  %76 = call ptr @BLI_edgehashIterator_new(ptr noundef %18) #11
  %77 = getelementptr inbounds %struct.EdgeHashIterator, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !274
  %79 = icmp eq ptr %78, null
  br i1 %79, label %115, label %80

80:                                               ; preds = %69, %107
  %81 = phi i64 [ %110, %107 ], [ 0, %69 ]
  %82 = phi ptr [ %113, %107 ], [ %78, %69 ]
  %83 = phi ptr [ %112, %107 ], [ %75, %69 ]
  %84 = phi ptr [ %111, %107 ], [ %74, %69 ]
  %85 = getelementptr inbounds %struct.MEdge, ptr %84, i64 0, i32 1
  %86 = getelementptr inbounds %struct._eh_Entry, ptr %82, i64 0, i32 1
  %87 = load i32, ptr %86, align 8, !tbaa !276
  store i32 %87, ptr %84, align 4, !tbaa !118
  %88 = getelementptr inbounds %struct._eh_Entry, ptr %82, i64 0, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !278
  store i32 %89, ptr %85, align 4, !tbaa !118
  %90 = getelementptr inbounds %struct._eh_Entry, ptr %82, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !284
  %92 = ptrtoint ptr %91 to i64
  %93 = and i64 %92, 4294967295
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %80
  %96 = getelementptr inbounds %struct.MEdge, ptr %84, i64 0, i32 4
  store i16 34, ptr %96, align 2, !tbaa !154
  br label %107

97:                                               ; preds = %80
  %98 = shl i64 %92, 32
  %99 = add i64 %98, -4294967296
  %100 = ashr exact i64 %99, 32
  %101 = getelementptr inbounds %struct.MEdge, ptr %73, i64 %100, i32 4
  %102 = load i16, ptr %101, align 2, !tbaa !154
  %103 = or i16 %102, 34
  %104 = getelementptr inbounds %struct.MEdge, ptr %84, i64 0, i32 4
  store i16 %103, ptr %104, align 2, !tbaa !154
  %105 = getelementptr inbounds i32, ptr %11, i64 %100
  %106 = load i32, ptr %105, align 4, !tbaa !118
  br label %107

107:                                              ; preds = %97, %95
  %108 = phi i32 [ %106, %97 ], [ -1, %95 ]
  store i32 %108, ptr %83, align 4, !tbaa !118
  %109 = inttoptr i64 %81 to ptr
  store ptr %109, ptr %90, align 8, !tbaa !284
  call void @BLI_edgehashIterator_step(ptr noundef %76) #11
  %110 = add nuw i64 %81, 1
  %111 = getelementptr inbounds %struct.MEdge, ptr %84, i64 1
  %112 = getelementptr inbounds i32, ptr %83, i64 1
  %113 = load ptr, ptr %77, align 8, !tbaa !274
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %80, !llvm.loop !285

115:                                              ; preds = %107, %69
  call void @BLI_edgehashIterator_free(ptr noundef %76) #11
  %116 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %117 = load i32, ptr %9, align 4, !tbaa !126
  call void @CustomData_free(ptr noundef nonnull %116, i32 noundef %117) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %116, ptr noundef nonnull align 8 dereferenceable(200) %2, i64 200, i1 false), !tbaa.struct !280
  store i32 %70, ptr %9, align 4, !tbaa !126
  %118 = call ptr @CustomData_get_layer(ptr noundef nonnull %116, i32 noundef 3) #11
  store ptr %118, ptr %12, align 8, !tbaa !93
  %119 = icmp sgt i32 %6, 0
  br i1 %119, label %120, label %158

120:                                              ; preds = %115
  %121 = load ptr, ptr %3, align 8, !tbaa !95
  %122 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 4
  br label %123

123:                                              ; preds = %120, %154
  %124 = phi ptr [ %121, %120 ], [ %156, %154 ]
  %125 = phi i32 [ 0, %120 ], [ %155, %154 ]
  %126 = getelementptr inbounds %struct.MPoly, ptr %124, i64 0, i32 1
  %127 = load i32, ptr %126, align 4, !tbaa !205
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %154

129:                                              ; preds = %123
  %130 = load ptr, ptr %122, align 8, !tbaa !94
  %131 = load i32, ptr %124, align 4, !tbaa !208
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.MLoop, ptr %130, i64 %132
  br label %134

134:                                              ; preds = %129, %134
  %135 = phi i32 [ %152, %134 ], [ %127, %129 ]
  %136 = phi ptr [ %151, %134 ], [ %133, %129 ]
  %137 = phi i32 [ %141, %134 ], [ 0, %129 ]
  %138 = load i32, ptr %136, align 4, !tbaa !211
  %139 = load ptr, ptr %122, align 8, !tbaa !94
  %140 = load i32, ptr %124, align 4, !tbaa !208
  %141 = add nuw nsw i32 %137, 1
  %142 = srem i32 %141, %135
  %143 = add nsw i32 %142, %140
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.MLoop, ptr %139, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !211
  %147 = call ptr @BLI_edgehash_lookup(ptr noundef %18, i32 noundef %138, i32 noundef %146) #11
  %148 = ptrtoint ptr %147 to i64
  %149 = trunc i64 %148 to i32
  %150 = getelementptr inbounds %struct.MLoop, ptr %136, i64 0, i32 1
  store i32 %149, ptr %150, align 4, !tbaa !214
  %151 = getelementptr inbounds %struct.MLoop, ptr %136, i64 1
  %152 = load i32, ptr %126, align 4, !tbaa !205
  %153 = icmp slt i32 %141, %152
  br i1 %153, label %134, label %154, !llvm.loop !286

154:                                              ; preds = %134, %123
  %155 = add nuw nsw i32 %125, 1
  %156 = getelementptr inbounds %struct.MPoly, ptr %124, i64 1
  %157 = icmp eq i32 %155, %6
  br i1 %157, label %158, label %123, !llvm.loop !287

158:                                              ; preds = %154, %115
  call void @BLI_edgehash_free(ptr noundef %18, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %2) #11
  ret void
}

declare ptr @DM_get_edge_data_layer(ptr noundef, i32 noundef) #2

declare zeroext i8 @BLI_edgehash_reinsert(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_edgehash_size(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_edgehashIterator_new(ptr noundef) local_unnamed_addr #2

declare void @BLI_edgehashIterator_step(ptr noundef) local_unnamed_addr #2

declare void @BLI_edgehashIterator_free(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_edgehash_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @CDDM_lower_num_verts(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !125
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = sub nsw i32 %4, %1
  tail call void @CustomData_free_elem(ptr noundef %0, i32 noundef %1, i32 noundef %7) #11
  br label %8

8:                                                ; preds = %6, %2
  store i32 %1, ptr %3, align 8, !tbaa !125
  ret void
}

declare void @CustomData_free_elem(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @CDDM_lower_num_edges(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !126
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %8 = sub nsw i32 %4, %1
  tail call void @CustomData_free_elem(ptr noundef nonnull %7, i32 noundef %1, i32 noundef %8) #11
  br label %9

9:                                                ; preds = %6, %2
  store i32 %1, ptr %3, align 4, !tbaa !126
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CDDM_lower_num_tessfaces(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !43
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %8 = sub nsw i32 %4, %1
  tail call void @CustomData_free_elem(ptr noundef nonnull %7, i32 noundef %1, i32 noundef %8) #11
  br label %9

9:                                                ; preds = %6, %2
  store i32 %1, ptr %3, align 8, !tbaa !43
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CDDM_lower_num_loops(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !44
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %8 = sub nsw i32 %4, %1
  tail call void @CustomData_free_elem(ptr noundef nonnull %7, i32 noundef %1, i32 noundef %8) #11
  br label %9

9:                                                ; preds = %6, %2
  store i32 %1, ptr %3, align 4, !tbaa !44
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CDDM_lower_num_polys(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !45
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %8 = sub nsw i32 %4, %1
  tail call void @CustomData_free_elem(ptr noundef nonnull %7, i32 noundef %1, i32 noundef %8) #11
  br label %9

9:                                                ; preds = %6, %2
  store i32 %1, ptr %3, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @CDDM_get_vert(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.MVert, ptr %4, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @CDDM_get_edge(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.MEdge, ptr %4, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @CDDM_get_tessface(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.MFace, ptr %4, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @CDDM_get_loop(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !94
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.MLoop, ptr %4, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @CDDM_get_poly(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.MPoly, ptr %4, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @CDDM_get_verts(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @CDDM_get_edges(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @CDDM_get_tessfaces(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @CDDM_tessfaces_to_faces(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !226
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !227
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 4, !tbaa !228
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !229
  %13 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !93
  %15 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 4
  %18 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 5
  tail call void @BKE_mesh_convert_mfaces_to_mpolys_ex(ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, ptr noundef %14, ptr noundef %16, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %17, ptr noundef nonnull %18) #11
  ret void
}

declare void @BKE_mesh_convert_mfaces_to_mpolys_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @CDDM_set_mvert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %0, i32 noundef 0) #11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !125
  %8 = tail call ptr @CustomData_add_layer(ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef %1, i32 noundef %7) #11
  br label %9

9:                                                ; preds = %5, %2
  %10 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  store ptr %1, ptr %10, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CDDM_set_medge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %4 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %3, i32 noundef 3) #11
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !126
  %9 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %3, i32 noundef 3, i32 noundef 0, ptr noundef %1, i32 noundef %8) #11
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 2
  store ptr %1, ptr %11, align 8, !tbaa !93
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CDDM_set_mface(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %4 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %3, i32 noundef 4) #11
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !43
  %9 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %3, i32 noundef 4, i32 noundef 0, ptr noundef %1, i32 noundef %8) #11
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  store ptr %1, ptr %11, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CDDM_set_mloop(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %4 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %3, i32 noundef 26) #11
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 4, !tbaa !44
  %9 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %3, i32 noundef 26, i32 noundef 0, ptr noundef %1, i32 noundef %8) #11
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 4
  store ptr %1, ptr %11, align 8, !tbaa !94
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CDDM_set_mpoly(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %4 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %3, i32 noundef 25) #11
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !45
  %9 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %3, i32 noundef 25, i32 noundef 0, ptr noundef %1, i32 noundef %8) #11
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 5
  store ptr %1, ptr %11, align 8, !tbaa !95
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdDM_getMinMax(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !125
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %4, align 8, !tbaa !125
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i64 [ 0, %10 ], [ %16, %12 ]
  %14 = load ptr, ptr %11, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.MVert, ptr %14, i64 %13
  tail call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef %15) #11
  %16 = add nuw nsw i64 %13, 1
  %17 = load i32, ptr %4, align 8, !tbaa !125
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %12, label %25, !llvm.loop !288

20:                                               ; preds = %3
  store float 0.000000e+00, ptr %1, align 4, !tbaa !133
  %21 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %21, align 4, !tbaa !133
  %22 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %22, align 4, !tbaa !133
  store float 0.000000e+00, ptr %2, align 4, !tbaa !133
  %23 = getelementptr inbounds float, ptr %2, i64 1
  store float 0.000000e+00, ptr %23, align 4, !tbaa !133
  %24 = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %24, align 4, !tbaa !133
  br label %25

25:                                               ; preds = %12, %7, %20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @cdDM_getNumVerts(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !125
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @cdDM_getNumEdges(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !126
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @cdDM_getNumTessFaces(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !43
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @cdDM_getNumLoops(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !44
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @cdDM_getNumPolys(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !45
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @cdDM_getVert(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.MVert, ptr %5, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %7, i64 20, i1 false), !tbaa.struct !239
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @cdDM_getEdge(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.MEdge, ptr %5, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !242
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @cdDM_getTessFace(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.MFace, ptr %5, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %7, i64 20, i1 false), !tbaa.struct !289
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @cdDM_copyVertArray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !125
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %4, i64 %8, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @cdDM_copyEdgeArray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !126
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %4, i64 %8, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @cdDM_copyTessFaceArray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %4, i64 %8, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @cdDM_copyLoopArray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 4, !tbaa !44
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %4, i64 %8, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @cdDM_copyPolyArray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !45
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %4, i64 %8, i1 false)
  ret void
}

declare ptr @DM_get_vert_data(ptr noundef, i32 noundef, i32 noundef) #2

declare ptr @DM_get_edge_data(ptr noundef, i32 noundef, i32 noundef) #2

declare ptr @DM_get_tessface_data(ptr noundef, i32 noundef, i32 noundef) #2

declare ptr @DM_get_vert_data_layer(ptr noundef, i32 noundef) #2

declare ptr @DM_get_tessface_data_layer(ptr noundef, i32 noundef) #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @cdDM_getVertCos(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !125
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = zext nneg i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %10
  %11 = phi i64 [ 0, %6 ], [ %21, %10 ]
  %12 = phi ptr [ %8, %6 ], [ %22, %10 ]
  %13 = getelementptr inbounds [3 x float], ptr %1, i64 %11
  %14 = load float, ptr %12, align 4, !tbaa !133
  store float %14, ptr %13, align 4, !tbaa !133
  %15 = getelementptr inbounds float, ptr %12, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !133
  %17 = getelementptr inbounds float, ptr %13, i64 1
  store float %16, ptr %17, align 4, !tbaa !133
  %18 = getelementptr inbounds float, ptr %12, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !133
  %20 = getelementptr inbounds float, ptr %13, i64 2
  store float %19, ptr %20, align 4, !tbaa !133
  %21 = add nuw nsw i64 %11, 1
  %22 = getelementptr inbounds %struct.MVert, ptr %12, i64 1
  %23 = icmp eq i64 %21, %9
  br i1 %23, label %24, label %10, !llvm.loop !290

24:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @cdDM_getVertCo(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.MVert, ptr %5, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !133
  store float %8, ptr %2, align 4, !tbaa !133
  %9 = getelementptr inbounds float, ptr %7, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !133
  %11 = getelementptr inbounds float, ptr %2, i64 1
  store float %10, ptr %11, align 4, !tbaa !133
  %12 = getelementptr inbounds float, ptr %7, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !133
  %14 = getelementptr inbounds float, ptr %2, i64 2
  store float %13, ptr %14, align 4, !tbaa !133
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @cdDM_getVertNo(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.MVert, ptr %5, i64 %6, i32 1
  %8 = load i16, ptr %7, align 2, !tbaa !136
  %9 = sitofp i16 %8 to float
  %10 = fmul float %9, 0x3F00002000000000
  store float %10, ptr %2, align 4, !tbaa !133
  %11 = getelementptr inbounds i16, ptr %7, i64 1
  %12 = load i16, ptr %11, align 2, !tbaa !136
  %13 = sitofp i16 %12 to float
  %14 = fmul float %13, 0x3F00002000000000
  %15 = getelementptr inbounds float, ptr %2, i64 1
  store float %14, ptr %15, align 4, !tbaa !133
  %16 = getelementptr inbounds i16, ptr %7, i64 2
  %17 = load i16, ptr %16, align 2, !tbaa !136
  %18 = sitofp i16 %17 to float
  %19 = fmul float %18, 0x3F00002000000000
  %20 = getelementptr inbounds float, ptr %2, i64 2
  store float %19, ptr %20, align 4, !tbaa !133
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @cdDM_getPBVH(ptr noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CDDerivedMesh, ptr %1, i64 0, i32 6
  store ptr null, ptr %5, align 8, !tbaa !291
  br label %150

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !292
  %9 = icmp eq ptr %8, null
  br i1 %9, label %150, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.SculptSession, ptr %8, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !293
  %13 = icmp eq ptr %12, null
  br i1 %13, label %44, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.CDDerivedMesh, ptr %1, i64 0, i32 6
  store ptr %12, ptr %15, align 8, !tbaa !291
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !114
  %18 = getelementptr inbounds %struct.SculptSession, ptr %8, i64 0, i32 17
  %19 = load i8, ptr %18, align 1, !tbaa !295
  %20 = getelementptr inbounds %struct.SculptSession, ptr %8, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !296
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 114
  %25 = load i8, ptr %24, align 1, !tbaa !297
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  br label %28

28:                                               ; preds = %23, %14
  %29 = phi i8 [ 0, %14 ], [ %27, %23 ]
  %30 = or i8 %29, %19
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.CDDerivedMesh, ptr %1, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = getelementptr inbounds %struct.Mesh, ptr %17, i64 0, i32 15
  %36 = load ptr, ptr %35, align 8, !tbaa !298
  %37 = icmp eq ptr %34, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = icmp ne ptr %21, null
  %40 = zext i1 %39 to i8
  br label %41

41:                                               ; preds = %28, %32, %38
  %42 = phi i8 [ 0, %28 ], [ 1, %32 ], [ %40, %38 ]
  %43 = getelementptr inbounds %struct.CDDerivedMesh, ptr %1, i64 0, i32 7
  store i8 %42, ptr %43, align 8, !tbaa !299
  br label %44

44:                                               ; preds = %41, %10
  %45 = getelementptr inbounds %struct.CDDerivedMesh, ptr %1, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !291
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %70

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.SculptSession, ptr %8, i64 0, i32 10
  %50 = load ptr, ptr %49, align 8, !tbaa !300
  %51 = icmp eq ptr %50, null
  br i1 %51, label %70, label %52

52:                                               ; preds = %48
  %53 = tail call ptr @BKE_pbvh_new() #11
  store ptr %53, ptr %45, align 8, !tbaa !291
  %54 = getelementptr inbounds %struct.CDDerivedMesh, ptr %1, i64 0, i32 7
  store i8 1, ptr %54, align 8, !tbaa !299
  %55 = load ptr, ptr %7, align 8, !tbaa !292
  %56 = getelementptr inbounds %struct.SculptSession, ptr %55, i64 0, i32 10
  %57 = load ptr, ptr %56, align 8, !tbaa !300
  %58 = getelementptr inbounds %struct.SculptSession, ptr %55, i64 0, i32 13
  %59 = load i8, ptr %58, align 8, !tbaa !301
  %60 = getelementptr inbounds %struct.SculptSession, ptr %55, i64 0, i32 14
  %61 = load ptr, ptr %60, align 8, !tbaa !302
  %62 = getelementptr inbounds %struct.SculptSession, ptr %55, i64 0, i32 11
  %63 = load i32, ptr %62, align 8, !tbaa !303
  %64 = getelementptr inbounds %struct.SculptSession, ptr %55, i64 0, i32 12
  %65 = load i32, ptr %64, align 4, !tbaa !304
  tail call void @BKE_pbvh_build_bmesh(ptr noundef %53, ptr noundef %57, i8 noundef zeroext %59, ptr noundef %61, i32 noundef %63, i32 noundef %65) #11
  %66 = load ptr, ptr %45, align 8, !tbaa !291
  %67 = load ptr, ptr %7, align 8, !tbaa !292
  %68 = getelementptr inbounds %struct.SculptSession, ptr %67, i64 0, i32 16
  %69 = load i8, ptr %68, align 8, !tbaa !305
  tail call void @pbvh_show_diffuse_color_set(ptr noundef %66, i8 noundef zeroext %69) #11
  br label %70

70:                                               ; preds = %52, %48, %44
  %71 = load ptr, ptr %45, align 8, !tbaa !291
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %148

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %75 = load i16, ptr %74, align 8, !tbaa !306
  %76 = icmp eq i16 %75, 1
  br i1 %76, label %77, label %148

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %79 = load ptr, ptr %78, align 8, !tbaa !114
  %80 = tail call ptr @BKE_pbvh_new() #11
  store ptr %80, ptr %45, align 8, !tbaa !291
  %81 = load ptr, ptr %78, align 8, !tbaa !114
  %82 = load ptr, ptr %7, align 8, !tbaa !292
  %83 = getelementptr inbounds %struct.SculptSession, ptr %82, i64 0, i32 17
  %84 = load i8, ptr %83, align 1, !tbaa !295
  %85 = getelementptr inbounds %struct.SculptSession, ptr %82, i64 0, i32 7
  %86 = load ptr, ptr %85, align 8, !tbaa !296
  %87 = icmp eq ptr %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %77
  %89 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 114
  %90 = load i8, ptr %89, align 1, !tbaa !297
  %91 = and i8 %90, 1
  %92 = xor i8 %91, 1
  br label %93

93:                                               ; preds = %88, %77
  %94 = phi i8 [ 0, %77 ], [ %92, %88 ]
  %95 = or i8 %94, %84
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.CDDerivedMesh, ptr %1, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !34
  %100 = getelementptr inbounds %struct.Mesh, ptr %81, i64 0, i32 15
  %101 = load ptr, ptr %100, align 8, !tbaa !298
  %102 = icmp eq ptr %99, %101
  br i1 %102, label %106, label %103

103:                                              ; preds = %97
  %104 = icmp ne ptr %86, null
  %105 = zext i1 %104 to i8
  br label %106

106:                                              ; preds = %93, %97, %103
  %107 = phi i8 [ 0, %93 ], [ 1, %97 ], [ %105, %103 ]
  %108 = getelementptr inbounds %struct.CDDerivedMesh, ptr %1, i64 0, i32 7
  store i8 %107, ptr %108, align 8, !tbaa !299
  tail call void @BKE_mesh_tessface_ensure(ptr noundef %79) #11
  %109 = load ptr, ptr %45, align 8, !tbaa !291
  %110 = getelementptr inbounds %struct.Mesh, ptr %79, i64 0, i32 12
  %111 = load ptr, ptr %110, align 8, !tbaa !307
  %112 = getelementptr inbounds %struct.Mesh, ptr %79, i64 0, i32 15
  %113 = load ptr, ptr %112, align 8, !tbaa !298
  %114 = getelementptr inbounds %struct.Mesh, ptr %79, i64 0, i32 28
  %115 = load i32, ptr %114, align 8, !tbaa !103
  %116 = getelementptr inbounds %struct.Mesh, ptr %79, i64 0, i32 26
  %117 = load i32, ptr %116, align 8, !tbaa !98
  %118 = getelementptr inbounds %struct.Mesh, ptr %79, i64 0, i32 21
  tail call void @BKE_pbvh_build_mesh(ptr noundef %109, ptr noundef %111, ptr noundef %113, i32 noundef %115, i32 noundef %117, ptr noundef nonnull %118) #11
  %119 = load ptr, ptr %45, align 8, !tbaa !291
  %120 = load ptr, ptr %7, align 8, !tbaa !292
  %121 = getelementptr inbounds %struct.SculptSession, ptr %120, i64 0, i32 16
  %122 = load i8, ptr %121, align 8, !tbaa !305
  tail call void @pbvh_show_diffuse_color_set(ptr noundef %119, i8 noundef zeroext %122) #11
  %123 = load ptr, ptr %7, align 8, !tbaa !292
  %124 = getelementptr inbounds %struct.SculptSession, ptr %123, i64 0, i32 17
  %125 = load i8, ptr %124, align 1, !tbaa !295
  %126 = getelementptr inbounds %struct.SculptSession, ptr %123, i64 0, i32 7
  %127 = load ptr, ptr %126, align 8, !tbaa !296
  %128 = icmp ne ptr %127, null
  %129 = zext i1 %128 to i8
  %130 = or i8 %125, %129
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %148, label %132

132:                                              ; preds = %106
  %133 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 119
  %134 = load ptr, ptr %133, align 8, !tbaa !308
  %135 = icmp eq ptr %134, null
  br i1 %135, label %148, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.DerivedMesh, ptr %134, i64 0, i32 23
  %138 = load ptr, ptr %137, align 8, !tbaa !49
  %139 = tail call i32 %138(ptr noundef nonnull %134) #11
  %140 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %141 = sext i32 %139 to i64
  %142 = mul nsw i64 %141, 12
  %143 = tail call ptr %140(i64 noundef %142, ptr noundef nonnull @.str.4) #11
  %144 = getelementptr inbounds %struct.DerivedMesh, ptr %134, i64 0, i32 77
  %145 = load ptr, ptr %144, align 8, !tbaa !71
  tail call void %145(ptr noundef nonnull %134, ptr noundef %143) #11
  %146 = load ptr, ptr %45, align 8, !tbaa !291
  tail call void @BKE_pbvh_apply_vertCos(ptr noundef %146, ptr noundef %143) #11
  %147 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %147(ptr noundef %143) #11
  br label %148

148:                                              ; preds = %106, %132, %136, %73, %70
  %149 = load ptr, ptr %45, align 8, !tbaa !291
  br label %150

150:                                              ; preds = %6, %148, %4
  %151 = phi ptr [ %149, %148 ], [ null, %4 ], [ null, %6 ]
  ret ptr %151
}

; Function Attrs: nounwind uwtable
define internal ptr @cdDM_getPolyMap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.CDDerivedMesh, ptr %1, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !251
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !306
  %9 = icmp eq i16 %8, 1
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !114
  %13 = getelementptr inbounds %struct.CDDerivedMesh, ptr %1, i64 0, i32 9
  %14 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !309
  %16 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !310
  %18 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 26
  %19 = load i32, ptr %18, align 8, !tbaa !98
  %20 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 30
  %21 = load i32, ptr %20, align 8, !tbaa !105
  %22 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 31
  %23 = load i32, ptr %22, align 4, !tbaa !104
  tail call void @BKE_mesh_vert_poly_map_create(ptr noundef nonnull %3, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #11
  br label %24

24:                                               ; preds = %10, %6, %2
  %25 = load ptr, ptr %3, align 8, !tbaa !251
  ret ptr %25
}

; Function Attrs: nounwind uwtable
define internal void @cdDM_drawVerts(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef %0) #11
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  tail call void @glBegin(i32 noundef 0) #11
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !125
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %6, %10
  %11 = phi i32 [ %13, %10 ], [ 0, %6 ]
  %12 = phi ptr [ %14, %10 ], [ %3, %6 ]
  tail call void @glVertex3fv(ptr noundef %12) #11
  %13 = add nuw nsw i32 %11, 1
  %14 = getelementptr inbounds %struct.MVert, ptr %12, i64 1
  %15 = load i32, ptr %7, align 8, !tbaa !125
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %10, label %17, !llvm.loop !311

17:                                               ; preds = %10, %6
  tail call void @glEnd() #11
  br label %33

18:                                               ; preds = %1
  tail call void @GPU_vertex_setup(ptr noundef %0) #11
  %19 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef %0) #11
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %23 = load ptr, ptr %22, align 8, !tbaa !312
  %24 = getelementptr inbounds %struct.GPUDrawObject, ptr %23, i64 0, i32 11
  %25 = load i32, ptr %24, align 4, !tbaa !313
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.GPUDrawObject, ptr %23, i64 0, i32 12
  %29 = load i32, ptr %28, align 8, !tbaa !315
  br label %30

30:                                               ; preds = %21, %27
  %31 = phi i32 [ %29, %27 ], [ %25, %21 ]
  tail call void @glDrawArrays(i32 noundef 0, i32 noundef 0, i32 noundef %31) #11
  br label %32

32:                                               ; preds = %30, %18
  tail call void @GPU_buffer_unbind() #11
  br label %33

33:                                               ; preds = %32, %17
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdDM_drawUVEdges(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 5) #11
  %5 = icmp eq ptr %3, null
  br i1 %5, label %84, label %6

6:                                                ; preds = %1
  %7 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef %0) #11
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %6
  tail call void @glBegin(i32 noundef 1) #11
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !43
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %9, %30
  %14 = phi i32 [ %31, %30 ], [ 0, %9 ]
  %15 = phi ptr [ %33, %30 ], [ %4, %9 ]
  %16 = phi ptr [ %32, %30 ], [ %3, %9 ]
  %17 = getelementptr inbounds %struct.MFace, ptr %16, i64 0, i32 6
  %18 = load i8, ptr %17, align 1, !tbaa !172
  %19 = and i8 %18, 16
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %13
  tail call void @glVertex2fv(ptr noundef %15) #11
  %22 = getelementptr inbounds [4 x [2 x float]], ptr %15, i64 0, i64 1
  tail call void @glVertex2fv(ptr noundef nonnull %22) #11
  tail call void @glVertex2fv(ptr noundef nonnull %22) #11
  %23 = getelementptr inbounds [4 x [2 x float]], ptr %15, i64 0, i64 2
  tail call void @glVertex2fv(ptr noundef nonnull %23) #11
  %24 = getelementptr inbounds %struct.MFace, ptr %16, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !168
  %26 = icmp eq i32 %25, 0
  tail call void @glVertex2fv(ptr noundef nonnull %23) #11
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds [4 x [2 x float]], ptr %15, i64 0, i64 3
  tail call void @glVertex2fv(ptr noundef nonnull %28) #11
  tail call void @glVertex2fv(ptr noundef nonnull %28) #11
  br label %29

29:                                               ; preds = %21, %27
  tail call void @glVertex2fv(ptr noundef %15) #11
  br label %30

30:                                               ; preds = %29, %13
  %31 = add nuw nsw i32 %14, 1
  %32 = getelementptr inbounds %struct.MFace, ptr %16, i64 1
  %33 = getelementptr inbounds %struct.MTFace, ptr %15, i64 1
  %34 = load i32, ptr %10, align 8, !tbaa !43
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %13, label %36, !llvm.loop !316

36:                                               ; preds = %30, %9
  tail call void @glEnd() #11
  br label %84

37:                                               ; preds = %6
  tail call void @GPU_uvedge_setup(ptr noundef %0) #11
  %38 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef %0) #11
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %83

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %42 = load i32, ptr %41, align 8, !tbaa !43
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %75

44:                                               ; preds = %40, %62
  %45 = phi i32 [ %68, %62 ], [ 0, %40 ]
  %46 = phi i32 [ %54, %62 ], [ 1, %40 ]
  %47 = phi i32 [ %63, %62 ], [ 0, %40 ]
  %48 = phi i32 [ %69, %62 ], [ 0, %40 ]
  %49 = phi ptr [ %70, %62 ], [ %3, %40 ]
  %50 = getelementptr inbounds %struct.MFace, ptr %49, i64 0, i32 6
  %51 = load i8, ptr %50, align 1, !tbaa !172
  %52 = and i8 %51, 16
  %53 = icmp eq i8 %52, 0
  %54 = zext i1 %53 to i32
  %55 = icmp eq i32 %46, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %44
  %57 = icmp eq i32 %46, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %56
  %59 = sub nsw i32 %45, %47
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  tail call void @glDrawArrays(i32 noundef 1, i32 noundef %47, i32 noundef %59) #11
  br label %62

62:                                               ; preds = %56, %58, %61, %44
  %63 = phi i32 [ %47, %44 ], [ %45, %61 ], [ %45, %58 ], [ %45, %56 ]
  %64 = getelementptr inbounds %struct.MFace, ptr %49, i64 0, i32 3
  %65 = load i32, ptr %64, align 4, !tbaa !168
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, i32 6, i32 8
  %68 = add nuw nsw i32 %67, %45
  %69 = add nuw nsw i32 %48, 1
  %70 = getelementptr inbounds %struct.MFace, ptr %49, i64 1
  %71 = load i32, ptr %41, align 8, !tbaa !43
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %44, label %73, !llvm.loop !317

73:                                               ; preds = %62
  %74 = xor i1 %53, true
  br label %75

75:                                               ; preds = %73, %40
  %76 = phi i32 [ 0, %40 ], [ %63, %73 ]
  %77 = phi i1 [ false, %40 ], [ %74, %73 ]
  %78 = phi i32 [ 0, %40 ], [ %68, %73 ]
  br i1 %77, label %83, label %79

79:                                               ; preds = %75
  %80 = sub nsw i32 %78, %76
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  tail call void @glDrawArrays(i32 noundef 1, i32 noundef %76, i32 noundef %80) #11
  br label %83

83:                                               ; preds = %75, %79, %82, %37
  tail call void @GPU_buffer_unbind() #11
  br label %84

84:                                               ; preds = %36, %83, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdDM_drawEdges(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !291
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 7
  %13 = load i8, ptr %12, align 8, !tbaa !299
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @BKE_pbvh_type(ptr noundef nonnull %9) #11
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load ptr, ptr %8, align 8, !tbaa !291
  tail call void @BKE_pbvh_draw(ptr noundef %19, ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef zeroext 1) #11
  br label %122

20:                                               ; preds = %15, %11, %3
  %21 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef %0) #11
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %58, label %23

23:                                               ; preds = %20
  tail call void @glBegin(i32 noundef 1) #11
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %25 = load i32, ptr %24, align 4, !tbaa !126
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %23
  %28 = icmp eq i8 %2, 0
  %29 = icmp eq i8 %1, 0
  br label %30

30:                                               ; preds = %27, %52
  %31 = phi i32 [ 0, %27 ], [ %53, %52 ]
  %32 = phi ptr [ %7, %27 ], [ %54, %52 ]
  br i1 %28, label %33, label %38

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.MEdge, ptr %32, i64 0, i32 4
  %35 = load i16, ptr %34, align 2, !tbaa !154
  %36 = and i16 %35, 2
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %33, %30
  br i1 %29, label %39, label %44

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.MEdge, ptr %32, i64 0, i32 4
  %41 = load i16, ptr %40, align 2, !tbaa !154
  %42 = and i16 %41, 128
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39, %38
  %45 = load i32, ptr %32, align 4, !tbaa !150
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.MVert, ptr %5, i64 %46
  tail call void @glVertex3fv(ptr noundef %47) #11
  %48 = getelementptr inbounds %struct.MEdge, ptr %32, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !153
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.MVert, ptr %5, i64 %50
  tail call void @glVertex3fv(ptr noundef %51) #11
  br label %52

52:                                               ; preds = %33, %39, %44
  %53 = add nuw nsw i32 %31, 1
  %54 = getelementptr inbounds %struct.MEdge, ptr %32, i64 1
  %55 = load i32, ptr %24, align 4, !tbaa !126
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %30, label %57, !llvm.loop !318

57:                                               ; preds = %52, %23
  tail call void @glEnd() #11
  br label %122

58:                                               ; preds = %20
  tail call void @GPU_edge_setup(ptr noundef %0) #11
  %59 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef %0) #11
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %121

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %63 = load i32, ptr %62, align 4, !tbaa !126
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %107

65:                                               ; preds = %61
  %66 = icmp eq i8 %2, 0
  %67 = icmp eq i8 %1, 0
  %68 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  br label %69

69:                                               ; preds = %65, %101
  %70 = phi i32 [ 1, %65 ], [ %88, %101 ]
  %71 = phi i32 [ 0, %65 ], [ %102, %101 ]
  %72 = phi i32 [ 0, %65 ], [ %103, %101 ]
  %73 = phi ptr [ %7, %65 ], [ %104, %101 ]
  br i1 %66, label %74, label %79

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.MEdge, ptr %73, i64 0, i32 4
  %76 = load i16, ptr %75, align 2, !tbaa !154
  %77 = and i16 %76, 2
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %74, %69
  br i1 %67, label %80, label %86

80:                                               ; preds = %79
  %81 = getelementptr inbounds %struct.MEdge, ptr %73, i64 0, i32 4
  %82 = load i16, ptr %81, align 2, !tbaa !154
  %83 = and i16 %82, 128
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80, %74
  br label %86

86:                                               ; preds = %79, %80, %85
  %87 = phi i1 [ true, %85 ], [ false, %80 ], [ false, %79 ]
  %88 = phi i32 [ 0, %85 ], [ 1, %80 ], [ 1, %79 ]
  %89 = icmp eq i32 %70, %88
  br i1 %89, label %101, label %90

90:                                               ; preds = %86
  %91 = icmp eq i32 %70, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %90
  %93 = sub nsw i32 %72, %71
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load ptr, ptr %68, align 8, !tbaa !312
  %97 = getelementptr inbounds %struct.GPUDrawObject, ptr %96, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !319
  %99 = shl nsw i32 %71, 1
  %100 = shl nuw nsw i32 %93, 1
  tail call void @GPU_buffer_draw_elements(ptr noundef %98, i32 noundef 1, i32 noundef %99, i32 noundef %100) #11
  br label %101

101:                                              ; preds = %90, %92, %95, %86
  %102 = phi i32 [ %71, %86 ], [ %72, %95 ], [ %72, %92 ], [ %72, %90 ]
  %103 = add nuw nsw i32 %72, 1
  %104 = getelementptr inbounds %struct.MEdge, ptr %73, i64 1
  %105 = load i32, ptr %62, align 4, !tbaa !126
  %106 = icmp slt i32 %103, %105
  br i1 %106, label %69, label %107, !llvm.loop !320

107:                                              ; preds = %101, %61
  %108 = phi i32 [ 0, %61 ], [ %103, %101 ]
  %109 = phi i32 [ 0, %61 ], [ %102, %101 ]
  %110 = phi i1 [ false, %61 ], [ %87, %101 ]
  br i1 %110, label %121, label %111

111:                                              ; preds = %107
  %112 = sub nsw i32 %108, %109
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %116 = load ptr, ptr %115, align 8, !tbaa !312
  %117 = getelementptr inbounds %struct.GPUDrawObject, ptr %116, i64 0, i32 4
  %118 = load ptr, ptr %117, align 8, !tbaa !319
  %119 = shl nsw i32 %109, 1
  %120 = shl nuw nsw i32 %112, 1
  tail call void @GPU_buffer_draw_elements(ptr noundef %118, i32 noundef 1, i32 noundef %119, i32 noundef %120) #11
  br label %121

121:                                              ; preds = %107, %111, %114, %58
  tail call void @GPU_buffer_unbind() #11
  br label %122

122:                                              ; preds = %57, %121, %18
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdDM_drawLooseEdges(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef %0) #11
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %33, label %8

8:                                                ; preds = %1
  tail call void @glBegin(i32 noundef 1) #11
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !126
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %8, %27
  %13 = phi i32 [ %28, %27 ], [ 0, %8 ]
  %14 = phi ptr [ %29, %27 ], [ %5, %8 ]
  %15 = getelementptr inbounds %struct.MEdge, ptr %14, i64 0, i32 4
  %16 = load i16, ptr %15, align 2, !tbaa !154
  %17 = and i16 %16, 128
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %12
  %20 = load i32, ptr %14, align 4, !tbaa !150
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.MVert, ptr %3, i64 %21
  tail call void @glVertex3fv(ptr noundef %22) #11
  %23 = getelementptr inbounds %struct.MEdge, ptr %14, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !153
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.MVert, ptr %3, i64 %25
  tail call void @glVertex3fv(ptr noundef %26) #11
  br label %27

27:                                               ; preds = %12, %19
  %28 = add nuw nsw i32 %13, 1
  %29 = getelementptr inbounds %struct.MEdge, ptr %14, i64 1
  %30 = load i32, ptr %9, align 4, !tbaa !126
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %12, label %32, !llvm.loop !321

32:                                               ; preds = %27, %8
  tail call void @glEnd() #11
  br label %87

33:                                               ; preds = %1
  tail call void @GPU_edge_setup(ptr noundef %0) #11
  %34 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef %0) #11
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %86

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %38 = load i32, ptr %37, align 4, !tbaa !126
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  br label %42

42:                                               ; preds = %40, %64
  %43 = phi i32 [ 1, %40 ], [ %51, %64 ]
  %44 = phi i32 [ 0, %40 ], [ %65, %64 ]
  %45 = phi i32 [ 0, %40 ], [ %66, %64 ]
  %46 = phi ptr [ %5, %40 ], [ %67, %64 ]
  %47 = getelementptr inbounds %struct.MEdge, ptr %46, i64 0, i32 4
  %48 = load i16, ptr %47, align 2, !tbaa !154
  %49 = lshr i16 %48, 7
  %50 = and i16 %49, 1
  %51 = zext nneg i16 %50 to i32
  %52 = icmp eq i32 %43, %51
  br i1 %52, label %64, label %53

53:                                               ; preds = %42
  %54 = icmp eq i32 %43, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %53
  %56 = sub nsw i32 %45, %44
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load ptr, ptr %41, align 8, !tbaa !312
  %60 = getelementptr inbounds %struct.GPUDrawObject, ptr %59, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !319
  %62 = shl nsw i32 %44, 1
  %63 = shl nuw nsw i32 %56, 1
  tail call void @GPU_buffer_draw_elements(ptr noundef %61, i32 noundef 1, i32 noundef %62, i32 noundef %63) #11
  br label %64

64:                                               ; preds = %53, %55, %58, %42
  %65 = phi i32 [ %44, %42 ], [ %45, %58 ], [ %45, %55 ], [ %45, %53 ]
  %66 = add nuw nsw i32 %45, 1
  %67 = getelementptr inbounds %struct.MEdge, ptr %46, i64 1
  %68 = load i32, ptr %37, align 4, !tbaa !126
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %42, label %70, !llvm.loop !322

70:                                               ; preds = %64
  %71 = icmp eq i16 %50, 0
  br label %72

72:                                               ; preds = %70, %36
  %73 = phi i32 [ 0, %36 ], [ %66, %70 ]
  %74 = phi i32 [ 0, %36 ], [ %65, %70 ]
  %75 = phi i1 [ false, %36 ], [ %71, %70 ]
  br i1 %75, label %86, label %76

76:                                               ; preds = %72
  %77 = sub nsw i32 %73, %74
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %81 = load ptr, ptr %80, align 8, !tbaa !312
  %82 = getelementptr inbounds %struct.GPUDrawObject, ptr %81, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !319
  %84 = shl nsw i32 %74, 1
  %85 = shl nuw nsw i32 %77, 1
  tail call void @GPU_buffer_draw_elements(ptr noundef %83, i32 noundef 1, i32 noundef %84, i32 noundef %85) #11
  br label %86

86:                                               ; preds = %72, %76, %79, %33
  tail call void @GPU_buffer_unbind() #11
  br label %87

87:                                               ; preds = %86, %32
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdDM_drawMappedEdges(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = tail call ptr @DM_get_edge_data_layer(ptr noundef %0, i32 noundef 7) #11
  tail call void @glBegin(i32 noundef 1) #11
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !126
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %3
  %13 = icmp ne ptr %1, null
  %14 = icmp eq ptr %1, null
  br label %15

15:                                               ; preds = %12, %39
  %16 = phi ptr [ %8, %12 ], [ %40, %39 ]
  %17 = phi i32 [ 0, %12 ], [ %41, %39 ]
  %18 = phi ptr [ %7, %12 ], [ %42, %39 ]
  %19 = icmp eq ptr %16, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds i32, ptr %16, i64 1
  %22 = load i32, ptr %16, align 4, !tbaa !118
  %23 = icmp eq i32 %22, -1
  %24 = select i1 %13, i1 %23, i1 false
  br i1 %24, label %39, label %25

25:                                               ; preds = %15, %20
  %26 = phi i32 [ %22, %20 ], [ %17, %15 ]
  %27 = phi ptr [ %21, %20 ], [ null, %15 ]
  br i1 %14, label %31, label %28

28:                                               ; preds = %25
  %29 = tail call i32 %1(ptr noundef %2, i32 noundef %26) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %28, %25
  %32 = load i32, ptr %18, align 4, !tbaa !150
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.MVert, ptr %5, i64 %33
  tail call void @glVertex3fv(ptr noundef %34) #11
  %35 = getelementptr inbounds %struct.MEdge, ptr %18, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !153
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.MVert, ptr %5, i64 %37
  tail call void @glVertex3fv(ptr noundef %38) #11
  br label %39

39:                                               ; preds = %28, %31, %20
  %40 = phi ptr [ %21, %20 ], [ %27, %31 ], [ %27, %28 ]
  %41 = add nuw nsw i32 %17, 1
  %42 = getelementptr inbounds %struct.MEdge, ptr %18, i64 1
  %43 = load i32, ptr %9, align 4, !tbaa !126
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %15, label %45, !llvm.loop !323

45:                                               ; preds = %39, %3
  tail call void @glEnd() #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdDM_drawFacesSolid(ptr noundef %0, ptr noundef %1, i8 zeroext %2, ptr noundef %3) #0 {
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = tail call ptr %11(ptr noundef %0, i32 noundef 8) #11
  %13 = load ptr, ptr %10, align 8, !tbaa !67
  %14 = tail call ptr %13(ptr noundef %0, i32 noundef 40) #11
  %15 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !291
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 7
  %20 = load i8, ptr %19, align 8, !tbaa !299
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !43
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %229, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %28 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %27, i32 noundef 8) #11
  %29 = load ptr, ptr %15, align 8, !tbaa !291
  tail call void @BKE_pbvh_draw(ptr noundef %29, ptr noundef %1, ptr noundef %28, ptr noundef %3, i8 noundef zeroext 0) #11
  br label %228

30:                                               ; preds = %18, %4
  %31 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef %0) #11
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %189, label %33

33:                                               ; preds = %30
  tail call void @glBegin(i32 noundef 7) #11
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %35 = load i32, ptr %34, align 8, !tbaa !43
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %188

37:                                               ; preds = %33
  %38 = icmp eq ptr %3, null
  %39 = icmp eq ptr %3, null
  br label %40

40:                                               ; preds = %37, %178
  %41 = phi ptr [ %9, %37 ], [ %185, %178 ]
  %42 = phi ptr [ %12, %37 ], [ %181, %178 ]
  %43 = phi ptr [ %14, %37 ], [ %183, %178 ]
  %44 = phi i32 [ 0, %37 ], [ %184, %178 ]
  %45 = phi i32 [ 1, %37 ], [ %82, %178 ]
  %46 = phi i32 [ -1, %37 ], [ %81, %178 ]
  %47 = phi i32 [ -1, %37 ], [ %80, %178 ]
  %48 = phi i32 [ 7, %37 ], [ %79, %178 ]
  %49 = getelementptr inbounds %struct.MFace, ptr %41, i64 0, i32 3
  %50 = load i32, ptr %49, align 4, !tbaa !168
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i32 4, i32 7
  %53 = getelementptr inbounds %struct.MFace, ptr %41, i64 0, i32 4
  %54 = load i16, ptr %53, align 4, !tbaa !171
  %55 = sext i16 %54 to i32
  %56 = add nsw i32 %55, 1
  %57 = icmp eq ptr %43, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %40
  %59 = getelementptr inbounds %struct.MFace, ptr %41, i64 0, i32 6
  %60 = load i8, ptr %59, align 1, !tbaa !172
  %61 = and i8 %60, 1
  %62 = icmp ne i8 %61, 0
  br label %63

63:                                               ; preds = %58, %40
  %64 = phi i1 [ true, %40 ], [ %62, %58 ]
  %65 = select i1 %64, i32 7425, i32 7424
  %66 = icmp eq i32 %52, %48
  %67 = icmp eq i32 %65, %47
  %68 = select i1 %66, i1 %67, i1 false
  %69 = icmp eq i32 %56, %46
  %70 = select i1 %38, i1 true, i1 %69
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %71, label %78, label %72

72:                                               ; preds = %63
  call void @glEnd() #11
  br i1 %39, label %75, label %73

73:                                               ; preds = %72
  %74 = call i32 %3(i32 noundef %56, ptr noundef null) #11
  br label %75

75:                                               ; preds = %73, %72
  %76 = phi i32 [ %56, %73 ], [ %46, %72 ]
  %77 = phi i32 [ %74, %73 ], [ %45, %72 ]
  call void @glShadeModel(i32 noundef %65) #11
  call void @glBegin(i32 noundef %52) #11
  br label %78

78:                                               ; preds = %63, %75
  %79 = phi i32 [ %52, %75 ], [ %48, %63 ]
  %80 = phi i32 [ %65, %75 ], [ %47, %63 ]
  %81 = phi i32 [ %76, %75 ], [ %46, %63 ]
  %82 = phi i32 [ %77, %75 ], [ %45, %63 ]
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %178, label %84

84:                                               ; preds = %78
  br i1 %57, label %106, label %85

85:                                               ; preds = %84
  call void @glNormal3sv(ptr noundef nonnull %43) #11
  %86 = load i32, ptr %41, align 4, !tbaa !164
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.MVert, ptr %7, i64 %87
  call void @glVertex3fv(ptr noundef %88) #11
  %89 = getelementptr inbounds [4 x [3 x i16]], ptr %43, i64 0, i64 1
  call void @glNormal3sv(ptr noundef nonnull %89) #11
  %90 = getelementptr inbounds %struct.MFace, ptr %41, i64 0, i32 1
  %91 = load i32, ptr %90, align 4, !tbaa !166
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.MVert, ptr %7, i64 %92
  call void @glVertex3fv(ptr noundef %93) #11
  %94 = getelementptr inbounds [4 x [3 x i16]], ptr %43, i64 0, i64 2
  call void @glNormal3sv(ptr noundef nonnull %94) #11
  %95 = getelementptr inbounds %struct.MFace, ptr %41, i64 0, i32 2
  %96 = load i32, ptr %95, align 4, !tbaa !167
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.MVert, ptr %7, i64 %97
  call void @glVertex3fv(ptr noundef %98) #11
  %99 = load i32, ptr %49, align 4, !tbaa !168
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %178, label %101

101:                                              ; preds = %85
  %102 = getelementptr inbounds [4 x [3 x i16]], ptr %43, i64 0, i64 3
  call void @glNormal3sv(ptr noundef nonnull %102) #11
  %103 = load i32, ptr %49, align 4, !tbaa !168
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.MVert, ptr %7, i64 %104
  call void @glVertex3fv(ptr noundef %105) #11
  br label %178

106:                                              ; preds = %84
  %107 = icmp eq i32 %80, 7424
  br i1 %107, label %108, label %149

108:                                              ; preds = %106
  %109 = icmp eq ptr %42, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %108
  call void @glNormal3fv(ptr noundef nonnull %42) #11
  br label %132

111:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %112 = load i32, ptr %49, align 4, !tbaa !168
  %113 = icmp eq i32 %112, 0
  %114 = load i32, ptr %41, align 4, !tbaa !164
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.MVert, ptr %7, i64 %115
  %117 = getelementptr inbounds %struct.MFace, ptr %41, i64 0, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !166
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.MVert, ptr %7, i64 %119
  %121 = getelementptr inbounds %struct.MFace, ptr %41, i64 0, i32 2
  %122 = load i32, ptr %121, align 4, !tbaa !167
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.MVert, ptr %7, i64 %123
  br i1 %113, label %129, label %125

125:                                              ; preds = %111
  %126 = zext i32 %112 to i64
  %127 = getelementptr inbounds %struct.MVert, ptr %7, i64 %126
  %128 = call float @normal_quad_v3(ptr noundef nonnull %5, ptr noundef %116, ptr noundef %120, ptr noundef %124, ptr noundef nonnull %127) #11
  br label %131

129:                                              ; preds = %111
  %130 = call float @normal_tri_v3(ptr noundef nonnull %5, ptr noundef %116, ptr noundef %120, ptr noundef %124) #11
  br label %131

131:                                              ; preds = %129, %125
  call void @glNormal3fv(ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  br label %132

132:                                              ; preds = %131, %110
  %133 = load i32, ptr %41, align 4, !tbaa !164
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.MVert, ptr %7, i64 %134
  call void @glVertex3fv(ptr noundef %135) #11
  %136 = getelementptr inbounds %struct.MFace, ptr %41, i64 0, i32 1
  %137 = load i32, ptr %136, align 4, !tbaa !166
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.MVert, ptr %7, i64 %138
  call void @glVertex3fv(ptr noundef %139) #11
  %140 = getelementptr inbounds %struct.MFace, ptr %41, i64 0, i32 2
  %141 = load i32, ptr %140, align 4, !tbaa !167
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.MVert, ptr %7, i64 %142
  call void @glVertex3fv(ptr noundef %143) #11
  %144 = load i32, ptr %49, align 4, !tbaa !168
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %178, label %146

146:                                              ; preds = %132
  %147 = zext i32 %144 to i64
  %148 = getelementptr inbounds %struct.MVert, ptr %7, i64 %147
  call void @glVertex3fv(ptr noundef nonnull %148) #11
  br label %178

149:                                              ; preds = %106
  %150 = load i32, ptr %41, align 4, !tbaa !164
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.MVert, ptr %7, i64 %151, i32 1
  call void @glNormal3sv(ptr noundef nonnull %152) #11
  %153 = load i32, ptr %41, align 4, !tbaa !164
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.MVert, ptr %7, i64 %154
  call void @glVertex3fv(ptr noundef %155) #11
  %156 = getelementptr inbounds %struct.MFace, ptr %41, i64 0, i32 1
  %157 = load i32, ptr %156, align 4, !tbaa !166
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.MVert, ptr %7, i64 %158, i32 1
  call void @glNormal3sv(ptr noundef nonnull %159) #11
  %160 = load i32, ptr %156, align 4, !tbaa !166
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.MVert, ptr %7, i64 %161
  call void @glVertex3fv(ptr noundef %162) #11
  %163 = getelementptr inbounds %struct.MFace, ptr %41, i64 0, i32 2
  %164 = load i32, ptr %163, align 4, !tbaa !167
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.MVert, ptr %7, i64 %165, i32 1
  call void @glNormal3sv(ptr noundef nonnull %166) #11
  %167 = load i32, ptr %163, align 4, !tbaa !167
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.MVert, ptr %7, i64 %168
  call void @glVertex3fv(ptr noundef %169) #11
  %170 = load i32, ptr %49, align 4, !tbaa !168
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %149
  %173 = zext i32 %170 to i64
  %174 = getelementptr inbounds %struct.MVert, ptr %7, i64 %173, i32 1
  call void @glNormal3sv(ptr noundef nonnull %174) #11
  %175 = load i32, ptr %49, align 4, !tbaa !168
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.MVert, ptr %7, i64 %176
  call void @glVertex3fv(ptr noundef %177) #11
  br label %178

178:                                              ; preds = %101, %85, %149, %172, %132, %146, %78
  %179 = icmp eq ptr %42, null
  %180 = getelementptr inbounds float, ptr %42, i64 3
  %181 = select i1 %179, ptr null, ptr %180
  %182 = getelementptr inbounds [4 x [3 x i16]], ptr %43, i64 1
  %183 = select i1 %57, ptr null, ptr %182
  %184 = add nuw nsw i32 %44, 1
  %185 = getelementptr inbounds %struct.MFace, ptr %41, i64 1
  %186 = load i32, ptr %34, align 8, !tbaa !43
  %187 = icmp slt i32 %184, %186
  br i1 %187, label %40, label %188, !llvm.loop !324

188:                                              ; preds = %178, %33
  call void @glEnd() #11
  br label %228

189:                                              ; preds = %30
  tail call void @GPU_vertex_setup(ptr noundef %0) #11
  tail call void @GPU_normal_setup(ptr noundef %0) #11
  %190 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef %0) #11
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %192, label %227

192:                                              ; preds = %189
  tail call void @glShadeModel(i32 noundef 7425) #11
  %193 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %194 = load ptr, ptr %193, align 8, !tbaa !312
  %195 = getelementptr inbounds %struct.GPUDrawObject, ptr %194, i64 0, i32 10
  %196 = load i32, ptr %195, align 8, !tbaa !325
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %227

198:                                              ; preds = %192
  %199 = icmp eq ptr %3, null
  br label %200

200:                                              ; preds = %198, %220
  %201 = phi i64 [ 0, %198 ], [ %221, %220 ]
  %202 = phi ptr [ %194, %198 ], [ %222, %220 ]
  br i1 %199, label %212, label %203

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.GPUDrawObject, ptr %202, i64 0, i32 9
  %205 = load ptr, ptr %204, align 8, !tbaa !326
  %206 = getelementptr inbounds %struct.GPUBufferMaterial, ptr %205, i64 %201, i32 2
  %207 = load i16, ptr %206, align 4, !tbaa !327
  %208 = sext i16 %207 to i32
  %209 = add nsw i32 %208, 1
  %210 = tail call i32 %3(i32 noundef %209, ptr noundef null) #11
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %220, label %212

212:                                              ; preds = %203, %200
  %213 = load ptr, ptr %193, align 8, !tbaa !312
  %214 = getelementptr inbounds %struct.GPUDrawObject, ptr %213, i64 0, i32 9
  %215 = load ptr, ptr %214, align 8, !tbaa !326
  %216 = getelementptr inbounds %struct.GPUBufferMaterial, ptr %215, i64 %201
  %217 = load i32, ptr %216, align 4, !tbaa !329
  %218 = getelementptr inbounds %struct.GPUBufferMaterial, ptr %215, i64 %201, i32 1
  %219 = load i32, ptr %218, align 4, !tbaa !330
  tail call void @glDrawArrays(i32 noundef 4, i32 noundef %217, i32 noundef %219) #11
  br label %220

220:                                              ; preds = %203, %212
  %221 = add nuw nsw i64 %201, 1
  %222 = load ptr, ptr %193, align 8, !tbaa !312
  %223 = getelementptr inbounds %struct.GPUDrawObject, ptr %222, i64 0, i32 10
  %224 = load i32, ptr %223, align 8, !tbaa !325
  %225 = sext i32 %224 to i64
  %226 = icmp slt i64 %221, %225
  br i1 %226, label %200, label %227, !llvm.loop !331

227:                                              ; preds = %220, %192, %189
  tail call void @GPU_buffer_unbind() #11
  br label %228

228:                                              ; preds = %188, %227, %26
  call void @glShadeModel(i32 noundef 7424) #11
  br label %229

229:                                              ; preds = %228, %22
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdDM_drawFacesTex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  tail call fastcc void @cdDM_drawFacesTex_common(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdDM_drawFacesGLSL(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 91
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  tail call void %4(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdDM_drawMappedFaces(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 8) #11
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %14 = load ptr, ptr %13, align 8, !tbaa !67
  %15 = tail call ptr %14(ptr noundef %0, i32 noundef 40) #11
  %16 = and i32 %5, 1
  %17 = load ptr, ptr %13, align 8, !tbaa !67
  %18 = tail call ptr %17(ptr noundef %0, i32 noundef 7) #11
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 54
  %20 = load ptr, ptr %19, align 8, !tbaa !222
  %21 = tail call ptr %20(ptr noundef %0, i32 noundef 7) #11
  %22 = icmp eq ptr %18, null
  %23 = select i1 %22, ptr null, ptr %21
  %24 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 21) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 20) #11
  br label %28

28:                                               ; preds = %26, %6
  %29 = phi i32 [ 21, %6 ], [ 20, %26 ]
  %30 = phi ptr [ %24, %6 ], [ %27, %26 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 6) #11
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi i32 [ %29, %28 ], [ 6, %32 ]
  %36 = phi ptr [ %30, %28 ], [ %33, %32 ]
  %37 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !291
  %39 = icmp eq ptr %38, null
  br i1 %39, label %52, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 7
  %42 = load i8, ptr %41, align 8, !tbaa !299
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %46 = load i32, ptr %45, align 8, !tbaa !43
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %50 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %49, i32 noundef 8) #11
  %51 = load ptr, ptr %37, align 8, !tbaa !291
  tail call void @BKE_pbvh_update(ptr noundef %51, i32 noundef 2, ptr noundef %50) #11
  br label %52

52:                                               ; preds = %34, %40, %44, %48
  %53 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef %0) #11
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !332
  %57 = and i32 %56, 16
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %332, label %59

59:                                               ; preds = %55, %52
  %60 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %61 = load i32, ptr %60, align 8, !tbaa !43
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %437

63:                                               ; preds = %59
  %64 = and i32 %5, 2
  %65 = icmp ne i32 %64, 0
  %66 = icmp eq ptr %23, null
  %67 = icmp eq ptr %1, null
  %68 = icmp ne i32 %16, 0
  %69 = icmp ne ptr %36, null
  %70 = select i1 %68, i1 %69, i1 false
  br label %71

71:                                               ; preds = %63, %321
  %72 = phi i64 [ 0, %63 ], [ %327, %321 ]
  %73 = phi ptr [ %11, %63 ], [ %328, %321 ]
  %74 = phi ptr [ %12, %63 ], [ %324, %321 ]
  %75 = phi ptr [ %15, %63 ], [ %326, %321 ]
  %76 = icmp ne ptr %75, null
  %77 = select i1 %65, i1 true, i1 %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.MFace, ptr %73, i64 0, i32 6
  %80 = load i8, ptr %79, align 1, !tbaa !172
  %81 = and i8 %80, 1
  %82 = zext nneg i8 %81 to i32
  br label %83

83:                                               ; preds = %71, %78
  %84 = phi i32 [ %82, %78 ], [ 1, %71 ]
  %85 = trunc i64 %72 to i32
  br i1 %22, label %95, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds i32, ptr %18, i64 %72
  %88 = load i32, ptr %87, align 4, !tbaa !118
  %89 = icmp eq i32 %88, -1
  %90 = select i1 %89, i1 true, i1 %66
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = sext i32 %88 to i64
  %93 = getelementptr inbounds i32, ptr %23, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !118
  br label %95

95:                                               ; preds = %86, %91, %83
  %96 = phi i32 [ %85, %83 ], [ %94, %91 ], [ %88, %86 ]
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.MFace, ptr %73, i64 0, i32 4
  %100 = load i16, ptr %99, align 4, !tbaa !171
  %101 = sext i16 %100 to i32
  %102 = add nsw i32 %101, 1
  %103 = call i32 %2(i32 noundef %102, ptr noundef null) #11
  br label %107

104:                                              ; preds = %95
  br i1 %67, label %107, label %105

105:                                              ; preds = %104
  %106 = call i32 %1(ptr noundef %4, i32 noundef %96) #11
  br label %107

107:                                              ; preds = %104, %105, %98
  %108 = phi i32 [ %103, %98 ], [ %106, %105 ], [ 1, %104 ]
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %321, label %110

110:                                              ; preds = %107
  %111 = icmp eq i32 %108, 3
  br i1 %111, label %112, label %113

112:                                              ; preds = %110
  call void @glEnable(i32 noundef 2882) #11
  call void @glPolygonStipple(ptr noundef nonnull @stipple_quarttone) #11
  br label %113

113:                                              ; preds = %112, %110
  %114 = shl i64 %72, 2
  %115 = and i64 %114, 4294967292
  %116 = getelementptr inbounds %struct.MCol, ptr %36, i64 %115
  %117 = select i1 %70, ptr %116, ptr null
  call void @glShadeModel(i32 noundef 7425) #11
  %118 = getelementptr inbounds %struct.MFace, ptr %73, i64 0, i32 3
  %119 = load i32, ptr %118, align 4, !tbaa !168
  %120 = icmp eq i32 %119, 0
  %121 = select i1 %120, i32 4, i32 7
  call void @glBegin(i32 noundef %121) #11
  br i1 %76, label %122, label %175

122:                                              ; preds = %113
  %123 = icmp eq ptr %117, null
  br i1 %123, label %140, label %124

124:                                              ; preds = %122
  %125 = getelementptr inbounds i8, ptr %117, i64 3
  %126 = load i8, ptr %125, align 1, !tbaa !132
  %127 = getelementptr inbounds i8, ptr %117, i64 2
  %128 = load i8, ptr %127, align 1, !tbaa !132
  %129 = getelementptr inbounds i8, ptr %117, i64 1
  %130 = load i8, ptr %129, align 1, !tbaa !132
  call void @glColor3ub(i8 noundef zeroext %126, i8 noundef zeroext %128, i8 noundef zeroext %130) #11
  call void @glNormal3sv(ptr noundef nonnull %75) #11
  %131 = load i32, ptr %73, align 4, !tbaa !164
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.MVert, ptr %9, i64 %132
  call void @glVertex3fv(ptr noundef %133) #11
  %134 = getelementptr inbounds i8, ptr %117, i64 7
  %135 = load i8, ptr %134, align 1, !tbaa !132
  %136 = getelementptr inbounds i8, ptr %117, i64 6
  %137 = load i8, ptr %136, align 1, !tbaa !132
  %138 = getelementptr inbounds i8, ptr %117, i64 5
  %139 = load i8, ptr %138, align 1, !tbaa !132
  call void @glColor3ub(i8 noundef zeroext %135, i8 noundef zeroext %137, i8 noundef zeroext %139) #11
  br label %144

140:                                              ; preds = %122
  call void @glNormal3sv(ptr noundef nonnull %75) #11
  %141 = load i32, ptr %73, align 4, !tbaa !164
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.MVert, ptr %9, i64 %142
  call void @glVertex3fv(ptr noundef %143) #11
  br label %144

144:                                              ; preds = %140, %124
  %145 = getelementptr inbounds [4 x [3 x i16]], ptr %75, i64 0, i64 1
  call void @glNormal3sv(ptr noundef nonnull %145) #11
  %146 = getelementptr inbounds %struct.MFace, ptr %73, i64 0, i32 1
  %147 = load i32, ptr %146, align 4, !tbaa !166
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.MVert, ptr %9, i64 %148
  call void @glVertex3fv(ptr noundef %149) #11
  br i1 %123, label %157, label %150

150:                                              ; preds = %144
  %151 = getelementptr inbounds i8, ptr %117, i64 11
  %152 = load i8, ptr %151, align 1, !tbaa !132
  %153 = getelementptr inbounds i8, ptr %117, i64 10
  %154 = load i8, ptr %153, align 1, !tbaa !132
  %155 = getelementptr inbounds i8, ptr %117, i64 9
  %156 = load i8, ptr %155, align 1, !tbaa !132
  call void @glColor3ub(i8 noundef zeroext %152, i8 noundef zeroext %154, i8 noundef zeroext %156) #11
  br label %157

157:                                              ; preds = %150, %144
  %158 = getelementptr inbounds [4 x [3 x i16]], ptr %75, i64 0, i64 2
  call void @glNormal3sv(ptr noundef nonnull %158) #11
  %159 = getelementptr inbounds %struct.MFace, ptr %73, i64 0, i32 2
  %160 = load i32, ptr %159, align 4, !tbaa !167
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.MVert, ptr %9, i64 %161
  call void @glVertex3fv(ptr noundef %162) #11
  %163 = load i32, ptr %118, align 4, !tbaa !168
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %319, label %165

165:                                              ; preds = %157
  br i1 %123, label %173, label %166

166:                                              ; preds = %165
  %167 = getelementptr inbounds i8, ptr %117, i64 15
  %168 = load i8, ptr %167, align 1, !tbaa !132
  %169 = getelementptr inbounds i8, ptr %117, i64 14
  %170 = load i8, ptr %169, align 1, !tbaa !132
  %171 = getelementptr inbounds i8, ptr %117, i64 13
  %172 = load i8, ptr %171, align 1, !tbaa !132
  call void @glColor3ub(i8 noundef zeroext %168, i8 noundef zeroext %170, i8 noundef zeroext %172) #11
  br label %173

173:                                              ; preds = %166, %165
  %174 = getelementptr inbounds [4 x [3 x i16]], ptr %75, i64 0, i64 3
  call void @glNormal3sv(ptr noundef nonnull %174) #11
  br label %315

175:                                              ; preds = %113
  %176 = icmp eq i32 %84, 0
  br i1 %176, label %177, label %250

177:                                              ; preds = %175
  %178 = icmp eq ptr %74, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %177
  call void @glNormal3fv(ptr noundef nonnull %74) #11
  br label %201

180:                                              ; preds = %177
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  %181 = load i32, ptr %118, align 4, !tbaa !168
  %182 = icmp eq i32 %181, 0
  %183 = load i32, ptr %73, align 4, !tbaa !164
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.MVert, ptr %9, i64 %184
  %186 = getelementptr inbounds %struct.MFace, ptr %73, i64 0, i32 1
  %187 = load i32, ptr %186, align 4, !tbaa !166
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.MVert, ptr %9, i64 %188
  %190 = getelementptr inbounds %struct.MFace, ptr %73, i64 0, i32 2
  %191 = load i32, ptr %190, align 4, !tbaa !167
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.MVert, ptr %9, i64 %192
  br i1 %182, label %198, label %194

194:                                              ; preds = %180
  %195 = zext i32 %181 to i64
  %196 = getelementptr inbounds %struct.MVert, ptr %9, i64 %195
  %197 = call float @normal_quad_v3(ptr noundef nonnull %7, ptr noundef %185, ptr noundef %189, ptr noundef %193, ptr noundef nonnull %196) #11
  br label %200

198:                                              ; preds = %180
  %199 = call float @normal_tri_v3(ptr noundef nonnull %7, ptr noundef %185, ptr noundef %189, ptr noundef %193) #11
  br label %200

200:                                              ; preds = %198, %194
  call void @glNormal3fv(ptr noundef nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  br label %201

201:                                              ; preds = %200, %179
  %202 = icmp eq ptr %117, null
  br i1 %202, label %219, label %203

203:                                              ; preds = %201
  %204 = getelementptr inbounds i8, ptr %117, i64 3
  %205 = load i8, ptr %204, align 1, !tbaa !132
  %206 = getelementptr inbounds i8, ptr %117, i64 2
  %207 = load i8, ptr %206, align 1, !tbaa !132
  %208 = getelementptr inbounds i8, ptr %117, i64 1
  %209 = load i8, ptr %208, align 1, !tbaa !132
  call void @glColor3ub(i8 noundef zeroext %205, i8 noundef zeroext %207, i8 noundef zeroext %209) #11
  %210 = load i32, ptr %73, align 4, !tbaa !164
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds %struct.MVert, ptr %9, i64 %211
  call void @glVertex3fv(ptr noundef %212) #11
  %213 = getelementptr inbounds i8, ptr %117, i64 7
  %214 = load i8, ptr %213, align 1, !tbaa !132
  %215 = getelementptr inbounds i8, ptr %117, i64 6
  %216 = load i8, ptr %215, align 1, !tbaa !132
  %217 = getelementptr inbounds i8, ptr %117, i64 5
  %218 = load i8, ptr %217, align 1, !tbaa !132
  call void @glColor3ub(i8 noundef zeroext %214, i8 noundef zeroext %216, i8 noundef zeroext %218) #11
  br label %223

219:                                              ; preds = %201
  %220 = load i32, ptr %73, align 4, !tbaa !164
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds %struct.MVert, ptr %9, i64 %221
  call void @glVertex3fv(ptr noundef %222) #11
  br label %223

223:                                              ; preds = %219, %203
  %224 = getelementptr inbounds %struct.MFace, ptr %73, i64 0, i32 1
  %225 = load i32, ptr %224, align 4, !tbaa !166
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds %struct.MVert, ptr %9, i64 %226
  call void @glVertex3fv(ptr noundef %227) #11
  br i1 %202, label %235, label %228

228:                                              ; preds = %223
  %229 = getelementptr inbounds i8, ptr %117, i64 11
  %230 = load i8, ptr %229, align 1, !tbaa !132
  %231 = getelementptr inbounds i8, ptr %117, i64 10
  %232 = load i8, ptr %231, align 1, !tbaa !132
  %233 = getelementptr inbounds i8, ptr %117, i64 9
  %234 = load i8, ptr %233, align 1, !tbaa !132
  call void @glColor3ub(i8 noundef zeroext %230, i8 noundef zeroext %232, i8 noundef zeroext %234) #11
  br label %235

235:                                              ; preds = %228, %223
  %236 = getelementptr inbounds %struct.MFace, ptr %73, i64 0, i32 2
  %237 = load i32, ptr %236, align 4, !tbaa !167
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds %struct.MVert, ptr %9, i64 %238
  call void @glVertex3fv(ptr noundef %239) #11
  %240 = load i32, ptr %118, align 4, !tbaa !168
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %319, label %242

242:                                              ; preds = %235
  br i1 %202, label %315, label %243

243:                                              ; preds = %242
  %244 = getelementptr inbounds i8, ptr %117, i64 15
  %245 = load i8, ptr %244, align 1, !tbaa !132
  %246 = getelementptr inbounds i8, ptr %117, i64 14
  %247 = load i8, ptr %246, align 1, !tbaa !132
  %248 = getelementptr inbounds i8, ptr %117, i64 13
  %249 = load i8, ptr %248, align 1, !tbaa !132
  call void @glColor3ub(i8 noundef zeroext %245, i8 noundef zeroext %247, i8 noundef zeroext %249) #11
  br label %315

250:                                              ; preds = %175
  %251 = icmp eq ptr %117, null
  br i1 %251, label %271, label %252

252:                                              ; preds = %250
  %253 = getelementptr inbounds i8, ptr %117, i64 3
  %254 = load i8, ptr %253, align 1, !tbaa !132
  %255 = getelementptr inbounds i8, ptr %117, i64 2
  %256 = load i8, ptr %255, align 1, !tbaa !132
  %257 = getelementptr inbounds i8, ptr %117, i64 1
  %258 = load i8, ptr %257, align 1, !tbaa !132
  call void @glColor3ub(i8 noundef zeroext %254, i8 noundef zeroext %256, i8 noundef zeroext %258) #11
  %259 = load i32, ptr %73, align 4, !tbaa !164
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds %struct.MVert, ptr %9, i64 %260, i32 1
  call void @glNormal3sv(ptr noundef nonnull %261) #11
  %262 = load i32, ptr %73, align 4, !tbaa !164
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds %struct.MVert, ptr %9, i64 %263
  call void @glVertex3fv(ptr noundef %264) #11
  %265 = getelementptr inbounds i8, ptr %117, i64 7
  %266 = load i8, ptr %265, align 1, !tbaa !132
  %267 = getelementptr inbounds i8, ptr %117, i64 6
  %268 = load i8, ptr %267, align 1, !tbaa !132
  %269 = getelementptr inbounds i8, ptr %117, i64 5
  %270 = load i8, ptr %269, align 1, !tbaa !132
  call void @glColor3ub(i8 noundef zeroext %266, i8 noundef zeroext %268, i8 noundef zeroext %270) #11
  br label %278

271:                                              ; preds = %250
  %272 = load i32, ptr %73, align 4, !tbaa !164
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds %struct.MVert, ptr %9, i64 %273, i32 1
  call void @glNormal3sv(ptr noundef nonnull %274) #11
  %275 = load i32, ptr %73, align 4, !tbaa !164
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds %struct.MVert, ptr %9, i64 %276
  call void @glVertex3fv(ptr noundef %277) #11
  br label %278

278:                                              ; preds = %271, %252
  %279 = getelementptr inbounds %struct.MFace, ptr %73, i64 0, i32 1
  %280 = load i32, ptr %279, align 4, !tbaa !166
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds %struct.MVert, ptr %9, i64 %281, i32 1
  call void @glNormal3sv(ptr noundef nonnull %282) #11
  %283 = load i32, ptr %279, align 4, !tbaa !166
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds %struct.MVert, ptr %9, i64 %284
  call void @glVertex3fv(ptr noundef %285) #11
  br i1 %251, label %293, label %286

286:                                              ; preds = %278
  %287 = getelementptr inbounds i8, ptr %117, i64 11
  %288 = load i8, ptr %287, align 1, !tbaa !132
  %289 = getelementptr inbounds i8, ptr %117, i64 10
  %290 = load i8, ptr %289, align 1, !tbaa !132
  %291 = getelementptr inbounds i8, ptr %117, i64 9
  %292 = load i8, ptr %291, align 1, !tbaa !132
  call void @glColor3ub(i8 noundef zeroext %288, i8 noundef zeroext %290, i8 noundef zeroext %292) #11
  br label %293

293:                                              ; preds = %286, %278
  %294 = getelementptr inbounds %struct.MFace, ptr %73, i64 0, i32 2
  %295 = load i32, ptr %294, align 4, !tbaa !167
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds %struct.MVert, ptr %9, i64 %296, i32 1
  call void @glNormal3sv(ptr noundef nonnull %297) #11
  %298 = load i32, ptr %294, align 4, !tbaa !167
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds %struct.MVert, ptr %9, i64 %299
  call void @glVertex3fv(ptr noundef %300) #11
  %301 = load i32, ptr %118, align 4, !tbaa !168
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %319, label %303

303:                                              ; preds = %293
  br i1 %251, label %311, label %304

304:                                              ; preds = %303
  %305 = getelementptr inbounds i8, ptr %117, i64 15
  %306 = load i8, ptr %305, align 1, !tbaa !132
  %307 = getelementptr inbounds i8, ptr %117, i64 14
  %308 = load i8, ptr %307, align 1, !tbaa !132
  %309 = getelementptr inbounds i8, ptr %117, i64 13
  %310 = load i8, ptr %309, align 1, !tbaa !132
  call void @glColor3ub(i8 noundef zeroext %306, i8 noundef zeroext %308, i8 noundef zeroext %310) #11
  br label %311

311:                                              ; preds = %304, %303
  %312 = load i32, ptr %118, align 4, !tbaa !168
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds %struct.MVert, ptr %9, i64 %313, i32 1
  call void @glNormal3sv(ptr noundef nonnull %314) #11
  br label %315

315:                                              ; preds = %242, %243, %173, %311
  %316 = load i32, ptr %118, align 4, !tbaa !168
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds %struct.MVert, ptr %9, i64 %317
  call void @glVertex3fv(ptr noundef %318) #11
  br label %319

319:                                              ; preds = %315, %235, %293, %157
  call void @glEnd() #11
  br i1 %111, label %320, label %321

320:                                              ; preds = %319
  call void @glDisable(i32 noundef 2882) #11
  br label %321

321:                                              ; preds = %319, %320, %107
  %322 = icmp eq ptr %74, null
  %323 = getelementptr inbounds float, ptr %74, i64 3
  %324 = select i1 %322, ptr null, ptr %323
  %325 = getelementptr inbounds [4 x [3 x i16]], ptr %75, i64 1
  %326 = select i1 %76, ptr %325, ptr null
  %327 = add nuw nsw i64 %72, 1
  %328 = getelementptr inbounds %struct.MFace, ptr %73, i64 1
  %329 = load i32, ptr %60, align 8, !tbaa !43
  %330 = sext i32 %329 to i64
  %331 = icmp slt i64 %327, %330
  br i1 %331, label %71, label %437, !llvm.loop !334

332:                                              ; preds = %55
  tail call void @GPU_vertex_setup(ptr noundef %0) #11
  tail call void @GPU_normal_setup(ptr noundef %0) #11
  %333 = icmp ne i32 %16, 0
  %334 = icmp ne ptr %36, null
  %335 = select i1 %333, i1 %334, i1 false
  br i1 %335, label %336, label %337

336:                                              ; preds = %332
  tail call void @GPU_color_setup(ptr noundef %0, i32 noundef %35) #11
  br label %337

337:                                              ; preds = %336, %332
  %338 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef %0) #11
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %340, label %436

340:                                              ; preds = %337
  %341 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %342 = load ptr, ptr %341, align 8, !tbaa !312
  %343 = getelementptr inbounds %struct.GPUDrawObject, ptr %342, i64 0, i32 11
  %344 = load i32, ptr %343, align 4, !tbaa !313
  %345 = sdiv i32 %344, 3
  tail call void @glShadeModel(i32 noundef 7425) #11
  %346 = icmp eq ptr %1, null
  br i1 %346, label %347, label %349

347:                                              ; preds = %340
  %348 = mul nsw i32 %345, 3
  tail call void @glDrawArrays(i32 noundef 4, i32 noundef 0, i32 noundef %348) #11
  br label %435

349:                                              ; preds = %340
  %350 = icmp sgt i32 %344, 2
  br i1 %350, label %351, label %435

351:                                              ; preds = %349
  %352 = load ptr, ptr %341, align 8, !tbaa !312
  %353 = getelementptr inbounds %struct.GPUDrawObject, ptr %352, i64 0, i32 6
  %354 = load ptr, ptr %353, align 8, !tbaa !335
  %355 = load i32, ptr %354, align 4, !tbaa !118
  %356 = add nsw i32 %345, -1
  %357 = icmp eq ptr %23, null
  %358 = icmp eq ptr %3, null
  %359 = zext i32 %356 to i64
  %360 = zext nneg i32 %345 to i64
  br label %361

361:                                              ; preds = %351, %431
  %362 = phi i64 [ 0, %351 ], [ %433, %431 ]
  %363 = phi i32 [ %355, %351 ], [ %375, %431 ]
  %364 = phi i32 [ 0, %351 ], [ %432, %431 ]
  %365 = sext i32 %363 to i64
  %366 = icmp eq i64 %362, %359
  br i1 %366, label %374, label %367

367:                                              ; preds = %361
  %368 = load ptr, ptr %341, align 8, !tbaa !312
  %369 = getelementptr inbounds %struct.GPUDrawObject, ptr %368, i64 0, i32 6
  %370 = load ptr, ptr %369, align 8, !tbaa !335
  %371 = getelementptr i32, ptr %370, i64 %362
  %372 = getelementptr i32, ptr %371, i64 1
  %373 = load i32, ptr %372, align 4, !tbaa !118
  br label %374

374:                                              ; preds = %367, %361
  %375 = phi i32 [ %373, %367 ], [ %363, %361 ]
  br i1 %22, label %385, label %376

376:                                              ; preds = %374
  %377 = getelementptr inbounds i32, ptr %18, i64 %365
  %378 = load i32, ptr %377, align 4, !tbaa !118
  %379 = icmp eq i32 %378, -1
  %380 = select i1 %379, i1 true, i1 %357
  br i1 %380, label %385, label %381

381:                                              ; preds = %376
  %382 = sext i32 %378 to i64
  %383 = getelementptr inbounds i32, ptr %23, i64 %382
  %384 = load i32, ptr %383, align 4, !tbaa !118
  br label %385

385:                                              ; preds = %376, %381, %374
  %386 = phi i32 [ %363, %374 ], [ %384, %381 ], [ %378, %376 ]
  %387 = icmp eq i32 %386, -1
  br i1 %387, label %388, label %394

388:                                              ; preds = %385
  %389 = getelementptr inbounds %struct.MFace, ptr %11, i64 %365, i32 4
  %390 = load i16, ptr %389, align 4, !tbaa !171
  %391 = sext i16 %390 to i32
  %392 = add nsw i32 %391, 1
  %393 = tail call i32 %2(i32 noundef %392, ptr noundef null) #11
  br label %396

394:                                              ; preds = %385
  %395 = tail call i32 %1(ptr noundef %4, i32 noundef %386) #11
  br label %396

396:                                              ; preds = %394, %388
  %397 = phi i32 [ %393, %388 ], [ %395, %394 ]
  %398 = icmp eq i32 %397, 3
  br i1 %398, label %399, label %400

399:                                              ; preds = %396
  tail call void @glEnable(i32 noundef 2882) #11
  tail call void @glPolygonStipple(ptr noundef nonnull @stipple_quarttone) #11
  br label %400

400:                                              ; preds = %399, %396
  switch i32 %397, label %401 [
    i32 3, label %402
    i32 0, label %402
  ]

401:                                              ; preds = %400
  br label %402

402:                                              ; preds = %400, %400, %401
  %403 = phi i1 [ true, %400 ], [ %366, %401 ], [ true, %400 ]
  %404 = getelementptr inbounds %struct.MFace, ptr %11, i64 %365, i32 4
  %405 = load i16, ptr %404, align 4, !tbaa !171
  %406 = sext i32 %375 to i64
  %407 = getelementptr inbounds %struct.MFace, ptr %11, i64 %406, i32 4
  %408 = load i16, ptr %407, align 4, !tbaa !171
  %409 = icmp ne i16 %405, %408
  %410 = or i1 %403, %409
  %411 = or i1 %358, %410
  br i1 %411, label %415, label %412

412:                                              ; preds = %402
  %413 = tail call i32 %3(ptr noundef %4, i32 noundef %363, i32 noundef %375) #11
  %414 = icmp eq i32 %413, 0
  br label %415

415:                                              ; preds = %412, %402
  %416 = phi i1 [ %414, %412 ], [ %410, %402 ]
  br i1 %416, label %417, label %431

417:                                              ; preds = %415
  %418 = trunc i64 %362 to i32
  %419 = sub nsw i32 %418, %364
  %420 = icmp ne i32 %397, 0
  %421 = zext i1 %420 to i32
  %422 = add nsw i32 %419, %421
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %427, label %424

424:                                              ; preds = %417
  %425 = mul nsw i32 %422, 3
  %426 = mul nsw i32 %364, 3
  tail call void @glDrawArrays(i32 noundef 4, i32 noundef %426, i32 noundef %425) #11
  br label %427

427:                                              ; preds = %424, %417
  %428 = trunc i64 %362 to i32
  %429 = add i32 %428, 1
  br i1 %398, label %430, label %431

430:                                              ; preds = %427
  tail call void @glDisable(i32 noundef 2882) #11
  br label %431

431:                                              ; preds = %427, %430, %415
  %432 = phi i32 [ %364, %415 ], [ %429, %430 ], [ %429, %427 ]
  %433 = add nuw nsw i64 %362, 1
  %434 = icmp eq i64 %433, %360
  br i1 %434, label %435, label %361, !llvm.loop !336

435:                                              ; preds = %431, %349, %347
  tail call void @glShadeModel(i32 noundef 7424) #11
  br label %436

436:                                              ; preds = %435, %337
  tail call void @GPU_buffer_unbind() #11
  br label %437

437:                                              ; preds = %321, %59, %436
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdDM_drawMappedFacesTex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  tail call fastcc void @cdDM_drawFacesTex_common(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdDM_drawMappedFacesGLSL(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) #0 {
  %5 = alloca %struct.GPUVertexAttribs, align 4
  %6 = alloca %struct.DMVertexAttribs, align 8
  %7 = alloca [3 x float], align 4
  %8 = alloca [32 x %struct.GPUAttrib], align 16
  call void @llvm.lifetime.start.p0(i64 2564, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %6) #11
  %9 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %14 = load ptr, ptr %13, align 8, !tbaa !67
  %15 = tail call ptr %14(ptr noundef %0, i32 noundef 8) #11
  %16 = load ptr, ptr %13, align 8, !tbaa !67
  %17 = tail call ptr %16(ptr noundef %0, i32 noundef 40) #11
  %18 = load ptr, ptr %13, align 8, !tbaa !67
  %19 = tail call ptr %18(ptr noundef %0, i32 noundef 7) #11
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 54
  %21 = load ptr, ptr %20, align 8, !tbaa !222
  %22 = tail call ptr %21(ptr noundef %0, i32 noundef 7) #11
  %23 = icmp eq ptr %19, null
  %24 = select i1 %23, ptr null, ptr %22
  %25 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !291
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %28

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 7
  %30 = load i8, ptr %29, align 8, !tbaa !299
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %28
  %33 = tail call i32 @BKE_pbvh_type(ptr noundef nonnull %26) #11
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !43
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %838, label %39

39:                                               ; preds = %35
  %40 = call i32 %1(i32 noundef 1, ptr noundef nonnull %5) #11
  %41 = load ptr, ptr %25, align 8, !tbaa !291
  call void @BKE_pbvh_draw(ptr noundef %41, ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef zeroext 0) #11
  br label %838

42:                                               ; preds = %32, %28, %4
  %43 = load ptr, ptr %25, align 8, !tbaa !291
  %44 = icmp eq ptr %43, null
  br i1 %44, label %57, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 7
  %47 = load i8, ptr %46, align 8, !tbaa !299
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %51 = load i32, ptr %50, align 8, !tbaa !43
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %55 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %54, i32 noundef 8) #11
  %56 = load ptr, ptr %25, align 8, !tbaa !291
  tail call void @BKE_pbvh_update(ptr noundef %56, i32 noundef 2, ptr noundef %55) #11
  br label %57

57:                                               ; preds = %42, %45, %49, %53
  tail call void @glShadeModel(i32 noundef 7425) #11
  %58 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef %0) #11
  %59 = icmp ne i8 %58, 0
  %60 = icmp ne ptr %2, null
  %61 = or i1 %60, %59
  br i1 %61, label %62, label %176

62:                                               ; preds = %57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %6, i8 0, i64 376, i1 false)
  tail call void @glBegin(i32 noundef 7) #11
  %63 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %64 = load i32, ptr %63, align 8, !tbaa !43
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %175

66:                                               ; preds = %62
  %67 = icmp eq ptr %17, null
  %68 = icmp eq ptr %24, null
  %69 = icmp eq ptr %15, null
  br label %70

70:                                               ; preds = %66, %169
  %71 = phi i64 [ 0, %66 ], [ %170, %169 ]
  %72 = phi ptr [ %12, %66 ], [ %171, %169 ]
  %73 = phi i32 [ -1, %66 ], [ %96, %169 ]
  %74 = phi i8 [ 0, %66 ], [ %95, %169 ]
  br i1 %67, label %75, label %80

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.MFace, ptr %72, i64 0, i32 6
  %77 = load i8, ptr %76, align 1, !tbaa !172
  %78 = and i8 %77, 1
  %79 = icmp ne i8 %78, 0
  br label %80

80:                                               ; preds = %75, %70
  %81 = phi i1 [ true, %70 ], [ %79, %75 ]
  %82 = zext i1 %81 to i8
  %83 = getelementptr inbounds %struct.MFace, ptr %72, i64 0, i32 4
  %84 = load i16, ptr %83, align 4, !tbaa !171
  %85 = sext i16 %84 to i32
  %86 = add nsw i32 %85, 1
  %87 = icmp eq i32 %86, %73
  br i1 %87, label %94, label %88

88:                                               ; preds = %80
  call void @glEnd() #11
  %89 = call i32 %1(i32 noundef %86, ptr noundef nonnull %5) #11
  %90 = trunc i32 %89 to i8
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  call void @DM_vertex_attributes_from_gpu(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  br label %93

93:                                               ; preds = %92, %88
  call void @glBegin(i32 noundef 7) #11
  br label %94

94:                                               ; preds = %93, %80
  %95 = phi i8 [ %90, %93 ], [ %74, %80 ]
  %96 = phi i32 [ %86, %93 ], [ %73, %80 ]
  %97 = icmp eq i8 %95, 0
  br i1 %97, label %169, label %98

98:                                               ; preds = %94
  br i1 %60, label %99, label %116

99:                                               ; preds = %98
  %100 = trunc i64 %71 to i32
  br i1 %23, label %110, label %101

101:                                              ; preds = %99
  %102 = getelementptr inbounds i32, ptr %19, i64 %71
  %103 = load i32, ptr %102, align 4, !tbaa !118
  %104 = icmp eq i32 %103, -1
  %105 = select i1 %104, i1 true, i1 %68
  br i1 %105, label %110, label %106

106:                                              ; preds = %101
  %107 = sext i32 %103 to i64
  %108 = getelementptr inbounds i32, ptr %24, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !118
  br label %110

110:                                              ; preds = %101, %106, %99
  %111 = phi i32 [ %100, %99 ], [ %109, %106 ], [ %103, %101 ]
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = call i32 %2(ptr noundef %3, i32 noundef %111) #11
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %169, label %116

116:                                              ; preds = %98, %113, %110
  br i1 %81, label %142, label %117

117:                                              ; preds = %116
  br i1 %69, label %120, label %118

118:                                              ; preds = %117
  %119 = getelementptr inbounds [3 x float], ptr %15, i64 %71
  call void @glNormal3fv(ptr noundef nonnull %119) #11
  br label %148

120:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  %121 = getelementptr inbounds %struct.MFace, ptr %72, i64 0, i32 3
  %122 = load i32, ptr %121, align 4, !tbaa !168
  %123 = icmp eq i32 %122, 0
  %124 = load i32, ptr %72, align 4, !tbaa !164
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.MVert, ptr %10, i64 %125
  %127 = getelementptr inbounds %struct.MFace, ptr %72, i64 0, i32 1
  %128 = load i32, ptr %127, align 4, !tbaa !166
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.MVert, ptr %10, i64 %129
  %131 = getelementptr inbounds %struct.MFace, ptr %72, i64 0, i32 2
  %132 = load i32, ptr %131, align 4, !tbaa !167
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.MVert, ptr %10, i64 %133
  br i1 %123, label %139, label %135

135:                                              ; preds = %120
  %136 = zext i32 %122 to i64
  %137 = getelementptr inbounds %struct.MVert, ptr %10, i64 %136
  %138 = call float @normal_quad_v3(ptr noundef nonnull %7, ptr noundef %126, ptr noundef %130, ptr noundef %134, ptr noundef nonnull %137) #11
  br label %141

139:                                              ; preds = %120
  %140 = call float @normal_tri_v3(ptr noundef nonnull %7, ptr noundef %126, ptr noundef %130, ptr noundef %134) #11
  br label %141

141:                                              ; preds = %139, %135
  call void @glNormal3fv(ptr noundef nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  br label %148

142:                                              ; preds = %116
  br i1 %67, label %148, label %143

143:                                              ; preds = %142
  %144 = getelementptr inbounds [4 x [3 x i16]], ptr %17, i64 %71
  %145 = getelementptr inbounds [4 x [3 x i16]], ptr %17, i64 %71, i64 1
  %146 = getelementptr inbounds [4 x [3 x i16]], ptr %17, i64 %71, i64 2
  %147 = getelementptr inbounds [4 x [3 x i16]], ptr %17, i64 %71, i64 3
  br label %148

148:                                              ; preds = %142, %143, %118, %141
  %149 = phi ptr [ %144, %143 ], [ null, %142 ], [ null, %118 ], [ null, %141 ]
  %150 = phi ptr [ %145, %143 ], [ null, %142 ], [ null, %118 ], [ null, %141 ]
  %151 = phi ptr [ %146, %143 ], [ null, %142 ], [ null, %118 ], [ null, %141 ]
  %152 = phi ptr [ %147, %143 ], [ null, %142 ], [ null, %118 ], [ null, %141 ]
  %153 = load i32, ptr %72, align 4, !tbaa !164
  %154 = trunc i64 %71 to i32
  call fastcc void @cddm_draw_attrib_vertex(ptr noundef nonnull %6, ptr noundef %10, i32 noundef %154, i32 noundef %153, i32 noundef 0, ptr noundef %149, i8 noundef zeroext %82)
  %155 = getelementptr inbounds %struct.MFace, ptr %72, i64 0, i32 1
  %156 = load i32, ptr %155, align 4, !tbaa !166
  %157 = trunc i64 %71 to i32
  call fastcc void @cddm_draw_attrib_vertex(ptr noundef nonnull %6, ptr noundef %10, i32 noundef %157, i32 noundef %156, i32 noundef 1, ptr noundef %150, i8 noundef zeroext %82)
  %158 = getelementptr inbounds %struct.MFace, ptr %72, i64 0, i32 2
  %159 = load i32, ptr %158, align 4, !tbaa !167
  %160 = trunc i64 %71 to i32
  call fastcc void @cddm_draw_attrib_vertex(ptr noundef nonnull %6, ptr noundef %10, i32 noundef %160, i32 noundef %159, i32 noundef 2, ptr noundef %151, i8 noundef zeroext %82)
  %161 = getelementptr inbounds %struct.MFace, ptr %72, i64 0, i32 3
  %162 = load i32, ptr %161, align 4, !tbaa !168
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %148
  %165 = trunc i64 %71 to i32
  call fastcc void @cddm_draw_attrib_vertex(ptr noundef nonnull %6, ptr noundef %10, i32 noundef %165, i32 noundef %162, i32 noundef 3, ptr noundef %152, i8 noundef zeroext %82)
  br label %169

166:                                              ; preds = %148
  %167 = load i32, ptr %158, align 4, !tbaa !167
  %168 = trunc i64 %71 to i32
  call fastcc void @cddm_draw_attrib_vertex(ptr noundef nonnull %6, ptr noundef %10, i32 noundef %168, i32 noundef %167, i32 noundef 2, ptr noundef %151, i8 noundef zeroext %82)
  br label %169

169:                                              ; preds = %164, %166, %113, %94
  %170 = add nuw nsw i64 %71, 1
  %171 = getelementptr inbounds %struct.MFace, ptr %72, i64 1
  %172 = load i32, ptr %63, align 8, !tbaa !43
  %173 = sext i32 %172 to i64
  %174 = icmp slt i64 %170, %173
  br i1 %174, label %70, label %175, !llvm.loop !337

175:                                              ; preds = %169, %62
  call void @glEnd() #11
  br label %837

176:                                              ; preds = %57
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %8) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %6, i8 0, i64 376, i1 false)
  tail call void @GPU_vertex_setup(ptr noundef %0) #11
  tail call void @GPU_normal_setup(ptr noundef %0) #11
  %177 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef %0) #11
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %832

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %181 = load ptr, ptr %180, align 8, !tbaa !312
  %182 = getelementptr inbounds %struct.GPUDrawObject, ptr %181, i64 0, i32 11
  %183 = load i32, ptr %182, align 4, !tbaa !313
  %184 = icmp sgt i32 %183, 2
  br i1 %184, label %185, label %816

185:                                              ; preds = %179
  %186 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 7
  %187 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 3
  %188 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 3, i32 2
  %189 = getelementptr inbounds %struct.GPUAttrib, ptr %8, i64 0, i32 1
  %190 = getelementptr inbounds %struct.GPUAttrib, ptr %8, i64 0, i32 2
  %191 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 4
  %192 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 5
  %193 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 6
  %194 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 2
  %195 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 2, i32 2
  %196 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 7
  %197 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 3
  %198 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 4
  %199 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 5
  %200 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 6
  %201 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 2
  %202 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 7
  %203 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 3
  %204 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 4
  %205 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 5
  %206 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 6
  %207 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 2
  br label %208

208:                                              ; preds = %185, %805
  %209 = phi ptr [ %181, %185 ], [ %809, %805 ]
  %210 = phi i32 [ -1, %185 ], [ %342, %805 ]
  %211 = phi i8 [ 0, %185 ], [ %341, %805 ]
  %212 = phi i32 [ 0, %185 ], [ %808, %805 ]
  %213 = phi i32 [ 0, %185 ], [ %806, %805 ]
  %214 = phi i32 [ 0, %185 ], [ %340, %805 ]
  %215 = phi i32 [ 0, %185 ], [ %339, %805 ]
  %216 = phi i32 [ 0, %185 ], [ %338, %805 ]
  %217 = phi ptr [ null, %185 ], [ %337, %805 ]
  %218 = phi ptr [ null, %185 ], [ %336, %805 ]
  %219 = getelementptr inbounds %struct.GPUDrawObject, ptr %209, i64 0, i32 6
  %220 = load ptr, ptr %219, align 8, !tbaa !335
  %221 = sext i32 %212 to i64
  %222 = getelementptr inbounds i32, ptr %220, i64 %221
  %223 = load i32, ptr %222, align 4, !tbaa !118
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.MFace, ptr %12, i64 %224
  %226 = getelementptr inbounds %struct.MFace, ptr %12, i64 %224, i32 4
  %227 = load i16, ptr %226, align 4, !tbaa !171
  %228 = sext i16 %227 to i32
  %229 = add nsw i32 %228, 1
  %230 = icmp eq i32 %229, %210
  br i1 %230, label %335, label %231

231:                                              ; preds = %208
  %232 = sub nsw i32 %213, %214
  %233 = icmp sgt i32 %232, 0
  %234 = icmp ne i8 %211, 0
  %235 = and i1 %233, %234
  br i1 %235, label %236, label %244

236:                                              ; preds = %231
  %237 = icmp eq i32 %216, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %236
  call void @GPU_buffer_unlock(ptr noundef %218) #11
  call void @GPU_interleaved_attrib_setup(ptr noundef %218, ptr noundef nonnull %8, i32 noundef %216) #11
  %239 = mul nsw i32 %214, 3
  %240 = mul nsw i32 %232, 3
  call void @glDrawArrays(i32 noundef 4, i32 noundef %239, i32 noundef %240) #11
  call void @GPU_buffer_free(ptr noundef %218) #11
  br label %244

241:                                              ; preds = %236
  %242 = mul nsw i32 %214, 3
  %243 = mul nsw i32 %232, 3
  call void @glDrawArrays(i32 noundef 4, i32 noundef %242, i32 noundef %243) #11
  br label %244

244:                                              ; preds = %241, %238, %231
  %245 = phi ptr [ null, %238 ], [ %218, %231 ], [ %218, %241 ]
  %246 = call i32 %1(i32 noundef %229, ptr noundef nonnull %5) #11
  %247 = trunc i32 %246 to i8
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %335, label %249

249:                                              ; preds = %244
  call void @DM_vertex_attributes_from_gpu(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %250 = load i32, ptr %186, align 4, !tbaa !338
  %251 = icmp ne i32 %250, 0
  %252 = load ptr, ptr %187, align 8
  %253 = icmp ne ptr %252, null
  %254 = select i1 %251, i1 %253, i1 false
  br i1 %254, label %255, label %257

255:                                              ; preds = %249
  %256 = load i32, ptr %188, align 4, !tbaa !342
  store i32 %256, ptr %8, align 16, !tbaa !343
  store i32 3, ptr %189, align 4, !tbaa !345
  store i32 5126, ptr %190, align 8, !tbaa !346
  br label %257

257:                                              ; preds = %255, %249
  %258 = phi i32 [ 1, %255 ], [ 0, %249 ]
  %259 = load i32, ptr %191, align 8, !tbaa !347
  %260 = icmp sgt i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %257
  %262 = zext nneg i32 %259 to i64
  br label %269

263:                                              ; preds = %283, %257
  %264 = phi i32 [ %258, %257 ], [ %284, %283 ]
  %265 = load i32, ptr %192, align 4, !tbaa !348
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %267, label %305

267:                                              ; preds = %263
  %268 = zext nneg i32 %265 to i64
  br label %287

269:                                              ; preds = %261, %283
  %270 = phi i64 [ 0, %261 ], [ %285, %283 ]
  %271 = phi i32 [ %258, %261 ], [ %284, %283 ]
  %272 = getelementptr inbounds [8 x %struct.anon.0], ptr %6, i64 0, i64 %270
  %273 = load ptr, ptr %272, align 8, !tbaa !349
  %274 = icmp eq ptr %273, null
  br i1 %274, label %283, label %275

275:                                              ; preds = %269
  %276 = getelementptr inbounds [8 x %struct.anon.0], ptr %6, i64 0, i64 %270, i32 2
  %277 = load i32, ptr %276, align 4, !tbaa !350
  %278 = sext i32 %271 to i64
  %279 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr %8, i64 0, i64 %278
  store i32 %277, ptr %279, align 4, !tbaa !343
  %280 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr %8, i64 0, i64 %278, i32 1
  store i32 2, ptr %280, align 4, !tbaa !345
  %281 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr %8, i64 0, i64 %278, i32 2
  store i32 5126, ptr %281, align 4, !tbaa !346
  %282 = add nsw i32 %271, 1
  br label %283

283:                                              ; preds = %269, %275
  %284 = phi i32 [ %282, %275 ], [ %271, %269 ]
  %285 = add nuw nsw i64 %270, 1
  %286 = icmp eq i64 %285, %262
  br i1 %286, label %263, label %269, !llvm.loop !351

287:                                              ; preds = %267, %301
  %288 = phi i64 [ 0, %267 ], [ %303, %301 ]
  %289 = phi i32 [ %264, %267 ], [ %302, %301 ]
  %290 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 1, i64 %288
  %291 = load ptr, ptr %290, align 8, !tbaa !352
  %292 = icmp eq ptr %291, null
  br i1 %292, label %301, label %293

293:                                              ; preds = %287
  %294 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 1, i64 %288, i32 2
  %295 = load i32, ptr %294, align 4, !tbaa !353
  %296 = sext i32 %289 to i64
  %297 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr %8, i64 0, i64 %296
  store i32 %295, ptr %297, align 4, !tbaa !343
  %298 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr %8, i64 0, i64 %296, i32 1
  store i32 4, ptr %298, align 4, !tbaa !345
  %299 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr %8, i64 0, i64 %296, i32 2
  store i32 5121, ptr %299, align 4, !tbaa !346
  %300 = add nsw i32 %289, 1
  br label %301

301:                                              ; preds = %287, %293
  %302 = phi i32 [ %300, %293 ], [ %289, %287 ]
  %303 = add nuw nsw i64 %288, 1
  %304 = icmp eq i64 %303, %268
  br i1 %304, label %305, label %287, !llvm.loop !354

305:                                              ; preds = %301, %263
  %306 = phi i32 [ %264, %263 ], [ %302, %301 ]
  %307 = load i32, ptr %193, align 8, !tbaa !355
  %308 = icmp ne i32 %307, 0
  %309 = load ptr, ptr %194, align 8
  %310 = icmp ne ptr %309, null
  %311 = select i1 %308, i1 %310, i1 false
  br i1 %311, label %312, label %319

312:                                              ; preds = %305
  %313 = load i32, ptr %195, align 4, !tbaa !356
  %314 = sext i32 %306 to i64
  %315 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr %8, i64 0, i64 %314
  store i32 %313, ptr %315, align 4, !tbaa !343
  %316 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr %8, i64 0, i64 %314, i32 1
  store i32 4, ptr %316, align 4, !tbaa !345
  %317 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr %8, i64 0, i64 %314, i32 2
  store i32 5126, ptr %317, align 4, !tbaa !346
  %318 = add nsw i32 %306, 1
  br label %319

319:                                              ; preds = %312, %305
  %320 = phi i32 [ %318, %312 ], [ %306, %305 ]
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %335, label %322

322:                                              ; preds = %319
  %323 = call i32 @GPU_attrib_element_size(ptr noundef nonnull %8, i32 noundef %320) #11
  %324 = load ptr, ptr %180, align 8, !tbaa !312
  %325 = getelementptr inbounds %struct.GPUDrawObject, ptr %324, i64 0, i32 11
  %326 = load i32, ptr %325, align 4, !tbaa !313
  %327 = mul nsw i32 %326, %323
  %328 = call ptr @GPU_buffer_alloc(i32 noundef %327) #11
  %329 = icmp eq ptr %328, null
  br i1 %329, label %330, label %331

330:                                              ; preds = %322
  call void @GPU_buffer_unbind() #11
  br label %834

331:                                              ; preds = %322
  %332 = call ptr @GPU_buffer_lock_stream(ptr noundef nonnull %328) #11
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %335

334:                                              ; preds = %331
  call void @GPU_buffer_unbind() #11
  call void @GPU_buffer_free(ptr noundef nonnull %328) #11
  br label %834

335:                                              ; preds = %319, %244, %331, %208
  %336 = phi ptr [ %328, %331 ], [ %245, %244 ], [ %218, %208 ], [ null, %319 ]
  %337 = phi ptr [ %332, %331 ], [ %217, %244 ], [ %217, %208 ], [ %217, %319 ]
  %338 = phi i32 [ %320, %331 ], [ 0, %244 ], [ %216, %208 ], [ 0, %319 ]
  %339 = phi i32 [ %323, %331 ], [ %215, %244 ], [ %215, %208 ], [ %215, %319 ]
  %340 = phi i32 [ %213, %331 ], [ %213, %244 ], [ %214, %208 ], [ %213, %319 ]
  %341 = phi i8 [ %247, %331 ], [ 0, %244 ], [ %211, %208 ], [ %247, %319 ]
  %342 = phi i32 [ %229, %331 ], [ %229, %244 ], [ %210, %208 ], [ %229, %319 ]
  %343 = icmp ne i8 %341, 0
  %344 = icmp ne i32 %338, 0
  %345 = select i1 %343, i1 %344, i1 false
  br i1 %345, label %346, label %572

346:                                              ; preds = %335
  %347 = load i32, ptr %196, align 4, !tbaa !338
  %348 = icmp ne i32 %347, 0
  %349 = load ptr, ptr %197, align 8
  %350 = icmp ne ptr %349, null
  %351 = select i1 %348, i1 %350, i1 false
  br i1 %351, label %352, label %396

352:                                              ; preds = %346
  %353 = mul i32 %213, 3
  %354 = mul i32 %353, %339
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i8, ptr %337, i64 %355
  %357 = load i32, ptr %225, align 4, !tbaa !164
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds [3 x float], ptr %349, i64 %358
  %360 = load float, ptr %359, align 4, !tbaa !133
  store float %360, ptr %356, align 4, !tbaa !133
  %361 = getelementptr inbounds float, ptr %359, i64 1
  %362 = load float, ptr %361, align 4, !tbaa !133
  %363 = getelementptr inbounds float, ptr %356, i64 1
  store float %362, ptr %363, align 4, !tbaa !133
  %364 = getelementptr inbounds float, ptr %359, i64 2
  %365 = load float, ptr %364, align 4, !tbaa !133
  %366 = getelementptr inbounds float, ptr %356, i64 2
  store float %365, ptr %366, align 4, !tbaa !133
  %367 = add nsw i32 %354, %339
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i8, ptr %337, i64 %368
  %370 = getelementptr inbounds %struct.MFace, ptr %12, i64 %224, i32 1
  %371 = load i32, ptr %370, align 4, !tbaa !166
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds [3 x float], ptr %349, i64 %372
  %374 = load float, ptr %373, align 4, !tbaa !133
  store float %374, ptr %369, align 4, !tbaa !133
  %375 = getelementptr inbounds float, ptr %373, i64 1
  %376 = load float, ptr %375, align 4, !tbaa !133
  %377 = getelementptr inbounds float, ptr %369, i64 1
  store float %376, ptr %377, align 4, !tbaa !133
  %378 = getelementptr inbounds float, ptr %373, i64 2
  %379 = load float, ptr %378, align 4, !tbaa !133
  %380 = getelementptr inbounds float, ptr %369, i64 2
  store float %379, ptr %380, align 4, !tbaa !133
  %381 = add i32 %353, 2
  %382 = mul i32 %381, %339
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i8, ptr %337, i64 %383
  %385 = getelementptr inbounds %struct.MFace, ptr %12, i64 %224, i32 2
  %386 = load i32, ptr %385, align 4, !tbaa !167
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds [3 x float], ptr %349, i64 %387
  %389 = load float, ptr %388, align 4, !tbaa !133
  store float %389, ptr %384, align 4, !tbaa !133
  %390 = getelementptr inbounds float, ptr %388, i64 1
  %391 = load float, ptr %390, align 4, !tbaa !133
  %392 = getelementptr inbounds float, ptr %384, i64 1
  store float %391, ptr %392, align 4, !tbaa !133
  %393 = getelementptr inbounds float, ptr %388, i64 2
  %394 = load float, ptr %393, align 4, !tbaa !133
  %395 = getelementptr inbounds float, ptr %384, i64 2
  store float %394, ptr %395, align 4, !tbaa !133
  br label %396

396:                                              ; preds = %352, %346
  %397 = phi i32 [ 12, %352 ], [ 0, %346 ]
  %398 = load i32, ptr %198, align 8, !tbaa !347
  %399 = icmp sgt i32 %398, 0
  br i1 %399, label %400, label %405

400:                                              ; preds = %396
  %401 = mul i32 %213, 3
  %402 = mul i32 %401, %339
  %403 = shl nsw i32 %339, 1
  %404 = zext nneg i32 %398 to i64
  br label %419

405:                                              ; preds = %451, %396
  %406 = phi i32 [ %397, %396 ], [ %452, %451 ]
  %407 = load i32, ptr %199, align 4, !tbaa !348
  %408 = icmp sgt i32 %407, 0
  br i1 %408, label %409, label %513

409:                                              ; preds = %405
  %410 = shl nsw i32 %223, 2
  %411 = sext i32 %410 to i64
  %412 = mul i32 %213, 3
  %413 = mul i32 %412, %339
  %414 = or disjoint i32 %410, 1
  %415 = sext i32 %414 to i64
  %416 = or disjoint i32 %410, 2
  %417 = sext i32 %416 to i64
  %418 = shl nsw i32 %339, 1
  br label %455

419:                                              ; preds = %400, %451
  %420 = phi i64 [ 0, %400 ], [ %453, %451 ]
  %421 = phi i32 [ %397, %400 ], [ %452, %451 ]
  %422 = getelementptr inbounds [8 x %struct.anon.0], ptr %6, i64 0, i64 %420
  %423 = load ptr, ptr %422, align 8, !tbaa !349
  %424 = icmp eq ptr %423, null
  br i1 %424, label %451, label %425

425:                                              ; preds = %419
  %426 = getelementptr inbounds %struct.MTFace, ptr %423, i64 %224
  %427 = add nsw i32 %421, %402
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i8, ptr %337, i64 %428
  %430 = load float, ptr %426, align 4, !tbaa !133
  store float %430, ptr %429, align 4, !tbaa !133
  %431 = getelementptr inbounds float, ptr %426, i64 1
  %432 = load float, ptr %431, align 4, !tbaa !133
  %433 = getelementptr inbounds float, ptr %429, i64 1
  store float %432, ptr %433, align 4, !tbaa !133
  %434 = add nsw i32 %427, %339
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i8, ptr %337, i64 %435
  %437 = getelementptr inbounds [4 x [2 x float]], ptr %426, i64 0, i64 1
  %438 = load float, ptr %437, align 4, !tbaa !133
  store float %438, ptr %436, align 4, !tbaa !133
  %439 = getelementptr inbounds [4 x [2 x float]], ptr %426, i64 0, i64 1, i64 1
  %440 = load float, ptr %439, align 4, !tbaa !133
  %441 = getelementptr inbounds float, ptr %436, i64 1
  store float %440, ptr %441, align 4, !tbaa !133
  %442 = add nsw i32 %427, %403
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i8, ptr %337, i64 %443
  %445 = getelementptr inbounds [4 x [2 x float]], ptr %426, i64 0, i64 2
  %446 = load float, ptr %445, align 4, !tbaa !133
  store float %446, ptr %444, align 4, !tbaa !133
  %447 = getelementptr inbounds [4 x [2 x float]], ptr %426, i64 0, i64 2, i64 1
  %448 = load float, ptr %447, align 4, !tbaa !133
  %449 = getelementptr inbounds float, ptr %444, i64 1
  store float %448, ptr %449, align 4, !tbaa !133
  %450 = add i32 %421, 8
  br label %451

451:                                              ; preds = %419, %425
  %452 = phi i32 [ %450, %425 ], [ %421, %419 ]
  %453 = add nuw nsw i64 %420, 1
  %454 = icmp eq i64 %453, %404
  br i1 %454, label %405, label %419, !llvm.loop !357

455:                                              ; preds = %409, %507
  %456 = phi i64 [ 0, %409 ], [ %509, %507 ]
  %457 = phi i32 [ %406, %409 ], [ %508, %507 ]
  %458 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 1, i64 %456
  %459 = load ptr, ptr %458, align 8, !tbaa !352
  %460 = icmp eq ptr %459, null
  br i1 %460, label %507, label %461

461:                                              ; preds = %455
  %462 = getelementptr inbounds %struct.MCol, ptr %459, i64 %411
  %463 = getelementptr inbounds %struct.MCol, ptr %459, i64 %411, i32 3
  %464 = load i8, ptr %463, align 1, !tbaa !191
  %465 = getelementptr inbounds %struct.MCol, ptr %459, i64 %411, i32 2
  %466 = load i8, ptr %465, align 1, !tbaa !194
  %467 = getelementptr inbounds %struct.MCol, ptr %459, i64 %411, i32 1
  %468 = load i8, ptr %467, align 1, !tbaa !196
  %469 = load i8, ptr %462, align 1, !tbaa !198
  %470 = add nsw i32 %457, %413
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i8, ptr %337, i64 %471
  store i8 %464, ptr %472, align 1, !tbaa !132
  %473 = getelementptr inbounds i8, ptr %472, i64 1
  store i8 %466, ptr %473, align 1, !tbaa !132
  %474 = getelementptr inbounds i8, ptr %472, i64 2
  store i8 %468, ptr %474, align 1, !tbaa !132
  %475 = getelementptr inbounds i8, ptr %472, i64 3
  store i8 %469, ptr %475, align 1, !tbaa !132
  %476 = load ptr, ptr %458, align 8, !tbaa !352
  %477 = getelementptr inbounds %struct.MCol, ptr %476, i64 %415
  %478 = getelementptr inbounds %struct.MCol, ptr %476, i64 %415, i32 3
  %479 = load i8, ptr %478, align 1, !tbaa !191
  %480 = getelementptr inbounds %struct.MCol, ptr %476, i64 %415, i32 2
  %481 = load i8, ptr %480, align 1, !tbaa !194
  %482 = getelementptr inbounds %struct.MCol, ptr %476, i64 %415, i32 1
  %483 = load i8, ptr %482, align 1, !tbaa !196
  %484 = load i8, ptr %477, align 1, !tbaa !198
  %485 = add nsw i32 %470, %339
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i8, ptr %337, i64 %486
  store i8 %479, ptr %487, align 1, !tbaa !132
  %488 = getelementptr inbounds i8, ptr %487, i64 1
  store i8 %481, ptr %488, align 1, !tbaa !132
  %489 = getelementptr inbounds i8, ptr %487, i64 2
  store i8 %483, ptr %489, align 1, !tbaa !132
  %490 = getelementptr inbounds i8, ptr %487, i64 3
  store i8 %484, ptr %490, align 1, !tbaa !132
  %491 = load ptr, ptr %458, align 8, !tbaa !352
  %492 = getelementptr inbounds %struct.MCol, ptr %491, i64 %417
  %493 = getelementptr inbounds %struct.MCol, ptr %491, i64 %417, i32 3
  %494 = load i8, ptr %493, align 1, !tbaa !191
  %495 = getelementptr inbounds %struct.MCol, ptr %491, i64 %417, i32 2
  %496 = load i8, ptr %495, align 1, !tbaa !194
  %497 = getelementptr inbounds %struct.MCol, ptr %491, i64 %417, i32 1
  %498 = load i8, ptr %497, align 1, !tbaa !196
  %499 = load i8, ptr %492, align 1, !tbaa !198
  %500 = add nsw i32 %470, %418
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i8, ptr %337, i64 %501
  store i8 %494, ptr %502, align 1, !tbaa !132
  %503 = getelementptr inbounds i8, ptr %502, i64 1
  store i8 %496, ptr %503, align 1, !tbaa !132
  %504 = getelementptr inbounds i8, ptr %502, i64 2
  store i8 %498, ptr %504, align 1, !tbaa !132
  %505 = getelementptr inbounds i8, ptr %502, i64 3
  store i8 %499, ptr %505, align 1, !tbaa !132
  %506 = add i32 %457, 4
  br label %507

507:                                              ; preds = %455, %461
  %508 = phi i32 [ %506, %461 ], [ %457, %455 ]
  %509 = add nuw nsw i64 %456, 1
  %510 = load i32, ptr %199, align 4, !tbaa !348
  %511 = sext i32 %510 to i64
  %512 = icmp slt i64 %509, %511
  br i1 %512, label %455, label %513, !llvm.loop !358

513:                                              ; preds = %507, %405
  %514 = phi i32 [ %406, %405 ], [ %508, %507 ]
  %515 = load i32, ptr %200, align 8, !tbaa !355
  %516 = icmp ne i32 %515, 0
  %517 = load ptr, ptr %201, align 8
  %518 = icmp ne ptr %517, null
  %519 = select i1 %516, i1 %518, i1 false
  br i1 %519, label %520, label %572

520:                                              ; preds = %513
  %521 = shl nsw i32 %223, 2
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds [4 x float], ptr %517, i64 %522
  %524 = mul i32 %213, 3
  %525 = mul i32 %524, %339
  %526 = add nsw i32 %514, %525
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i8, ptr %337, i64 %527
  %529 = load float, ptr %523, align 4, !tbaa !133
  store float %529, ptr %528, align 4, !tbaa !133
  %530 = getelementptr inbounds float, ptr %523, i64 1
  %531 = load float, ptr %530, align 4, !tbaa !133
  %532 = getelementptr inbounds float, ptr %528, i64 1
  store float %531, ptr %532, align 4, !tbaa !133
  %533 = getelementptr inbounds float, ptr %523, i64 2
  %534 = load float, ptr %533, align 4, !tbaa !133
  %535 = getelementptr inbounds float, ptr %528, i64 2
  store float %534, ptr %535, align 4, !tbaa !133
  %536 = getelementptr inbounds float, ptr %523, i64 3
  %537 = load float, ptr %536, align 4, !tbaa !133
  %538 = getelementptr inbounds float, ptr %528, i64 3
  store float %537, ptr %538, align 4, !tbaa !133
  %539 = or disjoint i32 %521, 1
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds [4 x float], ptr %517, i64 %540
  %542 = add nsw i32 %526, %339
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds i8, ptr %337, i64 %543
  %545 = load float, ptr %541, align 4, !tbaa !133
  store float %545, ptr %544, align 4, !tbaa !133
  %546 = getelementptr inbounds float, ptr %541, i64 1
  %547 = load float, ptr %546, align 4, !tbaa !133
  %548 = getelementptr inbounds float, ptr %544, i64 1
  store float %547, ptr %548, align 4, !tbaa !133
  %549 = getelementptr inbounds float, ptr %541, i64 2
  %550 = load float, ptr %549, align 4, !tbaa !133
  %551 = getelementptr inbounds float, ptr %544, i64 2
  store float %550, ptr %551, align 4, !tbaa !133
  %552 = getelementptr inbounds float, ptr %541, i64 3
  %553 = load float, ptr %552, align 4, !tbaa !133
  %554 = getelementptr inbounds float, ptr %544, i64 3
  store float %553, ptr %554, align 4, !tbaa !133
  %555 = or disjoint i32 %521, 2
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds [4 x float], ptr %517, i64 %556
  %558 = shl nsw i32 %339, 1
  %559 = add nsw i32 %526, %558
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i8, ptr %337, i64 %560
  %562 = load float, ptr %557, align 4, !tbaa !133
  store float %562, ptr %561, align 4, !tbaa !133
  %563 = getelementptr inbounds float, ptr %557, i64 1
  %564 = load float, ptr %563, align 4, !tbaa !133
  %565 = getelementptr inbounds float, ptr %561, i64 1
  store float %564, ptr %565, align 4, !tbaa !133
  %566 = getelementptr inbounds float, ptr %557, i64 2
  %567 = load float, ptr %566, align 4, !tbaa !133
  %568 = getelementptr inbounds float, ptr %561, i64 2
  store float %567, ptr %568, align 4, !tbaa !133
  %569 = getelementptr inbounds float, ptr %557, i64 3
  %570 = load float, ptr %569, align 4, !tbaa !133
  %571 = getelementptr inbounds float, ptr %561, i64 3
  store float %570, ptr %571, align 4, !tbaa !133
  br label %572

572:                                              ; preds = %513, %520, %335
  %573 = add nsw i32 %213, 1
  %574 = getelementptr inbounds %struct.MFace, ptr %12, i64 %224, i32 3
  %575 = load i32, ptr %574, align 4, !tbaa !168
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %805, label %577

577:                                              ; preds = %572
  br i1 %345, label %578, label %802

578:                                              ; preds = %577
  %579 = load i32, ptr %202, align 4, !tbaa !338
  %580 = icmp ne i32 %579, 0
  %581 = load ptr, ptr %203, align 8
  %582 = icmp ne ptr %581, null
  %583 = select i1 %580, i1 %582, i1 false
  br i1 %583, label %584, label %626

584:                                              ; preds = %578
  %585 = mul i32 %573, 3
  %586 = mul i32 %585, %339
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds i8, ptr %337, i64 %587
  %589 = getelementptr inbounds %struct.MFace, ptr %12, i64 %224, i32 2
  %590 = load i32, ptr %589, align 4, !tbaa !167
  %591 = zext i32 %590 to i64
  %592 = getelementptr inbounds [3 x float], ptr %581, i64 %591
  %593 = load float, ptr %592, align 4, !tbaa !133
  store float %593, ptr %588, align 4, !tbaa !133
  %594 = getelementptr inbounds float, ptr %592, i64 1
  %595 = load float, ptr %594, align 4, !tbaa !133
  %596 = getelementptr inbounds float, ptr %588, i64 1
  store float %595, ptr %596, align 4, !tbaa !133
  %597 = getelementptr inbounds float, ptr %592, i64 2
  %598 = load float, ptr %597, align 4, !tbaa !133
  %599 = getelementptr inbounds float, ptr %588, i64 2
  store float %598, ptr %599, align 4, !tbaa !133
  %600 = add nsw i32 %586, %339
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds i8, ptr %337, i64 %601
  %603 = zext i32 %575 to i64
  %604 = getelementptr inbounds [3 x float], ptr %581, i64 %603
  %605 = load float, ptr %604, align 4, !tbaa !133
  store float %605, ptr %602, align 4, !tbaa !133
  %606 = getelementptr inbounds float, ptr %604, i64 1
  %607 = load float, ptr %606, align 4, !tbaa !133
  %608 = getelementptr inbounds float, ptr %602, i64 1
  store float %607, ptr %608, align 4, !tbaa !133
  %609 = getelementptr inbounds float, ptr %604, i64 2
  %610 = load float, ptr %609, align 4, !tbaa !133
  %611 = getelementptr inbounds float, ptr %602, i64 2
  store float %610, ptr %611, align 4, !tbaa !133
  %612 = add i32 %585, 2
  %613 = mul i32 %612, %339
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds i8, ptr %337, i64 %614
  %616 = load i32, ptr %225, align 4, !tbaa !164
  %617 = zext i32 %616 to i64
  %618 = getelementptr inbounds [3 x float], ptr %581, i64 %617
  %619 = load float, ptr %618, align 4, !tbaa !133
  store float %619, ptr %615, align 4, !tbaa !133
  %620 = getelementptr inbounds float, ptr %618, i64 1
  %621 = load float, ptr %620, align 4, !tbaa !133
  %622 = getelementptr inbounds float, ptr %615, i64 1
  store float %621, ptr %622, align 4, !tbaa !133
  %623 = getelementptr inbounds float, ptr %618, i64 2
  %624 = load float, ptr %623, align 4, !tbaa !133
  %625 = getelementptr inbounds float, ptr %615, i64 2
  store float %624, ptr %625, align 4, !tbaa !133
  br label %626

626:                                              ; preds = %584, %578
  %627 = phi i32 [ 12, %584 ], [ 0, %578 ]
  %628 = load i32, ptr %204, align 8, !tbaa !347
  %629 = icmp sgt i32 %628, 0
  br i1 %629, label %630, label %635

630:                                              ; preds = %626
  %631 = mul i32 %573, 3
  %632 = mul i32 %631, %339
  %633 = shl nsw i32 %339, 1
  %634 = zext nneg i32 %628 to i64
  br label %649

635:                                              ; preds = %681, %626
  %636 = phi i32 [ %627, %626 ], [ %682, %681 ]
  %637 = load i32, ptr %205, align 4, !tbaa !348
  %638 = icmp sgt i32 %637, 0
  br i1 %638, label %639, label %743

639:                                              ; preds = %635
  %640 = shl nsw i32 %223, 2
  %641 = or disjoint i32 %640, 2
  %642 = sext i32 %641 to i64
  %643 = mul i32 %573, 3
  %644 = mul i32 %643, %339
  %645 = or disjoint i32 %640, 3
  %646 = sext i32 %645 to i64
  %647 = sext i32 %640 to i64
  %648 = shl nsw i32 %339, 1
  br label %685

649:                                              ; preds = %630, %681
  %650 = phi i64 [ 0, %630 ], [ %683, %681 ]
  %651 = phi i32 [ %627, %630 ], [ %682, %681 ]
  %652 = getelementptr inbounds [8 x %struct.anon.0], ptr %6, i64 0, i64 %650
  %653 = load ptr, ptr %652, align 8, !tbaa !349
  %654 = icmp eq ptr %653, null
  br i1 %654, label %681, label %655

655:                                              ; preds = %649
  %656 = getelementptr inbounds %struct.MTFace, ptr %653, i64 %224
  %657 = add nsw i32 %651, %632
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds i8, ptr %337, i64 %658
  %660 = getelementptr inbounds [4 x [2 x float]], ptr %656, i64 0, i64 2
  %661 = load float, ptr %660, align 4, !tbaa !133
  store float %661, ptr %659, align 4, !tbaa !133
  %662 = getelementptr inbounds [4 x [2 x float]], ptr %656, i64 0, i64 2, i64 1
  %663 = load float, ptr %662, align 4, !tbaa !133
  %664 = getelementptr inbounds float, ptr %659, i64 1
  store float %663, ptr %664, align 4, !tbaa !133
  %665 = add nsw i32 %657, %339
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds i8, ptr %337, i64 %666
  %668 = getelementptr inbounds [4 x [2 x float]], ptr %656, i64 0, i64 3
  %669 = load float, ptr %668, align 4, !tbaa !133
  store float %669, ptr %667, align 4, !tbaa !133
  %670 = getelementptr inbounds [4 x [2 x float]], ptr %656, i64 0, i64 3, i64 1
  %671 = load float, ptr %670, align 4, !tbaa !133
  %672 = getelementptr inbounds float, ptr %667, i64 1
  store float %671, ptr %672, align 4, !tbaa !133
  %673 = add nsw i32 %657, %633
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds i8, ptr %337, i64 %674
  %676 = load float, ptr %656, align 4, !tbaa !133
  store float %676, ptr %675, align 4, !tbaa !133
  %677 = getelementptr inbounds float, ptr %656, i64 1
  %678 = load float, ptr %677, align 4, !tbaa !133
  %679 = getelementptr inbounds float, ptr %675, i64 1
  store float %678, ptr %679, align 4, !tbaa !133
  %680 = add i32 %651, 8
  br label %681

681:                                              ; preds = %649, %655
  %682 = phi i32 [ %680, %655 ], [ %651, %649 ]
  %683 = add nuw nsw i64 %650, 1
  %684 = icmp eq i64 %683, %634
  br i1 %684, label %635, label %649, !llvm.loop !359

685:                                              ; preds = %639, %737
  %686 = phi i64 [ 0, %639 ], [ %739, %737 ]
  %687 = phi i32 [ %636, %639 ], [ %738, %737 ]
  %688 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 1, i64 %686
  %689 = load ptr, ptr %688, align 8, !tbaa !352
  %690 = icmp eq ptr %689, null
  br i1 %690, label %737, label %691

691:                                              ; preds = %685
  %692 = getelementptr inbounds %struct.MCol, ptr %689, i64 %642
  %693 = getelementptr inbounds %struct.MCol, ptr %689, i64 %642, i32 3
  %694 = load i8, ptr %693, align 1, !tbaa !191
  %695 = getelementptr inbounds %struct.MCol, ptr %689, i64 %642, i32 2
  %696 = load i8, ptr %695, align 1, !tbaa !194
  %697 = getelementptr inbounds %struct.MCol, ptr %689, i64 %642, i32 1
  %698 = load i8, ptr %697, align 1, !tbaa !196
  %699 = load i8, ptr %692, align 1, !tbaa !198
  %700 = add nsw i32 %687, %644
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds i8, ptr %337, i64 %701
  store i8 %694, ptr %702, align 1, !tbaa !132
  %703 = getelementptr inbounds i8, ptr %702, i64 1
  store i8 %696, ptr %703, align 1, !tbaa !132
  %704 = getelementptr inbounds i8, ptr %702, i64 2
  store i8 %698, ptr %704, align 1, !tbaa !132
  %705 = getelementptr inbounds i8, ptr %702, i64 3
  store i8 %699, ptr %705, align 1, !tbaa !132
  %706 = load ptr, ptr %688, align 8, !tbaa !352
  %707 = getelementptr inbounds %struct.MCol, ptr %706, i64 %646
  %708 = getelementptr inbounds %struct.MCol, ptr %706, i64 %646, i32 3
  %709 = load i8, ptr %708, align 1, !tbaa !191
  %710 = getelementptr inbounds %struct.MCol, ptr %706, i64 %646, i32 2
  %711 = load i8, ptr %710, align 1, !tbaa !194
  %712 = getelementptr inbounds %struct.MCol, ptr %706, i64 %646, i32 1
  %713 = load i8, ptr %712, align 1, !tbaa !196
  %714 = load i8, ptr %707, align 1, !tbaa !198
  %715 = add nsw i32 %700, %339
  %716 = sext i32 %715 to i64
  %717 = getelementptr inbounds i8, ptr %337, i64 %716
  store i8 %709, ptr %717, align 1, !tbaa !132
  %718 = getelementptr inbounds i8, ptr %717, i64 1
  store i8 %711, ptr %718, align 1, !tbaa !132
  %719 = getelementptr inbounds i8, ptr %717, i64 2
  store i8 %713, ptr %719, align 1, !tbaa !132
  %720 = getelementptr inbounds i8, ptr %717, i64 3
  store i8 %714, ptr %720, align 1, !tbaa !132
  %721 = load ptr, ptr %688, align 8, !tbaa !352
  %722 = getelementptr inbounds %struct.MCol, ptr %721, i64 %647
  %723 = getelementptr inbounds %struct.MCol, ptr %721, i64 %647, i32 3
  %724 = load i8, ptr %723, align 1, !tbaa !191
  %725 = getelementptr inbounds %struct.MCol, ptr %721, i64 %647, i32 2
  %726 = load i8, ptr %725, align 1, !tbaa !194
  %727 = getelementptr inbounds %struct.MCol, ptr %721, i64 %647, i32 1
  %728 = load i8, ptr %727, align 1, !tbaa !196
  %729 = load i8, ptr %722, align 1, !tbaa !198
  %730 = add nsw i32 %700, %648
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds i8, ptr %337, i64 %731
  store i8 %724, ptr %732, align 1, !tbaa !132
  %733 = getelementptr inbounds i8, ptr %732, i64 1
  store i8 %726, ptr %733, align 1, !tbaa !132
  %734 = getelementptr inbounds i8, ptr %732, i64 2
  store i8 %728, ptr %734, align 1, !tbaa !132
  %735 = getelementptr inbounds i8, ptr %732, i64 3
  store i8 %729, ptr %735, align 1, !tbaa !132
  %736 = add i32 %687, 4
  br label %737

737:                                              ; preds = %685, %691
  %738 = phi i32 [ %736, %691 ], [ %687, %685 ]
  %739 = add nuw nsw i64 %686, 1
  %740 = load i32, ptr %205, align 4, !tbaa !348
  %741 = sext i32 %740 to i64
  %742 = icmp slt i64 %739, %741
  br i1 %742, label %685, label %743, !llvm.loop !360

743:                                              ; preds = %737, %635
  %744 = phi i32 [ %636, %635 ], [ %738, %737 ]
  %745 = load i32, ptr %206, align 8, !tbaa !355
  %746 = icmp ne i32 %745, 0
  %747 = load ptr, ptr %207, align 8
  %748 = icmp ne ptr %747, null
  %749 = select i1 %746, i1 %748, i1 false
  br i1 %749, label %750, label %802

750:                                              ; preds = %743
  %751 = shl nsw i32 %223, 2
  %752 = or disjoint i32 %751, 2
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds [4 x float], ptr %747, i64 %753
  %755 = mul i32 %573, 3
  %756 = mul i32 %755, %339
  %757 = add nsw i32 %744, %756
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds i8, ptr %337, i64 %758
  %760 = load float, ptr %754, align 4, !tbaa !133
  store float %760, ptr %759, align 4, !tbaa !133
  %761 = getelementptr inbounds float, ptr %754, i64 1
  %762 = load float, ptr %761, align 4, !tbaa !133
  %763 = getelementptr inbounds float, ptr %759, i64 1
  store float %762, ptr %763, align 4, !tbaa !133
  %764 = getelementptr inbounds float, ptr %754, i64 2
  %765 = load float, ptr %764, align 4, !tbaa !133
  %766 = getelementptr inbounds float, ptr %759, i64 2
  store float %765, ptr %766, align 4, !tbaa !133
  %767 = getelementptr inbounds float, ptr %754, i64 3
  %768 = load float, ptr %767, align 4, !tbaa !133
  %769 = getelementptr inbounds float, ptr %759, i64 3
  store float %768, ptr %769, align 4, !tbaa !133
  %770 = or disjoint i32 %751, 3
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds [4 x float], ptr %747, i64 %771
  %773 = add nsw i32 %757, %339
  %774 = sext i32 %773 to i64
  %775 = getelementptr inbounds i8, ptr %337, i64 %774
  %776 = load float, ptr %772, align 4, !tbaa !133
  store float %776, ptr %775, align 4, !tbaa !133
  %777 = getelementptr inbounds float, ptr %772, i64 1
  %778 = load float, ptr %777, align 4, !tbaa !133
  %779 = getelementptr inbounds float, ptr %775, i64 1
  store float %778, ptr %779, align 4, !tbaa !133
  %780 = getelementptr inbounds float, ptr %772, i64 2
  %781 = load float, ptr %780, align 4, !tbaa !133
  %782 = getelementptr inbounds float, ptr %775, i64 2
  store float %781, ptr %782, align 4, !tbaa !133
  %783 = getelementptr inbounds float, ptr %772, i64 3
  %784 = load float, ptr %783, align 4, !tbaa !133
  %785 = getelementptr inbounds float, ptr %775, i64 3
  store float %784, ptr %785, align 4, !tbaa !133
  %786 = sext i32 %751 to i64
  %787 = getelementptr inbounds [4 x float], ptr %747, i64 %786
  %788 = shl nsw i32 %339, 1
  %789 = add nsw i32 %757, %788
  %790 = sext i32 %789 to i64
  %791 = getelementptr inbounds i8, ptr %337, i64 %790
  %792 = load float, ptr %787, align 4, !tbaa !133
  store float %792, ptr %791, align 4, !tbaa !133
  %793 = getelementptr inbounds float, ptr %787, i64 1
  %794 = load float, ptr %793, align 4, !tbaa !133
  %795 = getelementptr inbounds float, ptr %791, i64 1
  store float %794, ptr %795, align 4, !tbaa !133
  %796 = getelementptr inbounds float, ptr %787, i64 2
  %797 = load float, ptr %796, align 4, !tbaa !133
  %798 = getelementptr inbounds float, ptr %791, i64 2
  store float %797, ptr %798, align 4, !tbaa !133
  %799 = getelementptr inbounds float, ptr %787, i64 3
  %800 = load float, ptr %799, align 4, !tbaa !133
  %801 = getelementptr inbounds float, ptr %791, i64 3
  store float %800, ptr %801, align 4, !tbaa !133
  br label %802

802:                                              ; preds = %743, %750, %577
  %803 = add nsw i32 %213, 2
  %804 = add nsw i32 %212, 1
  br label %805

805:                                              ; preds = %572, %802
  %806 = phi i32 [ %803, %802 ], [ %573, %572 ]
  %807 = phi i32 [ %804, %802 ], [ %212, %572 ]
  %808 = add nsw i32 %807, 1
  %809 = load ptr, ptr %180, align 8, !tbaa !312
  %810 = getelementptr inbounds %struct.GPUDrawObject, ptr %809, i64 0, i32 11
  %811 = load i32, ptr %810, align 4, !tbaa !313
  %812 = sdiv i32 %811, 3
  %813 = icmp slt i32 %808, %812
  br i1 %813, label %208, label %814, !llvm.loop !361

814:                                              ; preds = %805
  %815 = icmp ne i8 %341, 0
  br label %816

816:                                              ; preds = %814, %179
  %817 = phi ptr [ null, %179 ], [ %336, %814 ]
  %818 = phi i32 [ 0, %179 ], [ %338, %814 ]
  %819 = phi i32 [ 0, %179 ], [ %340, %814 ]
  %820 = phi i32 [ 0, %179 ], [ %806, %814 ]
  %821 = phi i1 [ false, %179 ], [ %815, %814 ]
  %822 = sub nsw i32 %820, %819
  %823 = icmp sgt i32 %822, 0
  %824 = and i1 %823, %821
  br i1 %824, label %825, label %831

825:                                              ; preds = %816
  %826 = icmp eq i32 %818, 0
  br i1 %826, label %828, label %827

827:                                              ; preds = %825
  call void @GPU_buffer_unlock(ptr noundef %817) #11
  call void @GPU_interleaved_attrib_setup(ptr noundef %817, ptr noundef nonnull %8, i32 noundef %818) #11
  br label %828

828:                                              ; preds = %827, %825
  %829 = mul nsw i32 %819, 3
  %830 = mul nsw i32 %822, 3
  call void @glDrawArrays(i32 noundef 4, i32 noundef %829, i32 noundef %830) #11
  br label %831

831:                                              ; preds = %828, %816
  call void @GPU_buffer_unbind() #11
  br label %832

832:                                              ; preds = %831, %176
  %833 = phi ptr [ null, %176 ], [ %817, %831 ]
  call void @GPU_buffer_free(ptr noundef %833) #11
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %8) #11
  br label %837

834:                                              ; preds = %334, %330
  %835 = load ptr, ptr %180, align 8, !tbaa !312
  %836 = getelementptr inbounds %struct.GPUDrawObject, ptr %835, i64 0, i32 15
  store i8 1, ptr %836, align 4, !tbaa !362
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %8) #11
  br label %838

837:                                              ; preds = %832, %175
  call void @glShadeModel(i32 noundef 7424) #11
  br label %838

838:                                              ; preds = %834, %35, %39, %837
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2564, ptr nonnull %5) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdDM_drawMappedFacesMat(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) #0 {
  %5 = alloca %struct.GPUVertexAttribs, align 4
  %6 = alloca %struct.DMVertexAttribs, align 8
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 2564, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %6) #11
  %8 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = tail call ptr %13(ptr noundef %0, i32 noundef 8) #11
  %15 = load ptr, ptr %12, align 8, !tbaa !67
  %16 = tail call ptr %15(ptr noundef %0, i32 noundef 40) #11
  %17 = load ptr, ptr %12, align 8, !tbaa !67
  %18 = tail call ptr %17(ptr noundef %0, i32 noundef 7) #11
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 54
  %20 = load ptr, ptr %19, align 8, !tbaa !222
  %21 = tail call ptr %20(ptr noundef %0, i32 noundef 7) #11
  %22 = icmp eq ptr %18, null
  %23 = select i1 %22, ptr null, ptr %21
  %24 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !291
  %26 = icmp eq ptr %25, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 7
  %29 = load i8, ptr %28, align 8, !tbaa !299
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = tail call i32 @BKE_pbvh_type(ptr noundef nonnull %25) #11
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !43
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %161, label %38

38:                                               ; preds = %34
  call void %1(ptr noundef %3, i32 noundef 1, ptr noundef nonnull %5) #11
  %39 = load ptr, ptr %24, align 8, !tbaa !291
  call void @BKE_pbvh_draw(ptr noundef %39, ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef zeroext 0) #11
  br label %161

40:                                               ; preds = %31, %27, %4
  %41 = load ptr, ptr %24, align 8, !tbaa !291
  %42 = icmp eq ptr %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 7
  %45 = load i8, ptr %44, align 8, !tbaa !299
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !43
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %53 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %52, i32 noundef 8) #11
  %54 = load ptr, ptr %24, align 8, !tbaa !291
  tail call void @BKE_pbvh_update(ptr noundef %54, i32 noundef 2, ptr noundef %53) #11
  br label %55

55:                                               ; preds = %40, %43, %47, %51
  tail call void @glShadeModel(i32 noundef 7425) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %6, i8 0, i64 376, i1 false)
  tail call void @glBegin(i32 noundef 7) #11
  %56 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %57 = load i32, ptr %56, align 8, !tbaa !43
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %160

59:                                               ; preds = %55
  %60 = icmp eq ptr %16, null
  %61 = icmp eq ptr %2, null
  %62 = icmp eq ptr %23, null
  %63 = icmp eq ptr %14, null
  br label %64

64:                                               ; preds = %59, %154
  %65 = phi i64 [ 0, %59 ], [ %155, %154 ]
  %66 = phi ptr [ %11, %59 ], [ %156, %154 ]
  %67 = phi i32 [ -1, %59 ], [ %83, %154 ]
  br i1 %60, label %68, label %73

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.MFace, ptr %66, i64 0, i32 6
  %70 = load i8, ptr %69, align 1, !tbaa !172
  %71 = and i8 %70, 1
  %72 = icmp ne i8 %71, 0
  br label %73

73:                                               ; preds = %68, %64
  %74 = phi i1 [ true, %64 ], [ %72, %68 ]
  %75 = zext i1 %74 to i8
  %76 = getelementptr inbounds %struct.MFace, ptr %66, i64 0, i32 4
  %77 = load i16, ptr %76, align 4, !tbaa !171
  %78 = sext i16 %77 to i32
  %79 = add nsw i32 %78, 1
  %80 = icmp eq i32 %79, %67
  br i1 %80, label %82, label %81

81:                                               ; preds = %73
  call void @glEnd() #11
  call void %1(ptr noundef %3, i32 noundef %79, ptr noundef nonnull %5) #11
  call void @DM_vertex_attributes_from_gpu(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  call void @glBegin(i32 noundef 7) #11
  br label %82

82:                                               ; preds = %81, %73
  %83 = phi i32 [ %79, %81 ], [ %67, %73 ]
  br i1 %61, label %101, label %84

84:                                               ; preds = %82
  %85 = trunc i64 %65 to i32
  br i1 %22, label %95, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds i32, ptr %18, i64 %65
  %88 = load i32, ptr %87, align 4, !tbaa !118
  %89 = icmp eq i32 %88, -1
  %90 = select i1 %89, i1 true, i1 %62
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = sext i32 %88 to i64
  %93 = getelementptr inbounds i32, ptr %23, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !118
  br label %95

95:                                               ; preds = %86, %91, %84
  %96 = phi i32 [ %85, %84 ], [ %94, %91 ], [ %88, %86 ]
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = call zeroext i8 %2(ptr noundef %3, i32 noundef %96) #11
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %154, label %101

101:                                              ; preds = %95, %98, %82
  br i1 %74, label %127, label %102

102:                                              ; preds = %101
  br i1 %63, label %105, label %103

103:                                              ; preds = %102
  %104 = getelementptr inbounds [3 x float], ptr %14, i64 %65
  call void @glNormal3fv(ptr noundef nonnull %104) #11
  br label %133

105:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  %106 = getelementptr inbounds %struct.MFace, ptr %66, i64 0, i32 3
  %107 = load i32, ptr %106, align 4, !tbaa !168
  %108 = icmp eq i32 %107, 0
  %109 = load i32, ptr %66, align 4, !tbaa !164
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.MVert, ptr %9, i64 %110
  %112 = getelementptr inbounds %struct.MFace, ptr %66, i64 0, i32 1
  %113 = load i32, ptr %112, align 4, !tbaa !166
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.MVert, ptr %9, i64 %114
  %116 = getelementptr inbounds %struct.MFace, ptr %66, i64 0, i32 2
  %117 = load i32, ptr %116, align 4, !tbaa !167
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.MVert, ptr %9, i64 %118
  br i1 %108, label %124, label %120

120:                                              ; preds = %105
  %121 = zext i32 %107 to i64
  %122 = getelementptr inbounds %struct.MVert, ptr %9, i64 %121
  %123 = call float @normal_quad_v3(ptr noundef nonnull %7, ptr noundef %111, ptr noundef %115, ptr noundef %119, ptr noundef nonnull %122) #11
  br label %126

124:                                              ; preds = %105
  %125 = call float @normal_tri_v3(ptr noundef nonnull %7, ptr noundef %111, ptr noundef %115, ptr noundef %119) #11
  br label %126

126:                                              ; preds = %124, %120
  call void @glNormal3fv(ptr noundef nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  br label %133

127:                                              ; preds = %101
  br i1 %60, label %133, label %128

128:                                              ; preds = %127
  %129 = getelementptr inbounds [4 x [3 x i16]], ptr %16, i64 %65
  %130 = getelementptr inbounds [4 x [3 x i16]], ptr %16, i64 %65, i64 1
  %131 = getelementptr inbounds [4 x [3 x i16]], ptr %16, i64 %65, i64 2
  %132 = getelementptr inbounds [4 x [3 x i16]], ptr %16, i64 %65, i64 3
  br label %133

133:                                              ; preds = %127, %128, %103, %126
  %134 = phi ptr [ %129, %128 ], [ null, %127 ], [ null, %103 ], [ null, %126 ]
  %135 = phi ptr [ %130, %128 ], [ null, %127 ], [ null, %103 ], [ null, %126 ]
  %136 = phi ptr [ %131, %128 ], [ null, %127 ], [ null, %103 ], [ null, %126 ]
  %137 = phi ptr [ %132, %128 ], [ null, %127 ], [ null, %103 ], [ null, %126 ]
  %138 = load i32, ptr %66, align 4, !tbaa !164
  %139 = trunc i64 %65 to i32
  call fastcc void @cddm_draw_attrib_vertex(ptr noundef nonnull %6, ptr noundef %9, i32 noundef %139, i32 noundef %138, i32 noundef 0, ptr noundef %134, i8 noundef zeroext %75)
  %140 = getelementptr inbounds %struct.MFace, ptr %66, i64 0, i32 1
  %141 = load i32, ptr %140, align 4, !tbaa !166
  %142 = trunc i64 %65 to i32
  call fastcc void @cddm_draw_attrib_vertex(ptr noundef nonnull %6, ptr noundef %9, i32 noundef %142, i32 noundef %141, i32 noundef 1, ptr noundef %135, i8 noundef zeroext %75)
  %143 = getelementptr inbounds %struct.MFace, ptr %66, i64 0, i32 2
  %144 = load i32, ptr %143, align 4, !tbaa !167
  %145 = trunc i64 %65 to i32
  call fastcc void @cddm_draw_attrib_vertex(ptr noundef nonnull %6, ptr noundef %9, i32 noundef %145, i32 noundef %144, i32 noundef 2, ptr noundef %136, i8 noundef zeroext %75)
  %146 = getelementptr inbounds %struct.MFace, ptr %66, i64 0, i32 3
  %147 = load i32, ptr %146, align 4, !tbaa !168
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %133
  %150 = trunc i64 %65 to i32
  call fastcc void @cddm_draw_attrib_vertex(ptr noundef nonnull %6, ptr noundef %9, i32 noundef %150, i32 noundef %147, i32 noundef 3, ptr noundef %137, i8 noundef zeroext %75)
  br label %154

151:                                              ; preds = %133
  %152 = load i32, ptr %143, align 4, !tbaa !167
  %153 = trunc i64 %65 to i32
  call fastcc void @cddm_draw_attrib_vertex(ptr noundef nonnull %6, ptr noundef %9, i32 noundef %153, i32 noundef %152, i32 noundef 2, ptr noundef %136, i8 noundef zeroext %75)
  br label %154

154:                                              ; preds = %149, %151, %98
  %155 = add nuw nsw i64 %65, 1
  %156 = getelementptr inbounds %struct.MFace, ptr %66, i64 1
  %157 = load i32, ptr %56, align 8, !tbaa !43
  %158 = sext i32 %157 to i64
  %159 = icmp slt i64 %155, %158
  br i1 %159, label %64, label %160, !llvm.loop !363

160:                                              ; preds = %154, %55
  call void @glEnd() #11
  call void @glShadeModel(i32 noundef 7424) #11
  br label %161

161:                                              ; preds = %34, %38, %160
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2564, ptr nonnull %5) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdDM_foreachMappedVert(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call ptr @DM_get_vert_data_layer(ptr noundef %0, i32 noundef 7) #11
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !125
  %11 = icmp sgt i32 %10, 0
  br i1 %8, label %16, label %12

12:                                               ; preds = %4
  br i1 %11, label %13, label %44

13:                                               ; preds = %12
  %14 = and i32 %3, 1
  %15 = icmp eq i32 %14, 0
  br label %20

16:                                               ; preds = %4
  br i1 %11, label %17, label %44

17:                                               ; preds = %16
  %18 = and i32 %3, 1
  %19 = icmp eq i32 %18, 0
  br label %35

20:                                               ; preds = %13, %30
  %21 = phi ptr [ %6, %13 ], [ %32, %30 ]
  %22 = phi ptr [ %7, %13 ], [ %24, %30 ]
  %23 = phi i32 [ 0, %13 ], [ %31, %30 ]
  %24 = getelementptr inbounds i32, ptr %22, i64 1
  %25 = load i32, ptr %22, align 4, !tbaa !118
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.MVert, ptr %21, i64 0, i32 1
  %29 = select i1 %15, ptr null, ptr %28
  tail call void %1(ptr noundef %2, i32 noundef %25, ptr noundef %21, ptr noundef null, ptr noundef %29) #11
  br label %30

30:                                               ; preds = %20, %27
  %31 = add nuw nsw i32 %23, 1
  %32 = getelementptr inbounds %struct.MVert, ptr %21, i64 1
  %33 = load i32, ptr %9, align 8, !tbaa !125
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %20, label %44, !llvm.loop !364

35:                                               ; preds = %17, %35
  %36 = phi ptr [ %6, %17 ], [ %41, %35 ]
  %37 = phi i32 [ 0, %17 ], [ %40, %35 ]
  %38 = getelementptr inbounds %struct.MVert, ptr %36, i64 0, i32 1
  %39 = select i1 %19, ptr null, ptr %38
  tail call void %1(ptr noundef %2, i32 noundef %37, ptr noundef %36, ptr noundef null, ptr noundef %39) #11
  %40 = add nuw nsw i32 %37, 1
  %41 = getelementptr inbounds %struct.MVert, ptr %36, i64 1
  %42 = load i32, ptr %9, align 8, !tbaa !125
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %35, label %44, !llvm.loop !365

44:                                               ; preds = %30, %35, %12, %16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdDM_foreachMappedEdge(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = tail call ptr @DM_get_edge_data_layer(ptr noundef %0, i32 noundef 7) #11
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !126
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %3, %31
  %13 = phi ptr [ %32, %31 ], [ %8, %3 ]
  %14 = phi ptr [ %34, %31 ], [ %7, %3 ]
  %15 = phi i32 [ %33, %31 ], [ 0, %3 ]
  %16 = icmp eq ptr %13, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds i32, ptr %13, i64 1
  %19 = load i32, ptr %13, align 4, !tbaa !118
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %31, label %21

21:                                               ; preds = %12, %17
  %22 = phi i32 [ %19, %17 ], [ %15, %12 ]
  %23 = phi ptr [ %18, %17 ], [ null, %12 ]
  %24 = load i32, ptr %14, align 4, !tbaa !150
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.MVert, ptr %5, i64 %25
  %27 = getelementptr inbounds %struct.MEdge, ptr %14, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !153
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.MVert, ptr %5, i64 %29
  tail call void %1(ptr noundef %2, i32 noundef %22, ptr noundef %26, ptr noundef %30) #11
  br label %31

31:                                               ; preds = %21, %17
  %32 = phi ptr [ %18, %17 ], [ %23, %21 ]
  %33 = add nuw nsw i32 %15, 1
  %34 = getelementptr inbounds %struct.MEdge, ptr %14, i64 1
  %35 = load i32, ptr %9, align 4, !tbaa !126
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %12, label %37, !llvm.loop !366

37:                                               ; preds = %31, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdDM_foreachMappedLoop(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = and i32 %3, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @DM_get_loop_data_layer(ptr noundef %0, i32 noundef 8) #11
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi ptr [ %8, %7 ], [ null, %4 ]
  %11 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !94
  %15 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  %17 = tail call ptr @DM_get_vert_data_layer(ptr noundef %0, i32 noundef 7) #11
  %18 = tail call ptr @DM_get_poly_data_layer(ptr noundef %0, i32 noundef 7) #11
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !45
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %74

22:                                               ; preds = %9
  %23 = icmp eq ptr %17, null
  %24 = icmp eq ptr %18, null
  br label %25

25:                                               ; preds = %22, %66
  %26 = phi i64 [ 0, %22 ], [ %69, %66 ]
  %27 = phi ptr [ %10, %22 ], [ %68, %66 ]
  %28 = phi ptr [ %14, %22 ], [ %67, %66 ]
  %29 = phi ptr [ %16, %22 ], [ %70, %66 ]
  %30 = getelementptr inbounds %struct.MPoly, ptr %29, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !205
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %66

33:                                               ; preds = %25
  %34 = getelementptr inbounds i32, ptr %18, i64 %26
  %35 = trunc i64 %26 to i32
  br label %36

36:                                               ; preds = %33, %61
  %37 = phi ptr [ %27, %33 ], [ %53, %61 ]
  %38 = phi ptr [ %28, %33 ], [ %63, %61 ]
  %39 = phi i32 [ 0, %33 ], [ %62, %61 ]
  br i1 %23, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr %38, align 4, !tbaa !211
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %17, i64 %42
  br label %44

44:                                               ; preds = %36, %40
  %45 = phi ptr [ %43, %40 ], [ %38, %36 ]
  %46 = load i32, ptr %45, align 4, !tbaa !118
  br i1 %24, label %49, label %47

47:                                               ; preds = %44
  %48 = load i32, ptr %34, align 4, !tbaa !118
  br label %49

49:                                               ; preds = %44, %47
  %50 = phi i32 [ %48, %47 ], [ %35, %44 ]
  %51 = icmp eq ptr %37, null
  %52 = getelementptr inbounds [3 x float], ptr %37, i64 1
  %53 = select i1 %51, ptr null, ptr %52
  %54 = icmp eq i32 %46, -1
  %55 = icmp eq i32 %50, -1
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %49
  %58 = load i32, ptr %38, align 4, !tbaa !211
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.MVert, ptr %12, i64 %59
  tail call void %1(ptr noundef %2, i32 noundef %46, i32 noundef %50, ptr noundef %60, ptr noundef %37) #11
  br label %61

61:                                               ; preds = %57, %49
  %62 = add nuw nsw i32 %39, 1
  %63 = getelementptr inbounds %struct.MLoop, ptr %38, i64 1
  %64 = load i32, ptr %30, align 4, !tbaa !205
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %36, label %66, !llvm.loop !367

66:                                               ; preds = %61, %25
  %67 = phi ptr [ %28, %25 ], [ %63, %61 ]
  %68 = phi ptr [ %27, %25 ], [ %53, %61 ]
  %69 = add nuw nsw i64 %26, 1
  %70 = getelementptr inbounds %struct.MPoly, ptr %29, i64 1
  %71 = load i32, ptr %19, align 8, !tbaa !45
  %72 = sext i32 %71 to i64
  %73 = icmp slt i64 %69, %72
  br i1 %73, label %25, label %74, !llvm.loop !368

74:                                               ; preds = %66, %9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdDM_foreachMappedFaceCenter(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %10 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %9, i32 noundef 7) #11
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !45
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  %17 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 4
  %18 = and i32 %3, 1
  %19 = icmp eq i32 %18, 0
  br label %20

20:                                               ; preds = %14, %39
  %21 = phi ptr [ %10, %14 ], [ %40, %39 ]
  %22 = phi i32 [ 0, %14 ], [ %41, %39 ]
  %23 = phi ptr [ %16, %14 ], [ %42, %39 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  %24 = icmp eq ptr %21, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds i32, ptr %21, i64 1
  %27 = load i32, ptr %21, align 4, !tbaa !118
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %39, label %29

29:                                               ; preds = %20, %25
  %30 = phi i32 [ %27, %25 ], [ %22, %20 ]
  %31 = phi ptr [ %26, %25 ], [ null, %20 ]
  %32 = load ptr, ptr %17, align 8, !tbaa !94
  %33 = load i32, ptr %23, align 4, !tbaa !208
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.MLoop, ptr %32, i64 %34
  call void @BKE_mesh_calc_poly_center(ptr noundef nonnull %23, ptr noundef %35, ptr noundef %8, ptr noundef nonnull %5) #11
  br i1 %19, label %37, label %36

36:                                               ; preds = %29
  call void @BKE_mesh_calc_poly_normal(ptr noundef nonnull %23, ptr noundef %35, ptr noundef %8, ptr noundef nonnull %6) #11
  br label %37

37:                                               ; preds = %29, %36
  %38 = phi ptr [ %6, %36 ], [ null, %29 ]
  call void %1(ptr noundef %2, i32 noundef %30, ptr noundef nonnull %5, ptr noundef %38) #11
  br label %39

39:                                               ; preds = %25, %37
  %40 = phi ptr [ %31, %37 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  %41 = add nuw nsw i32 %22, 1
  %42 = getelementptr inbounds %struct.MPoly, ptr %23, i64 1
  %43 = load i32, ptr %11, align 8, !tbaa !45
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %20, label %45, !llvm.loop !369

45:                                               ; preds = %39, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdDM_release(ptr noundef %0) #0 {
  %2 = tail call i32 @DM_release(ptr noundef %0) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !251
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %9(ptr noundef nonnull %6) #11
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !252
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %15(ptr noundef nonnull %12) #11
  br label %16

16:                                               ; preds = %10, %14
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %17(ptr noundef %0) #11
  br label %18

18:                                               ; preds = %16, %1
  ret void
}

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_pbvh_new() local_unnamed_addr #2

declare void @BKE_pbvh_build_bmesh(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @pbvh_show_diffuse_color_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_mesh_tessface_ensure(ptr noundef) local_unnamed_addr #2

declare void @BKE_pbvh_build_mesh(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_pbvh_apply_vertCos(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @GPU_buffer_legacy(ptr noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glVertex3fv(ptr noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

declare void @GPU_vertex_setup(ptr noundef) local_unnamed_addr #2

declare void @glDrawArrays(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @GPU_buffer_unbind() local_unnamed_addr #2

declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

declare void @GPU_uvedge_setup(ptr noundef) local_unnamed_addr #2

declare i32 @BKE_pbvh_type(ptr noundef) local_unnamed_addr #2

declare void @BKE_pbvh_draw(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @GPU_edge_setup(ptr noundef) local_unnamed_addr #2

declare void @GPU_buffer_draw_elements(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glShadeModel(i32 noundef) local_unnamed_addr #2

declare void @glNormal3sv(ptr noundef) local_unnamed_addr #2

declare void @glNormal3fv(ptr noundef) local_unnamed_addr #2

declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GPU_normal_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @cdDM_drawFacesTex_common(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 4) #11
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = tail call ptr %12(ptr noundef %0, i32 noundef 8) #11
  %14 = load ptr, ptr %11, align 8, !tbaa !67
  %15 = tail call ptr %14(ptr noundef %0, i32 noundef 40) #11
  %16 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 5) #11
  %17 = trunc i32 %5 to i8
  %18 = lshr i8 %17, 2
  %19 = and i8 %18, 1
  %20 = load ptr, ptr %11, align 8, !tbaa !67
  %21 = tail call ptr %20(ptr noundef %0, i32 noundef 7) #11
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 54
  %23 = load ptr, ptr %22, align 8, !tbaa !222
  %24 = tail call ptr %23(ptr noundef %0, i32 noundef 7) #11
  %25 = icmp eq ptr %21, null
  %26 = select i1 %25, ptr null, ptr %24
  %27 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !291
  %29 = icmp eq ptr %28, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %6
  %31 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 7
  %32 = load i8, ptr %31, align 8, !tbaa !299
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @BKE_pbvh_type(ptr noundef nonnull %28) #11
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !43
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %449, label %41

41:                                               ; preds = %37
  %42 = tail call i32 @GPU_set_tpage(ptr noundef null, i32 noundef 0, i32 noundef 0) #11
  %43 = load ptr, ptr %27, align 8, !tbaa !291
  tail call void @BKE_pbvh_draw(ptr noundef %43, ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef zeroext 0) #11
  br label %449

44:                                               ; preds = %34, %30, %6
  %45 = load ptr, ptr %11, align 8, !tbaa !67
  %46 = tail call ptr %45(ptr noundef %0, i32 noundef 22) #11
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load ptr, ptr %11, align 8, !tbaa !67
  %50 = tail call ptr %49(ptr noundef %0, i32 noundef 20) #11
  br label %51

51:                                               ; preds = %48, %44
  %52 = phi i32 [ 22, %44 ], [ 20, %48 ]
  %53 = phi ptr [ %46, %44 ], [ %50, %48 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load ptr, ptr %11, align 8, !tbaa !67
  %57 = tail call ptr %56(ptr noundef %0, i32 noundef 6) #11
  br label %58

58:                                               ; preds = %55, %51
  %59 = phi i32 [ %52, %51 ], [ 6, %55 ]
  %60 = phi ptr [ %53, %51 ], [ %57, %55 ]
  %61 = load ptr, ptr %27, align 8, !tbaa !291
  %62 = icmp eq ptr %61, null
  br i1 %62, label %75, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 7
  %65 = load i8, ptr %64, align 8, !tbaa !299
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %69 = load i32, ptr %68, align 8, !tbaa !43
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %73 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %72, i32 noundef 8) #11
  %74 = load ptr, ptr %27, align 8, !tbaa !291
  tail call void @BKE_pbvh_update(ptr noundef %74, i32 noundef 2, ptr noundef %73) #11
  br label %75

75:                                               ; preds = %58, %63, %67, %71
  %76 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef %0) #11
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %342, label %78

78:                                               ; preds = %75
  %79 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 5) #11
  %80 = and i32 %5, 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %84 = tail call i32 @CustomData_get_stencil_layer(ptr noundef nonnull %83, i32 noundef 5) #11
  %85 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %83, i32 noundef 5, i32 noundef %84) #11
  %86 = icmp eq ptr %85, null
  br label %87

87:                                               ; preds = %82, %78
  %88 = phi i1 [ %86, %82 ], [ true, %78 ]
  %89 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %90 = load i32, ptr %89, align 8, !tbaa !43
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %449

92:                                               ; preds = %87
  %93 = icmp eq ptr %1, null
  %94 = icmp eq i8 %19, 0
  %95 = icmp ne ptr %60, null
  %96 = zext i1 %95 to i8
  %97 = icmp eq ptr %26, null
  %98 = icmp eq ptr %2, null
  %99 = icmp eq ptr %2, null
  %100 = icmp ne ptr %60, null
  br label %101

101:                                              ; preds = %92, %334
  %102 = phi i64 [ 0, %92 ], [ %337, %334 ]
  %103 = phi ptr [ %10, %92 ], [ %338, %334 ]
  %104 = phi ptr [ %13, %92 ], [ %336, %334 ]
  %105 = phi ptr [ %15, %92 ], [ %335, %334 ]
  %106 = phi ptr [ %79, %92 ], [ %119, %334 ]
  %107 = phi i32 [ -1, %92 ], [ %118, %334 ]
  br i1 %81, label %117, label %108

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.MFace, ptr %103, i64 0, i32 4
  %110 = load i16, ptr %109, align 4, !tbaa !171
  %111 = sext i16 %110 to i32
  %112 = icmp eq i32 %107, %111
  br i1 %112, label %117, label %113

113:                                              ; preds = %108
  %114 = call ptr @DM_paint_uvlayer_active_get(ptr noundef %0, i32 noundef %111) #11
  %115 = load i16, ptr %109, align 4, !tbaa !171
  %116 = sext i16 %115 to i32
  br label %117

117:                                              ; preds = %108, %113, %101
  %118 = phi i32 [ %116, %113 ], [ %107, %108 ], [ %107, %101 ]
  %119 = phi ptr [ %114, %113 ], [ %106, %108 ], [ %106, %101 ]
  %120 = icmp eq ptr %119, null
  %121 = getelementptr inbounds %struct.MTFace, ptr %119, i64 %102
  %122 = select i1 %120, ptr null, ptr %121
  br i1 %93, label %129, label %123

123:                                              ; preds = %117
  %124 = select i1 %94, ptr null, ptr %122
  %125 = getelementptr inbounds %struct.MFace, ptr %103, i64 0, i32 4
  %126 = load i16, ptr %125, align 4, !tbaa !171
  %127 = sext i16 %126 to i32
  %128 = call i32 %1(ptr noundef %124, i8 noundef zeroext %96, i32 noundef %127) #11
  br label %157

129:                                              ; preds = %117
  br i1 %25, label %149, label %130

130:                                              ; preds = %129
  %131 = getelementptr inbounds i32, ptr %21, i64 %102
  %132 = load i32, ptr %131, align 4, !tbaa !118
  %133 = icmp eq i32 %132, -1
  %134 = select i1 %133, i1 true, i1 %97
  br i1 %134, label %139, label %135

135:                                              ; preds = %130
  %136 = sext i32 %132 to i64
  %137 = getelementptr inbounds i32, ptr %26, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !118
  br label %139

139:                                              ; preds = %130, %135
  %140 = phi i32 [ %138, %135 ], [ %132, %130 ]
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %157, label %142

142:                                              ; preds = %139
  br i1 %98, label %145, label %143

143:                                              ; preds = %142
  %144 = call i32 %2(ptr noundef %4, i32 noundef %140) #11
  br label %157

145:                                              ; preds = %142
  %146 = icmp eq ptr %104, null
  %147 = getelementptr inbounds float, ptr %104, i64 3
  %148 = select i1 %146, ptr null, ptr %147
  br label %334

149:                                              ; preds = %129
  br i1 %99, label %153, label %150

150:                                              ; preds = %149
  %151 = trunc i64 %102 to i32
  %152 = call i32 %2(ptr noundef %4, i32 noundef %151) #11
  br label %157

153:                                              ; preds = %149
  %154 = icmp eq ptr %104, null
  %155 = getelementptr inbounds float, ptr %104, i64 3
  %156 = select i1 %154, ptr null, ptr %155
  br label %334

157:                                              ; preds = %139, %150, %143, %123
  %158 = phi i32 [ %128, %123 ], [ %144, %143 ], [ %152, %150 ], [ 1, %139 ]
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %327, label %160

160:                                              ; preds = %157
  %161 = icmp ne i32 %158, 2
  %162 = select i1 %161, i1 %100, i1 false
  %163 = shl i64 %102, 2
  %164 = and i64 %163, 4294967292
  %165 = getelementptr inbounds %struct.MCol, ptr %60, i64 %164
  %166 = select i1 %162, ptr %165, ptr null
  %167 = icmp eq ptr %105, null
  br i1 %167, label %168, label %198

168:                                              ; preds = %160
  %169 = getelementptr inbounds %struct.MFace, ptr %103, i64 0, i32 6
  %170 = load i8, ptr %169, align 1, !tbaa !172
  %171 = and i8 %170, 1
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %173, label %198

173:                                              ; preds = %168
  %174 = icmp eq ptr %104, null
  br i1 %174, label %176, label %175

175:                                              ; preds = %173
  call void @glNormal3fv(ptr noundef nonnull %104) #11
  br label %198

176:                                              ; preds = %173
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  %177 = getelementptr inbounds %struct.MFace, ptr %103, i64 0, i32 3
  %178 = load i32, ptr %177, align 4, !tbaa !168
  %179 = icmp eq i32 %178, 0
  %180 = load i32, ptr %103, align 4, !tbaa !164
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.MVert, ptr %9, i64 %181
  %183 = getelementptr inbounds %struct.MFace, ptr %103, i64 0, i32 1
  %184 = load i32, ptr %183, align 4, !tbaa !166
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.MVert, ptr %9, i64 %185
  %187 = getelementptr inbounds %struct.MFace, ptr %103, i64 0, i32 2
  %188 = load i32, ptr %187, align 4, !tbaa !167
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.MVert, ptr %9, i64 %189
  br i1 %179, label %195, label %191

191:                                              ; preds = %176
  %192 = zext i32 %178 to i64
  %193 = getelementptr inbounds %struct.MVert, ptr %9, i64 %192
  %194 = call float @normal_quad_v3(ptr noundef nonnull %7, ptr noundef %182, ptr noundef %186, ptr noundef %190, ptr noundef nonnull %193) #11
  br label %197

195:                                              ; preds = %176
  %196 = call float @normal_tri_v3(ptr noundef nonnull %7, ptr noundef %182, ptr noundef %186, ptr noundef %190) #11
  br label %197

197:                                              ; preds = %195, %191
  call void @glNormal3fv(ptr noundef nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  br label %198

198:                                              ; preds = %175, %197, %168, %160
  %199 = getelementptr inbounds %struct.MFace, ptr %103, i64 0, i32 3
  %200 = load i32, ptr %199, align 4, !tbaa !168
  %201 = icmp eq i32 %200, 0
  %202 = select i1 %201, i32 4, i32 7
  call void @glBegin(i32 noundef %202) #11
  %203 = icmp eq ptr %122, null
  br i1 %203, label %205, label %204

204:                                              ; preds = %198
  call void @glTexCoord2fv(ptr noundef nonnull %122) #11
  br label %205

205:                                              ; preds = %204, %198
  br i1 %88, label %208, label %206

206:                                              ; preds = %205
  %207 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !47
  call void %207(i32 noundef 33986, ptr noundef %122) #11
  br label %208

208:                                              ; preds = %206, %205
  %209 = icmp eq ptr %166, null
  br i1 %209, label %217, label %210

210:                                              ; preds = %208
  %211 = getelementptr inbounds i8, ptr %166, i64 3
  %212 = load i8, ptr %211, align 1, !tbaa !132
  %213 = getelementptr inbounds i8, ptr %166, i64 2
  %214 = load i8, ptr %213, align 1, !tbaa !132
  %215 = getelementptr inbounds i8, ptr %166, i64 1
  %216 = load i8, ptr %215, align 1, !tbaa !132
  call void @glColor3ub(i8 noundef zeroext %212, i8 noundef zeroext %214, i8 noundef zeroext %216) #11
  br label %217

217:                                              ; preds = %210, %208
  %218 = load i32, ptr %103, align 4, !tbaa !164
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds %struct.MVert, ptr %9, i64 %219
  br i1 %167, label %221, label %228

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.MFace, ptr %103, i64 0, i32 6
  %223 = load i8, ptr %222, align 1, !tbaa !172
  %224 = and i8 %223, 1
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %230, label %226

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.MVert, ptr %9, i64 %219, i32 1
  br label %228

228:                                              ; preds = %217, %226
  %229 = phi ptr [ %227, %226 ], [ %105, %217 ]
  call void @glNormal3sv(ptr noundef nonnull %229) #11
  br label %230

230:                                              ; preds = %228, %221
  call void @glVertex3fv(ptr noundef %220) #11
  br i1 %203, label %233, label %231

231:                                              ; preds = %230
  %232 = getelementptr inbounds [4 x [2 x float]], ptr %122, i64 0, i64 1
  call void @glTexCoord2fv(ptr noundef nonnull %232) #11
  br label %233

233:                                              ; preds = %231, %230
  br i1 %88, label %237, label %234

234:                                              ; preds = %233
  %235 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !47
  %236 = getelementptr inbounds [4 x [2 x float]], ptr %122, i64 0, i64 1
  call void %235(i32 noundef 33986, ptr noundef nonnull %236) #11
  br label %237

237:                                              ; preds = %234, %233
  br i1 %209, label %245, label %238

238:                                              ; preds = %237
  %239 = getelementptr inbounds i8, ptr %166, i64 7
  %240 = load i8, ptr %239, align 1, !tbaa !132
  %241 = getelementptr inbounds i8, ptr %166, i64 6
  %242 = load i8, ptr %241, align 1, !tbaa !132
  %243 = getelementptr inbounds i8, ptr %166, i64 5
  %244 = load i8, ptr %243, align 1, !tbaa !132
  call void @glColor3ub(i8 noundef zeroext %240, i8 noundef zeroext %242, i8 noundef zeroext %244) #11
  br label %245

245:                                              ; preds = %238, %237
  %246 = getelementptr inbounds %struct.MFace, ptr %103, i64 0, i32 1
  %247 = load i32, ptr %246, align 4, !tbaa !166
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds %struct.MVert, ptr %9, i64 %248
  br i1 %167, label %252, label %250

250:                                              ; preds = %245
  %251 = getelementptr inbounds [4 x [3 x i16]], ptr %105, i64 0, i64 1
  br label %259

252:                                              ; preds = %245
  %253 = getelementptr inbounds %struct.MFace, ptr %103, i64 0, i32 6
  %254 = load i8, ptr %253, align 1, !tbaa !172
  %255 = and i8 %254, 1
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %261, label %257

257:                                              ; preds = %252
  %258 = getelementptr inbounds %struct.MVert, ptr %9, i64 %248, i32 1
  br label %259

259:                                              ; preds = %250, %257
  %260 = phi ptr [ %258, %257 ], [ %251, %250 ]
  call void @glNormal3sv(ptr noundef nonnull %260) #11
  br label %261

261:                                              ; preds = %259, %252
  call void @glVertex3fv(ptr noundef %249) #11
  br i1 %203, label %264, label %262

262:                                              ; preds = %261
  %263 = getelementptr inbounds [4 x [2 x float]], ptr %122, i64 0, i64 2
  call void @glTexCoord2fv(ptr noundef nonnull %263) #11
  br label %264

264:                                              ; preds = %262, %261
  br i1 %88, label %268, label %265

265:                                              ; preds = %264
  %266 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !47
  %267 = getelementptr inbounds [4 x [2 x float]], ptr %122, i64 0, i64 2
  call void %266(i32 noundef 33986, ptr noundef nonnull %267) #11
  br label %268

268:                                              ; preds = %265, %264
  br i1 %209, label %276, label %269

269:                                              ; preds = %268
  %270 = getelementptr inbounds i8, ptr %166, i64 11
  %271 = load i8, ptr %270, align 1, !tbaa !132
  %272 = getelementptr inbounds i8, ptr %166, i64 10
  %273 = load i8, ptr %272, align 1, !tbaa !132
  %274 = getelementptr inbounds i8, ptr %166, i64 9
  %275 = load i8, ptr %274, align 1, !tbaa !132
  call void @glColor3ub(i8 noundef zeroext %271, i8 noundef zeroext %273, i8 noundef zeroext %275) #11
  br label %276

276:                                              ; preds = %269, %268
  %277 = getelementptr inbounds %struct.MFace, ptr %103, i64 0, i32 2
  %278 = load i32, ptr %277, align 4, !tbaa !167
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds %struct.MVert, ptr %9, i64 %279
  br i1 %167, label %283, label %281

281:                                              ; preds = %276
  %282 = getelementptr inbounds [4 x [3 x i16]], ptr %105, i64 0, i64 2
  br label %290

283:                                              ; preds = %276
  %284 = getelementptr inbounds %struct.MFace, ptr %103, i64 0, i32 6
  %285 = load i8, ptr %284, align 1, !tbaa !172
  %286 = and i8 %285, 1
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %292, label %288

288:                                              ; preds = %283
  %289 = getelementptr inbounds %struct.MVert, ptr %9, i64 %279, i32 1
  br label %290

290:                                              ; preds = %281, %288
  %291 = phi ptr [ %289, %288 ], [ %282, %281 ]
  call void @glNormal3sv(ptr noundef nonnull %291) #11
  br label %292

292:                                              ; preds = %290, %283
  call void @glVertex3fv(ptr noundef %280) #11
  %293 = load i32, ptr %199, align 4, !tbaa !168
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %326, label %295

295:                                              ; preds = %292
  br i1 %203, label %298, label %296

296:                                              ; preds = %295
  %297 = getelementptr inbounds [4 x [2 x float]], ptr %122, i64 0, i64 3
  call void @glTexCoord2fv(ptr noundef nonnull %297) #11
  br label %298

298:                                              ; preds = %296, %295
  br i1 %88, label %302, label %299

299:                                              ; preds = %298
  %300 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !47
  %301 = getelementptr inbounds [4 x [2 x float]], ptr %122, i64 0, i64 3
  call void %300(i32 noundef 33986, ptr noundef nonnull %301) #11
  br label %302

302:                                              ; preds = %299, %298
  br i1 %209, label %310, label %303

303:                                              ; preds = %302
  %304 = getelementptr inbounds i8, ptr %166, i64 15
  %305 = load i8, ptr %304, align 1, !tbaa !132
  %306 = getelementptr inbounds i8, ptr %166, i64 14
  %307 = load i8, ptr %306, align 1, !tbaa !132
  %308 = getelementptr inbounds i8, ptr %166, i64 13
  %309 = load i8, ptr %308, align 1, !tbaa !132
  call void @glColor3ub(i8 noundef zeroext %305, i8 noundef zeroext %307, i8 noundef zeroext %309) #11
  br label %310

310:                                              ; preds = %303, %302
  %311 = load i32, ptr %199, align 4, !tbaa !168
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds %struct.MVert, ptr %9, i64 %312
  br i1 %167, label %316, label %314

314:                                              ; preds = %310
  %315 = getelementptr inbounds [4 x [3 x i16]], ptr %105, i64 0, i64 3
  br label %323

316:                                              ; preds = %310
  %317 = getelementptr inbounds %struct.MFace, ptr %103, i64 0, i32 6
  %318 = load i8, ptr %317, align 1, !tbaa !172
  %319 = and i8 %318, 1
  %320 = icmp eq i8 %319, 0
  br i1 %320, label %325, label %321

321:                                              ; preds = %316
  %322 = getelementptr inbounds %struct.MVert, ptr %9, i64 %312, i32 1
  br label %323

323:                                              ; preds = %314, %321
  %324 = phi ptr [ %322, %321 ], [ %315, %314 ]
  call void @glNormal3sv(ptr noundef nonnull %324) #11
  br label %325

325:                                              ; preds = %323, %316
  call void @glVertex3fv(ptr noundef %313) #11
  br label %326

326:                                              ; preds = %325, %292
  call void @glEnd() #11
  br label %327

327:                                              ; preds = %326, %157
  %328 = icmp eq ptr %104, null
  %329 = getelementptr inbounds float, ptr %104, i64 3
  %330 = select i1 %328, ptr null, ptr %329
  %331 = icmp eq ptr %105, null
  %332 = getelementptr inbounds [4 x [3 x i16]], ptr %105, i64 1
  %333 = select i1 %331, ptr null, ptr %332
  br label %334

334:                                              ; preds = %327, %153, %145
  %335 = phi ptr [ %333, %327 ], [ %105, %145 ], [ %105, %153 ]
  %336 = phi ptr [ %330, %327 ], [ %148, %145 ], [ %156, %153 ]
  %337 = add nuw nsw i64 %102, 1
  %338 = getelementptr inbounds %struct.MFace, ptr %103, i64 1
  %339 = load i32, ptr %89, align 8, !tbaa !43
  %340 = sext i32 %339 to i64
  %341 = icmp slt i64 %337, %340
  br i1 %341, label %101, label %449, !llvm.loop !370

342:                                              ; preds = %75
  tail call void @GPU_vertex_setup(ptr noundef %0) #11
  tail call void @GPU_normal_setup(ptr noundef %0) #11
  %343 = and i32 %5, 8
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %346, label %345

345:                                              ; preds = %342
  tail call void @GPU_texpaint_uv_setup(ptr noundef %0) #11
  br label %347

346:                                              ; preds = %342
  tail call void @GPU_uv_setup(ptr noundef %0) #11
  br label %347

347:                                              ; preds = %346, %345
  %348 = icmp ne ptr %60, null
  br i1 %348, label %349, label %350

349:                                              ; preds = %347
  tail call void @GPU_color_setup(ptr noundef %0, i32 noundef %59) #11
  br label %350

350:                                              ; preds = %349, %347
  %351 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef %0) #11
  %352 = icmp eq i8 %351, 0
  br i1 %352, label %353, label %448

353:                                              ; preds = %350
  %354 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %355 = load ptr, ptr %354, align 8, !tbaa !312
  %356 = getelementptr inbounds %struct.GPUDrawObject, ptr %355, i64 0, i32 11
  %357 = load i32, ptr %356, align 4, !tbaa !313
  %358 = getelementptr inbounds %struct.GPUDrawObject, ptr %355, i64 0, i32 6
  %359 = load ptr, ptr %358, align 8, !tbaa !335
  %360 = load i32, ptr %359, align 4, !tbaa !118
  tail call void @glShadeModel(i32 noundef 7425) #11
  %361 = icmp sgt i32 %357, 2
  br i1 %361, label %362, label %448

362:                                              ; preds = %353
  %363 = udiv i32 %357, 3
  %364 = add nsw i32 %363, -1
  %365 = icmp eq ptr %1, null
  %366 = icmp ne i8 %19, 0
  %367 = icmp ne ptr %16, null
  %368 = select i1 %366, i1 %367, i1 false
  %369 = zext i1 %348 to i8
  %370 = icmp eq ptr %26, null
  %371 = icmp eq ptr %2, null
  %372 = icmp eq ptr %2, null
  %373 = icmp eq ptr %3, null
  %374 = zext i32 %364 to i64
  %375 = zext nneg i32 %363 to i64
  br label %376

376:                                              ; preds = %362, %444
  %377 = phi i64 [ 0, %362 ], [ %446, %444 ]
  %378 = phi i32 [ %360, %362 ], [ %389, %444 ]
  %379 = phi i32 [ 0, %362 ], [ %445, %444 ]
  %380 = icmp eq i64 %377, %374
  br i1 %380, label %388, label %381

381:                                              ; preds = %376
  %382 = load ptr, ptr %354, align 8, !tbaa !312
  %383 = getelementptr inbounds %struct.GPUDrawObject, ptr %382, i64 0, i32 6
  %384 = load ptr, ptr %383, align 8, !tbaa !335
  %385 = getelementptr i32, ptr %384, i64 %377
  %386 = getelementptr i32, ptr %385, i64 1
  %387 = load i32, ptr %386, align 4, !tbaa !118
  br label %388

388:                                              ; preds = %381, %376
  %389 = phi i32 [ %387, %381 ], [ %378, %376 ]
  br i1 %365, label %398, label %390

390:                                              ; preds = %388
  %391 = sext i32 %378 to i64
  %392 = getelementptr inbounds %struct.MTFace, ptr %16, i64 %391
  %393 = select i1 %368, ptr %392, ptr null
  %394 = getelementptr inbounds %struct.MFace, ptr %10, i64 %391, i32 4
  %395 = load i16, ptr %394, align 4, !tbaa !171
  %396 = sext i16 %395 to i32
  %397 = tail call i32 %1(ptr noundef %393, i8 noundef zeroext %369, i32 noundef %396) #11
  br label %418

398:                                              ; preds = %388
  br i1 %25, label %415, label %399

399:                                              ; preds = %398
  %400 = sext i32 %378 to i64
  %401 = getelementptr inbounds i32, ptr %21, i64 %400
  %402 = load i32, ptr %401, align 4, !tbaa !118
  %403 = icmp eq i32 %402, -1
  %404 = select i1 %403, i1 true, i1 %370
  br i1 %404, label %409, label %405

405:                                              ; preds = %399
  %406 = sext i32 %402 to i64
  %407 = getelementptr inbounds i32, ptr %26, i64 %406
  %408 = load i32, ptr %407, align 4, !tbaa !118
  br label %409

409:                                              ; preds = %399, %405
  %410 = phi i32 [ %408, %405 ], [ %402, %399 ]
  %411 = icmp eq i32 %410, -1
  %412 = or i1 %371, %411
  br i1 %412, label %418, label %413

413:                                              ; preds = %409
  %414 = tail call i32 %2(ptr noundef %4, i32 noundef %410) #11
  br label %418

415:                                              ; preds = %398
  br i1 %372, label %418, label %416

416:                                              ; preds = %415
  %417 = tail call i32 %2(ptr noundef %4, i32 noundef %378) #11
  br label %418

418:                                              ; preds = %409, %413, %416, %415, %390
  %419 = phi i32 [ %397, %390 ], [ %414, %413 ], [ %417, %416 ], [ 1, %415 ], [ 1, %409 ]
  %420 = icmp eq i32 %419, 0
  %421 = or i1 %380, %420
  %422 = or i1 %373, %421
  br i1 %422, label %426, label %423

423:                                              ; preds = %418
  %424 = tail call i32 %3(ptr noundef %4, i32 noundef %378, i32 noundef %389) #11
  %425 = icmp eq i32 %424, 0
  br label %426

426:                                              ; preds = %423, %418
  %427 = phi i1 [ %425, %423 ], [ %421, %418 ]
  br i1 %427, label %428, label %444

428:                                              ; preds = %426
  %429 = trunc i64 %377 to i32
  %430 = sub nsw i32 %429, %379
  %431 = icmp ne i32 %419, 0
  %432 = zext i1 %431 to i32
  %433 = add nsw i32 %430, %432
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %441, label %435

435:                                              ; preds = %428
  %436 = mul nsw i32 %433, 3
  %437 = mul nsw i32 %379, 3
  %438 = icmp ne i32 %419, 2
  %439 = and i1 %348, %438
  %440 = zext i1 %439 to i32
  tail call void @GPU_color_switch(i32 noundef %440) #11
  tail call void @glDrawArrays(i32 noundef 4, i32 noundef %437, i32 noundef %436) #11
  br label %441

441:                                              ; preds = %435, %428
  %442 = trunc i64 %377 to i32
  %443 = add i32 %442, 1
  br label %444

444:                                              ; preds = %441, %426
  %445 = phi i32 [ %443, %441 ], [ %379, %426 ]
  %446 = add nuw nsw i64 %377, 1
  %447 = icmp eq i64 %446, %375
  br i1 %447, label %448, label %376, !llvm.loop !371

448:                                              ; preds = %444, %353, %350
  tail call void @GPU_buffer_unbind() #11
  tail call void @glShadeModel(i32 noundef 7424) #11
  br label %449

449:                                              ; preds = %334, %87, %448, %37, %41
  ret void
}

declare i32 @GPU_set_tpage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CustomData_get_stencil_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_get_layer_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @DM_paint_uvlayer_active_get(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @glTexCoord2fv(ptr noundef) local_unnamed_addr #2

declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @GPU_texpaint_uv_setup(ptr noundef) local_unnamed_addr #2

declare void @GPU_uv_setup(ptr noundef) local_unnamed_addr #2

declare void @GPU_color_setup(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @GPU_color_switch(i32 noundef) local_unnamed_addr #2

declare void @BKE_pbvh_update(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @glPolygonStipple(ptr noundef) local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @DM_vertex_attributes_from_gpu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @cddm_draw_attrib_vertex(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i8 noundef zeroext %6) unnamed_addr #0 {
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %10 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 4, !tbaa !338
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !372
  %16 = icmp eq ptr %15, null
  %17 = sext i32 %3 to i64
  %18 = getelementptr inbounds [3 x float], ptr %15, i64 %17
  %19 = select i1 %16, ptr %8, ptr %18
  %20 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 3, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !373
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  call void @glTexCoord3fv(ptr noundef %19) #11
  br label %28

24:                                               ; preds = %13
  %25 = load ptr, ptr @__glewVertexAttrib3fvARB, align 8, !tbaa !47
  %26 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 3, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !342
  call void %25(i32 noundef %27, ptr noundef %19) #11
  br label %28

28:                                               ; preds = %23, %24, %7
  %29 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !347
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = sext i32 %2 to i64
  %34 = zext nneg i32 %4 to i64
  br label %46

35:                                               ; preds = %62, %28
  %36 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 5
  %37 = load i32, ptr %36, align 4, !tbaa !348
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %90

39:                                               ; preds = %35
  %40 = shl nsw i32 %2, 2
  %41 = add nsw i32 %40, %4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 1
  %44 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 2
  %45 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 3
  br label %67

46:                                               ; preds = %32, %62
  %47 = phi i64 [ 0, %32 ], [ %63, %62 ]
  %48 = getelementptr inbounds [8 x %struct.anon.0], ptr %0, i64 0, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !349
  %50 = icmp eq ptr %49, null
  %51 = getelementptr inbounds %struct.MTFace, ptr %49, i64 %33
  %52 = getelementptr inbounds [4 x [2 x float]], ptr %51, i64 0, i64 %34
  %53 = select i1 %50, ptr %8, ptr %52
  %54 = getelementptr inbounds [8 x %struct.anon.0], ptr %0, i64 0, i64 %47, i32 3
  %55 = load i32, ptr %54, align 8, !tbaa !374
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %46
  call void @glTexCoord2fv(ptr noundef %53) #11
  br label %62

58:                                               ; preds = %46
  %59 = load ptr, ptr @__glewVertexAttrib2fvARB, align 8, !tbaa !47
  %60 = getelementptr inbounds [8 x %struct.anon.0], ptr %0, i64 0, i64 %47, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !350
  call void %59(i32 noundef %61, ptr noundef %53) #11
  br label %62

62:                                               ; preds = %58, %57
  %63 = add nuw nsw i64 %47, 1
  %64 = load i32, ptr %29, align 8, !tbaa !347
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %46, label %35, !llvm.loop !375

67:                                               ; preds = %39, %82
  %68 = phi i64 [ 0, %39 ], [ %86, %82 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  %69 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 1, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !352
  %71 = icmp eq ptr %70, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.MCol, ptr %70, i64 %42
  %74 = getelementptr inbounds %struct.MCol, ptr %70, i64 %42, i32 3
  %75 = load i8, ptr %74, align 1, !tbaa !191
  store i8 %75, ptr %9, align 4, !tbaa !132
  %76 = getelementptr inbounds %struct.MCol, ptr %70, i64 %42, i32 2
  %77 = load i8, ptr %76, align 1, !tbaa !194
  store i8 %77, ptr %43, align 1, !tbaa !132
  %78 = getelementptr inbounds %struct.MCol, ptr %70, i64 %42, i32 1
  %79 = load i8, ptr %78, align 1, !tbaa !196
  store i8 %79, ptr %44, align 2, !tbaa !132
  %80 = load i8, ptr %73, align 1, !tbaa !198
  store i8 %80, ptr %45, align 1, !tbaa !132
  br label %82

81:                                               ; preds = %67
  store i32 0, ptr %9, align 4
  br label %82

82:                                               ; preds = %81, %72
  %83 = load ptr, ptr @__glewVertexAttrib4ubvARB, align 8, !tbaa !47
  %84 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 1, i64 %68, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !353
  call void %83(i32 noundef %85, ptr noundef nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  %86 = add nuw nsw i64 %68, 1
  %87 = load i32, ptr %36, align 4, !tbaa !348
  %88 = sext i32 %87 to i64
  %89 = icmp slt i64 %86, %88
  br i1 %89, label %67, label %90, !llvm.loop !376

90:                                               ; preds = %82, %35
  %91 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 6
  %92 = load i32, ptr %91, align 8, !tbaa !355
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !377
  %97 = icmp eq ptr %96, null
  %98 = shl nsw i32 %2, 2
  %99 = add nsw i32 %98, %4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [4 x float], ptr %96, i64 %100
  %102 = select i1 %97, ptr %8, ptr %101
  %103 = load ptr, ptr @__glewVertexAttrib4fvARB, align 8, !tbaa !47
  %104 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 2, i32 2
  %105 = load i32, ptr %104, align 4, !tbaa !356
  call void %103(i32 noundef %105, ptr noundef %102) #11
  br label %106

106:                                              ; preds = %94, %90
  %107 = icmp eq ptr %5, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %106
  %109 = icmp eq i8 %6, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %108
  %111 = sext i32 %3 to i64
  %112 = getelementptr inbounds %struct.MVert, ptr %1, i64 %111, i32 1
  br label %113

113:                                              ; preds = %106, %110
  %114 = phi ptr [ %112, %110 ], [ %5, %106 ]
  call void @glNormal3sv(ptr noundef nonnull %114) #11
  br label %115

115:                                              ; preds = %113, %108
  %116 = sext i32 %3 to i64
  %117 = getelementptr inbounds %struct.MVert, ptr %1, i64 %116
  call void @glVertex3fv(ptr noundef %117) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  ret void
}

declare void @GPU_buffer_unlock(ptr noundef) local_unnamed_addr #2

declare void @GPU_interleaved_attrib_setup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @GPU_buffer_free(ptr noundef) local_unnamed_addr #2

declare i32 @GPU_attrib_element_size(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @GPU_buffer_alloc(i32 noundef) local_unnamed_addr #2

declare ptr @GPU_buffer_lock_stream(ptr noundef) local_unnamed_addr #2

declare void @glTexCoord3fv(ptr noundef) local_unnamed_addr #2

declare ptr @DM_get_loop_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @DM_get_poly_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_mesh_calc_poly_center(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mesh_calc_poly_normal(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @DM_release(ptr noundef) local_unnamed_addr #2

declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_from_bmeshpoly(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BM_vert_flag_to_mflag(ptr noundef) local_unnamed_addr #2

declare void @CustomData_from_bmesh_block(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare signext i16 @BM_edge_flag_to_mflag(ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @BM_face_flag_to_mflag(ptr noundef) local_unnamed_addr #2

declare i32 @test_index_face(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BM_mesh_cd_flag_from_bmesh(ptr noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare ptr @CustomData_get_n(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_bmesh_get_n(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @DM_DupPolys(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

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
!35 = !{!"", !36, i64 0, !38, i64 1688, !38, i64 1696, !38, i64 1704, !38, i64 1712, !38, i64 1720, !38, i64 1728, !39, i64 1736, !38, i64 1744, !38, i64 1752}
!36 = !{!"DerivedMesh", !37, i64 0, !37, i64 200, !37, i64 400, !37, i64 600, !37, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !38, i64 1032, !38, i64 1040, !41, i64 1048, !42, i64 1052, !41, i64 1056, !41, i64 1060, !38, i64 1064, !39, i64 1072, !38, i64 1080, !38, i64 1088, !38, i64 1096, !38, i64 1104, !38, i64 1112, !38, i64 1120, !38, i64 1128, !38, i64 1136, !38, i64 1144, !38, i64 1152, !38, i64 1160, !38, i64 1168, !38, i64 1176, !38, i64 1184, !38, i64 1192, !38, i64 1200, !38, i64 1208, !38, i64 1216, !38, i64 1224, !38, i64 1232, !38, i64 1240, !38, i64 1248, !38, i64 1256, !38, i64 1264, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !38, i64 1304, !38, i64 1312, !38, i64 1320, !38, i64 1328, !38, i64 1336, !38, i64 1344, !38, i64 1352, !38, i64 1360, !38, i64 1368, !38, i64 1376, !38, i64 1384, !38, i64 1392, !38, i64 1400, !38, i64 1408, !38, i64 1416, !38, i64 1424, !38, i64 1432, !38, i64 1440, !38, i64 1448, !38, i64 1456, !38, i64 1464, !38, i64 1472, !38, i64 1480, !38, i64 1488, !38, i64 1496, !38, i64 1504, !38, i64 1512, !38, i64 1520, !38, i64 1528, !38, i64 1536, !38, i64 1544, !38, i64 1552, !38, i64 1560, !38, i64 1568, !38, i64 1576, !38, i64 1584, !38, i64 1592, !38, i64 1600, !38, i64 1608, !38, i64 1616, !38, i64 1624, !38, i64 1632, !38, i64 1640, !38, i64 1648, !38, i64 1656, !38, i64 1664, !38, i64 1672, !38, i64 1680}
!37 = !{!"CustomData", !38, i64 0, !39, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !38, i64 184, !38, i64 192}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!"float", !39, i64 0}
!43 = !{!36, !41, i64 1008}
!44 = !{!36, !41, i64 1012}
!45 = !{!36, !41, i64 1016}
!46 = !{!35, !38, i64 1704}
!47 = !{!38, !38, i64 0}
!48 = !{!36, !38, i64 1520}
!49 = !{!36, !38, i64 1104}
!50 = !{!36, !38, i64 1112}
!51 = !{!36, !38, i64 1120}
!52 = !{!36, !38, i64 1128}
!53 = !{!36, !38, i64 1136}
!54 = !{!36, !38, i64 1144}
!55 = !{!36, !38, i64 1152}
!56 = !{!36, !38, i64 1160}
!57 = !{!36, !38, i64 1208}
!58 = !{!36, !38, i64 1216}
!59 = !{!36, !38, i64 1224}
!60 = !{!36, !38, i64 1232}
!61 = !{!36, !38, i64 1240}
!62 = !{!36, !38, i64 1288}
!63 = !{!36, !38, i64 1296}
!64 = !{!36, !38, i64 1304}
!65 = !{!36, !38, i64 1320}
!66 = !{!36, !38, i64 1328}
!67 = !{!36, !38, i64 1336}
!68 = !{!36, !38, i64 1080}
!69 = !{!36, !38, i64 1088}
!70 = !{!36, !38, i64 1096}
!71 = !{!36, !38, i64 1536}
!72 = !{!36, !38, i64 1528}
!73 = !{!36, !38, i64 1544}
!74 = !{!36, !38, i64 1568}
!75 = !{!36, !38, i64 1560}
!76 = !{!36, !38, i64 1576}
!77 = !{!36, !38, i64 1584}
!78 = !{!36, !38, i64 1592}
!79 = !{!36, !38, i64 1600}
!80 = !{!36, !38, i64 1656}
!81 = !{!36, !38, i64 1608}
!82 = !{!36, !38, i64 1616}
!83 = !{!36, !38, i64 1624}
!84 = !{!36, !38, i64 1632}
!85 = !{!36, !38, i64 1640}
!86 = !{!36, !38, i64 1648}
!87 = !{!36, !38, i64 1672}
!88 = !{!36, !38, i64 1488}
!89 = !{!36, !38, i64 1496}
!90 = !{!36, !38, i64 1504}
!91 = !{!36, !38, i64 1512}
!92 = !{!36, !38, i64 1680}
!93 = !{!35, !38, i64 1696}
!94 = !{!35, !38, i64 1712}
!95 = !{!35, !38, i64 1720}
!96 = !{!97, !97, i64 0}
!97 = !{!"long", !39, i64 0}
!98 = !{!99, !41, i64 1280}
!99 = !{!"Mesh", !100, i64 0, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !38, i64 152, !38, i64 160, !38, i64 168, !38, i64 176, !38, i64 184, !38, i64 192, !38, i64 200, !38, i64 208, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !37, i64 280, !37, i64 480, !37, i64 680, !37, i64 880, !37, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !39, i64 1308, !39, i64 1320, !39, i64 1332, !41, i64 1344, !101, i64 1348, !101, i64 1350, !42, i64 1352, !41, i64 1356, !39, i64 1360, !39, i64 1361, !39, i64 1362, !39, i64 1363, !39, i64 1364, !39, i64 1365, !101, i64 1366, !38, i64 1368}
!100 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !39, i64 32, !101, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !38, i64 112}
!101 = !{!"short", !39, i64 0}
!102 = !{!99, !41, i64 1284}
!103 = !{!99, !41, i64 1288}
!104 = !{!99, !41, i64 1300}
!105 = !{!99, !41, i64 1296}
!106 = !{!36, !41, i64 1024}
!107 = !{!99, !39, i64 1360}
!108 = !{!36, !39, i64 1072}
!109 = !{!110, !38, i64 1280}
!110 = !{!"Object", !100, i64 0, !38, i64 120, !38, i64 128, !101, i64 136, !101, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !39, i64 152, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !38, i64 296, !38, i64 304, !111, i64 312, !38, i64 360, !112, i64 368, !112, i64 384, !112, i64 400, !112, i64 416, !41, i64 432, !41, i64 436, !38, i64 440, !38, i64 448, !41, i64 456, !41, i64 460, !39, i64 464, !39, i64 476, !39, i64 488, !39, i64 500, !39, i64 512, !39, i64 524, !39, i64 536, !39, i64 548, !39, i64 560, !39, i64 576, !39, i64 592, !39, i64 604, !42, i64 616, !42, i64 620, !39, i64 624, !39, i64 688, !39, i64 752, !39, i64 816, !39, i64 880, !41, i64 944, !101, i64 948, !101, i64 950, !101, i64 952, !101, i64 954, !101, i64 956, !101, i64 958, !101, i64 960, !101, i64 962, !101, i64 964, !39, i64 966, !39, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !101, i64 1036, !101, i64 1038, !101, i64 1040, !39, i64 1042, !39, i64 1043, !101, i64 1044, !39, i64 1046, !39, i64 1047, !42, i64 1048, !42, i64 1052, !112, i64 1056, !112, i64 1072, !112, i64 1088, !112, i64 1104, !42, i64 1120, !101, i64 1124, !101, i64 1126, !39, i64 1128, !41, i64 1144, !41, i64 1148, !38, i64 1152, !39, i64 1160, !39, i64 1161, !101, i64 1162, !39, i64 1164, !112, i64 1176, !112, i64 1192, !112, i64 1208, !112, i64 1224, !38, i64 1240, !38, i64 1248, !38, i64 1256, !39, i64 1264, !39, i64 1265, !101, i64 1266, !42, i64 1268, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !97, i64 1304, !97, i64 1312, !41, i64 1320, !41, i64 1324, !112, i64 1328, !112, i64 1344, !38, i64 1360, !38, i64 1368, !38, i64 1376, !39, i64 1384, !38, i64 1392, !112, i64 1400, !38, i64 1416}
!111 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !101, i64 16, !101, i64 18, !101, i64 20, !101, i64 22, !101, i64 24, !101, i64 26, !101, i64 28, !101, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!112 = !{!"ListBase", !38, i64 0, !38, i64 8}
!113 = !{i64 0, i64 8, !47, i64 8, i64 8, !47}
!114 = !{!110, !38, i64 296}
!115 = !{!116, !41, i64 268}
!116 = !{!"Curve", !100, i64 0, !38, i64 120, !38, i64 128, !112, i64 136, !38, i64 152, !38, i64 160, !38, i64 168, !38, i64 176, !38, i64 184, !38, i64 192, !38, i64 200, !39, i64 208, !39, i64 220, !39, i64 232, !101, i64 244, !101, i64 246, !101, i64 248, !101, i64 250, !42, i64 252, !42, i64 256, !41, i64 260, !101, i64 264, !101, i64 266, !41, i64 268, !42, i64 272, !42, i64 276, !42, i64 280, !101, i64 284, !101, i64 286, !101, i64 288, !101, i64 290, !41, i64 292, !41, i64 296, !39, i64 300, !101, i64 304, !39, i64 306, !39, i64 307, !42, i64 308, !42, i64 312, !42, i64 316, !42, i64 320, !42, i64 324, !42, i64 328, !42, i64 332, !42, i64 336, !42, i64 340, !42, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !38, i64 368, !38, i64 376, !39, i64 384, !38, i64 448, !38, i64 456, !38, i64 464, !38, i64 472, !38, i64 480, !41, i64 488, !41, i64 492, !38, i64 496, !117, i64 504, !42, i64 512, !42, i64 516, !42, i64 520, !39, i64 524, !39, i64 525, !39, i64 526}
!117 = !{!"CharInfo", !101, i64 0, !101, i64 2, !39, i64 4, !39, i64 5, !101, i64 6}
!118 = !{!41, !41, i64 0}
!119 = !{!36, !41, i64 1056}
!120 = !{!121, !41, i64 0}
!121 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !39, i64 28, !39, i64 29, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !41, i64 128, !38, i64 136, !37, i64 144, !37, i64 344, !37, i64 544, !37, i64 744, !101, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !112, i64 960, !38, i64 976, !112, i64 984, !38, i64 1000}
!122 = !{!121, !41, i64 4}
!123 = !{!121, !41, i64 8}
!124 = !{!121, !41, i64 12}
!125 = !{!36, !41, i64 1000}
!126 = !{!36, !41, i64 1004}
!127 = !{!128, !39, i64 60}
!128 = !{!"BMIter", !39, i64 0, !38, i64 40, !38, i64 48, !41, i64 56, !39, i64 60}
!129 = !{!128, !38, i64 40}
!130 = !{!128, !38, i64 48}
!131 = !{!121, !38, i64 32}
!132 = !{!39, !39, i64 0}
!133 = !{!42, !42, i64 0}
!134 = !{!135, !41, i64 8}
!135 = !{!"BMHeader", !38, i64 0, !41, i64 8, !39, i64 12, !39, i64 13, !39, i64 14}
!136 = !{!101, !101, i64 0}
!137 = !{!138, !39, i64 18}
!138 = !{!"MVert", !39, i64 0, !39, i64 12, !39, i64 18, !39, i64 19}
!139 = !{!140, !38, i64 0}
!140 = !{!"BMVert", !135, i64 0, !38, i64 16, !39, i64 24, !39, i64 36, !38, i64 48}
!141 = !{!138, !39, i64 19}
!142 = distinct !{!142, !143, !144}
!143 = !{!"llvm.loop.mustprogress"}
!144 = !{!"llvm.loop.unroll.disable"}
!145 = !{!121, !39, i64 28}
!146 = !{!121, !38, i64 40}
!147 = !{!148, !38, i64 24}
!148 = !{!"BMEdge", !135, i64 0, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !149, i64 48, !149, i64 64}
!149 = !{!"BMDiskLink", !38, i64 0, !38, i64 8}
!150 = !{!151, !41, i64 0}
!151 = !{!"MEdge", !41, i64 0, !41, i64 4, !39, i64 8, !39, i64 9, !101, i64 10}
!152 = !{!148, !38, i64 32}
!153 = !{!151, !41, i64 4}
!154 = !{!151, !101, i64 10}
!155 = !{!148, !38, i64 40}
!156 = !{!157, !38, i64 40}
!157 = !{!"BMLoop", !135, i64 0, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64}
!158 = !{!148, !38, i64 0}
!159 = !{!151, !39, i64 8}
!160 = !{!151, !39, i64 9}
!161 = distinct !{!161, !143, !144}
!162 = !{!157, !38, i64 32}
!163 = !{!157, !38, i64 16}
!164 = !{!165, !41, i64 0}
!165 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !101, i64 16, !39, i64 18, !39, i64 19}
!166 = !{!165, !41, i64 4}
!167 = !{!165, !41, i64 8}
!168 = !{!165, !41, i64 12}
!169 = !{!170, !101, i64 48}
!170 = !{!"BMFace", !135, i64 0, !38, i64 16, !38, i64 24, !41, i64 32, !39, i64 36, !101, i64 48}
!171 = !{!165, !101, i64 16}
!172 = !{!165, !39, i64 19}
!173 = !{!170, !38, i64 0}
!174 = !{!175, !38, i64 0}
!175 = !{!"MTexPoly", !38, i64 0, !39, i64 8, !39, i64 9, !101, i64 10, !101, i64 12, !101, i64 14}
!176 = !{!177, !38, i64 32}
!177 = !{!"MTFace", !39, i64 0, !38, i64 32, !39, i64 40, !39, i64 41, !101, i64 42, !101, i64 44, !101, i64 46}
!178 = !{!175, !39, i64 8}
!179 = !{!177, !39, i64 40}
!180 = !{!175, !39, i64 9}
!181 = !{!177, !39, i64 41}
!182 = !{!175, !101, i64 10}
!183 = !{!177, !101, i64 42}
!184 = !{!175, !101, i64 12}
!185 = !{!177, !101, i64 44}
!186 = !{!157, !38, i64 0}
!187 = distinct !{!187, !143, !144}
!188 = distinct !{!188, !143, !144}
!189 = !{!190, !39, i64 0}
!190 = !{!"MLoopCol", !39, i64 0, !39, i64 1, !39, i64 2, !39, i64 3}
!191 = !{!192, !39, i64 3}
!192 = !{!"MCol", !39, i64 0, !39, i64 1, !39, i64 2, !39, i64 3}
!193 = !{!190, !39, i64 1}
!194 = !{!192, !39, i64 2}
!195 = !{!190, !39, i64 2}
!196 = !{!192, !39, i64 1}
!197 = !{!190, !39, i64 3}
!198 = !{!192, !39, i64 0}
!199 = distinct !{!199, !143, !144}
!200 = distinct !{!200, !143, !144}
!201 = distinct !{!201, !143, !144}
!202 = distinct !{!202, !143, !144}
!203 = !{!121, !38, i64 56}
!204 = !{!170, !41, i64 32}
!205 = !{!206, !41, i64 4}
!206 = !{!"MPoly", !41, i64 0, !41, i64 4, !101, i64 8, !39, i64 10, !39, i64 11}
!207 = !{!206, !39, i64 10}
!208 = !{!206, !41, i64 0}
!209 = !{!206, !101, i64 8}
!210 = !{!170, !38, i64 24}
!211 = !{!212, !41, i64 0}
!212 = !{!"MLoop", !41, i64 0, !41, i64 4}
!213 = !{!157, !38, i64 24}
!214 = !{!212, !41, i64 4}
!215 = !{!157, !38, i64 56}
!216 = distinct !{!216, !143, !144}
!217 = distinct !{!217, !143, !144}
!218 = !{!219, !38, i64 0}
!219 = !{!"BMEditMesh", !38, i64 0, !38, i64 8, !41, i64 16, !38, i64 24, !41, i64 32, !38, i64 40, !38, i64 48, !97, i64 56, !38, i64 64, !41, i64 72, !38, i64 80, !41, i64 88, !101, i64 92, !101, i64 94, !38, i64 96, !41, i64 104}
!220 = !{!219, !41, i64 32}
!221 = !{!219, !38, i64 24}
!222 = !{!36, !38, i64 1352}
!223 = !{!36, !38, i64 1248}
!224 = !{!36, !38, i64 1256}
!225 = !{!36, !38, i64 1264}
!226 = !{!35, !41, i64 1004}
!227 = !{!35, !41, i64 1008}
!228 = !{!35, !41, i64 1012}
!229 = !{!35, !41, i64 1016}
!230 = distinct !{!230, !143, !144}
!231 = !{!35, !41, i64 1056}
!232 = distinct !{!232, !143, !144}
!233 = !{!36, !38, i64 1168}
!234 = !{!36, !38, i64 1176}
!235 = !{!36, !38, i64 1192}
!236 = !{!36, !38, i64 1200}
!237 = !{!36, !38, i64 1384}
!238 = !{!36, !38, i64 1392}
!239 = !{i64 0, i64 12, !132, i64 12, i64 6, !132, i64 18, i64 1, !132, i64 19, i64 1, !132}
!240 = distinct !{!240, !143, !144}
!241 = distinct !{!241, !143, !144}
!242 = !{i64 0, i64 4, !118, i64 4, i64 4, !118, i64 8, i64 1, !132, i64 9, i64 1, !132, i64 10, i64 2, !136}
!243 = distinct !{!243, !143, !144}
!244 = !{!245, !41, i64 0}
!245 = !{!"PolyKey", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!246 = !{!245, !41, i64 4}
!247 = !{!245, !41, i64 12}
!248 = !{!245, !41, i64 8}
!249 = distinct !{!249, !143, !144}
!250 = distinct !{!250, !143, !144}
!251 = !{!35, !38, i64 1744}
!252 = !{!35, !38, i64 1752}
!253 = distinct !{!253, !143, !144}
!254 = distinct !{!254, !143, !144}
!255 = !{!256, !41, i64 8}
!256 = !{!"MeshElemMap", !38, i64 0, !41, i64 8}
!257 = !{!256, !38, i64 0}
!258 = !{i32 0, i32 2}
!259 = distinct !{!259, !143, !144}
!260 = distinct !{!260, !143, !144}
!261 = !{i64 0, i64 4, !118, i64 4, i64 4, !118, i64 8, i64 2, !136, i64 10, i64 1, !132, i64 11, i64 1, !132}
!262 = distinct !{!262, !143, !144}
!263 = distinct !{!263, !143, !144}
!264 = !{!35, !41, i64 1000}
!265 = distinct !{!265, !143, !144}
!266 = distinct !{!266, !143, !144}
!267 = distinct !{!267, !143, !144}
!268 = !{!36, !41, i64 1020}
!269 = distinct !{!269, !143, !144}
!270 = distinct !{!270, !143, !144}
!271 = distinct !{!271, !143, !144}
!272 = distinct !{!272, !143, !144}
!273 = distinct !{!273, !143, !144}
!274 = !{!275, !38, i64 8}
!275 = !{!"EdgeHashIterator", !38, i64 0, !38, i64 8, !41, i64 16}
!276 = !{!277, !41, i64 8}
!277 = !{!"_eh_Entry", !38, i64 0, !41, i64 8, !41, i64 12, !38, i64 16}
!278 = !{!277, !41, i64 12}
!279 = distinct !{!279, !143, !144}
!280 = !{i64 0, i64 8, !47, i64 8, i64 164, !132, i64 172, i64 4, !118, i64 176, i64 4, !118, i64 180, i64 4, !118, i64 184, i64 8, !47, i64 192, i64 8, !47}
!281 = distinct !{!281, !143, !144}
!282 = distinct !{!282, !143, !144}
!283 = distinct !{!283, !143, !144}
!284 = !{!277, !38, i64 16}
!285 = distinct !{!285, !143, !144}
!286 = distinct !{!286, !143, !144}
!287 = distinct !{!287, !143, !144}
!288 = distinct !{!288, !143, !144}
!289 = !{i64 0, i64 4, !118, i64 4, i64 4, !118, i64 8, i64 4, !118, i64 12, i64 4, !118, i64 16, i64 2, !136, i64 18, i64 1, !132, i64 19, i64 1, !132}
!290 = distinct !{!290, !143, !144}
!291 = !{!35, !38, i64 1728}
!292 = !{!110, !38, i64 128}
!293 = !{!294, !38, i64 104}
!294 = !{!"SculptSession", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !41, i64 32, !41, i64 36, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !41, i64 80, !41, i64 84, !39, i64 88, !38, i64 96, !38, i64 104, !39, i64 112, !39, i64 113, !38, i64 120, !38, i64 128, !38, i64 136, !39, i64 144, !41, i64 148, !38, i64 152, !41, i64 160, !38, i64 168, !38, i64 176, !38, i64 184, !38, i64 192, !39, i64 200, !39, i64 204, !39, i64 216, !41, i64 228}
!295 = !{!294, !39, i64 113}
!296 = !{!294, !38, i64 48}
!297 = !{!110, !39, i64 1265}
!298 = !{!99, !38, i64 232}
!299 = !{!35, !39, i64 1736}
!300 = !{!294, !38, i64 72}
!301 = !{!294, !39, i64 88}
!302 = !{!294, !38, i64 96}
!303 = !{!294, !41, i64 80}
!304 = !{!294, !41, i64 84}
!305 = !{!294, !39, i64 112}
!306 = !{!110, !101, i64 136}
!307 = !{!99, !38, i64 208}
!308 = !{!110, !38, i64 1288}
!309 = !{!99, !38, i64 168}
!310 = !{!99, !38, i64 184}
!311 = distinct !{!311, !143, !144}
!312 = !{!36, !38, i64 1040}
!313 = !{!314, !41, i64 84}
!314 = !{!"GPUDrawObject", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !41, i64 64, !38, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !39, i64 100}
!315 = !{!314, !41, i64 88}
!316 = distinct !{!316, !143, !144}
!317 = distinct !{!317, !143, !144}
!318 = distinct !{!318, !143, !144}
!319 = !{!314, !38, i64 32}
!320 = distinct !{!320, !143, !144}
!321 = distinct !{!321, !143, !144}
!322 = distinct !{!322, !143, !144}
!323 = distinct !{!323, !143, !144}
!324 = distinct !{!324, !143, !144}
!325 = !{!314, !41, i64 80}
!326 = !{!314, !38, i64 72}
!327 = !{!328, !101, i64 8}
!328 = !{!"GPUBufferMaterial", !41, i64 0, !41, i64 4, !101, i64 8}
!329 = !{!328, !41, i64 0}
!330 = !{!328, !41, i64 4}
!331 = distinct !{!331, !143, !144}
!332 = !{!333, !41, i64 2096}
!333 = !{!"Global", !38, i64 0, !39, i64 8, !39, i64 1032, !39, i64 2056, !39, i64 2057, !39, i64 2058, !112, i64 2064, !39, i64 2080, !39, i64 2081, !39, i64 2082, !101, i64 2084, !101, i64 2086, !101, i64 2088, !39, i64 2090, !101, i64 2092, !41, i64 2096, !41, i64 2100, !39, i64 2104, !41, i64 2108, !41, i64 2112, !39, i64 2116}
!334 = distinct !{!334, !143, !144}
!335 = !{!314, !38, i64 48}
!336 = distinct !{!336, !143, !144}
!337 = distinct !{!337, !143, !144}
!338 = !{!339, !41, i64 372}
!339 = !{!"DMVertexAttribs", !39, i64 0, !39, i64 192, !340, i64 320, !341, i64 336, !41, i64 360, !41, i64 364, !41, i64 368, !41, i64 372}
!340 = !{!"", !38, i64 0, !41, i64 8, !41, i64 12}
!341 = !{!"", !38, i64 0, !41, i64 8, !41, i64 12, !41, i64 16}
!342 = !{!339, !41, i64 348}
!343 = !{!344, !41, i64 0}
!344 = !{!"GPUAttrib", !41, i64 0, !41, i64 4, !41, i64 8}
!345 = !{!344, !41, i64 4}
!346 = !{!344, !41, i64 8}
!347 = !{!339, !41, i64 360}
!348 = !{!339, !41, i64 364}
!349 = !{!341, !38, i64 0}
!350 = !{!341, !41, i64 12}
!351 = distinct !{!351, !143, !144}
!352 = !{!340, !38, i64 0}
!353 = !{!340, !41, i64 12}
!354 = distinct !{!354, !143, !144}
!355 = !{!339, !41, i64 368}
!356 = !{!339, !41, i64 332}
!357 = distinct !{!357, !143, !144}
!358 = distinct !{!358, !143, !144}
!359 = distinct !{!359, !143, !144}
!360 = distinct !{!360, !143, !144}
!361 = distinct !{!361, !143, !144}
!362 = !{!314, !39, i64 100}
!363 = distinct !{!363, !143, !144}
!364 = distinct !{!364, !143, !144}
!365 = distinct !{!365, !143, !144}
!366 = distinct !{!366, !143, !144}
!367 = distinct !{!367, !143, !144}
!368 = distinct !{!368, !143, !144}
!369 = distinct !{!369, !143, !144}
!370 = distinct !{!370, !143, !144}
!371 = distinct !{!371, !143, !144}
!372 = !{!339, !38, i64 336}
!373 = !{!339, !41, i64 352}
!374 = !{!341, !41, i64 16}
!375 = distinct !{!375, !143, !144}
!376 = distinct !{!376, !143, !144}
!377 = !{!339, !38, i64 320}
