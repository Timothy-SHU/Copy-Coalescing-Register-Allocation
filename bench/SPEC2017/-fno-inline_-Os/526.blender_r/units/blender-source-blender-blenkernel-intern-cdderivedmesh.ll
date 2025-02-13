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
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MLoop = type { i32, i32 }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.PolyKey = type { i32, i32, i32, i32 }
%struct.MeshElemMap = type { ptr, i32 }
%struct.EdgeHashIterator = type { ptr, ptr, i32 }
%struct._eh_Entry = type { ptr, i32, i32, ptr }
%struct.SculptSession = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, i8, i8, ptr, ptr, ptr, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i8, [3 x float], [3 x float], i32 }
%struct.GPUDrawObject = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i8 }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.GPUBufferMaterial = type { i32, i32, i16 }
%struct.MCol = type { i8, i8, i8, i8 }
%struct.GPUVertexAttribs = type { [32 x %struct.anon], i32 }
%struct.anon = type { i32, i32, i32, i32, [64 x i8] }
%struct.DMVertexAttribs = type { [8 x %struct.anon.0], [8 x %struct.anon.1], %struct.anon.2, %struct.anon.3, i32, i32, i32, i32 }
%struct.anon.0 = type { ptr, i32, i32, i32 }
%struct.anon.1 = type { ptr, i32, i32 }
%struct.anon.2 = type { ptr, i32, i32 }
%struct.anon.3 = type { ptr, i32, i32, i32 }
%struct.GPUAttrib = type { i32, i32, i32 }
%struct.MTexPoly = type { ptr, i8, i8, i16, i16, i16 }

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

; Function Attrs: noinline nounwind optsize uwtable
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
  %14 = tail call i32 @BKE_mesh_recalc_tessellation(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i8 noundef zeroext %1) #16
  store i32 %14, ptr %8, align 8, !tbaa !43
  %15 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %3, i32 noundef 4) #16
  %16 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  store ptr %15, ptr %16, align 8, !tbaa !46
  tail call void @CustomData_bmesh_update_active_layers(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @BKE_mesh_recalc_tessellation(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_bmesh_update_active_layers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CDDM_recalc_tessellation(ptr noundef %0) #0 {
  tail call void @CDDM_recalc_tessellation_ex(ptr noundef %0, i8 noundef zeroext 1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @CDDM_new(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc ptr @cdDM_create(ptr noundef nonnull @.str) #17
  tail call void @DM_init(ptr noundef %6, i32 noundef 0, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #16
  %7 = tail call ptr @CustomData_add_layer(ptr noundef %6, i32 noundef 7, i32 noundef 1, ptr noundef null, i32 noundef %0) #16
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %6, i64 0, i32 1
  %9 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %8, i32 noundef 7, i32 noundef 1, ptr noundef null, i32 noundef %1) #16
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %6, i64 0, i32 2
  %11 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %10, i32 noundef 7, i32 noundef 1, ptr noundef null, i32 noundef %2) #16
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %6, i64 0, i32 4
  %13 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %12, i32 noundef 7, i32 noundef 1, ptr noundef null, i32 noundef %4) #16
  %14 = tail call ptr @CustomData_add_layer(ptr noundef %6, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %0) #16
  %15 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %8, i32 noundef 3, i32 noundef 1, ptr noundef null, i32 noundef %1) #16
  %16 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %10, i32 noundef 4, i32 noundef 1, ptr noundef null, i32 noundef %2) #16
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %6, i64 0, i32 3
  %18 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %17, i32 noundef 26, i32 noundef 1, ptr noundef null, i32 noundef %3) #16
  %19 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %12, i32 noundef 25, i32 noundef 1, ptr noundef null, i32 noundef %4) #16
  %20 = tail call ptr @CustomData_get_layer(ptr noundef %6, i32 noundef 0) #16
  %21 = getelementptr inbounds %struct.CDDerivedMesh, ptr %6, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !34
  %22 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %8, i32 noundef 3) #16
  %23 = getelementptr inbounds %struct.CDDerivedMesh, ptr %6, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !47
  %24 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %10, i32 noundef 4) #16
  %25 = getelementptr inbounds %struct.CDDerivedMesh, ptr %6, i64 0, i32 3
  store ptr %24, ptr %25, align 8, !tbaa !46
  %26 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %17, i32 noundef 26) #16
  %27 = getelementptr inbounds %struct.CDDerivedMesh, ptr %6, i64 0, i32 4
  store ptr %26, ptr %27, align 8, !tbaa !48
  %28 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %12, i32 noundef 25) #16
  %29 = getelementptr inbounds %struct.CDDerivedMesh, ptr %6, i64 0, i32 5
  store ptr %28, ptr %29, align 8, !tbaa !49
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @cdDM_create(ptr noundef %0) unnamed_addr #0 !PGOFuncName !50 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %3 = tail call ptr %2(i64 noundef 1760, ptr noundef %0) #16
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 75
  store ptr @cdDM_getMinMax, ptr %4, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 23
  store ptr @cdDM_getNumVerts, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 24
  store ptr @cdDM_getNumEdges, ptr %6, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 25
  store ptr @cdDM_getNumTessFaces, ptr %7, align 8, !tbaa !55
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 26
  store ptr @cdDM_getNumLoops, ptr %8, align 8, !tbaa !56
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 27
  store ptr @cdDM_getNumPolys, ptr %9, align 8, !tbaa !57
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 28
  store ptr @cdDM_getVert, ptr %10, align 8, !tbaa !58
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 29
  store ptr @cdDM_getEdge, ptr %11, align 8, !tbaa !59
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 30
  store ptr @cdDM_getTessFace, ptr %12, align 8, !tbaa !60
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 36
  store ptr @cdDM_copyVertArray, ptr %13, align 8, !tbaa !61
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 37
  store ptr @cdDM_copyEdgeArray, ptr %14, align 8, !tbaa !62
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 38
  store ptr @cdDM_copyTessFaceArray, ptr %15, align 8, !tbaa !63
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 39
  store ptr @cdDM_copyLoopArray, ptr %16, align 8, !tbaa !64
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 40
  store ptr @cdDM_copyPolyArray, ptr %17, align 8, !tbaa !65
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 46
  store ptr @DM_get_vert_data, ptr %18, align 8, !tbaa !66
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 47
  store ptr @DM_get_edge_data, ptr %19, align 8, !tbaa !67
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 48
  store ptr @DM_get_tessface_data, ptr %20, align 8, !tbaa !68
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 50
  store ptr @DM_get_vert_data_layer, ptr %21, align 8, !tbaa !69
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 51
  store ptr @DM_get_edge_data_layer, ptr %22, align 8, !tbaa !70
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 52
  store ptr @DM_get_tessface_data_layer, ptr %23, align 8, !tbaa !71
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 20
  store ptr @CDDM_calc_normals, ptr %24, align 8, !tbaa !72
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 21
  store ptr @CDDM_calc_loop_normals, ptr %25, align 8, !tbaa !73
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 22
  store ptr @CDDM_recalc_tessellation, ptr %26, align 8, !tbaa !74
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 77
  store ptr @cdDM_getVertCos, ptr %27, align 8, !tbaa !75
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 76
  store ptr @cdDM_getVertCo, ptr %28, align 8, !tbaa !76
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 78
  store ptr @cdDM_getVertNo, ptr %29, align 8, !tbaa !77
  %30 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 81
  store ptr @cdDM_getPBVH, ptr %30, align 8, !tbaa !78
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 80
  store ptr @cdDM_getPolyMap, ptr %31, align 8, !tbaa !79
  %32 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 82
  store ptr @cdDM_drawVerts, ptr %32, align 8, !tbaa !80
  %33 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 83
  store ptr @cdDM_drawUVEdges, ptr %33, align 8, !tbaa !81
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 84
  store ptr @cdDM_drawEdges, ptr %34, align 8, !tbaa !82
  %35 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 85
  store ptr @cdDM_drawLooseEdges, ptr %35, align 8, !tbaa !83
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 92
  store ptr @cdDM_drawMappedEdges, ptr %36, align 8, !tbaa !84
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 86
  store ptr @cdDM_drawFacesSolid, ptr %37, align 8, !tbaa !85
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 87
  store ptr @cdDM_drawFacesTex, ptr %38, align 8, !tbaa !86
  %39 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 88
  store ptr @cdDM_drawFacesGLSL, ptr %39, align 8, !tbaa !87
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 89
  store ptr @cdDM_drawMappedFaces, ptr %40, align 8, !tbaa !88
  %41 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 90
  store ptr @cdDM_drawMappedFacesTex, ptr %41, align 8, !tbaa !89
  %42 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 91
  store ptr @cdDM_drawMappedFacesGLSL, ptr %42, align 8, !tbaa !90
  %43 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 94
  store ptr @cdDM_drawMappedFacesMat, ptr %43, align 8, !tbaa !91
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 71
  store ptr @cdDM_foreachMappedVert, ptr %44, align 8, !tbaa !92
  %45 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 72
  store ptr @cdDM_foreachMappedEdge, ptr %45, align 8, !tbaa !93
  %46 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 73
  store ptr @cdDM_foreachMappedLoop, ptr %46, align 8, !tbaa !94
  %47 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 74
  store ptr @cdDM_foreachMappedFaceCenter, ptr %47, align 8, !tbaa !95
  %48 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 95
  store ptr @cdDM_release, ptr %48, align 8, !tbaa !96
  ret ptr %3
}

; Function Attrs: optsize
declare void @DM_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @CDDM_from_mesh(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @cdDM_create(ptr noundef nonnull @__func__.CDDM_from_mesh) #17
  %3 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !97
  %4 = and i64 %3, -524289
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %6 = load i32, ptr %5, align 8, !tbaa !99
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %8 = load i32, ptr %7, align 4, !tbaa !103
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %10 = load i32, ptr %9, align 8, !tbaa !104
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %12 = load i32, ptr %11, align 4, !tbaa !105
  %13 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %14 = load i32, ptr %13, align 8, !tbaa !106
  tail call void @DM_init(ptr noundef %2, i32 noundef 0, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14) #16
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 11
  store i32 1, ptr %15, align 8, !tbaa !107
  %16 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 41
  %17 = load i8, ptr %16, align 8, !tbaa !108
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 19
  store i8 %17, ptr %18, align 8, !tbaa !109
  %19 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 21
  %20 = load i32, ptr %5, align 8, !tbaa !99
  %21 = tail call zeroext i8 @CustomData_merge(ptr noundef nonnull %19, ptr noundef %2, i64 noundef %4, i32 noundef 3, i32 noundef %20) #16
  %22 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 1
  %24 = load i32, ptr %7, align 4, !tbaa !103
  %25 = tail call zeroext i8 @CustomData_merge(ptr noundef nonnull %22, ptr noundef nonnull %23, i64 noundef %4, i32 noundef 3, i32 noundef %24) #16
  %26 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 2
  %28 = or i64 %4, 128
  %29 = load i32, ptr %9, align 8, !tbaa !104
  %30 = tail call zeroext i8 @CustomData_merge(ptr noundef nonnull %26, ptr noundef nonnull %27, i64 noundef %28, i32 noundef 3, i32 noundef %29) #16
  %31 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %32 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 3
  %33 = load i32, ptr %11, align 4, !tbaa !105
  %34 = tail call zeroext i8 @CustomData_merge(ptr noundef nonnull %31, ptr noundef nonnull %32, i64 noundef %4, i32 noundef 3, i32 noundef %33) #16
  %35 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 4
  %37 = load i32, ptr %13, align 8, !tbaa !106
  %38 = tail call zeroext i8 @CustomData_merge(ptr noundef nonnull %35, ptr noundef nonnull %36, i64 noundef %4, i32 noundef 3, i32 noundef %37) #16
  %39 = tail call ptr @CustomData_get_layer(ptr noundef %2, i32 noundef 0) #16
  %40 = getelementptr inbounds %struct.CDDerivedMesh, ptr %2, i64 0, i32 1
  store ptr %39, ptr %40, align 8, !tbaa !34
  %41 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %23, i32 noundef 3) #16
  %42 = getelementptr inbounds %struct.CDDerivedMesh, ptr %2, i64 0, i32 2
  store ptr %41, ptr %42, align 8, !tbaa !47
  %43 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %32, i32 noundef 26) #16
  %44 = getelementptr inbounds %struct.CDDerivedMesh, ptr %2, i64 0, i32 4
  store ptr %43, ptr %44, align 8, !tbaa !48
  %45 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %36, i32 noundef 25) #16
  %46 = getelementptr inbounds %struct.CDDerivedMesh, ptr %2, i64 0, i32 5
  store ptr %45, ptr %46, align 8, !tbaa !49
  %47 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %27, i32 noundef 4) #16
  %48 = getelementptr inbounds %struct.CDDerivedMesh, ptr %2, i64 0, i32 3
  store ptr %47, ptr %48, align 8, !tbaa !46
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_merge(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @CDDM_from_curve(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %4 = load ptr, ptr %3, align 8, !tbaa !110
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !114
  br label %7

7:                                                ; preds = %6, %1
  %8 = call ptr @CDDM_from_curve_displist(ptr noundef nonnull %0, ptr noundef nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #18
  ret ptr %8
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @CDDM_from_curve_displist(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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
  %13 = load ptr, ptr %12, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  store ptr null, ptr %7, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #18
  %14 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 23
  %15 = load i32, ptr %14, align 4, !tbaa !116
  %16 = and i32 %15, 32
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, ptr null, ptr %7
  %19 = call i32 @BKE_mesh_nurbs_displist_to_mdata(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %18, ptr noundef nonnull %10, ptr noundef nonnull %11) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = call ptr @CDDM_new(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #17
  br label %76

23:                                               ; preds = %2
  %24 = load i32, ptr %8, align 4, !tbaa !119
  %25 = load i32, ptr %9, align 4, !tbaa !119
  %26 = load i32, ptr %10, align 4, !tbaa !119
  %27 = load i32, ptr %11, align 4, !tbaa !119
  %28 = call ptr @CDDM_new(i32 noundef %24, i32 noundef %25, i32 noundef 0, i32 noundef %26, i32 noundef %27) #17
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %28, i64 0, i32 11
  store i32 1, ptr %29, align 8, !tbaa !107
  %30 = getelementptr inbounds %struct.DerivedMesh, ptr %28, i64 0, i32 16
  %31 = load i32, ptr %30, align 8, !tbaa !120
  %32 = or i32 %31, 4
  store i32 %32, ptr %30, align 8, !tbaa !120
  %33 = getelementptr inbounds %struct.CDDerivedMesh, ptr %28, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = load ptr, ptr %3, align 8, !tbaa !51
  %36 = load i32, ptr %8, align 4, !tbaa !119
  %37 = sext i32 %36 to i64
  %38 = mul nsw i64 %37, 20
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %34, ptr align 4 %35, i64 %38, i1 false)
  %39 = getelementptr inbounds %struct.CDDerivedMesh, ptr %28, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !47
  %41 = load ptr, ptr %4, align 8, !tbaa !51
  %42 = load i32, ptr %9, align 4, !tbaa !119
  %43 = sext i32 %42 to i64
  %44 = mul nsw i64 %43, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %40, ptr align 4 %41, i64 %44, i1 false)
  %45 = getelementptr inbounds %struct.CDDerivedMesh, ptr %28, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !48
  %47 = load ptr, ptr %5, align 8, !tbaa !51
  %48 = load i32, ptr %10, align 4, !tbaa !119
  %49 = sext i32 %48 to i64
  %50 = shl nsw i64 %49, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %46, ptr align 4 %47, i64 %50, i1 false)
  %51 = getelementptr inbounds %struct.CDDerivedMesh, ptr %28, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !49
  %53 = load ptr, ptr %6, align 8, !tbaa !51
  %54 = load i32, ptr %11, align 4, !tbaa !119
  %55 = sext i32 %54 to i64
  %56 = mul nsw i64 %55, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %52, ptr align 4 %53, i64 %56, i1 false)
  %57 = load ptr, ptr %7, align 8, !tbaa !51
  %58 = icmp eq ptr %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %23
  %60 = getelementptr inbounds %struct.DerivedMesh, ptr %28, i64 0, i32 4
  %61 = load i32, ptr %11, align 4, !tbaa !119
  %62 = call ptr @CustomData_add_layer_named(ptr noundef nonnull %60, i32 noundef 15, i32 noundef 2, ptr noundef null, i32 noundef %61, ptr noundef nonnull @.str.1) #16
  %63 = getelementptr inbounds %struct.DerivedMesh, ptr %28, i64 0, i32 3
  %64 = load ptr, ptr %7, align 8, !tbaa !51
  %65 = load i32, ptr %10, align 4, !tbaa !119
  %66 = call ptr @CustomData_add_layer_named(ptr noundef nonnull %63, i32 noundef 16, i32 noundef 0, ptr noundef %64, i32 noundef %65, ptr noundef nonnull @.str.1) #16
  br label %67

67:                                               ; preds = %59, %23
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  %69 = load ptr, ptr %3, align 8, !tbaa !51
  call void %68(ptr noundef %69) #16
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  %71 = load ptr, ptr %4, align 8, !tbaa !51
  call void %70(ptr noundef %71) #16
  %72 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  %73 = load ptr, ptr %5, align 8, !tbaa !51
  call void %72(ptr noundef %73) #16
  %74 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  %75 = load ptr, ptr %6, align 8, !tbaa !51
  call void %74(ptr noundef %75) #16
  br label %76

76:                                               ; preds = %67, %21
  %77 = phi ptr [ %22, %21 ], [ %28, %67 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret ptr %77
}

; Function Attrs: optsize
declare i32 @BKE_mesh_nurbs_displist_to_mdata(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_add_layer_named(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @CDDM_from_bmesh(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @cddm_from_bmesh_ex(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null) #17
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @cddm_from_bmesh_ex(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !PGOFuncName !121 {
  %6 = alloca %struct.BMIter, align 8
  %7 = load i32, ptr %0, align 8, !tbaa !122
  %8 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !124
  %10 = icmp eq i8 %2, 0
  %11 = select i1 %10, i32 0, i32 %3
  %12 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !125
  %14 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !126
  %16 = tail call ptr @CDDM_new(i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #18
  %17 = getelementptr inbounds %struct.CDDerivedMesh, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.CDDerivedMesh, ptr %16, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = getelementptr inbounds %struct.CDDerivedMesh, ptr %16, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.CDDerivedMesh, ptr %16, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = getelementptr inbounds %struct.CDDerivedMesh, ptr %16, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !49
  %27 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %28 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %27, i32 noundef 17) #16
  %29 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  %30 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %29, i32 noundef 15) #16
  %31 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %32 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %31, i32 noundef 29) #16
  %33 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %34 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %33, i32 noundef 29) #16
  %35 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %33, i32 noundef 30) #16
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 11
  store i32 1, ptr %36, align 8, !tbaa !107
  %37 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %29, i32 noundef 7) #16
  %38 = icmp eq i8 %37, 0
  %39 = icmp eq i8 %1, 0
  %40 = load i64, ptr @CD_MASK_DERIVEDMESH, align 8
  %41 = or i64 %40, 524288
  %42 = select i1 %39, i64 %40, i64 %41
  %43 = and i64 %42, -268435457
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 5
  %45 = load i32, ptr %44, align 8, !tbaa !127
  %46 = tail call zeroext i8 @CustomData_merge(ptr noundef nonnull %31, ptr noundef %16, i64 noundef %43, i32 noundef 1, i32 noundef %45) #16
  %47 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 1
  %48 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 6
  %49 = load i32, ptr %48, align 4, !tbaa !128
  %50 = tail call zeroext i8 @CustomData_merge(ptr noundef nonnull %33, ptr noundef nonnull %47, i64 noundef %43, i32 noundef 1, i32 noundef %49) #16
  %51 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 3
  %52 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 8
  %53 = load i32, ptr %52, align 4, !tbaa !44
  %54 = tail call zeroext i8 @CustomData_merge(ptr noundef nonnull %27, ptr noundef nonnull %51, i64 noundef %43, i32 noundef 1, i32 noundef %53) #16
  %55 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 4
  %56 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 9
  %57 = load i32, ptr %56, align 8, !tbaa !45
  %58 = tail call zeroext i8 @CustomData_merge(ptr noundef nonnull %29, ptr noundef nonnull %55, i64 noundef %43, i32 noundef 1, i32 noundef %57) #16
  br i1 %10, label %61, label %59

59:                                               ; preds = %5
  %60 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 2
  tail call void @CustomData_from_bmeshpoly(ptr noundef nonnull %60, ptr noundef nonnull %55, ptr noundef nonnull %51, i32 noundef %3) #16
  br label %61

61:                                               ; preds = %59, %5
  %62 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 50
  %63 = load ptr, ptr %62, align 8, !tbaa !69
  %64 = tail call ptr %63(ptr noundef nonnull %16, i32 noundef 7) #16
  %65 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef nonnull %0, i8 noundef zeroext 1) #17
  %66 = icmp eq ptr %65, null
  br i1 %66, label %97, label %67

67:                                               ; preds = %61
  %68 = icmp eq i32 %32, -1
  %69 = sext i32 %32 to i64
  br label %70

70:                                               ; preds = %67, %91
  %71 = phi ptr [ %65, %67 ], [ %94, %91 ]
  %72 = phi ptr [ %64, %67 ], [ %92, %91 ]
  %73 = phi i32 [ 0, %67 ], [ %95, %91 ]
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.MVert, ptr %18, i64 %74
  %76 = getelementptr inbounds %struct.BMVert, ptr %71, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef %75, ptr noundef nonnull %76) #17
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %71, i32 noundef %73) #17
  %77 = getelementptr inbounds %struct.MVert, ptr %18, i64 %74, i32 1
  %78 = getelementptr inbounds %struct.BMVert, ptr %71, i64 0, i32 3
  call fastcc void @normal_float_to_short_v3(ptr noundef nonnull %77, ptr noundef nonnull %78) #17
  %79 = call zeroext i8 @BM_vert_flag_to_mflag(ptr noundef nonnull %71) #16
  %80 = getelementptr inbounds %struct.MVert, ptr %18, i64 %74, i32 2
  store i8 %79, ptr %80, align 2, !tbaa !129
  br i1 %68, label %88, label %81

81:                                               ; preds = %70
  %82 = load ptr, ptr %71, align 8, !tbaa !131
  %83 = getelementptr inbounds i8, ptr %82, i64 %69
  %84 = load float, ptr %83, align 4, !tbaa !134
  %85 = fmul float %84, 2.550000e+02
  %86 = fptoui float %85 to i8
  %87 = getelementptr inbounds %struct.MVert, ptr %18, i64 %74, i32 3
  store i8 %86, ptr %87, align 1, !tbaa !135
  br label %88

88:                                               ; preds = %81, %70
  br i1 %38, label %89, label %91

89:                                               ; preds = %88
  %90 = getelementptr inbounds i32, ptr %72, i64 1
  store i32 %73, ptr %72, align 4, !tbaa !119
  br label %91

91:                                               ; preds = %89, %88
  %92 = phi ptr [ %90, %89 ], [ %72, %88 ]
  %93 = load ptr, ptr %71, align 8, !tbaa !131
  call void @CustomData_from_bmesh_block(ptr noundef nonnull %31, ptr noundef %16, ptr noundef %93, i32 noundef %73) #16
  %94 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #17
  %95 = add i32 %73, 1
  %96 = icmp eq ptr %94, null
  br i1 %96, label %97, label %70, !llvm.loop !136

97:                                               ; preds = %91, %61
  %98 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %99 = load i8, ptr %98, align 4, !tbaa !138
  %100 = and i8 %99, -2
  store i8 %100, ptr %98, align 4, !tbaa !138
  %101 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 51
  %102 = load ptr, ptr %101, align 8, !tbaa !70
  %103 = call ptr %102(ptr noundef %16, i32 noundef 7) #16
  %104 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef nonnull %0, i8 noundef zeroext 2) #17
  %105 = icmp eq ptr %104, null
  br i1 %105, label %161, label %106

106:                                              ; preds = %97
  %107 = icmp eq i32 %35, -1
  %108 = sext i32 %35 to i64
  %109 = icmp eq i32 %34, -1
  %110 = sext i32 %34 to i64
  br label %111

111:                                              ; preds = %106, %156
  %112 = phi ptr [ %104, %106 ], [ %158, %156 ]
  %113 = phi ptr [ %103, %106 ], [ %157, %156 ]
  %114 = phi i32 [ 0, %106 ], [ %159, %156 ]
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.MEdge, ptr %20, i64 %115
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %112, i32 noundef %114) #17
  %117 = getelementptr inbounds %struct.BMEdge, ptr %112, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !139
  %119 = call fastcc i32 @_bm_elem_index_get(ptr noundef %118) #17
  store i32 %119, ptr %116, align 4, !tbaa !142
  %120 = getelementptr inbounds %struct.BMEdge, ptr %112, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !144
  %122 = call fastcc i32 @_bm_elem_index_get(ptr noundef %121) #17
  %123 = getelementptr inbounds %struct.MEdge, ptr %20, i64 %115, i32 1
  store i32 %122, ptr %123, align 4, !tbaa !145
  %124 = call signext i16 @BM_edge_flag_to_mflag(ptr noundef nonnull %112) #16
  %125 = getelementptr inbounds %struct.MEdge, ptr %20, i64 %115, i32 4
  store i16 %124, ptr %125, align 2, !tbaa !146
  %126 = and i16 %124, 2
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %111
  %129 = getelementptr inbounds %struct.BMEdge, ptr %112, i64 0, i32 4
  %130 = load ptr, ptr %129, align 8, !tbaa !147
  %131 = icmp eq ptr %130, null
  br i1 %131, label %138, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.BMLoop, ptr %130, i64 0, i32 4
  %134 = load ptr, ptr %133, align 8, !tbaa !148
  %135 = icmp eq ptr %130, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = or disjoint i16 %124, 2
  store i16 %137, ptr %125, align 2, !tbaa !146
  br label %138

138:                                              ; preds = %128, %132, %136, %111
  %139 = load ptr, ptr %112, align 8, !tbaa !150
  br i1 %107, label %146, label %140

140:                                              ; preds = %138
  %141 = getelementptr inbounds i8, ptr %139, i64 %108
  %142 = load float, ptr %141, align 4, !tbaa !134
  %143 = fmul float %142, 2.550000e+02
  %144 = fptoui float %143 to i8
  %145 = getelementptr inbounds %struct.MEdge, ptr %20, i64 %115, i32 2
  store i8 %144, ptr %145, align 4, !tbaa !151
  br label %146

146:                                              ; preds = %140, %138
  br i1 %109, label %153, label %147

147:                                              ; preds = %146
  %148 = getelementptr inbounds i8, ptr %139, i64 %110
  %149 = load float, ptr %148, align 4, !tbaa !134
  %150 = fmul float %149, 2.550000e+02
  %151 = fptoui float %150 to i8
  %152 = getelementptr inbounds %struct.MEdge, ptr %20, i64 %115, i32 3
  store i8 %151, ptr %152, align 1, !tbaa !152
  br label %153

153:                                              ; preds = %147, %146
  call void @CustomData_from_bmesh_block(ptr noundef nonnull %33, ptr noundef nonnull %47, ptr noundef %139, i32 noundef %114) #16
  br i1 %38, label %154, label %156

154:                                              ; preds = %153
  %155 = getelementptr inbounds i32, ptr %113, i64 1
  store i32 %114, ptr %113, align 4, !tbaa !119
  br label %156

156:                                              ; preds = %154, %153
  %157 = phi ptr [ %155, %154 ], [ %113, %153 ]
  %158 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #17
  %159 = add i32 %114, 1
  %160 = icmp eq ptr %158, null
  br i1 %160, label %161, label %111, !llvm.loop !153

161:                                              ; preds = %156, %97
  %162 = load i8, ptr %98, align 4, !tbaa !138
  %163 = and i8 %162, -3
  store i8 %163, ptr %98, align 4, !tbaa !138
  br i1 %10, label %210, label %164

164:                                              ; preds = %161
  call void @BM_mesh_elem_index_ensure(ptr noundef nonnull %0, i8 noundef zeroext 8) #16
  %165 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 52
  %166 = load ptr, ptr %165, align 8, !tbaa !71
  %167 = call ptr %166(ptr noundef %16, i32 noundef 7) #16
  %168 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 7
  %169 = load i32, ptr %168, align 8, !tbaa !43
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %210, label %171

171:                                              ; preds = %164
  %172 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 2
  br label %173

173:                                              ; preds = %171, %173
  %174 = phi i64 [ 0, %171 ], [ %206, %173 ]
  %175 = phi ptr [ %167, %171 ], [ %203, %173 ]
  %176 = getelementptr inbounds %struct.MFace, ptr %22, i64 %174
  %177 = getelementptr inbounds [3 x ptr], ptr %4, i64 %174
  %178 = load ptr, ptr %177, align 8, !tbaa !51
  %179 = getelementptr inbounds %struct.BMLoop, ptr %178, i64 0, i32 3
  %180 = load ptr, ptr %179, align 8, !tbaa !154
  %181 = getelementptr inbounds %struct.BMLoop, ptr %178, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !155
  %183 = call fastcc i32 @_bm_elem_index_get(ptr noundef %182) #17
  store i32 %183, ptr %176, align 4, !tbaa !156
  %184 = getelementptr inbounds ptr, ptr %177, i64 1
  %185 = load ptr, ptr %184, align 8, !tbaa !51
  %186 = getelementptr inbounds %struct.BMLoop, ptr %185, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !155
  %188 = call fastcc i32 @_bm_elem_index_get(ptr noundef %187) #17
  %189 = getelementptr inbounds %struct.MFace, ptr %22, i64 %174, i32 1
  store i32 %188, ptr %189, align 4, !tbaa !158
  %190 = getelementptr inbounds ptr, ptr %177, i64 2
  %191 = load ptr, ptr %190, align 8, !tbaa !51
  %192 = getelementptr inbounds %struct.BMLoop, ptr %191, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !155
  %194 = call fastcc i32 @_bm_elem_index_get(ptr noundef %193) #17
  %195 = getelementptr inbounds %struct.MFace, ptr %22, i64 %174, i32 2
  store i32 %194, ptr %195, align 4, !tbaa !159
  %196 = getelementptr inbounds %struct.MFace, ptr %22, i64 %174, i32 3
  store i32 0, ptr %196, align 4, !tbaa !160
  %197 = getelementptr inbounds %struct.BMFace, ptr %180, i64 0, i32 5
  %198 = load i16, ptr %197, align 8, !tbaa !161
  %199 = getelementptr inbounds %struct.MFace, ptr %22, i64 %174, i32 4
  store i16 %198, ptr %199, align 4, !tbaa !163
  %200 = call zeroext i8 @BM_face_flag_to_mflag(ptr noundef %180) #16
  %201 = getelementptr inbounds %struct.MFace, ptr %22, i64 %174, i32 6
  store i8 %200, ptr %201, align 1, !tbaa !164
  %202 = call fastcc i32 @_bm_elem_index_get(ptr noundef %180) #17
  %203 = getelementptr inbounds i32, ptr %175, i64 1
  store i32 %202, ptr %175, align 4, !tbaa !119
  %204 = trunc i64 %174 to i32
  call fastcc void @loops_to_customdata_corners(ptr noundef nonnull %0, ptr noundef nonnull %172, i32 noundef %204, ptr noundef nonnull %177, i32 noundef %28, i32 noundef %30) #17
  %205 = call i32 @test_index_face(ptr noundef nonnull %176, ptr noundef nonnull %172, i32 noundef %204, i32 noundef 3) #16
  %206 = add nuw nsw i64 %174, 1
  %207 = load i32, ptr %168, align 8, !tbaa !43
  %208 = zext i32 %207 to i64
  %209 = icmp ult i64 %206, %208
  br i1 %209, label %173, label %210, !llvm.loop !165

210:                                              ; preds = %173, %164, %161
  %211 = call ptr @CustomData_get_layer(ptr noundef nonnull %55, i32 noundef 7) #16
  %212 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef nonnull %0, i8 noundef zeroext 3) #17
  %213 = icmp eq ptr %212, null
  br i1 %213, label %258, label %214

214:                                              ; preds = %210, %253
  %215 = phi ptr [ %255, %253 ], [ %212, %210 ]
  %216 = phi ptr [ %245, %253 ], [ %24, %210 ]
  %217 = phi ptr [ %254, %253 ], [ %211, %210 ]
  %218 = phi i32 [ %256, %253 ], [ 0, %210 ]
  %219 = phi i32 [ %244, %253 ], [ 0, %210 ]
  %220 = zext i32 %218 to i64
  %221 = getelementptr inbounds %struct.MPoly, ptr %26, i64 %220
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %215, i32 noundef %218) #17
  %222 = getelementptr inbounds %struct.BMFace, ptr %215, i64 0, i32 3
  %223 = load i32, ptr %222, align 8, !tbaa !166
  %224 = getelementptr inbounds %struct.MPoly, ptr %26, i64 %220, i32 1
  store i32 %223, ptr %224, align 4, !tbaa !167
  %225 = call zeroext i8 @BM_face_flag_to_mflag(ptr noundef nonnull %215) #16
  %226 = getelementptr inbounds %struct.MPoly, ptr %26, i64 %220, i32 3
  store i8 %225, ptr %226, align 2, !tbaa !169
  store i32 %219, ptr %221, align 4, !tbaa !170
  %227 = getelementptr inbounds %struct.BMFace, ptr %215, i64 0, i32 5
  %228 = load i16, ptr %227, align 8, !tbaa !161
  %229 = getelementptr inbounds %struct.MPoly, ptr %26, i64 %220, i32 2
  store i16 %228, ptr %229, align 4, !tbaa !171
  %230 = getelementptr inbounds %struct.BMFace, ptr %215, i64 0, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !172
  br label %232

232:                                              ; preds = %232, %214
  %233 = phi i32 [ %219, %214 ], [ %244, %232 ]
  %234 = phi ptr [ %216, %214 ], [ %245, %232 ]
  %235 = phi ptr [ %231, %214 ], [ %247, %232 ]
  %236 = getelementptr inbounds %struct.BMLoop, ptr %235, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !155
  %238 = call fastcc i32 @_bm_elem_index_get(ptr noundef %237) #17
  store i32 %238, ptr %234, align 4, !tbaa !173
  %239 = getelementptr inbounds %struct.BMLoop, ptr %235, i64 0, i32 2
  %240 = load ptr, ptr %239, align 8, !tbaa !175
  %241 = call fastcc i32 @_bm_elem_index_get(ptr noundef %240) #17
  %242 = getelementptr inbounds %struct.MLoop, ptr %234, i64 0, i32 1
  store i32 %241, ptr %242, align 4, !tbaa !176
  %243 = load ptr, ptr %235, align 8, !tbaa !177
  call void @CustomData_from_bmesh_block(ptr noundef nonnull %27, ptr noundef nonnull %51, ptr noundef %243, i32 noundef %233) #16
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %235, i32 noundef %233) #17
  %244 = add i32 %233, 1
  %245 = getelementptr inbounds %struct.MLoop, ptr %234, i64 1
  %246 = getelementptr inbounds %struct.BMLoop, ptr %235, i64 0, i32 6
  %247 = load ptr, ptr %246, align 8, !tbaa !178
  %248 = icmp eq ptr %247, %231
  br i1 %248, label %249, label %232, !llvm.loop !179

249:                                              ; preds = %232
  %250 = load ptr, ptr %215, align 8, !tbaa !180
  call void @CustomData_from_bmesh_block(ptr noundef nonnull %29, ptr noundef nonnull %55, ptr noundef %250, i32 noundef %218) #16
  br i1 %38, label %251, label %253

251:                                              ; preds = %249
  %252 = getelementptr inbounds i32, ptr %217, i64 1
  store i32 %218, ptr %217, align 4, !tbaa !119
  br label %253

253:                                              ; preds = %251, %249
  %254 = phi ptr [ %252, %251 ], [ %217, %249 ]
  %255 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #17
  %256 = add i32 %218, 1
  %257 = icmp eq ptr %255, null
  br i1 %257, label %258, label %214, !llvm.loop !181

258:                                              ; preds = %253, %210
  %259 = load i8, ptr %98, align 4, !tbaa !138
  %260 = and i8 %259, -13
  store i8 %260, ptr %98, align 4, !tbaa !138
  %261 = call zeroext i8 @BM_mesh_cd_flag_from_bmesh(ptr noundef nonnull %0) #16
  %262 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 19
  store i8 %261, ptr %262, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #18
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @CDDM_from_editbmesh(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !184
  %7 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !185
  %9 = tail call fastcc ptr @cddm_from_bmesh_ex(ptr noundef %4, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %6, ptr noundef %8) #17
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CDDM_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @cddm_copy_ex(ptr noundef %0, i32 noundef 0) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @cddm_copy_ex(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !186 {
  %3 = tail call fastcc ptr @cdDM_create(ptr noundef nonnull @.str.5) #17
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !127
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !128
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !43
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 4, !tbaa !44
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 50
  %15 = load ptr, ptr %14, align 8, !tbaa !69
  %16 = tail call ptr %15(ptr noundef %0, i32 noundef 7) #16
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 51
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  %19 = tail call ptr %18(ptr noundef %0, i32 noundef 7) #16
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %21 = load ptr, ptr %20, align 8, !tbaa !71
  %22 = tail call ptr %21(ptr noundef %0, i32 noundef 7) #16
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 54
  %24 = load ptr, ptr %23, align 8, !tbaa !187
  %25 = tail call ptr %24(ptr noundef %0, i32 noundef 7) #16
  tail call void @DM_from_template(ptr noundef %3, ptr noundef %0, i32 noundef 0, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13) #16
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 11
  %27 = load i32, ptr %26, align 8, !tbaa !107
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 11
  store i32 %27, ptr %28, align 8, !tbaa !107
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 19
  %30 = load i8, ptr %29, align 8, !tbaa !109
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 19
  store i8 %30, ptr %31, align 8, !tbaa !109
  %32 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %33 = load i32, ptr %32, align 8, !tbaa !120
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 16
  store i32 %33, ptr %34, align 8, !tbaa !120
  tail call void @CustomData_copy_data(ptr noundef %0, ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef %5) #16
  %35 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 1
  tail call void @CustomData_copy_data(ptr noundef nonnull %35, ptr noundef nonnull %36, i32 noundef 0, i32 noundef 0, i32 noundef %7) #16
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 2
  tail call void @CustomData_copy_data(ptr noundef nonnull %37, ptr noundef nonnull %38, i32 noundef 0, i32 noundef 0, i32 noundef %9) #16
  %39 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 41
  %40 = load ptr, ptr %39, align 8, !tbaa !188
  %41 = tail call ptr %40(ptr noundef %0) #16
  %42 = getelementptr inbounds %struct.CDDerivedMesh, ptr %3, i64 0, i32 1
  store ptr %41, ptr %42, align 8, !tbaa !34
  %43 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 42
  %44 = load ptr, ptr %43, align 8, !tbaa !189
  %45 = tail call ptr %44(ptr noundef %0) #16
  %46 = getelementptr inbounds %struct.CDDerivedMesh, ptr %3, i64 0, i32 2
  store ptr %45, ptr %46, align 8, !tbaa !47
  %47 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 43
  %48 = load ptr, ptr %47, align 8, !tbaa !190
  %49 = tail call ptr %48(ptr noundef %0) #16
  %50 = getelementptr inbounds %struct.CDDerivedMesh, ptr %3, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !46
  %51 = load ptr, ptr %42, align 8, !tbaa !34
  %52 = tail call ptr @CustomData_add_layer(ptr noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef %51, i32 noundef %5) #16
  %53 = load ptr, ptr %46, align 8, !tbaa !47
  %54 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %36, i32 noundef 3, i32 noundef 0, ptr noundef %53, i32 noundef %7) #16
  %55 = load ptr, ptr %50, align 8, !tbaa !46
  %56 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %38, i32 noundef 4, i32 noundef 0, ptr noundef %55, i32 noundef %9) #16
  %57 = icmp eq i32 %1, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %2
  tail call void @DM_DupPolys(ptr noundef nonnull %0, ptr noundef nonnull %3) #16
  br label %60

59:                                               ; preds = %2
  tail call void @CDDM_tessfaces_to_faces(ptr noundef nonnull %3) #17
  br label %60

60:                                               ; preds = %59, %58
  %61 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 3
  %62 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %61, i32 noundef 26) #16
  %63 = getelementptr inbounds %struct.CDDerivedMesh, ptr %3, i64 0, i32 4
  store ptr %62, ptr %63, align 8, !tbaa !48
  %64 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 4
  %65 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %64, i32 noundef 25) #16
  %66 = getelementptr inbounds %struct.CDDerivedMesh, ptr %3, i64 0, i32 5
  store ptr %65, ptr %66, align 8, !tbaa !49
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CDDM_copy_from_tessface(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @cddm_copy_ex(ptr noundef %0, i32 noundef 1) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CDDM_from_template(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call fastcc ptr @cdDM_create(ptr noundef nonnull @.str.2) #17
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 50
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = tail call ptr %9(ptr noundef %0, i32 noundef 7) #16
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 51
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = tail call ptr %12(ptr noundef %0, i32 noundef 7) #16
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %15 = load ptr, ptr %14, align 8, !tbaa !71
  %16 = tail call ptr %15(ptr noundef %0, i32 noundef 7) #16
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 54
  %18 = load ptr, ptr %17, align 8, !tbaa !187
  %19 = tail call ptr %18(ptr noundef %0, i32 noundef 7) #16
  tail call void @DM_from_template(ptr noundef %7, ptr noundef %0, i32 noundef 0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #16
  %20 = tail call ptr @CustomData_add_layer(ptr noundef %7, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %1) #16
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 1
  %22 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %21, i32 noundef 3, i32 noundef 1, ptr noundef null, i32 noundef %2) #16
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 2
  %24 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %23, i32 noundef 4, i32 noundef 1, ptr noundef null, i32 noundef %3) #16
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 3
  %26 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %25, i32 noundef 26, i32 noundef 1, ptr noundef null, i32 noundef %4) #16
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 4
  %28 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %27, i32 noundef 25, i32 noundef 1, ptr noundef null, i32 noundef %5) #16
  %29 = tail call ptr @CustomData_get_layer(ptr noundef %7, i32 noundef 7) #16
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %6
  %32 = tail call ptr @CustomData_add_layer(ptr noundef %7, i32 noundef 7, i32 noundef 1, ptr noundef null, i32 noundef %1) #16
  br label %33

33:                                               ; preds = %31, %6
  %34 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %21, i32 noundef 7) #16
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %21, i32 noundef 7, i32 noundef 1, ptr noundef null, i32 noundef %2) #16
  br label %38

38:                                               ; preds = %36, %33
  %39 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %23, i32 noundef 7) #16
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %23, i32 noundef 7, i32 noundef 1, ptr noundef null, i32 noundef %3) #16
  br label %43

43:                                               ; preds = %41, %38
  %44 = tail call ptr @CustomData_get_layer(ptr noundef %7, i32 noundef 0) #16
  %45 = getelementptr inbounds %struct.CDDerivedMesh, ptr %7, i64 0, i32 1
  store ptr %44, ptr %45, align 8, !tbaa !34
  %46 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %21, i32 noundef 3) #16
  %47 = getelementptr inbounds %struct.CDDerivedMesh, ptr %7, i64 0, i32 2
  store ptr %46, ptr %47, align 8, !tbaa !47
  %48 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %23, i32 noundef 4) #16
  %49 = getelementptr inbounds %struct.CDDerivedMesh, ptr %7, i64 0, i32 3
  store ptr %48, ptr %49, align 8, !tbaa !46
  %50 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %25, i32 noundef 26) #16
  %51 = getelementptr inbounds %struct.CDDerivedMesh, ptr %7, i64 0, i32 4
  store ptr %50, ptr %51, align 8, !tbaa !48
  %52 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %27, i32 noundef 25) #16
  %53 = getelementptr inbounds %struct.CDDerivedMesh, ptr %7, i64 0, i32 5
  store ptr %52, ptr %53, align 8, !tbaa !49
  ret ptr %7
}

; Function Attrs: optsize
declare void @DM_from_template(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CDDM_apply_vert_coords(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !127
  %5 = tail call ptr @CustomData_duplicate_referenced_layer(ptr noundef %0, i32 noundef 0, i32 noundef %4) #16
  %6 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !34
  %7 = load i32, ptr %3, align 8, !tbaa !127
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2, %9
  %10 = phi i64 [ %13, %9 ], [ 0, %2 ]
  %11 = phi ptr [ %14, %9 ], [ %5, %2 ]
  %12 = getelementptr inbounds [3 x float], ptr %1, i64 %10
  tail call fastcc void @copy_v3_v3(ptr noundef %11, ptr noundef %12) #17
  %13 = add nuw nsw i64 %10, 1
  %14 = getelementptr inbounds %struct.MVert, ptr %11, i64 1
  %15 = load i32, ptr %3, align 8, !tbaa !127
  %16 = sext i32 %15 to i64
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %9, label %18, !llvm.loop !191

18:                                               ; preds = %9, %2
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %20 = load i32, ptr %19, align 8, !tbaa !192
  %21 = or i32 %20, 4
  store i32 %21, ptr %19, align 8, !tbaa !192
  ret void
}

; Function Attrs: optsize
declare ptr @CustomData_duplicate_referenced_layer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !193 {
  %3 = load float, ptr %1, align 4, !tbaa !134
  store float %3, ptr %0, align 4, !tbaa !134
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !134
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !134
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !134
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !134
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CDDM_apply_vert_normals(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !127
  %5 = tail call ptr @CustomData_duplicate_referenced_layer(ptr noundef %0, i32 noundef 0, i32 noundef %4) #16
  %6 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !34
  %7 = load i32, ptr %3, align 8, !tbaa !127
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2, %9
  %10 = phi i64 [ %14, %9 ], [ 0, %2 ]
  %11 = phi ptr [ %15, %9 ], [ %5, %2 ]
  %12 = getelementptr inbounds %struct.MVert, ptr %11, i64 0, i32 1
  %13 = getelementptr inbounds [3 x i16], ptr %1, i64 %10
  tail call fastcc void @copy_v3_v3_short(ptr noundef nonnull %12, ptr noundef %13) #17
  %14 = add nuw nsw i64 %10, 1
  %15 = getelementptr inbounds %struct.MVert, ptr %11, i64 1
  %16 = load i32, ptr %3, align 8, !tbaa !127
  %17 = sext i32 %16 to i64
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %9, label %19, !llvm.loop !194

19:                                               ; preds = %9, %2
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %21 = load i32, ptr %20, align 8, !tbaa !192
  %22 = and i32 %21, -5
  store i32 %22, ptr %20, align 8, !tbaa !192
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3_short(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !195 {
  %3 = load i16, ptr %1, align 2, !tbaa !196
  store i16 %3, ptr %0, align 2, !tbaa !196
  %4 = getelementptr inbounds i16, ptr %1, i64 1
  %5 = load i16, ptr %4, align 2, !tbaa !196
  %6 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %5, ptr %6, align 2, !tbaa !196
  %7 = getelementptr inbounds i16, ptr %1, i64 2
  %8 = load i16, ptr %7, align 2, !tbaa !196
  %9 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %8, ptr %9, align 2, !tbaa !196
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CDDM_calc_normals_mapping_ex(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !127
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %35, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @CDDM_recalc_tessellation_ex(ptr noundef nonnull %0, i8 noundef zeroext 0) #17
  br label %13

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  tail call void @CustomData_free_layers(ptr noundef nonnull %12, i32 noundef 8, i32 noundef %8) #16
  br label %13

13:                                               ; preds = %11, %10
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %15 = load i32, ptr %7, align 8, !tbaa !43
  %16 = sext i32 %15 to i64
  %17 = mul nsw i64 %16, 12
  %18 = tail call ptr %14(i64 noundef %17, ptr noundef nonnull @.str.3) #16
  %19 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = load i32, ptr %3, align 8, !tbaa !127
  %22 = tail call ptr @CDDM_get_loops(ptr noundef nonnull %0) #17
  %23 = tail call ptr @CDDM_get_polys(ptr noundef nonnull %0) #17
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %25 = load i32, ptr %24, align 4, !tbaa !44
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !45
  %28 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = load i32, ptr %7, align 8, !tbaa !43
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %32 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %31, i32 noundef 7) #16
  tail call void @BKE_mesh_calc_normals_mapping_ex(ptr noundef %20, i32 noundef %21, ptr noundef %22, ptr noundef %23, i32 noundef %25, i32 noundef %27, ptr noundef null, ptr noundef %29, i32 noundef %30, ptr noundef %32, ptr noundef %18, i8 noundef zeroext %1) #16
  %33 = load i32, ptr %7, align 8, !tbaa !43
  %34 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %31, i32 noundef 8, i32 noundef 0, ptr noundef %18, i32 noundef %33) #16
  br label %35

35:                                               ; preds = %2, %13
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %37 = load i32, ptr %36, align 8, !tbaa !192
  %38 = and i32 %37, -5
  store i32 %38, ptr %36, align 8, !tbaa !192
  ret void
}

; Function Attrs: optsize
declare void @CustomData_free_layers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_calc_normals_mapping_ex(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @CDDM_get_loops(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @CDDM_get_polys(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CDDM_calc_normals_mapping(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i8 @CustomData_is_referenced_layer(ptr noundef %0, i32 noundef 0) #16
  tail call void @CDDM_calc_normals_mapping_ex(ptr noundef %0, i8 noundef zeroext %2) #17
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_is_referenced_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CDDM_calc_normals(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !127
  %4 = tail call ptr @CustomData_duplicate_referenced_layer(ptr noundef %0, i32 noundef 0, i32 noundef %3) #16
  %5 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !34
  %6 = load i32, ptr %2, align 8, !tbaa !127
  %7 = tail call ptr @CDDM_get_loops(ptr noundef %0) #17
  %8 = tail call ptr @CDDM_get_polys(ptr noundef %0) #17
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 4, !tbaa !44
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !45
  tail call void @BKE_mesh_calc_normals_poly(ptr noundef %4, i32 noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %10, i32 noundef %12, ptr noundef null, i8 noundef zeroext 0) #16
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %14 = load i32, ptr %13, align 8, !tbaa !192
  %15 = and i32 %14, -5
  store i32 %15, ptr %13, align 8, !tbaa !192
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_calc_normals_poly(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CDDM_calc_loop_normals(ptr noundef %0, float noundef %1) #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  %4 = load ptr, ptr %3, align 8, !tbaa !197
  %5 = tail call ptr %4(ptr noundef %0) #16
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 32
  %7 = load ptr, ptr %6, align 8, !tbaa !198
  %8 = tail call ptr %7(ptr noundef %0) #16
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 34
  %10 = load ptr, ptr %9, align 8, !tbaa !199
  %11 = tail call ptr %10(ptr noundef %0) #16
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 35
  %13 = load ptr, ptr %12, align 8, !tbaa !200
  %14 = tail call ptr %13(ptr noundef %0) #16
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = tail call i32 %16(ptr noundef %0) #16
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 24
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  %20 = tail call i32 %19(ptr noundef %0) #16
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 26
  %22 = load ptr, ptr %21, align 8, !tbaa !56
  %23 = tail call i32 %22(ptr noundef %0) #16
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 27
  %25 = load ptr, ptr %24, align 8, !tbaa !57
  %26 = tail call i32 %25(ptr noundef %0) #16
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 58
  %28 = load ptr, ptr %27, align 8, !tbaa !201
  %29 = tail call ptr %28(ptr noundef %0) #16
  %30 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %29, i32 noundef 8) #16
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %2
  %33 = tail call ptr @CustomData_get_layer(ptr noundef %29, i32 noundef 8) #16
  br label %36

34:                                               ; preds = %2
  %35 = tail call ptr @CustomData_add_layer(ptr noundef %29, i32 noundef 8, i32 noundef 1, ptr noundef null, i32 noundef %23) #16
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi ptr [ %33, %32 ], [ %35, %34 ]
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 59
  %39 = load ptr, ptr %38, align 8, !tbaa !202
  %40 = tail call ptr %39(ptr noundef nonnull %0) #16
  %41 = tail call ptr @CustomData_get_layer(ptr noundef %40, i32 noundef 8) #16
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = tail call ptr @CustomData_add_layer(ptr noundef %40, i32 noundef 8, i32 noundef 1, ptr noundef null, i32 noundef %26) #16
  br label %45

45:                                               ; preds = %43, %36
  %46 = phi ptr [ %41, %36 ], [ %44, %43 ]
  %47 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %48 = load i32, ptr %47, align 8, !tbaa !120
  %49 = and i32 %48, 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i8
  tail call void @BKE_mesh_calc_normals_poly(ptr noundef %5, i32 noundef %17, ptr noundef %11, ptr noundef %14, i32 noundef %23, i32 noundef %26, ptr noundef %46, i8 noundef zeroext %51) #16
  %52 = load i32, ptr %47, align 8, !tbaa !120
  %53 = and i32 %52, -5
  store i32 %53, ptr %47, align 8, !tbaa !120
  tail call void @BKE_mesh_normals_loop_split(ptr noundef %5, i32 noundef %17, ptr noundef %8, i32 noundef %20, ptr noundef %11, ptr noundef %37, i32 noundef %23, ptr noundef %14, ptr noundef %46, i32 noundef %26, float noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_normals_loop_split(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CDDM_calc_normals_tessface(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !127
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @CustomData_duplicate_referenced_layer(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %3) #16
  %7 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %9 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %8, i32 noundef 8) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !43
  %14 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %8, i32 noundef 8, i32 noundef 1, ptr noundef null, i32 noundef %13) #16
  br label %15

15:                                               ; preds = %11, %5
  %16 = phi ptr [ %9, %5 ], [ %14, %11 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !34
  %18 = load i32, ptr %2, align 8, !tbaa !127
  %19 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !43
  tail call void @BKE_mesh_calc_normals_tessface(ptr noundef %17, i32 noundef %18, ptr noundef %20, i32 noundef %22, ptr noundef %16) #16
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %24 = load i32, ptr %23, align 8, !tbaa !192
  %25 = and i32 %24, -5
  store i32 %25, ptr %23, align 8, !tbaa !192
  br label %26

26:                                               ; preds = %1, %15
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_calc_normals_tessface(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CDDM_merge_verts(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PolyKey, align 4
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !127
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !128
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 4, !tbaa !44
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !45
  %14 = sub nsw i32 %7, %2
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %16 = sext i32 %14 to i64
  %17 = mul nsw i64 %16, 20
  %18 = tail call ptr %15(i64 noundef %17, ptr noundef nonnull @__func__.CDDM_merge_verts) #16
  %19 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %20 = shl nsw i64 %16, 2
  %21 = tail call ptr %19(i64 noundef %20, ptr noundef nonnull @__func__.CDDM_merge_verts) #16
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %23 = sext i32 %7 to i64
  %24 = shl nsw i64 %23, 2
  %25 = tail call ptr %22(i64 noundef %24, ptr noundef nonnull @__func__.CDDM_merge_verts) #16
  %26 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %27 = sext i32 %9 to i64
  %28 = mul nsw i64 %27, 12
  %29 = tail call ptr %26(i64 noundef %28, ptr noundef nonnull @__func__.CDDM_merge_verts) #16
  %30 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %31 = shl nsw i64 %27, 2
  %32 = tail call ptr %30(i64 noundef %31, ptr noundef nonnull @__func__.CDDM_merge_verts) #16
  %33 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %34 = tail call ptr %33(i64 noundef %31, ptr noundef nonnull @__func__.CDDM_merge_verts) #16
  %35 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %36 = sext i32 %11 to i64
  %37 = shl nsw i64 %36, 3
  %38 = tail call ptr %35(i64 noundef %37, ptr noundef nonnull @__func__.CDDM_merge_verts) #16
  %39 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %40 = shl nsw i64 %36, 2
  %41 = tail call ptr %39(i64 noundef %40, ptr noundef nonnull @__func__.CDDM_merge_verts) #16
  %42 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %43 = sext i32 %13 to i64
  %44 = mul nsw i64 %43, 12
  %45 = tail call ptr %42(i64 noundef %44, ptr noundef nonnull @__func__.CDDM_merge_verts) #16
  %46 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %47 = shl nsw i64 %43, 2
  %48 = tail call ptr %46(i64 noundef %47, ptr noundef nonnull @__func__.CDDM_merge_verts) #16
  %49 = tail call ptr @BLI_edgehash_new_ex(ptr noundef nonnull @__func__.CDDM_merge_verts, i32 noundef %9) #16
  %50 = icmp sgt i32 %7, 0
  br i1 %50, label %51, label %98

51:                                               ; preds = %4
  %52 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !34
  %54 = zext nneg i32 %7 to i64
  br label %58

55:                                               ; preds = %76
  br i1 %50, label %56, label %98

56:                                               ; preds = %55
  %57 = zext nneg i32 %7 to i64
  br label %85

58:                                               ; preds = %51, %76
  %59 = phi i64 [ 0, %51 ], [ %82, %76 ]
  %60 = phi ptr [ %53, %51 ], [ %83, %76 ]
  %61 = phi i32 [ 0, %51 ], [ %80, %76 ]
  %62 = phi i32 [ 0, %51 ], [ %79, %76 ]
  %63 = phi i32 [ 0, %51 ], [ %78, %76 ]
  %64 = getelementptr inbounds i32, ptr %1, i64 %59
  %65 = load i32, ptr %64, align 4, !tbaa !119
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %76

67:                                               ; preds = %58
  %68 = add i32 %62, 1
  %69 = zext i32 %62 to i64
  %70 = getelementptr inbounds i32, ptr %21, i64 %69
  %71 = trunc i64 %59 to i32
  store i32 %71, ptr %70, align 4, !tbaa !119
  %72 = add i32 %61, 1
  %73 = zext i32 %61 to i64
  %74 = getelementptr inbounds %struct.MVert, ptr %18, i64 %73
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %74, ptr noundef nonnull align 4 dereferenceable(20) %60, i64 20, i1 false), !tbaa.struct !203
  %75 = add nsw i32 %63, 1
  br label %76

76:                                               ; preds = %58, %67
  %77 = phi i32 [ %63, %67 ], [ 0, %58 ]
  %78 = phi i32 [ %75, %67 ], [ %63, %58 ]
  %79 = phi i32 [ %68, %67 ], [ %62, %58 ]
  %80 = phi i32 [ %72, %67 ], [ %61, %58 ]
  %81 = getelementptr inbounds i32, ptr %25, i64 %59
  store i32 %77, ptr %81, align 4
  %82 = add nuw nsw i64 %59, 1
  %83 = getelementptr inbounds %struct.MVert, ptr %60, i64 1
  %84 = icmp eq i64 %82, %54
  br i1 %84, label %55, label %58, !llvm.loop !205

85:                                               ; preds = %56, %95
  %86 = phi i64 [ 0, %56 ], [ %96, %95 ]
  %87 = getelementptr inbounds i32, ptr %1, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !119
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = sext i32 %88 to i64
  %92 = getelementptr inbounds i32, ptr %25, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !119
  %94 = getelementptr inbounds i32, ptr %25, i64 %86
  store i32 %93, ptr %94, align 4, !tbaa !119
  br label %95

95:                                               ; preds = %85, %90
  %96 = add nuw nsw i64 %86, 1
  %97 = icmp eq i64 %96, %57
  br i1 %97, label %98, label %85, !llvm.loop !206

98:                                               ; preds = %95, %4, %55
  %99 = phi i32 [ %80, %55 ], [ 0, %4 ], [ %80, %95 ]
  %100 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 2
  %101 = icmp sgt i32 %9, 0
  br i1 %101, label %102, label %154

102:                                              ; preds = %98
  %103 = load ptr, ptr %100, align 8, !tbaa !47
  %104 = zext nneg i32 %9 to i64
  br label %105

105:                                              ; preds = %102, %147
  %106 = phi i64 [ 0, %102 ], [ %151, %147 ]
  %107 = phi ptr [ %103, %102 ], [ %152, %147 ]
  %108 = phi i32 [ 0, %102 ], [ %150, %147 ]
  %109 = phi i32 [ 0, %102 ], [ %149, %147 ]
  %110 = phi i32 [ 0, %102 ], [ %148, %147 ]
  %111 = load i32, ptr %107, align 4, !tbaa !142
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, ptr %1, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !119
  %115 = icmp eq i32 %114, -1
  %116 = select i1 %115, i32 %111, i32 %114
  %117 = getelementptr inbounds %struct.MEdge, ptr %107, i64 0, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !145
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, ptr %1, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !119
  %122 = icmp eq i32 %121, -1
  %123 = select i1 %122, i32 %118, i32 %121
  %124 = icmp eq i32 %116, %123
  br i1 %124, label %145, label %125

125:                                              ; preds = %105
  %126 = tail call ptr @BLI_edgehash_lookup_p(ptr noundef %49, i32 noundef %116, i32 noundef %123) #16
  %127 = icmp eq ptr %126, null
  br i1 %127, label %133, label %128

128:                                              ; preds = %125
  %129 = load ptr, ptr %126, align 8, !tbaa !51
  %130 = ptrtoint ptr %129 to i64
  %131 = trunc i64 %130 to i32
  %132 = getelementptr inbounds i32, ptr %34, i64 %106
  store i32 %131, ptr %132, align 4, !tbaa !119
  br label %147

133:                                              ; preds = %125
  %134 = add i32 %109, 1
  %135 = zext i32 %109 to i64
  %136 = getelementptr inbounds i32, ptr %32, i64 %135
  %137 = trunc i64 %106 to i32
  store i32 %137, ptr %136, align 4, !tbaa !119
  %138 = add i32 %108, 1
  %139 = zext i32 %108 to i64
  %140 = getelementptr inbounds %struct.MEdge, ptr %29, i64 %139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %140, ptr noundef nonnull align 4 dereferenceable(12) %107, i64 12, i1 false), !tbaa.struct !207
  %141 = getelementptr inbounds i32, ptr %34, i64 %106
  store i32 %110, ptr %141, align 4, !tbaa !119
  %142 = sext i32 %110 to i64
  %143 = inttoptr i64 %142 to ptr
  tail call void @BLI_edgehash_insert(ptr noundef %49, i32 noundef %116, i32 noundef %123, ptr noundef %143) #16
  %144 = add nsw i32 %110, 1
  br label %147

145:                                              ; preds = %105
  %146 = getelementptr inbounds i32, ptr %34, i64 %106
  store i32 -1, ptr %146, align 4, !tbaa !119
  br label %147

147:                                              ; preds = %128, %133, %145
  %148 = phi i32 [ %110, %145 ], [ %110, %128 ], [ %144, %133 ]
  %149 = phi i32 [ %109, %145 ], [ %109, %128 ], [ %134, %133 ]
  %150 = phi i32 [ %108, %145 ], [ %108, %128 ], [ %138, %133 ]
  %151 = add nuw nsw i64 %106, 1
  %152 = getelementptr inbounds %struct.MEdge, ptr %107, i64 1
  %153 = icmp eq i64 %151, %104
  br i1 %153, label %154, label %105, !llvm.loop !208

154:                                              ; preds = %147, %98
  %155 = phi i32 [ 0, %98 ], [ %150, %147 ]
  %156 = icmp eq i32 %3, 1
  br i1 %156, label %157, label %213

157:                                              ; preds = %154
  %158 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %159 = shl nsw i64 %43, 4
  %160 = tail call ptr %158(i64 noundef %159, ptr noundef nonnull @__func__.CDDM_merge_verts) #16
  %161 = tail call ptr @BLI_gset_new_ex(ptr noundef nonnull @poly_gset_hash_fn, ptr noundef nonnull @poly_gset_compare_fn, ptr noundef nonnull @__func__.CDDM_merge_verts, i32 noundef %13) #16
  tail call void @BLI_gset_flag_set(ptr noundef %161, i32 noundef 1) #16
  %162 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 5
  %163 = icmp sgt i32 %13, 0
  br i1 %163, label %164, label %199

164:                                              ; preds = %157
  %165 = load ptr, ptr %162, align 8, !tbaa !49
  %166 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 4
  br label %167

167:                                              ; preds = %164, %194
  %168 = phi ptr [ %160, %164 ], [ %197, %194 ]
  %169 = phi i32 [ 0, %164 ], [ %195, %194 ]
  %170 = phi ptr [ %165, %164 ], [ %196, %194 ]
  store i32 %169, ptr %168, align 4, !tbaa !209
  %171 = getelementptr inbounds %struct.MPoly, ptr %170, i64 0, i32 1
  %172 = load i32, ptr %171, align 4, !tbaa !167
  %173 = getelementptr inbounds %struct.PolyKey, ptr %168, i64 0, i32 1
  store i32 %172, ptr %173, align 4, !tbaa !211
  %174 = load ptr, ptr %166, align 8, !tbaa !48
  %175 = load i32, ptr %170, align 4, !tbaa !170
  %176 = getelementptr inbounds %struct.PolyKey, ptr %168, i64 0, i32 3
  store i32 0, ptr %176, align 4, !tbaa !212
  %177 = getelementptr inbounds %struct.PolyKey, ptr %168, i64 0, i32 2
  store i32 0, ptr %177, align 4, !tbaa !213
  %178 = icmp sgt i32 %172, 0
  br i1 %178, label %179, label %194

179:                                              ; preds = %167
  %180 = sext i32 %175 to i64
  %181 = getelementptr inbounds %struct.MLoop, ptr %174, i64 %180
  br label %182

182:                                              ; preds = %179, %182
  %183 = phi i32 [ 0, %179 ], [ %189, %182 ]
  %184 = phi i32 [ 0, %179 ], [ %188, %182 ]
  %185 = phi ptr [ %181, %179 ], [ %191, %182 ]
  %186 = phi i32 [ 0, %179 ], [ %190, %182 ]
  %187 = load i32, ptr %185, align 4, !tbaa !173
  %188 = add i32 %184, %187
  %189 = xor i32 %183, %187
  %190 = add nuw nsw i32 %186, 1
  %191 = getelementptr inbounds %struct.MLoop, ptr %185, i64 1
  %192 = icmp eq i32 %190, %172
  br i1 %192, label %193, label %182, !llvm.loop !214

193:                                              ; preds = %182
  store i32 %188, ptr %177, align 4, !tbaa !213
  store i32 %189, ptr %176, align 4, !tbaa !212
  br label %194

194:                                              ; preds = %193, %167
  tail call void @BLI_gset_insert(ptr noundef %161, ptr noundef nonnull %168) #16
  %195 = add nuw nsw i32 %169, 1
  %196 = getelementptr inbounds %struct.MPoly, ptr %170, i64 1
  %197 = getelementptr inbounds %struct.PolyKey, ptr %168, i64 1
  %198 = icmp eq i32 %195, %13
  br i1 %198, label %199, label %167, !llvm.loop !215

199:                                              ; preds = %194, %157
  %200 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 8
  %201 = load ptr, ptr %200, align 8, !tbaa !216
  %202 = icmp eq ptr %201, null
  br i1 %202, label %208, label %203

203:                                              ; preds = %199
  %204 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %204(ptr noundef nonnull %201) #16
  %205 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  %206 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 9
  %207 = load ptr, ptr %206, align 8, !tbaa !217
  tail call void %205(ptr noundef %207) #16
  br label %208

208:                                              ; preds = %203, %199
  %209 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 9
  %210 = load ptr, ptr %162, align 8, !tbaa !49
  %211 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 4
  %212 = load ptr, ptr %211, align 8, !tbaa !48
  tail call void @BKE_mesh_vert_poly_map_create(ptr noundef nonnull %200, ptr noundef nonnull %209, ptr noundef %210, ptr noundef %212, i32 noundef %7, i32 noundef %13, i32 noundef %11) #16
  br label %213

213:                                              ; preds = %208, %154
  %214 = phi ptr [ %160, %208 ], [ undef, %154 ]
  %215 = phi ptr [ %161, %208 ], [ null, %154 ]
  %216 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 5
  %217 = icmp sgt i32 %13, 0
  br i1 %217, label %218, label %405

218:                                              ; preds = %213
  %219 = load ptr, ptr %216, align 8, !tbaa !49
  %220 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 4
  %221 = icmp eq i32 %3, 0
  %222 = getelementptr inbounds %struct.PolyKey, ptr %5, i64 0, i32 3
  %223 = getelementptr inbounds %struct.PolyKey, ptr %5, i64 0, i32 2
  %224 = getelementptr inbounds %struct.PolyKey, ptr %5, i64 0, i32 1
  %225 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 8
  br label %226

226:                                              ; preds = %218, %397
  %227 = phi i32 [ 0, %218 ], [ %401, %397 ]
  %228 = phi i32 [ 0, %218 ], [ %402, %397 ]
  %229 = phi i32 [ 0, %218 ], [ %400, %397 ]
  %230 = phi i32 [ 0, %218 ], [ %399, %397 ]
  %231 = phi i32 [ 0, %218 ], [ %398, %397 ]
  %232 = phi ptr [ %219, %218 ], [ %403, %397 ]
  %233 = load ptr, ptr %220, align 8, !tbaa !48
  %234 = load i32, ptr %232, align 4, !tbaa !170
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.MLoop, ptr %233, i64 %235
  %237 = getelementptr inbounds %struct.MPoly, ptr %232, i64 0, i32 1
  %238 = load i32, ptr %237, align 4, !tbaa !167
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %252

240:                                              ; preds = %226, %248
  %241 = phi ptr [ %250, %248 ], [ %236, %226 ]
  %242 = phi i32 [ %249, %248 ], [ 0, %226 ]
  %243 = load i32, ptr %241, align 4, !tbaa !173
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds i32, ptr %1, i64 %244
  %246 = load i32, ptr %245, align 4, !tbaa !119
  %247 = icmp eq i32 %246, -1
  br i1 %247, label %328, label %248

248:                                              ; preds = %240
  %249 = add nuw nsw i32 %242, 1
  %250 = getelementptr inbounds %struct.MLoop, ptr %241, i64 1
  %251 = icmp eq i32 %249, %238
  br i1 %251, label %252, label %240, !llvm.loop !218

252:                                              ; preds = %248, %226
  br i1 %221, label %397, label %253

253:                                              ; preds = %252
  br i1 %156, label %254, label %328

254:                                              ; preds = %253
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  store i32 0, ptr %222, align 4, !tbaa !212
  store i32 0, ptr %223, align 4, !tbaa !213
  store i32 0, ptr %224, align 4, !tbaa !211
  br i1 %239, label %255, label %287

255:                                              ; preds = %254
  %256 = zext nneg i32 %238 to i64
  %257 = getelementptr inbounds %struct.MLoop, ptr %236, i64 %256
  %258 = getelementptr inbounds %struct.MLoop, ptr %257, i64 -1
  %259 = load i32, ptr %258, align 4, !tbaa !173
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i32, ptr %1, i64 %260
  %262 = load i32, ptr %261, align 4, !tbaa !119
  br label %263

263:                                              ; preds = %255, %279
  %264 = phi i32 [ %283, %279 ], [ %262, %255 ]
  %265 = phi ptr [ %285, %279 ], [ %236, %255 ]
  %266 = phi i32 [ %284, %279 ], [ 0, %255 ]
  %267 = phi i32 [ %282, %279 ], [ 0, %255 ]
  %268 = phi i32 [ %281, %279 ], [ 0, %255 ]
  %269 = phi i32 [ %280, %279 ], [ 0, %255 ]
  %270 = load i32, ptr %265, align 4, !tbaa !173
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds i32, ptr %1, i64 %271
  %273 = load i32, ptr %272, align 4, !tbaa !119
  %274 = icmp eq i32 %273, %264
  br i1 %274, label %279, label %275

275:                                              ; preds = %263
  %276 = add i32 %267, %273
  store i32 %276, ptr %223, align 4, !tbaa !213
  %277 = xor i32 %268, %273
  store i32 %277, ptr %222, align 4, !tbaa !212
  %278 = add nsw i32 %269, 1
  store i32 %278, ptr %224, align 4, !tbaa !211
  br label %279

279:                                              ; preds = %263, %275
  %280 = phi i32 [ %269, %263 ], [ %278, %275 ]
  %281 = phi i32 [ %268, %263 ], [ %277, %275 ]
  %282 = phi i32 [ %267, %263 ], [ %276, %275 ]
  %283 = phi i32 [ %264, %263 ], [ %273, %275 ]
  %284 = add nuw nsw i32 %266, 1
  %285 = getelementptr inbounds %struct.MLoop, ptr %265, i64 1
  %286 = icmp eq i32 %284, %238
  br i1 %286, label %287, label %263, !llvm.loop !219

287:                                              ; preds = %279, %254
  %288 = call zeroext i8 @BLI_gset_haskey(ptr noundef %215, ptr noundef nonnull %5) #16
  %289 = icmp eq i8 %288, 0
  %290 = load ptr, ptr %220, align 8, !tbaa !48
  br i1 %289, label %323, label %291

291:                                              ; preds = %287
  %292 = load i32, ptr %232, align 4, !tbaa !170
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.MLoop, ptr %290, i64 %293
  %295 = load i32, ptr %294, align 4, !tbaa !173
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds i32, ptr %1, i64 %296
  %298 = load i32, ptr %297, align 4, !tbaa !119
  %299 = load ptr, ptr %225, align 8, !tbaa !216
  %300 = sext i32 %298 to i64
  %301 = getelementptr inbounds %struct.MeshElemMap, ptr %299, i64 %300, i32 1
  %302 = load i32, ptr %301, align 8, !tbaa !220
  %303 = icmp sgt i32 %302, 0
  br i1 %303, label %304, label %323

304:                                              ; preds = %291
  %305 = getelementptr inbounds %struct.MeshElemMap, ptr %299, i64 %300
  %306 = load ptr, ptr %216, align 8, !tbaa !49
  %307 = load ptr, ptr %305, align 8, !tbaa !222
  %308 = zext nneg i32 %302 to i64
  br label %312

309:                                              ; preds = %320
  %310 = add nuw nsw i64 %313, 1
  %311 = icmp eq i64 %310, %308
  br i1 %311, label %323, label %312, !llvm.loop !223

312:                                              ; preds = %304, %309
  %313 = phi i64 [ 0, %304 ], [ %310, %309 ]
  %314 = getelementptr inbounds i32, ptr %307, i64 %313
  %315 = load i32, ptr %314, align 4, !tbaa !119
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.MPoly, ptr %306, i64 %316
  %318 = call fastcc i32 @cddm_poly_compare(ptr noundef %290, ptr noundef nonnull %232, ptr noundef %317, ptr noundef %1, i32 noundef 1) #17, !range !224
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %327

320:                                              ; preds = %312
  %321 = call fastcc i32 @cddm_poly_compare(ptr noundef %290, ptr noundef nonnull %232, ptr noundef %317, ptr noundef %1, i32 noundef -1) #17, !range !224
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %309, label %327

323:                                              ; preds = %309, %291, %287
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  %324 = load i32, ptr %232, align 4, !tbaa !170
  %325 = load i32, ptr %237, align 4, !tbaa !167
  %326 = sext i32 %324 to i64
  br label %328

327:                                              ; preds = %312, %320
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  br label %397

328:                                              ; preds = %240, %323, %253
  %329 = phi i64 [ %326, %323 ], [ %235, %253 ], [ %235, %240 ]
  %330 = phi i32 [ %325, %323 ], [ %238, %253 ], [ %238, %240 ]
  %331 = phi ptr [ %290, %323 ], [ %233, %253 ], [ %233, %240 ]
  %332 = icmp sgt i32 %330, 0
  br i1 %332, label %333, label %397

333:                                              ; preds = %328
  %334 = getelementptr inbounds %struct.MLoop, ptr %331, i64 %329
  br label %335

335:                                              ; preds = %333, %373
  %336 = phi i32 [ %374, %373 ], [ %330, %333 ]
  %337 = phi ptr [ %379, %373 ], [ %334, %333 ]
  %338 = phi i32 [ %377, %373 ], [ %227, %333 ]
  %339 = phi i32 [ %376, %373 ], [ 0, %333 ]
  %340 = phi i32 [ %378, %373 ], [ 0, %333 ]
  %341 = phi i32 [ %375, %373 ], [ %229, %333 ]
  %342 = load ptr, ptr %100, align 8, !tbaa !47
  %343 = getelementptr inbounds %struct.MLoop, ptr %337, i64 0, i32 1
  %344 = load i32, ptr %343, align 4, !tbaa !176
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds %struct.MEdge, ptr %342, i64 %345
  %347 = load i32, ptr %346, align 4, !tbaa !142
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds i32, ptr %1, i64 %348
  %350 = load i32, ptr %349, align 4, !tbaa !119
  %351 = icmp eq i32 %350, -1
  %352 = select i1 %351, i32 %347, i32 %350
  %353 = getelementptr inbounds %struct.MEdge, ptr %342, i64 %345, i32 1
  %354 = load i32, ptr %353, align 4, !tbaa !145
  %355 = zext i32 %354 to i64
  %356 = getelementptr inbounds i32, ptr %1, i64 %355
  %357 = load i32, ptr %356, align 4, !tbaa !119
  %358 = icmp eq i32 %357, -1
  %359 = select i1 %358, i32 %354, i32 %357
  %360 = icmp eq i32 %352, %359
  br i1 %360, label %373, label %361

361:                                              ; preds = %335
  %362 = load i32, ptr %232, align 4, !tbaa !170
  %363 = add nsw i32 %362, %340
  %364 = add i32 %341, 1
  %365 = zext i32 %341 to i64
  %366 = getelementptr inbounds i32, ptr %41, i64 %365
  store i32 %363, ptr %366, align 4, !tbaa !119
  %367 = add i32 %338, 1
  %368 = zext i32 %338 to i64
  %369 = getelementptr inbounds %struct.MLoop, ptr %38, i64 %368
  %370 = load i64, ptr %337, align 4
  store i64 %370, ptr %369, align 4
  %371 = add nsw i32 %339, 1
  %372 = load i32, ptr %237, align 4, !tbaa !167
  br label %373

373:                                              ; preds = %361, %335
  %374 = phi i32 [ %372, %361 ], [ %336, %335 ]
  %375 = phi i32 [ %364, %361 ], [ %341, %335 ]
  %376 = phi i32 [ %371, %361 ], [ %339, %335 ]
  %377 = phi i32 [ %367, %361 ], [ %338, %335 ]
  %378 = add nuw nsw i32 %340, 1
  %379 = getelementptr inbounds %struct.MLoop, ptr %337, i64 1
  %380 = icmp slt i32 %378, %374
  br i1 %380, label %335, label %381, !llvm.loop !225

381:                                              ; preds = %373
  %382 = icmp eq i32 %376, 0
  br i1 %382, label %397, label %383

383:                                              ; preds = %381
  %384 = icmp slt i32 %376, 3
  br i1 %384, label %385, label %388

385:                                              ; preds = %383
  %386 = sub i32 %375, %376
  %387 = sub i32 %377, %376
  br label %397

388:                                              ; preds = %383
  %389 = add i32 %231, 1
  %390 = zext i32 %231 to i64
  %391 = getelementptr inbounds %struct.MPoly, ptr %45, i64 %390
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %391, ptr noundef nonnull align 4 dereferenceable(12) %232, i64 12, i1 false), !tbaa.struct !226
  %392 = getelementptr inbounds %struct.MPoly, ptr %45, i64 %390, i32 1
  store i32 %376, ptr %392, align 4, !tbaa !167
  %393 = sub i32 %377, %376
  store i32 %393, ptr %391, align 4, !tbaa !170
  %394 = add i32 %230, 1
  %395 = zext i32 %230 to i64
  %396 = getelementptr inbounds i32, ptr %48, i64 %395
  store i32 %228, ptr %396, align 4, !tbaa !119
  br label %397

397:                                              ; preds = %328, %252, %327, %381, %388, %385
  %398 = phi i32 [ %231, %385 ], [ %389, %388 ], [ %231, %381 ], [ %231, %327 ], [ %231, %252 ], [ %231, %328 ]
  %399 = phi i32 [ %230, %385 ], [ %394, %388 ], [ %230, %381 ], [ %230, %327 ], [ %230, %252 ], [ %230, %328 ]
  %400 = phi i32 [ %386, %385 ], [ %375, %388 ], [ %375, %381 ], [ %229, %327 ], [ %229, %252 ], [ %229, %328 ]
  %401 = phi i32 [ %387, %385 ], [ %377, %388 ], [ %377, %381 ], [ %227, %327 ], [ %227, %252 ], [ %227, %328 ]
  %402 = add nuw nsw i32 %228, 1
  %403 = getelementptr inbounds %struct.MPoly, ptr %232, i64 1
  %404 = icmp eq i32 %402, %13
  br i1 %404, label %405, label %226, !llvm.loop !227

405:                                              ; preds = %397, %213
  %406 = phi i32 [ 0, %213 ], [ %398, %397 ]
  %407 = phi i32 [ 0, %213 ], [ %401, %397 ]
  %408 = icmp eq ptr %215, null
  br i1 %408, label %411, label %409

409:                                              ; preds = %405
  call void @BLI_gset_free(ptr noundef nonnull %215, ptr noundef null) #16
  %410 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %410(ptr noundef %214) #16
  br label %411

411:                                              ; preds = %409, %405
  %412 = call ptr @CDDM_from_template(ptr noundef %0, i32 noundef %99, i32 noundef %155, i32 noundef 0, i32 noundef %407, i32 noundef %406) #17
  %413 = getelementptr inbounds %struct.DerivedMesh, ptr %412, i64 0, i32 6
  %414 = load i32, ptr %413, align 4, !tbaa !228
  %415 = icmp sgt i32 %414, 0
  br i1 %415, label %416, label %419

416:                                              ; preds = %411
  %417 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %418 = getelementptr inbounds %struct.DerivedMesh, ptr %412, i64 0, i32 1
  br label %426

419:                                              ; preds = %443, %411
  %420 = getelementptr inbounds %struct.DerivedMesh, ptr %412, i64 0, i32 8
  %421 = load i32, ptr %420, align 4, !tbaa !229
  %422 = icmp sgt i32 %421, 0
  br i1 %422, label %423, label %452

423:                                              ; preds = %419
  %424 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %425 = getelementptr inbounds %struct.DerivedMesh, ptr %412, i64 0, i32 3
  br label %456

426:                                              ; preds = %416, %443
  %427 = phi i64 [ 0, %416 ], [ %447, %443 ]
  %428 = phi ptr [ %29, %416 ], [ %448, %443 ]
  %429 = load i32, ptr %428, align 4, !tbaa !142
  %430 = zext i32 %429 to i64
  %431 = getelementptr inbounds i32, ptr %25, i64 %430
  %432 = load i32, ptr %431, align 4, !tbaa !119
  %433 = icmp eq i32 %432, -1
  br i1 %433, label %435, label %434

434:                                              ; preds = %426
  store i32 %432, ptr %428, align 4, !tbaa !142
  br label %435

435:                                              ; preds = %434, %426
  %436 = getelementptr inbounds %struct.MEdge, ptr %428, i64 0, i32 1
  %437 = load i32, ptr %436, align 4, !tbaa !145
  %438 = zext i32 %437 to i64
  %439 = getelementptr inbounds i32, ptr %25, i64 %438
  %440 = load i32, ptr %439, align 4, !tbaa !119
  %441 = icmp eq i32 %440, -1
  br i1 %441, label %443, label %442

442:                                              ; preds = %435
  store i32 %440, ptr %436, align 4, !tbaa !145
  br label %443

443:                                              ; preds = %442, %435
  %444 = getelementptr inbounds i32, ptr %32, i64 %427
  %445 = load i32, ptr %444, align 4, !tbaa !119
  %446 = trunc i64 %427 to i32
  call void @CustomData_copy_data(ptr noundef nonnull %417, ptr noundef nonnull %418, i32 noundef %445, i32 noundef %446, i32 noundef 1) #16
  %447 = add nuw nsw i64 %427, 1
  %448 = getelementptr inbounds %struct.MEdge, ptr %428, i64 1
  %449 = load i32, ptr %413, align 4, !tbaa !228
  %450 = sext i32 %449 to i64
  %451 = icmp slt i64 %447, %450
  br i1 %451, label %426, label %419, !llvm.loop !230

452:                                              ; preds = %473, %419
  %453 = getelementptr inbounds %struct.DerivedMesh, ptr %412, i64 0, i32 5
  %454 = load i32, ptr %453, align 8, !tbaa !231
  %455 = icmp sgt i32 %454, 0
  br i1 %455, label %489, label %482

456:                                              ; preds = %423, %473
  %457 = phi i64 [ 0, %423 ], [ %477, %473 ]
  %458 = phi ptr [ %38, %423 ], [ %478, %473 ]
  %459 = getelementptr inbounds %struct.MLoop, ptr %458, i64 0, i32 1
  %460 = load i32, ptr %459, align 4, !tbaa !176
  %461 = zext i32 %460 to i64
  %462 = getelementptr inbounds i32, ptr %34, i64 %461
  %463 = load i32, ptr %462, align 4, !tbaa !119
  %464 = icmp eq i32 %463, -1
  br i1 %464, label %466, label %465

465:                                              ; preds = %456
  store i32 %463, ptr %459, align 4, !tbaa !176
  br label %466

466:                                              ; preds = %465, %456
  %467 = load i32, ptr %458, align 4, !tbaa !173
  %468 = zext i32 %467 to i64
  %469 = getelementptr inbounds i32, ptr %25, i64 %468
  %470 = load i32, ptr %469, align 4, !tbaa !119
  %471 = icmp eq i32 %470, -1
  br i1 %471, label %473, label %472

472:                                              ; preds = %466
  store i32 %470, ptr %458, align 4, !tbaa !173
  br label %473

473:                                              ; preds = %472, %466
  %474 = getelementptr inbounds i32, ptr %41, i64 %457
  %475 = load i32, ptr %474, align 4, !tbaa !119
  %476 = trunc i64 %457 to i32
  call void @CustomData_copy_data(ptr noundef nonnull %424, ptr noundef nonnull %425, i32 noundef %475, i32 noundef %476, i32 noundef 1) #16
  %477 = add nuw nsw i64 %457, 1
  %478 = getelementptr inbounds %struct.MLoop, ptr %458, i64 1
  %479 = load i32, ptr %420, align 4, !tbaa !229
  %480 = sext i32 %479 to i64
  %481 = icmp slt i64 %477, %480
  br i1 %481, label %456, label %452, !llvm.loop !232

482:                                              ; preds = %489, %452
  %483 = getelementptr inbounds %struct.DerivedMesh, ptr %412, i64 0, i32 9
  %484 = load i32, ptr %483, align 8, !tbaa !233
  %485 = icmp sgt i32 %484, 0
  br i1 %485, label %486, label %507

486:                                              ; preds = %482
  %487 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %488 = getelementptr inbounds %struct.DerivedMesh, ptr %412, i64 0, i32 4
  br label %498

489:                                              ; preds = %452, %489
  %490 = phi i64 [ %494, %489 ], [ 0, %452 ]
  %491 = getelementptr inbounds i32, ptr %21, i64 %490
  %492 = load i32, ptr %491, align 4, !tbaa !119
  %493 = trunc i64 %490 to i32
  call void @CustomData_copy_data(ptr noundef %0, ptr noundef nonnull %412, i32 noundef %492, i32 noundef %493, i32 noundef 1) #16
  %494 = add nuw nsw i64 %490, 1
  %495 = load i32, ptr %453, align 8, !tbaa !231
  %496 = sext i32 %495 to i64
  %497 = icmp slt i64 %494, %496
  br i1 %497, label %489, label %482, !llvm.loop !234

498:                                              ; preds = %486, %498
  %499 = phi i64 [ 0, %486 ], [ %503, %498 ]
  %500 = getelementptr inbounds i32, ptr %48, i64 %499
  %501 = load i32, ptr %500, align 4, !tbaa !119
  %502 = trunc i64 %499 to i32
  call void @CustomData_copy_data(ptr noundef nonnull %487, ptr noundef nonnull %488, i32 noundef %501, i32 noundef %502, i32 noundef 1) #16
  %503 = add nuw nsw i64 %499, 1
  %504 = load i32, ptr %483, align 8, !tbaa !233
  %505 = sext i32 %504 to i64
  %506 = icmp slt i64 %503, %505
  br i1 %506, label %498, label %507, !llvm.loop !235

507:                                              ; preds = %498, %482
  %508 = getelementptr inbounds %struct.CDDerivedMesh, ptr %412, i64 0, i32 1
  %509 = load ptr, ptr %508, align 8, !tbaa !34
  %510 = zext i32 %99 to i64
  %511 = mul nuw nsw i64 %510, 20
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %509, ptr align 4 %18, i64 %511, i1 false)
  %512 = getelementptr inbounds %struct.CDDerivedMesh, ptr %412, i64 0, i32 2
  %513 = load ptr, ptr %512, align 8, !tbaa !47
  %514 = zext i32 %155 to i64
  %515 = mul nuw nsw i64 %514, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %513, ptr align 4 %29, i64 %515, i1 false)
  %516 = getelementptr inbounds %struct.CDDerivedMesh, ptr %412, i64 0, i32 4
  %517 = load ptr, ptr %516, align 8, !tbaa !48
  %518 = zext i32 %407 to i64
  %519 = shl nuw nsw i64 %518, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %517, ptr align 4 %38, i64 %519, i1 false)
  %520 = getelementptr inbounds %struct.CDDerivedMesh, ptr %412, i64 0, i32 5
  %521 = load ptr, ptr %520, align 8, !tbaa !49
  %522 = zext i32 %406 to i64
  %523 = mul nuw nsw i64 %522, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %521, ptr align 4 %45, i64 %523, i1 false)
  %524 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %524(ptr noundef %18) #16
  %525 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %525(ptr noundef %29) #16
  %526 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %526(ptr noundef %38) #16
  %527 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %527(ptr noundef %45) #16
  %528 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %528(ptr noundef %25) #16
  %529 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %529(ptr noundef %34) #16
  %530 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %530(ptr noundef %21) #16
  %531 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %531(ptr noundef %32) #16
  %532 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %532(ptr noundef %41) #16
  %533 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %533(ptr noundef %48) #16
  call void @BLI_edgehash_free(ptr noundef %49, ptr noundef null) #16
  %534 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 10
  store i32 1, ptr %534, align 4, !tbaa !236
  %535 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 95
  %536 = load ptr, ptr %535, align 8, !tbaa !96
  call void %536(ptr noundef %0) #16
  ret ptr %412
}

; Function Attrs: optsize
declare ptr @BLI_edgehash_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_edgehash_lookup_p(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_edgehash_insert(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_gset_new_ex(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @poly_gset_hash_fn(ptr nocapture noundef readonly %0) #6 !PGOFuncName !237 {
  %2 = getelementptr inbounds %struct.PolyKey, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !213
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal noundef zeroext i8 @poly_gset_compare_fn(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 !PGOFuncName !238 {
  %3 = getelementptr inbounds %struct.PolyKey, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !213
  %5 = getelementptr inbounds %struct.PolyKey, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !213
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.PolyKey, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !212
  %11 = getelementptr inbounds %struct.PolyKey, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !212
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.PolyKey, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !211
  %17 = getelementptr inbounds %struct.PolyKey, ptr %1, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !211
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %14, %8, %2
  br label %21

21:                                               ; preds = %14, %20
  %22 = phi i8 [ 1, %20 ], [ 0, %14 ]
  ret i8 %22
}

; Function Attrs: optsize
declare void @BLI_gset_flag_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_gset_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_vert_poly_map_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_gset_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @cddm_poly_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #7 !PGOFuncName !239 {
  %6 = load i32, ptr %1, align 4, !tbaa !170
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.MLoop, ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !173
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %3, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !119
  %13 = icmp eq i32 %12, -1
  %14 = select i1 %13, i32 %9, i32 %12
  %15 = load i32, ptr %2, align 4, !tbaa !170
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.MLoop, ptr %0, i64 %16
  %18 = getelementptr inbounds %struct.MPoly, ptr %2, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !167
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %84

21:                                               ; preds = %5, %29
  %22 = phi ptr [ %31, %29 ], [ %17, %5 ]
  %23 = phi i32 [ %30, %29 ], [ 0, %5 ]
  %24 = load i32, ptr %22, align 4, !tbaa !173
  %25 = icmp eq i32 %24, %14
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.MPoly, ptr %1, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !167
  br label %33

29:                                               ; preds = %21
  %30 = add nuw nsw i32 %23, 1
  %31 = getelementptr inbounds %struct.MLoop, ptr %22, i64 1
  %32 = icmp eq i32 %30, %19
  br i1 %32, label %84, label %21, !llvm.loop !240

33:                                               ; preds = %26, %73
  %34 = phi i32 [ %54, %73 ], [ %14, %26 ]
  %35 = phi i32 [ %41, %73 ], [ 0, %26 ]
  %36 = phi i32 [ %57, %73 ], [ 0, %26 ]
  %37 = phi ptr [ %48, %73 ], [ %8, %26 ]
  br label %38

38:                                               ; preds = %47, %33
  %39 = phi i32 [ %35, %33 ], [ %41, %47 ]
  %40 = phi ptr [ %37, %33 ], [ %48, %47 ]
  %41 = add nsw i32 %39, 1
  %42 = icmp eq i32 %41, %28
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = add nsw i32 %19, -1
  %45 = icmp eq i32 %36, %44
  %46 = zext i1 %45 to i32
  br label %84

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.MLoop, ptr %40, i64 1
  %49 = load i32, ptr %48, align 4, !tbaa !173
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %3, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !119
  %53 = icmp eq i32 %52, -1
  %54 = select i1 %53, i32 %49, i32 %52
  %55 = icmp eq i32 %54, %34
  br i1 %55, label %38, label %56, !llvm.loop !241

56:                                               ; preds = %47
  %57 = add nuw nsw i32 %36, 1
  %58 = icmp eq i32 %57, %19
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = icmp slt i32 %41, %28
  br i1 %60, label %61, label %84

61:                                               ; preds = %59, %69
  %62 = phi ptr [ %71, %69 ], [ %48, %59 ]
  %63 = phi i32 [ %70, %69 ], [ %41, %59 ]
  %64 = load i32, ptr %62, align 4, !tbaa !173
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, ptr %3, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !119
  %68 = icmp eq i32 %67, %14
  br i1 %68, label %69, label %84

69:                                               ; preds = %61
  %70 = add nsw i32 %63, 1
  %71 = getelementptr inbounds %struct.MLoop, ptr %62, i64 1
  %72 = icmp slt i32 %70, %28
  br i1 %72, label %61, label %84, !llvm.loop !242

73:                                               ; preds = %56
  %74 = mul nsw i32 %57, %4
  %75 = add nsw i32 %74, %23
  %76 = srem i32 %75, %19
  %77 = icmp slt i32 %76, 0
  %78 = select i1 %77, i32 %19, i32 0
  %79 = add nsw i32 %78, %76
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.MLoop, ptr %17, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !173
  %83 = icmp eq i32 %82, %54
  br i1 %83, label %33, label %84, !llvm.loop !243

84:                                               ; preds = %29, %73, %69, %61, %43, %59, %5
  %85 = phi i32 [ 0, %5 ], [ %46, %43 ], [ 1, %59 ], [ 0, %61 ], [ 1, %69 ], [ 0, %73 ], [ 0, %29 ]
  ret i32 %85
}

; Function Attrs: optsize
declare void @BLI_gset_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_copy_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_edgehash_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CDDM_calc_edges_tessface(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.CustomData, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %2) #18
  %3 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = shl nsw i32 %6, 1
  %8 = tail call ptr @BLI_edgeset_new_ex(ptr noundef nonnull @__func__.CDDM_calc_edges_tessface, i32 noundef %7) #16
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %1, %28
  %11 = phi ptr [ %33, %28 ], [ %4, %1 ]
  %12 = phi i32 [ %32, %28 ], [ 0, %1 ]
  %13 = load i32, ptr %11, align 4, !tbaa !156
  %14 = getelementptr inbounds %struct.MFace, ptr %11, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !158
  %16 = tail call zeroext i8 @BLI_edgeset_add(ptr noundef %8, i32 noundef %13, i32 noundef %15) #16
  %17 = load i32, ptr %14, align 4, !tbaa !158
  %18 = getelementptr inbounds %struct.MFace, ptr %11, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !159
  %20 = tail call zeroext i8 @BLI_edgeset_add(ptr noundef %8, i32 noundef %17, i32 noundef %19) #16
  %21 = getelementptr inbounds %struct.MFace, ptr %11, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !160
  %23 = icmp eq i32 %22, 0
  %24 = load i32, ptr %18, align 4, !tbaa !159
  br i1 %23, label %28, label %25

25:                                               ; preds = %10
  %26 = tail call zeroext i8 @BLI_edgeset_add(ptr noundef %8, i32 noundef %24, i32 noundef %22) #16
  %27 = load i32, ptr %21, align 4, !tbaa !160
  br label %28

28:                                               ; preds = %10, %25
  %29 = phi i32 [ %27, %25 ], [ %24, %10 ]
  %30 = load i32, ptr %11, align 4, !tbaa !156
  %31 = tail call zeroext i8 @BLI_edgeset_add(ptr noundef %8, i32 noundef %29, i32 noundef %30) #16
  %32 = add nuw nsw i32 %12, 1
  %33 = getelementptr inbounds %struct.MFace, ptr %11, i64 1
  %34 = icmp eq i32 %32, %6
  br i1 %34, label %35, label %10, !llvm.loop !244

35:                                               ; preds = %28, %1
  %36 = tail call i32 @BLI_edgeset_size(ptr noundef %8) #16
  call void @CustomData_reset(ptr noundef nonnull %2) #16
  %37 = call ptr @CustomData_add_layer(ptr noundef nonnull %2, i32 noundef 3, i32 noundef 1, ptr noundef null, i32 noundef %36) #16
  %38 = call ptr @CustomData_add_layer(ptr noundef nonnull %2, i32 noundef 7, i32 noundef 1, ptr noundef null, i32 noundef %36) #16
  %39 = call ptr @CustomData_get_layer(ptr noundef nonnull %2, i32 noundef 3) #16
  %40 = call ptr @CustomData_get_layer(ptr noundef nonnull %2, i32 noundef 7) #16
  %41 = call fastcc ptr @BLI_edgesetIterator_new(ptr noundef %8) #17
  %42 = call fastcc zeroext i8 @BLI_edgesetIterator_isDone(ptr noundef %41) #17, !range !245
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %35, %44
  %45 = phi ptr [ %49, %44 ], [ %39, %35 ]
  %46 = phi ptr [ %50, %44 ], [ %40, %35 ]
  %47 = getelementptr inbounds %struct.MEdge, ptr %45, i64 0, i32 1
  call fastcc void @BLI_edgesetIterator_getKey(ptr noundef %41, ptr noundef %45, ptr noundef nonnull %47) #17
  %48 = getelementptr inbounds %struct.MEdge, ptr %45, i64 0, i32 4
  store i16 34, ptr %48, align 2, !tbaa !146
  store i32 -1, ptr %46, align 4, !tbaa !119
  call fastcc void @BLI_edgesetIterator_step(ptr noundef %41) #17
  %49 = getelementptr inbounds %struct.MEdge, ptr %45, i64 1
  %50 = getelementptr inbounds i32, ptr %46, i64 1
  %51 = call fastcc zeroext i8 @BLI_edgesetIterator_isDone(ptr noundef %41) #17, !range !245
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %44, label %53, !llvm.loop !246

53:                                               ; preds = %44, %35
  call fastcc void @BLI_edgesetIterator_free(ptr noundef %41) #17
  %54 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %55 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %56 = load i32, ptr %55, align 4, !tbaa !128
  call void @CustomData_free(ptr noundef nonnull %54, i32 noundef %56) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %54, ptr noundef nonnull align 8 dereferenceable(200) %2, i64 200, i1 false), !tbaa.struct !247
  store i32 %36, ptr %55, align 4, !tbaa !128
  %57 = call ptr @CustomData_get_layer(ptr noundef nonnull %54, i32 noundef 3) #16
  %58 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 2
  store ptr %57, ptr %58, align 8, !tbaa !47
  call void @BLI_edgeset_free(ptr noundef %8) #16
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %2) #18
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_edgeset_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_edgeset_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_edgeset_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BLI_edgesetIterator_new(ptr noundef %0) unnamed_addr #0 !PGOFuncName !248 {
  %2 = tail call ptr @BLI_edgehashIterator_new(ptr noundef %0) #16
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_edgesetIterator_isDone(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !249 {
  %2 = tail call fastcc zeroext i8 @BLI_edgehashIterator_isDone(ptr noundef %0) #17, !range !245
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @BLI_edgesetIterator_getKey(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !PGOFuncName !250 {
  tail call fastcc void @BLI_edgehashIterator_getKey(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BLI_edgesetIterator_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !251 {
  tail call void @BLI_edgehashIterator_step(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BLI_edgesetIterator_free(ptr noundef %0) unnamed_addr #0 !PGOFuncName !252 {
  tail call void @BLI_edgehashIterator_free(ptr noundef %0) #16
  ret void
}

; Function Attrs: optsize
declare void @CustomData_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_edgeset_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CDDM_calc_edges(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.CustomData, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %2) #18
  %3 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 4, !tbaa !44
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !128
  %11 = tail call ptr @DM_get_edge_data_layer(ptr noundef %0, i32 noundef 7) #16
  %12 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = icmp ne ptr %13, null
  %15 = select i1 %14, i32 %10, i32 0
  %16 = sdiv i32 %8, 2
  %17 = tail call fastcc i32 @max_ii(i32 noundef %15, i32 noundef %16) #17
  %18 = tail call ptr @BLI_edgehash_new_ex(ptr noundef nonnull @__func__.CDDM_calc_edges, i32 noundef %17) #16
  %19 = icmp sgt i32 %10, 0
  %20 = select i1 %14, i1 %19, i1 false
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = zext nneg i32 %10 to i64
  br label %23

23:                                               ; preds = %21, %23
  %24 = phi i64 [ 0, %21 ], [ %29, %23 ]
  %25 = phi ptr [ %13, %21 ], [ %31, %23 ]
  %26 = load i32, ptr %25, align 4, !tbaa !142
  %27 = getelementptr inbounds %struct.MEdge, ptr %25, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !145
  %29 = add nuw nsw i64 %24, 1
  %30 = inttoptr i64 %29 to ptr
  tail call void @BLI_edgehash_insert(ptr noundef %18, i32 noundef %26, i32 noundef %28, ptr noundef nonnull %30) #16
  %31 = getelementptr inbounds %struct.MEdge, ptr %25, i64 1
  %32 = icmp eq i64 %29, %22
  br i1 %32, label %33, label %23, !llvm.loop !253

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
  %41 = load i32, ptr %40, align 4, !tbaa !167
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %37
  %44 = load ptr, ptr %36, align 8, !tbaa !48
  %45 = load i32, ptr %38, align 4, !tbaa !170
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.MLoop, ptr %44, i64 %46
  br label %48

48:                                               ; preds = %43, %48
  %49 = phi i32 [ %63, %48 ], [ %41, %43 ]
  %50 = phi ptr [ %62, %48 ], [ %47, %43 ]
  %51 = phi i32 [ %55, %48 ], [ 0, %43 ]
  %52 = load i32, ptr %50, align 4, !tbaa !173
  %53 = load ptr, ptr %36, align 8, !tbaa !48
  %54 = load i32, ptr %38, align 4, !tbaa !170
  %55 = add nuw nsw i32 %51, 1
  %56 = srem i32 %55, %49
  %57 = add nsw i32 %56, %54
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.MLoop, ptr %53, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !173
  %61 = tail call zeroext i8 @BLI_edgehash_reinsert(ptr noundef %18, i32 noundef %52, i32 noundef %60, ptr noundef null) #16
  %62 = getelementptr inbounds %struct.MLoop, ptr %50, i64 1
  %63 = load i32, ptr %40, align 4, !tbaa !167
  %64 = icmp slt i32 %55, %63
  br i1 %64, label %48, label %65, !llvm.loop !254

65:                                               ; preds = %48, %37
  %66 = add nuw nsw i32 %39, 1
  %67 = getelementptr inbounds %struct.MPoly, ptr %38, i64 1
  %68 = icmp eq i32 %66, %6
  br i1 %68, label %69, label %37, !llvm.loop !255

69:                                               ; preds = %65, %33
  %70 = tail call i32 @BLI_edgehash_size(ptr noundef %18) #16
  call void @CustomData_reset(ptr noundef nonnull %2) #16
  %71 = call ptr @CustomData_add_layer(ptr noundef nonnull %2, i32 noundef 3, i32 noundef 1, ptr noundef null, i32 noundef %70) #16
  %72 = call ptr @CustomData_add_layer(ptr noundef nonnull %2, i32 noundef 7, i32 noundef 1, ptr noundef null, i32 noundef %70) #16
  %73 = load ptr, ptr %12, align 8, !tbaa !47
  %74 = call ptr @CustomData_get_layer(ptr noundef nonnull %2, i32 noundef 3) #16
  %75 = call ptr @CustomData_get_layer(ptr noundef nonnull %2, i32 noundef 7) #16
  %76 = call ptr @BLI_edgehashIterator_new(ptr noundef %18) #16
  %77 = call fastcc zeroext i8 @BLI_edgehashIterator_isDone(ptr noundef %76) #17, !range !245
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %107

79:                                               ; preds = %69, %97
  %80 = phi i64 [ %102, %97 ], [ 0, %69 ]
  %81 = phi ptr [ %104, %97 ], [ %75, %69 ]
  %82 = phi ptr [ %103, %97 ], [ %74, %69 ]
  %83 = getelementptr inbounds %struct.MEdge, ptr %82, i64 0, i32 1
  call fastcc void @BLI_edgehashIterator_getKey(ptr noundef %76, ptr noundef %82, ptr noundef nonnull %83) #17
  %84 = call fastcc ptr @BLI_edgehashIterator_getValue(ptr noundef %76) #17
  %85 = ptrtoint ptr %84 to i64
  %86 = and i64 %85, 4294967295
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %79
  %89 = shl i64 %85, 32
  %90 = add i64 %89, -4294967296
  %91 = ashr exact i64 %90, 32
  %92 = getelementptr inbounds %struct.MEdge, ptr %73, i64 %91, i32 4
  %93 = load i16, ptr %92, align 2, !tbaa !146
  %94 = or i16 %93, 34
  %95 = getelementptr inbounds i32, ptr %11, i64 %91
  %96 = load i32, ptr %95, align 4, !tbaa !119
  br label %97

97:                                               ; preds = %79, %88
  %98 = phi i16 [ %94, %88 ], [ 34, %79 ]
  %99 = phi i32 [ %96, %88 ], [ -1, %79 ]
  %100 = getelementptr inbounds %struct.MEdge, ptr %82, i64 0, i32 4
  store i16 %98, ptr %100, align 2
  store i32 %99, ptr %81, align 4, !tbaa !119
  %101 = inttoptr i64 %80 to ptr
  call fastcc void @BLI_edgehashIterator_setValue(ptr noundef %76, ptr noundef %101) #17
  call void @BLI_edgehashIterator_step(ptr noundef %76) #16
  %102 = add nuw i64 %80, 1
  %103 = getelementptr inbounds %struct.MEdge, ptr %82, i64 1
  %104 = getelementptr inbounds i32, ptr %81, i64 1
  %105 = call fastcc zeroext i8 @BLI_edgehashIterator_isDone(ptr noundef %76) #17, !range !245
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %79, label %107, !llvm.loop !256

107:                                              ; preds = %97, %69
  call void @BLI_edgehashIterator_free(ptr noundef %76) #16
  %108 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %109 = load i32, ptr %9, align 4, !tbaa !128
  call void @CustomData_free(ptr noundef nonnull %108, i32 noundef %109) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %108, ptr noundef nonnull align 8 dereferenceable(200) %2, i64 200, i1 false), !tbaa.struct !247
  store i32 %70, ptr %9, align 4, !tbaa !128
  %110 = call ptr @CustomData_get_layer(ptr noundef nonnull %108, i32 noundef 3) #16
  store ptr %110, ptr %12, align 8, !tbaa !47
  br i1 %34, label %111, label %149

111:                                              ; preds = %107
  %112 = load ptr, ptr %3, align 8, !tbaa !49
  %113 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 4
  br label %114

114:                                              ; preds = %111, %145
  %115 = phi ptr [ %112, %111 ], [ %147, %145 ]
  %116 = phi i32 [ 0, %111 ], [ %146, %145 ]
  %117 = getelementptr inbounds %struct.MPoly, ptr %115, i64 0, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !167
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %145

120:                                              ; preds = %114
  %121 = load ptr, ptr %113, align 8, !tbaa !48
  %122 = load i32, ptr %115, align 4, !tbaa !170
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.MLoop, ptr %121, i64 %123
  br label %125

125:                                              ; preds = %120, %125
  %126 = phi i32 [ %143, %125 ], [ %118, %120 ]
  %127 = phi ptr [ %142, %125 ], [ %124, %120 ]
  %128 = phi i32 [ %132, %125 ], [ 0, %120 ]
  %129 = load i32, ptr %127, align 4, !tbaa !173
  %130 = load ptr, ptr %113, align 8, !tbaa !48
  %131 = load i32, ptr %115, align 4, !tbaa !170
  %132 = add nuw nsw i32 %128, 1
  %133 = srem i32 %132, %126
  %134 = add nsw i32 %133, %131
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.MLoop, ptr %130, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !173
  %138 = call ptr @BLI_edgehash_lookup(ptr noundef %18, i32 noundef %129, i32 noundef %137) #16
  %139 = ptrtoint ptr %138 to i64
  %140 = trunc i64 %139 to i32
  %141 = getelementptr inbounds %struct.MLoop, ptr %127, i64 0, i32 1
  store i32 %140, ptr %141, align 4, !tbaa !176
  %142 = getelementptr inbounds %struct.MLoop, ptr %127, i64 1
  %143 = load i32, ptr %117, align 4, !tbaa !167
  %144 = icmp slt i32 %132, %143
  br i1 %144, label %125, label %145, !llvm.loop !257

145:                                              ; preds = %125, %114
  %146 = add nuw nsw i32 %116, 1
  %147 = getelementptr inbounds %struct.MPoly, ptr %115, i64 1
  %148 = icmp eq i32 %146, %6
  br i1 %148, label %149, label %114, !llvm.loop !258

149:                                              ; preds = %145, %107
  call void @BLI_edgehash_free(ptr noundef %18, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %2) #18
  ret void
}

; Function Attrs: optsize
declare ptr @DM_get_edge_data_layer(ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #9 !PGOFuncName !259 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @BLI_edgehash_reinsert(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_edgehash_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_edgehashIterator_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_edgehashIterator_isDone(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !260 {
  %2 = getelementptr inbounds %struct.EdgeHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !261
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @BLI_edgehashIterator_getKey(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !PGOFuncName !263 {
  %4 = getelementptr inbounds %struct.EdgeHashIterator, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !261
  %6 = getelementptr inbounds %struct._eh_Entry, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !264
  store i32 %7, ptr %1, align 4, !tbaa !119
  %8 = getelementptr inbounds %struct._eh_Entry, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !266
  store i32 %9, ptr %2, align 4, !tbaa !119
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_edgehashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !267 {
  %2 = getelementptr inbounds %struct.EdgeHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !261
  %4 = getelementptr inbounds %struct._eh_Entry, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !268
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @BLI_edgehashIterator_setValue(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #11 !PGOFuncName !269 {
  %3 = getelementptr inbounds %struct.EdgeHashIterator, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !261
  %5 = getelementptr inbounds %struct._eh_Entry, ptr %4, i64 0, i32 3
  store ptr %1, ptr %5, align 8, !tbaa !268
  ret void
}

; Function Attrs: optsize
declare void @BLI_edgehashIterator_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_edgehashIterator_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_edgehash_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CDDM_lower_num_verts(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !127
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = sub nsw i32 %4, %1
  tail call void @CustomData_free_elem(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %7) #16
  br label %8

8:                                                ; preds = %6, %2
  store i32 %1, ptr %3, align 8, !tbaa !127
  ret void
}

; Function Attrs: optsize
declare void @CustomData_free_elem(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CDDM_lower_num_edges(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !128
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %8 = sub nsw i32 %4, %1
  tail call void @CustomData_free_elem(ptr noundef nonnull %7, i32 noundef %1, i32 noundef %8) #16
  br label %9

9:                                                ; preds = %6, %2
  store i32 %1, ptr %3, align 4, !tbaa !128
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CDDM_lower_num_tessfaces(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !43
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %8 = sub nsw i32 %4, %1
  tail call void @CustomData_free_elem(ptr noundef nonnull %7, i32 noundef %1, i32 noundef %8) #16
  br label %9

9:                                                ; preds = %6, %2
  store i32 %1, ptr %3, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CDDM_lower_num_loops(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !44
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %8 = sub nsw i32 %4, %1
  tail call void @CustomData_free_elem(ptr noundef nonnull %7, i32 noundef %1, i32 noundef %8) #16
  br label %9

9:                                                ; preds = %6, %2
  store i32 %1, ptr %3, align 4, !tbaa !44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CDDM_lower_num_polys(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !45
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %8 = sub nsw i32 %4, %1
  tail call void @CustomData_free_elem(ptr noundef nonnull %7, i32 noundef %1, i32 noundef %8) #16
  br label %9

9:                                                ; preds = %6, %2
  store i32 %1, ptr %3, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @CDDM_get_vert(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.MVert, ptr %4, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @CDDM_get_edge(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.MEdge, ptr %4, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @CDDM_get_tessface(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.MFace, ptr %4, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @CDDM_get_loop(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.MLoop, ptr %4, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @CDDM_get_poly(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.MPoly, ptr %4, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @CDDM_get_verts(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @CDDM_get_edges(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @CDDM_get_tessfaces(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CDDM_tessfaces_to_faces(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !228
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !270
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 4, !tbaa !229
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !233
  %13 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 4
  %18 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 5
  tail call void @BKE_mesh_convert_mfaces_to_mpolys_ex(ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, ptr noundef %14, ptr noundef %16, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %17, ptr noundef nonnull %18) #16
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_convert_mfaces_to_mpolys_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CDDM_set_mvert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %0, i32 noundef 0) #16
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !127
  %8 = tail call ptr @CustomData_add_layer(ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef %1, i32 noundef %7) #16
  br label %9

9:                                                ; preds = %5, %2
  %10 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  store ptr %1, ptr %10, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CDDM_set_medge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %4 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %3, i32 noundef 3) #16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !128
  %9 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %3, i32 noundef 3, i32 noundef 0, ptr noundef %1, i32 noundef %8) #16
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 2
  store ptr %1, ptr %11, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CDDM_set_mface(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %4 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %3, i32 noundef 4) #16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !43
  %9 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %3, i32 noundef 4, i32 noundef 0, ptr noundef %1, i32 noundef %8) #16
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  store ptr %1, ptr %11, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CDDM_set_mloop(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %4 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %3, i32 noundef 26) #16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 4, !tbaa !44
  %9 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %3, i32 noundef 26, i32 noundef 0, ptr noundef %1, i32 noundef %8) #16
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 4
  store ptr %1, ptr %11, align 8, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CDDM_set_mpoly(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %4 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %3, i32 noundef 25) #16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !45
  %9 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %3, i32 noundef 25, i32 noundef 0, ptr noundef %1, i32 noundef %8) #16
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 5
  store ptr %1, ptr %11, align 8, !tbaa !49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cdDM_getMinMax(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !271 {
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !127
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %15, %11 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.MVert, ptr %13, i64 %12
  tail call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef %14) #16
  %15 = add nuw nsw i64 %12, 1
  %16 = load i32, ptr %4, align 8, !tbaa !127
  %17 = sext i32 %16 to i64
  %18 = icmp slt i64 %15, %17
  br i1 %18, label %11, label %20, !llvm.loop !272

19:                                               ; preds = %3
  tail call fastcc void @zero_v3(ptr noundef %1) #17
  tail call fastcc void @zero_v3(ptr noundef %2) #17
  br label %20

20:                                               ; preds = %11, %7, %19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @cdDM_getNumVerts(ptr nocapture noundef readonly %0) #6 !PGOFuncName !273 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !127
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @cdDM_getNumEdges(ptr nocapture noundef readonly %0) #6 !PGOFuncName !274 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !128
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @cdDM_getNumTessFaces(ptr nocapture noundef readonly %0) #6 !PGOFuncName !275 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !43
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @cdDM_getNumLoops(ptr nocapture noundef readonly %0) #6 !PGOFuncName !276 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !44
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @cdDM_getNumPolys(ptr nocapture noundef readonly %0) #6 !PGOFuncName !277 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !45
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @cdDM_getVert(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #12 !PGOFuncName !278 {
  %4 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.MVert, ptr %5, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %7, i64 20, i1 false), !tbaa.struct !203
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @cdDM_getEdge(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #12 !PGOFuncName !279 {
  %4 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.MEdge, ptr %5, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !207
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @cdDM_getTessFace(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #12 !PGOFuncName !280 {
  %4 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.MFace, ptr %5, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %7, i64 20, i1 false), !tbaa.struct !281
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @cdDM_copyVertArray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #12 !PGOFuncName !282 {
  %3 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !127
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %4, i64 %8, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @cdDM_copyEdgeArray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #12 !PGOFuncName !283 {
  %3 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !128
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %4, i64 %8, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @cdDM_copyTessFaceArray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #12 !PGOFuncName !284 {
  %3 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %4, i64 %8, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @cdDM_copyLoopArray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #12 !PGOFuncName !285 {
  %3 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 4, !tbaa !44
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %4, i64 %8, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @cdDM_copyPolyArray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #12 !PGOFuncName !286 {
  %3 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !45
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %4, i64 %8, i1 false)
  ret void
}

; Function Attrs: optsize
declare ptr @DM_get_vert_data(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: optsize
declare ptr @DM_get_edge_data(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: optsize
declare ptr @DM_get_tessface_data(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: optsize
declare ptr @DM_get_vert_data_layer(ptr noundef, i32 noundef) #2

; Function Attrs: optsize
declare ptr @DM_get_tessface_data_layer(ptr noundef, i32 noundef) #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @cdDM_getVertCos(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #13 !PGOFuncName !287 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !127
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = tail call ptr @CDDM_get_verts(ptr noundef nonnull %0) #17
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %12, %8 ]
  %10 = phi ptr [ %7, %6 ], [ %13, %8 ]
  %11 = getelementptr inbounds [3 x float], ptr %1, i64 %9
  tail call fastcc void @copy_v3_v3(ptr noundef %11, ptr noundef %10) #17
  %12 = add nuw nsw i64 %9, 1
  %13 = getelementptr inbounds %struct.MVert, ptr %10, i64 1
  %14 = load i32, ptr %3, align 8, !tbaa !127
  %15 = sext i32 %14 to i64
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %8, label %17, !llvm.loop !288

17:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @cdDM_getVertCo(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #12 !PGOFuncName !289 {
  %4 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.MVert, ptr %5, i64 %6
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef %7) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @cdDM_getVertNo(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #12 !PGOFuncName !290 {
  %4 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.MVert, ptr %5, i64 %6, i32 1
  tail call fastcc void @normal_short_to_float_v3(ptr noundef %2, ptr noundef nonnull %7) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @cdDM_getPBVH(ptr noundef readonly %0, ptr nocapture noundef %1) #0 !PGOFuncName !291 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CDDerivedMesh, ptr %1, i64 0, i32 6
  store ptr null, ptr %5, align 8, !tbaa !292
  br label %92

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !293
  %9 = icmp eq ptr %8, null
  br i1 %9, label %92, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.SculptSession, ptr %8, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !294
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.CDDerivedMesh, ptr %1, i64 0, i32 6
  br i1 %13, label %19, label %15

15:                                               ; preds = %10
  store ptr %12, ptr %14, align 8, !tbaa !292
  %16 = tail call fastcc zeroext i8 @can_pbvh_draw(ptr noundef nonnull %0, ptr noundef %1) #17, !range !245
  %17 = getelementptr inbounds %struct.CDDerivedMesh, ptr %1, i64 0, i32 7
  store i8 %16, ptr %17, align 8, !tbaa !296
  %18 = getelementptr inbounds %struct.CDDerivedMesh, ptr %1, i64 0, i32 6
  br label %89

19:                                               ; preds = %10
  %20 = load ptr, ptr %14, align 8, !tbaa !292
  %21 = icmp eq ptr %20, null
  %22 = getelementptr inbounds %struct.CDDerivedMesh, ptr %1, i64 0, i32 6
  br i1 %21, label %23, label %89

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.SculptSession, ptr %8, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !297
  %26 = icmp eq ptr %25, null
  br i1 %26, label %47, label %27

27:                                               ; preds = %23
  %28 = tail call ptr @BKE_pbvh_new() #16
  store ptr %28, ptr %22, align 8, !tbaa !292
  %29 = getelementptr inbounds %struct.CDDerivedMesh, ptr %1, i64 0, i32 7
  store i8 1, ptr %29, align 8, !tbaa !296
  %30 = load ptr, ptr %7, align 8, !tbaa !293
  %31 = getelementptr inbounds %struct.SculptSession, ptr %30, i64 0, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !297
  %33 = getelementptr inbounds %struct.SculptSession, ptr %30, i64 0, i32 13
  %34 = load i8, ptr %33, align 8, !tbaa !298
  %35 = getelementptr inbounds %struct.SculptSession, ptr %30, i64 0, i32 14
  %36 = load ptr, ptr %35, align 8, !tbaa !299
  %37 = getelementptr inbounds %struct.SculptSession, ptr %30, i64 0, i32 11
  %38 = load i32, ptr %37, align 8, !tbaa !300
  %39 = getelementptr inbounds %struct.SculptSession, ptr %30, i64 0, i32 12
  %40 = load i32, ptr %39, align 4, !tbaa !301
  tail call void @BKE_pbvh_build_bmesh(ptr noundef %28, ptr noundef %32, i8 noundef zeroext %34, ptr noundef %36, i32 noundef %38, i32 noundef %40) #16
  %41 = load ptr, ptr %22, align 8, !tbaa !292
  %42 = load ptr, ptr %7, align 8, !tbaa !293
  %43 = getelementptr inbounds %struct.SculptSession, ptr %42, i64 0, i32 16
  %44 = load i8, ptr %43, align 8, !tbaa !302
  tail call void @pbvh_show_diffuse_color_set(ptr noundef %41, i8 noundef zeroext %44) #16
  %45 = load ptr, ptr %22, align 8, !tbaa !292
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %89

47:                                               ; preds = %23, %27
  %48 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %49 = load i16, ptr %48, align 8, !tbaa !303
  %50 = icmp eq i16 %49, 1
  br i1 %50, label %51, label %89

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %53 = load ptr, ptr %52, align 8, !tbaa !115
  %54 = tail call ptr @BKE_pbvh_new() #16
  store ptr %54, ptr %22, align 8, !tbaa !292
  %55 = tail call fastcc zeroext i8 @can_pbvh_draw(ptr noundef nonnull %0, ptr noundef nonnull %1) #17, !range !245
  %56 = getelementptr inbounds %struct.CDDerivedMesh, ptr %1, i64 0, i32 7
  store i8 %55, ptr %56, align 8, !tbaa !296
  tail call void @BKE_mesh_tessface_ensure(ptr noundef %53) #16
  %57 = load ptr, ptr %22, align 8, !tbaa !292
  %58 = getelementptr inbounds %struct.Mesh, ptr %53, i64 0, i32 12
  %59 = load ptr, ptr %58, align 8, !tbaa !304
  %60 = getelementptr inbounds %struct.Mesh, ptr %53, i64 0, i32 15
  %61 = load ptr, ptr %60, align 8, !tbaa !305
  %62 = getelementptr inbounds %struct.Mesh, ptr %53, i64 0, i32 28
  %63 = load i32, ptr %62, align 8, !tbaa !104
  %64 = getelementptr inbounds %struct.Mesh, ptr %53, i64 0, i32 26
  %65 = load i32, ptr %64, align 8, !tbaa !99
  %66 = getelementptr inbounds %struct.Mesh, ptr %53, i64 0, i32 21
  tail call void @BKE_pbvh_build_mesh(ptr noundef %57, ptr noundef %59, ptr noundef %61, i32 noundef %63, i32 noundef %65, ptr noundef nonnull %66) #16
  %67 = load ptr, ptr %22, align 8, !tbaa !292
  %68 = load ptr, ptr %7, align 8, !tbaa !293
  %69 = getelementptr inbounds %struct.SculptSession, ptr %68, i64 0, i32 16
  %70 = load i8, ptr %69, align 8, !tbaa !302
  tail call void @pbvh_show_diffuse_color_set(ptr noundef %67, i8 noundef zeroext %70) #16
  %71 = tail call fastcc zeroext i8 @check_sculpt_object_deformed(ptr noundef nonnull %0, i8 noundef zeroext 1) #17
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %89, label %73

73:                                               ; preds = %51
  %74 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 119
  %75 = load ptr, ptr %74, align 8, !tbaa !306
  %76 = icmp eq ptr %75, null
  br i1 %76, label %89, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.DerivedMesh, ptr %75, i64 0, i32 23
  %79 = load ptr, ptr %78, align 8, !tbaa !53
  %80 = tail call i32 %79(ptr noundef nonnull %75) #16
  %81 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %82 = sext i32 %80 to i64
  %83 = mul nsw i64 %82, 12
  %84 = tail call ptr %81(i64 noundef %83, ptr noundef nonnull @.str.4) #16
  %85 = getelementptr inbounds %struct.DerivedMesh, ptr %75, i64 0, i32 77
  %86 = load ptr, ptr %85, align 8, !tbaa !75
  tail call void %86(ptr noundef nonnull %75, ptr noundef %84) #16
  %87 = load ptr, ptr %22, align 8, !tbaa !292
  tail call void @BKE_pbvh_apply_vertCos(ptr noundef %87, ptr noundef %84) #16
  %88 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %88(ptr noundef %84) #16
  br label %89

89:                                               ; preds = %15, %19, %51, %73, %77, %47, %27
  %90 = phi ptr [ %18, %15 ], [ %22, %19 ], [ %22, %51 ], [ %22, %73 ], [ %22, %77 ], [ %22, %47 ], [ %22, %27 ]
  %91 = load ptr, ptr %90, align 8, !tbaa !292
  br label %92

92:                                               ; preds = %6, %89, %4
  %93 = phi ptr [ %91, %89 ], [ null, %4 ], [ null, %6 ]
  ret ptr %93
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @cdDM_getPolyMap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !307 {
  %3 = getelementptr inbounds %struct.CDDerivedMesh, ptr %1, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !216
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !303
  %9 = icmp eq i16 %8, 1
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !115
  %13 = getelementptr inbounds %struct.CDDerivedMesh, ptr %1, i64 0, i32 9
  %14 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !308
  %16 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !309
  %18 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 26
  %19 = load i32, ptr %18, align 8, !tbaa !99
  %20 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 30
  %21 = load i32, ptr %20, align 8, !tbaa !106
  %22 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 31
  %23 = load i32, ptr %22, align 4, !tbaa !105
  tail call void @BKE_mesh_vert_poly_map_create(ptr noundef nonnull %3, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #16
  %24 = load ptr, ptr %3, align 8, !tbaa !216
  br label %25

25:                                               ; preds = %10, %6, %2
  %26 = phi ptr [ %24, %10 ], [ null, %6 ], [ %4, %2 ]
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cdDM_drawVerts(ptr noundef %0) #0 !PGOFuncName !310 {
  %2 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef %0) #16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  tail call void @glBegin(i32 noundef 0) #16
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !127
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %6, %10
  %11 = phi i32 [ %13, %10 ], [ 0, %6 ]
  %12 = phi ptr [ %14, %10 ], [ %3, %6 ]
  tail call void @glVertex3fv(ptr noundef %12) #16
  %13 = add nuw nsw i32 %11, 1
  %14 = getelementptr inbounds %struct.MVert, ptr %12, i64 1
  %15 = load i32, ptr %7, align 8, !tbaa !127
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %10, label %17, !llvm.loop !311

17:                                               ; preds = %10, %6
  tail call void @glEnd() #16
  br label %33

18:                                               ; preds = %1
  tail call void @GPU_vertex_setup(ptr noundef nonnull %0) #16
  %19 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef nonnull %0) #16
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
  tail call void @glDrawArrays(i32 noundef 0, i32 noundef 0, i32 noundef %31) #16
  br label %32

32:                                               ; preds = %30, %18
  tail call void @GPU_buffer_unbind() #16
  br label %33

33:                                               ; preds = %32, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cdDM_drawUVEdges(ptr noundef %0) #0 !PGOFuncName !316 {
  %2 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 5) #16
  %5 = icmp eq ptr %3, null
  br i1 %5, label %83, label %6

6:                                                ; preds = %1
  %7 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef nonnull %0) #16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %6
  tail call void @glBegin(i32 noundef 1) #16
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !43
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %9, %30
  %14 = phi i32 [ %31, %30 ], [ 0, %9 ]
  %15 = phi ptr [ %33, %30 ], [ %4, %9 ]
  %16 = phi ptr [ %32, %30 ], [ %3, %9 ]
  %17 = getelementptr inbounds %struct.MFace, ptr %16, i64 0, i32 6
  %18 = load i8, ptr %17, align 1, !tbaa !164
  %19 = and i8 %18, 16
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %13
  tail call void @glVertex2fv(ptr noundef %15) #16
  %22 = getelementptr inbounds [4 x [2 x float]], ptr %15, i64 0, i64 1
  tail call void @glVertex2fv(ptr noundef nonnull %22) #16
  tail call void @glVertex2fv(ptr noundef nonnull %22) #16
  %23 = getelementptr inbounds [4 x [2 x float]], ptr %15, i64 0, i64 2
  tail call void @glVertex2fv(ptr noundef nonnull %23) #16
  %24 = getelementptr inbounds %struct.MFace, ptr %16, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !160
  %26 = icmp eq i32 %25, 0
  tail call void @glVertex2fv(ptr noundef nonnull %23) #16
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds [4 x [2 x float]], ptr %15, i64 0, i64 3
  tail call void @glVertex2fv(ptr noundef nonnull %28) #16
  tail call void @glVertex2fv(ptr noundef nonnull %28) #16
  br label %29

29:                                               ; preds = %21, %27
  tail call void @glVertex2fv(ptr noundef %15) #16
  br label %30

30:                                               ; preds = %29, %13
  %31 = add nuw nsw i32 %14, 1
  %32 = getelementptr inbounds %struct.MFace, ptr %16, i64 1
  %33 = getelementptr inbounds %struct.MTFace, ptr %15, i64 1
  %34 = load i32, ptr %10, align 8, !tbaa !43
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %13, label %36, !llvm.loop !317

36:                                               ; preds = %30, %9
  tail call void @glEnd() #16
  br label %83

37:                                               ; preds = %6
  tail call void @GPU_uvedge_setup(ptr noundef nonnull %0) #16
  %38 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef nonnull %0) #16
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %82

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %42 = load i32, ptr %41, align 8, !tbaa !43
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %76

44:                                               ; preds = %40, %64
  %45 = phi i32 [ %65, %64 ], [ %42, %40 ]
  %46 = phi i32 [ %71, %64 ], [ 0, %40 ]
  %47 = phi i32 [ %55, %64 ], [ 1, %40 ]
  %48 = phi i32 [ %66, %64 ], [ 0, %40 ]
  %49 = phi i32 [ %72, %64 ], [ 0, %40 ]
  %50 = phi ptr [ %73, %64 ], [ %3, %40 ]
  %51 = getelementptr inbounds %struct.MFace, ptr %50, i64 0, i32 6
  %52 = load i8, ptr %51, align 1, !tbaa !164
  %53 = and i8 %52, 16
  %54 = icmp eq i8 %53, 0
  %55 = zext i1 %54 to i32
  %56 = icmp eq i32 %47, %55
  br i1 %56, label %64, label %57

57:                                               ; preds = %44
  %58 = icmp eq i32 %47, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %57
  %60 = sub nsw i32 %46, %48
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  tail call void @glDrawArrays(i32 noundef 1, i32 noundef %48, i32 noundef %60) #16
  %63 = load i32, ptr %41, align 8, !tbaa !43
  br label %64

64:                                               ; preds = %57, %59, %62, %44
  %65 = phi i32 [ %45, %44 ], [ %63, %62 ], [ %45, %59 ], [ %45, %57 ]
  %66 = phi i32 [ %48, %44 ], [ %46, %62 ], [ %46, %59 ], [ %46, %57 ]
  %67 = getelementptr inbounds %struct.MFace, ptr %50, i64 0, i32 3
  %68 = load i32, ptr %67, align 4, !tbaa !160
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i32 6, i32 8
  %71 = add nuw nsw i32 %70, %46
  %72 = add nuw nsw i32 %49, 1
  %73 = getelementptr inbounds %struct.MFace, ptr %50, i64 1
  %74 = icmp slt i32 %72, %65
  br i1 %74, label %44, label %75, !llvm.loop !318

75:                                               ; preds = %64
  br i1 %54, label %76, label %82

76:                                               ; preds = %40, %75
  %77 = phi i32 [ %71, %75 ], [ 0, %40 ]
  %78 = phi i32 [ %66, %75 ], [ 0, %40 ]
  %79 = sub nsw i32 %77, %78
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  tail call void @glDrawArrays(i32 noundef 1, i32 noundef %78, i32 noundef %79) #16
  br label %82

82:                                               ; preds = %75, %76, %81, %37
  tail call void @GPU_buffer_unbind() #16
  br label %83

83:                                               ; preds = %36, %82, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cdDM_drawEdges(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 !PGOFuncName !319 {
  %4 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !292
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 7
  %13 = load i8, ptr %12, align 8, !tbaa !296
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @BKE_pbvh_type(ptr noundef nonnull %9) #16
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load ptr, ptr %8, align 8, !tbaa !292
  tail call void @BKE_pbvh_draw(ptr noundef %19, ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef zeroext 1) #16
  br label %125

20:                                               ; preds = %15, %11, %3
  %21 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef nonnull %0) #16
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %60, label %23

23:                                               ; preds = %20
  tail call void @glBegin(i32 noundef 1) #16
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %25 = load i32, ptr %24, align 4, !tbaa !128
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %23
  %28 = icmp eq i8 %2, 0
  %29 = icmp eq i8 %1, 0
  br label %30

30:                                               ; preds = %27, %54
  %31 = phi i32 [ %25, %27 ], [ %55, %54 ]
  %32 = phi i32 [ 0, %27 ], [ %56, %54 ]
  %33 = phi ptr [ %7, %27 ], [ %57, %54 ]
  br i1 %28, label %34, label %39

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.MEdge, ptr %33, i64 0, i32 4
  %36 = load i16, ptr %35, align 2, !tbaa !146
  %37 = and i16 %36, 2
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %34, %30
  br i1 %29, label %40, label %45

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.MEdge, ptr %33, i64 0, i32 4
  %42 = load i16, ptr %41, align 2, !tbaa !146
  %43 = and i16 %42, 128
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40, %39
  %46 = load i32, ptr %33, align 4, !tbaa !142
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.MVert, ptr %5, i64 %47
  tail call void @glVertex3fv(ptr noundef %48) #16
  %49 = getelementptr inbounds %struct.MEdge, ptr %33, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !145
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.MVert, ptr %5, i64 %51
  tail call void @glVertex3fv(ptr noundef %52) #16
  %53 = load i32, ptr %24, align 4, !tbaa !128
  br label %54

54:                                               ; preds = %34, %40, %45
  %55 = phi i32 [ %31, %34 ], [ %31, %40 ], [ %53, %45 ]
  %56 = add nuw nsw i32 %32, 1
  %57 = getelementptr inbounds %struct.MEdge, ptr %33, i64 1
  %58 = icmp slt i32 %56, %55
  br i1 %58, label %30, label %59, !llvm.loop !320

59:                                               ; preds = %54, %23
  tail call void @glEnd() #16
  br label %125

60:                                               ; preds = %20
  tail call void @GPU_edge_setup(ptr noundef nonnull %0) #16
  %61 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef nonnull %0) #16
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %124

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %65 = load i32, ptr %64, align 4, !tbaa !128
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %112

67:                                               ; preds = %63
  %68 = icmp eq i8 %2, 0
  %69 = icmp eq i8 %1, 0
  %70 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  br label %71

71:                                               ; preds = %67, %105
  %72 = phi i32 [ %65, %67 ], [ %106, %105 ]
  %73 = phi i32 [ 1, %67 ], [ %91, %105 ]
  %74 = phi i32 [ 0, %67 ], [ %107, %105 ]
  %75 = phi i32 [ 0, %67 ], [ %108, %105 ]
  %76 = phi ptr [ %7, %67 ], [ %109, %105 ]
  br i1 %68, label %77, label %82

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.MEdge, ptr %76, i64 0, i32 4
  %79 = load i16, ptr %78, align 2, !tbaa !146
  %80 = and i16 %79, 2
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %77, %71
  br i1 %69, label %83, label %89

83:                                               ; preds = %82
  %84 = getelementptr inbounds %struct.MEdge, ptr %76, i64 0, i32 4
  %85 = load i16, ptr %84, align 2, !tbaa !146
  %86 = and i16 %85, 128
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83, %77
  br label %89

89:                                               ; preds = %82, %83, %88
  %90 = phi i1 [ true, %88 ], [ false, %83 ], [ false, %82 ]
  %91 = phi i32 [ 0, %88 ], [ 1, %83 ], [ 1, %82 ]
  %92 = icmp eq i32 %73, %91
  br i1 %92, label %105, label %93

93:                                               ; preds = %89
  %94 = icmp eq i32 %73, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %93
  %96 = sub nsw i32 %75, %74
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load ptr, ptr %70, align 8, !tbaa !312
  %100 = getelementptr inbounds %struct.GPUDrawObject, ptr %99, i64 0, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !321
  %102 = shl nsw i32 %74, 1
  %103 = shl nuw nsw i32 %96, 1
  tail call void @GPU_buffer_draw_elements(ptr noundef %101, i32 noundef 1, i32 noundef %102, i32 noundef %103) #16
  %104 = load i32, ptr %64, align 4, !tbaa !128
  br label %105

105:                                              ; preds = %93, %95, %98, %89
  %106 = phi i32 [ %72, %89 ], [ %104, %98 ], [ %72, %95 ], [ %72, %93 ]
  %107 = phi i32 [ %74, %89 ], [ %75, %98 ], [ %75, %95 ], [ %75, %93 ]
  %108 = add nuw nsw i32 %75, 1
  %109 = getelementptr inbounds %struct.MEdge, ptr %76, i64 1
  %110 = icmp slt i32 %108, %106
  br i1 %110, label %71, label %111, !llvm.loop !322

111:                                              ; preds = %105
  br i1 %90, label %124, label %112

112:                                              ; preds = %63, %111
  %113 = phi i32 [ %107, %111 ], [ 0, %63 ]
  %114 = phi i32 [ %108, %111 ], [ 0, %63 ]
  %115 = sub nsw i32 %114, %113
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %119 = load ptr, ptr %118, align 8, !tbaa !312
  %120 = getelementptr inbounds %struct.GPUDrawObject, ptr %119, i64 0, i32 4
  %121 = load ptr, ptr %120, align 8, !tbaa !321
  %122 = shl nsw i32 %113, 1
  %123 = shl nuw nsw i32 %115, 1
  tail call void @GPU_buffer_draw_elements(ptr noundef %121, i32 noundef 1, i32 noundef %122, i32 noundef %123) #16
  br label %124

124:                                              ; preds = %111, %112, %117, %60
  tail call void @GPU_buffer_unbind() #16
  br label %125

125:                                              ; preds = %59, %124, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cdDM_drawLooseEdges(ptr noundef %0) #0 !PGOFuncName !323 {
  %2 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef %0) #16
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %35, label %8

8:                                                ; preds = %1
  tail call void @glBegin(i32 noundef 1) #16
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !128
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %8, %29
  %13 = phi i32 [ %30, %29 ], [ %10, %8 ]
  %14 = phi i32 [ %31, %29 ], [ 0, %8 ]
  %15 = phi ptr [ %32, %29 ], [ %5, %8 ]
  %16 = getelementptr inbounds %struct.MEdge, ptr %15, i64 0, i32 4
  %17 = load i16, ptr %16, align 2, !tbaa !146
  %18 = and i16 %17, 128
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %12
  %21 = load i32, ptr %15, align 4, !tbaa !142
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.MVert, ptr %3, i64 %22
  tail call void @glVertex3fv(ptr noundef %23) #16
  %24 = getelementptr inbounds %struct.MEdge, ptr %15, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !145
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.MVert, ptr %3, i64 %26
  tail call void @glVertex3fv(ptr noundef %27) #16
  %28 = load i32, ptr %9, align 4, !tbaa !128
  br label %29

29:                                               ; preds = %12, %20
  %30 = phi i32 [ %13, %12 ], [ %28, %20 ]
  %31 = add nuw nsw i32 %14, 1
  %32 = getelementptr inbounds %struct.MEdge, ptr %15, i64 1
  %33 = icmp slt i32 %31, %30
  br i1 %33, label %12, label %34, !llvm.loop !324

34:                                               ; preds = %29, %8
  tail call void @glEnd() #16
  br label %89

35:                                               ; preds = %1
  tail call void @GPU_edge_setup(ptr noundef nonnull %0) #16
  %36 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef nonnull %0) #16
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %88

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %40 = load i32, ptr %39, align 4, !tbaa !128
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %76

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  br label %44

44:                                               ; preds = %42, %68
  %45 = phi i32 [ %40, %42 ], [ %69, %68 ]
  %46 = phi i32 [ 1, %42 ], [ %54, %68 ]
  %47 = phi i32 [ 0, %42 ], [ %70, %68 ]
  %48 = phi i32 [ 0, %42 ], [ %71, %68 ]
  %49 = phi ptr [ %5, %42 ], [ %72, %68 ]
  %50 = getelementptr inbounds %struct.MEdge, ptr %49, i64 0, i32 4
  %51 = load i16, ptr %50, align 2, !tbaa !146
  %52 = lshr i16 %51, 7
  %53 = and i16 %52, 1
  %54 = zext nneg i16 %53 to i32
  %55 = icmp eq i32 %46, %54
  br i1 %55, label %68, label %56

56:                                               ; preds = %44
  %57 = icmp eq i32 %46, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %56
  %59 = sub nsw i32 %48, %47
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load ptr, ptr %43, align 8, !tbaa !312
  %63 = getelementptr inbounds %struct.GPUDrawObject, ptr %62, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !321
  %65 = shl nsw i32 %47, 1
  %66 = shl nuw nsw i32 %59, 1
  tail call void @GPU_buffer_draw_elements(ptr noundef %64, i32 noundef 1, i32 noundef %65, i32 noundef %66) #16
  %67 = load i32, ptr %39, align 4, !tbaa !128
  br label %68

68:                                               ; preds = %56, %58, %61, %44
  %69 = phi i32 [ %45, %44 ], [ %67, %61 ], [ %45, %58 ], [ %45, %56 ]
  %70 = phi i32 [ %47, %44 ], [ %48, %61 ], [ %48, %58 ], [ %48, %56 ]
  %71 = add nuw nsw i32 %48, 1
  %72 = getelementptr inbounds %struct.MEdge, ptr %49, i64 1
  %73 = icmp slt i32 %71, %69
  br i1 %73, label %44, label %74, !llvm.loop !325

74:                                               ; preds = %68
  %75 = icmp eq i16 %53, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %38, %74
  %77 = phi i32 [ %70, %74 ], [ 0, %38 ]
  %78 = phi i32 [ %71, %74 ], [ 0, %38 ]
  %79 = sub nsw i32 %78, %77
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %83 = load ptr, ptr %82, align 8, !tbaa !312
  %84 = getelementptr inbounds %struct.GPUDrawObject, ptr %83, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !321
  %86 = shl nsw i32 %77, 1
  %87 = shl nuw nsw i32 %79, 1
  tail call void @GPU_buffer_draw_elements(ptr noundef %85, i32 noundef 1, i32 noundef %86, i32 noundef %87) #16
  br label %88

88:                                               ; preds = %74, %76, %81, %35
  tail call void @GPU_buffer_unbind() #16
  br label %89

89:                                               ; preds = %88, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cdDM_drawMappedEdges(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !326 {
  %4 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = tail call ptr @DM_get_edge_data_layer(ptr noundef %0, i32 noundef 7) #16
  tail call void @glBegin(i32 noundef 1) #16
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !128
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
  %22 = load i32, ptr %16, align 4, !tbaa !119
  %23 = icmp eq i32 %22, -1
  %24 = select i1 %13, i1 %23, i1 false
  br i1 %24, label %39, label %25

25:                                               ; preds = %15, %20
  %26 = phi i32 [ %22, %20 ], [ %17, %15 ]
  %27 = phi ptr [ %21, %20 ], [ null, %15 ]
  br i1 %14, label %31, label %28

28:                                               ; preds = %25
  %29 = tail call i32 %1(ptr noundef %2, i32 noundef %26) #16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %28, %25
  %32 = load i32, ptr %18, align 4, !tbaa !142
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.MVert, ptr %5, i64 %33
  tail call void @glVertex3fv(ptr noundef %34) #16
  %35 = getelementptr inbounds %struct.MEdge, ptr %18, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !145
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.MVert, ptr %5, i64 %37
  tail call void @glVertex3fv(ptr noundef %38) #16
  br label %39

39:                                               ; preds = %28, %31, %20
  %40 = phi ptr [ %21, %20 ], [ %27, %31 ], [ %27, %28 ]
  %41 = add nuw nsw i32 %17, 1
  %42 = getelementptr inbounds %struct.MEdge, ptr %18, i64 1
  %43 = load i32, ptr %9, align 4, !tbaa !128
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %15, label %45, !llvm.loop !327

45:                                               ; preds = %39, %3
  tail call void @glEnd() #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cdDM_drawFacesSolid(ptr noundef %0, ptr noundef %1, i8 zeroext %2, ptr noundef %3) #0 !PGOFuncName !328 {
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = tail call ptr %11(ptr noundef %0, i32 noundef 8) #16
  %13 = load ptr, ptr %10, align 8, !tbaa !71
  %14 = tail call ptr %13(ptr noundef %0, i32 noundef 40) #16
  %15 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !292
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 7
  %20 = load i8, ptr %19, align 8, !tbaa !296
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !43
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %232, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %28 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %27, i32 noundef 8) #16
  %29 = load ptr, ptr %15, align 8, !tbaa !292
  tail call void @BKE_pbvh_draw(ptr noundef %29, ptr noundef %1, ptr noundef %28, ptr noundef %3, i8 noundef zeroext 0) #16
  tail call void @glShadeModel(i32 noundef 7424) #16
  br label %232

30:                                               ; preds = %18, %4
  %31 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef nonnull %0) #16
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %190, label %33

33:                                               ; preds = %30
  tail call void @glBegin(i32 noundef 7) #16
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %35 = load i32, ptr %34, align 8, !tbaa !43
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %189

37:                                               ; preds = %33
  %38 = icmp eq ptr %3, null
  br label %39

39:                                               ; preds = %37, %179
  %40 = phi ptr [ %9, %37 ], [ %186, %179 ]
  %41 = phi ptr [ %12, %37 ], [ %182, %179 ]
  %42 = phi ptr [ %14, %37 ], [ %184, %179 ]
  %43 = phi i32 [ 0, %37 ], [ %185, %179 ]
  %44 = phi i32 [ 1, %37 ], [ %83, %179 ]
  %45 = phi i32 [ -1, %37 ], [ %82, %179 ]
  %46 = phi i32 [ -1, %37 ], [ %81, %179 ]
  %47 = phi i32 [ 7, %37 ], [ %80, %179 ]
  %48 = getelementptr inbounds %struct.MFace, ptr %40, i64 0, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !160
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i32 4, i32 7
  %52 = getelementptr inbounds %struct.MFace, ptr %40, i64 0, i32 4
  %53 = load i16, ptr %52, align 4, !tbaa !163
  %54 = sext i16 %53 to i32
  %55 = add nsw i32 %54, 1
  %56 = icmp eq ptr %42, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %39
  %58 = getelementptr inbounds %struct.MFace, ptr %40, i64 0, i32 6
  %59 = load i8, ptr %58, align 1, !tbaa !164
  %60 = freeze i8 %59
  %61 = and i8 %60, 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %39, %57
  br label %64

64:                                               ; preds = %57, %63
  %65 = phi i32 [ 7425, %63 ], [ 7424, %57 ]
  %66 = icmp eq i32 %51, %47
  %67 = icmp eq i32 %65, %46
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = icmp eq i32 %55, %45
  %71 = select i1 %38, i1 true, i1 %70
  br i1 %71, label %79, label %72

72:                                               ; preds = %69
  call void @glEnd() #16
  br label %74

73:                                               ; preds = %64
  call void @glEnd() #16
  br i1 %38, label %76, label %74

74:                                               ; preds = %72, %73
  %75 = call i32 %3(i32 noundef %55, ptr noundef null) #16
  br label %76

76:                                               ; preds = %74, %73
  %77 = phi i32 [ %55, %74 ], [ %45, %73 ]
  %78 = phi i32 [ %75, %74 ], [ %44, %73 ]
  call void @glShadeModel(i32 noundef %65) #16
  call void @glBegin(i32 noundef %51) #16
  br label %79

79:                                               ; preds = %76, %69
  %80 = phi i32 [ %51, %76 ], [ %47, %69 ]
  %81 = phi i32 [ %65, %76 ], [ %46, %69 ]
  %82 = phi i32 [ %77, %76 ], [ %45, %69 ]
  %83 = phi i32 [ %78, %76 ], [ %44, %69 ]
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %179, label %85

85:                                               ; preds = %79
  br i1 %56, label %107, label %86

86:                                               ; preds = %85
  call void @glNormal3sv(ptr noundef nonnull %42) #16
  %87 = load i32, ptr %40, align 4, !tbaa !156
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.MVert, ptr %7, i64 %88
  call void @glVertex3fv(ptr noundef %89) #16
  %90 = getelementptr inbounds [4 x [3 x i16]], ptr %42, i64 0, i64 1
  call void @glNormal3sv(ptr noundef nonnull %90) #16
  %91 = getelementptr inbounds %struct.MFace, ptr %40, i64 0, i32 1
  %92 = load i32, ptr %91, align 4, !tbaa !158
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.MVert, ptr %7, i64 %93
  call void @glVertex3fv(ptr noundef %94) #16
  %95 = getelementptr inbounds [4 x [3 x i16]], ptr %42, i64 0, i64 2
  call void @glNormal3sv(ptr noundef nonnull %95) #16
  %96 = getelementptr inbounds %struct.MFace, ptr %40, i64 0, i32 2
  %97 = load i32, ptr %96, align 4, !tbaa !159
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.MVert, ptr %7, i64 %98
  call void @glVertex3fv(ptr noundef %99) #16
  %100 = load i32, ptr %48, align 4, !tbaa !160
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %179, label %102

102:                                              ; preds = %86
  %103 = getelementptr inbounds [4 x [3 x i16]], ptr %42, i64 0, i64 3
  call void @glNormal3sv(ptr noundef nonnull %103) #16
  %104 = load i32, ptr %48, align 4, !tbaa !160
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.MVert, ptr %7, i64 %105
  call void @glVertex3fv(ptr noundef %106) #16
  br label %179

107:                                              ; preds = %85
  %108 = icmp eq i32 %81, 7424
  br i1 %108, label %109, label %150

109:                                              ; preds = %107
  %110 = icmp eq ptr %41, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %109
  call void @glNormal3fv(ptr noundef nonnull %41) #16
  br label %133

112:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  %113 = load i32, ptr %48, align 4, !tbaa !160
  %114 = icmp eq i32 %113, 0
  %115 = load i32, ptr %40, align 4, !tbaa !156
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.MVert, ptr %7, i64 %116
  %118 = getelementptr inbounds %struct.MFace, ptr %40, i64 0, i32 1
  %119 = load i32, ptr %118, align 4, !tbaa !158
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.MVert, ptr %7, i64 %120
  %122 = getelementptr inbounds %struct.MFace, ptr %40, i64 0, i32 2
  %123 = load i32, ptr %122, align 4, !tbaa !159
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.MVert, ptr %7, i64 %124
  br i1 %114, label %130, label %126

126:                                              ; preds = %112
  %127 = zext i32 %113 to i64
  %128 = getelementptr inbounds %struct.MVert, ptr %7, i64 %127
  %129 = call float @normal_quad_v3(ptr noundef nonnull %5, ptr noundef %117, ptr noundef %121, ptr noundef %125, ptr noundef nonnull %128) #16
  br label %132

130:                                              ; preds = %112
  %131 = call float @normal_tri_v3(ptr noundef nonnull %5, ptr noundef %117, ptr noundef %121, ptr noundef %125) #16
  br label %132

132:                                              ; preds = %130, %126
  call void @glNormal3fv(ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  br label %133

133:                                              ; preds = %132, %111
  %134 = load i32, ptr %40, align 4, !tbaa !156
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.MVert, ptr %7, i64 %135
  call void @glVertex3fv(ptr noundef %136) #16
  %137 = getelementptr inbounds %struct.MFace, ptr %40, i64 0, i32 1
  %138 = load i32, ptr %137, align 4, !tbaa !158
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.MVert, ptr %7, i64 %139
  call void @glVertex3fv(ptr noundef %140) #16
  %141 = getelementptr inbounds %struct.MFace, ptr %40, i64 0, i32 2
  %142 = load i32, ptr %141, align 4, !tbaa !159
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.MVert, ptr %7, i64 %143
  call void @glVertex3fv(ptr noundef %144) #16
  %145 = load i32, ptr %48, align 4, !tbaa !160
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %179, label %147

147:                                              ; preds = %133
  %148 = zext i32 %145 to i64
  %149 = getelementptr inbounds %struct.MVert, ptr %7, i64 %148
  call void @glVertex3fv(ptr noundef nonnull %149) #16
  br label %179

150:                                              ; preds = %107
  %151 = load i32, ptr %40, align 4, !tbaa !156
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.MVert, ptr %7, i64 %152, i32 1
  call void @glNormal3sv(ptr noundef nonnull %153) #16
  %154 = load i32, ptr %40, align 4, !tbaa !156
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.MVert, ptr %7, i64 %155
  call void @glVertex3fv(ptr noundef %156) #16
  %157 = getelementptr inbounds %struct.MFace, ptr %40, i64 0, i32 1
  %158 = load i32, ptr %157, align 4, !tbaa !158
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.MVert, ptr %7, i64 %159, i32 1
  call void @glNormal3sv(ptr noundef nonnull %160) #16
  %161 = load i32, ptr %157, align 4, !tbaa !158
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.MVert, ptr %7, i64 %162
  call void @glVertex3fv(ptr noundef %163) #16
  %164 = getelementptr inbounds %struct.MFace, ptr %40, i64 0, i32 2
  %165 = load i32, ptr %164, align 4, !tbaa !159
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.MVert, ptr %7, i64 %166, i32 1
  call void @glNormal3sv(ptr noundef nonnull %167) #16
  %168 = load i32, ptr %164, align 4, !tbaa !159
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.MVert, ptr %7, i64 %169
  call void @glVertex3fv(ptr noundef %170) #16
  %171 = load i32, ptr %48, align 4, !tbaa !160
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %150
  %174 = zext i32 %171 to i64
  %175 = getelementptr inbounds %struct.MVert, ptr %7, i64 %174, i32 1
  call void @glNormal3sv(ptr noundef nonnull %175) #16
  %176 = load i32, ptr %48, align 4, !tbaa !160
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.MVert, ptr %7, i64 %177
  call void @glVertex3fv(ptr noundef %178) #16
  br label %179

179:                                              ; preds = %102, %86, %150, %173, %133, %147, %79
  %180 = icmp eq ptr %41, null
  %181 = getelementptr inbounds float, ptr %41, i64 3
  %182 = select i1 %180, ptr null, ptr %181
  %183 = getelementptr inbounds [4 x [3 x i16]], ptr %42, i64 1
  %184 = select i1 %56, ptr null, ptr %183
  %185 = add nuw nsw i32 %43, 1
  %186 = getelementptr inbounds %struct.MFace, ptr %40, i64 1
  %187 = load i32, ptr %34, align 8, !tbaa !43
  %188 = icmp slt i32 %185, %187
  br i1 %188, label %39, label %189, !llvm.loop !329

189:                                              ; preds = %179, %33
  call void @glEnd() #16
  br label %231

190:                                              ; preds = %30
  tail call void @GPU_vertex_setup(ptr noundef nonnull %0) #16
  tail call void @GPU_normal_setup(ptr noundef nonnull %0) #16
  %191 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef nonnull %0) #16
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %193, label %230

193:                                              ; preds = %190
  tail call void @glShadeModel(i32 noundef 7425) #16
  %194 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %195 = load ptr, ptr %194, align 8, !tbaa !312
  %196 = getelementptr inbounds %struct.GPUDrawObject, ptr %195, i64 0, i32 10
  %197 = load i32, ptr %196, align 8, !tbaa !330
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %199, label %230

199:                                              ; preds = %193
  %200 = icmp eq ptr %3, null
  br label %201

201:                                              ; preds = %199, %223
  %202 = phi i64 [ 0, %199 ], [ %224, %223 ]
  %203 = phi ptr [ %195, %199 ], [ %225, %223 ]
  br i1 %200, label %215, label %204

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct.GPUDrawObject, ptr %203, i64 0, i32 9
  %206 = load ptr, ptr %205, align 8, !tbaa !331
  %207 = getelementptr inbounds %struct.GPUBufferMaterial, ptr %206, i64 %202, i32 2
  %208 = load i16, ptr %207, align 4, !tbaa !332
  %209 = sext i16 %208 to i32
  %210 = add nsw i32 %209, 1
  %211 = tail call i32 %3(i32 noundef %210, ptr noundef null) #16
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %223, label %213

213:                                              ; preds = %204
  %214 = load ptr, ptr %194, align 8, !tbaa !312
  br label %215

215:                                              ; preds = %213, %201
  %216 = phi ptr [ %214, %213 ], [ %203, %201 ]
  %217 = getelementptr inbounds %struct.GPUDrawObject, ptr %216, i64 0, i32 9
  %218 = load ptr, ptr %217, align 8, !tbaa !331
  %219 = getelementptr inbounds %struct.GPUBufferMaterial, ptr %218, i64 %202
  %220 = load i32, ptr %219, align 4, !tbaa !334
  %221 = getelementptr inbounds %struct.GPUBufferMaterial, ptr %218, i64 %202, i32 1
  %222 = load i32, ptr %221, align 4, !tbaa !335
  tail call void @glDrawArrays(i32 noundef 4, i32 noundef %220, i32 noundef %222) #16
  br label %223

223:                                              ; preds = %204, %215
  %224 = add nuw nsw i64 %202, 1
  %225 = load ptr, ptr %194, align 8, !tbaa !312
  %226 = getelementptr inbounds %struct.GPUDrawObject, ptr %225, i64 0, i32 10
  %227 = load i32, ptr %226, align 8, !tbaa !330
  %228 = sext i32 %227 to i64
  %229 = icmp slt i64 %224, %228
  br i1 %229, label %201, label %230, !llvm.loop !336

230:                                              ; preds = %223, %193, %190
  tail call void @GPU_buffer_unbind() #16
  br label %231

231:                                              ; preds = %230, %189
  call void @glShadeModel(i32 noundef 7424) #16
  br label %232

232:                                              ; preds = %22, %26, %231
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cdDM_drawFacesTex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 !PGOFuncName !337 {
  tail call fastcc void @cdDM_drawFacesTex_common(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef %3, i32 noundef %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cdDM_drawFacesGLSL(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !338 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 91
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  tail call void %4(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cdDM_drawMappedFaces(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, ptr noundef %4, i32 noundef %5) #0 !PGOFuncName !339 {
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 8) #16
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %14 = load ptr, ptr %13, align 8, !tbaa !71
  %15 = tail call ptr %14(ptr noundef %0, i32 noundef 40) #16
  %16 = and i32 %5, 1
  %17 = load ptr, ptr %13, align 8, !tbaa !71
  %18 = tail call ptr %17(ptr noundef %0, i32 noundef 7) #16
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 54
  %20 = load ptr, ptr %19, align 8, !tbaa !187
  %21 = tail call ptr %20(ptr noundef %0, i32 noundef 7) #16
  %22 = icmp eq ptr %18, null
  %23 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 21) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %6
  %26 = tail call ptr @DM_get_tessface_data_layer(ptr noundef nonnull %0, i32 noundef 20) #16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = tail call ptr @DM_get_tessface_data_layer(ptr noundef nonnull %0, i32 noundef 6) #16
  br label %30

30:                                               ; preds = %6, %28, %25
  %31 = phi i32 [ 20, %25 ], [ 6, %28 ], [ 21, %6 ]
  %32 = phi ptr [ %26, %25 ], [ %29, %28 ], [ %23, %6 ]
  tail call fastcc void @cdDM_update_normals_from_pbvh(ptr noundef nonnull %0) #17
  %33 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef nonnull %0) #16
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !340
  %37 = and i32 %36, 16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %306, label %39

39:                                               ; preds = %35, %30
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %41 = load i32, ptr %40, align 8, !tbaa !43
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %403

43:                                               ; preds = %39
  %44 = and i32 %5, 2
  %45 = icmp ne i32 %44, 0
  %46 = icmp eq ptr %1, null
  %47 = icmp ne i32 %16, 0
  %48 = icmp ne ptr %32, null
  %49 = select i1 %47, i1 %48, i1 false
  br label %50

50:                                               ; preds = %43, %295
  %51 = phi i64 [ 0, %43 ], [ %301, %295 ]
  %52 = phi ptr [ %11, %43 ], [ %302, %295 ]
  %53 = phi ptr [ %12, %43 ], [ %298, %295 ]
  %54 = phi ptr [ %15, %43 ], [ %300, %295 ]
  %55 = icmp ne ptr %54, null
  %56 = select i1 %45, i1 true, i1 %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.MFace, ptr %52, i64 0, i32 6
  %59 = load i8, ptr %58, align 1, !tbaa !164
  %60 = and i8 %59, 1
  %61 = zext nneg i8 %60 to i32
  br label %62

62:                                               ; preds = %50, %57
  %63 = phi i32 [ %61, %57 ], [ 1, %50 ]
  %64 = trunc i64 %51 to i32
  br i1 %22, label %74, label %65

65:                                               ; preds = %62
  %66 = call fastcc i32 @DM_origindex_mface_mpoly(ptr noundef nonnull %18, ptr noundef %21, i32 noundef %64) #17
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.MFace, ptr %52, i64 0, i32 4
  %70 = load i16, ptr %69, align 4, !tbaa !163
  %71 = sext i16 %70 to i32
  %72 = add nsw i32 %71, 1
  %73 = call i32 %2(i32 noundef %72, ptr noundef null) #16
  br label %78

74:                                               ; preds = %62, %65
  %75 = phi i32 [ %66, %65 ], [ %64, %62 ]
  br i1 %46, label %81, label %76

76:                                               ; preds = %74
  %77 = call i32 %1(ptr noundef %4, i32 noundef %75) #16
  br label %78

78:                                               ; preds = %76, %68
  %79 = phi i32 [ %73, %68 ], [ %77, %76 ]
  switch i32 %79, label %81 [
    i32 0, label %295
    i32 3, label %80
  ]

80:                                               ; preds = %78
  call void @glEnable(i32 noundef 2882) #16
  call void @glPolygonStipple(ptr noundef nonnull @stipple_quarttone) #16
  br label %81

81:                                               ; preds = %78, %74, %80
  %82 = phi i1 [ true, %80 ], [ false, %74 ], [ false, %78 ]
  %83 = shl i64 %51, 2
  %84 = and i64 %83, 4294967292
  %85 = getelementptr inbounds %struct.MCol, ptr %32, i64 %84
  %86 = select i1 %49, ptr %85, ptr null
  call void @glShadeModel(i32 noundef 7425) #16
  %87 = getelementptr inbounds %struct.MFace, ptr %52, i64 0, i32 3
  %88 = load i32, ptr %87, align 4, !tbaa !160
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, i32 4, i32 7
  call void @glBegin(i32 noundef %90) #16
  br i1 %55, label %91, label %144

91:                                               ; preds = %81
  %92 = icmp eq ptr %86, null
  br i1 %92, label %109, label %93

93:                                               ; preds = %91
  %94 = getelementptr inbounds i8, ptr %86, i64 3
  %95 = load i8, ptr %94, align 1, !tbaa !204
  %96 = getelementptr inbounds i8, ptr %86, i64 2
  %97 = load i8, ptr %96, align 1, !tbaa !204
  %98 = getelementptr inbounds i8, ptr %86, i64 1
  %99 = load i8, ptr %98, align 1, !tbaa !204
  call void @glColor3ub(i8 noundef zeroext %95, i8 noundef zeroext %97, i8 noundef zeroext %99) #16
  call void @glNormal3sv(ptr noundef nonnull %54) #16
  %100 = load i32, ptr %52, align 4, !tbaa !156
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.MVert, ptr %9, i64 %101
  call void @glVertex3fv(ptr noundef %102) #16
  %103 = getelementptr inbounds i8, ptr %86, i64 7
  %104 = load i8, ptr %103, align 1, !tbaa !204
  %105 = getelementptr inbounds i8, ptr %86, i64 6
  %106 = load i8, ptr %105, align 1, !tbaa !204
  %107 = getelementptr inbounds i8, ptr %86, i64 5
  %108 = load i8, ptr %107, align 1, !tbaa !204
  call void @glColor3ub(i8 noundef zeroext %104, i8 noundef zeroext %106, i8 noundef zeroext %108) #16
  br label %113

109:                                              ; preds = %91
  call void @glNormal3sv(ptr noundef nonnull %54) #16
  %110 = load i32, ptr %52, align 4, !tbaa !156
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.MVert, ptr %9, i64 %111
  call void @glVertex3fv(ptr noundef %112) #16
  br label %113

113:                                              ; preds = %109, %93
  %114 = getelementptr inbounds [4 x [3 x i16]], ptr %54, i64 0, i64 1
  call void @glNormal3sv(ptr noundef nonnull %114) #16
  %115 = getelementptr inbounds %struct.MFace, ptr %52, i64 0, i32 1
  %116 = load i32, ptr %115, align 4, !tbaa !158
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.MVert, ptr %9, i64 %117
  call void @glVertex3fv(ptr noundef %118) #16
  br i1 %92, label %126, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds i8, ptr %86, i64 11
  %121 = load i8, ptr %120, align 1, !tbaa !204
  %122 = getelementptr inbounds i8, ptr %86, i64 10
  %123 = load i8, ptr %122, align 1, !tbaa !204
  %124 = getelementptr inbounds i8, ptr %86, i64 9
  %125 = load i8, ptr %124, align 1, !tbaa !204
  call void @glColor3ub(i8 noundef zeroext %121, i8 noundef zeroext %123, i8 noundef zeroext %125) #16
  br label %126

126:                                              ; preds = %119, %113
  %127 = getelementptr inbounds [4 x [3 x i16]], ptr %54, i64 0, i64 2
  call void @glNormal3sv(ptr noundef nonnull %127) #16
  %128 = getelementptr inbounds %struct.MFace, ptr %52, i64 0, i32 2
  %129 = load i32, ptr %128, align 4, !tbaa !159
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.MVert, ptr %9, i64 %130
  call void @glVertex3fv(ptr noundef %131) #16
  %132 = load i32, ptr %87, align 4, !tbaa !160
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %293, label %134

134:                                              ; preds = %126
  br i1 %92, label %142, label %135

135:                                              ; preds = %134
  %136 = getelementptr inbounds i8, ptr %86, i64 15
  %137 = load i8, ptr %136, align 1, !tbaa !204
  %138 = getelementptr inbounds i8, ptr %86, i64 14
  %139 = load i8, ptr %138, align 1, !tbaa !204
  %140 = getelementptr inbounds i8, ptr %86, i64 13
  %141 = load i8, ptr %140, align 1, !tbaa !204
  call void @glColor3ub(i8 noundef zeroext %137, i8 noundef zeroext %139, i8 noundef zeroext %141) #16
  br label %142

142:                                              ; preds = %135, %134
  %143 = getelementptr inbounds [4 x [3 x i16]], ptr %54, i64 0, i64 3
  call void @glNormal3sv(ptr noundef nonnull %143) #16
  br label %287

144:                                              ; preds = %81
  %145 = icmp eq i32 %63, 0
  br i1 %145, label %146, label %221

146:                                              ; preds = %144
  %147 = icmp eq ptr %53, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %146
  call void @glNormal3fv(ptr noundef nonnull %53) #16
  br label %170

149:                                              ; preds = %146
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  %150 = load i32, ptr %87, align 4, !tbaa !160
  %151 = icmp eq i32 %150, 0
  %152 = load i32, ptr %52, align 4, !tbaa !156
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.MVert, ptr %9, i64 %153
  %155 = getelementptr inbounds %struct.MFace, ptr %52, i64 0, i32 1
  %156 = load i32, ptr %155, align 4, !tbaa !158
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.MVert, ptr %9, i64 %157
  %159 = getelementptr inbounds %struct.MFace, ptr %52, i64 0, i32 2
  %160 = load i32, ptr %159, align 4, !tbaa !159
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.MVert, ptr %9, i64 %161
  br i1 %151, label %167, label %163

163:                                              ; preds = %149
  %164 = zext i32 %150 to i64
  %165 = getelementptr inbounds %struct.MVert, ptr %9, i64 %164
  %166 = call float @normal_quad_v3(ptr noundef nonnull %7, ptr noundef %154, ptr noundef %158, ptr noundef %162, ptr noundef nonnull %165) #16
  br label %169

167:                                              ; preds = %149
  %168 = call float @normal_tri_v3(ptr noundef nonnull %7, ptr noundef %154, ptr noundef %158, ptr noundef %162) #16
  br label %169

169:                                              ; preds = %167, %163
  call void @glNormal3fv(ptr noundef nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  br label %170

170:                                              ; preds = %169, %148
  %171 = icmp eq ptr %86, null
  br i1 %171, label %172, label %180

172:                                              ; preds = %170
  %173 = load i32, ptr %52, align 4, !tbaa !156
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.MVert, ptr %9, i64 %174
  call void @glVertex3fv(ptr noundef %175) #16
  %176 = getelementptr inbounds %struct.MFace, ptr %52, i64 0, i32 1
  %177 = load i32, ptr %176, align 4, !tbaa !158
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.MVert, ptr %9, i64 %178
  call void @glVertex3fv(ptr noundef %179) #16
  br label %206

180:                                              ; preds = %170
  %181 = getelementptr inbounds i8, ptr %86, i64 3
  %182 = load i8, ptr %181, align 1, !tbaa !204
  %183 = getelementptr inbounds i8, ptr %86, i64 2
  %184 = load i8, ptr %183, align 1, !tbaa !204
  %185 = getelementptr inbounds i8, ptr %86, i64 1
  %186 = load i8, ptr %185, align 1, !tbaa !204
  call void @glColor3ub(i8 noundef zeroext %182, i8 noundef zeroext %184, i8 noundef zeroext %186) #16
  %187 = load i32, ptr %52, align 4, !tbaa !156
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.MVert, ptr %9, i64 %188
  call void @glVertex3fv(ptr noundef %189) #16
  %190 = getelementptr inbounds i8, ptr %86, i64 7
  %191 = load i8, ptr %190, align 1, !tbaa !204
  %192 = getelementptr inbounds i8, ptr %86, i64 6
  %193 = load i8, ptr %192, align 1, !tbaa !204
  %194 = getelementptr inbounds i8, ptr %86, i64 5
  %195 = load i8, ptr %194, align 1, !tbaa !204
  call void @glColor3ub(i8 noundef zeroext %191, i8 noundef zeroext %193, i8 noundef zeroext %195) #16
  %196 = getelementptr inbounds %struct.MFace, ptr %52, i64 0, i32 1
  %197 = load i32, ptr %196, align 4, !tbaa !158
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.MVert, ptr %9, i64 %198
  call void @glVertex3fv(ptr noundef %199) #16
  %200 = getelementptr inbounds i8, ptr %86, i64 11
  %201 = load i8, ptr %200, align 1, !tbaa !204
  %202 = getelementptr inbounds i8, ptr %86, i64 10
  %203 = load i8, ptr %202, align 1, !tbaa !204
  %204 = getelementptr inbounds i8, ptr %86, i64 9
  %205 = load i8, ptr %204, align 1, !tbaa !204
  call void @glColor3ub(i8 noundef zeroext %201, i8 noundef zeroext %203, i8 noundef zeroext %205) #16
  br label %206

206:                                              ; preds = %172, %180
  %207 = getelementptr inbounds %struct.MFace, ptr %52, i64 0, i32 2
  %208 = load i32, ptr %207, align 4, !tbaa !159
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds %struct.MVert, ptr %9, i64 %209
  call void @glVertex3fv(ptr noundef %210) #16
  %211 = load i32, ptr %87, align 4, !tbaa !160
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %293, label %213

213:                                              ; preds = %206
  br i1 %171, label %289, label %214

214:                                              ; preds = %213
  %215 = getelementptr inbounds i8, ptr %86, i64 15
  %216 = load i8, ptr %215, align 1, !tbaa !204
  %217 = getelementptr inbounds i8, ptr %86, i64 14
  %218 = load i8, ptr %217, align 1, !tbaa !204
  %219 = getelementptr inbounds i8, ptr %86, i64 13
  %220 = load i8, ptr %219, align 1, !tbaa !204
  call void @glColor3ub(i8 noundef zeroext %216, i8 noundef zeroext %218, i8 noundef zeroext %220) #16
  br label %287

221:                                              ; preds = %144
  %222 = icmp eq ptr %86, null
  br i1 %222, label %242, label %223

223:                                              ; preds = %221
  %224 = getelementptr inbounds i8, ptr %86, i64 3
  %225 = load i8, ptr %224, align 1, !tbaa !204
  %226 = getelementptr inbounds i8, ptr %86, i64 2
  %227 = load i8, ptr %226, align 1, !tbaa !204
  %228 = getelementptr inbounds i8, ptr %86, i64 1
  %229 = load i8, ptr %228, align 1, !tbaa !204
  call void @glColor3ub(i8 noundef zeroext %225, i8 noundef zeroext %227, i8 noundef zeroext %229) #16
  %230 = load i32, ptr %52, align 4, !tbaa !156
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.MVert, ptr %9, i64 %231, i32 1
  call void @glNormal3sv(ptr noundef nonnull %232) #16
  %233 = load i32, ptr %52, align 4, !tbaa !156
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds %struct.MVert, ptr %9, i64 %234
  call void @glVertex3fv(ptr noundef %235) #16
  %236 = getelementptr inbounds i8, ptr %86, i64 7
  %237 = load i8, ptr %236, align 1, !tbaa !204
  %238 = getelementptr inbounds i8, ptr %86, i64 6
  %239 = load i8, ptr %238, align 1, !tbaa !204
  %240 = getelementptr inbounds i8, ptr %86, i64 5
  %241 = load i8, ptr %240, align 1, !tbaa !204
  call void @glColor3ub(i8 noundef zeroext %237, i8 noundef zeroext %239, i8 noundef zeroext %241) #16
  br label %249

242:                                              ; preds = %221
  %243 = load i32, ptr %52, align 4, !tbaa !156
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds %struct.MVert, ptr %9, i64 %244, i32 1
  call void @glNormal3sv(ptr noundef nonnull %245) #16
  %246 = load i32, ptr %52, align 4, !tbaa !156
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds %struct.MVert, ptr %9, i64 %247
  call void @glVertex3fv(ptr noundef %248) #16
  br label %249

249:                                              ; preds = %242, %223
  %250 = getelementptr inbounds %struct.MFace, ptr %52, i64 0, i32 1
  %251 = load i32, ptr %250, align 4, !tbaa !158
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds %struct.MVert, ptr %9, i64 %252, i32 1
  call void @glNormal3sv(ptr noundef nonnull %253) #16
  %254 = load i32, ptr %250, align 4, !tbaa !158
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds %struct.MVert, ptr %9, i64 %255
  call void @glVertex3fv(ptr noundef %256) #16
  br i1 %222, label %264, label %257

257:                                              ; preds = %249
  %258 = getelementptr inbounds i8, ptr %86, i64 11
  %259 = load i8, ptr %258, align 1, !tbaa !204
  %260 = getelementptr inbounds i8, ptr %86, i64 10
  %261 = load i8, ptr %260, align 1, !tbaa !204
  %262 = getelementptr inbounds i8, ptr %86, i64 9
  %263 = load i8, ptr %262, align 1, !tbaa !204
  call void @glColor3ub(i8 noundef zeroext %259, i8 noundef zeroext %261, i8 noundef zeroext %263) #16
  br label %264

264:                                              ; preds = %257, %249
  %265 = getelementptr inbounds %struct.MFace, ptr %52, i64 0, i32 2
  %266 = load i32, ptr %265, align 4, !tbaa !159
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds %struct.MVert, ptr %9, i64 %267, i32 1
  call void @glNormal3sv(ptr noundef nonnull %268) #16
  %269 = load i32, ptr %265, align 4, !tbaa !159
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds %struct.MVert, ptr %9, i64 %270
  call void @glVertex3fv(ptr noundef %271) #16
  %272 = load i32, ptr %87, align 4, !tbaa !160
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %293, label %274

274:                                              ; preds = %264
  br i1 %222, label %283, label %275

275:                                              ; preds = %274
  %276 = getelementptr inbounds i8, ptr %86, i64 15
  %277 = load i8, ptr %276, align 1, !tbaa !204
  %278 = getelementptr inbounds i8, ptr %86, i64 14
  %279 = load i8, ptr %278, align 1, !tbaa !204
  %280 = getelementptr inbounds i8, ptr %86, i64 13
  %281 = load i8, ptr %280, align 1, !tbaa !204
  call void @glColor3ub(i8 noundef zeroext %277, i8 noundef zeroext %279, i8 noundef zeroext %281) #16
  %282 = load i32, ptr %87, align 4, !tbaa !160
  br label %283

283:                                              ; preds = %275, %274
  %284 = phi i32 [ %282, %275 ], [ %272, %274 ]
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds %struct.MVert, ptr %9, i64 %285, i32 1
  call void @glNormal3sv(ptr noundef nonnull %286) #16
  br label %287

287:                                              ; preds = %283, %142, %214
  %288 = load i32, ptr %87, align 4, !tbaa !160
  br label %289

289:                                              ; preds = %287, %213
  %290 = phi i32 [ %211, %213 ], [ %288, %287 ]
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds %struct.MVert, ptr %9, i64 %291
  call void @glVertex3fv(ptr noundef %292) #16
  br label %293

293:                                              ; preds = %289, %206, %264, %126
  call void @glEnd() #16
  br i1 %82, label %294, label %295

294:                                              ; preds = %293
  call void @glDisable(i32 noundef 2882) #16
  br label %295

295:                                              ; preds = %78, %293, %294
  %296 = icmp eq ptr %53, null
  %297 = getelementptr inbounds float, ptr %53, i64 3
  %298 = select i1 %296, ptr null, ptr %297
  %299 = getelementptr inbounds [4 x [3 x i16]], ptr %54, i64 1
  %300 = select i1 %55, ptr %299, ptr null
  %301 = add nuw nsw i64 %51, 1
  %302 = getelementptr inbounds %struct.MFace, ptr %52, i64 1
  %303 = load i32, ptr %40, align 8, !tbaa !43
  %304 = sext i32 %303 to i64
  %305 = icmp slt i64 %301, %304
  br i1 %305, label %50, label %403, !llvm.loop !342

306:                                              ; preds = %35
  tail call void @GPU_vertex_setup(ptr noundef nonnull %0) #16
  tail call void @GPU_normal_setup(ptr noundef nonnull %0) #16
  %307 = icmp ne i32 %16, 0
  %308 = icmp ne ptr %32, null
  %309 = select i1 %307, i1 %308, i1 false
  br i1 %309, label %310, label %311

310:                                              ; preds = %306
  tail call void @GPU_color_setup(ptr noundef nonnull %0, i32 noundef %31) #16
  br label %311

311:                                              ; preds = %310, %306
  %312 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef nonnull %0) #16
  %313 = icmp eq i8 %312, 0
  br i1 %313, label %314, label %402

314:                                              ; preds = %311
  %315 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %316 = load ptr, ptr %315, align 8, !tbaa !312
  %317 = getelementptr inbounds %struct.GPUDrawObject, ptr %316, i64 0, i32 11
  %318 = load i32, ptr %317, align 4, !tbaa !313
  %319 = sdiv i32 %318, 3
  tail call void @glShadeModel(i32 noundef 7425) #16
  %320 = icmp eq ptr %1, null
  br i1 %320, label %321, label %323

321:                                              ; preds = %314
  %322 = mul nsw i32 %319, 3
  tail call void @glDrawArrays(i32 noundef 4, i32 noundef 0, i32 noundef %322) #16
  br label %401

323:                                              ; preds = %314
  %324 = icmp sgt i32 %318, 2
  br i1 %324, label %325, label %401

325:                                              ; preds = %323
  %326 = load ptr, ptr %315, align 8, !tbaa !312
  %327 = getelementptr inbounds %struct.GPUDrawObject, ptr %326, i64 0, i32 6
  %328 = load ptr, ptr %327, align 8, !tbaa !343
  %329 = load i32, ptr %328, align 4, !tbaa !119
  %330 = add nsw i32 %319, -1
  %331 = icmp eq ptr %3, null
  %332 = zext i32 %330 to i64
  %333 = zext nneg i32 %319 to i64
  br label %334

334:                                              ; preds = %325, %397
  %335 = phi i64 [ 0, %325 ], [ %399, %397 ]
  %336 = phi i32 [ %329, %325 ], [ %348, %397 ]
  %337 = phi i32 [ 0, %325 ], [ %398, %397 ]
  %338 = sext i32 %336 to i64
  %339 = icmp eq i64 %335, %332
  br i1 %339, label %347, label %340

340:                                              ; preds = %334
  %341 = load ptr, ptr %315, align 8, !tbaa !312
  %342 = getelementptr inbounds %struct.GPUDrawObject, ptr %341, i64 0, i32 6
  %343 = load ptr, ptr %342, align 8, !tbaa !343
  %344 = getelementptr i32, ptr %343, i64 %335
  %345 = getelementptr i32, ptr %344, i64 1
  %346 = load i32, ptr %345, align 4, !tbaa !119
  br label %347

347:                                              ; preds = %340, %334
  %348 = phi i32 [ %346, %340 ], [ %336, %334 ]
  br i1 %22, label %351, label %349

349:                                              ; preds = %347
  %350 = tail call fastcc i32 @DM_origindex_mface_mpoly(ptr noundef nonnull %18, ptr noundef %21, i32 noundef %336) #17
  br label %351

351:                                              ; preds = %347, %349
  %352 = phi i32 [ %350, %349 ], [ %336, %347 ]
  %353 = icmp eq i32 %352, -1
  br i1 %353, label %354, label %360

354:                                              ; preds = %351
  %355 = getelementptr inbounds %struct.MFace, ptr %11, i64 %338, i32 4
  %356 = load i16, ptr %355, align 4, !tbaa !163
  %357 = sext i16 %356 to i32
  %358 = add nsw i32 %357, 1
  %359 = tail call i32 %2(i32 noundef %358, ptr noundef null) #16
  br label %362

360:                                              ; preds = %351
  %361 = tail call i32 %1(ptr noundef %4, i32 noundef %352) #16
  br label %362

362:                                              ; preds = %360, %354
  %363 = phi i32 [ %359, %354 ], [ %361, %360 ]
  %364 = icmp eq i32 %363, 3
  br i1 %364, label %365, label %366

365:                                              ; preds = %362
  tail call void @glEnable(i32 noundef 2882) #16
  tail call void @glPolygonStipple(ptr noundef nonnull @stipple_quarttone) #16
  br label %369

366:                                              ; preds = %362
  %367 = icmp eq i32 %363, 0
  %368 = or i1 %339, %367
  br label %369

369:                                              ; preds = %366, %365
  %370 = phi i1 [ true, %365 ], [ %368, %366 ]
  %371 = getelementptr inbounds %struct.MFace, ptr %11, i64 %338, i32 4
  %372 = load i16, ptr %371, align 4, !tbaa !163
  %373 = sext i32 %348 to i64
  %374 = getelementptr inbounds %struct.MFace, ptr %11, i64 %373, i32 4
  %375 = load i16, ptr %374, align 4, !tbaa !163
  %376 = icmp ne i16 %372, %375
  %377 = or i1 %370, %376
  %378 = or i1 %331, %377
  br i1 %378, label %382, label %379

379:                                              ; preds = %369
  %380 = tail call i32 %3(ptr noundef %4, i32 noundef %336, i32 noundef %348) #16
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %383, label %397

382:                                              ; preds = %369
  br i1 %377, label %383, label %397

383:                                              ; preds = %379, %382
  %384 = trunc i64 %335 to i32
  %385 = sub nsw i32 %384, %337
  %386 = icmp ne i32 %363, 0
  %387 = zext i1 %386 to i32
  %388 = add nsw i32 %385, %387
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %393, label %390

390:                                              ; preds = %383
  %391 = mul nsw i32 %388, 3
  %392 = mul nsw i32 %337, 3
  tail call void @glDrawArrays(i32 noundef 4, i32 noundef %392, i32 noundef %391) #16
  br label %393

393:                                              ; preds = %390, %383
  %394 = trunc i64 %335 to i32
  %395 = add i32 %394, 1
  br i1 %364, label %396, label %397

396:                                              ; preds = %393
  tail call void @glDisable(i32 noundef 2882) #16
  br label %397

397:                                              ; preds = %379, %393, %396, %382
  %398 = phi i32 [ %337, %382 ], [ %395, %396 ], [ %395, %393 ], [ %337, %379 ]
  %399 = add nuw nsw i64 %335, 1
  %400 = icmp eq i64 %399, %333
  br i1 %400, label %401, label %334, !llvm.loop !344

401:                                              ; preds = %397, %323, %321
  tail call void @glShadeModel(i32 noundef 7424) #16
  br label %402

402:                                              ; preds = %401, %311
  tail call void @GPU_buffer_unbind() #16
  br label %403

403:                                              ; preds = %295, %39, %402
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cdDM_drawMappedFacesTex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 !PGOFuncName !345 {
  tail call fastcc void @cdDM_drawFacesTex_common(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cdDM_drawMappedFacesGLSL(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !346 {
  %5 = alloca %struct.GPUVertexAttribs, align 4
  %6 = alloca %struct.DMVertexAttribs, align 8
  %7 = alloca [3 x float], align 4
  %8 = alloca [32 x %struct.GPUAttrib], align 16
  %9 = alloca [4 x i8], align 4
  %10 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 2564, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %6) #18
  %11 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  %17 = tail call ptr %16(ptr noundef %0, i32 noundef 8) #16
  %18 = load ptr, ptr %15, align 8, !tbaa !71
  %19 = tail call ptr %18(ptr noundef %0, i32 noundef 40) #16
  %20 = load ptr, ptr %15, align 8, !tbaa !71
  %21 = tail call ptr %20(ptr noundef %0, i32 noundef 7) #16
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 54
  %23 = load ptr, ptr %22, align 8, !tbaa !187
  %24 = tail call ptr %23(ptr noundef %0, i32 noundef 7) #16
  %25 = icmp eq ptr %21, null
  %26 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !292
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 7
  %31 = load i8, ptr %30, align 8, !tbaa !296
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @BKE_pbvh_type(ptr noundef nonnull %27) #16
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %38 = load i32, ptr %37, align 8, !tbaa !43
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %664, label %40

40:                                               ; preds = %36
  %41 = call i32 %1(i32 noundef 1, ptr noundef nonnull %5) #16
  %42 = load ptr, ptr %26, align 8, !tbaa !292
  call void @BKE_pbvh_draw(ptr noundef %42, ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef zeroext 0) #16
  br label %664

43:                                               ; preds = %33, %29, %4
  tail call fastcc void @cdDM_update_normals_from_pbvh(ptr noundef nonnull %0) #17
  tail call void @glShadeModel(i32 noundef 7425) #16
  %44 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef nonnull %0) #16
  %45 = icmp ne i8 %44, 0
  %46 = icmp ne ptr %2, null
  %47 = or i1 %46, %45
  br i1 %47, label %48, label %149

48:                                               ; preds = %43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %6, i8 0, i64 376, i1 false)
  tail call void @glBegin(i32 noundef 7) #16
  %49 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %50 = load i32, ptr %49, align 8, !tbaa !43
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %148

52:                                               ; preds = %48
  %53 = icmp eq ptr %19, null
  %54 = icmp eq ptr %17, null
  br label %55

55:                                               ; preds = %52, %142
  %56 = phi i64 [ 0, %52 ], [ %143, %142 ]
  %57 = phi ptr [ %14, %52 ], [ %144, %142 ]
  %58 = phi i32 [ -1, %52 ], [ %81, %142 ]
  %59 = phi i8 [ 0, %52 ], [ %80, %142 ]
  br i1 %53, label %60, label %65

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.MFace, ptr %57, i64 0, i32 6
  %62 = load i8, ptr %61, align 1, !tbaa !164
  %63 = and i8 %62, 1
  %64 = icmp ne i8 %63, 0
  br label %65

65:                                               ; preds = %60, %55
  %66 = phi i1 [ true, %55 ], [ %64, %60 ]
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.MFace, ptr %57, i64 0, i32 4
  %69 = load i16, ptr %68, align 4, !tbaa !163
  %70 = sext i16 %69 to i32
  %71 = add nsw i32 %70, 1
  %72 = icmp eq i32 %71, %58
  br i1 %72, label %79, label %73

73:                                               ; preds = %65
  call void @glEnd() #16
  %74 = call i32 %1(i32 noundef %71, ptr noundef nonnull %5) #16
  %75 = trunc i32 %74 to i8
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  call void @DM_vertex_attributes_from_gpu(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  br label %78

78:                                               ; preds = %77, %73
  call void @glBegin(i32 noundef 7) #16
  br label %79

79:                                               ; preds = %78, %65
  %80 = phi i8 [ %75, %78 ], [ %59, %65 ]
  %81 = phi i32 [ %71, %78 ], [ %58, %65 ]
  %82 = icmp eq i8 %80, 0
  br i1 %82, label %142, label %83

83:                                               ; preds = %79
  br i1 %46, label %84, label %93

84:                                               ; preds = %83
  %85 = trunc i64 %56 to i32
  br i1 %25, label %89, label %86

86:                                               ; preds = %84
  %87 = call fastcc i32 @DM_origindex_mface_mpoly(ptr noundef nonnull %21, ptr noundef %24, i32 noundef %85) #17
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %93, label %89

89:                                               ; preds = %84, %86
  %90 = phi i32 [ %87, %86 ], [ %85, %84 ]
  %91 = call i32 %2(ptr noundef %3, i32 noundef %90) #16
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %142, label %93

93:                                               ; preds = %83, %89, %86
  br i1 %66, label %119, label %94

94:                                               ; preds = %93
  br i1 %54, label %97, label %95

95:                                               ; preds = %94
  %96 = getelementptr inbounds [3 x float], ptr %17, i64 %56
  call void @glNormal3fv(ptr noundef nonnull %96) #16
  br label %125

97:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  %98 = getelementptr inbounds %struct.MFace, ptr %57, i64 0, i32 3
  %99 = load i32, ptr %98, align 4, !tbaa !160
  %100 = icmp eq i32 %99, 0
  %101 = load i32, ptr %57, align 4, !tbaa !156
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.MVert, ptr %12, i64 %102
  %104 = getelementptr inbounds %struct.MFace, ptr %57, i64 0, i32 1
  %105 = load i32, ptr %104, align 4, !tbaa !158
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.MVert, ptr %12, i64 %106
  %108 = getelementptr inbounds %struct.MFace, ptr %57, i64 0, i32 2
  %109 = load i32, ptr %108, align 4, !tbaa !159
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.MVert, ptr %12, i64 %110
  br i1 %100, label %116, label %112

112:                                              ; preds = %97
  %113 = zext i32 %99 to i64
  %114 = getelementptr inbounds %struct.MVert, ptr %12, i64 %113
  %115 = call float @normal_quad_v3(ptr noundef nonnull %7, ptr noundef %103, ptr noundef %107, ptr noundef %111, ptr noundef nonnull %114) #16
  br label %118

116:                                              ; preds = %97
  %117 = call float @normal_tri_v3(ptr noundef nonnull %7, ptr noundef %103, ptr noundef %107, ptr noundef %111) #16
  br label %118

118:                                              ; preds = %116, %112
  call void @glNormal3fv(ptr noundef nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  br label %125

119:                                              ; preds = %93
  br i1 %53, label %125, label %120

120:                                              ; preds = %119
  %121 = getelementptr inbounds [4 x [3 x i16]], ptr %19, i64 %56
  %122 = getelementptr inbounds [4 x [3 x i16]], ptr %19, i64 %56, i64 1
  %123 = getelementptr inbounds [4 x [3 x i16]], ptr %19, i64 %56, i64 2
  %124 = getelementptr inbounds [4 x [3 x i16]], ptr %19, i64 %56, i64 3
  br label %125

125:                                              ; preds = %119, %120, %95, %118
  %126 = phi ptr [ %121, %120 ], [ null, %119 ], [ null, %95 ], [ null, %118 ]
  %127 = phi ptr [ %122, %120 ], [ null, %119 ], [ null, %95 ], [ null, %118 ]
  %128 = phi ptr [ %123, %120 ], [ null, %119 ], [ null, %95 ], [ null, %118 ]
  %129 = phi ptr [ %124, %120 ], [ null, %119 ], [ null, %95 ], [ null, %118 ]
  %130 = load i32, ptr %57, align 4, !tbaa !156
  %131 = trunc i64 %56 to i32
  call fastcc void @cddm_draw_attrib_vertex(ptr noundef nonnull %6, ptr noundef %12, i32 noundef %131, i32 noundef %130, i32 noundef 0, ptr noundef %126, i8 noundef zeroext %67) #17
  %132 = getelementptr inbounds %struct.MFace, ptr %57, i64 0, i32 1
  %133 = load i32, ptr %132, align 4, !tbaa !158
  call fastcc void @cddm_draw_attrib_vertex(ptr noundef nonnull %6, ptr noundef %12, i32 noundef %131, i32 noundef %133, i32 noundef 1, ptr noundef %127, i8 noundef zeroext %67) #17
  %134 = getelementptr inbounds %struct.MFace, ptr %57, i64 0, i32 2
  %135 = load i32, ptr %134, align 4, !tbaa !159
  call fastcc void @cddm_draw_attrib_vertex(ptr noundef nonnull %6, ptr noundef %12, i32 noundef %131, i32 noundef %135, i32 noundef 2, ptr noundef %128, i8 noundef zeroext %67) #17
  %136 = getelementptr inbounds %struct.MFace, ptr %57, i64 0, i32 3
  %137 = load i32, ptr %136, align 4, !tbaa !160
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %125
  call fastcc void @cddm_draw_attrib_vertex(ptr noundef nonnull %6, ptr noundef %12, i32 noundef %131, i32 noundef %137, i32 noundef 3, ptr noundef %129, i8 noundef zeroext %67) #17
  br label %142

140:                                              ; preds = %125
  %141 = load i32, ptr %134, align 4, !tbaa !159
  call fastcc void @cddm_draw_attrib_vertex(ptr noundef nonnull %6, ptr noundef %12, i32 noundef %131, i32 noundef %141, i32 noundef 2, ptr noundef %128, i8 noundef zeroext %67) #17
  br label %142

142:                                              ; preds = %139, %140, %89, %79
  %143 = add nuw nsw i64 %56, 1
  %144 = getelementptr inbounds %struct.MFace, ptr %57, i64 1
  %145 = load i32, ptr %49, align 8, !tbaa !43
  %146 = sext i32 %145 to i64
  %147 = icmp slt i64 %143, %146
  br i1 %147, label %55, label %148, !llvm.loop !347

148:                                              ; preds = %142, %48
  call void @glEnd() #16
  br label %663

149:                                              ; preds = %43
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %8) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %6, i8 0, i64 376, i1 false)
  tail call void @GPU_vertex_setup(ptr noundef nonnull %0) #16
  tail call void @GPU_normal_setup(ptr noundef nonnull %0) #16
  %150 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef nonnull %0) #16
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %658

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %154 = load ptr, ptr %153, align 8, !tbaa !312
  %155 = getelementptr inbounds %struct.GPUDrawObject, ptr %154, i64 0, i32 11
  %156 = load i32, ptr %155, align 4, !tbaa !313
  %157 = icmp sgt i32 %156, 2
  br i1 %157, label %158, label %656

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 7
  %160 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 3
  %161 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 3, i32 2
  %162 = getelementptr inbounds %struct.GPUAttrib, ptr %8, i64 0, i32 1
  %163 = getelementptr inbounds %struct.GPUAttrib, ptr %8, i64 0, i32 2
  %164 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 4
  %165 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 5
  %166 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 6
  %167 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 2
  %168 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 2, i32 2
  br label %169

169:                                              ; preds = %158, %629
  %170 = phi ptr [ %154, %158 ], [ %640, %629 ]
  %171 = phi i32 [ -1, %158 ], [ %634, %629 ]
  %172 = phi i8 [ 0, %158 ], [ %633, %629 ]
  %173 = phi i32 [ 0, %158 ], [ %639, %629 ]
  %174 = phi i32 [ 0, %158 ], [ %637, %629 ]
  %175 = phi i32 [ 0, %158 ], [ %632, %629 ]
  %176 = phi i32 [ 0, %158 ], [ %635, %629 ]
  %177 = phi i32 [ 0, %158 ], [ %631, %629 ]
  %178 = phi ptr [ null, %158 ], [ %636, %629 ]
  %179 = phi ptr [ null, %158 ], [ %630, %629 ]
  %180 = getelementptr inbounds %struct.GPUDrawObject, ptr %170, i64 0, i32 6
  %181 = load ptr, ptr %180, align 8, !tbaa !343
  %182 = sext i32 %173 to i64
  %183 = getelementptr inbounds i32, ptr %181, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !119
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.MFace, ptr %14, i64 %185
  %187 = getelementptr inbounds %struct.MFace, ptr %14, i64 %185, i32 4
  %188 = load i16, ptr %187, align 4, !tbaa !163
  %189 = sext i16 %188 to i32
  %190 = add nsw i32 %189, 1
  %191 = icmp eq i32 %190, %171
  br i1 %191, label %296, label %192

192:                                              ; preds = %169
  %193 = sub nsw i32 %174, %175
  %194 = icmp sgt i32 %193, 0
  %195 = icmp ne i8 %172, 0
  %196 = and i1 %194, %195
  br i1 %196, label %197, label %205

197:                                              ; preds = %192
  %198 = icmp eq i32 %177, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %197
  call void @GPU_buffer_unlock(ptr noundef %179) #16
  call void @GPU_interleaved_attrib_setup(ptr noundef %179, ptr noundef nonnull %8, i32 noundef %177) #16
  %200 = mul nsw i32 %175, 3
  %201 = mul nsw i32 %193, 3
  call void @glDrawArrays(i32 noundef 4, i32 noundef %200, i32 noundef %201) #16
  call void @GPU_buffer_free(ptr noundef %179) #16
  br label %205

202:                                              ; preds = %197
  %203 = mul nsw i32 %175, 3
  %204 = mul nsw i32 %193, 3
  call void @glDrawArrays(i32 noundef 4, i32 noundef %203, i32 noundef %204) #16
  br label %205

205:                                              ; preds = %202, %199, %192
  %206 = phi ptr [ null, %199 ], [ %179, %192 ], [ %179, %202 ]
  %207 = call i32 %1(i32 noundef %190, ptr noundef nonnull %5) #16
  %208 = trunc i32 %207 to i8
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %465, label %210

210:                                              ; preds = %205
  call void @DM_vertex_attributes_from_gpu(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %211 = load i32, ptr %159, align 4, !tbaa !348
  %212 = icmp ne i32 %211, 0
  %213 = load ptr, ptr %160, align 8
  %214 = icmp ne ptr %213, null
  %215 = select i1 %212, i1 %214, i1 false
  br i1 %215, label %216, label %218

216:                                              ; preds = %210
  %217 = load i32, ptr %161, align 4, !tbaa !352
  store i32 %217, ptr %8, align 16, !tbaa !353
  store i32 3, ptr %162, align 4, !tbaa !355
  store i32 5126, ptr %163, align 8, !tbaa !356
  br label %218

218:                                              ; preds = %216, %210
  %219 = phi i32 [ 1, %216 ], [ 0, %210 ]
  %220 = load i32, ptr %164, align 8, !tbaa !357
  %221 = icmp sgt i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %218
  %223 = zext nneg i32 %220 to i64
  br label %230

224:                                              ; preds = %244, %218
  %225 = phi i32 [ %219, %218 ], [ %245, %244 ]
  %226 = load i32, ptr %165, align 4, !tbaa !358
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %266

228:                                              ; preds = %224
  %229 = zext nneg i32 %226 to i64
  br label %248

230:                                              ; preds = %222, %244
  %231 = phi i64 [ 0, %222 ], [ %246, %244 ]
  %232 = phi i32 [ %219, %222 ], [ %245, %244 ]
  %233 = getelementptr inbounds [8 x %struct.anon.0], ptr %6, i64 0, i64 %231
  %234 = load ptr, ptr %233, align 8, !tbaa !359
  %235 = icmp eq ptr %234, null
  br i1 %235, label %244, label %236

236:                                              ; preds = %230
  %237 = getelementptr inbounds [8 x %struct.anon.0], ptr %6, i64 0, i64 %231, i32 2
  %238 = load i32, ptr %237, align 4, !tbaa !360
  %239 = sext i32 %232 to i64
  %240 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr %8, i64 0, i64 %239
  store i32 %238, ptr %240, align 4, !tbaa !353
  %241 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr %8, i64 0, i64 %239, i32 1
  store i32 2, ptr %241, align 4, !tbaa !355
  %242 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr %8, i64 0, i64 %239, i32 2
  store i32 5126, ptr %242, align 4, !tbaa !356
  %243 = add nsw i32 %232, 1
  br label %244

244:                                              ; preds = %230, %236
  %245 = phi i32 [ %243, %236 ], [ %232, %230 ]
  %246 = add nuw nsw i64 %231, 1
  %247 = icmp eq i64 %246, %223
  br i1 %247, label %224, label %230, !llvm.loop !361

248:                                              ; preds = %228, %262
  %249 = phi i64 [ 0, %228 ], [ %264, %262 ]
  %250 = phi i32 [ %225, %228 ], [ %263, %262 ]
  %251 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 1, i64 %249
  %252 = load ptr, ptr %251, align 8, !tbaa !362
  %253 = icmp eq ptr %252, null
  br i1 %253, label %262, label %254

254:                                              ; preds = %248
  %255 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 1, i64 %249, i32 2
  %256 = load i32, ptr %255, align 4, !tbaa !363
  %257 = sext i32 %250 to i64
  %258 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr %8, i64 0, i64 %257
  store i32 %256, ptr %258, align 4, !tbaa !353
  %259 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr %8, i64 0, i64 %257, i32 1
  store i32 4, ptr %259, align 4, !tbaa !355
  %260 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr %8, i64 0, i64 %257, i32 2
  store i32 5121, ptr %260, align 4, !tbaa !356
  %261 = add nsw i32 %250, 1
  br label %262

262:                                              ; preds = %248, %254
  %263 = phi i32 [ %261, %254 ], [ %250, %248 ]
  %264 = add nuw nsw i64 %249, 1
  %265 = icmp eq i64 %264, %229
  br i1 %265, label %266, label %248, !llvm.loop !364

266:                                              ; preds = %262, %224
  %267 = phi i32 [ %225, %224 ], [ %263, %262 ]
  %268 = load i32, ptr %166, align 8, !tbaa !365
  %269 = icmp ne i32 %268, 0
  %270 = load ptr, ptr %167, align 8
  %271 = icmp ne ptr %270, null
  %272 = select i1 %269, i1 %271, i1 false
  br i1 %272, label %273, label %280

273:                                              ; preds = %266
  %274 = load i32, ptr %168, align 4, !tbaa !366
  %275 = sext i32 %267 to i64
  %276 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr %8, i64 0, i64 %275
  store i32 %274, ptr %276, align 4, !tbaa !353
  %277 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr %8, i64 0, i64 %275, i32 1
  store i32 4, ptr %277, align 4, !tbaa !355
  %278 = getelementptr inbounds [32 x %struct.GPUAttrib], ptr %8, i64 0, i64 %275, i32 2
  store i32 5126, ptr %278, align 4, !tbaa !356
  %279 = add nsw i32 %267, 1
  br label %280

280:                                              ; preds = %273, %266
  %281 = phi i32 [ %279, %273 ], [ %267, %266 ]
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %465, label %283

283:                                              ; preds = %280
  %284 = call i32 @GPU_attrib_element_size(ptr noundef nonnull %8, i32 noundef %281) #16
  %285 = load ptr, ptr %153, align 8, !tbaa !312
  %286 = getelementptr inbounds %struct.GPUDrawObject, ptr %285, i64 0, i32 11
  %287 = load i32, ptr %286, align 4, !tbaa !313
  %288 = mul nsw i32 %287, %284
  %289 = call ptr @GPU_buffer_alloc(i32 noundef %288) #16
  %290 = icmp eq ptr %289, null
  br i1 %290, label %291, label %292

291:                                              ; preds = %283
  call void @GPU_buffer_unbind() #16
  br label %660

292:                                              ; preds = %283
  %293 = call ptr @GPU_buffer_lock_stream(ptr noundef nonnull %289) #16
  %294 = icmp eq ptr %293, null
  br i1 %294, label %295, label %296

295:                                              ; preds = %292
  call void @GPU_buffer_unbind() #16
  call void @GPU_buffer_free(ptr noundef nonnull %289) #16
  br label %660

296:                                              ; preds = %292, %169
  %297 = phi ptr [ %289, %292 ], [ %179, %169 ]
  %298 = phi ptr [ %293, %292 ], [ %178, %169 ]
  %299 = phi i32 [ %281, %292 ], [ %177, %169 ]
  %300 = phi i32 [ %284, %292 ], [ %176, %169 ]
  %301 = phi i32 [ %174, %292 ], [ %175, %169 ]
  %302 = phi i8 [ %208, %292 ], [ %172, %169 ]
  %303 = phi i32 [ %190, %292 ], [ %171, %169 ]
  %304 = icmp ne i8 %302, 0
  %305 = icmp ne i32 %299, 0
  %306 = select i1 %304, i1 %305, i1 false
  br i1 %306, label %307, label %460

307:                                              ; preds = %296
  %308 = load i32, ptr %159, align 4, !tbaa !348
  %309 = icmp ne i32 %308, 0
  %310 = load ptr, ptr %160, align 8
  %311 = icmp ne ptr %310, null
  %312 = select i1 %309, i1 %311, i1 false
  br i1 %312, label %313, label %338

313:                                              ; preds = %307
  %314 = mul i32 %174, 3
  %315 = mul i32 %314, %300
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8, ptr %298, i64 %316
  %318 = load i32, ptr %186, align 4, !tbaa !156
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds [3 x float], ptr %310, i64 %319
  call fastcc void @copy_v3_v3(ptr noundef %317, ptr noundef nonnull %320) #17
  %321 = add nsw i32 %315, %300
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i8, ptr %298, i64 %322
  %324 = load ptr, ptr %160, align 8, !tbaa !367
  %325 = getelementptr inbounds %struct.MFace, ptr %14, i64 %185, i32 1
  %326 = load i32, ptr %325, align 4, !tbaa !158
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds [3 x float], ptr %324, i64 %327
  call fastcc void @copy_v3_v3(ptr noundef %323, ptr noundef %328) #17
  %329 = add i32 %314, 2
  %330 = mul i32 %329, %300
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i8, ptr %298, i64 %331
  %333 = load ptr, ptr %160, align 8, !tbaa !367
  %334 = getelementptr inbounds %struct.MFace, ptr %14, i64 %185, i32 2
  %335 = load i32, ptr %334, align 4, !tbaa !159
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds [3 x float], ptr %333, i64 %336
  call fastcc void @copy_v3_v3(ptr noundef %332, ptr noundef %337) #17
  br label %338

338:                                              ; preds = %313, %307
  %339 = phi i32 [ 12, %313 ], [ 0, %307 ]
  %340 = load i32, ptr %164, align 8, !tbaa !357
  %341 = icmp sgt i32 %340, 0
  br i1 %341, label %342, label %346

342:                                              ; preds = %338
  %343 = mul i32 %174, 3
  %344 = mul i32 %343, %300
  %345 = shl nsw i32 %300, 1
  br label %360

346:                                              ; preds = %382, %338
  %347 = phi i32 [ %339, %338 ], [ %384, %382 ]
  %348 = load i32, ptr %165, align 4, !tbaa !358
  %349 = icmp sgt i32 %348, 0
  br i1 %349, label %350, label %424

350:                                              ; preds = %346
  %351 = shl nsw i32 %184, 2
  %352 = sext i32 %351 to i64
  %353 = mul i32 %174, 3
  %354 = mul i32 %353, %300
  %355 = or disjoint i32 %351, 1
  %356 = sext i32 %355 to i64
  %357 = or disjoint i32 %351, 2
  %358 = sext i32 %357 to i64
  %359 = shl nsw i32 %300, 1
  br label %388

360:                                              ; preds = %342, %382
  %361 = phi i32 [ %340, %342 ], [ %383, %382 ]
  %362 = phi i64 [ 0, %342 ], [ %385, %382 ]
  %363 = phi i32 [ %339, %342 ], [ %384, %382 ]
  %364 = getelementptr inbounds [8 x %struct.anon.0], ptr %6, i64 0, i64 %362
  %365 = load ptr, ptr %364, align 8, !tbaa !359
  %366 = icmp eq ptr %365, null
  br i1 %366, label %382, label %367

367:                                              ; preds = %360
  %368 = getelementptr inbounds %struct.MTFace, ptr %365, i64 %185
  %369 = add nsw i32 %363, %344
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i8, ptr %298, i64 %370
  call fastcc void @copy_v2_v2(ptr noundef %371, ptr noundef nonnull %368) #17
  %372 = add nsw i32 %369, %300
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i8, ptr %298, i64 %373
  %375 = getelementptr inbounds [4 x [2 x float]], ptr %368, i64 0, i64 1
  call fastcc void @copy_v2_v2(ptr noundef %374, ptr noundef nonnull %375) #17
  %376 = add nsw i32 %369, %345
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i8, ptr %298, i64 %377
  %379 = getelementptr inbounds [4 x [2 x float]], ptr %368, i64 0, i64 2
  call fastcc void @copy_v2_v2(ptr noundef %378, ptr noundef nonnull %379) #17
  %380 = add i32 %363, 8
  %381 = load i32, ptr %164, align 8, !tbaa !357
  br label %382

382:                                              ; preds = %360, %367
  %383 = phi i32 [ %381, %367 ], [ %361, %360 ]
  %384 = phi i32 [ %380, %367 ], [ %363, %360 ]
  %385 = add nuw nsw i64 %362, 1
  %386 = sext i32 %383 to i64
  %387 = icmp slt i64 %385, %386
  br i1 %387, label %360, label %346, !llvm.loop !368

388:                                              ; preds = %350, %418
  %389 = phi i32 [ %348, %350 ], [ %419, %418 ]
  %390 = phi i64 [ 0, %350 ], [ %421, %418 ]
  %391 = phi i32 [ %347, %350 ], [ %420, %418 ]
  %392 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 1, i64 %390
  %393 = load ptr, ptr %392, align 8, !tbaa !362
  %394 = icmp eq ptr %393, null
  br i1 %394, label %418, label %395

395:                                              ; preds = %388
  %396 = getelementptr inbounds %struct.MCol, ptr %393, i64 %352
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  %397 = load <4 x i8>, ptr %396, align 1, !tbaa !204
  %398 = shufflevector <4 x i8> %397, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %398, ptr %9, align 4, !tbaa !204
  %399 = add nsw i32 %391, %354
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i8, ptr %298, i64 %400
  call fastcc void @copy_v4_v4_char(ptr noundef %401, ptr noundef nonnull %9) #17
  %402 = load ptr, ptr %392, align 8, !tbaa !362
  %403 = getelementptr inbounds %struct.MCol, ptr %402, i64 %356
  %404 = load <4 x i8>, ptr %403, align 1, !tbaa !204
  %405 = shufflevector <4 x i8> %404, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %405, ptr %9, align 4, !tbaa !204
  %406 = add nsw i32 %399, %300
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i8, ptr %298, i64 %407
  call fastcc void @copy_v4_v4_char(ptr noundef %408, ptr noundef nonnull %9) #17
  %409 = load ptr, ptr %392, align 8, !tbaa !362
  %410 = getelementptr inbounds %struct.MCol, ptr %409, i64 %358
  %411 = load <4 x i8>, ptr %410, align 1, !tbaa !204
  %412 = shufflevector <4 x i8> %411, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %412, ptr %9, align 4, !tbaa !204
  %413 = add nsw i32 %399, %359
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i8, ptr %298, i64 %414
  call fastcc void @copy_v4_v4_char(ptr noundef %415, ptr noundef nonnull %9) #17
  %416 = add i32 %391, 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  %417 = load i32, ptr %165, align 4, !tbaa !358
  br label %418

418:                                              ; preds = %388, %395
  %419 = phi i32 [ %417, %395 ], [ %389, %388 ]
  %420 = phi i32 [ %416, %395 ], [ %391, %388 ]
  %421 = add nuw nsw i64 %390, 1
  %422 = sext i32 %419 to i64
  %423 = icmp slt i64 %421, %422
  br i1 %423, label %388, label %424, !llvm.loop !369

424:                                              ; preds = %418, %346
  %425 = phi i32 [ %347, %346 ], [ %420, %418 ]
  %426 = load i32, ptr %166, align 8, !tbaa !365
  %427 = icmp ne i32 %426, 0
  %428 = load ptr, ptr %167, align 8
  %429 = icmp ne ptr %428, null
  %430 = select i1 %427, i1 %429, i1 false
  br i1 %430, label %431, label %455

431:                                              ; preds = %424
  %432 = shl nsw i32 %184, 2
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds [4 x float], ptr %428, i64 %433
  %435 = mul i32 %174, 3
  %436 = mul i32 %435, %300
  %437 = add nsw i32 %425, %436
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i8, ptr %298, i64 %438
  call fastcc void @copy_v4_v4(ptr noundef %439, ptr noundef nonnull %434) #17
  %440 = load ptr, ptr %167, align 8, !tbaa !370
  %441 = or disjoint i32 %432, 1
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds [4 x float], ptr %440, i64 %442
  %444 = add nsw i32 %437, %300
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i8, ptr %298, i64 %445
  call fastcc void @copy_v4_v4(ptr noundef %446, ptr noundef nonnull %443) #17
  %447 = load ptr, ptr %167, align 8, !tbaa !370
  %448 = or disjoint i32 %432, 2
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds [4 x float], ptr %447, i64 %449
  %451 = shl nsw i32 %300, 1
  %452 = add nsw i32 %437, %451
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i8, ptr %298, i64 %453
  call fastcc void @copy_v4_v4(ptr noundef %454, ptr noundef nonnull %450) #17
  br label %455

455:                                              ; preds = %424, %431
  %456 = add nsw i32 %174, 1
  %457 = getelementptr inbounds %struct.MFace, ptr %14, i64 %185, i32 3
  %458 = load i32, ptr %457, align 4, !tbaa !160
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %629, label %471

460:                                              ; preds = %296
  %461 = add nsw i32 %174, 1
  %462 = getelementptr inbounds %struct.MFace, ptr %14, i64 %185, i32 3
  %463 = load i32, ptr %462, align 4, !tbaa !160
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %629, label %619

465:                                              ; preds = %280, %205
  %466 = phi ptr [ null, %280 ], [ %206, %205 ]
  %467 = add nsw i32 %174, 1
  %468 = getelementptr inbounds %struct.MFace, ptr %14, i64 %185, i32 3
  %469 = load i32, ptr %468, align 4, !tbaa !160
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %629, label %619

471:                                              ; preds = %455
  br i1 %306, label %472, label %619

472:                                              ; preds = %471
  %473 = load i32, ptr %159, align 4, !tbaa !348
  %474 = icmp ne i32 %473, 0
  %475 = load ptr, ptr %160, align 8
  %476 = icmp ne ptr %475, null
  %477 = select i1 %474, i1 %476, i1 false
  br i1 %477, label %478, label %502

478:                                              ; preds = %472
  %479 = mul i32 %456, 3
  %480 = mul i32 %479, %300
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i8, ptr %298, i64 %481
  %483 = getelementptr inbounds %struct.MFace, ptr %14, i64 %185, i32 2
  %484 = load i32, ptr %483, align 4, !tbaa !159
  %485 = zext i32 %484 to i64
  %486 = getelementptr inbounds [3 x float], ptr %475, i64 %485
  call fastcc void @copy_v3_v3(ptr noundef %482, ptr noundef nonnull %486) #17
  %487 = add nsw i32 %480, %300
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i8, ptr %298, i64 %488
  %490 = load ptr, ptr %160, align 8, !tbaa !367
  %491 = load i32, ptr %457, align 4, !tbaa !160
  %492 = zext i32 %491 to i64
  %493 = getelementptr inbounds [3 x float], ptr %490, i64 %492
  call fastcc void @copy_v3_v3(ptr noundef %489, ptr noundef %493) #17
  %494 = add i32 %479, 2
  %495 = mul i32 %494, %300
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i8, ptr %298, i64 %496
  %498 = load ptr, ptr %160, align 8, !tbaa !367
  %499 = load i32, ptr %186, align 4, !tbaa !156
  %500 = zext i32 %499 to i64
  %501 = getelementptr inbounds [3 x float], ptr %498, i64 %500
  call fastcc void @copy_v3_v3(ptr noundef %497, ptr noundef %501) #17
  br label %502

502:                                              ; preds = %478, %472
  %503 = phi i32 [ 12, %478 ], [ 0, %472 ]
  %504 = load i32, ptr %164, align 8, !tbaa !357
  %505 = icmp sgt i32 %504, 0
  br i1 %505, label %506, label %510

506:                                              ; preds = %502
  %507 = mul i32 %456, 3
  %508 = mul i32 %507, %300
  %509 = shl nsw i32 %300, 1
  br label %524

510:                                              ; preds = %546, %502
  %511 = phi i32 [ %503, %502 ], [ %548, %546 ]
  %512 = load i32, ptr %165, align 4, !tbaa !358
  %513 = icmp sgt i32 %512, 0
  br i1 %513, label %514, label %588

514:                                              ; preds = %510
  %515 = shl nsw i32 %184, 2
  %516 = or disjoint i32 %515, 2
  %517 = sext i32 %516 to i64
  %518 = mul i32 %456, 3
  %519 = mul i32 %518, %300
  %520 = or disjoint i32 %515, 3
  %521 = sext i32 %520 to i64
  %522 = sext i32 %515 to i64
  %523 = shl nsw i32 %300, 1
  br label %552

524:                                              ; preds = %506, %546
  %525 = phi i32 [ %504, %506 ], [ %547, %546 ]
  %526 = phi i64 [ 0, %506 ], [ %549, %546 ]
  %527 = phi i32 [ %503, %506 ], [ %548, %546 ]
  %528 = getelementptr inbounds [8 x %struct.anon.0], ptr %6, i64 0, i64 %526
  %529 = load ptr, ptr %528, align 8, !tbaa !359
  %530 = icmp eq ptr %529, null
  br i1 %530, label %546, label %531

531:                                              ; preds = %524
  %532 = getelementptr inbounds %struct.MTFace, ptr %529, i64 %185
  %533 = add nsw i32 %527, %508
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds i8, ptr %298, i64 %534
  %536 = getelementptr inbounds [4 x [2 x float]], ptr %532, i64 0, i64 2
  call fastcc void @copy_v2_v2(ptr noundef %535, ptr noundef nonnull %536) #17
  %537 = add nsw i32 %533, %300
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i8, ptr %298, i64 %538
  %540 = getelementptr inbounds [4 x [2 x float]], ptr %532, i64 0, i64 3
  call fastcc void @copy_v2_v2(ptr noundef %539, ptr noundef nonnull %540) #17
  %541 = add nsw i32 %533, %509
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i8, ptr %298, i64 %542
  call fastcc void @copy_v2_v2(ptr noundef %543, ptr noundef nonnull %532) #17
  %544 = add i32 %527, 8
  %545 = load i32, ptr %164, align 8, !tbaa !357
  br label %546

546:                                              ; preds = %524, %531
  %547 = phi i32 [ %545, %531 ], [ %525, %524 ]
  %548 = phi i32 [ %544, %531 ], [ %527, %524 ]
  %549 = add nuw nsw i64 %526, 1
  %550 = sext i32 %547 to i64
  %551 = icmp slt i64 %549, %550
  br i1 %551, label %524, label %510, !llvm.loop !371

552:                                              ; preds = %514, %582
  %553 = phi i32 [ %512, %514 ], [ %583, %582 ]
  %554 = phi i64 [ 0, %514 ], [ %585, %582 ]
  %555 = phi i32 [ %511, %514 ], [ %584, %582 ]
  %556 = getelementptr inbounds %struct.DMVertexAttribs, ptr %6, i64 0, i32 1, i64 %554
  %557 = load ptr, ptr %556, align 8, !tbaa !362
  %558 = icmp eq ptr %557, null
  br i1 %558, label %582, label %559

559:                                              ; preds = %552
  %560 = getelementptr inbounds %struct.MCol, ptr %557, i64 %517
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #18
  %561 = load <4 x i8>, ptr %560, align 1, !tbaa !204
  %562 = shufflevector <4 x i8> %561, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %562, ptr %10, align 4, !tbaa !204
  %563 = add nsw i32 %555, %519
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds i8, ptr %298, i64 %564
  call fastcc void @copy_v4_v4_char(ptr noundef %565, ptr noundef nonnull %10) #17
  %566 = load ptr, ptr %556, align 8, !tbaa !362
  %567 = getelementptr inbounds %struct.MCol, ptr %566, i64 %521
  %568 = load <4 x i8>, ptr %567, align 1, !tbaa !204
  %569 = shufflevector <4 x i8> %568, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %569, ptr %10, align 4, !tbaa !204
  %570 = add nsw i32 %563, %300
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds i8, ptr %298, i64 %571
  call fastcc void @copy_v4_v4_char(ptr noundef %572, ptr noundef nonnull %10) #17
  %573 = load ptr, ptr %556, align 8, !tbaa !362
  %574 = getelementptr inbounds %struct.MCol, ptr %573, i64 %522
  %575 = load <4 x i8>, ptr %574, align 1, !tbaa !204
  %576 = shufflevector <4 x i8> %575, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %576, ptr %10, align 4, !tbaa !204
  %577 = add nsw i32 %563, %523
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds i8, ptr %298, i64 %578
  call fastcc void @copy_v4_v4_char(ptr noundef %579, ptr noundef nonnull %10) #17
  %580 = add i32 %555, 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #18
  %581 = load i32, ptr %165, align 4, !tbaa !358
  br label %582

582:                                              ; preds = %552, %559
  %583 = phi i32 [ %581, %559 ], [ %553, %552 ]
  %584 = phi i32 [ %580, %559 ], [ %555, %552 ]
  %585 = add nuw nsw i64 %554, 1
  %586 = sext i32 %583 to i64
  %587 = icmp slt i64 %585, %586
  br i1 %587, label %552, label %588, !llvm.loop !372

588:                                              ; preds = %582, %510
  %589 = phi i32 [ %511, %510 ], [ %584, %582 ]
  %590 = load i32, ptr %166, align 8, !tbaa !365
  %591 = icmp ne i32 %590, 0
  %592 = load ptr, ptr %167, align 8
  %593 = icmp ne ptr %592, null
  %594 = select i1 %591, i1 %593, i1 false
  br i1 %594, label %595, label %619

595:                                              ; preds = %588
  %596 = shl nsw i32 %184, 2
  %597 = or disjoint i32 %596, 2
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds [4 x float], ptr %592, i64 %598
  %600 = mul i32 %456, 3
  %601 = mul i32 %600, %300
  %602 = add nsw i32 %589, %601
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i8, ptr %298, i64 %603
  call fastcc void @copy_v4_v4(ptr noundef %604, ptr noundef nonnull %599) #17
  %605 = load ptr, ptr %167, align 8, !tbaa !370
  %606 = or disjoint i32 %596, 3
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds [4 x float], ptr %605, i64 %607
  %609 = add nsw i32 %602, %300
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds i8, ptr %298, i64 %610
  call fastcc void @copy_v4_v4(ptr noundef %611, ptr noundef nonnull %608) #17
  %612 = load ptr, ptr %167, align 8, !tbaa !370
  %613 = sext i32 %596 to i64
  %614 = getelementptr inbounds [4 x float], ptr %612, i64 %613
  %615 = shl nsw i32 %300, 1
  %616 = add nsw i32 %602, %615
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds i8, ptr %298, i64 %617
  call fastcc void @copy_v4_v4(ptr noundef %618, ptr noundef %614) #17
  br label %619

619:                                              ; preds = %460, %465, %588, %595, %471
  %620 = phi i32 [ %303, %588 ], [ %303, %595 ], [ %303, %471 ], [ %190, %465 ], [ %303, %460 ]
  %621 = phi i8 [ %302, %588 ], [ %302, %595 ], [ %302, %471 ], [ %208, %465 ], [ %302, %460 ]
  %622 = phi i32 [ %301, %588 ], [ %301, %595 ], [ %301, %471 ], [ %174, %465 ], [ %301, %460 ]
  %623 = phi i32 [ %300, %588 ], [ %300, %595 ], [ %300, %471 ], [ %176, %465 ], [ %300, %460 ]
  %624 = phi i32 [ %299, %588 ], [ %299, %595 ], [ %299, %471 ], [ 0, %465 ], [ %299, %460 ]
  %625 = phi ptr [ %298, %588 ], [ %298, %595 ], [ %298, %471 ], [ %178, %465 ], [ %298, %460 ]
  %626 = phi ptr [ %297, %588 ], [ %297, %595 ], [ %297, %471 ], [ %466, %465 ], [ %297, %460 ]
  %627 = add nsw i32 %174, 2
  %628 = add nsw i32 %173, 1
  br label %629

629:                                              ; preds = %460, %465, %455, %619
  %630 = phi ptr [ %626, %619 ], [ %297, %455 ], [ %466, %465 ], [ %297, %460 ]
  %631 = phi i32 [ %624, %619 ], [ %299, %455 ], [ 0, %465 ], [ %299, %460 ]
  %632 = phi i32 [ %622, %619 ], [ %301, %455 ], [ %174, %465 ], [ %301, %460 ]
  %633 = phi i8 [ %621, %619 ], [ %302, %455 ], [ %208, %465 ], [ %302, %460 ]
  %634 = phi i32 [ %620, %619 ], [ %303, %455 ], [ %190, %465 ], [ %303, %460 ]
  %635 = phi i32 [ %623, %619 ], [ %300, %455 ], [ %176, %465 ], [ %300, %460 ]
  %636 = phi ptr [ %625, %619 ], [ %298, %455 ], [ %178, %465 ], [ %298, %460 ]
  %637 = phi i32 [ %627, %619 ], [ %456, %455 ], [ %467, %465 ], [ %461, %460 ]
  %638 = phi i32 [ %628, %619 ], [ %173, %455 ], [ %173, %465 ], [ %173, %460 ]
  %639 = add nsw i32 %638, 1
  %640 = load ptr, ptr %153, align 8, !tbaa !312
  %641 = getelementptr inbounds %struct.GPUDrawObject, ptr %640, i64 0, i32 11
  %642 = load i32, ptr %641, align 4, !tbaa !313
  %643 = sdiv i32 %642, 3
  %644 = icmp slt i32 %639, %643
  br i1 %644, label %169, label %645, !llvm.loop !373

645:                                              ; preds = %629
  %646 = icmp ne i8 %633, 0
  %647 = sub nsw i32 %637, %632
  %648 = icmp sgt i32 %647, 0
  %649 = and i1 %648, %646
  br i1 %649, label %650, label %656

650:                                              ; preds = %645
  %651 = icmp eq i32 %631, 0
  br i1 %651, label %653, label %652

652:                                              ; preds = %650
  call void @GPU_buffer_unlock(ptr noundef %630) #16
  call void @GPU_interleaved_attrib_setup(ptr noundef %630, ptr noundef nonnull %8, i32 noundef %631) #16
  br label %653

653:                                              ; preds = %652, %650
  %654 = mul nsw i32 %632, 3
  %655 = mul nsw i32 %647, 3
  call void @glDrawArrays(i32 noundef 4, i32 noundef %654, i32 noundef %655) #16
  br label %656

656:                                              ; preds = %152, %653, %645
  %657 = phi ptr [ %630, %653 ], [ %630, %645 ], [ null, %152 ]
  call void @GPU_buffer_unbind() #16
  br label %658

658:                                              ; preds = %656, %149
  %659 = phi ptr [ null, %149 ], [ %657, %656 ]
  call void @GPU_buffer_free(ptr noundef %659) #16
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %8) #18
  br label %663

660:                                              ; preds = %295, %291
  %661 = load ptr, ptr %153, align 8, !tbaa !312
  %662 = getelementptr inbounds %struct.GPUDrawObject, ptr %661, i64 0, i32 15
  store i8 1, ptr %662, align 4, !tbaa !374
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %8) #18
  br label %664

663:                                              ; preds = %658, %148
  call void @glShadeModel(i32 noundef 7424) #16
  br label %664

664:                                              ; preds = %660, %36, %40, %663
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 2564, ptr nonnull %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cdDM_drawMappedFacesMat(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !375 {
  %5 = alloca %struct.GPUVertexAttribs, align 4
  %6 = alloca %struct.DMVertexAttribs, align 8
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 2564, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %6) #18
  %8 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = tail call ptr %13(ptr noundef %0, i32 noundef 8) #16
  %15 = load ptr, ptr %12, align 8, !tbaa !71
  %16 = tail call ptr %15(ptr noundef %0, i32 noundef 40) #16
  %17 = load ptr, ptr %12, align 8, !tbaa !71
  %18 = tail call ptr %17(ptr noundef %0, i32 noundef 7) #16
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 54
  %20 = load ptr, ptr %19, align 8, !tbaa !187
  %21 = tail call ptr %20(ptr noundef %0, i32 noundef 7) #16
  %22 = icmp eq ptr %18, null
  %23 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !292
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 7
  %28 = load i8, ptr %27, align 8, !tbaa !296
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @BKE_pbvh_type(ptr noundef nonnull %24) #16
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %35 = load i32, ptr %34, align 8, !tbaa !43
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %132, label %37

37:                                               ; preds = %33
  call void %1(ptr noundef %3, i32 noundef 1, ptr noundef nonnull %5) #16
  %38 = load ptr, ptr %23, align 8, !tbaa !292
  call void @BKE_pbvh_draw(ptr noundef %38, ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef zeroext 0) #16
  br label %132

39:                                               ; preds = %30, %26, %4
  tail call fastcc void @cdDM_update_normals_from_pbvh(ptr noundef nonnull %0) #17
  tail call void @glShadeModel(i32 noundef 7425) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %6, i8 0, i64 376, i1 false)
  tail call void @glBegin(i32 noundef 7) #16
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %41 = load i32, ptr %40, align 8, !tbaa !43
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %131

43:                                               ; preds = %39
  %44 = icmp eq ptr %16, null
  %45 = icmp eq ptr %2, null
  %46 = icmp eq ptr %14, null
  br label %47

47:                                               ; preds = %43, %125
  %48 = phi i64 [ 0, %43 ], [ %126, %125 ]
  %49 = phi ptr [ %11, %43 ], [ %127, %125 ]
  %50 = phi i32 [ -1, %43 ], [ %66, %125 ]
  br i1 %44, label %51, label %56

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.MFace, ptr %49, i64 0, i32 6
  %53 = load i8, ptr %52, align 1, !tbaa !164
  %54 = and i8 %53, 1
  %55 = icmp ne i8 %54, 0
  br label %56

56:                                               ; preds = %51, %47
  %57 = phi i1 [ true, %47 ], [ %55, %51 ]
  %58 = zext i1 %57 to i8
  %59 = getelementptr inbounds %struct.MFace, ptr %49, i64 0, i32 4
  %60 = load i16, ptr %59, align 4, !tbaa !163
  %61 = sext i16 %60 to i32
  %62 = add nsw i32 %61, 1
  %63 = icmp eq i32 %62, %50
  br i1 %63, label %65, label %64

64:                                               ; preds = %56
  call void @glEnd() #16
  call void %1(ptr noundef %3, i32 noundef %62, ptr noundef nonnull %5) #16
  call void @DM_vertex_attributes_from_gpu(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  call void @glBegin(i32 noundef 7) #16
  br label %65

65:                                               ; preds = %64, %56
  %66 = phi i32 [ %62, %64 ], [ %50, %56 ]
  br i1 %45, label %76, label %67

67:                                               ; preds = %65
  %68 = trunc i64 %48 to i32
  br i1 %22, label %72, label %69

69:                                               ; preds = %67
  %70 = call fastcc i32 @DM_origindex_mface_mpoly(ptr noundef nonnull %18, ptr noundef %21, i32 noundef %68) #17
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %76, label %72

72:                                               ; preds = %67, %69
  %73 = phi i32 [ %70, %69 ], [ %68, %67 ]
  %74 = call zeroext i8 %2(ptr noundef %3, i32 noundef %73) #16
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %125, label %76

76:                                               ; preds = %69, %72, %65
  br i1 %57, label %102, label %77

77:                                               ; preds = %76
  br i1 %46, label %80, label %78

78:                                               ; preds = %77
  %79 = getelementptr inbounds [3 x float], ptr %14, i64 %48
  call void @glNormal3fv(ptr noundef nonnull %79) #16
  br label %108

80:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  %81 = getelementptr inbounds %struct.MFace, ptr %49, i64 0, i32 3
  %82 = load i32, ptr %81, align 4, !tbaa !160
  %83 = icmp eq i32 %82, 0
  %84 = load i32, ptr %49, align 4, !tbaa !156
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.MVert, ptr %9, i64 %85
  %87 = getelementptr inbounds %struct.MFace, ptr %49, i64 0, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !158
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.MVert, ptr %9, i64 %89
  %91 = getelementptr inbounds %struct.MFace, ptr %49, i64 0, i32 2
  %92 = load i32, ptr %91, align 4, !tbaa !159
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.MVert, ptr %9, i64 %93
  br i1 %83, label %99, label %95

95:                                               ; preds = %80
  %96 = zext i32 %82 to i64
  %97 = getelementptr inbounds %struct.MVert, ptr %9, i64 %96
  %98 = call float @normal_quad_v3(ptr noundef nonnull %7, ptr noundef %86, ptr noundef %90, ptr noundef %94, ptr noundef nonnull %97) #16
  br label %101

99:                                               ; preds = %80
  %100 = call float @normal_tri_v3(ptr noundef nonnull %7, ptr noundef %86, ptr noundef %90, ptr noundef %94) #16
  br label %101

101:                                              ; preds = %99, %95
  call void @glNormal3fv(ptr noundef nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  br label %108

102:                                              ; preds = %76
  br i1 %44, label %108, label %103

103:                                              ; preds = %102
  %104 = getelementptr inbounds [4 x [3 x i16]], ptr %16, i64 %48
  %105 = getelementptr inbounds [4 x [3 x i16]], ptr %16, i64 %48, i64 1
  %106 = getelementptr inbounds [4 x [3 x i16]], ptr %16, i64 %48, i64 2
  %107 = getelementptr inbounds [4 x [3 x i16]], ptr %16, i64 %48, i64 3
  br label %108

108:                                              ; preds = %102, %103, %78, %101
  %109 = phi ptr [ %104, %103 ], [ null, %102 ], [ null, %78 ], [ null, %101 ]
  %110 = phi ptr [ %105, %103 ], [ null, %102 ], [ null, %78 ], [ null, %101 ]
  %111 = phi ptr [ %106, %103 ], [ null, %102 ], [ null, %78 ], [ null, %101 ]
  %112 = phi ptr [ %107, %103 ], [ null, %102 ], [ null, %78 ], [ null, %101 ]
  %113 = load i32, ptr %49, align 4, !tbaa !156
  %114 = trunc i64 %48 to i32
  call fastcc void @cddm_draw_attrib_vertex(ptr noundef nonnull %6, ptr noundef %9, i32 noundef %114, i32 noundef %113, i32 noundef 0, ptr noundef %109, i8 noundef zeroext %58) #17
  %115 = getelementptr inbounds %struct.MFace, ptr %49, i64 0, i32 1
  %116 = load i32, ptr %115, align 4, !tbaa !158
  call fastcc void @cddm_draw_attrib_vertex(ptr noundef nonnull %6, ptr noundef %9, i32 noundef %114, i32 noundef %116, i32 noundef 1, ptr noundef %110, i8 noundef zeroext %58) #17
  %117 = getelementptr inbounds %struct.MFace, ptr %49, i64 0, i32 2
  %118 = load i32, ptr %117, align 4, !tbaa !159
  call fastcc void @cddm_draw_attrib_vertex(ptr noundef nonnull %6, ptr noundef %9, i32 noundef %114, i32 noundef %118, i32 noundef 2, ptr noundef %111, i8 noundef zeroext %58) #17
  %119 = getelementptr inbounds %struct.MFace, ptr %49, i64 0, i32 3
  %120 = load i32, ptr %119, align 4, !tbaa !160
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %108
  call fastcc void @cddm_draw_attrib_vertex(ptr noundef nonnull %6, ptr noundef %9, i32 noundef %114, i32 noundef %120, i32 noundef 3, ptr noundef %112, i8 noundef zeroext %58) #17
  br label %125

123:                                              ; preds = %108
  %124 = load i32, ptr %117, align 4, !tbaa !159
  call fastcc void @cddm_draw_attrib_vertex(ptr noundef nonnull %6, ptr noundef %9, i32 noundef %114, i32 noundef %124, i32 noundef 2, ptr noundef %111, i8 noundef zeroext %58) #17
  br label %125

125:                                              ; preds = %122, %123, %72
  %126 = add nuw nsw i64 %48, 1
  %127 = getelementptr inbounds %struct.MFace, ptr %49, i64 1
  %128 = load i32, ptr %40, align 8, !tbaa !43
  %129 = sext i32 %128 to i64
  %130 = icmp slt i64 %126, %129
  br i1 %130, label %47, label %131, !llvm.loop !376

131:                                              ; preds = %125, %39
  call void @glEnd() #16
  call void @glShadeModel(i32 noundef 7424) #16
  br label %132

132:                                              ; preds = %33, %37, %131
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 2564, ptr nonnull %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cdDM_foreachMappedVert(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 !PGOFuncName !377 {
  %5 = tail call ptr @CDDM_get_verts(ptr noundef %0) #17
  %6 = tail call ptr @DM_get_vert_data_layer(ptr noundef %0, i32 noundef 7) #16
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !127
  %10 = icmp sgt i32 %9, 0
  br i1 %7, label %15, label %11

11:                                               ; preds = %4
  br i1 %10, label %12, label %45

12:                                               ; preds = %11
  %13 = and i32 %3, 1
  %14 = icmp eq i32 %13, 0
  br label %19

15:                                               ; preds = %4
  br i1 %10, label %16, label %45

16:                                               ; preds = %15
  %17 = and i32 %3, 1
  %18 = icmp eq i32 %17, 0
  br label %36

19:                                               ; preds = %12, %31
  %20 = phi i32 [ %9, %12 ], [ %32, %31 ]
  %21 = phi ptr [ %5, %12 ], [ %34, %31 ]
  %22 = phi ptr [ %6, %12 ], [ %24, %31 ]
  %23 = phi i32 [ 0, %12 ], [ %33, %31 ]
  %24 = getelementptr inbounds i32, ptr %22, i64 1
  %25 = load i32, ptr %22, align 4, !tbaa !119
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.MVert, ptr %21, i64 0, i32 1
  %29 = select i1 %14, ptr null, ptr %28
  tail call void %1(ptr noundef %2, i32 noundef %25, ptr noundef %21, ptr noundef null, ptr noundef %29) #16
  %30 = load i32, ptr %8, align 8, !tbaa !127
  br label %31

31:                                               ; preds = %19, %27
  %32 = phi i32 [ %20, %19 ], [ %30, %27 ]
  %33 = add nuw nsw i32 %23, 1
  %34 = getelementptr inbounds %struct.MVert, ptr %21, i64 1
  %35 = icmp slt i32 %33, %32
  br i1 %35, label %19, label %45, !llvm.loop !378

36:                                               ; preds = %16, %36
  %37 = phi ptr [ %5, %16 ], [ %42, %36 ]
  %38 = phi i32 [ 0, %16 ], [ %41, %36 ]
  %39 = getelementptr inbounds %struct.MVert, ptr %37, i64 0, i32 1
  %40 = select i1 %18, ptr null, ptr %39
  tail call void %1(ptr noundef %2, i32 noundef %38, ptr noundef %37, ptr noundef null, ptr noundef %40) #16
  %41 = add nuw nsw i32 %38, 1
  %42 = getelementptr inbounds %struct.MVert, ptr %37, i64 1
  %43 = load i32, ptr %8, align 8, !tbaa !127
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %36, label %45, !llvm.loop !379

45:                                               ; preds = %31, %36, %11, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cdDM_foreachMappedEdge(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !380 {
  %4 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = tail call ptr @DM_get_edge_data_layer(ptr noundef %0, i32 noundef 7) #16
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !128
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
  %19 = load i32, ptr %13, align 4, !tbaa !119
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %31, label %21

21:                                               ; preds = %12, %17
  %22 = phi i32 [ %19, %17 ], [ %15, %12 ]
  %23 = phi ptr [ %18, %17 ], [ null, %12 ]
  %24 = load i32, ptr %14, align 4, !tbaa !142
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.MVert, ptr %5, i64 %25
  %27 = getelementptr inbounds %struct.MEdge, ptr %14, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !145
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.MVert, ptr %5, i64 %29
  tail call void %1(ptr noundef %2, i32 noundef %22, ptr noundef %26, ptr noundef %30) #16
  br label %31

31:                                               ; preds = %21, %17
  %32 = phi ptr [ %18, %17 ], [ %23, %21 ]
  %33 = add nuw nsw i32 %15, 1
  %34 = getelementptr inbounds %struct.MEdge, ptr %14, i64 1
  %35 = load i32, ptr %9, align 4, !tbaa !128
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %12, label %37, !llvm.loop !381

37:                                               ; preds = %31, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cdDM_foreachMappedLoop(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 !PGOFuncName !382 {
  %5 = and i32 %3, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @DM_get_loop_data_layer(ptr noundef %0, i32 noundef 8) #16
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi ptr [ %8, %7 ], [ null, %4 ]
  %11 = tail call ptr @CDDM_get_verts(ptr noundef %0) #17
  %12 = tail call ptr @CDDM_get_loops(ptr noundef %0) #17
  %13 = tail call ptr @CDDM_get_polys(ptr noundef %0) #17
  %14 = tail call ptr @DM_get_vert_data_layer(ptr noundef %0, i32 noundef 7) #16
  %15 = tail call ptr @DM_get_poly_data_layer(ptr noundef %0, i32 noundef 7) #16
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !45
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %76

19:                                               ; preds = %9
  %20 = icmp eq ptr %14, null
  %21 = icmp eq ptr %15, null
  br label %22

22:                                               ; preds = %19, %68
  %23 = phi i32 [ %17, %19 ], [ %69, %68 ]
  %24 = phi i64 [ 0, %19 ], [ %72, %68 ]
  %25 = phi ptr [ %10, %19 ], [ %71, %68 ]
  %26 = phi ptr [ %12, %19 ], [ %70, %68 ]
  %27 = phi ptr [ %13, %19 ], [ %73, %68 ]
  %28 = getelementptr inbounds %struct.MPoly, ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !167
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %68

31:                                               ; preds = %22
  %32 = getelementptr inbounds i32, ptr %15, i64 %24
  %33 = trunc i64 %24 to i32
  br label %34

34:                                               ; preds = %31, %61
  %35 = phi i32 [ %29, %31 ], [ %62, %61 ]
  %36 = phi ptr [ %25, %31 ], [ %52, %61 ]
  %37 = phi ptr [ %26, %31 ], [ %64, %61 ]
  %38 = phi i32 [ 0, %31 ], [ %63, %61 ]
  br i1 %20, label %43, label %39

39:                                               ; preds = %34
  %40 = load i32, ptr %37, align 4, !tbaa !173
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %14, i64 %41
  br label %43

43:                                               ; preds = %34, %39
  %44 = phi ptr [ %42, %39 ], [ %37, %34 ]
  %45 = load i32, ptr %44, align 4, !tbaa !119
  br i1 %21, label %48, label %46

46:                                               ; preds = %43
  %47 = load i32, ptr %32, align 4, !tbaa !119
  br label %48

48:                                               ; preds = %43, %46
  %49 = phi i32 [ %47, %46 ], [ %33, %43 ]
  %50 = icmp eq ptr %36, null
  %51 = getelementptr inbounds [3 x float], ptr %36, i64 1
  %52 = select i1 %50, ptr null, ptr %51
  %53 = icmp eq i32 %45, -1
  %54 = icmp eq i32 %49, -1
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %48
  %57 = load i32, ptr %37, align 4, !tbaa !173
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.MVert, ptr %11, i64 %58
  tail call void %1(ptr noundef %2, i32 noundef %45, i32 noundef %49, ptr noundef %59, ptr noundef %36) #16
  %60 = load i32, ptr %28, align 4, !tbaa !167
  br label %61

61:                                               ; preds = %56, %48
  %62 = phi i32 [ %60, %56 ], [ %35, %48 ]
  %63 = add nuw nsw i32 %38, 1
  %64 = getelementptr inbounds %struct.MLoop, ptr %37, i64 1
  %65 = icmp slt i32 %63, %62
  br i1 %65, label %34, label %66, !llvm.loop !383

66:                                               ; preds = %61
  %67 = load i32, ptr %16, align 8, !tbaa !45
  br label %68

68:                                               ; preds = %66, %22
  %69 = phi i32 [ %23, %22 ], [ %67, %66 ]
  %70 = phi ptr [ %26, %22 ], [ %64, %66 ]
  %71 = phi ptr [ %25, %22 ], [ %52, %66 ]
  %72 = add nuw nsw i64 %24, 1
  %73 = getelementptr inbounds %struct.MPoly, ptr %27, i64 1
  %74 = sext i32 %69 to i64
  %75 = icmp slt i64 %72, %74
  br i1 %75, label %22, label %76, !llvm.loop !384

76:                                               ; preds = %68, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cdDM_foreachMappedFaceCenter(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 !PGOFuncName !385 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %10 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %9, i32 noundef 7) #16
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !45
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 4
  %18 = and i32 %3, 1
  %19 = icmp eq i32 %18, 0
  br label %20

20:                                               ; preds = %14, %41
  %21 = phi i32 [ %12, %14 ], [ %42, %41 ]
  %22 = phi ptr [ %10, %14 ], [ %43, %41 ]
  %23 = phi i32 [ 0, %14 ], [ %44, %41 ]
  %24 = phi ptr [ %16, %14 ], [ %45, %41 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  %25 = icmp eq ptr %22, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds i32, ptr %22, i64 1
  %28 = load i32, ptr %22, align 4, !tbaa !119
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %41, label %30

30:                                               ; preds = %20, %26
  %31 = phi i32 [ %28, %26 ], [ %23, %20 ]
  %32 = phi ptr [ %27, %26 ], [ null, %20 ]
  %33 = load ptr, ptr %17, align 8, !tbaa !48
  %34 = load i32, ptr %24, align 4, !tbaa !170
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.MLoop, ptr %33, i64 %35
  call void @BKE_mesh_calc_poly_center(ptr noundef nonnull %24, ptr noundef %36, ptr noundef %8, ptr noundef nonnull %5) #16
  br i1 %19, label %38, label %37

37:                                               ; preds = %30
  call void @BKE_mesh_calc_poly_normal(ptr noundef nonnull %24, ptr noundef %36, ptr noundef %8, ptr noundef nonnull %6) #16
  br label %38

38:                                               ; preds = %30, %37
  %39 = phi ptr [ %6, %37 ], [ null, %30 ]
  call void %1(ptr noundef %2, i32 noundef %31, ptr noundef nonnull %5, ptr noundef %39) #16
  %40 = load i32, ptr %11, align 8, !tbaa !45
  br label %41

41:                                               ; preds = %26, %38
  %42 = phi i32 [ %40, %38 ], [ %21, %26 ]
  %43 = phi ptr [ %32, %38 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  %44 = add nuw nsw i32 %23, 1
  %45 = getelementptr inbounds %struct.MPoly, ptr %24, i64 1
  %46 = icmp slt i32 %44, %42
  br i1 %46, label %20, label %47, !llvm.loop !386

47:                                               ; preds = %41, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cdDM_release(ptr noundef %0) #0 !PGOFuncName !387 {
  %2 = tail call i32 @DM_release(ptr noundef %0) #16
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  tail call fastcc void @cdDM_free_internal(ptr noundef %0) #17
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %5(ptr noundef %0) #16
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #14 !PGOFuncName !388 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !134
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_short_to_float_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !389 {
  %3 = load <2 x i16>, ptr %1, align 2, !tbaa !196
  %4 = sitofp <2 x i16> %3 to <2 x float>
  %5 = fmul <2 x float> %4, <float 0x3F00002000000000, float 0x3F00002000000000>
  store <2 x float> %5, ptr %0, align 4, !tbaa !134
  %6 = getelementptr inbounds i16, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2, !tbaa !196
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 0x3F00002000000000
  %10 = getelementptr inbounds float, ptr %0, i64 2
  store float %9, ptr %10, align 4, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @can_pbvh_draw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !390 {
  %3 = tail call fastcc zeroext i8 @check_sculpt_object_deformed(ptr noundef %0, i8 noundef zeroext 0) #17
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !115
  %8 = getelementptr inbounds %struct.CDDerivedMesh, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 15
  %11 = load ptr, ptr %10, align 8, !tbaa !305
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %20, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !293
  %16 = getelementptr inbounds %struct.SculptSession, ptr %15, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !391
  %18 = icmp ne ptr %17, null
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %5, %13, %2
  %21 = phi i8 [ 0, %2 ], [ 1, %5 ], [ %19, %13 ]
  ret i8 %21
}

; Function Attrs: optsize
declare ptr @BKE_pbvh_new() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pbvh_build_bmesh(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @pbvh_show_diffuse_color_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_tessface_ensure(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pbvh_build_mesh(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @check_sculpt_object_deformed(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #10 !PGOFuncName !392 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !293
  %5 = getelementptr inbounds %struct.SculptSession, ptr %4, i64 0, i32 17
  %6 = load i8, ptr %5, align 1, !tbaa !393
  %7 = icmp eq i8 %1, 0
  %8 = getelementptr inbounds %struct.SculptSession, ptr %4, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !391
  br i1 %7, label %14, label %10

10:                                               ; preds = %2
  %11 = icmp ne ptr %9, null
  %12 = zext i1 %11 to i8
  %13 = or i8 %6, %12
  br label %24

14:                                               ; preds = %2
  %15 = icmp eq ptr %9, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 114
  %18 = load i8, ptr %17, align 1, !tbaa !394
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  br label %21

21:                                               ; preds = %16, %14
  %22 = phi i8 [ 0, %14 ], [ %20, %16 ]
  %23 = or i8 %22, %6
  br label %24

24:                                               ; preds = %21, %10
  %25 = phi i8 [ %13, %10 ], [ %23, %21 ]
  ret i8 %25
}

; Function Attrs: optsize
declare void @BKE_pbvh_apply_vertCos(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @GPU_buffer_legacy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_vertex_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDrawArrays(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_buffer_unbind() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_uvedge_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_pbvh_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pbvh_draw(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_edge_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_buffer_draw_elements(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glShadeModel(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glNormal3sv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glNormal3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_normal_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cdDM_drawFacesTex_common(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !395 {
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 4) #16
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = tail call ptr %12(ptr noundef %0, i32 noundef 8) #16
  %14 = load ptr, ptr %11, align 8, !tbaa !71
  %15 = tail call ptr %14(ptr noundef %0, i32 noundef 40) #16
  %16 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 5) #16
  %17 = trunc i32 %5 to i8
  %18 = lshr i8 %17, 2
  %19 = and i8 %18, 1
  %20 = load ptr, ptr %11, align 8, !tbaa !71
  %21 = tail call ptr %20(ptr noundef %0, i32 noundef 7) #16
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 54
  %23 = load ptr, ptr %22, align 8, !tbaa !187
  %24 = tail call ptr %23(ptr noundef %0, i32 noundef 7) #16
  %25 = icmp eq ptr %21, null
  %26 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !292
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %6
  %30 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 7
  %31 = load i8, ptr %30, align 8, !tbaa !296
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @BKE_pbvh_type(ptr noundef nonnull %27) #16
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %38 = load i32, ptr %37, align 8, !tbaa !43
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %407, label %40

40:                                               ; preds = %36
  %41 = tail call i32 @GPU_set_tpage(ptr noundef null, i32 noundef 0, i32 noundef 0) #16
  %42 = load ptr, ptr %26, align 8, !tbaa !292
  tail call void @BKE_pbvh_draw(ptr noundef %42, ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef zeroext 0) #16
  br label %407

43:                                               ; preds = %33, %29, %6
  %44 = load ptr, ptr %11, align 8, !tbaa !71
  %45 = tail call ptr %44(ptr noundef nonnull %0, i32 noundef 22) #16
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load ptr, ptr %11, align 8, !tbaa !71
  %49 = tail call ptr %48(ptr noundef nonnull %0, i32 noundef 20) #16
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load ptr, ptr %11, align 8, !tbaa !71
  %53 = tail call ptr %52(ptr noundef nonnull %0, i32 noundef 6) #16
  br label %54

54:                                               ; preds = %43, %51, %47
  %55 = phi i32 [ 20, %47 ], [ 6, %51 ], [ 22, %43 ]
  %56 = phi ptr [ %49, %47 ], [ %53, %51 ], [ %45, %43 ]
  tail call fastcc void @cdDM_update_normals_from_pbvh(ptr noundef nonnull %0) #17
  %57 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef nonnull %0) #16
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %313, label %59

59:                                               ; preds = %54
  %60 = tail call ptr @DM_get_tessface_data_layer(ptr noundef nonnull %0, i32 noundef 5) #16
  %61 = and i32 %5, 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %65 = tail call i32 @CustomData_get_stencil_layer(ptr noundef nonnull %64, i32 noundef 5) #16
  %66 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %64, i32 noundef 5, i32 noundef %65) #16
  %67 = icmp eq ptr %66, null
  br label %68

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %67, %63 ], [ true, %59 ]
  %70 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %71 = load i32, ptr %70, align 8, !tbaa !43
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %407

73:                                               ; preds = %68
  %74 = icmp eq ptr %1, null
  %75 = icmp eq i8 %19, 0
  %76 = icmp ne ptr %56, null
  %77 = zext i1 %76 to i8
  %78 = icmp eq ptr %2, null
  br label %79

79:                                               ; preds = %73, %305
  %80 = phi i64 [ 0, %73 ], [ %308, %305 ]
  %81 = phi ptr [ %10, %73 ], [ %309, %305 ]
  %82 = phi ptr [ %13, %73 ], [ %307, %305 ]
  %83 = phi ptr [ %15, %73 ], [ %306, %305 ]
  %84 = phi ptr [ %60, %73 ], [ %97, %305 ]
  %85 = phi i32 [ -1, %73 ], [ %96, %305 ]
  br i1 %62, label %95, label %86

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.MFace, ptr %81, i64 0, i32 4
  %88 = load i16, ptr %87, align 4, !tbaa !163
  %89 = sext i16 %88 to i32
  %90 = icmp eq i32 %85, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = call ptr @DM_paint_uvlayer_active_get(ptr noundef nonnull %0, i32 noundef %89) #16
  %93 = load i16, ptr %87, align 4, !tbaa !163
  %94 = sext i16 %93 to i32
  br label %95

95:                                               ; preds = %86, %91, %79
  %96 = phi i32 [ %94, %91 ], [ %85, %86 ], [ %85, %79 ]
  %97 = phi ptr [ %92, %91 ], [ %84, %86 ], [ %84, %79 ]
  %98 = icmp eq ptr %97, null
  %99 = getelementptr inbounds %struct.MTFace, ptr %97, i64 %80
  %100 = select i1 %98, ptr null, ptr %99
  br i1 %74, label %107, label %101

101:                                              ; preds = %95
  %102 = select i1 %75, ptr null, ptr %100
  %103 = getelementptr inbounds %struct.MFace, ptr %81, i64 0, i32 4
  %104 = load i16, ptr %103, align 4, !tbaa !163
  %105 = sext i16 %104 to i32
  %106 = call i32 %1(ptr noundef %102, i8 noundef zeroext %77, i32 noundef %105) #16
  br label %127

107:                                              ; preds = %95
  br i1 %25, label %119, label %108

108:                                              ; preds = %107
  %109 = trunc i64 %80 to i32
  %110 = call fastcc i32 @DM_origindex_mface_mpoly(ptr noundef nonnull %21, ptr noundef %24, i32 noundef %109) #17
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %130, label %112

112:                                              ; preds = %108
  br i1 %78, label %115, label %113

113:                                              ; preds = %112
  %114 = call i32 %2(ptr noundef %4, i32 noundef %110) #16
  br label %127

115:                                              ; preds = %112
  %116 = icmp eq ptr %82, null
  %117 = getelementptr inbounds float, ptr %82, i64 3
  %118 = select i1 %116, ptr null, ptr %117
  br label %305

119:                                              ; preds = %107
  br i1 %78, label %123, label %120

120:                                              ; preds = %119
  %121 = trunc i64 %80 to i32
  %122 = call i32 %2(ptr noundef %4, i32 noundef %121) #16
  br label %127

123:                                              ; preds = %119
  %124 = icmp eq ptr %82, null
  %125 = getelementptr inbounds float, ptr %82, i64 3
  %126 = select i1 %124, ptr null, ptr %125
  br label %305

127:                                              ; preds = %120, %113, %101
  %128 = phi i32 [ %106, %101 ], [ %114, %113 ], [ %122, %120 ]
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %298, label %130

130:                                              ; preds = %127, %108
  %131 = phi i32 [ 1, %108 ], [ %128, %127 ]
  %132 = icmp ne i32 %131, 2
  %133 = select i1 %132, i1 %76, i1 false
  %134 = shl i64 %80, 2
  %135 = and i64 %134, 4294967292
  %136 = getelementptr inbounds %struct.MCol, ptr %56, i64 %135
  %137 = select i1 %133, ptr %136, ptr null
  %138 = icmp eq ptr %83, null
  br i1 %138, label %139, label %169

139:                                              ; preds = %130
  %140 = getelementptr inbounds %struct.MFace, ptr %81, i64 0, i32 6
  %141 = load i8, ptr %140, align 1, !tbaa !164
  %142 = and i8 %141, 1
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %169

144:                                              ; preds = %139
  %145 = icmp eq ptr %82, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %144
  call void @glNormal3fv(ptr noundef nonnull %82) #16
  br label %169

147:                                              ; preds = %144
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  %148 = getelementptr inbounds %struct.MFace, ptr %81, i64 0, i32 3
  %149 = load i32, ptr %148, align 4, !tbaa !160
  %150 = icmp eq i32 %149, 0
  %151 = load i32, ptr %81, align 4, !tbaa !156
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.MVert, ptr %9, i64 %152
  %154 = getelementptr inbounds %struct.MFace, ptr %81, i64 0, i32 1
  %155 = load i32, ptr %154, align 4, !tbaa !158
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.MVert, ptr %9, i64 %156
  %158 = getelementptr inbounds %struct.MFace, ptr %81, i64 0, i32 2
  %159 = load i32, ptr %158, align 4, !tbaa !159
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.MVert, ptr %9, i64 %160
  br i1 %150, label %166, label %162

162:                                              ; preds = %147
  %163 = zext i32 %149 to i64
  %164 = getelementptr inbounds %struct.MVert, ptr %9, i64 %163
  %165 = call float @normal_quad_v3(ptr noundef nonnull %7, ptr noundef %153, ptr noundef %157, ptr noundef %161, ptr noundef nonnull %164) #16
  br label %168

166:                                              ; preds = %147
  %167 = call float @normal_tri_v3(ptr noundef nonnull %7, ptr noundef %153, ptr noundef %157, ptr noundef %161) #16
  br label %168

168:                                              ; preds = %166, %162
  call void @glNormal3fv(ptr noundef nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  br label %169

169:                                              ; preds = %146, %168, %139, %130
  %170 = getelementptr inbounds %struct.MFace, ptr %81, i64 0, i32 3
  %171 = load i32, ptr %170, align 4, !tbaa !160
  %172 = icmp eq i32 %171, 0
  %173 = select i1 %172, i32 4, i32 7
  call void @glBegin(i32 noundef %173) #16
  %174 = icmp eq ptr %100, null
  br i1 %174, label %176, label %175

175:                                              ; preds = %169
  call void @glTexCoord2fv(ptr noundef nonnull %100) #16
  br label %176

176:                                              ; preds = %175, %169
  br i1 %69, label %179, label %177

177:                                              ; preds = %176
  %178 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !51
  call void %178(i32 noundef 33986, ptr noundef %100) #16
  br label %179

179:                                              ; preds = %177, %176
  %180 = icmp eq ptr %137, null
  br i1 %180, label %188, label %181

181:                                              ; preds = %179
  %182 = getelementptr inbounds i8, ptr %137, i64 3
  %183 = load i8, ptr %182, align 1, !tbaa !204
  %184 = getelementptr inbounds i8, ptr %137, i64 2
  %185 = load i8, ptr %184, align 1, !tbaa !204
  %186 = getelementptr inbounds i8, ptr %137, i64 1
  %187 = load i8, ptr %186, align 1, !tbaa !204
  call void @glColor3ub(i8 noundef zeroext %183, i8 noundef zeroext %185, i8 noundef zeroext %187) #16
  br label %188

188:                                              ; preds = %181, %179
  %189 = load i32, ptr %81, align 4, !tbaa !156
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds %struct.MVert, ptr %9, i64 %190
  br i1 %138, label %192, label %199

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.MFace, ptr %81, i64 0, i32 6
  %194 = load i8, ptr %193, align 1, !tbaa !164
  %195 = and i8 %194, 1
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %192
  %198 = getelementptr inbounds %struct.MVert, ptr %9, i64 %190, i32 1
  br label %199

199:                                              ; preds = %188, %197
  %200 = phi ptr [ %198, %197 ], [ %83, %188 ]
  call void @glNormal3sv(ptr noundef nonnull %200) #16
  br label %201

201:                                              ; preds = %199, %192
  call void @glVertex3fv(ptr noundef %191) #16
  br i1 %174, label %204, label %202

202:                                              ; preds = %201
  %203 = getelementptr inbounds [4 x [2 x float]], ptr %100, i64 0, i64 1
  call void @glTexCoord2fv(ptr noundef nonnull %203) #16
  br label %204

204:                                              ; preds = %202, %201
  br i1 %69, label %208, label %205

205:                                              ; preds = %204
  %206 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !51
  %207 = getelementptr inbounds [4 x [2 x float]], ptr %100, i64 0, i64 1
  call void %206(i32 noundef 33986, ptr noundef nonnull %207) #16
  br label %208

208:                                              ; preds = %205, %204
  br i1 %180, label %216, label %209

209:                                              ; preds = %208
  %210 = getelementptr inbounds i8, ptr %137, i64 7
  %211 = load i8, ptr %210, align 1, !tbaa !204
  %212 = getelementptr inbounds i8, ptr %137, i64 6
  %213 = load i8, ptr %212, align 1, !tbaa !204
  %214 = getelementptr inbounds i8, ptr %137, i64 5
  %215 = load i8, ptr %214, align 1, !tbaa !204
  call void @glColor3ub(i8 noundef zeroext %211, i8 noundef zeroext %213, i8 noundef zeroext %215) #16
  br label %216

216:                                              ; preds = %209, %208
  %217 = getelementptr inbounds %struct.MFace, ptr %81, i64 0, i32 1
  %218 = load i32, ptr %217, align 4, !tbaa !158
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds %struct.MVert, ptr %9, i64 %219
  br i1 %138, label %223, label %221

221:                                              ; preds = %216
  %222 = getelementptr inbounds [4 x [3 x i16]], ptr %83, i64 0, i64 1
  br label %230

223:                                              ; preds = %216
  %224 = getelementptr inbounds %struct.MFace, ptr %81, i64 0, i32 6
  %225 = load i8, ptr %224, align 1, !tbaa !164
  %226 = and i8 %225, 1
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %232, label %228

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct.MVert, ptr %9, i64 %219, i32 1
  br label %230

230:                                              ; preds = %221, %228
  %231 = phi ptr [ %229, %228 ], [ %222, %221 ]
  call void @glNormal3sv(ptr noundef nonnull %231) #16
  br label %232

232:                                              ; preds = %230, %223
  call void @glVertex3fv(ptr noundef %220) #16
  br i1 %174, label %235, label %233

233:                                              ; preds = %232
  %234 = getelementptr inbounds [4 x [2 x float]], ptr %100, i64 0, i64 2
  call void @glTexCoord2fv(ptr noundef nonnull %234) #16
  br label %235

235:                                              ; preds = %233, %232
  br i1 %69, label %239, label %236

236:                                              ; preds = %235
  %237 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !51
  %238 = getelementptr inbounds [4 x [2 x float]], ptr %100, i64 0, i64 2
  call void %237(i32 noundef 33986, ptr noundef nonnull %238) #16
  br label %239

239:                                              ; preds = %236, %235
  br i1 %180, label %247, label %240

240:                                              ; preds = %239
  %241 = getelementptr inbounds i8, ptr %137, i64 11
  %242 = load i8, ptr %241, align 1, !tbaa !204
  %243 = getelementptr inbounds i8, ptr %137, i64 10
  %244 = load i8, ptr %243, align 1, !tbaa !204
  %245 = getelementptr inbounds i8, ptr %137, i64 9
  %246 = load i8, ptr %245, align 1, !tbaa !204
  call void @glColor3ub(i8 noundef zeroext %242, i8 noundef zeroext %244, i8 noundef zeroext %246) #16
  br label %247

247:                                              ; preds = %240, %239
  %248 = getelementptr inbounds %struct.MFace, ptr %81, i64 0, i32 2
  %249 = load i32, ptr %248, align 4, !tbaa !159
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds %struct.MVert, ptr %9, i64 %250
  br i1 %138, label %254, label %252

252:                                              ; preds = %247
  %253 = getelementptr inbounds [4 x [3 x i16]], ptr %83, i64 0, i64 2
  br label %261

254:                                              ; preds = %247
  %255 = getelementptr inbounds %struct.MFace, ptr %81, i64 0, i32 6
  %256 = load i8, ptr %255, align 1, !tbaa !164
  %257 = and i8 %256, 1
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %263, label %259

259:                                              ; preds = %254
  %260 = getelementptr inbounds %struct.MVert, ptr %9, i64 %250, i32 1
  br label %261

261:                                              ; preds = %252, %259
  %262 = phi ptr [ %260, %259 ], [ %253, %252 ]
  call void @glNormal3sv(ptr noundef nonnull %262) #16
  br label %263

263:                                              ; preds = %261, %254
  call void @glVertex3fv(ptr noundef %251) #16
  %264 = load i32, ptr %170, align 4, !tbaa !160
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %297, label %266

266:                                              ; preds = %263
  br i1 %174, label %269, label %267

267:                                              ; preds = %266
  %268 = getelementptr inbounds [4 x [2 x float]], ptr %100, i64 0, i64 3
  call void @glTexCoord2fv(ptr noundef nonnull %268) #16
  br label %269

269:                                              ; preds = %267, %266
  br i1 %69, label %273, label %270

270:                                              ; preds = %269
  %271 = load ptr, ptr @__glewMultiTexCoord2fv, align 8, !tbaa !51
  %272 = getelementptr inbounds [4 x [2 x float]], ptr %100, i64 0, i64 3
  call void %271(i32 noundef 33986, ptr noundef nonnull %272) #16
  br label %273

273:                                              ; preds = %270, %269
  br i1 %180, label %281, label %274

274:                                              ; preds = %273
  %275 = getelementptr inbounds i8, ptr %137, i64 15
  %276 = load i8, ptr %275, align 1, !tbaa !204
  %277 = getelementptr inbounds i8, ptr %137, i64 14
  %278 = load i8, ptr %277, align 1, !tbaa !204
  %279 = getelementptr inbounds i8, ptr %137, i64 13
  %280 = load i8, ptr %279, align 1, !tbaa !204
  call void @glColor3ub(i8 noundef zeroext %276, i8 noundef zeroext %278, i8 noundef zeroext %280) #16
  br label %281

281:                                              ; preds = %274, %273
  %282 = load i32, ptr %170, align 4, !tbaa !160
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds %struct.MVert, ptr %9, i64 %283
  br i1 %138, label %287, label %285

285:                                              ; preds = %281
  %286 = getelementptr inbounds [4 x [3 x i16]], ptr %83, i64 0, i64 3
  br label %294

287:                                              ; preds = %281
  %288 = getelementptr inbounds %struct.MFace, ptr %81, i64 0, i32 6
  %289 = load i8, ptr %288, align 1, !tbaa !164
  %290 = and i8 %289, 1
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %296, label %292

292:                                              ; preds = %287
  %293 = getelementptr inbounds %struct.MVert, ptr %9, i64 %283, i32 1
  br label %294

294:                                              ; preds = %285, %292
  %295 = phi ptr [ %293, %292 ], [ %286, %285 ]
  call void @glNormal3sv(ptr noundef nonnull %295) #16
  br label %296

296:                                              ; preds = %294, %287
  call void @glVertex3fv(ptr noundef %284) #16
  br label %297

297:                                              ; preds = %296, %263
  call void @glEnd() #16
  br label %298

298:                                              ; preds = %297, %127
  %299 = icmp eq ptr %82, null
  %300 = getelementptr inbounds float, ptr %82, i64 3
  %301 = select i1 %299, ptr null, ptr %300
  %302 = icmp eq ptr %83, null
  %303 = getelementptr inbounds [4 x [3 x i16]], ptr %83, i64 1
  %304 = select i1 %302, ptr null, ptr %303
  br label %305

305:                                              ; preds = %298, %123, %115
  %306 = phi ptr [ %304, %298 ], [ %83, %115 ], [ %83, %123 ]
  %307 = phi ptr [ %301, %298 ], [ %118, %115 ], [ %126, %123 ]
  %308 = add nuw nsw i64 %80, 1
  %309 = getelementptr inbounds %struct.MFace, ptr %81, i64 1
  %310 = load i32, ptr %70, align 8, !tbaa !43
  %311 = sext i32 %310 to i64
  %312 = icmp slt i64 %308, %311
  br i1 %312, label %79, label %407, !llvm.loop !396

313:                                              ; preds = %54
  tail call void @GPU_vertex_setup(ptr noundef nonnull %0) #16
  tail call void @GPU_normal_setup(ptr noundef nonnull %0) #16
  %314 = and i32 %5, 8
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %317, label %316

316:                                              ; preds = %313
  tail call void @GPU_texpaint_uv_setup(ptr noundef nonnull %0) #16
  br label %318

317:                                              ; preds = %313
  tail call void @GPU_uv_setup(ptr noundef nonnull %0) #16
  br label %318

318:                                              ; preds = %317, %316
  %319 = icmp ne ptr %56, null
  br i1 %319, label %320, label %321

320:                                              ; preds = %318
  tail call void @GPU_color_setup(ptr noundef nonnull %0, i32 noundef %55) #16
  br label %321

321:                                              ; preds = %320, %318
  %322 = tail call zeroext i8 @GPU_buffer_legacy(ptr noundef nonnull %0) #16
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %324, label %406

324:                                              ; preds = %321
  %325 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 13
  %326 = load ptr, ptr %325, align 8, !tbaa !312
  %327 = getelementptr inbounds %struct.GPUDrawObject, ptr %326, i64 0, i32 11
  %328 = load i32, ptr %327, align 4, !tbaa !313
  %329 = getelementptr inbounds %struct.GPUDrawObject, ptr %326, i64 0, i32 6
  %330 = load ptr, ptr %329, align 8, !tbaa !343
  %331 = load i32, ptr %330, align 4, !tbaa !119
  tail call void @glShadeModel(i32 noundef 7425) #16
  %332 = icmp sgt i32 %328, 2
  br i1 %332, label %333, label %406

333:                                              ; preds = %324
  %334 = udiv i32 %328, 3
  %335 = add nsw i32 %334, -1
  %336 = icmp eq ptr %1, null
  %337 = icmp ne i8 %19, 0
  %338 = icmp ne ptr %16, null
  %339 = select i1 %337, i1 %338, i1 false
  %340 = zext i1 %319 to i8
  %341 = icmp eq ptr %2, null
  %342 = icmp eq ptr %3, null
  %343 = zext nneg i32 %335 to i64
  %344 = zext nneg i32 %334 to i64
  br label %345

345:                                              ; preds = %333, %402
  %346 = phi i64 [ 0, %333 ], [ %404, %402 ]
  %347 = phi i32 [ %331, %333 ], [ %358, %402 ]
  %348 = phi i32 [ 0, %333 ], [ %403, %402 ]
  %349 = icmp eq i64 %346, %343
  br i1 %349, label %357, label %350

350:                                              ; preds = %345
  %351 = load ptr, ptr %325, align 8, !tbaa !312
  %352 = getelementptr inbounds %struct.GPUDrawObject, ptr %351, i64 0, i32 6
  %353 = load ptr, ptr %352, align 8, !tbaa !343
  %354 = getelementptr i32, ptr %353, i64 %346
  %355 = getelementptr i32, ptr %354, i64 1
  %356 = load i32, ptr %355, align 4, !tbaa !119
  br label %357

357:                                              ; preds = %350, %345
  %358 = phi i32 [ %356, %350 ], [ %347, %345 ]
  br i1 %336, label %367, label %359

359:                                              ; preds = %357
  %360 = sext i32 %347 to i64
  %361 = getelementptr inbounds %struct.MTFace, ptr %16, i64 %360
  %362 = select i1 %339, ptr %361, ptr null
  %363 = getelementptr inbounds %struct.MFace, ptr %10, i64 %360, i32 4
  %364 = load i16, ptr %363, align 4, !tbaa !163
  %365 = sext i16 %364 to i32
  %366 = tail call i32 %1(ptr noundef %362, i8 noundef zeroext %340, i32 noundef %365) #16
  br label %377

367:                                              ; preds = %357
  br i1 %25, label %374, label %368

368:                                              ; preds = %367
  %369 = tail call fastcc i32 @DM_origindex_mface_mpoly(ptr noundef nonnull %21, ptr noundef %24, i32 noundef %347) #17
  %370 = icmp eq i32 %369, -1
  %371 = or i1 %341, %370
  br i1 %371, label %377, label %372

372:                                              ; preds = %368
  %373 = tail call i32 %2(ptr noundef %4, i32 noundef %369) #16
  br label %377

374:                                              ; preds = %367
  br i1 %341, label %377, label %375

375:                                              ; preds = %374
  %376 = tail call i32 %2(ptr noundef %4, i32 noundef %347) #16
  br label %377

377:                                              ; preds = %368, %372, %375, %374, %359
  %378 = phi i32 [ %366, %359 ], [ %373, %372 ], [ %376, %375 ], [ 1, %374 ], [ 1, %368 ]
  %379 = icmp eq i32 %378, 0
  %380 = or i1 %349, %379
  %381 = or i1 %342, %380
  br i1 %381, label %385, label %382

382:                                              ; preds = %377
  %383 = tail call i32 %3(ptr noundef %4, i32 noundef %347, i32 noundef %358) #16
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %386, label %402

385:                                              ; preds = %377
  br i1 %380, label %386, label %402

386:                                              ; preds = %382, %385
  %387 = trunc i64 %346 to i32
  %388 = sub nsw i32 %387, %348
  %389 = icmp ne i32 %378, 0
  %390 = zext i1 %389 to i32
  %391 = add nsw i32 %388, %390
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %399, label %393

393:                                              ; preds = %386
  %394 = mul nsw i32 %391, 3
  %395 = mul nsw i32 %348, 3
  %396 = icmp ne i32 %378, 2
  %397 = and i1 %319, %396
  %398 = zext i1 %397 to i32
  tail call void @GPU_color_switch(i32 noundef %398) #16
  tail call void @glDrawArrays(i32 noundef 4, i32 noundef %395, i32 noundef %394) #16
  br label %399

399:                                              ; preds = %393, %386
  %400 = trunc i64 %346 to i32
  %401 = add i32 %400, 1
  br label %402

402:                                              ; preds = %382, %399, %385
  %403 = phi i32 [ %401, %399 ], [ %348, %385 ], [ %348, %382 ]
  %404 = add nuw nsw i64 %346, 1
  %405 = icmp eq i64 %404, %344
  br i1 %405, label %406, label %345, !llvm.loop !397

406:                                              ; preds = %402, %324, %321
  tail call void @GPU_buffer_unbind() #16
  tail call void @glShadeModel(i32 noundef 7424) #16
  br label %407

407:                                              ; preds = %305, %68, %406, %36, %40
  ret void
}

; Function Attrs: optsize
declare i32 @GPU_set_tpage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cdDM_update_normals_from_pbvh(ptr noundef %0) unnamed_addr #0 !PGOFuncName !398 {
  %2 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !292
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 7
  %7 = load i8, ptr %6, align 8, !tbaa !296
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !43
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %15 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %14, i32 noundef 8) #16
  %16 = load ptr, ptr %2, align 8, !tbaa !292
  tail call void @BKE_pbvh_update(ptr noundef %16, i32 noundef 2, ptr noundef %15) #16
  br label %17

17:                                               ; preds = %1, %5, %9, %13
  ret void
}

; Function Attrs: optsize
declare i32 @CustomData_get_stencil_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_get_layer_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DM_paint_uvlayer_active_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @DM_origindex_mface_mpoly(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #6 !PGOFuncName !399 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds i32, ptr %0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !119
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = icmp eq ptr %1, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = sext i32 %6 to i64
  %12 = getelementptr inbounds i32, ptr %1, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !119
  br label %14

14:                                               ; preds = %8, %3, %10
  %15 = phi i32 [ %13, %10 ], [ -1, %3 ], [ %6, %8 ]
  ret i32 %15
}

; Function Attrs: optsize
declare void @glTexCoord2fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_texpaint_uv_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_uv_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_color_setup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_color_switch(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pbvh_update(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPolygonStipple(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_vertex_attributes_from_gpu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cddm_draw_attrib_vertex(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i8 noundef zeroext %6) unnamed_addr #0 !PGOFuncName !400 {
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %10 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 4, !tbaa !348
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !367
  %16 = icmp eq ptr %15, null
  %17 = sext i32 %3 to i64
  %18 = getelementptr inbounds [3 x float], ptr %15, i64 %17
  %19 = select i1 %16, ptr %8, ptr %18
  %20 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 3, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !401
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  call void @glTexCoord3fv(ptr noundef %19) #16
  br label %28

24:                                               ; preds = %13
  %25 = load ptr, ptr @__glewVertexAttrib3fvARB, align 8, !tbaa !51
  %26 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 3, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !352
  call void %25(i32 noundef %27, ptr noundef %19) #16
  br label %28

28:                                               ; preds = %23, %24, %7
  %29 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !357
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = sext i32 %2 to i64
  %34 = zext nneg i32 %4 to i64
  br label %46

35:                                               ; preds = %62, %28
  %36 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 5
  %37 = load i32, ptr %36, align 4, !tbaa !358
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %91

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
  %49 = load ptr, ptr %48, align 8, !tbaa !359
  %50 = icmp eq ptr %49, null
  %51 = getelementptr inbounds %struct.MTFace, ptr %49, i64 %33
  %52 = getelementptr inbounds [4 x [2 x float]], ptr %51, i64 0, i64 %34
  %53 = select i1 %50, ptr %8, ptr %52
  %54 = getelementptr inbounds [8 x %struct.anon.0], ptr %0, i64 0, i64 %47, i32 3
  %55 = load i32, ptr %54, align 8, !tbaa !402
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %46
  call void @glTexCoord2fv(ptr noundef %53) #16
  br label %62

58:                                               ; preds = %46
  %59 = load ptr, ptr @__glewVertexAttrib2fvARB, align 8, !tbaa !51
  %60 = getelementptr inbounds [8 x %struct.anon.0], ptr %0, i64 0, i64 %47, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !360
  call void %59(i32 noundef %61, ptr noundef %53) #16
  br label %62

62:                                               ; preds = %58, %57
  %63 = add nuw nsw i64 %47, 1
  %64 = load i32, ptr %29, align 8, !tbaa !357
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %46, label %35, !llvm.loop !403

67:                                               ; preds = %39, %82
  %68 = phi i64 [ 0, %39 ], [ %87, %82 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  %69 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 1, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !362
  %71 = icmp eq ptr %70, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.MCol, ptr %70, i64 %42
  %74 = getelementptr inbounds %struct.MCol, ptr %70, i64 %42, i32 3
  %75 = load i8, ptr %74, align 1, !tbaa !404
  store i8 %75, ptr %9, align 1, !tbaa !204
  %76 = getelementptr inbounds %struct.MCol, ptr %70, i64 %42, i32 2
  %77 = load i8, ptr %76, align 1, !tbaa !406
  store i8 %77, ptr %43, align 1, !tbaa !204
  %78 = getelementptr inbounds %struct.MCol, ptr %70, i64 %42, i32 1
  %79 = load i8, ptr %78, align 1, !tbaa !407
  store i8 %79, ptr %44, align 1, !tbaa !204
  %80 = load i8, ptr %73, align 1, !tbaa !408
  br label %82

81:                                               ; preds = %67
  store i8 0, ptr %9, align 1, !tbaa !204
  store i8 0, ptr %43, align 1, !tbaa !204
  store i8 0, ptr %44, align 1, !tbaa !204
  br label %82

82:                                               ; preds = %81, %72
  %83 = phi i8 [ %80, %72 ], [ 0, %81 ]
  store i8 %83, ptr %45, align 1, !tbaa !204
  %84 = load ptr, ptr @__glewVertexAttrib4ubvARB, align 8, !tbaa !51
  %85 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 1, i64 %68, i32 2
  %86 = load i32, ptr %85, align 4, !tbaa !363
  call void %84(i32 noundef %86, ptr noundef nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  %87 = add nuw nsw i64 %68, 1
  %88 = load i32, ptr %36, align 4, !tbaa !358
  %89 = sext i32 %88 to i64
  %90 = icmp slt i64 %87, %89
  br i1 %90, label %67, label %91, !llvm.loop !409

91:                                               ; preds = %82, %35
  %92 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 6
  %93 = load i32, ptr %92, align 8, !tbaa !365
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !370
  %98 = icmp eq ptr %97, null
  %99 = shl nsw i32 %2, 2
  %100 = add nsw i32 %99, %4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [4 x float], ptr %97, i64 %101
  %103 = select i1 %98, ptr %8, ptr %102
  %104 = load ptr, ptr @__glewVertexAttrib4fvARB, align 8, !tbaa !51
  %105 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 2, i32 2
  %106 = load i32, ptr %105, align 4, !tbaa !366
  call void %104(i32 noundef %106, ptr noundef %103) #16
  br label %107

107:                                              ; preds = %95, %91
  %108 = icmp eq ptr %5, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %107
  %110 = icmp eq i8 %6, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %109
  %112 = sext i32 %3 to i64
  %113 = getelementptr inbounds %struct.MVert, ptr %1, i64 %112, i32 1
  br label %114

114:                                              ; preds = %107, %111
  %115 = phi ptr [ %113, %111 ], [ %5, %107 ]
  call void @glNormal3sv(ptr noundef nonnull %115) #16
  br label %116

116:                                              ; preds = %114, %109
  %117 = sext i32 %3 to i64
  %118 = getelementptr inbounds %struct.MVert, ptr %1, i64 %117
  call void @glVertex3fv(ptr noundef %118) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18
  ret void
}

; Function Attrs: optsize
declare void @GPU_buffer_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_interleaved_attrib_setup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_buffer_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GPU_attrib_element_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GPU_buffer_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GPU_buffer_lock_stream(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !410 {
  %3 = load float, ptr %1, align 4, !tbaa !134
  store float %3, ptr %0, align 4, !tbaa !134
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !134
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4_char(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !411 {
  %3 = load i8, ptr %1, align 1, !tbaa !204
  store i8 %3, ptr %0, align 1, !tbaa !204
  %4 = getelementptr inbounds i8, ptr %1, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !204
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !204
  %7 = getelementptr inbounds i8, ptr %1, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !204
  %9 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !204
  %10 = getelementptr inbounds i8, ptr %1, i64 3
  %11 = load i8, ptr %10, align 1, !tbaa !204
  %12 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !204
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !412 {
  %3 = load float, ptr %1, align 4, !tbaa !134
  store float %3, ptr %0, align 4, !tbaa !134
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !134
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !134
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !134
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !134
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !134
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !134
  ret void
}

; Function Attrs: optsize
declare void @glTexCoord3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DM_get_loop_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DM_get_poly_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_calc_poly_center(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_calc_poly_normal(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @DM_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cdDM_free_internal(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !413 {
  %2 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !216
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %6(ptr noundef nonnull %3) #16
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.CDDerivedMesh, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !217
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %12(ptr noundef nonnull %9) #16
  br label %13

13:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: optsize
declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_from_bmeshpoly(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !414 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #17
  %4 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #17
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #14 !PGOFuncName !415 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !416
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_float_to_short_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !417 {
  %3 = load <2 x float>, ptr %1, align 4, !tbaa !134
  %4 = fmul <2 x float> %3, <float 3.276700e+04, float 3.276700e+04>
  %5 = fptosi <2 x float> %4 to <2 x i16>
  store <2 x i16> %5, ptr %0, align 2, !tbaa !196
  %6 = getelementptr inbounds float, ptr %1, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !134
  %8 = fmul float %7, 3.276700e+04
  %9 = fptosi float %8 to i16
  %10 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %9, ptr %10, align 2, !tbaa !196
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BM_vert_flag_to_mflag(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_from_bmesh_block(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !418 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !419
  %4 = tail call ptr %3(ptr noundef %0) #16
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !421 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !416
  ret i32 %3
}

; Function Attrs: optsize
declare signext i16 @BM_edge_flag_to_mflag(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BM_face_flag_to_mflag(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @loops_to_customdata_corners(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !422 {
  %7 = load ptr, ptr %3, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !154
  %10 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %11 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %10, i32 noundef 32) #16
  %12 = icmp sgt i32 %5, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  br label %17

15:                                               ; preds = %42, %6
  %16 = icmp sgt i32 %4, 0
  br i1 %16, label %45, label %62

17:                                               ; preds = %13, %42
  %18 = phi i32 [ 0, %13 ], [ %43, %42 ]
  %19 = tail call ptr @CustomData_get_n(ptr noundef %1, i32 noundef 5, i32 noundef %2, i32 noundef %18) #16
  %20 = load ptr, ptr %9, align 8, !tbaa !180
  %21 = tail call ptr @CustomData_bmesh_get_n(ptr noundef nonnull %14, ptr noundef %20, i32 noundef 15, i32 noundef %18) #16
  %22 = load ptr, ptr %21, align 8, !tbaa !423
  %23 = getelementptr inbounds %struct.MTFace, ptr %19, i64 0, i32 1
  store ptr %22, ptr %23, align 8, !tbaa !425
  %24 = getelementptr inbounds %struct.MTexPoly, ptr %21, i64 0, i32 1
  %25 = load i8, ptr %24, align 8, !tbaa !427
  %26 = getelementptr inbounds %struct.MTFace, ptr %19, i64 0, i32 2
  store i8 %25, ptr %26, align 8, !tbaa !428
  %27 = getelementptr inbounds %struct.MTexPoly, ptr %21, i64 0, i32 2
  %28 = load i8, ptr %27, align 1, !tbaa !429
  %29 = getelementptr inbounds %struct.MTFace, ptr %19, i64 0, i32 3
  store i8 %28, ptr %29, align 1, !tbaa !430
  %30 = getelementptr inbounds %struct.MTexPoly, ptr %21, i64 0, i32 3
  %31 = getelementptr inbounds %struct.MTFace, ptr %19, i64 0, i32 4
  %32 = load <2 x i16>, ptr %30, align 2, !tbaa !196
  store <2 x i16> %32, ptr %31, align 2, !tbaa !196
  br label %33

33:                                               ; preds = %17, %33
  %34 = phi i64 [ 0, %17 ], [ %40, %33 ]
  %35 = getelementptr inbounds ptr, ptr %3, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !51
  %37 = load ptr, ptr %36, align 8, !tbaa !177
  %38 = tail call ptr @CustomData_bmesh_get_n(ptr noundef nonnull %10, ptr noundef %37, i32 noundef 16, i32 noundef %18) #16
  %39 = getelementptr inbounds [4 x [2 x float]], ptr %19, i64 0, i64 %34
  tail call fastcc void @copy_v2_v2(ptr noundef %39, ptr noundef %38) #17
  %40 = add nuw nsw i64 %34, 1
  %41 = icmp eq i64 %40, 3
  br i1 %41, label %42, label %33, !llvm.loop !431

42:                                               ; preds = %33
  %43 = add nuw nsw i32 %18, 1
  %44 = icmp eq i32 %43, %5
  br i1 %44, label %15, label %17, !llvm.loop !432

45:                                               ; preds = %15, %59
  %46 = phi i32 [ %60, %59 ], [ 0, %15 ]
  %47 = tail call ptr @CustomData_get_n(ptr noundef %1, i32 noundef 6, i32 noundef %2, i32 noundef %46) #16
  br label %48

48:                                               ; preds = %45, %48
  %49 = phi i64 [ 0, %45 ], [ %57, %48 ]
  %50 = getelementptr inbounds ptr, ptr %3, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !51
  %52 = load ptr, ptr %51, align 8, !tbaa !177
  %53 = tail call ptr @CustomData_bmesh_get_n(ptr noundef nonnull %10, ptr noundef %52, i32 noundef 17, i32 noundef %46) #16
  %54 = getelementptr inbounds %struct.MCol, ptr %47, i64 %49
  %55 = load <4 x i8>, ptr %53, align 1, !tbaa !204
  %56 = shufflevector <4 x i8> %55, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %56, ptr %54, align 1, !tbaa !204
  %57 = add nuw nsw i64 %49, 1
  %58 = icmp eq i64 %57, 3
  br i1 %58, label %59, label %48, !llvm.loop !433

59:                                               ; preds = %48
  %60 = add nuw nsw i32 %46, 1
  %61 = icmp eq i32 %60, %4
  br i1 %61, label %62, label %45, !llvm.loop !434

62:                                               ; preds = %59, %15
  %63 = icmp eq i8 %11, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %62
  %65 = tail call ptr @CustomData_get(ptr noundef %1, i32 noundef %2, i32 noundef 20) #16
  br label %66

66:                                               ; preds = %64, %66
  %67 = phi i64 [ 0, %64 ], [ %75, %66 ]
  %68 = getelementptr inbounds ptr, ptr %3, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !51
  %70 = load ptr, ptr %69, align 8, !tbaa !177
  %71 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %10, ptr noundef %70, i32 noundef 32) #16
  %72 = getelementptr inbounds %struct.MCol, ptr %65, i64 %67
  %73 = load <4 x i8>, ptr %71, align 1, !tbaa !204
  %74 = shufflevector <4 x i8> %73, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %74, ptr %72, align 1, !tbaa !204
  %75 = add nuw nsw i64 %67, 1
  %76 = icmp eq i64 %75, 3
  br i1 %76, label %77, label %66, !llvm.loop !435

77:                                               ; preds = %66, %62
  ret void
}

; Function Attrs: optsize
declare i32 @test_index_face(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BM_mesh_cd_flag_from_bmesh(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !436 {
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %4, align 4, !tbaa !437
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %5, align 8, !tbaa !438
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %6, align 8, !tbaa !419
  switch i8 %2, label %13 [
    i8 1, label %7
    i8 2, label %9
    i8 3, label %11
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  br label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  br label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  br label %14

13:                                               ; preds = %3
  unreachable

14:                                               ; preds = %11, %9, %7
  %15 = phi ptr [ %12, %11 ], [ %10, %9 ], [ %8, %7 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !51
  store ptr %16, ptr %0, align 8, !tbaa !204
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: optsize
declare ptr @CustomData_get_n(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get_n(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_DupPolys(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
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
!47 = !{!35, !38, i64 1696}
!48 = !{!35, !38, i64 1712}
!49 = !{!35, !38, i64 1720}
!50 = !{!"cdderivedmesh.c:cdDM_create"}
!51 = !{!38, !38, i64 0}
!52 = !{!36, !38, i64 1520}
!53 = !{!36, !38, i64 1104}
!54 = !{!36, !38, i64 1112}
!55 = !{!36, !38, i64 1120}
!56 = !{!36, !38, i64 1128}
!57 = !{!36, !38, i64 1136}
!58 = !{!36, !38, i64 1144}
!59 = !{!36, !38, i64 1152}
!60 = !{!36, !38, i64 1160}
!61 = !{!36, !38, i64 1208}
!62 = !{!36, !38, i64 1216}
!63 = !{!36, !38, i64 1224}
!64 = !{!36, !38, i64 1232}
!65 = !{!36, !38, i64 1240}
!66 = !{!36, !38, i64 1288}
!67 = !{!36, !38, i64 1296}
!68 = !{!36, !38, i64 1304}
!69 = !{!36, !38, i64 1320}
!70 = !{!36, !38, i64 1328}
!71 = !{!36, !38, i64 1336}
!72 = !{!36, !38, i64 1080}
!73 = !{!36, !38, i64 1088}
!74 = !{!36, !38, i64 1096}
!75 = !{!36, !38, i64 1536}
!76 = !{!36, !38, i64 1528}
!77 = !{!36, !38, i64 1544}
!78 = !{!36, !38, i64 1568}
!79 = !{!36, !38, i64 1560}
!80 = !{!36, !38, i64 1576}
!81 = !{!36, !38, i64 1584}
!82 = !{!36, !38, i64 1592}
!83 = !{!36, !38, i64 1600}
!84 = !{!36, !38, i64 1656}
!85 = !{!36, !38, i64 1608}
!86 = !{!36, !38, i64 1616}
!87 = !{!36, !38, i64 1624}
!88 = !{!36, !38, i64 1632}
!89 = !{!36, !38, i64 1640}
!90 = !{!36, !38, i64 1648}
!91 = !{!36, !38, i64 1672}
!92 = !{!36, !38, i64 1488}
!93 = !{!36, !38, i64 1496}
!94 = !{!36, !38, i64 1504}
!95 = !{!36, !38, i64 1512}
!96 = !{!36, !38, i64 1680}
!97 = !{!98, !98, i64 0}
!98 = !{!"long", !39, i64 0}
!99 = !{!100, !41, i64 1280}
!100 = !{!"Mesh", !101, i64 0, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !38, i64 152, !38, i64 160, !38, i64 168, !38, i64 176, !38, i64 184, !38, i64 192, !38, i64 200, !38, i64 208, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !37, i64 280, !37, i64 480, !37, i64 680, !37, i64 880, !37, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !39, i64 1308, !39, i64 1320, !39, i64 1332, !41, i64 1344, !102, i64 1348, !102, i64 1350, !42, i64 1352, !41, i64 1356, !39, i64 1360, !39, i64 1361, !39, i64 1362, !39, i64 1363, !39, i64 1364, !39, i64 1365, !102, i64 1366, !38, i64 1368}
!101 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !39, i64 32, !102, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !38, i64 112}
!102 = !{!"short", !39, i64 0}
!103 = !{!100, !41, i64 1284}
!104 = !{!100, !41, i64 1288}
!105 = !{!100, !41, i64 1300}
!106 = !{!100, !41, i64 1296}
!107 = !{!36, !41, i64 1024}
!108 = !{!100, !39, i64 1360}
!109 = !{!36, !39, i64 1072}
!110 = !{!111, !38, i64 1280}
!111 = !{!"Object", !101, i64 0, !38, i64 120, !38, i64 128, !102, i64 136, !102, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !39, i64 152, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !38, i64 296, !38, i64 304, !112, i64 312, !38, i64 360, !113, i64 368, !113, i64 384, !113, i64 400, !113, i64 416, !41, i64 432, !41, i64 436, !38, i64 440, !38, i64 448, !41, i64 456, !41, i64 460, !39, i64 464, !39, i64 476, !39, i64 488, !39, i64 500, !39, i64 512, !39, i64 524, !39, i64 536, !39, i64 548, !39, i64 560, !39, i64 576, !39, i64 592, !39, i64 604, !42, i64 616, !42, i64 620, !39, i64 624, !39, i64 688, !39, i64 752, !39, i64 816, !39, i64 880, !41, i64 944, !102, i64 948, !102, i64 950, !102, i64 952, !102, i64 954, !102, i64 956, !102, i64 958, !102, i64 960, !102, i64 962, !102, i64 964, !39, i64 966, !39, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !102, i64 1036, !102, i64 1038, !102, i64 1040, !39, i64 1042, !39, i64 1043, !102, i64 1044, !39, i64 1046, !39, i64 1047, !42, i64 1048, !42, i64 1052, !113, i64 1056, !113, i64 1072, !113, i64 1088, !113, i64 1104, !42, i64 1120, !102, i64 1124, !102, i64 1126, !39, i64 1128, !41, i64 1144, !41, i64 1148, !38, i64 1152, !39, i64 1160, !39, i64 1161, !102, i64 1162, !39, i64 1164, !113, i64 1176, !113, i64 1192, !113, i64 1208, !113, i64 1224, !38, i64 1240, !38, i64 1248, !38, i64 1256, !39, i64 1264, !39, i64 1265, !102, i64 1266, !42, i64 1268, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !98, i64 1304, !98, i64 1312, !41, i64 1320, !41, i64 1324, !113, i64 1328, !113, i64 1344, !38, i64 1360, !38, i64 1368, !38, i64 1376, !39, i64 1384, !38, i64 1392, !113, i64 1400, !38, i64 1416}
!112 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !102, i64 16, !102, i64 18, !102, i64 20, !102, i64 22, !102, i64 24, !102, i64 26, !102, i64 28, !102, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!113 = !{!"ListBase", !38, i64 0, !38, i64 8}
!114 = !{i64 0, i64 8, !51, i64 8, i64 8, !51}
!115 = !{!111, !38, i64 296}
!116 = !{!117, !41, i64 268}
!117 = !{!"Curve", !101, i64 0, !38, i64 120, !38, i64 128, !113, i64 136, !38, i64 152, !38, i64 160, !38, i64 168, !38, i64 176, !38, i64 184, !38, i64 192, !38, i64 200, !39, i64 208, !39, i64 220, !39, i64 232, !102, i64 244, !102, i64 246, !102, i64 248, !102, i64 250, !42, i64 252, !42, i64 256, !41, i64 260, !102, i64 264, !102, i64 266, !41, i64 268, !42, i64 272, !42, i64 276, !42, i64 280, !102, i64 284, !102, i64 286, !102, i64 288, !102, i64 290, !41, i64 292, !41, i64 296, !39, i64 300, !102, i64 304, !39, i64 306, !39, i64 307, !42, i64 308, !42, i64 312, !42, i64 316, !42, i64 320, !42, i64 324, !42, i64 328, !42, i64 332, !42, i64 336, !42, i64 340, !42, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !38, i64 368, !38, i64 376, !39, i64 384, !38, i64 448, !38, i64 456, !38, i64 464, !38, i64 472, !38, i64 480, !41, i64 488, !41, i64 492, !38, i64 496, !118, i64 504, !42, i64 512, !42, i64 516, !42, i64 520, !39, i64 524, !39, i64 525, !39, i64 526}
!118 = !{!"CharInfo", !102, i64 0, !102, i64 2, !39, i64 4, !39, i64 5, !102, i64 6}
!119 = !{!41, !41, i64 0}
!120 = !{!36, !41, i64 1056}
!121 = !{!"cdderivedmesh.c:cddm_from_bmesh_ex"}
!122 = !{!123, !41, i64 0}
!123 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !39, i64 28, !39, i64 29, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !41, i64 128, !38, i64 136, !37, i64 144, !37, i64 344, !37, i64 544, !37, i64 744, !102, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !113, i64 960, !38, i64 976, !113, i64 984, !38, i64 1000}
!124 = !{!123, !41, i64 4}
!125 = !{!123, !41, i64 8}
!126 = !{!123, !41, i64 12}
!127 = !{!36, !41, i64 1000}
!128 = !{!36, !41, i64 1004}
!129 = !{!130, !39, i64 18}
!130 = !{!"MVert", !39, i64 0, !39, i64 12, !39, i64 18, !39, i64 19}
!131 = !{!132, !38, i64 0}
!132 = !{!"BMVert", !133, i64 0, !38, i64 16, !39, i64 24, !39, i64 36, !38, i64 48}
!133 = !{!"BMHeader", !38, i64 0, !41, i64 8, !39, i64 12, !39, i64 13, !39, i64 14}
!134 = !{!42, !42, i64 0}
!135 = !{!130, !39, i64 19}
!136 = distinct !{!136, !137}
!137 = !{!"llvm.loop.mustprogress"}
!138 = !{!123, !39, i64 28}
!139 = !{!140, !38, i64 24}
!140 = !{!"BMEdge", !133, i64 0, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !141, i64 48, !141, i64 64}
!141 = !{!"BMDiskLink", !38, i64 0, !38, i64 8}
!142 = !{!143, !41, i64 0}
!143 = !{!"MEdge", !41, i64 0, !41, i64 4, !39, i64 8, !39, i64 9, !102, i64 10}
!144 = !{!140, !38, i64 32}
!145 = !{!143, !41, i64 4}
!146 = !{!143, !102, i64 10}
!147 = !{!140, !38, i64 40}
!148 = !{!149, !38, i64 40}
!149 = !{!"BMLoop", !133, i64 0, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64}
!150 = !{!140, !38, i64 0}
!151 = !{!143, !39, i64 8}
!152 = !{!143, !39, i64 9}
!153 = distinct !{!153, !137}
!154 = !{!149, !38, i64 32}
!155 = !{!149, !38, i64 16}
!156 = !{!157, !41, i64 0}
!157 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !102, i64 16, !39, i64 18, !39, i64 19}
!158 = !{!157, !41, i64 4}
!159 = !{!157, !41, i64 8}
!160 = !{!157, !41, i64 12}
!161 = !{!162, !102, i64 48}
!162 = !{!"BMFace", !133, i64 0, !38, i64 16, !38, i64 24, !41, i64 32, !39, i64 36, !102, i64 48}
!163 = !{!157, !102, i64 16}
!164 = !{!157, !39, i64 19}
!165 = distinct !{!165, !137}
!166 = !{!162, !41, i64 32}
!167 = !{!168, !41, i64 4}
!168 = !{!"MPoly", !41, i64 0, !41, i64 4, !102, i64 8, !39, i64 10, !39, i64 11}
!169 = !{!168, !39, i64 10}
!170 = !{!168, !41, i64 0}
!171 = !{!168, !102, i64 8}
!172 = !{!162, !38, i64 24}
!173 = !{!174, !41, i64 0}
!174 = !{!"MLoop", !41, i64 0, !41, i64 4}
!175 = !{!149, !38, i64 24}
!176 = !{!174, !41, i64 4}
!177 = !{!149, !38, i64 0}
!178 = !{!149, !38, i64 56}
!179 = distinct !{!179, !137}
!180 = !{!162, !38, i64 0}
!181 = distinct !{!181, !137}
!182 = !{!183, !38, i64 0}
!183 = !{!"BMEditMesh", !38, i64 0, !38, i64 8, !41, i64 16, !38, i64 24, !41, i64 32, !38, i64 40, !38, i64 48, !98, i64 56, !38, i64 64, !41, i64 72, !38, i64 80, !41, i64 88, !102, i64 92, !102, i64 94, !38, i64 96, !41, i64 104}
!184 = !{!183, !41, i64 32}
!185 = !{!183, !38, i64 24}
!186 = !{!"cdderivedmesh.c:cddm_copy_ex"}
!187 = !{!36, !38, i64 1352}
!188 = !{!36, !38, i64 1248}
!189 = !{!36, !38, i64 1256}
!190 = !{!36, !38, i64 1264}
!191 = distinct !{!191, !137}
!192 = !{!35, !41, i64 1056}
!193 = !{!"cdderivedmesh.c:copy_v3_v3"}
!194 = distinct !{!194, !137}
!195 = !{!"cdderivedmesh.c:copy_v3_v3_short"}
!196 = !{!102, !102, i64 0}
!197 = !{!36, !38, i64 1168}
!198 = !{!36, !38, i64 1176}
!199 = !{!36, !38, i64 1192}
!200 = !{!36, !38, i64 1200}
!201 = !{!36, !38, i64 1384}
!202 = !{!36, !38, i64 1392}
!203 = !{i64 0, i64 12, !204, i64 12, i64 6, !204, i64 18, i64 1, !204, i64 19, i64 1, !204}
!204 = !{!39, !39, i64 0}
!205 = distinct !{!205, !137}
!206 = distinct !{!206, !137}
!207 = !{i64 0, i64 4, !119, i64 4, i64 4, !119, i64 8, i64 1, !204, i64 9, i64 1, !204, i64 10, i64 2, !196}
!208 = distinct !{!208, !137}
!209 = !{!210, !41, i64 0}
!210 = !{!"PolyKey", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!211 = !{!210, !41, i64 4}
!212 = !{!210, !41, i64 12}
!213 = !{!210, !41, i64 8}
!214 = distinct !{!214, !137}
!215 = distinct !{!215, !137}
!216 = !{!35, !38, i64 1744}
!217 = !{!35, !38, i64 1752}
!218 = distinct !{!218, !137}
!219 = distinct !{!219, !137}
!220 = !{!221, !41, i64 8}
!221 = !{!"MeshElemMap", !38, i64 0, !41, i64 8}
!222 = !{!221, !38, i64 0}
!223 = distinct !{!223, !137}
!224 = !{i32 0, i32 2}
!225 = distinct !{!225, !137}
!226 = !{i64 0, i64 4, !119, i64 4, i64 4, !119, i64 8, i64 2, !196, i64 10, i64 1, !204, i64 11, i64 1, !204}
!227 = distinct !{!227, !137}
!228 = !{!35, !41, i64 1004}
!229 = !{!35, !41, i64 1012}
!230 = distinct !{!230, !137}
!231 = !{!35, !41, i64 1000}
!232 = distinct !{!232, !137}
!233 = !{!35, !41, i64 1016}
!234 = distinct !{!234, !137}
!235 = distinct !{!235, !137}
!236 = !{!36, !41, i64 1020}
!237 = !{!"cdderivedmesh.c:poly_gset_hash_fn"}
!238 = !{!"cdderivedmesh.c:poly_gset_compare_fn"}
!239 = !{!"cdderivedmesh.c:cddm_poly_compare"}
!240 = distinct !{!240, !137}
!241 = distinct !{!241, !137}
!242 = distinct !{!242, !137}
!243 = distinct !{!243, !137}
!244 = distinct !{!244, !137}
!245 = !{i8 0, i8 2}
!246 = distinct !{!246, !137}
!247 = !{i64 0, i64 8, !51, i64 8, i64 164, !204, i64 172, i64 4, !119, i64 176, i64 4, !119, i64 180, i64 4, !119, i64 184, i64 8, !51, i64 192, i64 8, !51}
!248 = !{!"cdderivedmesh.c:BLI_edgesetIterator_new"}
!249 = !{!"cdderivedmesh.c:BLI_edgesetIterator_isDone"}
!250 = !{!"cdderivedmesh.c:BLI_edgesetIterator_getKey"}
!251 = !{!"cdderivedmesh.c:BLI_edgesetIterator_step"}
!252 = !{!"cdderivedmesh.c:BLI_edgesetIterator_free"}
!253 = distinct !{!253, !137}
!254 = distinct !{!254, !137}
!255 = distinct !{!255, !137}
!256 = distinct !{!256, !137}
!257 = distinct !{!257, !137}
!258 = distinct !{!258, !137}
!259 = !{!"cdderivedmesh.c:max_ii"}
!260 = !{!"cdderivedmesh.c:BLI_edgehashIterator_isDone"}
!261 = !{!262, !38, i64 8}
!262 = !{!"EdgeHashIterator", !38, i64 0, !38, i64 8, !41, i64 16}
!263 = !{!"cdderivedmesh.c:BLI_edgehashIterator_getKey"}
!264 = !{!265, !41, i64 8}
!265 = !{!"_eh_Entry", !38, i64 0, !41, i64 8, !41, i64 12, !38, i64 16}
!266 = !{!265, !41, i64 12}
!267 = !{!"cdderivedmesh.c:BLI_edgehashIterator_getValue"}
!268 = !{!265, !38, i64 16}
!269 = !{!"cdderivedmesh.c:BLI_edgehashIterator_setValue"}
!270 = !{!35, !41, i64 1008}
!271 = !{!"cdderivedmesh.c:cdDM_getMinMax"}
!272 = distinct !{!272, !137}
!273 = !{!"cdderivedmesh.c:cdDM_getNumVerts"}
!274 = !{!"cdderivedmesh.c:cdDM_getNumEdges"}
!275 = !{!"cdderivedmesh.c:cdDM_getNumTessFaces"}
!276 = !{!"cdderivedmesh.c:cdDM_getNumLoops"}
!277 = !{!"cdderivedmesh.c:cdDM_getNumPolys"}
!278 = !{!"cdderivedmesh.c:cdDM_getVert"}
!279 = !{!"cdderivedmesh.c:cdDM_getEdge"}
!280 = !{!"cdderivedmesh.c:cdDM_getTessFace"}
!281 = !{i64 0, i64 4, !119, i64 4, i64 4, !119, i64 8, i64 4, !119, i64 12, i64 4, !119, i64 16, i64 2, !196, i64 18, i64 1, !204, i64 19, i64 1, !204}
!282 = !{!"cdderivedmesh.c:cdDM_copyVertArray"}
!283 = !{!"cdderivedmesh.c:cdDM_copyEdgeArray"}
!284 = !{!"cdderivedmesh.c:cdDM_copyTessFaceArray"}
!285 = !{!"cdderivedmesh.c:cdDM_copyLoopArray"}
!286 = !{!"cdderivedmesh.c:cdDM_copyPolyArray"}
!287 = !{!"cdderivedmesh.c:cdDM_getVertCos"}
!288 = distinct !{!288, !137}
!289 = !{!"cdderivedmesh.c:cdDM_getVertCo"}
!290 = !{!"cdderivedmesh.c:cdDM_getVertNo"}
!291 = !{!"cdderivedmesh.c:cdDM_getPBVH"}
!292 = !{!35, !38, i64 1728}
!293 = !{!111, !38, i64 128}
!294 = !{!295, !38, i64 104}
!295 = !{!"SculptSession", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !41, i64 32, !41, i64 36, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !41, i64 80, !41, i64 84, !39, i64 88, !38, i64 96, !38, i64 104, !39, i64 112, !39, i64 113, !38, i64 120, !38, i64 128, !38, i64 136, !39, i64 144, !41, i64 148, !38, i64 152, !41, i64 160, !38, i64 168, !38, i64 176, !38, i64 184, !38, i64 192, !39, i64 200, !39, i64 204, !39, i64 216, !41, i64 228}
!296 = !{!35, !39, i64 1736}
!297 = !{!295, !38, i64 72}
!298 = !{!295, !39, i64 88}
!299 = !{!295, !38, i64 96}
!300 = !{!295, !41, i64 80}
!301 = !{!295, !41, i64 84}
!302 = !{!295, !39, i64 112}
!303 = !{!111, !102, i64 136}
!304 = !{!100, !38, i64 208}
!305 = !{!100, !38, i64 232}
!306 = !{!111, !38, i64 1288}
!307 = !{!"cdderivedmesh.c:cdDM_getPolyMap"}
!308 = !{!100, !38, i64 168}
!309 = !{!100, !38, i64 184}
!310 = !{!"cdderivedmesh.c:cdDM_drawVerts"}
!311 = distinct !{!311, !137}
!312 = !{!36, !38, i64 1040}
!313 = !{!314, !41, i64 84}
!314 = !{!"GPUDrawObject", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !41, i64 64, !38, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !39, i64 100}
!315 = !{!314, !41, i64 88}
!316 = !{!"cdderivedmesh.c:cdDM_drawUVEdges"}
!317 = distinct !{!317, !137}
!318 = distinct !{!318, !137}
!319 = !{!"cdderivedmesh.c:cdDM_drawEdges"}
!320 = distinct !{!320, !137}
!321 = !{!314, !38, i64 32}
!322 = distinct !{!322, !137}
!323 = !{!"cdderivedmesh.c:cdDM_drawLooseEdges"}
!324 = distinct !{!324, !137}
!325 = distinct !{!325, !137}
!326 = !{!"cdderivedmesh.c:cdDM_drawMappedEdges"}
!327 = distinct !{!327, !137}
!328 = !{!"cdderivedmesh.c:cdDM_drawFacesSolid"}
!329 = distinct !{!329, !137}
!330 = !{!314, !41, i64 80}
!331 = !{!314, !38, i64 72}
!332 = !{!333, !102, i64 8}
!333 = !{!"GPUBufferMaterial", !41, i64 0, !41, i64 4, !102, i64 8}
!334 = !{!333, !41, i64 0}
!335 = !{!333, !41, i64 4}
!336 = distinct !{!336, !137}
!337 = !{!"cdderivedmesh.c:cdDM_drawFacesTex"}
!338 = !{!"cdderivedmesh.c:cdDM_drawFacesGLSL"}
!339 = !{!"cdderivedmesh.c:cdDM_drawMappedFaces"}
!340 = !{!341, !41, i64 2096}
!341 = !{!"Global", !38, i64 0, !39, i64 8, !39, i64 1032, !39, i64 2056, !39, i64 2057, !39, i64 2058, !113, i64 2064, !39, i64 2080, !39, i64 2081, !39, i64 2082, !102, i64 2084, !102, i64 2086, !102, i64 2088, !39, i64 2090, !102, i64 2092, !41, i64 2096, !41, i64 2100, !39, i64 2104, !41, i64 2108, !41, i64 2112, !39, i64 2116}
!342 = distinct !{!342, !137}
!343 = !{!314, !38, i64 48}
!344 = distinct !{!344, !137}
!345 = !{!"cdderivedmesh.c:cdDM_drawMappedFacesTex"}
!346 = !{!"cdderivedmesh.c:cdDM_drawMappedFacesGLSL"}
!347 = distinct !{!347, !137}
!348 = !{!349, !41, i64 372}
!349 = !{!"DMVertexAttribs", !39, i64 0, !39, i64 192, !350, i64 320, !351, i64 336, !41, i64 360, !41, i64 364, !41, i64 368, !41, i64 372}
!350 = !{!"", !38, i64 0, !41, i64 8, !41, i64 12}
!351 = !{!"", !38, i64 0, !41, i64 8, !41, i64 12, !41, i64 16}
!352 = !{!349, !41, i64 348}
!353 = !{!354, !41, i64 0}
!354 = !{!"GPUAttrib", !41, i64 0, !41, i64 4, !41, i64 8}
!355 = !{!354, !41, i64 4}
!356 = !{!354, !41, i64 8}
!357 = !{!349, !41, i64 360}
!358 = !{!349, !41, i64 364}
!359 = !{!351, !38, i64 0}
!360 = !{!351, !41, i64 12}
!361 = distinct !{!361, !137}
!362 = !{!350, !38, i64 0}
!363 = !{!350, !41, i64 12}
!364 = distinct !{!364, !137}
!365 = !{!349, !41, i64 368}
!366 = !{!349, !41, i64 332}
!367 = !{!349, !38, i64 336}
!368 = distinct !{!368, !137}
!369 = distinct !{!369, !137}
!370 = !{!349, !38, i64 320}
!371 = distinct !{!371, !137}
!372 = distinct !{!372, !137}
!373 = distinct !{!373, !137}
!374 = !{!314, !39, i64 100}
!375 = !{!"cdderivedmesh.c:cdDM_drawMappedFacesMat"}
!376 = distinct !{!376, !137}
!377 = !{!"cdderivedmesh.c:cdDM_foreachMappedVert"}
!378 = distinct !{!378, !137}
!379 = distinct !{!379, !137}
!380 = !{!"cdderivedmesh.c:cdDM_foreachMappedEdge"}
!381 = distinct !{!381, !137}
!382 = !{!"cdderivedmesh.c:cdDM_foreachMappedLoop"}
!383 = distinct !{!383, !137}
!384 = distinct !{!384, !137}
!385 = !{!"cdderivedmesh.c:cdDM_foreachMappedFaceCenter"}
!386 = distinct !{!386, !137}
!387 = !{!"cdderivedmesh.c:cdDM_release"}
!388 = !{!"cdderivedmesh.c:zero_v3"}
!389 = !{!"cdderivedmesh.c:normal_short_to_float_v3"}
!390 = !{!"cdderivedmesh.c:can_pbvh_draw"}
!391 = !{!295, !38, i64 48}
!392 = !{!"cdderivedmesh.c:check_sculpt_object_deformed"}
!393 = !{!295, !39, i64 113}
!394 = !{!111, !39, i64 1265}
!395 = !{!"cdderivedmesh.c:cdDM_drawFacesTex_common"}
!396 = distinct !{!396, !137}
!397 = distinct !{!397, !137}
!398 = !{!"cdderivedmesh.c:cdDM_update_normals_from_pbvh"}
!399 = !{!"cdderivedmesh.c:DM_origindex_mface_mpoly"}
!400 = !{!"cdderivedmesh.c:cddm_draw_attrib_vertex"}
!401 = !{!349, !41, i64 352}
!402 = !{!351, !41, i64 16}
!403 = distinct !{!403, !137}
!404 = !{!405, !39, i64 3}
!405 = !{!"MCol", !39, i64 0, !39, i64 1, !39, i64 2, !39, i64 3}
!406 = !{!405, !39, i64 2}
!407 = !{!405, !39, i64 1}
!408 = !{!405, !39, i64 0}
!409 = distinct !{!409, !137}
!410 = !{!"cdderivedmesh.c:copy_v2_v2"}
!411 = !{!"cdderivedmesh.c:copy_v4_v4_char"}
!412 = !{!"cdderivedmesh.c:copy_v4_v4"}
!413 = !{!"cdderivedmesh.c:cdDM_free_internal"}
!414 = !{!"cdderivedmesh.c:BM_iter_new"}
!415 = !{!"cdderivedmesh.c:_bm_elem_index_set"}
!416 = !{!133, !41, i64 8}
!417 = !{!"cdderivedmesh.c:normal_float_to_short_v3"}
!418 = !{!"cdderivedmesh.c:BM_iter_step"}
!419 = !{!420, !38, i64 48}
!420 = !{!"BMIter", !39, i64 0, !38, i64 40, !38, i64 48, !41, i64 56, !39, i64 60}
!421 = !{!"cdderivedmesh.c:_bm_elem_index_get"}
!422 = !{!"cdderivedmesh.c:loops_to_customdata_corners"}
!423 = !{!424, !38, i64 0}
!424 = !{!"MTexPoly", !38, i64 0, !39, i64 8, !39, i64 9, !102, i64 10, !102, i64 12, !102, i64 14}
!425 = !{!426, !38, i64 32}
!426 = !{!"MTFace", !39, i64 0, !38, i64 32, !39, i64 40, !39, i64 41, !102, i64 42, !102, i64 44, !102, i64 46}
!427 = !{!424, !39, i64 8}
!428 = !{!426, !39, i64 40}
!429 = !{!424, !39, i64 9}
!430 = !{!426, !39, i64 41}
!431 = distinct !{!431, !137}
!432 = distinct !{!432, !137}
!433 = distinct !{!433, !137}
!434 = distinct !{!434, !137}
!435 = distinct !{!435, !137}
!436 = !{!"cdderivedmesh.c:BM_iter_init"}
!437 = !{!420, !39, i64 60}
!438 = !{!420, !38, i64 40}
