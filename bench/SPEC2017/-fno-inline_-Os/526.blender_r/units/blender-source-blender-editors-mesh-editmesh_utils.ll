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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @EDBM_redo_state_store(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = tail call ptr @BM_mesh_copy(ptr noundef %2) #15
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @BM_mesh_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_redo_state_restore(ptr %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne ptr %0, null
  %6 = select i1 %4, i1 %5, i1 false
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = load ptr, ptr %1, align 8, !tbaa !34
  tail call void @BM_mesh_data_free(ptr noundef %8) #15
  %9 = tail call ptr @BM_mesh_copy(ptr noundef nonnull %0) #15
  %10 = load ptr, ptr %1, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1008) %10, ptr noundef nonnull align 8 dereferenceable(1008) %9, i64 1008, i1 false), !tbaa.struct !42
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %11(ptr noundef %9) #15
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @BKE_editmesh_tessface_calc(ptr noundef nonnull %1) #15
  br label %14

14:                                               ; preds = %7, %13, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @BM_mesh_data_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @BKE_editmesh_tessface_calc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_redo_state_free(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %1, null
  %5 = load ptr, ptr %0, align 8, !tbaa !47
  %6 = icmp eq ptr %5, null
  br i1 %4, label %7, label %12

7:                                                ; preds = %3
  br i1 %6, label %20, label %8

8:                                                ; preds = %7
  %9 = load ptr, ptr %1, align 8, !tbaa !34
  tail call void @BM_mesh_data_free(ptr noundef %9) #15
  %10 = load ptr, ptr %1, align 8, !tbaa !34
  %11 = load ptr, ptr %0, align 8, !tbaa !47
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1008) %10, ptr noundef nonnull align 8 dereferenceable(1008) %11, i64 1008, i1 false), !tbaa.struct !42
  br label %15

12:                                               ; preds = %3
  br i1 %6, label %13, label %14

13:                                               ; preds = %12
  store ptr null, ptr %0, align 8, !tbaa !47
  br label %24

14:                                               ; preds = %12
  tail call void @BM_mesh_data_free(ptr noundef nonnull %5) #15
  br label %15

15:                                               ; preds = %14, %8
  %16 = load ptr, ptr %0, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %19(ptr noundef nonnull %16) #15
  br label %20

20:                                               ; preds = %7, %18, %15
  store ptr null, ptr %0, align 8, !tbaa !47
  %21 = icmp ne i32 %2, 0
  %22 = and i1 %4, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call void @BKE_editmesh_tessface_calc(ptr noundef nonnull %1) #15
  br label %24

24:                                               ; preds = %13, %23, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_mesh_ensure_valid_dm_hack(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMEditMesh, ptr %1, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 5
  %8 = load i16, ptr %7, align 2, !tbaa !56
  %9 = and i16 %8, 4096
  %10 = icmp eq i16 %9, 0
  %11 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 103
  %12 = load i8, ptr %11, align 1, !tbaa !57
  %13 = and i8 %12, 2
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %10, i1 %14, i1 false
  br i1 %15, label %26, label %16

16:                                               ; preds = %2
  %17 = and i8 %12, 2
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  tail call void @DAG_id_tag_update(ptr noundef nonnull %4, i16 noundef signext 2) #15
  %20 = load ptr, ptr %3, align 8, !tbaa !49
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi ptr [ %20, %19 ], [ %4, %16 ]
  %23 = load ptr, ptr @G, align 8, !tbaa !58
  %24 = getelementptr inbounds %struct.Main, ptr %23, i64 0, i32 46
  %25 = load ptr, ptr %24, align 8, !tbaa !60
  tail call void @BKE_object_handle_update(ptr noundef %25, ptr noundef %0, ptr noundef %22) #15
  br label %26

26:                                               ; preds = %2, %21
  ret void
}

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_object_handle_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_mesh_normals_update(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @BM_mesh_normals_update(ptr noundef %2) #15
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_normals_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_mesh_clear(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @BM_mesh_clear(ptr noundef %2) #15
  tail call void @BKE_editmesh_free_derivedmesh(ptr noundef nonnull %0) #15
  %3 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 4
  store i32 0, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %8(ptr noundef nonnull %5) #15
  store ptr null, ptr %4, align 8, !tbaa !63
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_editmesh_free_derivedmesh(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_stats_update(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca [3 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
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
  br label %10

10:                                               ; preds = %1, %30
  %11 = phi i64 [ 0, %1 ], [ %31, %30 ]
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  %13 = getelementptr inbounds [3 x i8], ptr @__const.EDBM_mesh_reveal.iter_types, i64 0, i64 %11
  %14 = load i8, ptr %13, align 1, !tbaa !44
  %15 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %12, i8 noundef zeroext %14, ptr noundef null) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 %11
  br label %19

19:                                               ; preds = %17, %27
  %20 = phi ptr [ %15, %17 ], [ %28, %27 ]
  %21 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %20, i8 noundef zeroext 1) #17, !range !69
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %18, align 8, !tbaa !45
  %25 = load i32, ptr %24, align 4, !tbaa !43
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %24, align 4, !tbaa !43
  br label %27

27:                                               ; preds = %19, %23
  %28 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #17
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %19, !llvm.loop !70

30:                                               ; preds = %27, %10
  %31 = add nuw nsw i64 %11, 1
  %32 = icmp eq i64 %31, 3
  br i1 %32, label %33, label %10, !llvm.loop !72

33:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !73 {
  %5 = tail call fastcc zeroext i8 @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #17, !range !74
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #17
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi ptr [ %8, %7 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #4 !PGOFuncName !75 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !76
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !78 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = tail call ptr %3(ptr noundef %0) #15
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @EDBM_mesh_deform_dm_get(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 14
  %7 = load i32, ptr %6, align 8, !tbaa !82
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !84
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, ptr null, ptr %3
  br label %14

14:                                               ; preds = %9, %1, %5
  %15 = phi ptr [ null, %5 ], [ null, %1 ], [ %13, %9 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @EDBM_op_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ...) local_unnamed_addr #0 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.va_start(ptr nonnull %5)
  %7 = call zeroext i8 @BMO_op_vinitf(ptr noundef %6, ptr noundef %1, i32 noundef 1, ptr noundef %3, ptr noundef nonnull %5) #15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %11, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.EDBM_op_init) #15
  br label %22

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !87
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call ptr @BKE_editmesh_copy(ptr noundef nonnull %0) #15
  store ptr %17, ptr %13, align 8, !tbaa !87
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !88
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !88
  br label %22

22:                                               ; preds = %18, %9
  %23 = phi i8 [ 1, %18 ], [ 0, %9 ]
  call void @llvm.va_end(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret i8 %23
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #6

; Function Attrs: optsize
declare zeroext i8 @BMO_op_vinitf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #6

; Function Attrs: optsize
declare ptr @BKE_editmesh_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @EDBM_op_finish(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @BMO_op_finish(ptr noundef %6, ptr noundef %1) #15
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  %8 = call i32 @BMO_error_get(ptr noundef %7, ptr noundef nonnull %5, ptr noundef null) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !87
  %13 = icmp eq i8 %3, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  %17 = load ptr, ptr %5, align 8, !tbaa !45
  call void @BKE_report(ptr noundef %16, i32 noundef 32, ptr noundef %17) #15
  br label %18

18:                                               ; preds = %14, %10
  call void @EDBM_mesh_free(ptr noundef nonnull %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %12, i64 112, i1 false), !tbaa.struct !89
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %19(ptr noundef %12) #15
  %20 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 2
  store i32 0, ptr %20, align 8, !tbaa !88
  store ptr null, ptr %11, align 8, !tbaa !87
  %21 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %18
  call void @BKE_editmesh_tessface_calc(ptr noundef nonnull %0) #15
  br label %41

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !88
  %28 = add nsw i32 %27, -1
  store i32 %28, ptr %26, align 8, !tbaa !88
  %29 = icmp slt i32 %27, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %32 = load i32, ptr %26, align 8, !tbaa !88
  br label %33

33:                                               ; preds = %30, %25
  %34 = phi i32 [ %32, %30 ], [ %28, %25 ]
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !87
  call void @BKE_editmesh_free(ptr noundef %38) #15
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %40 = load ptr, ptr %37, align 8, !tbaa !87
  call void %39(ptr noundef %40) #15
  store ptr null, ptr %37, align 8, !tbaa !87
  br label %41

41:                                               ; preds = %33, %36, %18, %24
  %42 = phi i8 [ 0, %24 ], [ 0, %18 ], [ 1, %36 ], [ 1, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret i8 %42
}

; Function Attrs: optsize
declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BMO_error_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_mesh_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @ED_mesh_mirror_spatial_table(ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef zeroext 101) #15
  %3 = tail call i32 @ED_mesh_mirror_topo_table(ptr noundef null, i8 noundef zeroext 101) #15
  tail call void @BKE_editmesh_free(ptr noundef %0) #15
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BKE_editmesh_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @EDBM_op_callf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ...) local_unnamed_addr #0 {
  %4 = alloca %struct.BMOperator, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.va_start(ptr nonnull %5)
  %7 = call zeroext i8 @BMO_op_vinitf(ptr noundef %6, ptr noundef nonnull %4, i32 noundef 1, ptr noundef %2, ptr noundef nonnull %5) #15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %11, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.EDBM_op_callf) #15
  call void @llvm.va_end(ptr nonnull %5)
  br label %23

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !87
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call ptr @BKE_editmesh_copy(ptr noundef nonnull %0) #15
  store ptr %17, ptr %13, align 8, !tbaa !87
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !88
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !88
  call void @BMO_op_exec(ptr noundef %6, ptr noundef nonnull %4) #15
  call void @llvm.va_end(ptr nonnull %5)
  %22 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %1, i8 noundef zeroext 1) #17, !range !74
  br label %23

23:                                               ; preds = %18, %9
  %24 = phi i8 [ %22, %18 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %4) #16
  ret i8 %24
}

; Function Attrs: optsize
declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @EDBM_op_call_and_selectf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4, ...) local_unnamed_addr #0 {
  %6 = alloca %struct.BMOperator, align 8
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  call void @llvm.va_start(ptr nonnull %7)
  %9 = call zeroext i8 @BMO_op_vinitf(ptr noundef %8, ptr noundef nonnull %6, i32 noundef 1, ptr noundef %4, ptr noundef nonnull %7) #15
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !85
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %13, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.EDBM_op_call_and_selectf) #15
  call void @llvm.va_end(ptr nonnull %7)
  br label %36

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !87
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call ptr @BKE_editmesh_copy(ptr noundef nonnull %0) #15
  store ptr %19, ptr %15, align 8, !tbaa !87
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !88
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %21, align 8, !tbaa !88
  call void @BMO_op_exec(ptr noundef %8, ptr noundef nonnull %6) #15
  %24 = getelementptr inbounds %struct.BMOperator, ptr %6, i64 0, i32 1
  %25 = call ptr @BMO_slot_get(ptr noundef nonnull %24, ptr noundef %2) #15
  %26 = getelementptr inbounds %struct.BMOpSlot, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !44
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 11
  %30 = icmp eq i8 %3, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load ptr, ptr %0, align 8, !tbaa !34
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %32, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0) #15
  br label %33

33:                                               ; preds = %31, %20
  %34 = load ptr, ptr %0, align 8, !tbaa !34
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %34, ptr noundef nonnull %24, ptr noundef %2, i8 noundef zeroext %29, i8 noundef zeroext 1, i8 noundef zeroext 1) #15
  call void @llvm.va_end(ptr nonnull %7)
  %35 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %1, i8 noundef zeroext 1) #17, !range !74
  br label %36

36:                                               ; preds = %33, %11
  %37 = phi i8 [ %35, %33 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %6) #16
  ret i8 %37
}

; Function Attrs: optsize
declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @EDBM_op_call_silentf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.va_start(ptr nonnull %4)
  %6 = call zeroext i8 @BMO_op_vinitf(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 1, ptr noundef %1, ptr noundef nonnull %4) #15
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  call void @llvm.va_end(ptr nonnull %4)
  br label %20

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !87
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call ptr @BKE_editmesh_copy(ptr noundef nonnull %0) #15
  store ptr %14, ptr %10, align 8, !tbaa !87
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !88
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 8, !tbaa !88
  call void @BMO_op_exec(ptr noundef %5, ptr noundef nonnull %3) #15
  call void @llvm.va_end(ptr nonnull %4)
  %19 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 0) #17, !range !74
  br label %20

20:                                               ; preds = %15, %8
  %21 = phi i8 [ %19, %15 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #16
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_selectmode_to_scene(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.BMEditMesh, ptr %4, i64 0, i32 12
  %8 = load i16, ptr %7, align 4, !tbaa !91
  %9 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 8
  store i16 %8, ptr %11, align 2, !tbaa !111
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68091904, ptr noundef %2) #15
  br label %12

12:                                               ; preds = %1, %6
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_mesh_make(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !118
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 28
  %10 = load i32, ptr %9, align 8, !tbaa !120
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @BKE_mesh_convert_mfaces_to_mpolys(ptr noundef nonnull %4) #15
  br label %13

13:                                               ; preds = %12, %8, %2
  %14 = tail call ptr @BKE_mesh_to_bmesh(ptr noundef nonnull %4, ptr noundef nonnull %1) #15
  %15 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !121
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  tail call void @EDBM_mesh_free(ptr noundef nonnull %16) #17
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %20 = load ptr, ptr %15, align 8, !tbaa !121
  tail call void %19(ptr noundef %20) #15
  br label %21

21:                                               ; preds = %18, %13
  %22 = tail call ptr @BKE_editmesh_create(ptr noundef %14, i8 noundef zeroext 0) #15
  store ptr %22, ptr %15, align 8, !tbaa !121
  %23 = getelementptr inbounds %struct.ToolSettings, ptr %0, i64 0, i32 8
  %24 = load i16, ptr %23, align 2, !tbaa !111
  %25 = load ptr, ptr %22, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.BMesh, ptr %25, i64 0, i32 28
  store i16 %24, ptr %26, align 8, !tbaa !122
  %27 = getelementptr inbounds %struct.BMEditMesh, ptr %22, i64 0, i32 12
  store i16 %24, ptr %27, align 4, !tbaa !91
  %28 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 32
  %29 = load i32, ptr %28, align 4, !tbaa !123
  %30 = icmp sgt i32 %29, 0
  %31 = trunc i32 %29 to i16
  %32 = add i16 %31, -1
  %33 = select i1 %30, i16 %32, i16 0
  %34 = getelementptr inbounds %struct.BMEditMesh, ptr %22, i64 0, i32 13
  store i16 %33, ptr %34, align 2, !tbaa !124
  %35 = getelementptr inbounds %struct.BMEditMesh, ptr %22, i64 0, i32 14
  store ptr %1, ptr %35, align 8, !tbaa !49
  tail call void @EDBM_selectmode_flush(ptr noundef nonnull %22) #17
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_convert_mfaces_to_mpolys(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_mesh_to_bmesh(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_editmesh_create(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_selectmode_flush(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %3 = load i16, ptr %2, align 4, !tbaa !91
  tail call void @EDBM_selectmode_flush_ex(ptr noundef %0, i16 noundef signext %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_mesh_load(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !121
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @BM_mesh_bm_to_me(ptr noundef %6, ptr noundef %3, i8 noundef zeroext 0) #15
  tail call void @BKE_object_free_derived_caches(ptr noundef %0) #15
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_bm_to_me(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_object_free_derived_caches(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_mesh_mirror_spatial_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_mesh_mirror_topo_table(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_selectmode_flush_ex(ptr nocapture noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @BM_mesh_select_mode_flush_ex(ptr noundef %3, i16 noundef signext %1) #15
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_select_mode_flush_ex(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_deselect_flush(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %3 = load i16, ptr %2, align 4, !tbaa !91
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 28
  store i16 %3, ptr %5, align 8, !tbaa !122
  tail call void @BM_mesh_deselect_flush(ptr noundef %4) #15
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_deselect_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_select_flush(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %3 = load i16, ptr %2, align 4, !tbaa !91
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 28
  store i16 %3, ptr %5, align 8, !tbaa !122
  tail call void @BM_mesh_select_flush(ptr noundef %4) #15
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_select_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_select_more(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMOperator, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %2) #16
  %3 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %4 = load i16, ptr %3, align 4, !tbaa !91
  %5 = icmp eq i16 %4, 4
  %6 = zext i1 %5 to i32
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  %8 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %7, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 0, i32 noundef %6) #15
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  call void @BMO_op_exec(ptr noundef %9, ptr noundef nonnull %2) #15
  %10 = load ptr, ptr %0, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.BMOperator, ptr %2, i64 0, i32 1
  %12 = zext i1 %5 to i8
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %10, ptr noundef nonnull %11, ptr noundef nonnull @.str.3, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext %12) #15
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  call void @BMO_op_finish(ptr noundef %13, ptr noundef nonnull %2) #15
  call void @EDBM_selectmode_flush(ptr noundef nonnull %0) #17
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %2) #16
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_select_less(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMOperator, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %2) #16
  %3 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %4 = load i16, ptr %3, align 4, !tbaa !91
  %5 = icmp eq i16 %4, 4
  %6 = zext i1 %5 to i32
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  %8 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %7, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 1, i32 noundef %6) #15
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  call void @BMO_op_exec(ptr noundef %9, ptr noundef nonnull %2) #15
  %10 = load ptr, ptr %0, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.BMOperator, ptr %2, i64 0, i32 1
  %12 = zext i1 %5 to i8
  call void @BMO_slot_buffer_hflag_disable(ptr noundef %10, ptr noundef nonnull %11, ptr noundef nonnull @.str.3, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext %12) #15
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  call void @BMO_op_finish(ptr noundef %13, ptr noundef nonnull %2) #15
  call void @EDBM_selectmode_flush(ptr noundef nonnull %0) #17
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %2) #16
  ret void
}

; Function Attrs: optsize
declare void @BMO_slot_buffer_hflag_disable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_flag_disable_all(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %3, i8 noundef zeroext 11, i8 noundef zeroext %1, i8 noundef zeroext 0) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_flag_enable_all(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @BM_mesh_elem_hflag_enable_all(ptr noundef %3, i8 noundef zeroext 11, i8 noundef zeroext %1, i8 noundef zeroext 1) #15
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_enable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @undo_push_mesh(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #15
  %5 = getelementptr inbounds %struct.BMEditMesh, ptr %4, i64 0, i32 14
  store ptr %3, ptr %5, align 8, !tbaa !49
  tail call void @undo_editmode_push(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @getEditMesh, ptr noundef nonnull @free_undo, ptr noundef nonnull @undoMesh_to_editbtMesh, ptr noundef nonnull @editbtMesh_to_undoMesh, ptr noundef null) #15
  ret void
}

; Function Attrs: optsize
declare void @undo_editmode_push(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @getEditMesh(ptr noundef %0) #0 !PGOFuncName !125 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !126
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  br label %13

13:                                               ; preds = %1, %4, %8
  %14 = phi ptr [ %12, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @free_undo(ptr noundef %0) #0 !PGOFuncName !127 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !128
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  tail call void @BKE_key_free(ptr noundef nonnull %3) #15
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %7 = load ptr, ptr %2, align 8, !tbaa !128
  tail call void %6(ptr noundef %7) #15
  br label %8

8:                                                ; preds = %5, %1
  tail call void @BKE_mesh_free(ptr noundef nonnull %0, i32 noundef 0) #15
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %9(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @undoMesh_to_editbtMesh(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !129 {
  %4 = alloca %struct.BMAllocTemplate, align 8
  %5 = getelementptr inbounds %struct.BMEditMesh, ptr %1, i64 0, i32 14
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %8 = load <2 x i32>, ptr %7, align 8, !tbaa !43
  store <2 x i32> %8, ptr %4, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.BMAllocTemplate, ptr %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %11 = load <2 x i32>, ptr %10, align 8, !tbaa !43
  %12 = shufflevector <2 x i32> %11, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %12, ptr %9, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.UndoMesh, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !130
  %15 = load ptr, ptr %1, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.BMesh, ptr %15, i64 0, i32 29
  store i32 %14, ptr %16, align 4, !tbaa !132
  %17 = trunc i32 %14 to i16
  %18 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 115
  store i16 %17, ptr %18, align 2, !tbaa !133
  tail call void @EDBM_mesh_free(ptr noundef nonnull %1) #17
  %19 = call ptr @BM_mesh_create(ptr noundef nonnull %4) #15
  %20 = load i16, ptr %18, align 2, !tbaa !133
  %21 = sext i16 %20 to i32
  call void @BM_mesh_bm_from_me(ptr noundef %19, ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef %21) #15
  %22 = call ptr @BKE_editmesh_create(ptr noundef %19, i8 noundef zeroext 1) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(112) %22, i64 112, i1 false), !tbaa.struct !89
  %23 = getelementptr inbounds %struct.UndoMesh, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !134
  %25 = trunc i32 %24 to i16
  %26 = getelementptr inbounds %struct.BMEditMesh, ptr %1, i64 0, i32 12
  store i16 %25, ptr %26, align 4, !tbaa !91
  %27 = getelementptr inbounds %struct.BMesh, ptr %19, i64 0, i32 28
  store i16 %25, ptr %27, align 8, !tbaa !122
  store ptr %6, ptr %5, align 8, !tbaa !49
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %28(ptr noundef %22) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @editbtMesh_to_undoMesh(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !135 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %4 = tail call ptr %3(i64 noundef 1384, ptr noundef nonnull @.str.17) #15
  %5 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !128
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @BKE_key_copy_nolib(ptr noundef nonnull %6) #15
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi ptr [ %9, %8 ], [ null, %2 ]
  %12 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 4
  store ptr %11, ptr %12, align 8, !tbaa !136
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @BM_mesh_bm_to_me(ptr noundef %13, ptr noundef %4, i8 noundef zeroext 0) #15
  %14 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %15 = load i16, ptr %14, align 4, !tbaa !91
  %16 = sext i16 %15 to i32
  %17 = getelementptr inbounds %struct.UndoMesh, ptr %4, i64 0, i32 1
  store i32 %16, ptr %17, align 8, !tbaa !134
  %18 = load ptr, ptr %0, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.BMesh, ptr %18, i64 0, i32 29
  %20 = load i32, ptr %19, align 4, !tbaa !132
  %21 = getelementptr inbounds %struct.UndoMesh, ptr %4, i64 0, i32 2
  store i32 %20, ptr %21, align 4, !tbaa !130
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_uv_vert_map_create(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %8 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %7, i32 noundef 16) #15
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %0, i8 noundef zeroext 9) #15
  %9 = load i32, ptr %0, align 8, !tbaa !137
  %10 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %0, i8 noundef zeroext 3, ptr noundef null) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %167, label %12

12:                                               ; preds = %3
  %13 = icmp eq i8 %1, 0
  br label %14

14:                                               ; preds = %12, %24
  %15 = phi ptr [ %10, %12 ], [ %26, %24 ]
  %16 = phi i32 [ 0, %12 ], [ %25, %24 ]
  br i1 %13, label %20, label %17

17:                                               ; preds = %14
  %18 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %15, i8 noundef zeroext 1) #17, !range !69
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17, %14
  %21 = getelementptr inbounds %struct.BMFace, ptr %15, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !138
  %23 = add nsw i32 %22, %16
  br label %24

24:                                               ; preds = %17, %20
  %25 = phi i32 [ %23, %20 ], [ %16, %17 ]
  %26 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %14, !llvm.loop !140

28:                                               ; preds = %24
  %29 = icmp eq i32 %25, 0
  br i1 %29, label %167, label %30

30:                                               ; preds = %28
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %32 = call ptr %31(i64 noundef 16, ptr noundef nonnull @.str.4) #15
  %33 = icmp eq ptr %32, null
  br i1 %33, label %167, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %36 = sext i32 %9 to i64
  %37 = shl nsw i64 %36, 3
  %38 = call ptr %35(i64 noundef %37, ptr noundef nonnull @.str.5) #15
  store ptr %38, ptr %32, align 8, !tbaa !141
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %40 = sext i32 %25 to i64
  %41 = shl nsw i64 %40, 4
  %42 = call ptr %39(i64 noundef %41, ptr noundef nonnull @.str.6) #15
  %43 = getelementptr inbounds %struct.UvVertMap, ptr %32, i64 0, i32 1
  store ptr %42, ptr %43, align 8, !tbaa !143
  %44 = load ptr, ptr %32, align 8, !tbaa !141
  %45 = icmp eq ptr %44, null
  %46 = icmp eq ptr %42, null
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  call void @BKE_mesh_uv_vert_map_free(ptr noundef nonnull %32) #15
  br label %167

49:                                               ; preds = %34
  %50 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %0, i8 noundef zeroext 3, ptr noundef null) #17
  %51 = icmp eq ptr %50, null
  br i1 %51, label %90, label %52

52:                                               ; preds = %49
  %53 = icmp eq i8 %1, 0
  br label %54

54:                                               ; preds = %52, %85
  %55 = phi ptr [ %50, %52 ], [ %88, %85 ]
  %56 = phi ptr [ %42, %52 ], [ %86, %85 ]
  %57 = phi i32 [ 0, %52 ], [ %87, %85 ]
  br i1 %53, label %61, label %58

58:                                               ; preds = %54
  %59 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %55, i8 noundef zeroext 1) #17, !range !69
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %85, label %61

61:                                               ; preds = %58, %54
  %62 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %55) #17
  %63 = icmp eq ptr %62, null
  br i1 %63, label %85, label %64

64:                                               ; preds = %61, %64
  %65 = phi ptr [ %83, %64 ], [ %62, %61 ]
  %66 = phi ptr [ %81, %64 ], [ %56, %61 ]
  %67 = phi i8 [ %82, %64 ], [ 0, %61 ]
  %68 = getelementptr inbounds %struct.UvMapVert, ptr %66, i64 0, i32 2
  store i8 %67, ptr %68, align 4, !tbaa !144
  %69 = getelementptr inbounds %struct.UvMapVert, ptr %66, i64 0, i32 1
  store i32 %57, ptr %69, align 8, !tbaa !146
  %70 = getelementptr inbounds %struct.UvMapVert, ptr %66, i64 0, i32 3
  store i8 0, ptr %70, align 1, !tbaa !147
  %71 = load ptr, ptr %32, align 8, !tbaa !141
  %72 = getelementptr inbounds %struct.BMLoop, ptr %65, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !148
  %74 = call fastcc i32 @_bm_elem_index_get(ptr noundef %73) #17
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %71, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !45
  store ptr %77, ptr %66, align 8, !tbaa !150
  %78 = call fastcc i32 @_bm_elem_index_get(ptr noundef %73) #17
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds ptr, ptr %71, i64 %79
  store ptr %66, ptr %80, align 8, !tbaa !45
  %81 = getelementptr inbounds %struct.UvMapVert, ptr %66, i64 1
  %82 = add i8 %67, 1
  %83 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #17
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %64, !llvm.loop !151

85:                                               ; preds = %64, %61, %58
  %86 = phi ptr [ %56, %58 ], [ %56, %61 ], [ %81, %64 ]
  %87 = add i32 %57, 1
  %88 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #17
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %54, !llvm.loop !152

90:                                               ; preds = %85, %49
  %91 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef null) #17
  %92 = icmp eq ptr %91, null
  br i1 %92, label %167, label %93

93:                                               ; preds = %90
  %94 = sext i32 %8 to i64
  %95 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %96 = getelementptr inbounds float, ptr %2, i64 1
  br label %97

97:                                               ; preds = %93, %160
  %98 = phi i32 [ 0, %93 ], [ %164, %160 ]
  %99 = load ptr, ptr %32, align 8, !tbaa !141
  %100 = zext i32 %98 to i64
  %101 = getelementptr inbounds ptr, ptr %99, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %103 = icmp eq ptr %102, null
  br i1 %103, label %160, label %104

104:                                              ; preds = %97, %154
  %105 = phi ptr [ %151, %154 ], [ %102, %97 ]
  %106 = phi ptr [ %150, %154 ], [ null, %97 ]
  %107 = load ptr, ptr %105, align 8, !tbaa !150
  store ptr %106, ptr %105, align 8, !tbaa !150
  %108 = getelementptr inbounds %struct.UvMapVert, ptr %105, i64 0, i32 1
  %109 = load i32, ptr %108, align 8, !tbaa !146
  %110 = call ptr @BM_face_at_index(ptr noundef nonnull %0, i32 noundef %109) #15
  %111 = getelementptr inbounds %struct.UvMapVert, ptr %105, i64 0, i32 2
  %112 = load i8, ptr %111, align 4, !tbaa !144
  %113 = zext i8 %112 to i32
  %114 = call ptr @BM_iter_at_index(ptr noundef nonnull %0, i8 noundef zeroext 11, ptr noundef %110, i32 noundef %113) #15
  %115 = load ptr, ptr %114, align 8, !tbaa !153
  %116 = getelementptr inbounds i8, ptr %115, i64 %94
  %117 = icmp eq ptr %107, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %104
  %119 = getelementptr inbounds %struct.UvMapVert, ptr %105, i64 0, i32 3
  store i8 1, ptr %119, align 1, !tbaa !147
  br label %157

120:                                              ; preds = %104, %149
  %121 = phi ptr [ %152, %149 ], [ null, %104 ]
  %122 = phi ptr [ %125, %149 ], [ %107, %104 ]
  %123 = phi ptr [ %151, %149 ], [ %107, %104 ]
  %124 = phi ptr [ %150, %149 ], [ %105, %104 ]
  %125 = load ptr, ptr %122, align 8, !tbaa !150
  %126 = getelementptr inbounds %struct.UvMapVert, ptr %122, i64 0, i32 1
  %127 = load i32, ptr %126, align 8, !tbaa !146
  %128 = call ptr @BM_face_at_index(ptr noundef nonnull %0, i32 noundef %127) #15
  %129 = getelementptr inbounds %struct.UvMapVert, ptr %122, i64 0, i32 2
  %130 = load i8, ptr %129, align 4, !tbaa !144
  %131 = zext i8 %130 to i32
  %132 = call ptr @BM_iter_at_index(ptr noundef nonnull %0, i8 noundef zeroext 11, ptr noundef %128, i32 noundef %131) #15
  %133 = load ptr, ptr %132, align 8, !tbaa !153
  %134 = getelementptr inbounds i8, ptr %133, i64 %94
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %6, ptr noundef %134, ptr noundef %116) #17
  %135 = load float, ptr %6, align 4, !tbaa !154
  %136 = call float @llvm.fabs.f32(float %135)
  %137 = load float, ptr %2, align 4, !tbaa !154
  %138 = fcmp olt float %136, %137
  br i1 %138, label %139, label %149

139:                                              ; preds = %120
  %140 = load float, ptr %95, align 4, !tbaa !154
  %141 = call float @llvm.fabs.f32(float %140)
  %142 = load float, ptr %96, align 4, !tbaa !154
  %143 = fcmp olt float %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = icmp eq ptr %121, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %144
  store ptr %125, ptr %121, align 8, !tbaa !150
  br label %147

147:                                              ; preds = %144, %146
  %148 = phi ptr [ %123, %146 ], [ %125, %144 ]
  store ptr %124, ptr %122, align 8, !tbaa !150
  br label %149

149:                                              ; preds = %120, %139, %147
  %150 = phi ptr [ %122, %147 ], [ %124, %139 ], [ %124, %120 ]
  %151 = phi ptr [ %148, %147 ], [ %123, %139 ], [ %123, %120 ]
  %152 = phi ptr [ %121, %147 ], [ %122, %139 ], [ %122, %120 ]
  %153 = icmp eq ptr %125, null
  br i1 %153, label %154, label %120, !llvm.loop !155

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.UvMapVert, ptr %150, i64 0, i32 3
  store i8 1, ptr %155, align 1, !tbaa !147
  %156 = icmp eq ptr %151, null
  br i1 %156, label %157, label %104, !llvm.loop !156

157:                                              ; preds = %154, %118
  %158 = phi ptr [ %105, %118 ], [ %150, %154 ]
  %159 = load ptr, ptr %32, align 8, !tbaa !141
  br label %160

160:                                              ; preds = %157, %97
  %161 = phi ptr [ %99, %97 ], [ %159, %157 ]
  %162 = phi ptr [ null, %97 ], [ %158, %157 ]
  %163 = getelementptr inbounds ptr, ptr %161, i64 %100
  store ptr %162, ptr %163, align 8, !tbaa !45
  %164 = add i32 %98, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  %165 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #17
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %97, !llvm.loop !157

167:                                              ; preds = %160, %3, %90, %30, %28, %48
  %168 = phi ptr [ null, %48 ], [ null, %28 ], [ null, %30 ], [ %32, %90 ], [ null, %3 ], [ %32, %160 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #16
  ret ptr %168
}

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_mesh_uv_vert_map_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !158 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !159
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @BM_face_at_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BM_iter_at_index(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #8 !PGOFuncName !160 {
  %4 = load float, ptr %1, align 4, !tbaa !154
  %5 = load float, ptr %2, align 4, !tbaa !154
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !154
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !154
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !154
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_uv_vert_map_at_index(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !141
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds ptr, ptr %3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_uv_element_map_create(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %8 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %7, i32 noundef 16) #15
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %0, i8 noundef zeroext 9) #15
  %9 = load i32, ptr %0, align 8, !tbaa !137
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !161
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  %15 = tail call ptr %10(i64 noundef %14, ptr noundef nonnull @.str.7) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %377, label %17

17:                                               ; preds = %3
  %18 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %0, i8 noundef zeroext 3, ptr noundef null) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %374, label %20

20:                                               ; preds = %17
  %21 = icmp eq i8 %1, 0
  br label %22

22:                                               ; preds = %20, %32
  %23 = phi ptr [ %18, %20 ], [ %34, %32 ]
  %24 = phi i32 [ 0, %20 ], [ %33, %32 ]
  br i1 %21, label %28, label %25

25:                                               ; preds = %22
  %26 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %23, i8 noundef zeroext 1) #17, !range !69
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25, %22
  %29 = getelementptr inbounds %struct.BMFace, ptr %23, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !138
  %31 = add nsw i32 %30, %24
  br label %32

32:                                               ; preds = %25, %28
  %33 = phi i32 [ %31, %28 ], [ %24, %25 ]
  %34 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #17
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %22, !llvm.loop !162

36:                                               ; preds = %32
  %37 = icmp eq i32 %33, 0
  br i1 %37, label %374, label %38

38:                                               ; preds = %36
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %40 = call ptr %39(i64 noundef 32, ptr noundef nonnull @.str.8) #15
  %41 = icmp eq ptr %40, null
  br i1 %41, label %374, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.UvElementMap, ptr %40, i64 0, i32 2
  store i32 %33, ptr %43, align 8, !tbaa !163
  %44 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %45 = sext i32 %9 to i64
  %46 = shl nsw i64 %45, 3
  %47 = call ptr %44(i64 noundef %46, ptr noundef nonnull @.str.9) #15
  store ptr %47, ptr %40, align 8, !tbaa !165
  %48 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %49 = sext i32 %33 to i64
  %50 = mul nsw i64 %49, 24
  %51 = call ptr %48(i64 noundef %50, ptr noundef nonnull @.str.10) #15
  %52 = getelementptr inbounds %struct.UvElementMap, ptr %40, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !166
  %53 = load ptr, ptr %40, align 8, !tbaa !165
  %54 = icmp eq ptr %53, null
  %55 = icmp eq ptr %51, null
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  call void @BM_uv_element_map_free(ptr noundef nonnull %40) #17
  br label %374

58:                                               ; preds = %42
  %59 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %0, i8 noundef zeroext 3, ptr noundef null) #17
  %60 = icmp eq ptr %59, null
  br i1 %60, label %101, label %61

61:                                               ; preds = %58
  %62 = icmp eq i8 %1, 0
  br label %63

63:                                               ; preds = %61, %97
  %64 = phi i64 [ 0, %61 ], [ %67, %97 ]
  %65 = phi ptr [ %59, %61 ], [ %99, %97 ]
  %66 = phi ptr [ %51, %61 ], [ %98, %97 ]
  %67 = add nuw i64 %64, 1
  %68 = getelementptr inbounds i32, ptr %15, i64 %64
  store i32 65535, ptr %68, align 4, !tbaa !43
  br i1 %62, label %72, label %69

69:                                               ; preds = %63
  %70 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %65, i8 noundef zeroext 1) #17, !range !69
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %97, label %72

72:                                               ; preds = %69, %63
  %73 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %65) #17
  %74 = icmp eq ptr %73, null
  br i1 %74, label %97, label %75

75:                                               ; preds = %72, %75
  %76 = phi ptr [ %94, %75 ], [ %73, %72 ]
  %77 = phi ptr [ %93, %75 ], [ %66, %72 ]
  %78 = phi i16 [ %95, %75 ], [ 0, %72 ]
  %79 = getelementptr inbounds %struct.UvElement, ptr %77, i64 0, i32 1
  store ptr %76, ptr %79, align 8, !tbaa !167
  %80 = getelementptr inbounds %struct.UvElement, ptr %77, i64 0, i32 3
  store i8 0, ptr %80, align 2, !tbaa !169
  %81 = getelementptr inbounds %struct.UvElement, ptr %77, i64 0, i32 5
  store i16 -1, ptr %81, align 4, !tbaa !170
  %82 = getelementptr inbounds %struct.UvElement, ptr %77, i64 0, i32 2
  store i16 %78, ptr %82, align 8, !tbaa !171
  %83 = load ptr, ptr %40, align 8, !tbaa !165
  %84 = getelementptr inbounds %struct.BMLoop, ptr %76, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !148
  %86 = call fastcc i32 @_bm_elem_index_get(ptr noundef %85) #17
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds ptr, ptr %83, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !45
  store ptr %89, ptr %77, align 8, !tbaa !172
  %90 = call fastcc i32 @_bm_elem_index_get(ptr noundef %85) #17
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds ptr, ptr %83, i64 %91
  store ptr %77, ptr %92, align 8, !tbaa !45
  %93 = getelementptr inbounds %struct.UvElement, ptr %77, i64 1
  %94 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #17
  %95 = add i16 %78, 1
  %96 = icmp eq ptr %94, null
  br i1 %96, label %97, label %75, !llvm.loop !173

97:                                               ; preds = %75, %72, %69
  %98 = phi ptr [ %66, %69 ], [ %66, %72 ], [ %93, %75 ]
  %99 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #17
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %63, !llvm.loop !174

101:                                              ; preds = %97, %58
  %102 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef null) #17
  %103 = icmp eq ptr %102, null
  br i1 %103, label %159, label %104

104:                                              ; preds = %101
  %105 = sext i32 %8 to i64
  %106 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  br label %107

107:                                              ; preds = %104, %154
  %108 = phi i64 [ 0, %104 ], [ %156, %154 ]
  %109 = load ptr, ptr %40, align 8, !tbaa !165
  %110 = getelementptr inbounds ptr, ptr %109, i64 %108
  %111 = load ptr, ptr %110, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %112 = icmp eq ptr %111, null
  br i1 %112, label %154, label %113

113:                                              ; preds = %107, %151
  %114 = phi ptr [ %148, %151 ], [ %111, %107 ]
  %115 = phi ptr [ %147, %151 ], [ null, %107 ]
  %116 = load ptr, ptr %114, align 8, !tbaa !172
  store ptr %115, ptr %114, align 8, !tbaa !172
  %117 = getelementptr inbounds %struct.UvElement, ptr %114, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !167
  %119 = load ptr, ptr %118, align 8, !tbaa !153
  %120 = getelementptr inbounds i8, ptr %119, i64 %105
  %121 = icmp eq ptr %116, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %113
  %123 = getelementptr inbounds %struct.UvElement, ptr %114, i64 0, i32 3
  store i8 1, ptr %123, align 2, !tbaa !169
  br label %154

124:                                              ; preds = %113, %146
  %125 = phi ptr [ %149, %146 ], [ null, %113 ]
  %126 = phi ptr [ %129, %146 ], [ %116, %113 ]
  %127 = phi ptr [ %148, %146 ], [ %116, %113 ]
  %128 = phi ptr [ %147, %146 ], [ %114, %113 ]
  %129 = load ptr, ptr %126, align 8, !tbaa !172
  %130 = getelementptr inbounds %struct.UvElement, ptr %126, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !167
  %132 = load ptr, ptr %131, align 8, !tbaa !153
  %133 = getelementptr inbounds i8, ptr %132, i64 %105
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %6, ptr noundef %133, ptr noundef %120) #17
  %134 = load float, ptr %6, align 4, !tbaa !154
  %135 = call float @llvm.fabs.f32(float %134)
  %136 = fcmp olt float %135, 0x3F1A36E2E0000000
  br i1 %136, label %137, label %146

137:                                              ; preds = %124
  %138 = load float, ptr %106, align 4, !tbaa !154
  %139 = call float @llvm.fabs.f32(float %138)
  %140 = fcmp olt float %139, 0x3F1A36E2E0000000
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = icmp eq ptr %125, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %141
  store ptr %129, ptr %125, align 8, !tbaa !172
  br label %144

144:                                              ; preds = %141, %143
  %145 = phi ptr [ %127, %143 ], [ %129, %141 ]
  store ptr %128, ptr %126, align 8, !tbaa !172
  br label %146

146:                                              ; preds = %124, %137, %144
  %147 = phi ptr [ %126, %144 ], [ %128, %137 ], [ %128, %124 ]
  %148 = phi ptr [ %145, %144 ], [ %127, %137 ], [ %127, %124 ]
  %149 = phi ptr [ %125, %144 ], [ %126, %137 ], [ %126, %124 ]
  %150 = icmp eq ptr %129, null
  br i1 %150, label %151, label %124, !llvm.loop !175

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.UvElement, ptr %147, i64 0, i32 3
  store i8 1, ptr %152, align 2, !tbaa !169
  %153 = icmp eq ptr %148, null
  br i1 %153, label %154, label %113, !llvm.loop !176

154:                                              ; preds = %151, %122, %107
  %155 = phi ptr [ null, %107 ], [ %114, %122 ], [ %147, %151 ]
  store ptr %155, ptr %110, align 8, !tbaa !45
  %156 = add nuw i64 %108, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  %157 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #17
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %107, !llvm.loop !177

159:                                              ; preds = %154, %101
  %160 = icmp eq i8 %2, 0
  br i1 %160, label %374, label %161

161:                                              ; preds = %159
  %162 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %163 = shl nsw i64 %49, 2
  %164 = call ptr %162(i64 noundef %163, ptr noundef nonnull @.str.11) #15
  %165 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %166 = load i32, ptr %11, align 4, !tbaa !161
  %167 = sext i32 %166 to i64
  %168 = shl nsw i64 %167, 3
  %169 = call ptr %165(i64 noundef %168, ptr noundef nonnull @.str.12) #15
  %170 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %171 = call ptr %170(i64 noundef %50, ptr noundef nonnull @.str.13) #15
  %172 = icmp sgt i32 %33, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %161
  %174 = zext nneg i32 %33 to i64
  br label %181

175:                                              ; preds = %294, %161
  %176 = phi i32 [ 0, %161 ], [ %295, %294 ]
  %177 = load i32, ptr %0, align 8, !tbaa !137
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %318

179:                                              ; preds = %175
  %180 = zext nneg i32 %177 to i64
  br label %299

181:                                              ; preds = %173, %294
  %182 = phi i64 [ 0, %173 ], [ %297, %294 ]
  %183 = phi i32 [ 0, %173 ], [ %296, %294 ]
  %184 = phi i32 [ 0, %173 ], [ %295, %294 ]
  %185 = load ptr, ptr %52, align 8, !tbaa !166
  %186 = getelementptr inbounds %struct.UvElement, ptr %185, i64 %182, i32 5
  %187 = load i16, ptr %186, align 4, !tbaa !170
  %188 = icmp eq i16 %187, -1
  br i1 %188, label %189, label %294

189:                                              ; preds = %181
  %190 = trunc i32 %184 to i16
  store i16 %190, ptr %186, align 4, !tbaa !170
  %191 = getelementptr inbounds %struct.UvElement, ptr %185, i64 %182, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !167
  %193 = getelementptr inbounds %struct.BMLoop, ptr %192, i64 0, i32 3
  %194 = load ptr, ptr %193, align 8, !tbaa !178
  store ptr %194, ptr %169, align 8, !tbaa !45
  %195 = call fastcc i32 @_bm_elem_index_get(ptr noundef %194) #17
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, ptr %15, i64 %196
  store i32 %184, ptr %197, align 4, !tbaa !43
  br label %202

198:                                              ; preds = %287, %202
  %199 = phi i32 [ %204, %202 ], [ %288, %287 ]
  %200 = phi i32 [ %205, %202 ], [ %289, %287 ]
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %202, label %292, !llvm.loop !179

202:                                              ; preds = %189, %198
  %203 = phi i32 [ 1, %189 ], [ %200, %198 ]
  %204 = phi i32 [ %183, %189 ], [ %199, %198 ]
  %205 = add nsw i32 %203, -1
  %206 = zext nneg i32 %205 to i64
  %207 = getelementptr inbounds ptr, ptr %169, i64 %206
  %208 = load ptr, ptr %207, align 8, !tbaa !45
  %209 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 11, ptr noundef %208) #17
  %210 = icmp eq ptr %209, null
  br i1 %210, label %198, label %211

211:                                              ; preds = %202, %287
  %212 = phi ptr [ %290, %287 ], [ %209, %202 ]
  %213 = phi i32 [ %289, %287 ], [ %205, %202 ]
  %214 = phi i32 [ %288, %287 ], [ %204, %202 ]
  %215 = load ptr, ptr %40, align 8, !tbaa !165
  %216 = getelementptr inbounds %struct.BMLoop, ptr %212, i64 0, i32 1
  %217 = load ptr, ptr %216, align 8, !tbaa !148
  %218 = call fastcc i32 @_bm_elem_index_get(ptr noundef %217) #17
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds ptr, ptr %215, i64 %219
  %221 = load ptr, ptr %220, align 8, !tbaa !45
  %222 = icmp eq ptr %221, null
  br i1 %222, label %287, label %223

223:                                              ; preds = %211, %284
  %224 = phi ptr [ %229, %284 ], [ %221, %211 ]
  %225 = phi ptr [ %285, %284 ], [ %221, %211 ]
  %226 = getelementptr inbounds %struct.UvElement, ptr %225, i64 0, i32 3
  %227 = load i8, ptr %226, align 2, !tbaa !169
  %228 = icmp eq i8 %227, 0
  %229 = select i1 %228, ptr %224, ptr %225
  %230 = getelementptr inbounds %struct.UvElement, ptr %225, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !167
  %232 = getelementptr inbounds %struct.BMLoop, ptr %231, i64 0, i32 3
  %233 = load ptr, ptr %232, align 8, !tbaa !178
  %234 = icmp eq ptr %233, %208
  br i1 %234, label %235, label %284

235:                                              ; preds = %223
  %236 = getelementptr inbounds %struct.UvElement, ptr %225, i64 0, i32 5
  store i16 %190, ptr %236, align 4, !tbaa !170
  %237 = load ptr, ptr %52, align 8, !tbaa !166
  %238 = ptrtoint ptr %225 to i64
  %239 = ptrtoint ptr %237 to i64
  %240 = sub i64 %238, %239
  %241 = sdiv exact i64 %240, 24
  %242 = getelementptr inbounds i32, ptr %164, i64 %241
  store i32 %214, ptr %242, align 4, !tbaa !43
  %243 = sext i32 %214 to i64
  %244 = getelementptr inbounds %struct.UvElement, ptr %171, i64 %243, i32 1
  store ptr %231, ptr %244, align 8, !tbaa !167
  %245 = getelementptr inbounds %struct.UvElement, ptr %171, i64 %243, i32 3
  store i8 %227, ptr %245, align 2, !tbaa !169
  %246 = getelementptr inbounds %struct.UvElement, ptr %225, i64 0, i32 2
  %247 = load i16, ptr %246, align 8, !tbaa !171
  %248 = getelementptr inbounds %struct.UvElement, ptr %171, i64 %243, i32 2
  store i16 %247, ptr %248, align 8, !tbaa !171
  %249 = getelementptr inbounds %struct.UvElement, ptr %171, i64 %243, i32 5
  store i16 %190, ptr %249, align 4, !tbaa !170
  %250 = add nsw i32 %214, 1
  %251 = icmp eq ptr %229, null
  br i1 %251, label %287, label %252

252:                                              ; preds = %235, %280
  %253 = phi ptr [ %282, %280 ], [ %229, %235 ]
  %254 = phi i32 [ %281, %280 ], [ %213, %235 ]
  %255 = getelementptr inbounds %struct.UvElement, ptr %253, i64 0, i32 3
  %256 = load i8, ptr %255, align 2, !tbaa !169
  %257 = icmp eq i8 %256, 0
  %258 = icmp eq ptr %253, %229
  %259 = select i1 %257, i1 true, i1 %258
  br i1 %259, label %260, label %287

260:                                              ; preds = %252
  %261 = getelementptr inbounds %struct.UvElement, ptr %253, i64 0, i32 1
  %262 = load ptr, ptr %261, align 8, !tbaa !167
  %263 = getelementptr inbounds %struct.BMLoop, ptr %262, i64 0, i32 3
  %264 = load ptr, ptr %263, align 8, !tbaa !178
  %265 = call fastcc i32 @_bm_elem_index_get(ptr noundef %264) #17
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, ptr %15, i64 %266
  %268 = load i32, ptr %267, align 4, !tbaa !43
  %269 = icmp eq i32 %268, 65535
  br i1 %269, label %270, label %280

270:                                              ; preds = %260
  %271 = add nsw i32 %254, 1
  %272 = sext i32 %254 to i64
  %273 = getelementptr inbounds ptr, ptr %169, i64 %272
  store ptr %264, ptr %273, align 8, !tbaa !45
  %274 = load ptr, ptr %261, align 8, !tbaa !167
  %275 = getelementptr inbounds %struct.BMLoop, ptr %274, i64 0, i32 3
  %276 = load ptr, ptr %275, align 8, !tbaa !178
  %277 = call fastcc i32 @_bm_elem_index_get(ptr noundef %276) #17
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, ptr %15, i64 %278
  store i32 %184, ptr %279, align 4, !tbaa !43
  br label %280

280:                                              ; preds = %260, %270
  %281 = phi i32 [ %271, %270 ], [ %254, %260 ]
  %282 = load ptr, ptr %253, align 8, !tbaa !172
  %283 = icmp eq ptr %282, null
  br i1 %283, label %287, label %252, !llvm.loop !180

284:                                              ; preds = %223
  %285 = load ptr, ptr %225, align 8, !tbaa !172
  %286 = icmp eq ptr %285, null
  br i1 %286, label %287, label %223, !llvm.loop !181

287:                                              ; preds = %284, %280, %252, %211, %235
  %288 = phi i32 [ %250, %235 ], [ %214, %211 ], [ %250, %252 ], [ %250, %280 ], [ %214, %284 ]
  %289 = phi i32 [ %213, %235 ], [ %213, %211 ], [ %281, %280 ], [ %254, %252 ], [ %213, %284 ]
  %290 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #17
  %291 = icmp eq ptr %290, null
  br i1 %291, label %198, label %211, !llvm.loop !182

292:                                              ; preds = %198
  %293 = add nsw i32 %184, 1
  br label %294

294:                                              ; preds = %181, %292
  %295 = phi i32 [ %293, %292 ], [ %184, %181 ]
  %296 = phi i32 [ %199, %292 ], [ %183, %181 ]
  %297 = add nuw nsw i64 %182, 1
  %298 = icmp eq i64 %297, %174
  br i1 %298, label %175, label %181, !llvm.loop !183

299:                                              ; preds = %179, %315
  %300 = phi i64 [ 0, %179 ], [ %316, %315 ]
  %301 = load ptr, ptr %40, align 8, !tbaa !165
  %302 = getelementptr inbounds ptr, ptr %301, i64 %300
  %303 = load ptr, ptr %302, align 8, !tbaa !45
  %304 = icmp eq ptr %303, null
  br i1 %304, label %315, label %305

305:                                              ; preds = %299
  %306 = load ptr, ptr %52, align 8, !tbaa !166
  %307 = ptrtoint ptr %303 to i64
  %308 = ptrtoint ptr %306 to i64
  %309 = sub i64 %307, %308
  %310 = sdiv exact i64 %309, 24
  %311 = getelementptr inbounds i32, ptr %164, i64 %310
  %312 = load i32, ptr %311, align 4, !tbaa !43
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds %struct.UvElement, ptr %171, i64 %313
  store ptr %314, ptr %302, align 8, !tbaa !45
  br label %315

315:                                              ; preds = %299, %305
  %316 = add nuw nsw i64 %300, 1
  %317 = icmp eq i64 %316, %180
  br i1 %317, label %318, label %299, !llvm.loop !184

318:                                              ; preds = %315, %175
  %319 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %320 = sext i32 %176 to i64
  %321 = shl nsw i64 %320, 2
  %322 = call ptr %319(i64 noundef %321, ptr noundef nonnull @.str.14) #15
  %323 = getelementptr inbounds %struct.UvElementMap, ptr %40, i64 0, i32 4
  store ptr %322, ptr %323, align 8, !tbaa !185
  %324 = icmp eq ptr %322, null
  br i1 %324, label %325, label %330

325:                                              ; preds = %318
  %326 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %326(ptr noundef %171) #15
  %327 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %327(ptr noundef %169) #15
  %328 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %328(ptr noundef %164) #15
  call void @BM_uv_element_map_free(ptr noundef nonnull %40) #17
  %329 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %329(ptr noundef nonnull %15) #15
  br label %330

330:                                              ; preds = %325, %318
  %331 = load ptr, ptr %52, align 8, !tbaa !166
  br i1 %172, label %332, label %369

332:                                              ; preds = %330
  %333 = ptrtoint ptr %331 to i64
  %334 = zext nneg i32 %33 to i64
  br label %335

335:                                              ; preds = %332, %365
  %336 = phi i64 [ 0, %332 ], [ %367, %365 ]
  %337 = phi i32 [ 0, %332 ], [ %366, %365 ]
  %338 = getelementptr inbounds %struct.UvElement, ptr %331, i64 %336
  %339 = load ptr, ptr %338, align 8, !tbaa !172
  %340 = icmp eq ptr %339, null
  br i1 %340, label %349, label %341

341:                                              ; preds = %335
  %342 = ptrtoint ptr %339 to i64
  %343 = sub i64 %342, %333
  %344 = sdiv exact i64 %343, 24
  %345 = getelementptr inbounds i32, ptr %164, i64 %344
  %346 = load i32, ptr %345, align 4, !tbaa !43
  %347 = zext i32 %346 to i64
  %348 = getelementptr inbounds %struct.UvElement, ptr %171, i64 %347
  br label %349

349:                                              ; preds = %335, %341
  %350 = phi ptr [ %348, %341 ], [ null, %335 ]
  %351 = getelementptr inbounds i32, ptr %164, i64 %336
  %352 = load i32, ptr %351, align 4, !tbaa !43
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds %struct.UvElement, ptr %171, i64 %353
  store ptr %350, ptr %354, align 8, !tbaa !172
  %355 = getelementptr inbounds %struct.UvElement, ptr %171, i64 %336, i32 5
  %356 = load i16, ptr %355, align 4, !tbaa !170
  %357 = zext i16 %356 to i32
  %358 = icmp eq i32 %337, %357
  br i1 %358, label %365, label %359

359:                                              ; preds = %349
  %360 = add nsw i32 %337, 1
  %361 = load ptr, ptr %323, align 8, !tbaa !185
  %362 = sext i32 %360 to i64
  %363 = getelementptr inbounds i32, ptr %361, i64 %362
  %364 = trunc i64 %336 to i32
  store i32 %364, ptr %363, align 4, !tbaa !43
  br label %365

365:                                              ; preds = %359, %349
  %366 = phi i32 [ %360, %359 ], [ %337, %349 ]
  %367 = add nuw nsw i64 %336, 1
  %368 = icmp eq i64 %367, %334
  br i1 %368, label %369, label %335, !llvm.loop !186

369:                                              ; preds = %365, %330
  %370 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %370(ptr noundef %331) #15
  store ptr %171, ptr %52, align 8, !tbaa !166
  %371 = getelementptr inbounds %struct.UvElementMap, ptr %40, i64 0, i32 3
  store i32 %176, ptr %371, align 4, !tbaa !187
  %372 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %372(ptr noundef %169) #15
  %373 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %373(ptr noundef %164) #15
  br label %374

374:                                              ; preds = %159, %369, %38, %36, %17, %57
  %375 = phi ptr [ null, %57 ], [ null, %17 ], [ null, %36 ], [ null, %38 ], [ %40, %369 ], [ %40, %159 ]
  %376 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %376(ptr noundef nonnull %15) #15
  br label %377

377:                                              ; preds = %374, %3
  %378 = phi ptr [ null, %3 ], [ %375, %374 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #16
  ret ptr %378
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_uv_element_map_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !165
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %7(ptr noundef nonnull %4) #15
  br label %8

8:                                                ; preds = %6, %3
  %9 = getelementptr inbounds %struct.UvElementMap, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !166
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %13(ptr noundef nonnull %10) #15
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.UvElementMap, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !185
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %19(ptr noundef nonnull %16) #15
  br label %20

20:                                               ; preds = %18, %14
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %21(ptr noundef nonnull %0) #15
  br label %22

22:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_uv_vert_map_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !141
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %7(ptr noundef nonnull %4) #15
  br label %8

8:                                                ; preds = %6, %3
  %9 = getelementptr inbounds %struct.UvVertMap, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !143
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %13(ptr noundef nonnull %10) #15
  br label %14

14:                                               ; preds = %12, %8
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %15(ptr noundef nonnull %0) #15
  br label %16

16:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_uv_element_get(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2) local_unnamed_addr #10 {
  %4 = load ptr, ptr %0, align 8, !tbaa !165
  %5 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !148
  %7 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %6) #17
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %4, i64 %8
  br label %10

10:                                               ; preds = %14, %3
  %11 = phi ptr [ %9, %3 ], [ %12, %14 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.UvElement, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !167
  %17 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !178
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %10, !llvm.loop !188

20:                                               ; preds = %10, %14
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @EDBM_mtexpoly_active_get(ptr noundef %0, ptr noundef writeonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = tail call zeroext i8 @EDBM_mtexpoly_check(ptr noundef %0) #17, !range !74
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  %9 = tail call ptr @BM_mesh_active_face_get(ptr noundef %8, i8 noundef zeroext %2, i8 noundef zeroext %3) #15
  %10 = icmp eq ptr %9, null
  %11 = icmp eq ptr %1, null
  br i1 %10, label %19, label %12

12:                                               ; preds = %7
  br i1 %11, label %14, label %13

13:                                               ; preds = %12
  store ptr %9, ptr %1, align 8, !tbaa !45
  br label %14

14:                                               ; preds = %13, %12
  %15 = load ptr, ptr %0, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.BMesh, ptr %15, i64 0, i32 27
  %17 = load ptr, ptr %9, align 8, !tbaa !189
  %18 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %16, ptr noundef %17, i32 noundef 15) #15
  br label %21

19:                                               ; preds = %7
  br i1 %11, label %21, label %20

20:                                               ; preds = %19
  store ptr null, ptr %1, align 8, !tbaa !45
  br label %21

21:                                               ; preds = %19, %20, %4, %14
  %22 = phi ptr [ %18, %14 ], [ null, %4 ], [ null, %20 ], [ null, %19 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @EDBM_mtexpoly_check(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !161
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 27
  %10 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %9, i32 noundef 15) #15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 26
  %15 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %14, i32 noundef 16) #15
  %16 = icmp ne i8 %15, 0
  %17 = zext i1 %16 to i8
  br label %18

18:                                               ; preds = %12, %8, %3, %1
  %19 = phi i8 [ 0, %8 ], [ 0, %3 ], [ 0, %1 ], [ %17, %12 ]
  ret i8 %19
}

; Function Attrs: optsize
declare ptr @BM_mesh_active_face_get(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @EDBM_vert_color_check(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !161
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 26
  %10 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %9, i32 noundef 17) #15
  %11 = icmp ne i8 %10, 0
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %3, %1
  %14 = phi i8 [ 0, %3 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_verts_mirror_cache_begin_ex(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, float noundef %5, ptr noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca %struct.MirrTopoStore_t, align 8
  %10 = alloca [3 x float], align 4
  %11 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = load ptr, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) @__const.EDBM_verts_mirror_cache_begin_ex.mesh_topo_store, i64 24, i1 false)
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %15, i8 noundef zeroext 1) #15
  %16 = icmp eq ptr %6, null
  br i1 %16, label %17, label %36

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.BMesh, ptr %15, i64 0, i32 24
  %19 = tail call i32 @CustomData_get_named_layer_index(ptr noundef nonnull %18, i32 noundef 11, ptr noundef nonnull @.str.15) #15
  %20 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 15
  store i32 %19, ptr %20, align 8, !tbaa !190
  %21 = icmp eq i32 %19, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  tail call void @BM_data_layer_add_named(ptr noundef %15, ptr noundef nonnull %18, i32 noundef 11, ptr noundef nonnull @.str.15) #15
  %23 = tail call i32 @CustomData_get_named_layer_index(ptr noundef nonnull %18, i32 noundef 11, ptr noundef nonnull @.str.15) #15
  store i32 %23, ptr %20, align 8, !tbaa !190
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi i32 [ %23, %22 ], [ %19, %17 ]
  %26 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %18, i32 noundef 11) #15
  %27 = sub nsw i32 %25, %26
  %28 = tail call i32 @CustomData_get_n_offset(ptr noundef nonnull %18, i32 noundef 11, i32 noundef %27) #15
  %29 = load ptr, ptr %18, align 8, !tbaa !191
  %30 = load i32, ptr %20, align 8, !tbaa !190
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.CustomDataLayer, ptr %29, i64 %31, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !192
  %34 = or i32 %33, 5
  store i32 %34, ptr %32, align 8, !tbaa !192
  %35 = sext i32 %28 to i64
  br label %36

36:                                               ; preds = %24, %7
  %37 = phi i64 [ %35, %24 ], [ 0, %7 ]
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %15, i8 noundef zeroext 1) #15
  %38 = icmp eq i8 %4, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  call void @ED_mesh_mirrtopo_init(ptr noundef %14, i32 noundef -1, ptr noundef nonnull %9, i8 noundef zeroext 1) #15
  br label %42

40:                                               ; preds = %36
  %41 = tail call ptr @BKE_bmbvh_new_from_editmesh(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0) #15
  br label %42

42:                                               ; preds = %40, %39
  %43 = phi ptr [ null, %39 ], [ %41, %40 ]
  %44 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef %15, i8 noundef zeroext 1, ptr noundef null) #17
  %45 = icmp eq ptr %44, null
  br i1 %45, label %96, label %46

46:                                               ; preds = %42
  %47 = icmp eq i8 %3, 0
  %48 = sext i32 %1 to i64
  %49 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 %48
  %50 = icmp eq i8 %2, 0
  br label %51

51:                                               ; preds = %46, %92
  %52 = phi i64 [ 0, %46 ], [ %94, %92 ]
  %53 = phi ptr [ %44, %46 ], [ %93, %92 ]
  br i1 %47, label %57, label %54

54:                                               ; preds = %51
  %55 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %53, i8 noundef zeroext 1) #17, !range !69
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %92, label %57

57:                                               ; preds = %54, %51
  br i1 %16, label %60, label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds i32, ptr %6, i64 %52
  br label %63

60:                                               ; preds = %57
  %61 = load ptr, ptr %53, align 8, !tbaa !194
  %62 = getelementptr inbounds i8, ptr %61, i64 %37
  br label %63

63:                                               ; preds = %60, %58
  %64 = phi ptr [ %59, %58 ], [ %62, %60 ]
  br i1 %38, label %69, label %65

65:                                               ; preds = %63
  %66 = load ptr, ptr %9, align 8, !tbaa !196
  %67 = trunc i64 %52 to i32
  %68 = call fastcc ptr @cache_mirr_intptr_as_bmvert(ptr noundef %66, i32 noundef %67) #17
  br label %74

69:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #16
  %70 = getelementptr inbounds %struct.BMVert, ptr %53, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %70) #17
  %71 = load float, ptr %49, align 4, !tbaa !154
  %72 = fneg float %71
  store float %72, ptr %49, align 4, !tbaa !154
  %73 = call ptr @BKE_bmbvh_find_vert_closest(ptr noundef %43, ptr noundef nonnull %10, float noundef %5) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #16
  br label %74

74:                                               ; preds = %69, %65
  %75 = phi ptr [ %68, %65 ], [ %73, %69 ]
  %76 = icmp eq ptr %75, null
  %77 = icmp eq ptr %75, %53
  %78 = and i1 %50, %77
  %79 = or i1 %76, %78
  br i1 %79, label %91, label %80

80:                                               ; preds = %74
  %81 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %75) #17
  store i32 %81, ptr %64, align 4, !tbaa !43
  br i1 %16, label %85, label %82

82:                                               ; preds = %80
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, ptr %6, i64 %83
  br label %88

85:                                               ; preds = %80
  %86 = load ptr, ptr %75, align 8, !tbaa !194
  %87 = getelementptr inbounds i8, ptr %86, i64 %37
  br label %88

88:                                               ; preds = %85, %82
  %89 = phi ptr [ %84, %82 ], [ %87, %85 ]
  %90 = trunc i64 %52 to i32
  store i32 %90, ptr %89, align 4, !tbaa !43
  br label %92

91:                                               ; preds = %74
  store i32 -1, ptr %64, align 4, !tbaa !43
  br label %92

92:                                               ; preds = %88, %91, %54
  %93 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #17
  %94 = add nuw i64 %52, 1
  %95 = icmp eq ptr %93, null
  br i1 %95, label %96, label %51, !llvm.loop !198

96:                                               ; preds = %92, %42
  br i1 %38, label %98, label %97

97:                                               ; preds = %96
  call void @ED_mesh_mirrtopo_free(ptr noundef nonnull %9) #15
  br label %99

98:                                               ; preds = %96
  call void @BKE_bmbvh_free(ptr noundef %43) #15
  br label %99

99:                                               ; preds = %98, %97
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #16
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CustomData_get_named_layer_index(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BM_data_layer_add_named(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CustomData_get_n_offset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CustomData_get_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_mesh_mirrtopo_init(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_bmbvh_new_from_editmesh(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @cache_mirr_intptr_as_bmvert(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !199 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i64, ptr %0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !90
  %6 = icmp eq i64 %5, -1
  %7 = inttoptr i64 %5 to ptr
  %8 = select i1 %6, ptr null, ptr %7
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !200 {
  %3 = load float, ptr %1, align 4, !tbaa !154
  store float %3, ptr %0, align 4, !tbaa !154
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !154
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !154
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !154
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !154
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_bmbvh_find_vert_closest(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_mesh_mirrtopo_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_bmbvh_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_verts_mirror_cache_begin(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  tail call void @EDBM_verts_mirror_cache_begin_ex(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, float noundef 0x3EF4F8B580000000, ptr noundef null) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @EDBM_verts_mirror_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 24
  %5 = load ptr, ptr %1, align 8, !tbaa !194
  %6 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 15
  %7 = load i32, ptr %6, align 8, !tbaa !190
  %8 = tail call ptr @CustomData_bmesh_get_layer_n(ptr noundef nonnull %4, ptr noundef %5, i32 noundef %7) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  %11 = load i32, ptr %8, align 4, !tbaa !43
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  %15 = load i32, ptr %14, align 8, !tbaa !137
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.BMesh, ptr %14, i64 0, i32 13
  %19 = load ptr, ptr %18, align 8, !tbaa !201
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16) #17
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

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get_layer_n(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @EDBM_verts_mirror_get_edge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !202
  %5 = tail call ptr @EDBM_verts_mirror_get(ptr noundef %0, ptr noundef %4) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !205
  %10 = tail call ptr @EDBM_verts_mirror_get(ptr noundef %0, ptr noundef %9) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call ptr @BM_edge_exists(ptr noundef nonnull %5, ptr noundef nonnull %10) #15
  br label %14

14:                                               ; preds = %7, %2, %12
  %15 = phi ptr [ %13, %12 ], [ null, %2 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @EDBM_verts_mirror_get_face(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store ptr null, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !138
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 3
  %8 = alloca i8, i64 %7, align 16
  %9 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !206
  br label %11

11:                                               ; preds = %20, %2
  %12 = phi ptr [ %10, %2 ], [ %23, %20 ]
  %13 = phi i32 [ 0, %2 ], [ %21, %20 ]
  %14 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !148
  %16 = tail call ptr @EDBM_verts_mirror_get(ptr noundef %0, ptr noundef %15) #17
  %17 = zext i32 %13 to i64
  %18 = getelementptr inbounds ptr, ptr %8, i64 %17
  store ptr %16, ptr %18, align 8, !tbaa !45
  %19 = icmp eq ptr %16, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %11
  %21 = add i32 %13, 1
  %22 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !207
  %24 = icmp eq ptr %23, %10
  br i1 %24, label %25, label %11, !llvm.loop !208

25:                                               ; preds = %20
  %26 = load i32, ptr %4, align 8, !tbaa !138
  %27 = call zeroext i8 @BM_face_exists(ptr noundef nonnull %8, i32 noundef %26, ptr noundef nonnull %3) #15
  %28 = load ptr, ptr %3, align 8, !tbaa !45
  br label %29

29:                                               ; preds = %11, %25
  %30 = phi ptr [ %28, %25 ], [ null, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %30
}

; Function Attrs: optsize
declare zeroext i8 @BM_face_exists(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_verts_mirror_cache_clear(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 24
  %5 = load ptr, ptr %1, align 8, !tbaa !194
  %6 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 15
  %7 = load i32, ptr %6, align 8, !tbaa !190
  %8 = tail call ptr @CustomData_bmesh_get_layer_n(ptr noundef nonnull %4, ptr noundef %5, i32 noundef %7) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 -1, ptr %8, align 4, !tbaa !43
  br label %11

11:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @EDBM_verts_mirror_cache_end(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 15
  store i32 -1, ptr %2, align 8, !tbaa !190
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_verts_mirror_apply(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #16
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %5, i8 noundef zeroext 1, ptr noundef null) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %3, %25
  %9 = phi ptr [ %26, %25 ], [ %6, %3 ]
  %10 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %9, i8 noundef zeroext 1) #17, !range !69
  %11 = zext nneg i8 %10 to i32
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = call ptr @EDBM_verts_mirror_get(ptr noundef nonnull %0, ptr noundef nonnull %9) #17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %14, i8 noundef zeroext 1) #17, !range !69
  %18 = zext nneg i8 %17 to i32
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2
  %22 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %21, ptr noundef nonnull %22) #17
  %23 = load float, ptr %21, align 8, !tbaa !154
  %24 = fneg float %23
  store float %24, ptr %21, align 8, !tbaa !154
  br label %25

25:                                               ; preds = %13, %20, %16, %8
  %26 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %8, !llvm.loop !209

28:                                               ; preds = %25, %3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_mesh_hide(ptr noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #16
  %4 = icmp ne i8 %1, 0
  %5 = icmp eq ptr %0, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %8 = load i16, ptr %7, align 4, !tbaa !91
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  %12 = and i32 %9, 2
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i8 3, i8 2
  %15 = select i1 %11, i8 %14, i8 1
  %16 = load ptr, ptr %0, align 8, !tbaa !34
  %17 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %16, i8 noundef zeroext %15, ptr noundef null) #17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %6
  %20 = zext i1 %4 to i8
  br label %21

21:                                               ; preds = %19, %27
  %22 = phi ptr [ %17, %19 ], [ %28, %27 ]
  %23 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %22, i8 noundef zeroext 1) #17, !range !69
  %24 = icmp eq i8 %23, %20
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %0, align 8, !tbaa !34
  call void @_bm_elem_hide_set(ptr noundef %26, ptr noundef nonnull %22, i8 noundef zeroext 1) #15
  br label %27

27:                                               ; preds = %21, %25
  %28 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #17
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %21, !llvm.loop !210

30:                                               ; preds = %27, %6
  call void @EDBM_selectmode_flush(ptr noundef nonnull %0) #17
  br label %31

31:                                               ; preds = %2, %30
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #16
  ret void
}

; Function Attrs: optsize
declare void @_bm_elem_hide_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_mesh_reveal(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #16
  %5 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %6 = load i16, ptr %5, align 4, !tbaa !91
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
  br label %15

15:                                               ; preds = %1, %28
  %16 = phi i64 [ 0, %1 ], [ %29, %28 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #16
  %17 = load ptr, ptr %0, align 8, !tbaa !34
  %18 = getelementptr inbounds [3 x i8], ptr @__const.EDBM_mesh_reveal.iter_types, i64 0, i64 %16
  %19 = load i8, ptr %18, align 1, !tbaa !44
  %20 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %17, i8 noundef zeroext %19, ptr noundef null) #17
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %15, %22
  %23 = phi ptr [ %26, %22 ], [ %20, %15 ]
  %24 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %23, i8 noundef zeroext 2) #17, !range !69
  %25 = zext nneg i8 %24 to i32
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %23, i32 noundef %25) #17
  %26 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %22, !llvm.loop !211

28:                                               ; preds = %22, %15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #16
  %29 = add nuw nsw i64 %16, 1
  %30 = icmp eq i64 %29, 3
  br i1 %30, label %31, label %15, !llvm.loop !212

31:                                               ; preds = %28
  call void @EDBM_flag_disable_all(ptr noundef nonnull %0, i8 noundef zeroext 2) #17
  br label %32

32:                                               ; preds = %31, %52
  %33 = phi i64 [ 0, %31 ], [ %53, %52 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #16
  %34 = getelementptr inbounds [3 x i8], ptr %2, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !44
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %0, align 8, !tbaa !34
  %39 = getelementptr inbounds [3 x i8], ptr @__const.EDBM_mesh_reveal.iter_types, i64 0, i64 %33
  %40 = load i8, ptr %39, align 1, !tbaa !44
  %41 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %38, i8 noundef zeroext %40, ptr noundef null) #17
  %42 = icmp eq ptr %41, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %37, %49
  %44 = phi ptr [ %50, %49 ], [ %41, %37 ]
  %45 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %44, i8 noundef zeroext 16) #17, !range !69
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %0, align 8, !tbaa !34
  call void @BM_elem_select_set(ptr noundef %48, ptr noundef nonnull %44, i8 noundef zeroext 1) #15
  br label %49

49:                                               ; preds = %43, %47
  %50 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #17
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %43, !llvm.loop !213

52:                                               ; preds = %49, %37, %32
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #16
  %53 = add nuw nsw i64 %33, 1
  %54 = icmp eq i64 %53, 3
  br i1 %54, label %55, label %32, !llvm.loop !214

55:                                               ; preds = %52
  call void @EDBM_selectmode_flush(ptr noundef nonnull %0) #17
  call void @EDBM_mesh_normals_update(ptr noundef nonnull %0) #17
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_set(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 !PGOFuncName !215 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %0) #17
  br label %6

5:                                                ; preds = %2
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %0) #17
  br label %6

6:                                                ; preds = %5, %4
  ret void
}

; Function Attrs: optsize
declare void @BM_elem_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_update_generic(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  tail call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 2) #15
  %8 = load ptr, ptr %6, align 8, !tbaa !50
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %8) #15
  %9 = icmp eq i8 %1, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @BKE_editmesh_tessface_calc(ptr noundef nonnull %0) #15
  br label %11

11:                                               ; preds = %3, %10
  tail call void @BKE_editmesh_free_derivedmesh(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @EDBM_view3d_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @ED_operator_editmesh(ptr noundef %0) #15
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @ED_operator_view3d_active(ptr noundef %0) #15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %1
  br label %8

8:                                                ; preds = %4, %7
  %9 = phi i32 [ 0, %7 ], [ 1, %4 ]
  ret i32 %9
}

; Function Attrs: optsize
declare i32 @ED_operator_editmesh(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_operator_view3d_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
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
  %15 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #16
  %16 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 5
  %17 = load <2 x i16>, ptr %16, align 8, !tbaa !46
  %18 = sitofp <2 x i16> %17 to <2 x float>
  %19 = fmul <2 x float> %18, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %19, ptr %15, align 8, !tbaa !154
  %20 = call zeroext i8 @ED_view3d_win_to_segment(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %15, ptr noundef nonnull %12, ptr noundef nonnull %14, i8 noundef zeroext 0) #15
  %21 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 47
  %22 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %13, ptr noundef nonnull %21) #15
  call void @mul_m4_v3(ptr noundef nonnull %13, ptr noundef nonnull %12) #15
  %23 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !202
  %25 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %25) #17
  %26 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !205
  %28 = getelementptr inbounds %struct.BMVert, ptr %27, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %25, ptr noundef nonnull %28) #15
  %29 = load ptr, ptr %26, align 8, !tbaa !205
  %30 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %30) #17
  call fastcc void @scale_point(ptr noundef nonnull %6, ptr noundef nonnull %7) #17
  call fastcc void @scale_point(ptr noundef nonnull %8, ptr noundef nonnull %7) #17
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %12, ptr noundef nonnull %6) #17
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %7) #17
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %8) #17
  call fastcc void @normalize_v3(ptr noundef nonnull %9) #17
  call fastcc void @normalize_v3(ptr noundef nonnull %10) #17
  call fastcc void @normalize_v3(ptr noundef nonnull %11) #17
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef 0x3F847AE140000000) #17
  call fastcc void @mul_v3_fl(ptr noundef nonnull %10, float noundef 0x3F847AE140000000) #17
  call fastcc void @mul_v3_fl(ptr noundef nonnull %11, float noundef 0x3F847AE140000000) #17
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %9) #17
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %10) #17
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %11) #17
  call fastcc void @normalize_v3(ptr noundef nonnull %9) #17
  call fastcc void @normalize_v3(ptr noundef nonnull %10) #17
  call fastcc void @normalize_v3(ptr noundef nonnull %11) #17
  %31 = call fastcc ptr @edge_ray_cast(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef %1) #17
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %5
  %34 = call fastcc ptr @edge_ray_cast(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %10, ptr noundef nonnull %1) #17
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = call fastcc ptr @edge_ray_cast(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull %1) #17
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %5, %36
  %40 = zext i1 %32 to i8
  br label %41

41:                                               ; preds = %39, %36, %33
  %42 = phi i8 [ 1, %33 ], [ 1, %36 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  ret i8 %42
}

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_win_to_segment(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @scale_point(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !216 {
  tail call fastcc void @sub_v3_v3(ptr noundef %0, ptr noundef %1) #17
  tail call fastcc void @mul_v3_fl(ptr noundef %0, float noundef 0x3FEFAE1480000000) #17
  tail call fastcc void @add_v3_v3(ptr noundef %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #8 !PGOFuncName !217 {
  %4 = load float, ptr %1, align 4, !tbaa !154
  %5 = load float, ptr %2, align 4, !tbaa !154
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !154
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !154
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !154
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !154
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !154
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !154
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #12 !PGOFuncName !218 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #8 !PGOFuncName !219 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !154
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !154
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !154
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #8 !PGOFuncName !220 {
  %4 = load float, ptr %1, align 4, !tbaa !154
  %5 = load float, ptr %2, align 4, !tbaa !154
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !154
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !154
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !154
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !154
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !154
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !154
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !154
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @edge_ray_cast(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !221 {
  %5 = tail call ptr @BKE_bmbvh_ray_cast(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef 0.000000e+00, ptr noundef null, ptr noundef null, ptr noundef null) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call zeroext i8 @BM_edge_in_face(ptr noundef %3, ptr noundef nonnull %5) #15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %4
  br label %11

11:                                               ; preds = %7, %10
  %12 = phi ptr [ %5, %10 ], [ null, %7 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !222 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !223
  switch i8 %2, label %54 [
    i8 1, label %6
    i8 2, label %11
    i8 3, label %16
    i8 4, label %21
    i8 5, label %24
    i8 6, label %27
    i8 7, label %30
    i8 8, label %33
    i8 9, label %36
    i8 10, label %39
    i8 11, label %42
    i8 13, label %45
    i8 14, label %48
  ]

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %7, align 8, !tbaa !224
  %8 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %8, align 8, !tbaa !79
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !225
  br label %51

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %12, align 8, !tbaa !224
  %13 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %13, align 8, !tbaa !79
  %14 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !226
  br label %51

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %17, align 8, !tbaa !224
  %18 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %18, align 8, !tbaa !79
  %19 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !227
  br label %51

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %22, align 8, !tbaa !224
  %23 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %23, align 8, !tbaa !79
  br label %51

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__face_of_vert_begin, ptr %25, align 8, !tbaa !224
  %26 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__face_of_vert_step, ptr %26, align 8, !tbaa !79
  br label %51

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_vert_begin, ptr %28, align 8, !tbaa !224
  %29 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_vert_step, ptr %29, align 8, !tbaa !79
  br label %51

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__vert_of_edge_begin, ptr %31, align 8, !tbaa !224
  %32 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__vert_of_edge_step, ptr %32, align 8, !tbaa !79
  br label %51

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__face_of_edge_begin, ptr %34, align 8, !tbaa !224
  %35 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__face_of_edge_step, ptr %35, align 8, !tbaa !79
  br label %51

36:                                               ; preds = %4
  %37 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__vert_of_face_begin, ptr %37, align 8, !tbaa !224
  %38 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__vert_of_face_step, ptr %38, align 8, !tbaa !79
  br label %51

39:                                               ; preds = %4
  %40 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__edge_of_face_begin, ptr %40, align 8, !tbaa !224
  %41 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__edge_of_face_step, ptr %41, align 8, !tbaa !79
  br label %51

42:                                               ; preds = %4
  %43 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %43, align 8, !tbaa !224
  %44 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %44, align 8, !tbaa !79
  br label %51

45:                                               ; preds = %4
  %46 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_loop_begin, ptr %46, align 8, !tbaa !224
  %47 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_loop_step, ptr %47, align 8, !tbaa !79
  br label %51

48:                                               ; preds = %4
  %49 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_edge_begin, ptr %49, align 8, !tbaa !224
  %50 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_edge_step, ptr %50, align 8, !tbaa !79
  br label %51

51:                                               ; preds = %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %16, %11, %6
  %52 = phi ptr [ %3, %48 ], [ %3, %45 ], [ %3, %42 ], [ %3, %39 ], [ %3, %36 ], [ %3, %33 ], [ %3, %30 ], [ %3, %27 ], [ %3, %24 ], [ %3, %21 ], [ %20, %16 ], [ %15, %11 ], [ %10, %6 ]
  %53 = phi ptr [ @bmiter__loop_of_edge_begin, %48 ], [ @bmiter__loop_of_loop_begin, %45 ], [ @bmiter__loop_of_face_begin, %42 ], [ @bmiter__edge_of_face_begin, %39 ], [ @bmiter__vert_of_face_begin, %36 ], [ @bmiter__face_of_edge_begin, %33 ], [ @bmiter__vert_of_edge_begin, %30 ], [ @bmiter__loop_of_vert_begin, %27 ], [ @bmiter__face_of_vert_begin, %24 ], [ @bmiter__edge_of_vert_begin, %21 ], [ @bmiter__elem_of_mesh_begin, %16 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %6 ]
  store ptr %52, ptr %0, align 8, !tbaa !44
  tail call void %53(ptr noundef nonnull %0) #15
  br label %54

54:                                               ; preds = %4, %51
  %55 = phi i8 [ 1, %51 ], [ 0, %4 ]
  ret i8 %55
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__edge_of_face_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__loop_of_face_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__loop_of_face_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__loop_of_loop_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__loop_of_loop_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__loop_of_edge_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__loop_of_edge_step(ptr noundef) #1

; Function Attrs: optsize
declare void @BKE_key_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_mesh_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BM_mesh_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BM_mesh_bm_from_me(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_key_copy_nolib(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !228 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !76
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !229 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !76
  %4 = and i8 %3, -17
  store i8 %4, ptr %2, align 1, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !230 {
  %3 = load float, ptr %1, align 4, !tbaa !154
  %4 = load float, ptr %0, align 4, !tbaa !154
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !154
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !154
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !154
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !154
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !154
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !154
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !231 {
  %3 = load float, ptr %1, align 4, !tbaa !154
  %4 = load float, ptr %0, align 4, !tbaa !154
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !154
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !154
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !154
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !154
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !154
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !154
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !232 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #17
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #15
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #17
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #17
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !233 {
  %3 = load float, ptr %0, align 4, !tbaa !154
  %4 = load float, ptr %1, align 4, !tbaa !154
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !154
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !154
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !154
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !154
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #8 !PGOFuncName !234 {
  %4 = load float, ptr %1, align 4, !tbaa !154
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !154
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !154
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !154
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !154
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #11 !PGOFuncName !235 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !154
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: optsize
declare ptr @BKE_bmbvh_ray_cast(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BM_edge_in_face(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind }
attributes #17 = { optsize }

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
!69 = !{i8 0, i8 17}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.mustprogress"}
!72 = distinct !{!72, !71}
!73 = !{!"editmesh_utils.c:BM_iter_new"}
!74 = !{i8 0, i8 2}
!75 = !{!"editmesh_utils.c:_bm_elem_flag_test"}
!76 = !{!77, !37, i64 13}
!77 = !{!"BMHeader", !36, i64 0, !39, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!78 = !{!"editmesh_utils.c:BM_iter_step"}
!79 = !{!80, !36, i64 48}
!80 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !39, i64 56, !37, i64 60}
!81 = !{!35, !36, i64 40}
!82 = !{!83, !39, i64 1048}
!83 = !{!"DerivedMesh", !66, i64 0, !66, i64 200, !66, i64 400, !66, i64 600, !66, i64 800, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !36, i64 1032, !36, i64 1040, !39, i64 1048, !55, i64 1052, !39, i64 1056, !39, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!84 = !{!83, !39, i64 1024}
!85 = !{!86, !36, i64 120}
!86 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !54, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!87 = !{!35, !36, i64 8}
!88 = !{!35, !39, i64 16}
!89 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 4, !43, i64 24, i64 8, !45, i64 32, i64 4, !43, i64 40, i64 8, !45, i64 48, i64 8, !45, i64 56, i64 8, !90, i64 64, i64 8, !45, i64 72, i64 4, !43, i64 80, i64 8, !45, i64 88, i64 4, !43, i64 92, i64 2, !46, i64 94, i64 2, !46, i64 96, i64 8, !45, i64 104, i64 4, !43}
!90 = !{!40, !40, i64 0}
!91 = !{!35, !41, i64 92}
!92 = !{!93, !36, i64 264}
!93 = !{!"Scene", !52, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !54, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !94, i64 280, !103, i64 4264, !54, i64 4296, !54, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !39, i64 4380, !54, i64 4384, !104, i64 4400, !105, i64 4416, !108, i64 4600, !36, i64 4608, !109, i64 4616, !36, i64 4640, !40, i64 4648, !40, i64 4656, !96, i64 4664, !97, i64 4824, !110, i64 4888, !36, i64 4952}
!94 = !{!"RenderData", !95, i64 0, !36, i64 248, !36, i64 256, !98, i64 264, !99, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !55, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !41, i64 432, !41, i64 434, !55, i64 436, !55, i64 440, !55, i64 444, !55, i64 448, !55, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !39, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !39, i64 484, !39, i64 488, !41, i64 492, !41, i64 494, !39, i64 496, !39, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !100, i64 544, !100, i64 560, !101, i64 576, !54, i64 592, !41, i64 608, !41, i64 610, !55, i64 612, !55, i64 616, !55, i64 620, !55, i64 624, !39, i64 628, !55, i64 632, !55, i64 636, !55, i64 640, !55, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !55, i64 660, !55, i64 664, !41, i64 668, !41, i64 670, !55, i64 672, !55, i64 676, !37, i64 680, !39, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !41, i64 2524, !41, i64 2526, !55, i64 2528, !55, i64 2532, !41, i64 2536, !41, i64 2538, !55, i64 2540, !41, i64 2544, !41, i64 2546, !39, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !55, i64 2560, !55, i64 2564, !36, i64 2568, !39, i64 2576, !55, i64 2580, !37, i64 2584, !102, i64 2616, !39, i64 3976, !39, i64 3980}
!95 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !55, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !96, i64 24, !97, i64 184}
!96 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !55, i64 136, !55, i64 140, !36, i64 144, !36, i64 152}
!97 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!98 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !41, i64 48, !41, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!99 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !55, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!100 = !{!"rctf", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12}
!101 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!102 = !{!"BakeData", !95, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !55, i64 1280, !55, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!103 = !{!"AudioData", !39, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !39, i64 16, !41, i64 20, !41, i64 22, !55, i64 24, !55, i64 28}
!104 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!105 = !{!"GameData", !104, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !106, i64 40, !41, i64 64, !41, i64 66, !55, i64 68, !107, i64 72, !55, i64 128, !55, i64 132, !39, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !55, i64 164, !55, i64 168, !55, i64 172, !55, i64 176, !55, i64 180}
!106 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !55, i64 8, !55, i64 12, !36, i64 16}
!107 = !{!"RecastData", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !55, i64 24, !55, i64 28, !55, i64 32, !55, i64 36, !39, i64 40, !55, i64 44, !55, i64 48, !41, i64 52, !41, i64 54}
!108 = !{!"UnitSettings", !55, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!109 = !{!"PhysicsSettings", !37, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!110 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!111 = !{!112, !41, i64 46}
!112 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !55, i64 32, !55, i64 36, !55, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !55, i64 52, !41, i64 56, !37, i64 58, !37, i64 59, !113, i64 64, !115, i64 168, !55, i64 336, !55, i64 340, !41, i64 344, !41, i64 346, !37, i64 348, !37, i64 349, !41, i64 350, !55, i64 352, !55, i64 356, !55, i64 360, !55, i64 364, !55, i64 368, !55, i64 372, !55, i64 376, !55, i64 380, !55, i64 384, !55, i64 388, !41, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !41, i64 434, !41, i64 436, !41, i64 438, !41, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !39, i64 448, !39, i64 452, !39, i64 456, !39, i64 460, !41, i64 464, !41, i64 466, !39, i64 468, !55, i64 472, !55, i64 476, !116, i64 480, !117, i64 608}
!113 = !{!"ImagePaintSettings", !114, i64 0, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !37, i64 48, !39, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !55, i64 100}
!114 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36}
!115 = !{!"ParticleEditSettings", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !37, i64 8, !36, i64 120, !55, i64 128, !55, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !36, i64 152, !36, i64 160}
!116 = !{!"UnifiedPaintSettings", !39, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !37, i64 16, !37, i64 28, !39, i64 40, !37, i64 44, !55, i64 52, !39, i64 56, !39, i64 60, !37, i64 64, !37, i64 65, !55, i64 72, !37, i64 76, !39, i64 84, !55, i64 88, !37, i64 92, !37, i64 100, !39, i64 108, !36, i64 112, !55, i64 120, !39, i64 124}
!117 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !37, i64 20, !37, i64 21, !55, i64 24, !55, i64 28, !55, i64 32, !55, i64 36}
!118 = !{!119, !36, i64 168}
!119 = !{!"Mesh", !52, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !66, i64 280, !66, i64 480, !66, i64 680, !66, i64 880, !66, i64 1080, !39, i64 1280, !39, i64 1284, !39, i64 1288, !39, i64 1292, !39, i64 1296, !39, i64 1300, !39, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !39, i64 1344, !41, i64 1348, !41, i64 1350, !55, i64 1352, !39, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !41, i64 1366, !36, i64 1368}
!120 = !{!119, !39, i64 1288}
!121 = !{!119, !36, i64 272}
!122 = !{!65, !41, i64 944}
!123 = !{!51, !39, i64 460}
!124 = !{!35, !41, i64 94}
!125 = !{!"editmesh_utils.c:getEditMesh"}
!126 = !{!51, !41, i64 136}
!127 = !{!"editmesh_utils.c:free_undo"}
!128 = !{!119, !36, i64 144}
!129 = !{!"editmesh_utils.c:undoMesh_to_editbtMesh"}
!130 = !{!131, !39, i64 1380}
!131 = !{!"UndoMesh", !119, i64 0, !39, i64 1376, !39, i64 1380}
!132 = !{!65, !39, i64 948}
!133 = !{!51, !41, i64 1266}
!134 = !{!131, !39, i64 1376}
!135 = !{!"editmesh_utils.c:editbtMesh_to_undoMesh"}
!136 = !{!131, !36, i64 144}
!137 = !{!65, !39, i64 0}
!138 = !{!139, !39, i64 32}
!139 = !{!"BMFace", !77, i64 0, !36, i64 16, !36, i64 24, !39, i64 32, !37, i64 36, !41, i64 48}
!140 = distinct !{!140, !71}
!141 = !{!142, !36, i64 0}
!142 = !{!"UvVertMap", !36, i64 0, !36, i64 8}
!143 = !{!142, !36, i64 8}
!144 = !{!145, !37, i64 12}
!145 = !{!"UvMapVert", !36, i64 0, !39, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!146 = !{!145, !39, i64 8}
!147 = !{!145, !37, i64 13}
!148 = !{!149, !36, i64 16}
!149 = !{!"BMLoop", !77, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!150 = !{!145, !36, i64 0}
!151 = distinct !{!151, !71}
!152 = distinct !{!152, !71}
!153 = !{!149, !36, i64 0}
!154 = !{!55, !55, i64 0}
!155 = distinct !{!155, !71}
!156 = distinct !{!156, !71}
!157 = distinct !{!157, !71}
!158 = !{!"editmesh_utils.c:_bm_elem_index_get"}
!159 = !{!77, !39, i64 8}
!160 = !{!"editmesh_utils.c:sub_v2_v2v2"}
!161 = !{!65, !39, i64 12}
!162 = distinct !{!162, !71}
!163 = !{!164, !39, i64 16}
!164 = !{!"UvElementMap", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !36, i64 24}
!165 = !{!164, !36, i64 0}
!166 = !{!164, !36, i64 8}
!167 = !{!168, !36, i64 8}
!168 = !{!"UvElement", !36, i64 0, !36, i64 8, !41, i64 16, !37, i64 18, !37, i64 19, !41, i64 20}
!169 = !{!168, !37, i64 18}
!170 = !{!168, !41, i64 20}
!171 = !{!168, !41, i64 16}
!172 = !{!168, !36, i64 0}
!173 = distinct !{!173, !71}
!174 = distinct !{!174, !71}
!175 = distinct !{!175, !71}
!176 = distinct !{!176, !71}
!177 = distinct !{!177, !71}
!178 = !{!149, !36, i64 32}
!179 = distinct !{!179, !71}
!180 = distinct !{!180, !71}
!181 = distinct !{!181, !71}
!182 = distinct !{!182, !71}
!183 = distinct !{!183, !71}
!184 = distinct !{!184, !71}
!185 = !{!164, !36, i64 24}
!186 = distinct !{!186, !71}
!187 = !{!164, !39, i64 20}
!188 = distinct !{!188, !71}
!189 = !{!139, !36, i64 0}
!190 = !{!35, !39, i64 104}
!191 = !{!65, !36, i64 144}
!192 = !{!193, !39, i64 8}
!193 = !{!"CustomDataLayer", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !37, i64 32, !36, i64 96}
!194 = !{!195, !36, i64 0}
!195 = !{!"BMVert", !77, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!196 = !{!197, !36, i64 0}
!197 = !{!"MirrTopoStore_t", !36, i64 0, !39, i64 8, !39, i64 12, !39, i64 16}
!198 = distinct !{!198, !71}
!199 = !{!"editmesh_utils.c:cache_mirr_intptr_as_bmvert"}
!200 = !{!"editmesh_utils.c:copy_v3_v3"}
!201 = !{!65, !36, i64 64}
!202 = !{!203, !36, i64 24}
!203 = !{!"BMEdge", !77, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !204, i64 48, !204, i64 64}
!204 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!205 = !{!203, !36, i64 32}
!206 = !{!139, !36, i64 24}
!207 = !{!149, !36, i64 56}
!208 = distinct !{!208, !71}
!209 = distinct !{!209, !71}
!210 = distinct !{!210, !71}
!211 = distinct !{!211, !71}
!212 = distinct !{!212, !71}
!213 = distinct !{!213, !71}
!214 = distinct !{!214, !71}
!215 = !{!"editmesh_utils.c:_bm_elem_flag_set"}
!216 = !{!"editmesh_utils.c:scale_point"}
!217 = !{!"editmesh_utils.c:sub_v3_v3v3"}
!218 = !{!"editmesh_utils.c:normalize_v3"}
!219 = !{!"editmesh_utils.c:mul_v3_fl"}
!220 = !{!"editmesh_utils.c:add_v3_v3v3"}
!221 = !{!"editmesh_utils.c:edge_ray_cast"}
!222 = !{!"editmesh_utils.c:BM_iter_init"}
!223 = !{!80, !37, i64 60}
!224 = !{!80, !36, i64 40}
!225 = !{!65, !36, i64 32}
!226 = !{!65, !36, i64 40}
!227 = !{!65, !36, i64 56}
!228 = !{!"editmesh_utils.c:_bm_elem_flag_enable"}
!229 = !{!"editmesh_utils.c:_bm_elem_flag_disable"}
!230 = !{!"editmesh_utils.c:sub_v3_v3"}
!231 = !{!"editmesh_utils.c:add_v3_v3"}
!232 = !{!"editmesh_utils.c:normalize_v3_v3"}
!233 = !{!"editmesh_utils.c:dot_v3v3"}
!234 = !{!"editmesh_utils.c:mul_v3_v3fl"}
!235 = !{!"editmesh_utils.c:zero_v3"}
