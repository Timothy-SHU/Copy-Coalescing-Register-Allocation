; ModuleID = 'blender/source/blender/editors/sculpt_paint/sculpt_undo.c'
source_filename = "blender/source/blender/editors/sculpt_paint/sculpt_undo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMAllocTemplate = type { i32, i32, i32, i32 }
%struct.PBVHVertexIter = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, %struct.GSetIterator, %struct.GSetIterator, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.GSetIterator = type { %struct.GHashIterator }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.SculptSession = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, i8, i8, ptr, ptr, ptr, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i8, [3 x float], [3 x float], i32 }
%struct.SculptUndoNode = type { ptr, ptr, i32, [66 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, [64 x i8] }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CCGKey = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }

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

; Function Attrs: nounwind uwtable
define dso_local ptr @sculpt_undo_get_node(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @undo_paint_push_get_list(i32 noundef 1) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @BLI_findptr(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 88) #6
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @undo_paint_push_get_list(i32 noundef) local_unnamed_addr #2

declare ptr @BLI_findptr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @sculpt_undo_push_node(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.PBVHVertexIter, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.PBVHVertexIter, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca %struct.PBVHVertexIter, align 8
  %18 = alloca %struct.GSetIterator, align 8
  %19 = alloca i32, align 4
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i32, align 4
  %23 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  tail call void @BLI_lock_thread(i32 noundef 3) #6
  %25 = getelementptr inbounds %struct.SculptSession, ptr %24, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = icmp ne ptr %26, null
  %28 = add i32 %2, -3
  %29 = icmp ult i32 %28, 2
  %30 = or i1 %29, %27
  %31 = tail call ptr @undo_paint_push_get_list(i32 noundef 1) #6
  br i1 %30, label %32, label %436

32:                                               ; preds = %3
  %33 = load ptr, ptr %31, align 8, !tbaa !48
  %34 = load ptr, ptr %23, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %17) #6
  %35 = load ptr, ptr %31, align 8, !tbaa !48
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %94

37:                                               ; preds = %32
  %38 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %39 = tail call ptr %38(i64 noundef 1080, ptr noundef nonnull @__func__.sculpt_undo_bmesh_push) #6
  %40 = getelementptr inbounds %struct.SculptUndoNode, ptr %39, i64 0, i32 3
  %41 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %42 = tail call ptr @BLI_strncpy(ptr noundef nonnull %40, ptr noundef nonnull %41, i64 noundef 66) #6
  %43 = getelementptr inbounds %struct.SculptUndoNode, ptr %39, i64 0, i32 2
  store i32 %2, ptr %43, align 8, !tbaa !50
  %44 = getelementptr inbounds %struct.SculptUndoNode, ptr %39, i64 0, i32 19
  store i8 1, ptr %44, align 8, !tbaa !53
  switch i32 %2, label %88 [
    i32 4, label %45
    i32 3, label %53
  ]

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.SculptSession, ptr %34, i64 0, i32 14
  %47 = load ptr, ptr %46, align 8, !tbaa !54
  %48 = tail call ptr @BM_log_entry_add(ptr noundef %47) #6
  %49 = getelementptr inbounds %struct.SculptUndoNode, ptr %39, i64 0, i32 18
  store ptr %48, ptr %49, align 8, !tbaa !55
  %50 = getelementptr inbounds %struct.SculptSession, ptr %34, i64 0, i32 10
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  %52 = load ptr, ptr %46, align 8, !tbaa !54
  tail call void @BM_log_before_all_removed(ptr noundef %51, ptr noundef %52) #6
  br label %93

53:                                               ; preds = %37
  %54 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %55 = load ptr, ptr %54, align 8, !tbaa !56
  %56 = getelementptr inbounds %struct.Mesh, ptr %55, i64 0, i32 21
  %57 = getelementptr inbounds %struct.SculptUndoNode, ptr %39, i64 0, i32 20
  %58 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !57
  %59 = getelementptr inbounds %struct.Mesh, ptr %55, i64 0, i32 26
  %60 = load i32, ptr %59, align 8, !tbaa !58
  tail call void @CustomData_copy(ptr noundef nonnull %56, ptr noundef nonnull %57, i64 noundef %58, i32 noundef 4, i32 noundef %60) #6
  %61 = getelementptr inbounds %struct.Mesh, ptr %55, i64 0, i32 22
  %62 = getelementptr inbounds %struct.SculptUndoNode, ptr %39, i64 0, i32 21
  %63 = getelementptr inbounds %struct.Mesh, ptr %55, i64 0, i32 27
  %64 = load i32, ptr %63, align 4, !tbaa !60
  tail call void @CustomData_copy(ptr noundef nonnull %61, ptr noundef nonnull %62, i64 noundef %58, i32 noundef 4, i32 noundef %64) #6
  %65 = getelementptr inbounds %struct.Mesh, ptr %55, i64 0, i32 25
  %66 = getelementptr inbounds %struct.SculptUndoNode, ptr %39, i64 0, i32 22
  %67 = getelementptr inbounds %struct.Mesh, ptr %55, i64 0, i32 31
  %68 = load i32, ptr %67, align 4, !tbaa !61
  tail call void @CustomData_copy(ptr noundef nonnull %65, ptr noundef nonnull %66, i64 noundef %58, i32 noundef 4, i32 noundef %68) #6
  %69 = getelementptr inbounds %struct.Mesh, ptr %55, i64 0, i32 24
  %70 = getelementptr inbounds %struct.SculptUndoNode, ptr %39, i64 0, i32 23
  %71 = getelementptr inbounds %struct.Mesh, ptr %55, i64 0, i32 30
  %72 = load i32, ptr %71, align 8, !tbaa !62
  tail call void @CustomData_copy(ptr noundef nonnull %69, ptr noundef nonnull %70, i64 noundef %58, i32 noundef 4, i32 noundef %72) #6
  %73 = load i32, ptr %59, align 8, !tbaa !58
  %74 = getelementptr inbounds %struct.SculptUndoNode, ptr %39, i64 0, i32 24
  store i32 %73, ptr %74, align 8, !tbaa !63
  %75 = load i32, ptr %63, align 4, !tbaa !60
  %76 = getelementptr inbounds %struct.SculptUndoNode, ptr %39, i64 0, i32 25
  store i32 %75, ptr %76, align 4, !tbaa !64
  %77 = load i32, ptr %67, align 4, !tbaa !61
  %78 = getelementptr inbounds %struct.SculptUndoNode, ptr %39, i64 0, i32 26
  store i32 %77, ptr %78, align 8, !tbaa !65
  %79 = load i32, ptr %71, align 8, !tbaa !62
  %80 = getelementptr inbounds %struct.SculptUndoNode, ptr %39, i64 0, i32 27
  store i32 %79, ptr %80, align 4, !tbaa !66
  %81 = getelementptr inbounds %struct.SculptSession, ptr %34, i64 0, i32 14
  %82 = load ptr, ptr %81, align 8, !tbaa !54
  %83 = tail call ptr @BM_log_entry_add(ptr noundef %82) #6
  %84 = getelementptr inbounds %struct.SculptUndoNode, ptr %39, i64 0, i32 18
  store ptr %83, ptr %84, align 8, !tbaa !55
  %85 = getelementptr inbounds %struct.SculptSession, ptr %34, i64 0, i32 10
  %86 = load ptr, ptr %85, align 8, !tbaa !46
  %87 = load ptr, ptr %81, align 8, !tbaa !54
  tail call void @BM_log_all_added(ptr noundef %86, ptr noundef %87) #6
  br label %93

88:                                               ; preds = %37
  %89 = getelementptr inbounds %struct.SculptSession, ptr %34, i64 0, i32 14
  %90 = load ptr, ptr %89, align 8, !tbaa !54
  %91 = tail call ptr @BM_log_entry_add(ptr noundef %90) #6
  %92 = getelementptr inbounds %struct.SculptUndoNode, ptr %39, i64 0, i32 18
  store ptr %91, ptr %92, align 8, !tbaa !55
  br label %93

93:                                               ; preds = %88, %53, %45
  tail call void @BLI_addtail(ptr noundef nonnull %31, ptr noundef %39) #6
  br label %94

94:                                               ; preds = %93, %32
  %95 = phi ptr [ %33, %32 ], [ %39, %93 ]
  %96 = icmp eq ptr %1, null
  br i1 %96, label %435, label %97

97:                                               ; preds = %94
  switch i32 %2, label %435 [
    i32 0, label %98
    i32 2, label %98
    i32 1, label %259
  ]

98:                                               ; preds = %97, %97
  %99 = getelementptr inbounds %struct.SculptSession, ptr %34, i64 0, i32 15
  %100 = load ptr, ptr %99, align 8, !tbaa !67
  call void @pbvh_vertex_iter_init(ptr noundef %100, ptr noundef nonnull %1, ptr noundef nonnull %17, i32 noundef 0) #6
  %101 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 5
  store i32 0, ptr %101, align 4, !tbaa !68
  %102 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 12
  store i32 0, ptr %17, align 8, !tbaa !72
  %103 = load i32, ptr %102, align 8, !tbaa !73
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %435

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 6
  %107 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 13
  %108 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 1
  %109 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 2
  %110 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 11
  %111 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 7
  %112 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 15
  %113 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 1
  %114 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 2
  %115 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 4
  %116 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 2
  %117 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 3
  %118 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 1
  %119 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 7
  %120 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 8
  %121 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 24
  %122 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 26
  %123 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 27
  %124 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 10
  %125 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 13
  %126 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 14
  %127 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 16
  %128 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 22
  %129 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 24
  %130 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 25
  %131 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 17
  %132 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 27
  %133 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 18, i32 0, i32 1
  %134 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 18
  %135 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 23
  %136 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 19
  %137 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 19, i32 0, i32 1
  %138 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 23
  %139 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 23
  %140 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 24
  %141 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 26
  %142 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 21
  %143 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 27
  %144 = getelementptr inbounds %struct.SculptSession, ptr %34, i64 0, i32 14
  %145 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 23
  %146 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 21
  br label %147

147:                                              ; preds = %105, %254
  %148 = phi i32 [ 0, %105 ], [ %256, %254 ]
  %149 = load ptr, ptr %106, align 8, !tbaa !74
  %150 = icmp eq ptr %149, null
  br i1 %150, label %160, label %151

151:                                              ; preds = %147
  %152 = load i32, ptr %107, align 4, !tbaa !75
  store i32 %152, ptr %108, align 4, !tbaa !76
  store i32 %152, ptr %109, align 8, !tbaa !77
  %153 = load ptr, ptr %110, align 8, !tbaa !78
  %154 = sext i32 %148 to i64
  %155 = getelementptr inbounds i32, ptr %153, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !79
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds ptr, ptr %149, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !49
  store ptr %159, ptr %111, align 8, !tbaa !80
  br label %162

160:                                              ; preds = %147
  %161 = load i32, ptr %112, align 8, !tbaa !81
  store i32 %161, ptr %113, align 4, !tbaa !76
  store i32 1, ptr %114, align 8, !tbaa !77
  br label %162

162:                                              ; preds = %160, %151
  store i32 0, ptr %115, align 8, !tbaa !82
  %163 = load i32, ptr %116, align 8, !tbaa !77
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %254

165:                                              ; preds = %162, %249
  store i32 0, ptr %117, align 4, !tbaa !83
  %166 = load i32, ptr %118, align 4, !tbaa !76
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %249

168:                                              ; preds = %165, %242
  %169 = phi i32 [ %244, %242 ], [ 0, %165 ]
  %170 = load ptr, ptr %119, align 8, !tbaa !80
  %171 = icmp eq ptr %170, null
  br i1 %171, label %207, label %172

172:                                              ; preds = %168
  store ptr %170, ptr %121, align 8, !tbaa !84
  %173 = load ptr, ptr %120, align 8, !tbaa !85
  %174 = getelementptr inbounds %struct.CCGKey, ptr %173, i64 0, i32 5
  %175 = load i32, ptr %174, align 4, !tbaa !86
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, ptr %170, i64 %176
  store ptr %177, ptr %122, align 8, !tbaa !88
  %178 = getelementptr inbounds %struct.CCGKey, ptr %173, i64 0, i32 9
  %179 = load i32, ptr %178, align 4, !tbaa !89
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %172
  %182 = getelementptr inbounds %struct.CCGKey, ptr %173, i64 0, i32 6
  %183 = load i32, ptr %182, align 4, !tbaa !90
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, ptr %170, i64 %184
  br label %186

186:                                              ; preds = %181, %172
  %187 = phi ptr [ %185, %181 ], [ null, %172 ]
  store ptr %187, ptr %123, align 8, !tbaa !91
  %188 = getelementptr inbounds %struct.CCGKey, ptr %173, i64 0, i32 1
  %189 = load i32, ptr %188, align 4, !tbaa !92
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, ptr %170, i64 %190
  store ptr %191, ptr %119, align 8, !tbaa !80
  %192 = load ptr, ptr %124, align 8, !tbaa !93
  %193 = icmp eq ptr %192, null
  br i1 %193, label %238, label %194

194:                                              ; preds = %186
  %195 = load i32, ptr %115, align 8, !tbaa !82
  %196 = load i32, ptr %125, align 4, !tbaa !75
  %197 = mul nsw i32 %196, %195
  %198 = add nsw i32 %197, %169
  %199 = ashr i32 %198, 5
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, ptr %192, i64 %200
  %202 = load i32, ptr %201, align 4, !tbaa !79
  %203 = and i32 %198, 31
  %204 = shl nuw i32 1, %203
  %205 = and i32 %204, %202
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %238, label %242

207:                                              ; preds = %168
  %208 = load ptr, ptr %126, align 8, !tbaa !94
  %209 = icmp eq ptr %208, null
  br i1 %209, label %222, label %210

210:                                              ; preds = %207
  %211 = load ptr, ptr %127, align 8, !tbaa !95
  %212 = sext i32 %169 to i64
  %213 = getelementptr inbounds i32, ptr %211, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !79
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.MVert, ptr %208, i64 %215
  store ptr %216, ptr %128, align 8, !tbaa !96
  store ptr %216, ptr %129, align 8, !tbaa !84
  %217 = getelementptr inbounds %struct.MVert, ptr %208, i64 %215, i32 1
  store ptr %217, ptr %130, align 8, !tbaa !97
  %218 = load ptr, ptr %131, align 8, !tbaa !98
  %219 = icmp eq ptr %218, null
  br i1 %219, label %238, label %220

220:                                              ; preds = %210
  %221 = getelementptr inbounds float, ptr %218, i64 %215
  store ptr %221, ptr %132, align 8, !tbaa !91
  br label %238

222:                                              ; preds = %207
  %223 = load ptr, ptr %133, align 8, !tbaa !99
  %224 = icmp eq ptr %223, null
  %225 = load ptr, ptr %137, align 8
  %226 = select i1 %224, ptr %225, ptr %223
  %227 = select i1 %224, ptr %138, ptr %135
  %228 = select i1 %224, ptr %136, ptr %134
  %229 = getelementptr inbounds %struct._gh_Entry, ptr %226, i64 0, i32 1
  %230 = load ptr, ptr %229, align 8, !tbaa !100
  store ptr %230, ptr %227, align 8, !tbaa !102
  call void @BLI_ghashIterator_step(ptr noundef nonnull %228) #6
  %231 = load ptr, ptr %139, align 8, !tbaa !102
  %232 = getelementptr inbounds %struct.BMVert, ptr %231, i64 0, i32 2
  store ptr %232, ptr %140, align 8, !tbaa !84
  %233 = getelementptr inbounds %struct.BMVert, ptr %231, i64 0, i32 3
  store ptr %233, ptr %141, align 8, !tbaa !88
  %234 = load ptr, ptr %231, align 8, !tbaa !103
  %235 = load i32, ptr %142, align 8, !tbaa !106
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, ptr %234, i64 %236
  store ptr %237, ptr %143, align 8, !tbaa !91
  br label %238

238:                                              ; preds = %222, %220, %210, %194, %186
  %239 = load ptr, ptr %144, align 8, !tbaa !54
  %240 = load ptr, ptr %145, align 8, !tbaa !102
  %241 = load i32, ptr %146, align 8, !tbaa !106
  call void @BM_log_vert_before_modified(ptr noundef %239, ptr noundef %240, i32 noundef %241) #6
  br label %242

242:                                              ; preds = %238, %194
  %243 = load i32, ptr %117, align 4, !tbaa !83
  %244 = add nsw i32 %243, 1
  store i32 %244, ptr %117, align 4, !tbaa !83
  %245 = load i32, ptr %101, align 4, !tbaa !68
  %246 = add nsw i32 %245, 1
  store i32 %246, ptr %101, align 4, !tbaa !68
  %247 = load i32, ptr %118, align 4, !tbaa !76
  %248 = icmp slt i32 %244, %247
  br i1 %248, label %168, label %249, !llvm.loop !107

249:                                              ; preds = %242, %165
  %250 = load i32, ptr %115, align 8, !tbaa !82
  %251 = add nsw i32 %250, 1
  store i32 %251, ptr %115, align 8, !tbaa !82
  %252 = load i32, ptr %116, align 8, !tbaa !77
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %165, label %254, !llvm.loop !110

254:                                              ; preds = %249, %162
  %255 = load i32, ptr %17, align 8, !tbaa !72
  %256 = add nsw i32 %255, 1
  store i32 %256, ptr %17, align 8, !tbaa !72
  %257 = load i32, ptr %102, align 8, !tbaa !73
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %147, label %435, !llvm.loop !111

259:                                              ; preds = %97
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #6
  %260 = tail call ptr @BKE_pbvh_bmesh_node_faces(ptr noundef nonnull %1) #6
  %261 = getelementptr inbounds %struct.SculptSession, ptr %34, i64 0, i32 15
  %262 = load ptr, ptr %261, align 8, !tbaa !67
  call void @pbvh_vertex_iter_init(ptr noundef %262, ptr noundef nonnull %1, ptr noundef nonnull %17, i32 noundef 0) #6
  %263 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 5
  store i32 0, ptr %263, align 4, !tbaa !68
  %264 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 12
  store i32 0, ptr %17, align 8, !tbaa !72
  %265 = load i32, ptr %264, align 8, !tbaa !73
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %267, label %421

267:                                              ; preds = %259
  %268 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 6
  %269 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 13
  %270 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 1
  %271 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 2
  %272 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 11
  %273 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 7
  %274 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 15
  %275 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 1
  %276 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 2
  %277 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 4
  %278 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 2
  %279 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 3
  %280 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 1
  %281 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 7
  %282 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 8
  %283 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 24
  %284 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 26
  %285 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 27
  %286 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 10
  %287 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 13
  %288 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 14
  %289 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 16
  %290 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 22
  %291 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 24
  %292 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 25
  %293 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 17
  %294 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 27
  %295 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 18, i32 0, i32 1
  %296 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 18
  %297 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 23
  %298 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 19
  %299 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 19, i32 0, i32 1
  %300 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 23
  %301 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 23
  %302 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 24
  %303 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 26
  %304 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 21
  %305 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 27
  %306 = getelementptr inbounds %struct.SculptSession, ptr %34, i64 0, i32 14
  %307 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 23
  %308 = getelementptr inbounds %struct.PBVHVertexIter, ptr %17, i64 0, i32 21
  br label %309

309:                                              ; preds = %267, %416
  %310 = phi i32 [ 0, %267 ], [ %418, %416 ]
  %311 = load ptr, ptr %268, align 8, !tbaa !74
  %312 = icmp eq ptr %311, null
  br i1 %312, label %322, label %313

313:                                              ; preds = %309
  %314 = load i32, ptr %269, align 4, !tbaa !75
  store i32 %314, ptr %270, align 4, !tbaa !76
  store i32 %314, ptr %271, align 8, !tbaa !77
  %315 = load ptr, ptr %272, align 8, !tbaa !78
  %316 = sext i32 %310 to i64
  %317 = getelementptr inbounds i32, ptr %315, i64 %316
  %318 = load i32, ptr %317, align 4, !tbaa !79
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds ptr, ptr %311, i64 %319
  %321 = load ptr, ptr %320, align 8, !tbaa !49
  store ptr %321, ptr %273, align 8, !tbaa !80
  br label %324

322:                                              ; preds = %309
  %323 = load i32, ptr %274, align 8, !tbaa !81
  store i32 %323, ptr %275, align 4, !tbaa !76
  store i32 1, ptr %276, align 8, !tbaa !77
  br label %324

324:                                              ; preds = %322, %313
  store i32 0, ptr %277, align 8, !tbaa !82
  %325 = load i32, ptr %278, align 8, !tbaa !77
  %326 = icmp sgt i32 %325, 0
  br i1 %326, label %327, label %416

327:                                              ; preds = %324, %411
  store i32 0, ptr %279, align 4, !tbaa !83
  %328 = load i32, ptr %280, align 4, !tbaa !76
  %329 = icmp sgt i32 %328, 0
  br i1 %329, label %330, label %411

330:                                              ; preds = %327, %404
  %331 = phi i32 [ %406, %404 ], [ 0, %327 ]
  %332 = load ptr, ptr %281, align 8, !tbaa !80
  %333 = icmp eq ptr %332, null
  br i1 %333, label %369, label %334

334:                                              ; preds = %330
  store ptr %332, ptr %283, align 8, !tbaa !84
  %335 = load ptr, ptr %282, align 8, !tbaa !85
  %336 = getelementptr inbounds %struct.CCGKey, ptr %335, i64 0, i32 5
  %337 = load i32, ptr %336, align 4, !tbaa !86
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i8, ptr %332, i64 %338
  store ptr %339, ptr %284, align 8, !tbaa !88
  %340 = getelementptr inbounds %struct.CCGKey, ptr %335, i64 0, i32 9
  %341 = load i32, ptr %340, align 4, !tbaa !89
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %348, label %343

343:                                              ; preds = %334
  %344 = getelementptr inbounds %struct.CCGKey, ptr %335, i64 0, i32 6
  %345 = load i32, ptr %344, align 4, !tbaa !90
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i8, ptr %332, i64 %346
  br label %348

348:                                              ; preds = %343, %334
  %349 = phi ptr [ %347, %343 ], [ null, %334 ]
  store ptr %349, ptr %285, align 8, !tbaa !91
  %350 = getelementptr inbounds %struct.CCGKey, ptr %335, i64 0, i32 1
  %351 = load i32, ptr %350, align 4, !tbaa !92
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i8, ptr %332, i64 %352
  store ptr %353, ptr %281, align 8, !tbaa !80
  %354 = load ptr, ptr %286, align 8, !tbaa !93
  %355 = icmp eq ptr %354, null
  br i1 %355, label %400, label %356

356:                                              ; preds = %348
  %357 = load i32, ptr %277, align 8, !tbaa !82
  %358 = load i32, ptr %287, align 4, !tbaa !75
  %359 = mul nsw i32 %358, %357
  %360 = add nsw i32 %359, %331
  %361 = ashr i32 %360, 5
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, ptr %354, i64 %362
  %364 = load i32, ptr %363, align 4, !tbaa !79
  %365 = and i32 %360, 31
  %366 = shl nuw i32 1, %365
  %367 = and i32 %366, %364
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %400, label %404

369:                                              ; preds = %330
  %370 = load ptr, ptr %288, align 8, !tbaa !94
  %371 = icmp eq ptr %370, null
  br i1 %371, label %384, label %372

372:                                              ; preds = %369
  %373 = load ptr, ptr %289, align 8, !tbaa !95
  %374 = sext i32 %331 to i64
  %375 = getelementptr inbounds i32, ptr %373, i64 %374
  %376 = load i32, ptr %375, align 4, !tbaa !79
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.MVert, ptr %370, i64 %377
  store ptr %378, ptr %290, align 8, !tbaa !96
  store ptr %378, ptr %291, align 8, !tbaa !84
  %379 = getelementptr inbounds %struct.MVert, ptr %370, i64 %377, i32 1
  store ptr %379, ptr %292, align 8, !tbaa !97
  %380 = load ptr, ptr %293, align 8, !tbaa !98
  %381 = icmp eq ptr %380, null
  br i1 %381, label %400, label %382

382:                                              ; preds = %372
  %383 = getelementptr inbounds float, ptr %380, i64 %377
  store ptr %383, ptr %294, align 8, !tbaa !91
  br label %400

384:                                              ; preds = %369
  %385 = load ptr, ptr %295, align 8, !tbaa !99
  %386 = icmp eq ptr %385, null
  %387 = load ptr, ptr %299, align 8
  %388 = select i1 %386, ptr %387, ptr %385
  %389 = select i1 %386, ptr %300, ptr %297
  %390 = select i1 %386, ptr %298, ptr %296
  %391 = getelementptr inbounds %struct._gh_Entry, ptr %388, i64 0, i32 1
  %392 = load ptr, ptr %391, align 8, !tbaa !100
  store ptr %392, ptr %389, align 8, !tbaa !102
  call void @BLI_ghashIterator_step(ptr noundef nonnull %390) #6
  %393 = load ptr, ptr %301, align 8, !tbaa !102
  %394 = getelementptr inbounds %struct.BMVert, ptr %393, i64 0, i32 2
  store ptr %394, ptr %302, align 8, !tbaa !84
  %395 = getelementptr inbounds %struct.BMVert, ptr %393, i64 0, i32 3
  store ptr %395, ptr %303, align 8, !tbaa !88
  %396 = load ptr, ptr %393, align 8, !tbaa !103
  %397 = load i32, ptr %304, align 8, !tbaa !106
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i8, ptr %396, i64 %398
  store ptr %399, ptr %305, align 8, !tbaa !91
  br label %400

400:                                              ; preds = %384, %382, %372, %356, %348
  %401 = load ptr, ptr %306, align 8, !tbaa !54
  %402 = load ptr, ptr %307, align 8, !tbaa !102
  %403 = load i32, ptr %308, align 8, !tbaa !106
  call void @BM_log_vert_before_modified(ptr noundef %401, ptr noundef %402, i32 noundef %403) #6
  br label %404

404:                                              ; preds = %400, %356
  %405 = load i32, ptr %279, align 4, !tbaa !83
  %406 = add nsw i32 %405, 1
  store i32 %406, ptr %279, align 4, !tbaa !83
  %407 = load i32, ptr %263, align 4, !tbaa !68
  %408 = add nsw i32 %407, 1
  store i32 %408, ptr %263, align 4, !tbaa !68
  %409 = load i32, ptr %280, align 4, !tbaa !76
  %410 = icmp slt i32 %406, %409
  br i1 %410, label %330, label %411, !llvm.loop !112

411:                                              ; preds = %404, %327
  %412 = load i32, ptr %277, align 8, !tbaa !82
  %413 = add nsw i32 %412, 1
  store i32 %413, ptr %277, align 8, !tbaa !82
  %414 = load i32, ptr %278, align 8, !tbaa !77
  %415 = icmp slt i32 %413, %414
  br i1 %415, label %327, label %416, !llvm.loop !113

416:                                              ; preds = %411, %324
  %417 = load i32, ptr %17, align 8, !tbaa !72
  %418 = add nsw i32 %417, 1
  store i32 %418, ptr %17, align 8, !tbaa !72
  %419 = load i32, ptr %264, align 8, !tbaa !73
  %420 = icmp slt i32 %418, %419
  br i1 %420, label %309, label %421, !llvm.loop !114

421:                                              ; preds = %416, %259
  call void @BLI_ghashIterator_init(ptr noundef nonnull %18, ptr noundef %260) #6
  %422 = getelementptr inbounds %struct.GHashIterator, ptr %18, i64 0, i32 1
  %423 = load ptr, ptr %422, align 8, !tbaa !99
  %424 = icmp eq ptr %423, null
  br i1 %424, label %434, label %425

425:                                              ; preds = %421
  %426 = getelementptr inbounds %struct.SculptSession, ptr %34, i64 0, i32 14
  br label %427

427:                                              ; preds = %425, %427
  %428 = phi ptr [ %423, %425 ], [ %432, %427 ]
  %429 = getelementptr inbounds %struct._gh_Entry, ptr %428, i64 0, i32 1
  %430 = load ptr, ptr %429, align 8, !tbaa !100
  %431 = load ptr, ptr %426, align 8, !tbaa !54
  call void @BM_log_face_modified(ptr noundef %431, ptr noundef %430) #6
  call void @BLI_ghashIterator_step(ptr noundef nonnull %18) #6
  %432 = load ptr, ptr %422, align 8, !tbaa !99
  %433 = icmp eq ptr %432, null
  br i1 %433, label %434, label %427, !llvm.loop !115

434:                                              ; preds = %427, %421
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #6
  br label %435

435:                                              ; preds = %254, %98, %94, %97, %434
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %17) #6
  call void @BLI_unlock_thread(i32 noundef 3) #6
  br label %1043

436:                                              ; preds = %3
  %437 = icmp eq ptr %31, null
  br i1 %437, label %440, label %438

438:                                              ; preds = %436
  %439 = tail call ptr @BLI_findptr(ptr noundef nonnull %31, ptr noundef %1, i32 noundef 88) #6
  br label %440

440:                                              ; preds = %436, %438
  %441 = phi ptr [ %439, %438 ], [ null, %436 ]
  %442 = icmp eq ptr %441, null
  br i1 %442, label %444, label %443

443:                                              ; preds = %440
  tail call void @BLI_unlock_thread(i32 noundef 3) #6
  br label %1043

444:                                              ; preds = %440
  %445 = tail call ptr @undo_paint_push_get_list(i32 noundef 1) #6
  %446 = load ptr, ptr %23, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #6
  %447 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %448 = tail call ptr %447(i64 noundef 1080, ptr noundef nonnull @.str) #6
  %449 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 3
  %450 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %451 = tail call ptr @BLI_strncpy(ptr noundef nonnull %449, ptr noundef nonnull %450, i64 noundef 66) #6
  %452 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 2
  store i32 %2, ptr %452, align 8, !tbaa !50
  %453 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 4
  store ptr %1, ptr %453, align 8, !tbaa !116
  %454 = icmp eq ptr %1, null
  br i1 %454, label %461, label %455

455:                                              ; preds = %444
  %456 = getelementptr inbounds %struct.SculptSession, ptr %446, i64 0, i32 15
  %457 = load ptr, ptr %456, align 8, !tbaa !67
  call void @BKE_pbvh_node_num_verts(ptr noundef %457, ptr noundef nonnull %1, ptr noundef nonnull %11, ptr noundef nonnull %12) #6
  %458 = load ptr, ptr %456, align 8, !tbaa !67
  call void @BKE_pbvh_node_get_grids(ptr noundef %458, ptr noundef nonnull %1, ptr noundef nonnull %16, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef null, ptr noundef null) #6
  %459 = load i32, ptr %11, align 4, !tbaa !79
  %460 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 9
  store i32 %459, ptr %460, align 8, !tbaa !117
  br label %462

461:                                              ; preds = %444
  store i32 0, ptr %14, align 4, !tbaa !79
  br label %462

462:                                              ; preds = %461, %455
  switch i32 %2, label %533 [
    i32 0, label %463
    i32 1, label %478
    i32 2, label %524
  ]

463:                                              ; preds = %462
  %464 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !49
  %465 = load i32, ptr %12, align 4, !tbaa !79
  %466 = sext i32 %465 to i64
  %467 = mul nsw i64 %466, 12
  %468 = call ptr %464(i64 noundef %467, ptr noundef nonnull @.str.1) #6
  %469 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 5
  store ptr %468, ptr %469, align 8, !tbaa !118
  %470 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !49
  %471 = load i32, ptr %12, align 4, !tbaa !79
  %472 = sext i32 %471 to i64
  %473 = mul nsw i64 %472, 6
  %474 = call ptr %470(i64 noundef %473, ptr noundef nonnull @.str.2) #6
  %475 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 7
  store ptr %474, ptr %475, align 8, !tbaa !119
  %476 = load i32, ptr %12, align 4, !tbaa !79
  %477 = mul i32 %476, 22
  call void @undo_paint_push_count_alloc(i32 noundef 1, i32 noundef %477) #6
  br label %533

478:                                              ; preds = %462
  %479 = load i32, ptr %14, align 4, !tbaa !79
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %515, label %481

481:                                              ; preds = %478
  %482 = getelementptr inbounds %struct.SculptSession, ptr %446, i64 0, i32 15
  %483 = load ptr, ptr %482, align 8, !tbaa !67
  %484 = load ptr, ptr %453, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #6
  %485 = call ptr @BKE_pbvh_grid_hidden(ptr noundef %483) #6
  call void @BKE_pbvh_node_get_grids(ptr noundef %483, ptr noundef %484, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #6
  %486 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !49
  %487 = load i32, ptr %10, align 4, !tbaa !79
  %488 = sext i32 %487 to i64
  %489 = shl nsw i64 %488, 3
  %490 = call ptr %486(i64 noundef %489, ptr noundef nonnull @.str.8) #6
  %491 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 17
  store ptr %490, ptr %491, align 8, !tbaa !120
  %492 = load i32, ptr %10, align 4, !tbaa !79
  %493 = icmp sgt i32 %492, 0
  br i1 %493, label %494, label %514

494:                                              ; preds = %481, %506
  %495 = phi i64 [ %510, %506 ], [ 0, %481 ]
  %496 = load ptr, ptr %9, align 8, !tbaa !49
  %497 = getelementptr inbounds i32, ptr %496, i64 %495
  %498 = load i32, ptr %497, align 4, !tbaa !79
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds ptr, ptr %485, i64 %499
  %501 = load ptr, ptr %500, align 8, !tbaa !49
  %502 = icmp eq ptr %501, null
  br i1 %502, label %506, label %503

503:                                              ; preds = %494
  %504 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %505 = call ptr %504(ptr noundef nonnull %501) #6
  br label %506

506:                                              ; preds = %494, %503
  %507 = phi ptr [ %505, %503 ], [ null, %494 ]
  %508 = load ptr, ptr %491, align 8, !tbaa !120
  %509 = getelementptr inbounds ptr, ptr %508, i64 %495
  store ptr %507, ptr %509, align 8, !tbaa !49
  %510 = add nuw nsw i64 %495, 1
  %511 = load i32, ptr %10, align 4, !tbaa !79
  %512 = sext i32 %511 to i64
  %513 = icmp slt i64 %510, %512
  br i1 %513, label %494, label %514, !llvm.loop !121

514:                                              ; preds = %506, %481
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  br label %533

515:                                              ; preds = %478
  %516 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %517 = load i32, ptr %12, align 4, !tbaa !79
  %518 = ashr i32 %517, 5
  %519 = add nsw i32 %518, 1
  %520 = sext i32 %519 to i64
  %521 = shl nsw i64 %520, 2
  %522 = call ptr %516(i64 noundef %521, ptr noundef nonnull @.str.3) #6
  %523 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 12
  store ptr %522, ptr %523, align 8, !tbaa !122
  br label %533

524:                                              ; preds = %462
  %525 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !49
  %526 = load i32, ptr %12, align 4, !tbaa !79
  %527 = sext i32 %526 to i64
  %528 = shl nsw i64 %527, 2
  %529 = call ptr %525(i64 noundef %528, ptr noundef nonnull @.str.4) #6
  %530 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 8
  store ptr %529, ptr %530, align 8, !tbaa !123
  %531 = load i32, ptr %12, align 4, !tbaa !79
  %532 = shl i32 %531, 4
  call void @undo_paint_push_count_alloc(i32 noundef 1, i32 noundef %532) #6
  br label %533

533:                                              ; preds = %524, %515, %514, %463, %462
  call void @BLI_addtail(ptr noundef %445, ptr noundef %448) #6
  %534 = load i32, ptr %14, align 4, !tbaa !79
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %547, label %536

536:                                              ; preds = %533
  %537 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 13
  store i32 %534, ptr %537, align 8, !tbaa !124
  %538 = load i32, ptr %13, align 4, !tbaa !79
  %539 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 15
  store i32 %538, ptr %539, align 8, !tbaa !125
  %540 = load i32, ptr %15, align 4, !tbaa !79
  %541 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 14
  store i32 %540, ptr %541, align 4, !tbaa !126
  %542 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !49
  %543 = sext i32 %538 to i64
  %544 = shl nsw i64 %543, 2
  %545 = call ptr %542(i64 noundef %544, ptr noundef nonnull @.str.5) #6
  %546 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 16
  store ptr %545, ptr %546, align 8, !tbaa !127
  br label %557

547:                                              ; preds = %533
  %548 = getelementptr inbounds %struct.SculptSession, ptr %446, i64 0, i32 4
  %549 = load i32, ptr %548, align 8, !tbaa !128
  %550 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 10
  store i32 %549, ptr %550, align 4, !tbaa !129
  %551 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !49
  %552 = load i32, ptr %12, align 4, !tbaa !79
  %553 = sext i32 %552 to i64
  %554 = shl nsw i64 %553, 2
  %555 = call ptr %551(i64 noundef %554, ptr noundef nonnull @.str.6) #6
  %556 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 11
  store ptr %555, ptr %556, align 8, !tbaa !130
  br label %557

557:                                              ; preds = %547, %536
  %558 = getelementptr inbounds %struct.SculptSession, ptr %446, i64 0, i32 17
  %559 = load i8, ptr %558, align 1, !tbaa !131
  %560 = icmp eq i8 %559, 0
  br i1 %560, label %568, label %561

561:                                              ; preds = %557
  %562 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %563 = load i32, ptr %12, align 4, !tbaa !79
  %564 = sext i32 %563 to i64
  %565 = mul nsw i64 %564, 12
  %566 = call ptr %562(i64 noundef %565, ptr noundef nonnull @.str.7) #6
  %567 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 6
  store ptr %566, ptr %567, align 8, !tbaa !132
  br label %568

568:                                              ; preds = %557, %561
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #6
  call void @BLI_unlock_thread(i32 noundef 3) #6
  %569 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 16
  %570 = load ptr, ptr %569, align 8, !tbaa !127
  %571 = icmp eq ptr %570, null
  %572 = getelementptr inbounds %struct.SculptSession, ptr %24, i64 0, i32 15
  br i1 %571, label %580, label %573

573:                                              ; preds = %568
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #6
  %574 = load ptr, ptr %572, align 8, !tbaa !67
  call void @BKE_pbvh_node_get_grids(ptr noundef %574, ptr noundef %1, ptr noundef nonnull %20, ptr noundef nonnull %19, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #6
  %575 = load ptr, ptr %569, align 8, !tbaa !127
  %576 = load ptr, ptr %20, align 8, !tbaa !49
  %577 = load i32, ptr %19, align 4, !tbaa !79
  %578 = sext i32 %577 to i64
  %579 = shl nsw i64 %578, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %575, ptr align 4 %576, i64 %579, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #6
  br label %590

580:                                              ; preds = %568
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #6
  %581 = load ptr, ptr %572, align 8, !tbaa !67
  call void @BKE_pbvh_node_num_verts(ptr noundef %581, ptr noundef %1, ptr noundef null, ptr noundef nonnull %22) #6
  %582 = load ptr, ptr %572, align 8, !tbaa !67
  call void @BKE_pbvh_node_get_verts(ptr noundef %582, ptr noundef %1, ptr noundef nonnull %21, ptr noundef null) #6
  %583 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 11
  %584 = load ptr, ptr %583, align 8, !tbaa !130
  %585 = load ptr, ptr %21, align 8, !tbaa !49
  %586 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 9
  %587 = load i32, ptr %586, align 8, !tbaa !117
  %588 = sext i32 %587 to i64
  %589 = shl nsw i64 %588, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %584, ptr align 4 %585, i64 %589, i1 false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #6
  br label %590

590:                                              ; preds = %580, %573
  switch i32 %2, label %1034 [
    i32 0, label %591
    i32 1, label %820
    i32 2, label %868
  ]

591:                                              ; preds = %590
  %592 = load ptr, ptr %23, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %8) #6
  %593 = getelementptr inbounds %struct.SculptSession, ptr %592, i64 0, i32 15
  %594 = load ptr, ptr %593, align 8, !tbaa !67
  %595 = load ptr, ptr %453, align 8, !tbaa !116
  call void @pbvh_vertex_iter_init(ptr noundef %594, ptr noundef %595, ptr noundef nonnull %8, i32 noundef 0) #6
  %596 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 5
  store i32 0, ptr %596, align 4, !tbaa !68
  %597 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 12
  store i32 0, ptr %8, align 8, !tbaa !72
  %598 = load i32, ptr %597, align 8, !tbaa !73
  %599 = icmp sgt i32 %598, 0
  br i1 %599, label %600, label %819

600:                                              ; preds = %591
  %601 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 6
  %602 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 13
  %603 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 1
  %604 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 2
  %605 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 11
  %606 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 7
  %607 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 15
  %608 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 1
  %609 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 2
  %610 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 4
  %611 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 2
  %612 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 3
  %613 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 1
  %614 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 7
  %615 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 8
  %616 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 24
  %617 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 26
  %618 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 27
  %619 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 10
  %620 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 13
  %621 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 14
  %622 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 16
  %623 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 22
  %624 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 24
  %625 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 25
  %626 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 17
  %627 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 27
  %628 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 18, i32 0, i32 1
  %629 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 18
  %630 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 23
  %631 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 19
  %632 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 19, i32 0, i32 1
  %633 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 23
  %634 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 23
  %635 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 24
  %636 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 26
  %637 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 21
  %638 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 27
  %639 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 5
  %640 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 24
  %641 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 25
  %642 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 7
  %643 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 7
  %644 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 26
  %645 = getelementptr inbounds %struct.SculptSession, ptr %592, i64 0, i32 17
  %646 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 6
  %647 = getelementptr inbounds %struct.SculptSession, ptr %592, i64 0, i32 18
  %648 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 11
  br label %649

649:                                              ; preds = %600, %814
  %650 = phi i32 [ 0, %600 ], [ %816, %814 ]
  %651 = load ptr, ptr %601, align 8, !tbaa !74
  %652 = icmp eq ptr %651, null
  br i1 %652, label %662, label %653

653:                                              ; preds = %649
  %654 = load i32, ptr %602, align 4, !tbaa !75
  store i32 %654, ptr %603, align 4, !tbaa !76
  store i32 %654, ptr %604, align 8, !tbaa !77
  %655 = load ptr, ptr %605, align 8, !tbaa !78
  %656 = sext i32 %650 to i64
  %657 = getelementptr inbounds i32, ptr %655, i64 %656
  %658 = load i32, ptr %657, align 4, !tbaa !79
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds ptr, ptr %651, i64 %659
  %661 = load ptr, ptr %660, align 8, !tbaa !49
  store ptr %661, ptr %606, align 8, !tbaa !80
  br label %664

662:                                              ; preds = %649
  %663 = load i32, ptr %607, align 8, !tbaa !81
  store i32 %663, ptr %608, align 4, !tbaa !76
  store i32 1, ptr %609, align 8, !tbaa !77
  br label %664

664:                                              ; preds = %662, %653
  store i32 0, ptr %610, align 8, !tbaa !82
  %665 = load i32, ptr %611, align 8, !tbaa !77
  %666 = icmp sgt i32 %665, 0
  br i1 %666, label %667, label %814

667:                                              ; preds = %664, %809
  store i32 0, ptr %612, align 4, !tbaa !83
  %668 = load i32, ptr %613, align 4, !tbaa !76
  %669 = icmp sgt i32 %668, 0
  br i1 %669, label %670, label %809

670:                                              ; preds = %667, %802
  %671 = phi i32 [ %804, %802 ], [ 0, %667 ]
  %672 = load ptr, ptr %614, align 8, !tbaa !80
  %673 = icmp eq ptr %672, null
  br i1 %673, label %709, label %674

674:                                              ; preds = %670
  store ptr %672, ptr %616, align 8, !tbaa !84
  %675 = load ptr, ptr %615, align 8, !tbaa !85
  %676 = getelementptr inbounds %struct.CCGKey, ptr %675, i64 0, i32 5
  %677 = load i32, ptr %676, align 4, !tbaa !86
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds i8, ptr %672, i64 %678
  store ptr %679, ptr %617, align 8, !tbaa !88
  %680 = getelementptr inbounds %struct.CCGKey, ptr %675, i64 0, i32 9
  %681 = load i32, ptr %680, align 4, !tbaa !89
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %688, label %683

683:                                              ; preds = %674
  %684 = getelementptr inbounds %struct.CCGKey, ptr %675, i64 0, i32 6
  %685 = load i32, ptr %684, align 4, !tbaa !90
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds i8, ptr %672, i64 %686
  br label %688

688:                                              ; preds = %683, %674
  %689 = phi ptr [ %687, %683 ], [ null, %674 ]
  store ptr %689, ptr %618, align 8, !tbaa !91
  %690 = getelementptr inbounds %struct.CCGKey, ptr %675, i64 0, i32 1
  %691 = load i32, ptr %690, align 4, !tbaa !92
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds i8, ptr %672, i64 %692
  store ptr %693, ptr %614, align 8, !tbaa !80
  %694 = load ptr, ptr %619, align 8, !tbaa !93
  %695 = icmp eq ptr %694, null
  br i1 %695, label %740, label %696

696:                                              ; preds = %688
  %697 = load i32, ptr %610, align 8, !tbaa !82
  %698 = load i32, ptr %620, align 4, !tbaa !75
  %699 = mul nsw i32 %698, %697
  %700 = add nsw i32 %699, %671
  %701 = ashr i32 %700, 5
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds i32, ptr %694, i64 %702
  %704 = load i32, ptr %703, align 4, !tbaa !79
  %705 = and i32 %700, 31
  %706 = shl nuw i32 1, %705
  %707 = and i32 %706, %704
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %740, label %802

709:                                              ; preds = %670
  %710 = load ptr, ptr %621, align 8, !tbaa !94
  %711 = icmp eq ptr %710, null
  br i1 %711, label %724, label %712

712:                                              ; preds = %709
  %713 = load ptr, ptr %622, align 8, !tbaa !95
  %714 = sext i32 %671 to i64
  %715 = getelementptr inbounds i32, ptr %713, i64 %714
  %716 = load i32, ptr %715, align 4, !tbaa !79
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds %struct.MVert, ptr %710, i64 %717
  store ptr %718, ptr %623, align 8, !tbaa !96
  store ptr %718, ptr %624, align 8, !tbaa !84
  %719 = getelementptr inbounds %struct.MVert, ptr %710, i64 %717, i32 1
  store ptr %719, ptr %625, align 8, !tbaa !97
  %720 = load ptr, ptr %626, align 8, !tbaa !98
  %721 = icmp eq ptr %720, null
  br i1 %721, label %740, label %722

722:                                              ; preds = %712
  %723 = getelementptr inbounds float, ptr %720, i64 %717
  store ptr %723, ptr %627, align 8, !tbaa !91
  br label %740

724:                                              ; preds = %709
  %725 = load ptr, ptr %628, align 8, !tbaa !99
  %726 = icmp eq ptr %725, null
  %727 = load ptr, ptr %632, align 8
  %728 = select i1 %726, ptr %727, ptr %725
  %729 = select i1 %726, ptr %633, ptr %630
  %730 = select i1 %726, ptr %631, ptr %629
  %731 = getelementptr inbounds %struct._gh_Entry, ptr %728, i64 0, i32 1
  %732 = load ptr, ptr %731, align 8, !tbaa !100
  store ptr %732, ptr %729, align 8, !tbaa !102
  call void @BLI_ghashIterator_step(ptr noundef nonnull %730) #6
  %733 = load ptr, ptr %634, align 8, !tbaa !102
  %734 = getelementptr inbounds %struct.BMVert, ptr %733, i64 0, i32 2
  store ptr %734, ptr %635, align 8, !tbaa !84
  %735 = getelementptr inbounds %struct.BMVert, ptr %733, i64 0, i32 3
  store ptr %735, ptr %636, align 8, !tbaa !88
  %736 = load ptr, ptr %733, align 8, !tbaa !103
  %737 = load i32, ptr %637, align 8, !tbaa !106
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds i8, ptr %736, i64 %738
  store ptr %739, ptr %638, align 8, !tbaa !91
  br label %740

740:                                              ; preds = %724, %722, %712, %696, %688
  %741 = load ptr, ptr %639, align 8, !tbaa !118
  %742 = load i32, ptr %596, align 4, !tbaa !68
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds [3 x float], ptr %741, i64 %743
  %745 = load ptr, ptr %640, align 8, !tbaa !84
  %746 = load float, ptr %745, align 4, !tbaa !133
  store float %746, ptr %744, align 4, !tbaa !133
  %747 = getelementptr inbounds float, ptr %745, i64 1
  %748 = load float, ptr %747, align 4, !tbaa !133
  %749 = getelementptr inbounds float, ptr %744, i64 1
  store float %748, ptr %749, align 4, !tbaa !133
  %750 = getelementptr inbounds float, ptr %745, i64 2
  %751 = load float, ptr %750, align 4, !tbaa !133
  %752 = getelementptr inbounds float, ptr %744, i64 2
  store float %751, ptr %752, align 4, !tbaa !133
  %753 = load ptr, ptr %641, align 8, !tbaa !97
  %754 = icmp eq ptr %753, null
  br i1 %754, label %764, label %755

755:                                              ; preds = %740
  %756 = load ptr, ptr %642, align 8, !tbaa !119
  %757 = getelementptr inbounds [3 x i16], ptr %756, i64 %743
  %758 = load i16, ptr %753, align 2, !tbaa !134
  store i16 %758, ptr %757, align 2, !tbaa !134
  %759 = getelementptr inbounds i16, ptr %753, i64 1
  %760 = load i16, ptr %759, align 2, !tbaa !134
  %761 = getelementptr inbounds i16, ptr %757, i64 1
  store i16 %760, ptr %761, align 2, !tbaa !134
  %762 = getelementptr inbounds i16, ptr %753, i64 2
  %763 = load i16, ptr %762, align 2, !tbaa !134
  br label %780

764:                                              ; preds = %740
  %765 = load ptr, ptr %643, align 8, !tbaa !119
  %766 = getelementptr inbounds [3 x i16], ptr %765, i64 %743
  %767 = load ptr, ptr %644, align 8, !tbaa !88
  %768 = load float, ptr %767, align 4, !tbaa !133
  %769 = fmul float %768, 3.276700e+04
  %770 = fptosi float %769 to i16
  store i16 %770, ptr %766, align 2, !tbaa !134
  %771 = getelementptr inbounds float, ptr %767, i64 1
  %772 = load float, ptr %771, align 4, !tbaa !133
  %773 = fmul float %772, 3.276700e+04
  %774 = fptosi float %773 to i16
  %775 = getelementptr inbounds i16, ptr %766, i64 1
  store i16 %774, ptr %775, align 2, !tbaa !134
  %776 = getelementptr inbounds float, ptr %767, i64 2
  %777 = load float, ptr %776, align 4, !tbaa !133
  %778 = fmul float %777, 3.276700e+04
  %779 = fptosi float %778 to i16
  br label %780

780:                                              ; preds = %764, %755
  %781 = phi ptr [ %765, %764 ], [ %756, %755 ]
  %782 = phi i16 [ %779, %764 ], [ %763, %755 ]
  %783 = getelementptr inbounds [3 x i16], ptr %781, i64 %743, i64 2
  store i16 %782, ptr %783, align 2, !tbaa !134
  %784 = load i8, ptr %645, align 1, !tbaa !131
  %785 = icmp eq i8 %784, 0
  br i1 %785, label %802, label %786

786:                                              ; preds = %780
  %787 = load ptr, ptr %646, align 8, !tbaa !132
  %788 = getelementptr inbounds [3 x float], ptr %787, i64 %743
  %789 = load ptr, ptr %647, align 8, !tbaa !135
  %790 = load ptr, ptr %648, align 8, !tbaa !130
  %791 = getelementptr inbounds i32, ptr %790, i64 %743
  %792 = load i32, ptr %791, align 4, !tbaa !79
  %793 = sext i32 %792 to i64
  %794 = getelementptr inbounds [3 x float], ptr %789, i64 %793
  %795 = load float, ptr %794, align 4, !tbaa !133
  store float %795, ptr %788, align 4, !tbaa !133
  %796 = getelementptr inbounds float, ptr %794, i64 1
  %797 = load float, ptr %796, align 4, !tbaa !133
  %798 = getelementptr inbounds float, ptr %788, i64 1
  store float %797, ptr %798, align 4, !tbaa !133
  %799 = getelementptr inbounds float, ptr %794, i64 2
  %800 = load float, ptr %799, align 4, !tbaa !133
  %801 = getelementptr inbounds float, ptr %788, i64 2
  store float %800, ptr %801, align 4, !tbaa !133
  br label %802

802:                                              ; preds = %786, %780, %696
  %803 = load i32, ptr %612, align 4, !tbaa !83
  %804 = add nsw i32 %803, 1
  store i32 %804, ptr %612, align 4, !tbaa !83
  %805 = load i32, ptr %596, align 4, !tbaa !68
  %806 = add nsw i32 %805, 1
  store i32 %806, ptr %596, align 4, !tbaa !68
  %807 = load i32, ptr %613, align 4, !tbaa !76
  %808 = icmp slt i32 %804, %807
  br i1 %808, label %670, label %809, !llvm.loop !136

809:                                              ; preds = %802, %667
  %810 = load i32, ptr %610, align 8, !tbaa !82
  %811 = add nsw i32 %810, 1
  store i32 %811, ptr %610, align 8, !tbaa !82
  %812 = load i32, ptr %611, align 8, !tbaa !77
  %813 = icmp slt i32 %811, %812
  br i1 %813, label %667, label %814, !llvm.loop !137

814:                                              ; preds = %809, %664
  %815 = load i32, ptr %8, align 8, !tbaa !72
  %816 = add nsw i32 %815, 1
  store i32 %816, ptr %8, align 8, !tbaa !72
  %817 = load i32, ptr %597, align 8, !tbaa !73
  %818 = icmp slt i32 %816, %817
  br i1 %818, label %649, label %819, !llvm.loop !138

819:                                              ; preds = %814, %591
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %8) #6
  br label %1034

820:                                              ; preds = %590
  %821 = load ptr, ptr %569, align 8, !tbaa !127
  %822 = icmp eq ptr %821, null
  br i1 %822, label %823, label %1034

823:                                              ; preds = %820
  %824 = load ptr, ptr %453, align 8, !tbaa !116
  %825 = load ptr, ptr %23, align 8, !tbaa !34
  %826 = getelementptr inbounds %struct.SculptSession, ptr %825, i64 0, i32 15
  %827 = load ptr, ptr %826, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  call void @BKE_pbvh_node_num_verts(ptr noundef %827, ptr noundef %824, ptr noundef null, ptr noundef nonnull %7) #6
  call void @BKE_pbvh_node_get_verts(ptr noundef %827, ptr noundef %824, ptr noundef nonnull %6, ptr noundef nonnull %5) #6
  %828 = load i32, ptr %7, align 4, !tbaa !79
  %829 = icmp sgt i32 %828, 0
  br i1 %829, label %830, label %867

830:                                              ; preds = %823
  %831 = load ptr, ptr %5, align 8, !tbaa !49
  %832 = load ptr, ptr %6, align 8, !tbaa !49
  %833 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 12
  %834 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 12
  br label %835

835:                                              ; preds = %830, %862
  %836 = phi i64 [ 0, %830 ], [ %863, %862 ]
  %837 = getelementptr inbounds i32, ptr %832, i64 %836
  %838 = load i32, ptr %837, align 4, !tbaa !79
  %839 = sext i32 %838 to i64
  %840 = getelementptr inbounds %struct.MVert, ptr %831, i64 %839, i32 2
  %841 = load i8, ptr %840, align 2, !tbaa !139
  %842 = and i8 %841, 16
  %843 = icmp eq i8 %842, 0
  %844 = trunc i64 %836 to i32
  %845 = and i32 %844, 31
  %846 = shl nuw i32 1, %845
  br i1 %843, label %854, label %847

847:                                              ; preds = %835
  %848 = load ptr, ptr %833, align 8, !tbaa !122
  %849 = lshr i64 %836, 5
  %850 = and i64 %849, 134217727
  %851 = getelementptr inbounds i32, ptr %848, i64 %850
  %852 = load i32, ptr %851, align 4, !tbaa !79
  %853 = or i32 %852, %846
  store i32 %853, ptr %851, align 4, !tbaa !79
  br label %862

854:                                              ; preds = %835
  %855 = xor i32 %846, -1
  %856 = load ptr, ptr %834, align 8, !tbaa !122
  %857 = lshr i64 %836, 5
  %858 = and i64 %857, 134217727
  %859 = getelementptr inbounds i32, ptr %856, i64 %858
  %860 = load i32, ptr %859, align 4, !tbaa !79
  %861 = and i32 %860, %855
  store i32 %861, ptr %859, align 4, !tbaa !79
  br label %862

862:                                              ; preds = %854, %847
  %863 = add nuw nsw i64 %836, 1
  %864 = load i32, ptr %7, align 4, !tbaa !79
  %865 = sext i32 %864 to i64
  %866 = icmp slt i64 %863, %865
  br i1 %866, label %835, label %867, !llvm.loop !141

867:                                              ; preds = %862, %823
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  br label %1034

868:                                              ; preds = %590
  %869 = load ptr, ptr %23, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %4) #6
  %870 = getelementptr inbounds %struct.SculptSession, ptr %869, i64 0, i32 15
  %871 = load ptr, ptr %870, align 8, !tbaa !67
  %872 = load ptr, ptr %453, align 8, !tbaa !116
  call void @pbvh_vertex_iter_init(ptr noundef %871, ptr noundef %872, ptr noundef nonnull %4, i32 noundef 0) #6
  %873 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 5
  store i32 0, ptr %873, align 4, !tbaa !68
  %874 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 12
  store i32 0, ptr %4, align 8, !tbaa !72
  %875 = load i32, ptr %874, align 8, !tbaa !73
  %876 = icmp sgt i32 %875, 0
  br i1 %876, label %877, label %1033

877:                                              ; preds = %868
  %878 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 6
  %879 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 13
  %880 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 1
  %881 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 2
  %882 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 11
  %883 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 7
  %884 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 15
  %885 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 1
  %886 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 2
  %887 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 4
  %888 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 2
  %889 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 3
  %890 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 1
  %891 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 7
  %892 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 8
  %893 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 24
  %894 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 26
  %895 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 27
  %896 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 10
  %897 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 13
  %898 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 14
  %899 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 16
  %900 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 22
  %901 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 24
  %902 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 25
  %903 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 17
  %904 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 27
  %905 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 18, i32 0, i32 1
  %906 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 18
  %907 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 23
  %908 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 19
  %909 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 19, i32 0, i32 1
  %910 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 23
  %911 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 23
  %912 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 24
  %913 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 26
  %914 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 21
  %915 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 27
  %916 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 27
  %917 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 8
  br label %918

918:                                              ; preds = %877, %1028
  %919 = phi i32 [ 0, %877 ], [ %1030, %1028 ]
  %920 = load ptr, ptr %878, align 8, !tbaa !74
  %921 = icmp eq ptr %920, null
  br i1 %921, label %931, label %922

922:                                              ; preds = %918
  %923 = load i32, ptr %879, align 4, !tbaa !75
  store i32 %923, ptr %880, align 4, !tbaa !76
  store i32 %923, ptr %881, align 8, !tbaa !77
  %924 = load ptr, ptr %882, align 8, !tbaa !78
  %925 = sext i32 %919 to i64
  %926 = getelementptr inbounds i32, ptr %924, i64 %925
  %927 = load i32, ptr %926, align 4, !tbaa !79
  %928 = sext i32 %927 to i64
  %929 = getelementptr inbounds ptr, ptr %920, i64 %928
  %930 = load ptr, ptr %929, align 8, !tbaa !49
  store ptr %930, ptr %883, align 8, !tbaa !80
  br label %933

931:                                              ; preds = %918
  %932 = load i32, ptr %884, align 8, !tbaa !81
  store i32 %932, ptr %885, align 4, !tbaa !76
  store i32 1, ptr %886, align 8, !tbaa !77
  br label %933

933:                                              ; preds = %931, %922
  store i32 0, ptr %887, align 8, !tbaa !82
  %934 = load i32, ptr %888, align 8, !tbaa !77
  %935 = icmp sgt i32 %934, 0
  br i1 %935, label %936, label %1028

936:                                              ; preds = %933, %1023
  store i32 0, ptr %889, align 4, !tbaa !83
  %937 = load i32, ptr %890, align 4, !tbaa !76
  %938 = icmp sgt i32 %937, 0
  br i1 %938, label %939, label %1023

939:                                              ; preds = %936, %1016
  %940 = phi i32 [ %1018, %1016 ], [ 0, %936 ]
  %941 = load ptr, ptr %891, align 8, !tbaa !80
  %942 = icmp eq ptr %941, null
  br i1 %942, label %978, label %943

943:                                              ; preds = %939
  store ptr %941, ptr %893, align 8, !tbaa !84
  %944 = load ptr, ptr %892, align 8, !tbaa !85
  %945 = getelementptr inbounds %struct.CCGKey, ptr %944, i64 0, i32 5
  %946 = load i32, ptr %945, align 4, !tbaa !86
  %947 = sext i32 %946 to i64
  %948 = getelementptr inbounds i8, ptr %941, i64 %947
  store ptr %948, ptr %894, align 8, !tbaa !88
  %949 = getelementptr inbounds %struct.CCGKey, ptr %944, i64 0, i32 9
  %950 = load i32, ptr %949, align 4, !tbaa !89
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %957, label %952

952:                                              ; preds = %943
  %953 = getelementptr inbounds %struct.CCGKey, ptr %944, i64 0, i32 6
  %954 = load i32, ptr %953, align 4, !tbaa !90
  %955 = sext i32 %954 to i64
  %956 = getelementptr inbounds i8, ptr %941, i64 %955
  br label %957

957:                                              ; preds = %952, %943
  %958 = phi ptr [ %956, %952 ], [ null, %943 ]
  store ptr %958, ptr %895, align 8, !tbaa !91
  %959 = getelementptr inbounds %struct.CCGKey, ptr %944, i64 0, i32 1
  %960 = load i32, ptr %959, align 4, !tbaa !92
  %961 = sext i32 %960 to i64
  %962 = getelementptr inbounds i8, ptr %941, i64 %961
  store ptr %962, ptr %891, align 8, !tbaa !80
  %963 = load ptr, ptr %896, align 8, !tbaa !93
  %964 = icmp eq ptr %963, null
  br i1 %964, label %1009, label %965

965:                                              ; preds = %957
  %966 = load i32, ptr %887, align 8, !tbaa !82
  %967 = load i32, ptr %897, align 4, !tbaa !75
  %968 = mul nsw i32 %967, %966
  %969 = add nsw i32 %968, %940
  %970 = ashr i32 %969, 5
  %971 = sext i32 %970 to i64
  %972 = getelementptr inbounds i32, ptr %963, i64 %971
  %973 = load i32, ptr %972, align 4, !tbaa !79
  %974 = and i32 %969, 31
  %975 = shl nuw i32 1, %974
  %976 = and i32 %975, %973
  %977 = icmp eq i32 %976, 0
  br i1 %977, label %1009, label %1016

978:                                              ; preds = %939
  %979 = load ptr, ptr %898, align 8, !tbaa !94
  %980 = icmp eq ptr %979, null
  br i1 %980, label %993, label %981

981:                                              ; preds = %978
  %982 = load ptr, ptr %899, align 8, !tbaa !95
  %983 = sext i32 %940 to i64
  %984 = getelementptr inbounds i32, ptr %982, i64 %983
  %985 = load i32, ptr %984, align 4, !tbaa !79
  %986 = sext i32 %985 to i64
  %987 = getelementptr inbounds %struct.MVert, ptr %979, i64 %986
  store ptr %987, ptr %900, align 8, !tbaa !96
  store ptr %987, ptr %901, align 8, !tbaa !84
  %988 = getelementptr inbounds %struct.MVert, ptr %979, i64 %986, i32 1
  store ptr %988, ptr %902, align 8, !tbaa !97
  %989 = load ptr, ptr %903, align 8, !tbaa !98
  %990 = icmp eq ptr %989, null
  br i1 %990, label %1009, label %991

991:                                              ; preds = %981
  %992 = getelementptr inbounds float, ptr %989, i64 %986
  store ptr %992, ptr %904, align 8, !tbaa !91
  br label %1009

993:                                              ; preds = %978
  %994 = load ptr, ptr %905, align 8, !tbaa !99
  %995 = icmp eq ptr %994, null
  %996 = load ptr, ptr %909, align 8
  %997 = select i1 %995, ptr %996, ptr %994
  %998 = select i1 %995, ptr %910, ptr %907
  %999 = select i1 %995, ptr %908, ptr %906
  %1000 = getelementptr inbounds %struct._gh_Entry, ptr %997, i64 0, i32 1
  %1001 = load ptr, ptr %1000, align 8, !tbaa !100
  store ptr %1001, ptr %998, align 8, !tbaa !102
  call void @BLI_ghashIterator_step(ptr noundef nonnull %999) #6
  %1002 = load ptr, ptr %911, align 8, !tbaa !102
  %1003 = getelementptr inbounds %struct.BMVert, ptr %1002, i64 0, i32 2
  store ptr %1003, ptr %912, align 8, !tbaa !84
  %1004 = getelementptr inbounds %struct.BMVert, ptr %1002, i64 0, i32 3
  store ptr %1004, ptr %913, align 8, !tbaa !88
  %1005 = load ptr, ptr %1002, align 8, !tbaa !103
  %1006 = load i32, ptr %914, align 8, !tbaa !106
  %1007 = sext i32 %1006 to i64
  %1008 = getelementptr inbounds i8, ptr %1005, i64 %1007
  store ptr %1008, ptr %915, align 8, !tbaa !91
  br label %1009

1009:                                             ; preds = %993, %991, %981, %965, %957
  %1010 = load ptr, ptr %916, align 8, !tbaa !91
  %1011 = load float, ptr %1010, align 4, !tbaa !133
  %1012 = load ptr, ptr %917, align 8, !tbaa !123
  %1013 = load i32, ptr %873, align 4, !tbaa !68
  %1014 = sext i32 %1013 to i64
  %1015 = getelementptr inbounds float, ptr %1012, i64 %1014
  store float %1011, ptr %1015, align 4, !tbaa !133
  br label %1016

1016:                                             ; preds = %1009, %965
  %1017 = load i32, ptr %889, align 4, !tbaa !83
  %1018 = add nsw i32 %1017, 1
  store i32 %1018, ptr %889, align 4, !tbaa !83
  %1019 = load i32, ptr %873, align 4, !tbaa !68
  %1020 = add nsw i32 %1019, 1
  store i32 %1020, ptr %873, align 4, !tbaa !68
  %1021 = load i32, ptr %890, align 4, !tbaa !76
  %1022 = icmp slt i32 %1018, %1021
  br i1 %1022, label %939, label %1023, !llvm.loop !142

1023:                                             ; preds = %1016, %936
  %1024 = load i32, ptr %887, align 8, !tbaa !82
  %1025 = add nsw i32 %1024, 1
  store i32 %1025, ptr %887, align 8, !tbaa !82
  %1026 = load i32, ptr %888, align 8, !tbaa !77
  %1027 = icmp slt i32 %1025, %1026
  br i1 %1027, label %936, label %1028, !llvm.loop !143

1028:                                             ; preds = %1023, %933
  %1029 = load i32, ptr %4, align 8, !tbaa !72
  %1030 = add nsw i32 %1029, 1
  store i32 %1030, ptr %4, align 8, !tbaa !72
  %1031 = load i32, ptr %874, align 8, !tbaa !73
  %1032 = icmp slt i32 %1030, %1031
  br i1 %1032, label %918, label %1033, !llvm.loop !144

1033:                                             ; preds = %1028, %868
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %4) #6
  br label %1034

1034:                                             ; preds = %867, %820, %590, %1033, %819
  %1035 = getelementptr inbounds %struct.SculptSession, ptr %24, i64 0, i32 7
  %1036 = load ptr, ptr %1035, align 8, !tbaa !145
  %1037 = icmp eq ptr %1036, null
  %1038 = getelementptr inbounds %struct.SculptUndoNode, ptr %448, i64 0, i32 28
  br i1 %1037, label %1042, label %1039

1039:                                             ; preds = %1034
  %1040 = getelementptr inbounds %struct.KeyBlock, ptr %1036, i64 0, i32 11
  %1041 = call ptr @BLI_strncpy(ptr noundef nonnull %1038, ptr noundef nonnull %1040, i64 noundef 64) #6
  br label %1043

1042:                                             ; preds = %1034
  store i8 0, ptr %1038, align 8, !tbaa !146
  br label %1043

1043:                                             ; preds = %1039, %1042, %443, %435
  %1044 = phi ptr [ %95, %435 ], [ %441, %443 ], [ %448, %1042 ], [ %448, %1039 ]
  ret ptr %1044
}

declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #2

declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #2

declare void @BKE_pbvh_node_get_grids(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @BKE_pbvh_node_num_verts(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_pbvh_node_get_verts(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @sculpt_undo_push_begin(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @ED_undo_paint_push_begin(i32 noundef 1, ptr noundef %0, ptr noundef nonnull @sculpt_undo_restore, ptr noundef nonnull @sculpt_undo_free, ptr noundef nonnull @sculpt_undo_cleanup) #6
  ret void
}

declare void @ED_undo_paint_push_begin(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @sculpt_undo_restore(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.CCGKey, align 4
  %4 = alloca %struct.CCGKey, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %9 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #6
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !147
  %12 = tail call ptr @CTX_data_active_object(ptr noundef %0) #6
  %13 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #6
  store i8 0, ptr %7, align 1, !tbaa !146
  %15 = load ptr, ptr %1, align 8, !tbaa !49
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.ID, ptr %12, i64 0, i32 4
  br label %19

19:                                               ; preds = %17, %28
  %20 = phi ptr [ %15, %17 ], [ %29, %28 ]
  %21 = getelementptr inbounds %struct.SculptUndoNode, ptr %20, i64 0, i32 3
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(1) %18) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.SculptUndoNode, ptr %20, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !50
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %31, label %28

28:                                               ; preds = %19, %24
  %29 = load ptr, ptr %20, align 8, !tbaa !49
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %19, !llvm.loop !154

31:                                               ; preds = %28, %24, %2
  %32 = phi i8 [ 0, %2 ], [ 0, %28 ], [ 1, %24 ]
  tail call void @BKE_sculpt_update_mesh_elements(ptr noundef %8, ptr noundef %11, ptr noundef %12, i8 noundef zeroext 0, i8 noundef zeroext %32) #6
  %33 = tail call ptr @mesh_get_derived_final(ptr noundef %8, ptr noundef %12, i64 noundef 0) #6
  %34 = load ptr, ptr %1, align 8, !tbaa !48
  %35 = icmp eq ptr %34, null
  br i1 %35, label %128, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.SculptUndoNode, ptr %34, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !50
  switch i32 %38, label %91 [
    i32 3, label %39
    i32 4, label %65
  ]

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.SculptUndoNode, ptr %34, i64 0, i32 19
  %41 = load i8, ptr %40, align 8, !tbaa !53
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @sculpt_dynamic_topology_disable(ptr noundef %0, ptr noundef nonnull %34) #6
  br label %63

44:                                               ; preds = %39
  %45 = load ptr, ptr %13, align 8, !tbaa !34
  %46 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 19
  %47 = load ptr, ptr %46, align 8, !tbaa !56
  tail call void @sculpt_pbvh_clear(ptr noundef %12) #6
  %48 = tail call ptr @BM_mesh_create(ptr noundef nonnull @bm_mesh_allocsize_default) #6
  %49 = getelementptr inbounds %struct.SculptSession, ptr %45, i64 0, i32 10
  store ptr %48, ptr %49, align 8, !tbaa !46
  %50 = getelementptr inbounds %struct.BMesh, ptr %48, i64 0, i32 24
  tail call void @BM_data_layer_add(ptr noundef %48, ptr noundef nonnull %50, i32 noundef 34) #6
  tail call void @sculpt_dyntopo_node_layers_add(ptr noundef %45) #6
  %51 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 38
  %52 = load i16, ptr %51, align 2, !tbaa !155
  %53 = or i16 %52, 1024
  store i16 %53, ptr %51, align 2, !tbaa !155
  %54 = load ptr, ptr %49, align 8, !tbaa !46
  %55 = getelementptr inbounds %struct.SculptUndoNode, ptr %34, i64 0, i32 18
  %56 = load ptr, ptr %55, align 8, !tbaa !55
  %57 = tail call ptr @BM_log_from_existing_entries_create(ptr noundef %54, ptr noundef %56) #6
  %58 = getelementptr inbounds %struct.SculptSession, ptr %45, i64 0, i32 14
  store ptr %57, ptr %58, align 8, !tbaa !54
  %59 = getelementptr inbounds %struct.SculptSession, ptr %14, i64 0, i32 10
  %60 = load ptr, ptr %59, align 8, !tbaa !46
  %61 = getelementptr inbounds %struct.SculptSession, ptr %14, i64 0, i32 14
  %62 = load ptr, ptr %61, align 8, !tbaa !54
  tail call void @BM_log_redo(ptr noundef %60, ptr noundef %62) #6
  br label %63

63:                                               ; preds = %44, %43
  %64 = phi i8 [ 1, %44 ], [ 0, %43 ]
  store i8 %64, ptr %40, align 8, !tbaa !53
  br label %706

65:                                               ; preds = %36
  %66 = getelementptr inbounds %struct.SculptUndoNode, ptr %34, i64 0, i32 19
  %67 = load i8, ptr %66, align 8, !tbaa !53
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %88, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %13, align 8, !tbaa !34
  %71 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 19
  %72 = load ptr, ptr %71, align 8, !tbaa !56
  tail call void @sculpt_pbvh_clear(ptr noundef %12) #6
  %73 = tail call ptr @BM_mesh_create(ptr noundef nonnull @bm_mesh_allocsize_default) #6
  %74 = getelementptr inbounds %struct.SculptSession, ptr %70, i64 0, i32 10
  store ptr %73, ptr %74, align 8, !tbaa !46
  %75 = getelementptr inbounds %struct.BMesh, ptr %73, i64 0, i32 24
  tail call void @BM_data_layer_add(ptr noundef %73, ptr noundef nonnull %75, i32 noundef 34) #6
  tail call void @sculpt_dyntopo_node_layers_add(ptr noundef %70) #6
  %76 = getelementptr inbounds %struct.Mesh, ptr %72, i64 0, i32 38
  %77 = load i16, ptr %76, align 2, !tbaa !155
  %78 = or i16 %77, 1024
  store i16 %78, ptr %76, align 2, !tbaa !155
  %79 = load ptr, ptr %74, align 8, !tbaa !46
  %80 = getelementptr inbounds %struct.SculptUndoNode, ptr %34, i64 0, i32 18
  %81 = load ptr, ptr %80, align 8, !tbaa !55
  %82 = tail call ptr @BM_log_from_existing_entries_create(ptr noundef %79, ptr noundef %81) #6
  %83 = getelementptr inbounds %struct.SculptSession, ptr %70, i64 0, i32 14
  store ptr %82, ptr %83, align 8, !tbaa !54
  %84 = getelementptr inbounds %struct.SculptSession, ptr %14, i64 0, i32 10
  %85 = load ptr, ptr %84, align 8, !tbaa !46
  %86 = getelementptr inbounds %struct.SculptSession, ptr %14, i64 0, i32 14
  %87 = load ptr, ptr %86, align 8, !tbaa !54
  tail call void @BM_log_undo(ptr noundef %85, ptr noundef %87) #6
  br label %89

88:                                               ; preds = %65
  tail call void @sculpt_dynamic_topology_disable(ptr noundef %0, ptr noundef null) #6
  br label %89

89:                                               ; preds = %88, %69
  %90 = phi i8 [ 1, %88 ], [ 0, %69 ]
  store i8 %90, ptr %66, align 8, !tbaa !53
  br label %706

91:                                               ; preds = %36
  %92 = getelementptr inbounds %struct.SculptSession, ptr %14, i64 0, i32 14
  %93 = load ptr, ptr %92, align 8, !tbaa !54
  %94 = icmp eq ptr %93, null
  br i1 %94, label %128, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.SculptUndoNode, ptr %34, i64 0, i32 19
  %97 = load i8, ptr %96, align 8, !tbaa !53
  %98 = icmp eq i8 %97, 0
  %99 = getelementptr inbounds %struct.SculptSession, ptr %14, i64 0, i32 10
  %100 = load ptr, ptr %99, align 8, !tbaa !46
  br i1 %98, label %102, label %101

101:                                              ; preds = %95
  tail call void @BM_log_undo(ptr noundef %100, ptr noundef nonnull %93) #6
  br label %103

102:                                              ; preds = %95
  tail call void @BM_log_redo(ptr noundef %100, ptr noundef nonnull %93) #6
  br label %103

103:                                              ; preds = %102, %101
  %104 = phi i8 [ 1, %102 ], [ 0, %101 ]
  store i8 %104, ptr %96, align 8, !tbaa !53
  %105 = load i32, ptr %37, align 8, !tbaa !50
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %127

107:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %108 = getelementptr inbounds %struct.SculptSession, ptr %14, i64 0, i32 15
  %109 = load ptr, ptr %108, align 8, !tbaa !67
  call void @BKE_pbvh_search_gather(ptr noundef %109, ptr noundef null, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %5) #6
  %110 = load i32, ptr %5, align 4, !tbaa !79
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %107, %112
  %113 = phi i64 [ %117, %112 ], [ 0, %107 ]
  %114 = load ptr, ptr %6, align 8, !tbaa !49
  %115 = getelementptr inbounds ptr, ptr %114, i64 %113
  %116 = load ptr, ptr %115, align 8, !tbaa !49
  call void @BKE_pbvh_node_mark_redraw(ptr noundef %116) #6
  %117 = add nuw nsw i64 %113, 1
  %118 = load i32, ptr %5, align 4, !tbaa !79
  %119 = sext i32 %118 to i64
  %120 = icmp slt i64 %117, %119
  br i1 %120, label %112, label %121, !llvm.loop !156

121:                                              ; preds = %112, %107
  %122 = load ptr, ptr %6, align 8, !tbaa !49
  %123 = icmp eq ptr %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %125(ptr noundef nonnull %122) #6
  br label %126

126:                                              ; preds = %124, %121
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  br label %706

127:                                              ; preds = %103
  tail call void @sculpt_pbvh_clear(ptr noundef %12) #6
  br label %706

128:                                              ; preds = %91, %31
  %129 = load ptr, ptr %1, align 8, !tbaa !49
  %130 = icmp eq ptr %129, null
  br i1 %130, label %659, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.ID, ptr %12, i64 0, i32 4
  %133 = getelementptr inbounds %struct.SculptSession, ptr %14, i64 0, i32 4
  %134 = getelementptr inbounds %struct.DerivedMesh, ptr %33, i64 0, i32 65
  %135 = getelementptr inbounds %struct.DerivedMesh, ptr %33, i64 0, i32 63
  %136 = getelementptr inbounds %struct.DerivedMesh, ptr %33, i64 0, i32 64
  %137 = getelementptr inbounds %struct.DerivedMesh, ptr %33, i64 0, i32 65
  %138 = getelementptr inbounds %struct.DerivedMesh, ptr %33, i64 0, i32 64
  %139 = getelementptr inbounds %struct.DerivedMesh, ptr %33, i64 0, i32 68
  %140 = getelementptr inbounds %struct.CCGKey, ptr %3, i64 0, i32 1
  %141 = getelementptr inbounds %struct.CCGKey, ptr %3, i64 0, i32 6
  %142 = getelementptr inbounds %struct.DerivedMesh, ptr %33, i64 0, i32 65
  %143 = getelementptr inbounds %struct.DerivedMesh, ptr %33, i64 0, i32 70
  %144 = getelementptr inbounds %struct.DerivedMesh, ptr %33, i64 0, i32 65
  %145 = getelementptr inbounds %struct.DerivedMesh, ptr %33, i64 0, i32 64
  %146 = getelementptr inbounds %struct.DerivedMesh, ptr %33, i64 0, i32 68
  %147 = getelementptr inbounds %struct.CCGKey, ptr %4, i64 0, i32 1
  br label %148

148:                                              ; preds = %131, %653
  %149 = phi ptr [ %129, %131 ], [ %655, %653 ]
  %150 = phi i8 [ 0, %131 ], [ %654, %653 ]
  %151 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 3
  %152 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %151, ptr noundef nonnull dereferenceable(1) %132) #7
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %653

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 10
  %156 = load i32, ptr %155, align 4, !tbaa !129
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  %159 = load i32, ptr %133, align 8, !tbaa !128
  %160 = icmp eq i32 %159, %156
  br i1 %160, label %179, label %653

161:                                              ; preds = %154
  %162 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 13
  %163 = load i32, ptr %162, align 8, !tbaa !124
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %179, label %165

165:                                              ; preds = %161
  %166 = load ptr, ptr %134, align 8, !tbaa !157
  %167 = icmp eq ptr %166, null
  br i1 %167, label %179, label %168

168:                                              ; preds = %165
  %169 = load ptr, ptr %135, align 8, !tbaa !159
  %170 = call i32 %169(ptr noundef %33) #6
  %171 = load i32, ptr %162, align 8, !tbaa !124
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %653

173:                                              ; preds = %168
  %174 = load ptr, ptr %136, align 8, !tbaa !160
  %175 = call i32 %174(ptr noundef %33) #6
  %176 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 14
  %177 = load i32, ptr %176, align 4, !tbaa !126
  %178 = icmp eq i32 %175, %177
  br i1 %178, label %179, label %653

179:                                              ; preds = %161, %165, %173, %158
  %180 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 2
  %181 = load i32, ptr %180, align 8, !tbaa !50
  switch i32 %181, label %653 [
    i32 0, label %182
    i32 1, label %482
    i32 2, label %565
  ]

182:                                              ; preds = %179
  %183 = call ptr @CTX_data_scene(ptr noundef %0) #6
  %184 = call ptr @CTX_data_tool_settings(ptr noundef %0) #6
  %185 = getelementptr inbounds %struct.ToolSettings, ptr %184, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !147
  %187 = call ptr @CTX_data_active_object(ptr noundef %0) #6
  %188 = getelementptr inbounds %struct.Object, ptr %187, i64 0, i32 2
  %189 = load ptr, ptr %188, align 8, !tbaa !34
  %190 = load i32, ptr %155, align 4, !tbaa !129
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %424, label %192

192:                                              ; preds = %182
  %193 = getelementptr inbounds %struct.SculptSession, ptr %189, i64 0, i32 7
  %194 = load ptr, ptr %193, align 8, !tbaa !145
  %195 = icmp eq ptr %194, null
  br i1 %195, label %215, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.KeyBlock, ptr %194, i64 0, i32 11
  %198 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 28
  %199 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %197, ptr noundef nonnull dereferenceable(1) %198) #7
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %215, label %201

201:                                              ; preds = %196
  %202 = call ptr @BKE_key_from_object(ptr noundef %187) #6
  %203 = icmp eq ptr %202, null
  br i1 %203, label %206, label %204

204:                                              ; preds = %201
  %205 = call ptr @BKE_keyblock_find_name(ptr noundef nonnull %202, ptr noundef nonnull %198) #6
  br label %206

206:                                              ; preds = %204, %201
  %207 = phi ptr [ %205, %204 ], [ null, %201 ]
  %208 = icmp eq ptr %207, null
  br i1 %208, label %653, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.Key, ptr %202, i64 0, i32 6
  %211 = call i32 @BLI_findindex(ptr noundef nonnull %210, ptr noundef nonnull %207) #6
  %212 = trunc i32 %211 to i16
  %213 = add i16 %212, 1
  %214 = getelementptr inbounds %struct.Object, ptr %187, i64 0, i32 115
  store i16 %213, ptr %214, align 2, !tbaa !161
  call void @BKE_sculpt_update_mesh_elements(ptr noundef %183, ptr noundef %186, ptr noundef %187, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 89849856, ptr noundef %187) #6
  br label %215

215:                                              ; preds = %209, %196, %192
  %216 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 11
  %217 = load ptr, ptr %216, align 8, !tbaa !130
  %218 = getelementptr inbounds %struct.SculptSession, ptr %189, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !162
  %220 = load ptr, ptr %193, align 8, !tbaa !145
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %237

222:                                              ; preds = %215
  %223 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 9
  %224 = load i32, ptr %223, align 8, !tbaa !117
  %225 = icmp sgt i32 %224, 0
  br i1 %225, label %226, label %653

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.SculptSession, ptr %189, i64 0, i32 17
  %228 = load i8, ptr %227, align 1, !tbaa !131
  %229 = icmp eq i8 %228, 0
  %230 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 6
  %231 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 5
  %232 = getelementptr inbounds %struct.SculptSession, ptr %189, i64 0, i32 19
  %233 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 5
  %234 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 6
  %235 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 5
  %236 = zext nneg i32 %224 to i64
  br label %338

237:                                              ; preds = %215
  %238 = call ptr @BKE_key_convert_to_vertcos(ptr noundef %187, ptr noundef nonnull %220) #6
  %239 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 9
  %240 = load i32, ptr %239, align 8, !tbaa !117
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %333

242:                                              ; preds = %237
  %243 = getelementptr inbounds %struct.SculptSession, ptr %189, i64 0, i32 17
  %244 = load i8, ptr %243, align 1, !tbaa !131
  %245 = icmp eq i8 %244, 0
  %246 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 6
  %247 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 5
  %248 = getelementptr inbounds %struct.SculptSession, ptr %189, i64 0, i32 19
  %249 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 5
  %250 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 6
  %251 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 5
  %252 = zext nneg i32 %240 to i64
  br label %253

253:                                              ; preds = %242, %330
  %254 = phi i64 [ 0, %242 ], [ %331, %330 ]
  br i1 %245, label %298, label %255

255:                                              ; preds = %253
  %256 = getelementptr inbounds i32, ptr %217, i64 %254
  %257 = load i32, ptr %256, align 4, !tbaa !79
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [3 x float], ptr %238, i64 %258
  %260 = load ptr, ptr %246, align 8, !tbaa !132
  %261 = icmp eq ptr %260, null
  br i1 %261, label %285, label %262

262:                                              ; preds = %255
  %263 = getelementptr inbounds [3 x float], ptr %260, i64 %254
  %264 = load float, ptr %259, align 4, !tbaa !133
  %265 = load float, ptr %263, align 4, !tbaa !133
  store float %265, ptr %259, align 4, !tbaa !133
  store float %264, ptr %263, align 4, !tbaa !133
  %266 = getelementptr inbounds float, ptr %259, i64 1
  %267 = load float, ptr %266, align 4, !tbaa !133
  %268 = getelementptr inbounds float, ptr %263, i64 1
  %269 = load float, ptr %268, align 4, !tbaa !133
  store float %269, ptr %266, align 4, !tbaa !133
  store float %267, ptr %268, align 4, !tbaa !133
  %270 = getelementptr inbounds float, ptr %259, i64 2
  %271 = load float, ptr %270, align 4, !tbaa !133
  %272 = getelementptr inbounds float, ptr %263, i64 2
  %273 = load float, ptr %272, align 4, !tbaa !133
  store float %273, ptr %270, align 4, !tbaa !133
  store float %271, ptr %272, align 4, !tbaa !133
  %274 = load ptr, ptr %247, align 8, !tbaa !118
  %275 = getelementptr inbounds [3 x float], ptr %274, i64 %254
  %276 = load ptr, ptr %248, align 8, !tbaa !163
  %277 = getelementptr inbounds [3 x float], ptr %276, i64 %258
  %278 = load float, ptr %277, align 4, !tbaa !133
  store float %278, ptr %275, align 4, !tbaa !133
  %279 = getelementptr inbounds float, ptr %277, i64 1
  %280 = load float, ptr %279, align 4, !tbaa !133
  %281 = getelementptr inbounds float, ptr %275, i64 1
  store float %280, ptr %281, align 4, !tbaa !133
  %282 = getelementptr inbounds float, ptr %277, i64 2
  %283 = load float, ptr %282, align 4, !tbaa !133
  %284 = getelementptr inbounds float, ptr %275, i64 2
  store float %283, ptr %284, align 4, !tbaa !133
  br label %330

285:                                              ; preds = %255
  %286 = load ptr, ptr %249, align 8, !tbaa !118
  %287 = getelementptr inbounds [3 x float], ptr %286, i64 %254
  %288 = load float, ptr %259, align 4, !tbaa !133
  %289 = load float, ptr %287, align 4, !tbaa !133
  store float %289, ptr %259, align 4, !tbaa !133
  store float %288, ptr %287, align 4, !tbaa !133
  %290 = getelementptr inbounds float, ptr %259, i64 1
  %291 = load float, ptr %290, align 4, !tbaa !133
  %292 = getelementptr inbounds float, ptr %287, i64 1
  %293 = load float, ptr %292, align 4, !tbaa !133
  store float %293, ptr %290, align 4, !tbaa !133
  store float %291, ptr %292, align 4, !tbaa !133
  %294 = getelementptr inbounds float, ptr %259, i64 2
  %295 = load float, ptr %294, align 4, !tbaa !133
  %296 = getelementptr inbounds float, ptr %287, i64 2
  %297 = load float, ptr %296, align 4, !tbaa !133
  store float %297, ptr %294, align 4, !tbaa !133
  store float %295, ptr %296, align 4, !tbaa !133
  br label %330

298:                                              ; preds = %253
  %299 = load ptr, ptr %250, align 8, !tbaa !132
  %300 = icmp eq ptr %299, null
  %301 = getelementptr inbounds i32, ptr %217, i64 %254
  %302 = load i32, ptr %301, align 4, !tbaa !79
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [3 x float], ptr %238, i64 %303
  br i1 %300, label %317, label %305

305:                                              ; preds = %298
  %306 = getelementptr inbounds [3 x float], ptr %299, i64 %254
  %307 = load float, ptr %304, align 4, !tbaa !133
  %308 = load float, ptr %306, align 4, !tbaa !133
  store float %308, ptr %304, align 4, !tbaa !133
  store float %307, ptr %306, align 4, !tbaa !133
  %309 = getelementptr inbounds float, ptr %304, i64 1
  %310 = load float, ptr %309, align 4, !tbaa !133
  %311 = getelementptr inbounds float, ptr %306, i64 1
  %312 = load float, ptr %311, align 4, !tbaa !133
  store float %312, ptr %309, align 4, !tbaa !133
  store float %310, ptr %311, align 4, !tbaa !133
  %313 = getelementptr inbounds float, ptr %304, i64 2
  %314 = load float, ptr %313, align 4, !tbaa !133
  %315 = getelementptr inbounds float, ptr %306, i64 2
  %316 = load float, ptr %315, align 4, !tbaa !133
  store float %316, ptr %313, align 4, !tbaa !133
  store float %314, ptr %315, align 4, !tbaa !133
  br label %330

317:                                              ; preds = %298
  %318 = load ptr, ptr %251, align 8, !tbaa !118
  %319 = getelementptr inbounds [3 x float], ptr %318, i64 %254
  %320 = load float, ptr %304, align 4, !tbaa !133
  %321 = load float, ptr %319, align 4, !tbaa !133
  store float %321, ptr %304, align 4, !tbaa !133
  store float %320, ptr %319, align 4, !tbaa !133
  %322 = getelementptr inbounds float, ptr %304, i64 1
  %323 = load float, ptr %322, align 4, !tbaa !133
  %324 = getelementptr inbounds float, ptr %319, i64 1
  %325 = load float, ptr %324, align 4, !tbaa !133
  store float %325, ptr %322, align 4, !tbaa !133
  store float %323, ptr %324, align 4, !tbaa !133
  %326 = getelementptr inbounds float, ptr %304, i64 2
  %327 = load float, ptr %326, align 4, !tbaa !133
  %328 = getelementptr inbounds float, ptr %319, i64 2
  %329 = load float, ptr %328, align 4, !tbaa !133
  store float %329, ptr %326, align 4, !tbaa !133
  store float %327, ptr %328, align 4, !tbaa !133
  br label %330

330:                                              ; preds = %285, %262, %317, %305
  %331 = add nuw nsw i64 %254, 1
  %332 = icmp eq i64 %331, %252
  br i1 %332, label %333, label %253, !llvm.loop !164

333:                                              ; preds = %330, %237
  %334 = load ptr, ptr %193, align 8, !tbaa !145
  call void @sculpt_vertcos_to_key(ptr noundef %187, ptr noundef %334, ptr noundef %238) #6
  %335 = getelementptr inbounds %struct.SculptSession, ptr %189, i64 0, i32 15
  %336 = load ptr, ptr %335, align 8, !tbaa !67
  call void @BKE_pbvh_apply_vertCos(ptr noundef %336, ptr noundef %238) #6
  %337 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %337(ptr noundef %238) #6
  br label %653

338:                                              ; preds = %226, %415
  %339 = phi i64 [ 0, %226 ], [ %422, %415 ]
  br i1 %229, label %383, label %340

340:                                              ; preds = %338
  %341 = getelementptr inbounds i32, ptr %217, i64 %339
  %342 = load i32, ptr %341, align 4, !tbaa !79
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.MVert, ptr %219, i64 %343
  %345 = load ptr, ptr %230, align 8, !tbaa !132
  %346 = icmp eq ptr %345, null
  br i1 %346, label %370, label %347

347:                                              ; preds = %340
  %348 = getelementptr inbounds [3 x float], ptr %345, i64 %339
  %349 = load float, ptr %344, align 4, !tbaa !133
  %350 = load float, ptr %348, align 4, !tbaa !133
  store float %350, ptr %344, align 4, !tbaa !133
  store float %349, ptr %348, align 4, !tbaa !133
  %351 = getelementptr inbounds float, ptr %344, i64 1
  %352 = load float, ptr %351, align 4, !tbaa !133
  %353 = getelementptr inbounds float, ptr %348, i64 1
  %354 = load float, ptr %353, align 4, !tbaa !133
  store float %354, ptr %351, align 4, !tbaa !133
  store float %352, ptr %353, align 4, !tbaa !133
  %355 = getelementptr inbounds float, ptr %344, i64 2
  %356 = load float, ptr %355, align 4, !tbaa !133
  %357 = getelementptr inbounds float, ptr %348, i64 2
  %358 = load float, ptr %357, align 4, !tbaa !133
  store float %358, ptr %355, align 4, !tbaa !133
  store float %356, ptr %357, align 4, !tbaa !133
  %359 = load ptr, ptr %231, align 8, !tbaa !118
  %360 = getelementptr inbounds [3 x float], ptr %359, i64 %339
  %361 = load ptr, ptr %232, align 8, !tbaa !163
  %362 = getelementptr inbounds [3 x float], ptr %361, i64 %343
  %363 = load float, ptr %362, align 4, !tbaa !133
  store float %363, ptr %360, align 4, !tbaa !133
  %364 = getelementptr inbounds float, ptr %362, i64 1
  %365 = load float, ptr %364, align 4, !tbaa !133
  %366 = getelementptr inbounds float, ptr %360, i64 1
  store float %365, ptr %366, align 4, !tbaa !133
  %367 = getelementptr inbounds float, ptr %362, i64 2
  %368 = load float, ptr %367, align 4, !tbaa !133
  %369 = getelementptr inbounds float, ptr %360, i64 2
  store float %368, ptr %369, align 4, !tbaa !133
  br label %415

370:                                              ; preds = %340
  %371 = load ptr, ptr %233, align 8, !tbaa !118
  %372 = getelementptr inbounds [3 x float], ptr %371, i64 %339
  %373 = load float, ptr %344, align 4, !tbaa !133
  %374 = load float, ptr %372, align 4, !tbaa !133
  store float %374, ptr %344, align 4, !tbaa !133
  store float %373, ptr %372, align 4, !tbaa !133
  %375 = getelementptr inbounds float, ptr %344, i64 1
  %376 = load float, ptr %375, align 4, !tbaa !133
  %377 = getelementptr inbounds float, ptr %372, i64 1
  %378 = load float, ptr %377, align 4, !tbaa !133
  store float %378, ptr %375, align 4, !tbaa !133
  store float %376, ptr %377, align 4, !tbaa !133
  %379 = getelementptr inbounds float, ptr %344, i64 2
  %380 = load float, ptr %379, align 4, !tbaa !133
  %381 = getelementptr inbounds float, ptr %372, i64 2
  %382 = load float, ptr %381, align 4, !tbaa !133
  store float %382, ptr %379, align 4, !tbaa !133
  store float %380, ptr %381, align 4, !tbaa !133
  br label %415

383:                                              ; preds = %338
  %384 = load ptr, ptr %234, align 8, !tbaa !132
  %385 = icmp eq ptr %384, null
  %386 = getelementptr inbounds i32, ptr %217, i64 %339
  %387 = load i32, ptr %386, align 4, !tbaa !79
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.MVert, ptr %219, i64 %388
  br i1 %385, label %402, label %390

390:                                              ; preds = %383
  %391 = getelementptr inbounds [3 x float], ptr %384, i64 %339
  %392 = load float, ptr %389, align 4, !tbaa !133
  %393 = load float, ptr %391, align 4, !tbaa !133
  store float %393, ptr %389, align 4, !tbaa !133
  store float %392, ptr %391, align 4, !tbaa !133
  %394 = getelementptr inbounds float, ptr %389, i64 1
  %395 = load float, ptr %394, align 4, !tbaa !133
  %396 = getelementptr inbounds float, ptr %391, i64 1
  %397 = load float, ptr %396, align 4, !tbaa !133
  store float %397, ptr %394, align 4, !tbaa !133
  store float %395, ptr %396, align 4, !tbaa !133
  %398 = getelementptr inbounds float, ptr %389, i64 2
  %399 = load float, ptr %398, align 4, !tbaa !133
  %400 = getelementptr inbounds float, ptr %391, i64 2
  %401 = load float, ptr %400, align 4, !tbaa !133
  store float %401, ptr %398, align 4, !tbaa !133
  store float %399, ptr %400, align 4, !tbaa !133
  br label %415

402:                                              ; preds = %383
  %403 = load ptr, ptr %235, align 8, !tbaa !118
  %404 = getelementptr inbounds [3 x float], ptr %403, i64 %339
  %405 = load float, ptr %389, align 4, !tbaa !133
  %406 = load float, ptr %404, align 4, !tbaa !133
  store float %406, ptr %389, align 4, !tbaa !133
  store float %405, ptr %404, align 4, !tbaa !133
  %407 = getelementptr inbounds float, ptr %389, i64 1
  %408 = load float, ptr %407, align 4, !tbaa !133
  %409 = getelementptr inbounds float, ptr %404, i64 1
  %410 = load float, ptr %409, align 4, !tbaa !133
  store float %410, ptr %407, align 4, !tbaa !133
  store float %408, ptr %409, align 4, !tbaa !133
  %411 = getelementptr inbounds float, ptr %389, i64 2
  %412 = load float, ptr %411, align 4, !tbaa !133
  %413 = getelementptr inbounds float, ptr %404, i64 2
  %414 = load float, ptr %413, align 4, !tbaa !133
  store float %414, ptr %411, align 4, !tbaa !133
  store float %412, ptr %413, align 4, !tbaa !133
  br label %415

415:                                              ; preds = %370, %347, %402, %390
  %416 = getelementptr inbounds i32, ptr %217, i64 %339
  %417 = load i32, ptr %416, align 4, !tbaa !79
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.MVert, ptr %219, i64 %418, i32 2
  %420 = load i8, ptr %419, align 2, !tbaa !139
  %421 = or i8 %420, -128
  store i8 %421, ptr %419, align 2, !tbaa !139
  %422 = add nuw nsw i64 %339, 1
  %423 = icmp eq i64 %422, %236
  br i1 %423, label %653, label %338, !llvm.loop !165

424:                                              ; preds = %182
  %425 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 13
  %426 = load i32, ptr %425, align 8, !tbaa !124
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %653, label %428

428:                                              ; preds = %424
  %429 = load ptr, ptr %144, align 8, !tbaa !157
  %430 = icmp eq ptr %429, null
  br i1 %430, label %653, label %431

431:                                              ; preds = %428
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #6
  %432 = call ptr %429(ptr noundef %33) #6
  %433 = load ptr, ptr %145, align 8, !tbaa !160
  %434 = call i32 %433(ptr noundef %33) #6
  %435 = load ptr, ptr %146, align 8, !tbaa !166
  call void %435(ptr noundef %33, ptr noundef nonnull %4) #6
  %436 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 15
  %437 = load i32, ptr %436, align 8, !tbaa !125
  %438 = icmp sgt i32 %437, 0
  br i1 %438, label %439, label %481

439:                                              ; preds = %431
  %440 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 5
  %441 = load ptr, ptr %440, align 8, !tbaa !118
  %442 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 16
  %443 = load ptr, ptr %442, align 8, !tbaa !127
  %444 = mul i32 %434, %434
  %445 = icmp eq i32 %434, 0
  %446 = load i32, ptr %147, align 4
  %447 = sext i32 %446 to i64
  %448 = call i32 @llvm.umax.i32(i32 %444, i32 1)
  %449 = zext nneg i32 %437 to i64
  %450 = zext i32 %448 to i64
  br label %451

451:                                              ; preds = %439, %477
  %452 = phi i64 [ 0, %439 ], [ %479, %477 ]
  %453 = phi ptr [ %441, %439 ], [ %478, %477 ]
  %454 = getelementptr inbounds i32, ptr %443, i64 %452
  %455 = load i32, ptr %454, align 4, !tbaa !79
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds ptr, ptr %432, i64 %456
  %458 = load ptr, ptr %457, align 8, !tbaa !49
  br i1 %445, label %477, label %459

459:                                              ; preds = %451, %459
  %460 = phi i64 [ %474, %459 ], [ 0, %451 ]
  %461 = phi ptr [ %475, %459 ], [ %453, %451 ]
  %462 = mul nsw i64 %460, %447
  %463 = getelementptr inbounds i8, ptr %458, i64 %462
  %464 = load float, ptr %463, align 4, !tbaa !133
  %465 = load float, ptr %461, align 4, !tbaa !133
  store float %465, ptr %463, align 4, !tbaa !133
  store float %464, ptr %461, align 4, !tbaa !133
  %466 = getelementptr inbounds float, ptr %463, i64 1
  %467 = load float, ptr %466, align 4, !tbaa !133
  %468 = getelementptr inbounds float, ptr %461, i64 1
  %469 = load float, ptr %468, align 4, !tbaa !133
  store float %469, ptr %466, align 4, !tbaa !133
  store float %467, ptr %468, align 4, !tbaa !133
  %470 = getelementptr inbounds float, ptr %463, i64 2
  %471 = load float, ptr %470, align 4, !tbaa !133
  %472 = getelementptr inbounds float, ptr %461, i64 2
  %473 = load float, ptr %472, align 4, !tbaa !133
  store float %473, ptr %470, align 4, !tbaa !133
  store float %471, ptr %472, align 4, !tbaa !133
  %474 = add nuw nsw i64 %460, 1
  %475 = getelementptr inbounds [3 x float], ptr %461, i64 1
  %476 = icmp eq i64 %474, %450
  br i1 %476, label %477, label %459, !llvm.loop !167

477:                                              ; preds = %459, %451
  %478 = phi ptr [ %453, %451 ], [ %475, %459 ]
  %479 = add nuw nsw i64 %452, 1
  %480 = icmp eq i64 %479, %449
  br i1 %480, label %481, label %451, !llvm.loop !168

481:                                              ; preds = %477, %431
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #6
  br label %653

482:                                              ; preds = %179
  %483 = call ptr @CTX_data_active_object(ptr noundef %0) #6
  %484 = load i32, ptr %155, align 4, !tbaa !129
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %529, label %486

486:                                              ; preds = %482
  %487 = getelementptr inbounds %struct.Object, ptr %483, i64 0, i32 2
  %488 = load ptr, ptr %487, align 8, !tbaa !34
  %489 = getelementptr inbounds %struct.SculptSession, ptr %488, i64 0, i32 1
  %490 = load ptr, ptr %489, align 8, !tbaa !162
  %491 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 9
  %492 = load i32, ptr %491, align 8, !tbaa !117
  %493 = icmp sgt i32 %492, 0
  br i1 %493, label %494, label %564

494:                                              ; preds = %486
  %495 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 11
  %496 = load ptr, ptr %495, align 8, !tbaa !130
  %497 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 12
  %498 = load ptr, ptr %497, align 8, !tbaa !122
  br label %499

499:                                              ; preds = %494, %499
  %500 = phi i64 [ 0, %494 ], [ %525, %499 ]
  %501 = getelementptr inbounds i32, ptr %496, i64 %500
  %502 = load i32, ptr %501, align 4, !tbaa !79
  %503 = sext i32 %502 to i64
  %504 = lshr i64 %500, 5
  %505 = and i64 %504, 134217727
  %506 = getelementptr inbounds i32, ptr %498, i64 %505
  %507 = load i32, ptr %506, align 4, !tbaa !79
  %508 = trunc i64 %500 to i32
  %509 = and i32 %508, 31
  %510 = shl nuw i32 1, %509
  %511 = and i32 %507, %510
  %512 = getelementptr inbounds %struct.MVert, ptr %490, i64 %503, i32 2
  %513 = load i8, ptr %512, align 2, !tbaa !139
  %514 = and i8 %513, 16
  %515 = icmp eq i8 %514, 0
  %516 = xor i32 %510, -1
  %517 = and i32 %507, %516
  %518 = or i32 %507, %510
  %519 = select i1 %515, i32 %517, i32 %518
  store i32 %519, ptr %506, align 4, !tbaa !79
  %520 = icmp eq i32 %511, 0
  %521 = and i8 %513, 111
  %522 = select i1 %520, i8 0, i8 16
  %523 = or disjoint i8 %521, %522
  %524 = or disjoint i8 %523, -128
  store i8 %524, ptr %512, align 2, !tbaa !139
  %525 = add nuw nsw i64 %500, 1
  %526 = load i32, ptr %491, align 8, !tbaa !117
  %527 = sext i32 %526 to i64
  %528 = icmp slt i64 %525, %527
  br i1 %528, label %499, label %564, !llvm.loop !169

529:                                              ; preds = %482
  %530 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 13
  %531 = load i32, ptr %530, align 8, !tbaa !124
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %564, label %533

533:                                              ; preds = %529
  %534 = load ptr, ptr %142, align 8, !tbaa !157
  %535 = icmp eq ptr %534, null
  br i1 %535, label %564, label %536

536:                                              ; preds = %533
  %537 = load ptr, ptr %143, align 8, !tbaa !170
  %538 = call ptr %537(ptr noundef %33) #6
  %539 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 15
  %540 = load i32, ptr %539, align 8, !tbaa !125
  %541 = icmp sgt i32 %540, 0
  br i1 %541, label %542, label %564

542:                                              ; preds = %536
  %543 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 17
  %544 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 16
  %545 = zext nneg i32 %540 to i64
  br label %546

546:                                              ; preds = %542, %546
  %547 = phi i64 [ 0, %542 ], [ %562, %546 ]
  %548 = load ptr, ptr %543, align 8, !tbaa !120
  %549 = getelementptr inbounds ptr, ptr %548, i64 %547
  %550 = load ptr, ptr %549, align 8, !tbaa !49
  %551 = load ptr, ptr %544, align 8, !tbaa !127
  %552 = getelementptr inbounds i32, ptr %551, i64 %547
  %553 = load i32, ptr %552, align 4, !tbaa !79
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds ptr, ptr %538, i64 %554
  %556 = load ptr, ptr %555, align 8, !tbaa !49
  store ptr %556, ptr %549, align 8, !tbaa !49
  %557 = load ptr, ptr %544, align 8, !tbaa !127
  %558 = getelementptr inbounds i32, ptr %557, i64 %547
  %559 = load i32, ptr %558, align 4, !tbaa !79
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds ptr, ptr %538, i64 %560
  store ptr %550, ptr %561, align 8, !tbaa !49
  %562 = add nuw nsw i64 %547, 1
  %563 = icmp eq i64 %562, %545
  br i1 %563, label %564, label %546, !llvm.loop !171

564:                                              ; preds = %499, %546, %486, %536, %529, %533
  store i8 1, ptr %7, align 1, !tbaa !146
  br label %653

565:                                              ; preds = %179
  %566 = call ptr @CTX_data_active_object(ptr noundef %0) #6
  %567 = load i32, ptr %155, align 4, !tbaa !129
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %599, label %569

569:                                              ; preds = %565
  %570 = getelementptr inbounds %struct.Object, ptr %566, i64 0, i32 2
  %571 = load ptr, ptr %570, align 8, !tbaa !34
  %572 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 11
  %573 = load ptr, ptr %572, align 8, !tbaa !130
  %574 = getelementptr inbounds %struct.SculptSession, ptr %571, i64 0, i32 1
  %575 = load ptr, ptr %574, align 8, !tbaa !162
  %576 = getelementptr inbounds %struct.SculptSession, ptr %571, i64 0, i32 8
  %577 = load ptr, ptr %576, align 8, !tbaa !172
  %578 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 9
  %579 = load i32, ptr %578, align 8, !tbaa !117
  %580 = icmp sgt i32 %579, 0
  br i1 %580, label %581, label %653

581:                                              ; preds = %569
  %582 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 8
  %583 = load ptr, ptr %582, align 8, !tbaa !123
  %584 = zext nneg i32 %579 to i64
  br label %585

585:                                              ; preds = %581, %585
  %586 = phi i64 [ 0, %581 ], [ %597, %585 ]
  %587 = getelementptr inbounds i32, ptr %573, i64 %586
  %588 = load i32, ptr %587, align 4, !tbaa !79
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds float, ptr %577, i64 %589
  %591 = load float, ptr %590, align 4, !tbaa !133
  %592 = getelementptr inbounds float, ptr %583, i64 %586
  %593 = load float, ptr %592, align 4, !tbaa !133
  store float %593, ptr %590, align 4, !tbaa !133
  store float %591, ptr %592, align 4, !tbaa !133
  %594 = getelementptr inbounds %struct.MVert, ptr %575, i64 %589, i32 2
  %595 = load i8, ptr %594, align 2, !tbaa !139
  %596 = or i8 %595, -128
  store i8 %596, ptr %594, align 2, !tbaa !139
  %597 = add nuw nsw i64 %586, 1
  %598 = icmp eq i64 %597, %584
  br i1 %598, label %653, label %585, !llvm.loop !173

599:                                              ; preds = %565
  %600 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 13
  %601 = load i32, ptr %600, align 8, !tbaa !124
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %653, label %603

603:                                              ; preds = %599
  %604 = load ptr, ptr %137, align 8, !tbaa !157
  %605 = icmp eq ptr %604, null
  br i1 %605, label %653, label %606

606:                                              ; preds = %603
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #6
  %607 = call ptr %604(ptr noundef %33) #6
  %608 = load ptr, ptr %138, align 8, !tbaa !160
  %609 = call i32 %608(ptr noundef %33) #6
  %610 = load ptr, ptr %139, align 8, !tbaa !166
  call void %610(ptr noundef %33, ptr noundef nonnull %3) #6
  %611 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 15
  %612 = load i32, ptr %611, align 8, !tbaa !125
  %613 = icmp sgt i32 %612, 0
  br i1 %613, label %614, label %652

614:                                              ; preds = %606
  %615 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 8
  %616 = load ptr, ptr %615, align 8, !tbaa !123
  %617 = getelementptr inbounds %struct.SculptUndoNode, ptr %149, i64 0, i32 16
  %618 = load ptr, ptr %617, align 8, !tbaa !127
  %619 = mul i32 %609, %609
  %620 = icmp eq i32 %609, 0
  %621 = load i32, ptr %140, align 4
  %622 = load i32, ptr %141, align 4
  %623 = sext i32 %622 to i64
  %624 = sext i32 %621 to i64
  %625 = call i32 @llvm.umax.i32(i32 %619, i32 1)
  %626 = zext nneg i32 %612 to i64
  %627 = zext i32 %625 to i64
  br label %628

628:                                              ; preds = %614, %648
  %629 = phi i64 [ 0, %614 ], [ %650, %648 ]
  %630 = phi ptr [ %616, %614 ], [ %649, %648 ]
  br i1 %620, label %648, label %631

631:                                              ; preds = %628
  %632 = getelementptr inbounds i32, ptr %618, i64 %629
  %633 = load i32, ptr %632, align 4, !tbaa !79
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds ptr, ptr %607, i64 %634
  %636 = load ptr, ptr %635, align 8, !tbaa !49
  %637 = getelementptr i8, ptr %636, i64 %623
  br label %638

638:                                              ; preds = %631, %638
  %639 = phi i64 [ 0, %631 ], [ %645, %638 ]
  %640 = phi ptr [ %630, %631 ], [ %646, %638 ]
  %641 = mul nsw i64 %639, %624
  %642 = getelementptr i8, ptr %637, i64 %641
  %643 = load float, ptr %642, align 4, !tbaa !133
  %644 = load float, ptr %640, align 4, !tbaa !133
  store float %644, ptr %642, align 4, !tbaa !133
  store float %643, ptr %640, align 4, !tbaa !133
  %645 = add nuw nsw i64 %639, 1
  %646 = getelementptr inbounds float, ptr %640, i64 1
  %647 = icmp eq i64 %645, %627
  br i1 %647, label %648, label %638, !llvm.loop !174

648:                                              ; preds = %638, %628
  %649 = phi ptr [ %630, %628 ], [ %646, %638 ]
  %650 = add nuw nsw i64 %629, 1
  %651 = icmp eq i64 %650, %626
  br i1 %651, label %652, label %628, !llvm.loop !175

652:                                              ; preds = %648, %606
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #6
  br label %653

653:                                              ; preds = %585, %415, %569, %222, %481, %428, %424, %333, %206, %652, %603, %599, %179, %564, %168, %173, %158, %148
  %654 = phi i8 [ %150, %158 ], [ %150, %179 ], [ %150, %564 ], [ %150, %168 ], [ %150, %173 ], [ %150, %148 ], [ 1, %599 ], [ 1, %603 ], [ 1, %652 ], [ 1, %424 ], [ 1, %428 ], [ 1, %481 ], [ 1, %333 ], [ %150, %206 ], [ 1, %222 ], [ 1, %569 ], [ 1, %415 ], [ 1, %585 ]
  %655 = load ptr, ptr %149, align 8, !tbaa !49
  %656 = icmp eq ptr %655, null
  br i1 %656, label %657, label %148, !llvm.loop !176

657:                                              ; preds = %653
  %658 = icmp ne i8 %654, 0
  br label %659

659:                                              ; preds = %657, %128
  %660 = phi i1 [ false, %128 ], [ %658, %657 ]
  %661 = load i8, ptr %7, align 1
  %662 = icmp ne i8 %661, 0
  %663 = select i1 %660, i1 true, i1 %662
  br i1 %663, label %664, label %706

664:                                              ; preds = %659
  %665 = getelementptr inbounds %struct.SculptSession, ptr %14, i64 0, i32 15
  %666 = load ptr, ptr %665, align 8, !tbaa !67
  call void @BKE_pbvh_search_callback(ptr noundef %666, ptr noundef null, ptr noundef null, ptr noundef nonnull @update_cb, ptr noundef nonnull %7) #6
  %667 = load ptr, ptr %665, align 8, !tbaa !67
  call void @BKE_pbvh_update(ptr noundef %667, i32 noundef 44, ptr noundef null) #6
  %668 = call ptr @BKE_sculpt_multires_active(ptr noundef %8, ptr noundef %12) #6
  %669 = icmp eq ptr %668, null
  br i1 %669, label %674, label %670

670:                                              ; preds = %664
  %671 = load i8, ptr %7, align 1, !tbaa !146
  %672 = icmp eq i8 %671, 0
  %673 = select i1 %672, i32 1, i32 2
  call void @multires_mark_as_modified(ptr noundef %12, i32 noundef %673) #6
  br label %674

674:                                              ; preds = %670, %664
  %675 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 19
  %676 = getelementptr inbounds %struct.SculptSession, ptr %14, i64 0, i32 7
  %677 = load ptr, ptr %676, align 8, !tbaa !145
  %678 = icmp eq ptr %677, null
  br i1 %678, label %679, label %688

679:                                              ; preds = %674
  %680 = load ptr, ptr %675, align 8, !tbaa !56
  %681 = getelementptr inbounds %struct.ID, ptr %680, i64 0, i32 6
  %682 = load i32, ptr %681, align 4, !tbaa !177
  %683 = icmp sgt i32 %682, 1
  %684 = zext i1 %683 to i8
  %685 = getelementptr inbounds %struct.SculptSession, ptr %14, i64 0, i32 17
  %686 = load i8, ptr %685, align 1, !tbaa !131
  %687 = icmp eq i8 %686, 0
  br i1 %687, label %698, label %688

688:                                              ; preds = %679, %674
  %689 = load ptr, ptr %675, align 8, !tbaa !56
  %690 = getelementptr inbounds %struct.Mesh, ptr %689, i64 0, i32 15
  %691 = load ptr, ptr %690, align 8, !tbaa !178
  %692 = getelementptr inbounds %struct.Mesh, ptr %689, i64 0, i32 26
  %693 = load i32, ptr %692, align 8, !tbaa !58
  %694 = getelementptr inbounds %struct.Mesh, ptr %689, i64 0, i32 12
  %695 = load ptr, ptr %694, align 8, !tbaa !179
  %696 = getelementptr inbounds %struct.Mesh, ptr %689, i64 0, i32 28
  %697 = load i32, ptr %696, align 8, !tbaa !180
  call void @BKE_mesh_calc_normals_tessface(ptr noundef %691, i32 noundef %693, ptr noundef %695, i32 noundef %697, ptr noundef null) #6
  call void @BKE_free_sculptsession_deformMats(ptr noundef %14) #6
  br label %698

698:                                              ; preds = %688, %679
  %699 = phi i8 [ 1, %688 ], [ %684, %679 ]
  %700 = icmp eq i8 %699, 0
  br i1 %700, label %702, label %701

701:                                              ; preds = %698
  call void @DAG_id_tag_update(ptr noundef %12, i16 noundef signext 2) #6
  br label %703

702:                                              ; preds = %698
  call void @sculpt_update_object_bounding_box(ptr noundef %12) #6
  br label %703

703:                                              ; preds = %702, %701
  %704 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 120
  %705 = load ptr, ptr %704, align 8, !tbaa !181
  call void @GPU_drawobject_free(ptr noundef %705) #6
  br label %706

706:                                              ; preds = %89, %63, %126, %127, %703, %659
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sculpt_undo_free(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = icmp eq ptr %2, null
  br i1 %3, label %103, label %4

4:                                                ; preds = %1, %100
  %5 = phi ptr [ %101, %100 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !118
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %10(ptr noundef nonnull %7) #6
  br label %11

11:                                               ; preds = %9, %4
  %12 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !119
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %16(ptr noundef nonnull %13) #6
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !130
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %22(ptr noundef nonnull %19) #6
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 16
  %25 = load ptr, ptr %24, align 8, !tbaa !127
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %28(ptr noundef nonnull %25) #6
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !132
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %34(ptr noundef nonnull %31) #6
  br label %35

35:                                               ; preds = %33, %29
  %36 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 12
  %37 = load ptr, ptr %36, align 8, !tbaa !122
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %40(ptr noundef nonnull %37) #6
  br label %41

41:                                               ; preds = %39, %35
  %42 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 17
  %43 = load ptr, ptr %42, align 8, !tbaa !120
  %44 = icmp eq ptr %43, null
  br i1 %44, label %65, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 15
  %47 = load i32, ptr %46, align 8, !tbaa !125
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %45, %57
  %50 = phi i64 [ %58, %57 ], [ 0, %45 ]
  %51 = load ptr, ptr %42, align 8, !tbaa !120
  %52 = getelementptr inbounds ptr, ptr %51, i64 %50
  %53 = load ptr, ptr %52, align 8, !tbaa !49
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %49
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %56(ptr noundef nonnull %53) #6
  br label %57

57:                                               ; preds = %49, %55
  %58 = add nuw nsw i64 %50, 1
  %59 = load i32, ptr %46, align 8, !tbaa !125
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %49, label %62, !llvm.loop !182

62:                                               ; preds = %57, %45
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  %64 = load ptr, ptr %42, align 8, !tbaa !120
  tail call void %63(ptr noundef %64) #6
  br label %65

65:                                               ; preds = %62, %41
  %66 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 8
  %67 = load ptr, ptr %66, align 8, !tbaa !123
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %70(ptr noundef nonnull %67) #6
  br label %71

71:                                               ; preds = %69, %65
  %72 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 18
  %73 = load ptr, ptr %72, align 8, !tbaa !55
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  tail call void @BM_log_entry_drop(ptr noundef nonnull %73) #6
  br label %76

76:                                               ; preds = %75, %71
  %77 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 24
  %78 = load i32, ptr %77, align 8, !tbaa !63
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 20
  tail call void @CustomData_free(ptr noundef nonnull %81, i32 noundef %78) #6
  br label %82

82:                                               ; preds = %80, %76
  %83 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 25
  %84 = load i32, ptr %83, align 4, !tbaa !64
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 21
  tail call void @CustomData_free(ptr noundef nonnull %87, i32 noundef %84) #6
  br label %88

88:                                               ; preds = %86, %82
  %89 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 26
  %90 = load i32, ptr %89, align 8, !tbaa !65
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 22
  tail call void @CustomData_free(ptr noundef nonnull %93, i32 noundef %90) #6
  br label %94

94:                                               ; preds = %92, %88
  %95 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 27
  %96 = load i32, ptr %95, align 4, !tbaa !66
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 23
  tail call void @CustomData_free(ptr noundef nonnull %99, i32 noundef %96) #6
  br label %100

100:                                              ; preds = %94, %98
  %101 = load ptr, ptr %5, align 8, !tbaa !49
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %4, !llvm.loop !183

103:                                              ; preds = %100, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i8 @sculpt_undo_cleanup(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #6
  %4 = load ptr, ptr %1, align 8, !tbaa !48
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SculptUndoNode, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %8) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.SculptUndoNode, ptr %4, i64 0, i32 18
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @BM_log_cleanup_entry(ptr noundef nonnull %13) #6
  br label %16

16:                                               ; preds = %2, %6, %11, %15
  %17 = phi i8 [ 1, %15 ], [ 1, %11 ], [ 0, %6 ], [ 0, %2 ]
  ret i8 %17
}

; Function Attrs: nounwind uwtable
define dso_local void @sculpt_undo_push_end() local_unnamed_addr #0 {
  %1 = tail call ptr @undo_paint_push_get_list(i32 noundef 1) #6
  %2 = load ptr, ptr %1, align 8, !tbaa !49
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %0, %16
  %5 = phi ptr [ %17, %16 ], [ %2, %0 ]
  %6 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !119
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %10(ptr noundef nonnull %7) #6
  store ptr null, ptr %6, align 8, !tbaa !119
  br label %11

11:                                               ; preds = %9, %4
  %12 = getelementptr inbounds %struct.SculptUndoNode, ptr %5, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !116
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @BKE_pbvh_node_layer_disp_free(ptr noundef nonnull %13) #6
  br label %16

16:                                               ; preds = %11, %15
  %17 = load ptr, ptr %5, align 8, !tbaa !49
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %4, !llvm.loop !184

19:                                               ; preds = %16, %0
  tail call void @ED_undo_paint_push_end(i32 noundef 1) #6
  ret void
}

declare void @BKE_pbvh_node_layer_disp_free(ptr noundef) local_unnamed_addr #2

declare void @ED_undo_paint_push_end(i32 noundef) local_unnamed_addr #2

declare ptr @BM_log_entry_add(ptr noundef) local_unnamed_addr #2

declare void @BM_log_before_all_removed(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CustomData_copy(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_log_all_added(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @pbvh_vertex_iter_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_log_vert_before_modified(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_pbvh_bmesh_node_faces(ptr noundef) local_unnamed_addr #2

declare void @BM_log_face_modified(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @undo_paint_push_count_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_pbvh_grid_hidden(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare void @BKE_sculpt_update_mesh_elements(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BKE_pbvh_search_callback(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @update_cb(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  tail call void @BKE_pbvh_node_mark_update(ptr noundef %0) #6
  %3 = load i8, ptr %1, align 1, !tbaa !146
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @BKE_pbvh_node_mark_rebuild_draw(ptr noundef %0) #6
  br label %6

6:                                                ; preds = %5, %2
  tail call void @BKE_pbvh_node_fully_hidden_set(ptr noundef %0, i32 noundef 0) #6
  ret void
}

declare void @BKE_pbvh_update(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_sculpt_multires_active(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @multires_mark_as_modified(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_mesh_calc_normals_tessface(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_free_sculptsession_deformMats(ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @sculpt_update_object_bounding_box(ptr noundef) local_unnamed_addr #2

declare void @GPU_drawobject_free(ptr noundef) local_unnamed_addr #2

declare void @sculpt_dynamic_topology_disable(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_log_redo(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @sculpt_pbvh_clear(ptr noundef) local_unnamed_addr #2

declare ptr @BM_mesh_create(ptr noundef) local_unnamed_addr #2

declare void @BM_data_layer_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @sculpt_dyntopo_node_layers_add(ptr noundef) local_unnamed_addr #2

declare ptr @BM_log_from_existing_entries_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_log_undo(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_pbvh_search_gather(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_pbvh_node_mark_redraw(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_keyblock_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_key_convert_to_vertcos(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @sculpt_vertcos_to_key(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_pbvh_apply_vertCos(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_pbvh_node_mark_update(ptr noundef) local_unnamed_addr #2

declare void @BKE_pbvh_node_mark_rebuild_draw(ptr noundef) local_unnamed_addr #2

declare void @BKE_pbvh_node_fully_hidden_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_log_entry_drop(ptr noundef) local_unnamed_addr #2

declare void @CustomData_free(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_log_cleanup_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !37, i64 128}
!35 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !42, i64 312, !37, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !44, i64 616, !44, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !44, i64 1048, !44, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !44, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !45, i64 1304, !45, i64 1312, !41, i64 1320, !41, i64 1324, !43, i64 1328, !43, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !43, i64 1400, !37, i64 1416}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!43 = !{!"ListBase", !37, i64 0, !37, i64 8}
!44 = !{!"float", !38, i64 0}
!45 = !{!"long", !38, i64 0}
!46 = !{!47, !37, i64 72}
!47 = !{!"SculptSession", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !41, i64 32, !41, i64 36, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !41, i64 80, !41, i64 84, !38, i64 88, !37, i64 96, !37, i64 104, !38, i64 112, !38, i64 113, !37, i64 120, !37, i64 128, !37, i64 136, !38, i64 144, !41, i64 148, !37, i64 152, !41, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !38, i64 200, !38, i64 204, !38, i64 216, !41, i64 228}
!48 = !{!43, !37, i64 0}
!49 = !{!37, !37, i64 0}
!50 = !{!51, !41, i64 16}
!51 = !{!"SculptUndoNode", !37, i64 0, !37, i64 8, !41, i64 16, !38, i64 20, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !41, i64 128, !41, i64 132, !37, i64 136, !37, i64 144, !41, i64 152, !41, i64 156, !41, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !38, i64 192, !52, i64 200, !52, i64 400, !52, i64 600, !52, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !38, i64 1016}
!52 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!53 = !{!51, !38, i64 192}
!54 = !{!47, !37, i64 96}
!55 = !{!51, !37, i64 184}
!56 = !{!35, !37, i64 296}
!57 = !{!45, !45, i64 0}
!58 = !{!59, !41, i64 1280}
!59 = !{!"Mesh", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !52, i64 280, !52, i64 480, !52, i64 680, !52, i64 880, !52, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !44, i64 1352, !41, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !40, i64 1366, !37, i64 1368}
!60 = !{!59, !41, i64 1284}
!61 = !{!59, !41, i64 1300}
!62 = !{!59, !41, i64 1296}
!63 = !{!51, !41, i64 1000}
!64 = !{!51, !41, i64 1004}
!65 = !{!51, !41, i64 1008}
!66 = !{!51, !41, i64 1012}
!67 = !{!47, !37, i64 104}
!68 = !{!69, !41, i64 20}
!69 = !{!"PBVHVertexIter", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !41, i64 72, !41, i64 76, !37, i64 80, !41, i64 88, !37, i64 96, !37, i64 104, !70, i64 112, !70, i64 136, !37, i64 160, !41, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216}
!70 = !{!"GSetIterator", !71, i64 0}
!71 = !{!"GHashIterator", !37, i64 0, !37, i64 8, !41, i64 16}
!72 = !{!69, !41, i64 0}
!73 = !{!69, !41, i64 72}
!74 = !{!69, !37, i64 24}
!75 = !{!69, !41, i64 76}
!76 = !{!69, !41, i64 4}
!77 = !{!69, !41, i64 8}
!78 = !{!69, !37, i64 64}
!79 = !{!41, !41, i64 0}
!80 = !{!69, !37, i64 32}
!81 = !{!69, !41, i64 88}
!82 = !{!69, !41, i64 16}
!83 = !{!69, !41, i64 12}
!84 = !{!69, !37, i64 192}
!85 = !{!69, !37, i64 40}
!86 = !{!87, !41, i64 20}
!87 = !{!"CCGKey", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!88 = !{!69, !37, i64 208}
!89 = !{!87, !41, i64 36}
!90 = !{!87, !41, i64 24}
!91 = !{!69, !37, i64 216}
!92 = !{!87, !41, i64 4}
!93 = !{!69, !37, i64 56}
!94 = !{!69, !37, i64 80}
!95 = !{!69, !37, i64 96}
!96 = !{!69, !37, i64 176}
!97 = !{!69, !37, i64 200}
!98 = !{!69, !37, i64 104}
!99 = !{!71, !37, i64 8}
!100 = !{!101, !37, i64 8}
!101 = !{!"_gh_Entry", !37, i64 0, !37, i64 8, !37, i64 16}
!102 = !{!69, !37, i64 184}
!103 = !{!104, !37, i64 0}
!104 = !{!"BMVert", !105, i64 0, !37, i64 16, !38, i64 24, !38, i64 36, !37, i64 48}
!105 = !{!"BMHeader", !37, i64 0, !41, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!106 = !{!69, !41, i64 168}
!107 = distinct !{!107, !108, !109}
!108 = !{!"llvm.loop.mustprogress"}
!109 = !{!"llvm.loop.unroll.disable"}
!110 = distinct !{!110, !108, !109}
!111 = distinct !{!111, !108, !109}
!112 = distinct !{!112, !108, !109}
!113 = distinct !{!113, !108, !109}
!114 = distinct !{!114, !108, !109}
!115 = distinct !{!115, !108, !109}
!116 = !{!51, !37, i64 88}
!117 = !{!51, !41, i64 128}
!118 = !{!51, !37, i64 96}
!119 = !{!51, !37, i64 112}
!120 = !{!51, !37, i64 176}
!121 = distinct !{!121, !108, !109}
!122 = !{!51, !37, i64 144}
!123 = !{!51, !37, i64 120}
!124 = !{!51, !41, i64 152}
!125 = !{!51, !41, i64 160}
!126 = !{!51, !41, i64 156}
!127 = !{!51, !37, i64 168}
!128 = !{!47, !41, i64 32}
!129 = !{!51, !41, i64 132}
!130 = !{!51, !37, i64 136}
!131 = !{!47, !38, i64 113}
!132 = !{!51, !37, i64 104}
!133 = !{!44, !44, i64 0}
!134 = !{!40, !40, i64 0}
!135 = !{!47, !37, i64 120}
!136 = distinct !{!136, !108, !109}
!137 = distinct !{!137, !108, !109}
!138 = distinct !{!138, !108, !109}
!139 = !{!140, !38, i64 18}
!140 = !{!"MVert", !38, i64 0, !38, i64 12, !38, i64 18, !38, i64 19}
!141 = distinct !{!141, !108, !109}
!142 = distinct !{!142, !108, !109}
!143 = distinct !{!143, !108, !109}
!144 = distinct !{!144, !108, !109}
!145 = !{!47, !37, i64 48}
!146 = !{!38, !38, i64 0}
!147 = !{!148, !37, i64 16}
!148 = !{!"ToolSettings", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !44, i64 32, !44, i64 36, !44, i64 40, !40, i64 44, !40, i64 46, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !44, i64 52, !40, i64 56, !38, i64 58, !38, i64 59, !149, i64 64, !151, i64 168, !44, i64 336, !44, i64 340, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 349, !40, i64 350, !44, i64 352, !44, i64 356, !44, i64 360, !44, i64 364, !44, i64 368, !44, i64 372, !44, i64 376, !44, i64 380, !44, i64 384, !44, i64 388, !40, i64 392, !38, i64 394, !38, i64 395, !38, i64 396, !38, i64 399, !37, i64 400, !38, i64 408, !38, i64 409, !38, i64 410, !38, i64 411, !38, i64 412, !38, i64 413, !38, i64 421, !38, i64 429, !38, i64 430, !38, i64 431, !38, i64 432, !38, i64 433, !40, i64 434, !40, i64 436, !40, i64 438, !40, i64 440, !38, i64 442, !38, i64 443, !38, i64 444, !38, i64 445, !38, i64 446, !38, i64 447, !41, i64 448, !41, i64 452, !41, i64 456, !41, i64 460, !40, i64 464, !40, i64 466, !41, i64 468, !44, i64 472, !44, i64 476, !152, i64 480, !153, i64 608}
!149 = !{!"ImagePaintSettings", !150, i64 0, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !38, i64 48, !41, i64 52, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !38, i64 88, !44, i64 100}
!150 = !{!"Paint", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!151 = !{!"ParticleEditSettings", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !38, i64 8, !37, i64 120, !44, i64 128, !44, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !37, i64 152, !37, i64 160}
!152 = !{!"UnifiedPaintSettings", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !38, i64 16, !38, i64 28, !41, i64 40, !38, i64 44, !44, i64 52, !41, i64 56, !41, i64 60, !38, i64 64, !38, i64 65, !44, i64 72, !38, i64 76, !41, i64 84, !44, i64 88, !38, i64 92, !38, i64 100, !41, i64 108, !37, i64 112, !44, i64 120, !41, i64 124}
!153 = !{!"MeshStatVis", !38, i64 0, !38, i64 1, !38, i64 3, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !38, i64 20, !38, i64 21, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36}
!154 = distinct !{!154, !108, !109}
!155 = !{!59, !40, i64 1350}
!156 = distinct !{!156, !108, !109}
!157 = !{!158, !37, i64 1440}
!158 = !{!"DerivedMesh", !52, i64 0, !52, i64 200, !52, i64 400, !52, i64 600, !52, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !44, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!159 = !{!158, !37, i64 1424}
!160 = !{!158, !37, i64 1432}
!161 = !{!35, !40, i64 1266}
!162 = !{!47, !37, i64 8}
!163 = !{!47, !37, i64 128}
!164 = distinct !{!164, !108, !109}
!165 = distinct !{!165, !108, !109}
!166 = !{!158, !37, i64 1464}
!167 = distinct !{!167, !108, !109}
!168 = distinct !{!168, !108, !109}
!169 = distinct !{!169, !108, !109}
!170 = !{!158, !37, i64 1480}
!171 = distinct !{!171, !108, !109}
!172 = !{!47, !37, i64 56}
!173 = distinct !{!173, !108, !109}
!174 = distinct !{!174, !108, !109}
!175 = distinct !{!175, !108, !109}
!176 = distinct !{!176, !108, !109}
!177 = !{!59, !41, i64 100}
!178 = !{!59, !37, i64 232}
!179 = !{!59, !37, i64 208}
!180 = !{!59, !41, i64 1288}
!181 = !{!35, !37, i64 1296}
!182 = distinct !{!182, !108, !109}
!183 = distinct !{!183, !108, !109}
!184 = distinct !{!184, !108, !109}
