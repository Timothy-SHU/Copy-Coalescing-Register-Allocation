; ModuleID = 'blender/source/blender/editors/sculpt_paint/sculpt_undo.c'
source_filename = "blender/source/blender/editors/sculpt_paint/sculpt_undo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMAllocTemplate = type { i32, i32, i32, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.SculptSession = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, i8, i8, ptr, ptr, ptr, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i8, [3 x float], [3 x float], i32 }
%struct.SculptUndoNode = type { ptr, ptr, i32, [66 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, [64 x i8] }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
%struct.PBVHVertexIter = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, %struct.GSetIterator, %struct.GSetIterator, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.GSetIterator = type { %struct.GHashIterator }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CCGKey = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.sculpt_undo_bmesh_push = private unnamed_addr constant [23 x i8] c"sculpt_undo_bmesh_push\00", align 1
@CD_MASK_MESH = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [15 x i8] c"SculptUndoNode\00", align 1
@MEM_mapallocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"SculptUndoNode.co\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SculptUndoNode.no\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"SculptUndoNode.vert_hidden\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"SculptUndoNode.mask\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"SculptUndoNode.grids\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"SculptUndoNode.index\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"undoSculpt orig_cos\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"unode->grid_hidden\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@bm_mesh_allocsize_default = external constant %struct.BMAllocTemplate, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sculpt_undo_get_node(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @undo_paint_push_get_list(i32 noundef 1) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @BLI_findptr(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 88) #10
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @undo_paint_push_get_list(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findptr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sculpt_undo_push_node(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  tail call void @BLI_lock_thread(i32 noundef 3) #10
  %10 = getelementptr inbounds %struct.SculptSession, ptr %9, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp ne ptr %11, null
  %13 = add i32 %2, -3
  %14 = icmp ult i32 %13, 2
  %15 = or i1 %14, %12
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = tail call fastcc ptr @sculpt_undo_bmesh_push(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #11
  tail call void @BLI_unlock_thread(i32 noundef 3) #10
  br label %58

18:                                               ; preds = %3
  %19 = tail call ptr @sculpt_undo_get_node(ptr noundef %1) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @BLI_unlock_thread(i32 noundef 3) #10
  br label %58

22:                                               ; preds = %18
  %23 = tail call fastcc ptr @sculpt_undo_alloc_node(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #11
  tail call void @BLI_unlock_thread(i32 noundef 3) #10
  %24 = getelementptr inbounds %struct.SculptUndoNode, ptr %23, i64 0, i32 16
  %25 = load ptr, ptr %24, align 8, !tbaa !19
  %26 = icmp eq ptr %25, null
  %27 = getelementptr inbounds %struct.SculptSession, ptr %9, i64 0, i32 15
  br i1 %26, label %35, label %28

28:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %29 = load ptr, ptr %27, align 8, !tbaa !22
  call void @BKE_pbvh_node_get_grids(ptr noundef %29, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #10
  %30 = load ptr, ptr %24, align 8, !tbaa !19
  %31 = load ptr, ptr %5, align 8, !tbaa !23
  %32 = load i32, ptr %4, align 4, !tbaa !24
  %33 = sext i32 %32 to i64
  %34 = shl nsw i64 %33, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %30, ptr align 4 %31, i64 %34, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %45

35:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  %36 = load ptr, ptr %27, align 8, !tbaa !22
  call void @BKE_pbvh_node_num_verts(ptr noundef %36, ptr noundef %1, ptr noundef null, ptr noundef nonnull %7) #10
  %37 = load ptr, ptr %27, align 8, !tbaa !22
  call void @BKE_pbvh_node_get_verts(ptr noundef %37, ptr noundef %1, ptr noundef nonnull %6, ptr noundef null) #10
  %38 = getelementptr inbounds %struct.SculptUndoNode, ptr %23, i64 0, i32 11
  %39 = load ptr, ptr %38, align 8, !tbaa !25
  %40 = load ptr, ptr %6, align 8, !tbaa !23
  %41 = getelementptr inbounds %struct.SculptUndoNode, ptr %23, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !26
  %43 = sext i32 %42 to i64
  %44 = shl nsw i64 %43, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %39, ptr align 4 %40, i64 %44, i1 false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  br label %45

45:                                               ; preds = %35, %28
  switch i32 %2, label %49 [
    i32 0, label %46
    i32 1, label %47
    i32 2, label %48
  ]

46:                                               ; preds = %45
  call fastcc void @sculpt_undo_store_coords(ptr noundef nonnull %0, ptr noundef nonnull %23) #11
  br label %49

47:                                               ; preds = %45
  call fastcc void @sculpt_undo_store_hidden(ptr noundef nonnull %0, ptr noundef nonnull %23) #11
  br label %49

48:                                               ; preds = %45
  call fastcc void @sculpt_undo_store_mask(ptr noundef nonnull %0, ptr noundef nonnull %23) #11
  br label %49

49:                                               ; preds = %45, %48, %47, %46
  %50 = getelementptr inbounds %struct.SculptSession, ptr %9, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !27
  %52 = icmp eq ptr %51, null
  %53 = getelementptr inbounds %struct.SculptUndoNode, ptr %23, i64 0, i32 28
  br i1 %52, label %57, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.KeyBlock, ptr %51, i64 0, i32 11
  %56 = call ptr @BLI_strncpy(ptr noundef nonnull %53, ptr noundef nonnull %55, i64 noundef 64) #10
  br label %58

57:                                               ; preds = %49
  store i8 0, ptr %53, align 8, !tbaa !28
  br label %58

58:                                               ; preds = %54, %57, %21, %16
  %59 = phi ptr [ %17, %16 ], [ %19, %21 ], [ %23, %57 ], [ %23, %54 ]
  ret ptr %59
}

; Function Attrs: optsize
declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @sculpt_undo_bmesh_push(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.PBVHVertexIter, align 8
  %5 = alloca %struct.GSetIterator, align 8
  %6 = tail call ptr @undo_paint_push_get_list(i32 noundef 1) #10
  %7 = load ptr, ptr %6, align 8, !tbaa !29
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %4) #12
  %10 = icmp eq ptr %7, null
  br i1 %10, label %11, label %65

11:                                               ; preds = %3
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !23
  %13 = tail call ptr %12(i64 noundef 1080, ptr noundef nonnull @__func__.sculpt_undo_bmesh_push) #10
  %14 = getelementptr inbounds %struct.SculptUndoNode, ptr %13, i64 0, i32 3
  %15 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %16 = tail call ptr @BLI_strncpy(ptr noundef nonnull %14, ptr noundef nonnull %15, i64 noundef 66) #10
  %17 = getelementptr inbounds %struct.SculptUndoNode, ptr %13, i64 0, i32 2
  store i32 %2, ptr %17, align 8, !tbaa !30
  %18 = getelementptr inbounds %struct.SculptUndoNode, ptr %13, i64 0, i32 19
  store i8 1, ptr %18, align 8, !tbaa !31
  switch i32 %2, label %59 [
    i32 4, label %19
    i32 3, label %27
  ]

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.SculptSession, ptr %9, i64 0, i32 14
  %21 = load ptr, ptr %20, align 8, !tbaa !32
  %22 = tail call ptr @BM_log_entry_add(ptr noundef %21) #10
  %23 = getelementptr inbounds %struct.SculptUndoNode, ptr %13, i64 0, i32 18
  store ptr %22, ptr %23, align 8, !tbaa !33
  %24 = getelementptr inbounds %struct.SculptSession, ptr %9, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !17
  %26 = load ptr, ptr %20, align 8, !tbaa !32
  tail call void @BM_log_before_all_removed(ptr noundef %25, ptr noundef %26) #10
  br label %64

27:                                               ; preds = %11
  %28 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.Mesh, ptr %29, i64 0, i32 21
  %31 = getelementptr inbounds %struct.SculptUndoNode, ptr %13, i64 0, i32 20
  %32 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !35
  %33 = getelementptr inbounds %struct.Mesh, ptr %29, i64 0, i32 26
  %34 = load i32, ptr %33, align 8, !tbaa !36
  tail call void @CustomData_copy(ptr noundef nonnull %30, ptr noundef nonnull %31, i64 noundef %32, i32 noundef 4, i32 noundef %34) #10
  %35 = getelementptr inbounds %struct.Mesh, ptr %29, i64 0, i32 22
  %36 = getelementptr inbounds %struct.SculptUndoNode, ptr %13, i64 0, i32 21
  %37 = getelementptr inbounds %struct.Mesh, ptr %29, i64 0, i32 27
  %38 = load i32, ptr %37, align 4, !tbaa !38
  tail call void @CustomData_copy(ptr noundef nonnull %35, ptr noundef nonnull %36, i64 noundef %32, i32 noundef 4, i32 noundef %38) #10
  %39 = getelementptr inbounds %struct.Mesh, ptr %29, i64 0, i32 25
  %40 = getelementptr inbounds %struct.SculptUndoNode, ptr %13, i64 0, i32 22
  %41 = getelementptr inbounds %struct.Mesh, ptr %29, i64 0, i32 31
  %42 = load i32, ptr %41, align 4, !tbaa !39
  tail call void @CustomData_copy(ptr noundef nonnull %39, ptr noundef nonnull %40, i64 noundef %32, i32 noundef 4, i32 noundef %42) #10
  %43 = getelementptr inbounds %struct.Mesh, ptr %29, i64 0, i32 24
  %44 = getelementptr inbounds %struct.SculptUndoNode, ptr %13, i64 0, i32 23
  %45 = getelementptr inbounds %struct.Mesh, ptr %29, i64 0, i32 30
  %46 = load i32, ptr %45, align 8, !tbaa !40
  tail call void @CustomData_copy(ptr noundef nonnull %43, ptr noundef nonnull %44, i64 noundef %32, i32 noundef 4, i32 noundef %46) #10
  %47 = getelementptr inbounds %struct.SculptUndoNode, ptr %13, i64 0, i32 24
  %48 = load <2 x i32>, ptr %33, align 8, !tbaa !24
  store <2 x i32> %48, ptr %47, align 8, !tbaa !24
  %49 = getelementptr inbounds %struct.SculptUndoNode, ptr %13, i64 0, i32 26
  %50 = load <2 x i32>, ptr %45, align 8, !tbaa !24
  %51 = shufflevector <2 x i32> %50, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %51, ptr %49, align 8, !tbaa !24
  %52 = getelementptr inbounds %struct.SculptSession, ptr %9, i64 0, i32 14
  %53 = load ptr, ptr %52, align 8, !tbaa !32
  %54 = tail call ptr @BM_log_entry_add(ptr noundef %53) #10
  %55 = getelementptr inbounds %struct.SculptUndoNode, ptr %13, i64 0, i32 18
  store ptr %54, ptr %55, align 8, !tbaa !33
  %56 = getelementptr inbounds %struct.SculptSession, ptr %9, i64 0, i32 10
  %57 = load ptr, ptr %56, align 8, !tbaa !17
  %58 = load ptr, ptr %52, align 8, !tbaa !32
  tail call void @BM_log_all_added(ptr noundef %57, ptr noundef %58) #10
  br label %64

59:                                               ; preds = %11
  %60 = getelementptr inbounds %struct.SculptSession, ptr %9, i64 0, i32 14
  %61 = load ptr, ptr %60, align 8, !tbaa !32
  %62 = tail call ptr @BM_log_entry_add(ptr noundef %61) #10
  %63 = getelementptr inbounds %struct.SculptUndoNode, ptr %13, i64 0, i32 18
  store ptr %62, ptr %63, align 8, !tbaa !33
  br label %64

64:                                               ; preds = %27, %59, %19
  tail call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef nonnull %13) #10
  br label %65

65:                                               ; preds = %64, %3
  %66 = phi ptr [ %7, %3 ], [ %13, %64 ]
  %67 = icmp eq ptr %1, null
  br i1 %67, label %391, label %68

68:                                               ; preds = %65
  switch i32 %2, label %391 [
    i32 0, label %69
    i32 2, label %69
    i32 1, label %224
  ]

69:                                               ; preds = %68, %68
  %70 = getelementptr inbounds %struct.SculptSession, ptr %9, i64 0, i32 15
  %71 = load ptr, ptr %70, align 8, !tbaa !22
  call void @pbvh_vertex_iter_init(ptr noundef %71, ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef 0) #10
  %72 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 5
  store i32 0, ptr %72, align 4, !tbaa !41
  %73 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 12
  store i32 0, ptr %4, align 8, !tbaa !45
  %74 = load i32, ptr %73, align 8, !tbaa !46
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %391

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 6
  %78 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 13
  %79 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 1
  %80 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 2
  %81 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 11
  %82 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 7
  %83 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 15
  %84 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 4
  %85 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 3
  %86 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 8
  %87 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 24
  %88 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 26
  %89 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 27
  %90 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 10
  %91 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 14
  %92 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 16
  %93 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 22
  %94 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 25
  %95 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 17
  %96 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 18
  %97 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 19
  %98 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 23
  %99 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 21
  %100 = getelementptr inbounds %struct.SculptSession, ptr %9, i64 0, i32 14
  br label %101

101:                                              ; preds = %76, %218
  %102 = phi i32 [ %74, %76 ], [ %219, %218 ]
  %103 = phi i32 [ 0, %76 ], [ %221, %218 ]
  %104 = phi i32 [ 0, %76 ], [ %222, %218 ]
  %105 = load ptr, ptr %77, align 8, !tbaa !47
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, ptr %83, align 8, !tbaa !48
  store i32 %108, ptr %79, align 4, !tbaa !49
  store i32 1, ptr %80, align 8, !tbaa !50
  store i32 0, ptr %84, align 8, !tbaa !51
  br label %119

109:                                              ; preds = %101
  %110 = load i32, ptr %78, align 4, !tbaa !52
  store i32 %110, ptr %79, align 4, !tbaa !49
  store i32 %110, ptr %80, align 8, !tbaa !50
  %111 = load ptr, ptr %81, align 8, !tbaa !53
  %112 = sext i32 %104 to i64
  %113 = getelementptr inbounds i32, ptr %111, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !24
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds ptr, ptr %105, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !23
  store ptr %117, ptr %82, align 8, !tbaa !54
  store i32 0, ptr %84, align 8, !tbaa !51
  %118 = icmp sgt i32 %110, 0
  br i1 %118, label %119, label %218

119:                                              ; preds = %107, %109
  %120 = phi i32 [ %110, %109 ], [ 1, %107 ]
  %121 = phi i32 [ %110, %109 ], [ %108, %107 ]
  br label %122

122:                                              ; preds = %119, %207
  %123 = phi i32 [ %208, %207 ], [ %120, %119 ]
  %124 = phi i32 [ %213, %207 ], [ 0, %119 ]
  %125 = phi i32 [ %210, %207 ], [ %121, %119 ]
  %126 = phi i32 [ %211, %207 ], [ %103, %119 ]
  %127 = phi i32 [ %212, %207 ], [ %121, %119 ]
  store i32 0, ptr %85, align 4, !tbaa !55
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %207

129:                                              ; preds = %122, %197
  %130 = phi i32 [ %198, %197 ], [ %125, %122 ]
  %131 = phi i32 [ %202, %197 ], [ %126, %122 ]
  %132 = phi i32 [ %201, %197 ], [ 0, %122 ]
  %133 = load ptr, ptr %82, align 8, !tbaa !54
  %134 = icmp eq ptr %133, null
  br i1 %134, label %161, label %135

135:                                              ; preds = %129
  %136 = load ptr, ptr %86, align 8, !tbaa !56
  store ptr %133, ptr %87, align 8, !tbaa !57
  %137 = call fastcc ptr @CCG_elem_no(ptr noundef %136, ptr noundef nonnull %133) #11
  store ptr %137, ptr %88, align 8, !tbaa !58
  %138 = getelementptr inbounds %struct.CCGKey, ptr %136, i64 0, i32 9
  %139 = load i32, ptr %138, align 4, !tbaa !59
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %135
  %142 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %136, ptr noundef nonnull %133) #11
  br label %143

143:                                              ; preds = %135, %141
  %144 = phi ptr [ %142, %141 ], [ null, %135 ]
  store ptr %144, ptr %89, align 8, !tbaa !61
  %145 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %136, ptr noundef nonnull %133) #11
  store ptr %145, ptr %82, align 8, !tbaa !54
  %146 = load ptr, ptr %90, align 8, !tbaa !62
  %147 = icmp eq ptr %146, null
  br i1 %147, label %190, label %148

148:                                              ; preds = %143
  %149 = load i32, ptr %84, align 8, !tbaa !51
  %150 = load i32, ptr %78, align 4, !tbaa !52
  %151 = mul nsw i32 %150, %149
  %152 = add nsw i32 %151, %132
  %153 = ashr i32 %152, 5
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, ptr %146, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !24
  %157 = and i32 %152, 31
  %158 = shl nuw i32 1, %157
  %159 = and i32 %158, %156
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %190, label %197

161:                                              ; preds = %129
  %162 = load ptr, ptr %91, align 8, !tbaa !63
  %163 = icmp eq ptr %162, null
  br i1 %163, label %176, label %164

164:                                              ; preds = %161
  %165 = load ptr, ptr %92, align 8, !tbaa !64
  %166 = sext i32 %132 to i64
  %167 = getelementptr inbounds i32, ptr %165, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !24
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.MVert, ptr %162, i64 %169
  store ptr %170, ptr %93, align 8, !tbaa !65
  store ptr %170, ptr %87, align 8, !tbaa !57
  %171 = getelementptr inbounds %struct.MVert, ptr %162, i64 %169, i32 1
  store ptr %171, ptr %94, align 8, !tbaa !66
  %172 = load ptr, ptr %95, align 8, !tbaa !67
  %173 = icmp eq ptr %172, null
  br i1 %173, label %190, label %174

174:                                              ; preds = %164
  %175 = getelementptr inbounds float, ptr %172, i64 %169
  br label %188

176:                                              ; preds = %161
  %177 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %96) #11, !range !68
  %178 = icmp eq i8 %177, 0
  %179 = select i1 %178, ptr %96, ptr %97
  %180 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %179) #11
  store ptr %180, ptr %98, align 8, !tbaa !69
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %179) #11
  %181 = load ptr, ptr %98, align 8, !tbaa !69
  %182 = getelementptr inbounds %struct.BMVert, ptr %181, i64 0, i32 2
  store ptr %182, ptr %87, align 8, !tbaa !57
  %183 = getelementptr inbounds %struct.BMVert, ptr %181, i64 0, i32 3
  store ptr %183, ptr %88, align 8, !tbaa !58
  %184 = load ptr, ptr %181, align 8, !tbaa !70
  %185 = load i32, ptr %99, align 8, !tbaa !73
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, ptr %184, i64 %186
  br label %188

188:                                              ; preds = %174, %176
  %189 = phi ptr [ %187, %176 ], [ %175, %174 ]
  store ptr %189, ptr %89, align 8, !tbaa !61
  br label %190

190:                                              ; preds = %188, %164, %143, %148
  %191 = load ptr, ptr %100, align 8, !tbaa !32
  %192 = load ptr, ptr %98, align 8, !tbaa !69
  %193 = load i32, ptr %99, align 8, !tbaa !73
  call void @BM_log_vert_before_modified(ptr noundef %191, ptr noundef %192, i32 noundef %193) #10
  %194 = load i32, ptr %85, align 4, !tbaa !55
  %195 = load i32, ptr %72, align 4, !tbaa !41
  %196 = load i32, ptr %79, align 4, !tbaa !49
  br label %197

197:                                              ; preds = %148, %190
  %198 = phi i32 [ %130, %148 ], [ %196, %190 ]
  %199 = phi i32 [ %131, %148 ], [ %195, %190 ]
  %200 = phi i32 [ %132, %148 ], [ %194, %190 ]
  %201 = add nsw i32 %200, 1
  store i32 %201, ptr %85, align 4, !tbaa !55
  %202 = add nsw i32 %199, 1
  store i32 %202, ptr %72, align 4, !tbaa !41
  %203 = icmp slt i32 %201, %198
  br i1 %203, label %129, label %204, !llvm.loop !74

204:                                              ; preds = %197
  %205 = load i32, ptr %84, align 8, !tbaa !51
  %206 = load i32, ptr %80, align 8, !tbaa !50
  br label %207

207:                                              ; preds = %204, %122
  %208 = phi i32 [ %206, %204 ], [ %123, %122 ]
  %209 = phi i32 [ %205, %204 ], [ %124, %122 ]
  %210 = phi i32 [ %198, %204 ], [ %125, %122 ]
  %211 = phi i32 [ %202, %204 ], [ %126, %122 ]
  %212 = phi i32 [ %198, %204 ], [ %127, %122 ]
  %213 = add nsw i32 %209, 1
  store i32 %213, ptr %84, align 8, !tbaa !51
  %214 = icmp slt i32 %213, %208
  br i1 %214, label %122, label %215, !llvm.loop !76

215:                                              ; preds = %207
  %216 = load i32, ptr %4, align 8, !tbaa !45
  %217 = load i32, ptr %73, align 8, !tbaa !46
  br label %218

218:                                              ; preds = %215, %109
  %219 = phi i32 [ %217, %215 ], [ %102, %109 ]
  %220 = phi i32 [ %216, %215 ], [ %104, %109 ]
  %221 = phi i32 [ %211, %215 ], [ %103, %109 ]
  %222 = add nsw i32 %220, 1
  store i32 %222, ptr %4, align 8, !tbaa !45
  %223 = icmp slt i32 %222, %219
  br i1 %223, label %101, label %391, !llvm.loop !77

224:                                              ; preds = %68
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %225 = tail call ptr @BKE_pbvh_bmesh_node_faces(ptr noundef nonnull %1) #10
  %226 = getelementptr inbounds %struct.SculptSession, ptr %9, i64 0, i32 15
  %227 = load ptr, ptr %226, align 8, !tbaa !22
  call void @pbvh_vertex_iter_init(ptr noundef %227, ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef 0) #10
  %228 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 5
  store i32 0, ptr %228, align 4, !tbaa !41
  %229 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 12
  store i32 0, ptr %4, align 8, !tbaa !45
  %230 = load i32, ptr %229, align 8, !tbaa !46
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %232, label %380

232:                                              ; preds = %224
  %233 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 6
  %234 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 13
  %235 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 1
  %236 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 2
  %237 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 11
  %238 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 7
  %239 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 15
  %240 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 4
  %241 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 3
  %242 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 8
  %243 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 24
  %244 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 26
  %245 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 27
  %246 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 10
  %247 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 14
  %248 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 16
  %249 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 22
  %250 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 25
  %251 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 17
  %252 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 18
  %253 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 19
  %254 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 23
  %255 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 21
  %256 = getelementptr inbounds %struct.SculptSession, ptr %9, i64 0, i32 14
  br label %257

257:                                              ; preds = %232, %374
  %258 = phi i32 [ %230, %232 ], [ %375, %374 ]
  %259 = phi i32 [ 0, %232 ], [ %377, %374 ]
  %260 = phi i32 [ 0, %232 ], [ %378, %374 ]
  %261 = load ptr, ptr %233, align 8, !tbaa !47
  %262 = icmp eq ptr %261, null
  br i1 %262, label %263, label %265

263:                                              ; preds = %257
  %264 = load i32, ptr %239, align 8, !tbaa !48
  store i32 %264, ptr %235, align 4, !tbaa !49
  store i32 1, ptr %236, align 8, !tbaa !50
  store i32 0, ptr %240, align 8, !tbaa !51
  br label %275

265:                                              ; preds = %257
  %266 = load i32, ptr %234, align 4, !tbaa !52
  store i32 %266, ptr %235, align 4, !tbaa !49
  store i32 %266, ptr %236, align 8, !tbaa !50
  %267 = load ptr, ptr %237, align 8, !tbaa !53
  %268 = sext i32 %260 to i64
  %269 = getelementptr inbounds i32, ptr %267, i64 %268
  %270 = load i32, ptr %269, align 4, !tbaa !24
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds ptr, ptr %261, i64 %271
  %273 = load ptr, ptr %272, align 8, !tbaa !23
  store ptr %273, ptr %238, align 8, !tbaa !54
  store i32 0, ptr %240, align 8, !tbaa !51
  %274 = icmp sgt i32 %266, 0
  br i1 %274, label %275, label %374

275:                                              ; preds = %263, %265
  %276 = phi i32 [ %266, %265 ], [ 1, %263 ]
  %277 = phi i32 [ %266, %265 ], [ %264, %263 ]
  br label %278

278:                                              ; preds = %275, %363
  %279 = phi i32 [ %364, %363 ], [ %276, %275 ]
  %280 = phi i32 [ %369, %363 ], [ 0, %275 ]
  %281 = phi i32 [ %366, %363 ], [ %277, %275 ]
  %282 = phi i32 [ %367, %363 ], [ %259, %275 ]
  %283 = phi i32 [ %368, %363 ], [ %277, %275 ]
  store i32 0, ptr %241, align 4, !tbaa !55
  %284 = icmp sgt i32 %283, 0
  br i1 %284, label %285, label %363

285:                                              ; preds = %278, %353
  %286 = phi i32 [ %354, %353 ], [ %281, %278 ]
  %287 = phi i32 [ %358, %353 ], [ %282, %278 ]
  %288 = phi i32 [ %357, %353 ], [ 0, %278 ]
  %289 = load ptr, ptr %238, align 8, !tbaa !54
  %290 = icmp eq ptr %289, null
  br i1 %290, label %317, label %291

291:                                              ; preds = %285
  %292 = load ptr, ptr %242, align 8, !tbaa !56
  store ptr %289, ptr %243, align 8, !tbaa !57
  %293 = call fastcc ptr @CCG_elem_no(ptr noundef %292, ptr noundef nonnull %289) #11
  store ptr %293, ptr %244, align 8, !tbaa !58
  %294 = getelementptr inbounds %struct.CCGKey, ptr %292, i64 0, i32 9
  %295 = load i32, ptr %294, align 4, !tbaa !59
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %299, label %297

297:                                              ; preds = %291
  %298 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %292, ptr noundef nonnull %289) #11
  br label %299

299:                                              ; preds = %291, %297
  %300 = phi ptr [ %298, %297 ], [ null, %291 ]
  store ptr %300, ptr %245, align 8, !tbaa !61
  %301 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %292, ptr noundef nonnull %289) #11
  store ptr %301, ptr %238, align 8, !tbaa !54
  %302 = load ptr, ptr %246, align 8, !tbaa !62
  %303 = icmp eq ptr %302, null
  br i1 %303, label %346, label %304

304:                                              ; preds = %299
  %305 = load i32, ptr %240, align 8, !tbaa !51
  %306 = load i32, ptr %234, align 4, !tbaa !52
  %307 = mul nsw i32 %306, %305
  %308 = add nsw i32 %307, %288
  %309 = ashr i32 %308, 5
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, ptr %302, i64 %310
  %312 = load i32, ptr %311, align 4, !tbaa !24
  %313 = and i32 %308, 31
  %314 = shl nuw i32 1, %313
  %315 = and i32 %314, %312
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %346, label %353

317:                                              ; preds = %285
  %318 = load ptr, ptr %247, align 8, !tbaa !63
  %319 = icmp eq ptr %318, null
  br i1 %319, label %332, label %320

320:                                              ; preds = %317
  %321 = load ptr, ptr %248, align 8, !tbaa !64
  %322 = sext i32 %288 to i64
  %323 = getelementptr inbounds i32, ptr %321, i64 %322
  %324 = load i32, ptr %323, align 4, !tbaa !24
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.MVert, ptr %318, i64 %325
  store ptr %326, ptr %249, align 8, !tbaa !65
  store ptr %326, ptr %243, align 8, !tbaa !57
  %327 = getelementptr inbounds %struct.MVert, ptr %318, i64 %325, i32 1
  store ptr %327, ptr %250, align 8, !tbaa !66
  %328 = load ptr, ptr %251, align 8, !tbaa !67
  %329 = icmp eq ptr %328, null
  br i1 %329, label %346, label %330

330:                                              ; preds = %320
  %331 = getelementptr inbounds float, ptr %328, i64 %325
  br label %344

332:                                              ; preds = %317
  %333 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %252) #11, !range !68
  %334 = icmp eq i8 %333, 0
  %335 = select i1 %334, ptr %252, ptr %253
  %336 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %335) #11
  store ptr %336, ptr %254, align 8, !tbaa !69
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %335) #11
  %337 = load ptr, ptr %254, align 8, !tbaa !69
  %338 = getelementptr inbounds %struct.BMVert, ptr %337, i64 0, i32 2
  store ptr %338, ptr %243, align 8, !tbaa !57
  %339 = getelementptr inbounds %struct.BMVert, ptr %337, i64 0, i32 3
  store ptr %339, ptr %244, align 8, !tbaa !58
  %340 = load ptr, ptr %337, align 8, !tbaa !70
  %341 = load i32, ptr %255, align 8, !tbaa !73
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8, ptr %340, i64 %342
  br label %344

344:                                              ; preds = %330, %332
  %345 = phi ptr [ %343, %332 ], [ %331, %330 ]
  store ptr %345, ptr %245, align 8, !tbaa !61
  br label %346

346:                                              ; preds = %344, %320, %299, %304
  %347 = load ptr, ptr %256, align 8, !tbaa !32
  %348 = load ptr, ptr %254, align 8, !tbaa !69
  %349 = load i32, ptr %255, align 8, !tbaa !73
  call void @BM_log_vert_before_modified(ptr noundef %347, ptr noundef %348, i32 noundef %349) #10
  %350 = load i32, ptr %241, align 4, !tbaa !55
  %351 = load i32, ptr %228, align 4, !tbaa !41
  %352 = load i32, ptr %235, align 4, !tbaa !49
  br label %353

353:                                              ; preds = %304, %346
  %354 = phi i32 [ %286, %304 ], [ %352, %346 ]
  %355 = phi i32 [ %287, %304 ], [ %351, %346 ]
  %356 = phi i32 [ %288, %304 ], [ %350, %346 ]
  %357 = add nsw i32 %356, 1
  store i32 %357, ptr %241, align 4, !tbaa !55
  %358 = add nsw i32 %355, 1
  store i32 %358, ptr %228, align 4, !tbaa !41
  %359 = icmp slt i32 %357, %354
  br i1 %359, label %285, label %360, !llvm.loop !78

360:                                              ; preds = %353
  %361 = load i32, ptr %240, align 8, !tbaa !51
  %362 = load i32, ptr %236, align 8, !tbaa !50
  br label %363

363:                                              ; preds = %360, %278
  %364 = phi i32 [ %362, %360 ], [ %279, %278 ]
  %365 = phi i32 [ %361, %360 ], [ %280, %278 ]
  %366 = phi i32 [ %354, %360 ], [ %281, %278 ]
  %367 = phi i32 [ %358, %360 ], [ %282, %278 ]
  %368 = phi i32 [ %354, %360 ], [ %283, %278 ]
  %369 = add nsw i32 %365, 1
  store i32 %369, ptr %240, align 8, !tbaa !51
  %370 = icmp slt i32 %369, %364
  br i1 %370, label %278, label %371, !llvm.loop !79

371:                                              ; preds = %363
  %372 = load i32, ptr %4, align 8, !tbaa !45
  %373 = load i32, ptr %229, align 8, !tbaa !46
  br label %374

374:                                              ; preds = %371, %265
  %375 = phi i32 [ %373, %371 ], [ %258, %265 ]
  %376 = phi i32 [ %372, %371 ], [ %260, %265 ]
  %377 = phi i32 [ %367, %371 ], [ %259, %265 ]
  %378 = add nsw i32 %376, 1
  store i32 %378, ptr %4, align 8, !tbaa !45
  %379 = icmp slt i32 %378, %375
  br i1 %379, label %257, label %380, !llvm.loop !80

380:                                              ; preds = %374, %224
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %5, ptr noundef %225) #11
  %381 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %5) #11, !range !68
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %383, label %390

383:                                              ; preds = %380
  %384 = getelementptr inbounds %struct.SculptSession, ptr %9, i64 0, i32 14
  br label %385

385:                                              ; preds = %383, %385
  %386 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %5) #11
  %387 = load ptr, ptr %384, align 8, !tbaa !32
  call void @BM_log_face_modified(ptr noundef %387, ptr noundef %386) #10
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %5) #11
  %388 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %5) #11, !range !68
  %389 = icmp eq i8 %388, 0
  br i1 %389, label %385, label %390, !llvm.loop !81

390:                                              ; preds = %385, %380
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  br label %391

391:                                              ; preds = %218, %69, %390, %68, %65
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %4) #12
  ret ptr %66
}

; Function Attrs: optsize
declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @sculpt_undo_alloc_node(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = tail call ptr @undo_paint_push_get_list(i32 noundef 1) #10
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #12
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !23
  %14 = tail call ptr %13(i64 noundef 1080, ptr noundef nonnull @.str) #10
  %15 = getelementptr inbounds %struct.SculptUndoNode, ptr %14, i64 0, i32 3
  %16 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %17 = tail call ptr @BLI_strncpy(ptr noundef nonnull %15, ptr noundef nonnull %16, i64 noundef 66) #10
  %18 = getelementptr inbounds %struct.SculptUndoNode, ptr %14, i64 0, i32 2
  store i32 %2, ptr %18, align 8, !tbaa !30
  %19 = getelementptr inbounds %struct.SculptUndoNode, ptr %14, i64 0, i32 4
  store ptr %1, ptr %19, align 8, !tbaa !82
  %20 = icmp eq ptr %1, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.SculptSession, ptr %12, i64 0, i32 15
  %23 = load ptr, ptr %22, align 8, !tbaa !22
  call void @BKE_pbvh_node_num_verts(ptr noundef %23, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %24 = load ptr, ptr %22, align 8, !tbaa !22
  call void @BKE_pbvh_node_get_grids(ptr noundef %24, ptr noundef nonnull %1, ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null, ptr noundef null) #10
  %25 = load i32, ptr %4, align 4, !tbaa !24
  %26 = getelementptr inbounds %struct.SculptUndoNode, ptr %14, i64 0, i32 9
  store i32 %25, ptr %26, align 8, !tbaa !26
  br label %28

27:                                               ; preds = %3
  store i32 0, ptr %7, align 4, !tbaa !24
  br label %28

28:                                               ; preds = %27, %21
  switch i32 %2, label %68 [
    i32 0, label %29
    i32 1, label %44
    i32 2, label %59
  ]

29:                                               ; preds = %28
  %30 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !23
  %31 = load i32, ptr %5, align 4, !tbaa !24
  %32 = sext i32 %31 to i64
  %33 = mul nsw i64 %32, 12
  %34 = call ptr %30(i64 noundef %33, ptr noundef nonnull @.str.1) #10
  %35 = getelementptr inbounds %struct.SculptUndoNode, ptr %14, i64 0, i32 5
  store ptr %34, ptr %35, align 8, !tbaa !83
  %36 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !23
  %37 = load i32, ptr %5, align 4, !tbaa !24
  %38 = sext i32 %37 to i64
  %39 = mul nsw i64 %38, 6
  %40 = call ptr %36(i64 noundef %39, ptr noundef nonnull @.str.2) #10
  %41 = getelementptr inbounds %struct.SculptUndoNode, ptr %14, i64 0, i32 7
  store ptr %40, ptr %41, align 8, !tbaa !84
  %42 = load i32, ptr %5, align 4, !tbaa !24
  %43 = mul i32 %42, 22
  call void @undo_paint_push_count_alloc(i32 noundef 1, i32 noundef %43) #10
  br label %68

44:                                               ; preds = %28
  %45 = load i32, ptr %7, align 4, !tbaa !24
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.SculptSession, ptr %12, i64 0, i32 15
  %49 = load ptr, ptr %48, align 8, !tbaa !22
  call fastcc void @sculpt_undo_alloc_and_store_hidden(ptr noundef %49, ptr noundef nonnull %14) #11
  br label %68

50:                                               ; preds = %44
  %51 = load ptr, ptr @MEM_callocN, align 8, !tbaa !23
  %52 = load i32, ptr %5, align 4, !tbaa !24
  %53 = ashr i32 %52, 5
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = shl nsw i64 %55, 2
  %57 = call ptr %51(i64 noundef %56, ptr noundef nonnull @.str.3) #10
  %58 = getelementptr inbounds %struct.SculptUndoNode, ptr %14, i64 0, i32 12
  store ptr %57, ptr %58, align 8, !tbaa !85
  br label %68

59:                                               ; preds = %28
  %60 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !23
  %61 = load i32, ptr %5, align 4, !tbaa !24
  %62 = sext i32 %61 to i64
  %63 = shl nsw i64 %62, 2
  %64 = call ptr %60(i64 noundef %63, ptr noundef nonnull @.str.4) #10
  %65 = getelementptr inbounds %struct.SculptUndoNode, ptr %14, i64 0, i32 8
  store ptr %64, ptr %65, align 8, !tbaa !86
  %66 = load i32, ptr %5, align 4, !tbaa !24
  %67 = shl i32 %66, 4
  call void @undo_paint_push_count_alloc(i32 noundef 1, i32 noundef %67) #10
  br label %68

68:                                               ; preds = %47, %50, %28, %59, %29
  call void @BLI_addtail(ptr noundef %10, ptr noundef nonnull %14) #10
  %69 = load i32, ptr %7, align 4, !tbaa !24
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.SculptUndoNode, ptr %14, i64 0, i32 13
  store i32 %69, ptr %72, align 8, !tbaa !87
  %73 = load i32, ptr %6, align 4, !tbaa !24
  %74 = getelementptr inbounds %struct.SculptUndoNode, ptr %14, i64 0, i32 15
  store i32 %73, ptr %74, align 8, !tbaa !88
  %75 = load i32, ptr %8, align 4, !tbaa !24
  %76 = getelementptr inbounds %struct.SculptUndoNode, ptr %14, i64 0, i32 14
  store i32 %75, ptr %76, align 4, !tbaa !89
  %77 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !23
  %78 = sext i32 %73 to i64
  %79 = shl nsw i64 %78, 2
  %80 = call ptr %77(i64 noundef %79, ptr noundef nonnull @.str.5) #10
  %81 = getelementptr inbounds %struct.SculptUndoNode, ptr %14, i64 0, i32 16
  store ptr %80, ptr %81, align 8, !tbaa !19
  br label %92

82:                                               ; preds = %68
  %83 = getelementptr inbounds %struct.SculptSession, ptr %12, i64 0, i32 4
  %84 = load i32, ptr %83, align 8, !tbaa !90
  %85 = getelementptr inbounds %struct.SculptUndoNode, ptr %14, i64 0, i32 10
  store i32 %84, ptr %85, align 4, !tbaa !91
  %86 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !23
  %87 = load i32, ptr %5, align 4, !tbaa !24
  %88 = sext i32 %87 to i64
  %89 = shl nsw i64 %88, 2
  %90 = call ptr %86(i64 noundef %89, ptr noundef nonnull @.str.6) #10
  %91 = getelementptr inbounds %struct.SculptUndoNode, ptr %14, i64 0, i32 11
  store ptr %90, ptr %91, align 8, !tbaa !25
  br label %92

92:                                               ; preds = %82, %71
  %93 = getelementptr inbounds %struct.SculptSession, ptr %12, i64 0, i32 17
  %94 = load i8, ptr %93, align 1, !tbaa !92
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr @MEM_callocN, align 8, !tbaa !23
  %98 = load i32, ptr %5, align 4, !tbaa !24
  %99 = sext i32 %98 to i64
  %100 = mul nsw i64 %99, 12
  %101 = call ptr %97(i64 noundef %100, ptr noundef nonnull @.str.7) #10
  %102 = getelementptr inbounds %struct.SculptUndoNode, ptr %14, i64 0, i32 6
  store ptr %101, ptr %102, align 8, !tbaa !93
  br label %103

103:                                              ; preds = %96, %92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret ptr %14
}

; Function Attrs: optsize
declare void @BKE_pbvh_node_get_grids(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @BKE_pbvh_node_num_verts(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pbvh_node_get_verts(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_undo_store_coords(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.PBVHVertexIter, align 8
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %3) #12
  %6 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 15
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.SculptUndoNode, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  call void @pbvh_vertex_iter_init(ptr noundef %7, ptr noundef %9, ptr noundef nonnull %3, i32 noundef 0) #10
  %10 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 5
  store i32 0, ptr %10, align 4, !tbaa !41
  %11 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 12
  store i32 0, ptr %3, align 8, !tbaa !45
  %12 = load i32, ptr %11, align 8, !tbaa !46
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %186

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 6
  %16 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 13
  %17 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 1
  %18 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 2
  %19 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 11
  %20 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 7
  %21 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 15
  %22 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 4
  %23 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 3
  %24 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 8
  %25 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 24
  %26 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 26
  %27 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 27
  %28 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 10
  %29 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 14
  %30 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 16
  %31 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 22
  %32 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 25
  %33 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 17
  %34 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 18
  %35 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 19
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 23
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 21
  %38 = getelementptr inbounds %struct.SculptUndoNode, ptr %1, i64 0, i32 5
  %39 = getelementptr inbounds %struct.SculptUndoNode, ptr %1, i64 0, i32 7
  %40 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 17
  %41 = getelementptr inbounds %struct.SculptUndoNode, ptr %1, i64 0, i32 6
  %42 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 18
  %43 = getelementptr inbounds %struct.SculptUndoNode, ptr %1, i64 0, i32 11
  br label %44

44:                                               ; preds = %14, %180
  %45 = phi i32 [ %12, %14 ], [ %181, %180 ]
  %46 = phi i32 [ 0, %14 ], [ %183, %180 ]
  %47 = phi i32 [ 0, %14 ], [ %184, %180 ]
  %48 = load ptr, ptr %15, align 8, !tbaa !47
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, ptr %21, align 8, !tbaa !48
  store i32 %51, ptr %17, align 4, !tbaa !49
  store i32 1, ptr %18, align 8, !tbaa !50
  store i32 0, ptr %22, align 8, !tbaa !51
  br label %62

52:                                               ; preds = %44
  %53 = load i32, ptr %16, align 4, !tbaa !52
  store i32 %53, ptr %17, align 4, !tbaa !49
  store i32 %53, ptr %18, align 8, !tbaa !50
  %54 = load ptr, ptr %19, align 8, !tbaa !53
  %55 = sext i32 %47 to i64
  %56 = getelementptr inbounds i32, ptr %54, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !24
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds ptr, ptr %48, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !23
  store ptr %60, ptr %20, align 8, !tbaa !54
  store i32 0, ptr %22, align 8, !tbaa !51
  %61 = icmp sgt i32 %53, 0
  br i1 %61, label %62, label %180

62:                                               ; preds = %50, %52
  %63 = phi i32 [ %53, %52 ], [ 1, %50 ]
  %64 = phi i32 [ %53, %52 ], [ %51, %50 ]
  br label %65

65:                                               ; preds = %62, %170
  %66 = phi i32 [ %171, %170 ], [ %63, %62 ]
  %67 = phi i32 [ %175, %170 ], [ 0, %62 ]
  %68 = phi i32 [ %173, %170 ], [ %46, %62 ]
  %69 = phi i32 [ %174, %170 ], [ %64, %62 ]
  store i32 0, ptr %23, align 4, !tbaa !55
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %170

71:                                               ; preds = %65, %160
  %72 = phi i32 [ %164, %160 ], [ %68, %65 ]
  %73 = phi i32 [ %163, %160 ], [ 0, %65 ]
  %74 = load ptr, ptr %20, align 8, !tbaa !54
  %75 = icmp eq ptr %74, null
  br i1 %75, label %102, label %76

76:                                               ; preds = %71
  %77 = load ptr, ptr %24, align 8, !tbaa !56
  store ptr %74, ptr %25, align 8, !tbaa !57
  %78 = call fastcc ptr @CCG_elem_no(ptr noundef %77, ptr noundef nonnull %74) #11
  store ptr %78, ptr %26, align 8, !tbaa !58
  %79 = getelementptr inbounds %struct.CCGKey, ptr %77, i64 0, i32 9
  %80 = load i32, ptr %79, align 4, !tbaa !59
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %76
  %83 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %77, ptr noundef nonnull %74) #11
  br label %84

84:                                               ; preds = %76, %82
  %85 = phi ptr [ %83, %82 ], [ null, %76 ]
  store ptr %85, ptr %27, align 8, !tbaa !61
  %86 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %77, ptr noundef nonnull %74) #11
  store ptr %86, ptr %20, align 8, !tbaa !54
  %87 = load ptr, ptr %28, align 8, !tbaa !62
  %88 = icmp eq ptr %87, null
  br i1 %88, label %130, label %89

89:                                               ; preds = %84
  %90 = load i32, ptr %22, align 8, !tbaa !51
  %91 = load i32, ptr %16, align 4, !tbaa !52
  %92 = mul nsw i32 %91, %90
  %93 = add nsw i32 %92, %73
  %94 = ashr i32 %93, 5
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, ptr %87, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !24
  %98 = and i32 %93, 31
  %99 = shl nuw i32 1, %98
  %100 = and i32 %99, %97
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %130, label %160

102:                                              ; preds = %71
  %103 = load ptr, ptr %29, align 8, !tbaa !63
  %104 = icmp eq ptr %103, null
  br i1 %104, label %117, label %105

105:                                              ; preds = %102
  %106 = load ptr, ptr %30, align 8, !tbaa !64
  %107 = sext i32 %73 to i64
  %108 = getelementptr inbounds i32, ptr %106, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !24
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.MVert, ptr %103, i64 %110
  store ptr %111, ptr %31, align 8, !tbaa !65
  store ptr %111, ptr %25, align 8, !tbaa !57
  %112 = getelementptr inbounds %struct.MVert, ptr %103, i64 %110, i32 1
  store ptr %112, ptr %32, align 8, !tbaa !66
  %113 = load ptr, ptr %33, align 8, !tbaa !67
  %114 = icmp eq ptr %113, null
  br i1 %114, label %130, label %115

115:                                              ; preds = %105
  %116 = getelementptr inbounds float, ptr %113, i64 %110
  store ptr %116, ptr %27, align 8, !tbaa !61
  br label %130

117:                                              ; preds = %102
  %118 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %34) #11, !range !68
  %119 = icmp eq i8 %118, 0
  %120 = select i1 %119, ptr %34, ptr %35
  %121 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %120) #11
  store ptr %121, ptr %36, align 8, !tbaa !69
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %120) #11
  %122 = load ptr, ptr %36, align 8, !tbaa !69
  %123 = getelementptr inbounds %struct.BMVert, ptr %122, i64 0, i32 2
  store ptr %123, ptr %25, align 8, !tbaa !57
  %124 = getelementptr inbounds %struct.BMVert, ptr %122, i64 0, i32 3
  store ptr %124, ptr %26, align 8, !tbaa !58
  %125 = load ptr, ptr %122, align 8, !tbaa !70
  %126 = load i32, ptr %37, align 8, !tbaa !73
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, ptr %125, i64 %127
  store ptr %128, ptr %27, align 8, !tbaa !61
  %129 = load i32, ptr %10, align 4, !tbaa !41
  br label %130

130:                                              ; preds = %117, %115, %105, %84, %89
  %131 = phi ptr [ %123, %117 ], [ %111, %115 ], [ %111, %105 ], [ %74, %84 ], [ %74, %89 ]
  %132 = phi i32 [ %129, %117 ], [ %72, %115 ], [ %72, %105 ], [ %72, %84 ], [ %72, %89 ]
  %133 = load ptr, ptr %38, align 8, !tbaa !83
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds [3 x float], ptr %133, i64 %134
  call fastcc void @copy_v3_v3(ptr noundef %135, ptr noundef %131) #11
  %136 = load ptr, ptr %32, align 8, !tbaa !66
  %137 = icmp eq ptr %136, null
  %138 = load ptr, ptr %39, align 8, !tbaa !84
  %139 = load i32, ptr %10, align 4, !tbaa !41
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [3 x i16], ptr %138, i64 %140
  br i1 %137, label %143, label %142

142:                                              ; preds = %130
  call fastcc void @copy_v3_v3_short(ptr noundef %141, ptr noundef nonnull %136) #11
  br label %145

143:                                              ; preds = %130
  %144 = load ptr, ptr %26, align 8, !tbaa !58
  call fastcc void @normal_float_to_short_v3(ptr noundef %141, ptr noundef %144) #11
  br label %145

145:                                              ; preds = %143, %142
  %146 = load i8, ptr %40, align 1, !tbaa !92
  %147 = icmp eq i8 %146, 0
  %148 = load i32, ptr %10, align 4, !tbaa !41
  br i1 %147, label %160, label %149

149:                                              ; preds = %145
  %150 = load ptr, ptr %41, align 8, !tbaa !93
  %151 = sext i32 %148 to i64
  %152 = getelementptr inbounds [3 x float], ptr %150, i64 %151
  %153 = load ptr, ptr %42, align 8, !tbaa !94
  %154 = load ptr, ptr %43, align 8, !tbaa !25
  %155 = getelementptr inbounds i32, ptr %154, i64 %151
  %156 = load i32, ptr %155, align 4, !tbaa !24
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [3 x float], ptr %153, i64 %157
  call fastcc void @copy_v3_v3(ptr noundef %152, ptr noundef %158) #11
  %159 = load i32, ptr %10, align 4, !tbaa !41
  br label %160

160:                                              ; preds = %145, %149, %89
  %161 = phi i32 [ %148, %145 ], [ %159, %149 ], [ %72, %89 ]
  %162 = load i32, ptr %23, align 4, !tbaa !55
  %163 = add nsw i32 %162, 1
  store i32 %163, ptr %23, align 4, !tbaa !55
  %164 = add nsw i32 %161, 1
  store i32 %164, ptr %10, align 4, !tbaa !41
  %165 = load i32, ptr %17, align 4, !tbaa !49
  %166 = icmp slt i32 %163, %165
  br i1 %166, label %71, label %167, !llvm.loop !95

167:                                              ; preds = %160
  %168 = load i32, ptr %22, align 8, !tbaa !51
  %169 = load i32, ptr %18, align 8, !tbaa !50
  br label %170

170:                                              ; preds = %167, %65
  %171 = phi i32 [ %169, %167 ], [ %66, %65 ]
  %172 = phi i32 [ %168, %167 ], [ %67, %65 ]
  %173 = phi i32 [ %164, %167 ], [ %68, %65 ]
  %174 = phi i32 [ %165, %167 ], [ %69, %65 ]
  %175 = add nsw i32 %172, 1
  store i32 %175, ptr %22, align 8, !tbaa !51
  %176 = icmp slt i32 %175, %171
  br i1 %176, label %65, label %177, !llvm.loop !96

177:                                              ; preds = %170
  %178 = load i32, ptr %3, align 8, !tbaa !45
  %179 = load i32, ptr %11, align 8, !tbaa !46
  br label %180

180:                                              ; preds = %177, %52
  %181 = phi i32 [ %179, %177 ], [ %45, %52 ]
  %182 = phi i32 [ %178, %177 ], [ %47, %52 ]
  %183 = phi i32 [ %173, %177 ], [ %46, %52 ]
  %184 = add nsw i32 %182, 1
  store i32 %184, ptr %3, align 8, !tbaa !45
  %185 = icmp slt i32 %184, %181
  br i1 %185, label %44, label %186, !llvm.loop !97

186:                                              ; preds = %180, %2
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %3) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_undo_store_hidden(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.SculptUndoNode, ptr %1, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.SculptUndoNode, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !82
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.SculptSession, ptr %13, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  call void @BKE_pbvh_node_num_verts(ptr noundef %15, ptr noundef %11, ptr noundef null, ptr noundef nonnull %5) #10
  call void @BKE_pbvh_node_get_verts(ptr noundef %15, ptr noundef %11, ptr noundef nonnull %4, ptr noundef nonnull %3) #10
  %16 = load i32, ptr %5, align 4, !tbaa !24
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %54

18:                                               ; preds = %9
  %19 = load ptr, ptr %3, align 8, !tbaa !23
  %20 = load ptr, ptr %4, align 8, !tbaa !23
  %21 = getelementptr inbounds %struct.SculptUndoNode, ptr %1, i64 0, i32 12
  br label %22

22:                                               ; preds = %18, %49
  %23 = phi i64 [ 0, %18 ], [ %50, %49 ]
  %24 = getelementptr inbounds i32, ptr %20, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.MVert, ptr %19, i64 %26, i32 2
  %28 = load i8, ptr %27, align 2, !tbaa !98
  %29 = and i8 %28, 16
  %30 = icmp eq i8 %29, 0
  %31 = trunc i64 %23 to i32
  %32 = and i32 %31, 31
  %33 = shl nuw i32 1, %32
  br i1 %30, label %41, label %34

34:                                               ; preds = %22
  %35 = load ptr, ptr %21, align 8, !tbaa !85
  %36 = lshr i64 %23, 5
  %37 = and i64 %36, 134217727
  %38 = getelementptr inbounds i32, ptr %35, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !24
  %40 = or i32 %39, %33
  store i32 %40, ptr %38, align 4, !tbaa !24
  br label %49

41:                                               ; preds = %22
  %42 = xor i32 %33, -1
  %43 = load ptr, ptr %21, align 8, !tbaa !85
  %44 = lshr i64 %23, 5
  %45 = and i64 %44, 134217727
  %46 = getelementptr inbounds i32, ptr %43, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !24
  %48 = and i32 %47, %42
  store i32 %48, ptr %46, align 4, !tbaa !24
  br label %49

49:                                               ; preds = %34, %41
  %50 = add nuw nsw i64 %23, 1
  %51 = load i32, ptr %5, align 4, !tbaa !24
  %52 = sext i32 %51 to i64
  %53 = icmp slt i64 %50, %52
  br i1 %53, label %22, label %54, !llvm.loop !100

54:                                               ; preds = %49, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br label %55

55:                                               ; preds = %2, %54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_undo_store_mask(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.PBVHVertexIter, align 8
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %3) #12
  %6 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 15
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.SculptUndoNode, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  call void @pbvh_vertex_iter_init(ptr noundef %7, ptr noundef %9, ptr noundef nonnull %3, i32 noundef 0) #10
  %10 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 5
  store i32 0, ptr %10, align 4, !tbaa !41
  %11 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 12
  store i32 0, ptr %3, align 8, !tbaa !45
  %12 = load i32, ptr %11, align 8, !tbaa !46
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %171

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 6
  %16 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 13
  %17 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 1
  %18 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 2
  %19 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 11
  %20 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 7
  %21 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 15
  %22 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 4
  %23 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 3
  %24 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 8
  %25 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 24
  %26 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 26
  %27 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 27
  %28 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 10
  %29 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 14
  %30 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 16
  %31 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 22
  %32 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 25
  %33 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 17
  %34 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 18
  %35 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 19
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 23
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %3, i64 0, i32 21
  %38 = getelementptr inbounds %struct.SculptUndoNode, ptr %1, i64 0, i32 8
  br label %39

39:                                               ; preds = %14, %165
  %40 = phi i32 [ %12, %14 ], [ %166, %165 ]
  %41 = phi i32 [ 0, %14 ], [ %168, %165 ]
  %42 = phi i32 [ 0, %14 ], [ %169, %165 ]
  %43 = load ptr, ptr %15, align 8, !tbaa !47
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, ptr %21, align 8, !tbaa !48
  store i32 %46, ptr %17, align 4, !tbaa !49
  store i32 1, ptr %18, align 8, !tbaa !50
  store i32 0, ptr %22, align 8, !tbaa !51
  br label %57

47:                                               ; preds = %39
  %48 = load i32, ptr %16, align 4, !tbaa !52
  store i32 %48, ptr %17, align 4, !tbaa !49
  store i32 %48, ptr %18, align 8, !tbaa !50
  %49 = load ptr, ptr %19, align 8, !tbaa !53
  %50 = sext i32 %42 to i64
  %51 = getelementptr inbounds i32, ptr %49, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !24
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds ptr, ptr %43, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !23
  store ptr %55, ptr %20, align 8, !tbaa !54
  store i32 0, ptr %22, align 8, !tbaa !51
  %56 = icmp sgt i32 %48, 0
  br i1 %56, label %57, label %165

57:                                               ; preds = %45, %47
  %58 = phi i32 [ %48, %47 ], [ 1, %45 ]
  %59 = phi i32 [ %48, %47 ], [ %46, %45 ]
  br label %60

60:                                               ; preds = %57, %153
  %61 = phi i32 [ %154, %153 ], [ %59, %57 ]
  %62 = phi i32 [ %155, %153 ], [ %58, %57 ]
  %63 = phi i32 [ %160, %153 ], [ 0, %57 ]
  %64 = phi i32 [ %157, %153 ], [ %59, %57 ]
  %65 = phi i32 [ %158, %153 ], [ %41, %57 ]
  %66 = phi i32 [ %159, %153 ], [ %59, %57 ]
  store i32 0, ptr %23, align 4, !tbaa !55
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %153

68:                                               ; preds = %60, %142
  %69 = phi i32 [ %143, %142 ], [ %61, %60 ]
  %70 = phi i32 [ %144, %142 ], [ %64, %60 ]
  %71 = phi i32 [ %148, %142 ], [ %65, %60 ]
  %72 = phi i32 [ %147, %142 ], [ 0, %60 ]
  %73 = load ptr, ptr %20, align 8, !tbaa !54
  %74 = icmp eq ptr %73, null
  br i1 %74, label %101, label %75

75:                                               ; preds = %68
  %76 = load ptr, ptr %24, align 8, !tbaa !56
  store ptr %73, ptr %25, align 8, !tbaa !57
  %77 = call fastcc ptr @CCG_elem_no(ptr noundef %76, ptr noundef nonnull %73) #11
  store ptr %77, ptr %26, align 8, !tbaa !58
  %78 = getelementptr inbounds %struct.CCGKey, ptr %76, i64 0, i32 9
  %79 = load i32, ptr %78, align 4, !tbaa !59
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %75
  %82 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %76, ptr noundef nonnull %73) #11
  br label %83

83:                                               ; preds = %75, %81
  %84 = phi ptr [ %82, %81 ], [ null, %75 ]
  store ptr %84, ptr %27, align 8, !tbaa !61
  %85 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %76, ptr noundef nonnull %73) #11
  store ptr %85, ptr %20, align 8, !tbaa !54
  %86 = load ptr, ptr %28, align 8, !tbaa !62
  %87 = icmp eq ptr %86, null
  br i1 %87, label %133, label %88

88:                                               ; preds = %83
  %89 = load i32, ptr %22, align 8, !tbaa !51
  %90 = load i32, ptr %16, align 4, !tbaa !52
  %91 = mul nsw i32 %90, %89
  %92 = add nsw i32 %91, %72
  %93 = ashr i32 %92, 5
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, ptr %86, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !24
  %97 = and i32 %92, 31
  %98 = shl nuw i32 1, %97
  %99 = and i32 %98, %96
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %133, label %142

101:                                              ; preds = %68
  %102 = load ptr, ptr %29, align 8, !tbaa !63
  %103 = icmp eq ptr %102, null
  br i1 %103, label %118, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr %30, align 8, !tbaa !64
  %106 = sext i32 %72 to i64
  %107 = getelementptr inbounds i32, ptr %105, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !24
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.MVert, ptr %102, i64 %109
  store ptr %110, ptr %31, align 8, !tbaa !65
  store ptr %110, ptr %25, align 8, !tbaa !57
  %111 = getelementptr inbounds %struct.MVert, ptr %102, i64 %109, i32 1
  store ptr %111, ptr %32, align 8, !tbaa !66
  %112 = load ptr, ptr %33, align 8, !tbaa !67
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %104
  %115 = load ptr, ptr %27, align 8, !tbaa !61
  br label %133

116:                                              ; preds = %104
  %117 = getelementptr inbounds float, ptr %112, i64 %109
  store ptr %117, ptr %27, align 8, !tbaa !61
  br label %133

118:                                              ; preds = %101
  %119 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %34) #11, !range !68
  %120 = icmp eq i8 %119, 0
  %121 = select i1 %120, ptr %34, ptr %35
  %122 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %121) #11
  store ptr %122, ptr %36, align 8, !tbaa !69
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %121) #11
  %123 = load ptr, ptr %36, align 8, !tbaa !69
  %124 = getelementptr inbounds %struct.BMVert, ptr %123, i64 0, i32 2
  store ptr %124, ptr %25, align 8, !tbaa !57
  %125 = getelementptr inbounds %struct.BMVert, ptr %123, i64 0, i32 3
  store ptr %125, ptr %26, align 8, !tbaa !58
  %126 = load ptr, ptr %123, align 8, !tbaa !70
  %127 = load i32, ptr %37, align 8, !tbaa !73
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, ptr %126, i64 %128
  store ptr %129, ptr %27, align 8, !tbaa !61
  %130 = load i32, ptr %10, align 4, !tbaa !41
  %131 = load i32, ptr %23, align 4, !tbaa !55
  %132 = load i32, ptr %17, align 4, !tbaa !49
  br label %133

133:                                              ; preds = %114, %118, %116, %83, %88
  %134 = phi i32 [ %69, %114 ], [ %132, %118 ], [ %69, %116 ], [ %69, %83 ], [ %69, %88 ]
  %135 = phi i32 [ %72, %114 ], [ %131, %118 ], [ %72, %116 ], [ %72, %83 ], [ %72, %88 ]
  %136 = phi i32 [ %71, %114 ], [ %130, %118 ], [ %71, %116 ], [ %71, %83 ], [ %71, %88 ]
  %137 = phi ptr [ %115, %114 ], [ %129, %118 ], [ %117, %116 ], [ %84, %83 ], [ %84, %88 ]
  %138 = load float, ptr %137, align 4, !tbaa !101
  %139 = load ptr, ptr %38, align 8, !tbaa !86
  %140 = sext i32 %136 to i64
  %141 = getelementptr inbounds float, ptr %139, i64 %140
  store float %138, ptr %141, align 4, !tbaa !101
  br label %142

142:                                              ; preds = %88, %133
  %143 = phi i32 [ %69, %88 ], [ %134, %133 ]
  %144 = phi i32 [ %70, %88 ], [ %134, %133 ]
  %145 = phi i32 [ %71, %88 ], [ %136, %133 ]
  %146 = phi i32 [ %72, %88 ], [ %135, %133 ]
  %147 = add nsw i32 %146, 1
  store i32 %147, ptr %23, align 4, !tbaa !55
  %148 = add nsw i32 %145, 1
  store i32 %148, ptr %10, align 4, !tbaa !41
  %149 = icmp slt i32 %147, %144
  br i1 %149, label %68, label %150, !llvm.loop !102

150:                                              ; preds = %142
  %151 = load i32, ptr %22, align 8, !tbaa !51
  %152 = load i32, ptr %18, align 8, !tbaa !50
  br label %153

153:                                              ; preds = %150, %60
  %154 = phi i32 [ %143, %150 ], [ %61, %60 ]
  %155 = phi i32 [ %152, %150 ], [ %62, %60 ]
  %156 = phi i32 [ %151, %150 ], [ %63, %60 ]
  %157 = phi i32 [ %144, %150 ], [ %64, %60 ]
  %158 = phi i32 [ %148, %150 ], [ %65, %60 ]
  %159 = phi i32 [ %144, %150 ], [ %66, %60 ]
  %160 = add nsw i32 %156, 1
  store i32 %160, ptr %22, align 8, !tbaa !51
  %161 = icmp slt i32 %160, %155
  br i1 %161, label %60, label %162, !llvm.loop !103

162:                                              ; preds = %153
  %163 = load i32, ptr %3, align 8, !tbaa !45
  %164 = load i32, ptr %11, align 8, !tbaa !46
  br label %165

165:                                              ; preds = %162, %47
  %166 = phi i32 [ %164, %162 ], [ %40, %47 ]
  %167 = phi i32 [ %163, %162 ], [ %42, %47 ]
  %168 = phi i32 [ %158, %162 ], [ %41, %47 ]
  %169 = add nsw i32 %167, 1
  store i32 %169, ptr %3, align 8, !tbaa !45
  %170 = icmp slt i32 %169, %166
  br i1 %170, label %39, label %171, !llvm.loop !104

171:                                              ; preds = %165, %2
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %3) #12
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sculpt_undo_push_begin(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @ED_undo_paint_push_begin(i32 noundef 1, ptr noundef %0, ptr noundef nonnull @sculpt_undo_restore, ptr noundef nonnull @sculpt_undo_free, ptr noundef nonnull @sculpt_undo_cleanup) #10
  ret void
}

; Function Attrs: optsize
declare void @ED_undo_paint_push_begin(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sculpt_undo_restore(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %5 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #10
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  %8 = tail call ptr @CTX_data_active_object(ptr noundef %0) #10
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  %11 = load ptr, ptr %1, align 8, !tbaa !23
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 4
  br label %15

15:                                               ; preds = %13, %24
  %16 = phi ptr [ %11, %13 ], [ %25, %24 ]
  %17 = getelementptr inbounds %struct.SculptUndoNode, ptr %16, i64 0, i32 3
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %14) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.SculptUndoNode, ptr %16, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !30
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %27, label %24

24:                                               ; preds = %15, %20
  %25 = load ptr, ptr %16, align 8, !tbaa !23
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %15, !llvm.loop !112

27:                                               ; preds = %24, %20, %2
  %28 = phi i8 [ 0, %2 ], [ 1, %20 ], [ 0, %24 ]
  tail call void @BKE_sculpt_update_mesh_elements(ptr noundef %4, ptr noundef %7, ptr noundef %8, i8 noundef zeroext 0, i8 noundef zeroext %28) #10
  %29 = tail call ptr @mesh_get_derived_final(ptr noundef %4, ptr noundef %8, i64 noundef 0) #10
  %30 = load ptr, ptr %1, align 8, !tbaa !23
  %31 = icmp eq ptr %30, null
  br i1 %31, label %92, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc i32 @sculpt_undo_bmesh_restore(ptr noundef %0, ptr noundef nonnull %30, ptr noundef %8, ptr noundef %10) #11, !range !113
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %136

35:                                               ; preds = %32
  %36 = load ptr, ptr %1, align 8, !tbaa !23
  %37 = icmp eq ptr %36, null
  br i1 %37, label %92, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 4
  %40 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 4
  %41 = getelementptr inbounds %struct.DerivedMesh, ptr %29, i64 0, i32 65
  %42 = getelementptr inbounds %struct.DerivedMesh, ptr %29, i64 0, i32 63
  %43 = getelementptr inbounds %struct.DerivedMesh, ptr %29, i64 0, i32 64
  br label %44

44:                                               ; preds = %38, %85
  %45 = phi ptr [ %36, %38 ], [ %88, %85 ]
  %46 = phi i8 [ 0, %38 ], [ %87, %85 ]
  %47 = phi i8 [ 0, %38 ], [ %86, %85 ]
  %48 = getelementptr inbounds %struct.SculptUndoNode, ptr %45, i64 0, i32 3
  %49 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(1) %39) #13
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %85

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.SculptUndoNode, ptr %45, i64 0, i32 10
  %53 = load i32, ptr %52, align 4, !tbaa !91
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i32, ptr %40, align 8, !tbaa !90
  %57 = icmp eq i32 %56, %53
  br i1 %57, label %76, label %85

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.SculptUndoNode, ptr %45, i64 0, i32 13
  %60 = load i32, ptr %59, align 8, !tbaa !87
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %41, align 8, !tbaa !114
  %64 = icmp eq ptr %63, null
  br i1 %64, label %76, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %42, align 8, !tbaa !116
  %67 = tail call i32 %66(ptr noundef nonnull %29) #10
  %68 = load i32, ptr %59, align 8, !tbaa !87
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = load ptr, ptr %43, align 8, !tbaa !117
  %72 = tail call i32 %71(ptr noundef nonnull %29) #10
  %73 = getelementptr inbounds %struct.SculptUndoNode, ptr %45, i64 0, i32 14
  %74 = load i32, ptr %73, align 4, !tbaa !89
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %58, %62, %70, %55
  %77 = getelementptr inbounds %struct.SculptUndoNode, ptr %45, i64 0, i32 2
  %78 = load i32, ptr %77, align 8, !tbaa !30
  switch i32 %78, label %85 [
    i32 0, label %79
    i32 1, label %83
    i32 2, label %84
  ]

79:                                               ; preds = %76
  %80 = tail call fastcc i32 @sculpt_undo_restore_coords(ptr noundef %0, ptr noundef %29, ptr noundef nonnull %45) #11, !range !113
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %81, i8 %46, i8 1
  br label %85

83:                                               ; preds = %76
  tail call fastcc void @sculpt_undo_restore_hidden(ptr noundef %0, ptr noundef %29, ptr noundef nonnull %45) #11
  br label %85

84:                                               ; preds = %76
  tail call fastcc void @sculpt_undo_restore_mask(ptr noundef %0, ptr noundef %29, ptr noundef nonnull %45) #11
  br label %85

85:                                               ; preds = %79, %76, %83, %84, %65, %70, %55, %44
  %86 = phi i8 [ %47, %55 ], [ %47, %76 ], [ %47, %84 ], [ 1, %83 ], [ %47, %65 ], [ %47, %70 ], [ %47, %44 ], [ %47, %79 ]
  %87 = phi i8 [ %46, %55 ], [ %46, %76 ], [ 1, %84 ], [ %46, %83 ], [ %46, %65 ], [ %46, %70 ], [ %46, %44 ], [ %82, %79 ]
  %88 = load ptr, ptr %45, align 8, !tbaa !23
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %44, !llvm.loop !118

90:                                               ; preds = %85
  %91 = icmp ne i8 %87, 0
  br label %92

92:                                               ; preds = %27, %90, %35
  %93 = phi i8 [ 0, %35 ], [ %86, %90 ], [ 0, %27 ]
  %94 = phi i1 [ false, %35 ], [ %91, %90 ], [ false, %27 ]
  store i8 %93, ptr %3, align 1, !tbaa !28
  %95 = icmp ne i8 %93, 0
  %96 = select i1 %94, i1 true, i1 %95
  br i1 %96, label %97, label %136

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 15
  %99 = load ptr, ptr %98, align 8, !tbaa !22
  call void @BKE_pbvh_search_callback(ptr noundef %99, ptr noundef null, ptr noundef null, ptr noundef nonnull @update_cb, ptr noundef nonnull %3) #10
  %100 = load ptr, ptr %98, align 8, !tbaa !22
  call void @BKE_pbvh_update(ptr noundef %100, i32 noundef 44, ptr noundef null) #10
  %101 = call ptr @BKE_sculpt_multires_active(ptr noundef %4, ptr noundef %8) #10
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %97
  %104 = load i8, ptr %3, align 1, !tbaa !28
  %105 = icmp eq i8 %104, 0
  %106 = select i1 %105, i32 1, i32 2
  call void @multires_mark_as_modified(ptr noundef %8, i32 noundef %106) #10
  br label %107

107:                                              ; preds = %103, %97
  %108 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %109 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 7
  %110 = load ptr, ptr %109, align 8, !tbaa !27
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 17
  %114 = load i8, ptr %113, align 1, !tbaa !92
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %107, %112
  %117 = load ptr, ptr %108, align 8, !tbaa !34
  %118 = getelementptr inbounds %struct.Mesh, ptr %117, i64 0, i32 15
  %119 = load ptr, ptr %118, align 8, !tbaa !119
  %120 = getelementptr inbounds %struct.Mesh, ptr %117, i64 0, i32 26
  %121 = load i32, ptr %120, align 8, !tbaa !36
  %122 = getelementptr inbounds %struct.Mesh, ptr %117, i64 0, i32 12
  %123 = load ptr, ptr %122, align 8, !tbaa !120
  %124 = getelementptr inbounds %struct.Mesh, ptr %117, i64 0, i32 28
  %125 = load i32, ptr %124, align 8, !tbaa !121
  call void @BKE_mesh_calc_normals_tessface(ptr noundef %119, i32 noundef %121, ptr noundef %123, i32 noundef %125, ptr noundef null) #10
  call void @BKE_free_sculptsession_deformMats(ptr noundef nonnull %10) #10
  br label %131

126:                                              ; preds = %112
  %127 = load ptr, ptr %108, align 8, !tbaa !34
  %128 = getelementptr inbounds %struct.ID, ptr %127, i64 0, i32 6
  %129 = load i32, ptr %128, align 4, !tbaa !122
  %130 = icmp slt i32 %129, 2
  br i1 %130, label %132, label %131

131:                                              ; preds = %116, %126
  call void @DAG_id_tag_update(ptr noundef nonnull %8, i16 noundef signext 2) #10
  br label %133

132:                                              ; preds = %126
  call void @sculpt_update_object_bounding_box(ptr noundef nonnull %8) #10
  br label %133

133:                                              ; preds = %132, %131
  %134 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 120
  %135 = load ptr, ptr %134, align 8, !tbaa !123
  call void @GPU_drawobject_free(ptr noundef %135) #10
  br label %136

136:                                              ; preds = %133, %92, %32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sculpt_undo_free(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !23
  %3 = icmp eq ptr %2, null
  br i1 %3, label %107, label %4

4:                                                ; preds = %1, %104
  %5 = phi ptr [ %105, %104 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  tail call void %10(ptr noundef nonnull %7) #10
  br label %11

11:                                               ; preds = %9, %4
  %12 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !84
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  tail call void %16(ptr noundef nonnull %13) #10
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !25
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  tail call void %22(ptr noundef nonnull %19) #10
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 16
  %25 = load ptr, ptr %24, align 8, !tbaa !19
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  tail call void %28(ptr noundef nonnull %25) #10
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !93
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  tail call void %34(ptr noundef nonnull %31) #10
  br label %35

35:                                               ; preds = %33, %29
  %36 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 12
  %37 = load ptr, ptr %36, align 8, !tbaa !85
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  tail call void %40(ptr noundef nonnull %37) #10
  br label %41

41:                                               ; preds = %39, %35
  %42 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 17
  %43 = load ptr, ptr %42, align 8, !tbaa !124
  %44 = icmp eq ptr %43, null
  br i1 %44, label %69, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 15
  %47 = load i32, ptr %46, align 8, !tbaa !88
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %45, %59
  %50 = phi i32 [ %60, %59 ], [ %47, %45 ]
  %51 = phi i64 [ %61, %59 ], [ 0, %45 ]
  %52 = load ptr, ptr %42, align 8, !tbaa !124
  %53 = getelementptr inbounds ptr, ptr %52, i64 %51
  %54 = load ptr, ptr %53, align 8, !tbaa !23
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  tail call void %57(ptr noundef nonnull %54) #10
  %58 = load i32, ptr %46, align 8, !tbaa !88
  br label %59

59:                                               ; preds = %49, %56
  %60 = phi i32 [ %50, %49 ], [ %58, %56 ]
  %61 = add nuw nsw i64 %51, 1
  %62 = sext i32 %60 to i64
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %49, label %64, !llvm.loop !125

64:                                               ; preds = %59
  %65 = load ptr, ptr %42, align 8, !tbaa !124
  br label %66

66:                                               ; preds = %64, %45
  %67 = phi ptr [ %65, %64 ], [ %43, %45 ]
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  tail call void %68(ptr noundef %67) #10
  br label %69

69:                                               ; preds = %66, %41
  %70 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 8
  %71 = load ptr, ptr %70, align 8, !tbaa !86
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  tail call void %74(ptr noundef nonnull %71) #10
  br label %75

75:                                               ; preds = %73, %69
  %76 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 18
  %77 = load ptr, ptr %76, align 8, !tbaa !33
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  tail call void @BM_log_entry_drop(ptr noundef nonnull %77) #10
  br label %80

80:                                               ; preds = %79, %75
  %81 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 24
  %82 = load i32, ptr %81, align 8, !tbaa !126
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 20
  tail call void @CustomData_free(ptr noundef nonnull %85, i32 noundef %82) #10
  br label %86

86:                                               ; preds = %84, %80
  %87 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 25
  %88 = load i32, ptr %87, align 4, !tbaa !127
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 21
  tail call void @CustomData_free(ptr noundef nonnull %91, i32 noundef %88) #10
  br label %92

92:                                               ; preds = %90, %86
  %93 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 26
  %94 = load i32, ptr %93, align 8, !tbaa !128
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 22
  tail call void @CustomData_free(ptr noundef nonnull %97, i32 noundef %94) #10
  br label %98

98:                                               ; preds = %96, %92
  %99 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 27
  %100 = load i32, ptr %99, align 4, !tbaa !129
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 23
  tail call void @CustomData_free(ptr noundef nonnull %103, i32 noundef %100) #10
  br label %104

104:                                              ; preds = %98, %102
  %105 = load ptr, ptr %5, align 8, !tbaa !23
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %4, !llvm.loop !130

107:                                              ; preds = %104, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @sculpt_undo_cleanup(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #10
  %4 = load ptr, ptr %1, align 8, !tbaa !29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SculptUndoNode, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %8) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.SculptUndoNode, ptr %4, i64 0, i32 18
  %13 = load ptr, ptr %12, align 8, !tbaa !33
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @BM_log_cleanup_entry(ptr noundef nonnull %13) #10
  br label %16

16:                                               ; preds = %2, %6, %11, %15
  %17 = phi i8 [ 1, %15 ], [ 1, %11 ], [ 0, %6 ], [ 0, %2 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sculpt_undo_push_end() local_unnamed_addr #0 {
  %1 = tail call ptr @undo_paint_push_get_list(i32 noundef 1) #10
  %2 = load ptr, ptr %1, align 8, !tbaa !23
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %0, %16
  %5 = phi ptr [ %17, %16 ], [ %2, %0 ]
  %6 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !84
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  tail call void %10(ptr noundef nonnull %7) #10
  store ptr null, ptr %6, align 8, !tbaa !84
  br label %11

11:                                               ; preds = %9, %4
  %12 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !82
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @BKE_pbvh_node_layer_disp_free(ptr noundef nonnull %13) #10
  br label %16

16:                                               ; preds = %11, %15
  %17 = load ptr, ptr %5, align 8, !tbaa !23
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %4, !llvm.loop !131

19:                                               ; preds = %16, %0
  tail call void @ED_undo_paint_push_end(i32 noundef 1) #10
  ret void
}

; Function Attrs: optsize
declare void @BKE_pbvh_node_layer_disp_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_undo_paint_push_end(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_log_entry_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_log_before_all_removed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_copy(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_log_all_added(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @pbvh_vertex_iter_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_no(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !132
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_mask(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !133
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_next(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 {
  %3 = tail call fastcc ptr @CCG_elem_offset(ptr noundef %0, ptr noundef %1, i32 noundef 1) #11
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_gsetIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %0) #11, !range !68
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_gsetIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef %0) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BLI_gsetIterator_step(ptr noundef %0) unnamed_addr #0 {
  tail call void @BLI_ghashIterator_step(ptr noundef %0) #10
  ret void
}

; Function Attrs: optsize
declare void @BM_log_vert_before_modified(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_pbvh_bmesh_node_faces(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BLI_gsetIterator_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @BLI_ghashIterator_init(ptr noundef %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: optsize
declare void @BM_log_face_modified(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_offset(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !134
  %6 = mul nsw i32 %5, %2
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %1, i64 %7
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !135
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !135
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !136
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @undo_paint_push_count_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_undo_alloc_and_store_hidden(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.SculptUndoNode, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %7 = tail call ptr @BKE_pbvh_grid_hidden(ptr noundef %0) #10
  call void @BKE_pbvh_node_get_grids(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #10
  %8 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !23
  %9 = load i32, ptr %4, align 4, !tbaa !24
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  %12 = call ptr %8(i64 noundef %11, ptr noundef nonnull @.str.8) #10
  %13 = getelementptr inbounds %struct.SculptUndoNode, ptr %1, i64 0, i32 17
  store ptr %12, ptr %13, align 8, !tbaa !124
  %14 = load i32, ptr %4, align 4, !tbaa !24
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %2, %35
  %17 = phi i32 [ %36, %35 ], [ %14, %2 ]
  %18 = phi i64 [ %37, %35 ], [ 0, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !23
  %20 = getelementptr inbounds i32, ptr %19, i64 %18
  %21 = load i32, ptr %20, align 4, !tbaa !24
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %7, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !23
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %16
  %27 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !23
  %28 = call ptr %27(ptr noundef nonnull %24) #10
  %29 = load ptr, ptr %13, align 8, !tbaa !124
  %30 = getelementptr inbounds ptr, ptr %29, i64 %18
  store ptr %28, ptr %30, align 8, !tbaa !23
  %31 = load i32, ptr %4, align 4, !tbaa !24
  br label %35

32:                                               ; preds = %16
  %33 = load ptr, ptr %13, align 8, !tbaa !124
  %34 = getelementptr inbounds ptr, ptr %33, i64 %18
  store ptr null, ptr %34, align 8, !tbaa !23
  br label %35

35:                                               ; preds = %26, %32
  %36 = phi i32 [ %31, %26 ], [ %17, %32 ]
  %37 = add nuw nsw i64 %18, 1
  %38 = sext i32 %36 to i64
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %16, label %40, !llvm.loop !138

40:                                               ; preds = %35, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_pbvh_grid_hidden(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %1, align 4, !tbaa !101
  store float %3, ptr %0, align 4, !tbaa !101
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !101
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !101
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !101
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3_short(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load i16, ptr %1, align 2, !tbaa !139
  store i16 %3, ptr %0, align 2, !tbaa !139
  %4 = getelementptr inbounds i16, ptr %1, i64 1
  %5 = load i16, ptr %4, align 2, !tbaa !139
  %6 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %5, ptr %6, align 2, !tbaa !139
  %7 = getelementptr inbounds i16, ptr %1, i64 2
  %8 = load i16, ptr %7, align 2, !tbaa !139
  %9 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %8, ptr %9, align 2, !tbaa !139
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_float_to_short_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load <2 x float>, ptr %1, align 4, !tbaa !101
  %4 = fmul <2 x float> %3, <float 3.276700e+04, float 3.276700e+04>
  %5 = fptosi <2 x float> %4 to <2 x i16>
  store <2 x i16> %5, ptr %0, align 2, !tbaa !139
  %6 = getelementptr inbounds float, ptr %1, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !101
  %8 = fmul float %7, 3.276700e+04
  %9 = fptosi float %8 to i16
  %10 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %9, ptr %10, align 2, !tbaa !139
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BKE_sculpt_update_mesh_elements(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @sculpt_undo_bmesh_restore(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.SculptUndoNode, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !30
  switch i32 %6, label %9 [
    i32 3, label %7
    i32 4, label %8
  ]

7:                                                ; preds = %4
  tail call fastcc void @sculpt_undo_bmesh_restore_begin(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #11
  br label %14

8:                                                ; preds = %4
  tail call fastcc void @sculpt_undo_bmesh_restore_end(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #11
  br label %14

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.SculptSession, ptr %3, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !32
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call fastcc void @sculpt_undo_bmesh_restore_generic(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3) #11
  br label %14

14:                                               ; preds = %9, %13, %8, %7
  %15 = phi i32 [ 1, %13 ], [ 1, %8 ], [ 1, %7 ], [ 0, %9 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @sculpt_undo_restore_coords(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.CCGKey, align 4
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %6 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #10
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !105
  %9 = tail call ptr @CTX_data_active_object(ptr noundef %0) #10
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 10
  %13 = load i32, ptr %12, align 4, !tbaa !91
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %133, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !27
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !25
  br label %46

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.KeyBlock, ptr %17, i64 0, i32 11
  %24 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 28
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %24) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !25
  br label %57

30:                                               ; preds = %22
  %31 = tail call ptr @BKE_key_from_object(ptr noundef nonnull %9) #10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %184, label %33

33:                                               ; preds = %30
  %34 = tail call ptr @BKE_keyblock_find_name(ptr noundef nonnull %31, ptr noundef nonnull %24) #10
  %35 = icmp eq ptr %34, null
  br i1 %35, label %184, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.Key, ptr %31, i64 0, i32 6
  %38 = tail call i32 @BLI_findindex(ptr noundef nonnull %37, ptr noundef nonnull %34) #10
  %39 = trunc i32 %38 to i16
  %40 = add i16 %39, 1
  %41 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 115
  store i16 %40, ptr %41, align 2, !tbaa !140
  tail call void @BKE_sculpt_update_mesh_elements(ptr noundef %5, ptr noundef %8, ptr noundef nonnull %9, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 89849856, ptr noundef nonnull %9) #10
  %42 = load ptr, ptr %16, align 8, !tbaa !27
  %43 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 11
  %44 = load ptr, ptr %43, align 8, !tbaa !25
  %45 = icmp eq ptr %42, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %19, %36
  %47 = phi ptr [ %21, %19 ], [ %44, %36 ]
  %48 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !141
  %50 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !26
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %184

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 17
  %55 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 6
  %56 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 5
  br label %100

57:                                               ; preds = %27, %36
  %58 = phi ptr [ %29, %27 ], [ %44, %36 ]
  %59 = phi ptr [ %17, %27 ], [ %42, %36 ]
  %60 = tail call ptr @BKE_key_convert_to_vertcos(ptr noundef nonnull %9, ptr noundef nonnull %59) #10
  %61 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 9
  %62 = load i32, ptr %61, align 8, !tbaa !26
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 17
  %66 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 6
  %67 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 5
  br label %68

68:                                               ; preds = %64, %90
  %69 = phi i64 [ 0, %64 ], [ %91, %90 ]
  %70 = load i8, ptr %65, align 1, !tbaa !92
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds i32, ptr %58, i64 %69
  %74 = load i32, ptr %73, align 4, !tbaa !24
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [3 x float], ptr %60, i64 %75
  %77 = trunc i64 %69 to i32
  tail call fastcc void @sculpt_undo_restore_deformed(ptr noundef nonnull %11, ptr noundef nonnull %2, i32 noundef %77, i32 noundef %74, ptr noundef %76) #11
  br label %90

78:                                               ; preds = %68
  %79 = load ptr, ptr %66, align 8, !tbaa !93
  %80 = icmp eq ptr %79, null
  %81 = getelementptr inbounds i32, ptr %58, i64 %69
  %82 = load i32, ptr %81, align 4, !tbaa !24
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [3 x float], ptr %60, i64 %83
  br i1 %80, label %87, label %85

85:                                               ; preds = %78
  %86 = getelementptr inbounds [3 x float], ptr %79, i64 %69
  tail call fastcc void @swap_v3_v3(ptr noundef %84, ptr noundef nonnull %86) #11
  br label %90

87:                                               ; preds = %78
  %88 = load ptr, ptr %67, align 8, !tbaa !83
  %89 = getelementptr inbounds [3 x float], ptr %88, i64 %69
  tail call fastcc void @swap_v3_v3(ptr noundef %84, ptr noundef %89) #11
  br label %90

90:                                               ; preds = %72, %87, %85
  %91 = add nuw nsw i64 %69, 1
  %92 = load i32, ptr %61, align 8, !tbaa !26
  %93 = sext i32 %92 to i64
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %68, label %95, !llvm.loop !142

95:                                               ; preds = %90, %57
  %96 = load ptr, ptr %16, align 8, !tbaa !27
  tail call void @sculpt_vertcos_to_key(ptr noundef %9, ptr noundef %96, ptr noundef %60) #10
  %97 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 15
  %98 = load ptr, ptr %97, align 8, !tbaa !22
  tail call void @BKE_pbvh_apply_vertCos(ptr noundef %98, ptr noundef %60) #10
  %99 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  tail call void %99(ptr noundef %60) #10
  br label %184

100:                                              ; preds = %53, %122
  %101 = phi i64 [ 0, %53 ], [ %129, %122 ]
  %102 = load i8, ptr %54, align 1, !tbaa !92
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds i32, ptr %47, i64 %101
  %106 = load i32, ptr %105, align 4, !tbaa !24
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.MVert, ptr %49, i64 %107
  %109 = trunc i64 %101 to i32
  tail call fastcc void @sculpt_undo_restore_deformed(ptr noundef nonnull %11, ptr noundef nonnull %2, i32 noundef %109, i32 noundef %106, ptr noundef %108) #11
  br label %122

110:                                              ; preds = %100
  %111 = load ptr, ptr %55, align 8, !tbaa !93
  %112 = icmp eq ptr %111, null
  %113 = getelementptr inbounds i32, ptr %47, i64 %101
  %114 = load i32, ptr %113, align 4, !tbaa !24
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.MVert, ptr %49, i64 %115
  br i1 %112, label %119, label %117

117:                                              ; preds = %110
  %118 = getelementptr inbounds [3 x float], ptr %111, i64 %101
  tail call fastcc void @swap_v3_v3(ptr noundef %116, ptr noundef nonnull %118) #11
  br label %122

119:                                              ; preds = %110
  %120 = load ptr, ptr %56, align 8, !tbaa !83
  %121 = getelementptr inbounds [3 x float], ptr %120, i64 %101
  tail call fastcc void @swap_v3_v3(ptr noundef %116, ptr noundef %121) #11
  br label %122

122:                                              ; preds = %117, %119, %104
  %123 = getelementptr inbounds i32, ptr %47, i64 %101
  %124 = load i32, ptr %123, align 4, !tbaa !24
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.MVert, ptr %49, i64 %125, i32 2
  %127 = load i8, ptr %126, align 2, !tbaa !98
  %128 = or i8 %127, -128
  store i8 %128, ptr %126, align 2, !tbaa !98
  %129 = add nuw nsw i64 %101, 1
  %130 = load i32, ptr %50, align 8, !tbaa !26
  %131 = sext i32 %130 to i64
  %132 = icmp slt i64 %129, %131
  br i1 %132, label %100, label %184, !llvm.loop !143

133:                                              ; preds = %3
  %134 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 13
  %135 = load i32, ptr %134, align 8, !tbaa !87
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %184, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 65
  %139 = load ptr, ptr %138, align 8, !tbaa !114
  %140 = icmp eq ptr %139, null
  br i1 %140, label %184, label %141

141:                                              ; preds = %137
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #12
  %142 = tail call ptr %139(ptr noundef nonnull %1) #10
  %143 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 64
  %144 = load ptr, ptr %143, align 8, !tbaa !117
  %145 = tail call i32 %144(ptr noundef nonnull %1) #10
  %146 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 68
  %147 = load ptr, ptr %146, align 8, !tbaa !144
  call void %147(ptr noundef nonnull %1, ptr noundef nonnull %4) #10
  %148 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 15
  %149 = load i32, ptr %148, align 8, !tbaa !88
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %183

151:                                              ; preds = %141
  %152 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 5
  %153 = load ptr, ptr %152, align 8, !tbaa !83
  %154 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 16
  %155 = mul i32 %145, %145
  %156 = icmp eq i32 %145, 0
  %157 = call i32 @llvm.umax.i32(i32 %155, i32 1)
  br label %158

158:                                              ; preds = %151, %177
  %159 = phi i32 [ %149, %151 ], [ %178, %177 ]
  %160 = phi i64 [ 0, %151 ], [ %180, %177 ]
  %161 = phi ptr [ %153, %151 ], [ %179, %177 ]
  %162 = load ptr, ptr %154, align 8, !tbaa !19
  %163 = getelementptr inbounds i32, ptr %162, i64 %160
  %164 = load i32, ptr %163, align 4, !tbaa !24
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds ptr, ptr %142, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !23
  br i1 %156, label %177, label %168

168:                                              ; preds = %158, %168
  %169 = phi ptr [ %173, %168 ], [ %161, %158 ]
  %170 = phi i32 [ %172, %168 ], [ 0, %158 ]
  %171 = call fastcc ptr @CCG_elem_offset_co(ptr noundef nonnull %4, ptr noundef %167, i32 noundef %170) #11
  call fastcc void @swap_v3_v3(ptr noundef %171, ptr noundef %169) #11
  %172 = add nuw nsw i32 %170, 1
  %173 = getelementptr inbounds [3 x float], ptr %169, i64 1
  %174 = icmp eq i32 %172, %157
  br i1 %174, label %175, label %168, !llvm.loop !145

175:                                              ; preds = %168
  %176 = load i32, ptr %148, align 8, !tbaa !88
  br label %177

177:                                              ; preds = %175, %158
  %178 = phi i32 [ %159, %158 ], [ %176, %175 ]
  %179 = phi ptr [ %161, %158 ], [ %173, %175 ]
  %180 = add nuw nsw i64 %160, 1
  %181 = sext i32 %178 to i64
  %182 = icmp slt i64 %180, %181
  br i1 %182, label %158, label %183, !llvm.loop !146

183:                                              ; preds = %177, %141
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #12
  br label %184

184:                                              ; preds = %122, %46, %30, %33, %95, %183, %137, %133
  %185 = phi i32 [ 1, %133 ], [ 1, %137 ], [ 1, %183 ], [ 1, %95 ], [ 0, %33 ], [ 0, %30 ], [ 1, %46 ], [ 1, %122 ]
  ret i32 %185
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_undo_restore_hidden(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 10
  %6 = load i32, ptr %5, align 4, !tbaa !91
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %51, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !141
  %13 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !26
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %88

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 11
  %18 = load ptr, ptr %17, align 8, !tbaa !25
  %19 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !85
  br label %21

21:                                               ; preds = %16, %21
  %22 = phi i64 [ 0, %16 ], [ %47, %21 ]
  %23 = getelementptr inbounds i32, ptr %18, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !24
  %25 = sext i32 %24 to i64
  %26 = trunc i64 %22 to i32
  %27 = lshr i64 %22, 5
  %28 = and i64 %27, 134217727
  %29 = getelementptr inbounds i32, ptr %20, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !24
  %31 = and i32 %26, 31
  %32 = shl nuw i32 1, %31
  %33 = and i32 %30, %32
  %34 = getelementptr inbounds %struct.MVert, ptr %12, i64 %25, i32 2
  %35 = load i8, ptr %34, align 2, !tbaa !98
  %36 = and i8 %35, 16
  %37 = icmp eq i8 %36, 0
  %38 = xor i32 %32, -1
  %39 = and i32 %30, %38
  %40 = or i32 %30, %32
  %41 = select i1 %37, i32 %39, i32 %40
  store i32 %41, ptr %29, align 4, !tbaa !24
  %42 = icmp eq i32 %33, 0
  %43 = and i8 %35, 111
  %44 = select i1 %42, i8 0, i8 16
  %45 = or disjoint i8 %43, %44
  %46 = or disjoint i8 %45, -128
  store i8 %46, ptr %34, align 2, !tbaa !98
  %47 = add nuw nsw i64 %22, 1
  %48 = load i32, ptr %13, align 8, !tbaa !26
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %21, label %88, !llvm.loop !147

51:                                               ; preds = %3
  %52 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 13
  %53 = load i32, ptr %52, align 8, !tbaa !87
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %88, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 65
  %57 = load ptr, ptr %56, align 8, !tbaa !114
  %58 = icmp eq ptr %57, null
  br i1 %58, label %88, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 70
  %61 = load ptr, ptr %60, align 8, !tbaa !148
  %62 = tail call ptr %61(ptr noundef nonnull %1) #10
  %63 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 15
  %64 = load i32, ptr %63, align 8, !tbaa !88
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 17
  %68 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 16
  %69 = zext nneg i32 %64 to i64
  br label %70

70:                                               ; preds = %66, %70
  %71 = phi i64 [ 0, %66 ], [ %86, %70 ]
  %72 = load ptr, ptr %67, align 8, !tbaa !124
  %73 = getelementptr inbounds ptr, ptr %72, i64 %71
  %74 = load ptr, ptr %73, align 8, !tbaa !23
  %75 = load ptr, ptr %68, align 8, !tbaa !19
  %76 = getelementptr inbounds i32, ptr %75, i64 %71
  %77 = load i32, ptr %76, align 4, !tbaa !24
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds ptr, ptr %62, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !23
  store ptr %80, ptr %73, align 8, !tbaa !23
  %81 = load ptr, ptr %68, align 8, !tbaa !19
  %82 = getelementptr inbounds i32, ptr %81, i64 %71
  %83 = load i32, ptr %82, align 4, !tbaa !24
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds ptr, ptr %62, i64 %84
  store ptr %74, ptr %85, align 8, !tbaa !23
  %86 = add nuw nsw i64 %71, 1
  %87 = icmp eq i64 %86, %69
  br i1 %87, label %88, label %70, !llvm.loop !149

88:                                               ; preds = %21, %70, %8, %59, %51, %55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_undo_restore_mask(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.CCGKey, align 4
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #10
  %6 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 10
  %7 = load i32, ptr %6, align 4, !tbaa !91
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !25
  %14 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !141
  %16 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !150
  %18 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !26
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %88

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !86
  %24 = zext nneg i32 %19 to i64
  br label %25

25:                                               ; preds = %21, %25
  %26 = phi i64 [ 0, %21 ], [ %37, %25 ]
  %27 = getelementptr inbounds i32, ptr %13, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !24
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, ptr %17, i64 %29
  %31 = load float, ptr %30, align 4, !tbaa !101
  %32 = getelementptr inbounds float, ptr %23, i64 %26
  %33 = load float, ptr %32, align 4, !tbaa !101
  store float %33, ptr %30, align 4, !tbaa !101
  store float %31, ptr %32, align 4, !tbaa !101
  %34 = getelementptr inbounds %struct.MVert, ptr %15, i64 %29, i32 2
  %35 = load i8, ptr %34, align 2, !tbaa !98
  %36 = or i8 %35, -128
  store i8 %36, ptr %34, align 2, !tbaa !98
  %37 = add nuw nsw i64 %26, 1
  %38 = icmp eq i64 %37, %24
  br i1 %38, label %88, label %25, !llvm.loop !151

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 13
  %41 = load i32, ptr %40, align 8, !tbaa !87
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %88, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 65
  %45 = load ptr, ptr %44, align 8, !tbaa !114
  %46 = icmp eq ptr %45, null
  br i1 %46, label %88, label %47

47:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #12
  %48 = tail call ptr %45(ptr noundef nonnull %1) #10
  %49 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 64
  %50 = load ptr, ptr %49, align 8, !tbaa !117
  %51 = tail call i32 %50(ptr noundef nonnull %1) #10
  %52 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 68
  %53 = load ptr, ptr %52, align 8, !tbaa !144
  call void %53(ptr noundef nonnull %1, ptr noundef nonnull %4) #10
  %54 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 15
  %55 = load i32, ptr %54, align 8, !tbaa !88
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %87

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !86
  %60 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 16
  %61 = load ptr, ptr %60, align 8, !tbaa !19
  %62 = mul i32 %51, %51
  %63 = icmp eq i32 %51, 0
  %64 = call i32 @llvm.umax.i32(i32 %62, i32 1)
  %65 = zext nneg i32 %55 to i64
  br label %66

66:                                               ; preds = %57, %83
  %67 = phi i64 [ 0, %57 ], [ %85, %83 ]
  %68 = phi ptr [ %59, %57 ], [ %84, %83 ]
  %69 = getelementptr inbounds i32, ptr %61, i64 %67
  %70 = load i32, ptr %69, align 4, !tbaa !24
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds ptr, ptr %48, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !23
  br i1 %63, label %83, label %74

74:                                               ; preds = %66, %74
  %75 = phi i32 [ %80, %74 ], [ 0, %66 ]
  %76 = phi ptr [ %81, %74 ], [ %68, %66 ]
  %77 = call fastcc ptr @CCG_elem_offset_mask(ptr noundef nonnull %4, ptr noundef %73, i32 noundef %75) #11
  %78 = load float, ptr %77, align 4, !tbaa !101
  %79 = load float, ptr %76, align 4, !tbaa !101
  store float %79, ptr %77, align 4, !tbaa !101
  store float %78, ptr %76, align 4, !tbaa !101
  %80 = add nuw nsw i32 %75, 1
  %81 = getelementptr inbounds float, ptr %76, i64 1
  %82 = icmp eq i32 %80, %64
  br i1 %82, label %83, label %74, !llvm.loop !152

83:                                               ; preds = %74, %66
  %84 = phi ptr [ %68, %66 ], [ %81, %74 ]
  %85 = add nuw nsw i64 %67, 1
  %86 = icmp eq i64 %85, %65
  br i1 %86, label %87, label %66, !llvm.loop !153

87:                                               ; preds = %83, %47
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #12
  br label %88

88:                                               ; preds = %25, %9, %39, %43, %87
  ret void
}

; Function Attrs: optsize
declare void @BKE_pbvh_search_callback(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @update_cb(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  tail call void @BKE_pbvh_node_mark_update(ptr noundef %0) #10
  %3 = load i8, ptr %1, align 1, !tbaa !28
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @BKE_pbvh_node_mark_rebuild_draw(ptr noundef %0) #10
  br label %6

6:                                                ; preds = %5, %2
  tail call void @BKE_pbvh_node_fully_hidden_set(ptr noundef %0, i32 noundef 0) #10
  ret void
}

; Function Attrs: optsize
declare void @BKE_pbvh_update(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_sculpt_multires_active(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @multires_mark_as_modified(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_calc_normals_tessface(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_free_sculptsession_deformMats(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sculpt_update_object_bounding_box(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_drawobject_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_undo_bmesh_restore_begin(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.SculptUndoNode, ptr %1, i64 0, i32 19
  %6 = load i8, ptr %5, align 8, !tbaa !31
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @sculpt_dynamic_topology_disable(ptr noundef %0, ptr noundef nonnull %1) #10
  br label %14

9:                                                ; preds = %4
  tail call fastcc void @sculpt_undo_bmesh_enable(ptr noundef %2, ptr noundef nonnull %1) #11
  %10 = getelementptr inbounds %struct.SculptSession, ptr %3, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = getelementptr inbounds %struct.SculptSession, ptr %3, i64 0, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !32
  tail call void @BM_log_redo(ptr noundef %11, ptr noundef %13) #10
  br label %14

14:                                               ; preds = %9, %8
  %15 = phi i8 [ 1, %9 ], [ 0, %8 ]
  store i8 %15, ptr %5, align 8, !tbaa !31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_undo_bmesh_restore_end(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.SculptUndoNode, ptr %1, i64 0, i32 19
  %6 = load i8, ptr %5, align 8, !tbaa !31
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  tail call fastcc void @sculpt_undo_bmesh_enable(ptr noundef %2, ptr noundef nonnull %1) #11
  %9 = getelementptr inbounds %struct.SculptSession, ptr %3, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = getelementptr inbounds %struct.SculptSession, ptr %3, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !32
  tail call void @BM_log_undo(ptr noundef %10, ptr noundef %12) #10
  br label %14

13:                                               ; preds = %4
  tail call void @sculpt_dynamic_topology_disable(ptr noundef %0, ptr noundef null) #10
  br label %14

14:                                               ; preds = %13, %8
  %15 = phi i8 [ 1, %13 ], [ 0, %8 ]
  store i8 %15, ptr %5, align 8, !tbaa !31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_undo_bmesh_restore_generic(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.SculptUndoNode, ptr %0, i64 0, i32 19
  %7 = load i8, ptr %6, align 8, !tbaa !31
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.SculptSession, ptr %2, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = getelementptr inbounds %struct.SculptSession, ptr %2, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !32
  br i1 %8, label %14, label %13

13:                                               ; preds = %3
  tail call void @BM_log_undo(ptr noundef %10, ptr noundef %12) #10
  br label %15

14:                                               ; preds = %3
  tail call void @BM_log_redo(ptr noundef %10, ptr noundef %12) #10
  br label %15

15:                                               ; preds = %14, %13
  %16 = phi i8 [ 1, %14 ], [ 0, %13 ]
  store i8 %16, ptr %6, align 8, !tbaa !31
  %17 = getelementptr inbounds %struct.SculptUndoNode, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !30
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %40

20:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %21 = getelementptr inbounds %struct.SculptSession, ptr %2, i64 0, i32 15
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  call void @BKE_pbvh_search_gather(ptr noundef %22, ptr noundef null, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %4) #10
  %23 = load i32, ptr %4, align 4, !tbaa !24
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20, %25
  %26 = phi i64 [ %30, %25 ], [ 0, %20 ]
  %27 = load ptr, ptr %5, align 8, !tbaa !23
  %28 = getelementptr inbounds ptr, ptr %27, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !23
  call void @BKE_pbvh_node_mark_redraw(ptr noundef %29) #10
  %30 = add nuw nsw i64 %26, 1
  %31 = load i32, ptr %4, align 4, !tbaa !24
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %25, label %34, !llvm.loop !154

34:                                               ; preds = %25, %20
  %35 = load ptr, ptr %5, align 8, !tbaa !23
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  call void %38(ptr noundef nonnull %35) #10
  br label %39

39:                                               ; preds = %37, %34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %41

40:                                               ; preds = %15
  tail call void @sculpt_pbvh_clear(ptr noundef %1) #10
  br label %41

41:                                               ; preds = %40, %39
  ret void
}

; Function Attrs: optsize
declare void @sculpt_dynamic_topology_disable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_undo_bmesh_enable(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @sculpt_pbvh_clear(ptr noundef %0) #10
  %7 = tail call ptr @BM_mesh_create(ptr noundef nonnull @bm_mesh_allocsize_default) #10
  %8 = getelementptr inbounds %struct.SculptSession, ptr %4, i64 0, i32 10
  store ptr %7, ptr %8, align 8, !tbaa !17
  %9 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 24
  tail call void @BM_data_layer_add(ptr noundef %7, ptr noundef nonnull %9, i32 noundef 34) #10
  tail call void @sculpt_dyntopo_node_layers_add(ptr noundef %4) #10
  %10 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 38
  %11 = load i16, ptr %10, align 2, !tbaa !155
  %12 = or i16 %11, 1024
  store i16 %12, ptr %10, align 2, !tbaa !155
  %13 = load ptr, ptr %8, align 8, !tbaa !17
  %14 = getelementptr inbounds %struct.SculptUndoNode, ptr %1, i64 0, i32 18
  %15 = load ptr, ptr %14, align 8, !tbaa !33
  %16 = tail call ptr @BM_log_from_existing_entries_create(ptr noundef %13, ptr noundef %15) #10
  %17 = getelementptr inbounds %struct.SculptSession, ptr %4, i64 0, i32 14
  store ptr %16, ptr %17, align 8, !tbaa !32
  ret void
}

; Function Attrs: optsize
declare void @BM_log_redo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sculpt_pbvh_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_mesh_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_data_layer_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sculpt_dyntopo_node_layers_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_log_from_existing_entries_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_log_undo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pbvh_search_gather(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pbvh_node_mark_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_keyblock_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_key_convert_to_vertcos(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sculpt_undo_restore_deformed(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) unnamed_addr #8 {
  %6 = getelementptr inbounds %struct.SculptUndoNode, ptr %1, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds [3 x float], ptr %7, i64 %10
  tail call fastcc void @swap_v3_v3(ptr noundef %4, ptr noundef nonnull %11) #11
  %12 = getelementptr inbounds %struct.SculptUndoNode, ptr %1, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !83
  %14 = getelementptr inbounds [3 x float], ptr %13, i64 %10
  %15 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !156
  %17 = sext i32 %3 to i64
  %18 = getelementptr inbounds [3 x float], ptr %16, i64 %17
  tail call fastcc void @copy_v3_v3(ptr noundef %14, ptr noundef %18) #11
  br label %24

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.SculptUndoNode, ptr %1, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !83
  %22 = sext i32 %2 to i64
  %23 = getelementptr inbounds [3 x float], ptr %21, i64 %22
  tail call fastcc void @swap_v3_v3(ptr noundef %4, ptr noundef %23) #11
  br label %24

24:                                               ; preds = %19, %9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @swap_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #6 {
  %3 = load float, ptr %0, align 4, !tbaa !101
  %4 = load float, ptr %1, align 4, !tbaa !101
  store float %4, ptr %0, align 4, !tbaa !101
  store float %3, ptr %1, align 4, !tbaa !101
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !101
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !101
  store float %8, ptr %5, align 4, !tbaa !101
  store float %6, ptr %7, align 4, !tbaa !101
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !101
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !101
  store float %12, ptr %9, align 4, !tbaa !101
  store float %10, ptr %11, align 4, !tbaa !101
  ret void
}

; Function Attrs: optsize
declare void @sculpt_vertcos_to_key(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pbvh_apply_vertCos(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_offset_co(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) unnamed_addr #4 {
  %4 = tail call fastcc ptr @CCG_elem_offset(ptr noundef %0, ptr noundef %1, i32 noundef %2) #11
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @CCG_elem_offset_mask(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) unnamed_addr #5 {
  %4 = tail call fastcc ptr @CCG_elem_offset(ptr noundef %0, ptr noundef %1, i32 noundef %2) #11
  %5 = tail call fastcc ptr @CCG_elem_mask(ptr noundef %0, ptr noundef %4) #11
  ret ptr %5
}

; Function Attrs: optsize
declare void @BKE_pbvh_node_mark_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pbvh_node_mark_rebuild_draw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pbvh_node_fully_hidden_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_log_entry_drop(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_log_cleanup_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 128}
!6 = !{!"Object", !7, i64 0, !8, i64 120, !8, i64 128, !11, i64 136, !11, i64 138, !12, i64 140, !12, i64 144, !12, i64 148, !9, i64 152, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !13, i64 312, !8, i64 360, !14, i64 368, !14, i64 384, !14, i64 400, !14, i64 416, !12, i64 432, !12, i64 436, !8, i64 440, !8, i64 448, !12, i64 456, !12, i64 460, !9, i64 464, !9, i64 476, !9, i64 488, !9, i64 500, !9, i64 512, !9, i64 524, !9, i64 536, !9, i64 548, !9, i64 560, !9, i64 576, !9, i64 592, !9, i64 604, !15, i64 616, !15, i64 620, !9, i64 624, !9, i64 688, !9, i64 752, !9, i64 816, !9, i64 880, !12, i64 944, !11, i64 948, !11, i64 950, !11, i64 952, !11, i64 954, !11, i64 956, !11, i64 958, !11, i64 960, !11, i64 962, !11, i64 964, !9, i64 966, !9, i64 967, !12, i64 968, !12, i64 972, !12, i64 976, !12, i64 980, !12, i64 984, !15, i64 988, !15, i64 992, !15, i64 996, !15, i64 1000, !15, i64 1004, !15, i64 1008, !15, i64 1012, !15, i64 1016, !15, i64 1020, !15, i64 1024, !15, i64 1028, !15, i64 1032, !11, i64 1036, !11, i64 1038, !11, i64 1040, !9, i64 1042, !9, i64 1043, !11, i64 1044, !9, i64 1046, !9, i64 1047, !15, i64 1048, !15, i64 1052, !14, i64 1056, !14, i64 1072, !14, i64 1088, !14, i64 1104, !15, i64 1120, !11, i64 1124, !11, i64 1126, !9, i64 1128, !12, i64 1144, !12, i64 1148, !8, i64 1152, !9, i64 1160, !9, i64 1161, !11, i64 1162, !9, i64 1164, !14, i64 1176, !14, i64 1192, !14, i64 1208, !14, i64 1224, !8, i64 1240, !8, i64 1248, !8, i64 1256, !9, i64 1264, !9, i64 1265, !11, i64 1266, !15, i64 1268, !8, i64 1272, !8, i64 1280, !8, i64 1288, !8, i64 1296, !16, i64 1304, !16, i64 1312, !12, i64 1320, !12, i64 1324, !14, i64 1328, !14, i64 1344, !8, i64 1360, !8, i64 1368, !8, i64 1376, !9, i64 1384, !8, i64 1392, !14, i64 1400, !8, i64 1416}
!7 = !{!"ID", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32, !11, i64 98, !12, i64 100, !12, i64 104, !12, i64 108, !8, i64 112}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"short", !9, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!"bAnimVizSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44}
!14 = !{!"ListBase", !8, i64 0, !8, i64 8}
!15 = !{!"float", !9, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!18, !8, i64 72}
!18 = !{!"SculptSession", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !12, i64 32, !12, i64 36, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !12, i64 80, !12, i64 84, !9, i64 88, !8, i64 96, !8, i64 104, !9, i64 112, !9, i64 113, !8, i64 120, !8, i64 128, !8, i64 136, !9, i64 144, !12, i64 148, !8, i64 152, !12, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !9, i64 200, !9, i64 204, !9, i64 216, !12, i64 228}
!19 = !{!20, !8, i64 168}
!20 = !{!"SculptUndoNode", !8, i64 0, !8, i64 8, !12, i64 16, !9, i64 20, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !12, i64 128, !12, i64 132, !8, i64 136, !8, i64 144, !12, i64 152, !12, i64 156, !12, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !9, i64 192, !21, i64 200, !21, i64 400, !21, i64 600, !21, i64 800, !12, i64 1000, !12, i64 1004, !12, i64 1008, !12, i64 1012, !9, i64 1016}
!21 = !{!"CustomData", !8, i64 0, !9, i64 8, !12, i64 172, !12, i64 176, !12, i64 180, !8, i64 184, !8, i64 192}
!22 = !{!18, !8, i64 104}
!23 = !{!8, !8, i64 0}
!24 = !{!12, !12, i64 0}
!25 = !{!20, !8, i64 136}
!26 = !{!20, !12, i64 128}
!27 = !{!18, !8, i64 48}
!28 = !{!9, !9, i64 0}
!29 = !{!14, !8, i64 0}
!30 = !{!20, !12, i64 16}
!31 = !{!20, !9, i64 192}
!32 = !{!18, !8, i64 96}
!33 = !{!20, !8, i64 184}
!34 = !{!6, !8, i64 296}
!35 = !{!16, !16, i64 0}
!36 = !{!37, !12, i64 1280}
!37 = !{!"Mesh", !7, i64 0, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !21, i64 280, !21, i64 480, !21, i64 680, !21, i64 880, !21, i64 1080, !12, i64 1280, !12, i64 1284, !12, i64 1288, !12, i64 1292, !12, i64 1296, !12, i64 1300, !12, i64 1304, !9, i64 1308, !9, i64 1320, !9, i64 1332, !12, i64 1344, !11, i64 1348, !11, i64 1350, !15, i64 1352, !12, i64 1356, !9, i64 1360, !9, i64 1361, !9, i64 1362, !9, i64 1363, !9, i64 1364, !9, i64 1365, !11, i64 1366, !8, i64 1368}
!38 = !{!37, !12, i64 1284}
!39 = !{!37, !12, i64 1300}
!40 = !{!37, !12, i64 1296}
!41 = !{!42, !12, i64 20}
!42 = !{!"PBVHVertexIter", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !12, i64 72, !12, i64 76, !8, i64 80, !12, i64 88, !8, i64 96, !8, i64 104, !43, i64 112, !43, i64 136, !8, i64 160, !12, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216}
!43 = !{!"GSetIterator", !44, i64 0}
!44 = !{!"GHashIterator", !8, i64 0, !8, i64 8, !12, i64 16}
!45 = !{!42, !12, i64 0}
!46 = !{!42, !12, i64 72}
!47 = !{!42, !8, i64 24}
!48 = !{!42, !12, i64 88}
!49 = !{!42, !12, i64 4}
!50 = !{!42, !12, i64 8}
!51 = !{!42, !12, i64 16}
!52 = !{!42, !12, i64 76}
!53 = !{!42, !8, i64 64}
!54 = !{!42, !8, i64 32}
!55 = !{!42, !12, i64 12}
!56 = !{!42, !8, i64 40}
!57 = !{!42, !8, i64 192}
!58 = !{!42, !8, i64 208}
!59 = !{!60, !12, i64 36}
!60 = !{!"CCGKey", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36}
!61 = !{!42, !8, i64 216}
!62 = !{!42, !8, i64 56}
!63 = !{!42, !8, i64 80}
!64 = !{!42, !8, i64 96}
!65 = !{!42, !8, i64 176}
!66 = !{!42, !8, i64 200}
!67 = !{!42, !8, i64 104}
!68 = !{i8 0, i8 2}
!69 = !{!42, !8, i64 184}
!70 = !{!71, !8, i64 0}
!71 = !{!"BMVert", !72, i64 0, !8, i64 16, !9, i64 24, !9, i64 36, !8, i64 48}
!72 = !{!"BMHeader", !8, i64 0, !12, i64 8, !9, i64 12, !9, i64 13, !9, i64 14}
!73 = !{!42, !12, i64 168}
!74 = distinct !{!74, !75}
!75 = !{!"llvm.loop.mustprogress"}
!76 = distinct !{!76, !75}
!77 = distinct !{!77, !75}
!78 = distinct !{!78, !75}
!79 = distinct !{!79, !75}
!80 = distinct !{!80, !75}
!81 = distinct !{!81, !75}
!82 = !{!20, !8, i64 88}
!83 = !{!20, !8, i64 96}
!84 = !{!20, !8, i64 112}
!85 = !{!20, !8, i64 144}
!86 = !{!20, !8, i64 120}
!87 = !{!20, !12, i64 152}
!88 = !{!20, !12, i64 160}
!89 = !{!20, !12, i64 156}
!90 = !{!18, !12, i64 32}
!91 = !{!20, !12, i64 132}
!92 = !{!18, !9, i64 113}
!93 = !{!20, !8, i64 104}
!94 = !{!18, !8, i64 120}
!95 = distinct !{!95, !75}
!96 = distinct !{!96, !75}
!97 = distinct !{!97, !75}
!98 = !{!99, !9, i64 18}
!99 = !{!"MVert", !9, i64 0, !9, i64 12, !9, i64 18, !9, i64 19}
!100 = distinct !{!100, !75}
!101 = !{!15, !15, i64 0}
!102 = distinct !{!102, !75}
!103 = distinct !{!103, !75}
!104 = distinct !{!104, !75}
!105 = !{!106, !8, i64 16}
!106 = !{!"ToolSettings", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !15, i64 32, !15, i64 36, !15, i64 40, !11, i64 44, !11, i64 46, !9, i64 48, !9, i64 49, !9, i64 50, !9, i64 51, !15, i64 52, !11, i64 56, !9, i64 58, !9, i64 59, !107, i64 64, !109, i64 168, !15, i64 336, !15, i64 340, !11, i64 344, !11, i64 346, !9, i64 348, !9, i64 349, !11, i64 350, !15, i64 352, !15, i64 356, !15, i64 360, !15, i64 364, !15, i64 368, !15, i64 372, !15, i64 376, !15, i64 380, !15, i64 384, !15, i64 388, !11, i64 392, !9, i64 394, !9, i64 395, !9, i64 396, !9, i64 399, !8, i64 400, !9, i64 408, !9, i64 409, !9, i64 410, !9, i64 411, !9, i64 412, !9, i64 413, !9, i64 421, !9, i64 429, !9, i64 430, !9, i64 431, !9, i64 432, !9, i64 433, !11, i64 434, !11, i64 436, !11, i64 438, !11, i64 440, !9, i64 442, !9, i64 443, !9, i64 444, !9, i64 445, !9, i64 446, !9, i64 447, !12, i64 448, !12, i64 452, !12, i64 456, !12, i64 460, !11, i64 464, !11, i64 466, !12, i64 468, !15, i64 472, !15, i64 476, !110, i64 480, !111, i64 608}
!107 = !{!"ImagePaintSettings", !108, i64 0, !11, i64 40, !11, i64 42, !11, i64 44, !11, i64 46, !9, i64 48, !12, i64 52, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !9, i64 88, !15, i64 100}
!108 = !{!"Paint", !8, i64 0, !8, i64 8, !8, i64 16, !9, i64 24, !12, i64 28, !12, i64 32, !12, i64 36}
!109 = !{!"ParticleEditSettings", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !9, i64 8, !8, i64 120, !15, i64 128, !15, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !8, i64 152, !8, i64 160}
!110 = !{!"UnifiedPaintSettings", !12, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !9, i64 16, !9, i64 28, !12, i64 40, !9, i64 44, !15, i64 52, !12, i64 56, !12, i64 60, !9, i64 64, !9, i64 65, !15, i64 72, !9, i64 76, !12, i64 84, !15, i64 88, !9, i64 92, !9, i64 100, !12, i64 108, !8, i64 112, !15, i64 120, !12, i64 124}
!111 = !{!"MeshStatVis", !9, i64 0, !9, i64 1, !9, i64 3, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !9, i64 20, !9, i64 21, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36}
!112 = distinct !{!112, !75}
!113 = !{i32 0, i32 2}
!114 = !{!115, !8, i64 1440}
!115 = !{!"DerivedMesh", !21, i64 0, !21, i64 200, !21, i64 400, !21, i64 600, !21, i64 800, !12, i64 1000, !12, i64 1004, !12, i64 1008, !12, i64 1012, !12, i64 1016, !12, i64 1020, !12, i64 1024, !8, i64 1032, !8, i64 1040, !12, i64 1048, !15, i64 1052, !12, i64 1056, !12, i64 1060, !8, i64 1064, !9, i64 1072, !8, i64 1080, !8, i64 1088, !8, i64 1096, !8, i64 1104, !8, i64 1112, !8, i64 1120, !8, i64 1128, !8, i64 1136, !8, i64 1144, !8, i64 1152, !8, i64 1160, !8, i64 1168, !8, i64 1176, !8, i64 1184, !8, i64 1192, !8, i64 1200, !8, i64 1208, !8, i64 1216, !8, i64 1224, !8, i64 1232, !8, i64 1240, !8, i64 1248, !8, i64 1256, !8, i64 1264, !8, i64 1272, !8, i64 1280, !8, i64 1288, !8, i64 1296, !8, i64 1304, !8, i64 1312, !8, i64 1320, !8, i64 1328, !8, i64 1336, !8, i64 1344, !8, i64 1352, !8, i64 1360, !8, i64 1368, !8, i64 1376, !8, i64 1384, !8, i64 1392, !8, i64 1400, !8, i64 1408, !8, i64 1416, !8, i64 1424, !8, i64 1432, !8, i64 1440, !8, i64 1448, !8, i64 1456, !8, i64 1464, !8, i64 1472, !8, i64 1480, !8, i64 1488, !8, i64 1496, !8, i64 1504, !8, i64 1512, !8, i64 1520, !8, i64 1528, !8, i64 1536, !8, i64 1544, !8, i64 1552, !8, i64 1560, !8, i64 1568, !8, i64 1576, !8, i64 1584, !8, i64 1592, !8, i64 1600, !8, i64 1608, !8, i64 1616, !8, i64 1624, !8, i64 1632, !8, i64 1640, !8, i64 1648, !8, i64 1656, !8, i64 1664, !8, i64 1672, !8, i64 1680}
!116 = !{!115, !8, i64 1424}
!117 = !{!115, !8, i64 1432}
!118 = distinct !{!118, !75}
!119 = !{!37, !8, i64 232}
!120 = !{!37, !8, i64 208}
!121 = !{!37, !12, i64 1288}
!122 = !{!37, !12, i64 100}
!123 = !{!6, !8, i64 1296}
!124 = !{!20, !8, i64 176}
!125 = distinct !{!125, !75}
!126 = !{!20, !12, i64 1000}
!127 = !{!20, !12, i64 1004}
!128 = !{!20, !12, i64 1008}
!129 = !{!20, !12, i64 1012}
!130 = distinct !{!130, !75}
!131 = distinct !{!131, !75}
!132 = !{!60, !12, i64 20}
!133 = !{!60, !12, i64 24}
!134 = !{!60, !12, i64 4}
!135 = !{!44, !8, i64 8}
!136 = !{!137, !8, i64 8}
!137 = !{!"_gh_Entry", !8, i64 0, !8, i64 8, !8, i64 16}
!138 = distinct !{!138, !75}
!139 = !{!11, !11, i64 0}
!140 = !{!6, !11, i64 1266}
!141 = !{!18, !8, i64 8}
!142 = distinct !{!142, !75}
!143 = distinct !{!143, !75}
!144 = !{!115, !8, i64 1464}
!145 = distinct !{!145, !75}
!146 = distinct !{!146, !75}
!147 = distinct !{!147, !75}
!148 = !{!115, !8, i64 1480}
!149 = distinct !{!149, !75}
!150 = !{!18, !8, i64 56}
!151 = distinct !{!151, !75}
!152 = distinct !{!152, !75}
!153 = distinct !{!153, !75}
!154 = distinct !{!154, !75}
!155 = !{!37, !11, i64 1350}
!156 = !{!18, !8, i64 128}
