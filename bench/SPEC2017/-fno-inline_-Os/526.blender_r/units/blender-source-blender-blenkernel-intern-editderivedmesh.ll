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
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MLoop = type { i32, i32 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.MTexPoly = type { ptr, i8, i8, i16, i16, i16 }
%struct.MCol = type { i8, i8, i8, i8 }
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
%struct.MLoopCol = type { i8, i8, i8, i8 }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @getEditDerivedBMesh(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %7 = tail call ptr %6(i64 noundef 1728, ptr noundef nonnull @__func__.getEditDerivedBMesh) #14
  %8 = load ptr, ptr %0, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 24
  %10 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %9, i32 noundef 2) #14
  %11 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %9, i32 noundef 36) #14
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
  tail call void @DM_init(ptr noundef %7, i32 noundef 1, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #14
  %22 = tail call zeroext i8 @BM_mesh_cd_flag_from_bmesh(ptr noundef nonnull %8) #14
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
  br i1 %70, label %85, label %71

71:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  tail call void @DM_add_vert_layer(ptr noundef nonnull %7, i32 noundef 2, i32 noundef 1, ptr noundef null) #14
  %72 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %8, i8 noundef zeroext 1) #16
  %73 = icmp eq ptr %72, null
  br i1 %73, label %84, label %74

74:                                               ; preds = %71
  %75 = sext i32 %10 to i64
  br label %76

76:                                               ; preds = %74, %76
  %77 = phi i32 [ 0, %74 ], [ %82, %76 ]
  %78 = phi ptr [ %72, %74 ], [ %81, %76 ]
  %79 = load ptr, ptr %78, align 8, !tbaa !100
  %80 = getelementptr inbounds i8, ptr %79, i64 %75
  call void @DM_set_vert_data(ptr noundef %7, i32 noundef %77, i32 noundef 2, ptr noundef %80) #14
  %81 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #16
  %82 = add nuw nsw i32 %77, 1
  %83 = icmp eq ptr %81, null
  br i1 %83, label %84, label %76, !llvm.loop !103

84:                                               ; preds = %76, %71
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  br label %85

85:                                               ; preds = %84, %3
  %86 = icmp eq i32 %11, -1
  br i1 %86, label %101, label %87

87:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  call void @DM_add_vert_layer(ptr noundef %7, i32 noundef 36, i32 noundef 1, ptr noundef null) #14
  %88 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef nonnull %8, i8 noundef zeroext 1) #16
  %89 = icmp eq ptr %88, null
  br i1 %89, label %100, label %90

90:                                               ; preds = %87
  %91 = sext i32 %11 to i64
  br label %92

92:                                               ; preds = %90, %92
  %93 = phi i32 [ 0, %90 ], [ %98, %92 ]
  %94 = phi ptr [ %88, %90 ], [ %97, %92 ]
  %95 = load ptr, ptr %94, align 8, !tbaa !100
  %96 = getelementptr inbounds i8, ptr %95, i64 %91
  call void @DM_set_vert_data(ptr noundef %7, i32 noundef %93, i32 noundef 36, ptr noundef %96) #14
  %97 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #16
  %98 = add nuw nsw i32 %93, 1
  %99 = icmp eq ptr %97, null
  br i1 %99, label %100, label %92, !llvm.loop !105

100:                                              ; preds = %92, %87
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  br label %101

101:                                              ; preds = %100, %85
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BM_mesh_cd_flag_from_bmesh(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_getVertCos(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 !PGOFuncName !106 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  %7 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !98
  %9 = icmp eq ptr %8, null
  %10 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %6, i8 noundef zeroext 1) #16
  %11 = icmp eq ptr %10, null
  br i1 %9, label %21, label %12

12:                                               ; preds = %2
  br i1 %11, label %30, label %13

13:                                               ; preds = %12, %13
  %14 = phi i64 [ %19, %13 ], [ 0, %12 ]
  %15 = getelementptr inbounds [3 x float], ptr %1, i64 %14
  %16 = load ptr, ptr %7, align 8, !tbaa !98
  %17 = getelementptr inbounds [3 x float], ptr %16, i64 %14
  call fastcc void @copy_v3_v3(ptr noundef %15, ptr noundef %17) #16
  %18 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #16
  %19 = add nuw i64 %14, 1
  %20 = icmp eq ptr %18, null
  br i1 %20, label %30, label %13, !llvm.loop !107

21:                                               ; preds = %2
  br i1 %11, label %30, label %22

22:                                               ; preds = %21, %22
  %23 = phi i64 [ %28, %22 ], [ 0, %21 ]
  %24 = phi ptr [ %27, %22 ], [ %10, %21 ]
  %25 = getelementptr inbounds [3 x float], ptr %1, i64 %23
  %26 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef %25, ptr noundef nonnull %26) #16
  %27 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #16
  %28 = add nuw i64 %23, 1
  %29 = icmp eq ptr %27, null
  br i1 %29, label %30, label %22, !llvm.loop !108

30:                                               ; preds = %13, %22, %12, %21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_getMinMax(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !109 {
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %8 = load i32, ptr %7, align 8, !tbaa !48
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !98
  %13 = icmp eq ptr %12, null
  %14 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %7, i8 noundef zeroext 1) #16
  %15 = icmp eq ptr %14, null
  br i1 %13, label %24, label %16

16:                                               ; preds = %10
  br i1 %15, label %31, label %17

17:                                               ; preds = %16, %17
  %18 = phi i64 [ %22, %17 ], [ 0, %16 ]
  %19 = load ptr, ptr %11, align 8, !tbaa !98
  %20 = getelementptr inbounds [3 x float], ptr %19, i64 %18
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef %20) #14
  %21 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #16
  %22 = add nuw i64 %18, 1
  %23 = icmp eq ptr %21, null
  br i1 %23, label %31, label %17, !llvm.loop !110

24:                                               ; preds = %10
  br i1 %15, label %31, label %25

25:                                               ; preds = %24, %25
  %26 = phi ptr [ %28, %25 ], [ %14, %24 ]
  %27 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 2
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %27) #14
  %28 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %25, !llvm.loop !111

30:                                               ; preds = %3
  tail call fastcc void @zero_v3(ptr noundef %1) #16
  tail call fastcc void @zero_v3(ptr noundef %2) #16
  br label %31

31:                                               ; preds = %17, %25, %16, %24, %30
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal nonnull ptr @bmDm_getVertDataLayout(ptr nocapture noundef readonly %0) #3 !PGOFuncName !112 {
  %2 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 24
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal nonnull ptr @bmDm_getEdgeDataLayout(ptr nocapture noundef readonly %0) #3 !PGOFuncName !113 {
  %2 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 25
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal nonnull ptr @bmDm_getTessFaceDataLayout(ptr noundef readnone %0) #4 !PGOFuncName !114 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal nonnull ptr @bmDm_getLoopDataLayout(ptr nocapture noundef readonly %0) #3 !PGOFuncName !115 {
  %2 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 26
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal nonnull ptr @bmDm_getPolyDataLayout(ptr nocapture noundef readonly %0) #3 !PGOFuncName !116 {
  %2 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 27
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @emDM_getNumVerts(ptr nocapture noundef readonly %0) #3 !PGOFuncName !117 {
  %2 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = load i32, ptr %4, align 8, !tbaa !48
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @emDM_getNumEdges(ptr nocapture noundef readonly %0) #3 !PGOFuncName !118 {
  %2 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !51
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @emDM_getNumTessFaces(ptr nocapture noundef readonly %0) #3 !PGOFuncName !119 {
  %2 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.BMEditMesh, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !52
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @emDM_getNumLoops(ptr nocapture noundef readonly %0) #3 !PGOFuncName !120 {
  %2 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !53
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @emDM_getNumPolys(ptr nocapture noundef readonly %0) #3 !PGOFuncName !121 {
  %2 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !54
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_getVert(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 !PGOFuncName !122 {
  %4 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp slt i32 %1, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8, !tbaa !48
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !123
  %14 = zext nneg i32 %1 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  tail call fastcc void @bmvert_to_mvert(ptr noundef nonnull %6, ptr noundef %16, ptr noundef %2) #16
  %17 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !98
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds [3 x float], ptr %18, i64 %14
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %21) #16
  br label %22

22:                                               ; preds = %11, %20, %3, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @emDM_getVertCo(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #5 !PGOFuncName !124 {
  %4 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp slt i32 %1, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8, !tbaa !48
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = zext nneg i32 %1 to i64
  %17 = getelementptr inbounds [3 x float], ptr %13, i64 %16
  br label %25

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 13
  %20 = load ptr, ptr %19, align 8, !tbaa !123
  %21 = zext nneg i32 %1 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.BMVert, ptr %23, i64 0, i32 2
  br label %25

25:                                               ; preds = %18, %15
  %26 = phi ptr [ %17, %15 ], [ %24, %18 ]
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %26) #16
  br label %27

27:                                               ; preds = %25, %3, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_getVertNo(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 !PGOFuncName !125 {
  %4 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp slt i32 %1, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8, !tbaa !48
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  tail call fastcc void @emDM_ensureVertNormals(ptr noundef nonnull %0) #16
  %16 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !126
  %18 = zext nneg i32 %1 to i64
  %19 = getelementptr inbounds [3 x float], ptr %17, i64 %18
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef %19) #16
  br label %27

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 13
  %22 = load ptr, ptr %21, align 8, !tbaa !123
  %23 = zext nneg i32 %1 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.BMVert, ptr %25, i64 0, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %26) #16
  br label %27

27:                                               ; preds = %15, %20, %3, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_getPolyNo(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 !PGOFuncName !127 {
  %4 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp slt i32 %1, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !54
  %11 = icmp sgt i32 %10, %1
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  tail call fastcc void @emDM_ensurePolyNormals(ptr noundef nonnull %0) #16
  %17 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !128
  %19 = zext nneg i32 %1 to i64
  %20 = getelementptr inbounds [3 x float], ptr %18, i64 %19
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef %20) #16
  br label %28

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 15
  %23 = load ptr, ptr %22, align 8, !tbaa !129
  %24 = zext nneg i32 %1 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.BMFace, ptr %26, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %27) #16
  br label %28

28:                                               ; preds = %16, %21, %3, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_getEdge(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 !PGOFuncName !130 {
  %4 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp slt i32 %1, 0
  br i1 %7, label %45, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !51
  %11 = icmp sgt i32 %10, %1
  br i1 %11, label %12, label %45

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !131
  %15 = zext nneg i32 %1 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = tail call signext i16 @BM_edge_flag_to_mflag(ptr noundef %17) #14
  %19 = getelementptr inbounds %struct.MEdge, ptr %2, i64 0, i32 4
  store i16 %18, ptr %19, align 2, !tbaa !132
  %20 = getelementptr inbounds %struct.BMEdge, ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !134
  %22 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %21) #16
  store i32 %22, ptr %2, align 4, !tbaa !137
  %23 = getelementptr inbounds %struct.BMEdge, ptr %17, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !138
  %25 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %24) #16
  %26 = getelementptr inbounds %struct.MEdge, ptr %2, i64 0, i32 1
  store i32 %25, ptr %26, align 4, !tbaa !139
  %27 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 25
  %28 = load ptr, ptr %17, align 8, !tbaa !140
  %29 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %27, ptr noundef %28, i32 noundef 29) #14
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %12
  %32 = load float, ptr %29, align 4, !tbaa !141
  %33 = fmul float %32, 2.550000e+02
  %34 = fptoui float %33 to i8
  %35 = getelementptr inbounds %struct.MEdge, ptr %2, i64 0, i32 3
  store i8 %34, ptr %35, align 1, !tbaa !142
  br label %36

36:                                               ; preds = %31, %12
  %37 = load ptr, ptr %17, align 8, !tbaa !140
  %38 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %27, ptr noundef %37, i32 noundef 30) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load float, ptr %38, align 4, !tbaa !141
  %42 = fmul float %41, 2.550000e+02
  %43 = fptoui float %42 to i8
  %44 = getelementptr inbounds %struct.MEdge, ptr %2, i64 0, i32 2
  store i8 %43, ptr %44, align 4, !tbaa !143
  br label %45

45:                                               ; preds = %36, %40, %3, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_getTessFace(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 !PGOFuncName !144 {
  %4 = icmp slt i32 %1, 0
  br i1 %4, label %43, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.BMEditMesh, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !52
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %11, label %43

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.BMEditMesh, ptr %7, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !145
  %14 = zext nneg i32 %1 to i64
  %15 = getelementptr inbounds [3 x ptr], ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !146
  %19 = getelementptr inbounds %struct.BMFace, ptr %18, i64 0, i32 5
  %20 = load i16, ptr %19, align 8, !tbaa !148
  %21 = and i16 %20, 255
  %22 = getelementptr inbounds %struct.MFace, ptr %2, i64 0, i32 4
  store i16 %21, ptr %22, align 4, !tbaa !150
  %23 = tail call zeroext i8 @BM_face_flag_to_mflag(ptr noundef %18) #14
  %24 = getelementptr inbounds %struct.MFace, ptr %2, i64 0, i32 6
  store i8 %23, ptr %24, align 1, !tbaa !152
  %25 = load ptr, ptr %15, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !153
  %28 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %27) #16
  store i32 %28, ptr %2, align 4, !tbaa !154
  %29 = getelementptr inbounds ptr, ptr %15, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !153
  %33 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %32) #16
  %34 = getelementptr inbounds %struct.MFace, ptr %2, i64 0, i32 1
  store i32 %33, ptr %34, align 4, !tbaa !155
  %35 = getelementptr inbounds ptr, ptr %15, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !153
  %39 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %38) #16
  %40 = getelementptr inbounds %struct.MFace, ptr %2, i64 0, i32 2
  store i32 %39, ptr %40, align 4, !tbaa !156
  %41 = getelementptr inbounds %struct.MFace, ptr %2, i64 0, i32 3
  store i32 0, ptr %41, align 4, !tbaa !157
  %42 = tail call i32 @test_index_face(ptr noundef nonnull %2, ptr noundef null, i32 noundef 0, i32 noundef 3) #14
  br label %43

43:                                               ; preds = %3, %5, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_copyVertArray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 !PGOFuncName !158 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  %7 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 24
  %8 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %7, i32 noundef 29) #14
  %9 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = icmp eq ptr %10, null
  %12 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %6, i8 noundef zeroext 1) #16
  %13 = icmp eq ptr %12, null
  br i1 %11, label %41, label %14

14:                                               ; preds = %2
  br i1 %13, label %65, label %15

15:                                               ; preds = %14
  %16 = icmp eq i32 %8, -1
  %17 = sext i32 %8 to i64
  br label %18

18:                                               ; preds = %15, %34
  %19 = phi i64 [ 0, %15 ], [ %39, %34 ]
  %20 = phi ptr [ %1, %15 ], [ %37, %34 ]
  %21 = phi ptr [ %12, %15 ], [ %38, %34 ]
  %22 = load ptr, ptr %9, align 8, !tbaa !98
  %23 = getelementptr inbounds [3 x float], ptr %22, i64 %19
  call fastcc void @copy_v3_v3(ptr noundef %20, ptr noundef %23) #16
  %24 = getelementptr inbounds %struct.MVert, ptr %20, i64 0, i32 1
  %25 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 3
  call fastcc void @normal_float_to_short_v3(ptr noundef nonnull %24, ptr noundef nonnull %25) #16
  %26 = call zeroext i8 @BM_vert_flag_to_mflag(ptr noundef nonnull %21) #14
  %27 = getelementptr inbounds %struct.MVert, ptr %20, i64 0, i32 2
  store i8 %26, ptr %27, align 2, !tbaa !159
  br i1 %16, label %34, label %28

28:                                               ; preds = %18
  %29 = load ptr, ptr %21, align 8, !tbaa !100
  %30 = getelementptr inbounds i8, ptr %29, i64 %17
  %31 = load float, ptr %30, align 4, !tbaa !141
  %32 = fmul float %31, 2.550000e+02
  %33 = fptoui float %32 to i8
  br label %34

34:                                               ; preds = %18, %28
  %35 = phi i8 [ %33, %28 ], [ 0, %18 ]
  %36 = getelementptr inbounds %struct.MVert, ptr %20, i64 0, i32 3
  store i8 %35, ptr %36, align 1, !tbaa !161
  %37 = getelementptr inbounds %struct.MVert, ptr %20, i64 1
  %38 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #16
  %39 = add nuw i64 %19, 1
  %40 = icmp eq ptr %38, null
  br i1 %40, label %65, label %18, !llvm.loop !162

41:                                               ; preds = %2
  br i1 %13, label %65, label %42

42:                                               ; preds = %41
  %43 = icmp eq i32 %8, -1
  %44 = sext i32 %8 to i64
  br label %45

45:                                               ; preds = %42, %59
  %46 = phi ptr [ %1, %42 ], [ %62, %59 ]
  %47 = phi ptr [ %12, %42 ], [ %63, %59 ]
  %48 = getelementptr inbounds %struct.BMVert, ptr %47, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef %46, ptr noundef nonnull %48) #16
  %49 = getelementptr inbounds %struct.MVert, ptr %46, i64 0, i32 1
  %50 = getelementptr inbounds %struct.BMVert, ptr %47, i64 0, i32 3
  call fastcc void @normal_float_to_short_v3(ptr noundef nonnull %49, ptr noundef nonnull %50) #16
  %51 = call zeroext i8 @BM_vert_flag_to_mflag(ptr noundef nonnull %47) #14
  %52 = getelementptr inbounds %struct.MVert, ptr %46, i64 0, i32 2
  store i8 %51, ptr %52, align 2, !tbaa !159
  br i1 %43, label %59, label %53

53:                                               ; preds = %45
  %54 = load ptr, ptr %47, align 8, !tbaa !100
  %55 = getelementptr inbounds i8, ptr %54, i64 %44
  %56 = load float, ptr %55, align 4, !tbaa !141
  %57 = fmul float %56, 2.550000e+02
  %58 = fptoui float %57 to i8
  br label %59

59:                                               ; preds = %45, %53
  %60 = phi i8 [ %58, %53 ], [ 0, %45 ]
  %61 = getelementptr inbounds %struct.MVert, ptr %46, i64 0, i32 3
  store i8 %60, ptr %61, align 1, !tbaa !161
  %62 = getelementptr inbounds %struct.MVert, ptr %46, i64 1
  %63 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #16
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %45, !llvm.loop !163

65:                                               ; preds = %34, %59, %14, %41
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_copyEdgeArray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 !PGOFuncName !164 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  %7 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 25
  %8 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %7, i32 noundef 29) #14
  %9 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %7, i32 noundef 30) #14
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %6, i8 noundef zeroext 1) #14
  %10 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %6, i8 noundef zeroext 2) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %50, label %12

12:                                               ; preds = %2
  %13 = icmp eq i32 %9, -1
  %14 = sext i32 %9 to i64
  %15 = icmp eq i32 %8, -1
  %16 = sext i32 %8 to i64
  br label %17

17:                                               ; preds = %12, %44
  %18 = phi ptr [ %1, %12 ], [ %47, %44 ]
  %19 = phi ptr [ %10, %12 ], [ %48, %44 ]
  %20 = getelementptr inbounds %struct.BMEdge, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !134
  %22 = call fastcc i32 @_bm_elem_index_get(ptr noundef %21) #16
  store i32 %22, ptr %18, align 4, !tbaa !137
  %23 = getelementptr inbounds %struct.BMEdge, ptr %19, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !138
  %25 = call fastcc i32 @_bm_elem_index_get(ptr noundef %24) #16
  %26 = getelementptr inbounds %struct.MEdge, ptr %18, i64 0, i32 1
  store i32 %25, ptr %26, align 4, !tbaa !139
  %27 = call signext i16 @BM_edge_flag_to_mflag(ptr noundef nonnull %19) #14
  %28 = getelementptr inbounds %struct.MEdge, ptr %18, i64 0, i32 4
  store i16 %27, ptr %28, align 2, !tbaa !132
  br i1 %13, label %35, label %29

29:                                               ; preds = %17
  %30 = load ptr, ptr %19, align 8, !tbaa !140
  %31 = getelementptr inbounds i8, ptr %30, i64 %14
  %32 = load float, ptr %31, align 4, !tbaa !141
  %33 = fmul float %32, 2.550000e+02
  %34 = fptoui float %33 to i8
  br label %35

35:                                               ; preds = %17, %29
  %36 = phi i8 [ %34, %29 ], [ 0, %17 ]
  %37 = getelementptr inbounds %struct.MEdge, ptr %18, i64 0, i32 2
  store i8 %36, ptr %37, align 4, !tbaa !143
  br i1 %15, label %44, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %19, align 8, !tbaa !140
  %40 = getelementptr inbounds i8, ptr %39, i64 %16
  %41 = load float, ptr %40, align 4, !tbaa !141
  %42 = fmul float %41, 2.550000e+02
  %43 = fptoui float %42 to i8
  br label %44

44:                                               ; preds = %35, %38
  %45 = phi i8 [ %43, %38 ], [ 0, %35 ]
  %46 = getelementptr inbounds %struct.MEdge, ptr %18, i64 0, i32 3
  store i8 %45, ptr %46, align 1, !tbaa !142
  %47 = getelementptr inbounds %struct.MEdge, ptr %18, i64 1
  %48 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #16
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %17, !llvm.loop !165

50:                                               ; preds = %44, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_copyTessFaceArray(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !166 {
  %3 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.BMEditMesh, ptr %4, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !145
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %5, i8 noundef zeroext 1) #14
  %8 = load ptr, ptr %3, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.BMEditMesh, ptr %8, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !52
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %2, %12
  %13 = phi i64 [ %44, %12 ], [ 0, %2 ]
  %14 = phi ptr [ %45, %12 ], [ %1, %2 ]
  %15 = getelementptr inbounds [3 x ptr], ptr %7, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !146
  %19 = getelementptr inbounds %struct.BMFace, ptr %18, i64 0, i32 5
  %20 = load i16, ptr %19, align 8, !tbaa !148
  %21 = and i16 %20, 255
  %22 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 4
  store i16 %21, ptr %22, align 4, !tbaa !150
  %23 = tail call zeroext i8 @BM_face_flag_to_mflag(ptr noundef %18) #14
  %24 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 6
  store i8 %23, ptr %24, align 1, !tbaa !152
  %25 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 5
  store i8 0, ptr %25, align 2, !tbaa !167
  %26 = load ptr, ptr %15, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !153
  %29 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %28) #16
  store i32 %29, ptr %14, align 4, !tbaa !154
  %30 = getelementptr inbounds ptr, ptr %15, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !153
  %34 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %33) #16
  %35 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 1
  store i32 %34, ptr %35, align 4, !tbaa !155
  %36 = getelementptr inbounds ptr, ptr %15, i64 2
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = getelementptr inbounds %struct.BMLoop, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !153
  %40 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %39) #16
  %41 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 2
  store i32 %40, ptr %41, align 4, !tbaa !156
  %42 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 3
  store i32 0, ptr %42, align 4, !tbaa !157
  %43 = tail call i32 @test_index_face(ptr noundef nonnull %14, ptr noundef null, i32 noundef 0, i32 noundef 3) #14
  %44 = add nuw nsw i64 %13, 1
  %45 = getelementptr inbounds %struct.MFace, ptr %14, i64 1
  %46 = load ptr, ptr %3, align 8, !tbaa !43
  %47 = getelementptr inbounds %struct.BMEditMesh, ptr %46, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !52
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %44, %49
  br i1 %50, label %12, label %51, !llvm.loop !168

51:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_copyLoopArray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 !PGOFuncName !169 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %6, i8 noundef zeroext 3) #14
  %7 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %6, i8 noundef zeroext 3) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %31, label %9

9:                                                ; preds = %2, %28
  %10 = phi ptr [ %24, %28 ], [ %1, %2 ]
  %11 = phi ptr [ %29, %28 ], [ %7, %2 ]
  %12 = getelementptr inbounds %struct.BMFace, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !170
  br label %14

14:                                               ; preds = %14, %9
  %15 = phi ptr [ %13, %9 ], [ %26, %14 ]
  %16 = phi ptr [ %10, %9 ], [ %24, %14 ]
  %17 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !153
  %19 = call fastcc i32 @_bm_elem_index_get(ptr noundef %18) #16
  store i32 %19, ptr %16, align 4, !tbaa !171
  %20 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !173
  %22 = call fastcc i32 @_bm_elem_index_get(ptr noundef %21) #16
  %23 = getelementptr inbounds %struct.MLoop, ptr %16, i64 0, i32 1
  store i32 %22, ptr %23, align 4, !tbaa !174
  %24 = getelementptr inbounds %struct.MLoop, ptr %16, i64 1
  %25 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !175
  %27 = icmp eq ptr %26, %13
  br i1 %27, label %28, label %14, !llvm.loop !176

28:                                               ; preds = %14
  %29 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #16
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %9, !llvm.loop !177

31:                                               ; preds = %28, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_copyPolyArray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 !PGOFuncName !178 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  %7 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %6, i8 noundef zeroext 3) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %2, %9
  %10 = phi i32 [ %22, %9 ], [ 0, %2 ]
  %11 = phi ptr [ %23, %9 ], [ %7, %2 ]
  %12 = phi ptr [ %21, %9 ], [ %1, %2 ]
  %13 = call zeroext i8 @BM_face_flag_to_mflag(ptr noundef nonnull %11) #14
  %14 = getelementptr inbounds %struct.MPoly, ptr %12, i64 0, i32 3
  store i8 %13, ptr %14, align 2, !tbaa !179
  store i32 %10, ptr %12, align 4, !tbaa !181
  %15 = getelementptr inbounds %struct.BMFace, ptr %11, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !182
  %17 = getelementptr inbounds %struct.MPoly, ptr %12, i64 0, i32 1
  store i32 %16, ptr %17, align 4, !tbaa !183
  %18 = getelementptr inbounds %struct.BMFace, ptr %11, i64 0, i32 5
  %19 = load i16, ptr %18, align 8, !tbaa !148
  %20 = getelementptr inbounds %struct.MPoly, ptr %12, i64 0, i32 2
  store i16 %19, ptr %20, align 4, !tbaa !184
  %21 = getelementptr inbounds %struct.MPoly, ptr %12, i64 1
  %22 = add nsw i32 %16, %10
  %23 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %9, !llvm.loop !185

25:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @emDM_getTessFaceDataArray(ptr noundef %0, i32 noundef %1) #0 !PGOFuncName !186 {
  %3 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %0, i32 noundef %1) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %153

8:                                                ; preds = %2
  %9 = icmp eq i32 %1, 5
  %10 = add i32 %1, -5
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %107

12:                                               ; preds = %8
  %13 = select i1 %9, i32 15, i32 17
  %14 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 27
  %15 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %14, i32 noundef %13) #14
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %153, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %3, align 8, !tbaa !43
  %19 = getelementptr inbounds %struct.BMEditMesh, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !145
  %21 = tail call i32 @CustomData_sizeof(i32 noundef %1) #14
  tail call void @DM_add_tessface_layer(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 1, ptr noundef null) #14
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %23 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %22, i32 noundef %1) #14
  %24 = load ptr, ptr %22, align 8, !tbaa !187
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds %struct.CustomDataLayer, ptr %24, i64 %25, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !188
  %28 = or i32 %27, 5
  store i32 %28, ptr %26, align 8, !tbaa !188
  %29 = tail call ptr @DM_get_tessface_data_layer(ptr noundef nonnull %0, i32 noundef %1) #14
  %30 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 26
  br i1 %9, label %31, label %79

31:                                               ; preds = %17
  %32 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %30, i32 noundef 16) #14
  %33 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %14, i32 noundef 15) #14
  %34 = load ptr, ptr %3, align 8, !tbaa !43
  %35 = getelementptr inbounds %struct.BMEditMesh, ptr %34, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !52
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %153

38:                                               ; preds = %31
  %39 = sext i32 %33 to i64
  %40 = sext i32 %32 to i64
  %41 = sext i32 %21 to i64
  br label %42

42:                                               ; preds = %38, %71
  %43 = phi i64 [ 0, %38 ], [ %72, %71 ]
  %44 = phi ptr [ %29, %38 ], [ %73, %71 ]
  %45 = getelementptr inbounds [3 x ptr], ptr %20, i64 %43
  %46 = load ptr, ptr %45, align 8, !tbaa !34
  %47 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !146
  %49 = load ptr, ptr %48, align 8, !tbaa !190
  %50 = getelementptr inbounds i8, ptr %49, i64 %39
  %51 = load ptr, ptr %50, align 8, !tbaa !191
  %52 = getelementptr inbounds %struct.MTFace, ptr %44, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !193
  %53 = getelementptr inbounds %struct.MTexPoly, ptr %50, i64 0, i32 1
  %54 = load i8, ptr %53, align 8, !tbaa !195
  %55 = getelementptr inbounds %struct.MTFace, ptr %44, i64 0, i32 2
  store i8 %54, ptr %55, align 8, !tbaa !196
  %56 = getelementptr inbounds %struct.MTexPoly, ptr %50, i64 0, i32 2
  %57 = load i8, ptr %56, align 1, !tbaa !197
  %58 = getelementptr inbounds %struct.MTFace, ptr %44, i64 0, i32 3
  store i8 %57, ptr %58, align 1, !tbaa !198
  %59 = getelementptr inbounds %struct.MTexPoly, ptr %50, i64 0, i32 3
  %60 = getelementptr inbounds %struct.MTFace, ptr %44, i64 0, i32 4
  %61 = load <2 x i16>, ptr %59, align 2, !tbaa !199
  store <2 x i16> %61, ptr %60, align 2, !tbaa !199
  br label %62

62:                                               ; preds = %42, %62
  %63 = phi i64 [ 0, %42 ], [ %69, %62 ]
  %64 = getelementptr inbounds [3 x ptr], ptr %20, i64 %43, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !34
  %66 = load ptr, ptr %65, align 8, !tbaa !200
  %67 = getelementptr inbounds i8, ptr %66, i64 %40
  %68 = getelementptr inbounds [4 x [2 x float]], ptr %44, i64 0, i64 %63
  tail call fastcc void @copy_v2_v2(ptr noundef %68, ptr noundef %67) #16
  %69 = add nuw nsw i64 %63, 1
  %70 = icmp eq i64 %69, 3
  br i1 %70, label %71, label %62, !llvm.loop !201

71:                                               ; preds = %62
  %72 = add nuw nsw i64 %43, 1
  %73 = getelementptr inbounds i8, ptr %44, i64 %41
  %74 = load ptr, ptr %3, align 8, !tbaa !43
  %75 = getelementptr inbounds %struct.BMEditMesh, ptr %74, i64 0, i32 4
  %76 = load i32, ptr %75, align 8, !tbaa !52
  %77 = sext i32 %76 to i64
  %78 = icmp slt i64 %72, %77
  br i1 %78, label %42, label %107, !llvm.loop !202

79:                                               ; preds = %17
  %80 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %30, i32 noundef 17) #14
  %81 = load ptr, ptr %3, align 8, !tbaa !43
  %82 = getelementptr inbounds %struct.BMEditMesh, ptr %81, i64 0, i32 4
  %83 = load i32, ptr %82, align 8, !tbaa !52
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %153

85:                                               ; preds = %79
  %86 = sext i32 %80 to i64
  %87 = sext i32 %21 to i64
  %88 = zext nneg i32 %83 to i64
  br label %89

89:                                               ; preds = %85, %103
  %90 = phi i64 [ 0, %85 ], [ %104, %103 ]
  %91 = phi ptr [ %29, %85 ], [ %105, %103 ]
  br label %92

92:                                               ; preds = %89, %92
  %93 = phi i64 [ 0, %89 ], [ %101, %92 ]
  %94 = getelementptr inbounds [3 x ptr], ptr %20, i64 %90, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !34
  %96 = load ptr, ptr %95, align 8, !tbaa !200
  %97 = getelementptr inbounds i8, ptr %96, i64 %86
  %98 = getelementptr inbounds %struct.MCol, ptr %91, i64 %93
  %99 = load <4 x i8>, ptr %97, align 1, !tbaa !203
  %100 = shufflevector <4 x i8> %99, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %100, ptr %98, align 1, !tbaa !203
  %101 = add nuw nsw i64 %93, 1
  %102 = icmp eq i64 %101, 3
  br i1 %102, label %103, label %92, !llvm.loop !204

103:                                              ; preds = %92
  %104 = add nuw nsw i64 %90, 1
  %105 = getelementptr inbounds i8, ptr %91, i64 %87
  %106 = icmp eq i64 %104, %88
  br i1 %106, label %107, label %89, !llvm.loop !205

107:                                              ; preds = %103, %71, %8
  %108 = phi ptr [ null, %8 ], [ %29, %71 ], [ %29, %103 ]
  %109 = icmp eq i32 %1, 40
  br i1 %109, label %110, label %153

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 53
  %112 = load ptr, ptr %111, align 8, !tbaa !206
  %113 = tail call ptr %112(ptr noundef nonnull %0, i32 noundef 8) #14
  %114 = icmp eq ptr %113, null
  br i1 %114, label %153, label %115

115:                                              ; preds = %110
  %116 = load ptr, ptr %3, align 8, !tbaa !43
  %117 = getelementptr inbounds %struct.BMEditMesh, ptr %116, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !145
  tail call void @DM_add_tessface_layer(ptr noundef nonnull %0, i32 noundef 40, i32 noundef 1, ptr noundef null) #14
  %119 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %120 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %119, i32 noundef 40) #14
  %121 = load ptr, ptr %119, align 8, !tbaa !187
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds %struct.CustomDataLayer, ptr %121, i64 %122, i32 2
  %124 = load i32, ptr %123, align 8, !tbaa !188
  %125 = or i32 %124, 5
  store i32 %125, ptr %123, align 8, !tbaa !188
  %126 = tail call ptr @DM_get_tessface_data_layer(ptr noundef nonnull %0, i32 noundef 40) #14
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %5, i8 noundef zeroext 4) #14
  %127 = load ptr, ptr %3, align 8, !tbaa !43
  %128 = getelementptr inbounds %struct.BMEditMesh, ptr %127, i64 0, i32 4
  %129 = load i32, ptr %128, align 8, !tbaa !52
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %153

131:                                              ; preds = %115, %145
  %132 = phi i32 [ %146, %145 ], [ 0, %115 ]
  %133 = phi ptr [ %147, %145 ], [ %126, %115 ]
  %134 = phi ptr [ %148, %145 ], [ %118, %115 ]
  br label %135

135:                                              ; preds = %131, %135
  %136 = phi i64 [ 0, %131 ], [ %143, %135 ]
  %137 = getelementptr inbounds [4 x [3 x i16]], ptr %133, i64 0, i64 %136
  %138 = getelementptr inbounds [3 x ptr], ptr %134, i64 0, i64 %136
  %139 = load ptr, ptr %138, align 8, !tbaa !34
  %140 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %139) #16
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [3 x float], ptr %113, i64 %141
  tail call fastcc void @normal_float_to_short_v3(ptr noundef %137, ptr noundef nonnull %142) #16
  %143 = add nuw nsw i64 %136, 1
  %144 = icmp eq i64 %143, 3
  br i1 %144, label %145, label %135, !llvm.loop !207

145:                                              ; preds = %135
  %146 = add nuw nsw i32 %132, 1
  %147 = getelementptr inbounds [4 x [3 x i16]], ptr %133, i64 1
  %148 = getelementptr inbounds [3 x ptr], ptr %134, i64 1
  %149 = load ptr, ptr %3, align 8, !tbaa !43
  %150 = getelementptr inbounds %struct.BMEditMesh, ptr %149, i64 0, i32 4
  %151 = load i32, ptr %150, align 8, !tbaa !52
  %152 = icmp slt i32 %146, %151
  br i1 %152, label %131, label %153, !llvm.loop !208

153:                                              ; preds = %145, %31, %79, %115, %12, %107, %110, %2
  %154 = phi ptr [ %6, %2 ], [ %108, %110 ], [ %108, %107 ], [ null, %12 ], [ %108, %115 ], [ %29, %79 ], [ %29, %31 ], [ %108, %145 ]
  ret ptr %154
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @emDM_calcNormals(ptr nocapture noundef %0) #6 !PGOFuncName !209 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %3 = load i32, ptr %2, align 8, !tbaa !210
  %4 = and i32 %3, -5
  store i32 %4, ptr %2, align 8, !tbaa !210
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_calcLoopNormals(ptr noundef %0, float noundef %1) #0 !PGOFuncName !211 {
  %3 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  tail call fastcc void @emDM_ensureVertNormals(ptr noundef %0) #16
  tail call fastcc void @emDM_ensurePolyNormals(ptr noundef %0) #16
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !210
  %8 = and i32 %7, -5
  store i32 %8, ptr %6, align 8, !tbaa !210
  %9 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !126
  %13 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !128
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 53
  %16 = load ptr, ptr %15, align 8, !tbaa !206
  %17 = tail call ptr %16(ptr noundef %0, i32 noundef 8) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  tail call void @DM_add_loop_layer(ptr noundef nonnull %0, i32 noundef 8, i32 noundef 1, ptr noundef null) #14
  %20 = load ptr, ptr %15, align 8, !tbaa !206
  %21 = tail call ptr %20(ptr noundef nonnull %0, i32 noundef 8) #14
  br label %22

22:                                               ; preds = %19, %2
  %23 = phi ptr [ %17, %2 ], [ %21, %19 ]
  tail call void @BM_loops_calc_normal_vcos(ptr noundef %5, ptr noundef %10, ptr noundef %12, ptr noundef %14, float noundef %1, ptr noundef %23) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @emDM_recalcTessellation(ptr nocapture readnone %0) #4 !PGOFuncName !212 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_foreachMappedVert(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 !PGOFuncName !213 {
  %5 = alloca %struct.BMIter, align 8
  %6 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  %9 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %4
  %13 = and i32 %3, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  tail call fastcc void @emDM_ensureVertNormals(ptr noundef nonnull %0) #16
  %16 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !126
  br label %18

18:                                               ; preds = %12, %15
  %19 = phi ptr [ %17, %15 ], [ null, %12 ]
  %20 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %8, i8 noundef zeroext 1) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %46, label %22

22:                                               ; preds = %18, %22
  %23 = phi i64 [ %29, %22 ], [ 0, %18 ]
  %24 = getelementptr inbounds [3 x float], ptr %19, i64 %23
  %25 = select i1 %14, ptr null, ptr %24
  %26 = getelementptr inbounds [3 x float], ptr %10, i64 %23
  %27 = trunc i64 %23 to i32
  call void %1(ptr noundef %2, i32 noundef %27, ptr noundef nonnull %26, ptr noundef %25, ptr noundef null) #14
  %28 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #16
  %29 = add nuw i64 %23, 1
  %30 = icmp eq ptr %28, null
  br i1 %30, label %46, label %22, !llvm.loop !214

31:                                               ; preds = %4
  %32 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %8, i8 noundef zeroext 1) #16
  %33 = icmp eq ptr %32, null
  br i1 %33, label %46, label %34

34:                                               ; preds = %31
  %35 = and i32 %3, 1
  %36 = icmp eq i32 %35, 0
  br label %37

37:                                               ; preds = %34, %37
  %38 = phi ptr [ %32, %34 ], [ %43, %37 ]
  %39 = phi i32 [ 0, %34 ], [ %44, %37 ]
  %40 = getelementptr inbounds %struct.BMVert, ptr %38, i64 0, i32 3
  %41 = select i1 %36, ptr null, ptr %40
  %42 = getelementptr inbounds %struct.BMVert, ptr %38, i64 0, i32 2
  call void %1(ptr noundef %2, i32 noundef %39, ptr noundef nonnull %42, ptr noundef %41, ptr noundef null) #14
  %43 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #16
  %44 = add nuw nsw i32 %39, 1
  %45 = icmp eq ptr %43, null
  br i1 %45, label %46, label %37, !llvm.loop !215

46:                                               ; preds = %22, %37, %18, %31
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_foreachMappedLoop(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 !PGOFuncName !216 {
  %5 = alloca %struct.BMIter, align 8
  %6 = and i32 %3, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @DM_get_loop_data_layer(ptr noundef %0, i32 noundef 8) #14
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi ptr [ %9, %8 ], [ null, %4 ]
  %12 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  %15 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !98
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %14, i8 noundef zeroext 1) #14
  %17 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %14, i8 noundef zeroext 3) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %47, label %19

19:                                               ; preds = %10
  %20 = icmp eq ptr %16, null
  br label %21

21:                                               ; preds = %19, %43
  %22 = phi ptr [ %11, %19 ], [ %35, %43 ]
  %23 = phi ptr [ %17, %19 ], [ %44, %43 ]
  %24 = phi i32 [ 0, %19 ], [ %45, %43 ]
  %25 = getelementptr inbounds %struct.BMFace, ptr %23, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !170
  br label %27

27:                                               ; preds = %27, %21
  %28 = phi ptr [ %26, %21 ], [ %41, %27 ]
  %29 = phi ptr [ %22, %21 ], [ %35, %27 ]
  %30 = getelementptr inbounds %struct.BMLoop, ptr %28, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !153
  %32 = call fastcc i32 @_bm_elem_index_get(ptr noundef %31) #16
  %33 = icmp eq ptr %29, null
  %34 = getelementptr inbounds [3 x float], ptr %29, i64 1
  %35 = select i1 %33, ptr null, ptr %34
  %36 = sext i32 %32 to i64
  %37 = getelementptr inbounds [3 x float], ptr %16, i64 %36
  %38 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 2
  %39 = select i1 %20, ptr %38, ptr %37
  call void %1(ptr noundef %2, i32 noundef %32, i32 noundef %24, ptr noundef %39, ptr noundef %29) #14
  %40 = getelementptr inbounds %struct.BMLoop, ptr %28, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !175
  %42 = icmp eq ptr %41, %26
  br i1 %42, label %43, label %27, !llvm.loop !217

43:                                               ; preds = %27
  %44 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #16
  %45 = add nuw nsw i32 %24, 1
  %46 = icmp eq ptr %44, null
  br i1 %46, label %47, label %21, !llvm.loop !218

47:                                               ; preds = %43, %10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_foreachMappedEdge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !219 {
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %8 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %3
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %7, i8 noundef zeroext 1) #14
  %12 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %7, i8 noundef zeroext 2) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %46, label %14

14:                                               ; preds = %11, %14
  %15 = phi i32 [ %29, %14 ], [ 0, %11 ]
  %16 = phi ptr [ %28, %14 ], [ %12, %11 ]
  %17 = load ptr, ptr %8, align 8, !tbaa !98
  %18 = getelementptr inbounds %struct.BMEdge, ptr %16, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !134
  %20 = call fastcc i32 @_bm_elem_index_get(ptr noundef %19) #16
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [3 x float], ptr %17, i64 %21
  %23 = getelementptr inbounds %struct.BMEdge, ptr %16, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !138
  %25 = call fastcc i32 @_bm_elem_index_get(ptr noundef %24) #16
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x float], ptr %17, i64 %26
  call void %1(ptr noundef %2, i32 noundef %15, ptr noundef %22, ptr noundef %27) #14
  %28 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #16
  %29 = add nuw nsw i32 %15, 1
  %30 = icmp eq ptr %28, null
  br i1 %30, label %46, label %14, !llvm.loop !220

31:                                               ; preds = %3
  %32 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %7, i8 noundef zeroext 2) #16
  %33 = icmp eq ptr %32, null
  br i1 %33, label %46, label %34

34:                                               ; preds = %31, %34
  %35 = phi i32 [ %44, %34 ], [ 0, %31 ]
  %36 = phi ptr [ %43, %34 ], [ %32, %31 ]
  %37 = getelementptr inbounds %struct.BMEdge, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !134
  %39 = getelementptr inbounds %struct.BMVert, ptr %38, i64 0, i32 2
  %40 = getelementptr inbounds %struct.BMEdge, ptr %36, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !138
  %42 = getelementptr inbounds %struct.BMVert, ptr %41, i64 0, i32 2
  call void %1(ptr noundef %2, i32 noundef %35, ptr noundef nonnull %39, ptr noundef nonnull %42) #14
  %43 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #16
  %44 = add nuw nsw i32 %35, 1
  %45 = icmp eq ptr %43, null
  br i1 %45, label %46, label %34, !llvm.loop !221

46:                                               ; preds = %14, %34, %11, %31
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_foreachMappedFaceCenter(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 !PGOFuncName !222 {
  %5 = alloca %struct.BMIter, align 8
  %6 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  tail call fastcc void @emDM_ensurePolyCenters(ptr noundef %0) #16
  %9 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !223
  %11 = and i32 %3, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %4
  tail call fastcc void @emDM_ensurePolyNormals(ptr noundef nonnull %0) #16
  %14 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !128
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %8, i8 noundef zeroext 3) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20

20:                                               ; preds = %17, %20
  %21 = phi i64 [ %26, %20 ], [ 0, %17 ]
  %22 = getelementptr inbounds [3 x float], ptr %15, i64 %21
  %23 = getelementptr inbounds [3 x float], ptr %10, i64 %21
  %24 = trunc i64 %21 to i32
  call void %1(ptr noundef %2, i32 noundef %24, ptr noundef %23, ptr noundef nonnull %22) #14
  %25 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #16
  %26 = add nuw i64 %21, 1
  %27 = icmp eq ptr %25, null
  br i1 %27, label %41, label %20, !llvm.loop !224

28:                                               ; preds = %4, %13
  %29 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %8, i8 noundef zeroext 3) #16
  %30 = icmp eq ptr %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %28, %31
  %32 = phi i64 [ %39, %31 ], [ 0, %28 ]
  %33 = phi ptr [ %38, %31 ], [ %29, %28 ]
  %34 = getelementptr inbounds %struct.BMFace, ptr %33, i64 0, i32 4
  %35 = select i1 %12, ptr null, ptr %34
  %36 = getelementptr inbounds [3 x float], ptr %10, i64 %32
  %37 = trunc i64 %32 to i32
  call void %1(ptr noundef %2, i32 noundef %37, ptr noundef %36, ptr noundef %35) #14
  %38 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #16
  %39 = add nuw i64 %32, 1
  %40 = icmp eq ptr %38, null
  br i1 %40, label %41, label %31, !llvm.loop !225

41:                                               ; preds = %20, %31, %17, %28
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_drawEdges(ptr nocapture noundef readonly %0, i8 zeroext %1, i8 zeroext %2) #0 !PGOFuncName !226 {
  tail call void @emDM_drawMappedEdges(ptr noundef %0, ptr noundef null, ptr noundef null) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_drawMappedEdges(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !227 {
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %8 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = icmp eq ptr %9, null
  br i1 %10, label %39, label %11

11:                                               ; preds = %3
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %7, i8 noundef zeroext 1) #14
  tail call void @glBegin(i32 noundef 1) #14
  %12 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %7, i8 noundef zeroext 2) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %61, label %14

14:                                               ; preds = %11
  %15 = icmp eq ptr %1, null
  br label %16

16:                                               ; preds = %14, %35
  %17 = phi i32 [ 0, %14 ], [ %37, %35 ]
  %18 = phi ptr [ %12, %14 ], [ %36, %35 ]
  br i1 %15, label %22, label %19

19:                                               ; preds = %16
  %20 = call i32 %1(ptr noundef %2, i32 noundef %17) #14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %19, %16
  %23 = load ptr, ptr %8, align 8, !tbaa !98
  %24 = getelementptr inbounds %struct.BMEdge, ptr %18, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !134
  %26 = call fastcc i32 @_bm_elem_index_get(ptr noundef %25) #16
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [3 x float], ptr %23, i64 %27
  call void @glVertex3fv(ptr noundef %28) #14
  %29 = load ptr, ptr %8, align 8, !tbaa !98
  %30 = getelementptr inbounds %struct.BMEdge, ptr %18, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !138
  %32 = call fastcc i32 @_bm_elem_index_get(ptr noundef %31) #16
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [3 x float], ptr %29, i64 %33
  call void @glVertex3fv(ptr noundef %34) #14
  br label %35

35:                                               ; preds = %19, %22
  %36 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #16
  %37 = add nuw nsw i32 %17, 1
  %38 = icmp eq ptr %36, null
  br i1 %38, label %61, label %16, !llvm.loop !228

39:                                               ; preds = %3
  tail call void @glBegin(i32 noundef 1) #14
  %40 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %7, i8 noundef zeroext 2) #16
  %41 = icmp eq ptr %40, null
  br i1 %41, label %61, label %42

42:                                               ; preds = %39
  %43 = icmp eq ptr %1, null
  br label %44

44:                                               ; preds = %42, %57
  %45 = phi i32 [ 0, %42 ], [ %59, %57 ]
  %46 = phi ptr [ %40, %42 ], [ %58, %57 ]
  br i1 %43, label %50, label %47

47:                                               ; preds = %44
  %48 = call i32 %1(ptr noundef %2, i32 noundef %45) #14
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %47, %44
  %51 = getelementptr inbounds %struct.BMEdge, ptr %46, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !134
  %53 = getelementptr inbounds %struct.BMVert, ptr %52, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %53) #14
  %54 = getelementptr inbounds %struct.BMEdge, ptr %46, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !138
  %56 = getelementptr inbounds %struct.BMVert, ptr %55, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %56) #14
  br label %57

57:                                               ; preds = %47, %50
  %58 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #16
  %59 = add nuw nsw i32 %45, 1
  %60 = icmp eq ptr %58, null
  br i1 %60, label %61, label %44, !llvm.loop !229

61:                                               ; preds = %35, %57, %39, %11
  call void @glEnd() #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_drawMappedEdgesInterp(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !230 {
  %5 = alloca %struct.BMIter, align 8
  %6 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  %9 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = icmp eq ptr %10, null
  br i1 %11, label %40, label %12

12:                                               ; preds = %4
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %8, i8 noundef zeroext 1) #14
  tail call void @glBegin(i32 noundef 1) #14
  %13 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %8, i8 noundef zeroext 2) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %62, label %15

15:                                               ; preds = %12
  %16 = icmp eq ptr %1, null
  br label %17

17:                                               ; preds = %15, %36
  %18 = phi i32 [ 0, %15 ], [ %38, %36 ]
  %19 = phi ptr [ %13, %15 ], [ %37, %36 ]
  br i1 %16, label %23, label %20

20:                                               ; preds = %17
  %21 = call i32 %1(ptr noundef %3, i32 noundef %18) #14
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %20, %17
  call void %2(ptr noundef %3, i32 noundef %18, float noundef 0.000000e+00) #14
  %24 = load ptr, ptr %9, align 8, !tbaa !98
  %25 = getelementptr inbounds %struct.BMEdge, ptr %19, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !134
  %27 = call fastcc i32 @_bm_elem_index_get(ptr noundef %26) #16
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [3 x float], ptr %24, i64 %28
  call void @glVertex3fv(ptr noundef %29) #14
  call void %2(ptr noundef %3, i32 noundef %18, float noundef 1.000000e+00) #14
  %30 = load ptr, ptr %9, align 8, !tbaa !98
  %31 = getelementptr inbounds %struct.BMEdge, ptr %19, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !138
  %33 = call fastcc i32 @_bm_elem_index_get(ptr noundef %32) #16
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [3 x float], ptr %30, i64 %34
  call void @glVertex3fv(ptr noundef %35) #14
  br label %36

36:                                               ; preds = %20, %23
  %37 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #16
  %38 = add nuw nsw i32 %18, 1
  %39 = icmp eq ptr %37, null
  br i1 %39, label %62, label %17, !llvm.loop !231

40:                                               ; preds = %4
  tail call void @glBegin(i32 noundef 1) #14
  %41 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %8, i8 noundef zeroext 2) #16
  %42 = icmp eq ptr %41, null
  br i1 %42, label %62, label %43

43:                                               ; preds = %40
  %44 = icmp eq ptr %1, null
  br label %45

45:                                               ; preds = %43, %58
  %46 = phi i32 [ 0, %43 ], [ %60, %58 ]
  %47 = phi ptr [ %41, %43 ], [ %59, %58 ]
  br i1 %44, label %51, label %48

48:                                               ; preds = %45
  %49 = call i32 %1(ptr noundef %3, i32 noundef %46) #14
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %48, %45
  call void %2(ptr noundef %3, i32 noundef %46, float noundef 0.000000e+00) #14
  %52 = getelementptr inbounds %struct.BMEdge, ptr %47, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !134
  %54 = getelementptr inbounds %struct.BMVert, ptr %53, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %54) #14
  call void %2(ptr noundef %3, i32 noundef %46, float noundef 1.000000e+00) #14
  %55 = getelementptr inbounds %struct.BMEdge, ptr %47, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !138
  %57 = getelementptr inbounds %struct.BMVert, ptr %56, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %57) #14
  br label %58

58:                                               ; preds = %48, %51
  %59 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #16
  %60 = add nuw nsw i32 %46, 1
  %61 = icmp eq ptr %59, null
  br i1 %61, label %62, label %45, !llvm.loop !232

62:                                               ; preds = %36, %58, %40, %12
  call void @glEnd() #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_drawMappedFaces(ptr noundef %0, ptr noundef readonly %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4, i32 noundef %5) #0 !PGOFuncName !233 {
  %7 = alloca [3 x ptr], align 16
  %8 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.BMEditMesh, ptr %9, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !145
  %13 = getelementptr inbounds %struct.BMEditMesh, ptr %9, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !52
  %15 = add nsw i32 %14, -1
  %16 = tail call zeroext i8 @glIsEnabled(i32 noundef 2896) #14
  %17 = icmp ne i8 %16, 0
  %18 = xor i1 %17, true
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 53
  %20 = load ptr, ptr %19, align 8, !tbaa !206
  %21 = tail call ptr %20(ptr noundef %0, i32 noundef 8) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %22 = getelementptr inbounds %struct.BMEditMesh, ptr %9, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !234
  %24 = getelementptr inbounds %struct.BMEditMesh, ptr %9, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !235
  %26 = icmp ne ptr %23, null
  %27 = select i1 %26, i1 %17, i1 false
  %28 = icmp ne ptr %25, null
  %29 = select i1 %28, i1 %17, i1 false
  br i1 %27, label %30, label %31

30:                                               ; preds = %6
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %10, i8 noundef zeroext 1) #14
  br label %31

31:                                               ; preds = %30, %6
  br i1 %29, label %32, label %33

32:                                               ; preds = %31
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %10, i8 noundef zeroext 8) #14
  br label %33

33:                                               ; preds = %32, %31
  %34 = select i1 %26, i1 %17, i1 %29
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  tail call void @glDisable(i32 noundef 2896) #14
  br label %36

36:                                               ; preds = %33, %35
  %37 = phi i32 [ 2, %35 ], [ %5, %33 ]
  %38 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !98
  %40 = icmp eq ptr %39, null
  br i1 %40, label %251, label %41

41:                                               ; preds = %36
  br i1 %17, label %42, label %47

42:                                               ; preds = %41
  tail call fastcc void @emDM_ensureVertNormals(ptr noundef nonnull %0) #16
  tail call fastcc void @emDM_ensurePolyNormals(ptr noundef nonnull %0) #16
  %43 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !126
  %45 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !128
  br label %47

47:                                               ; preds = %41, %42
  %48 = phi ptr [ %46, %42 ], [ null, %41 ]
  %49 = phi ptr [ %44, %42 ], [ null, %41 ]
  %50 = icmp eq ptr %21, null
  %51 = select i1 %50, i8 9, i8 13
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %10, i8 noundef zeroext %51) #14
  %52 = icmp sgt i32 %14, 0
  br i1 %52, label %53, label %438

53:                                               ; preds = %47
  %54 = and i32 %37, 2
  %55 = icmp eq i32 %54, 0
  %56 = icmp eq ptr %1, null
  %57 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 1
  %58 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 2
  %59 = zext nneg i32 %15 to i64
  %60 = zext nneg i32 %14 to i64
  br label %61

61:                                               ; preds = %53, %246
  %62 = phi i64 [ 0, %53 ], [ %249, %246 ]
  %63 = phi i32 [ 0, %53 ], [ %248, %246 ]
  %64 = phi i32 [ 0, %53 ], [ %247, %246 ]
  %65 = getelementptr inbounds [3 x ptr], ptr %12, i64 %62
  %66 = load ptr, ptr %65, align 8, !tbaa !34
  %67 = getelementptr inbounds %struct.BMLoop, ptr %66, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !146
  br i1 %50, label %69, label %76

69:                                               ; preds = %61
  br i1 %55, label %70, label %73

70:                                               ; preds = %69
  %71 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %68, i8 noundef zeroext 8) #16, !range !236
  %72 = zext nneg i8 %71 to i32
  br label %73

73:                                               ; preds = %69, %70
  %74 = phi i32 [ %72, %70 ], [ 1, %69 ]
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %73, %61
  %77 = phi i1 [ true, %61 ], [ %75, %73 ]
  br i1 %56, label %85, label %78

78:                                               ; preds = %76
  %79 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %68) #16
  %80 = tail call i32 %1(ptr noundef %4, i32 noundef %79) #14
  switch i32 %80, label %85 [
    i32 0, label %246
    i32 3, label %81
  ]

81:                                               ; preds = %78
  %82 = icmp eq i32 %63, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %81
  tail call void @glEnd() #14
  br label %84

84:                                               ; preds = %83, %81
  tail call void @glEnable(i32 noundef 2882) #14
  tail call void @glPolygonStipple(ptr noundef nonnull @stipple_quarttone) #14
  br label %85

85:                                               ; preds = %78, %76, %84
  %86 = phi i1 [ true, %84 ], [ false, %76 ], [ false, %78 ]
  %87 = phi i32 [ 0, %84 ], [ %63, %76 ], [ %63, %78 ]
  br i1 %27, label %88, label %89

88:                                               ; preds = %85
  call fastcc void @bmdm_get_tri_colpreview(ptr noundef nonnull %65, ptr noundef nonnull %7, ptr noundef nonnull %23) #16
  br label %119

89:                                               ; preds = %85
  br i1 %29, label %90, label %94

90:                                               ; preds = %89
  %91 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %68) #16
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [4 x i8], ptr %25, i64 %92
  tail call void @glColor3ubv(ptr noundef nonnull %93) #14
  br label %119

94:                                               ; preds = %89
  br i1 %17, label %119, label %95

95:                                               ; preds = %94
  switch i32 %87, label %96 [
    i32 4, label %98
    i32 0, label %97
  ]

96:                                               ; preds = %95
  tail call void @glEnd() #14
  br label %97

97:                                               ; preds = %95, %96
  tail call void @glBegin(i32 noundef 4) #14
  br label %98

98:                                               ; preds = %95, %97
  %99 = load ptr, ptr %65, align 8, !tbaa !34
  %100 = getelementptr inbounds %struct.BMLoop, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !153
  %102 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %101) #16
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [3 x float], ptr %39, i64 %103
  tail call void @glVertex3fv(ptr noundef nonnull %104) #14
  %105 = getelementptr inbounds ptr, ptr %65, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !34
  %107 = getelementptr inbounds %struct.BMLoop, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !153
  %109 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %108) #16
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [3 x float], ptr %39, i64 %110
  tail call void @glVertex3fv(ptr noundef nonnull %111) #14
  %112 = getelementptr inbounds ptr, ptr %65, i64 2
  %113 = load ptr, ptr %112, align 8, !tbaa !34
  %114 = getelementptr inbounds %struct.BMLoop, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !153
  %116 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %115) #16
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [3 x float], ptr %39, i64 %117
  tail call void @glVertex3fv(ptr noundef nonnull %118) #14
  br i1 %86, label %244, label %246

119:                                              ; preds = %88, %90, %94
  %120 = select i1 %77, i32 7425, i32 7424
  %121 = icmp eq i32 %120, %64
  br i1 %121, label %126, label %122

122:                                              ; preds = %119
  %123 = icmp eq i32 %87, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %122
  tail call void @glEnd() #14
  br label %125

125:                                              ; preds = %122, %124
  tail call void @glShadeModel(i32 noundef %120) #14
  br label %128

126:                                              ; preds = %119
  switch i32 %87, label %127 [
    i32 4, label %130
    i32 0, label %128
  ]

127:                                              ; preds = %126
  tail call void @glEnd() #14
  br label %128

128:                                              ; preds = %127, %126, %125
  %129 = phi i32 [ %120, %125 ], [ %64, %126 ], [ %64, %127 ]
  tail call void @glBegin(i32 noundef 4) #14
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i32 [ %64, %126 ], [ %129, %128 ]
  br i1 %77, label %162, label %132

132:                                              ; preds = %130
  %133 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %68) #16
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [3 x float], ptr %48, i64 %134
  tail call void @glNormal3fv(ptr noundef %135) #14
  br i1 %27, label %136, label %145

136:                                              ; preds = %132
  %137 = load ptr, ptr %7, align 16, !tbaa !34
  tail call void @glColor3ubv(ptr noundef %137) #14
  %138 = load ptr, ptr %65, align 8, !tbaa !34
  %139 = getelementptr inbounds %struct.BMLoop, ptr %138, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !153
  %141 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %140) #16
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [3 x float], ptr %39, i64 %142
  tail call void @glVertex3fv(ptr noundef nonnull %143) #14
  %144 = load ptr, ptr %57, align 8, !tbaa !34
  tail call void @glColor3ubv(ptr noundef %144) #14
  br label %152

145:                                              ; preds = %132
  %146 = load ptr, ptr %65, align 8, !tbaa !34
  %147 = getelementptr inbounds %struct.BMLoop, ptr %146, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !153
  %149 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %148) #16
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [3 x float], ptr %39, i64 %150
  tail call void @glVertex3fv(ptr noundef nonnull %151) #14
  br label %152

152:                                              ; preds = %145, %136
  %153 = getelementptr inbounds ptr, ptr %65, i64 1
  %154 = load ptr, ptr %153, align 8, !tbaa !34
  %155 = getelementptr inbounds %struct.BMLoop, ptr %154, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !153
  %157 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %156) #16
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [3 x float], ptr %39, i64 %158
  tail call void @glVertex3fv(ptr noundef nonnull %159) #14
  br i1 %27, label %160, label %222

160:                                              ; preds = %152
  %161 = load ptr, ptr %58, align 16, !tbaa !34
  tail call void @glColor3ubv(ptr noundef %161) #14
  br label %222

162:                                              ; preds = %130
  br i1 %27, label %163, label %165

163:                                              ; preds = %162
  %164 = load ptr, ptr %7, align 16, !tbaa !34
  tail call void @glColor3ubv(ptr noundef %164) #14
  br label %165

165:                                              ; preds = %163, %162
  %166 = load ptr, ptr %65, align 8, !tbaa !34
  br i1 %50, label %171, label %167

167:                                              ; preds = %165
  %168 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %166) #16
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [3 x float], ptr %21, i64 %169
  tail call void @glNormal3fv(ptr noundef nonnull %170) #14
  br label %177

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.BMLoop, ptr %166, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !153
  %174 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %173) #16
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [3 x float], ptr %49, i64 %175
  tail call void @glNormal3fv(ptr noundef %176) #14
  br label %177

177:                                              ; preds = %171, %167
  %178 = load ptr, ptr %65, align 8, !tbaa !34
  %179 = getelementptr inbounds %struct.BMLoop, ptr %178, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !153
  %181 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %180) #16
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [3 x float], ptr %39, i64 %182
  tail call void @glVertex3fv(ptr noundef nonnull %183) #14
  br i1 %27, label %184, label %186

184:                                              ; preds = %177
  %185 = load ptr, ptr %57, align 8, !tbaa !34
  tail call void @glColor3ubv(ptr noundef %185) #14
  br label %186

186:                                              ; preds = %184, %177
  %187 = getelementptr inbounds ptr, ptr %65, i64 1
  %188 = load ptr, ptr %187, align 8, !tbaa !34
  br i1 %50, label %193, label %189

189:                                              ; preds = %186
  %190 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %188) #16
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [3 x float], ptr %21, i64 %191
  tail call void @glNormal3fv(ptr noundef nonnull %192) #14
  br label %199

193:                                              ; preds = %186
  %194 = getelementptr inbounds %struct.BMLoop, ptr %188, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !153
  %196 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %195) #16
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [3 x float], ptr %49, i64 %197
  tail call void @glNormal3fv(ptr noundef %198) #14
  br label %199

199:                                              ; preds = %193, %189
  %200 = getelementptr inbounds ptr, ptr %65, i64 1
  %201 = load ptr, ptr %200, align 8, !tbaa !34
  %202 = getelementptr inbounds %struct.BMLoop, ptr %201, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !153
  %204 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %203) #16
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [3 x float], ptr %39, i64 %205
  tail call void @glVertex3fv(ptr noundef nonnull %206) #14
  br i1 %27, label %207, label %209

207:                                              ; preds = %199
  %208 = load ptr, ptr %58, align 16, !tbaa !34
  tail call void @glColor3ubv(ptr noundef %208) #14
  br label %209

209:                                              ; preds = %207, %199
  %210 = getelementptr inbounds ptr, ptr %65, i64 2
  %211 = load ptr, ptr %210, align 8, !tbaa !34
  br i1 %50, label %216, label %212

212:                                              ; preds = %209
  %213 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %211) #16
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [3 x float], ptr %21, i64 %214
  tail call void @glNormal3fv(ptr noundef nonnull %215) #14
  br label %222

216:                                              ; preds = %209
  %217 = getelementptr inbounds %struct.BMLoop, ptr %211, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !153
  %219 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %218) #16
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [3 x float], ptr %49, i64 %220
  tail call void @glNormal3fv(ptr noundef %221) #14
  br label %222

222:                                              ; preds = %212, %216, %152, %160
  %223 = getelementptr inbounds ptr, ptr %65, i64 2
  %224 = load ptr, ptr %223, align 8, !tbaa !34
  %225 = getelementptr inbounds %struct.BMLoop, ptr %224, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !153
  %227 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %226) #16
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [3 x float], ptr %39, i64 %228
  tail call void @glVertex3fv(ptr noundef nonnull %229) #14
  %230 = or i1 %86, %18
  %231 = icmp eq i64 %62, %59
  %232 = select i1 %230, i1 true, i1 %231
  br i1 %232, label %243, label %233

233:                                              ; preds = %222
  %234 = getelementptr inbounds %struct.BMFace, ptr %68, i64 0, i32 5
  %235 = load i16, ptr %234, align 8, !tbaa !148
  %236 = getelementptr [3 x ptr], ptr %65, i64 1
  %237 = load ptr, ptr %236, align 8, !tbaa !34
  %238 = getelementptr inbounds %struct.BMLoop, ptr %237, i64 0, i32 3
  %239 = load ptr, ptr %238, align 8, !tbaa !146
  %240 = getelementptr inbounds %struct.BMFace, ptr %239, i64 0, i32 5
  %241 = load i16, ptr %240, align 8, !tbaa !148
  %242 = icmp eq i16 %235, %241
  br i1 %242, label %246, label %244

243:                                              ; preds = %222
  br i1 %86, label %244, label %246

244:                                              ; preds = %98, %233, %243
  %245 = phi i32 [ %131, %233 ], [ %131, %243 ], [ %64, %98 ]
  tail call void @glEnd() #14
  tail call void @glDisable(i32 noundef 2882) #14
  br label %246

246:                                              ; preds = %78, %98, %233, %243, %244
  %247 = phi i32 [ %64, %78 ], [ %245, %244 ], [ %131, %243 ], [ %131, %233 ], [ %64, %98 ]
  %248 = phi i32 [ %63, %78 ], [ 0, %244 ], [ 4, %243 ], [ 4, %233 ], [ 4, %98 ]
  %249 = add nuw nsw i64 %62, 1
  %250 = icmp eq i64 %249, %60
  br i1 %250, label %434, label %61, !llvm.loop !237

251:                                              ; preds = %36
  %252 = icmp eq ptr %21, null
  %253 = select i1 %252, i8 8, i8 12
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %10, i8 noundef zeroext %253) #14
  %254 = icmp sgt i32 %14, 0
  br i1 %254, label %255, label %438

255:                                              ; preds = %251
  %256 = and i32 %37, 2
  %257 = icmp eq i32 %256, 0
  %258 = icmp eq ptr %1, null
  %259 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 1
  %260 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 2
  %261 = zext nneg i32 %15 to i64
  %262 = zext nneg i32 %14 to i64
  br label %263

263:                                              ; preds = %255, %429
  %264 = phi i64 [ 0, %255 ], [ %432, %429 ]
  %265 = phi i32 [ 0, %255 ], [ %431, %429 ]
  %266 = phi i32 [ 0, %255 ], [ %430, %429 ]
  %267 = getelementptr inbounds [3 x ptr], ptr %12, i64 %264
  %268 = load ptr, ptr %267, align 8, !tbaa !34
  %269 = getelementptr inbounds %struct.BMLoop, ptr %268, i64 0, i32 3
  %270 = load ptr, ptr %269, align 8, !tbaa !146
  br i1 %252, label %271, label %278

271:                                              ; preds = %263
  br i1 %257, label %272, label %275

272:                                              ; preds = %271
  %273 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %270, i8 noundef zeroext 8) #16, !range !236
  %274 = zext nneg i8 %273 to i32
  br label %275

275:                                              ; preds = %271, %272
  %276 = phi i32 [ %274, %272 ], [ 1, %271 ]
  %277 = icmp ne i32 %276, 0
  br label %278

278:                                              ; preds = %275, %263
  %279 = phi i1 [ true, %263 ], [ %277, %275 ]
  br i1 %258, label %287, label %280

280:                                              ; preds = %278
  %281 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %270) #16
  %282 = tail call i32 %1(ptr noundef %4, i32 noundef %281) #14
  switch i32 %282, label %287 [
    i32 0, label %429
    i32 3, label %283
  ]

283:                                              ; preds = %280
  %284 = icmp eq i32 %265, 0
  br i1 %284, label %286, label %285

285:                                              ; preds = %283
  tail call void @glEnd() #14
  br label %286

286:                                              ; preds = %285, %283
  tail call void @glEnable(i32 noundef 2882) #14
  tail call void @glPolygonStipple(ptr noundef nonnull @stipple_quarttone) #14
  br label %287

287:                                              ; preds = %280, %278, %286
  %288 = phi i1 [ true, %286 ], [ false, %278 ], [ false, %280 ]
  %289 = phi i32 [ 0, %286 ], [ %265, %278 ], [ %265, %280 ]
  br i1 %27, label %290, label %291

290:                                              ; preds = %287
  call fastcc void @bmdm_get_tri_colpreview(ptr noundef nonnull %267, ptr noundef nonnull %7, ptr noundef nonnull %23) #16
  br label %315

291:                                              ; preds = %287
  br i1 %29, label %292, label %296

292:                                              ; preds = %291
  %293 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %270) #16
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [4 x i8], ptr %25, i64 %294
  tail call void @glColor3ubv(ptr noundef nonnull %295) #14
  br label %315

296:                                              ; preds = %291
  br i1 %17, label %315, label %297

297:                                              ; preds = %296
  switch i32 %289, label %298 [
    i32 4, label %300
    i32 0, label %299
  ]

298:                                              ; preds = %297
  tail call void @glEnd() #14
  br label %299

299:                                              ; preds = %297, %298
  tail call void @glBegin(i32 noundef 4) #14
  br label %300

300:                                              ; preds = %297, %299
  %301 = load ptr, ptr %267, align 8, !tbaa !34
  %302 = getelementptr inbounds %struct.BMLoop, ptr %301, i64 0, i32 1
  %303 = load ptr, ptr %302, align 8, !tbaa !153
  %304 = getelementptr inbounds %struct.BMVert, ptr %303, i64 0, i32 2
  tail call void @glVertex3fv(ptr noundef nonnull %304) #14
  %305 = getelementptr inbounds ptr, ptr %267, i64 1
  %306 = load ptr, ptr %305, align 8, !tbaa !34
  %307 = getelementptr inbounds %struct.BMLoop, ptr %306, i64 0, i32 1
  %308 = load ptr, ptr %307, align 8, !tbaa !153
  %309 = getelementptr inbounds %struct.BMVert, ptr %308, i64 0, i32 2
  tail call void @glVertex3fv(ptr noundef nonnull %309) #14
  %310 = getelementptr inbounds ptr, ptr %267, i64 2
  %311 = load ptr, ptr %310, align 8, !tbaa !34
  %312 = getelementptr inbounds %struct.BMLoop, ptr %311, i64 0, i32 1
  %313 = load ptr, ptr %312, align 8, !tbaa !153
  %314 = getelementptr inbounds %struct.BMVert, ptr %313, i64 0, i32 2
  tail call void @glVertex3fv(ptr noundef nonnull %314) #14
  br i1 %288, label %427, label %429

315:                                              ; preds = %290, %292, %296
  %316 = select i1 %279, i32 7425, i32 7424
  %317 = icmp eq i32 %316, %266
  br i1 %317, label %322, label %318

318:                                              ; preds = %315
  %319 = icmp eq i32 %289, 0
  br i1 %319, label %321, label %320

320:                                              ; preds = %318
  tail call void @glEnd() #14
  br label %321

321:                                              ; preds = %318, %320
  tail call void @glShadeModel(i32 noundef %316) #14
  br label %324

322:                                              ; preds = %315
  switch i32 %289, label %323 [
    i32 4, label %326
    i32 0, label %324
  ]

323:                                              ; preds = %322
  tail call void @glEnd() #14
  br label %324

324:                                              ; preds = %323, %322, %321
  %325 = phi i32 [ %316, %321 ], [ %266, %322 ], [ %266, %323 ]
  tail call void @glBegin(i32 noundef 4) #14
  br label %326

326:                                              ; preds = %324, %322
  %327 = phi i32 [ %266, %322 ], [ %325, %324 ]
  br i1 %279, label %353, label %328

328:                                              ; preds = %326
  %329 = getelementptr inbounds %struct.BMFace, ptr %270, i64 0, i32 4
  tail call void @glNormal3fv(ptr noundef nonnull %329) #14
  br i1 %27, label %340, label %330

330:                                              ; preds = %328
  %331 = load ptr, ptr %267, align 8, !tbaa !34
  %332 = getelementptr inbounds %struct.BMLoop, ptr %331, i64 0, i32 1
  %333 = load ptr, ptr %332, align 8, !tbaa !153
  %334 = getelementptr inbounds %struct.BMVert, ptr %333, i64 0, i32 2
  tail call void @glVertex3fv(ptr noundef nonnull %334) #14
  %335 = getelementptr inbounds ptr, ptr %267, i64 1
  %336 = load ptr, ptr %335, align 8, !tbaa !34
  %337 = getelementptr inbounds %struct.BMLoop, ptr %336, i64 0, i32 1
  %338 = load ptr, ptr %337, align 8, !tbaa !153
  %339 = getelementptr inbounds %struct.BMVert, ptr %338, i64 0, i32 2
  tail call void @glVertex3fv(ptr noundef nonnull %339) #14
  br label %407

340:                                              ; preds = %328
  %341 = load ptr, ptr %7, align 16, !tbaa !34
  tail call void @glColor3ubv(ptr noundef %341) #14
  %342 = load ptr, ptr %267, align 8, !tbaa !34
  %343 = getelementptr inbounds %struct.BMLoop, ptr %342, i64 0, i32 1
  %344 = load ptr, ptr %343, align 8, !tbaa !153
  %345 = getelementptr inbounds %struct.BMVert, ptr %344, i64 0, i32 2
  tail call void @glVertex3fv(ptr noundef nonnull %345) #14
  %346 = load ptr, ptr %259, align 8, !tbaa !34
  tail call void @glColor3ubv(ptr noundef %346) #14
  %347 = getelementptr inbounds ptr, ptr %267, i64 1
  %348 = load ptr, ptr %347, align 8, !tbaa !34
  %349 = getelementptr inbounds %struct.BMLoop, ptr %348, i64 0, i32 1
  %350 = load ptr, ptr %349, align 8, !tbaa !153
  %351 = getelementptr inbounds %struct.BMVert, ptr %350, i64 0, i32 2
  tail call void @glVertex3fv(ptr noundef nonnull %351) #14
  %352 = load ptr, ptr %260, align 16, !tbaa !34
  tail call void @glColor3ubv(ptr noundef %352) #14
  br label %407

353:                                              ; preds = %326
  br i1 %27, label %354, label %356

354:                                              ; preds = %353
  %355 = load ptr, ptr %7, align 16, !tbaa !34
  tail call void @glColor3ubv(ptr noundef %355) #14
  br label %356

356:                                              ; preds = %354, %353
  %357 = load ptr, ptr %267, align 8, !tbaa !34
  br i1 %252, label %362, label %358

358:                                              ; preds = %356
  %359 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %357) #16
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [3 x float], ptr %21, i64 %360
  br label %366

362:                                              ; preds = %356
  %363 = getelementptr inbounds %struct.BMLoop, ptr %357, i64 0, i32 1
  %364 = load ptr, ptr %363, align 8, !tbaa !153
  %365 = getelementptr inbounds %struct.BMVert, ptr %364, i64 0, i32 3
  br label %366

366:                                              ; preds = %362, %358
  %367 = phi ptr [ %365, %362 ], [ %361, %358 ]
  tail call void @glNormal3fv(ptr noundef nonnull %367) #14
  %368 = load ptr, ptr %267, align 8, !tbaa !34
  %369 = getelementptr inbounds %struct.BMLoop, ptr %368, i64 0, i32 1
  %370 = load ptr, ptr %369, align 8, !tbaa !153
  %371 = getelementptr inbounds %struct.BMVert, ptr %370, i64 0, i32 2
  tail call void @glVertex3fv(ptr noundef nonnull %371) #14
  br i1 %27, label %372, label %374

372:                                              ; preds = %366
  %373 = load ptr, ptr %259, align 8, !tbaa !34
  tail call void @glColor3ubv(ptr noundef %373) #14
  br label %374

374:                                              ; preds = %372, %366
  %375 = getelementptr inbounds ptr, ptr %267, i64 1
  %376 = load ptr, ptr %375, align 8, !tbaa !34
  br i1 %252, label %381, label %377

377:                                              ; preds = %374
  %378 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %376) #16
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds [3 x float], ptr %21, i64 %379
  br label %385

381:                                              ; preds = %374
  %382 = getelementptr inbounds %struct.BMLoop, ptr %376, i64 0, i32 1
  %383 = load ptr, ptr %382, align 8, !tbaa !153
  %384 = getelementptr inbounds %struct.BMVert, ptr %383, i64 0, i32 3
  br label %385

385:                                              ; preds = %381, %377
  %386 = phi ptr [ %384, %381 ], [ %380, %377 ]
  tail call void @glNormal3fv(ptr noundef nonnull %386) #14
  %387 = getelementptr inbounds ptr, ptr %267, i64 1
  %388 = load ptr, ptr %387, align 8, !tbaa !34
  %389 = getelementptr inbounds %struct.BMLoop, ptr %388, i64 0, i32 1
  %390 = load ptr, ptr %389, align 8, !tbaa !153
  %391 = getelementptr inbounds %struct.BMVert, ptr %390, i64 0, i32 2
  tail call void @glVertex3fv(ptr noundef nonnull %391) #14
  br i1 %27, label %392, label %394

392:                                              ; preds = %385
  %393 = load ptr, ptr %260, align 16, !tbaa !34
  tail call void @glColor3ubv(ptr noundef %393) #14
  br label %394

394:                                              ; preds = %392, %385
  %395 = getelementptr inbounds ptr, ptr %267, i64 2
  %396 = load ptr, ptr %395, align 8, !tbaa !34
  br i1 %252, label %401, label %397

397:                                              ; preds = %394
  %398 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %396) #16
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [3 x float], ptr %21, i64 %399
  br label %405

401:                                              ; preds = %394
  %402 = getelementptr inbounds %struct.BMLoop, ptr %396, i64 0, i32 1
  %403 = load ptr, ptr %402, align 8, !tbaa !153
  %404 = getelementptr inbounds %struct.BMVert, ptr %403, i64 0, i32 3
  br label %405

405:                                              ; preds = %401, %397
  %406 = phi ptr [ %404, %401 ], [ %400, %397 ]
  tail call void @glNormal3fv(ptr noundef nonnull %406) #14
  br label %407

407:                                              ; preds = %340, %330, %405
  %408 = getelementptr inbounds ptr, ptr %267, i64 2
  %409 = load ptr, ptr %408, align 8, !tbaa !34
  %410 = getelementptr inbounds %struct.BMLoop, ptr %409, i64 0, i32 1
  %411 = load ptr, ptr %410, align 8, !tbaa !153
  %412 = getelementptr inbounds %struct.BMVert, ptr %411, i64 0, i32 2
  tail call void @glVertex3fv(ptr noundef nonnull %412) #14
  %413 = or i1 %288, %18
  %414 = icmp eq i64 %264, %261
  %415 = select i1 %413, i1 true, i1 %414
  br i1 %415, label %426, label %416

416:                                              ; preds = %407
  %417 = getelementptr inbounds %struct.BMFace, ptr %270, i64 0, i32 5
  %418 = load i16, ptr %417, align 8, !tbaa !148
  %419 = getelementptr [3 x ptr], ptr %267, i64 1
  %420 = load ptr, ptr %419, align 8, !tbaa !34
  %421 = getelementptr inbounds %struct.BMLoop, ptr %420, i64 0, i32 3
  %422 = load ptr, ptr %421, align 8, !tbaa !146
  %423 = getelementptr inbounds %struct.BMFace, ptr %422, i64 0, i32 5
  %424 = load i16, ptr %423, align 8, !tbaa !148
  %425 = icmp eq i16 %418, %424
  br i1 %425, label %429, label %427

426:                                              ; preds = %407
  br i1 %288, label %427, label %429

427:                                              ; preds = %300, %416, %426
  %428 = phi i32 [ %327, %416 ], [ %327, %426 ], [ %266, %300 ]
  tail call void @glEnd() #14
  tail call void @glDisable(i32 noundef 2882) #14
  br label %429

429:                                              ; preds = %280, %300, %416, %426, %427
  %430 = phi i32 [ %266, %280 ], [ %428, %427 ], [ %327, %426 ], [ %327, %416 ], [ %266, %300 ]
  %431 = phi i32 [ %265, %280 ], [ 0, %427 ], [ 4, %426 ], [ 4, %416 ], [ 4, %300 ]
  %432 = add nuw nsw i64 %264, 1
  %433 = icmp eq i64 %432, %262
  br i1 %433, label %434, label %263, !llvm.loop !238

434:                                              ; preds = %246, %429
  %435 = phi i32 [ %431, %429 ], [ %248, %246 ]
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %438, label %437

437:                                              ; preds = %434
  tail call void @glEnd() #14
  br label %438

438:                                              ; preds = %47, %251, %437, %434
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_drawMappedFacesTex(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3, i32 %4) #0 !PGOFuncName !239 {
  tail call fastcc void @emDM_drawFacesTex_common(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_drawMappedFacesGLSL(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !240 {
  %5 = alloca %struct.DMVertexAttribs, align 8
  %6 = alloca %struct.GPUVertexAttribs, align 4
  %7 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.BMEditMesh, ptr %8, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !145
  %12 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 53
  %15 = load ptr, ptr %14, align 8, !tbaa !206
  %16 = tail call ptr %15(ptr noundef %0, i32 noundef 8) #14
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 2564, ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %5, i8 0, i64 376, i1 false)
  tail call fastcc void @emDM_ensureVertNormals(ptr noundef %0) #16
  tail call fastcc void @emDM_ensurePolyNormals(ptr noundef %0) #16
  %17 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !126
  %19 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !128
  tail call void @glShadeModel(i32 noundef 7425) #14
  %21 = icmp eq ptr %16, null
  %22 = select i1 %21, i8 9, i8 13
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %9, i8 noundef zeroext %22) #14
  %23 = getelementptr inbounds %struct.BMEditMesh, ptr %8, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !52
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %150

26:                                               ; preds = %4
  %27 = icmp eq ptr %2, null
  %28 = icmp eq ptr %13, null
  br label %29

29:                                               ; preds = %26, %140
  %30 = phi i64 [ 0, %26 ], [ %143, %140 ]
  %31 = phi i32 [ -1, %26 ], [ %142, %140 ]
  %32 = phi i8 [ 0, %26 ], [ %141, %140 ]
  %33 = getelementptr inbounds [3 x ptr], ptr %11, i64 %30
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !146
  br i1 %27, label %41, label %37

37:                                               ; preds = %29
  %38 = call fastcc i32 @_bm_elem_index_get(ptr noundef %36) #16
  %39 = call i32 %2(ptr noundef %3, i32 noundef %38) #14
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %140, label %41

41:                                               ; preds = %37, %29
  %42 = getelementptr inbounds %struct.BMFace, ptr %36, i64 0, i32 5
  %43 = load i16, ptr %42, align 8, !tbaa !148
  %44 = sext i16 %43 to i32
  %45 = add nsw i32 %44, 1
  %46 = icmp eq i32 %45, %31
  br i1 %46, label %56, label %47

47:                                               ; preds = %41
  %48 = icmp eq i32 %31, -1
  br i1 %48, label %50, label %49

49:                                               ; preds = %47
  call void @glEnd() #14
  br label %50

50:                                               ; preds = %49, %47
  %51 = call i32 %1(i32 noundef %45, ptr noundef nonnull %6) #14
  %52 = trunc i32 %51 to i8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  call void @DM_vertex_attributes_from_gpu(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %5) #14
  br label %55

55:                                               ; preds = %54, %50
  call void @glBegin(i32 noundef 4) #14
  br label %56

56:                                               ; preds = %55, %41
  %57 = phi i8 [ %52, %55 ], [ %32, %41 ]
  %58 = phi i32 [ %45, %55 ], [ %31, %41 ]
  %59 = icmp eq i8 %57, 0
  br i1 %59, label %140, label %60

60:                                               ; preds = %56
  br i1 %21, label %61, label %95

61:                                               ; preds = %60
  %62 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %36, i8 noundef zeroext 8) #16, !range !236
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %61
  br i1 %28, label %82, label %65

65:                                               ; preds = %64
  %66 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %36) #16
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [3 x float], ptr %20, i64 %67
  call void @glNormal3fv(ptr noundef %68) #14
  br label %69

69:                                               ; preds = %65, %69
  %70 = phi i64 [ 0, %65 ], [ %80, %69 ]
  %71 = getelementptr inbounds ptr, ptr %33, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  %73 = trunc i64 %70 to i32
  call fastcc void @emdm_pass_attrib_vertex_glsl(ptr noundef nonnull %5, ptr noundef %72, i32 noundef %73) #16
  %74 = load ptr, ptr %71, align 8, !tbaa !34
  %75 = getelementptr inbounds %struct.BMLoop, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !153
  %77 = call fastcc i32 @_bm_elem_index_get(ptr noundef %76) #16
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [3 x float], ptr %13, i64 %78
  call void @glVertex3fv(ptr noundef nonnull %79) #14
  %80 = add nuw nsw i64 %70, 1
  %81 = icmp eq i64 %80, 3
  br i1 %81, label %140, label %69, !llvm.loop !241

82:                                               ; preds = %64
  %83 = getelementptr inbounds %struct.BMFace, ptr %36, i64 0, i32 4
  call void @glNormal3fv(ptr noundef nonnull %83) #14
  br label %84

84:                                               ; preds = %82, %84
  %85 = phi i64 [ 0, %82 ], [ %93, %84 ]
  %86 = getelementptr inbounds ptr, ptr %33, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !34
  %88 = trunc i64 %85 to i32
  call fastcc void @emdm_pass_attrib_vertex_glsl(ptr noundef nonnull %5, ptr noundef %87, i32 noundef %88) #16
  %89 = load ptr, ptr %86, align 8, !tbaa !34
  %90 = getelementptr inbounds %struct.BMLoop, ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !153
  %92 = getelementptr inbounds %struct.BMVert, ptr %91, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %92) #14
  %93 = add nuw nsw i64 %85, 1
  %94 = icmp eq i64 %93, 3
  br i1 %94, label %140, label %84, !llvm.loop !242

95:                                               ; preds = %60, %61
  br i1 %28, label %118, label %96

96:                                               ; preds = %95, %113
  %97 = phi i64 [ %116, %113 ], [ 0, %95 ]
  %98 = getelementptr inbounds ptr, ptr %33, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !34
  %100 = getelementptr inbounds %struct.BMLoop, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !153
  %102 = call fastcc i32 @_bm_elem_index_get(ptr noundef %101) #16
  %103 = trunc i64 %97 to i32
  call fastcc void @emdm_pass_attrib_vertex_glsl(ptr noundef nonnull %5, ptr noundef %99, i32 noundef %103) #16
  br i1 %21, label %110, label %104

104:                                              ; preds = %96
  %105 = load ptr, ptr %98, align 8, !tbaa !34
  %106 = call fastcc i32 @_bm_elem_index_get(ptr noundef %105) #16
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [3 x float], ptr %16, i64 %107
  call void @glNormal3fv(ptr noundef nonnull %108) #14
  %109 = sext i32 %102 to i64
  br label %113

110:                                              ; preds = %96
  %111 = sext i32 %102 to i64
  %112 = getelementptr inbounds [3 x float], ptr %18, i64 %111
  call void @glNormal3fv(ptr noundef %112) #14
  br label %113

113:                                              ; preds = %110, %104
  %114 = phi i64 [ %111, %110 ], [ %109, %104 ]
  %115 = getelementptr inbounds [3 x float], ptr %13, i64 %114
  call void @glVertex3fv(ptr noundef nonnull %115) #14
  %116 = add nuw nsw i64 %97, 1
  %117 = icmp eq i64 %116, 3
  br i1 %117, label %140, label %96, !llvm.loop !243

118:                                              ; preds = %95, %132
  %119 = phi i64 [ %138, %132 ], [ 0, %95 ]
  %120 = getelementptr inbounds ptr, ptr %33, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !34
  %122 = trunc i64 %119 to i32
  call fastcc void @emdm_pass_attrib_vertex_glsl(ptr noundef nonnull %5, ptr noundef %121, i32 noundef %122) #16
  %123 = load ptr, ptr %120, align 8, !tbaa !34
  br i1 %21, label %128, label %124

124:                                              ; preds = %118
  %125 = call fastcc i32 @_bm_elem_index_get(ptr noundef %123) #16
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [3 x float], ptr %16, i64 %126
  br label %132

128:                                              ; preds = %118
  %129 = getelementptr inbounds %struct.BMLoop, ptr %123, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !153
  %131 = getelementptr inbounds %struct.BMVert, ptr %130, i64 0, i32 3
  br label %132

132:                                              ; preds = %128, %124
  %133 = phi ptr [ %131, %128 ], [ %127, %124 ]
  call void @glNormal3fv(ptr noundef nonnull %133) #14
  %134 = load ptr, ptr %120, align 8, !tbaa !34
  %135 = getelementptr inbounds %struct.BMLoop, ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !153
  %137 = getelementptr inbounds %struct.BMVert, ptr %136, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %137) #14
  %138 = add nuw nsw i64 %119, 1
  %139 = icmp eq i64 %138, 3
  br i1 %139, label %140, label %118, !llvm.loop !244

140:                                              ; preds = %113, %132, %69, %84, %56, %37
  %141 = phi i8 [ %32, %37 ], [ 0, %56 ], [ %57, %84 ], [ %57, %69 ], [ %57, %132 ], [ %57, %113 ]
  %142 = phi i32 [ %31, %37 ], [ %58, %56 ], [ %58, %84 ], [ %58, %69 ], [ %58, %132 ], [ %58, %113 ]
  %143 = add nuw nsw i64 %30, 1
  %144 = load i32, ptr %23, align 8, !tbaa !52
  %145 = sext i32 %144 to i64
  %146 = icmp slt i64 %143, %145
  br i1 %146, label %29, label %147, !llvm.loop !245

147:                                              ; preds = %140
  %148 = icmp eq i32 %142, -1
  br i1 %148, label %150, label %149

149:                                              ; preds = %147
  call void @glEnd() #14
  br label %150

150:                                              ; preds = %4, %149, %147
  call void @llvm.lifetime.end.p0(i64 2564, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %5) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_drawMappedFacesMat(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !246 {
  %5 = alloca %struct.DMVertexAttribs, align 8
  %6 = alloca %struct.GPUVertexAttribs, align 4
  %7 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.BMEditMesh, ptr %8, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !145
  %12 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 53
  %15 = load ptr, ptr %14, align 8, !tbaa !206
  %16 = tail call ptr %15(ptr noundef %0, i32 noundef 8) #14
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %5, i8 0, i64 376, i1 false)
  call void @llvm.lifetime.start.p0(i64 2564, ptr nonnull %6) #15
  tail call fastcc void @emDM_ensureVertNormals(ptr noundef %0) #16
  tail call fastcc void @emDM_ensurePolyNormals(ptr noundef %0) #16
  %17 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !126
  %19 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !128
  tail call void @glShadeModel(i32 noundef 7425) #14
  %21 = icmp eq ptr %16, null
  %22 = select i1 %21, i8 9, i8 13
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %9, i8 noundef zeroext %22) #14
  %23 = getelementptr inbounds %struct.BMEditMesh, ptr %8, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !52
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %140

26:                                               ; preds = %4
  %27 = icmp eq ptr %2, null
  %28 = icmp eq ptr %13, null
  br label %29

29:                                               ; preds = %26, %131
  %30 = phi i64 [ 0, %26 ], [ %133, %131 ]
  %31 = phi i32 [ -1, %26 ], [ %132, %131 ]
  %32 = getelementptr inbounds [3 x ptr], ptr %11, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.BMLoop, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !146
  br i1 %27, label %40, label %36

36:                                               ; preds = %29
  %37 = call fastcc i32 @_bm_elem_index_get(ptr noundef %35) #16
  %38 = call zeroext i8 %2(ptr noundef %3, i32 noundef %37) #14
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %131, label %40

40:                                               ; preds = %36, %29
  %41 = getelementptr inbounds %struct.BMFace, ptr %35, i64 0, i32 5
  %42 = load i16, ptr %41, align 8, !tbaa !148
  %43 = sext i16 %42 to i32
  %44 = add nsw i32 %43, 1
  %45 = icmp eq i32 %44, %31
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = icmp eq i32 %31, -1
  br i1 %47, label %49, label %48

48:                                               ; preds = %46
  call void @glEnd() #14
  br label %49

49:                                               ; preds = %48, %46
  call void %1(ptr noundef %3, i32 noundef %44, ptr noundef nonnull %6) #14
  call void @DM_vertex_attributes_from_gpu(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %5) #14
  call void @glBegin(i32 noundef 4) #14
  br label %50

50:                                               ; preds = %49, %40
  %51 = phi i32 [ %44, %49 ], [ %31, %40 ]
  br i1 %21, label %52, label %86

52:                                               ; preds = %50
  %53 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %35, i8 noundef zeroext 8) #16, !range !236
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %86

55:                                               ; preds = %52
  br i1 %28, label %73, label %56

56:                                               ; preds = %55
  %57 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %35) #16
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [3 x float], ptr %20, i64 %58
  call void @glNormal3fv(ptr noundef %59) #14
  br label %60

60:                                               ; preds = %56, %60
  %61 = phi i64 [ 0, %56 ], [ %71, %60 ]
  %62 = getelementptr inbounds ptr, ptr %32, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !34
  %64 = trunc i64 %61 to i32
  call fastcc void @emdm_pass_attrib_vertex_glsl(ptr noundef nonnull %5, ptr noundef %63, i32 noundef %64) #16
  %65 = load ptr, ptr %62, align 8, !tbaa !34
  %66 = getelementptr inbounds %struct.BMLoop, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !153
  %68 = call fastcc i32 @_bm_elem_index_get(ptr noundef %67) #16
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [3 x float], ptr %13, i64 %69
  call void @glVertex3fv(ptr noundef nonnull %70) #14
  %71 = add nuw nsw i64 %61, 1
  %72 = icmp eq i64 %71, 3
  br i1 %72, label %131, label %60, !llvm.loop !247

73:                                               ; preds = %55
  %74 = getelementptr inbounds %struct.BMFace, ptr %35, i64 0, i32 4
  call void @glNormal3fv(ptr noundef nonnull %74) #14
  br label %75

75:                                               ; preds = %73, %75
  %76 = phi i64 [ 0, %73 ], [ %84, %75 ]
  %77 = getelementptr inbounds ptr, ptr %32, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !34
  %79 = trunc i64 %76 to i32
  call fastcc void @emdm_pass_attrib_vertex_glsl(ptr noundef nonnull %5, ptr noundef %78, i32 noundef %79) #16
  %80 = load ptr, ptr %77, align 8, !tbaa !34
  %81 = getelementptr inbounds %struct.BMLoop, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !153
  %83 = getelementptr inbounds %struct.BMVert, ptr %82, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %83) #14
  %84 = add nuw nsw i64 %76, 1
  %85 = icmp eq i64 %84, 3
  br i1 %85, label %131, label %75, !llvm.loop !248

86:                                               ; preds = %50, %52
  br i1 %28, label %109, label %87

87:                                               ; preds = %86, %104
  %88 = phi i64 [ %107, %104 ], [ 0, %86 ]
  %89 = getelementptr inbounds ptr, ptr %32, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !34
  %91 = getelementptr inbounds %struct.BMLoop, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !153
  %93 = call fastcc i32 @_bm_elem_index_get(ptr noundef %92) #16
  %94 = trunc i64 %88 to i32
  call fastcc void @emdm_pass_attrib_vertex_glsl(ptr noundef nonnull %5, ptr noundef %90, i32 noundef %94) #16
  br i1 %21, label %101, label %95

95:                                               ; preds = %87
  %96 = load ptr, ptr %89, align 8, !tbaa !34
  %97 = call fastcc i32 @_bm_elem_index_get(ptr noundef %96) #16
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [3 x float], ptr %16, i64 %98
  call void @glNormal3fv(ptr noundef nonnull %99) #14
  %100 = sext i32 %93 to i64
  br label %104

101:                                              ; preds = %87
  %102 = sext i32 %93 to i64
  %103 = getelementptr inbounds [3 x float], ptr %18, i64 %102
  call void @glNormal3fv(ptr noundef %103) #14
  br label %104

104:                                              ; preds = %101, %95
  %105 = phi i64 [ %102, %101 ], [ %100, %95 ]
  %106 = getelementptr inbounds [3 x float], ptr %13, i64 %105
  call void @glVertex3fv(ptr noundef nonnull %106) #14
  %107 = add nuw nsw i64 %88, 1
  %108 = icmp eq i64 %107, 3
  br i1 %108, label %131, label %87, !llvm.loop !249

109:                                              ; preds = %86, %123
  %110 = phi i64 [ %129, %123 ], [ 0, %86 ]
  %111 = getelementptr inbounds ptr, ptr %32, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !34
  %113 = trunc i64 %110 to i32
  call fastcc void @emdm_pass_attrib_vertex_glsl(ptr noundef nonnull %5, ptr noundef %112, i32 noundef %113) #16
  %114 = load ptr, ptr %111, align 8, !tbaa !34
  br i1 %21, label %119, label %115

115:                                              ; preds = %109
  %116 = call fastcc i32 @_bm_elem_index_get(ptr noundef %114) #16
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [3 x float], ptr %16, i64 %117
  br label %123

119:                                              ; preds = %109
  %120 = getelementptr inbounds %struct.BMLoop, ptr %114, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !153
  %122 = getelementptr inbounds %struct.BMVert, ptr %121, i64 0, i32 3
  br label %123

123:                                              ; preds = %119, %115
  %124 = phi ptr [ %122, %119 ], [ %118, %115 ]
  call void @glNormal3fv(ptr noundef nonnull %124) #14
  %125 = load ptr, ptr %111, align 8, !tbaa !34
  %126 = getelementptr inbounds %struct.BMLoop, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !153
  %128 = getelementptr inbounds %struct.BMVert, ptr %127, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %128) #14
  %129 = add nuw nsw i64 %110, 1
  %130 = icmp eq i64 %129, 3
  br i1 %130, label %131, label %109, !llvm.loop !250

131:                                              ; preds = %104, %123, %60, %75, %36
  %132 = phi i32 [ %31, %36 ], [ %51, %75 ], [ %51, %60 ], [ %51, %123 ], [ %51, %104 ]
  %133 = add nuw nsw i64 %30, 1
  %134 = load i32, ptr %23, align 8, !tbaa !52
  %135 = sext i32 %134 to i64
  %136 = icmp slt i64 %133, %135
  br i1 %136, label %29, label %137, !llvm.loop !251

137:                                              ; preds = %131
  %138 = icmp eq i32 %132, -1
  br i1 %138, label %140, label %139

139:                                              ; preds = %137
  call void @glEnd() #14
  br label %140

140:                                              ; preds = %4, %139, %137
  call void @llvm.lifetime.end.p0(i64 2564, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %5) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_drawFacesTex(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3, i32 %4) #0 !PGOFuncName !252 {
  tail call fastcc void @emDM_drawFacesTex_common(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_drawFacesGLSL(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !253 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 91
  %4 = load ptr, ptr %3, align 8, !tbaa !254
  tail call void %4(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_drawUVEdges(ptr nocapture noundef readonly %0) #0 !PGOFuncName !255 {
  %2 = alloca %struct.BMIter, align 8
  %3 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #15
  %6 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 26
  %7 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %6, i32 noundef 16) #14
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %37, label %9

9:                                                ; preds = %1
  tail call void @glBegin(i32 noundef 1) #14
  %10 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %5, i8 noundef zeroext 3) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %36, label %12

12:                                               ; preds = %9
  %13 = sext i32 %7 to i64
  br label %14

14:                                               ; preds = %12, %33
  %15 = phi ptr [ %10, %12 ], [ %34, %33 ]
  %16 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %15, i8 noundef zeroext 2) #16, !range !236
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.BMFace, ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !170
  %21 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !256
  %23 = load ptr, ptr %22, align 8, !tbaa !200
  %24 = getelementptr inbounds i8, ptr %23, i64 %13
  br label %25

25:                                               ; preds = %25, %18
  %26 = phi ptr [ %20, %18 ], [ %31, %25 ]
  %27 = phi ptr [ %24, %18 ], [ %29, %25 ]
  %28 = load ptr, ptr %26, align 8, !tbaa !200
  %29 = getelementptr inbounds i8, ptr %28, i64 %13
  call void @glVertex2fv(ptr noundef %29) #14
  call void @glVertex2fv(ptr noundef %27) #14
  %30 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !175
  %32 = icmp eq ptr %31, %20
  br i1 %32, label %33, label %25, !llvm.loop !257

33:                                               ; preds = %25, %14
  %34 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #16
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %14, !llvm.loop !258

36:                                               ; preds = %33, %9
  call void @glEnd() #14
  br label %37

37:                                               ; preds = %1, %36
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @emDM_release(ptr noundef %0) #0 !PGOFuncName !259 {
  %2 = tail call i32 @DM_release(ptr noundef %0) #14
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %29, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %9(ptr noundef nonnull %6) #14
  %10 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !126
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %14(ptr noundef nonnull %11) #14
  br label %15

15:                                               ; preds = %13, %8
  %16 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !128
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef nonnull %17) #14
  br label %21

21:                                               ; preds = %15, %19, %4
  %22 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !223
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %26(ptr noundef nonnull %23) #14
  br label %27

27:                                               ; preds = %25, %21
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %28(ptr noundef nonnull %0) #14
  br label %29

29:                                               ; preds = %27, %1
  ret void
}

; Function Attrs: optsize
declare void @DM_add_vert_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !260 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #16
  %4 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #16
  ret ptr %4
}

; Function Attrs: optsize
declare void @DM_set_vert_data(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !261 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !262
  %4 = tail call ptr %3(ptr noundef %0) #14
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_editmesh_statvis_calc(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load i8, ptr %2, align 4, !tbaa !264
  switch i8 %4, label %77 [
    i8 0, label %5
    i8 1, label %22
    i8 2, label %45
    i8 3, label %54
    i8 4, label %70
  ]

5:                                                ; preds = %3
  tail call void @BKE_editmesh_color_ensure(ptr noundef %0, i8 noundef zeroext 8) #14
  %6 = icmp eq ptr %1, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !128
  br label %10

10:                                               ; preds = %5, %7
  %11 = phi ptr [ %9, %7 ], [ null, %5 ]
  %12 = getelementptr inbounds %struct.MeshStatVis, ptr %2, i64 0, i32 3
  %13 = load float, ptr %12, align 4, !tbaa !266
  %14 = fdiv float %13, 0x400921FB60000000
  %15 = getelementptr inbounds %struct.MeshStatVis, ptr %2, i64 0, i32 4
  %16 = load float, ptr %15, align 4, !tbaa !267
  %17 = fdiv float %16, 0x400921FB60000000
  %18 = getelementptr inbounds %struct.MeshStatVis, ptr %2, i64 0, i32 2
  %19 = load i8, ptr %18, align 1, !tbaa !268
  %20 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !235
  tail call fastcc void @statvis_calc_overhang(ptr noundef %0, ptr noundef %11, float noundef %14, float noundef %17, i8 noundef zeroext %19, ptr noundef %21) #16
  br label %77

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 14
  %24 = load ptr, ptr %23, align 8, !tbaa !269
  %25 = getelementptr inbounds %struct.Object, ptr %24, i64 0, i32 47
  %26 = tail call float @mat4_to_scale(ptr noundef nonnull %25) #14
  %27 = fdiv float 1.000000e+00, %26
  tail call void @BKE_editmesh_color_ensure(ptr noundef %0, i8 noundef zeroext 8) #14
  %28 = icmp eq ptr %1, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %1, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !98
  br label %32

32:                                               ; preds = %22, %29
  %33 = phi ptr [ %31, %29 ], [ null, %22 ]
  %34 = getelementptr inbounds %struct.MeshStatVis, ptr %2, i64 0, i32 5
  %35 = load float, ptr %34, align 4, !tbaa !270
  %36 = fmul float %27, %35
  %37 = getelementptr inbounds %struct.MeshStatVis, ptr %2, i64 0, i32 6
  %38 = load float, ptr %37, align 4, !tbaa !271
  %39 = fmul float %27, %38
  %40 = getelementptr inbounds %struct.MeshStatVis, ptr %2, i64 0, i32 7
  %41 = load i8, ptr %40, align 4, !tbaa !272
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 10
  %44 = load ptr, ptr %43, align 8, !tbaa !235
  tail call fastcc void @statvis_calc_thickness(ptr noundef nonnull %0, ptr noundef %33, float noundef %36, float noundef %39, i32 noundef %42, ptr noundef %44) #16
  br label %77

45:                                               ; preds = %3
  tail call void @BKE_editmesh_color_ensure(ptr noundef %0, i8 noundef zeroext 8) #14
  %46 = icmp eq ptr %1, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %1, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !98
  br label %50

50:                                               ; preds = %45, %47
  %51 = phi ptr [ %49, %47 ], [ null, %45 ]
  %52 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !235
  tail call fastcc void @statvis_calc_intersect(ptr noundef %0, ptr noundef %51, ptr noundef %53) #16
  br label %77

54:                                               ; preds = %3
  tail call void @BKE_editmesh_color_ensure(ptr noundef %0, i8 noundef zeroext 8) #14
  %55 = icmp eq ptr %1, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %54
  tail call fastcc void @emDM_ensurePolyNormals(ptr noundef nonnull %1) #16
  %57 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %1, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !98
  %59 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %1, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !128
  br label %61

61:                                               ; preds = %54, %56
  %62 = phi ptr [ %58, %56 ], [ null, %54 ]
  %63 = phi ptr [ %60, %56 ], [ null, %54 ]
  %64 = getelementptr inbounds %struct.MeshStatVis, ptr %2, i64 0, i32 9
  %65 = load float, ptr %64, align 4, !tbaa !273
  %66 = getelementptr inbounds %struct.MeshStatVis, ptr %2, i64 0, i32 10
  %67 = load float, ptr %66, align 4, !tbaa !274
  %68 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 10
  %69 = load ptr, ptr %68, align 8, !tbaa !235
  tail call fastcc void @statvis_calc_distort(ptr noundef %0, ptr noundef %62, ptr noundef %63, float noundef %65, float noundef %67, ptr noundef %69) #16
  br label %77

70:                                               ; preds = %3
  tail call void @BKE_editmesh_color_ensure(ptr noundef %0, i8 noundef zeroext 1) #14
  %71 = getelementptr inbounds %struct.MeshStatVis, ptr %2, i64 0, i32 11
  %72 = load float, ptr %71, align 4, !tbaa !275
  %73 = getelementptr inbounds %struct.MeshStatVis, ptr %2, i64 0, i32 12
  %74 = load float, ptr %73, align 4, !tbaa !276
  %75 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 8
  %76 = load ptr, ptr %75, align 8, !tbaa !234
  tail call fastcc void @statvis_calc_sharp(ptr noundef %0, float noundef %72, float noundef %74, ptr noundef %76) #16
  br label %77

77:                                               ; preds = %3, %70, %61, %50, %32, %10
  ret void
}

; Function Attrs: optsize
declare void @BKE_editmesh_color_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @statvis_calc_overhang(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, float noundef %3, i8 noundef zeroext %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !277 {
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x i8], align 4
  %10 = alloca [4 x i8], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  %13 = load ptr, ptr %0, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #15
  %14 = fsub float %3, %2
  %15 = fdiv float 1.000000e+00, %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  store i32 -12566464, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #15
  store i32 -16777216, ptr %10, align 4
  call fastcc void @axis_from_enum_v3(ptr noundef nonnull %8, i8 noundef zeroext %4) #16
  %16 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 14
  %17 = load ptr, ptr %16, align 8, !tbaa !269
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 47
  call void @mul_transposed_mat3_m4_v3(ptr noundef nonnull %20, ptr noundef nonnull %8) #14
  call fastcc void @normalize_v3(ptr noundef nonnull %8) #16
  br label %21

21:                                               ; preds = %19, %6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #15
  call void @weight_to_rgb(ptr noundef nonnull %11, float noundef 1.000000e+00) #14
  call void @rgb_float_to_uchar(ptr noundef nonnull %10, ptr noundef nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #15
  %22 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef %13, i8 noundef zeroext 3) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %55, label %24

24:                                               ; preds = %21
  %25 = icmp eq ptr %1, null
  br label %26

26:                                               ; preds = %24, %51
  %27 = phi i64 [ 0, %24 ], [ %53, %51 ]
  %28 = phi ptr [ %22, %24 ], [ %52, %51 ]
  %29 = getelementptr inbounds [3 x float], ptr %1, i64 %27
  %30 = getelementptr inbounds %struct.BMFace, ptr %28, i64 0, i32 4
  %31 = select i1 %25, ptr %30, ptr %29
  %32 = call float @angle_normalized_v3v3(ptr noundef %31, ptr noundef nonnull %8) #14
  %33 = fdiv float %32, 0x400921FB60000000
  %34 = fcmp ugt float %33, %3
  br i1 %34, label %48, label %35

35:                                               ; preds = %26
  %36 = fcmp ult float %33, %2
  br i1 %36, label %48, label %37

37:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #15
  %38 = fsub float %33, %2
  %39 = fmul float %15, %38
  %40 = fsub float 1.000000e+00, %39
  %41 = fcmp olt float %40, 0.000000e+00
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = fcmp ogt float %40, 1.000000e+00
  br i1 %43, label %44, label %45

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %37, %42, %44
  %46 = phi float [ 1.000000e+00, %44 ], [ %40, %42 ], [ 0.000000e+00, %37 ]
  call void @weight_to_rgb(ptr noundef nonnull %12, float noundef %46) #14
  %47 = getelementptr inbounds [4 x i8], ptr %5, i64 %27
  call void @rgb_float_to_uchar(ptr noundef %47, ptr noundef nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #15
  br label %51

48:                                               ; preds = %35, %26
  %49 = phi ptr [ %10, %35 ], [ %9, %26 ]
  %50 = getelementptr inbounds [4 x i8], ptr %5, i64 %27
  call fastcc void @copy_v4_v4_char(ptr noundef %50, ptr noundef nonnull %49) #16
  br label %51

51:                                               ; preds = %48, %45
  %52 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #16
  %53 = add nuw i64 %27, 1
  %54 = icmp eq ptr %52, null
  br i1 %54, label %55, label %26, !llvm.loop !278

55:                                               ; preds = %51, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  ret void
}

; Function Attrs: optsize
declare float @mat4_to_scale(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @statvis_calc_thickness(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !279 {
  %7 = alloca [32 x [2 x float]], align 16
  %8 = alloca [4 x i8], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca [3 x float], align 4
  %14 = icmp slt i32 %4, 32
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #15
  %15 = load ptr, ptr %0, align 8, !tbaa !38
  %16 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !52
  %18 = fsub float %3, %2
  %19 = fdiv float 1.000000e+00, %18
  %20 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  store i32 -12566464, ptr %8, align 4
  %22 = getelementptr inbounds %struct.BMesh, ptr %15, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !54
  tail call void @fill_vn_fl(ptr noundef %5, i32 noundef %23, float noundef %3) #14
  br i1 %14, label %24, label %33

24:                                               ; preds = %6
  call void @BLI_jitter_init(ptr noundef nonnull %7, i32 noundef %4) #14
  %25 = icmp sgt i32 %4, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %24
  %27 = zext nneg i32 %4 to i64
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi i64 [ 0, %26 ], [ %31, %28 ]
  %30 = getelementptr inbounds [32 x [2 x float]], ptr %7, i64 0, i64 %29
  call fastcc void @uv_from_jitter_v2(ptr noundef nonnull %30) #16
  %31 = add nuw nsw i64 %29, 1
  %32 = icmp eq i64 %31, %27
  br i1 %32, label %33, label %28, !llvm.loop !280

33:                                               ; preds = %28, %24, %6
  call void @BM_mesh_elem_index_ensure(ptr noundef %15, i8 noundef zeroext 8) #14
  %34 = icmp eq ptr %1, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  call void @BM_mesh_elem_index_ensure(ptr noundef %15, i8 noundef zeroext 1) #14
  br label %36

36:                                               ; preds = %35, %33
  %37 = call ptr @BKE_bmbvh_new_from_editmesh(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %1, i8 noundef zeroext 0) #14
  %38 = icmp sgt i32 %17, 0
  br i1 %38, label %39, label %148

39:                                               ; preds = %36
  %40 = icmp sgt i32 %4, 0
  %41 = zext nneg i32 %17 to i64
  %42 = zext nneg i32 %4 to i64
  br label %43

43:                                               ; preds = %39, %145
  %44 = phi i64 [ 0, %39 ], [ %146, %145 ]
  %45 = getelementptr inbounds [3 x ptr], ptr %21, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !34
  %47 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !146
  %49 = call fastcc i32 @_bm_elem_index_get(ptr noundef %48) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #15
  %50 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !153
  br i1 %34, label %70, label %52

52:                                               ; preds = %43
  %53 = call fastcc i32 @_bm_elem_index_get(ptr noundef %51) #16
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [3 x float], ptr %1, i64 %54
  %56 = getelementptr inbounds ptr, ptr %45, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !34
  %58 = getelementptr inbounds %struct.BMLoop, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !153
  %60 = call fastcc i32 @_bm_elem_index_get(ptr noundef %59) #16
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [3 x float], ptr %1, i64 %61
  %63 = getelementptr inbounds ptr, ptr %45, i64 2
  %64 = load ptr, ptr %63, align 8, !tbaa !34
  %65 = getelementptr inbounds %struct.BMLoop, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !153
  %67 = call fastcc i32 @_bm_elem_index_get(ptr noundef %66) #16
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [3 x float], ptr %1, i64 %68
  br label %82

70:                                               ; preds = %43
  %71 = getelementptr inbounds %struct.BMVert, ptr %51, i64 0, i32 2
  %72 = getelementptr inbounds ptr, ptr %45, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !34
  %74 = getelementptr inbounds %struct.BMLoop, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !153
  %76 = getelementptr inbounds %struct.BMVert, ptr %75, i64 0, i32 2
  %77 = getelementptr inbounds ptr, ptr %45, i64 2
  %78 = load ptr, ptr %77, align 8, !tbaa !34
  %79 = getelementptr inbounds %struct.BMLoop, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !153
  %81 = getelementptr inbounds %struct.BMVert, ptr %80, i64 0, i32 2
  br label %82

82:                                               ; preds = %70, %52
  %83 = phi ptr [ %69, %52 ], [ %81, %70 ]
  %84 = phi ptr [ %62, %52 ], [ %76, %70 ]
  %85 = phi ptr [ %55, %52 ], [ %71, %70 ]
  %86 = call float @normal_tri_v3(ptr noundef nonnull %10, ptr noundef %83, ptr noundef %84, ptr noundef %85) #14
  br i1 %14, label %87, label %119

87:                                               ; preds = %82
  br i1 %40, label %88, label %145

88:                                               ; preds = %87
  %89 = sext i32 %49 to i64
  %90 = getelementptr inbounds float, ptr %5, i64 %89
  br label %91

91:                                               ; preds = %88, %116
  %92 = phi i64 [ 0, %88 ], [ %117, %116 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #15
  %93 = load float, ptr %90, align 4, !tbaa !141
  store float %93, ptr %11, align 4, !tbaa !141
  %94 = getelementptr inbounds [32 x [2 x float]], ptr %7, i64 0, i64 %92
  call void @interp_v3_v3v3v3_uv(ptr noundef nonnull %9, ptr noundef %85, ptr noundef %84, ptr noundef %83, ptr noundef nonnull %94) #14
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %9, ptr noundef nonnull %10) #16
  %95 = call ptr @BKE_bmbvh_ray_cast(ptr noundef %37, ptr noundef nonnull %9, ptr noundef nonnull %10, float noundef 0.000000e+00, ptr noundef nonnull %11, ptr noundef null, ptr noundef null) #14
  %96 = icmp eq ptr %95, null
  br i1 %96, label %116, label %97

97:                                               ; preds = %91
  %98 = load float, ptr %11, align 4, !tbaa !141
  %99 = load float, ptr %90, align 4, !tbaa !141
  %100 = fcmp olt float %98, %99
  br i1 %100, label %101, label %116

101:                                              ; preds = %97
  %102 = load ptr, ptr %45, align 8, !tbaa !34
  %103 = getelementptr inbounds %struct.BMLoop, ptr %102, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !146
  %105 = getelementptr inbounds %struct.BMFace, ptr %104, i64 0, i32 4
  %106 = getelementptr inbounds %struct.BMFace, ptr %95, i64 0, i32 4
  %107 = call fastcc float @dot_v3v3(ptr noundef nonnull %105, ptr noundef nonnull %106) #16
  %108 = call float @llvm.fabs.f32(float %107)
  %109 = fsub float 1.000000e+00, %108
  %110 = fmul float %109, %109
  %111 = fmul float %109, %110
  %112 = fsub float 1.000000e+00, %111
  %113 = fdiv float %98, %112
  %114 = fcmp olt float %113, %99
  br i1 %114, label %115, label %116

115:                                              ; preds = %101
  store float %113, ptr %90, align 4, !tbaa !141
  br label %116

116:                                              ; preds = %101, %115, %97, %91
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #15
  %117 = add nuw nsw i64 %92, 1
  %118 = icmp eq i64 %117, %42
  br i1 %118, label %145, label %91, !llvm.loop !281

119:                                              ; preds = %82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #15
  %120 = sext i32 %49 to i64
  %121 = getelementptr inbounds float, ptr %5, i64 %120
  %122 = load float, ptr %121, align 4, !tbaa !141
  store float %122, ptr %12, align 4, !tbaa !141
  call void @mid_v3_v3v3v3(ptr noundef nonnull %9, ptr noundef %85, ptr noundef %84, ptr noundef %83) #14
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %9, ptr noundef nonnull %10) #16
  %123 = call ptr @BKE_bmbvh_ray_cast(ptr noundef %37, ptr noundef nonnull %9, ptr noundef nonnull %10, float noundef 0.000000e+00, ptr noundef nonnull %12, ptr noundef null, ptr noundef null) #14
  %124 = icmp eq ptr %123, null
  br i1 %124, label %144, label %125

125:                                              ; preds = %119
  %126 = load float, ptr %12, align 4, !tbaa !141
  %127 = load float, ptr %121, align 4, !tbaa !141
  %128 = fcmp olt float %126, %127
  br i1 %128, label %129, label %144

129:                                              ; preds = %125
  %130 = load ptr, ptr %45, align 8, !tbaa !34
  %131 = getelementptr inbounds %struct.BMLoop, ptr %130, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !146
  %133 = getelementptr inbounds %struct.BMFace, ptr %132, i64 0, i32 4
  %134 = getelementptr inbounds %struct.BMFace, ptr %123, i64 0, i32 4
  %135 = call fastcc float @dot_v3v3(ptr noundef nonnull %133, ptr noundef nonnull %134) #16
  %136 = call float @llvm.fabs.f32(float %135)
  %137 = fsub float 1.000000e+00, %136
  %138 = fmul float %137, %137
  %139 = fmul float %137, %138
  %140 = fsub float 1.000000e+00, %139
  %141 = fdiv float %126, %140
  %142 = fcmp olt float %141, %127
  br i1 %142, label %143, label %144

143:                                              ; preds = %129
  store float %141, ptr %121, align 4, !tbaa !141
  br label %144

144:                                              ; preds = %129, %143, %125, %119
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #15
  br label %145

145:                                              ; preds = %116, %87, %144
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #15
  %146 = add nuw nsw i64 %44, 1
  %147 = icmp eq i64 %146, %41
  br i1 %147, label %148, label %43, !llvm.loop !282

148:                                              ; preds = %145, %36
  call void @BKE_bmbvh_free(ptr noundef %37) #14
  %149 = load i32, ptr %22, align 4, !tbaa !54
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %172

151:                                              ; preds = %148, %167
  %152 = phi i64 [ %168, %167 ], [ 0, %148 ]
  %153 = getelementptr inbounds float, ptr %5, i64 %152
  %154 = load float, ptr %153, align 4, !tbaa !141
  %155 = fcmp olt float %154, %3
  br i1 %155, label %156, label %166

156:                                              ; preds = %151
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #15
  %157 = fsub float %154, %2
  %158 = fmul float %19, %157
  %159 = fsub float 1.000000e+00, %158
  %160 = fcmp olt float %159, 0.000000e+00
  br i1 %160, label %164, label %161

161:                                              ; preds = %156
  %162 = fcmp ogt float %159, 1.000000e+00
  br i1 %162, label %163, label %164

163:                                              ; preds = %161
  br label %164

164:                                              ; preds = %156, %161, %163
  %165 = phi float [ 1.000000e+00, %163 ], [ %159, %161 ], [ 0.000000e+00, %156 ]
  call void @weight_to_rgb(ptr noundef nonnull %13, float noundef %165) #14
  call void @rgb_float_to_uchar(ptr noundef nonnull %153, ptr noundef nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #15
  br label %167

166:                                              ; preds = %151
  call fastcc void @copy_v4_v4_char(ptr noundef nonnull %153, ptr noundef nonnull %8) #16
  br label %167

167:                                              ; preds = %166, %164
  %168 = add nuw nsw i64 %152, 1
  %169 = load i32, ptr %22, align 4, !tbaa !54
  %170 = sext i32 %169 to i64
  %171 = icmp slt i64 %168, %170
  br i1 %171, label %151, label %172, !llvm.loop !283

172:                                              ; preds = %167, %148
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @statvis_calc_intersect(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !284 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca [2 x [3 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %8 = load ptr, ptr %0, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !54
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 2
  tail call void @llvm.memset.p0.i64(ptr align 1 %2, i8 64, i64 %12, i1 false)
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %8, i8 noundef zeroext 8) #14
  %13 = icmp eq ptr %1, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  tail call void @BM_mesh_elem_index_ensure(ptr noundef nonnull %8, i8 noundef zeroext 1) #14
  br label %15

15:                                               ; preds = %14, %3
  %16 = tail call ptr @BKE_bmbvh_new_from_editmesh(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %1, i8 noundef zeroext 0) #14
  %17 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %8, i8 noundef zeroext 2) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %66, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds [2 x [3 x float]], ptr %5, i64 0, i64 1
  br label %21

21:                                               ; preds = %19, %63
  %22 = phi ptr [ %17, %19 ], [ %64, %63 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  %23 = getelementptr inbounds %struct.BMEdge, ptr %22, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !285
  %25 = icmp eq ptr %24, null
  br i1 %25, label %63, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.BMEdge, ptr %22, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !134
  br i1 %13, label %38, label %29

29:                                               ; preds = %26
  %30 = call fastcc i32 @_bm_elem_index_get(ptr noundef %28) #16
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [3 x float], ptr %1, i64 %31
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %32) #16
  %33 = getelementptr inbounds %struct.BMEdge, ptr %22, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !138
  %35 = call fastcc i32 @_bm_elem_index_get(ptr noundef %34) #16
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [3 x float], ptr %1, i64 %36
  br label %43

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %39) #16
  %40 = getelementptr inbounds %struct.BMEdge, ptr %22, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !138
  %42 = getelementptr inbounds %struct.BMVert, ptr %41, i64 0, i32 2
  br label %43

43:                                               ; preds = %38, %29
  %44 = phi ptr [ %42, %38 ], [ %37, %29 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef nonnull %44) #16
  call void @mid_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %20) #14
  %45 = call ptr @BKE_bmbvh_find_face_segment(ptr noundef %16, ptr noundef nonnull %5, ptr noundef nonnull %20, ptr noundef null, ptr noundef null, ptr noundef null) #14
  %46 = icmp eq ptr %45, null
  br i1 %46, label %63, label %47

47:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #15
  %48 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %45) #16
  call void @weight_to_rgb(ptr noundef nonnull %7, float noundef 1.000000e+00) #14
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [4 x i8], ptr %2, i64 %49
  call void @rgb_float_to_uchar(ptr noundef %50, ptr noundef nonnull %7) #14
  %51 = load ptr, ptr %23, align 8, !tbaa !285
  br label %52

52:                                               ; preds = %52, %47
  %53 = phi ptr [ %51, %47 ], [ %60, %52 ]
  %54 = getelementptr inbounds %struct.BMLoop, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !146
  %56 = call fastcc i32 @_bm_elem_index_get(ptr noundef %55) #16
  call void @weight_to_rgb(ptr noundef nonnull %7, float noundef 1.000000e+00) #14
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [4 x i8], ptr %2, i64 %57
  call void @rgb_float_to_uchar(ptr noundef %58, ptr noundef nonnull %7) #14
  %59 = getelementptr inbounds %struct.BMLoop, ptr %53, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !286
  %61 = icmp eq ptr %60, %51
  br i1 %61, label %62, label %52, !llvm.loop !287

62:                                               ; preds = %52
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #15
  br label %63

63:                                               ; preds = %43, %62, %21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  %64 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #16
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %21, !llvm.loop !288

66:                                               ; preds = %63, %15
  call void @BKE_bmbvh_free(ptr noundef %16) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emDM_ensurePolyNormals(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !289 {
  %2 = alloca %struct.BMIter, align 8
  %3 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = icmp eq ptr %4, null
  br i1 %5, label %36, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !128
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %36

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #15
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %13, i8 noundef zeroext 1) #14
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !54
  %17 = sext i32 %16 to i64
  %18 = mul nsw i64 %17, 12
  %19 = tail call ptr %14(i64 noundef %18, ptr noundef nonnull @__func__.emDM_ensurePolyNormals) #14
  %20 = load ptr, ptr %3, align 8, !tbaa !98
  %21 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %13, i8 noundef zeroext 3) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %10, %23
  %24 = phi i64 [ %30, %23 ], [ 0, %10 ]
  %25 = phi ptr [ %29, %23 ], [ %21, %10 ]
  %26 = trunc i64 %24 to i32
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %25, i32 noundef %26) #16
  %27 = getelementptr inbounds [3 x float], ptr %19, i64 %24
  %28 = call float @BM_face_calc_normal_vcos(ptr noundef %13, ptr noundef nonnull %25, ptr noundef %27, ptr noundef %20) #14
  %29 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #16
  %30 = add nuw i64 %24, 1
  %31 = icmp eq ptr %29, null
  br i1 %31, label %32, label %23, !llvm.loop !290

32:                                               ; preds = %23, %10
  %33 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 7
  %34 = load i8, ptr %33, align 4, !tbaa !291
  %35 = and i8 %34, -9
  store i8 %35, ptr %33, align 4, !tbaa !291
  store ptr %19, ptr %7, align 8, !tbaa !128
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #15
  br label %36

36:                                               ; preds = %32, %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @statvis_calc_distort(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !292 {
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca [4 x i8], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  %11 = load ptr, ptr %0, align 8, !tbaa !38
  %12 = fsub float %4, %3
  %13 = fdiv float 1.000000e+00, %12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  store i32 -12566464, ptr %8, align 4
  %14 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef %11, i8 noundef zeroext 3) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %86, label %16

16:                                               ; preds = %6
  %17 = icmp eq ptr %1, null
  br label %18

18:                                               ; preds = %16, %82
  %19 = phi i64 [ 0, %16 ], [ %84, %82 ]
  %20 = phi ptr [ %14, %16 ], [ %83, %82 ]
  %21 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !182
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %67, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds [3 x float], ptr %2, i64 %19
  %26 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 4
  %27 = select i1 %17, ptr %26, ptr %25
  %28 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !170
  br label %30

30:                                               ; preds = %59, %24
  %31 = phi float [ 0.000000e+00, %24 ], [ %61, %59 ]
  %32 = phi ptr [ %29, %24 ], [ %63, %59 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #15
  br i1 %17, label %54, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !256
  %36 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !153
  %38 = call fastcc i32 @_bm_elem_index_get(ptr noundef %37) #16
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [3 x float], ptr %1, i64 %39
  %41 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !153
  %43 = call fastcc i32 @_bm_elem_index_get(ptr noundef %42) #16
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [3 x float], ptr %1, i64 %44
  %46 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !175
  %48 = getelementptr inbounds %struct.BMLoop, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !153
  %50 = call fastcc i32 @_bm_elem_index_get(ptr noundef %49) #16
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [3 x float], ptr %1, i64 %51
  %53 = call float @normal_tri_v3(ptr noundef nonnull %9, ptr noundef nonnull %40, ptr noundef nonnull %45, ptr noundef nonnull %52) #14
  br label %55

54:                                               ; preds = %30
  call void @BM_loop_calc_face_normal(ptr noundef %32, ptr noundef nonnull %9) #14
  br label %55

55:                                               ; preds = %54, %33
  %56 = call fastcc float @dot_v3v3(ptr noundef %27, ptr noundef nonnull %9) #16
  %57 = fcmp olt float %56, 0.000000e+00
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  call fastcc void @negate_v3(ptr noundef nonnull %9) #16
  br label %59

59:                                               ; preds = %58, %55
  %60 = call float @angle_normalized_v3v3(ptr noundef %27, ptr noundef nonnull %9) #14
  %61 = call fastcc float @max_ff(float noundef %31, float noundef %60) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #15
  %62 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !175
  %64 = icmp eq ptr %63, %29
  br i1 %64, label %65, label %30, !llvm.loop !293

65:                                               ; preds = %59
  %66 = fmul float %61, 2.000000e+00
  br label %67

67:                                               ; preds = %18, %65
  %68 = phi float [ %66, %65 ], [ -1.000000e+00, %18 ]
  %69 = fcmp ult float %68, %3
  br i1 %69, label %80, label %70

70:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #15
  %71 = fsub float %68, %3
  %72 = fmul float %13, %71
  %73 = fcmp olt float %72, 0.000000e+00
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = fcmp ogt float %72, 1.000000e+00
  br i1 %75, label %76, label %77

76:                                               ; preds = %74
  br label %77

77:                                               ; preds = %70, %74, %76
  %78 = phi float [ 1.000000e+00, %76 ], [ %72, %74 ], [ 0.000000e+00, %70 ]
  call void @weight_to_rgb(ptr noundef nonnull %10, float noundef %78) #14
  %79 = getelementptr inbounds [4 x i8], ptr %5, i64 %19
  call void @rgb_float_to_uchar(ptr noundef %79, ptr noundef nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #15
  br label %82

80:                                               ; preds = %67
  %81 = getelementptr inbounds [4 x i8], ptr %5, i64 %19
  call fastcc void @copy_v4_v4_char(ptr noundef %81, ptr noundef nonnull %8) #16
  br label %82

82:                                               ; preds = %80, %77
  %83 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #16
  %84 = add nuw i64 %19, 1
  %85 = icmp eq ptr %83, null
  br i1 %85, label %86, label %18, !llvm.loop !294

86:                                               ; preds = %82, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @statvis_calc_sharp(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !295 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca [4 x i8], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  %8 = load ptr, ptr %0, align 8, !tbaa !38
  %9 = fsub float %2, %1
  %10 = fdiv float 1.000000e+00, %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 -12566464, ptr %6, align 4
  %11 = load i32, ptr %8, align 8, !tbaa !48
  tail call void @fill_vn_fl(ptr noundef %3, i32 noundef %11, float noundef 0xC00921FB60000000) #14
  %12 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef nonnull %8, i8 noundef zeroext 2) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %17, %4
  %15 = load i32, ptr %8, align 8, !tbaa !48
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %36, label %56

17:                                               ; preds = %4, %17
  %18 = phi ptr [ %34, %17 ], [ %12, %4 ]
  %19 = call float @BM_edge_calc_face_angle_signed(ptr noundef nonnull %18) #14
  %20 = getelementptr inbounds %struct.BMEdge, ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !134
  %22 = call fastcc i32 @_bm_elem_index_get(ptr noundef %21) #16
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds float, ptr %3, i64 %23
  %25 = getelementptr inbounds %struct.BMEdge, ptr %18, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !138
  %27 = call fastcc i32 @_bm_elem_index_get(ptr noundef %26) #16
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, ptr %3, i64 %28
  %30 = load float, ptr %24, align 4, !tbaa !141
  %31 = call fastcc float @max_ff(float noundef %30, float noundef %19) #16
  store float %31, ptr %24, align 4, !tbaa !141
  %32 = load float, ptr %29, align 4, !tbaa !141
  %33 = call fastcc float @max_ff(float noundef %32, float noundef %19) #16
  store float %33, ptr %29, align 4, !tbaa !141
  %34 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #16
  %35 = icmp eq ptr %34, null
  br i1 %35, label %14, label %17, !llvm.loop !296

36:                                               ; preds = %14, %51
  %37 = phi i64 [ %52, %51 ], [ 0, %14 ]
  %38 = getelementptr inbounds float, ptr %3, i64 %37
  %39 = load float, ptr %38, align 4, !tbaa !141
  %40 = fcmp ogt float %39, %1
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #15
  %42 = fsub float %39, %1
  %43 = fmul float %10, %42
  %44 = fcmp olt float %43, 0.000000e+00
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = fcmp ogt float %43, 1.000000e+00
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %41, %45, %47
  %49 = phi float [ 1.000000e+00, %47 ], [ %43, %45 ], [ 0.000000e+00, %41 ]
  call void @weight_to_rgb(ptr noundef nonnull %7, float noundef %49) #14
  call void @rgb_float_to_uchar(ptr noundef nonnull %38, ptr noundef nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #15
  br label %51

50:                                               ; preds = %36
  call fastcc void @copy_v4_v4_char(ptr noundef nonnull %38, ptr noundef nonnull %6) #16
  br label %51

51:                                               ; preds = %50, %48
  %52 = add nuw nsw i64 %37, 1
  %53 = load i32, ptr %8, align 8, !tbaa !48
  %54 = sext i32 %53 to i64
  %55 = icmp slt i64 %52, %54
  br i1 %55, label %36, label %56, !llvm.loop !297

56:                                               ; preds = %51, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_editmesh_vertexCos_get(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.CageUserData, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !269
  %8 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !298
  %9 = call ptr @editbmesh_get_derived_cage_and_final(ptr noundef %1, ptr noundef %7, ptr noundef %0, ptr noundef nonnull %4, i64 noundef %8) #14
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = load ptr, ptr %0, align 8, !tbaa !38
  %12 = load i32, ptr %11, align 8, !tbaa !48
  %13 = sext i32 %12 to i64
  %14 = mul nsw i64 %13, 12
  %15 = call ptr %10(i64 noundef %14, ptr noundef nonnull @.str) #14
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %17 = load ptr, ptr %0, align 8, !tbaa !38
  %18 = load i32, ptr %17, align 8, !tbaa !48
  %19 = ashr i32 %18, 5
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 2
  %23 = call ptr %16(i64 noundef %22, ptr noundef nonnull @__func__.BKE_editmesh_vertexCos_get) #14
  %24 = load ptr, ptr %0, align 8, !tbaa !38
  %25 = load i32, ptr %24, align 8, !tbaa !48
  store i32 %25, ptr %5, align 8, !tbaa !299
  %26 = getelementptr inbounds %struct.CageUserData, ptr %5, i64 0, i32 1
  store ptr %15, ptr %26, align 8, !tbaa !301
  %27 = getelementptr inbounds %struct.CageUserData, ptr %5, i64 0, i32 2
  store ptr %23, ptr %27, align 8, !tbaa !302
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 71
  %29 = load ptr, ptr %28, align 8, !tbaa !303
  call void %29(ptr noundef %9, ptr noundef nonnull @cage_mapped_verts_callback, ptr noundef nonnull %5, i32 noundef 0) #14
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %30(ptr noundef %23) #14
  %31 = icmp eq ptr %2, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load ptr, ptr %0, align 8, !tbaa !38
  %34 = load i32, ptr %33, align 8, !tbaa !48
  store i32 %34, ptr %2, align 4, !tbaa !304
  br label %35

35:                                               ; preds = %32, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @editbmesh_get_derived_cage_and_final(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @cage_mapped_verts_callback(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #5 !PGOFuncName !305 {
  %6 = icmp sgt i32 %1, -1
  br i1 %6, label %7, label %27

7:                                                ; preds = %5
  %8 = load i32, ptr %0, align 8, !tbaa !299
  %9 = icmp sgt i32 %8, %1
  br i1 %9, label %10, label %27

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.CageUserData, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !302
  %13 = lshr i32 %1, 5
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %12, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !304
  %17 = and i32 %1, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %10
  %22 = or i32 %16, %18
  store i32 %22, ptr %15, align 4, !tbaa !304
  %23 = getelementptr inbounds %struct.CageUserData, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !301
  %25 = zext nneg i32 %1 to i64
  %26 = getelementptr inbounds [3 x float], ptr %24, i64 %25
  tail call fastcc void @copy_v3_v3(ptr noundef %26, ptr noundef %2) #16
  br label %27

27:                                               ; preds = %21, %10, %7, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !306 {
  %3 = load float, ptr %1, align 4, !tbaa !141
  store float %3, ptr %0, align 4, !tbaa !141
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !141
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !141
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !141
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !141
  ret void
}

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #7 !PGOFuncName !307 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !141
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !141
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bmvert_to_mvert(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !308 {
  %4 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %4) #16
  %5 = getelementptr inbounds %struct.MVert, ptr %2, i64 0, i32 1
  %6 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 3
  tail call fastcc void @normal_float_to_short_v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %7 = tail call zeroext i8 @BM_vert_flag_to_mflag(ptr noundef %1) #14
  %8 = getelementptr inbounds %struct.MVert, ptr %2, i64 0, i32 2
  store i8 %7, ptr %8, align 2, !tbaa !159
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %10 = load ptr, ptr %1, align 8, !tbaa !100
  %11 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %9, ptr noundef %10, i32 noundef 29) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load float, ptr %11, align 4, !tbaa !141
  %15 = fmul float %14, 2.550000e+02
  %16 = fptoui float %15 to i8
  %17 = getelementptr inbounds %struct.MVert, ptr %2, i64 0, i32 3
  store i8 %16, ptr %17, align 1, !tbaa !161
  br label %18

18:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_float_to_short_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !309 {
  %3 = load <2 x float>, ptr %1, align 4, !tbaa !141
  %4 = fmul <2 x float> %3, <float 3.276700e+04, float 3.276700e+04>
  %5 = fptosi <2 x float> %4 to <2 x i16>
  store <2 x i16> %5, ptr %0, align 2, !tbaa !199
  %6 = getelementptr inbounds float, ptr %1, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !141
  %8 = fmul float %7, 3.276700e+04
  %9 = fptosi float %8 to i16
  %10 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %9, ptr %10, align 2, !tbaa !199
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BM_vert_flag_to_mflag(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emDM_ensureVertNormals(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !310 {
  %2 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !126
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  tail call fastcc void @emDM_ensurePolyNormals(ptr noundef nonnull %0) #16
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %12, i8 noundef zeroext 8) #14
  %13 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !128
  %15 = load ptr, ptr %2, align 8, !tbaa !98
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %17 = load i32, ptr %12, align 8, !tbaa !48
  %18 = sext i32 %17 to i64
  %19 = mul nsw i64 %18, 12
  %20 = tail call ptr %16(i64 noundef %19, ptr noundef nonnull @__func__.emDM_ensureVertNormals) #14
  tail call void @BM_verts_calc_normal_vcos(ptr noundef nonnull %12, ptr noundef %14, ptr noundef %15, ptr noundef %20) #14
  store ptr %20, ptr %6, align 8, !tbaa !126
  br label %21

21:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_verts_calc_normal_vcos(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare signext i16 @BM_edge_flag_to_mflag(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !311 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !312
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @BM_face_flag_to_mflag(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @test_index_face(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DM_get_tessface_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_sizeof(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_add_tessface_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !313 {
  %3 = load float, ptr %1, align 4, !tbaa !141
  store float %3, ptr %0, align 4, !tbaa !141
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !141
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !141
  ret void
}

; Function Attrs: optsize
declare void @DM_add_loop_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_loops_calc_normal_vcos(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DM_get_loop_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emDM_ensurePolyCenters(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !314 {
  %2 = alloca %struct.BMIter, align 8
  %3 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !223
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %38

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #15
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !54
  %13 = sext i32 %12 to i64
  %14 = mul nsw i64 %13, 12
  %15 = tail call ptr %10(i64 noundef %14, ptr noundef nonnull @__func__.emDM_ensurePolyCenters) #14
  %16 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  %18 = icmp eq ptr %17, null
  %19 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef nonnull %9, i8 noundef zeroext 3) #16
  %20 = icmp eq ptr %19, null
  br i1 %18, label %29, label %21

21:                                               ; preds = %6
  br i1 %20, label %37, label %22

22:                                               ; preds = %21, %22
  %23 = phi i64 [ %27, %22 ], [ 0, %21 ]
  %24 = phi ptr [ %26, %22 ], [ %19, %21 ]
  %25 = getelementptr inbounds [3 x float], ptr %15, i64 %23
  call void @BM_face_calc_center_mean_vcos(ptr noundef %9, ptr noundef nonnull %24, ptr noundef %25, ptr noundef nonnull %17) #14
  %26 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #16
  %27 = add nuw i64 %23, 1
  %28 = icmp eq ptr %26, null
  br i1 %28, label %37, label %22, !llvm.loop !315

29:                                               ; preds = %6
  br i1 %20, label %37, label %30

30:                                               ; preds = %29, %30
  %31 = phi i64 [ %35, %30 ], [ 0, %29 ]
  %32 = phi ptr [ %34, %30 ], [ %19, %29 ]
  %33 = getelementptr inbounds [3 x float], ptr %15, i64 %31
  call void @BM_face_calc_center_mean(ptr noundef nonnull %32, ptr noundef %33) #14
  %34 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #16
  %35 = add nuw i64 %31, 1
  %36 = icmp eq ptr %34, null
  br i1 %36, label %37, label %30, !llvm.loop !316

37:                                               ; preds = %22, %30, %21, %29
  store ptr %15, ptr %3, align 8, !tbaa !223
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #15
  br label %38

38:                                               ; preds = %37, %1
  ret void
}

; Function Attrs: optsize
declare void @BM_face_calc_center_mean_vcos(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_face_calc_center_mean(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @glIsEnabled(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #8 !PGOFuncName !317 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !318
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPolygonStipple(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmdm_get_tri_colpreview(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) unnamed_addr #10 !PGOFuncName !319 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !153
  %7 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %6) #16
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr %2, i64 %8
  store ptr %9, ptr %1, align 8, !tbaa !34
  %10 = getelementptr inbounds ptr, ptr %0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.BMLoop, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !153
  %14 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %13) #16
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr %2, i64 %15
  %17 = getelementptr inbounds ptr, ptr %1, i64 1
  store ptr %16, ptr %17, align 8, !tbaa !34
  %18 = getelementptr inbounds ptr, ptr %0, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.BMLoop, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !153
  %22 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %21) #16
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8], ptr %2, i64 %23
  %25 = getelementptr inbounds ptr, ptr %1, i64 2
  store ptr %24, ptr %25, align 8, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @glColor3ubv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glShadeModel(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glNormal3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emDM_drawFacesTex_common(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !320 {
  %5 = alloca [3 x ptr], align 16
  %6 = alloca %struct.MLoopUV, align 4
  %7 = alloca [3 x ptr], align 16
  %8 = alloca %struct.MTFace, align 8
  %9 = alloca %struct.MTFace, align 8
  %10 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = getelementptr inbounds %struct.BMEditMesh, ptr %11, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !145
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 53
  %16 = load ptr, ptr %15, align 8, !tbaa !206
  %17 = tail call ptr %16(ptr noundef %0, i32 noundef 8) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %18 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 26
  %19 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %18, i32 noundef 16) #14
  %20 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %18, i32 noundef 17) #14
  %21 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 27
  %22 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %21, i32 noundef 15) #14
  %23 = getelementptr inbounds %struct.BMEditMesh, ptr %11, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !234
  %25 = icmp eq i32 %19, -1
  %26 = icmp ne ptr %24, null
  %27 = icmp ne i32 %20, -1
  %28 = xor i1 %26, true
  %29 = select i1 %27, i1 %28, i1 false
  %30 = zext i1 %29 to i8
  %31 = select i1 %26, i1 true, i1 %27
  %32 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 2
  store ptr %6, ptr %32, align 16, !tbaa !34
  %33 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 1
  store ptr %6, ptr %33, align 8, !tbaa !34
  store ptr %6, ptr %5, align 16, !tbaa !34
  call void @glShadeModel(i32 noundef 7425) #14
  call void @BM_mesh_elem_index_ensure(ptr noundef %12, i8 noundef zeroext 8) #14
  br i1 %26, label %34, label %35

34:                                               ; preds = %4
  call void @BM_mesh_elem_index_ensure(ptr noundef %12, i8 noundef zeroext 1) #14
  br label %35

35:                                               ; preds = %34, %4
  %36 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !98
  %38 = icmp eq ptr %37, null
  br i1 %38, label %216, label %39

39:                                               ; preds = %35
  call fastcc void @emDM_ensureVertNormals(ptr noundef nonnull %0) #16
  call fastcc void @emDM_ensurePolyNormals(ptr noundef nonnull %0) #16
  %40 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !126
  %42 = getelementptr inbounds %struct.EditDerivedBMesh, ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !128
  %44 = icmp eq ptr %17, null
  %45 = select i1 %44, i8 1, i8 5
  call void @BM_mesh_elem_index_ensure(ptr noundef %12, i8 noundef zeroext %45) #14
  %46 = getelementptr inbounds %struct.BMEditMesh, ptr %11, i64 0, i32 4
  %47 = load i32, ptr %46, align 8, !tbaa !52
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %373

49:                                               ; preds = %39
  %50 = icmp eq i32 %22, -1
  %51 = sext i32 %22 to i64
  %52 = getelementptr inbounds %struct.MTFace, ptr %8, i64 0, i32 1
  %53 = getelementptr inbounds %struct.MTFace, ptr %8, i64 0, i32 2
  %54 = getelementptr inbounds %struct.MTFace, ptr %8, i64 0, i32 3
  %55 = getelementptr inbounds %struct.MTFace, ptr %8, i64 0, i32 4
  %56 = icmp eq ptr %1, null
  %57 = icmp eq ptr %2, null
  %58 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 1
  %59 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 2
  br label %60

60:                                               ; preds = %49, %211
  %61 = phi i64 [ 0, %49 ], [ %212, %211 ]
  %62 = getelementptr inbounds [3 x ptr], ptr %14, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !34
  br i1 %50, label %69, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.BMLoop, ptr %63, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !146
  %67 = load ptr, ptr %66, align 8, !tbaa !190
  %68 = getelementptr inbounds i8, ptr %67, i64 %51
  br label %69

69:                                               ; preds = %60, %64
  %70 = phi ptr [ %68, %64 ], [ null, %60 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  %71 = getelementptr inbounds %struct.BMLoop, ptr %63, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !146
  br i1 %44, label %73, label %76

73:                                               ; preds = %69
  %74 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %72, i8 noundef zeroext 8) #16, !range !236
  %75 = icmp ne i8 %74, 0
  br label %76

76:                                               ; preds = %69, %73
  %77 = phi i1 [ %75, %73 ], [ true, %69 ]
  br i1 %50, label %86, label %78

78:                                               ; preds = %76
  %79 = load ptr, ptr %70, align 8, !tbaa !191
  store ptr %79, ptr %52, align 8, !tbaa !193
  %80 = getelementptr inbounds %struct.MTexPoly, ptr %70, i64 0, i32 1
  %81 = load i8, ptr %80, align 8, !tbaa !195
  store i8 %81, ptr %53, align 8, !tbaa !196
  %82 = getelementptr inbounds %struct.MTexPoly, ptr %70, i64 0, i32 2
  %83 = load i8, ptr %82, align 1, !tbaa !197
  store i8 %83, ptr %54, align 1, !tbaa !198
  %84 = getelementptr inbounds %struct.MTexPoly, ptr %70, i64 0, i32 3
  %85 = load <2 x i16>, ptr %84, align 2, !tbaa !199
  store <2 x i16> %85, ptr %55, align 2, !tbaa !199
  br label %86

86:                                               ; preds = %78, %76
  br i1 %56, label %92, label %87

87:                                               ; preds = %86
  %88 = getelementptr inbounds %struct.BMFace, ptr %72, i64 0, i32 5
  %89 = load i16, ptr %88, align 8, !tbaa !148
  %90 = sext i16 %89 to i32
  %91 = call i32 %1(ptr noundef nonnull %8, i8 noundef zeroext %30, i32 noundef %90) #14
  br label %96

92:                                               ; preds = %86
  br i1 %57, label %99, label %93

93:                                               ; preds = %92
  %94 = call fastcc i32 @_bm_elem_index_get(ptr noundef %72) #16
  %95 = call i32 %2(ptr noundef %3, i32 noundef %94) #14
  br label %96

96:                                               ; preds = %93, %87
  %97 = phi i32 [ %91, %87 ], [ %95, %93 ]
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %211, label %99

99:                                               ; preds = %92, %96
  br i1 %25, label %101, label %100

100:                                              ; preds = %99
  call fastcc void @bmdm_get_tri_uv(ptr noundef nonnull %62, ptr noundef nonnull %5, i32 noundef %19) #16
  br label %101

101:                                              ; preds = %100, %99
  br i1 %29, label %102, label %103

102:                                              ; preds = %101
  call fastcc void @bmdm_get_tri_col(ptr noundef nonnull %62, ptr noundef nonnull %7, i32 noundef %20) #16
  br label %105

103:                                              ; preds = %101
  br i1 %26, label %104, label %105

104:                                              ; preds = %103
  call fastcc void @bmdm_get_tri_colpreview(ptr noundef nonnull %62, ptr noundef nonnull %7, ptr noundef nonnull %24) #16
  br label %105

105:                                              ; preds = %103, %104, %102
  call void @glBegin(i32 noundef 4) #14
  br i1 %77, label %140, label %106

106:                                              ; preds = %105
  %107 = call fastcc i32 @_bm_elem_index_get(ptr noundef %72) #16
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [3 x float], ptr %43, i64 %108
  call void @glNormal3fv(ptr noundef %109) #14
  %110 = load ptr, ptr %5, align 16, !tbaa !34
  call void @glTexCoord2fv(ptr noundef %110) #14
  br i1 %31, label %111, label %121

111:                                              ; preds = %106
  %112 = load ptr, ptr %7, align 16, !tbaa !34
  call void @glColor3ubv(ptr noundef %112) #14
  %113 = load ptr, ptr %62, align 8, !tbaa !34
  %114 = getelementptr inbounds %struct.BMLoop, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !153
  %116 = call fastcc i32 @_bm_elem_index_get(ptr noundef %115) #16
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [3 x float], ptr %37, i64 %117
  call void @glVertex3fv(ptr noundef nonnull %118) #14
  %119 = load ptr, ptr %33, align 8, !tbaa !34
  call void @glTexCoord2fv(ptr noundef %119) #14
  %120 = load ptr, ptr %58, align 8, !tbaa !34
  call void @glColor3ubv(ptr noundef %120) #14
  br label %129

121:                                              ; preds = %106
  %122 = load ptr, ptr %62, align 8, !tbaa !34
  %123 = getelementptr inbounds %struct.BMLoop, ptr %122, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !153
  %125 = call fastcc i32 @_bm_elem_index_get(ptr noundef %124) #16
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [3 x float], ptr %37, i64 %126
  call void @glVertex3fv(ptr noundef nonnull %127) #14
  %128 = load ptr, ptr %33, align 8, !tbaa !34
  call void @glTexCoord2fv(ptr noundef %128) #14
  br label %129

129:                                              ; preds = %121, %111
  %130 = getelementptr inbounds ptr, ptr %62, i64 1
  %131 = load ptr, ptr %130, align 8, !tbaa !34
  %132 = getelementptr inbounds %struct.BMLoop, ptr %131, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !153
  %134 = call fastcc i32 @_bm_elem_index_get(ptr noundef %133) #16
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [3 x float], ptr %37, i64 %135
  call void @glVertex3fv(ptr noundef nonnull %136) #14
  %137 = load ptr, ptr %32, align 16, !tbaa !34
  call void @glTexCoord2fv(ptr noundef %137) #14
  br i1 %31, label %138, label %203

138:                                              ; preds = %129
  %139 = load ptr, ptr %59, align 16, !tbaa !34
  call void @glColor3ubv(ptr noundef %139) #14
  br label %203

140:                                              ; preds = %105
  %141 = load ptr, ptr %5, align 16, !tbaa !34
  call void @glTexCoord2fv(ptr noundef %141) #14
  br i1 %31, label %142, label %144

142:                                              ; preds = %140
  %143 = load ptr, ptr %7, align 16, !tbaa !34
  call void @glColor3ubv(ptr noundef %143) #14
  br label %144

144:                                              ; preds = %142, %140
  %145 = load ptr, ptr %62, align 8, !tbaa !34
  br i1 %44, label %150, label %146

146:                                              ; preds = %144
  %147 = call fastcc i32 @_bm_elem_index_get(ptr noundef %145) #16
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [3 x float], ptr %17, i64 %148
  call void @glNormal3fv(ptr noundef nonnull %149) #14
  br label %156

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.BMLoop, ptr %145, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !153
  %153 = call fastcc i32 @_bm_elem_index_get(ptr noundef %152) #16
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [3 x float], ptr %41, i64 %154
  call void @glNormal3fv(ptr noundef %155) #14
  br label %156

156:                                              ; preds = %150, %146
  %157 = load ptr, ptr %62, align 8, !tbaa !34
  %158 = getelementptr inbounds %struct.BMLoop, ptr %157, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !153
  %160 = call fastcc i32 @_bm_elem_index_get(ptr noundef %159) #16
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [3 x float], ptr %37, i64 %161
  call void @glVertex3fv(ptr noundef nonnull %162) #14
  %163 = load ptr, ptr %33, align 8, !tbaa !34
  call void @glTexCoord2fv(ptr noundef %163) #14
  br i1 %31, label %164, label %166

164:                                              ; preds = %156
  %165 = load ptr, ptr %58, align 8, !tbaa !34
  call void @glColor3ubv(ptr noundef %165) #14
  br label %166

166:                                              ; preds = %164, %156
  %167 = getelementptr inbounds ptr, ptr %62, i64 1
  %168 = load ptr, ptr %167, align 8, !tbaa !34
  br i1 %44, label %173, label %169

169:                                              ; preds = %166
  %170 = call fastcc i32 @_bm_elem_index_get(ptr noundef %168) #16
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [3 x float], ptr %17, i64 %171
  call void @glNormal3fv(ptr noundef nonnull %172) #14
  br label %179

173:                                              ; preds = %166
  %174 = getelementptr inbounds %struct.BMLoop, ptr %168, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !153
  %176 = call fastcc i32 @_bm_elem_index_get(ptr noundef %175) #16
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [3 x float], ptr %41, i64 %177
  call void @glNormal3fv(ptr noundef %178) #14
  br label %179

179:                                              ; preds = %173, %169
  %180 = getelementptr inbounds ptr, ptr %62, i64 1
  %181 = load ptr, ptr %180, align 8, !tbaa !34
  %182 = getelementptr inbounds %struct.BMLoop, ptr %181, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !153
  %184 = call fastcc i32 @_bm_elem_index_get(ptr noundef %183) #16
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [3 x float], ptr %37, i64 %185
  call void @glVertex3fv(ptr noundef nonnull %186) #14
  %187 = load ptr, ptr %32, align 16, !tbaa !34
  call void @glTexCoord2fv(ptr noundef %187) #14
  br i1 %31, label %188, label %190

188:                                              ; preds = %179
  %189 = load ptr, ptr %59, align 16, !tbaa !34
  call void @glColor3ubv(ptr noundef %189) #14
  br label %190

190:                                              ; preds = %188, %179
  %191 = getelementptr inbounds ptr, ptr %62, i64 2
  %192 = load ptr, ptr %191, align 8, !tbaa !34
  br i1 %44, label %197, label %193

193:                                              ; preds = %190
  %194 = call fastcc i32 @_bm_elem_index_get(ptr noundef %192) #16
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [3 x float], ptr %17, i64 %195
  call void @glNormal3fv(ptr noundef nonnull %196) #14
  br label %203

197:                                              ; preds = %190
  %198 = getelementptr inbounds %struct.BMLoop, ptr %192, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !153
  %200 = call fastcc i32 @_bm_elem_index_get(ptr noundef %199) #16
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [3 x float], ptr %41, i64 %201
  call void @glNormal3fv(ptr noundef %202) #14
  br label %203

203:                                              ; preds = %193, %197, %129, %138
  %204 = getelementptr inbounds ptr, ptr %62, i64 2
  %205 = load ptr, ptr %204, align 8, !tbaa !34
  %206 = getelementptr inbounds %struct.BMLoop, ptr %205, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !153
  %208 = call fastcc i32 @_bm_elem_index_get(ptr noundef %207) #16
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [3 x float], ptr %37, i64 %209
  call void @glVertex3fv(ptr noundef nonnull %210) #14
  call void @glEnd() #14
  br label %211

211:                                              ; preds = %203, %96
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #15
  %212 = add nuw nsw i64 %61, 1
  %213 = load i32, ptr %46, align 8, !tbaa !52
  %214 = sext i32 %213 to i64
  %215 = icmp slt i64 %212, %214
  br i1 %215, label %60, label %373, !llvm.loop !321

216:                                              ; preds = %35
  %217 = icmp eq ptr %17, null
  %218 = select i1 %217, i8 1, i8 5
  call void @BM_mesh_elem_index_ensure(ptr noundef %12, i8 noundef zeroext %218) #14
  %219 = getelementptr inbounds %struct.BMEditMesh, ptr %11, i64 0, i32 4
  %220 = load i32, ptr %219, align 8, !tbaa !52
  %221 = icmp sgt i32 %220, 0
  br i1 %221, label %222, label %373

222:                                              ; preds = %216
  %223 = icmp eq i32 %22, -1
  %224 = sext i32 %22 to i64
  %225 = getelementptr inbounds %struct.MTFace, ptr %9, i64 0, i32 1
  %226 = getelementptr inbounds %struct.MTFace, ptr %9, i64 0, i32 2
  %227 = getelementptr inbounds %struct.MTFace, ptr %9, i64 0, i32 3
  %228 = getelementptr inbounds %struct.MTFace, ptr %9, i64 0, i32 4
  %229 = icmp eq ptr %1, null
  %230 = icmp eq ptr %2, null
  %231 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 1
  %232 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 2
  br label %233

233:                                              ; preds = %222, %368
  %234 = phi i64 [ 0, %222 ], [ %369, %368 ]
  %235 = getelementptr inbounds [3 x ptr], ptr %14, i64 %234
  %236 = load ptr, ptr %235, align 8, !tbaa !34
  br i1 %223, label %242, label %237

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.BMLoop, ptr %236, i64 0, i32 3
  %239 = load ptr, ptr %238, align 8, !tbaa !146
  %240 = load ptr, ptr %239, align 8, !tbaa !190
  %241 = getelementptr inbounds i8, ptr %240, i64 %224
  br label %242

242:                                              ; preds = %233, %237
  %243 = phi ptr [ %241, %237 ], [ null, %233 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 48, i1 false)
  %244 = getelementptr inbounds %struct.BMLoop, ptr %236, i64 0, i32 3
  %245 = load ptr, ptr %244, align 8, !tbaa !146
  br i1 %217, label %246, label %249

246:                                              ; preds = %242
  %247 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %245, i8 noundef zeroext 8) #16, !range !236
  %248 = icmp ne i8 %247, 0
  br label %249

249:                                              ; preds = %242, %246
  %250 = phi i1 [ %248, %246 ], [ true, %242 ]
  br i1 %223, label %259, label %251

251:                                              ; preds = %249
  %252 = load ptr, ptr %243, align 8, !tbaa !191
  store ptr %252, ptr %225, align 8, !tbaa !193
  %253 = getelementptr inbounds %struct.MTexPoly, ptr %243, i64 0, i32 1
  %254 = load i8, ptr %253, align 8, !tbaa !195
  store i8 %254, ptr %226, align 8, !tbaa !196
  %255 = getelementptr inbounds %struct.MTexPoly, ptr %243, i64 0, i32 2
  %256 = load i8, ptr %255, align 1, !tbaa !197
  store i8 %256, ptr %227, align 1, !tbaa !198
  %257 = getelementptr inbounds %struct.MTexPoly, ptr %243, i64 0, i32 3
  %258 = load <2 x i16>, ptr %257, align 2, !tbaa !199
  store <2 x i16> %258, ptr %228, align 2, !tbaa !199
  br label %259

259:                                              ; preds = %251, %249
  br i1 %229, label %265, label %260

260:                                              ; preds = %259
  %261 = getelementptr inbounds %struct.BMFace, ptr %245, i64 0, i32 5
  %262 = load i16, ptr %261, align 8, !tbaa !148
  %263 = sext i16 %262 to i32
  %264 = call i32 %1(ptr noundef nonnull %9, i8 noundef zeroext %30, i32 noundef %263) #14
  br label %269

265:                                              ; preds = %259
  br i1 %230, label %272, label %266

266:                                              ; preds = %265
  %267 = call fastcc i32 @_bm_elem_index_get(ptr noundef %245) #16
  %268 = call i32 %2(ptr noundef %3, i32 noundef %267) #14
  br label %269

269:                                              ; preds = %266, %260
  %270 = phi i32 [ %264, %260 ], [ %268, %266 ]
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %368, label %272

272:                                              ; preds = %265, %269
  br i1 %25, label %274, label %273

273:                                              ; preds = %272
  call fastcc void @bmdm_get_tri_uv(ptr noundef nonnull %235, ptr noundef nonnull %5, i32 noundef %19) #16
  br label %274

274:                                              ; preds = %273, %272
  br i1 %29, label %275, label %276

275:                                              ; preds = %274
  call fastcc void @bmdm_get_tri_col(ptr noundef nonnull %235, ptr noundef nonnull %7, i32 noundef %20) #16
  br label %278

276:                                              ; preds = %274
  br i1 %26, label %277, label %278

277:                                              ; preds = %276
  call fastcc void @bmdm_get_tri_colpreview(ptr noundef nonnull %235, ptr noundef nonnull %7, ptr noundef nonnull %24) #16
  br label %278

278:                                              ; preds = %276, %277, %275
  call void @glBegin(i32 noundef 4) #14
  br i1 %250, label %305, label %279

279:                                              ; preds = %278
  %280 = getelementptr inbounds %struct.BMFace, ptr %245, i64 0, i32 4
  call void @glNormal3fv(ptr noundef nonnull %280) #14
  %281 = load ptr, ptr %5, align 16, !tbaa !34
  call void @glTexCoord2fv(ptr noundef %281) #14
  br i1 %31, label %282, label %290

282:                                              ; preds = %279
  %283 = load ptr, ptr %7, align 16, !tbaa !34
  call void @glColor3ubv(ptr noundef %283) #14
  %284 = load ptr, ptr %235, align 8, !tbaa !34
  %285 = getelementptr inbounds %struct.BMLoop, ptr %284, i64 0, i32 1
  %286 = load ptr, ptr %285, align 8, !tbaa !153
  %287 = getelementptr inbounds %struct.BMVert, ptr %286, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %287) #14
  %288 = load ptr, ptr %33, align 8, !tbaa !34
  call void @glTexCoord2fv(ptr noundef %288) #14
  %289 = load ptr, ptr %231, align 8, !tbaa !34
  call void @glColor3ubv(ptr noundef %289) #14
  br label %296

290:                                              ; preds = %279
  %291 = load ptr, ptr %235, align 8, !tbaa !34
  %292 = getelementptr inbounds %struct.BMLoop, ptr %291, i64 0, i32 1
  %293 = load ptr, ptr %292, align 8, !tbaa !153
  %294 = getelementptr inbounds %struct.BMVert, ptr %293, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %294) #14
  %295 = load ptr, ptr %33, align 8, !tbaa !34
  call void @glTexCoord2fv(ptr noundef %295) #14
  br label %296

296:                                              ; preds = %290, %282
  %297 = getelementptr inbounds ptr, ptr %235, i64 1
  %298 = load ptr, ptr %297, align 8, !tbaa !34
  %299 = getelementptr inbounds %struct.BMLoop, ptr %298, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !153
  %301 = getelementptr inbounds %struct.BMVert, ptr %300, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %301) #14
  %302 = load ptr, ptr %32, align 16, !tbaa !34
  call void @glTexCoord2fv(ptr noundef %302) #14
  br i1 %31, label %303, label %362

303:                                              ; preds = %296
  %304 = load ptr, ptr %232, align 16, !tbaa !34
  call void @glColor3ubv(ptr noundef %304) #14
  br label %362

305:                                              ; preds = %278
  %306 = load ptr, ptr %5, align 16, !tbaa !34
  call void @glTexCoord2fv(ptr noundef %306) #14
  br i1 %31, label %307, label %309

307:                                              ; preds = %305
  %308 = load ptr, ptr %7, align 16, !tbaa !34
  call void @glColor3ubv(ptr noundef %308) #14
  br label %309

309:                                              ; preds = %307, %305
  %310 = load ptr, ptr %235, align 8, !tbaa !34
  br i1 %217, label %315, label %311

311:                                              ; preds = %309
  %312 = call fastcc i32 @_bm_elem_index_get(ptr noundef %310) #16
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [3 x float], ptr %17, i64 %313
  br label %319

315:                                              ; preds = %309
  %316 = getelementptr inbounds %struct.BMLoop, ptr %310, i64 0, i32 1
  %317 = load ptr, ptr %316, align 8, !tbaa !153
  %318 = getelementptr inbounds %struct.BMVert, ptr %317, i64 0, i32 3
  br label %319

319:                                              ; preds = %315, %311
  %320 = phi ptr [ %318, %315 ], [ %314, %311 ]
  call void @glNormal3fv(ptr noundef nonnull %320) #14
  %321 = load ptr, ptr %235, align 8, !tbaa !34
  %322 = getelementptr inbounds %struct.BMLoop, ptr %321, i64 0, i32 1
  %323 = load ptr, ptr %322, align 8, !tbaa !153
  %324 = getelementptr inbounds %struct.BMVert, ptr %323, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %324) #14
  %325 = load ptr, ptr %33, align 8, !tbaa !34
  call void @glTexCoord2fv(ptr noundef %325) #14
  br i1 %31, label %326, label %328

326:                                              ; preds = %319
  %327 = load ptr, ptr %231, align 8, !tbaa !34
  call void @glColor3ubv(ptr noundef %327) #14
  br label %328

328:                                              ; preds = %326, %319
  %329 = getelementptr inbounds ptr, ptr %235, i64 1
  %330 = load ptr, ptr %329, align 8, !tbaa !34
  br i1 %217, label %335, label %331

331:                                              ; preds = %328
  %332 = call fastcc i32 @_bm_elem_index_get(ptr noundef %330) #16
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [3 x float], ptr %17, i64 %333
  br label %339

335:                                              ; preds = %328
  %336 = getelementptr inbounds %struct.BMLoop, ptr %330, i64 0, i32 1
  %337 = load ptr, ptr %336, align 8, !tbaa !153
  %338 = getelementptr inbounds %struct.BMVert, ptr %337, i64 0, i32 3
  br label %339

339:                                              ; preds = %335, %331
  %340 = phi ptr [ %338, %335 ], [ %334, %331 ]
  call void @glNormal3fv(ptr noundef nonnull %340) #14
  %341 = getelementptr inbounds ptr, ptr %235, i64 1
  %342 = load ptr, ptr %341, align 8, !tbaa !34
  %343 = getelementptr inbounds %struct.BMLoop, ptr %342, i64 0, i32 1
  %344 = load ptr, ptr %343, align 8, !tbaa !153
  %345 = getelementptr inbounds %struct.BMVert, ptr %344, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %345) #14
  %346 = load ptr, ptr %32, align 16, !tbaa !34
  call void @glTexCoord2fv(ptr noundef %346) #14
  br i1 %31, label %347, label %349

347:                                              ; preds = %339
  %348 = load ptr, ptr %232, align 16, !tbaa !34
  call void @glColor3ubv(ptr noundef %348) #14
  br label %349

349:                                              ; preds = %347, %339
  %350 = getelementptr inbounds ptr, ptr %235, i64 2
  %351 = load ptr, ptr %350, align 8, !tbaa !34
  br i1 %217, label %356, label %352

352:                                              ; preds = %349
  %353 = call fastcc i32 @_bm_elem_index_get(ptr noundef %351) #16
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [3 x float], ptr %17, i64 %354
  br label %360

356:                                              ; preds = %349
  %357 = getelementptr inbounds %struct.BMLoop, ptr %351, i64 0, i32 1
  %358 = load ptr, ptr %357, align 8, !tbaa !153
  %359 = getelementptr inbounds %struct.BMVert, ptr %358, i64 0, i32 3
  br label %360

360:                                              ; preds = %356, %352
  %361 = phi ptr [ %359, %356 ], [ %355, %352 ]
  call void @glNormal3fv(ptr noundef nonnull %361) #14
  br label %362

362:                                              ; preds = %296, %303, %360
  %363 = getelementptr inbounds ptr, ptr %235, i64 2
  %364 = load ptr, ptr %363, align 8, !tbaa !34
  %365 = getelementptr inbounds %struct.BMLoop, ptr %364, i64 0, i32 1
  %366 = load ptr, ptr %365, align 8, !tbaa !153
  %367 = getelementptr inbounds %struct.BMVert, ptr %366, i64 0, i32 2
  call void @glVertex3fv(ptr noundef nonnull %367) #14
  call void @glEnd() #14
  br label %368

368:                                              ; preds = %362, %269
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #15
  %369 = add nuw nsw i64 %234, 1
  %370 = load i32, ptr %219, align 8, !tbaa !52
  %371 = sext i32 %370 to i64
  %372 = icmp slt i64 %369, %371
  br i1 %372, label %233, label %373, !llvm.loop !322

373:                                              ; preds = %211, %368, %39, %216
  call void @glShadeModel(i32 noundef 7424) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmdm_get_tri_uv(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #10 !PGOFuncName !323 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = load ptr, ptr %4, align 8, !tbaa !200
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds i8, ptr %5, i64 %6
  store ptr %7, ptr %1, align 8, !tbaa !34
  %8 = getelementptr inbounds ptr, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = load ptr, ptr %9, align 8, !tbaa !200
  %11 = getelementptr inbounds i8, ptr %10, i64 %6
  %12 = getelementptr inbounds ptr, ptr %1, i64 1
  store ptr %11, ptr %12, align 8, !tbaa !34
  %13 = getelementptr inbounds ptr, ptr %0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = load ptr, ptr %14, align 8, !tbaa !200
  %16 = getelementptr inbounds i8, ptr %15, i64 %6
  %17 = getelementptr inbounds ptr, ptr %1, i64 2
  store ptr %16, ptr %17, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmdm_get_tri_col(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #10 !PGOFuncName !324 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = load ptr, ptr %4, align 8, !tbaa !200
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds i8, ptr %5, i64 %6
  store ptr %7, ptr %1, align 8, !tbaa !34
  %8 = getelementptr inbounds ptr, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = load ptr, ptr %9, align 8, !tbaa !200
  %11 = getelementptr inbounds i8, ptr %10, i64 %6
  %12 = getelementptr inbounds ptr, ptr %1, i64 1
  store ptr %11, ptr %12, align 8, !tbaa !34
  %13 = getelementptr inbounds ptr, ptr %0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = load ptr, ptr %14, align 8, !tbaa !200
  %16 = getelementptr inbounds i8, ptr %15, i64 %6
  %17 = getelementptr inbounds ptr, ptr %1, i64 2
  store ptr %16, ptr %17, align 8, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @glTexCoord2fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_vertex_attributes_from_gpu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emdm_pass_attrib_vertex_glsl(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !325 {
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x i8], align 1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %8 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !326
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %3
  %12 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %7) #16
  %13 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !330
  %15 = icmp eq ptr %14, null
  %16 = sext i32 %12 to i64
  %17 = getelementptr inbounds [3 x float], ptr %14, i64 %16
  %18 = select i1 %15, ptr %4, ptr %17
  %19 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 3, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !331
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %11
  call void @glTexCoord3fv(ptr noundef %18) #14
  br label %27

23:                                               ; preds = %11
  %24 = load ptr, ptr @__glewVertexAttrib3fvARB, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 3, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !332
  call void %24(i32 noundef %26, ptr noundef %18) #14
  br label %27

27:                                               ; preds = %22, %23, %3
  %28 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !333
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %58, %27
  %32 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !334
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %92

35:                                               ; preds = %31
  %36 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 1
  %37 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 2
  %38 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 3
  br label %63

39:                                               ; preds = %27, %58
  %40 = phi i64 [ %59, %58 ], [ 0, %27 ]
  %41 = getelementptr inbounds [8 x %struct.anon], ptr %0, i64 0, i64 %40, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !335
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %1, align 8, !tbaa !200
  %46 = sext i32 %42 to i64
  %47 = getelementptr inbounds i8, ptr %45, i64 %46
  br label %48

48:                                               ; preds = %39, %44
  %49 = phi ptr [ %47, %44 ], [ %4, %39 ]
  %50 = getelementptr inbounds [8 x %struct.anon], ptr %0, i64 0, i64 %40, i32 3
  %51 = load i32, ptr %50, align 8, !tbaa !336
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  call void @glTexCoord2fv(ptr noundef %49) #14
  br label %58

54:                                               ; preds = %48
  %55 = load ptr, ptr @__glewVertexAttrib2fvARB, align 8, !tbaa !34
  %56 = getelementptr inbounds [8 x %struct.anon], ptr %0, i64 0, i64 %40, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !337
  call void %55(i32 noundef %57, ptr noundef %49) #14
  br label %58

58:                                               ; preds = %54, %53
  %59 = add nuw nsw i64 %40, 1
  %60 = load i32, ptr %28, align 8, !tbaa !333
  %61 = sext i32 %60 to i64
  %62 = icmp slt i64 %59, %61
  br i1 %62, label %39, label %31, !llvm.loop !338

63:                                               ; preds = %35, %80
  %64 = phi i64 [ 0, %35 ], [ %85, %80 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  %65 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 1, i64 %64, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !339
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %79, label %68

68:                                               ; preds = %63
  %69 = load ptr, ptr %1, align 8, !tbaa !200
  %70 = sext i32 %66 to i64
  %71 = getelementptr inbounds i8, ptr %69, i64 %70
  %72 = getelementptr inbounds %struct.MLoopCol, ptr %71, i64 0, i32 2
  %73 = load i8, ptr %72, align 1, !tbaa !340
  store i8 %73, ptr %5, align 1, !tbaa !203
  %74 = getelementptr inbounds %struct.MLoopCol, ptr %71, i64 0, i32 1
  %75 = load i8, ptr %74, align 1, !tbaa !342
  store i8 %75, ptr %36, align 1, !tbaa !203
  %76 = load i8, ptr %71, align 1, !tbaa !343
  store i8 %76, ptr %37, align 1, !tbaa !203
  %77 = getelementptr inbounds %struct.MLoopCol, ptr %71, i64 0, i32 3
  %78 = load i8, ptr %77, align 1, !tbaa !344
  br label %80

79:                                               ; preds = %63
  store i8 0, ptr %5, align 1, !tbaa !203
  store i8 0, ptr %36, align 1, !tbaa !203
  store i8 0, ptr %37, align 1, !tbaa !203
  br label %80

80:                                               ; preds = %79, %68
  %81 = phi i8 [ %78, %68 ], [ 0, %79 ]
  store i8 %81, ptr %38, align 1, !tbaa !203
  %82 = load ptr, ptr @__glewVertexAttrib4ubvARB, align 8, !tbaa !34
  %83 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 1, i64 %64, i32 2
  %84 = load i32, ptr %83, align 4, !tbaa !345
  call void %82(i32 noundef %84, ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  %85 = add nuw nsw i64 %64, 1
  %86 = load i32, ptr %32, align 4, !tbaa !334
  %87 = sext i32 %86 to i64
  %88 = icmp slt i64 %85, %87
  br i1 %88, label %63, label %89, !llvm.loop !346

89:                                               ; preds = %80
  %90 = trunc i64 %85 to i32
  %91 = shl nsw i32 %90, 2
  br label %92

92:                                               ; preds = %89, %31
  %93 = phi i32 [ 0, %31 ], [ %91, %89 ]
  %94 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 6
  %95 = load i32, ptr %94, align 8, !tbaa !347
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !348
  %100 = icmp eq ptr %99, null
  %101 = add nsw i32 %93, %2
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [4 x float], ptr %99, i64 %102
  %104 = select i1 %100, ptr %4, ptr %103
  %105 = load ptr, ptr @__glewVertexAttrib4fvARB, align 8, !tbaa !34
  %106 = getelementptr inbounds %struct.DMVertexAttribs, ptr %0, i64 0, i32 2, i32 2
  %107 = load i32, ptr %106, align 4, !tbaa !349
  call void %105(i32 noundef %107, ptr noundef %104) #14
  br label %108

108:                                              ; preds = %97, %92
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  ret void
}

; Function Attrs: optsize
declare void @glTexCoord3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @DM_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !350 {
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %4, align 4, !tbaa !351
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %5, align 8, !tbaa !352
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %6, align 8, !tbaa !262
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
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  store ptr %16, ptr %0, align 8, !tbaa !203
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @axis_from_enum_v3(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1) unnamed_addr #7 !PGOFuncName !353 {
  tail call fastcc void @zero_v3(ptr noundef %0) #16
  %3 = icmp ult i8 %1, 3
  %4 = zext i8 %1 to i64
  %5 = add nuw nsw i64 %4, 4294967293
  %6 = and i64 %5, 4294967295
  %7 = select i1 %3, i64 %4, i64 %6
  %8 = select i1 %3, float 1.000000e+00, float -1.000000e+00
  %9 = getelementptr inbounds float, ptr %0, i64 %7
  store float %8, ptr %9, align 4, !tbaa !141
  ret void
}

; Function Attrs: optsize
declare void @mul_transposed_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #11 !PGOFuncName !354 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #16
  ret void
}

; Function Attrs: optsize
declare void @weight_to_rgb(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4_char(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !355 {
  %3 = load i8, ptr %1, align 1, !tbaa !203
  store i8 %3, ptr %0, align 1, !tbaa !203
  %4 = getelementptr inbounds i8, ptr %1, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !203
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !203
  %7 = getelementptr inbounds i8, ptr %1, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !203
  %9 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !203
  %10 = getelementptr inbounds i8, ptr %1, i64 3
  %11 = load i8, ptr %10, align 1, !tbaa !203
  %12 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !203
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !356 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #16
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #14
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #16
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #16
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !357 {
  %3 = load float, ptr %0, align 4, !tbaa !141
  %4 = load float, ptr %1, align 4, !tbaa !141
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !141
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !141
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !141
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !141
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #6 !PGOFuncName !358 {
  %4 = load float, ptr %1, align 4, !tbaa !141
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !141
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !141
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !141
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !141
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !141
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: optsize
declare void @fill_vn_fl(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_jitter_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @uv_from_jitter_v2(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !359 {
  %2 = getelementptr inbounds float, ptr %0, i64 1
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !141
  %4 = fadd <2 x float> %3, <float 5.000000e-01, float 5.000000e-01>
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %6 = fadd <2 x float> %4, %5
  %7 = extractelement <2 x float> %6, i64 0
  %8 = fcmp ogt float %7, 1.000000e+00
  %9 = fsub <2 x float> <float 1.000000e+00, float 1.000000e+00>, %4
  %10 = select i1 %8, <2 x float> %9, <2 x float> %4
  store <2 x float> %10, ptr %0, align 4, !tbaa !141
  %11 = extractelement <2 x float> %10, i64 0
  %12 = fcmp olt float %11, 0.000000e+00
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = fcmp ogt float %11, 1.000000e+00
  br i1 %14, label %15, label %17

15:                                               ; preds = %13, %1
  %16 = phi float [ 0.000000e+00, %1 ], [ 1.000000e+00, %13 ]
  store float %16, ptr %0, align 4, !tbaa !141
  br label %17

17:                                               ; preds = %15, %13
  %18 = extractelement <2 x float> %10, i64 1
  %19 = fcmp olt float %18, 0.000000e+00
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = fcmp ogt float %18, 1.000000e+00
  br i1 %21, label %22, label %24

22:                                               ; preds = %20, %17
  %23 = phi float [ 0.000000e+00, %17 ], [ 1.000000e+00, %20 ]
  store float %23, ptr %2, align 4, !tbaa !141
  br label %24

24:                                               ; preds = %22, %20
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_bmbvh_new_from_editmesh(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @interp_v3_v3v3v3_uv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !360 {
  %3 = load float, ptr %1, align 4, !tbaa !141
  %4 = load float, ptr %0, align 4, !tbaa !141
  %5 = tail call float @llvm.fmuladd.f32(float %3, float 0x3EF4F8B580000000, float %4)
  store float %5, ptr %0, align 4, !tbaa !141
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !141
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !141
  %10 = tail call float @llvm.fmuladd.f32(float %7, float 0x3EF4F8B580000000, float %9)
  store float %10, ptr %8, align 4, !tbaa !141
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !141
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !141
  %15 = tail call float @llvm.fmuladd.f32(float %12, float 0x3EF4F8B580000000, float %14)
  store float %15, ptr %13, align 4, !tbaa !141
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_bmbvh_ray_cast(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #13

; Function Attrs: optsize
declare void @mid_v3_v3v3v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_bmbvh_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_bmbvh_find_face_segment(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #7 !PGOFuncName !361 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !312
  ret void
}

; Function Attrs: optsize
declare float @BM_face_calc_normal_vcos(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_loop_calc_face_normal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !362 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !141
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !141
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !141
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !141
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #4 !PGOFuncName !363 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare float @BM_edge_calc_face_angle_signed(ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind }
attributes #16 = { optsize }

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
!100 = !{!101, !35, i64 0}
!101 = !{!"BMVert", !102, i64 0, !35, i64 16, !36, i64 24, !36, i64 36, !35, i64 48}
!102 = !{!"BMHeader", !35, i64 0, !40, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!103 = distinct !{!103, !104}
!104 = !{!"llvm.loop.mustprogress"}
!105 = distinct !{!105, !104}
!106 = !{!"editderivedmesh.c:emDM_getVertCos"}
!107 = distinct !{!107, !104}
!108 = distinct !{!108, !104}
!109 = !{!"editderivedmesh.c:emDM_getMinMax"}
!110 = distinct !{!110, !104}
!111 = distinct !{!111, !104}
!112 = !{!"editderivedmesh.c:bmDm_getVertDataLayout"}
!113 = !{!"editderivedmesh.c:bmDm_getEdgeDataLayout"}
!114 = !{!"editderivedmesh.c:bmDm_getTessFaceDataLayout"}
!115 = !{!"editderivedmesh.c:bmDm_getLoopDataLayout"}
!116 = !{!"editderivedmesh.c:bmDm_getPolyDataLayout"}
!117 = !{!"editderivedmesh.c:emDM_getNumVerts"}
!118 = !{!"editderivedmesh.c:emDM_getNumEdges"}
!119 = !{!"editderivedmesh.c:emDM_getNumTessFaces"}
!120 = !{!"editderivedmesh.c:emDM_getNumLoops"}
!121 = !{!"editderivedmesh.c:emDM_getNumPolys"}
!122 = !{!"editderivedmesh.c:emDM_getVert"}
!123 = !{!49, !35, i64 64}
!124 = !{!"editderivedmesh.c:emDM_getVertCo"}
!125 = !{!"editderivedmesh.c:emDM_getVertNo"}
!126 = !{!44, !35, i64 1704}
!127 = !{!"editderivedmesh.c:emDM_getPolyNo"}
!128 = !{!44, !35, i64 1712}
!129 = !{!49, !35, i64 80}
!130 = !{!"editderivedmesh.c:emDM_getEdge"}
!131 = !{!49, !35, i64 72}
!132 = !{!133, !42, i64 10}
!133 = !{!"MEdge", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 9, !42, i64 10}
!134 = !{!135, !35, i64 24}
!135 = !{!"BMEdge", !102, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !136, i64 48, !136, i64 64}
!136 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!137 = !{!133, !40, i64 0}
!138 = !{!135, !35, i64 32}
!139 = !{!133, !40, i64 4}
!140 = !{!135, !35, i64 0}
!141 = !{!47, !47, i64 0}
!142 = !{!133, !36, i64 9}
!143 = !{!133, !36, i64 8}
!144 = !{!"editderivedmesh.c:emDM_getTessFace"}
!145 = !{!39, !35, i64 24}
!146 = !{!147, !35, i64 32}
!147 = !{!"BMLoop", !102, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!148 = !{!149, !42, i64 48}
!149 = !{!"BMFace", !102, i64 0, !35, i64 16, !35, i64 24, !40, i64 32, !36, i64 36, !42, i64 48}
!150 = !{!151, !42, i64 16}
!151 = !{!"MFace", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !42, i64 16, !36, i64 18, !36, i64 19}
!152 = !{!151, !36, i64 19}
!153 = !{!147, !35, i64 16}
!154 = !{!151, !40, i64 0}
!155 = !{!151, !40, i64 4}
!156 = !{!151, !40, i64 8}
!157 = !{!151, !40, i64 12}
!158 = !{!"editderivedmesh.c:emDM_copyVertArray"}
!159 = !{!160, !36, i64 18}
!160 = !{!"MVert", !36, i64 0, !36, i64 12, !36, i64 18, !36, i64 19}
!161 = !{!160, !36, i64 19}
!162 = distinct !{!162, !104}
!163 = distinct !{!163, !104}
!164 = !{!"editderivedmesh.c:emDM_copyEdgeArray"}
!165 = distinct !{!165, !104}
!166 = !{!"editderivedmesh.c:emDM_copyTessFaceArray"}
!167 = !{!151, !36, i64 18}
!168 = distinct !{!168, !104}
!169 = !{!"editderivedmesh.c:emDM_copyLoopArray"}
!170 = !{!149, !35, i64 24}
!171 = !{!172, !40, i64 0}
!172 = !{!"MLoop", !40, i64 0, !40, i64 4}
!173 = !{!147, !35, i64 24}
!174 = !{!172, !40, i64 4}
!175 = !{!147, !35, i64 56}
!176 = distinct !{!176, !104}
!177 = distinct !{!177, !104}
!178 = !{!"editderivedmesh.c:emDM_copyPolyArray"}
!179 = !{!180, !36, i64 10}
!180 = !{!"MPoly", !40, i64 0, !40, i64 4, !42, i64 8, !36, i64 10, !36, i64 11}
!181 = !{!180, !40, i64 0}
!182 = !{!149, !40, i64 32}
!183 = !{!180, !40, i64 4}
!184 = !{!180, !42, i64 8}
!185 = distinct !{!185, !104}
!186 = !{!"editderivedmesh.c:emDM_getTessFaceDataArray"}
!187 = !{!45, !35, i64 400}
!188 = !{!189, !40, i64 8}
!189 = !{!"CustomDataLayer", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32, !35, i64 96}
!190 = !{!149, !35, i64 0}
!191 = !{!192, !35, i64 0}
!192 = !{!"MTexPoly", !35, i64 0, !36, i64 8, !36, i64 9, !42, i64 10, !42, i64 12, !42, i64 14}
!193 = !{!194, !35, i64 32}
!194 = !{!"MTFace", !36, i64 0, !35, i64 32, !36, i64 40, !36, i64 41, !42, i64 42, !42, i64 44, !42, i64 46}
!195 = !{!192, !36, i64 8}
!196 = !{!194, !36, i64 40}
!197 = !{!192, !36, i64 9}
!198 = !{!194, !36, i64 41}
!199 = !{!42, !42, i64 0}
!200 = !{!147, !35, i64 0}
!201 = distinct !{!201, !104}
!202 = distinct !{!202, !104}
!203 = !{!36, !36, i64 0}
!204 = distinct !{!204, !104}
!205 = distinct !{!205, !104}
!206 = !{!45, !35, i64 1344}
!207 = distinct !{!207, !104}
!208 = distinct !{!208, !104}
!209 = !{!"editderivedmesh.c:emDM_calcNormals"}
!210 = !{!45, !40, i64 1056}
!211 = !{!"editderivedmesh.c:emDM_calcLoopNormals"}
!212 = !{!"editderivedmesh.c:emDM_recalcTessellation"}
!213 = !{!"editderivedmesh.c:emDM_foreachMappedVert"}
!214 = distinct !{!214, !104}
!215 = distinct !{!215, !104}
!216 = !{!"editderivedmesh.c:emDM_foreachMappedLoop"}
!217 = distinct !{!217, !104}
!218 = distinct !{!218, !104}
!219 = !{!"editderivedmesh.c:emDM_foreachMappedEdge"}
!220 = distinct !{!220, !104}
!221 = distinct !{!221, !104}
!222 = !{!"editderivedmesh.c:emDM_foreachMappedFaceCenter"}
!223 = !{!44, !35, i64 1720}
!224 = distinct !{!224, !104}
!225 = distinct !{!225, !104}
!226 = !{!"editderivedmesh.c:emDM_drawEdges"}
!227 = !{!"editderivedmesh.c:emDM_drawMappedEdges"}
!228 = distinct !{!228, !104}
!229 = distinct !{!229, !104}
!230 = !{!"editderivedmesh.c:emDM_drawMappedEdgesInterp"}
!231 = distinct !{!231, !104}
!232 = distinct !{!232, !104}
!233 = !{!"editderivedmesh.c:emDM_drawMappedFaces"}
!234 = !{!39, !35, i64 64}
!235 = !{!39, !35, i64 80}
!236 = !{i8 0, i8 9}
!237 = distinct !{!237, !104}
!238 = distinct !{!238, !104}
!239 = !{!"editderivedmesh.c:emDM_drawMappedFacesTex"}
!240 = !{!"editderivedmesh.c:emDM_drawMappedFacesGLSL"}
!241 = distinct !{!241, !104}
!242 = distinct !{!242, !104}
!243 = distinct !{!243, !104}
!244 = distinct !{!244, !104}
!245 = distinct !{!245, !104}
!246 = !{!"editderivedmesh.c:emDM_drawMappedFacesMat"}
!247 = distinct !{!247, !104}
!248 = distinct !{!248, !104}
!249 = distinct !{!249, !104}
!250 = distinct !{!250, !104}
!251 = distinct !{!251, !104}
!252 = !{!"editderivedmesh.c:emDM_drawFacesTex"}
!253 = !{!"editderivedmesh.c:emDM_drawFacesGLSL"}
!254 = !{!45, !35, i64 1648}
!255 = !{!"editderivedmesh.c:emDM_drawUVEdges"}
!256 = !{!147, !35, i64 64}
!257 = distinct !{!257, !104}
!258 = distinct !{!258, !104}
!259 = !{!"editderivedmesh.c:emDM_release"}
!260 = !{!"editderivedmesh.c:BM_iter_new"}
!261 = !{!"editderivedmesh.c:BM_iter_step"}
!262 = !{!263, !35, i64 48}
!263 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !40, i64 56, !36, i64 60}
!264 = !{!265, !36, i64 0}
!265 = !{!"MeshStatVis", !36, i64 0, !36, i64 1, !36, i64 3, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !36, i64 20, !36, i64 21, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36}
!266 = !{!265, !47, i64 4}
!267 = !{!265, !47, i64 8}
!268 = !{!265, !36, i64 3}
!269 = !{!39, !35, i64 96}
!270 = !{!265, !47, i64 12}
!271 = !{!265, !47, i64 16}
!272 = !{!265, !36, i64 20}
!273 = !{!265, !47, i64 24}
!274 = !{!265, !47, i64 28}
!275 = !{!265, !47, i64 32}
!276 = !{!265, !47, i64 36}
!277 = !{!"editderivedmesh.c:statvis_calc_overhang"}
!278 = distinct !{!278, !104}
!279 = !{!"editderivedmesh.c:statvis_calc_thickness"}
!280 = distinct !{!280, !104}
!281 = distinct !{!281, !104}
!282 = distinct !{!282, !104}
!283 = distinct !{!283, !104}
!284 = !{!"editderivedmesh.c:statvis_calc_intersect"}
!285 = !{!135, !35, i64 40}
!286 = !{!147, !35, i64 40}
!287 = distinct !{!287, !104}
!288 = distinct !{!288, !104}
!289 = !{!"editderivedmesh.c:emDM_ensurePolyNormals"}
!290 = distinct !{!290, !104}
!291 = !{!49, !36, i64 28}
!292 = !{!"editderivedmesh.c:statvis_calc_distort"}
!293 = distinct !{!293, !104}
!294 = distinct !{!294, !104}
!295 = !{!"editderivedmesh.c:statvis_calc_sharp"}
!296 = distinct !{!296, !104}
!297 = distinct !{!297, !104}
!298 = !{!41, !41, i64 0}
!299 = !{!300, !40, i64 0}
!300 = !{!"CageUserData", !40, i64 0, !35, i64 8, !35, i64 16}
!301 = !{!300, !35, i64 8}
!302 = !{!300, !35, i64 16}
!303 = !{!45, !35, i64 1488}
!304 = !{!40, !40, i64 0}
!305 = !{!"editderivedmesh.c:cage_mapped_verts_callback"}
!306 = !{!"editderivedmesh.c:copy_v3_v3"}
!307 = !{!"editderivedmesh.c:zero_v3"}
!308 = !{!"editderivedmesh.c:bmvert_to_mvert"}
!309 = !{!"editderivedmesh.c:normal_float_to_short_v3"}
!310 = !{!"editderivedmesh.c:emDM_ensureVertNormals"}
!311 = !{!"editderivedmesh.c:_bm_elem_index_get"}
!312 = !{!102, !40, i64 8}
!313 = !{!"editderivedmesh.c:copy_v2_v2"}
!314 = !{!"editderivedmesh.c:emDM_ensurePolyCenters"}
!315 = distinct !{!315, !104}
!316 = distinct !{!316, !104}
!317 = !{!"editderivedmesh.c:_bm_elem_flag_test"}
!318 = !{!102, !36, i64 13}
!319 = !{!"editderivedmesh.c:bmdm_get_tri_colpreview"}
!320 = !{!"editderivedmesh.c:emDM_drawFacesTex_common"}
!321 = distinct !{!321, !104}
!322 = distinct !{!322, !104}
!323 = !{!"editderivedmesh.c:bmdm_get_tri_uv"}
!324 = !{!"editderivedmesh.c:bmdm_get_tri_col"}
!325 = !{!"editderivedmesh.c:emdm_pass_attrib_vertex_glsl"}
!326 = !{!327, !40, i64 372}
!327 = !{!"DMVertexAttribs", !36, i64 0, !36, i64 192, !328, i64 320, !329, i64 336, !40, i64 360, !40, i64 364, !40, i64 368, !40, i64 372}
!328 = !{!"", !35, i64 0, !40, i64 8, !40, i64 12}
!329 = !{!"", !35, i64 0, !40, i64 8, !40, i64 12, !40, i64 16}
!330 = !{!327, !35, i64 336}
!331 = !{!327, !40, i64 352}
!332 = !{!327, !40, i64 348}
!333 = !{!327, !40, i64 360}
!334 = !{!327, !40, i64 364}
!335 = !{!329, !40, i64 8}
!336 = !{!329, !40, i64 16}
!337 = !{!329, !40, i64 12}
!338 = distinct !{!338, !104}
!339 = !{!328, !40, i64 8}
!340 = !{!341, !36, i64 2}
!341 = !{!"MLoopCol", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3}
!342 = !{!341, !36, i64 1}
!343 = !{!341, !36, i64 0}
!344 = !{!341, !36, i64 3}
!345 = !{!328, !40, i64 12}
!346 = distinct !{!346, !104}
!347 = !{!327, !40, i64 368}
!348 = !{!327, !35, i64 320}
!349 = !{!327, !40, i64 332}
!350 = !{!"editderivedmesh.c:BM_iter_init"}
!351 = !{!263, !36, i64 60}
!352 = !{!263, !35, i64 40}
!353 = !{!"editderivedmesh.c:axis_from_enum_v3"}
!354 = !{!"editderivedmesh.c:normalize_v3"}
!355 = !{!"editderivedmesh.c:copy_v4_v4_char"}
!356 = !{!"editderivedmesh.c:normalize_v3_v3"}
!357 = !{!"editderivedmesh.c:dot_v3v3"}
!358 = !{!"editderivedmesh.c:mul_v3_v3fl"}
!359 = !{!"editderivedmesh.c:uv_from_jitter_v2"}
!360 = !{!"editderivedmesh.c:madd_v3_v3fl"}
!361 = !{!"editderivedmesh.c:_bm_elem_index_set"}
!362 = !{!"editderivedmesh.c:negate_v3"}
!363 = !{!"editderivedmesh.c:max_ff"}
