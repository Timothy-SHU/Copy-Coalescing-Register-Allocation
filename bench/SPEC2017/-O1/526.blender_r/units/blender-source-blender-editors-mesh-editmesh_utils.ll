; ModuleID = 'blender/source/blender/editors/mesh/editmesh_utils.c'
source_filename = "blender/source/blender/editors/mesh/editmesh_utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.MirrTopoStore_t = type { ptr, i32, i32, i32 }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon.0 }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon.0 = type { ptr, [8 x i8] }
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
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.BMAllocTemplate = type { i32, i32, i32, i32 }
%struct.UndoMesh = type { %struct.Mesh, i32, i32 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.UvVertMap = type { ptr, ptr }
%struct.UvMapVert = type { ptr, i32, i8, i8, i8 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.UvElementMap = type { ptr, ptr, i32, i32, ptr }
%struct.UvElement = type { ptr, ptr, i16, i8, i8, i16 }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str = private unnamed_addr constant [18 x i8] c"Parse error in %s\00", align 1
@__func__.EDBM_op_init = private unnamed_addr constant [13 x i8] c"EDBM_op_init\00", align 1
@__func__.EDBM_op_callf = private unnamed_addr constant [14 x i8] c"EDBM_op_callf\00", align 1
@__func__.EDBM_op_call_and_selectf = private unnamed_addr constant [25 x i8] c"EDBM_op_call_and_selectf\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"region_extend geom=%hvef use_constrict=%b use_faces=%b\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"geom.out\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"UvVertMap\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"UvMapVert_pt\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"UvMapVert\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"uv_island_number_face\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"UvElementMap\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"UvElementVerts\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"UvElement\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"uvelement_remap\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"uv_island_face_stack\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"uvelement_island_buffer\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"UvElementMap_island_indices\00", align 1
@__const.EDBM_verts_mirror_cache_begin_ex.mesh_topo_store = private unnamed_addr constant %struct.MirrTopoStore_t { ptr null, i32 -1, i32 -1, i32 -1 }, align 8
@.str.15 = private unnamed_addr constant [15 x i8] c"__mirror_index\00", align 1
@.str.16 = private unnamed_addr constant [97 x i8] c"err: should only be called between EDBM_verts_mirror_cache_begin and EDBM_verts_mirror_cache_end\00", align 1
@__const.EDBM_mesh_reveal.iter_types = private unnamed_addr constant [3 x i8] c"\01\02\03", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"undo Mesh\00", align 1
@str = private unnamed_addr constant [45 x i8] c"warning: em->emcopyusers was less then zero.\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @EDBM_redo_state_store(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = tail call ptr @BM_mesh_copy(ptr noundef %2) #12
  ret ptr %3
}

declare ptr @BM_mesh_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_redo_state_restore(ptr %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne ptr %0, null
  %6 = select i1 %4, i1 %5, i1 false
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = load ptr, ptr %1, align 8, !tbaa !34
  tail call void @BM_mesh_data_free(ptr noundef %8) #12
  %9 = tail call ptr @BM_mesh_copy(ptr noundef nonnull %0) #12
  %10 = load ptr, ptr %1, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1008) %10, ptr noundef nonnull align 8 dereferenceable(1008) %9, i64 1008, i1 false), !tbaa.struct !42
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %11(ptr noundef %9) #12
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @BKE_editmesh_tessface_calc(ptr noundef nonnull %1) #12
  br label %14

14:                                               ; preds = %7, %13, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @BM_mesh_data_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @BKE_editmesh_tessface_calc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_redo_state_free(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %1, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %1, align 8, !tbaa !34
  tail call void @BM_mesh_data_free(ptr noundef %9) #12
  %10 = load ptr, ptr %1, align 8, !tbaa !34
  %11 = load ptr, ptr %0, align 8, !tbaa !47
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1008) %10, ptr noundef nonnull align 8 dereferenceable(1008) %11, i64 1008, i1 false), !tbaa.struct !42
  br label %16

12:                                               ; preds = %5, %3
  %13 = load ptr, ptr %0, align 8, !tbaa !47
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @BM_mesh_data_free(ptr noundef nonnull %13) #12
  br label %16

16:                                               ; preds = %12, %15, %8
  %17 = load ptr, ptr %0, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %20(ptr noundef nonnull %17) #12
  br label %21

21:                                               ; preds = %19, %16
  store ptr null, ptr %0, align 8, !tbaa !47
  %22 = icmp ne i32 %2, 0
  %23 = and i1 %4, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call void @BKE_editmesh_tessface_calc(ptr noundef nonnull %1) #12
  br label %25

25:                                               ; preds = %24, %21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_mesh_ensure_valid_dm_hack(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMEditMesh, ptr %1, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 5
  %8 = load i16, ptr %7, align 2, !tbaa !56
  %9 = and i16 %8, 4096
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 103
  %13 = load i8, ptr %12, align 1, !tbaa !57
  %14 = and i8 %13, 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %11, %2
  %17 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 103
  %18 = load i8, ptr %17, align 1, !tbaa !57
  %19 = and i8 %18, 2
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #12
  br label %22

22:                                               ; preds = %21, %16
  %23 = load ptr, ptr @G, align 8, !tbaa !58
  %24 = getelementptr inbounds %struct.Main, ptr %23, i64 0, i32 46
  %25 = load ptr, ptr %24, align 8, !tbaa !60
  %26 = load ptr, ptr %3, align 8, !tbaa !49
  tail call void @BKE_object_handle_update(ptr noundef %25, ptr noundef %0, ptr noundef %26) #12
  br label %27

27:                                               ; preds = %22, %11
  ret void
}

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @BKE_object_handle_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_mesh_normals_update(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @BM_mesh_normals_update(ptr noundef %2) #12
  ret void
}

declare void @BM_mesh_normals_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_mesh_clear(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @BM_mesh_clear(ptr noundef %2) #12
  tail call void @BKE_editmesh_free_derivedmesh(ptr noundef nonnull %0) #12
  %3 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 4
  store i32 0, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %8(ptr noundef nonnull %5) #12
  store ptr null, ptr %4, align 8, !tbaa !63
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

declare void @BM_mesh_clear(ptr noundef) local_unnamed_addr #1

declare void @BKE_editmesh_free_derivedmesh(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_stats_update(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca [3 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 4
  store ptr %5, ptr %3, align 16, !tbaa !45
  %6 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 5
  %7 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 1
  store ptr %6, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 6
  %9 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 2
  store ptr %8, ptr %9, align 16, !tbaa !45
  store i32 0, ptr %8, align 8, !tbaa !64
  store i32 0, ptr %6, align 4, !tbaa !67
  store i32 0, ptr %5, align 8, !tbaa !68
  %10 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  %11 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  %12 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  %13 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  %14 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  %15 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  %16 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  %17 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  %18 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  %19 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  %20 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  %21 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  %22 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  %23 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  %24 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  %25 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  %26 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  %27 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  %28 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  %29 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  %30 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  %31 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  %32 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  %33 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  %34 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  %35 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  %36 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  %37 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  %38 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  %39 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  br label %40

40:                                               ; preds = %1, %87
  %41 = phi i64 [ 0, %1 ], [ %88, %87 ]
  %42 = load ptr, ptr %0, align 8, !tbaa !34
  %43 = getelementptr inbounds [3 x i8], ptr @__const.EDBM_mesh_reveal.iter_types, i64 0, i64 %41
  %44 = load i8, ptr %43, align 1, !tbaa !44
  store i8 %44, ptr %10, align 4, !tbaa !69
  switch i8 %44, label %68 [
    i8 1, label %45
    i8 2, label %48
    i8 3, label %51
    i8 4, label %54
    i8 5, label %55
    i8 6, label %56
    i8 7, label %57
    i8 8, label %58
    i8 9, label %59
    i8 10, label %60
    i8 11, label %61
    i8 13, label %62
    i8 14, label %63
  ]

45:                                               ; preds = %40
  store ptr @bmiter__elem_of_mesh_begin, ptr %35, align 8, !tbaa !71
  store ptr @bmiter__elem_of_mesh_step, ptr %36, align 8, !tbaa !72
  %46 = getelementptr inbounds %struct.BMesh, ptr %42, i64 0, i32 9
  %47 = load ptr, ptr %46, align 8, !tbaa !73
  store ptr %47, ptr %2, align 8, !tbaa !44
  br label %64

48:                                               ; preds = %40
  store ptr @bmiter__elem_of_mesh_begin, ptr %33, align 8, !tbaa !71
  store ptr @bmiter__elem_of_mesh_step, ptr %34, align 8, !tbaa !72
  %49 = getelementptr inbounds %struct.BMesh, ptr %42, i64 0, i32 10
  %50 = load ptr, ptr %49, align 8, !tbaa !74
  store ptr %50, ptr %2, align 8, !tbaa !44
  br label %64

51:                                               ; preds = %40
  store ptr @bmiter__elem_of_mesh_begin, ptr %31, align 8, !tbaa !71
  store ptr @bmiter__elem_of_mesh_step, ptr %32, align 8, !tbaa !72
  %52 = getelementptr inbounds %struct.BMesh, ptr %42, i64 0, i32 12
  %53 = load ptr, ptr %52, align 8, !tbaa !75
  store ptr %53, ptr %2, align 8, !tbaa !44
  br label %64

54:                                               ; preds = %40
  store ptr @bmiter__edge_of_vert_begin, ptr %29, align 8, !tbaa !71
  store ptr @bmiter__edge_of_vert_step, ptr %30, align 8, !tbaa !72
  store ptr null, ptr %2, align 8, !tbaa !44
  br label %64

55:                                               ; preds = %40
  store ptr @bmiter__face_of_vert_begin, ptr %27, align 8, !tbaa !71
  store ptr @bmiter__face_of_vert_step, ptr %28, align 8, !tbaa !72
  store ptr null, ptr %2, align 8, !tbaa !44
  br label %64

56:                                               ; preds = %40
  store ptr @bmiter__loop_of_vert_begin, ptr %25, align 8, !tbaa !71
  store ptr @bmiter__loop_of_vert_step, ptr %26, align 8, !tbaa !72
  store ptr null, ptr %2, align 8, !tbaa !44
  br label %64

57:                                               ; preds = %40
  store ptr @bmiter__vert_of_edge_begin, ptr %23, align 8, !tbaa !71
  store ptr @bmiter__vert_of_edge_step, ptr %24, align 8, !tbaa !72
  store ptr null, ptr %2, align 8, !tbaa !44
  br label %64

58:                                               ; preds = %40
  store ptr @bmiter__face_of_edge_begin, ptr %21, align 8, !tbaa !71
  store ptr @bmiter__face_of_edge_step, ptr %22, align 8, !tbaa !72
  store ptr null, ptr %2, align 8, !tbaa !44
  br label %64

59:                                               ; preds = %40
  store ptr @bmiter__vert_of_face_begin, ptr %19, align 8, !tbaa !71
  store ptr @bmiter__vert_of_face_step, ptr %20, align 8, !tbaa !72
  store ptr null, ptr %2, align 8, !tbaa !44
  br label %64

60:                                               ; preds = %40
  store ptr @bmiter__edge_of_face_begin, ptr %17, align 8, !tbaa !71
  store ptr @bmiter__edge_of_face_step, ptr %18, align 8, !tbaa !72
  store ptr null, ptr %2, align 8, !tbaa !44
  br label %64

61:                                               ; preds = %40
  store ptr @bmiter__loop_of_face_begin, ptr %15, align 8, !tbaa !71
  store ptr @bmiter__loop_of_face_step, ptr %16, align 8, !tbaa !72
  store ptr null, ptr %2, align 8, !tbaa !44
  br label %64

62:                                               ; preds = %40
  store ptr @bmiter__loop_of_loop_begin, ptr %13, align 8, !tbaa !71
  store ptr @bmiter__loop_of_loop_step, ptr %14, align 8, !tbaa !72
  store ptr null, ptr %2, align 8, !tbaa !44
  br label %64

63:                                               ; preds = %40
  store ptr @bmiter__loop_of_edge_begin, ptr %11, align 8, !tbaa !71
  store ptr @bmiter__loop_of_edge_step, ptr %12, align 8, !tbaa !72
  store ptr null, ptr %2, align 8, !tbaa !44
  br label %64

64:                                               ; preds = %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %51, %48, %45
  %65 = load ptr, ptr %37, align 8, !tbaa !71
  call void %65(ptr noundef nonnull %2) #12
  %66 = load ptr, ptr %38, align 8, !tbaa !72
  %67 = call ptr %66(ptr noundef nonnull %2) #12
  br label %68

68:                                               ; preds = %40, %64
  %69 = phi ptr [ %67, %64 ], [ null, %40 ]
  %70 = icmp eq ptr %69, null
  br i1 %70, label %87, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 %41
  br label %73

73:                                               ; preds = %71, %83
  %74 = phi ptr [ %69, %71 ], [ %85, %83 ]
  %75 = getelementptr inbounds %struct.BMHeader, ptr %74, i64 0, i32 3
  %76 = load i8, ptr %75, align 1, !tbaa !76
  %77 = and i8 %76, 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %73
  %80 = load ptr, ptr %72, align 8, !tbaa !45
  %81 = load i32, ptr %80, align 4, !tbaa !43
  %82 = add nsw i32 %81, 1
  store i32 %82, ptr %80, align 4, !tbaa !43
  br label %83

83:                                               ; preds = %73, %79
  %84 = load ptr, ptr %39, align 8, !tbaa !72
  %85 = call ptr %84(ptr noundef nonnull %2) #12
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %73, !llvm.loop !78

87:                                               ; preds = %83, %68
  %88 = add nuw nsw i64 %41, 1
  %89 = icmp eq i64 %88, 3
  br i1 %89, label %90, label %40, !llvm.loop !81

90:                                               ; preds = %87
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @EDBM_mesh_deform_dm_get(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 14
  %7 = load i32, ptr %6, align 8, !tbaa !83
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !85
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, ptr null, ptr %3
  br label %14

14:                                               ; preds = %9, %1, %5
  %15 = phi ptr [ null, %5 ], [ null, %1 ], [ %13, %9 ]
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @EDBM_op_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ...) local_unnamed_addr #0 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.va_start(ptr nonnull %5)
  %7 = call zeroext i8 @BMO_op_vinitf(ptr noundef %6, ptr noundef %1, i32 noundef 1, ptr noundef %3, ptr noundef nonnull %5) #12
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !86
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %11, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.EDBM_op_init) #12
  br label %22

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !88
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call ptr @BKE_editmesh_copy(ptr noundef nonnull %0) #12
  store ptr %17, ptr %13, align 8, !tbaa !88
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !89
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !89
  br label %22

22:                                               ; preds = %18, %9
  %23 = phi i8 [ 1, %18 ], [ 0, %9 ]
  call void @llvm.va_end(ptr %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  ret i8 %23
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

declare zeroext i8 @BMO_op_vinitf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

declare ptr @BKE_editmesh_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @EDBM_op_finish(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @BMO_op_finish(ptr noundef %6, ptr noundef %1) #12
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  %8 = call i32 @BMO_error_get(ptr noundef %7, ptr noundef nonnull %5, ptr noundef null) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = icmp eq i8 %3, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !86
  %17 = load ptr, ptr %5, align 8, !tbaa !45
  call void @BKE_report(ptr noundef %16, i32 noundef 32, ptr noundef %17) #12
  br label %18

18:                                               ; preds = %14, %10
  %19 = call i32 @ED_mesh_mirror_spatial_table(ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef zeroext 101) #12
  %20 = call i32 @ED_mesh_mirror_topo_table(ptr noundef null, i8 noundef zeroext 101) #12
  call void @BKE_editmesh_free(ptr noundef nonnull %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %12, i64 112, i1 false), !tbaa.struct !90
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %21(ptr noundef %12) #12
  %22 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 2
  store i32 0, ptr %22, align 8, !tbaa !89
  store ptr null, ptr %11, align 8, !tbaa !88
  %23 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %18
  call void @BKE_editmesh_tessface_calc(ptr noundef nonnull %0) #12
  br label %42

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !89
  %30 = add nsw i32 %29, -1
  store i32 %30, ptr %28, align 8, !tbaa !89
  %31 = icmp slt i32 %29, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %34

34:                                               ; preds = %32, %27
  %35 = load i32, ptr %28, align 8, !tbaa !89
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !88
  call void @BKE_editmesh_free(ptr noundef %39) #12
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %41 = load ptr, ptr %38, align 8, !tbaa !88
  call void %40(ptr noundef %41) #12
  store ptr null, ptr %38, align 8, !tbaa !88
  br label %42

42:                                               ; preds = %34, %37, %18, %26
  %43 = phi i8 [ 0, %26 ], [ 0, %18 ], [ 1, %37 ], [ 1, %34 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret i8 %43
}

declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BMO_error_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_mesh_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @ED_mesh_mirror_spatial_table(ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef zeroext 101) #12
  %3 = tail call i32 @ED_mesh_mirror_topo_table(ptr noundef null, i8 noundef zeroext 101) #12
  tail call void @BKE_editmesh_free(ptr noundef %0) #12
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare void @BKE_editmesh_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @EDBM_op_callf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ...) local_unnamed_addr #0 {
  %4 = alloca %struct.BMOperator, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.va_start(ptr nonnull %5)
  %7 = call zeroext i8 @BMO_op_vinitf(ptr noundef %6, ptr noundef nonnull %4, i32 noundef 1, ptr noundef %2, ptr noundef nonnull %5) #12
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !86
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %11, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.EDBM_op_callf) #12
  call void @llvm.va_end(ptr %5)
  br label %23

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !88
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call ptr @BKE_editmesh_copy(ptr noundef nonnull %0) #12
  store ptr %17, ptr %13, align 8, !tbaa !88
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !89
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !89
  call void @BMO_op_exec(ptr noundef %6, ptr noundef nonnull %4) #12
  call void @llvm.va_end(ptr %5)
  %22 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %1, i8 noundef zeroext 1), !range !92
  br label %23

23:                                               ; preds = %18, %9
  %24 = phi i8 [ %22, %18 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %4) #12
  ret i8 %24
}

declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @EDBM_op_call_and_selectf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4, ...) local_unnamed_addr #0 {
  %6 = alloca %struct.BMOperator, align 8
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
  call void @llvm.va_start(ptr nonnull %7)
  %9 = call zeroext i8 @BMO_op_vinitf(ptr noundef %8, ptr noundef nonnull %6, i32 noundef 1, ptr noundef %4, ptr noundef nonnull %7) #12
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !86
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %13, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.EDBM_op_call_and_selectf) #12
  call void @llvm.va_end(ptr %7)
  br label %36

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !88
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call ptr @BKE_editmesh_copy(ptr noundef nonnull %0) #12
  store ptr %19, ptr %15, align 8, !tbaa !88
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !89
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %21, align 8, !tbaa !89
  call void @BMO_op_exec(ptr noundef %8, ptr noundef nonnull %6) #12
  %24 = getelementptr inbounds %struct.BMOperator, ptr %6, i64 0, i32 1
  %25 = call ptr @BMO_slot_get(ptr noundef nonnull %24, ptr noundef %2) #12
  %26 = getelementptr inbounds %struct.BMOpSlot, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !44
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 11
  %30 = icmp eq i8 %3, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load ptr, ptr %0, align 8, !tbaa !34
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %32, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0) #12
  br label %33

33:                                               ; preds = %31, %20
  %34 = load ptr, ptr %0, align 8, !tbaa !34
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %34, ptr noundef nonnull %24, ptr noundef %2, i8 noundef zeroext %29, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  call void @llvm.va_end(ptr %7)
  %35 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %1, i8 noundef zeroext 1), !range !92
  br label %36

36:                                               ; preds = %33, %11
  %37 = phi i8 [ %35, %33 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %6) #12
  ret i8 %37
}

declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @EDBM_op_call_silentf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.va_start(ptr nonnull %4)
  %6 = call zeroext i8 @BMO_op_vinitf(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 1, ptr noundef %1, ptr noundef nonnull %4) #12
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  call void @llvm.va_end(ptr %4)
  br label %20

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call ptr @BKE_editmesh_copy(ptr noundef nonnull %0) #12
  store ptr %14, ptr %10, align 8, !tbaa !88
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !89
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 8, !tbaa !89
  call void @BMO_op_exec(ptr noundef %5, ptr noundef nonnull %3) #12
  call void @llvm.va_end(ptr %4)
  %19 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 0), !range !92
  br label %20

20:                                               ; preds = %15, %8
  %21 = phi i8 [ %19, %15 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #12
  ret i8 %21
}

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_selectmode_to_scene(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.BMEditMesh, ptr %4, i64 0, i32 12
  %8 = load i16, ptr %7, align 4, !tbaa !93
  %9 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !94
  %11 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 8
  store i16 %8, ptr %11, align 2, !tbaa !113
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68091904, ptr noundef %2) #12
  br label %12

12:                                               ; preds = %1, %6
  ret void
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #1

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_mesh_make(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !120
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 28
  %10 = load i32, ptr %9, align 8, !tbaa !122
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @BKE_mesh_convert_mfaces_to_mpolys(ptr noundef %4) #12
  br label %13

13:                                               ; preds = %12, %8, %2
  %14 = tail call ptr @BKE_mesh_to_bmesh(ptr noundef %4, ptr noundef %1) #12
  %15 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !123
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = tail call i32 @ED_mesh_mirror_spatial_table(ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef zeroext 101) #12
  %20 = tail call i32 @ED_mesh_mirror_topo_table(ptr noundef null, i8 noundef zeroext 101) #12
  tail call void @BKE_editmesh_free(ptr noundef nonnull %16) #12
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %22 = load ptr, ptr %15, align 8, !tbaa !123
  tail call void %21(ptr noundef %22) #12
  br label %23

23:                                               ; preds = %18, %13
  %24 = tail call ptr @BKE_editmesh_create(ptr noundef %14, i8 noundef zeroext 0) #12
  store ptr %24, ptr %15, align 8, !tbaa !123
  %25 = getelementptr inbounds %struct.ToolSettings, ptr %0, i64 0, i32 8
  %26 = load i16, ptr %25, align 2, !tbaa !113
  %27 = load ptr, ptr %24, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.BMesh, ptr %27, i64 0, i32 28
  store i16 %26, ptr %28, align 8, !tbaa !124
  %29 = getelementptr inbounds %struct.BMEditMesh, ptr %24, i64 0, i32 12
  store i16 %26, ptr %29, align 4, !tbaa !93
  %30 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 32
  %31 = load i32, ptr %30, align 4, !tbaa !125
  %32 = icmp sgt i32 %31, 0
  %33 = trunc i32 %31 to i16
  %34 = add i16 %33, -1
  %35 = select i1 %32, i16 %34, i16 0
  %36 = getelementptr inbounds %struct.BMEditMesh, ptr %24, i64 0, i32 13
  store i16 %35, ptr %36, align 2, !tbaa !126
  %37 = getelementptr inbounds %struct.BMEditMesh, ptr %24, i64 0, i32 14
  store ptr %1, ptr %37, align 8, !tbaa !49
  tail call void @BM_mesh_select_mode_flush_ex(ptr noundef %27, i16 noundef signext %26) #12
  ret void
}

declare void @BKE_mesh_convert_mfaces_to_mpolys(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_mesh_to_bmesh(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_editmesh_create(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_selectmode_flush(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %3 = load i16, ptr %2, align 4, !tbaa !93
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @BM_mesh_select_mode_flush_ex(ptr noundef %4, i16 noundef signext %3) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_mesh_load(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !123
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @BM_mesh_bm_to_me(ptr noundef %6, ptr noundef %3, i8 noundef zeroext 0) #12
  tail call void @BKE_object_free_derived_caches(ptr noundef %0) #12
  ret void
}

declare void @BM_mesh_bm_to_me(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @BKE_object_free_derived_caches(ptr noundef) local_unnamed_addr #1

declare i32 @ED_mesh_mirror_spatial_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare i32 @ED_mesh_mirror_topo_table(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_selectmode_flush_ex(ptr nocapture noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @BM_mesh_select_mode_flush_ex(ptr noundef %3, i16 noundef signext %1) #12
  ret void
}

declare void @BM_mesh_select_mode_flush_ex(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_deselect_flush(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %3 = load i16, ptr %2, align 4, !tbaa !93
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 28
  store i16 %3, ptr %5, align 8, !tbaa !124
  tail call void @BM_mesh_deselect_flush(ptr noundef %4) #12
  ret void
}

declare void @BM_mesh_deselect_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_select_flush(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %3 = load i16, ptr %2, align 4, !tbaa !93
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 28
  store i16 %3, ptr %5, align 8, !tbaa !124
  tail call void @BM_mesh_select_flush(ptr noundef %4) #12
  ret void
}

declare void @BM_mesh_select_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_select_more(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMOperator, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %2) #12
  %3 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %4 = load i16, ptr %3, align 4, !tbaa !93
  %5 = icmp eq i16 %4, 4
  %6 = zext i1 %5 to i32
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  %8 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %7, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 0, i32 noundef %6) #12
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  call void @BMO_op_exec(ptr noundef %9, ptr noundef nonnull %2) #12
  %10 = load ptr, ptr %0, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.BMOperator, ptr %2, i64 0, i32 1
  %12 = zext i1 %5 to i8
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %10, ptr noundef nonnull %11, ptr noundef nonnull @.str.3, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext %12) #12
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  call void @BMO_op_finish(ptr noundef %13, ptr noundef nonnull %2) #12
  %14 = load i16, ptr %3, align 4, !tbaa !93
  %15 = load ptr, ptr %0, align 8, !tbaa !34
  call void @BM_mesh_select_mode_flush_ex(ptr noundef %15, i16 noundef signext %14) #12
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %2) #12
  ret void
}

declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_select_less(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMOperator, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %2) #12
  %3 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %4 = load i16, ptr %3, align 4, !tbaa !93
  %5 = icmp eq i16 %4, 4
  %6 = zext i1 %5 to i32
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  %8 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %7, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 1, i32 noundef %6) #12
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  call void @BMO_op_exec(ptr noundef %9, ptr noundef nonnull %2) #12
  %10 = load ptr, ptr %0, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.BMOperator, ptr %2, i64 0, i32 1
  %12 = zext i1 %5 to i8
  call void @BMO_slot_buffer_hflag_disable(ptr noundef %10, ptr noundef nonnull %11, ptr noundef nonnull @.str.3, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext %12) #12
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  call void @BMO_op_finish(ptr noundef %13, ptr noundef nonnull %2) #12
  %14 = load i16, ptr %3, align 4, !tbaa !93
  %15 = load ptr, ptr %0, align 8, !tbaa !34
  call void @BM_mesh_select_mode_flush_ex(ptr noundef %15, i16 noundef signext %14) #12
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %2) #12
  ret void
}

declare void @BMO_slot_buffer_hflag_disable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_flag_disable_all(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %3, i8 noundef zeroext 11, i8 noundef zeroext %1, i8 noundef zeroext 0) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_flag_enable_all(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @BM_mesh_elem_hflag_enable_all(ptr noundef %3, i8 noundef zeroext 11, i8 noundef zeroext %1, i8 noundef zeroext 1) #12
  ret void
}

declare void @BM_mesh_elem_hflag_enable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @undo_push_mesh(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #12
  %5 = getelementptr inbounds %struct.BMEditMesh, ptr %4, i64 0, i32 14
  store ptr %3, ptr %5, align 8, !tbaa !49
  tail call void @undo_editmode_push(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @getEditMesh, ptr noundef nonnull @free_undo, ptr noundef nonnull @undoMesh_to_editbtMesh, ptr noundef nonnull @editbtMesh_to_undoMesh, ptr noundef null) #12
  ret void
}

declare void @undo_editmode_push(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @getEditMesh(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !127
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !123
  br label %13

13:                                               ; preds = %1, %4, %8
  %14 = phi ptr [ %12, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define internal void @free_undo(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !128
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  tail call void @BKE_key_free(ptr noundef nonnull %3) #12
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %7 = load ptr, ptr %2, align 8, !tbaa !128
  tail call void %6(ptr noundef %7) #12
  br label %8

8:                                                ; preds = %5, %1
  tail call void @BKE_mesh_free(ptr noundef %0, i32 noundef 0) #12
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %9(ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @undoMesh_to_editbtMesh(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.BMAllocTemplate, align 4
  %5 = getelementptr inbounds %struct.BMEditMesh, ptr %1, i64 0, i32 14
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %8 = load i32, ptr %7, align 8, !tbaa !129
  store i32 %8, ptr %4, align 4, !tbaa !131
  %9 = getelementptr inbounds %struct.BMAllocTemplate, ptr %4, i64 0, i32 1
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %11 = load i32, ptr %10, align 4, !tbaa !133
  store i32 %11, ptr %9, align 4, !tbaa !134
  %12 = getelementptr inbounds %struct.BMAllocTemplate, ptr %4, i64 0, i32 2
  %13 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %14 = load i32, ptr %13, align 4, !tbaa !135
  store i32 %14, ptr %12, align 4, !tbaa !136
  %15 = getelementptr inbounds %struct.BMAllocTemplate, ptr %4, i64 0, i32 3
  %16 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %17 = load i32, ptr %16, align 8, !tbaa !137
  store i32 %17, ptr %15, align 4, !tbaa !138
  %18 = getelementptr inbounds %struct.UndoMesh, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !139
  %20 = load ptr, ptr %1, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.BMesh, ptr %20, i64 0, i32 29
  store i32 %19, ptr %21, align 4, !tbaa !140
  %22 = trunc i32 %19 to i16
  %23 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 115
  store i16 %22, ptr %23, align 2, !tbaa !141
  %24 = tail call i32 @ED_mesh_mirror_spatial_table(ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef zeroext 101) #12
  %25 = tail call i32 @ED_mesh_mirror_topo_table(ptr noundef null, i8 noundef zeroext 101) #12
  tail call void @BKE_editmesh_free(ptr noundef nonnull %1) #12
  %26 = call ptr @BM_mesh_create(ptr noundef nonnull %4) #12
  %27 = load i16, ptr %23, align 2, !tbaa !141
  %28 = sext i16 %27 to i32
  call void @BM_mesh_bm_from_me(ptr noundef %26, ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef %28) #12
  %29 = call ptr @BKE_editmesh_create(ptr noundef %26, i8 noundef zeroext 1) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(112) %29, i64 112, i1 false), !tbaa.struct !90
  %30 = getelementptr inbounds %struct.UndoMesh, ptr %0, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !142
  %32 = trunc i32 %31 to i16
  %33 = getelementptr inbounds %struct.BMEditMesh, ptr %1, i64 0, i32 12
  store i16 %32, ptr %33, align 4, !tbaa !93
  %34 = getelementptr inbounds %struct.BMesh, ptr %26, i64 0, i32 28
  store i16 %32, ptr %34, align 8, !tbaa !124
  store ptr %6, ptr %5, align 8, !tbaa !49
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %35(ptr noundef %29) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @editbtMesh_to_undoMesh(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %4 = tail call ptr %3(i64 noundef 1384, ptr noundef nonnull @.str.17) #12
  %5 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !128
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @BKE_key_copy_nolib(ptr noundef nonnull %6) #12
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi ptr [ %9, %8 ], [ null, %2 ]
  %12 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 4
  store ptr %11, ptr %12, align 8, !tbaa !143
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @BM_mesh_bm_to_me(ptr noundef %13, ptr noundef %4, i8 noundef zeroext 0) #12
  %14 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %15 = load i16, ptr %14, align 4, !tbaa !93
  %16 = sext i16 %15 to i32
  %17 = getelementptr inbounds %struct.UndoMesh, ptr %4, i64 0, i32 1
  store i32 %16, ptr %17, align 8, !tbaa !142
  %18 = load ptr, ptr %0, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.BMesh, ptr %18, i64 0, i32 29
  %20 = load i32, ptr %19, align 4, !tbaa !140
  %21 = getelementptr inbounds %struct.UndoMesh, ptr %4, i64 0, i32 2
  store i32 %20, ptr %21, align 4, !tbaa !139
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_uv_vert_map_create(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #12
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %7 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %6, i32 noundef 16) #12
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %0, i8 noundef zeroext 9) #12
  %8 = load i32, ptr %0, align 8, !tbaa !144
  %9 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 3, ptr %9, align 4, !tbaa !69
  %10 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %10, align 8, !tbaa !71
  %11 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %11, align 8, !tbaa !72
  %12 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !75
  store ptr %13, ptr %4, align 8, !tbaa !44
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #12
  %14 = load ptr, ptr %11, align 8, !tbaa !72
  %15 = call ptr %14(ptr noundef nonnull %4) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %3
  %18 = icmp eq i8 %1, 0
  br label %19

19:                                               ; preds = %17, %31
  %20 = phi ptr [ %15, %17 ], [ %34, %31 ]
  %21 = phi i32 [ 0, %17 ], [ %32, %31 ]
  br i1 %18, label %27, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.BMHeader, ptr %20, i64 0, i32 3
  %24 = load i8, ptr %23, align 1, !tbaa !76
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22, %19
  %28 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !145
  %30 = add nsw i32 %29, %21
  br label %31

31:                                               ; preds = %22, %27
  %32 = phi i32 [ %30, %27 ], [ %21, %22 ]
  %33 = load ptr, ptr %11, align 8, !tbaa !72
  %34 = call ptr %33(ptr noundef nonnull %4) #12
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !147

36:                                               ; preds = %31, %3
  %37 = phi i32 [ 0, %3 ], [ %32, %31 ]
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %192, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %41 = call ptr %40(i64 noundef 16, ptr noundef nonnull @.str.4) #12
  %42 = icmp eq ptr %41, null
  br i1 %42, label %192, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %45 = sext i32 %8 to i64
  %46 = shl nsw i64 %45, 3
  %47 = call ptr %44(i64 noundef %46, ptr noundef nonnull @.str.5) #12
  store ptr %47, ptr %41, align 8, !tbaa !148
  %48 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %49 = sext i32 %37 to i64
  %50 = shl nsw i64 %49, 4
  %51 = call ptr %48(i64 noundef %50, ptr noundef nonnull @.str.6) #12
  %52 = getelementptr inbounds %struct.UvVertMap, ptr %41, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !150
  %53 = load ptr, ptr %41, align 8, !tbaa !148
  %54 = icmp eq ptr %53, null
  %55 = icmp eq ptr %51, null
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  call void @BKE_mesh_uv_vert_map_free(ptr noundef nonnull %41) #12
  br label %192

58:                                               ; preds = %43
  store i8 3, ptr %9, align 4, !tbaa !69
  store ptr @bmiter__elem_of_mesh_begin, ptr %10, align 8, !tbaa !71
  store ptr @bmiter__elem_of_mesh_step, ptr %11, align 8, !tbaa !72
  %59 = load ptr, ptr %12, align 8, !tbaa !75
  store ptr %59, ptr %4, align 8, !tbaa !44
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #12
  %60 = load ptr, ptr %11, align 8, !tbaa !72
  %61 = call ptr %60(ptr noundef nonnull %4) #12
  %62 = icmp eq ptr %61, null
  br i1 %62, label %108, label %63

63:                                               ; preds = %58
  %64 = icmp eq i8 %1, 0
  %65 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %66 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %67 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  br label %68

68:                                               ; preds = %63, %102
  %69 = phi ptr [ %61, %63 ], [ %106, %102 ]
  %70 = phi ptr [ %51, %63 ], [ %103, %102 ]
  %71 = phi i32 [ 0, %63 ], [ %104, %102 ]
  br i1 %64, label %77, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.BMHeader, ptr %69, i64 0, i32 3
  %74 = load i8, ptr %73, align 1, !tbaa !76
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %102, label %77

77:                                               ; preds = %72, %68
  store i8 11, ptr %65, align 4, !tbaa !69
  store ptr @bmiter__loop_of_face_begin, ptr %66, align 8, !tbaa !71
  store ptr @bmiter__loop_of_face_step, ptr %67, align 8, !tbaa !72
  store ptr %69, ptr %5, align 8, !tbaa !44
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %5) #12
  %78 = load ptr, ptr %67, align 8, !tbaa !72
  %79 = call ptr %78(ptr noundef nonnull %5) #12
  %80 = icmp eq ptr %79, null
  br i1 %80, label %102, label %81

81:                                               ; preds = %77, %81
  %82 = phi ptr [ %100, %81 ], [ %79, %77 ]
  %83 = phi ptr [ %97, %81 ], [ %70, %77 ]
  %84 = phi i32 [ %98, %81 ], [ 0, %77 ]
  %85 = trunc i32 %84 to i8
  %86 = getelementptr inbounds %struct.UvMapVert, ptr %83, i64 0, i32 2
  store i8 %85, ptr %86, align 4, !tbaa !151
  %87 = getelementptr inbounds %struct.UvMapVert, ptr %83, i64 0, i32 1
  store i32 %71, ptr %87, align 8, !tbaa !153
  %88 = getelementptr inbounds %struct.UvMapVert, ptr %83, i64 0, i32 3
  store i8 0, ptr %88, align 1, !tbaa !154
  %89 = load ptr, ptr %41, align 8, !tbaa !148
  %90 = getelementptr inbounds %struct.BMLoop, ptr %82, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !155
  %92 = getelementptr inbounds %struct.BMHeader, ptr %91, i64 0, i32 1
  %93 = load i32, ptr %92, align 8, !tbaa !157
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds ptr, ptr %89, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !45
  store ptr %96, ptr %83, align 8, !tbaa !158
  store ptr %83, ptr %95, align 8, !tbaa !45
  %97 = getelementptr inbounds %struct.UvMapVert, ptr %83, i64 1
  %98 = add nuw nsw i32 %84, 1
  %99 = load ptr, ptr %67, align 8, !tbaa !72
  %100 = call ptr %99(ptr noundef nonnull %5) #12
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %81, !llvm.loop !159

102:                                              ; preds = %81, %77, %72
  %103 = phi ptr [ %70, %72 ], [ %70, %77 ], [ %97, %81 ]
  %104 = add i32 %71, 1
  %105 = load ptr, ptr %11, align 8, !tbaa !72
  %106 = call ptr %105(ptr noundef nonnull %4) #12
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %68, !llvm.loop !160

108:                                              ; preds = %102, %58
  store i8 1, ptr %9, align 4, !tbaa !69
  store ptr @bmiter__elem_of_mesh_begin, ptr %10, align 8, !tbaa !71
  store ptr @bmiter__elem_of_mesh_step, ptr %11, align 8, !tbaa !72
  %109 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %110 = load ptr, ptr %109, align 8, !tbaa !73
  store ptr %110, ptr %4, align 8, !tbaa !44
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #12
  %111 = load ptr, ptr %11, align 8, !tbaa !72
  %112 = call ptr %111(ptr noundef nonnull %4) #12
  %113 = icmp eq ptr %112, null
  br i1 %113, label %192, label %114

114:                                              ; preds = %108
  %115 = sext i32 %7 to i64
  %116 = getelementptr inbounds float, ptr %2, i64 1
  br label %117

117:                                              ; preds = %114, %184
  %118 = phi i32 [ 0, %114 ], [ %188, %184 ]
  %119 = load ptr, ptr %41, align 8, !tbaa !148
  %120 = zext i32 %118 to i64
  %121 = getelementptr inbounds ptr, ptr %119, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !45
  %123 = icmp eq ptr %122, null
  br i1 %123, label %184, label %124

124:                                              ; preds = %117, %179
  %125 = phi ptr [ %181, %179 ], [ %122, %117 ]
  %126 = phi ptr [ %180, %179 ], [ null, %117 ]
  %127 = load ptr, ptr %125, align 8, !tbaa !158
  store ptr %126, ptr %125, align 8, !tbaa !158
  %128 = getelementptr inbounds %struct.UvMapVert, ptr %125, i64 0, i32 1
  %129 = load i32, ptr %128, align 8, !tbaa !153
  %130 = call ptr @BM_face_at_index(ptr noundef nonnull %0, i32 noundef %129) #12
  %131 = getelementptr inbounds %struct.UvMapVert, ptr %125, i64 0, i32 2
  %132 = load i8, ptr %131, align 4, !tbaa !151
  %133 = zext i8 %132 to i32
  %134 = call ptr @BM_iter_at_index(ptr noundef nonnull %0, i8 noundef zeroext 11, ptr noundef %130, i32 noundef %133) #12
  %135 = load ptr, ptr %134, align 8, !tbaa !161
  %136 = getelementptr inbounds i8, ptr %135, i64 %115
  %137 = icmp eq ptr %127, null
  br i1 %137, label %179, label %138

138:                                              ; preds = %124
  %139 = getelementptr inbounds float, ptr %136, i64 1
  br label %140

140:                                              ; preds = %138, %174
  %141 = phi ptr [ null, %138 ], [ %177, %174 ]
  %142 = phi ptr [ %127, %138 ], [ %145, %174 ]
  %143 = phi ptr [ %127, %138 ], [ %176, %174 ]
  %144 = phi ptr [ %125, %138 ], [ %175, %174 ]
  %145 = load ptr, ptr %142, align 8, !tbaa !158
  %146 = getelementptr inbounds %struct.UvMapVert, ptr %142, i64 0, i32 1
  %147 = load i32, ptr %146, align 8, !tbaa !153
  %148 = call ptr @BM_face_at_index(ptr noundef nonnull %0, i32 noundef %147) #12
  %149 = getelementptr inbounds %struct.UvMapVert, ptr %142, i64 0, i32 2
  %150 = load i8, ptr %149, align 4, !tbaa !151
  %151 = zext i8 %150 to i32
  %152 = call ptr @BM_iter_at_index(ptr noundef nonnull %0, i8 noundef zeroext 11, ptr noundef %148, i32 noundef %151) #12
  %153 = load ptr, ptr %152, align 8, !tbaa !161
  %154 = getelementptr inbounds i8, ptr %153, i64 %115
  %155 = load float, ptr %154, align 4, !tbaa !162
  %156 = load float, ptr %136, align 4, !tbaa !162
  %157 = fsub float %155, %156
  %158 = call float @llvm.fabs.f32(float %157)
  %159 = load float, ptr %2, align 4, !tbaa !162
  %160 = fcmp olt float %158, %159
  br i1 %160, label %161, label %174

161:                                              ; preds = %140
  %162 = getelementptr inbounds float, ptr %154, i64 1
  %163 = load float, ptr %162, align 4, !tbaa !162
  %164 = load float, ptr %139, align 4, !tbaa !162
  %165 = fsub float %163, %164
  %166 = call float @llvm.fabs.f32(float %165)
  %167 = load float, ptr %116, align 4, !tbaa !162
  %168 = fcmp olt float %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %161
  %170 = icmp eq ptr %141, null
  br i1 %170, label %172, label %171

171:                                              ; preds = %169
  store ptr %145, ptr %141, align 8, !tbaa !158
  br label %172

172:                                              ; preds = %169, %171
  %173 = phi ptr [ %143, %171 ], [ %145, %169 ]
  store ptr %144, ptr %142, align 8, !tbaa !158
  br label %174

174:                                              ; preds = %140, %161, %172
  %175 = phi ptr [ %142, %172 ], [ %144, %161 ], [ %144, %140 ]
  %176 = phi ptr [ %173, %172 ], [ %143, %161 ], [ %143, %140 ]
  %177 = phi ptr [ %141, %172 ], [ %142, %161 ], [ %142, %140 ]
  %178 = icmp eq ptr %145, null
  br i1 %178, label %179, label %140, !llvm.loop !163

179:                                              ; preds = %174, %124
  %180 = phi ptr [ %125, %124 ], [ %175, %174 ]
  %181 = phi ptr [ %127, %124 ], [ %176, %174 ]
  %182 = getelementptr inbounds %struct.UvMapVert, ptr %180, i64 0, i32 3
  store i8 1, ptr %182, align 1, !tbaa !154
  %183 = icmp eq ptr %181, null
  br i1 %183, label %184, label %124, !llvm.loop !164

184:                                              ; preds = %179, %117
  %185 = phi ptr [ null, %117 ], [ %180, %179 ]
  %186 = load ptr, ptr %41, align 8, !tbaa !148
  %187 = getelementptr inbounds ptr, ptr %186, i64 %120
  store ptr %185, ptr %187, align 8, !tbaa !45
  %188 = add i32 %118, 1
  %189 = load ptr, ptr %11, align 8, !tbaa !72
  %190 = call ptr %189(ptr noundef nonnull %4) #12
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %117, !llvm.loop !165

192:                                              ; preds = %184, %108, %39, %36, %57
  %193 = phi ptr [ null, %57 ], [ null, %36 ], [ null, %39 ], [ %41, %108 ], [ %41, %184 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  ret ptr %193
}

declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @BKE_mesh_uv_vert_map_free(ptr noundef) local_unnamed_addr #1

declare ptr @BM_face_at_index(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @BM_iter_at_index(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_uv_vert_map_at_index(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !148
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds ptr, ptr %3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_uv_element_map_create(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #12
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %7 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %6, i32 noundef 16) #12
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %0, i8 noundef zeroext 9) #12
  %8 = load i32, ptr %0, align 8, !tbaa !144
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !166
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call ptr %9(i64 noundef %13, ptr noundef nonnull @.str.7) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %447, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 3, ptr %17, align 4, !tbaa !69
  %18 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %18, align 8, !tbaa !71
  %19 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %19, align 8, !tbaa !72
  %20 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !75
  store ptr %21, ptr %4, align 8, !tbaa !44
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #12
  %22 = load ptr, ptr %19, align 8, !tbaa !72
  %23 = call ptr %22(ptr noundef nonnull %4) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %44, label %25

25:                                               ; preds = %16
  %26 = icmp eq i8 %1, 0
  br label %27

27:                                               ; preds = %25, %39
  %28 = phi ptr [ %23, %25 ], [ %42, %39 ]
  %29 = phi i32 [ 0, %25 ], [ %40, %39 ]
  br i1 %26, label %35, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.BMHeader, ptr %28, i64 0, i32 3
  %32 = load i8, ptr %31, align 1, !tbaa !76
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30, %27
  %36 = getelementptr inbounds %struct.BMFace, ptr %28, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !145
  %38 = add nsw i32 %37, %29
  br label %39

39:                                               ; preds = %30, %35
  %40 = phi i32 [ %38, %35 ], [ %29, %30 ]
  %41 = load ptr, ptr %19, align 8, !tbaa !72
  %42 = call ptr %41(ptr noundef nonnull %4) #12
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %27, !llvm.loop !167

44:                                               ; preds = %39, %16
  %45 = phi i32 [ 0, %16 ], [ %40, %39 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %444, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %49 = call ptr %48(i64 noundef 32, ptr noundef nonnull @.str.8) #12
  %50 = icmp eq ptr %49, null
  br i1 %50, label %444, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.UvElementMap, ptr %49, i64 0, i32 2
  store i32 %45, ptr %52, align 8, !tbaa !168
  %53 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %54 = sext i32 %8 to i64
  %55 = shl nsw i64 %54, 3
  %56 = call ptr %53(i64 noundef %55, ptr noundef nonnull @.str.9) #12
  store ptr %56, ptr %49, align 8, !tbaa !170
  %57 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %58 = sext i32 %45 to i64
  %59 = mul nsw i64 %58, 24
  %60 = call ptr %57(i64 noundef %59, ptr noundef nonnull @.str.10) #12
  %61 = getelementptr inbounds %struct.UvElementMap, ptr %49, i64 0, i32 1
  store ptr %60, ptr %61, align 8, !tbaa !171
  %62 = load ptr, ptr %49, align 8, !tbaa !170
  %63 = icmp eq ptr %62, null
  %64 = icmp eq ptr %60, null
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %51
  br i1 %63, label %69, label %67

67:                                               ; preds = %66
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %68(ptr noundef nonnull %62) #12
  br label %69

69:                                               ; preds = %67, %66
  %70 = load ptr, ptr %61, align 8, !tbaa !171
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %73(ptr noundef nonnull %70) #12
  br label %74

74:                                               ; preds = %72, %69
  %75 = getelementptr inbounds %struct.UvElementMap, ptr %49, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !172
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %79(ptr noundef nonnull %76) #12
  br label %80

80:                                               ; preds = %78, %74
  %81 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %81(ptr noundef nonnull %49) #12
  br label %444

82:                                               ; preds = %51
  store i8 3, ptr %17, align 4, !tbaa !69
  store ptr @bmiter__elem_of_mesh_begin, ptr %18, align 8, !tbaa !71
  store ptr @bmiter__elem_of_mesh_step, ptr %19, align 8, !tbaa !72
  %83 = load ptr, ptr %20, align 8, !tbaa !75
  store ptr %83, ptr %4, align 8, !tbaa !44
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #12
  %84 = load ptr, ptr %19, align 8, !tbaa !72
  %85 = call ptr %84(ptr noundef nonnull %4) #12
  %86 = icmp eq ptr %85, null
  br i1 %86, label %134, label %87

87:                                               ; preds = %82
  %88 = icmp eq i8 %1, 0
  %89 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %90 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %91 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  br label %92

92:                                               ; preds = %87, %129
  %93 = phi i64 [ 0, %87 ], [ %96, %129 ]
  %94 = phi ptr [ %85, %87 ], [ %132, %129 ]
  %95 = phi ptr [ %60, %87 ], [ %130, %129 ]
  %96 = add nuw i64 %93, 1
  %97 = getelementptr inbounds i32, ptr %14, i64 %93
  store i32 65535, ptr %97, align 4, !tbaa !43
  br i1 %88, label %103, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.BMHeader, ptr %94, i64 0, i32 3
  %100 = load i8, ptr %99, align 1, !tbaa !76
  %101 = and i8 %100, 1
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %129, label %103

103:                                              ; preds = %98, %92
  store i8 11, ptr %89, align 4, !tbaa !69
  store ptr @bmiter__loop_of_face_begin, ptr %90, align 8, !tbaa !71
  store ptr @bmiter__loop_of_face_step, ptr %91, align 8, !tbaa !72
  store ptr %94, ptr %5, align 8, !tbaa !44
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %5) #12
  %104 = load ptr, ptr %91, align 8, !tbaa !72
  %105 = call ptr %104(ptr noundef nonnull %5) #12
  %106 = icmp eq ptr %105, null
  br i1 %106, label %129, label %107

107:                                              ; preds = %103, %107
  %108 = phi ptr [ %126, %107 ], [ %105, %103 ]
  %109 = phi ptr [ %124, %107 ], [ %95, %103 ]
  %110 = phi i32 [ %127, %107 ], [ 0, %103 ]
  %111 = getelementptr inbounds %struct.UvElement, ptr %109, i64 0, i32 1
  store ptr %108, ptr %111, align 8, !tbaa !173
  %112 = getelementptr inbounds %struct.UvElement, ptr %109, i64 0, i32 3
  store i8 0, ptr %112, align 2, !tbaa !175
  %113 = getelementptr inbounds %struct.UvElement, ptr %109, i64 0, i32 5
  store i16 -1, ptr %113, align 4, !tbaa !176
  %114 = trunc i32 %110 to i16
  %115 = getelementptr inbounds %struct.UvElement, ptr %109, i64 0, i32 2
  store i16 %114, ptr %115, align 8, !tbaa !177
  %116 = load ptr, ptr %49, align 8, !tbaa !170
  %117 = getelementptr inbounds %struct.BMLoop, ptr %108, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !155
  %119 = getelementptr inbounds %struct.BMHeader, ptr %118, i64 0, i32 1
  %120 = load i32, ptr %119, align 8, !tbaa !157
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds ptr, ptr %116, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !45
  store ptr %123, ptr %109, align 8, !tbaa !178
  store ptr %109, ptr %122, align 8, !tbaa !45
  %124 = getelementptr inbounds %struct.UvElement, ptr %109, i64 1
  %125 = load ptr, ptr %91, align 8, !tbaa !72
  %126 = call ptr %125(ptr noundef nonnull %5) #12
  %127 = add nuw nsw i32 %110, 1
  %128 = icmp eq ptr %126, null
  br i1 %128, label %129, label %107, !llvm.loop !179

129:                                              ; preds = %107, %103, %98
  %130 = phi ptr [ %95, %98 ], [ %95, %103 ], [ %124, %107 ]
  %131 = load ptr, ptr %19, align 8, !tbaa !72
  %132 = call ptr %131(ptr noundef nonnull %4) #12
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %92, !llvm.loop !180

134:                                              ; preds = %129, %82
  store i8 1, ptr %17, align 4, !tbaa !69
  store ptr @bmiter__elem_of_mesh_begin, ptr %18, align 8, !tbaa !71
  store ptr @bmiter__elem_of_mesh_step, ptr %19, align 8, !tbaa !72
  %135 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %136 = load ptr, ptr %135, align 8, !tbaa !73
  store ptr %136, ptr %4, align 8, !tbaa !44
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #12
  %137 = load ptr, ptr %19, align 8, !tbaa !72
  %138 = call ptr %137(ptr noundef nonnull %4) #12
  %139 = icmp eq ptr %138, null
  br i1 %139, label %202, label %140

140:                                              ; preds = %134
  %141 = sext i32 %7 to i64
  br label %142

142:                                              ; preds = %140, %196
  %143 = phi i64 [ 0, %140 ], [ %198, %196 ]
  %144 = load ptr, ptr %49, align 8, !tbaa !170
  %145 = getelementptr inbounds ptr, ptr %144, i64 %143
  %146 = load ptr, ptr %145, align 8, !tbaa !45
  %147 = icmp eq ptr %146, null
  br i1 %147, label %196, label %148

148:                                              ; preds = %142, %191
  %149 = phi ptr [ %193, %191 ], [ %146, %142 ]
  %150 = phi ptr [ %192, %191 ], [ null, %142 ]
  %151 = load ptr, ptr %149, align 8, !tbaa !178
  store ptr %150, ptr %149, align 8, !tbaa !178
  %152 = icmp eq ptr %151, null
  br i1 %152, label %191, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.UvElement, ptr %149, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !173
  %156 = load ptr, ptr %155, align 8, !tbaa !161
  %157 = getelementptr inbounds i8, ptr %156, i64 %141
  %158 = load float, ptr %157, align 4, !tbaa !162
  %159 = getelementptr inbounds float, ptr %157, i64 1
  %160 = load float, ptr %159, align 4, !tbaa !162
  br label %161

161:                                              ; preds = %153, %186
  %162 = phi ptr [ null, %153 ], [ %189, %186 ]
  %163 = phi ptr [ %151, %153 ], [ %166, %186 ]
  %164 = phi ptr [ %151, %153 ], [ %188, %186 ]
  %165 = phi ptr [ %149, %153 ], [ %187, %186 ]
  %166 = load ptr, ptr %163, align 8, !tbaa !178
  %167 = getelementptr inbounds %struct.UvElement, ptr %163, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !173
  %169 = load ptr, ptr %168, align 8, !tbaa !161
  %170 = getelementptr inbounds i8, ptr %169, i64 %141
  %171 = load float, ptr %170, align 4, !tbaa !162
  %172 = fsub float %171, %158
  %173 = getelementptr inbounds float, ptr %170, i64 1
  %174 = load float, ptr %173, align 4, !tbaa !162
  %175 = fsub float %174, %160
  %176 = call float @llvm.fabs.f32(float %172)
  %177 = fcmp olt float %176, 0x3F1A36E2E0000000
  %178 = call float @llvm.fabs.f32(float %175)
  %179 = fcmp olt float %178, 0x3F1A36E2E0000000
  %180 = select i1 %177, i1 %179, i1 false
  br i1 %180, label %181, label %186

181:                                              ; preds = %161
  %182 = icmp eq ptr %162, null
  br i1 %182, label %184, label %183

183:                                              ; preds = %181
  store ptr %166, ptr %162, align 8, !tbaa !178
  br label %184

184:                                              ; preds = %181, %183
  %185 = phi ptr [ %164, %183 ], [ %166, %181 ]
  store ptr %165, ptr %163, align 8, !tbaa !178
  br label %186

186:                                              ; preds = %161, %184
  %187 = phi ptr [ %163, %184 ], [ %165, %161 ]
  %188 = phi ptr [ %185, %184 ], [ %164, %161 ]
  %189 = phi ptr [ %162, %184 ], [ %163, %161 ]
  %190 = icmp eq ptr %166, null
  br i1 %190, label %191, label %161, !llvm.loop !181

191:                                              ; preds = %186, %148
  %192 = phi ptr [ %149, %148 ], [ %187, %186 ]
  %193 = phi ptr [ %151, %148 ], [ %188, %186 ]
  %194 = getelementptr inbounds %struct.UvElement, ptr %192, i64 0, i32 3
  store i8 1, ptr %194, align 2, !tbaa !175
  %195 = icmp eq ptr %193, null
  br i1 %195, label %196, label %148, !llvm.loop !182

196:                                              ; preds = %191, %142
  %197 = phi ptr [ null, %142 ], [ %192, %191 ]
  store ptr %197, ptr %145, align 8, !tbaa !45
  %198 = add nuw i64 %143, 1
  %199 = load ptr, ptr %19, align 8, !tbaa !72
  %200 = call ptr %199(ptr noundef nonnull %4) #12
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %142, !llvm.loop !183

202:                                              ; preds = %196, %134
  %203 = icmp eq i8 %2, 0
  br i1 %203, label %444, label %204

204:                                              ; preds = %202
  %205 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %206 = shl nsw i64 %58, 2
  %207 = call ptr %205(i64 noundef %206, ptr noundef nonnull @.str.11) #12
  %208 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %209 = load i32, ptr %10, align 4, !tbaa !166
  %210 = sext i32 %209 to i64
  %211 = shl nsw i64 %210, 3
  %212 = call ptr %208(i64 noundef %211, ptr noundef nonnull @.str.12) #12
  %213 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %214 = call ptr %213(i64 noundef %59, ptr noundef nonnull @.str.13) #12
  %215 = icmp sgt i32 %45, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %204
  %217 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %218 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %219 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %220 = zext nneg i32 %45 to i64
  br label %227

221:                                              ; preds = %346, %204
  %222 = phi i32 [ 0, %204 ], [ %347, %346 ]
  %223 = load i32, ptr %0, align 8, !tbaa !144
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %370

225:                                              ; preds = %221
  %226 = zext nneg i32 %223 to i64
  br label %351

227:                                              ; preds = %216, %346
  %228 = phi i64 [ 0, %216 ], [ %349, %346 ]
  %229 = phi i32 [ 0, %216 ], [ %348, %346 ]
  %230 = phi i32 [ 0, %216 ], [ %347, %346 ]
  %231 = load ptr, ptr %61, align 8, !tbaa !171
  %232 = getelementptr inbounds %struct.UvElement, ptr %231, i64 %228, i32 5
  %233 = load i16, ptr %232, align 4, !tbaa !176
  %234 = icmp eq i16 %233, -1
  br i1 %234, label %235, label %346

235:                                              ; preds = %227
  %236 = trunc i32 %230 to i16
  store i16 %236, ptr %232, align 4, !tbaa !176
  %237 = getelementptr inbounds %struct.UvElement, ptr %231, i64 %228, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !173
  %239 = getelementptr inbounds %struct.BMLoop, ptr %238, i64 0, i32 3
  %240 = load ptr, ptr %239, align 8, !tbaa !184
  store ptr %240, ptr %212, align 8, !tbaa !45
  %241 = getelementptr inbounds %struct.BMHeader, ptr %240, i64 0, i32 1
  %242 = load i32, ptr %241, align 8, !tbaa !157
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, ptr %14, i64 %243
  store i32 %230, ptr %244, align 4, !tbaa !43
  br label %249

245:                                              ; preds = %338, %249
  %246 = phi i32 [ %251, %249 ], [ %339, %338 ]
  %247 = phi i32 [ %252, %249 ], [ %340, %338 ]
  %248 = icmp sgt i32 %247, 0
  br i1 %248, label %249, label %344, !llvm.loop !185

249:                                              ; preds = %235, %245
  %250 = phi i32 [ 1, %235 ], [ %247, %245 ]
  %251 = phi i32 [ %229, %235 ], [ %246, %245 ]
  %252 = add nsw i32 %250, -1
  %253 = zext nneg i32 %252 to i64
  %254 = getelementptr inbounds ptr, ptr %212, i64 %253
  %255 = load ptr, ptr %254, align 8, !tbaa !45
  store i8 11, ptr %217, align 4, !tbaa !69
  store ptr @bmiter__loop_of_face_begin, ptr %218, align 8, !tbaa !71
  store ptr @bmiter__loop_of_face_step, ptr %219, align 8, !tbaa !72
  store ptr %255, ptr %5, align 8, !tbaa !44
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %5) #12
  %256 = load ptr, ptr %219, align 8, !tbaa !72
  %257 = call ptr %256(ptr noundef nonnull %5) #12
  %258 = icmp eq ptr %257, null
  br i1 %258, label %245, label %259

259:                                              ; preds = %249, %338
  %260 = phi ptr [ %342, %338 ], [ %257, %249 ]
  %261 = phi i32 [ %340, %338 ], [ %252, %249 ]
  %262 = phi i32 [ %339, %338 ], [ %251, %249 ]
  %263 = load ptr, ptr %49, align 8, !tbaa !170
  %264 = getelementptr inbounds %struct.BMLoop, ptr %260, i64 0, i32 1
  %265 = load ptr, ptr %264, align 8, !tbaa !155
  %266 = getelementptr inbounds %struct.BMHeader, ptr %265, i64 0, i32 1
  %267 = load i32, ptr %266, align 8, !tbaa !157
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds ptr, ptr %263, i64 %268
  %270 = load ptr, ptr %269, align 8, !tbaa !45
  %271 = icmp eq ptr %270, null
  br i1 %271, label %338, label %272

272:                                              ; preds = %259, %335
  %273 = phi ptr [ %278, %335 ], [ %270, %259 ]
  %274 = phi ptr [ %336, %335 ], [ %270, %259 ]
  %275 = getelementptr inbounds %struct.UvElement, ptr %274, i64 0, i32 3
  %276 = load i8, ptr %275, align 2, !tbaa !175
  %277 = icmp eq i8 %276, 0
  %278 = select i1 %277, ptr %273, ptr %274
  %279 = getelementptr inbounds %struct.UvElement, ptr %274, i64 0, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !173
  %281 = getelementptr inbounds %struct.BMLoop, ptr %280, i64 0, i32 3
  %282 = load ptr, ptr %281, align 8, !tbaa !184
  %283 = icmp eq ptr %282, %255
  br i1 %283, label %284, label %335

284:                                              ; preds = %272
  %285 = getelementptr inbounds %struct.UvElement, ptr %274, i64 0, i32 5
  store i16 %236, ptr %285, align 4, !tbaa !176
  %286 = load ptr, ptr %61, align 8, !tbaa !171
  %287 = ptrtoint ptr %274 to i64
  %288 = ptrtoint ptr %286 to i64
  %289 = sub i64 %287, %288
  %290 = sdiv exact i64 %289, 24
  %291 = getelementptr inbounds i32, ptr %207, i64 %290
  store i32 %262, ptr %291, align 4, !tbaa !43
  %292 = sext i32 %262 to i64
  %293 = getelementptr inbounds %struct.UvElement, ptr %214, i64 %292, i32 1
  store ptr %280, ptr %293, align 8, !tbaa !173
  %294 = getelementptr inbounds %struct.UvElement, ptr %214, i64 %292, i32 3
  store i8 %276, ptr %294, align 2, !tbaa !175
  %295 = getelementptr inbounds %struct.UvElement, ptr %274, i64 0, i32 2
  %296 = load i16, ptr %295, align 8, !tbaa !177
  %297 = getelementptr inbounds %struct.UvElement, ptr %214, i64 %292, i32 2
  store i16 %296, ptr %297, align 8, !tbaa !177
  %298 = getelementptr inbounds %struct.UvElement, ptr %214, i64 %292, i32 5
  store i16 %236, ptr %298, align 4, !tbaa !176
  %299 = add nsw i32 %262, 1
  %300 = icmp eq ptr %278, null
  br i1 %300, label %338, label %301

301:                                              ; preds = %284, %331
  %302 = phi ptr [ %333, %331 ], [ %278, %284 ]
  %303 = phi i32 [ %332, %331 ], [ %261, %284 ]
  %304 = getelementptr inbounds %struct.UvElement, ptr %302, i64 0, i32 3
  %305 = load i8, ptr %304, align 2, !tbaa !175
  %306 = icmp eq i8 %305, 0
  %307 = icmp eq ptr %302, %278
  %308 = select i1 %306, i1 true, i1 %307
  br i1 %308, label %309, label %338

309:                                              ; preds = %301
  %310 = getelementptr inbounds %struct.UvElement, ptr %302, i64 0, i32 1
  %311 = load ptr, ptr %310, align 8, !tbaa !173
  %312 = getelementptr inbounds %struct.BMLoop, ptr %311, i64 0, i32 3
  %313 = load ptr, ptr %312, align 8, !tbaa !184
  %314 = getelementptr inbounds %struct.BMHeader, ptr %313, i64 0, i32 1
  %315 = load i32, ptr %314, align 8, !tbaa !157
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, ptr %14, i64 %316
  %318 = load i32, ptr %317, align 4, !tbaa !43
  %319 = icmp eq i32 %318, 65535
  br i1 %319, label %320, label %331

320:                                              ; preds = %309
  %321 = add nsw i32 %303, 1
  %322 = sext i32 %303 to i64
  %323 = getelementptr inbounds ptr, ptr %212, i64 %322
  store ptr %313, ptr %323, align 8, !tbaa !45
  %324 = load ptr, ptr %310, align 8, !tbaa !173
  %325 = getelementptr inbounds %struct.BMLoop, ptr %324, i64 0, i32 3
  %326 = load ptr, ptr %325, align 8, !tbaa !184
  %327 = getelementptr inbounds %struct.BMHeader, ptr %326, i64 0, i32 1
  %328 = load i32, ptr %327, align 8, !tbaa !157
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, ptr %14, i64 %329
  store i32 %230, ptr %330, align 4, !tbaa !43
  br label %331

331:                                              ; preds = %309, %320
  %332 = phi i32 [ %321, %320 ], [ %303, %309 ]
  %333 = load ptr, ptr %302, align 8, !tbaa !178
  %334 = icmp eq ptr %333, null
  br i1 %334, label %338, label %301, !llvm.loop !186

335:                                              ; preds = %272
  %336 = load ptr, ptr %274, align 8, !tbaa !178
  %337 = icmp eq ptr %336, null
  br i1 %337, label %338, label %272, !llvm.loop !187

338:                                              ; preds = %335, %331, %301, %259, %284
  %339 = phi i32 [ %299, %284 ], [ %262, %259 ], [ %299, %301 ], [ %299, %331 ], [ %262, %335 ]
  %340 = phi i32 [ %261, %284 ], [ %261, %259 ], [ %332, %331 ], [ %303, %301 ], [ %261, %335 ]
  %341 = load ptr, ptr %219, align 8, !tbaa !72
  %342 = call ptr %341(ptr noundef nonnull %5) #12
  %343 = icmp eq ptr %342, null
  br i1 %343, label %245, label %259, !llvm.loop !188

344:                                              ; preds = %245
  %345 = add nsw i32 %230, 1
  br label %346

346:                                              ; preds = %227, %344
  %347 = phi i32 [ %345, %344 ], [ %230, %227 ]
  %348 = phi i32 [ %246, %344 ], [ %229, %227 ]
  %349 = add nuw nsw i64 %228, 1
  %350 = icmp eq i64 %349, %220
  br i1 %350, label %221, label %227, !llvm.loop !189

351:                                              ; preds = %225, %367
  %352 = phi i64 [ 0, %225 ], [ %368, %367 ]
  %353 = load ptr, ptr %49, align 8, !tbaa !170
  %354 = getelementptr inbounds ptr, ptr %353, i64 %352
  %355 = load ptr, ptr %354, align 8, !tbaa !45
  %356 = icmp eq ptr %355, null
  br i1 %356, label %367, label %357

357:                                              ; preds = %351
  %358 = load ptr, ptr %61, align 8, !tbaa !171
  %359 = ptrtoint ptr %355 to i64
  %360 = ptrtoint ptr %358 to i64
  %361 = sub i64 %359, %360
  %362 = sdiv exact i64 %361, 24
  %363 = getelementptr inbounds i32, ptr %207, i64 %362
  %364 = load i32, ptr %363, align 4, !tbaa !43
  %365 = zext i32 %364 to i64
  %366 = getelementptr inbounds %struct.UvElement, ptr %214, i64 %365
  store ptr %366, ptr %354, align 8, !tbaa !45
  br label %367

367:                                              ; preds = %351, %357
  %368 = add nuw nsw i64 %352, 1
  %369 = icmp eq i64 %368, %226
  br i1 %369, label %370, label %351, !llvm.loop !190

370:                                              ; preds = %367, %221
  %371 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %372 = sext i32 %222 to i64
  %373 = shl nsw i64 %372, 2
  %374 = call ptr %371(i64 noundef %373, ptr noundef nonnull @.str.14) #12
  %375 = getelementptr inbounds %struct.UvElementMap, ptr %49, i64 0, i32 4
  store ptr %374, ptr %375, align 8, !tbaa !172
  %376 = icmp eq ptr %374, null
  br i1 %376, label %377, label %398

377:                                              ; preds = %370
  %378 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %378(ptr noundef %214) #12
  %379 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %379(ptr noundef %212) #12
  %380 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %380(ptr noundef %207) #12
  %381 = load ptr, ptr %49, align 8, !tbaa !170
  %382 = icmp eq ptr %381, null
  br i1 %382, label %385, label %383

383:                                              ; preds = %377
  %384 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %384(ptr noundef nonnull %381) #12
  br label %385

385:                                              ; preds = %383, %377
  %386 = load ptr, ptr %61, align 8, !tbaa !171
  %387 = icmp eq ptr %386, null
  br i1 %387, label %390, label %388

388:                                              ; preds = %385
  %389 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %389(ptr noundef nonnull %386) #12
  br label %390

390:                                              ; preds = %388, %385
  %391 = load ptr, ptr %375, align 8, !tbaa !172
  %392 = icmp eq ptr %391, null
  br i1 %392, label %395, label %393

393:                                              ; preds = %390
  %394 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %394(ptr noundef nonnull %391) #12
  br label %395

395:                                              ; preds = %393, %390
  %396 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %396(ptr noundef nonnull %49) #12
  %397 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %397(ptr noundef nonnull %14) #12
  br label %398

398:                                              ; preds = %395, %370
  %399 = icmp sgt i32 %45, 0
  br i1 %399, label %400, label %438

400:                                              ; preds = %398
  %401 = load ptr, ptr %61, align 8, !tbaa !171
  %402 = ptrtoint ptr %401 to i64
  %403 = zext nneg i32 %45 to i64
  br label %404

404:                                              ; preds = %400, %434
  %405 = phi i64 [ 0, %400 ], [ %436, %434 ]
  %406 = phi i32 [ 0, %400 ], [ %435, %434 ]
  %407 = getelementptr inbounds %struct.UvElement, ptr %401, i64 %405
  %408 = load ptr, ptr %407, align 8, !tbaa !178
  %409 = icmp eq ptr %408, null
  br i1 %409, label %418, label %410

410:                                              ; preds = %404
  %411 = ptrtoint ptr %408 to i64
  %412 = sub i64 %411, %402
  %413 = sdiv exact i64 %412, 24
  %414 = getelementptr inbounds i32, ptr %207, i64 %413
  %415 = load i32, ptr %414, align 4, !tbaa !43
  %416 = zext i32 %415 to i64
  %417 = getelementptr inbounds %struct.UvElement, ptr %214, i64 %416
  br label %418

418:                                              ; preds = %404, %410
  %419 = phi ptr [ %417, %410 ], [ null, %404 ]
  %420 = getelementptr inbounds i32, ptr %207, i64 %405
  %421 = load i32, ptr %420, align 4, !tbaa !43
  %422 = zext i32 %421 to i64
  %423 = getelementptr inbounds %struct.UvElement, ptr %214, i64 %422
  store ptr %419, ptr %423, align 8, !tbaa !178
  %424 = getelementptr inbounds %struct.UvElement, ptr %214, i64 %405, i32 5
  %425 = load i16, ptr %424, align 4, !tbaa !176
  %426 = zext i16 %425 to i32
  %427 = icmp eq i32 %406, %426
  br i1 %427, label %434, label %428

428:                                              ; preds = %418
  %429 = add nsw i32 %406, 1
  %430 = load ptr, ptr %375, align 8, !tbaa !172
  %431 = sext i32 %429 to i64
  %432 = getelementptr inbounds i32, ptr %430, i64 %431
  %433 = trunc i64 %405 to i32
  store i32 %433, ptr %432, align 4, !tbaa !43
  br label %434

434:                                              ; preds = %428, %418
  %435 = phi i32 [ %429, %428 ], [ %406, %418 ]
  %436 = add nuw nsw i64 %405, 1
  %437 = icmp eq i64 %436, %403
  br i1 %437, label %438, label %404, !llvm.loop !191

438:                                              ; preds = %434, %398
  %439 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %440 = load ptr, ptr %61, align 8, !tbaa !171
  call void %439(ptr noundef %440) #12
  store ptr %214, ptr %61, align 8, !tbaa !171
  %441 = getelementptr inbounds %struct.UvElementMap, ptr %49, i64 0, i32 3
  store i32 %222, ptr %441, align 4, !tbaa !192
  %442 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %442(ptr noundef %212) #12
  %443 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %443(ptr noundef %207) #12
  br label %444

444:                                              ; preds = %202, %438, %47, %44, %80
  %445 = phi ptr [ null, %80 ], [ null, %44 ], [ null, %47 ], [ %49, %438 ], [ %49, %202 ]
  %446 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %446(ptr noundef nonnull %14) #12
  br label %447

447:                                              ; preds = %444, %3
  %448 = phi ptr [ null, %3 ], [ %445, %444 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  ret ptr %448
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_uv_element_map_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !170
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %7(ptr noundef nonnull %4) #12
  br label %8

8:                                                ; preds = %6, %3
  %9 = getelementptr inbounds %struct.UvElementMap, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !171
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %13(ptr noundef nonnull %10) #12
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.UvElementMap, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !172
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %19(ptr noundef nonnull %16) #12
  br label %20

20:                                               ; preds = %18, %14
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %21(ptr noundef nonnull %0) #12
  br label %22

22:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_uv_vert_map_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !148
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %7(ptr noundef nonnull %4) #12
  br label %8

8:                                                ; preds = %6, %3
  %9 = getelementptr inbounds %struct.UvVertMap, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !150
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %13(ptr noundef nonnull %10) #12
  br label %14

14:                                               ; preds = %12, %8
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %15(ptr noundef nonnull %0) #12
  br label %16

16:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_uv_element_get(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2) local_unnamed_addr #8 {
  %4 = load ptr, ptr %0, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !155
  %7 = getelementptr inbounds %struct.BMHeader, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !157
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds ptr, ptr %4, i64 %9
  br label %11

11:                                               ; preds = %15, %3
  %12 = phi ptr [ %10, %3 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.UvElement, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !173
  %18 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !184
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %21, label %11, !llvm.loop !193

21:                                               ; preds = %11, %15
  %22 = phi ptr [ %13, %15 ], [ null, %11 ]
  ret ptr %22
}

; Function Attrs: nounwind uwtable
define dso_local ptr @EDBM_mtexpoly_active_get(ptr noundef readonly %0, ptr noundef writeonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !166
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 27
  %13 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %12, i32 noundef 15) #12
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.BMesh, ptr %16, i64 0, i32 26
  %18 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %17, i32 noundef 16) #12
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %0, align 8, !tbaa !34
  %22 = tail call ptr @BM_mesh_active_face_get(ptr noundef %21, i8 noundef zeroext %2, i8 noundef zeroext %3) #12
  %23 = icmp eq ptr %22, null
  %24 = icmp eq ptr %1, null
  br i1 %23, label %32, label %25

25:                                               ; preds = %20
  br i1 %24, label %27, label %26

26:                                               ; preds = %25
  store ptr %22, ptr %1, align 8, !tbaa !45
  br label %27

27:                                               ; preds = %26, %25
  %28 = load ptr, ptr %0, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.BMesh, ptr %28, i64 0, i32 27
  %30 = load ptr, ptr %22, align 8, !tbaa !194
  %31 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %29, ptr noundef %30, i32 noundef 15) #12
  br label %34

32:                                               ; preds = %20
  br i1 %24, label %34, label %33

33:                                               ; preds = %32
  store ptr null, ptr %1, align 8, !tbaa !45
  br label %34

34:                                               ; preds = %11, %6, %4, %32, %33, %15, %27
  %35 = phi ptr [ %31, %27 ], [ null, %15 ], [ null, %33 ], [ null, %32 ], [ null, %4 ], [ null, %6 ], [ null, %11 ]
  ret ptr %35
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @EDBM_mtexpoly_check(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !166
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 27
  %10 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %9, i32 noundef 15) #12
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 26
  %15 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %14, i32 noundef 16) #12
  %16 = icmp ne i8 %15, 0
  %17 = zext i1 %16 to i8
  br label %18

18:                                               ; preds = %12, %8, %3, %1
  %19 = phi i8 [ 0, %8 ], [ 0, %3 ], [ 0, %1 ], [ %17, %12 ]
  ret i8 %19
}

declare ptr @BM_mesh_active_face_get(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @EDBM_vert_color_check(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !166
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 26
  %10 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %9, i32 noundef 17) #12
  %11 = icmp ne i8 %10, 0
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %3, %1
  %14 = phi i8 [ 0, %3 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_verts_mirror_cache_begin_ex(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, float noundef %5, ptr noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca %struct.MirrTopoStore_t, align 8
  %10 = alloca [3 x float], align 4
  %11 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = load ptr, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) @__const.EDBM_verts_mirror_cache_begin_ex.mesh_topo_store, i64 24, i1 false)
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %15, i8 noundef zeroext 1) #12
  %16 = icmp eq ptr %6, null
  br i1 %16, label %17, label %36

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.BMesh, ptr %15, i64 0, i32 24
  %19 = tail call i32 @CustomData_get_named_layer_index(ptr noundef nonnull %18, i32 noundef 11, ptr noundef nonnull @.str.15) #12
  %20 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 15
  store i32 %19, ptr %20, align 8, !tbaa !195
  %21 = icmp eq i32 %19, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  tail call void @BM_data_layer_add_named(ptr noundef %15, ptr noundef nonnull %18, i32 noundef 11, ptr noundef nonnull @.str.15) #12
  %23 = tail call i32 @CustomData_get_named_layer_index(ptr noundef nonnull %18, i32 noundef 11, ptr noundef nonnull @.str.15) #12
  store i32 %23, ptr %20, align 8, !tbaa !195
  br label %24

24:                                               ; preds = %22, %17
  %25 = load i32, ptr %20, align 8, !tbaa !195
  %26 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %18, i32 noundef 11) #12
  %27 = sub nsw i32 %25, %26
  %28 = tail call i32 @CustomData_get_n_offset(ptr noundef nonnull %18, i32 noundef 11, i32 noundef %27) #12
  %29 = load ptr, ptr %18, align 8, !tbaa !196
  %30 = load i32, ptr %20, align 8, !tbaa !195
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.CustomDataLayer, ptr %29, i64 %31, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !197
  %34 = or i32 %33, 5
  store i32 %34, ptr %32, align 8, !tbaa !197
  %35 = sext i32 %28 to i64
  br label %36

36:                                               ; preds = %24, %7
  %37 = phi i64 [ %35, %24 ], [ 0, %7 ]
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %15, i8 noundef zeroext 1) #12
  %38 = icmp eq i8 %4, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  call void @ED_mesh_mirrtopo_init(ptr noundef %14, i32 noundef -1, ptr noundef nonnull %9, i8 noundef zeroext 1) #12
  br label %42

40:                                               ; preds = %36
  %41 = tail call ptr @BKE_bmbvh_new_from_editmesh(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0) #12
  br label %42

42:                                               ; preds = %40, %39
  %43 = phi ptr [ null, %39 ], [ %41, %40 ]
  %44 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 1, ptr %44, align 4, !tbaa !69
  %45 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %45, align 8, !tbaa !71
  %46 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %46, align 8, !tbaa !72
  %47 = getelementptr inbounds %struct.BMesh, ptr %15, i64 0, i32 9
  %48 = load ptr, ptr %47, align 8, !tbaa !73
  store ptr %48, ptr %8, align 8, !tbaa !44
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #12
  %49 = load ptr, ptr %46, align 8, !tbaa !72
  %50 = call ptr %49(ptr noundef nonnull %8) #12
  %51 = icmp eq ptr %50, null
  br i1 %51, label %116, label %52

52:                                               ; preds = %42
  %53 = icmp eq i8 %3, 0
  %54 = getelementptr inbounds float, ptr %10, i64 1
  %55 = getelementptr inbounds float, ptr %10, i64 2
  %56 = sext i32 %1 to i64
  %57 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 %56
  %58 = icmp eq i8 %2, 0
  br label %59

59:                                               ; preds = %52, %111
  %60 = phi i64 [ 0, %52 ], [ %114, %111 ]
  %61 = phi ptr [ %50, %52 ], [ %113, %111 ]
  br i1 %53, label %67, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.BMHeader, ptr %61, i64 0, i32 3
  %64 = load i8, ptr %63, align 1, !tbaa !76
  %65 = and i8 %64, 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %111, label %67

67:                                               ; preds = %62, %59
  br i1 %16, label %70, label %68

68:                                               ; preds = %67
  %69 = getelementptr inbounds i32, ptr %6, i64 %60
  br label %73

70:                                               ; preds = %67
  %71 = load ptr, ptr %61, align 8, !tbaa !199
  %72 = getelementptr inbounds i8, ptr %71, i64 %37
  br label %73

73:                                               ; preds = %70, %68
  %74 = phi ptr [ %69, %68 ], [ %72, %70 ]
  br i1 %38, label %82, label %75

75:                                               ; preds = %73
  %76 = load ptr, ptr %9, align 8, !tbaa !201
  %77 = getelementptr inbounds i64, ptr %76, i64 %60
  %78 = load i64, ptr %77, align 8, !tbaa !91
  %79 = icmp eq i64 %78, -1
  %80 = inttoptr i64 %78 to ptr
  %81 = select i1 %79, ptr null, ptr %80
  br label %92

82:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #12
  %83 = getelementptr inbounds %struct.BMVert, ptr %61, i64 0, i32 2
  %84 = load float, ptr %83, align 4, !tbaa !162
  store float %84, ptr %10, align 4, !tbaa !162
  %85 = getelementptr inbounds %struct.BMVert, ptr %61, i64 0, i32 2, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !162
  store float %86, ptr %54, align 4, !tbaa !162
  %87 = getelementptr inbounds %struct.BMVert, ptr %61, i64 0, i32 2, i64 2
  %88 = load float, ptr %87, align 4, !tbaa !162
  store float %88, ptr %55, align 4, !tbaa !162
  %89 = load float, ptr %57, align 4, !tbaa !162
  %90 = fneg float %89
  store float %90, ptr %57, align 4, !tbaa !162
  %91 = call ptr @BKE_bmbvh_find_vert_closest(ptr noundef %43, ptr noundef nonnull %10, float noundef %5) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #12
  br label %92

92:                                               ; preds = %82, %75
  %93 = phi ptr [ %81, %75 ], [ %91, %82 ]
  %94 = icmp eq ptr %93, null
  %95 = icmp eq ptr %93, %61
  %96 = and i1 %58, %95
  %97 = or i1 %94, %96
  br i1 %97, label %110, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.BMHeader, ptr %93, i64 0, i32 1
  %100 = load i32, ptr %99, align 8, !tbaa !157
  store i32 %100, ptr %74, align 4, !tbaa !43
  br i1 %16, label %104, label %101

101:                                              ; preds = %98
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, ptr %6, i64 %102
  br label %107

104:                                              ; preds = %98
  %105 = load ptr, ptr %93, align 8, !tbaa !199
  %106 = getelementptr inbounds i8, ptr %105, i64 %37
  br label %107

107:                                              ; preds = %104, %101
  %108 = phi ptr [ %103, %101 ], [ %106, %104 ]
  %109 = trunc i64 %60 to i32
  store i32 %109, ptr %108, align 4, !tbaa !43
  br label %111

110:                                              ; preds = %92
  store i32 -1, ptr %74, align 4, !tbaa !43
  br label %111

111:                                              ; preds = %107, %110, %62
  %112 = load ptr, ptr %46, align 8, !tbaa !72
  %113 = call ptr %112(ptr noundef nonnull %8) #12
  %114 = add nuw i64 %60, 1
  %115 = icmp eq ptr %113, null
  br i1 %115, label %116, label %59, !llvm.loop !203

116:                                              ; preds = %111, %42
  br i1 %38, label %118, label %117

117:                                              ; preds = %116
  call void @ED_mesh_mirrtopo_free(ptr noundef nonnull %9) #12
  br label %119

118:                                              ; preds = %116
  call void @BKE_bmbvh_free(ptr noundef %43) #12
  br label %119

119:                                              ; preds = %118, %117
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #12
  ret void
}

declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare i32 @CustomData_get_named_layer_index(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @BM_data_layer_add_named(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CustomData_get_n_offset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @CustomData_get_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ED_mesh_mirrtopo_init(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @BKE_bmbvh_new_from_editmesh(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @BKE_bmbvh_find_vert_closest(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare void @ED_mesh_mirrtopo_free(ptr noundef) local_unnamed_addr #1

declare void @BKE_bmbvh_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_verts_mirror_cache_begin(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  tail call void @EDBM_verts_mirror_cache_begin_ex(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, float noundef 0x3EF4F8B580000000, ptr noundef null)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @EDBM_verts_mirror_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 24
  %5 = load ptr, ptr %1, align 8, !tbaa !199
  %6 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 15
  %7 = load i32, ptr %6, align 8, !tbaa !195
  %8 = tail call ptr @CustomData_bmesh_get_layer_n(ptr noundef nonnull %4, ptr noundef %5, i32 noundef %7) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  %11 = load i32, ptr %8, align 4, !tbaa !43
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  %15 = load i32, ptr %14, align 8, !tbaa !144
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.BMesh, ptr %14, i64 0, i32 13
  %19 = load ptr, ptr %18, align 8, !tbaa !204
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16)
  br label %27

23:                                               ; preds = %17
  %24 = zext nneg i32 %11 to i64
  %25 = getelementptr inbounds ptr, ptr %19, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !45
  br label %27

27:                                               ; preds = %2, %10, %13, %23, %21
  %28 = phi ptr [ %26, %23 ], [ null, %21 ], [ null, %13 ], [ null, %10 ], [ null, %2 ]
  ret ptr %28
}

declare ptr @CustomData_bmesh_get_layer_n(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @EDBM_verts_mirror_get_edge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !205
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 24
  %7 = load ptr, ptr %4, align 8, !tbaa !199
  %8 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 15
  %9 = load i32, ptr %8, align 8, !tbaa !195
  %10 = tail call ptr @CustomData_bmesh_get_layer_n(ptr noundef nonnull %6, ptr noundef %7, i32 noundef %9) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %2
  %13 = load i32, ptr %10, align 4, !tbaa !43
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load ptr, ptr %0, align 8, !tbaa !34
  %17 = load i32, ptr %16, align 8, !tbaa !144
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.BMesh, ptr %16, i64 0, i32 13
  %21 = load ptr, ptr %20, align 8, !tbaa !204
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16)
  br label %29

25:                                               ; preds = %19
  %26 = zext nneg i32 %13 to i64
  %27 = getelementptr inbounds ptr, ptr %21, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !45
  br label %29

29:                                               ; preds = %2, %12, %15, %23, %25
  %30 = phi ptr [ %28, %25 ], [ null, %23 ], [ null, %15 ], [ null, %12 ], [ null, %2 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %65, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !208
  %35 = load ptr, ptr %0, align 8, !tbaa !34
  %36 = getelementptr inbounds %struct.BMesh, ptr %35, i64 0, i32 24
  %37 = load ptr, ptr %34, align 8, !tbaa !199
  %38 = load i32, ptr %8, align 8, !tbaa !195
  %39 = tail call ptr @CustomData_bmesh_get_layer_n(ptr noundef nonnull %36, ptr noundef %37, i32 noundef %38) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %58, label %41

41:                                               ; preds = %32
  %42 = load i32, ptr %39, align 4, !tbaa !43
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = load ptr, ptr %0, align 8, !tbaa !34
  %46 = load i32, ptr %45, align 8, !tbaa !144
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.BMesh, ptr %45, i64 0, i32 13
  %50 = load ptr, ptr %49, align 8, !tbaa !204
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16)
  br label %58

54:                                               ; preds = %48
  %55 = zext nneg i32 %42 to i64
  %56 = getelementptr inbounds ptr, ptr %50, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !45
  br label %58

58:                                               ; preds = %32, %41, %44, %52, %54
  %59 = phi ptr [ %57, %54 ], [ null, %52 ], [ null, %44 ], [ null, %41 ], [ null, %32 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = tail call ptr @BM_edge_exists(ptr noundef nonnull %30, ptr noundef nonnull %59) #12
  br label %63

63:                                               ; preds = %58, %61
  %64 = phi ptr [ %62, %61 ], [ undef, %58 ]
  br i1 %60, label %65, label %66

65:                                               ; preds = %63, %29
  br label %66

66:                                               ; preds = %63, %65
  %67 = phi ptr [ null, %65 ], [ %64, %63 ]
  ret ptr %67
}

declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @EDBM_verts_mirror_get_face(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store ptr null, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !145
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 3
  %8 = alloca i8, i64 %7, align 16
  %9 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !209
  %11 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 15
  br label %12

12:                                               ; preds = %45, %2
  %13 = phi ptr [ %10, %2 ], [ %48, %45 ]
  %14 = phi i32 [ 0, %2 ], [ %46, %45 ]
  %15 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !155
  %17 = load ptr, ptr %0, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.BMesh, ptr %17, i64 0, i32 24
  %19 = load ptr, ptr %16, align 8, !tbaa !199
  %20 = load i32, ptr %11, align 8, !tbaa !195
  %21 = tail call ptr @CustomData_bmesh_get_layer_n(ptr noundef nonnull %18, ptr noundef %19, i32 noundef %20) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %12
  %24 = load i32, ptr %21, align 4, !tbaa !43
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load ptr, ptr %0, align 8, !tbaa !34
  %28 = load i32, ptr %27, align 8, !tbaa !144
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.BMesh, ptr %27, i64 0, i32 13
  %32 = load ptr, ptr %31, align 8, !tbaa !204
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16)
  br label %40

36:                                               ; preds = %30
  %37 = zext nneg i32 %24 to i64
  %38 = getelementptr inbounds ptr, ptr %32, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !45
  br label %40

40:                                               ; preds = %12, %23, %26, %34, %36
  %41 = phi ptr [ %39, %36 ], [ null, %34 ], [ null, %26 ], [ null, %23 ], [ null, %12 ]
  %42 = zext i32 %14 to i64
  %43 = getelementptr inbounds ptr, ptr %8, i64 %42
  store ptr %41, ptr %43, align 8, !tbaa !45
  %44 = icmp eq ptr %41, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %40
  %46 = add i32 %14, 1
  %47 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !210
  %49 = icmp eq ptr %48, %10
  br i1 %49, label %50, label %12, !llvm.loop !211

50:                                               ; preds = %45
  %51 = load i32, ptr %4, align 8, !tbaa !145
  %52 = call zeroext i8 @BM_face_exists(ptr noundef nonnull %8, i32 noundef %51, ptr noundef nonnull %3) #12
  %53 = load ptr, ptr %3, align 8, !tbaa !45
  br label %54

54:                                               ; preds = %40, %50
  %55 = phi ptr [ %53, %50 ], [ null, %40 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret ptr %55
}

declare zeroext i8 @BM_face_exists(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_verts_mirror_cache_clear(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 24
  %5 = load ptr, ptr %1, align 8, !tbaa !199
  %6 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 15
  %7 = load i32, ptr %6, align 8, !tbaa !195
  %8 = tail call ptr @CustomData_bmesh_get_layer_n(ptr noundef nonnull %4, ptr noundef %5, i32 noundef %7) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 -1, ptr %8, align 4, !tbaa !43
  br label %11

11:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @EDBM_verts_mirror_cache_end(ptr nocapture noundef writeonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 15
  store i32 -1, ptr %2, align 8, !tbaa !195
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_verts_mirror_apply(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %6, align 4, !tbaa !69
  %7 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %7, align 8, !tbaa !71
  %8 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %8, align 8, !tbaa !72
  %9 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  store ptr %10, ptr %4, align 8, !tbaa !44
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #12
  %11 = load ptr, ptr %8, align 8, !tbaa !72
  %12 = call ptr %11(ptr noundef nonnull %4) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %71, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 15
  br label %16

16:                                               ; preds = %14, %67
  %17 = phi ptr [ %12, %14 ], [ %69, %67 ]
  %18 = getelementptr inbounds %struct.BMHeader, ptr %17, i64 0, i32 3
  %19 = load i8, ptr %18, align 1, !tbaa !76
  %20 = and i8 %19, 1
  %21 = zext nneg i8 %20 to i32
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %23, label %67

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.BMesh, ptr %24, i64 0, i32 24
  %26 = load ptr, ptr %17, align 8, !tbaa !199
  %27 = load i32, ptr %15, align 8, !tbaa !195
  %28 = call ptr @CustomData_bmesh_get_layer_n(ptr noundef nonnull %25, ptr noundef %26, i32 noundef %27) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %47, label %30

30:                                               ; preds = %23
  %31 = load i32, ptr %28, align 4, !tbaa !43
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = load ptr, ptr %0, align 8, !tbaa !34
  %35 = load i32, ptr %34, align 8, !tbaa !144
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.BMesh, ptr %34, i64 0, i32 13
  %39 = load ptr, ptr %38, align 8, !tbaa !204
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16)
  br label %47

43:                                               ; preds = %37
  %44 = zext nneg i32 %31 to i64
  %45 = getelementptr inbounds ptr, ptr %39, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !45
  br label %47

47:                                               ; preds = %23, %30, %33, %41, %43
  %48 = phi ptr [ %46, %43 ], [ null, %41 ], [ null, %33 ], [ null, %30 ], [ null, %23 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %67, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.BMHeader, ptr %48, i64 0, i32 3
  %52 = load i8, ptr %51, align 1, !tbaa !76
  %53 = and i8 %52, 1
  %54 = zext nneg i8 %53 to i32
  %55 = icmp eq i32 %54, %2
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.BMVert, ptr %48, i64 0, i32 2
  %58 = getelementptr inbounds %struct.BMVert, ptr %17, i64 0, i32 2
  %59 = load float, ptr %58, align 4, !tbaa !162
  store float %59, ptr %57, align 4, !tbaa !162
  %60 = getelementptr inbounds %struct.BMVert, ptr %17, i64 0, i32 2, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !162
  %62 = getelementptr inbounds %struct.BMVert, ptr %48, i64 0, i32 2, i64 1
  store float %61, ptr %62, align 4, !tbaa !162
  %63 = getelementptr inbounds %struct.BMVert, ptr %17, i64 0, i32 2, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !162
  %65 = getelementptr inbounds %struct.BMVert, ptr %48, i64 0, i32 2, i64 2
  store float %64, ptr %65, align 4, !tbaa !162
  %66 = fneg float %59
  store float %66, ptr %57, align 8, !tbaa !162
  br label %67

67:                                               ; preds = %47, %56, %50, %16
  %68 = load ptr, ptr %8, align 8, !tbaa !72
  %69 = call ptr %68(ptr noundef nonnull %4) #12
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %16, !llvm.loop !212

71:                                               ; preds = %67, %3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_mesh_hide(ptr noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %4 = icmp ne i8 %1, 0
  %5 = icmp eq ptr %0, null
  br i1 %5, label %55, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %8 = load i16, ptr %7, align 4, !tbaa !93
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  %12 = and i32 %9, 2
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i8 3, i8 2
  %15 = select i1 %11, i8 %14, i8 1
  %16 = load ptr, ptr %0, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 %15, ptr %17, align 4, !tbaa !69
  %18 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %18, align 8, !tbaa !71
  %19 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %19, align 8, !tbaa !72
  switch i8 %15, label %36 [
    i8 1, label %20
    i8 2, label %23
    i8 3, label %26
  ]

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.BMesh, ptr %16, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !73
  store ptr %22, ptr %3, align 8, !tbaa !44
  br label %29

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.BMesh, ptr %16, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !74
  store ptr %25, ptr %3, align 8, !tbaa !44
  br label %29

26:                                               ; preds = %6
  %27 = getelementptr inbounds %struct.BMesh, ptr %16, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !75
  store ptr %28, ptr %3, align 8, !tbaa !44
  br label %29

29:                                               ; preds = %26, %23, %20
  %30 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !71
  call void %31(ptr noundef nonnull %3) #12
  %32 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !72
  %34 = call ptr %33(ptr noundef nonnull %3) #12
  %35 = icmp eq ptr %34, null
  br i1 %35, label %52, label %37

36:                                               ; preds = %6
  unreachable

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  br label %39

39:                                               ; preds = %37, %48
  %40 = phi ptr [ %34, %37 ], [ %50, %48 ]
  %41 = getelementptr inbounds %struct.BMHeader, ptr %40, i64 0, i32 3
  %42 = load i8, ptr %41, align 1, !tbaa !76
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  %45 = xor i1 %4, %44
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = load ptr, ptr %0, align 8, !tbaa !34
  call void @_bm_elem_hide_set(ptr noundef %47, ptr noundef nonnull %40, i8 noundef zeroext 1) #12
  br label %48

48:                                               ; preds = %39, %46
  %49 = load ptr, ptr %38, align 8, !tbaa !72
  %50 = call ptr %49(ptr noundef nonnull %3) #12
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %39, !llvm.loop !213

52:                                               ; preds = %48, %29
  %53 = load i16, ptr %7, align 4, !tbaa !93
  %54 = load ptr, ptr %0, align 8, !tbaa !34
  call void @BM_mesh_select_mode_flush_ex(ptr noundef %54, i16 noundef signext %53) #12
  br label %55

55:                                               ; preds = %2, %52
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  ret void
}

declare void @_bm_elem_hide_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_mesh_reveal(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #12
  %5 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %6 = load i16, ptr %5, align 4, !tbaa !93
  %7 = trunc i16 %6 to i8
  %8 = and i8 %7, 1
  store i8 %8, ptr %2, align 1, !tbaa !44
  %9 = getelementptr inbounds i8, ptr %2, i64 1
  %10 = lshr i8 %7, 1
  %11 = and i8 %10, 1
  store i8 %11, ptr %9, align 1, !tbaa !44
  %12 = getelementptr inbounds i8, ptr %2, i64 2
  %13 = lshr i8 %7, 2
  %14 = and i8 %13, 1
  store i8 %14, ptr %12, align 1, !tbaa !44
  %15 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  %16 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %17 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %18 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %19 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %20 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %21 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %22 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %23 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %24 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %25 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %26 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %27 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %28 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %29 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %30 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %31 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %32 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %33 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %34 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %35 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %36 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %37 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %38 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %39 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %40 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %41 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %42 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %43 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %44 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  br label %45

45:                                               ; preds = %1, %88
  %46 = phi i64 [ 0, %1 ], [ %89, %88 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %47 = load ptr, ptr %0, align 8, !tbaa !34
  %48 = getelementptr inbounds [3 x i8], ptr @__const.EDBM_mesh_reveal.iter_types, i64 0, i64 %46
  %49 = load i8, ptr %48, align 1, !tbaa !44
  store i8 %49, ptr %15, align 4, !tbaa !69
  switch i8 %49, label %73 [
    i8 1, label %50
    i8 2, label %53
    i8 3, label %56
    i8 4, label %59
    i8 5, label %60
    i8 6, label %61
    i8 7, label %62
    i8 8, label %63
    i8 9, label %64
    i8 10, label %65
    i8 11, label %66
    i8 13, label %67
    i8 14, label %68
  ]

50:                                               ; preds = %45
  store ptr @bmiter__elem_of_mesh_begin, ptr %40, align 8, !tbaa !71
  store ptr @bmiter__elem_of_mesh_step, ptr %41, align 8, !tbaa !72
  %51 = getelementptr inbounds %struct.BMesh, ptr %47, i64 0, i32 9
  %52 = load ptr, ptr %51, align 8, !tbaa !73
  store ptr %52, ptr %3, align 8, !tbaa !44
  br label %69

53:                                               ; preds = %45
  store ptr @bmiter__elem_of_mesh_begin, ptr %38, align 8, !tbaa !71
  store ptr @bmiter__elem_of_mesh_step, ptr %39, align 8, !tbaa !72
  %54 = getelementptr inbounds %struct.BMesh, ptr %47, i64 0, i32 10
  %55 = load ptr, ptr %54, align 8, !tbaa !74
  store ptr %55, ptr %3, align 8, !tbaa !44
  br label %69

56:                                               ; preds = %45
  store ptr @bmiter__elem_of_mesh_begin, ptr %36, align 8, !tbaa !71
  store ptr @bmiter__elem_of_mesh_step, ptr %37, align 8, !tbaa !72
  %57 = getelementptr inbounds %struct.BMesh, ptr %47, i64 0, i32 12
  %58 = load ptr, ptr %57, align 8, !tbaa !75
  store ptr %58, ptr %3, align 8, !tbaa !44
  br label %69

59:                                               ; preds = %45
  store ptr @bmiter__edge_of_vert_begin, ptr %34, align 8, !tbaa !71
  store ptr @bmiter__edge_of_vert_step, ptr %35, align 8, !tbaa !72
  store ptr null, ptr %3, align 8, !tbaa !44
  br label %69

60:                                               ; preds = %45
  store ptr @bmiter__face_of_vert_begin, ptr %32, align 8, !tbaa !71
  store ptr @bmiter__face_of_vert_step, ptr %33, align 8, !tbaa !72
  store ptr null, ptr %3, align 8, !tbaa !44
  br label %69

61:                                               ; preds = %45
  store ptr @bmiter__loop_of_vert_begin, ptr %30, align 8, !tbaa !71
  store ptr @bmiter__loop_of_vert_step, ptr %31, align 8, !tbaa !72
  store ptr null, ptr %3, align 8, !tbaa !44
  br label %69

62:                                               ; preds = %45
  store ptr @bmiter__vert_of_edge_begin, ptr %28, align 8, !tbaa !71
  store ptr @bmiter__vert_of_edge_step, ptr %29, align 8, !tbaa !72
  store ptr null, ptr %3, align 8, !tbaa !44
  br label %69

63:                                               ; preds = %45
  store ptr @bmiter__face_of_edge_begin, ptr %26, align 8, !tbaa !71
  store ptr @bmiter__face_of_edge_step, ptr %27, align 8, !tbaa !72
  store ptr null, ptr %3, align 8, !tbaa !44
  br label %69

64:                                               ; preds = %45
  store ptr @bmiter__vert_of_face_begin, ptr %24, align 8, !tbaa !71
  store ptr @bmiter__vert_of_face_step, ptr %25, align 8, !tbaa !72
  store ptr null, ptr %3, align 8, !tbaa !44
  br label %69

65:                                               ; preds = %45
  store ptr @bmiter__edge_of_face_begin, ptr %22, align 8, !tbaa !71
  store ptr @bmiter__edge_of_face_step, ptr %23, align 8, !tbaa !72
  store ptr null, ptr %3, align 8, !tbaa !44
  br label %69

66:                                               ; preds = %45
  store ptr @bmiter__loop_of_face_begin, ptr %20, align 8, !tbaa !71
  store ptr @bmiter__loop_of_face_step, ptr %21, align 8, !tbaa !72
  store ptr null, ptr %3, align 8, !tbaa !44
  br label %69

67:                                               ; preds = %45
  store ptr @bmiter__loop_of_loop_begin, ptr %18, align 8, !tbaa !71
  store ptr @bmiter__loop_of_loop_step, ptr %19, align 8, !tbaa !72
  store ptr null, ptr %3, align 8, !tbaa !44
  br label %69

68:                                               ; preds = %45
  store ptr @bmiter__loop_of_edge_begin, ptr %16, align 8, !tbaa !71
  store ptr @bmiter__loop_of_edge_step, ptr %17, align 8, !tbaa !72
  store ptr null, ptr %3, align 8, !tbaa !44
  br label %69

69:                                               ; preds = %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %56, %53, %50
  %70 = load ptr, ptr %42, align 8, !tbaa !71
  call void %70(ptr noundef nonnull %3) #12
  %71 = load ptr, ptr %43, align 8, !tbaa !72
  %72 = call ptr %71(ptr noundef nonnull %3) #12
  br label %73

73:                                               ; preds = %45, %69
  %74 = phi ptr [ %72, %69 ], [ null, %45 ]
  %75 = icmp eq ptr %74, null
  br i1 %75, label %88, label %76

76:                                               ; preds = %73, %76
  %77 = phi ptr [ %86, %76 ], [ %74, %73 ]
  %78 = getelementptr inbounds %struct.BMHeader, ptr %77, i64 0, i32 3
  %79 = load i8, ptr %78, align 1, !tbaa !76
  %80 = and i8 %79, 2
  %81 = icmp eq i8 %80, 0
  %82 = or i8 %79, 16
  %83 = and i8 %79, -19
  %84 = select i1 %81, i8 %83, i8 %82
  store i8 %84, ptr %78, align 1, !tbaa !76
  %85 = load ptr, ptr %44, align 8, !tbaa !72
  %86 = call ptr %85(ptr noundef nonnull %3) #12
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %76, !llvm.loop !214

88:                                               ; preds = %76, %73
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  %89 = add nuw nsw i64 %46, 1
  %90 = icmp eq i64 %89, 3
  br i1 %90, label %91, label %45, !llvm.loop !215

91:                                               ; preds = %88
  %92 = load ptr, ptr %0, align 8, !tbaa !34
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %92, i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 0) #12
  %93 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %94 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %95 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %96 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %97 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %98 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %99 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %100 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %101 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %102 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %103 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %104 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %105 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %106 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %107 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %108 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %109 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %110 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %111 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %112 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %113 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %114 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %115 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %116 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %117 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %118 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %119 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %120 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %121 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %122 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  br label %123

123:                                              ; preds = %91, %170
  %124 = phi i64 [ 0, %91 ], [ %171, %170 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  %125 = getelementptr inbounds [3 x i8], ptr %2, i64 0, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !44
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %170, label %128

128:                                              ; preds = %123
  %129 = load ptr, ptr %0, align 8, !tbaa !34
  %130 = getelementptr inbounds [3 x i8], ptr @__const.EDBM_mesh_reveal.iter_types, i64 0, i64 %124
  %131 = load i8, ptr %130, align 1, !tbaa !44
  store i8 %131, ptr %93, align 4, !tbaa !69
  switch i8 %131, label %155 [
    i8 1, label %132
    i8 2, label %135
    i8 3, label %138
    i8 4, label %141
    i8 5, label %142
    i8 6, label %143
    i8 7, label %144
    i8 8, label %145
    i8 9, label %146
    i8 10, label %147
    i8 11, label %148
    i8 13, label %149
    i8 14, label %150
  ]

132:                                              ; preds = %128
  store ptr @bmiter__elem_of_mesh_begin, ptr %118, align 8, !tbaa !71
  store ptr @bmiter__elem_of_mesh_step, ptr %119, align 8, !tbaa !72
  %133 = getelementptr inbounds %struct.BMesh, ptr %129, i64 0, i32 9
  %134 = load ptr, ptr %133, align 8, !tbaa !73
  store ptr %134, ptr %4, align 8, !tbaa !44
  br label %151

135:                                              ; preds = %128
  store ptr @bmiter__elem_of_mesh_begin, ptr %116, align 8, !tbaa !71
  store ptr @bmiter__elem_of_mesh_step, ptr %117, align 8, !tbaa !72
  %136 = getelementptr inbounds %struct.BMesh, ptr %129, i64 0, i32 10
  %137 = load ptr, ptr %136, align 8, !tbaa !74
  store ptr %137, ptr %4, align 8, !tbaa !44
  br label %151

138:                                              ; preds = %128
  store ptr @bmiter__elem_of_mesh_begin, ptr %114, align 8, !tbaa !71
  store ptr @bmiter__elem_of_mesh_step, ptr %115, align 8, !tbaa !72
  %139 = getelementptr inbounds %struct.BMesh, ptr %129, i64 0, i32 12
  %140 = load ptr, ptr %139, align 8, !tbaa !75
  store ptr %140, ptr %4, align 8, !tbaa !44
  br label %151

141:                                              ; preds = %128
  store ptr @bmiter__edge_of_vert_begin, ptr %112, align 8, !tbaa !71
  store ptr @bmiter__edge_of_vert_step, ptr %113, align 8, !tbaa !72
  store ptr null, ptr %4, align 8, !tbaa !44
  br label %151

142:                                              ; preds = %128
  store ptr @bmiter__face_of_vert_begin, ptr %110, align 8, !tbaa !71
  store ptr @bmiter__face_of_vert_step, ptr %111, align 8, !tbaa !72
  store ptr null, ptr %4, align 8, !tbaa !44
  br label %151

143:                                              ; preds = %128
  store ptr @bmiter__loop_of_vert_begin, ptr %108, align 8, !tbaa !71
  store ptr @bmiter__loop_of_vert_step, ptr %109, align 8, !tbaa !72
  store ptr null, ptr %4, align 8, !tbaa !44
  br label %151

144:                                              ; preds = %128
  store ptr @bmiter__vert_of_edge_begin, ptr %106, align 8, !tbaa !71
  store ptr @bmiter__vert_of_edge_step, ptr %107, align 8, !tbaa !72
  store ptr null, ptr %4, align 8, !tbaa !44
  br label %151

145:                                              ; preds = %128
  store ptr @bmiter__face_of_edge_begin, ptr %104, align 8, !tbaa !71
  store ptr @bmiter__face_of_edge_step, ptr %105, align 8, !tbaa !72
  store ptr null, ptr %4, align 8, !tbaa !44
  br label %151

146:                                              ; preds = %128
  store ptr @bmiter__vert_of_face_begin, ptr %102, align 8, !tbaa !71
  store ptr @bmiter__vert_of_face_step, ptr %103, align 8, !tbaa !72
  store ptr null, ptr %4, align 8, !tbaa !44
  br label %151

147:                                              ; preds = %128
  store ptr @bmiter__edge_of_face_begin, ptr %100, align 8, !tbaa !71
  store ptr @bmiter__edge_of_face_step, ptr %101, align 8, !tbaa !72
  store ptr null, ptr %4, align 8, !tbaa !44
  br label %151

148:                                              ; preds = %128
  store ptr @bmiter__loop_of_face_begin, ptr %98, align 8, !tbaa !71
  store ptr @bmiter__loop_of_face_step, ptr %99, align 8, !tbaa !72
  store ptr null, ptr %4, align 8, !tbaa !44
  br label %151

149:                                              ; preds = %128
  store ptr @bmiter__loop_of_loop_begin, ptr %96, align 8, !tbaa !71
  store ptr @bmiter__loop_of_loop_step, ptr %97, align 8, !tbaa !72
  store ptr null, ptr %4, align 8, !tbaa !44
  br label %151

150:                                              ; preds = %128
  store ptr @bmiter__loop_of_edge_begin, ptr %94, align 8, !tbaa !71
  store ptr @bmiter__loop_of_edge_step, ptr %95, align 8, !tbaa !72
  store ptr null, ptr %4, align 8, !tbaa !44
  br label %151

151:                                              ; preds = %150, %149, %148, %147, %146, %145, %144, %143, %142, %141, %138, %135, %132
  %152 = load ptr, ptr %120, align 8, !tbaa !71
  call void %152(ptr noundef nonnull %4) #12
  %153 = load ptr, ptr %121, align 8, !tbaa !72
  %154 = call ptr %153(ptr noundef nonnull %4) #12
  br label %155

155:                                              ; preds = %128, %151
  %156 = phi ptr [ %154, %151 ], [ null, %128 ]
  %157 = icmp eq ptr %156, null
  br i1 %157, label %170, label %158

158:                                              ; preds = %155, %166
  %159 = phi ptr [ %168, %166 ], [ %156, %155 ]
  %160 = getelementptr inbounds %struct.BMHeader, ptr %159, i64 0, i32 3
  %161 = load i8, ptr %160, align 1, !tbaa !76
  %162 = and i8 %161, 16
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %158
  %165 = load ptr, ptr %0, align 8, !tbaa !34
  call void @BM_elem_select_set(ptr noundef %165, ptr noundef nonnull %159, i8 noundef zeroext 1) #12
  br label %166

166:                                              ; preds = %158, %164
  %167 = load ptr, ptr %122, align 8, !tbaa !72
  %168 = call ptr %167(ptr noundef nonnull %4) #12
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %158, !llvm.loop !216

170:                                              ; preds = %166, %155, %123
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  %171 = add nuw nsw i64 %124, 1
  %172 = icmp eq i64 %171, 3
  br i1 %172, label %173, label %123, !llvm.loop !217

173:                                              ; preds = %170
  %174 = load i16, ptr %5, align 4, !tbaa !93
  %175 = load ptr, ptr %0, align 8, !tbaa !34
  call void @BM_mesh_select_mode_flush_ex(ptr noundef %175, i16 noundef signext %174) #12
  %176 = load ptr, ptr %0, align 8, !tbaa !34
  call void @BM_mesh_normals_update(ptr noundef %176) #12
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #12
  ret void
}

declare void @BM_elem_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_update_generic(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  tail call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 2) #12
  %8 = load ptr, ptr %6, align 8, !tbaa !50
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %8) #12
  %9 = icmp eq i8 %1, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @BKE_editmesh_tessface_calc(ptr noundef %0) #12
  br label %11

11:                                               ; preds = %3, %10
  tail call void @BKE_editmesh_free_derivedmesh(ptr noundef %0) #12
  ret void
}

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @EDBM_view3d_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @ED_operator_editmesh(ptr noundef %0) #12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @ED_operator_view3d_active(ptr noundef %0) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %1
  br label %8

8:                                                ; preds = %4, %7
  %9 = phi i32 [ 0, %7 ], [ 1, %4 ]
  ret i32 %9
}

declare i32 @ED_operator_editmesh(ptr noundef) local_unnamed_addr #1

declare i32 @ED_operator_view3d_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BMBVH_EdgeVisible(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [4 x [4 x float]], align 16
  %14 = alloca [3 x float], align 4
  %15 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #12
  %16 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 5
  %17 = load i16, ptr %16, align 8, !tbaa !218
  %18 = sitofp i16 %17 to float
  %19 = fmul float %18, 5.000000e-01
  store float %19, ptr %15, align 4, !tbaa !162
  %20 = getelementptr inbounds float, ptr %15, i64 1
  %21 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 6
  %22 = load i16, ptr %21, align 2, !tbaa !221
  %23 = sitofp i16 %22 to float
  %24 = fmul float %23, 5.000000e-01
  store float %24, ptr %20, align 4, !tbaa !162
  %25 = call zeroext i8 @ED_view3d_win_to_segment(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %15, ptr noundef nonnull %12, ptr noundef nonnull %14, i8 noundef zeroext 0) #12
  %26 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 47
  %27 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %13, ptr noundef nonnull %26) #12
  call void @mul_m4_v3(ptr noundef nonnull %13, ptr noundef nonnull %12) #12
  %28 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !205
  %30 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 2
  %31 = load float, ptr %30, align 4, !tbaa !162
  store float %31, ptr %6, align 4, !tbaa !162
  %32 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 2, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !162
  %34 = getelementptr inbounds float, ptr %6, i64 1
  store float %33, ptr %34, align 4, !tbaa !162
  %35 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 2, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !162
  %37 = getelementptr inbounds float, ptr %6, i64 2
  store float %36, ptr %37, align 4, !tbaa !162
  %38 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !208
  %40 = getelementptr inbounds %struct.BMVert, ptr %39, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %30, ptr noundef nonnull %40) #12
  %41 = load ptr, ptr %38, align 8, !tbaa !208
  %42 = getelementptr inbounds %struct.BMVert, ptr %41, i64 0, i32 2
  %43 = load float, ptr %42, align 4, !tbaa !162
  store float %43, ptr %8, align 4, !tbaa !162
  %44 = getelementptr inbounds %struct.BMVert, ptr %41, i64 0, i32 2, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !162
  %46 = getelementptr inbounds float, ptr %8, i64 1
  store float %45, ptr %46, align 4, !tbaa !162
  %47 = getelementptr inbounds %struct.BMVert, ptr %41, i64 0, i32 2, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !162
  %49 = getelementptr inbounds float, ptr %8, i64 2
  store float %48, ptr %49, align 4, !tbaa !162
  %50 = load float, ptr %7, align 4, !tbaa !162
  %51 = load float, ptr %6, align 4, !tbaa !162
  %52 = fsub float %51, %50
  store float %52, ptr %6, align 4, !tbaa !162
  %53 = getelementptr inbounds float, ptr %7, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !162
  %55 = load float, ptr %34, align 4, !tbaa !162
  %56 = fsub float %55, %54
  store float %56, ptr %34, align 4, !tbaa !162
  %57 = getelementptr inbounds float, ptr %7, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !162
  %59 = load float, ptr %37, align 4, !tbaa !162
  %60 = fsub float %59, %58
  store float %60, ptr %37, align 4, !tbaa !162
  %61 = fmul float %52, 0x3FEFAE1480000000
  store float %61, ptr %6, align 4, !tbaa !162
  %62 = fmul float %56, 0x3FEFAE1480000000
  store float %62, ptr %34, align 4, !tbaa !162
  %63 = fmul float %60, 0x3FEFAE1480000000
  store float %63, ptr %37, align 4, !tbaa !162
  %64 = fadd float %50, %61
  store float %64, ptr %6, align 4, !tbaa !162
  %65 = fadd float %54, %62
  store float %65, ptr %34, align 4, !tbaa !162
  %66 = fadd float %58, %63
  store float %66, ptr %37, align 4, !tbaa !162
  %67 = fsub float %43, %50
  store float %67, ptr %8, align 4, !tbaa !162
  %68 = fsub float %45, %54
  store float %68, ptr %46, align 4, !tbaa !162
  %69 = fsub float %48, %58
  store float %69, ptr %49, align 4, !tbaa !162
  %70 = fmul float %67, 0x3FEFAE1480000000
  store float %70, ptr %8, align 4, !tbaa !162
  %71 = fmul float %68, 0x3FEFAE1480000000
  store float %71, ptr %46, align 4, !tbaa !162
  %72 = fmul float %69, 0x3FEFAE1480000000
  store float %72, ptr %49, align 4, !tbaa !162
  %73 = fadd float %50, %70
  store float %73, ptr %8, align 4, !tbaa !162
  %74 = fadd float %54, %71
  store float %74, ptr %46, align 4, !tbaa !162
  %75 = fadd float %58, %72
  store float %75, ptr %49, align 4, !tbaa !162
  %76 = load float, ptr %12, align 4, !tbaa !162
  %77 = fsub float %76, %64
  store float %77, ptr %9, align 4, !tbaa !162
  %78 = getelementptr inbounds float, ptr %12, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !162
  %80 = fsub float %79, %65
  %81 = getelementptr inbounds float, ptr %9, i64 1
  store float %80, ptr %81, align 4, !tbaa !162
  %82 = getelementptr inbounds float, ptr %12, i64 2
  %83 = load float, ptr %82, align 4, !tbaa !162
  %84 = fsub float %83, %66
  %85 = getelementptr inbounds float, ptr %9, i64 2
  store float %84, ptr %85, align 4, !tbaa !162
  %86 = fsub float %76, %50
  store float %86, ptr %10, align 4, !tbaa !162
  %87 = fsub float %79, %54
  %88 = getelementptr inbounds float, ptr %10, i64 1
  store float %87, ptr %88, align 4, !tbaa !162
  %89 = fsub float %83, %58
  %90 = getelementptr inbounds float, ptr %10, i64 2
  store float %89, ptr %90, align 4, !tbaa !162
  %91 = fsub float %76, %73
  store float %91, ptr %11, align 4, !tbaa !162
  %92 = fsub float %79, %74
  %93 = getelementptr inbounds float, ptr %11, i64 1
  store float %92, ptr %93, align 4, !tbaa !162
  %94 = fsub float %83, %75
  %95 = getelementptr inbounds float, ptr %11, i64 2
  store float %94, ptr %95, align 4, !tbaa !162
  %96 = fmul float %80, %80
  %97 = call float @llvm.fmuladd.f32(float %77, float %77, float %96)
  %98 = call float @llvm.fmuladd.f32(float %84, float %84, float %97)
  %99 = fcmp ogt float %98, 0x38AA95A5C0000000
  br i1 %99, label %100, label %109

100:                                              ; preds = %5
  %101 = call float @sqrtf(float noundef %98) #12
  %102 = fdiv float 1.000000e+00, %101
  %103 = load float, ptr %9, align 4, !tbaa !162
  %104 = fmul float %103, %102
  store float %104, ptr %9, align 4, !tbaa !162
  %105 = load float, ptr %81, align 4, !tbaa !162
  %106 = fmul float %102, %105
  store float %106, ptr %81, align 4, !tbaa !162
  %107 = load float, ptr %85, align 4, !tbaa !162
  %108 = fmul float %102, %107
  br label %110

109:                                              ; preds = %5
  store float 0.000000e+00, ptr %9, align 4, !tbaa !162
  store float 0.000000e+00, ptr %81, align 4, !tbaa !162
  br label %110

110:                                              ; preds = %100, %109
  %111 = phi float [ 0.000000e+00, %109 ], [ %108, %100 ]
  store float %111, ptr %85, align 4, !tbaa !162
  %112 = load float, ptr %10, align 4, !tbaa !162
  %113 = load float, ptr %88, align 4, !tbaa !162
  %114 = fmul float %113, %113
  %115 = call float @llvm.fmuladd.f32(float %112, float %112, float %114)
  %116 = load float, ptr %90, align 4, !tbaa !162
  %117 = call float @llvm.fmuladd.f32(float %116, float %116, float %115)
  %118 = fcmp ogt float %117, 0x38AA95A5C0000000
  br i1 %118, label %119, label %128

119:                                              ; preds = %110
  %120 = call float @sqrtf(float noundef %117) #12
  %121 = fdiv float 1.000000e+00, %120
  %122 = load float, ptr %10, align 4, !tbaa !162
  %123 = fmul float %122, %121
  store float %123, ptr %10, align 4, !tbaa !162
  %124 = load float, ptr %88, align 4, !tbaa !162
  %125 = fmul float %121, %124
  store float %125, ptr %88, align 4, !tbaa !162
  %126 = load float, ptr %90, align 4, !tbaa !162
  %127 = fmul float %121, %126
  br label %129

128:                                              ; preds = %110
  store float 0.000000e+00, ptr %10, align 4, !tbaa !162
  store float 0.000000e+00, ptr %88, align 4, !tbaa !162
  br label %129

129:                                              ; preds = %119, %128
  %130 = phi float [ 0.000000e+00, %128 ], [ %127, %119 ]
  store float %130, ptr %90, align 4, !tbaa !162
  %131 = load float, ptr %11, align 4, !tbaa !162
  %132 = load float, ptr %93, align 4, !tbaa !162
  %133 = fmul float %132, %132
  %134 = call float @llvm.fmuladd.f32(float %131, float %131, float %133)
  %135 = load float, ptr %95, align 4, !tbaa !162
  %136 = call float @llvm.fmuladd.f32(float %135, float %135, float %134)
  %137 = fcmp ogt float %136, 0x38AA95A5C0000000
  br i1 %137, label %138, label %147

138:                                              ; preds = %129
  %139 = call float @sqrtf(float noundef %136) #12
  %140 = fdiv float 1.000000e+00, %139
  %141 = load float, ptr %11, align 4, !tbaa !162
  %142 = fmul float %141, %140
  store float %142, ptr %11, align 4, !tbaa !162
  %143 = load float, ptr %93, align 4, !tbaa !162
  %144 = fmul float %140, %143
  store float %144, ptr %93, align 4, !tbaa !162
  %145 = load float, ptr %95, align 4, !tbaa !162
  %146 = fmul float %140, %145
  br label %148

147:                                              ; preds = %129
  store float 0.000000e+00, ptr %11, align 4, !tbaa !162
  store float 0.000000e+00, ptr %93, align 4, !tbaa !162
  br label %148

148:                                              ; preds = %138, %147
  %149 = phi float [ 0.000000e+00, %147 ], [ %146, %138 ]
  store float %149, ptr %95, align 4, !tbaa !162
  %150 = load float, ptr %9, align 4, !tbaa !162
  %151 = fmul float %150, 0x3F847AE140000000
  store float %151, ptr %9, align 4, !tbaa !162
  %152 = load float, ptr %81, align 4, !tbaa !162
  %153 = fmul float %152, 0x3F847AE140000000
  store float %153, ptr %81, align 4, !tbaa !162
  %154 = load float, ptr %85, align 4, !tbaa !162
  %155 = fmul float %154, 0x3F847AE140000000
  store float %155, ptr %85, align 4, !tbaa !162
  %156 = load float, ptr %10, align 4, !tbaa !162
  %157 = fmul float %156, 0x3F847AE140000000
  store float %157, ptr %10, align 4, !tbaa !162
  %158 = load float, ptr %88, align 4, !tbaa !162
  %159 = fmul float %158, 0x3F847AE140000000
  store float %159, ptr %88, align 4, !tbaa !162
  %160 = load float, ptr %90, align 4, !tbaa !162
  %161 = fmul float %160, 0x3F847AE140000000
  store float %161, ptr %90, align 4, !tbaa !162
  %162 = load float, ptr %11, align 4, !tbaa !162
  %163 = fmul float %162, 0x3F847AE140000000
  store float %163, ptr %11, align 4, !tbaa !162
  %164 = load float, ptr %93, align 4, !tbaa !162
  %165 = fmul float %164, 0x3F847AE140000000
  store float %165, ptr %93, align 4, !tbaa !162
  %166 = fmul float %149, 0x3F847AE140000000
  store float %166, ptr %95, align 4, !tbaa !162
  %167 = load float, ptr %6, align 4, !tbaa !162
  %168 = fadd float %151, %167
  store float %168, ptr %6, align 4, !tbaa !162
  %169 = load float, ptr %34, align 4, !tbaa !162
  %170 = fadd float %153, %169
  store float %170, ptr %34, align 4, !tbaa !162
  %171 = load float, ptr %37, align 4, !tbaa !162
  %172 = fadd float %155, %171
  store float %172, ptr %37, align 4, !tbaa !162
  %173 = load float, ptr %7, align 4, !tbaa !162
  %174 = fadd float %157, %173
  store float %174, ptr %7, align 4, !tbaa !162
  %175 = load float, ptr %53, align 4, !tbaa !162
  %176 = fadd float %159, %175
  store float %176, ptr %53, align 4, !tbaa !162
  %177 = load float, ptr %57, align 4, !tbaa !162
  %178 = fadd float %161, %177
  store float %178, ptr %57, align 4, !tbaa !162
  %179 = load float, ptr %8, align 4, !tbaa !162
  %180 = fadd float %163, %179
  store float %180, ptr %8, align 4, !tbaa !162
  %181 = load float, ptr %46, align 4, !tbaa !162
  %182 = fadd float %165, %181
  store float %182, ptr %46, align 4, !tbaa !162
  %183 = load float, ptr %49, align 4, !tbaa !162
  %184 = fadd float %166, %183
  store float %184, ptr %49, align 4, !tbaa !162
  %185 = fmul float %153, %153
  %186 = call float @llvm.fmuladd.f32(float %151, float %151, float %185)
  %187 = call float @llvm.fmuladd.f32(float %155, float %155, float %186)
  %188 = fcmp ogt float %187, 0x38AA95A5C0000000
  br i1 %188, label %189, label %198

189:                                              ; preds = %148
  %190 = call float @sqrtf(float noundef %187) #12
  %191 = fdiv float 1.000000e+00, %190
  %192 = load float, ptr %9, align 4, !tbaa !162
  %193 = fmul float %192, %191
  store float %193, ptr %9, align 4, !tbaa !162
  %194 = load float, ptr %81, align 4, !tbaa !162
  %195 = fmul float %191, %194
  store float %195, ptr %81, align 4, !tbaa !162
  %196 = load float, ptr %85, align 4, !tbaa !162
  %197 = fmul float %191, %196
  br label %199

198:                                              ; preds = %148
  store float 0.000000e+00, ptr %9, align 4, !tbaa !162
  store float 0.000000e+00, ptr %81, align 4, !tbaa !162
  br label %199

199:                                              ; preds = %189, %198
  %200 = phi float [ 0.000000e+00, %198 ], [ %197, %189 ]
  store float %200, ptr %85, align 4, !tbaa !162
  %201 = load float, ptr %10, align 4, !tbaa !162
  %202 = load float, ptr %88, align 4, !tbaa !162
  %203 = fmul float %202, %202
  %204 = call float @llvm.fmuladd.f32(float %201, float %201, float %203)
  %205 = load float, ptr %90, align 4, !tbaa !162
  %206 = call float @llvm.fmuladd.f32(float %205, float %205, float %204)
  %207 = fcmp ogt float %206, 0x38AA95A5C0000000
  br i1 %207, label %208, label %217

208:                                              ; preds = %199
  %209 = call float @sqrtf(float noundef %206) #12
  %210 = fdiv float 1.000000e+00, %209
  %211 = load float, ptr %10, align 4, !tbaa !162
  %212 = fmul float %211, %210
  store float %212, ptr %10, align 4, !tbaa !162
  %213 = load float, ptr %88, align 4, !tbaa !162
  %214 = fmul float %210, %213
  store float %214, ptr %88, align 4, !tbaa !162
  %215 = load float, ptr %90, align 4, !tbaa !162
  %216 = fmul float %210, %215
  br label %218

217:                                              ; preds = %199
  store float 0.000000e+00, ptr %10, align 4, !tbaa !162
  store float 0.000000e+00, ptr %88, align 4, !tbaa !162
  br label %218

218:                                              ; preds = %208, %217
  %219 = phi float [ 0.000000e+00, %217 ], [ %216, %208 ]
  store float %219, ptr %90, align 4, !tbaa !162
  %220 = load float, ptr %11, align 4, !tbaa !162
  %221 = load float, ptr %93, align 4, !tbaa !162
  %222 = fmul float %221, %221
  %223 = call float @llvm.fmuladd.f32(float %220, float %220, float %222)
  %224 = load float, ptr %95, align 4, !tbaa !162
  %225 = call float @llvm.fmuladd.f32(float %224, float %224, float %223)
  %226 = fcmp ogt float %225, 0x38AA95A5C0000000
  br i1 %226, label %227, label %236

227:                                              ; preds = %218
  %228 = call float @sqrtf(float noundef %225) #12
  %229 = fdiv float 1.000000e+00, %228
  %230 = load float, ptr %11, align 4, !tbaa !162
  %231 = fmul float %230, %229
  store float %231, ptr %11, align 4, !tbaa !162
  %232 = load float, ptr %93, align 4, !tbaa !162
  %233 = fmul float %229, %232
  store float %233, ptr %93, align 4, !tbaa !162
  %234 = load float, ptr %95, align 4, !tbaa !162
  %235 = fmul float %229, %234
  br label %237

236:                                              ; preds = %218
  store float 0.000000e+00, ptr %11, align 4, !tbaa !162
  store float 0.000000e+00, ptr %93, align 4, !tbaa !162
  br label %237

237:                                              ; preds = %227, %236
  %238 = phi float [ 0.000000e+00, %236 ], [ %235, %227 ]
  store float %238, ptr %95, align 4, !tbaa !162
  %239 = call ptr @BKE_bmbvh_ray_cast(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %9, float noundef 0.000000e+00, ptr noundef null, ptr noundef null, ptr noundef null) #12
  %240 = icmp eq ptr %239, null
  br i1 %240, label %244, label %241

241:                                              ; preds = %237
  %242 = call zeroext i8 @BM_edge_in_face(ptr noundef %1, ptr noundef nonnull %239) #12
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %241, %237
  br label %245

245:                                              ; preds = %241, %244
  %246 = phi i1 [ %240, %244 ], [ true, %241 ]
  br i1 %246, label %261, label %247

247:                                              ; preds = %245
  %248 = call ptr @BKE_bmbvh_ray_cast(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %10, float noundef 0.000000e+00, ptr noundef null, ptr noundef null, ptr noundef null) #12
  %249 = icmp eq ptr %248, null
  br i1 %249, label %263, label %250

250:                                              ; preds = %247
  %251 = call zeroext i8 @BM_edge_in_face(ptr noundef %1, ptr noundef nonnull %248) #12
  %252 = icmp ne i8 %251, 0
  %253 = or i1 %249, %252
  br i1 %253, label %263, label %254

254:                                              ; preds = %250
  %255 = call ptr @BKE_bmbvh_ray_cast(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %11, float noundef 0.000000e+00, ptr noundef null, ptr noundef null, ptr noundef null) #12
  %256 = icmp eq ptr %255, null
  br i1 %256, label %263, label %257

257:                                              ; preds = %254
  %258 = call zeroext i8 @BM_edge_in_face(ptr noundef %1, ptr noundef nonnull %255) #12
  %259 = icmp ne i8 %258, 0
  %260 = or i1 %256, %259
  br i1 %260, label %263, label %261

261:                                              ; preds = %257, %245
  %262 = zext i1 %246 to i8
  br label %263

263:                                              ; preds = %254, %247, %257, %250, %261
  %264 = phi i8 [ %262, %261 ], [ 1, %250 ], [ 1, %257 ], [ 1, %247 ], [ 1, %254 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  ret i8 %264
}

declare zeroext i8 @ED_view3d_win_to_segment(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #1

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #1

declare void @bmiter__edge_of_vert_begin(ptr noundef) #1

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #1

declare void @bmiter__face_of_vert_begin(ptr noundef) #1

declare ptr @bmiter__face_of_vert_step(ptr noundef) #1

declare void @bmiter__loop_of_vert_begin(ptr noundef) #1

declare ptr @bmiter__loop_of_vert_step(ptr noundef) #1

declare void @bmiter__vert_of_edge_begin(ptr noundef) #1

declare ptr @bmiter__vert_of_edge_step(ptr noundef) #1

declare void @bmiter__face_of_edge_begin(ptr noundef) #1

declare ptr @bmiter__face_of_edge_step(ptr noundef) #1

declare void @bmiter__vert_of_face_begin(ptr noundef) #1

declare ptr @bmiter__vert_of_face_step(ptr noundef) #1

declare void @bmiter__edge_of_face_begin(ptr noundef) #1

declare ptr @bmiter__edge_of_face_step(ptr noundef) #1

declare void @bmiter__loop_of_face_begin(ptr noundef) #1

declare ptr @bmiter__loop_of_face_step(ptr noundef) #1

declare void @bmiter__loop_of_loop_begin(ptr noundef) #1

declare ptr @bmiter__loop_of_loop_step(ptr noundef) #1

declare void @bmiter__loop_of_edge_begin(ptr noundef) #1

declare ptr @bmiter__loop_of_edge_step(ptr noundef) #1

declare void @BKE_key_free(ptr noundef) local_unnamed_addr #1

declare void @BKE_mesh_free(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @BM_mesh_create(ptr noundef) local_unnamed_addr #1

declare void @BM_mesh_bm_from_me(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare ptr @BKE_key_copy_nolib(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

declare ptr @BKE_bmbvh_ray_cast(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BM_edge_in_face(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !39, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !36, i64 48, !40, i64 56, !36, i64 64, !39, i64 72, !36, i64 80, !39, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !39, i64 104}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"long", !37, i64 0}
!41 = !{!"short", !37, i64 0}
!42 = !{i64 0, i64 4, !43, i64 4, i64 4, !43, i64 8, i64 4, !43, i64 12, i64 4, !43, i64 16, i64 4, !43, i64 20, i64 4, !43, i64 24, i64 4, !43, i64 28, i64 1, !44, i64 29, i64 1, !44, i64 32, i64 8, !45, i64 40, i64 8, !45, i64 48, i64 8, !45, i64 56, i64 8, !45, i64 64, i64 8, !45, i64 72, i64 8, !45, i64 80, i64 8, !45, i64 88, i64 4, !43, i64 92, i64 4, !43, i64 96, i64 4, !43, i64 104, i64 8, !45, i64 112, i64 8, !45, i64 120, i64 8, !45, i64 128, i64 4, !43, i64 136, i64 8, !45, i64 144, i64 8, !45, i64 152, i64 164, !44, i64 316, i64 4, !43, i64 320, i64 4, !43, i64 324, i64 4, !43, i64 328, i64 8, !45, i64 336, i64 8, !45, i64 344, i64 8, !45, i64 352, i64 164, !44, i64 516, i64 4, !43, i64 520, i64 4, !43, i64 524, i64 4, !43, i64 528, i64 8, !45, i64 536, i64 8, !45, i64 544, i64 8, !45, i64 552, i64 164, !44, i64 716, i64 4, !43, i64 720, i64 4, !43, i64 724, i64 4, !43, i64 728, i64 8, !45, i64 736, i64 8, !45, i64 744, i64 8, !45, i64 752, i64 164, !44, i64 916, i64 4, !43, i64 920, i64 4, !43, i64 924, i64 4, !43, i64 928, i64 8, !45, i64 936, i64 8, !45, i64 944, i64 2, !46, i64 948, i64 4, !43, i64 952, i64 4, !43, i64 956, i64 4, !43, i64 960, i64 8, !45, i64 968, i64 8, !45, i64 976, i64 8, !45, i64 984, i64 8, !45, i64 992, i64 8, !45, i64 1000, i64 8, !45}
!43 = !{!39, !39, i64 0}
!44 = !{!37, !37, i64 0}
!45 = !{!36, !36, i64 0}
!46 = !{!41, !41, i64 0}
!47 = !{!48, !36, i64 0}
!48 = !{!"BMBackup", !36, i64 0}
!49 = !{!35, !36, i64 96}
!50 = !{!51, !36, i64 296}
!51 = !{!"Object", !52, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !53, i64 312, !36, i64 360, !54, i64 368, !54, i64 384, !54, i64 400, !54, i64 416, !39, i64 432, !39, i64 436, !36, i64 440, !36, i64 448, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !55, i64 616, !55, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !39, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !55, i64 988, !55, i64 992, !55, i64 996, !55, i64 1000, !55, i64 1004, !55, i64 1008, !55, i64 1012, !55, i64 1016, !55, i64 1020, !55, i64 1024, !55, i64 1028, !55, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !55, i64 1048, !55, i64 1052, !54, i64 1056, !54, i64 1072, !54, i64 1088, !54, i64 1104, !55, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !39, i64 1144, !39, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !54, i64 1176, !54, i64 1192, !54, i64 1208, !54, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !55, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !40, i64 1304, !40, i64 1312, !39, i64 1320, !39, i64 1324, !54, i64 1328, !54, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !54, i64 1400, !36, i64 1416}
!52 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!53 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!54 = !{!"ListBase", !36, i64 0, !36, i64 8}
!55 = !{!"float", !37, i64 0}
!56 = !{!52, !41, i64 98}
!57 = !{!51, !37, i64 1161}
!58 = !{!59, !36, i64 0}
!59 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !54, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !39, i64 2096, !39, i64 2100, !37, i64 2104, !39, i64 2108, !39, i64 2112, !37, i64 2116}
!60 = !{!61, !36, i64 1888}
!61 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !41, i64 1040, !41, i64 1042, !41, i64 1044, !41, i64 1046, !40, i64 1048, !37, i64 1056, !41, i64 1072, !36, i64 1080, !54, i64 1088, !54, i64 1104, !54, i64 1120, !54, i64 1136, !54, i64 1152, !54, i64 1168, !54, i64 1184, !54, i64 1200, !54, i64 1216, !54, i64 1232, !54, i64 1248, !54, i64 1264, !54, i64 1280, !54, i64 1296, !54, i64 1312, !54, i64 1328, !54, i64 1344, !54, i64 1360, !54, i64 1376, !54, i64 1392, !54, i64 1408, !54, i64 1424, !54, i64 1440, !54, i64 1456, !54, i64 1472, !54, i64 1488, !54, i64 1504, !54, i64 1520, !54, i64 1536, !54, i64 1552, !54, i64 1568, !54, i64 1584, !54, i64 1600, !54, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!62 = !{!35, !39, i64 32}
!63 = !{!35, !36, i64 24}
!64 = !{!65, !39, i64 24}
!65 = !{!"BMesh", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !39, i64 88, !39, i64 92, !39, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 136, !66, i64 144, !66, i64 344, !66, i64 544, !66, i64 744, !41, i64 944, !39, i64 948, !39, i64 952, !39, i64 956, !54, i64 960, !36, i64 976, !54, i64 984, !36, i64 1000}
!66 = !{!"CustomData", !36, i64 0, !37, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !36, i64 184, !36, i64 192}
!67 = !{!65, !39, i64 20}
!68 = !{!65, !39, i64 16}
!69 = !{!70, !37, i64 60}
!70 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !39, i64 56, !37, i64 60}
!71 = !{!70, !36, i64 40}
!72 = !{!70, !36, i64 48}
!73 = !{!65, !36, i64 32}
!74 = !{!65, !36, i64 40}
!75 = !{!65, !36, i64 56}
!76 = !{!77, !37, i64 13}
!77 = !{!"BMHeader", !36, i64 0, !39, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!78 = distinct !{!78, !79, !80}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = distinct !{!81, !79, !80}
!82 = !{!35, !36, i64 40}
!83 = !{!84, !39, i64 1048}
!84 = !{!"DerivedMesh", !66, i64 0, !66, i64 200, !66, i64 400, !66, i64 600, !66, i64 800, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !36, i64 1032, !36, i64 1040, !39, i64 1048, !55, i64 1052, !39, i64 1056, !39, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!85 = !{!84, !39, i64 1024}
!86 = !{!87, !36, i64 120}
!87 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !54, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!88 = !{!35, !36, i64 8}
!89 = !{!35, !39, i64 16}
!90 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 4, !43, i64 24, i64 8, !45, i64 32, i64 4, !43, i64 40, i64 8, !45, i64 48, i64 8, !45, i64 56, i64 8, !91, i64 64, i64 8, !45, i64 72, i64 4, !43, i64 80, i64 8, !45, i64 88, i64 4, !43, i64 92, i64 2, !46, i64 94, i64 2, !46, i64 96, i64 8, !45, i64 104, i64 4, !43}
!91 = !{!40, !40, i64 0}
!92 = !{i8 0, i8 2}
!93 = !{!35, !41, i64 92}
!94 = !{!95, !36, i64 264}
!95 = !{!"Scene", !52, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !54, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !96, i64 280, !105, i64 4264, !54, i64 4296, !54, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !39, i64 4380, !54, i64 4384, !106, i64 4400, !107, i64 4416, !110, i64 4600, !36, i64 4608, !111, i64 4616, !36, i64 4640, !40, i64 4648, !40, i64 4656, !98, i64 4664, !99, i64 4824, !112, i64 4888, !36, i64 4952}
!96 = !{!"RenderData", !97, i64 0, !36, i64 248, !36, i64 256, !100, i64 264, !101, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !55, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !41, i64 432, !41, i64 434, !55, i64 436, !55, i64 440, !55, i64 444, !55, i64 448, !55, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !39, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !39, i64 484, !39, i64 488, !41, i64 492, !41, i64 494, !39, i64 496, !39, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !102, i64 544, !102, i64 560, !103, i64 576, !54, i64 592, !41, i64 608, !41, i64 610, !55, i64 612, !55, i64 616, !55, i64 620, !55, i64 624, !39, i64 628, !55, i64 632, !55, i64 636, !55, i64 640, !55, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !55, i64 660, !55, i64 664, !41, i64 668, !41, i64 670, !55, i64 672, !55, i64 676, !37, i64 680, !39, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !41, i64 2524, !41, i64 2526, !55, i64 2528, !55, i64 2532, !41, i64 2536, !41, i64 2538, !55, i64 2540, !41, i64 2544, !41, i64 2546, !39, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !55, i64 2560, !55, i64 2564, !36, i64 2568, !39, i64 2576, !55, i64 2580, !37, i64 2584, !104, i64 2616, !39, i64 3976, !39, i64 3980}
!97 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !55, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !98, i64 24, !99, i64 184}
!98 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !55, i64 136, !55, i64 140, !36, i64 144, !36, i64 152}
!99 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!100 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !41, i64 48, !41, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!101 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !55, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!102 = !{!"rctf", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12}
!103 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!104 = !{!"BakeData", !97, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !55, i64 1280, !55, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!105 = !{!"AudioData", !39, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !39, i64 16, !41, i64 20, !41, i64 22, !55, i64 24, !55, i64 28}
!106 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!107 = !{!"GameData", !106, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !108, i64 40, !41, i64 64, !41, i64 66, !55, i64 68, !109, i64 72, !55, i64 128, !55, i64 132, !39, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !55, i64 164, !55, i64 168, !55, i64 172, !55, i64 176, !55, i64 180}
!108 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !55, i64 8, !55, i64 12, !36, i64 16}
!109 = !{!"RecastData", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !55, i64 24, !55, i64 28, !55, i64 32, !55, i64 36, !39, i64 40, !55, i64 44, !55, i64 48, !41, i64 52, !41, i64 54}
!110 = !{!"UnitSettings", !55, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!111 = !{!"PhysicsSettings", !37, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!112 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!113 = !{!114, !41, i64 46}
!114 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !55, i64 32, !55, i64 36, !55, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !55, i64 52, !41, i64 56, !37, i64 58, !37, i64 59, !115, i64 64, !117, i64 168, !55, i64 336, !55, i64 340, !41, i64 344, !41, i64 346, !37, i64 348, !37, i64 349, !41, i64 350, !55, i64 352, !55, i64 356, !55, i64 360, !55, i64 364, !55, i64 368, !55, i64 372, !55, i64 376, !55, i64 380, !55, i64 384, !55, i64 388, !41, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !41, i64 434, !41, i64 436, !41, i64 438, !41, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !39, i64 448, !39, i64 452, !39, i64 456, !39, i64 460, !41, i64 464, !41, i64 466, !39, i64 468, !55, i64 472, !55, i64 476, !118, i64 480, !119, i64 608}
!115 = !{!"ImagePaintSettings", !116, i64 0, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !37, i64 48, !39, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !55, i64 100}
!116 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36}
!117 = !{!"ParticleEditSettings", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !37, i64 8, !36, i64 120, !55, i64 128, !55, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !36, i64 152, !36, i64 160}
!118 = !{!"UnifiedPaintSettings", !39, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !37, i64 16, !37, i64 28, !39, i64 40, !37, i64 44, !55, i64 52, !39, i64 56, !39, i64 60, !37, i64 64, !37, i64 65, !55, i64 72, !37, i64 76, !39, i64 84, !55, i64 88, !37, i64 92, !37, i64 100, !39, i64 108, !36, i64 112, !55, i64 120, !39, i64 124}
!119 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !37, i64 20, !37, i64 21, !55, i64 24, !55, i64 28, !55, i64 32, !55, i64 36}
!120 = !{!121, !36, i64 168}
!121 = !{!"Mesh", !52, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !66, i64 280, !66, i64 480, !66, i64 680, !66, i64 880, !66, i64 1080, !39, i64 1280, !39, i64 1284, !39, i64 1288, !39, i64 1292, !39, i64 1296, !39, i64 1300, !39, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !39, i64 1344, !41, i64 1348, !41, i64 1350, !55, i64 1352, !39, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !41, i64 1366, !36, i64 1368}
!122 = !{!121, !39, i64 1288}
!123 = !{!121, !36, i64 272}
!124 = !{!65, !41, i64 944}
!125 = !{!51, !39, i64 460}
!126 = !{!35, !41, i64 94}
!127 = !{!51, !41, i64 136}
!128 = !{!121, !36, i64 144}
!129 = !{!130, !39, i64 1280}
!130 = !{!"UndoMesh", !121, i64 0, !39, i64 1376, !39, i64 1380}
!131 = !{!132, !39, i64 0}
!132 = !{!"BMAllocTemplate", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!133 = !{!130, !39, i64 1284}
!134 = !{!132, !39, i64 4}
!135 = !{!130, !39, i64 1300}
!136 = !{!132, !39, i64 8}
!137 = !{!130, !39, i64 1296}
!138 = !{!132, !39, i64 12}
!139 = !{!130, !39, i64 1380}
!140 = !{!65, !39, i64 948}
!141 = !{!51, !41, i64 1266}
!142 = !{!130, !39, i64 1376}
!143 = !{!130, !36, i64 144}
!144 = !{!65, !39, i64 0}
!145 = !{!146, !39, i64 32}
!146 = !{!"BMFace", !77, i64 0, !36, i64 16, !36, i64 24, !39, i64 32, !37, i64 36, !41, i64 48}
!147 = distinct !{!147, !79, !80}
!148 = !{!149, !36, i64 0}
!149 = !{!"UvVertMap", !36, i64 0, !36, i64 8}
!150 = !{!149, !36, i64 8}
!151 = !{!152, !37, i64 12}
!152 = !{!"UvMapVert", !36, i64 0, !39, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!153 = !{!152, !39, i64 8}
!154 = !{!152, !37, i64 13}
!155 = !{!156, !36, i64 16}
!156 = !{!"BMLoop", !77, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!157 = !{!77, !39, i64 8}
!158 = !{!152, !36, i64 0}
!159 = distinct !{!159, !79, !80}
!160 = distinct !{!160, !79, !80}
!161 = !{!156, !36, i64 0}
!162 = !{!55, !55, i64 0}
!163 = distinct !{!163, !79, !80}
!164 = distinct !{!164, !79, !80}
!165 = distinct !{!165, !79, !80}
!166 = !{!65, !39, i64 12}
!167 = distinct !{!167, !79, !80}
!168 = !{!169, !39, i64 16}
!169 = !{!"UvElementMap", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !36, i64 24}
!170 = !{!169, !36, i64 0}
!171 = !{!169, !36, i64 8}
!172 = !{!169, !36, i64 24}
!173 = !{!174, !36, i64 8}
!174 = !{!"UvElement", !36, i64 0, !36, i64 8, !41, i64 16, !37, i64 18, !37, i64 19, !41, i64 20}
!175 = !{!174, !37, i64 18}
!176 = !{!174, !41, i64 20}
!177 = !{!174, !41, i64 16}
!178 = !{!174, !36, i64 0}
!179 = distinct !{!179, !79, !80}
!180 = distinct !{!180, !79, !80}
!181 = distinct !{!181, !79, !80}
!182 = distinct !{!182, !79, !80}
!183 = distinct !{!183, !79, !80}
!184 = !{!156, !36, i64 32}
!185 = distinct !{!185, !79, !80}
!186 = distinct !{!186, !79, !80}
!187 = distinct !{!187, !79, !80}
!188 = distinct !{!188, !79, !80}
!189 = distinct !{!189, !79, !80}
!190 = distinct !{!190, !79, !80}
!191 = distinct !{!191, !79, !80}
!192 = !{!169, !39, i64 20}
!193 = distinct !{!193, !79, !80}
!194 = !{!146, !36, i64 0}
!195 = !{!35, !39, i64 104}
!196 = !{!65, !36, i64 144}
!197 = !{!198, !39, i64 8}
!198 = !{!"CustomDataLayer", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !37, i64 32, !36, i64 96}
!199 = !{!200, !36, i64 0}
!200 = !{!"BMVert", !77, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!201 = !{!202, !36, i64 0}
!202 = !{!"MirrTopoStore_t", !36, i64 0, !39, i64 8, !39, i64 12, !39, i64 16}
!203 = distinct !{!203, !79, !80}
!204 = !{!65, !36, i64 64}
!205 = !{!206, !36, i64 24}
!206 = !{!"BMEdge", !77, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !207, i64 48, !207, i64 64}
!207 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!208 = !{!206, !36, i64 32}
!209 = !{!146, !36, i64 24}
!210 = !{!156, !36, i64 56}
!211 = distinct !{!211, !79, !80}
!212 = distinct !{!212, !79, !80}
!213 = distinct !{!213, !79, !80}
!214 = distinct !{!214, !79, !80}
!215 = distinct !{!215, !79, !80}
!216 = distinct !{!216, !79, !80}
!217 = distinct !{!217, !79, !80}
!218 = !{!219, !41, i64 208}
!219 = !{!"ARegion", !36, i64 0, !36, i64 8, !220, i64 16, !103, i64 176, !103, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !55, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !54, i64 248, !54, i64 264, !54, i64 280, !54, i64 296, !54, i64 312, !54, i64 328, !54, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!220 = !{!"View2D", !102, i64 0, !102, i64 16, !103, i64 32, !103, i64 48, !103, i64 64, !37, i64 80, !37, i64 88, !55, i64 96, !55, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !39, i64 136, !39, i64 140, !36, i64 144, !36, i64 152}
!221 = !{!219, !41, i64 210}
