; ModuleID = 'blender/source/blender/blenkernel/intern/editderivedmesh.c'
source_filename = "blender/source/blender/blenkernel/intern/editderivedmesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.EditDerivedBMesh = type { %struct.DerivedMesh, ptr, ptr, ptr, ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.MLoop = type { i32, i32 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.MTexPoly = type { ptr, i8, i8, i16, i16, i16 }
%struct.MCol = type { i8, i8, i8, i8 }
%struct.MLoopCol = type { i8, i8, i8, i8 }
%struct.DMVertexAttribs = type { [8 x %struct.anon], [8 x %struct.anon.0], %struct.anon.1, %struct.anon.2, i32, i32, i32, i32 }
%struct.anon = type { ptr, i32, i32, i32 }
%struct.anon.0 = type { ptr, i32, i32 }
%struct.anon.1 = type { ptr, i32, i32 }
%struct.anon.2 = type { ptr, i32, i32, i32 }
%struct.GPUVertexAttribs = type { [32 x %struct.anon.3], i32 }
%struct.anon.3 = type { i32, i32, i32, i32, [64 x i8] }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.CageUserData = type { i32, ptr, ptr }
%struct.MLoopUV = type { [2 x float], i32 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.getEditDerivedBMesh = private unnamed_addr constant [20 x i8] c"getEditDerivedBMesh\00", align 1
@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [15 x i8] c"bmbvh cos_cage\00", align 1
@__func__.BKE_editmesh_vertexCos_get = private unnamed_addr constant [27 x i8] c"BKE_editmesh_vertexCos_get\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__func__.emDM_ensureVertNormals = private unnamed_addr constant [23 x i8] c"emDM_ensureVertNormals\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.emDM_ensurePolyCenters = private unnamed_addr constant [23 x i8] c"emDM_ensurePolyCenters\00", align 1
@stipple_quarttone = external global [128 x i8], align 16
@__glewVertexAttrib3fvARB = external local_unnamed_addr global ptr, align 8
@__glewVertexAttrib2fvARB = external local_unnamed_addr global ptr, align 8
@__glewVertexAttrib4ubvARB = external local_unnamed_addr global ptr, align 8
@__glewVertexAttrib4fvARB = external local_unnamed_addr global ptr, align 8
@__func__.emDM_ensurePolyNormals = private unnamed_addr constant [23 x i8] c"emDM_ensurePolyNormals\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @getEditDerivedBMesh(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %7 = tail call ptr %6(i64 noundef 1728, ptr noundef nonnull @__func__.getEditDerivedBMesh) #11
  %8 = load ptr, ptr %0, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 24
  %10 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %9, i32 noundef 2) #11
  %11 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %9, i32 noundef 36) #11
  %12 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %7, i64 0, i32 1
  store ptr %0, ptr %12, align 8, !tbaa !43
  %13 = load i32, ptr %8, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !51
  %16 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !52
  %18 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !53
  %20 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !54
  tail call void @DM_init(ptr noundef %7, i32 noundef 1, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #11
  %22 = tail call zeroext i8 @BM_mesh_cd_flag_from_bmesh(ptr noundef nonnull %8) #11
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 19
  store i8 %22, ptr %23, align 8, !tbaa !55
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 77
  store ptr @emDM_getVertCos, ptr %24, align 8, !tbaa !56
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 75
  store ptr @emDM_getMinMax, ptr %25, align 8, !tbaa !57
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 55
  store ptr @bmDm_getVertDataLayout, ptr %26, align 8, !tbaa !58
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 56
  store ptr @bmDm_getEdgeDataLayout, ptr %27, align 8, !tbaa !59
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 57
  store ptr @bmDm_getTessFaceDataLayout, ptr %28, align 8, !tbaa !60
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 58
  store ptr @bmDm_getLoopDataLayout, ptr %29, align 8, !tbaa !61
  %30 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 59
  store ptr @bmDm_getPolyDataLayout, ptr %30, align 8, !tbaa !62
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 23
  store ptr @emDM_getNumVerts, ptr %31, align 8, !tbaa !63
  %32 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 24
  store ptr @emDM_getNumEdges, ptr %32, align 8, !tbaa !64
  %33 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 25
  store ptr @emDM_getNumTessFaces, ptr %33, align 8, !tbaa !65
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 26
  store ptr @emDM_getNumLoops, ptr %34, align 8, !tbaa !66
  %35 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 27
  store ptr @emDM_getNumPolys, ptr %35, align 8, !tbaa !67
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 28
  store ptr @emDM_getVert, ptr %36, align 8, !tbaa !68
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 76
  store ptr @emDM_getVertCo, ptr %37, align 8, !tbaa !69
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 78
  store ptr @emDM_getVertNo, ptr %38, align 8, !tbaa !70
  %39 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 79
  store ptr @emDM_getPolyNo, ptr %39, align 8, !tbaa !71
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 29
  store ptr @emDM_getEdge, ptr %40, align 8, !tbaa !72
  %41 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 30
  store ptr @emDM_getTessFace, ptr %41, align 8, !tbaa !73
  %42 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 36
  store ptr @emDM_copyVertArray, ptr %42, align 8, !tbaa !74
  %43 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 37
  store ptr @emDM_copyEdgeArray, ptr %43, align 8, !tbaa !75
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 38
  store ptr @emDM_copyTessFaceArray, ptr %44, align 8, !tbaa !76
  %45 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 39
  store ptr @emDM_copyLoopArray, ptr %45, align 8, !tbaa !77
  %46 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 40
  store ptr @emDM_copyPolyArray, ptr %46, align 8, !tbaa !78
  %47 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 52
  store ptr @emDM_getTessFaceDataArray, ptr %47, align 8, !tbaa !79
  %48 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 20
  store ptr @emDM_calcNormals, ptr %48, align 8, !tbaa !80
  %49 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 21
  store ptr @emDM_calcLoopNormals, ptr %49, align 8, !tbaa !81
  %50 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 22
  store ptr @emDM_recalcTessellation, ptr %50, align 8, !tbaa !82
  %51 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 71
  store ptr @emDM_foreachMappedVert, ptr %51, align 8, !tbaa !83
  %52 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 73
  store ptr @emDM_foreachMappedLoop, ptr %52, align 8, !tbaa !84
  %53 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 72
  store ptr @emDM_foreachMappedEdge, ptr %53, align 8, !tbaa !85
  %54 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 74
  store ptr @emDM_foreachMappedFaceCenter, ptr %54, align 8, !tbaa !86
  %55 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 84
  store ptr @emDM_drawEdges, ptr %55, align 8, !tbaa !87
  %56 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 92
  store ptr @emDM_drawMappedEdges, ptr %56, align 8, !tbaa !88
  %57 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 93
  store ptr @emDM_drawMappedEdgesInterp, ptr %57, align 8, !tbaa !89
  %58 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 89
  store ptr @emDM_drawMappedFaces, ptr %58, align 8, !tbaa !90
  %59 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 90
  store ptr @emDM_drawMappedFacesTex, ptr %59, align 8, !tbaa !91
  %60 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 91
  store ptr @emDM_drawMappedFacesGLSL, ptr %60, align 8, !tbaa !92
  %61 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 94
  store ptr @emDM_drawMappedFacesMat, ptr %61, align 8, !tbaa !93
  %62 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 87
  store ptr @emDM_drawFacesTex, ptr %62, align 8, !tbaa !94
  %63 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 88
  store ptr @emDM_drawFacesGLSL, ptr %63, align 8, !tbaa !95
  %64 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 83
  store ptr @emDM_drawUVEdges, ptr %64, align 8, !tbaa !96
  %65 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 95
  store ptr @emDM_release, ptr %65, align 8, !tbaa !97
  %66 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %7, i64 0, i32 2
  store ptr %2, ptr %66, align 8, !tbaa !98
  %67 = icmp ne ptr %2, null
  %68 = zext i1 %67 to i32
  %69 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 11
  store i32 %68, ptr %69, align 8, !tbaa !99
  %70 = icmp eq i32 %10, -1
  br i1 %70, label %92, label %71

71:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  tail call void @DM_add_vert_layer(ptr noundef %7, i32 noundef 2, i32 noundef 1, ptr noundef null) #11
  %72 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %72, align 4, !tbaa !100
  %73 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %73, align 8, !tbaa !102
  %74 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %74, align 8, !tbaa !103
  %75 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 9
  %76 = load ptr, ptr %75, align 8, !tbaa !104
  store ptr %76, ptr %4, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #11
  %77 = load ptr, ptr %74, align 8, !tbaa !103
  %78 = call ptr %77(ptr noundef nonnull %4) #11
  %79 = icmp eq ptr %78, null
  br i1 %79, label %91, label %80

80:                                               ; preds = %71
  %81 = sext i32 %10 to i64
  br label %82

82:                                               ; preds = %80, %82
  %83 = phi i32 [ 0, %80 ], [ %89, %82 ]
  %84 = phi ptr [ %78, %80 ], [ %88, %82 ]
  %85 = load ptr, ptr %84, align 8, !tbaa !106
  %86 = getelementptr inbounds i8, ptr %85, i64 %81
  call void @DM_set_vert_data(ptr noundef %7, i32 noundef %83, i32 noundef 2, ptr noundef %86) #11
  %87 = load ptr, ptr %74, align 8, !tbaa !103
  %88 = call ptr %87(ptr noundef nonnull %4) #11
  %89 = add nuw nsw i32 %83, 1
  %90 = icmp eq ptr %88, null
  br i1 %90, label %91, label %82, !llvm.loop !109

91:                                               ; preds = %82, %71
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  br label %92

92:                                               ; preds = %91, %3
  %93 = icmp eq i32 %11, -1
  br i1 %93, label %115, label %94

94:                                               ; preds = %92
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  call void @DM_add_vert_layer(ptr noundef %7, i32 noundef 36, i32 noundef 1, ptr noundef null) #11
  %95 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 1, ptr %95, align 4, !tbaa !100
  %96 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %96, align 8, !tbaa !102
  %97 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %97, align 8, !tbaa !103
  %98 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 9
  %99 = load ptr, ptr %98, align 8, !tbaa !104
  store ptr %99, ptr %5, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #11
  %100 = load ptr, ptr %97, align 8, !tbaa !103
  %101 = call ptr %100(ptr noundef nonnull %5) #11
  %102 = icmp eq ptr %101, null
  br i1 %102, label %114, label %103

103:                                              ; preds = %94
  %104 = sext i32 %11 to i64
  br label %105

105:                                              ; preds = %103, %105
  %106 = phi i32 [ 0, %103 ], [ %112, %105 ]
  %107 = phi ptr [ %101, %103 ], [ %111, %105 ]
  %108 = load ptr, ptr %107, align 8, !tbaa !106
  %109 = getelementptr inbounds i8, ptr %108, i64 %104
  call void @DM_set_vert_data(ptr noundef %7, i32 noundef %106, i32 noundef 36, ptr noundef %109) #11
  %110 = load ptr, ptr %97, align 8, !tbaa !103
  %111 = call ptr %110(ptr noundef nonnull %5) #11
  %112 = add nuw nsw i32 %106, 1
  %113 = icmp eq ptr %111, null
  br i1 %113, label %114, label %105, !llvm.loop !112

114:                                              ; preds = %105, %94
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  br label %115

115:                                              ; preds = %114, %92
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @DM_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BM_mesh_cd_flag_from_bmesh(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @emDM_getVertCos(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  %7 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !98
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %10, align 4, !tbaa !100
  %11 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %11, align 8, !tbaa !102
  %12 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %12, align 8, !tbaa !103
  %13 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !104
  store ptr %14, ptr %3, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %15 = load ptr, ptr %12, align 8, !tbaa !103
  %16 = call ptr %15(ptr noundef nonnull %3) #11
  %17 = icmp eq ptr %16, null
  br i1 %9, label %35, label %18

18:                                               ; preds = %2
  br i1 %17, label %52, label %19

19:                                               ; preds = %18, %19
  %20 = phi i64 [ %33, %19 ], [ 0, %18 ]
  %21 = getelementptr inbounds [3 x float], ptr %1, i64 %20
  %22 = load ptr, ptr %7, align 8, !tbaa !98
  %23 = getelementptr inbounds [3 x float], ptr %22, i64 %20
  %24 = load float, ptr %23, align 4, !tbaa !113
  store float %24, ptr %21, align 4, !tbaa !113
  %25 = getelementptr inbounds float, ptr %23, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !113
  %27 = getelementptr inbounds float, ptr %21, i64 1
  store float %26, ptr %27, align 4, !tbaa !113
  %28 = getelementptr inbounds float, ptr %23, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !113
  %30 = getelementptr inbounds float, ptr %21, i64 2
  store float %29, ptr %30, align 4, !tbaa !113
  %31 = load ptr, ptr %12, align 8, !tbaa !103
  %32 = call ptr %31(ptr noundef nonnull %3) #11
  %33 = add nuw i64 %20, 1
  %34 = icmp eq ptr %32, null
  br i1 %34, label %52, label %19, !llvm.loop !114

35:                                               ; preds = %2
  br i1 %17, label %52, label %36

36:                                               ; preds = %35, %36
  %37 = phi i64 [ %50, %36 ], [ 0, %35 ]
  %38 = phi ptr [ %49, %36 ], [ %16, %35 ]
  %39 = getelementptr inbounds [3 x float], ptr %1, i64 %37
  %40 = getelementptr inbounds %struct.BMVert, ptr %38, i64 0, i32 2
  %41 = load float, ptr %40, align 4, !tbaa !113
  store float %41, ptr %39, align 4, !tbaa !113
  %42 = getelementptr inbounds %struct.BMVert, ptr %38, i64 0, i32 2, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !113
  %44 = getelementptr inbounds float, ptr %39, i64 1
  store float %43, ptr %44, align 4, !tbaa !113
  %45 = getelementptr inbounds %struct.BMVert, ptr %38, i64 0, i32 2, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !113
  %47 = getelementptr inbounds float, ptr %39, i64 2
  store float %46, ptr %47, align 4, !tbaa !113
  %48 = load ptr, ptr %12, align 8, !tbaa !103
  %49 = call ptr %48(ptr noundef nonnull %3) #11
  %50 = add nuw i64 %37, 1
  %51 = icmp eq ptr %49, null
  br i1 %51, label %52, label %36, !llvm.loop !115

52:                                               ; preds = %19, %36, %18, %35
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emDM_getMinMax(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %8 = load i32, ptr %7, align 8, !tbaa !48
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %38, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !98
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %14, align 4, !tbaa !100
  %15 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %15, align 8, !tbaa !102
  %16 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %16, align 8, !tbaa !103
  %17 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !104
  store ptr %18, ptr %4, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #11
  %19 = load ptr, ptr %16, align 8, !tbaa !103
  %20 = call ptr %19(ptr noundef nonnull %4) #11
  %21 = icmp eq ptr %20, null
  br i1 %13, label %31, label %22

22:                                               ; preds = %10
  br i1 %21, label %43, label %23

23:                                               ; preds = %22, %23
  %24 = phi i64 [ %29, %23 ], [ 0, %22 ]
  %25 = load ptr, ptr %11, align 8, !tbaa !98
  %26 = getelementptr inbounds [3 x float], ptr %25, i64 %24
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef %26) #11
  %27 = load ptr, ptr %16, align 8, !tbaa !103
  %28 = call ptr %27(ptr noundef nonnull %4) #11
  %29 = add nuw i64 %24, 1
  %30 = icmp eq ptr %28, null
  br i1 %30, label %43, label %23, !llvm.loop !116

31:                                               ; preds = %10
  br i1 %21, label %43, label %32

32:                                               ; preds = %31, %32
  %33 = phi ptr [ %36, %32 ], [ %20, %31 ]
  %34 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 2
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %34) #11
  %35 = load ptr, ptr %16, align 8, !tbaa !103
  %36 = call ptr %35(ptr noundef nonnull %4) #11
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %32, !llvm.loop !117

38:                                               ; preds = %3
  store float 0.000000e+00, ptr %1, align 4, !tbaa !113
  %39 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %39, align 4, !tbaa !113
  %40 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %40, align 4, !tbaa !113
  store float 0.000000e+00, ptr %2, align 4, !tbaa !113
  %41 = getelementptr inbounds float, ptr %2, i64 1
  store float 0.000000e+00, ptr %41, align 4, !tbaa !113
  %42 = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %42, align 4, !tbaa !113
  br label %43

43:                                               ; preds = %23, %32, %22, %31, %38
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal nonnull ptr @bmDm_getVertDataLayout(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 24
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal nonnull ptr @bmDm_getEdgeDataLayout(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 25
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal nonnull ptr @bmDm_getTessFaceDataLayout(ptr noundef readnone %0) #4 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal nonnull ptr @bmDm_getLoopDataLayout(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 26
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal nonnull ptr @bmDm_getPolyDataLayout(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 27
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @emDM_getNumVerts(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = load i32, ptr %4, align 8, !tbaa !48
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @emDM_getNumEdges(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !51
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @emDM_getNumTessFaces(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.BMEditMesh, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !52
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @emDM_getNumLoops(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !53
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @emDM_getNumPolys(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !54
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal void @emDM_getVert(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp slt i32 %1, 0
  br i1 %7, label %62, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8, !tbaa !48
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %11, label %62

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !118
  %14 = zext nneg i32 %1 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2
  %18 = load float, ptr %17, align 4, !tbaa !113
  store float %18, ptr %2, align 4, !tbaa !113
  %19 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !113
  %21 = getelementptr inbounds float, ptr %2, i64 1
  store float %20, ptr %21, align 4, !tbaa !113
  %22 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !113
  %24 = getelementptr inbounds float, ptr %2, i64 2
  store float %23, ptr %24, align 4, !tbaa !113
  %25 = getelementptr inbounds %struct.MVert, ptr %2, i64 0, i32 1
  %26 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 3
  %27 = load float, ptr %26, align 4, !tbaa !113
  %28 = fmul float %27, 3.276700e+04
  %29 = fptosi float %28 to i16
  store i16 %29, ptr %25, align 2, !tbaa !119
  %30 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 3, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !113
  %32 = fmul float %31, 3.276700e+04
  %33 = fptosi float %32 to i16
  %34 = getelementptr inbounds %struct.MVert, ptr %2, i64 0, i32 1, i64 1
  store i16 %33, ptr %34, align 2, !tbaa !119
  %35 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 3, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !113
  %37 = fmul float %36, 3.276700e+04
  %38 = fptosi float %37 to i16
  %39 = getelementptr inbounds %struct.MVert, ptr %2, i64 0, i32 1, i64 2
  store i16 %38, ptr %39, align 2, !tbaa !119
  %40 = tail call zeroext i8 @BM_vert_flag_to_mflag(ptr noundef %16) #11
  %41 = getelementptr inbounds %struct.MVert, ptr %2, i64 0, i32 2
  store i8 %40, ptr %41, align 2, !tbaa !120
  %42 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 24
  %43 = load ptr, ptr %16, align 8, !tbaa !106
  %44 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %42, ptr noundef %43, i32 noundef 29) #11
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %11
  %47 = load float, ptr %44, align 4, !tbaa !113
  %48 = fmul float %47, 2.550000e+02
  %49 = fptoui float %48 to i8
  %50 = getelementptr inbounds %struct.MVert, ptr %2, i64 0, i32 3
  store i8 %49, ptr %50, align 1, !tbaa !122
  br label %51

51:                                               ; preds = %11, %46
  %52 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !98
  %54 = icmp eq ptr %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds [3 x float], ptr %53, i64 %14
  %57 = load float, ptr %56, align 4, !tbaa !113
  store float %57, ptr %2, align 4, !tbaa !113
  %58 = getelementptr inbounds float, ptr %56, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !113
  store float %59, ptr %21, align 4, !tbaa !113
  %60 = getelementptr inbounds float, ptr %56, i64 2
  %61 = load float, ptr %60, align 4, !tbaa !113
  store float %61, ptr %24, align 4, !tbaa !113
  br label %62

62:                                               ; preds = %51, %55, %3, %8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @emDM_getVertCo(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp slt i32 %1, 0
  br i1 %7, label %39, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8, !tbaa !48
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %11, label %39

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = zext nneg i32 %1 to i64
  %17 = getelementptr inbounds [3 x float], ptr %13, i64 %16
  %18 = load float, ptr %17, align 4, !tbaa !113
  store float %18, ptr %2, align 4, !tbaa !113
  %19 = getelementptr inbounds float, ptr %17, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !113
  %21 = getelementptr inbounds float, ptr %2, i64 1
  store float %20, ptr %21, align 4, !tbaa !113
  %22 = getelementptr inbounds float, ptr %17, i64 2
  br label %35

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 13
  %25 = load ptr, ptr %24, align 8, !tbaa !118
  %26 = zext nneg i32 %1 to i64
  %27 = getelementptr inbounds ptr, ptr %25, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 2
  %30 = load float, ptr %29, align 4, !tbaa !113
  store float %30, ptr %2, align 4, !tbaa !113
  %31 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 2, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !113
  %33 = getelementptr inbounds float, ptr %2, i64 1
  store float %32, ptr %33, align 4, !tbaa !113
  %34 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 2, i64 2
  br label %35

35:                                               ; preds = %23, %15
  %36 = phi ptr [ %22, %15 ], [ %34, %23 ]
  %37 = load float, ptr %36, align 4, !tbaa !113
  %38 = getelementptr inbounds float, ptr %2, i64 2
  store float %37, ptr %38, align 4, !tbaa !113
  br label %39

39:                                               ; preds = %35, %3, %8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emDM_getVertNo(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp slt i32 %1, 0
  br i1 %7, label %54, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8, !tbaa !48
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %11, label %54

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = icmp eq ptr %13, null
  br i1 %14, label %38, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !123
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  tail call fastcc void @emDM_ensurePolyNormals(ptr noundef %0)
  tail call void @BM_mesh_elem_index_ensure(ptr noundef nonnull %6, i8 noundef zeroext 8) #11
  %20 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !124
  %22 = load ptr, ptr %12, align 8, !tbaa !98
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %24 = load i32, ptr %6, align 8, !tbaa !48
  %25 = sext i32 %24 to i64
  %26 = mul nsw i64 %25, 12
  %27 = tail call ptr %23(i64 noundef %26, ptr noundef nonnull @__func__.emDM_ensureVertNormals) #11
  tail call void @BM_verts_calc_normal_vcos(ptr noundef nonnull %6, ptr noundef %21, ptr noundef %22, ptr noundef %27) #11
  store ptr %27, ptr %16, align 8, !tbaa !123
  br label %28

28:                                               ; preds = %15, %19
  %29 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !123
  %31 = zext nneg i32 %1 to i64
  %32 = getelementptr inbounds [3 x float], ptr %30, i64 %31
  %33 = load float, ptr %32, align 4, !tbaa !113
  store float %33, ptr %2, align 4, !tbaa !113
  %34 = getelementptr inbounds float, ptr %32, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !113
  %36 = getelementptr inbounds float, ptr %2, i64 1
  store float %35, ptr %36, align 4, !tbaa !113
  %37 = getelementptr inbounds float, ptr %32, i64 2
  br label %50

38:                                               ; preds = %11
  %39 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 13
  %40 = load ptr, ptr %39, align 8, !tbaa !118
  %41 = zext nneg i32 %1 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.BMVert, ptr %43, i64 0, i32 3
  %45 = load float, ptr %44, align 4, !tbaa !113
  store float %45, ptr %2, align 4, !tbaa !113
  %46 = getelementptr inbounds %struct.BMVert, ptr %43, i64 0, i32 3, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !113
  %48 = getelementptr inbounds float, ptr %2, i64 1
  store float %47, ptr %48, align 4, !tbaa !113
  %49 = getelementptr inbounds %struct.BMVert, ptr %43, i64 0, i32 3, i64 2
  br label %50

50:                                               ; preds = %38, %28
  %51 = phi ptr [ %37, %28 ], [ %49, %38 ]
  %52 = load float, ptr %51, align 4, !tbaa !113
  %53 = getelementptr inbounds float, ptr %2, i64 2
  store float %52, ptr %53, align 4, !tbaa !113
  br label %54

54:                                               ; preds = %50, %3, %8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emDM_getPolyNo(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp slt i32 %1, 0
  br i1 %7, label %42, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !54
  %11 = icmp sgt i32 %10, %1
  br i1 %11, label %12, label %42

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  tail call fastcc void @emDM_ensurePolyNormals(ptr noundef %0)
  %17 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !124
  %19 = zext nneg i32 %1 to i64
  %20 = getelementptr inbounds [3 x float], ptr %18, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !113
  store float %21, ptr %2, align 4, !tbaa !113
  %22 = getelementptr inbounds float, ptr %20, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !113
  %24 = getelementptr inbounds float, ptr %2, i64 1
  store float %23, ptr %24, align 4, !tbaa !113
  %25 = getelementptr inbounds float, ptr %20, i64 2
  br label %38

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 15
  %28 = load ptr, ptr %27, align 8, !tbaa !125
  %29 = zext nneg i32 %1 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.BMFace, ptr %31, i64 0, i32 4
  %33 = load float, ptr %32, align 4, !tbaa !113
  store float %33, ptr %2, align 4, !tbaa !113
  %34 = getelementptr inbounds %struct.BMFace, ptr %31, i64 0, i32 4, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !113
  %36 = getelementptr inbounds float, ptr %2, i64 1
  store float %35, ptr %36, align 4, !tbaa !113
  %37 = getelementptr inbounds %struct.BMFace, ptr %31, i64 0, i32 4, i64 2
  br label %38

38:                                               ; preds = %26, %16
  %39 = phi ptr [ %25, %16 ], [ %37, %26 ]
  %40 = load float, ptr %39, align 4, !tbaa !113
  %41 = getelementptr inbounds float, ptr %2, i64 2
  store float %40, ptr %41, align 4, !tbaa !113
  br label %42

42:                                               ; preds = %38, %3, %8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emDM_getEdge(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp slt i32 %1, 0
  br i1 %7, label %47, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !51
  %11 = icmp sgt i32 %10, %1
  br i1 %11, label %12, label %47

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !126
  %15 = zext nneg i32 %1 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = tail call signext i16 @BM_edge_flag_to_mflag(ptr noundef %17) #11
  %19 = getelementptr inbounds %struct.MEdge, ptr %2, i64 0, i32 4
  store i16 %18, ptr %19, align 2, !tbaa !127
  %20 = getelementptr inbounds %struct.BMEdge, ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !129
  %22 = getelementptr inbounds %struct.BMHeader, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !132
  store i32 %23, ptr %2, align 4, !tbaa !133
  %24 = getelementptr inbounds %struct.BMEdge, ptr %17, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !134
  %26 = getelementptr inbounds %struct.BMHeader, ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !132
  %28 = getelementptr inbounds %struct.MEdge, ptr %2, i64 0, i32 1
  store i32 %27, ptr %28, align 4, !tbaa !135
  %29 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 25
  %30 = load ptr, ptr %17, align 8, !tbaa !136
  %31 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %29, ptr noundef %30, i32 noundef 29) #11
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %12
  %34 = load float, ptr %31, align 4, !tbaa !113
  %35 = fmul float %34, 2.550000e+02
  %36 = fptoui float %35 to i8
  %37 = getelementptr inbounds %struct.MEdge, ptr %2, i64 0, i32 3
  store i8 %36, ptr %37, align 1, !tbaa !137
  br label %38

38:                                               ; preds = %33, %12
  %39 = load ptr, ptr %17, align 8, !tbaa !136
  %40 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %29, ptr noundef %39, i32 noundef 30) #11
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = load float, ptr %40, align 4, !tbaa !113
  %44 = fmul float %43, 2.550000e+02
  %45 = fptoui float %44 to i8
  %46 = getelementptr inbounds %struct.MEdge, ptr %2, i64 0, i32 2
  store i8 %45, ptr %46, align 4, !tbaa !138
  br label %47

47:                                               ; preds = %38, %42, %3, %8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emDM_getTessFace(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = icmp slt i32 %1, 0
  br i1 %4, label %46, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.BMEditMesh, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !52
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %11, label %46

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.BMEditMesh, ptr %7, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !139
  %14 = zext nneg i32 %1 to i64
  %15 = getelementptr inbounds [3 x ptr], ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !140
  %19 = getelementptr inbounds %struct.BMFace, ptr %18, i64 0, i32 5
  %20 = load i16, ptr %19, align 8, !tbaa !142
  %21 = and i16 %20, 255
  %22 = getelementptr inbounds %struct.MFace, ptr %2, i64 0, i32 4
  store i16 %21, ptr %22, align 4, !tbaa !144
  %23 = tail call zeroext i8 @BM_face_flag_to_mflag(ptr noundef %18) #11
  %24 = getelementptr inbounds %struct.MFace, ptr %2, i64 0, i32 6
  store i8 %23, ptr %24, align 1, !tbaa !146
  %25 = load ptr, ptr %15, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !147
  %28 = getelementptr inbounds %struct.BMHeader, ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !132
  store i32 %29, ptr %2, align 4, !tbaa !148
  %30 = getelementptr inbounds ptr, ptr %15, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !147
  %34 = getelementptr inbounds %struct.BMHeader, ptr %33, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !132
  %36 = getelementptr inbounds %struct.MFace, ptr %2, i64 0, i32 1
  store i32 %35, ptr %36, align 4, !tbaa !149
  %37 = getelementptr inbounds ptr, ptr %15, i64 2
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  %39 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !147
  %41 = getelementptr inbounds %struct.BMHeader, ptr %40, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !132
  %43 = getelementptr inbounds %struct.MFace, ptr %2, i64 0, i32 2
  store i32 %42, ptr %43, align 4, !tbaa !150
  %44 = getelementptr inbounds %struct.MFace, ptr %2, i64 0, i32 3
  store i32 0, ptr %44, align 4, !tbaa !151
  %45 = tail call i32 @test_index_face(ptr noundef nonnull %2, ptr noundef null, i32 noundef 0, i32 noundef 3) #11
  br label %46

46:                                               ; preds = %3, %5, %11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emDM_copyVertArray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  %7 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 24
  %8 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %7, i32 noundef 29) #11
  %9 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %12, align 4, !tbaa !100
  %13 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %13, align 8, !tbaa !102
  %14 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %14, align 8, !tbaa !103
  %15 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !104
  store ptr %16, ptr %3, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %17 = load ptr, ptr %14, align 8, !tbaa !103
  %18 = call ptr %17(ptr noundef nonnull %3) #11
  %19 = icmp eq ptr %18, null
  br i1 %11, label %68, label %20

20:                                               ; preds = %2
  br i1 %19, label %113, label %21

21:                                               ; preds = %20
  %22 = icmp eq i32 %8, -1
  %23 = sext i32 %8 to i64
  br label %24

24:                                               ; preds = %21, %60
  %25 = phi i64 [ 0, %21 ], [ %66, %60 ]
  %26 = phi ptr [ %1, %21 ], [ %63, %60 ]
  %27 = phi ptr [ %18, %21 ], [ %65, %60 ]
  %28 = load ptr, ptr %9, align 8, !tbaa !98
  %29 = getelementptr inbounds [3 x float], ptr %28, i64 %25
  %30 = load float, ptr %29, align 4, !tbaa !113
  store float %30, ptr %26, align 4, !tbaa !113
  %31 = getelementptr inbounds float, ptr %29, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !113
  %33 = getelementptr inbounds float, ptr %26, i64 1
  store float %32, ptr %33, align 4, !tbaa !113
  %34 = getelementptr inbounds float, ptr %29, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !113
  %36 = getelementptr inbounds float, ptr %26, i64 2
  store float %35, ptr %36, align 4, !tbaa !113
  %37 = getelementptr inbounds %struct.MVert, ptr %26, i64 0, i32 1
  %38 = getelementptr inbounds %struct.BMVert, ptr %27, i64 0, i32 3
  %39 = load float, ptr %38, align 4, !tbaa !113
  %40 = fmul float %39, 3.276700e+04
  %41 = fptosi float %40 to i16
  store i16 %41, ptr %37, align 2, !tbaa !119
  %42 = getelementptr inbounds %struct.BMVert, ptr %27, i64 0, i32 3, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !113
  %44 = fmul float %43, 3.276700e+04
  %45 = fptosi float %44 to i16
  %46 = getelementptr inbounds %struct.MVert, ptr %26, i64 0, i32 1, i64 1
  store i16 %45, ptr %46, align 2, !tbaa !119
  %47 = getelementptr inbounds %struct.BMVert, ptr %27, i64 0, i32 3, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !113
  %49 = fmul float %48, 3.276700e+04
  %50 = fptosi float %49 to i16
  %51 = getelementptr inbounds %struct.MVert, ptr %26, i64 0, i32 1, i64 2
  store i16 %50, ptr %51, align 2, !tbaa !119
  %52 = call zeroext i8 @BM_vert_flag_to_mflag(ptr noundef nonnull %27) #11
  %53 = getelementptr inbounds %struct.MVert, ptr %26, i64 0, i32 2
  store i8 %52, ptr %53, align 2, !tbaa !120
  br i1 %22, label %60, label %54

54:                                               ; preds = %24
  %55 = load ptr, ptr %27, align 8, !tbaa !106
  %56 = getelementptr inbounds i8, ptr %55, i64 %23
  %57 = load float, ptr %56, align 4, !tbaa !113
  %58 = fmul float %57, 2.550000e+02
  %59 = fptoui float %58 to i8
  br label %60

60:                                               ; preds = %24, %54
  %61 = phi i8 [ %59, %54 ], [ 0, %24 ]
  %62 = getelementptr inbounds %struct.MVert, ptr %26, i64 0, i32 3
  store i8 %61, ptr %62, align 1, !tbaa !122
  %63 = getelementptr inbounds %struct.MVert, ptr %26, i64 1
  %64 = load ptr, ptr %14, align 8, !tbaa !103
  %65 = call ptr %64(ptr noundef nonnull %3) #11
  %66 = add nuw i64 %25, 1
  %67 = icmp eq ptr %65, null
  br i1 %67, label %113, label %24, !llvm.loop !152

68:                                               ; preds = %2
  br i1 %19, label %113, label %69

69:                                               ; preds = %68
  %70 = icmp eq i32 %8, -1
  %71 = sext i32 %8 to i64
  br label %72

72:                                               ; preds = %69, %106
  %73 = phi ptr [ %1, %69 ], [ %109, %106 ]
  %74 = phi ptr [ %18, %69 ], [ %111, %106 ]
  %75 = getelementptr inbounds %struct.BMVert, ptr %74, i64 0, i32 2
  %76 = load float, ptr %75, align 4, !tbaa !113
  store float %76, ptr %73, align 4, !tbaa !113
  %77 = getelementptr inbounds %struct.BMVert, ptr %74, i64 0, i32 2, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !113
  %79 = getelementptr inbounds float, ptr %73, i64 1
  store float %78, ptr %79, align 4, !tbaa !113
  %80 = getelementptr inbounds %struct.BMVert, ptr %74, i64 0, i32 2, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !113
  %82 = getelementptr inbounds float, ptr %73, i64 2
  store float %81, ptr %82, align 4, !tbaa !113
  %83 = getelementptr inbounds %struct.MVert, ptr %73, i64 0, i32 1
  %84 = getelementptr inbounds %struct.BMVert, ptr %74, i64 0, i32 3
  %85 = load float, ptr %84, align 4, !tbaa !113
  %86 = fmul float %85, 3.276700e+04
  %87 = fptosi float %86 to i16
  store i16 %87, ptr %83, align 2, !tbaa !119
  %88 = getelementptr inbounds %struct.BMVert, ptr %74, i64 0, i32 3, i64 1
  %89 = load float, ptr %88, align 4, !tbaa !113
  %90 = fmul float %89, 3.276700e+04
  %91 = fptosi float %90 to i16
  %92 = getelementptr inbounds %struct.MVert, ptr %73, i64 0, i32 1, i64 1
  store i16 %91, ptr %92, align 2, !tbaa !119
  %93 = getelementptr inbounds %struct.BMVert, ptr %74, i64 0, i32 3, i64 2
  %94 = load float, ptr %93, align 4, !tbaa !113
  %95 = fmul float %94, 3.276700e+04
  %96 = fptosi float %95 to i16
  %97 = getelementptr inbounds %struct.MVert, ptr %73, i64 0, i32 1, i64 2
  store i16 %96, ptr %97, align 2, !tbaa !119
  %98 = call zeroext i8 @BM_vert_flag_to_mflag(ptr noundef nonnull %74) #11
  %99 = getelementptr inbounds %struct.MVert, ptr %73, i64 0, i32 2
  store i8 %98, ptr %99, align 2, !tbaa !120
  br i1 %70, label %106, label %100

100:                                              ; preds = %72
  %101 = load ptr, ptr %74, align 8, !tbaa !106
  %102 = getelementptr inbounds i8, ptr %101, i64 %71
  %103 = load float, ptr %102, align 4, !tbaa !113
  %104 = fmul float %103, 2.550000e+02
  %105 = fptoui float %104 to i8
  br label %106

106:                                              ; preds = %72, %100
  %107 = phi i8 [ %105, %100 ], [ 0, %72 ]
  %108 = getelementptr inbounds %struct.MVert, ptr %73, i64 0, i32 3
  store i8 %107, ptr %108, align 1, !tbaa !122
  %109 = getelementptr inbounds %struct.MVert, ptr %73, i64 1
  %110 = load ptr, ptr %14, align 8, !tbaa !103
  %111 = call ptr %110(ptr noundef nonnull %3) #11
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %72, !llvm.loop !153

113:                                              ; preds = %60, %106, %20, %68
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emDM_copyEdgeArray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  %7 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 25
  %8 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %7, i32 noundef 29) #11
  %9 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %7, i32 noundef 30) #11
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %6, i8 noundef zeroext 1) #11
  %10 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 2, ptr %10, align 4, !tbaa !100
  %11 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %11, align 8, !tbaa !102
  %12 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %12, align 8, !tbaa !103
  %13 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !154
  store ptr %14, ptr %3, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %15 = load ptr, ptr %12, align 8, !tbaa !103
  %16 = call ptr %15(ptr noundef nonnull %3) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %59, label %18

18:                                               ; preds = %2
  %19 = icmp eq i32 %9, -1
  %20 = sext i32 %9 to i64
  %21 = icmp eq i32 %8, -1
  %22 = sext i32 %8 to i64
  br label %23

23:                                               ; preds = %18, %52
  %24 = phi ptr [ %1, %18 ], [ %55, %52 ]
  %25 = phi ptr [ %16, %18 ], [ %57, %52 ]
  %26 = getelementptr inbounds %struct.BMEdge, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !129
  %28 = getelementptr inbounds %struct.BMHeader, ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !132
  store i32 %29, ptr %24, align 4, !tbaa !133
  %30 = getelementptr inbounds %struct.BMEdge, ptr %25, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !134
  %32 = getelementptr inbounds %struct.BMHeader, ptr %31, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !132
  %34 = getelementptr inbounds %struct.MEdge, ptr %24, i64 0, i32 1
  store i32 %33, ptr %34, align 4, !tbaa !135
  %35 = call signext i16 @BM_edge_flag_to_mflag(ptr noundef nonnull %25) #11
  %36 = getelementptr inbounds %struct.MEdge, ptr %24, i64 0, i32 4
  store i16 %35, ptr %36, align 2, !tbaa !127
  br i1 %19, label %43, label %37

37:                                               ; preds = %23
  %38 = load ptr, ptr %25, align 8, !tbaa !136
  %39 = getelementptr inbounds i8, ptr %38, i64 %20
  %40 = load float, ptr %39, align 4, !tbaa !113
  %41 = fmul float %40, 2.550000e+02
  %42 = fptoui float %41 to i8
  br label %43

43:                                               ; preds = %23, %37
  %44 = phi i8 [ %42, %37 ], [ 0, %23 ]
  %45 = getelementptr inbounds %struct.MEdge, ptr %24, i64 0, i32 2
  store i8 %44, ptr %45, align 4, !tbaa !138
  br i1 %21, label %52, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %25, align 8, !tbaa !136
  %48 = getelementptr inbounds i8, ptr %47, i64 %22
  %49 = load float, ptr %48, align 4, !tbaa !113
  %50 = fmul float %49, 2.550000e+02
  %51 = fptoui float %50 to i8
  br label %52

52:                                               ; preds = %43, %46
  %53 = phi i8 [ %51, %46 ], [ 0, %43 ]
  %54 = getelementptr inbounds %struct.MEdge, ptr %24, i64 0, i32 3
  store i8 %53, ptr %54, align 1, !tbaa !137
  %55 = getelementptr inbounds %struct.MEdge, ptr %24, i64 1
  %56 = load ptr, ptr %12, align 8, !tbaa !103
  %57 = call ptr %56(ptr noundef nonnull %3) #11
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %23, !llvm.loop !155

59:                                               ; preds = %52, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emDM_copyTessFaceArray(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.BMEditMesh, ptr %4, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !139
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %5, i8 noundef zeroext 1) #11
  %8 = load ptr, ptr %3, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.BMEditMesh, ptr %8, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !52
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %54

12:                                               ; preds = %2, %12
  %13 = phi i64 [ %47, %12 ], [ 0, %2 ]
  %14 = phi ptr [ %48, %12 ], [ %1, %2 ]
  %15 = getelementptr inbounds [3 x ptr], ptr %7, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !140
  %19 = getelementptr inbounds %struct.BMFace, ptr %18, i64 0, i32 5
  %20 = load i16, ptr %19, align 8, !tbaa !142
  %21 = and i16 %20, 255
  %22 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 4
  store i16 %21, ptr %22, align 4, !tbaa !144
  %23 = tail call zeroext i8 @BM_face_flag_to_mflag(ptr noundef %18) #11
  %24 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 6
  store i8 %23, ptr %24, align 1, !tbaa !146
  %25 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 5
  store i8 0, ptr %25, align 2, !tbaa !156
  %26 = load ptr, ptr %15, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !147
  %29 = getelementptr inbounds %struct.BMHeader, ptr %28, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !132
  store i32 %30, ptr %14, align 4, !tbaa !148
  %31 = getelementptr inbounds ptr, ptr %15, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !147
  %35 = getelementptr inbounds %struct.BMHeader, ptr %34, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !132
  %37 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 1
  store i32 %36, ptr %37, align 4, !tbaa !149
  %38 = getelementptr inbounds ptr, ptr %15, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = getelementptr inbounds %struct.BMLoop, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !147
  %42 = getelementptr inbounds %struct.BMHeader, ptr %41, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !132
  %44 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 2
  store i32 %43, ptr %44, align 4, !tbaa !150
  %45 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 3
  store i32 0, ptr %45, align 4, !tbaa !151
  %46 = tail call i32 @test_index_face(ptr noundef nonnull %14, ptr noundef null, i32 noundef 0, i32 noundef 3) #11
  %47 = add nuw nsw i64 %13, 1
  %48 = getelementptr inbounds %struct.MFace, ptr %14, i64 1
  %49 = load ptr, ptr %3, align 8, !tbaa !43
  %50 = getelementptr inbounds %struct.BMEditMesh, ptr %49, i64 0, i32 4
  %51 = load i32, ptr %50, align 8, !tbaa !52
  %52 = sext i32 %51 to i64
  %53 = icmp slt i64 %47, %52
  br i1 %53, label %12, label %54, !llvm.loop !157

54:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emDM_copyLoopArray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %6, i8 noundef zeroext 3) #11
  %7 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %7, align 4, !tbaa !100
  %8 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %8, align 8, !tbaa !102
  %9 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %9, align 8, !tbaa !103
  %10 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !158
  store ptr %11, ptr %3, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %12 = load ptr, ptr %9, align 8, !tbaa !103
  %13 = call ptr %12(ptr noundef nonnull %3) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %40, label %15

15:                                               ; preds = %2, %36
  %16 = phi ptr [ %32, %36 ], [ %1, %2 ]
  %17 = phi ptr [ %38, %36 ], [ %13, %2 ]
  %18 = getelementptr inbounds %struct.BMFace, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !159
  br label %20

20:                                               ; preds = %20, %15
  %21 = phi ptr [ %19, %15 ], [ %34, %20 ]
  %22 = phi ptr [ %16, %15 ], [ %32, %20 ]
  %23 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !147
  %25 = getelementptr inbounds %struct.BMHeader, ptr %24, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !132
  store i32 %26, ptr %22, align 4, !tbaa !160
  %27 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !162
  %29 = getelementptr inbounds %struct.BMHeader, ptr %28, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !132
  %31 = getelementptr inbounds %struct.MLoop, ptr %22, i64 0, i32 1
  store i32 %30, ptr %31, align 4, !tbaa !163
  %32 = getelementptr inbounds %struct.MLoop, ptr %22, i64 1
  %33 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !164
  %35 = icmp eq ptr %34, %19
  br i1 %35, label %36, label %20, !llvm.loop !165

36:                                               ; preds = %20
  %37 = load ptr, ptr %9, align 8, !tbaa !103
  %38 = call ptr %37(ptr noundef nonnull %3) #11
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %15, !llvm.loop !166

40:                                               ; preds = %36, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emDM_copyPolyArray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  %7 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %7, align 4, !tbaa !100
  %8 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %8, align 8, !tbaa !102
  %9 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %9, align 8, !tbaa !103
  %10 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !158
  store ptr %11, ptr %3, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %12 = load ptr, ptr %9, align 8, !tbaa !103
  %13 = call ptr %12(ptr noundef nonnull %3) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %32, label %15

15:                                               ; preds = %2, %15
  %16 = phi i32 [ %28, %15 ], [ 0, %2 ]
  %17 = phi ptr [ %30, %15 ], [ %13, %2 ]
  %18 = phi ptr [ %27, %15 ], [ %1, %2 ]
  %19 = call zeroext i8 @BM_face_flag_to_mflag(ptr noundef nonnull %17) #11
  %20 = getelementptr inbounds %struct.MPoly, ptr %18, i64 0, i32 3
  store i8 %19, ptr %20, align 2, !tbaa !167
  store i32 %16, ptr %18, align 4, !tbaa !169
  %21 = getelementptr inbounds %struct.BMFace, ptr %17, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !170
  %23 = getelementptr inbounds %struct.MPoly, ptr %18, i64 0, i32 1
  store i32 %22, ptr %23, align 4, !tbaa !171
  %24 = getelementptr inbounds %struct.BMFace, ptr %17, i64 0, i32 5
  %25 = load i16, ptr %24, align 8, !tbaa !142
  %26 = getelementptr inbounds %struct.MPoly, ptr %18, i64 0, i32 2
  store i16 %25, ptr %26, align 4, !tbaa !172
  %27 = getelementptr inbounds %struct.MPoly, ptr %18, i64 1
  %28 = add nsw i32 %22, %16
  %29 = load ptr, ptr %9, align 8, !tbaa !103
  %30 = call ptr %29(ptr noundef nonnull %3) #11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %15, !llvm.loop !173

32:                                               ; preds = %15, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @emDM_getTessFaceDataArray(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef %1) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %176

8:                                                ; preds = %2
  %9 = icmp eq i32 %1, 5
  %10 = add i32 %1, -5
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %119

12:                                               ; preds = %8
  %13 = select i1 %9, i32 15, i32 17
  %14 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 27
  %15 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %14, i32 noundef %13) #11
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %119, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %3, align 8, !tbaa !43
  %19 = getelementptr inbounds %struct.BMEditMesh, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !139
  %21 = tail call i32 @CustomData_sizeof(i32 noundef %1) #11
  tail call void @DM_add_tessface_layer(ptr noundef %0, i32 noundef %1, i32 noundef 1, ptr noundef null) #11
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %23 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %22, i32 noundef %1) #11
  %24 = load ptr, ptr %22, align 8, !tbaa !174
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds %struct.CustomDataLayer, ptr %24, i64 %25, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !175
  %28 = or i32 %27, 5
  store i32 %28, ptr %26, align 8, !tbaa !175
  %29 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef %1) #11
  %30 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 26
  br i1 %9, label %31, label %83

31:                                               ; preds = %17
  %32 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %30, i32 noundef 16) #11
  %33 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %14, i32 noundef 15) #11
  %34 = load ptr, ptr %3, align 8, !tbaa !43
  %35 = getelementptr inbounds %struct.BMEditMesh, ptr %34, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !52
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %119

38:                                               ; preds = %31
  %39 = sext i32 %33 to i64
  %40 = sext i32 %32 to i64
  %41 = sext i32 %21 to i64
  %42 = zext nneg i32 %36 to i64
  br label %43

43:                                               ; preds = %38, %79
  %44 = phi i64 [ 0, %38 ], [ %80, %79 ]
  %45 = phi ptr [ %29, %38 ], [ %81, %79 ]
  %46 = getelementptr inbounds [3 x ptr], ptr %20, i64 %44
  %47 = load ptr, ptr %46, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.BMLoop, ptr %47, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !140
  %50 = load ptr, ptr %49, align 8, !tbaa !177
  %51 = getelementptr inbounds i8, ptr %50, i64 %39
  %52 = load ptr, ptr %51, align 8, !tbaa !178
  %53 = getelementptr inbounds %struct.MTFace, ptr %45, i64 0, i32 1
  store ptr %52, ptr %53, align 8, !tbaa !180
  %54 = getelementptr inbounds %struct.MTexPoly, ptr %51, i64 0, i32 1
  %55 = load i8, ptr %54, align 8, !tbaa !182
  %56 = getelementptr inbounds %struct.MTFace, ptr %45, i64 0, i32 2
  store i8 %55, ptr %56, align 8, !tbaa !183
  %57 = getelementptr inbounds %struct.MTexPoly, ptr %51, i64 0, i32 2
  %58 = load i8, ptr %57, align 1, !tbaa !184
  %59 = getelementptr inbounds %struct.MTFace, ptr %45, i64 0, i32 3
  store i8 %58, ptr %59, align 1, !tbaa !185
  %60 = getelementptr inbounds %struct.MTexPoly, ptr %51, i64 0, i32 3
  %61 = load i16, ptr %60, align 2, !tbaa !186
  %62 = getelementptr inbounds %struct.MTFace, ptr %45, i64 0, i32 4
  store i16 %61, ptr %62, align 2, !tbaa !187
  %63 = getelementptr inbounds %struct.MTexPoly, ptr %51, i64 0, i32 4
  %64 = load i16, ptr %63, align 4, !tbaa !188
  %65 = getelementptr inbounds %struct.MTFace, ptr %45, i64 0, i32 5
  store i16 %64, ptr %65, align 4, !tbaa !189
  br label %66

66:                                               ; preds = %43, %66
  %67 = phi i64 [ 0, %43 ], [ %77, %66 ]
  %68 = getelementptr inbounds [3 x ptr], ptr %20, i64 %44, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !34
  %70 = load ptr, ptr %69, align 8, !tbaa !190
  %71 = getelementptr inbounds i8, ptr %70, i64 %40
  %72 = getelementptr inbounds [4 x [2 x float]], ptr %45, i64 0, i64 %67
  %73 = load float, ptr %71, align 4, !tbaa !113
  store float %73, ptr %72, align 4, !tbaa !113
  %74 = getelementptr inbounds float, ptr %71, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !113
  %76 = getelementptr inbounds float, ptr %72, i64 1
  store float %75, ptr %76, align 4, !tbaa !113
  %77 = add nuw nsw i64 %67, 1
  %78 = icmp eq i64 %77, 3
  br i1 %78, label %79, label %66, !llvm.loop !191

79:                                               ; preds = %66
  %80 = add nuw nsw i64 %44, 1
  %81 = getelementptr inbounds i8, ptr %45, i64 %41
  %82 = icmp eq i64 %80, %42
  br i1 %82, label %119, label %43, !llvm.loop !192

83:                                               ; preds = %17
  %84 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %30, i32 noundef 17) #11
  %85 = load ptr, ptr %3, align 8, !tbaa !43
  %86 = getelementptr inbounds %struct.BMEditMesh, ptr %85, i64 0, i32 4
  %87 = load i32, ptr %86, align 8, !tbaa !52
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %119

89:                                               ; preds = %83
  %90 = sext i32 %84 to i64
  %91 = sext i32 %21 to i64
  %92 = zext nneg i32 %87 to i64
  br label %93

93:                                               ; preds = %89, %115
  %94 = phi i64 [ 0, %89 ], [ %116, %115 ]
  %95 = phi ptr [ %29, %89 ], [ %117, %115 ]
  br label %96

96:                                               ; preds = %93, %96
  %97 = phi i64 [ 0, %93 ], [ %113, %96 ]
  %98 = getelementptr inbounds [3 x ptr], ptr %20, i64 %94, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !34
  %100 = load ptr, ptr %99, align 8, !tbaa !190
  %101 = getelementptr inbounds i8, ptr %100, i64 %90
  %102 = getelementptr inbounds %struct.MCol, ptr %95, i64 %97
  %103 = load i8, ptr %101, align 1, !tbaa !193
  %104 = getelementptr inbounds %struct.MCol, ptr %95, i64 %97, i32 3
  store i8 %103, ptr %104, align 1, !tbaa !195
  %105 = getelementptr inbounds %struct.MLoopCol, ptr %101, i64 0, i32 1
  %106 = load i8, ptr %105, align 1, !tbaa !197
  %107 = getelementptr inbounds %struct.MCol, ptr %95, i64 %97, i32 2
  store i8 %106, ptr %107, align 1, !tbaa !198
  %108 = getelementptr inbounds %struct.MLoopCol, ptr %101, i64 0, i32 2
  %109 = load i8, ptr %108, align 1, !tbaa !199
  %110 = getelementptr inbounds %struct.MCol, ptr %95, i64 %97, i32 1
  store i8 %109, ptr %110, align 1, !tbaa !200
  %111 = getelementptr inbounds %struct.MLoopCol, ptr %101, i64 0, i32 3
  %112 = load i8, ptr %111, align 1, !tbaa !201
  store i8 %112, ptr %102, align 1, !tbaa !202
  %113 = add nuw nsw i64 %97, 1
  %114 = icmp eq i64 %113, 3
  br i1 %114, label %115, label %96, !llvm.loop !203

115:                                              ; preds = %96
  %116 = add nuw nsw i64 %94, 1
  %117 = getelementptr inbounds i8, ptr %95, i64 %91
  %118 = icmp eq i64 %116, %92
  br i1 %118, label %119, label %93, !llvm.loop !204

119:                                              ; preds = %115, %79, %83, %31, %12, %8
  %120 = phi ptr [ null, %8 ], [ null, %12 ], [ %29, %31 ], [ %29, %83 ], [ %29, %79 ], [ %29, %115 ]
  %121 = icmp eq i32 %1, 40
  br i1 %121, label %122, label %176

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 53
  %124 = load ptr, ptr %123, align 8, !tbaa !205
  %125 = tail call ptr %124(ptr noundef %0, i32 noundef 8) #11
  %126 = icmp eq ptr %125, null
  br i1 %126, label %176, label %127

127:                                              ; preds = %122
  %128 = load ptr, ptr %3, align 8, !tbaa !43
  %129 = getelementptr inbounds %struct.BMEditMesh, ptr %128, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !139
  tail call void @DM_add_tessface_layer(ptr noundef %0, i32 noundef 40, i32 noundef 1, ptr noundef null) #11
  %131 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %132 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %131, i32 noundef 40) #11
  %133 = load ptr, ptr %131, align 8, !tbaa !174
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds %struct.CustomDataLayer, ptr %133, i64 %134, i32 2
  %136 = load i32, ptr %135, align 8, !tbaa !175
  %137 = or i32 %136, 5
  store i32 %137, ptr %135, align 8, !tbaa !175
  %138 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef 40) #11
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %5, i8 noundef zeroext 4) #11
  %139 = load ptr, ptr %3, align 8, !tbaa !43
  %140 = getelementptr inbounds %struct.BMEditMesh, ptr %139, i64 0, i32 4
  %141 = load i32, ptr %140, align 8, !tbaa !52
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %176

143:                                              ; preds = %127, %171
  %144 = phi i32 [ %172, %171 ], [ 0, %127 ]
  %145 = phi ptr [ %173, %171 ], [ %138, %127 ]
  %146 = phi ptr [ %174, %171 ], [ %130, %127 ]
  br label %147

147:                                              ; preds = %143, %147
  %148 = phi i64 [ 0, %143 ], [ %169, %147 ]
  %149 = getelementptr inbounds [4 x [3 x i16]], ptr %145, i64 0, i64 %148
  %150 = getelementptr inbounds [3 x ptr], ptr %146, i64 0, i64 %148
  %151 = load ptr, ptr %150, align 8, !tbaa !34
  %152 = getelementptr inbounds %struct.BMHeader, ptr %151, i64 0, i32 1
  %153 = load i32, ptr %152, align 8, !tbaa !132
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [3 x float], ptr %125, i64 %154
  %156 = load float, ptr %155, align 4, !tbaa !113
  %157 = fmul float %156, 3.276700e+04
  %158 = fptosi float %157 to i16
  store i16 %158, ptr %149, align 2, !tbaa !119
  %159 = getelementptr inbounds float, ptr %155, i64 1
  %160 = load float, ptr %159, align 4, !tbaa !113
  %161 = fmul float %160, 3.276700e+04
  %162 = fptosi float %161 to i16
  %163 = getelementptr inbounds i16, ptr %149, i64 1
  store i16 %162, ptr %163, align 2, !tbaa !119
  %164 = getelementptr inbounds float, ptr %155, i64 2
  %165 = load float, ptr %164, align 4, !tbaa !113
  %166 = fmul float %165, 3.276700e+04
  %167 = fptosi float %166 to i16
  %168 = getelementptr inbounds i16, ptr %149, i64 2
  store i16 %167, ptr %168, align 2, !tbaa !119
  %169 = add nuw nsw i64 %148, 1
  %170 = icmp eq i64 %169, 3
  br i1 %170, label %171, label %147, !llvm.loop !206

171:                                              ; preds = %147
  %172 = add nuw nsw i32 %144, 1
  %173 = getelementptr inbounds [4 x [3 x i16]], ptr %145, i64 1
  %174 = getelementptr inbounds [3 x ptr], ptr %146, i64 1
  %175 = icmp eq i32 %172, %141
  br i1 %175, label %176, label %143, !llvm.loop !207

176:                                              ; preds = %171, %127, %119, %122, %2
  %177 = phi ptr [ %6, %2 ], [ %120, %122 ], [ %120, %119 ], [ %120, %127 ], [ %120, %171 ]
  ret ptr %177
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @emDM_calcNormals(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %3 = load i32, ptr %2, align 8, !tbaa !208
  %4 = and i32 %3, -5
  store i32 %4, ptr %2, align 8, !tbaa !208
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emDM_calcLoopNormals(ptr noundef %0, float noundef %1) #0 {
  %3 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !98
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !123
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  tail call fastcc void @emDM_ensurePolyNormals(ptr noundef %0)
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %5, i8 noundef zeroext 8) #11
  %14 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !124
  %16 = load ptr, ptr %6, align 8, !tbaa !98
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %18 = load i32, ptr %5, align 8, !tbaa !48
  %19 = sext i32 %18 to i64
  %20 = mul nsw i64 %19, 12
  %21 = tail call ptr %17(i64 noundef %20, ptr noundef nonnull @__func__.emDM_ensureVertNormals) #11
  tail call void @BM_verts_calc_normal_vcos(ptr noundef nonnull %5, ptr noundef %15, ptr noundef %16, ptr noundef %21) #11
  store ptr %21, ptr %10, align 8, !tbaa !123
  br label %22

22:                                               ; preds = %2, %9, %13
  tail call fastcc void @emDM_ensurePolyNormals(ptr noundef %0)
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %24 = load i32, ptr %23, align 8, !tbaa !208
  %25 = and i32 %24, -5
  store i32 %25, ptr %23, align 8, !tbaa !208
  %26 = load ptr, ptr %6, align 8, !tbaa !98
  %27 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !123
  %29 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !124
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 53
  %32 = load ptr, ptr %31, align 8, !tbaa !205
  %33 = tail call ptr %32(ptr noundef %0, i32 noundef 8) #11
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  tail call void @DM_add_loop_layer(ptr noundef %0, i32 noundef 8, i32 noundef 1, ptr noundef null) #11
  %36 = load ptr, ptr %31, align 8, !tbaa !205
  %37 = tail call ptr %36(ptr noundef %0, i32 noundef 8) #11
  br label %38

38:                                               ; preds = %35, %22
  %39 = phi ptr [ %33, %22 ], [ %37, %35 ]
  tail call void @BM_loops_calc_normal_vcos(ptr noundef %5, ptr noundef %26, ptr noundef %28, ptr noundef %30, float noundef %1, ptr noundef %39) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @emDM_recalcTessellation(ptr nocapture readnone %0) #4 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emDM_foreachMappedVert(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  %9 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = icmp eq ptr %10, null
  br i1 %11, label %52, label %12

12:                                               ; preds = %4
  %13 = and i32 %3, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !123
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load ptr, ptr %7, align 8, !tbaa !38
  tail call fastcc void @emDM_ensurePolyNormals(ptr noundef %0)
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %20, i8 noundef zeroext 8) #11
  %21 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !124
  %23 = load ptr, ptr %9, align 8, !tbaa !98
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %25 = load i32, ptr %20, align 8, !tbaa !48
  %26 = sext i32 %25 to i64
  %27 = mul nsw i64 %26, 12
  %28 = tail call ptr %24(i64 noundef %27, ptr noundef nonnull @__func__.emDM_ensureVertNormals) #11
  tail call void @BM_verts_calc_normal_vcos(ptr noundef nonnull %20, ptr noundef %22, ptr noundef %23, ptr noundef %28) #11
  store ptr %28, ptr %16, align 8, !tbaa !123
  br label %29

29:                                               ; preds = %15, %19
  %30 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !123
  br label %32

32:                                               ; preds = %12, %29
  %33 = phi ptr [ %31, %29 ], [ null, %12 ]
  %34 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 1, ptr %34, align 4, !tbaa !100
  %35 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %35, align 8, !tbaa !102
  %36 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %36, align 8, !tbaa !103
  %37 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 9
  %38 = load ptr, ptr %37, align 8, !tbaa !104
  store ptr %38, ptr %5, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #11
  %39 = load ptr, ptr %36, align 8, !tbaa !103
  %40 = call ptr %39(ptr noundef nonnull %5) #11
  %41 = icmp eq ptr %40, null
  br i1 %41, label %74, label %42

42:                                               ; preds = %32, %42
  %43 = phi i64 [ %50, %42 ], [ 0, %32 ]
  %44 = getelementptr inbounds [3 x float], ptr %33, i64 %43
  %45 = select i1 %14, ptr null, ptr %44
  %46 = getelementptr inbounds [3 x float], ptr %10, i64 %43
  %47 = trunc i64 %43 to i32
  call void %1(ptr noundef %2, i32 noundef %47, ptr noundef nonnull %46, ptr noundef %45, ptr noundef null) #11
  %48 = load ptr, ptr %36, align 8, !tbaa !103
  %49 = call ptr %48(ptr noundef nonnull %5) #11
  %50 = add nuw i64 %43, 1
  %51 = icmp eq ptr %49, null
  br i1 %51, label %74, label %42, !llvm.loop !209

52:                                               ; preds = %4
  %53 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 1, ptr %53, align 4, !tbaa !100
  %54 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %54, align 8, !tbaa !102
  %55 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %55, align 8, !tbaa !103
  %56 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 9
  %57 = load ptr, ptr %56, align 8, !tbaa !104
  store ptr %57, ptr %5, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #11
  %58 = load ptr, ptr %55, align 8, !tbaa !103
  %59 = call ptr %58(ptr noundef nonnull %5) #11
  %60 = icmp eq ptr %59, null
  br i1 %60, label %74, label %61

61:                                               ; preds = %52
  %62 = and i32 %3, 1
  %63 = icmp eq i32 %62, 0
  br label %64

64:                                               ; preds = %61, %64
  %65 = phi ptr [ %59, %61 ], [ %71, %64 ]
  %66 = phi i32 [ 0, %61 ], [ %72, %64 ]
  %67 = getelementptr inbounds %struct.BMVert, ptr %65, i64 0, i32 3
  %68 = select i1 %63, ptr null, ptr %67
  %69 = getelementptr inbounds %struct.BMVert, ptr %65, i64 0, i32 2
  call void %1(ptr noundef %2, i32 noundef %66, ptr noundef nonnull %69, ptr noundef %68, ptr noundef null) #11
  %70 = load ptr, ptr %55, align 8, !tbaa !103
  %71 = call ptr %70(ptr noundef nonnull %5) #11
  %72 = add nuw nsw i32 %66, 1
  %73 = icmp eq ptr %71, null
  br i1 %73, label %74, label %64, !llvm.loop !210

74:                                               ; preds = %42, %64, %32, %52
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emDM_foreachMappedLoop(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = and i32 %3, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @DM_get_loop_data_layer(ptr noundef %0, i32 noundef 8) #11
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi ptr [ %9, %8 ], [ null, %4 ]
  %12 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  %15 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !98
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %14, i8 noundef zeroext 1) #11
  %17 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 3, ptr %17, align 4, !tbaa !100
  %18 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %18, align 8, !tbaa !102
  %19 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %19, align 8, !tbaa !103
  %20 = getelementptr inbounds %struct.BMesh, ptr %14, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !158
  store ptr %21, ptr %5, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #11
  %22 = load ptr, ptr %19, align 8, !tbaa !103
  %23 = call ptr %22(ptr noundef nonnull %5) #11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %55, label %25

25:                                               ; preds = %10
  %26 = icmp eq ptr %16, null
  br label %27

27:                                               ; preds = %25, %50
  %28 = phi ptr [ %11, %25 ], [ %42, %50 ]
  %29 = phi ptr [ %23, %25 ], [ %52, %50 ]
  %30 = phi i32 [ 0, %25 ], [ %53, %50 ]
  %31 = getelementptr inbounds %struct.BMFace, ptr %29, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !159
  br label %33

33:                                               ; preds = %33, %27
  %34 = phi ptr [ %32, %27 ], [ %48, %33 ]
  %35 = phi ptr [ %28, %27 ], [ %42, %33 ]
  %36 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !147
  %38 = getelementptr inbounds %struct.BMHeader, ptr %37, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !132
  %40 = icmp eq ptr %35, null
  %41 = getelementptr inbounds [3 x float], ptr %35, i64 1
  %42 = select i1 %40, ptr null, ptr %41
  %43 = sext i32 %39 to i64
  %44 = getelementptr inbounds [3 x float], ptr %16, i64 %43
  %45 = getelementptr inbounds %struct.BMVert, ptr %37, i64 0, i32 2
  %46 = select i1 %26, ptr %45, ptr %44
  call void %1(ptr noundef %2, i32 noundef %39, i32 noundef %30, ptr noundef %46, ptr noundef %35) #11
  %47 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !164
  %49 = icmp eq ptr %48, %32
  br i1 %49, label %50, label %33, !llvm.loop !211

50:                                               ; preds = %33
  %51 = load ptr, ptr %19, align 8, !tbaa !103
  %52 = call ptr %51(ptr noundef nonnull %5) #11
  %53 = add nuw nsw i32 %30, 1
  %54 = icmp eq ptr %52, null
  br i1 %54, label %55, label %27, !llvm.loop !212

55:                                               ; preds = %50, %10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emDM_foreachMappedEdge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %8 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = icmp eq ptr %9, null
  br i1 %10, label %40, label %11

11:                                               ; preds = %3
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %7, i8 noundef zeroext 1) #11
  %12 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 2, ptr %12, align 4, !tbaa !100
  %13 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %13, align 8, !tbaa !102
  %14 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %14, align 8, !tbaa !103
  %15 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !154
  store ptr %16, ptr %4, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #11
  %17 = load ptr, ptr %14, align 8, !tbaa !103
  %18 = call ptr %17(ptr noundef nonnull %4) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %62, label %20

20:                                               ; preds = %11, %20
  %21 = phi i32 [ %38, %20 ], [ 0, %11 ]
  %22 = phi ptr [ %37, %20 ], [ %18, %11 ]
  %23 = load ptr, ptr %8, align 8, !tbaa !98
  %24 = getelementptr inbounds %struct.BMEdge, ptr %22, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !129
  %26 = getelementptr inbounds %struct.BMHeader, ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !132
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [3 x float], ptr %23, i64 %28
  %30 = getelementptr inbounds %struct.BMEdge, ptr %22, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !134
  %32 = getelementptr inbounds %struct.BMHeader, ptr %31, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !132
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [3 x float], ptr %23, i64 %34
  call void %1(ptr noundef %2, i32 noundef %21, ptr noundef %29, ptr noundef %35) #11
  %36 = load ptr, ptr %14, align 8, !tbaa !103
  %37 = call ptr %36(ptr noundef nonnull %4) #11
  %38 = add nuw nsw i32 %21, 1
  %39 = icmp eq ptr %37, null
  br i1 %39, label %62, label %20, !llvm.loop !213

40:                                               ; preds = %3
  %41 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 2, ptr %41, align 4, !tbaa !100
  %42 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %42, align 8, !tbaa !102
  %43 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %43, align 8, !tbaa !103
  %44 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 10
  %45 = load ptr, ptr %44, align 8, !tbaa !154
  store ptr %45, ptr %4, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #11
  %46 = load ptr, ptr %43, align 8, !tbaa !103
  %47 = call ptr %46(ptr noundef nonnull %4) #11
  %48 = icmp eq ptr %47, null
  br i1 %48, label %62, label %49

49:                                               ; preds = %40, %49
  %50 = phi i32 [ %60, %49 ], [ 0, %40 ]
  %51 = phi ptr [ %59, %49 ], [ %47, %40 ]
  %52 = getelementptr inbounds %struct.BMEdge, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !129
  %54 = getelementptr inbounds %struct.BMVert, ptr %53, i64 0, i32 2
  %55 = getelementptr inbounds %struct.BMEdge, ptr %51, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !134
  %57 = getelementptr inbounds %struct.BMVert, ptr %56, i64 0, i32 2
  call void %1(ptr noundef %2, i32 noundef %50, ptr noundef nonnull %54, ptr noundef nonnull %57) #11
  %58 = load ptr, ptr %43, align 8, !tbaa !103
  %59 = call ptr %58(ptr noundef nonnull %4) #11
  %60 = add nuw nsw i32 %50, 1
  %61 = icmp eq ptr %59, null
  br i1 %61, label %62, label %49, !llvm.loop !214

62:                                               ; preds = %20, %49, %11, %40
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emDM_foreachMappedFaceCenter(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  %10 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !215
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %51

13:                                               ; preds = %4
  %14 = load ptr, ptr %8, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.BMesh, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !54
  %18 = sext i32 %17 to i64
  %19 = mul nsw i64 %18, 12
  %20 = tail call ptr %15(i64 noundef %19, ptr noundef nonnull @__func__.emDM_ensurePolyCenters) #11
  %21 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !98
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 3, ptr %24, align 4, !tbaa !100
  %25 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %25, align 8, !tbaa !102
  %26 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %26, align 8, !tbaa !103
  %27 = getelementptr inbounds %struct.BMesh, ptr %14, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !158
  store ptr %28, ptr %5, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #11
  %29 = load ptr, ptr %26, align 8, !tbaa !103
  %30 = call ptr %29(ptr noundef nonnull %5) #11
  %31 = icmp eq ptr %30, null
  br i1 %23, label %41, label %32

32:                                               ; preds = %13
  br i1 %31, label %50, label %33

33:                                               ; preds = %32, %33
  %34 = phi i64 [ %39, %33 ], [ 0, %32 ]
  %35 = phi ptr [ %38, %33 ], [ %30, %32 ]
  %36 = getelementptr inbounds [3 x float], ptr %20, i64 %34
  call void @BM_face_calc_center_mean_vcos(ptr noundef %14, ptr noundef nonnull %35, ptr noundef %36, ptr noundef nonnull %22) #11
  %37 = load ptr, ptr %26, align 8, !tbaa !103
  %38 = call ptr %37(ptr noundef nonnull %5) #11
  %39 = add nuw i64 %34, 1
  %40 = icmp eq ptr %38, null
  br i1 %40, label %50, label %33, !llvm.loop !216

41:                                               ; preds = %13
  br i1 %31, label %50, label %42

42:                                               ; preds = %41, %42
  %43 = phi i64 [ %48, %42 ], [ 0, %41 ]
  %44 = phi ptr [ %47, %42 ], [ %30, %41 ]
  %45 = getelementptr inbounds [3 x float], ptr %20, i64 %43
  call void @BM_face_calc_center_mean(ptr noundef nonnull %44, ptr noundef %45) #11
  %46 = load ptr, ptr %26, align 8, !tbaa !103
  %47 = call ptr %46(ptr noundef nonnull %5) #11
  %48 = add nuw i64 %43, 1
  %49 = icmp eq ptr %47, null
  br i1 %49, label %50, label %42, !llvm.loop !217

50:                                               ; preds = %33, %42, %32, %41
  store ptr %20, ptr %10, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  br label %51

51:                                               ; preds = %4, %50
  %52 = load ptr, ptr %10, align 8, !tbaa !215
  %53 = and i32 %3, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  call fastcc void @emDM_ensurePolyNormals(ptr noundef %0)
  %56 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !124
  br label %58

58:                                               ; preds = %51, %55
  %59 = phi ptr [ %57, %55 ], [ null, %51 ]
  %60 = icmp eq ptr %59, null
  %61 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 3, ptr %61, align 4, !tbaa !100
  %62 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %62, align 8, !tbaa !102
  %63 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %63, align 8, !tbaa !103
  %64 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 12
  %65 = load ptr, ptr %64, align 8, !tbaa !158
  store ptr %65, ptr %6, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #11
  %66 = load ptr, ptr %63, align 8, !tbaa !103
  %67 = call ptr %66(ptr noundef nonnull %6) #11
  %68 = icmp eq ptr %67, null
  br i1 %60, label %79, label %69

69:                                               ; preds = %58
  br i1 %68, label %91, label %70

70:                                               ; preds = %69, %70
  %71 = phi i64 [ %77, %70 ], [ 0, %69 ]
  %72 = getelementptr inbounds [3 x float], ptr %59, i64 %71
  %73 = getelementptr inbounds [3 x float], ptr %52, i64 %71
  %74 = trunc i64 %71 to i32
  call void %1(ptr noundef %2, i32 noundef %74, ptr noundef %73, ptr noundef nonnull %72) #11
  %75 = load ptr, ptr %63, align 8, !tbaa !103
  %76 = call ptr %75(ptr noundef nonnull %6) #11
  %77 = add nuw i64 %71, 1
  %78 = icmp eq ptr %76, null
  br i1 %78, label %91, label %70, !llvm.loop !218

79:                                               ; preds = %58
  br i1 %68, label %91, label %80

80:                                               ; preds = %79, %80
  %81 = phi i64 [ %89, %80 ], [ 0, %79 ]
  %82 = phi ptr [ %88, %80 ], [ %67, %79 ]
  %83 = getelementptr inbounds %struct.BMFace, ptr %82, i64 0, i32 4
  %84 = select i1 %54, ptr null, ptr %83
  %85 = getelementptr inbounds [3 x float], ptr %52, i64 %81
  %86 = trunc i64 %81 to i32
  call void %1(ptr noundef %2, i32 noundef %86, ptr noundef %85, ptr noundef %84) #11
  %87 = load ptr, ptr %63, align 8, !tbaa !103
  %88 = call ptr %87(ptr noundef nonnull %6) #11
  %89 = add nuw i64 %81, 1
  %90 = icmp eq ptr %88, null
  br i1 %90, label %91, label %80, !llvm.loop !219

91:                                               ; preds = %70, %80, %69, %79
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emDM_drawEdges(ptr nocapture noundef readonly %0, i8 zeroext %1, i8 zeroext %2) #0 {
  tail call void @emDM_drawMappedEdges(ptr noundef %0, ptr noundef null, ptr noundef null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emDM_drawMappedEdges(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %8 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = icmp eq ptr %9, null
  br i1 %10, label %48, label %11

11:                                               ; preds = %3
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %7, i8 noundef zeroext 1) #11
  tail call void @glBegin(i32 noundef 1) #11
  %12 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 2, ptr %12, align 4, !tbaa !100
  %13 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %13, align 8, !tbaa !102
  %14 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %14, align 8, !tbaa !103
  %15 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !154
  store ptr %16, ptr %4, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #11
  %17 = load ptr, ptr %14, align 8, !tbaa !103
  %18 = call ptr %17(ptr noundef nonnull %4) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %77, label %20

20:                                               ; preds = %11
  %21 = icmp eq ptr %1, null
  br label %22

22:                                               ; preds = %20, %43
  %23 = phi i32 [ 0, %20 ], [ %46, %43 ]
  %24 = phi ptr [ %18, %20 ], [ %45, %43 ]
  br i1 %21, label %28, label %25

25:                                               ; preds = %22
  %26 = call i32 %1(ptr noundef %2, i32 noundef %23) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %25, %22
  %29 = load ptr, ptr %8, align 8, !tbaa !98
  %30 = getelementptr inbounds %struct.BMEdge, ptr %24, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !129
  %32 = getelementptr inbounds %struct.BMHeader, ptr %31, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !132
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [3 x float], ptr %29, i64 %34
  call void @glVertex3fv(ptr noundef %35) #11
  %36 = load ptr, ptr %8, align 8, !tbaa !98
  %37 = getelementptr inbounds %struct.BMEdge, ptr %24, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !134
  %39 = getelementptr inbounds %struct.BMHeader, ptr %38, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !132
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [3 x float], ptr %36, i64 %41
  call void @glVertex3fv(ptr noundef %42) #11
  br label %43

43:                                               ; preds = %25, %28
  %44 = load ptr, ptr %14, align 8, !tbaa !103
  %45 = call ptr %44(ptr noundef nonnull %4) #11
  %46 = add nuw nsw i32 %23, 1
  %47 = icmp eq ptr %45, null
  br i1 %47, label %77, label %22, !llvm.loop !220

48:                                               ; preds = %3
  tail call void @glBegin(i32 noundef 1) #11
  %49 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 2, ptr %49, align 4, !tbaa !100
  %50 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %50, align 8, !tbaa !102
  %51 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %51, align 8, !tbaa !103
  %52 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !154
  store ptr %53, ptr %4, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #11
  %54 = load ptr, ptr %51, align 8, !tbaa !103
  %55 = call ptr %54(ptr noundef nonnull %4) #11
  %56 = icmp eq ptr %55, null
  br i1 %56, label %77, label %57

57:                                               ; preds = %48
  %58 = icmp eq ptr %1, null
  br label %59

59:                                               ; preds = %57, %72
  %60 = phi i32 [ 0, %57 ], [ %75, %72 ]
  %61 = phi ptr [ %55, %57 ], [ %74, %72 ]
  br i1 %58, label %65, label %62

62:                                               ; preds = %59
  %63 = call i32 %1(ptr noundef %2, i32 noundef %60) #11
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %62, %59
  %66 = getelementptr inbounds %struct.BMEdge, ptr %61, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !129
  %68 = getelementptr inbounds %struct.BMVert, ptr %67, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %68) #11
  %69 = getelementptr inbounds %struct.BMEdge, ptr %61, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !134
  %71 = getelementptr inbounds %struct.BMVert, ptr %70, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %71) #11
  br label %72

72:                                               ; preds = %62, %65
  %73 = load ptr, ptr %51, align 8, !tbaa !103
  %74 = call ptr %73(ptr noundef nonnull %4) #11
  %75 = add nuw nsw i32 %60, 1
  %76 = icmp eq ptr %74, null
  br i1 %76, label %77, label %59, !llvm.loop !221

77:                                               ; preds = %43, %72, %48, %11
  call void @glEnd() #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emDM_drawMappedEdgesInterp(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  %9 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = icmp eq ptr %10, null
  br i1 %11, label %49, label %12

12:                                               ; preds = %4
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %8, i8 noundef zeroext 1) #11
  tail call void @glBegin(i32 noundef 1) #11
  %13 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 2, ptr %13, align 4, !tbaa !100
  %14 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %14, align 8, !tbaa !102
  %15 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %15, align 8, !tbaa !103
  %16 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !154
  store ptr %17, ptr %5, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #11
  %18 = load ptr, ptr %15, align 8, !tbaa !103
  %19 = call ptr %18(ptr noundef nonnull %5) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %78, label %21

21:                                               ; preds = %12
  %22 = icmp eq ptr %1, null
  br label %23

23:                                               ; preds = %21, %44
  %24 = phi i32 [ 0, %21 ], [ %47, %44 ]
  %25 = phi ptr [ %19, %21 ], [ %46, %44 ]
  br i1 %22, label %29, label %26

26:                                               ; preds = %23
  %27 = call i32 %1(ptr noundef %3, i32 noundef %24) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %26, %23
  call void %2(ptr noundef %3, i32 noundef %24, float noundef 0.000000e+00) #11
  %30 = load ptr, ptr %9, align 8, !tbaa !98
  %31 = getelementptr inbounds %struct.BMEdge, ptr %25, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !129
  %33 = getelementptr inbounds %struct.BMHeader, ptr %32, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !132
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [3 x float], ptr %30, i64 %35
  call void @glVertex3fv(ptr noundef %36) #11
  call void %2(ptr noundef %3, i32 noundef %24, float noundef 1.000000e+00) #11
  %37 = load ptr, ptr %9, align 8, !tbaa !98
  %38 = getelementptr inbounds %struct.BMEdge, ptr %25, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !134
  %40 = getelementptr inbounds %struct.BMHeader, ptr %39, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !132
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x float], ptr %37, i64 %42
  call void @glVertex3fv(ptr noundef %43) #11
  br label %44

44:                                               ; preds = %26, %29
  %45 = load ptr, ptr %15, align 8, !tbaa !103
  %46 = call ptr %45(ptr noundef nonnull %5) #11
  %47 = add nuw nsw i32 %24, 1
  %48 = icmp eq ptr %46, null
  br i1 %48, label %78, label %23, !llvm.loop !222

49:                                               ; preds = %4
  tail call void @glBegin(i32 noundef 1) #11
  %50 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 2, ptr %50, align 4, !tbaa !100
  %51 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %51, align 8, !tbaa !102
  %52 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %52, align 8, !tbaa !103
  %53 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 10
  %54 = load ptr, ptr %53, align 8, !tbaa !154
  store ptr %54, ptr %5, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #11
  %55 = load ptr, ptr %52, align 8, !tbaa !103
  %56 = call ptr %55(ptr noundef nonnull %5) #11
  %57 = icmp eq ptr %56, null
  br i1 %57, label %78, label %58

58:                                               ; preds = %49
  %59 = icmp eq ptr %1, null
  br label %60

60:                                               ; preds = %58, %73
  %61 = phi i32 [ 0, %58 ], [ %76, %73 ]
  %62 = phi ptr [ %56, %58 ], [ %75, %73 ]
  br i1 %59, label %66, label %63

63:                                               ; preds = %60
  %64 = call i32 %1(ptr noundef %3, i32 noundef %61) #11
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %63, %60
  call void %2(ptr noundef %3, i32 noundef %61, float noundef 0.000000e+00) #11
  %67 = getelementptr inbounds %struct.BMEdge, ptr %62, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !129
  %69 = getelementptr inbounds %struct.BMVert, ptr %68, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %69) #11
  call void %2(ptr noundef %3, i32 noundef %61, float noundef 1.000000e+00) #11
  %70 = getelementptr inbounds %struct.BMEdge, ptr %62, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !134
  %72 = getelementptr inbounds %struct.BMVert, ptr %71, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %72) #11
  br label %73

73:                                               ; preds = %63, %66
  %74 = load ptr, ptr %52, align 8, !tbaa !103
  %75 = call ptr %74(ptr noundef nonnull %5) #11
  %76 = add nuw nsw i32 %61, 1
  %77 = icmp eq ptr %75, null
  br i1 %77, label %78, label %60, !llvm.loop !223

78:                                               ; preds = %44, %73, %49, %12
  call void @glEnd() #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emDM_drawMappedFaces(ptr noundef %0, ptr noundef readonly %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.BMEditMesh, ptr %8, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !139
  %12 = getelementptr inbounds %struct.BMEditMesh, ptr %8, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !52
  %14 = add nsw i32 %13, -1
  %15 = tail call zeroext i8 @glIsEnabled(i32 noundef 2896) #11
  %16 = icmp ne i8 %15, 0
  %17 = xor i1 %16, true
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 53
  %19 = load ptr, ptr %18, align 8, !tbaa !205
  %20 = tail call ptr %19(ptr noundef %0, i32 noundef 8) #11
  %21 = getelementptr inbounds %struct.BMEditMesh, ptr %8, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !224
  %23 = getelementptr inbounds %struct.BMEditMesh, ptr %8, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !225
  %25 = icmp ne ptr %22, null
  %26 = select i1 %25, i1 %16, i1 false
  %27 = icmp ne ptr %24, null
  %28 = select i1 %27, i1 %16, i1 false
  br i1 %26, label %29, label %30

29:                                               ; preds = %6
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %9, i8 noundef zeroext 1) #11
  br label %30

30:                                               ; preds = %29, %6
  br i1 %28, label %31, label %32

31:                                               ; preds = %30
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %9, i8 noundef zeroext 8) #11
  br label %32

32:                                               ; preds = %31, %30
  %33 = select i1 %25, i1 %16, i1 %28
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  tail call void @glDisable(i32 noundef 2896) #11
  br label %35

35:                                               ; preds = %32, %34
  %36 = phi i32 [ 2, %34 ], [ %5, %32 ]
  %37 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !98
  %39 = icmp eq ptr %38, null
  br i1 %39, label %317, label %40

40:                                               ; preds = %35
  br i1 %16, label %41, label %61

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !123
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load ptr, ptr %7, align 8, !tbaa !43
  %47 = load ptr, ptr %46, align 8, !tbaa !38
  tail call fastcc void @emDM_ensurePolyNormals(ptr noundef %0)
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %47, i8 noundef zeroext 8) #11
  %48 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !124
  %50 = load ptr, ptr %37, align 8, !tbaa !98
  %51 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %52 = load i32, ptr %47, align 8, !tbaa !48
  %53 = sext i32 %52 to i64
  %54 = mul nsw i64 %53, 12
  %55 = tail call ptr %51(i64 noundef %54, ptr noundef nonnull @__func__.emDM_ensureVertNormals) #11
  tail call void @BM_verts_calc_normal_vcos(ptr noundef nonnull %47, ptr noundef %49, ptr noundef %50, ptr noundef %55) #11
  store ptr %55, ptr %42, align 8, !tbaa !123
  br label %56

56:                                               ; preds = %41, %45
  tail call fastcc void @emDM_ensurePolyNormals(ptr noundef %0)
  %57 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !123
  %59 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !124
  br label %61

61:                                               ; preds = %40, %56
  %62 = phi ptr [ %60, %56 ], [ null, %40 ]
  %63 = phi ptr [ %58, %56 ], [ null, %40 ]
  %64 = icmp eq ptr %20, null
  %65 = select i1 %64, i8 9, i8 13
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %9, i8 noundef zeroext %65) #11
  %66 = icmp sgt i32 %13, 0
  br i1 %66, label %67, label %536

67:                                               ; preds = %61
  %68 = and i32 %36, 2
  %69 = icmp eq i32 %68, 0
  %70 = icmp eq ptr %1, null
  %71 = zext i32 %14 to i64
  %72 = zext nneg i32 %13 to i64
  br label %73

73:                                               ; preds = %67, %309
  %74 = phi i64 [ 0, %67 ], [ %315, %309 ]
  %75 = phi i32 [ 0, %67 ], [ %314, %309 ]
  %76 = phi i32 [ 0, %67 ], [ %313, %309 ]
  %77 = phi ptr [ null, %67 ], [ %312, %309 ]
  %78 = phi ptr [ null, %67 ], [ %311, %309 ]
  %79 = phi ptr [ null, %67 ], [ %310, %309 ]
  %80 = getelementptr inbounds [3 x ptr], ptr %11, i64 %74
  %81 = load ptr, ptr %80, align 8, !tbaa !34
  %82 = getelementptr inbounds %struct.BMLoop, ptr %81, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !140
  br i1 %64, label %84, label %93

84:                                               ; preds = %73
  br i1 %69, label %85, label %90

85:                                               ; preds = %84
  %86 = getelementptr inbounds %struct.BMHeader, ptr %83, i64 0, i32 3
  %87 = load i8, ptr %86, align 1, !tbaa !226
  %88 = and i8 %87, 8
  %89 = zext nneg i8 %88 to i32
  br label %90

90:                                               ; preds = %84, %85
  %91 = phi i32 [ %89, %85 ], [ 1, %84 ]
  %92 = icmp ne i32 %91, 0
  br label %93

93:                                               ; preds = %90, %73
  %94 = phi i1 [ true, %73 ], [ %92, %90 ]
  br i1 %70, label %99, label %95

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.BMHeader, ptr %83, i64 0, i32 1
  %97 = load i32, ptr %96, align 8, !tbaa !132
  %98 = tail call i32 %1(ptr noundef %4, i32 noundef %97) #11
  br label %99

99:                                               ; preds = %93, %95
  %100 = phi i32 [ %98, %95 ], [ 1, %93 ]
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %309, label %102

102:                                              ; preds = %99
  %103 = icmp eq i32 %100, 3
  br i1 %103, label %104, label %108

104:                                              ; preds = %102
  %105 = icmp eq i32 %75, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %104
  tail call void @glEnd() #11
  br label %107

107:                                              ; preds = %106, %104
  tail call void @glEnable(i32 noundef 2882) #11
  tail call void @glPolygonStipple(ptr noundef nonnull @stipple_quarttone) #11
  br label %108

108:                                              ; preds = %107, %102
  %109 = phi i32 [ 0, %107 ], [ %75, %102 ]
  br i1 %26, label %110, label %134

110:                                              ; preds = %108
  %111 = load ptr, ptr %80, align 8, !tbaa !34
  %112 = getelementptr inbounds %struct.BMLoop, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !147
  %114 = getelementptr inbounds %struct.BMHeader, ptr %113, i64 0, i32 1
  %115 = load i32, ptr %114, align 8, !tbaa !132
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [4 x i8], ptr %22, i64 %116
  %118 = getelementptr inbounds ptr, ptr %80, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !34
  %120 = getelementptr inbounds %struct.BMLoop, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !147
  %122 = getelementptr inbounds %struct.BMHeader, ptr %121, i64 0, i32 1
  %123 = load i32, ptr %122, align 8, !tbaa !132
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [4 x i8], ptr %22, i64 %124
  %126 = getelementptr inbounds ptr, ptr %80, i64 2
  %127 = load ptr, ptr %126, align 8, !tbaa !34
  %128 = getelementptr inbounds %struct.BMLoop, ptr %127, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !147
  %130 = getelementptr inbounds %struct.BMHeader, ptr %129, i64 0, i32 1
  %131 = load i32, ptr %130, align 8, !tbaa !132
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [4 x i8], ptr %22, i64 %132
  br label %140

134:                                              ; preds = %108
  br i1 %28, label %135, label %140

135:                                              ; preds = %134
  %136 = getelementptr inbounds %struct.BMHeader, ptr %83, i64 0, i32 1
  %137 = load i32, ptr %136, align 8, !tbaa !132
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [4 x i8], ptr %24, i64 %138
  tail call void @glColor3ubv(ptr noundef nonnull %139) #11
  br label %140

140:                                              ; preds = %134, %135, %110
  %141 = phi ptr [ %117, %110 ], [ %79, %135 ], [ %79, %134 ]
  %142 = phi ptr [ %125, %110 ], [ %78, %135 ], [ %78, %134 ]
  %143 = phi ptr [ %133, %110 ], [ %77, %135 ], [ %77, %134 ]
  br i1 %16, label %174, label %144

144:                                              ; preds = %140
  switch i32 %109, label %145 [
    i32 4, label %147
    i32 0, label %146
  ]

145:                                              ; preds = %144
  tail call void @glEnd() #11
  br label %146

146:                                              ; preds = %144, %145
  tail call void @glBegin(i32 noundef 4) #11
  br label %147

147:                                              ; preds = %144, %146
  br i1 %26, label %148, label %156

148:                                              ; preds = %147
  tail call void @glColor3ubv(ptr noundef %141) #11
  %149 = load ptr, ptr %80, align 8, !tbaa !34
  %150 = getelementptr inbounds %struct.BMLoop, ptr %149, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !147
  %152 = getelementptr inbounds %struct.BMHeader, ptr %151, i64 0, i32 1
  %153 = load i32, ptr %152, align 8, !tbaa !132
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [3 x float], ptr %38, i64 %154
  tail call void @glVertex3fv(ptr noundef nonnull %155) #11
  tail call void @glColor3ubv(ptr noundef %142) #11
  br label %164

156:                                              ; preds = %147
  %157 = load ptr, ptr %80, align 8, !tbaa !34
  %158 = getelementptr inbounds %struct.BMLoop, ptr %157, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !147
  %160 = getelementptr inbounds %struct.BMHeader, ptr %159, i64 0, i32 1
  %161 = load i32, ptr %160, align 8, !tbaa !132
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [3 x float], ptr %38, i64 %162
  tail call void @glVertex3fv(ptr noundef nonnull %163) #11
  br label %164

164:                                              ; preds = %156, %148
  %165 = getelementptr inbounds ptr, ptr %80, i64 1
  %166 = load ptr, ptr %165, align 8, !tbaa !34
  %167 = getelementptr inbounds %struct.BMLoop, ptr %166, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !147
  %169 = getelementptr inbounds %struct.BMHeader, ptr %168, i64 0, i32 1
  %170 = load i32, ptr %169, align 8, !tbaa !132
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [3 x float], ptr %38, i64 %171
  tail call void @glVertex3fv(ptr noundef nonnull %172) #11
  br i1 %26, label %173, label %283

173:                                              ; preds = %164
  tail call void @glColor3ubv(ptr noundef %143) #11
  br label %283

174:                                              ; preds = %140
  %175 = select i1 %94, i32 7425, i32 7424
  %176 = icmp eq i32 %175, %76
  br i1 %176, label %181, label %177

177:                                              ; preds = %174
  %178 = icmp eq i32 %109, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %177
  tail call void @glEnd() #11
  br label %180

180:                                              ; preds = %179, %177
  tail call void @glShadeModel(i32 noundef %175) #11
  tail call void @glBegin(i32 noundef 4) #11
  br label %181

181:                                              ; preds = %180, %174
  %182 = phi i32 [ %175, %180 ], [ %76, %174 ]
  %183 = phi i32 [ 4, %180 ], [ %109, %174 ]
  switch i32 %183, label %184 [
    i32 4, label %186
    i32 0, label %185
  ]

184:                                              ; preds = %181
  tail call void @glEnd() #11
  br label %185

185:                                              ; preds = %181, %184
  tail call void @glBegin(i32 noundef 4) #11
  br label %186

186:                                              ; preds = %181, %185
  br i1 %94, label %218, label %187

187:                                              ; preds = %186
  %188 = getelementptr inbounds %struct.BMHeader, ptr %83, i64 0, i32 1
  %189 = load i32, ptr %188, align 8, !tbaa !132
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [3 x float], ptr %62, i64 %190
  tail call void @glNormal3fv(ptr noundef %191) #11
  br i1 %26, label %192, label %200

192:                                              ; preds = %187
  tail call void @glColor3ubv(ptr noundef %141) #11
  %193 = load ptr, ptr %80, align 8, !tbaa !34
  %194 = getelementptr inbounds %struct.BMLoop, ptr %193, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !147
  %196 = getelementptr inbounds %struct.BMHeader, ptr %195, i64 0, i32 1
  %197 = load i32, ptr %196, align 8, !tbaa !132
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [3 x float], ptr %38, i64 %198
  tail call void @glVertex3fv(ptr noundef nonnull %199) #11
  tail call void @glColor3ubv(ptr noundef %142) #11
  br label %208

200:                                              ; preds = %187
  %201 = load ptr, ptr %80, align 8, !tbaa !34
  %202 = getelementptr inbounds %struct.BMLoop, ptr %201, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !147
  %204 = getelementptr inbounds %struct.BMHeader, ptr %203, i64 0, i32 1
  %205 = load i32, ptr %204, align 8, !tbaa !132
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [3 x float], ptr %38, i64 %206
  tail call void @glVertex3fv(ptr noundef nonnull %207) #11
  br label %208

208:                                              ; preds = %200, %192
  %209 = getelementptr inbounds ptr, ptr %80, i64 1
  %210 = load ptr, ptr %209, align 8, !tbaa !34
  %211 = getelementptr inbounds %struct.BMLoop, ptr %210, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !147
  %213 = getelementptr inbounds %struct.BMHeader, ptr %212, i64 0, i32 1
  %214 = load i32, ptr %213, align 8, !tbaa !132
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [3 x float], ptr %38, i64 %215
  tail call void @glVertex3fv(ptr noundef nonnull %216) #11
  br i1 %26, label %217, label %283

217:                                              ; preds = %208
  tail call void @glColor3ubv(ptr noundef %143) #11
  br label %283

218:                                              ; preds = %186
  br i1 %26, label %219, label %220

219:                                              ; preds = %218
  tail call void @glColor3ubv(ptr noundef %141) #11
  br label %220

220:                                              ; preds = %219, %218
  %221 = load ptr, ptr %80, align 8, !tbaa !34
  br i1 %64, label %227, label %222

222:                                              ; preds = %220
  %223 = getelementptr inbounds %struct.BMHeader, ptr %221, i64 0, i32 1
  %224 = load i32, ptr %223, align 8, !tbaa !132
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [3 x float], ptr %20, i64 %225
  tail call void @glNormal3fv(ptr noundef nonnull %226) #11
  br label %234

227:                                              ; preds = %220
  %228 = getelementptr inbounds %struct.BMLoop, ptr %221, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !147
  %230 = getelementptr inbounds %struct.BMHeader, ptr %229, i64 0, i32 1
  %231 = load i32, ptr %230, align 8, !tbaa !132
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [3 x float], ptr %63, i64 %232
  tail call void @glNormal3fv(ptr noundef %233) #11
  br label %234

234:                                              ; preds = %227, %222
  %235 = load ptr, ptr %80, align 8, !tbaa !34
  %236 = getelementptr inbounds %struct.BMLoop, ptr %235, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !147
  %238 = getelementptr inbounds %struct.BMHeader, ptr %237, i64 0, i32 1
  %239 = load i32, ptr %238, align 8, !tbaa !132
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [3 x float], ptr %38, i64 %240
  tail call void @glVertex3fv(ptr noundef nonnull %241) #11
  br i1 %26, label %242, label %243

242:                                              ; preds = %234
  tail call void @glColor3ubv(ptr noundef %142) #11
  br label %243

243:                                              ; preds = %242, %234
  %244 = getelementptr inbounds ptr, ptr %80, i64 1
  %245 = load ptr, ptr %244, align 8, !tbaa !34
  br i1 %64, label %251, label %246

246:                                              ; preds = %243
  %247 = getelementptr inbounds %struct.BMHeader, ptr %245, i64 0, i32 1
  %248 = load i32, ptr %247, align 8, !tbaa !132
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [3 x float], ptr %20, i64 %249
  tail call void @glNormal3fv(ptr noundef nonnull %250) #11
  br label %258

251:                                              ; preds = %243
  %252 = getelementptr inbounds %struct.BMLoop, ptr %245, i64 0, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !147
  %254 = getelementptr inbounds %struct.BMHeader, ptr %253, i64 0, i32 1
  %255 = load i32, ptr %254, align 8, !tbaa !132
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [3 x float], ptr %63, i64 %256
  tail call void @glNormal3fv(ptr noundef %257) #11
  br label %258

258:                                              ; preds = %251, %246
  %259 = getelementptr inbounds ptr, ptr %80, i64 1
  %260 = load ptr, ptr %259, align 8, !tbaa !34
  %261 = getelementptr inbounds %struct.BMLoop, ptr %260, i64 0, i32 1
  %262 = load ptr, ptr %261, align 8, !tbaa !147
  %263 = getelementptr inbounds %struct.BMHeader, ptr %262, i64 0, i32 1
  %264 = load i32, ptr %263, align 8, !tbaa !132
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [3 x float], ptr %38, i64 %265
  tail call void @glVertex3fv(ptr noundef nonnull %266) #11
  br i1 %26, label %267, label %268

267:                                              ; preds = %258
  tail call void @glColor3ubv(ptr noundef %143) #11
  br label %268

268:                                              ; preds = %267, %258
  %269 = getelementptr inbounds ptr, ptr %80, i64 2
  %270 = load ptr, ptr %269, align 8, !tbaa !34
  br i1 %64, label %276, label %271

271:                                              ; preds = %268
  %272 = getelementptr inbounds %struct.BMHeader, ptr %270, i64 0, i32 1
  %273 = load i32, ptr %272, align 8, !tbaa !132
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [3 x float], ptr %20, i64 %274
  tail call void @glNormal3fv(ptr noundef nonnull %275) #11
  br label %283

276:                                              ; preds = %268
  %277 = getelementptr inbounds %struct.BMLoop, ptr %270, i64 0, i32 1
  %278 = load ptr, ptr %277, align 8, !tbaa !147
  %279 = getelementptr inbounds %struct.BMHeader, ptr %278, i64 0, i32 1
  %280 = load i32, ptr %279, align 8, !tbaa !132
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [3 x float], ptr %63, i64 %281
  tail call void @glNormal3fv(ptr noundef %282) #11
  br label %283

283:                                              ; preds = %271, %276, %208, %217, %164, %173
  %284 = phi i32 [ %76, %173 ], [ %76, %164 ], [ %182, %217 ], [ %182, %208 ], [ %182, %276 ], [ %182, %271 ]
  %285 = getelementptr inbounds ptr, ptr %80, i64 2
  %286 = load ptr, ptr %285, align 8, !tbaa !34
  %287 = getelementptr inbounds %struct.BMLoop, ptr %286, i64 0, i32 1
  %288 = load ptr, ptr %287, align 8, !tbaa !147
  %289 = getelementptr inbounds %struct.BMHeader, ptr %288, i64 0, i32 1
  %290 = load i32, ptr %289, align 8, !tbaa !132
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [3 x float], ptr %38, i64 %291
  tail call void @glVertex3fv(ptr noundef nonnull %292) #11
  %293 = or i1 %103, %17
  %294 = icmp eq i64 %74, %71
  %295 = select i1 %293, i1 true, i1 %294
  br i1 %295, label %306, label %296

296:                                              ; preds = %283
  %297 = getelementptr inbounds %struct.BMFace, ptr %83, i64 0, i32 5
  %298 = load i16, ptr %297, align 8, !tbaa !142
  %299 = getelementptr [3 x ptr], ptr %80, i64 1
  %300 = load ptr, ptr %299, align 8, !tbaa !34
  %301 = getelementptr inbounds %struct.BMLoop, ptr %300, i64 0, i32 3
  %302 = load ptr, ptr %301, align 8, !tbaa !140
  %303 = getelementptr inbounds %struct.BMFace, ptr %302, i64 0, i32 5
  %304 = load i16, ptr %303, align 8, !tbaa !142
  %305 = icmp ne i16 %298, %304
  br label %306

306:                                              ; preds = %296, %283
  %307 = phi i1 [ %103, %283 ], [ %305, %296 ]
  br i1 %307, label %308, label %309

308:                                              ; preds = %306
  tail call void @glEnd() #11
  tail call void @glDisable(i32 noundef 2882) #11
  br label %309

309:                                              ; preds = %306, %308, %99
  %310 = phi ptr [ %79, %99 ], [ %141, %308 ], [ %141, %306 ]
  %311 = phi ptr [ %78, %99 ], [ %142, %308 ], [ %142, %306 ]
  %312 = phi ptr [ %77, %99 ], [ %143, %308 ], [ %143, %306 ]
  %313 = phi i32 [ %76, %99 ], [ %284, %308 ], [ %284, %306 ]
  %314 = phi i32 [ %75, %99 ], [ 0, %308 ], [ 4, %306 ]
  %315 = add nuw nsw i64 %74, 1
  %316 = icmp eq i64 %315, %72
  br i1 %316, label %536, label %73, !llvm.loop !227

317:                                              ; preds = %35
  %318 = icmp eq ptr %20, null
  %319 = select i1 %318, i8 8, i8 12
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %9, i8 noundef zeroext %319) #11
  %320 = icmp sgt i32 %13, 0
  br i1 %320, label %321, label %536

321:                                              ; preds = %317
  %322 = and i32 %36, 2
  %323 = icmp eq i32 %322, 0
  %324 = icmp eq ptr %1, null
  %325 = zext i32 %14 to i64
  %326 = zext nneg i32 %13 to i64
  br label %327

327:                                              ; preds = %321, %528
  %328 = phi i64 [ 0, %321 ], [ %534, %528 ]
  %329 = phi i32 [ 0, %321 ], [ %533, %528 ]
  %330 = phi i32 [ 0, %321 ], [ %532, %528 ]
  %331 = phi ptr [ null, %321 ], [ %531, %528 ]
  %332 = phi ptr [ null, %321 ], [ %530, %528 ]
  %333 = phi ptr [ null, %321 ], [ %529, %528 ]
  %334 = getelementptr inbounds [3 x ptr], ptr %11, i64 %328
  %335 = load ptr, ptr %334, align 8, !tbaa !34
  %336 = getelementptr inbounds %struct.BMLoop, ptr %335, i64 0, i32 3
  %337 = load ptr, ptr %336, align 8, !tbaa !140
  br i1 %318, label %338, label %347

338:                                              ; preds = %327
  br i1 %323, label %339, label %344

339:                                              ; preds = %338
  %340 = getelementptr inbounds %struct.BMHeader, ptr %337, i64 0, i32 3
  %341 = load i8, ptr %340, align 1, !tbaa !226
  %342 = and i8 %341, 8
  %343 = zext nneg i8 %342 to i32
  br label %344

344:                                              ; preds = %338, %339
  %345 = phi i32 [ %343, %339 ], [ 1, %338 ]
  %346 = icmp ne i32 %345, 0
  br label %347

347:                                              ; preds = %344, %327
  %348 = phi i1 [ true, %327 ], [ %346, %344 ]
  br i1 %324, label %353, label %349

349:                                              ; preds = %347
  %350 = getelementptr inbounds %struct.BMHeader, ptr %337, i64 0, i32 1
  %351 = load i32, ptr %350, align 8, !tbaa !132
  %352 = tail call i32 %1(ptr noundef %4, i32 noundef %351) #11
  br label %353

353:                                              ; preds = %347, %349
  %354 = phi i32 [ %352, %349 ], [ 1, %347 ]
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %528, label %356

356:                                              ; preds = %353
  %357 = icmp eq i32 %354, 3
  br i1 %357, label %358, label %362

358:                                              ; preds = %356
  %359 = icmp eq i32 %329, 0
  br i1 %359, label %361, label %360

360:                                              ; preds = %358
  tail call void @glEnd() #11
  br label %361

361:                                              ; preds = %360, %358
  tail call void @glEnable(i32 noundef 2882) #11
  tail call void @glPolygonStipple(ptr noundef nonnull @stipple_quarttone) #11
  br label %362

362:                                              ; preds = %361, %356
  %363 = phi i32 [ 0, %361 ], [ %329, %356 ]
  br i1 %26, label %364, label %388

364:                                              ; preds = %362
  %365 = load ptr, ptr %334, align 8, !tbaa !34
  %366 = getelementptr inbounds %struct.BMLoop, ptr %365, i64 0, i32 1
  %367 = load ptr, ptr %366, align 8, !tbaa !147
  %368 = getelementptr inbounds %struct.BMHeader, ptr %367, i64 0, i32 1
  %369 = load i32, ptr %368, align 8, !tbaa !132
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [4 x i8], ptr %22, i64 %370
  %372 = getelementptr inbounds ptr, ptr %334, i64 1
  %373 = load ptr, ptr %372, align 8, !tbaa !34
  %374 = getelementptr inbounds %struct.BMLoop, ptr %373, i64 0, i32 1
  %375 = load ptr, ptr %374, align 8, !tbaa !147
  %376 = getelementptr inbounds %struct.BMHeader, ptr %375, i64 0, i32 1
  %377 = load i32, ptr %376, align 8, !tbaa !132
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [4 x i8], ptr %22, i64 %378
  %380 = getelementptr inbounds ptr, ptr %334, i64 2
  %381 = load ptr, ptr %380, align 8, !tbaa !34
  %382 = getelementptr inbounds %struct.BMLoop, ptr %381, i64 0, i32 1
  %383 = load ptr, ptr %382, align 8, !tbaa !147
  %384 = getelementptr inbounds %struct.BMHeader, ptr %383, i64 0, i32 1
  %385 = load i32, ptr %384, align 8, !tbaa !132
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [4 x i8], ptr %22, i64 %386
  br label %394

388:                                              ; preds = %362
  br i1 %28, label %389, label %394

389:                                              ; preds = %388
  %390 = getelementptr inbounds %struct.BMHeader, ptr %337, i64 0, i32 1
  %391 = load i32, ptr %390, align 8, !tbaa !132
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds [4 x i8], ptr %24, i64 %392
  tail call void @glColor3ubv(ptr noundef nonnull %393) #11
  br label %394

394:                                              ; preds = %388, %389, %364
  %395 = phi ptr [ %371, %364 ], [ %333, %389 ], [ %333, %388 ]
  %396 = phi ptr [ %379, %364 ], [ %332, %389 ], [ %332, %388 ]
  %397 = phi ptr [ %387, %364 ], [ %331, %389 ], [ %331, %388 ]
  br i1 %16, label %419, label %398

398:                                              ; preds = %394
  switch i32 %363, label %399 [
    i32 4, label %401
    i32 0, label %400
  ]

399:                                              ; preds = %398
  tail call void @glEnd() #11
  br label %400

400:                                              ; preds = %398, %399
  tail call void @glBegin(i32 noundef 4) #11
  br label %401

401:                                              ; preds = %398, %400
  br i1 %26, label %402, label %407

402:                                              ; preds = %401
  tail call void @glColor3ubv(ptr noundef %395) #11
  %403 = load ptr, ptr %334, align 8, !tbaa !34
  %404 = getelementptr inbounds %struct.BMLoop, ptr %403, i64 0, i32 1
  %405 = load ptr, ptr %404, align 8, !tbaa !147
  %406 = getelementptr inbounds %struct.BMVert, ptr %405, i64 0, i32 2
  tail call void @glVertex3fv(ptr noundef nonnull %406) #11
  tail call void @glColor3ubv(ptr noundef %396) #11
  br label %412

407:                                              ; preds = %401
  %408 = load ptr, ptr %334, align 8, !tbaa !34
  %409 = getelementptr inbounds %struct.BMLoop, ptr %408, i64 0, i32 1
  %410 = load ptr, ptr %409, align 8, !tbaa !147
  %411 = getelementptr inbounds %struct.BMVert, ptr %410, i64 0, i32 2
  tail call void @glVertex3fv(ptr noundef nonnull %411) #11
  br label %412

412:                                              ; preds = %407, %402
  %413 = getelementptr inbounds ptr, ptr %334, i64 1
  %414 = load ptr, ptr %413, align 8, !tbaa !34
  %415 = getelementptr inbounds %struct.BMLoop, ptr %414, i64 0, i32 1
  %416 = load ptr, ptr %415, align 8, !tbaa !147
  %417 = getelementptr inbounds %struct.BMVert, ptr %416, i64 0, i32 2
  tail call void @glVertex3fv(ptr noundef nonnull %417) #11
  br i1 %26, label %418, label %505

418:                                              ; preds = %412
  tail call void @glColor3ubv(ptr noundef %397) #11
  br label %505

419:                                              ; preds = %394
  %420 = select i1 %348, i32 7425, i32 7424
  %421 = icmp eq i32 %420, %330
  br i1 %421, label %426, label %422

422:                                              ; preds = %419
  %423 = icmp eq i32 %363, 0
  br i1 %423, label %425, label %424

424:                                              ; preds = %422
  tail call void @glEnd() #11
  br label %425

425:                                              ; preds = %424, %422
  tail call void @glShadeModel(i32 noundef %420) #11
  tail call void @glBegin(i32 noundef 4) #11
  br label %426

426:                                              ; preds = %425, %419
  %427 = phi i32 [ %420, %425 ], [ %330, %419 ]
  %428 = phi i32 [ 4, %425 ], [ %363, %419 ]
  switch i32 %428, label %429 [
    i32 4, label %431
    i32 0, label %430
  ]

429:                                              ; preds = %426
  tail call void @glEnd() #11
  br label %430

430:                                              ; preds = %426, %429
  tail call void @glBegin(i32 noundef 4) #11
  br label %431

431:                                              ; preds = %426, %430
  br i1 %348, label %451, label %432

432:                                              ; preds = %431
  %433 = getelementptr inbounds %struct.BMFace, ptr %337, i64 0, i32 4
  tail call void @glNormal3fv(ptr noundef nonnull %433) #11
  br i1 %26, label %434, label %439

434:                                              ; preds = %432
  tail call void @glColor3ubv(ptr noundef %395) #11
  %435 = load ptr, ptr %334, align 8, !tbaa !34
  %436 = getelementptr inbounds %struct.BMLoop, ptr %435, i64 0, i32 1
  %437 = load ptr, ptr %436, align 8, !tbaa !147
  %438 = getelementptr inbounds %struct.BMVert, ptr %437, i64 0, i32 2
  tail call void @glVertex3fv(ptr noundef nonnull %438) #11
  tail call void @glColor3ubv(ptr noundef %396) #11
  br label %444

439:                                              ; preds = %432
  %440 = load ptr, ptr %334, align 8, !tbaa !34
  %441 = getelementptr inbounds %struct.BMLoop, ptr %440, i64 0, i32 1
  %442 = load ptr, ptr %441, align 8, !tbaa !147
  %443 = getelementptr inbounds %struct.BMVert, ptr %442, i64 0, i32 2
  tail call void @glVertex3fv(ptr noundef nonnull %443) #11
  br label %444

444:                                              ; preds = %439, %434
  %445 = getelementptr inbounds ptr, ptr %334, i64 1
  %446 = load ptr, ptr %445, align 8, !tbaa !34
  %447 = getelementptr inbounds %struct.BMLoop, ptr %446, i64 0, i32 1
  %448 = load ptr, ptr %447, align 8, !tbaa !147
  %449 = getelementptr inbounds %struct.BMVert, ptr %448, i64 0, i32 2
  tail call void @glVertex3fv(ptr noundef nonnull %449) #11
  br i1 %26, label %450, label %505

450:                                              ; preds = %444
  tail call void @glColor3ubv(ptr noundef %397) #11
  br label %505

451:                                              ; preds = %431
  br i1 %26, label %452, label %453

452:                                              ; preds = %451
  tail call void @glColor3ubv(ptr noundef %395) #11
  br label %453

453:                                              ; preds = %452, %451
  %454 = load ptr, ptr %334, align 8, !tbaa !34
  br i1 %318, label %460, label %455

455:                                              ; preds = %453
  %456 = getelementptr inbounds %struct.BMHeader, ptr %454, i64 0, i32 1
  %457 = load i32, ptr %456, align 8, !tbaa !132
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds [3 x float], ptr %20, i64 %458
  br label %464

460:                                              ; preds = %453
  %461 = getelementptr inbounds %struct.BMLoop, ptr %454, i64 0, i32 1
  %462 = load ptr, ptr %461, align 8, !tbaa !147
  %463 = getelementptr inbounds %struct.BMVert, ptr %462, i64 0, i32 3
  br label %464

464:                                              ; preds = %460, %455
  %465 = phi ptr [ %463, %460 ], [ %459, %455 ]
  tail call void @glNormal3fv(ptr noundef nonnull %465) #11
  %466 = load ptr, ptr %334, align 8, !tbaa !34
  %467 = getelementptr inbounds %struct.BMLoop, ptr %466, i64 0, i32 1
  %468 = load ptr, ptr %467, align 8, !tbaa !147
  %469 = getelementptr inbounds %struct.BMVert, ptr %468, i64 0, i32 2
  tail call void @glVertex3fv(ptr noundef nonnull %469) #11
  br i1 %26, label %470, label %471

470:                                              ; preds = %464
  tail call void @glColor3ubv(ptr noundef %396) #11
  br label %471

471:                                              ; preds = %470, %464
  %472 = getelementptr inbounds ptr, ptr %334, i64 1
  %473 = load ptr, ptr %472, align 8, !tbaa !34
  br i1 %318, label %479, label %474

474:                                              ; preds = %471
  %475 = getelementptr inbounds %struct.BMHeader, ptr %473, i64 0, i32 1
  %476 = load i32, ptr %475, align 8, !tbaa !132
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds [3 x float], ptr %20, i64 %477
  br label %483

479:                                              ; preds = %471
  %480 = getelementptr inbounds %struct.BMLoop, ptr %473, i64 0, i32 1
  %481 = load ptr, ptr %480, align 8, !tbaa !147
  %482 = getelementptr inbounds %struct.BMVert, ptr %481, i64 0, i32 3
  br label %483

483:                                              ; preds = %479, %474
  %484 = phi ptr [ %482, %479 ], [ %478, %474 ]
  tail call void @glNormal3fv(ptr noundef nonnull %484) #11
  %485 = getelementptr inbounds ptr, ptr %334, i64 1
  %486 = load ptr, ptr %485, align 8, !tbaa !34
  %487 = getelementptr inbounds %struct.BMLoop, ptr %486, i64 0, i32 1
  %488 = load ptr, ptr %487, align 8, !tbaa !147
  %489 = getelementptr inbounds %struct.BMVert, ptr %488, i64 0, i32 2
  tail call void @glVertex3fv(ptr noundef nonnull %489) #11
  br i1 %26, label %490, label %491

490:                                              ; preds = %483
  tail call void @glColor3ubv(ptr noundef %397) #11
  br label %491

491:                                              ; preds = %490, %483
  %492 = getelementptr inbounds ptr, ptr %334, i64 2
  %493 = load ptr, ptr %492, align 8, !tbaa !34
  br i1 %318, label %499, label %494

494:                                              ; preds = %491
  %495 = getelementptr inbounds %struct.BMHeader, ptr %493, i64 0, i32 1
  %496 = load i32, ptr %495, align 8, !tbaa !132
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds [3 x float], ptr %20, i64 %497
  br label %503

499:                                              ; preds = %491
  %500 = getelementptr inbounds %struct.BMLoop, ptr %493, i64 0, i32 1
  %501 = load ptr, ptr %500, align 8, !tbaa !147
  %502 = getelementptr inbounds %struct.BMVert, ptr %501, i64 0, i32 3
  br label %503

503:                                              ; preds = %499, %494
  %504 = phi ptr [ %502, %499 ], [ %498, %494 ]
  tail call void @glNormal3fv(ptr noundef nonnull %504) #11
  br label %505

505:                                              ; preds = %444, %450, %412, %418, %503
  %506 = phi i32 [ %427, %503 ], [ %330, %418 ], [ %330, %412 ], [ %427, %450 ], [ %427, %444 ]
  %507 = getelementptr inbounds ptr, ptr %334, i64 2
  %508 = load ptr, ptr %507, align 8, !tbaa !34
  %509 = getelementptr inbounds %struct.BMLoop, ptr %508, i64 0, i32 1
  %510 = load ptr, ptr %509, align 8, !tbaa !147
  %511 = getelementptr inbounds %struct.BMVert, ptr %510, i64 0, i32 2
  tail call void @glVertex3fv(ptr noundef nonnull %511) #11
  %512 = or i1 %357, %17
  %513 = icmp eq i64 %328, %325
  %514 = select i1 %512, i1 true, i1 %513
  br i1 %514, label %525, label %515

515:                                              ; preds = %505
  %516 = getelementptr inbounds %struct.BMFace, ptr %337, i64 0, i32 5
  %517 = load i16, ptr %516, align 8, !tbaa !142
  %518 = getelementptr [3 x ptr], ptr %334, i64 1
  %519 = load ptr, ptr %518, align 8, !tbaa !34
  %520 = getelementptr inbounds %struct.BMLoop, ptr %519, i64 0, i32 3
  %521 = load ptr, ptr %520, align 8, !tbaa !140
  %522 = getelementptr inbounds %struct.BMFace, ptr %521, i64 0, i32 5
  %523 = load i16, ptr %522, align 8, !tbaa !142
  %524 = icmp ne i16 %517, %523
  br label %525

525:                                              ; preds = %515, %505
  %526 = phi i1 [ %357, %505 ], [ %524, %515 ]
  br i1 %526, label %527, label %528

527:                                              ; preds = %525
  tail call void @glEnd() #11
  tail call void @glDisable(i32 noundef 2882) #11
  br label %528

528:                                              ; preds = %525, %527, %353
  %529 = phi ptr [ %333, %353 ], [ %395, %527 ], [ %395, %525 ]
  %530 = phi ptr [ %332, %353 ], [ %396, %527 ], [ %396, %525 ]
  %531 = phi ptr [ %331, %353 ], [ %397, %527 ], [ %397, %525 ]
  %532 = phi i32 [ %330, %353 ], [ %506, %527 ], [ %506, %525 ]
  %533 = phi i32 [ %329, %353 ], [ 0, %527 ], [ 4, %525 ]
  %534 = add nuw nsw i64 %328, 1
  %535 = icmp eq i64 %534, %326
  br i1 %535, label %536, label %327, !llvm.loop !228

536:                                              ; preds = %309, %528, %61, %317
  %537 = phi i32 [ 0, %317 ], [ 0, %61 ], [ %533, %528 ], [ %314, %309 ]
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %540, label %539

539:                                              ; preds = %536
  tail call void @glEnd() #11
  br label %540

540:                                              ; preds = %539, %536
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emDM_drawMappedFacesTex(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3, i32 %4) #0 {
  tail call fastcc void @emDM_drawFacesTex_common(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emDM_drawMappedFacesGLSL(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) #0 {
  %5 = alloca %struct.DMVertexAttribs, align 8
  %6 = alloca %struct.GPUVertexAttribs, align 4
  %7 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.BMEditMesh, ptr %8, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !139
  %12 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 53
  %15 = load ptr, ptr %14, align 8, !tbaa !205
  %16 = tail call ptr %15(ptr noundef %0, i32 noundef 8) #11
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 2564, ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %5, i8 0, i64 376, i1 false)
  %17 = load ptr, ptr %12, align 8, !tbaa !98
  %18 = icmp eq ptr %17, null
  br i1 %18, label %34, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !123
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load ptr, ptr %7, align 8, !tbaa !43
  %25 = load ptr, ptr %24, align 8, !tbaa !38
  tail call fastcc void @emDM_ensurePolyNormals(ptr noundef %0)
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %25, i8 noundef zeroext 8) #11
  %26 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !124
  %28 = load ptr, ptr %12, align 8, !tbaa !98
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %30 = load i32, ptr %25, align 8, !tbaa !48
  %31 = sext i32 %30 to i64
  %32 = mul nsw i64 %31, 12
  %33 = tail call ptr %29(i64 noundef %32, ptr noundef nonnull @__func__.emDM_ensureVertNormals) #11
  tail call void @BM_verts_calc_normal_vcos(ptr noundef nonnull %25, ptr noundef %27, ptr noundef %28, ptr noundef %33) #11
  store ptr %33, ptr %20, align 8, !tbaa !123
  br label %34

34:                                               ; preds = %4, %19, %23
  tail call fastcc void @emDM_ensurePolyNormals(ptr noundef %0)
  %35 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !123
  %37 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !124
  tail call void @glShadeModel(i32 noundef 7425) #11
  %39 = icmp eq ptr %16, null
  %40 = select i1 %39, i8 9, i8 13
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %9, i8 noundef zeroext %40) #11
  %41 = getelementptr inbounds %struct.BMEditMesh, ptr %8, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !52
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %176

44:                                               ; preds = %34
  %45 = icmp eq ptr %2, null
  %46 = icmp eq ptr %13, null
  %47 = icmp eq ptr %13, null
  br label %48

48:                                               ; preds = %44, %166
  %49 = phi i64 [ 0, %44 ], [ %169, %166 ]
  %50 = phi i32 [ -1, %44 ], [ %168, %166 ]
  %51 = phi i8 [ 0, %44 ], [ %167, %166 ]
  %52 = getelementptr inbounds [3 x ptr], ptr %11, i64 %49
  %53 = load ptr, ptr %52, align 8, !tbaa !34
  %54 = getelementptr inbounds %struct.BMLoop, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !140
  br i1 %45, label %61, label %56

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.BMHeader, ptr %55, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !132
  %59 = call i32 %2(ptr noundef %3, i32 noundef %58) #11
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %166, label %61

61:                                               ; preds = %56, %48
  %62 = getelementptr inbounds %struct.BMFace, ptr %55, i64 0, i32 5
  %63 = load i16, ptr %62, align 8, !tbaa !142
  %64 = sext i16 %63 to i32
  %65 = add nsw i32 %64, 1
  %66 = icmp eq i32 %65, %50
  br i1 %66, label %76, label %67

67:                                               ; preds = %61
  %68 = icmp eq i32 %50, -1
  br i1 %68, label %70, label %69

69:                                               ; preds = %67
  call void @glEnd() #11
  br label %70

70:                                               ; preds = %69, %67
  %71 = call i32 %1(i32 noundef %65, ptr noundef nonnull %6) #11
  %72 = trunc i32 %71 to i8
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  call void @DM_vertex_attributes_from_gpu(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %5) #11
  br label %75

75:                                               ; preds = %74, %70
  call void @glBegin(i32 noundef 4) #11
  br label %76

76:                                               ; preds = %75, %61
  %77 = phi i8 [ %72, %75 ], [ %51, %61 ]
  %78 = phi i32 [ %65, %75 ], [ %50, %61 ]
  %79 = icmp eq i8 %77, 0
  br i1 %79, label %166, label %80

80:                                               ; preds = %76
  br i1 %39, label %81, label %119

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct.BMHeader, ptr %55, i64 0, i32 3
  %83 = load i8, ptr %82, align 1, !tbaa !226
  %84 = and i8 %83, 8
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %119

86:                                               ; preds = %81
  br i1 %47, label %106, label %87

87:                                               ; preds = %86
  %88 = getelementptr inbounds %struct.BMHeader, ptr %55, i64 0, i32 1
  %89 = load i32, ptr %88, align 8, !tbaa !132
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [3 x float], ptr %38, i64 %90
  call void @glNormal3fv(ptr noundef %91) #11
  br label %92

92:                                               ; preds = %87, %92
  %93 = phi i64 [ 0, %87 ], [ %104, %92 ]
  %94 = getelementptr inbounds ptr, ptr %52, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !34
  %96 = trunc i64 %93 to i32
  call fastcc void @emdm_pass_attrib_vertex_glsl(ptr noundef nonnull %5, ptr noundef %95, i32 noundef %96)
  %97 = load ptr, ptr %94, align 8, !tbaa !34
  %98 = getelementptr inbounds %struct.BMLoop, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !147
  %100 = getelementptr inbounds %struct.BMHeader, ptr %99, i64 0, i32 1
  %101 = load i32, ptr %100, align 8, !tbaa !132
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [3 x float], ptr %13, i64 %102
  call void @glVertex3fv(ptr noundef nonnull %103) #11
  %104 = add nuw nsw i64 %93, 1
  %105 = icmp eq i64 %104, 3
  br i1 %105, label %166, label %92, !llvm.loop !229

106:                                              ; preds = %86
  %107 = getelementptr inbounds %struct.BMFace, ptr %55, i64 0, i32 4
  call void @glNormal3fv(ptr noundef nonnull %107) #11
  br label %108

108:                                              ; preds = %106, %108
  %109 = phi i64 [ 0, %106 ], [ %117, %108 ]
  %110 = getelementptr inbounds ptr, ptr %52, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !34
  %112 = trunc i64 %109 to i32
  call fastcc void @emdm_pass_attrib_vertex_glsl(ptr noundef nonnull %5, ptr noundef %111, i32 noundef %112)
  %113 = load ptr, ptr %110, align 8, !tbaa !34
  %114 = getelementptr inbounds %struct.BMLoop, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !147
  %116 = getelementptr inbounds %struct.BMVert, ptr %115, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %116) #11
  %117 = add nuw nsw i64 %109, 1
  %118 = icmp eq i64 %117, 3
  br i1 %118, label %166, label %108, !llvm.loop !230

119:                                              ; preds = %80, %81
  br i1 %46, label %143, label %120

120:                                              ; preds = %119, %138
  %121 = phi i64 [ %141, %138 ], [ 0, %119 ]
  %122 = getelementptr inbounds ptr, ptr %52, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !34
  %124 = getelementptr inbounds %struct.BMLoop, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !147
  %126 = getelementptr inbounds %struct.BMHeader, ptr %125, i64 0, i32 1
  %127 = load i32, ptr %126, align 8, !tbaa !132
  %128 = trunc i64 %121 to i32
  call fastcc void @emdm_pass_attrib_vertex_glsl(ptr noundef nonnull %5, ptr noundef %123, i32 noundef %128)
  br i1 %39, label %135, label %129

129:                                              ; preds = %120
  %130 = load ptr, ptr %122, align 8, !tbaa !34
  %131 = getelementptr inbounds %struct.BMHeader, ptr %130, i64 0, i32 1
  %132 = load i32, ptr %131, align 8, !tbaa !132
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [3 x float], ptr %16, i64 %133
  call void @glNormal3fv(ptr noundef nonnull %134) #11
  br label %138

135:                                              ; preds = %120
  %136 = sext i32 %127 to i64
  %137 = getelementptr inbounds [3 x float], ptr %36, i64 %136
  call void @glNormal3fv(ptr noundef %137) #11
  br label %138

138:                                              ; preds = %135, %129
  %139 = sext i32 %127 to i64
  %140 = getelementptr inbounds [3 x float], ptr %13, i64 %139
  call void @glVertex3fv(ptr noundef nonnull %140) #11
  %141 = add nuw nsw i64 %121, 1
  %142 = icmp eq i64 %141, 3
  br i1 %142, label %166, label %120, !llvm.loop !231

143:                                              ; preds = %119, %158
  %144 = phi i64 [ %164, %158 ], [ 0, %119 ]
  %145 = getelementptr inbounds ptr, ptr %52, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !34
  %147 = trunc i64 %144 to i32
  call fastcc void @emdm_pass_attrib_vertex_glsl(ptr noundef nonnull %5, ptr noundef %146, i32 noundef %147)
  %148 = load ptr, ptr %145, align 8, !tbaa !34
  br i1 %39, label %154, label %149

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.BMHeader, ptr %148, i64 0, i32 1
  %151 = load i32, ptr %150, align 8, !tbaa !132
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [3 x float], ptr %16, i64 %152
  br label %158

154:                                              ; preds = %143
  %155 = getelementptr inbounds %struct.BMLoop, ptr %148, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !147
  %157 = getelementptr inbounds %struct.BMVert, ptr %156, i64 0, i32 3
  br label %158

158:                                              ; preds = %154, %149
  %159 = phi ptr [ %157, %154 ], [ %153, %149 ]
  call void @glNormal3fv(ptr noundef nonnull %159) #11
  %160 = load ptr, ptr %145, align 8, !tbaa !34
  %161 = getelementptr inbounds %struct.BMLoop, ptr %160, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !147
  %163 = getelementptr inbounds %struct.BMVert, ptr %162, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %163) #11
  %164 = add nuw nsw i64 %144, 1
  %165 = icmp eq i64 %164, 3
  br i1 %165, label %166, label %143, !llvm.loop !232

166:                                              ; preds = %138, %158, %92, %108, %76, %56
  %167 = phi i8 [ %51, %56 ], [ %77, %76 ], [ %77, %108 ], [ %77, %92 ], [ %77, %158 ], [ %77, %138 ]
  %168 = phi i32 [ %50, %56 ], [ %78, %76 ], [ %78, %108 ], [ %78, %92 ], [ %78, %158 ], [ %78, %138 ]
  %169 = add nuw nsw i64 %49, 1
  %170 = load i32, ptr %41, align 8, !tbaa !52
  %171 = sext i32 %170 to i64
  %172 = icmp slt i64 %169, %171
  br i1 %172, label %48, label %173, !llvm.loop !233

173:                                              ; preds = %166
  %174 = icmp eq i32 %168, -1
  br i1 %174, label %176, label %175

175:                                              ; preds = %173
  call void @glEnd() #11
  br label %176

176:                                              ; preds = %34, %175, %173
  call void @llvm.lifetime.end.p0(i64 2564, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %5) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emDM_drawMappedFacesMat(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) #0 {
  %5 = alloca %struct.DMVertexAttribs, align 8
  %6 = alloca %struct.GPUVertexAttribs, align 4
  %7 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.BMEditMesh, ptr %8, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !139
  %12 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 53
  %15 = load ptr, ptr %14, align 8, !tbaa !205
  %16 = tail call ptr %15(ptr noundef %0, i32 noundef 8) #11
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %5, i8 0, i64 376, i1 false)
  call void @llvm.lifetime.start.p0(i64 2564, ptr nonnull %6) #11
  %17 = load ptr, ptr %12, align 8, !tbaa !98
  %18 = icmp eq ptr %17, null
  br i1 %18, label %34, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !123
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load ptr, ptr %7, align 8, !tbaa !43
  %25 = load ptr, ptr %24, align 8, !tbaa !38
  tail call fastcc void @emDM_ensurePolyNormals(ptr noundef %0)
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %25, i8 noundef zeroext 8) #11
  %26 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !124
  %28 = load ptr, ptr %12, align 8, !tbaa !98
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %30 = load i32, ptr %25, align 8, !tbaa !48
  %31 = sext i32 %30 to i64
  %32 = mul nsw i64 %31, 12
  %33 = tail call ptr %29(i64 noundef %32, ptr noundef nonnull @__func__.emDM_ensureVertNormals) #11
  tail call void @BM_verts_calc_normal_vcos(ptr noundef nonnull %25, ptr noundef %27, ptr noundef %28, ptr noundef %33) #11
  store ptr %33, ptr %20, align 8, !tbaa !123
  br label %34

34:                                               ; preds = %4, %19, %23
  tail call fastcc void @emDM_ensurePolyNormals(ptr noundef %0)
  %35 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !123
  %37 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !124
  tail call void @glShadeModel(i32 noundef 7425) #11
  %39 = icmp eq ptr %16, null
  %40 = select i1 %39, i8 9, i8 13
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %9, i8 noundef zeroext %40) #11
  %41 = getelementptr inbounds %struct.BMEditMesh, ptr %8, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !52
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %166

44:                                               ; preds = %34
  %45 = icmp eq ptr %2, null
  %46 = icmp eq ptr %13, null
  %47 = icmp eq ptr %13, null
  br label %48

48:                                               ; preds = %44, %157
  %49 = phi i64 [ 0, %44 ], [ %159, %157 ]
  %50 = phi i32 [ -1, %44 ], [ %158, %157 ]
  %51 = getelementptr inbounds [3 x ptr], ptr %11, i64 %49
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = getelementptr inbounds %struct.BMLoop, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !140
  br i1 %45, label %60, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.BMHeader, ptr %54, i64 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !132
  %58 = call zeroext i8 %2(ptr noundef %3, i32 noundef %57) #11
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %157, label %60

60:                                               ; preds = %55, %48
  %61 = getelementptr inbounds %struct.BMFace, ptr %54, i64 0, i32 5
  %62 = load i16, ptr %61, align 8, !tbaa !142
  %63 = sext i16 %62 to i32
  %64 = add nsw i32 %63, 1
  %65 = icmp eq i32 %64, %50
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = icmp eq i32 %50, -1
  br i1 %67, label %69, label %68

68:                                               ; preds = %66
  call void @glEnd() #11
  br label %69

69:                                               ; preds = %68, %66
  call void %1(ptr noundef %3, i32 noundef %64, ptr noundef nonnull %6) #11
  call void @DM_vertex_attributes_from_gpu(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %5) #11
  call void @glBegin(i32 noundef 4) #11
  br label %70

70:                                               ; preds = %69, %60
  %71 = phi i32 [ %64, %69 ], [ %50, %60 ]
  br i1 %39, label %72, label %110

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.BMHeader, ptr %54, i64 0, i32 3
  %74 = load i8, ptr %73, align 1, !tbaa !226
  %75 = and i8 %74, 8
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %110

77:                                               ; preds = %72
  br i1 %47, label %97, label %78

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct.BMHeader, ptr %54, i64 0, i32 1
  %80 = load i32, ptr %79, align 8, !tbaa !132
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [3 x float], ptr %38, i64 %81
  call void @glNormal3fv(ptr noundef %82) #11
  br label %83

83:                                               ; preds = %78, %83
  %84 = phi i64 [ 0, %78 ], [ %95, %83 ]
  %85 = getelementptr inbounds ptr, ptr %51, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !34
  %87 = trunc i64 %84 to i32
  call fastcc void @emdm_pass_attrib_vertex_glsl(ptr noundef nonnull %5, ptr noundef %86, i32 noundef %87)
  %88 = load ptr, ptr %85, align 8, !tbaa !34
  %89 = getelementptr inbounds %struct.BMLoop, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !147
  %91 = getelementptr inbounds %struct.BMHeader, ptr %90, i64 0, i32 1
  %92 = load i32, ptr %91, align 8, !tbaa !132
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [3 x float], ptr %13, i64 %93
  call void @glVertex3fv(ptr noundef nonnull %94) #11
  %95 = add nuw nsw i64 %84, 1
  %96 = icmp eq i64 %95, 3
  br i1 %96, label %157, label %83, !llvm.loop !234

97:                                               ; preds = %77
  %98 = getelementptr inbounds %struct.BMFace, ptr %54, i64 0, i32 4
  call void @glNormal3fv(ptr noundef nonnull %98) #11
  br label %99

99:                                               ; preds = %97, %99
  %100 = phi i64 [ 0, %97 ], [ %108, %99 ]
  %101 = getelementptr inbounds ptr, ptr %51, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !34
  %103 = trunc i64 %100 to i32
  call fastcc void @emdm_pass_attrib_vertex_glsl(ptr noundef nonnull %5, ptr noundef %102, i32 noundef %103)
  %104 = load ptr, ptr %101, align 8, !tbaa !34
  %105 = getelementptr inbounds %struct.BMLoop, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !147
  %107 = getelementptr inbounds %struct.BMVert, ptr %106, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %107) #11
  %108 = add nuw nsw i64 %100, 1
  %109 = icmp eq i64 %108, 3
  br i1 %109, label %157, label %99, !llvm.loop !235

110:                                              ; preds = %70, %72
  br i1 %46, label %134, label %111

111:                                              ; preds = %110, %129
  %112 = phi i64 [ %132, %129 ], [ 0, %110 ]
  %113 = getelementptr inbounds ptr, ptr %51, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !34
  %115 = getelementptr inbounds %struct.BMLoop, ptr %114, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !147
  %117 = getelementptr inbounds %struct.BMHeader, ptr %116, i64 0, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !132
  %119 = trunc i64 %112 to i32
  call fastcc void @emdm_pass_attrib_vertex_glsl(ptr noundef nonnull %5, ptr noundef %114, i32 noundef %119)
  br i1 %39, label %126, label %120

120:                                              ; preds = %111
  %121 = load ptr, ptr %113, align 8, !tbaa !34
  %122 = getelementptr inbounds %struct.BMHeader, ptr %121, i64 0, i32 1
  %123 = load i32, ptr %122, align 8, !tbaa !132
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [3 x float], ptr %16, i64 %124
  call void @glNormal3fv(ptr noundef nonnull %125) #11
  br label %129

126:                                              ; preds = %111
  %127 = sext i32 %118 to i64
  %128 = getelementptr inbounds [3 x float], ptr %36, i64 %127
  call void @glNormal3fv(ptr noundef %128) #11
  br label %129

129:                                              ; preds = %126, %120
  %130 = sext i32 %118 to i64
  %131 = getelementptr inbounds [3 x float], ptr %13, i64 %130
  call void @glVertex3fv(ptr noundef nonnull %131) #11
  %132 = add nuw nsw i64 %112, 1
  %133 = icmp eq i64 %132, 3
  br i1 %133, label %157, label %111, !llvm.loop !236

134:                                              ; preds = %110, %149
  %135 = phi i64 [ %155, %149 ], [ 0, %110 ]
  %136 = getelementptr inbounds ptr, ptr %51, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !34
  %138 = trunc i64 %135 to i32
  call fastcc void @emdm_pass_attrib_vertex_glsl(ptr noundef nonnull %5, ptr noundef %137, i32 noundef %138)
  %139 = load ptr, ptr %136, align 8, !tbaa !34
  br i1 %39, label %145, label %140

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.BMHeader, ptr %139, i64 0, i32 1
  %142 = load i32, ptr %141, align 8, !tbaa !132
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [3 x float], ptr %16, i64 %143
  br label %149

145:                                              ; preds = %134
  %146 = getelementptr inbounds %struct.BMLoop, ptr %139, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !147
  %148 = getelementptr inbounds %struct.BMVert, ptr %147, i64 0, i32 3
  br label %149

149:                                              ; preds = %145, %140
  %150 = phi ptr [ %148, %145 ], [ %144, %140 ]
  call void @glNormal3fv(ptr noundef nonnull %150) #11
  %151 = load ptr, ptr %136, align 8, !tbaa !34
  %152 = getelementptr inbounds %struct.BMLoop, ptr %151, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !147
  %154 = getelementptr inbounds %struct.BMVert, ptr %153, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %154) #11
  %155 = add nuw nsw i64 %135, 1
  %156 = icmp eq i64 %155, 3
  br i1 %156, label %157, label %134, !llvm.loop !237

157:                                              ; preds = %129, %149, %83, %99, %55
  %158 = phi i32 [ %50, %55 ], [ %71, %99 ], [ %71, %83 ], [ %71, %149 ], [ %71, %129 ]
  %159 = add nuw nsw i64 %49, 1
  %160 = load i32, ptr %41, align 8, !tbaa !52
  %161 = sext i32 %160 to i64
  %162 = icmp slt i64 %159, %161
  br i1 %162, label %48, label %163, !llvm.loop !238

163:                                              ; preds = %157
  %164 = icmp eq i32 %158, -1
  br i1 %164, label %166, label %165

165:                                              ; preds = %163
  call void @glEnd() #11
  br label %166

166:                                              ; preds = %34, %165, %163
  call void @llvm.lifetime.end.p0(i64 2564, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %5) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emDM_drawFacesTex(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3, i32 %4) #0 {
  tail call fastcc void @emDM_drawFacesTex_common(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emDM_drawFacesGLSL(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 91
  %4 = load ptr, ptr %3, align 8, !tbaa !239
  tail call void %4(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emDM_drawUVEdges(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.BMIter, align 8
  %3 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #11
  %6 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 26
  %7 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %6, i32 noundef 16) #11
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %46, label %9

9:                                                ; preds = %1
  tail call void @glBegin(i32 noundef 1) #11
  %10 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  store i8 3, ptr %10, align 4, !tbaa !100
  %11 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %11, align 8, !tbaa !102
  %12 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %12, align 8, !tbaa !103
  %13 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !158
  store ptr %14, ptr %2, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %2) #11
  %15 = load ptr, ptr %12, align 8, !tbaa !103
  %16 = call ptr %15(ptr noundef nonnull %2) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %45, label %18

18:                                               ; preds = %9
  %19 = sext i32 %7 to i64
  br label %20

20:                                               ; preds = %18, %41
  %21 = phi ptr [ %16, %18 ], [ %43, %41 ]
  %22 = getelementptr inbounds %struct.BMHeader, ptr %21, i64 0, i32 3
  %23 = load i8, ptr %22, align 1, !tbaa !226
  %24 = and i8 %23, 2
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.BMFace, ptr %21, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !159
  %29 = getelementptr inbounds %struct.BMLoop, ptr %28, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !240
  %31 = load ptr, ptr %30, align 8, !tbaa !190
  %32 = getelementptr inbounds i8, ptr %31, i64 %19
  br label %33

33:                                               ; preds = %33, %26
  %34 = phi ptr [ %28, %26 ], [ %39, %33 ]
  %35 = phi ptr [ %32, %26 ], [ %37, %33 ]
  %36 = load ptr, ptr %34, align 8, !tbaa !190
  %37 = getelementptr inbounds i8, ptr %36, i64 %19
  call void @glVertex2fv(ptr noundef %37) #11
  call void @glVertex2fv(ptr noundef %35) #11
  %38 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !164
  %40 = icmp eq ptr %39, %28
  br i1 %40, label %41, label %33, !llvm.loop !241

41:                                               ; preds = %33, %20
  %42 = load ptr, ptr %12, align 8, !tbaa !103
  %43 = call ptr %42(ptr noundef nonnull %2) #11
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %20, !llvm.loop !242

45:                                               ; preds = %41, %9
  call void @glEnd() #11
  br label %46

46:                                               ; preds = %1, %45
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emDM_release(ptr noundef %0) #0 {
  %2 = tail call i32 @DM_release(ptr noundef %0) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %29, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %9(ptr noundef nonnull %6) #11
  %10 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !123
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %14(ptr noundef nonnull %11) #11
  br label %15

15:                                               ; preds = %13, %8
  %16 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !124
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef nonnull %17) #11
  br label %21

21:                                               ; preds = %15, %19, %4
  %22 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !215
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %26(ptr noundef nonnull %23) #11
  br label %27

27:                                               ; preds = %25, %21
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %28(ptr noundef %0) #11
  br label %29

29:                                               ; preds = %27, %1
  ret void
}

declare void @DM_add_vert_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @DM_set_vert_data(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_editmesh_statvis_calc(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca %struct.BMIter, align 8
  %10 = alloca [2 x [3 x float]], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [32 x [2 x float]], align 16
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca %struct.BMIter, align 8
  %20 = alloca [3 x float], align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca [4 x i8], align 4
  %25 = alloca [3 x float], align 4
  %26 = alloca [3 x float], align 4
  %27 = load i8, ptr %2, align 4, !tbaa !243
  switch i8 %27, label %709 [
    i8 0, label %28
    i8 1, label %136
    i8 2, label %405
    i8 3, label %514
    i8 4, label %637
  ]

28:                                               ; preds = %3
  tail call void @BKE_editmesh_color_ensure(ptr noundef %0, i8 noundef zeroext 8) #11
  %29 = icmp eq ptr %1, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %1, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !124
  br label %33

33:                                               ; preds = %28, %30
  %34 = phi ptr [ %32, %30 ], [ null, %28 ]
  %35 = getelementptr inbounds %struct.MeshStatVis, ptr %2, i64 0, i32 3
  %36 = load float, ptr %35, align 4, !tbaa !245
  %37 = fdiv float %36, 0x400921FB60000000
  %38 = getelementptr inbounds %struct.MeshStatVis, ptr %2, i64 0, i32 4
  %39 = load float, ptr %38, align 4, !tbaa !246
  %40 = fdiv float %39, 0x400921FB60000000
  %41 = getelementptr inbounds %struct.MeshStatVis, ptr %2, i64 0, i32 2
  %42 = load i8, ptr %41, align 1, !tbaa !247
  %43 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 10
  %44 = load ptr, ptr %43, align 8, !tbaa !225
  %45 = getelementptr inbounds i8, ptr %24, i64 3
  %46 = getelementptr inbounds i8, ptr %24, i64 2
  %47 = getelementptr inbounds i8, ptr %24, i64 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %19) #11
  %48 = load ptr, ptr %0, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #11
  %49 = fsub float %40, %37
  %50 = fdiv float 1.000000e+00, %49
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %22)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %23)
  store i8 64, ptr %21, align 1
  store i8 64, ptr %22, align 1
  store i8 -1, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #11
  store i32 -16777216, ptr %24, align 4
  store float 0.000000e+00, ptr %20, align 4, !tbaa !113
  %51 = getelementptr inbounds float, ptr %20, i64 1
  store float 0.000000e+00, ptr %51, align 4, !tbaa !113
  %52 = getelementptr inbounds float, ptr %20, i64 2
  store float 0.000000e+00, ptr %52, align 4, !tbaa !113
  %53 = icmp ult i8 %42, 3
  %54 = zext i8 %42 to i64
  %55 = add nuw nsw i64 %54, 4294967293
  %56 = and i64 %55, 4294967295
  %57 = select i1 %53, i64 %54, i64 %56
  %58 = select i1 %53, float 1.000000e+00, float -1.000000e+00
  %59 = getelementptr inbounds float, ptr %20, i64 %57
  store float %58, ptr %59, align 4, !tbaa !113
  %60 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 14
  %61 = load ptr, ptr %60, align 8, !tbaa !248
  %62 = icmp eq ptr %61, null
  br i1 %62, label %84, label %63

63:                                               ; preds = %33
  %64 = getelementptr inbounds %struct.Object, ptr %61, i64 0, i32 47
  call void @mul_transposed_mat3_m4_v3(ptr noundef nonnull %64, ptr noundef nonnull %20) #11
  %65 = load float, ptr %20, align 4, !tbaa !113
  %66 = load float, ptr %51, align 4, !tbaa !113
  %67 = fmul float %66, %66
  %68 = call float @llvm.fmuladd.f32(float %65, float %65, float %67)
  %69 = load float, ptr %52, align 4, !tbaa !113
  %70 = call float @llvm.fmuladd.f32(float %69, float %69, float %68)
  %71 = fcmp ogt float %70, 0x38AA95A5C0000000
  br i1 %71, label %72, label %81

72:                                               ; preds = %63
  %73 = call float @sqrtf(float noundef %70) #11
  %74 = fdiv float 1.000000e+00, %73
  %75 = load float, ptr %20, align 4, !tbaa !113
  %76 = fmul float %75, %74
  store float %76, ptr %20, align 4, !tbaa !113
  %77 = load float, ptr %51, align 4, !tbaa !113
  %78 = fmul float %74, %77
  store float %78, ptr %51, align 4, !tbaa !113
  %79 = load float, ptr %52, align 4, !tbaa !113
  %80 = fmul float %74, %79
  br label %82

81:                                               ; preds = %63
  store float 0.000000e+00, ptr %20, align 4, !tbaa !113
  store float 0.000000e+00, ptr %51, align 4, !tbaa !113
  br label %82

82:                                               ; preds = %81, %72
  %83 = phi float [ 0.000000e+00, %81 ], [ %80, %72 ]
  store float %83, ptr %52, align 4, !tbaa !113
  br label %84

84:                                               ; preds = %82, %33
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #11
  call void @weight_to_rgb(ptr noundef nonnull %25, float noundef 1.000000e+00) #11
  call void @rgb_float_to_uchar(ptr noundef nonnull %24, ptr noundef nonnull %25) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #11
  %85 = getelementptr inbounds %struct.BMIter, ptr %19, i64 0, i32 4
  store i8 3, ptr %85, align 4, !tbaa !100
  %86 = getelementptr inbounds %struct.BMIter, ptr %19, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %86, align 8, !tbaa !102
  %87 = getelementptr inbounds %struct.BMIter, ptr %19, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %87, align 8, !tbaa !103
  %88 = getelementptr inbounds %struct.BMesh, ptr %48, i64 0, i32 12
  %89 = load ptr, ptr %88, align 8, !tbaa !158
  store ptr %89, ptr %19, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %19) #11
  %90 = load ptr, ptr %87, align 8, !tbaa !103
  %91 = call ptr %90(ptr noundef nonnull %19) #11
  %92 = icmp eq ptr %91, null
  br i1 %92, label %135, label %93

93:                                               ; preds = %84
  %94 = icmp eq ptr %34, null
  br label %95

95:                                               ; preds = %93, %130
  %96 = phi i64 [ 0, %93 ], [ %133, %130 ]
  %97 = phi ptr [ %91, %93 ], [ %132, %130 ]
  %98 = getelementptr inbounds [3 x float], ptr %34, i64 %96
  %99 = getelementptr inbounds %struct.BMFace, ptr %97, i64 0, i32 4
  %100 = select i1 %94, ptr %99, ptr %98
  %101 = call float @angle_normalized_v3v3(ptr noundef %100, ptr noundef nonnull %20) #11
  %102 = fdiv float %101, 0x400921FB60000000
  %103 = fcmp ugt float %102, %40
  br i1 %103, label %118, label %104

104:                                              ; preds = %95
  %105 = fcmp ult float %102, %37
  %106 = load i8, ptr %24, align 4, !tbaa !105
  br i1 %105, label %118, label %107

107:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #11
  %108 = fsub float %102, %37
  %109 = fmul float %50, %108
  %110 = fsub float 1.000000e+00, %109
  %111 = fcmp olt float %110, 0.000000e+00
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = fcmp ogt float %110, 1.000000e+00
  br i1 %113, label %114, label %115

114:                                              ; preds = %112
  br label %115

115:                                              ; preds = %114, %112, %107
  %116 = phi float [ 1.000000e+00, %114 ], [ %110, %112 ], [ 0.000000e+00, %107 ]
  call void @weight_to_rgb(ptr noundef nonnull %26, float noundef %116) #11
  %117 = getelementptr inbounds [4 x i8], ptr %44, i64 %96
  call void @rgb_float_to_uchar(ptr noundef %117, ptr noundef nonnull %26) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #11
  br label %130

118:                                              ; preds = %104, %95
  %119 = phi i8 [ %106, %104 ], [ 64, %95 ]
  %120 = phi ptr [ %47, %104 ], [ %21, %95 ]
  %121 = phi ptr [ %46, %104 ], [ %22, %95 ]
  %122 = phi ptr [ %45, %104 ], [ %23, %95 ]
  %123 = getelementptr inbounds [4 x i8], ptr %44, i64 %96
  store i8 %119, ptr %123, align 1, !tbaa !105
  %124 = load i8, ptr %120, align 1, !tbaa !105
  %125 = getelementptr inbounds i8, ptr %123, i64 1
  store i8 %124, ptr %125, align 1, !tbaa !105
  %126 = load i8, ptr %121, align 1, !tbaa !105
  %127 = getelementptr inbounds i8, ptr %123, i64 2
  store i8 %126, ptr %127, align 1, !tbaa !105
  %128 = load i8, ptr %122, align 1, !tbaa !105
  %129 = getelementptr inbounds i8, ptr %123, i64 3
  store i8 %128, ptr %129, align 1, !tbaa !105
  br label %130

130:                                              ; preds = %118, %115
  %131 = load ptr, ptr %87, align 8, !tbaa !103
  %132 = call ptr %131(ptr noundef nonnull %19) #11
  %133 = add nuw i64 %96, 1
  %134 = icmp eq ptr %132, null
  br i1 %134, label %135, label %95, !llvm.loop !249

135:                                              ; preds = %130, %84
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %22)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %23)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %19) #11
  br label %709

136:                                              ; preds = %3
  %137 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 14
  %138 = load ptr, ptr %137, align 8, !tbaa !248
  %139 = getelementptr inbounds %struct.Object, ptr %138, i64 0, i32 47
  %140 = tail call float @mat4_to_scale(ptr noundef nonnull %139) #11
  %141 = fdiv float 1.000000e+00, %140
  tail call void @BKE_editmesh_color_ensure(ptr noundef %0, i8 noundef zeroext 8) #11
  %142 = icmp eq ptr %1, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %1, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !98
  br label %146

146:                                              ; preds = %136, %143
  %147 = phi ptr [ %145, %143 ], [ null, %136 ]
  %148 = getelementptr inbounds %struct.MeshStatVis, ptr %2, i64 0, i32 5
  %149 = load float, ptr %148, align 4, !tbaa !250
  %150 = fmul float %141, %149
  %151 = getelementptr inbounds %struct.MeshStatVis, ptr %2, i64 0, i32 6
  %152 = load float, ptr %151, align 4, !tbaa !251
  %153 = fmul float %141, %152
  %154 = getelementptr inbounds %struct.MeshStatVis, ptr %2, i64 0, i32 7
  %155 = load i8, ptr %154, align 4, !tbaa !252
  %156 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 10
  %157 = load ptr, ptr %156, align 8, !tbaa !225
  %158 = icmp ult i8 %155, 32
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %13) #11
  %159 = load ptr, ptr %0, align 8, !tbaa !38
  %160 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 4
  %161 = load i32, ptr %160, align 8, !tbaa !52
  %162 = fsub float %153, %150
  %163 = fdiv float 1.000000e+00, %162
  %164 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !139
  %166 = getelementptr inbounds %struct.BMesh, ptr %159, i64 0, i32 3
  %167 = load i32, ptr %166, align 4, !tbaa !54
  tail call void @fill_vn_fl(ptr noundef %157, i32 noundef %167, float noundef %153) #11
  br i1 %158, label %168, label %203

168:                                              ; preds = %146
  %169 = zext nneg i8 %155 to i32
  call void @BLI_jitter_init(ptr noundef nonnull %13, i32 noundef %169) #11
  %170 = icmp eq i8 %155, 0
  br i1 %170, label %203, label %171

171:                                              ; preds = %168
  %172 = zext nneg i8 %155 to i64
  br label %173

173:                                              ; preds = %171, %200
  %174 = phi i64 [ 0, %171 ], [ %201, %200 ]
  %175 = getelementptr inbounds [32 x [2 x float]], ptr %13, i64 0, i64 %174
  %176 = load float, ptr %175, align 8, !tbaa !113
  %177 = fadd float %176, 5.000000e-01
  store float %177, ptr %175, align 8, !tbaa !113
  %178 = getelementptr inbounds float, ptr %175, i64 1
  %179 = load float, ptr %178, align 4, !tbaa !113
  %180 = fadd float %179, 5.000000e-01
  store float %180, ptr %178, align 4, !tbaa !113
  %181 = fadd float %177, %180
  %182 = fcmp ogt float %181, 1.000000e+00
  br i1 %182, label %183, label %186

183:                                              ; preds = %173
  %184 = fsub float 1.000000e+00, %177
  store float %184, ptr %175, align 8, !tbaa !113
  %185 = fsub float 1.000000e+00, %180
  store float %185, ptr %178, align 4, !tbaa !113
  br label %186

186:                                              ; preds = %183, %173
  %187 = load float, ptr %175, align 8, !tbaa !113
  %188 = fcmp olt float %187, 0.000000e+00
  br i1 %188, label %191, label %189

189:                                              ; preds = %186
  %190 = fcmp ogt float %187, 1.000000e+00
  br i1 %190, label %191, label %193

191:                                              ; preds = %189, %186
  %192 = phi float [ 0.000000e+00, %186 ], [ 1.000000e+00, %189 ]
  store float %192, ptr %175, align 8, !tbaa !113
  br label %193

193:                                              ; preds = %191, %189
  %194 = load float, ptr %178, align 4, !tbaa !113
  %195 = fcmp olt float %194, 0.000000e+00
  br i1 %195, label %198, label %196

196:                                              ; preds = %193
  %197 = fcmp ogt float %194, 1.000000e+00
  br i1 %197, label %198, label %200

198:                                              ; preds = %196, %193
  %199 = phi float [ 0.000000e+00, %193 ], [ 1.000000e+00, %196 ]
  store float %199, ptr %178, align 4, !tbaa !113
  br label %200

200:                                              ; preds = %198, %196
  %201 = add nuw nsw i64 %174, 1
  %202 = icmp eq i64 %201, %172
  br i1 %202, label %203, label %173, !llvm.loop !253

203:                                              ; preds = %200, %168, %146
  call void @BM_mesh_elem_index_ensure(ptr noundef %159, i8 noundef zeroext 8) #11
  %204 = icmp eq ptr %147, null
  br i1 %204, label %206, label %205

205:                                              ; preds = %203
  call void @BM_mesh_elem_index_ensure(ptr noundef %159, i8 noundef zeroext 1) #11
  br label %206

206:                                              ; preds = %205, %203
  %207 = call ptr @BKE_bmbvh_new_from_editmesh(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %147, i8 noundef zeroext 0) #11
  %208 = icmp sgt i32 %161, 0
  br i1 %208, label %209, label %375

209:                                              ; preds = %206
  %210 = getelementptr inbounds float, ptr %15, i64 1
  %211 = getelementptr inbounds float, ptr %14, i64 1
  %212 = getelementptr inbounds float, ptr %15, i64 2
  %213 = getelementptr inbounds float, ptr %14, i64 2
  %214 = icmp eq i8 %155, 0
  %215 = getelementptr inbounds float, ptr %15, i64 1
  %216 = getelementptr inbounds float, ptr %14, i64 1
  %217 = getelementptr inbounds float, ptr %15, i64 2
  %218 = getelementptr inbounds float, ptr %14, i64 2
  %219 = zext nneg i32 %161 to i64
  %220 = zext nneg i8 %155 to i64
  br label %221

221:                                              ; preds = %209, %372
  %222 = phi i64 [ 0, %209 ], [ %373, %372 ]
  %223 = getelementptr inbounds [3 x ptr], ptr %165, i64 %222
  %224 = load ptr, ptr %223, align 8, !tbaa !34
  %225 = getelementptr inbounds %struct.BMLoop, ptr %224, i64 0, i32 3
  %226 = load ptr, ptr %225, align 8, !tbaa !140
  %227 = getelementptr inbounds %struct.BMHeader, ptr %226, i64 0, i32 1
  %228 = load i32, ptr %227, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #11
  %229 = load ptr, ptr %223, align 8, !tbaa !34
  %230 = getelementptr inbounds %struct.BMLoop, ptr %229, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !147
  br i1 %204, label %253, label %232

232:                                              ; preds = %221
  %233 = getelementptr inbounds %struct.BMHeader, ptr %231, i64 0, i32 1
  %234 = load i32, ptr %233, align 8, !tbaa !132
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [3 x float], ptr %147, i64 %235
  %237 = getelementptr inbounds ptr, ptr %223, i64 1
  %238 = load ptr, ptr %237, align 8, !tbaa !34
  %239 = getelementptr inbounds %struct.BMLoop, ptr %238, i64 0, i32 1
  %240 = load ptr, ptr %239, align 8, !tbaa !147
  %241 = getelementptr inbounds %struct.BMHeader, ptr %240, i64 0, i32 1
  %242 = load i32, ptr %241, align 8, !tbaa !132
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [3 x float], ptr %147, i64 %243
  %245 = getelementptr inbounds ptr, ptr %223, i64 2
  %246 = load ptr, ptr %245, align 8, !tbaa !34
  %247 = getelementptr inbounds %struct.BMLoop, ptr %246, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !147
  %249 = getelementptr inbounds %struct.BMHeader, ptr %248, i64 0, i32 1
  %250 = load i32, ptr %249, align 8, !tbaa !132
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [3 x float], ptr %147, i64 %251
  br label %265

253:                                              ; preds = %221
  %254 = getelementptr inbounds %struct.BMVert, ptr %231, i64 0, i32 2
  %255 = getelementptr inbounds ptr, ptr %223, i64 1
  %256 = load ptr, ptr %255, align 8, !tbaa !34
  %257 = getelementptr inbounds %struct.BMLoop, ptr %256, i64 0, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !147
  %259 = getelementptr inbounds %struct.BMVert, ptr %258, i64 0, i32 2
  %260 = getelementptr inbounds ptr, ptr %223, i64 2
  %261 = load ptr, ptr %260, align 8, !tbaa !34
  %262 = getelementptr inbounds %struct.BMLoop, ptr %261, i64 0, i32 1
  %263 = load ptr, ptr %262, align 8, !tbaa !147
  %264 = getelementptr inbounds %struct.BMVert, ptr %263, i64 0, i32 2
  br label %265

265:                                              ; preds = %253, %232
  %266 = phi ptr [ %252, %232 ], [ %264, %253 ]
  %267 = phi ptr [ %244, %232 ], [ %259, %253 ]
  %268 = phi ptr [ %236, %232 ], [ %254, %253 ]
  %269 = call float @normal_tri_v3(ptr noundef nonnull %15, ptr noundef %266, ptr noundef %267, ptr noundef %268) #11
  br i1 %158, label %270, label %324

270:                                              ; preds = %265
  br i1 %214, label %372, label %271

271:                                              ; preds = %270
  %272 = sext i32 %228 to i64
  %273 = getelementptr inbounds float, ptr %157, i64 %272
  br label %274

274:                                              ; preds = %271, %321
  %275 = phi i64 [ 0, %271 ], [ %322, %321 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #11
  %276 = load float, ptr %273, align 4, !tbaa !113
  store float %276, ptr %16, align 4, !tbaa !113
  %277 = getelementptr inbounds [32 x [2 x float]], ptr %13, i64 0, i64 %275
  call void @interp_v3_v3v3v3_uv(ptr noundef nonnull %14, ptr noundef %268, ptr noundef %267, ptr noundef %266, ptr noundef nonnull %277) #11
  %278 = load float, ptr %15, align 4, !tbaa !113
  %279 = load float, ptr %14, align 4, !tbaa !113
  %280 = call float @llvm.fmuladd.f32(float %278, float 0x3EF4F8B580000000, float %279)
  store float %280, ptr %14, align 4, !tbaa !113
  %281 = load float, ptr %215, align 4, !tbaa !113
  %282 = load float, ptr %216, align 4, !tbaa !113
  %283 = call float @llvm.fmuladd.f32(float %281, float 0x3EF4F8B580000000, float %282)
  store float %283, ptr %216, align 4, !tbaa !113
  %284 = load float, ptr %217, align 4, !tbaa !113
  %285 = load float, ptr %218, align 4, !tbaa !113
  %286 = call float @llvm.fmuladd.f32(float %284, float 0x3EF4F8B580000000, float %285)
  store float %286, ptr %218, align 4, !tbaa !113
  %287 = call ptr @BKE_bmbvh_ray_cast(ptr noundef %207, ptr noundef nonnull %14, ptr noundef nonnull %15, float noundef 0.000000e+00, ptr noundef nonnull %16, ptr noundef null, ptr noundef null) #11
  %288 = icmp eq ptr %287, null
  br i1 %288, label %321, label %289

289:                                              ; preds = %274
  %290 = load float, ptr %16, align 4, !tbaa !113
  %291 = load float, ptr %273, align 4, !tbaa !113
  %292 = fcmp olt float %290, %291
  br i1 %292, label %293, label %321

293:                                              ; preds = %289
  %294 = load ptr, ptr %223, align 8, !tbaa !34
  %295 = getelementptr inbounds %struct.BMLoop, ptr %294, i64 0, i32 3
  %296 = load ptr, ptr %295, align 8, !tbaa !140
  %297 = getelementptr inbounds %struct.BMFace, ptr %296, i64 0, i32 4
  %298 = getelementptr inbounds %struct.BMFace, ptr %287, i64 0, i32 4
  %299 = load float, ptr %297, align 4, !tbaa !113
  %300 = load float, ptr %298, align 4, !tbaa !113
  %301 = getelementptr inbounds %struct.BMFace, ptr %296, i64 0, i32 4, i64 1
  %302 = load float, ptr %301, align 4, !tbaa !113
  %303 = getelementptr inbounds %struct.BMFace, ptr %287, i64 0, i32 4, i64 1
  %304 = load float, ptr %303, align 4, !tbaa !113
  %305 = fmul float %302, %304
  %306 = call float @llvm.fmuladd.f32(float %299, float %300, float %305)
  %307 = getelementptr inbounds %struct.BMFace, ptr %296, i64 0, i32 4, i64 2
  %308 = load float, ptr %307, align 4, !tbaa !113
  %309 = getelementptr inbounds %struct.BMFace, ptr %287, i64 0, i32 4, i64 2
  %310 = load float, ptr %309, align 4, !tbaa !113
  %311 = call float @llvm.fmuladd.f32(float %308, float %310, float %306)
  %312 = call float @llvm.fabs.f32(float %311)
  %313 = fsub float 1.000000e+00, %312
  %314 = fmul float %313, %313
  %315 = fmul float %313, %314
  %316 = fsub float 1.000000e+00, %315
  %317 = fdiv float %290, %316
  store float %317, ptr %16, align 4, !tbaa !113
  %318 = load float, ptr %273, align 4, !tbaa !113
  %319 = fcmp olt float %317, %318
  br i1 %319, label %320, label %321

320:                                              ; preds = %293
  store float %317, ptr %273, align 4, !tbaa !113
  br label %321

321:                                              ; preds = %320, %293, %289, %274
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #11
  %322 = add nuw nsw i64 %275, 1
  %323 = icmp eq i64 %322, %220
  br i1 %323, label %372, label %274, !llvm.loop !254

324:                                              ; preds = %265
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #11
  %325 = sext i32 %228 to i64
  %326 = getelementptr inbounds float, ptr %157, i64 %325
  %327 = load float, ptr %326, align 4, !tbaa !113
  store float %327, ptr %17, align 4, !tbaa !113
  call void @mid_v3_v3v3v3(ptr noundef nonnull %14, ptr noundef %268, ptr noundef %267, ptr noundef %266) #11
  %328 = load float, ptr %15, align 4, !tbaa !113
  %329 = load float, ptr %14, align 4, !tbaa !113
  %330 = call float @llvm.fmuladd.f32(float %328, float 0x3EF4F8B580000000, float %329)
  store float %330, ptr %14, align 4, !tbaa !113
  %331 = load float, ptr %210, align 4, !tbaa !113
  %332 = load float, ptr %211, align 4, !tbaa !113
  %333 = call float @llvm.fmuladd.f32(float %331, float 0x3EF4F8B580000000, float %332)
  store float %333, ptr %211, align 4, !tbaa !113
  %334 = load float, ptr %212, align 4, !tbaa !113
  %335 = load float, ptr %213, align 4, !tbaa !113
  %336 = call float @llvm.fmuladd.f32(float %334, float 0x3EF4F8B580000000, float %335)
  store float %336, ptr %213, align 4, !tbaa !113
  %337 = call ptr @BKE_bmbvh_ray_cast(ptr noundef %207, ptr noundef nonnull %14, ptr noundef nonnull %15, float noundef 0.000000e+00, ptr noundef nonnull %17, ptr noundef null, ptr noundef null) #11
  %338 = icmp eq ptr %337, null
  br i1 %338, label %371, label %339

339:                                              ; preds = %324
  %340 = load float, ptr %17, align 4, !tbaa !113
  %341 = load float, ptr %326, align 4, !tbaa !113
  %342 = fcmp olt float %340, %341
  br i1 %342, label %343, label %371

343:                                              ; preds = %339
  %344 = load ptr, ptr %223, align 8, !tbaa !34
  %345 = getelementptr inbounds %struct.BMLoop, ptr %344, i64 0, i32 3
  %346 = load ptr, ptr %345, align 8, !tbaa !140
  %347 = getelementptr inbounds %struct.BMFace, ptr %346, i64 0, i32 4
  %348 = getelementptr inbounds %struct.BMFace, ptr %337, i64 0, i32 4
  %349 = load float, ptr %347, align 4, !tbaa !113
  %350 = load float, ptr %348, align 4, !tbaa !113
  %351 = getelementptr inbounds %struct.BMFace, ptr %346, i64 0, i32 4, i64 1
  %352 = load float, ptr %351, align 4, !tbaa !113
  %353 = getelementptr inbounds %struct.BMFace, ptr %337, i64 0, i32 4, i64 1
  %354 = load float, ptr %353, align 4, !tbaa !113
  %355 = fmul float %352, %354
  %356 = call float @llvm.fmuladd.f32(float %349, float %350, float %355)
  %357 = getelementptr inbounds %struct.BMFace, ptr %346, i64 0, i32 4, i64 2
  %358 = load float, ptr %357, align 4, !tbaa !113
  %359 = getelementptr inbounds %struct.BMFace, ptr %337, i64 0, i32 4, i64 2
  %360 = load float, ptr %359, align 4, !tbaa !113
  %361 = call float @llvm.fmuladd.f32(float %358, float %360, float %356)
  %362 = call float @llvm.fabs.f32(float %361)
  %363 = fsub float 1.000000e+00, %362
  %364 = fmul float %363, %363
  %365 = fmul float %363, %364
  %366 = fsub float 1.000000e+00, %365
  %367 = fdiv float %340, %366
  store float %367, ptr %17, align 4, !tbaa !113
  %368 = load float, ptr %326, align 4, !tbaa !113
  %369 = fcmp olt float %367, %368
  br i1 %369, label %370, label %371

370:                                              ; preds = %343
  store float %367, ptr %326, align 4, !tbaa !113
  br label %371

371:                                              ; preds = %370, %343, %339, %324
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #11
  br label %372

372:                                              ; preds = %321, %270, %371
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  %373 = add nuw nsw i64 %222, 1
  %374 = icmp eq i64 %373, %219
  br i1 %374, label %375, label %221, !llvm.loop !255

375:                                              ; preds = %372, %206
  call void @BKE_bmbvh_free(ptr noundef %207) #11
  %376 = load i32, ptr %166, align 4, !tbaa !54
  %377 = icmp sgt i32 %376, 0
  br i1 %377, label %378, label %404

378:                                              ; preds = %375, %399
  %379 = phi i64 [ %400, %399 ], [ 0, %375 ]
  %380 = getelementptr inbounds float, ptr %157, i64 %379
  %381 = load float, ptr %380, align 4, !tbaa !113
  %382 = fcmp olt float %381, %153
  br i1 %382, label %383, label %394

383:                                              ; preds = %378
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #11
  %384 = fsub float %381, %150
  %385 = fmul float %163, %384
  %386 = fsub float 1.000000e+00, %385
  %387 = fcmp olt float %386, 0.000000e+00
  br i1 %387, label %391, label %388

388:                                              ; preds = %383
  %389 = fcmp ogt float %386, 1.000000e+00
  br i1 %389, label %390, label %391

390:                                              ; preds = %388
  br label %391

391:                                              ; preds = %390, %388, %383
  %392 = phi float [ 1.000000e+00, %390 ], [ %386, %388 ], [ 0.000000e+00, %383 ]
  call void @weight_to_rgb(ptr noundef nonnull %18, float noundef %392) #11
  %393 = getelementptr inbounds [4 x i8], ptr %157, i64 %379
  call void @rgb_float_to_uchar(ptr noundef %393, ptr noundef nonnull %18) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #11
  br label %399

394:                                              ; preds = %378
  %395 = getelementptr inbounds [4 x i8], ptr %157, i64 %379
  store i8 64, ptr %395, align 1, !tbaa !105
  %396 = getelementptr inbounds i8, ptr %395, i64 1
  store i8 64, ptr %396, align 1, !tbaa !105
  %397 = getelementptr inbounds i8, ptr %395, i64 2
  store i8 64, ptr %397, align 1, !tbaa !105
  %398 = getelementptr inbounds i8, ptr %395, i64 3
  store i8 -1, ptr %398, align 1, !tbaa !105
  br label %399

399:                                              ; preds = %394, %391
  %400 = add nuw nsw i64 %379, 1
  %401 = load i32, ptr %166, align 4, !tbaa !54
  %402 = sext i32 %401 to i64
  %403 = icmp slt i64 %400, %402
  br i1 %403, label %378, label %404, !llvm.loop !256

404:                                              ; preds = %399, %375
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %13) #11
  br label %709

405:                                              ; preds = %3
  tail call void @BKE_editmesh_color_ensure(ptr noundef %0, i8 noundef zeroext 8) #11
  %406 = icmp eq ptr %1, null
  br i1 %406, label %410, label %407

407:                                              ; preds = %405
  %408 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %1, i64 0, i32 2
  %409 = load ptr, ptr %408, align 8, !tbaa !98
  br label %410

410:                                              ; preds = %405, %407
  %411 = phi ptr [ %409, %407 ], [ null, %405 ]
  %412 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 10
  %413 = load ptr, ptr %412, align 8, !tbaa !225
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #11
  %414 = load ptr, ptr %0, align 8, !tbaa !38
  %415 = getelementptr inbounds %struct.BMesh, ptr %414, i64 0, i32 3
  %416 = load i32, ptr %415, align 4, !tbaa !54
  %417 = sext i32 %416 to i64
  %418 = shl nsw i64 %417, 2
  tail call void @llvm.memset.p0.i64(ptr align 1 %413, i8 64, i64 %418, i1 false)
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %414, i8 noundef zeroext 8) #11
  %419 = icmp eq ptr %411, null
  br i1 %419, label %421, label %420

420:                                              ; preds = %410
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %414, i8 noundef zeroext 1) #11
  br label %421

421:                                              ; preds = %420, %410
  %422 = tail call ptr @BKE_bmbvh_new_from_editmesh(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %411, i8 noundef zeroext 0) #11
  %423 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  store i8 2, ptr %423, align 4, !tbaa !100
  %424 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %424, align 8, !tbaa !102
  %425 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %425, align 8, !tbaa !103
  %426 = getelementptr inbounds %struct.BMesh, ptr %414, i64 0, i32 10
  %427 = load ptr, ptr %426, align 8, !tbaa !154
  store ptr %427, ptr %9, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %9) #11
  %428 = load ptr, ptr %425, align 8, !tbaa !103
  %429 = call ptr %428(ptr noundef nonnull %9) #11
  %430 = icmp eq ptr %429, null
  br i1 %430, label %513, label %431

431:                                              ; preds = %421
  %432 = getelementptr inbounds float, ptr %10, i64 1
  %433 = getelementptr inbounds float, ptr %10, i64 2
  %434 = getelementptr inbounds [2 x [3 x float]], ptr %10, i64 0, i64 1
  %435 = getelementptr inbounds [2 x [3 x float]], ptr %10, i64 0, i64 1, i64 1
  %436 = getelementptr inbounds [2 x [3 x float]], ptr %10, i64 0, i64 1, i64 2
  %437 = getelementptr inbounds float, ptr %10, i64 1
  %438 = getelementptr inbounds float, ptr %10, i64 2
  %439 = getelementptr inbounds [2 x [3 x float]], ptr %10, i64 0, i64 1
  %440 = getelementptr inbounds [2 x [3 x float]], ptr %10, i64 0, i64 1, i64 1
  %441 = getelementptr inbounds [2 x [3 x float]], ptr %10, i64 0, i64 1, i64 2
  %442 = getelementptr inbounds [2 x [3 x float]], ptr %10, i64 0, i64 1
  br label %443

443:                                              ; preds = %431, %509
  %444 = phi ptr [ %429, %431 ], [ %511, %509 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #11
  %445 = getelementptr inbounds %struct.BMEdge, ptr %444, i64 0, i32 4
  %446 = load ptr, ptr %445, align 8, !tbaa !257
  %447 = icmp eq ptr %446, null
  br i1 %447, label %509, label %448

448:                                              ; preds = %443
  %449 = getelementptr inbounds %struct.BMEdge, ptr %444, i64 0, i32 2
  %450 = load ptr, ptr %449, align 8, !tbaa !129
  br i1 %419, label %471, label %451

451:                                              ; preds = %448
  %452 = getelementptr inbounds %struct.BMHeader, ptr %450, i64 0, i32 1
  %453 = load i32, ptr %452, align 8, !tbaa !132
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds [3 x float], ptr %411, i64 %454
  %456 = load float, ptr %455, align 4, !tbaa !113
  store float %456, ptr %10, align 16, !tbaa !113
  %457 = getelementptr inbounds float, ptr %455, i64 1
  %458 = load float, ptr %457, align 4, !tbaa !113
  store float %458, ptr %432, align 4, !tbaa !113
  %459 = getelementptr inbounds float, ptr %455, i64 2
  %460 = load float, ptr %459, align 4, !tbaa !113
  store float %460, ptr %433, align 8, !tbaa !113
  %461 = getelementptr inbounds %struct.BMEdge, ptr %444, i64 0, i32 3
  %462 = load ptr, ptr %461, align 8, !tbaa !134
  %463 = getelementptr inbounds %struct.BMHeader, ptr %462, i64 0, i32 1
  %464 = load i32, ptr %463, align 8, !tbaa !132
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds [3 x float], ptr %411, i64 %465
  %467 = load float, ptr %466, align 4, !tbaa !113
  store float %467, ptr %434, align 4, !tbaa !113
  %468 = getelementptr inbounds float, ptr %466, i64 1
  %469 = load float, ptr %468, align 4, !tbaa !113
  store float %469, ptr %435, align 16, !tbaa !113
  %470 = getelementptr inbounds float, ptr %466, i64 2
  br label %485

471:                                              ; preds = %448
  %472 = getelementptr inbounds %struct.BMVert, ptr %450, i64 0, i32 2
  %473 = load float, ptr %472, align 4, !tbaa !113
  store float %473, ptr %10, align 16, !tbaa !113
  %474 = getelementptr inbounds %struct.BMVert, ptr %450, i64 0, i32 2, i64 1
  %475 = load float, ptr %474, align 4, !tbaa !113
  store float %475, ptr %437, align 4, !tbaa !113
  %476 = getelementptr inbounds %struct.BMVert, ptr %450, i64 0, i32 2, i64 2
  %477 = load float, ptr %476, align 4, !tbaa !113
  store float %477, ptr %438, align 8, !tbaa !113
  %478 = getelementptr inbounds %struct.BMEdge, ptr %444, i64 0, i32 3
  %479 = load ptr, ptr %478, align 8, !tbaa !134
  %480 = getelementptr inbounds %struct.BMVert, ptr %479, i64 0, i32 2
  %481 = load float, ptr %480, align 4, !tbaa !113
  store float %481, ptr %439, align 4, !tbaa !113
  %482 = getelementptr inbounds %struct.BMVert, ptr %479, i64 0, i32 2, i64 1
  %483 = load float, ptr %482, align 4, !tbaa !113
  store float %483, ptr %440, align 16, !tbaa !113
  %484 = getelementptr inbounds %struct.BMVert, ptr %479, i64 0, i32 2, i64 2
  br label %485

485:                                              ; preds = %471, %451
  %486 = phi ptr [ %484, %471 ], [ %470, %451 ]
  %487 = phi ptr [ %441, %471 ], [ %436, %451 ]
  %488 = load float, ptr %486, align 4, !tbaa !113
  store float %488, ptr %487, align 4, !tbaa !113
  call void @mid_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %442) #11
  %489 = call ptr @BKE_bmbvh_find_face_segment(ptr noundef %422, ptr noundef nonnull %10, ptr noundef nonnull %442, ptr noundef null, ptr noundef null, ptr noundef null) #11
  %490 = icmp eq ptr %489, null
  br i1 %490, label %509, label %491

491:                                              ; preds = %485
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #11
  %492 = getelementptr inbounds %struct.BMHeader, ptr %489, i64 0, i32 1
  %493 = load i32, ptr %492, align 8, !tbaa !132
  call void @weight_to_rgb(ptr noundef nonnull %12, float noundef 1.000000e+00) #11
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds [4 x i8], ptr %413, i64 %494
  call void @rgb_float_to_uchar(ptr noundef %495, ptr noundef nonnull %12) #11
  %496 = load ptr, ptr %445, align 8, !tbaa !257
  br label %497

497:                                              ; preds = %497, %491
  %498 = phi ptr [ %496, %491 ], [ %506, %497 ]
  %499 = getelementptr inbounds %struct.BMLoop, ptr %498, i64 0, i32 3
  %500 = load ptr, ptr %499, align 8, !tbaa !140
  %501 = getelementptr inbounds %struct.BMHeader, ptr %500, i64 0, i32 1
  %502 = load i32, ptr %501, align 8, !tbaa !132
  call void @weight_to_rgb(ptr noundef nonnull %12, float noundef 1.000000e+00) #11
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds [4 x i8], ptr %413, i64 %503
  call void @rgb_float_to_uchar(ptr noundef %504, ptr noundef nonnull %12) #11
  %505 = getelementptr inbounds %struct.BMLoop, ptr %498, i64 0, i32 4
  %506 = load ptr, ptr %505, align 8, !tbaa !258
  %507 = icmp eq ptr %506, %496
  br i1 %507, label %508, label %497, !llvm.loop !259

508:                                              ; preds = %497
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  br label %509

509:                                              ; preds = %508, %485, %443
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #11
  %510 = load ptr, ptr %425, align 8, !tbaa !103
  %511 = call ptr %510(ptr noundef nonnull %9) #11
  %512 = icmp eq ptr %511, null
  br i1 %512, label %513, label %443, !llvm.loop !260

513:                                              ; preds = %509, %421
  call void @BKE_bmbvh_free(ptr noundef %422) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #11
  br label %709

514:                                              ; preds = %3
  tail call void @BKE_editmesh_color_ensure(ptr noundef %0, i8 noundef zeroext 8) #11
  %515 = icmp eq ptr %1, null
  br i1 %515, label %519, label %516

516:                                              ; preds = %514
  tail call fastcc void @emDM_ensurePolyNormals(ptr noundef nonnull %1)
  %517 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %1, i64 0, i32 2
  %518 = load ptr, ptr %517, align 8, !tbaa !98
  br label %519

519:                                              ; preds = %514, %516
  %520 = phi ptr [ %518, %516 ], [ null, %514 ]
  br i1 %515, label %524, label %521

521:                                              ; preds = %519
  %522 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %1, i64 0, i32 4
  %523 = load ptr, ptr %522, align 8, !tbaa !124
  br label %524

524:                                              ; preds = %519, %521
  %525 = phi ptr [ %523, %521 ], [ null, %519 ]
  %526 = getelementptr inbounds %struct.MeshStatVis, ptr %2, i64 0, i32 9
  %527 = load float, ptr %526, align 4, !tbaa !261
  %528 = getelementptr inbounds %struct.MeshStatVis, ptr %2, i64 0, i32 10
  %529 = load float, ptr %528, align 4, !tbaa !262
  %530 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 10
  %531 = load ptr, ptr %530, align 8, !tbaa !225
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  %532 = load ptr, ptr %0, align 8, !tbaa !38
  %533 = fsub float %529, %527
  %534 = fdiv float 1.000000e+00, %533
  %535 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 3, ptr %535, align 4, !tbaa !100
  %536 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %536, align 8, !tbaa !102
  %537 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %537, align 8, !tbaa !103
  %538 = getelementptr inbounds %struct.BMesh, ptr %532, i64 0, i32 12
  %539 = load ptr, ptr %538, align 8, !tbaa !158
  store ptr %539, ptr %6, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #11
  %540 = load ptr, ptr %537, align 8, !tbaa !103
  %541 = call ptr %540(ptr noundef nonnull %6) #11
  %542 = icmp eq ptr %541, null
  br i1 %542, label %636, label %543

543:                                              ; preds = %524
  %544 = icmp eq ptr %520, null
  %545 = getelementptr inbounds float, ptr %7, i64 1
  %546 = getelementptr inbounds float, ptr %7, i64 2
  br label %547

547:                                              ; preds = %543, %631
  %548 = phi i64 [ 0, %543 ], [ %634, %631 ]
  %549 = phi ptr [ %541, %543 ], [ %633, %631 ]
  %550 = getelementptr inbounds %struct.BMFace, ptr %549, i64 0, i32 3
  %551 = load i32, ptr %550, align 8, !tbaa !170
  %552 = icmp eq i32 %551, 3
  br i1 %552, label %613, label %553

553:                                              ; preds = %547
  %554 = getelementptr inbounds [3 x float], ptr %525, i64 %548
  %555 = getelementptr inbounds %struct.BMFace, ptr %549, i64 0, i32 4
  %556 = select i1 %544, ptr %555, ptr %554
  %557 = getelementptr inbounds %struct.BMFace, ptr %549, i64 0, i32 2
  %558 = load ptr, ptr %557, align 8, !tbaa !159
  %559 = getelementptr inbounds float, ptr %556, i64 1
  %560 = getelementptr inbounds float, ptr %556, i64 2
  br label %561

561:                                              ; preds = %604, %553
  %562 = phi float [ 0.000000e+00, %553 ], [ %607, %604 ]
  %563 = phi ptr [ %558, %553 ], [ %609, %604 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  br i1 %544, label %588, label %564

564:                                              ; preds = %561
  %565 = getelementptr inbounds %struct.BMLoop, ptr %563, i64 0, i32 7
  %566 = load ptr, ptr %565, align 8, !tbaa !240
  %567 = getelementptr inbounds %struct.BMLoop, ptr %566, i64 0, i32 1
  %568 = load ptr, ptr %567, align 8, !tbaa !147
  %569 = getelementptr inbounds %struct.BMHeader, ptr %568, i64 0, i32 1
  %570 = load i32, ptr %569, align 8, !tbaa !132
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds [3 x float], ptr %520, i64 %571
  %573 = getelementptr inbounds %struct.BMLoop, ptr %563, i64 0, i32 1
  %574 = load ptr, ptr %573, align 8, !tbaa !147
  %575 = getelementptr inbounds %struct.BMHeader, ptr %574, i64 0, i32 1
  %576 = load i32, ptr %575, align 8, !tbaa !132
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds [3 x float], ptr %520, i64 %577
  %579 = getelementptr inbounds %struct.BMLoop, ptr %563, i64 0, i32 6
  %580 = load ptr, ptr %579, align 8, !tbaa !164
  %581 = getelementptr inbounds %struct.BMLoop, ptr %580, i64 0, i32 1
  %582 = load ptr, ptr %581, align 8, !tbaa !147
  %583 = getelementptr inbounds %struct.BMHeader, ptr %582, i64 0, i32 1
  %584 = load i32, ptr %583, align 8, !tbaa !132
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds [3 x float], ptr %520, i64 %585
  %587 = call float @normal_tri_v3(ptr noundef nonnull %7, ptr noundef nonnull %572, ptr noundef nonnull %578, ptr noundef nonnull %586) #11
  br label %589

588:                                              ; preds = %561
  call void @BM_loop_calc_face_normal(ptr noundef %563, ptr noundef nonnull %7) #11
  br label %589

589:                                              ; preds = %588, %564
  %590 = load float, ptr %556, align 4, !tbaa !113
  %591 = load float, ptr %7, align 4, !tbaa !113
  %592 = load float, ptr %559, align 4, !tbaa !113
  %593 = load float, ptr %545, align 4, !tbaa !113
  %594 = fmul float %592, %593
  %595 = call float @llvm.fmuladd.f32(float %590, float %591, float %594)
  %596 = load float, ptr %560, align 4, !tbaa !113
  %597 = load float, ptr %546, align 4, !tbaa !113
  %598 = call float @llvm.fmuladd.f32(float %596, float %597, float %595)
  %599 = fcmp olt float %598, 0.000000e+00
  br i1 %599, label %600, label %604

600:                                              ; preds = %589
  %601 = fneg float %591
  store float %601, ptr %7, align 4, !tbaa !113
  %602 = fneg float %593
  store float %602, ptr %545, align 4, !tbaa !113
  %603 = fneg float %597
  store float %603, ptr %546, align 4, !tbaa !113
  br label %604

604:                                              ; preds = %600, %589
  %605 = call float @angle_normalized_v3v3(ptr noundef nonnull %556, ptr noundef nonnull %7) #11
  %606 = fcmp ogt float %562, %605
  %607 = select i1 %606, float %562, float %605
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  %608 = getelementptr inbounds %struct.BMLoop, ptr %563, i64 0, i32 6
  %609 = load ptr, ptr %608, align 8, !tbaa !164
  %610 = icmp eq ptr %609, %558
  br i1 %610, label %611, label %561, !llvm.loop !263

611:                                              ; preds = %604
  %612 = fmul float %607, 2.000000e+00
  br label %613

613:                                              ; preds = %611, %547
  %614 = phi float [ %612, %611 ], [ -1.000000e+00, %547 ]
  %615 = fcmp ult float %614, %527
  br i1 %615, label %626, label %616

616:                                              ; preds = %613
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  %617 = fsub float %614, %527
  %618 = fmul float %534, %617
  %619 = fcmp olt float %618, 0.000000e+00
  br i1 %619, label %623, label %620

620:                                              ; preds = %616
  %621 = fcmp ogt float %618, 1.000000e+00
  br i1 %621, label %622, label %623

622:                                              ; preds = %620
  br label %623

623:                                              ; preds = %622, %620, %616
  %624 = phi float [ 1.000000e+00, %622 ], [ %618, %620 ], [ 0.000000e+00, %616 ]
  call void @weight_to_rgb(ptr noundef nonnull %8, float noundef %624) #11
  %625 = getelementptr inbounds [4 x i8], ptr %531, i64 %548
  call void @rgb_float_to_uchar(ptr noundef %625, ptr noundef nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  br label %631

626:                                              ; preds = %613
  %627 = getelementptr inbounds [4 x i8], ptr %531, i64 %548
  store i8 64, ptr %627, align 1, !tbaa !105
  %628 = getelementptr inbounds i8, ptr %627, i64 1
  store i8 64, ptr %628, align 1, !tbaa !105
  %629 = getelementptr inbounds i8, ptr %627, i64 2
  store i8 64, ptr %629, align 1, !tbaa !105
  %630 = getelementptr inbounds i8, ptr %627, i64 3
  store i8 -1, ptr %630, align 1, !tbaa !105
  br label %631

631:                                              ; preds = %626, %623
  %632 = load ptr, ptr %537, align 8, !tbaa !103
  %633 = call ptr %632(ptr noundef nonnull %6) #11
  %634 = add nuw i64 %548, 1
  %635 = icmp eq ptr %633, null
  br i1 %635, label %636, label %547, !llvm.loop !264

636:                                              ; preds = %631, %524
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  br label %709

637:                                              ; preds = %3
  tail call void @BKE_editmesh_color_ensure(ptr noundef %0, i8 noundef zeroext 1) #11
  %638 = getelementptr inbounds %struct.MeshStatVis, ptr %2, i64 0, i32 11
  %639 = load float, ptr %638, align 4, !tbaa !265
  %640 = getelementptr inbounds %struct.MeshStatVis, ptr %2, i64 0, i32 12
  %641 = load float, ptr %640, align 4, !tbaa !266
  %642 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 8
  %643 = load ptr, ptr %642, align 8, !tbaa !224
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %644 = load ptr, ptr %0, align 8, !tbaa !38
  %645 = fsub float %641, %639
  %646 = fdiv float 1.000000e+00, %645
  %647 = load i32, ptr %644, align 8, !tbaa !48
  tail call void @fill_vn_fl(ptr noundef %643, i32 noundef %647, float noundef 0xC00921FB60000000) #11
  %648 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 2, ptr %648, align 4, !tbaa !100
  %649 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %649, align 8, !tbaa !102
  %650 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %650, align 8, !tbaa !103
  %651 = getelementptr inbounds %struct.BMesh, ptr %644, i64 0, i32 10
  %652 = load ptr, ptr %651, align 8, !tbaa !154
  store ptr %652, ptr %4, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #11
  %653 = load ptr, ptr %650, align 8, !tbaa !103
  %654 = call ptr %653(ptr noundef nonnull %4) #11
  %655 = icmp eq ptr %654, null
  br i1 %655, label %656, label %659

656:                                              ; preds = %659, %637
  %657 = load i32, ptr %644, align 8, !tbaa !48
  %658 = icmp sgt i32 %657, 0
  br i1 %658, label %683, label %708

659:                                              ; preds = %637, %659
  %660 = phi ptr [ %681, %659 ], [ %654, %637 ]
  %661 = call float @BM_edge_calc_face_angle_signed(ptr noundef nonnull %660) #11
  %662 = getelementptr inbounds %struct.BMEdge, ptr %660, i64 0, i32 2
  %663 = load ptr, ptr %662, align 8, !tbaa !129
  %664 = getelementptr inbounds %struct.BMHeader, ptr %663, i64 0, i32 1
  %665 = load i32, ptr %664, align 8, !tbaa !132
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds float, ptr %643, i64 %666
  %668 = getelementptr inbounds %struct.BMEdge, ptr %660, i64 0, i32 3
  %669 = load ptr, ptr %668, align 8, !tbaa !134
  %670 = getelementptr inbounds %struct.BMHeader, ptr %669, i64 0, i32 1
  %671 = load i32, ptr %670, align 8, !tbaa !132
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds float, ptr %643, i64 %672
  %674 = load float, ptr %667, align 4, !tbaa !113
  %675 = fcmp ogt float %674, %661
  %676 = select i1 %675, float %674, float %661
  store float %676, ptr %667, align 4, !tbaa !113
  %677 = load float, ptr %673, align 4, !tbaa !113
  %678 = fcmp ogt float %677, %661
  %679 = select i1 %678, float %677, float %661
  store float %679, ptr %673, align 4, !tbaa !113
  %680 = load ptr, ptr %650, align 8, !tbaa !103
  %681 = call ptr %680(ptr noundef nonnull %4) #11
  %682 = icmp eq ptr %681, null
  br i1 %682, label %656, label %659, !llvm.loop !267

683:                                              ; preds = %656, %703
  %684 = phi i64 [ %704, %703 ], [ 0, %656 ]
  %685 = getelementptr inbounds float, ptr %643, i64 %684
  %686 = load float, ptr %685, align 4, !tbaa !113
  %687 = fcmp ogt float %686, %639
  br i1 %687, label %688, label %698

688:                                              ; preds = %683
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %689 = fsub float %686, %639
  %690 = fmul float %646, %689
  %691 = fcmp olt float %690, 0.000000e+00
  br i1 %691, label %695, label %692

692:                                              ; preds = %688
  %693 = fcmp ogt float %690, 1.000000e+00
  br i1 %693, label %694, label %695

694:                                              ; preds = %692
  br label %695

695:                                              ; preds = %694, %692, %688
  %696 = phi float [ 1.000000e+00, %694 ], [ %690, %692 ], [ 0.000000e+00, %688 ]
  call void @weight_to_rgb(ptr noundef nonnull %5, float noundef %696) #11
  %697 = getelementptr inbounds [4 x i8], ptr %643, i64 %684
  call void @rgb_float_to_uchar(ptr noundef %697, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  br label %703

698:                                              ; preds = %683
  %699 = getelementptr inbounds [4 x i8], ptr %643, i64 %684
  store i8 64, ptr %699, align 1, !tbaa !105
  %700 = getelementptr inbounds i8, ptr %699, i64 1
  store i8 64, ptr %700, align 1, !tbaa !105
  %701 = getelementptr inbounds i8, ptr %699, i64 2
  store i8 64, ptr %701, align 1, !tbaa !105
  %702 = getelementptr inbounds i8, ptr %699, i64 3
  store i8 -1, ptr %702, align 1, !tbaa !105
  br label %703

703:                                              ; preds = %698, %695
  %704 = add nuw nsw i64 %684, 1
  %705 = load i32, ptr %644, align 8, !tbaa !48
  %706 = sext i32 %705 to i64
  %707 = icmp slt i64 %704, %706
  br i1 %707, label %683, label %708, !llvm.loop !268

708:                                              ; preds = %703, %656
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  br label %709

709:                                              ; preds = %3, %708, %636, %513, %404, %135
  ret void
}

declare void @BKE_editmesh_color_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare float @mat4_to_scale(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @emDM_ensurePolyNormals(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  %3 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !124
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %44

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #11
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %13, i8 noundef zeroext 1) #11
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !54
  %17 = sext i32 %16 to i64
  %18 = mul nsw i64 %17, 12
  %19 = tail call ptr %14(i64 noundef %18, ptr noundef nonnull @__func__.emDM_ensurePolyNormals) #11
  %20 = load ptr, ptr %3, align 8, !tbaa !98
  %21 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  store i8 3, ptr %21, align 4, !tbaa !100
  %22 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %22, align 8, !tbaa !102
  %23 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %23, align 8, !tbaa !103
  %24 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !158
  store ptr %25, ptr %2, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %2) #11
  %26 = load ptr, ptr %23, align 8, !tbaa !103
  %27 = call ptr %26(ptr noundef nonnull %2) #11
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %10, %29
  %30 = phi i64 [ %38, %29 ], [ 0, %10 ]
  %31 = phi ptr [ %37, %29 ], [ %27, %10 ]
  %32 = getelementptr inbounds %struct.BMHeader, ptr %31, i64 0, i32 1
  %33 = trunc i64 %30 to i32
  store i32 %33, ptr %32, align 8, !tbaa !132
  %34 = getelementptr inbounds [3 x float], ptr %19, i64 %30
  %35 = call float @BM_face_calc_normal_vcos(ptr noundef %13, ptr noundef nonnull %31, ptr noundef %34, ptr noundef %20) #11
  %36 = load ptr, ptr %23, align 8, !tbaa !103
  %37 = call ptr %36(ptr noundef nonnull %2) #11
  %38 = add nuw i64 %30, 1
  %39 = icmp eq ptr %37, null
  br i1 %39, label %40, label %29, !llvm.loop !269

40:                                               ; preds = %29, %10
  %41 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 7
  %42 = load i8, ptr %41, align 4, !tbaa !270
  %43 = and i8 %42, -9
  store i8 %43, ptr %41, align 4, !tbaa !270
  store ptr %19, ptr %7, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #11
  br label %44

44:                                               ; preds = %40, %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_editmesh_vertexCos_get(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.CageUserData, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %6 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !248
  %8 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !271
  %9 = call ptr @editbmesh_get_derived_cage_and_final(ptr noundef %1, ptr noundef %7, ptr noundef %0, ptr noundef nonnull %4, i64 noundef %8) #11
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = load ptr, ptr %0, align 8, !tbaa !38
  %12 = load i32, ptr %11, align 8, !tbaa !48
  %13 = sext i32 %12 to i64
  %14 = mul nsw i64 %13, 12
  %15 = call ptr %10(i64 noundef %14, ptr noundef nonnull @.str) #11
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %17 = load ptr, ptr %0, align 8, !tbaa !38
  %18 = load i32, ptr %17, align 8, !tbaa !48
  %19 = ashr i32 %18, 5
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 2
  %23 = call ptr %16(i64 noundef %22, ptr noundef nonnull @__func__.BKE_editmesh_vertexCos_get) #11
  %24 = load ptr, ptr %0, align 8, !tbaa !38
  %25 = load i32, ptr %24, align 8, !tbaa !48
  store i32 %25, ptr %5, align 8, !tbaa !272
  %26 = getelementptr inbounds %struct.CageUserData, ptr %5, i64 0, i32 1
  store ptr %15, ptr %26, align 8, !tbaa !274
  %27 = getelementptr inbounds %struct.CageUserData, ptr %5, i64 0, i32 2
  store ptr %23, ptr %27, align 8, !tbaa !275
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 71
  %29 = load ptr, ptr %28, align 8, !tbaa !276
  call void %29(ptr noundef %9, ptr noundef nonnull @cage_mapped_verts_callback, ptr noundef nonnull %5, i32 noundef 0) #11
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %30(ptr noundef %23) #11
  %31 = icmp eq ptr %2, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load ptr, ptr %0, align 8, !tbaa !38
  %34 = load i32, ptr %33, align 8, !tbaa !48
  store i32 %34, ptr %2, align 4, !tbaa !277
  br label %35

35:                                               ; preds = %32, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret ptr %15
}

declare ptr @editbmesh_get_derived_cage_and_final(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @cage_mapped_verts_callback(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #7 {
  %6 = icmp sgt i32 %1, -1
  br i1 %6, label %7, label %34

7:                                                ; preds = %5
  %8 = load i32, ptr %0, align 8, !tbaa !272
  %9 = icmp sgt i32 %8, %1
  br i1 %9, label %10, label %34

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.CageUserData, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !275
  %13 = lshr i32 %1, 5
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %12, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !277
  %17 = and i32 %1, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %10
  %22 = or i32 %16, %18
  store i32 %22, ptr %15, align 4, !tbaa !277
  %23 = getelementptr inbounds %struct.CageUserData, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !274
  %25 = zext nneg i32 %1 to i64
  %26 = getelementptr inbounds [3 x float], ptr %24, i64 %25
  %27 = load float, ptr %2, align 4, !tbaa !113
  store float %27, ptr %26, align 4, !tbaa !113
  %28 = getelementptr inbounds float, ptr %2, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !113
  %30 = getelementptr inbounds float, ptr %26, i64 1
  store float %29, ptr %30, align 4, !tbaa !113
  %31 = getelementptr inbounds float, ptr %2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !113
  %33 = getelementptr inbounds float, ptr %26, i64 2
  store float %32, ptr %33, align 4, !tbaa !113
  br label %34

34:                                               ; preds = %21, %10, %7, %5
  ret void
}

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_vert_flag_to_mflag(ptr noundef) local_unnamed_addr #2

declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_verts_calc_normal_vcos(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare signext i16 @BM_edge_flag_to_mflag(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_face_flag_to_mflag(ptr noundef) local_unnamed_addr #2

declare i32 @test_index_face(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @DM_get_tessface_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CustomData_get_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CustomData_sizeof(i32 noundef) local_unnamed_addr #2

declare void @DM_add_tessface_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @DM_add_loop_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_loops_calc_normal_vcos(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DM_get_loop_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_face_calc_center_mean_vcos(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_face_calc_center_mean(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glVertex3fv(ptr noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

declare zeroext i8 @glIsEnabled(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @glPolygonStipple(ptr noundef) local_unnamed_addr #2

declare void @glColor3ubv(ptr noundef) local_unnamed_addr #2

declare void @glShadeModel(i32 noundef) local_unnamed_addr #2

declare void @glNormal3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @emDM_drawFacesTex_common(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.MLoopUV, align 4
  %6 = alloca %struct.MTFace, align 8
  %7 = alloca %struct.MTFace, align 8
  %8 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.BMEditMesh, ptr %9, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !139
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 53
  %14 = load ptr, ptr %13, align 8, !tbaa !205
  %15 = tail call ptr %14(ptr noundef %0, i32 noundef 8) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %16 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 26
  %17 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %16, i32 noundef 16) #11
  %18 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %16, i32 noundef 17) #11
  %19 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 27
  %20 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %19, i32 noundef 15) #11
  %21 = getelementptr inbounds %struct.BMEditMesh, ptr %9, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !224
  %23 = icmp eq i32 %17, -1
  %24 = icmp ne ptr %22, null
  %25 = icmp ne i32 %18, -1
  %26 = xor i1 %24, true
  %27 = select i1 %25, i1 %26, i1 false
  %28 = zext i1 %27 to i8
  %29 = select i1 %24, i1 true, i1 %25
  tail call void @glShadeModel(i32 noundef 7425) #11
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %10, i8 noundef zeroext 8) #11
  br i1 %24, label %30, label %31

30:                                               ; preds = %4
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %10, i8 noundef zeroext 1) #11
  br label %31

31:                                               ; preds = %30, %4
  %32 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !98
  %34 = icmp eq ptr %33, null
  br i1 %34, label %300, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !123
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load ptr, ptr %8, align 8, !tbaa !43
  %41 = load ptr, ptr %40, align 8, !tbaa !38
  tail call fastcc void @emDM_ensurePolyNormals(ptr noundef %0)
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %41, i8 noundef zeroext 8) #11
  %42 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !124
  %44 = load ptr, ptr %32, align 8, !tbaa !98
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %46 = load i32, ptr %41, align 8, !tbaa !48
  %47 = sext i32 %46 to i64
  %48 = mul nsw i64 %47, 12
  %49 = tail call ptr %45(i64 noundef %48, ptr noundef nonnull @__func__.emDM_ensureVertNormals) #11
  tail call void @BM_verts_calc_normal_vcos(ptr noundef nonnull %41, ptr noundef %43, ptr noundef %44, ptr noundef %49) #11
  store ptr %49, ptr %36, align 8, !tbaa !123
  br label %50

50:                                               ; preds = %35, %39
  tail call fastcc void @emDM_ensurePolyNormals(ptr noundef %0)
  %51 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !123
  %53 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !124
  %55 = icmp eq ptr %15, null
  %56 = select i1 %55, i8 1, i8 5
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %10, i8 noundef zeroext %56) #11
  %57 = getelementptr inbounds %struct.BMEditMesh, ptr %9, i64 0, i32 4
  %58 = load i32, ptr %57, align 8, !tbaa !52
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %520

60:                                               ; preds = %50
  %61 = icmp eq i32 %20, -1
  %62 = sext i32 %20 to i64
  %63 = getelementptr inbounds %struct.MTFace, ptr %6, i64 0, i32 1
  %64 = getelementptr inbounds %struct.MTFace, ptr %6, i64 0, i32 2
  %65 = getelementptr inbounds %struct.MTFace, ptr %6, i64 0, i32 3
  %66 = getelementptr inbounds %struct.MTFace, ptr %6, i64 0, i32 4
  %67 = getelementptr inbounds %struct.MTFace, ptr %6, i64 0, i32 5
  %68 = icmp eq ptr %1, null
  %69 = icmp eq ptr %2, null
  %70 = sext i32 %17 to i64
  %71 = sext i32 %18 to i64
  br label %72

72:                                               ; preds = %60, %289
  %73 = phi i64 [ 0, %60 ], [ %296, %289 ]
  %74 = phi ptr [ null, %60 ], [ %295, %289 ]
  %75 = phi ptr [ null, %60 ], [ %294, %289 ]
  %76 = phi ptr [ null, %60 ], [ %293, %289 ]
  %77 = phi ptr [ %5, %60 ], [ %292, %289 ]
  %78 = phi ptr [ %5, %60 ], [ %291, %289 ]
  %79 = phi ptr [ %5, %60 ], [ %290, %289 ]
  %80 = getelementptr inbounds [3 x ptr], ptr %12, i64 %73
  br i1 %61, label %87, label %81

81:                                               ; preds = %72
  %82 = load ptr, ptr %80, align 8, !tbaa !34
  %83 = getelementptr inbounds %struct.BMLoop, ptr %82, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !140
  %85 = load ptr, ptr %84, align 8, !tbaa !177
  %86 = getelementptr inbounds i8, ptr %85, i64 %62
  br label %87

87:                                               ; preds = %72, %81
  %88 = phi ptr [ %86, %81 ], [ null, %72 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  br i1 %55, label %89, label %97

89:                                               ; preds = %87
  %90 = load ptr, ptr %80, align 8, !tbaa !34
  %91 = getelementptr inbounds %struct.BMLoop, ptr %90, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !140
  %93 = getelementptr inbounds %struct.BMHeader, ptr %92, i64 0, i32 3
  %94 = load i8, ptr %93, align 1, !tbaa !226
  %95 = and i8 %94, 8
  %96 = icmp ne i8 %95, 0
  br label %97

97:                                               ; preds = %89, %87
  %98 = phi i1 [ true, %87 ], [ %96, %89 ]
  %99 = load ptr, ptr %80, align 8, !tbaa !34
  %100 = getelementptr inbounds %struct.BMLoop, ptr %99, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !140
  br i1 %61, label %112, label %102

102:                                              ; preds = %97
  %103 = load ptr, ptr %88, align 8, !tbaa !178
  store ptr %103, ptr %63, align 8, !tbaa !180
  %104 = getelementptr inbounds %struct.MTexPoly, ptr %88, i64 0, i32 1
  %105 = load i8, ptr %104, align 8, !tbaa !182
  store i8 %105, ptr %64, align 8, !tbaa !183
  %106 = getelementptr inbounds %struct.MTexPoly, ptr %88, i64 0, i32 2
  %107 = load i8, ptr %106, align 1, !tbaa !184
  store i8 %107, ptr %65, align 1, !tbaa !185
  %108 = getelementptr inbounds %struct.MTexPoly, ptr %88, i64 0, i32 3
  %109 = load i16, ptr %108, align 2, !tbaa !186
  store i16 %109, ptr %66, align 2, !tbaa !187
  %110 = getelementptr inbounds %struct.MTexPoly, ptr %88, i64 0, i32 4
  %111 = load i16, ptr %110, align 4, !tbaa !188
  store i16 %111, ptr %67, align 4, !tbaa !189
  br label %112

112:                                              ; preds = %102, %97
  br i1 %68, label %118, label %113

113:                                              ; preds = %112
  %114 = getelementptr inbounds %struct.BMFace, ptr %101, i64 0, i32 5
  %115 = load i16, ptr %114, align 8, !tbaa !142
  %116 = sext i16 %115 to i32
  %117 = call i32 %1(ptr noundef nonnull %6, i8 noundef zeroext %28, i32 noundef %116) #11
  br label %123

118:                                              ; preds = %112
  br i1 %69, label %123, label %119

119:                                              ; preds = %118
  %120 = getelementptr inbounds %struct.BMHeader, ptr %101, i64 0, i32 1
  %121 = load i32, ptr %120, align 8, !tbaa !132
  %122 = call i32 %2(ptr noundef %3, i32 noundef %121) #11
  br label %123

123:                                              ; preds = %118, %119, %113
  %124 = phi i32 [ %117, %113 ], [ %122, %119 ], [ 1, %118 ]
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %289, label %126

126:                                              ; preds = %123
  br i1 %23, label %139, label %127

127:                                              ; preds = %126
  %128 = load ptr, ptr %80, align 8, !tbaa !34
  %129 = load ptr, ptr %128, align 8, !tbaa !190
  %130 = getelementptr inbounds i8, ptr %129, i64 %70
  %131 = getelementptr inbounds ptr, ptr %80, i64 1
  %132 = load ptr, ptr %131, align 8, !tbaa !34
  %133 = load ptr, ptr %132, align 8, !tbaa !190
  %134 = getelementptr inbounds i8, ptr %133, i64 %70
  %135 = getelementptr inbounds ptr, ptr %80, i64 2
  %136 = load ptr, ptr %135, align 8, !tbaa !34
  %137 = load ptr, ptr %136, align 8, !tbaa !190
  %138 = getelementptr inbounds i8, ptr %137, i64 %70
  br label %139

139:                                              ; preds = %127, %126
  %140 = phi ptr [ %79, %126 ], [ %138, %127 ]
  %141 = phi ptr [ %78, %126 ], [ %134, %127 ]
  %142 = phi ptr [ %77, %126 ], [ %130, %127 ]
  br i1 %27, label %143, label %155

143:                                              ; preds = %139
  %144 = load ptr, ptr %80, align 8, !tbaa !34
  %145 = load ptr, ptr %144, align 8, !tbaa !190
  %146 = getelementptr inbounds i8, ptr %145, i64 %71
  %147 = getelementptr inbounds ptr, ptr %80, i64 1
  %148 = load ptr, ptr %147, align 8, !tbaa !34
  %149 = load ptr, ptr %148, align 8, !tbaa !190
  %150 = getelementptr inbounds i8, ptr %149, i64 %71
  %151 = getelementptr inbounds ptr, ptr %80, i64 2
  %152 = load ptr, ptr %151, align 8, !tbaa !34
  %153 = load ptr, ptr %152, align 8, !tbaa !190
  %154 = getelementptr inbounds i8, ptr %153, i64 %71
  br label %180

155:                                              ; preds = %139
  br i1 %24, label %156, label %180

156:                                              ; preds = %155
  %157 = load ptr, ptr %80, align 8, !tbaa !34
  %158 = getelementptr inbounds %struct.BMLoop, ptr %157, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !147
  %160 = getelementptr inbounds %struct.BMHeader, ptr %159, i64 0, i32 1
  %161 = load i32, ptr %160, align 8, !tbaa !132
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [4 x i8], ptr %22, i64 %162
  %164 = getelementptr inbounds ptr, ptr %80, i64 1
  %165 = load ptr, ptr %164, align 8, !tbaa !34
  %166 = getelementptr inbounds %struct.BMLoop, ptr %165, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !147
  %168 = getelementptr inbounds %struct.BMHeader, ptr %167, i64 0, i32 1
  %169 = load i32, ptr %168, align 8, !tbaa !132
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [4 x i8], ptr %22, i64 %170
  %172 = getelementptr inbounds ptr, ptr %80, i64 2
  %173 = load ptr, ptr %172, align 8, !tbaa !34
  %174 = getelementptr inbounds %struct.BMLoop, ptr %173, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !147
  %176 = getelementptr inbounds %struct.BMHeader, ptr %175, i64 0, i32 1
  %177 = load i32, ptr %176, align 8, !tbaa !132
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [4 x i8], ptr %22, i64 %178
  br label %180

180:                                              ; preds = %155, %156, %143
  %181 = phi ptr [ %146, %143 ], [ %163, %156 ], [ %76, %155 ]
  %182 = phi ptr [ %150, %143 ], [ %171, %156 ], [ %75, %155 ]
  %183 = phi ptr [ %154, %143 ], [ %179, %156 ], [ %74, %155 ]
  call void @glBegin(i32 noundef 4) #11
  br i1 %98, label %215, label %184

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.BMHeader, ptr %101, i64 0, i32 1
  %186 = load i32, ptr %185, align 8, !tbaa !132
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [3 x float], ptr %54, i64 %187
  call void @glNormal3fv(ptr noundef %188) #11
  call void @glTexCoord2fv(ptr noundef %142) #11
  br i1 %29, label %189, label %197

189:                                              ; preds = %184
  call void @glColor3ubv(ptr noundef %181) #11
  %190 = load ptr, ptr %80, align 8, !tbaa !34
  %191 = getelementptr inbounds %struct.BMLoop, ptr %190, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !147
  %193 = getelementptr inbounds %struct.BMHeader, ptr %192, i64 0, i32 1
  %194 = load i32, ptr %193, align 8, !tbaa !132
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [3 x float], ptr %33, i64 %195
  call void @glVertex3fv(ptr noundef nonnull %196) #11
  call void @glTexCoord2fv(ptr noundef %141) #11
  call void @glColor3ubv(ptr noundef %182) #11
  br label %205

197:                                              ; preds = %184
  %198 = load ptr, ptr %80, align 8, !tbaa !34
  %199 = getelementptr inbounds %struct.BMLoop, ptr %198, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !147
  %201 = getelementptr inbounds %struct.BMHeader, ptr %200, i64 0, i32 1
  %202 = load i32, ptr %201, align 8, !tbaa !132
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [3 x float], ptr %33, i64 %203
  call void @glVertex3fv(ptr noundef nonnull %204) #11
  call void @glTexCoord2fv(ptr noundef %141) #11
  br label %205

205:                                              ; preds = %197, %189
  %206 = getelementptr inbounds ptr, ptr %80, i64 1
  %207 = load ptr, ptr %206, align 8, !tbaa !34
  %208 = getelementptr inbounds %struct.BMLoop, ptr %207, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !147
  %210 = getelementptr inbounds %struct.BMHeader, ptr %209, i64 0, i32 1
  %211 = load i32, ptr %210, align 8, !tbaa !132
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [3 x float], ptr %33, i64 %212
  call void @glVertex3fv(ptr noundef nonnull %213) #11
  call void @glTexCoord2fv(ptr noundef %140) #11
  br i1 %29, label %214, label %280

214:                                              ; preds = %205
  call void @glColor3ubv(ptr noundef %183) #11
  br label %280

215:                                              ; preds = %180
  call void @glTexCoord2fv(ptr noundef %142) #11
  br i1 %29, label %216, label %217

216:                                              ; preds = %215
  call void @glColor3ubv(ptr noundef %181) #11
  br label %217

217:                                              ; preds = %216, %215
  %218 = load ptr, ptr %80, align 8, !tbaa !34
  br i1 %55, label %224, label %219

219:                                              ; preds = %217
  %220 = getelementptr inbounds %struct.BMHeader, ptr %218, i64 0, i32 1
  %221 = load i32, ptr %220, align 8, !tbaa !132
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [3 x float], ptr %15, i64 %222
  call void @glNormal3fv(ptr noundef nonnull %223) #11
  br label %231

224:                                              ; preds = %217
  %225 = getelementptr inbounds %struct.BMLoop, ptr %218, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !147
  %227 = getelementptr inbounds %struct.BMHeader, ptr %226, i64 0, i32 1
  %228 = load i32, ptr %227, align 8, !tbaa !132
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [3 x float], ptr %52, i64 %229
  call void @glNormal3fv(ptr noundef %230) #11
  br label %231

231:                                              ; preds = %224, %219
  %232 = load ptr, ptr %80, align 8, !tbaa !34
  %233 = getelementptr inbounds %struct.BMLoop, ptr %232, i64 0, i32 1
  %234 = load ptr, ptr %233, align 8, !tbaa !147
  %235 = getelementptr inbounds %struct.BMHeader, ptr %234, i64 0, i32 1
  %236 = load i32, ptr %235, align 8, !tbaa !132
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [3 x float], ptr %33, i64 %237
  call void @glVertex3fv(ptr noundef nonnull %238) #11
  call void @glTexCoord2fv(ptr noundef %141) #11
  br i1 %29, label %239, label %240

239:                                              ; preds = %231
  call void @glColor3ubv(ptr noundef %182) #11
  br label %240

240:                                              ; preds = %239, %231
  %241 = getelementptr inbounds ptr, ptr %80, i64 1
  %242 = load ptr, ptr %241, align 8, !tbaa !34
  br i1 %55, label %248, label %243

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.BMHeader, ptr %242, i64 0, i32 1
  %245 = load i32, ptr %244, align 8, !tbaa !132
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [3 x float], ptr %15, i64 %246
  call void @glNormal3fv(ptr noundef nonnull %247) #11
  br label %255

248:                                              ; preds = %240
  %249 = getelementptr inbounds %struct.BMLoop, ptr %242, i64 0, i32 1
  %250 = load ptr, ptr %249, align 8, !tbaa !147
  %251 = getelementptr inbounds %struct.BMHeader, ptr %250, i64 0, i32 1
  %252 = load i32, ptr %251, align 8, !tbaa !132
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [3 x float], ptr %52, i64 %253
  call void @glNormal3fv(ptr noundef %254) #11
  br label %255

255:                                              ; preds = %248, %243
  %256 = getelementptr inbounds ptr, ptr %80, i64 1
  %257 = load ptr, ptr %256, align 8, !tbaa !34
  %258 = getelementptr inbounds %struct.BMLoop, ptr %257, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !147
  %260 = getelementptr inbounds %struct.BMHeader, ptr %259, i64 0, i32 1
  %261 = load i32, ptr %260, align 8, !tbaa !132
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [3 x float], ptr %33, i64 %262
  call void @glVertex3fv(ptr noundef nonnull %263) #11
  call void @glTexCoord2fv(ptr noundef %140) #11
  br i1 %29, label %264, label %265

264:                                              ; preds = %255
  call void @glColor3ubv(ptr noundef %183) #11
  br label %265

265:                                              ; preds = %264, %255
  %266 = getelementptr inbounds ptr, ptr %80, i64 2
  %267 = load ptr, ptr %266, align 8, !tbaa !34
  br i1 %55, label %273, label %268

268:                                              ; preds = %265
  %269 = getelementptr inbounds %struct.BMHeader, ptr %267, i64 0, i32 1
  %270 = load i32, ptr %269, align 8, !tbaa !132
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [3 x float], ptr %15, i64 %271
  call void @glNormal3fv(ptr noundef nonnull %272) #11
  br label %280

273:                                              ; preds = %265
  %274 = getelementptr inbounds %struct.BMLoop, ptr %267, i64 0, i32 1
  %275 = load ptr, ptr %274, align 8, !tbaa !147
  %276 = getelementptr inbounds %struct.BMHeader, ptr %275, i64 0, i32 1
  %277 = load i32, ptr %276, align 8, !tbaa !132
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [3 x float], ptr %52, i64 %278
  call void @glNormal3fv(ptr noundef %279) #11
  br label %280

280:                                              ; preds = %268, %273, %205, %214
  %281 = getelementptr inbounds ptr, ptr %80, i64 2
  %282 = load ptr, ptr %281, align 8, !tbaa !34
  %283 = getelementptr inbounds %struct.BMLoop, ptr %282, i64 0, i32 1
  %284 = load ptr, ptr %283, align 8, !tbaa !147
  %285 = getelementptr inbounds %struct.BMHeader, ptr %284, i64 0, i32 1
  %286 = load i32, ptr %285, align 8, !tbaa !132
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [3 x float], ptr %33, i64 %287
  call void @glVertex3fv(ptr noundef nonnull %288) #11
  call void @glEnd() #11
  br label %289

289:                                              ; preds = %280, %123
  %290 = phi ptr [ %79, %123 ], [ %140, %280 ]
  %291 = phi ptr [ %78, %123 ], [ %141, %280 ]
  %292 = phi ptr [ %77, %123 ], [ %142, %280 ]
  %293 = phi ptr [ %76, %123 ], [ %181, %280 ]
  %294 = phi ptr [ %75, %123 ], [ %182, %280 ]
  %295 = phi ptr [ %74, %123 ], [ %183, %280 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #11
  %296 = add nuw nsw i64 %73, 1
  %297 = load i32, ptr %57, align 8, !tbaa !52
  %298 = sext i32 %297 to i64
  %299 = icmp slt i64 %296, %298
  br i1 %299, label %72, label %520, !llvm.loop !278

300:                                              ; preds = %31
  %301 = icmp eq ptr %15, null
  %302 = select i1 %301, i8 1, i8 5
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %10, i8 noundef zeroext %302) #11
  %303 = getelementptr inbounds %struct.BMEditMesh, ptr %9, i64 0, i32 4
  %304 = load i32, ptr %303, align 8, !tbaa !52
  %305 = icmp sgt i32 %304, 0
  br i1 %305, label %306, label %520

306:                                              ; preds = %300
  %307 = icmp eq i32 %20, -1
  %308 = sext i32 %20 to i64
  %309 = getelementptr inbounds %struct.MTFace, ptr %7, i64 0, i32 1
  %310 = getelementptr inbounds %struct.MTFace, ptr %7, i64 0, i32 2
  %311 = getelementptr inbounds %struct.MTFace, ptr %7, i64 0, i32 3
  %312 = getelementptr inbounds %struct.MTFace, ptr %7, i64 0, i32 4
  %313 = getelementptr inbounds %struct.MTFace, ptr %7, i64 0, i32 5
  %314 = icmp eq ptr %1, null
  %315 = icmp eq ptr %2, null
  %316 = sext i32 %17 to i64
  %317 = sext i32 %18 to i64
  br label %318

318:                                              ; preds = %306, %509
  %319 = phi i64 [ 0, %306 ], [ %516, %509 ]
  %320 = phi ptr [ null, %306 ], [ %515, %509 ]
  %321 = phi ptr [ null, %306 ], [ %514, %509 ]
  %322 = phi ptr [ null, %306 ], [ %513, %509 ]
  %323 = phi ptr [ %5, %306 ], [ %512, %509 ]
  %324 = phi ptr [ %5, %306 ], [ %511, %509 ]
  %325 = phi ptr [ %5, %306 ], [ %510, %509 ]
  %326 = getelementptr inbounds [3 x ptr], ptr %12, i64 %319
  br i1 %307, label %333, label %327

327:                                              ; preds = %318
  %328 = load ptr, ptr %326, align 8, !tbaa !34
  %329 = getelementptr inbounds %struct.BMLoop, ptr %328, i64 0, i32 3
  %330 = load ptr, ptr %329, align 8, !tbaa !140
  %331 = load ptr, ptr %330, align 8, !tbaa !177
  %332 = getelementptr inbounds i8, ptr %331, i64 %308
  br label %333

333:                                              ; preds = %318, %327
  %334 = phi ptr [ %332, %327 ], [ null, %318 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  br i1 %301, label %335, label %343

335:                                              ; preds = %333
  %336 = load ptr, ptr %326, align 8, !tbaa !34
  %337 = getelementptr inbounds %struct.BMLoop, ptr %336, i64 0, i32 3
  %338 = load ptr, ptr %337, align 8, !tbaa !140
  %339 = getelementptr inbounds %struct.BMHeader, ptr %338, i64 0, i32 3
  %340 = load i8, ptr %339, align 1, !tbaa !226
  %341 = and i8 %340, 8
  %342 = icmp ne i8 %341, 0
  br label %343

343:                                              ; preds = %335, %333
  %344 = phi i1 [ true, %333 ], [ %342, %335 ]
  %345 = load ptr, ptr %326, align 8, !tbaa !34
  %346 = getelementptr inbounds %struct.BMLoop, ptr %345, i64 0, i32 3
  %347 = load ptr, ptr %346, align 8, !tbaa !140
  br i1 %307, label %358, label %348

348:                                              ; preds = %343
  %349 = load ptr, ptr %334, align 8, !tbaa !178
  store ptr %349, ptr %309, align 8, !tbaa !180
  %350 = getelementptr inbounds %struct.MTexPoly, ptr %334, i64 0, i32 1
  %351 = load i8, ptr %350, align 8, !tbaa !182
  store i8 %351, ptr %310, align 8, !tbaa !183
  %352 = getelementptr inbounds %struct.MTexPoly, ptr %334, i64 0, i32 2
  %353 = load i8, ptr %352, align 1, !tbaa !184
  store i8 %353, ptr %311, align 1, !tbaa !185
  %354 = getelementptr inbounds %struct.MTexPoly, ptr %334, i64 0, i32 3
  %355 = load i16, ptr %354, align 2, !tbaa !186
  store i16 %355, ptr %312, align 2, !tbaa !187
  %356 = getelementptr inbounds %struct.MTexPoly, ptr %334, i64 0, i32 4
  %357 = load i16, ptr %356, align 4, !tbaa !188
  store i16 %357, ptr %313, align 4, !tbaa !189
  br label %358

358:                                              ; preds = %348, %343
  br i1 %314, label %364, label %359

359:                                              ; preds = %358
  %360 = getelementptr inbounds %struct.BMFace, ptr %347, i64 0, i32 5
  %361 = load i16, ptr %360, align 8, !tbaa !142
  %362 = sext i16 %361 to i32
  %363 = call i32 %1(ptr noundef nonnull %7, i8 noundef zeroext %28, i32 noundef %362) #11
  br label %369

364:                                              ; preds = %358
  br i1 %315, label %369, label %365

365:                                              ; preds = %364
  %366 = getelementptr inbounds %struct.BMHeader, ptr %347, i64 0, i32 1
  %367 = load i32, ptr %366, align 8, !tbaa !132
  %368 = call i32 %2(ptr noundef %3, i32 noundef %367) #11
  br label %369

369:                                              ; preds = %364, %365, %359
  %370 = phi i32 [ %363, %359 ], [ %368, %365 ], [ 1, %364 ]
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %509, label %372

372:                                              ; preds = %369
  br i1 %23, label %385, label %373

373:                                              ; preds = %372
  %374 = load ptr, ptr %326, align 8, !tbaa !34
  %375 = load ptr, ptr %374, align 8, !tbaa !190
  %376 = getelementptr inbounds i8, ptr %375, i64 %316
  %377 = getelementptr inbounds ptr, ptr %326, i64 1
  %378 = load ptr, ptr %377, align 8, !tbaa !34
  %379 = load ptr, ptr %378, align 8, !tbaa !190
  %380 = getelementptr inbounds i8, ptr %379, i64 %316
  %381 = getelementptr inbounds ptr, ptr %326, i64 2
  %382 = load ptr, ptr %381, align 8, !tbaa !34
  %383 = load ptr, ptr %382, align 8, !tbaa !190
  %384 = getelementptr inbounds i8, ptr %383, i64 %316
  br label %385

385:                                              ; preds = %373, %372
  %386 = phi ptr [ %325, %372 ], [ %384, %373 ]
  %387 = phi ptr [ %324, %372 ], [ %380, %373 ]
  %388 = phi ptr [ %323, %372 ], [ %376, %373 ]
  br i1 %27, label %389, label %401

389:                                              ; preds = %385
  %390 = load ptr, ptr %326, align 8, !tbaa !34
  %391 = load ptr, ptr %390, align 8, !tbaa !190
  %392 = getelementptr inbounds i8, ptr %391, i64 %317
  %393 = getelementptr inbounds ptr, ptr %326, i64 1
  %394 = load ptr, ptr %393, align 8, !tbaa !34
  %395 = load ptr, ptr %394, align 8, !tbaa !190
  %396 = getelementptr inbounds i8, ptr %395, i64 %317
  %397 = getelementptr inbounds ptr, ptr %326, i64 2
  %398 = load ptr, ptr %397, align 8, !tbaa !34
  %399 = load ptr, ptr %398, align 8, !tbaa !190
  %400 = getelementptr inbounds i8, ptr %399, i64 %317
  br label %426

401:                                              ; preds = %385
  br i1 %24, label %402, label %426

402:                                              ; preds = %401
  %403 = load ptr, ptr %326, align 8, !tbaa !34
  %404 = getelementptr inbounds %struct.BMLoop, ptr %403, i64 0, i32 1
  %405 = load ptr, ptr %404, align 8, !tbaa !147
  %406 = getelementptr inbounds %struct.BMHeader, ptr %405, i64 0, i32 1
  %407 = load i32, ptr %406, align 8, !tbaa !132
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [4 x i8], ptr %22, i64 %408
  %410 = getelementptr inbounds ptr, ptr %326, i64 1
  %411 = load ptr, ptr %410, align 8, !tbaa !34
  %412 = getelementptr inbounds %struct.BMLoop, ptr %411, i64 0, i32 1
  %413 = load ptr, ptr %412, align 8, !tbaa !147
  %414 = getelementptr inbounds %struct.BMHeader, ptr %413, i64 0, i32 1
  %415 = load i32, ptr %414, align 8, !tbaa !132
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds [4 x i8], ptr %22, i64 %416
  %418 = getelementptr inbounds ptr, ptr %326, i64 2
  %419 = load ptr, ptr %418, align 8, !tbaa !34
  %420 = getelementptr inbounds %struct.BMLoop, ptr %419, i64 0, i32 1
  %421 = load ptr, ptr %420, align 8, !tbaa !147
  %422 = getelementptr inbounds %struct.BMHeader, ptr %421, i64 0, i32 1
  %423 = load i32, ptr %422, align 8, !tbaa !132
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [4 x i8], ptr %22, i64 %424
  br label %426

426:                                              ; preds = %401, %402, %389
  %427 = phi ptr [ %392, %389 ], [ %409, %402 ], [ %322, %401 ]
  %428 = phi ptr [ %396, %389 ], [ %417, %402 ], [ %321, %401 ]
  %429 = phi ptr [ %400, %389 ], [ %425, %402 ], [ %320, %401 ]
  call void @glBegin(i32 noundef 4) #11
  br i1 %344, label %449, label %430

430:                                              ; preds = %426
  %431 = getelementptr inbounds %struct.BMFace, ptr %347, i64 0, i32 4
  call void @glNormal3fv(ptr noundef nonnull %431) #11
  call void @glTexCoord2fv(ptr noundef %388) #11
  br i1 %29, label %432, label %437

432:                                              ; preds = %430
  call void @glColor3ubv(ptr noundef %427) #11
  %433 = load ptr, ptr %326, align 8, !tbaa !34
  %434 = getelementptr inbounds %struct.BMLoop, ptr %433, i64 0, i32 1
  %435 = load ptr, ptr %434, align 8, !tbaa !147
  %436 = getelementptr inbounds %struct.BMVert, ptr %435, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %436) #11
  call void @glTexCoord2fv(ptr noundef %387) #11
  call void @glColor3ubv(ptr noundef %428) #11
  br label %442

437:                                              ; preds = %430
  %438 = load ptr, ptr %326, align 8, !tbaa !34
  %439 = getelementptr inbounds %struct.BMLoop, ptr %438, i64 0, i32 1
  %440 = load ptr, ptr %439, align 8, !tbaa !147
  %441 = getelementptr inbounds %struct.BMVert, ptr %440, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %441) #11
  call void @glTexCoord2fv(ptr noundef %387) #11
  br label %442

442:                                              ; preds = %437, %432
  %443 = getelementptr inbounds ptr, ptr %326, i64 1
  %444 = load ptr, ptr %443, align 8, !tbaa !34
  %445 = getelementptr inbounds %struct.BMLoop, ptr %444, i64 0, i32 1
  %446 = load ptr, ptr %445, align 8, !tbaa !147
  %447 = getelementptr inbounds %struct.BMVert, ptr %446, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %447) #11
  call void @glTexCoord2fv(ptr noundef %386) #11
  br i1 %29, label %448, label %503

448:                                              ; preds = %442
  call void @glColor3ubv(ptr noundef %429) #11
  br label %503

449:                                              ; preds = %426
  call void @glTexCoord2fv(ptr noundef %388) #11
  br i1 %29, label %450, label %451

450:                                              ; preds = %449
  call void @glColor3ubv(ptr noundef %427) #11
  br label %451

451:                                              ; preds = %450, %449
  %452 = load ptr, ptr %326, align 8, !tbaa !34
  br i1 %301, label %458, label %453

453:                                              ; preds = %451
  %454 = getelementptr inbounds %struct.BMHeader, ptr %452, i64 0, i32 1
  %455 = load i32, ptr %454, align 8, !tbaa !132
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds [3 x float], ptr %15, i64 %456
  br label %462

458:                                              ; preds = %451
  %459 = getelementptr inbounds %struct.BMLoop, ptr %452, i64 0, i32 1
  %460 = load ptr, ptr %459, align 8, !tbaa !147
  %461 = getelementptr inbounds %struct.BMVert, ptr %460, i64 0, i32 3
  br label %462

462:                                              ; preds = %458, %453
  %463 = phi ptr [ %461, %458 ], [ %457, %453 ]
  call void @glNormal3fv(ptr noundef nonnull %463) #11
  %464 = load ptr, ptr %326, align 8, !tbaa !34
  %465 = getelementptr inbounds %struct.BMLoop, ptr %464, i64 0, i32 1
  %466 = load ptr, ptr %465, align 8, !tbaa !147
  %467 = getelementptr inbounds %struct.BMVert, ptr %466, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %467) #11
  call void @glTexCoord2fv(ptr noundef %387) #11
  br i1 %29, label %468, label %469

468:                                              ; preds = %462
  call void @glColor3ubv(ptr noundef %428) #11
  br label %469

469:                                              ; preds = %468, %462
  %470 = getelementptr inbounds ptr, ptr %326, i64 1
  %471 = load ptr, ptr %470, align 8, !tbaa !34
  br i1 %301, label %477, label %472

472:                                              ; preds = %469
  %473 = getelementptr inbounds %struct.BMHeader, ptr %471, i64 0, i32 1
  %474 = load i32, ptr %473, align 8, !tbaa !132
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds [3 x float], ptr %15, i64 %475
  br label %481

477:                                              ; preds = %469
  %478 = getelementptr inbounds %struct.BMLoop, ptr %471, i64 0, i32 1
  %479 = load ptr, ptr %478, align 8, !tbaa !147
  %480 = getelementptr inbounds %struct.BMVert, ptr %479, i64 0, i32 3
  br label %481

481:                                              ; preds = %477, %472
  %482 = phi ptr [ %480, %477 ], [ %476, %472 ]
  call void @glNormal3fv(ptr noundef nonnull %482) #11
  %483 = getelementptr inbounds ptr, ptr %326, i64 1
  %484 = load ptr, ptr %483, align 8, !tbaa !34
  %485 = getelementptr inbounds %struct.BMLoop, ptr %484, i64 0, i32 1
  %486 = load ptr, ptr %485, align 8, !tbaa !147
  %487 = getelementptr inbounds %struct.BMVert, ptr %486, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %487) #11
  call void @glTexCoord2fv(ptr noundef %386) #11
  br i1 %29, label %488, label %489

488:                                              ; preds = %481
  call void @glColor3ubv(ptr noundef %429) #11
  br label %489

489:                                              ; preds = %488, %481
  %490 = getelementptr inbounds ptr, ptr %326, i64 2
  %491 = load ptr, ptr %490, align 8, !tbaa !34
  br i1 %301, label %497, label %492

492:                                              ; preds = %489
  %493 = getelementptr inbounds %struct.BMHeader, ptr %491, i64 0, i32 1
  %494 = load i32, ptr %493, align 8, !tbaa !132
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds [3 x float], ptr %15, i64 %495
  br label %501

497:                                              ; preds = %489
  %498 = getelementptr inbounds %struct.BMLoop, ptr %491, i64 0, i32 1
  %499 = load ptr, ptr %498, align 8, !tbaa !147
  %500 = getelementptr inbounds %struct.BMVert, ptr %499, i64 0, i32 3
  br label %501

501:                                              ; preds = %497, %492
  %502 = phi ptr [ %500, %497 ], [ %496, %492 ]
  call void @glNormal3fv(ptr noundef nonnull %502) #11
  br label %503

503:                                              ; preds = %442, %448, %501
  %504 = getelementptr inbounds ptr, ptr %326, i64 2
  %505 = load ptr, ptr %504, align 8, !tbaa !34
  %506 = getelementptr inbounds %struct.BMLoop, ptr %505, i64 0, i32 1
  %507 = load ptr, ptr %506, align 8, !tbaa !147
  %508 = getelementptr inbounds %struct.BMVert, ptr %507, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %508) #11
  call void @glEnd() #11
  br label %509

509:                                              ; preds = %503, %369
  %510 = phi ptr [ %325, %369 ], [ %386, %503 ]
  %511 = phi ptr [ %324, %369 ], [ %387, %503 ]
  %512 = phi ptr [ %323, %369 ], [ %388, %503 ]
  %513 = phi ptr [ %322, %369 ], [ %427, %503 ]
  %514 = phi ptr [ %321, %369 ], [ %428, %503 ]
  %515 = phi ptr [ %320, %369 ], [ %429, %503 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #11
  %516 = add nuw nsw i64 %319, 1
  %517 = load i32, ptr %303, align 8, !tbaa !52
  %518 = sext i32 %517 to i64
  %519 = icmp slt i64 %516, %518
  br i1 %519, label %318, label %520, !llvm.loop !279

520:                                              ; preds = %289, %509, %50, %300
  call void @glShadeModel(i32 noundef 7424) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  ret void
}

declare void @glTexCoord2fv(ptr noundef) local_unnamed_addr #2

declare void @DM_vertex_attributes_from_gpu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @emdm_pass_attrib_vertex_glsl(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x i8], align 4
  %6 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %8 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !280
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.BMHeader, ptr %7, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !132
  %14 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !284
  %16 = icmp eq ptr %15, null
  %17 = sext i32 %13 to i64
  %18 = getelementptr inbounds [3 x float], ptr %15, i64 %17
  %19 = select i1 %16, ptr %4, ptr %18
  %20 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 3, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !285
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %11
  call void @glTexCoord3fv(ptr noundef %19) #11
  br label %28

24:                                               ; preds = %11
  %25 = load ptr, ptr @__glewVertexAttrib3fvARB, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 3, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !286
  call void %25(i32 noundef %27, ptr noundef %19) #11
  br label %28

28:                                               ; preds = %23, %24, %3
  %29 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !287
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %59, %28
  %33 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 5
  %34 = load i32, ptr %33, align 4, !tbaa !288
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %92

36:                                               ; preds = %32
  %37 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 1
  %38 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 2
  %39 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 3
  br label %64

40:                                               ; preds = %28, %59
  %41 = phi i64 [ %60, %59 ], [ 0, %28 ]
  %42 = getelementptr inbounds [8 x %struct.anon], ptr %0, i64 0, i64 %41, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !289
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %1, align 8, !tbaa !190
  %47 = sext i32 %43 to i64
  %48 = getelementptr inbounds i8, ptr %46, i64 %47
  br label %49

49:                                               ; preds = %40, %45
  %50 = phi ptr [ %48, %45 ], [ %4, %40 ]
  %51 = getelementptr inbounds [8 x %struct.anon], ptr %0, i64 0, i64 %41, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !290
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  call void @glTexCoord2fv(ptr noundef %50) #11
  br label %59

55:                                               ; preds = %49
  %56 = load ptr, ptr @__glewVertexAttrib2fvARB, align 8, !tbaa !34
  %57 = getelementptr inbounds [8 x %struct.anon], ptr %0, i64 0, i64 %41, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !291
  call void %56(i32 noundef %58, ptr noundef %50) #11
  br label %59

59:                                               ; preds = %55, %54
  %60 = add nuw nsw i64 %41, 1
  %61 = load i32, ptr %29, align 8, !tbaa !287
  %62 = sext i32 %61 to i64
  %63 = icmp slt i64 %60, %62
  br i1 %63, label %40, label %32, !llvm.loop !292

64:                                               ; preds = %36, %81
  %65 = phi i64 [ 0, %36 ], [ %85, %81 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %66 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 1, i64 %65, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !293
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %80, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr %1, align 8, !tbaa !190
  %71 = sext i32 %67 to i64
  %72 = getelementptr inbounds i8, ptr %70, i64 %71
  %73 = getelementptr inbounds %struct.MLoopCol, ptr %72, i64 0, i32 2
  %74 = load i8, ptr %73, align 1, !tbaa !199
  store i8 %74, ptr %5, align 4, !tbaa !105
  %75 = getelementptr inbounds %struct.MLoopCol, ptr %72, i64 0, i32 1
  %76 = load i8, ptr %75, align 1, !tbaa !197
  store i8 %76, ptr %37, align 1, !tbaa !105
  %77 = load i8, ptr %72, align 1, !tbaa !193
  store i8 %77, ptr %38, align 2, !tbaa !105
  %78 = getelementptr inbounds %struct.MLoopCol, ptr %72, i64 0, i32 3
  %79 = load i8, ptr %78, align 1, !tbaa !201
  store i8 %79, ptr %39, align 1, !tbaa !105
  br label %81

80:                                               ; preds = %64
  store i32 0, ptr %5, align 4
  br label %81

81:                                               ; preds = %80, %69
  %82 = load ptr, ptr @__glewVertexAttrib4ubvARB, align 8, !tbaa !34
  %83 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 1, i64 %65, i32 2
  %84 = load i32, ptr %83, align 4, !tbaa !294
  call void %82(i32 noundef %84, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  %85 = add nuw nsw i64 %65, 1
  %86 = load i32, ptr %33, align 4, !tbaa !288
  %87 = sext i32 %86 to i64
  %88 = icmp slt i64 %85, %87
  br i1 %88, label %64, label %89, !llvm.loop !295

89:                                               ; preds = %81
  %90 = trunc i64 %85 to i32
  %91 = shl nsw i32 %90, 2
  br label %92

92:                                               ; preds = %89, %32
  %93 = phi i32 [ 0, %32 ], [ %91, %89 ]
  %94 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 6
  %95 = load i32, ptr %94, align 8, !tbaa !296
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !297
  %100 = icmp eq ptr %99, null
  %101 = add nsw i32 %93, %2
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [4 x float], ptr %99, i64 %102
  %104 = select i1 %100, ptr %4, ptr %103
  %105 = load ptr, ptr @__glewVertexAttrib4fvARB, align 8, !tbaa !34
  %106 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 2, i32 2
  %107 = load i32, ptr %106, align 4, !tbaa !298
  call void %105(i32 noundef %107, ptr noundef %104) #11
  br label %108

108:                                              ; preds = %97, %92
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret void
}

declare void @glTexCoord3fv(ptr noundef) local_unnamed_addr #2

declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

declare i32 @DM_release(ptr noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @mul_transposed_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @weight_to_rgb(ptr noundef, float noundef) local_unnamed_addr #2

declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

declare void @fill_vn_fl(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare void @BLI_jitter_init(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_bmbvh_new_from_editmesh(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @interp_v3_v3v3v3_uv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_bmbvh_ray_cast(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

declare void @mid_v3_v3v3v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_bmbvh_free(ptr noundef) local_unnamed_addr #2

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_bmbvh_find_face_segment(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BM_face_calc_normal_vcos(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_loop_calc_face_normal(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BM_edge_calc_face_angle_signed(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 0}
!39 = !{!"BMEditMesh", !35, i64 0, !35, i64 8, !40, i64 16, !35, i64 24, !40, i64 32, !35, i64 40, !35, i64 48, !41, i64 56, !35, i64 64, !40, i64 72, !35, i64 80, !40, i64 88, !42, i64 92, !42, i64 94, !35, i64 96, !40, i64 104}
!40 = !{!"int", !36, i64 0}
!41 = !{!"long", !36, i64 0}
!42 = !{!"short", !36, i64 0}
!43 = !{!44, !35, i64 1688}
!44 = !{!"EditDerivedBMesh", !45, i64 0, !35, i64 1688, !35, i64 1696, !35, i64 1704, !35, i64 1712, !35, i64 1720}
!45 = !{!"DerivedMesh", !46, i64 0, !46, i64 200, !46, i64 400, !46, i64 600, !46, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !35, i64 1032, !35, i64 1040, !40, i64 1048, !47, i64 1052, !40, i64 1056, !40, i64 1060, !35, i64 1064, !36, i64 1072, !35, i64 1080, !35, i64 1088, !35, i64 1096, !35, i64 1104, !35, i64 1112, !35, i64 1120, !35, i64 1128, !35, i64 1136, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !35, i64 1176, !35, i64 1184, !35, i64 1192, !35, i64 1200, !35, i64 1208, !35, i64 1216, !35, i64 1224, !35, i64 1232, !35, i64 1240, !35, i64 1248, !35, i64 1256, !35, i64 1264, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !35, i64 1304, !35, i64 1312, !35, i64 1320, !35, i64 1328, !35, i64 1336, !35, i64 1344, !35, i64 1352, !35, i64 1360, !35, i64 1368, !35, i64 1376, !35, i64 1384, !35, i64 1392, !35, i64 1400, !35, i64 1408, !35, i64 1416, !35, i64 1424, !35, i64 1432, !35, i64 1440, !35, i64 1448, !35, i64 1456, !35, i64 1464, !35, i64 1472, !35, i64 1480, !35, i64 1488, !35, i64 1496, !35, i64 1504, !35, i64 1512, !35, i64 1520, !35, i64 1528, !35, i64 1536, !35, i64 1544, !35, i64 1552, !35, i64 1560, !35, i64 1568, !35, i64 1576, !35, i64 1584, !35, i64 1592, !35, i64 1600, !35, i64 1608, !35, i64 1616, !35, i64 1624, !35, i64 1632, !35, i64 1640, !35, i64 1648, !35, i64 1656, !35, i64 1664, !35, i64 1672, !35, i64 1680}
!46 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!47 = !{!"float", !36, i64 0}
!48 = !{!49, !40, i64 0}
!49 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !40, i64 128, !35, i64 136, !46, i64 144, !46, i64 344, !46, i64 544, !46, i64 744, !42, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !50, i64 960, !35, i64 976, !50, i64 984, !35, i64 1000}
!50 = !{!"ListBase", !35, i64 0, !35, i64 8}
!51 = !{!49, !40, i64 4}
!52 = !{!39, !40, i64 32}
!53 = !{!49, !40, i64 8}
!54 = !{!49, !40, i64 12}
!55 = !{!44, !36, i64 1072}
!56 = !{!44, !35, i64 1536}
!57 = !{!44, !35, i64 1520}
!58 = !{!44, !35, i64 1360}
!59 = !{!44, !35, i64 1368}
!60 = !{!44, !35, i64 1376}
!61 = !{!44, !35, i64 1384}
!62 = !{!44, !35, i64 1392}
!63 = !{!44, !35, i64 1104}
!64 = !{!44, !35, i64 1112}
!65 = !{!44, !35, i64 1120}
!66 = !{!44, !35, i64 1128}
!67 = !{!44, !35, i64 1136}
!68 = !{!44, !35, i64 1144}
!69 = !{!44, !35, i64 1528}
!70 = !{!44, !35, i64 1544}
!71 = !{!44, !35, i64 1552}
!72 = !{!44, !35, i64 1152}
!73 = !{!44, !35, i64 1160}
!74 = !{!44, !35, i64 1208}
!75 = !{!44, !35, i64 1216}
!76 = !{!44, !35, i64 1224}
!77 = !{!44, !35, i64 1232}
!78 = !{!44, !35, i64 1240}
!79 = !{!44, !35, i64 1336}
!80 = !{!44, !35, i64 1080}
!81 = !{!44, !35, i64 1088}
!82 = !{!44, !35, i64 1096}
!83 = !{!44, !35, i64 1488}
!84 = !{!44, !35, i64 1504}
!85 = !{!44, !35, i64 1496}
!86 = !{!44, !35, i64 1512}
!87 = !{!44, !35, i64 1592}
!88 = !{!44, !35, i64 1656}
!89 = !{!44, !35, i64 1664}
!90 = !{!44, !35, i64 1632}
!91 = !{!44, !35, i64 1640}
!92 = !{!44, !35, i64 1648}
!93 = !{!44, !35, i64 1672}
!94 = !{!44, !35, i64 1616}
!95 = !{!44, !35, i64 1624}
!96 = !{!44, !35, i64 1584}
!97 = !{!44, !35, i64 1680}
!98 = !{!44, !35, i64 1696}
!99 = !{!44, !40, i64 1024}
!100 = !{!101, !36, i64 60}
!101 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !40, i64 56, !36, i64 60}
!102 = !{!101, !35, i64 40}
!103 = !{!101, !35, i64 48}
!104 = !{!49, !35, i64 32}
!105 = !{!36, !36, i64 0}
!106 = !{!107, !35, i64 0}
!107 = !{!"BMVert", !108, i64 0, !35, i64 16, !36, i64 24, !36, i64 36, !35, i64 48}
!108 = !{!"BMHeader", !35, i64 0, !40, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!109 = distinct !{!109, !110, !111}
!110 = !{!"llvm.loop.mustprogress"}
!111 = !{!"llvm.loop.unroll.disable"}
!112 = distinct !{!112, !110, !111}
!113 = !{!47, !47, i64 0}
!114 = distinct !{!114, !110, !111}
!115 = distinct !{!115, !110, !111}
!116 = distinct !{!116, !110, !111}
!117 = distinct !{!117, !110, !111}
!118 = !{!49, !35, i64 64}
!119 = !{!42, !42, i64 0}
!120 = !{!121, !36, i64 18}
!121 = !{!"MVert", !36, i64 0, !36, i64 12, !36, i64 18, !36, i64 19}
!122 = !{!121, !36, i64 19}
!123 = !{!44, !35, i64 1704}
!124 = !{!44, !35, i64 1712}
!125 = !{!49, !35, i64 80}
!126 = !{!49, !35, i64 72}
!127 = !{!128, !42, i64 10}
!128 = !{!"MEdge", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 9, !42, i64 10}
!129 = !{!130, !35, i64 24}
!130 = !{!"BMEdge", !108, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !131, i64 48, !131, i64 64}
!131 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!132 = !{!108, !40, i64 8}
!133 = !{!128, !40, i64 0}
!134 = !{!130, !35, i64 32}
!135 = !{!128, !40, i64 4}
!136 = !{!130, !35, i64 0}
!137 = !{!128, !36, i64 9}
!138 = !{!128, !36, i64 8}
!139 = !{!39, !35, i64 24}
!140 = !{!141, !35, i64 32}
!141 = !{!"BMLoop", !108, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!142 = !{!143, !42, i64 48}
!143 = !{!"BMFace", !108, i64 0, !35, i64 16, !35, i64 24, !40, i64 32, !36, i64 36, !42, i64 48}
!144 = !{!145, !42, i64 16}
!145 = !{!"MFace", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !42, i64 16, !36, i64 18, !36, i64 19}
!146 = !{!145, !36, i64 19}
!147 = !{!141, !35, i64 16}
!148 = !{!145, !40, i64 0}
!149 = !{!145, !40, i64 4}
!150 = !{!145, !40, i64 8}
!151 = !{!145, !40, i64 12}
!152 = distinct !{!152, !110, !111}
!153 = distinct !{!153, !110, !111}
!154 = !{!49, !35, i64 40}
!155 = distinct !{!155, !110, !111}
!156 = !{!145, !36, i64 18}
!157 = distinct !{!157, !110, !111}
!158 = !{!49, !35, i64 56}
!159 = !{!143, !35, i64 24}
!160 = !{!161, !40, i64 0}
!161 = !{!"MLoop", !40, i64 0, !40, i64 4}
!162 = !{!141, !35, i64 24}
!163 = !{!161, !40, i64 4}
!164 = !{!141, !35, i64 56}
!165 = distinct !{!165, !110, !111}
!166 = distinct !{!166, !110, !111}
!167 = !{!168, !36, i64 10}
!168 = !{!"MPoly", !40, i64 0, !40, i64 4, !42, i64 8, !36, i64 10, !36, i64 11}
!169 = !{!168, !40, i64 0}
!170 = !{!143, !40, i64 32}
!171 = !{!168, !40, i64 4}
!172 = !{!168, !42, i64 8}
!173 = distinct !{!173, !110, !111}
!174 = !{!45, !35, i64 400}
!175 = !{!176, !40, i64 8}
!176 = !{!"CustomDataLayer", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32, !35, i64 96}
!177 = !{!143, !35, i64 0}
!178 = !{!179, !35, i64 0}
!179 = !{!"MTexPoly", !35, i64 0, !36, i64 8, !36, i64 9, !42, i64 10, !42, i64 12, !42, i64 14}
!180 = !{!181, !35, i64 32}
!181 = !{!"MTFace", !36, i64 0, !35, i64 32, !36, i64 40, !36, i64 41, !42, i64 42, !42, i64 44, !42, i64 46}
!182 = !{!179, !36, i64 8}
!183 = !{!181, !36, i64 40}
!184 = !{!179, !36, i64 9}
!185 = !{!181, !36, i64 41}
!186 = !{!179, !42, i64 10}
!187 = !{!181, !42, i64 42}
!188 = !{!179, !42, i64 12}
!189 = !{!181, !42, i64 44}
!190 = !{!141, !35, i64 0}
!191 = distinct !{!191, !110, !111}
!192 = distinct !{!192, !110, !111}
!193 = !{!194, !36, i64 0}
!194 = !{!"MLoopCol", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3}
!195 = !{!196, !36, i64 3}
!196 = !{!"MCol", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3}
!197 = !{!194, !36, i64 1}
!198 = !{!196, !36, i64 2}
!199 = !{!194, !36, i64 2}
!200 = !{!196, !36, i64 1}
!201 = !{!194, !36, i64 3}
!202 = !{!196, !36, i64 0}
!203 = distinct !{!203, !110, !111}
!204 = distinct !{!204, !110, !111}
!205 = !{!45, !35, i64 1344}
!206 = distinct !{!206, !110, !111}
!207 = distinct !{!207, !110, !111}
!208 = !{!45, !40, i64 1056}
!209 = distinct !{!209, !110, !111}
!210 = distinct !{!210, !110, !111}
!211 = distinct !{!211, !110, !111}
!212 = distinct !{!212, !110, !111}
!213 = distinct !{!213, !110, !111}
!214 = distinct !{!214, !110, !111}
!215 = !{!44, !35, i64 1720}
!216 = distinct !{!216, !110, !111}
!217 = distinct !{!217, !110, !111}
!218 = distinct !{!218, !110, !111}
!219 = distinct !{!219, !110, !111}
!220 = distinct !{!220, !110, !111}
!221 = distinct !{!221, !110, !111}
!222 = distinct !{!222, !110, !111}
!223 = distinct !{!223, !110, !111}
!224 = !{!39, !35, i64 64}
!225 = !{!39, !35, i64 80}
!226 = !{!108, !36, i64 13}
!227 = distinct !{!227, !110, !111}
!228 = distinct !{!228, !110, !111}
!229 = distinct !{!229, !110, !111}
!230 = distinct !{!230, !110, !111}
!231 = distinct !{!231, !110, !111}
!232 = distinct !{!232, !110, !111}
!233 = distinct !{!233, !110, !111}
!234 = distinct !{!234, !110, !111}
!235 = distinct !{!235, !110, !111}
!236 = distinct !{!236, !110, !111}
!237 = distinct !{!237, !110, !111}
!238 = distinct !{!238, !110, !111}
!239 = !{!45, !35, i64 1648}
!240 = !{!141, !35, i64 64}
!241 = distinct !{!241, !110, !111}
!242 = distinct !{!242, !110, !111}
!243 = !{!244, !36, i64 0}
!244 = !{!"MeshStatVis", !36, i64 0, !36, i64 1, !36, i64 3, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !36, i64 20, !36, i64 21, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36}
!245 = !{!244, !47, i64 4}
!246 = !{!244, !47, i64 8}
!247 = !{!244, !36, i64 3}
!248 = !{!39, !35, i64 96}
!249 = distinct !{!249, !110, !111}
!250 = !{!244, !47, i64 12}
!251 = !{!244, !47, i64 16}
!252 = !{!244, !36, i64 20}
!253 = distinct !{!253, !110, !111}
!254 = distinct !{!254, !110, !111}
!255 = distinct !{!255, !110, !111}
!256 = distinct !{!256, !110, !111}
!257 = !{!130, !35, i64 40}
!258 = !{!141, !35, i64 40}
!259 = distinct !{!259, !110, !111}
!260 = distinct !{!260, !110, !111}
!261 = !{!244, !47, i64 24}
!262 = !{!244, !47, i64 28}
!263 = distinct !{!263, !110, !111}
!264 = distinct !{!264, !110, !111}
!265 = !{!244, !47, i64 32}
!266 = !{!244, !47, i64 36}
!267 = distinct !{!267, !110, !111}
!268 = distinct !{!268, !110, !111}
!269 = distinct !{!269, !110, !111}
!270 = !{!49, !36, i64 28}
!271 = !{!41, !41, i64 0}
!272 = !{!273, !40, i64 0}
!273 = !{!"CageUserData", !40, i64 0, !35, i64 8, !35, i64 16}
!274 = !{!273, !35, i64 8}
!275 = !{!273, !35, i64 16}
!276 = !{!45, !35, i64 1488}
!277 = !{!40, !40, i64 0}
!278 = distinct !{!278, !110, !111}
!279 = distinct !{!279, !110, !111}
!280 = !{!281, !40, i64 372}
!281 = !{!"DMVertexAttribs", !36, i64 0, !36, i64 192, !282, i64 320, !283, i64 336, !40, i64 360, !40, i64 364, !40, i64 368, !40, i64 372}
!282 = !{!"", !35, i64 0, !40, i64 8, !40, i64 12}
!283 = !{!"", !35, i64 0, !40, i64 8, !40, i64 12, !40, i64 16}
!284 = !{!281, !35, i64 336}
!285 = !{!281, !40, i64 352}
!286 = !{!281, !40, i64 348}
!287 = !{!281, !40, i64 360}
!288 = !{!281, !40, i64 364}
!289 = !{!283, !40, i64 8}
!290 = !{!283, !40, i64 16}
!291 = !{!283, !40, i64 12}
!292 = distinct !{!292, !110, !111}
!293 = !{!282, !40, i64 8}
!294 = !{!282, !40, i64 12}
!295 = distinct !{!295, !110, !111}
!296 = !{!281, !40, i64 368}
!297 = !{!281, !35, i64 320}
!298 = !{!281, !40, i64 332}
