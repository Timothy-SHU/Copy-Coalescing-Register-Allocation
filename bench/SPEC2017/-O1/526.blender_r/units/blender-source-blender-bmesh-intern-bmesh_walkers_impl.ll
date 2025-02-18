; ModuleID = 'blender/source/blender/bmesh/intern/bmesh_walkers_impl.c'
source_filename = "blender/source/blender/bmesh/intern/bmesh_walkers_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMWalker = type { i8, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %struct.ListBase, i16, i16, i16, i32, ptr, ptr, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMFlagLayer = type { i16 }
%struct.BMwShellWalker = type { %struct.BMwGenericWalker, ptr }
%struct.BMwGenericWalker = type { %struct.Link, i32 }
%struct.Link = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMwLoopWalker = type { %struct.BMwGenericWalker, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMwFaceLoopWalker = type { %struct.BMwGenericWalker, ptr, i8 }
%struct.BMwEdgeringWalker = type { %struct.BMwGenericWalker, ptr, ptr }
%struct.BMwEdgeboundaryWalker = type { %struct.BMwGenericWalker, ptr }
%struct.BMwUVEdgeWalker = type { %struct.BMwGenericWalker, ptr }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.BMwIslandboundWalker = type { %struct.BMwGenericWalker, ptr, ptr, ptr }
%struct.BMwIslandWalker = type { %struct.BMwGenericWalker, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMwConnectedVertexWalker = type { %struct.BMwGenericWalker, ptr }

@bmw_VertShellWalker_Type = internal global %struct.BMWalker { i8 3, ptr @bmw_VertShellWalker_begin, ptr @bmw_VertShellWalker_step, ptr @bmw_VertShellWalker_yield, i32 32, i32 1, i32 2, i32 0, ptr null, ptr null, %struct.ListBase zeroinitializer, i16 0, i16 0, i16 0, i32 0, ptr null, ptr null, i32 0 }, align 8
@bmw_FaceShellWalker_Type = internal global %struct.BMWalker { i8 2, ptr @bmw_FaceShellWalker_begin, ptr @bmw_FaceShellWalker_step, ptr @bmw_FaceShellWalker_yield, i32 32, i32 1, i32 2, i32 0, ptr null, ptr null, %struct.ListBase zeroinitializer, i16 0, i16 0, i16 0, i32 0, ptr null, ptr null, i32 0 }, align 8
@bmw_LoopWalker_Type = internal global %struct.BMWalker { i8 2, ptr @bmw_LoopWalker_begin, ptr @bmw_LoopWalker_step, ptr @bmw_LoopWalker_yield, i32 72, i32 0, i32 0, i32 0, ptr null, ptr null, %struct.ListBase zeroinitializer, i16 0, i16 0, i16 0, i32 0, ptr null, ptr null, i32 0 }, align 8
@bmw_FaceLoopWalker_Type = internal global %struct.BMWalker { i8 2, ptr @bmw_FaceLoopWalker_begin, ptr @bmw_FaceLoopWalker_step, ptr @bmw_FaceLoopWalker_yield, i32 40, i32 0, i32 0, i32 0, ptr null, ptr null, %struct.ListBase zeroinitializer, i16 0, i16 0, i16 0, i32 0, ptr null, ptr null, i32 0 }, align 8
@bmw_EdgeringWalker_Type = internal global %struct.BMWalker { i8 2, ptr @bmw_EdgeringWalker_begin, ptr @bmw_EdgeringWalker_step, ptr @bmw_EdgeringWalker_yield, i32 40, i32 0, i32 2, i32 0, ptr null, ptr null, %struct.ListBase zeroinitializer, i16 0, i16 0, i16 0, i32 0, ptr null, ptr null, i32 0 }, align 8
@bmw_EdgeboundaryWalker_Type = internal global %struct.BMWalker { i8 2, ptr @bmw_EdgeboundaryWalker_begin, ptr @bmw_EdgeboundaryWalker_step, ptr @bmw_EdgeboundaryWalker_yield, i32 32, i32 0, i32 0, i32 0, ptr null, ptr null, %struct.ListBase zeroinitializer, i16 0, i16 0, i16 0, i32 0, ptr null, ptr null, i32 0 }, align 8
@bmw_UVEdgeWalker_Type = internal global %struct.BMWalker { i8 4, ptr @bmw_UVEdgeWalker_begin, ptr @bmw_UVEdgeWalker_step, ptr @bmw_UVEdgeWalker_yield, i32 32, i32 0, i32 2, i32 0, ptr null, ptr null, %struct.ListBase zeroinitializer, i16 0, i16 0, i16 0, i32 0, ptr null, ptr null, i32 0 }, align 8
@bmw_IslandboundWalker_Type = internal global %struct.BMWalker { i8 4, ptr @bmw_IslandboundWalker_begin, ptr @bmw_IslandboundWalker_step, ptr @bmw_IslandboundWalker_yield, i32 48, i32 0, i32 8, i32 0, ptr null, ptr null, %struct.ListBase zeroinitializer, i16 0, i16 0, i16 0, i32 0, ptr null, ptr null, i32 0 }, align 8
@bmw_IslandWalker_Type = internal global %struct.BMWalker { i8 8, ptr @bmw_IslandWalker_begin, ptr @bmw_IslandWalker_step, ptr @bmw_IslandWalker_yield, i32 32, i32 1, i32 10, i32 0, ptr null, ptr null, %struct.ListBase zeroinitializer, i16 0, i16 0, i16 0, i32 0, ptr null, ptr null, i32 0 }, align 8
@bmw_ConnectedVertexWalker_Type = internal global %struct.BMWalker { i8 1, ptr @bmw_ConnectedVertexWalker_begin, ptr @bmw_ConnectedVertexWalker_step, ptr @bmw_ConnectedVertexWalker_yield, i32 32, i32 1, i32 1, i32 0, ptr null, ptr null, %struct.ListBase zeroinitializer, i16 0, i16 0, i16 0, i32 0, ptr null, ptr null, i32 0 }, align 8
@bm_walker_types = dso_local local_unnamed_addr global [10 x ptr] [ptr @bmw_VertShellWalker_Type, ptr @bmw_FaceShellWalker_Type, ptr @bmw_LoopWalker_Type, ptr @bmw_FaceLoopWalker_Type, ptr @bmw_EdgeringWalker_Type, ptr @bmw_EdgeboundaryWalker_Type, ptr @bmw_UVEdgeWalker_Type, ptr @bmw_IslandboundWalker_Type, ptr @bmw_IslandWalker_Type, ptr @bmw_ConnectedVertexWalker_Type], align 16
@bm_totwalkers = dso_local local_unnamed_addr constant i32 10, align 4
@.str = private unnamed_addr constant [50 x i8] c"Non-manifold vert while searching region boundary\00", align 1

; Function Attrs: nounwind uwtable
define internal void @bmw_VertShellWalker_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #4
  %4 = icmp eq ptr %1, null
  br i1 %4, label %93, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 2
  %7 = load i8, ptr %6, align 4, !tbaa !34
  switch i8 %7, label %93 [
    i8 1, label %8
    i8 2, label %57
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 4, ptr %9, align 4, !tbaa !40
  %10 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %10, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %11, align 8, !tbaa !43
  store ptr %1, ptr %3, align 8, !tbaa !44
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %3) #4
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = call ptr %12(ptr noundef nonnull %3) #4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %93, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %17 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 14
  %18 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 12
  %19 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  br label %20

20:                                               ; preds = %15, %53
  %21 = phi ptr [ %13, %15 ], [ %55, %53 ]
  %22 = load ptr, ptr %16, align 8, !tbaa !45
  %23 = call zeroext i8 @BLI_gset_haskey(ptr noundef %22, ptr noundef nonnull %21) #4
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %20
  %26 = load i32, ptr %17, align 8, !tbaa !49
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.BMHeader, ptr %21, i64 0, i32 3
  %31 = load i8, ptr %30, align 1, !tbaa !50
  %32 = and i8 %31, 2
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %29, %25
  %35 = load i16, ptr %18, align 2, !tbaa !51
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %19, align 8, !tbaa !52
  %39 = getelementptr inbounds %struct.BMEdge, ptr %21, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !53
  %41 = getelementptr inbounds %struct.BMesh, ptr %38, i64 0, i32 22
  %42 = load i32, ptr %41, align 8, !tbaa !56
  %43 = sext i32 %42 to i64
  %44 = getelementptr %struct.BMFlagLayer, ptr %40, i64 %43
  %45 = getelementptr %struct.BMFlagLayer, ptr %44, i64 -1
  %46 = load i16, ptr %45, align 2, !tbaa !59
  %47 = and i16 %46, %35
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %37, %34
  %50 = call ptr @BMW_state_add(ptr noundef %0) #4
  %51 = getelementptr inbounds %struct.BMwShellWalker, ptr %50, i64 0, i32 1
  store ptr %21, ptr %51, align 8, !tbaa !61
  %52 = load ptr, ptr %16, align 8, !tbaa !45
  call void @BLI_gset_insert(ptr noundef %52, ptr noundef nonnull %21) #4
  br label %53

53:                                               ; preds = %20, %29, %37, %49
  %54 = load ptr, ptr %11, align 8, !tbaa !43
  %55 = call ptr %54(ptr noundef nonnull %3) #4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %93, label %20, !llvm.loop !65

57:                                               ; preds = %5
  %58 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %59 = load ptr, ptr %58, align 8, !tbaa !45
  %60 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %59, ptr noundef nonnull %1) #4
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 14
  %64 = load i32, ptr %63, align 8, !tbaa !49
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 3
  %69 = load i8, ptr %68, align 1, !tbaa !50
  %70 = and i8 %69, 2
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %67, %62
  %73 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 12
  %74 = load i16, ptr %73, align 2, !tbaa !51
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %89, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  %78 = load ptr, ptr %77, align 8, !tbaa !52
  %79 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !53
  %81 = getelementptr inbounds %struct.BMesh, ptr %78, i64 0, i32 22
  %82 = load i32, ptr %81, align 8, !tbaa !56
  %83 = sext i32 %82 to i64
  %84 = getelementptr %struct.BMFlagLayer, ptr %80, i64 %83
  %85 = getelementptr %struct.BMFlagLayer, ptr %84, i64 -1
  %86 = load i16, ptr %85, align 2, !tbaa !59
  %87 = and i16 %86, %74
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %76, %72
  %90 = tail call ptr @BMW_state_add(ptr noundef %0) #4
  %91 = getelementptr inbounds %struct.BMwShellWalker, ptr %90, i64 0, i32 1
  store ptr %1, ptr %91, align 8, !tbaa !61
  %92 = load ptr, ptr %58, align 8, !tbaa !45
  tail call void @BLI_gset_insert(ptr noundef %92, ptr noundef nonnull %1) #4
  br label %93

93:                                               ; preds = %53, %8, %89, %76, %67, %57, %5, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @bmw_VertShellWalker_step(ptr noundef %0) #0 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #4
  %3 = tail call ptr @BMW_current_state(ptr noundef %0) #4
  %4 = getelementptr inbounds i8, ptr %3, i64 24
  %5 = load ptr, ptr %4, align 1
  tail call void @BMW_state_remove(ptr noundef %0) #4
  %6 = getelementptr inbounds %struct.BMEdge, ptr %5, i64 0, i32 3
  %7 = getelementptr inbounds %struct.BMEdge, ptr %5, i64 0, i32 2
  %8 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  %9 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  %10 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  %11 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %12 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 14
  %13 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 12
  %14 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  br label %15

15:                                               ; preds = %1, %60
  %16 = phi i32 [ 0, %1 ], [ %61, %60 ]
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, ptr %7, ptr %6
  %19 = load ptr, ptr %18, align 8, !tbaa !68
  store i8 4, ptr %8, align 4, !tbaa !40
  store ptr @bmiter__edge_of_vert_begin, ptr %9, align 8, !tbaa !42
  store ptr @bmiter__edge_of_vert_step, ptr %10, align 8, !tbaa !43
  store ptr %19, ptr %2, align 8, !tbaa !44
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %2) #4
  %20 = load ptr, ptr %10, align 8, !tbaa !43
  %21 = call ptr %20(ptr noundef nonnull %2) #4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %60, label %23

23:                                               ; preds = %15, %56
  %24 = phi ptr [ %58, %56 ], [ %21, %15 ]
  %25 = load ptr, ptr %11, align 8, !tbaa !45
  %26 = call zeroext i8 @BLI_gset_haskey(ptr noundef %25, ptr noundef nonnull %24) #4
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %23
  %29 = load i32, ptr %12, align 8, !tbaa !49
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.BMHeader, ptr %24, i64 0, i32 3
  %34 = load i8, ptr %33, align 1, !tbaa !50
  %35 = and i8 %34, 2
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %32, %28
  %38 = load i16, ptr %13, align 2, !tbaa !51
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %14, align 8, !tbaa !52
  %42 = getelementptr inbounds %struct.BMEdge, ptr %24, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !53
  %44 = getelementptr inbounds %struct.BMesh, ptr %41, i64 0, i32 22
  %45 = load i32, ptr %44, align 8, !tbaa !56
  %46 = sext i32 %45 to i64
  %47 = getelementptr %struct.BMFlagLayer, ptr %43, i64 %46
  %48 = getelementptr %struct.BMFlagLayer, ptr %47, i64 -1
  %49 = load i16, ptr %48, align 2, !tbaa !59
  %50 = and i16 %49, %38
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %40, %37
  %53 = call ptr @BMW_state_add(ptr noundef %0) #4
  %54 = getelementptr inbounds %struct.BMwShellWalker, ptr %53, i64 0, i32 1
  store ptr %24, ptr %54, align 8, !tbaa !61
  %55 = load ptr, ptr %11, align 8, !tbaa !45
  call void @BLI_gset_insert(ptr noundef %55, ptr noundef nonnull %24) #4
  br label %56

56:                                               ; preds = %23, %32, %40, %52
  %57 = load ptr, ptr %10, align 8, !tbaa !43
  %58 = call ptr %57(ptr noundef nonnull %2) #4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %23, !llvm.loop !69

60:                                               ; preds = %56, %15
  %61 = add nuw nsw i32 %16, 1
  %62 = icmp eq i32 %16, 0
  br i1 %62, label %15, label %63, !llvm.loop !70

63:                                               ; preds = %60
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #4
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define internal ptr @bmw_VertShellWalker_yield(ptr noundef %0) #0 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #4
  %3 = getelementptr inbounds %struct.BMwShellWalker, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

declare void @bmiter__vert_of_edge_begin(ptr noundef) #2

declare ptr @bmiter__vert_of_edge_step(ptr noundef) #2

declare void @bmiter__face_of_edge_begin(ptr noundef) #2

declare ptr @bmiter__face_of_edge_step(ptr noundef) #2

declare void @bmiter__edge_of_face_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_face_step(ptr noundef) #2

declare void @bmiter__loop_of_face_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

declare zeroext i8 @BLI_gset_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMW_state_add(ptr noundef) local_unnamed_addr #2

declare void @BLI_gset_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMW_current_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @BMW_state_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @bmw_FaceShellWalker_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %4, ptr noundef %1) #4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %38

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 14
  %9 = load i32, ptr %8, align 8, !tbaa !49
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 3
  %14 = load i8, ptr %13, align 1, !tbaa !50
  %15 = and i8 %14, 2
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %12, %7
  %18 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 12
  %19 = load i16, ptr %18, align 2, !tbaa !51
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  %24 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  %26 = getelementptr inbounds %struct.BMesh, ptr %23, i64 0, i32 22
  %27 = load i32, ptr %26, align 8, !tbaa !56
  %28 = sext i32 %27 to i64
  %29 = getelementptr %struct.BMFlagLayer, ptr %25, i64 %28
  %30 = getelementptr %struct.BMFlagLayer, ptr %29, i64 -1
  %31 = load i16, ptr %30, align 2, !tbaa !59
  %32 = and i16 %31, %19
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %21, %17
  %35 = tail call ptr @BMW_state_add(ptr noundef %0) #4
  %36 = getelementptr inbounds %struct.BMwShellWalker, ptr %35, i64 0, i32 1
  store ptr %1, ptr %36, align 8, !tbaa !61
  %37 = load ptr, ptr %3, align 8, !tbaa !45
  tail call void @BLI_gset_insert(ptr noundef %37, ptr noundef %1) #4
  br label %38

38:                                               ; preds = %2, %12, %21, %34
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @bmw_FaceShellWalker_step(ptr noundef %0) #0 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #4
  %3 = tail call ptr @BMW_current_state(ptr noundef %0) #4
  %4 = getelementptr inbounds i8, ptr %3, i64 24
  %5 = load ptr, ptr %4, align 1
  tail call void @BMW_state_remove(ptr noundef %0) #4
  %6 = getelementptr inbounds %struct.BMEdge, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = icmp eq ptr %7, null
  br i1 %8, label %67, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  %11 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  %12 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  %13 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %14 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 14
  %15 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 12
  %16 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  br label %17

17:                                               ; preds = %9, %63
  %18 = phi ptr [ %65, %63 ], [ %7, %9 ]
  %19 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !72
  store i8 10, ptr %10, align 4, !tbaa !40
  store ptr @bmiter__edge_of_face_begin, ptr %11, align 8, !tbaa !42
  store ptr @bmiter__edge_of_face_step, ptr %12, align 8, !tbaa !43
  store ptr %20, ptr %2, align 8, !tbaa !44
  call void @bmiter__edge_of_face_begin(ptr noundef nonnull %2) #4
  %21 = load ptr, ptr %12, align 8, !tbaa !43
  %22 = call ptr %21(ptr noundef nonnull %2) #4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %63, label %24

24:                                               ; preds = %17, %59
  %25 = phi ptr [ %61, %59 ], [ %22, %17 ]
  %26 = icmp eq ptr %25, %5
  br i1 %26, label %59, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %13, align 8, !tbaa !45
  %29 = call zeroext i8 @BLI_gset_haskey(ptr noundef %28, ptr noundef nonnull %25) #4
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %27
  %32 = load i32, ptr %14, align 8, !tbaa !49
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.BMHeader, ptr %25, i64 0, i32 3
  %37 = load i8, ptr %36, align 1, !tbaa !50
  %38 = and i8 %37, 2
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %35, %31
  %41 = load i16, ptr %15, align 2, !tbaa !51
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %16, align 8, !tbaa !52
  %45 = getelementptr inbounds %struct.BMEdge, ptr %25, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !53
  %47 = getelementptr inbounds %struct.BMesh, ptr %44, i64 0, i32 22
  %48 = load i32, ptr %47, align 8, !tbaa !56
  %49 = sext i32 %48 to i64
  %50 = getelementptr %struct.BMFlagLayer, ptr %46, i64 %49
  %51 = getelementptr %struct.BMFlagLayer, ptr %50, i64 -1
  %52 = load i16, ptr %51, align 2, !tbaa !59
  %53 = and i16 %52, %41
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %43, %40
  %56 = call ptr @BMW_state_add(ptr noundef %0) #4
  %57 = getelementptr inbounds %struct.BMwShellWalker, ptr %56, i64 0, i32 1
  store ptr %25, ptr %57, align 8, !tbaa !61
  %58 = load ptr, ptr %13, align 8, !tbaa !45
  call void @BLI_gset_insert(ptr noundef %58, ptr noundef nonnull %25) #4
  br label %59

59:                                               ; preds = %55, %43, %35, %27, %24
  %60 = load ptr, ptr %12, align 8, !tbaa !43
  %61 = call ptr %60(ptr noundef nonnull %2) #4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %24, !llvm.loop !74

63:                                               ; preds = %59, %17
  %64 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !75
  %66 = icmp eq ptr %65, %7
  br i1 %66, label %67, label %17, !llvm.loop !76

67:                                               ; preds = %63, %1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #4
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define internal ptr @bmw_FaceShellWalker_yield(ptr noundef %0) #0 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #4
  %3 = getelementptr inbounds %struct.BMwShellWalker, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define internal void @bmw_LoopWalker_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMwGenericWalker, align 8
  %4 = alloca { ptr, ptr, ptr, ptr, i8, i8 }, align 8
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4)
  %6 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  %8 = tail call i32 @BM_vert_edge_count_nonwire(ptr noundef %7) #4
  %9 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !78
  %11 = tail call i32 @BM_vert_edge_count_nonwire(ptr noundef %10) #4
  %12 = load ptr, ptr %6, align 8, !tbaa !77
  %13 = tail call ptr @BMW_state_add(ptr noundef %0) #4
  %14 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  tail call void @BLI_gset_insert(ptr noundef %15, ptr noundef %1) #4
  %16 = getelementptr inbounds %struct.BMwLoopWalker, ptr %13, i64 0, i32 2
  store ptr %1, ptr %16, align 8, !tbaa !79
  %17 = getelementptr inbounds %struct.BMwLoopWalker, ptr %13, i64 0, i32 1
  store ptr %1, ptr %17, align 8, !tbaa !81
  %18 = getelementptr inbounds %struct.BMwLoopWalker, ptr %13, i64 0, i32 4
  store ptr %12, ptr %18, align 8, !tbaa !82
  %19 = getelementptr inbounds %struct.BMwLoopWalker, ptr %13, i64 0, i32 3
  store ptr %12, ptr %19, align 8, !tbaa !83
  %20 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !71
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !75
  %26 = icmp eq ptr %25, %21
  %27 = zext i1 %26 to i8
  br label %28

28:                                               ; preds = %2, %23
  %29 = phi i8 [ 0, %2 ], [ %27, %23 ]
  %30 = getelementptr inbounds %struct.BMwLoopWalker, ptr %13, i64 0, i32 6
  store i8 %29, ptr %30, align 8, !tbaa !84
  %31 = icmp eq i8 %29, 0
  br i1 %31, label %71, label %32

32:                                               ; preds = %28
  br i1 %22, label %68, label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !75
  %36 = icmp eq ptr %35, %21
  br i1 %36, label %37, label %68

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !72
  %40 = getelementptr inbounds %struct.BMFace, ptr %39, i64 0, i32 3
  %41 = load i32, ptr %40, align 8, !tbaa !85
  %42 = icmp sgt i32 %41, 4
  br i1 %42, label %43, label %68

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !87
  %46 = getelementptr inbounds %struct.BMLoop, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !88
  %48 = getelementptr inbounds %struct.BMEdge, ptr %47, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !71
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.BMLoop, ptr %49, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !75
  %54 = icmp eq ptr %53, %49
  br i1 %54, label %68, label %55

55:                                               ; preds = %51, %43
  %56 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !89
  %58 = getelementptr inbounds %struct.BMLoop, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !88
  %60 = getelementptr inbounds %struct.BMEdge, ptr %59, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !71
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.BMLoop, ptr %61, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !75
  %66 = icmp eq ptr %65, %61
  %67 = zext i1 %66 to i8
  br label %68

68:                                               ; preds = %63, %55, %51, %37, %33, %32
  %69 = phi i8 [ 0, %37 ], [ 0, %33 ], [ 1, %51 ], [ 0, %55 ], [ %67, %63 ], [ 0, %32 ]
  %70 = getelementptr inbounds %struct.BMwLoopWalker, ptr %13, i64 0, i32 7
  store i8 %69, ptr %70, align 1, !tbaa !90
  br i1 %31, label %73, label %111

71:                                               ; preds = %28
  %72 = getelementptr inbounds %struct.BMwLoopWalker, ptr %13, i64 0, i32 7
  store i8 0, ptr %72, align 1, !tbaa !90
  br label %73

73:                                               ; preds = %71, %68
  %74 = icmp eq i32 %8, 3
  %75 = icmp eq i32 %11, 3
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %76, label %77, label %111

77:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #4
  %78 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 8, ptr %78, align 4, !tbaa !40
  %79 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__face_of_edge_begin, ptr %79, align 8, !tbaa !42
  %80 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__face_of_edge_step, ptr %80, align 8, !tbaa !43
  store ptr %1, ptr %5, align 8, !tbaa !44
  call void @bmiter__face_of_edge_begin(ptr noundef nonnull %5) #4
  %81 = load ptr, ptr %80, align 8, !tbaa !43
  %82 = call ptr %81(ptr noundef nonnull %5) #4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %100, label %84

84:                                               ; preds = %77, %95
  %85 = phi ptr [ %96, %95 ], [ null, %77 ]
  %86 = phi ptr [ %98, %95 ], [ %82, %77 ]
  %87 = icmp eq ptr %85, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.BMFace, ptr %85, i64 0, i32 3
  %90 = load i32, ptr %89, align 8, !tbaa !85
  %91 = getelementptr inbounds %struct.BMFace, ptr %86, i64 0, i32 3
  %92 = load i32, ptr %91, align 8, !tbaa !85
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88, %84
  br label %95

95:                                               ; preds = %88, %94
  %96 = phi ptr [ %86, %94 ], [ %85, %88 ]
  %97 = load ptr, ptr %80, align 8, !tbaa !43
  %98 = call ptr %97(ptr noundef nonnull %5) #4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %84, !llvm.loop !91

100:                                              ; preds = %95, %77
  %101 = phi ptr [ null, %77 ], [ %96, %95 ]
  %102 = icmp eq ptr %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.BMFace, ptr %101, i64 0, i32 3
  %105 = load i32, ptr %104, align 8, !tbaa !85
  %106 = icmp sgt i32 %105, 4
  %107 = select i1 %106, ptr %101, ptr null
  br label %108

108:                                              ; preds = %100, %103
  %109 = phi ptr [ %107, %103 ], [ null, %100 ]
  %110 = getelementptr inbounds %struct.BMwLoopWalker, ptr %13, i64 0, i32 5
  store ptr %109, ptr %110, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #4
  br label %113

111:                                              ; preds = %73, %68
  %112 = getelementptr inbounds %struct.BMwLoopWalker, ptr %13, i64 0, i32 5
  store ptr null, ptr %112, align 8, !tbaa !92
  br label %113

113:                                              ; preds = %111, %108
  %114 = call ptr @BMW_current_state(ptr noundef %0) #4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %124, label %116

116:                                              ; preds = %113, %116
  %117 = phi ptr [ %122, %116 ], [ %114, %113 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %117, i64 24, i1 false), !tbaa.struct !93
  %118 = getelementptr inbounds i8, ptr %117, i64 24
  %119 = load ptr, ptr %118, align 8, !tbaa.struct !95
  %120 = getelementptr inbounds i8, ptr %117, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %120, i64 40, i1 false), !tbaa.struct !96
  %121 = call ptr @BMW_walk(ptr noundef %0) #4
  %122 = call ptr @BMW_current_state(ptr noundef %0) #4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %116, !llvm.loop !97

124:                                              ; preds = %116, %113
  %125 = phi ptr [ undef, %113 ], [ %119, %116 ]
  %126 = call ptr @BMW_state_add(ptr noundef %0) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %126, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !93
  %127 = getelementptr inbounds i8, ptr %126, i64 24
  store ptr %125, ptr %127, align 8, !tbaa.struct !95
  %128 = getelementptr inbounds i8, ptr %126, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %128, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !96
  %129 = getelementptr inbounds %struct.BMwLoopWalker, ptr %126, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !83
  %131 = getelementptr inbounds %struct.BMEdge, ptr %125, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !77
  %133 = icmp eq ptr %132, %130
  %134 = getelementptr inbounds %struct.BMEdge, ptr %125, i64 0, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !78
  %136 = icmp eq ptr %135, %130
  %137 = select i1 %136, ptr %132, ptr null
  %138 = select i1 %133, ptr %135, ptr %137
  %139 = getelementptr inbounds %struct.BMwLoopWalker, ptr %126, i64 0, i32 4
  store ptr %138, ptr %139, align 8, !tbaa !82
  store ptr %138, ptr %129, align 8, !tbaa !83
  %140 = load ptr, ptr %14, align 8, !tbaa !45
  call void @BLI_gset_clear(ptr noundef %140, ptr noundef null) #4
  %141 = load ptr, ptr %14, align 8, !tbaa !45
  call void @BLI_gset_insert(ptr noundef %141, ptr noundef %125) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @bmw_LoopWalker_step(ptr noundef %0) #0 {
  %2 = alloca %struct.BMIter, align 8
  %3 = tail call ptr @BMW_current_state(ptr noundef %0) #4
  %4 = getelementptr inbounds i8, ptr %3, i64 24
  %5 = load ptr, ptr %4, align 1
  %6 = getelementptr inbounds i8, ptr %3, i64 40
  %7 = load ptr, ptr %6, align 1
  %8 = getelementptr inbounds i8, ptr %3, i64 56
  %9 = load ptr, ptr %8, align 1
  %10 = getelementptr inbounds i8, ptr %3, i64 64
  %11 = load i8, ptr %10, align 1
  %12 = getelementptr inbounds i8, ptr %3, i64 65
  %13 = load i8, ptr %12, align 1
  tail call void @BMW_state_remove(ptr noundef %0) #4
  %14 = getelementptr inbounds %struct.BMEdge, ptr %5, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !71
  %16 = icmp eq ptr %9, null
  br i1 %16, label %80, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.BMEdge, ptr %5, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !77
  %20 = icmp eq ptr %19, %7
  %21 = getelementptr inbounds %struct.BMEdge, ptr %5, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !78
  %23 = icmp eq ptr %22, %7
  %24 = select i1 %23, ptr %19, ptr null
  %25 = select i1 %20, ptr %22, ptr %24
  %26 = tail call i32 @BM_vert_edge_count_nonwire(ptr noundef %25) #4
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %28, label %385

28:                                               ; preds = %17
  %29 = tail call ptr @BM_face_other_vert_loop(ptr noundef nonnull %9, ptr noundef %7, ptr noundef %25) #4
  %30 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !98
  %32 = tail call ptr @BM_edge_exists(ptr noundef %25, ptr noundef %31) #4
  %33 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 14
  %34 = load i32, ptr %33, align 8, !tbaa !49
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.BMHeader, ptr %32, i64 0, i32 3
  %39 = load i8, ptr %38, align 1, !tbaa !50
  %40 = and i8 %39, 2
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %385

42:                                               ; preds = %37, %28
  %43 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 12
  %44 = load i16, ptr %43, align 2, !tbaa !51
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !52
  %49 = getelementptr inbounds %struct.BMEdge, ptr %32, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !53
  %51 = getelementptr inbounds %struct.BMesh, ptr %48, i64 0, i32 22
  %52 = load i32, ptr %51, align 8, !tbaa !56
  %53 = sext i32 %52 to i64
  %54 = getelementptr %struct.BMFlagLayer, ptr %50, i64 %53
  %55 = getelementptr %struct.BMFlagLayer, ptr %54, i64 -1
  %56 = load i16, ptr %55, align 2, !tbaa !59
  %57 = and i16 %56, %44
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %385, label %59

59:                                               ; preds = %46, %42
  %60 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %61 = load ptr, ptr %60, align 8, !tbaa !45
  %62 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %61, ptr noundef %32) #4
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %385

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.BMEdge, ptr %32, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !71
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.BMLoop, ptr %66, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !75
  %71 = icmp eq ptr %70, %66
  br i1 %71, label %385, label %72

72:                                               ; preds = %64, %68
  %73 = tail call ptr @BMW_state_add(ptr noundef %0) #4
  %74 = getelementptr inbounds %struct.BMwLoopWalker, ptr %73, i64 0, i32 1
  store ptr %32, ptr %74, align 8, !tbaa !81
  %75 = getelementptr inbounds %struct.BMwLoopWalker, ptr %73, i64 0, i32 3
  store ptr %25, ptr %75, align 8, !tbaa !83
  %76 = getelementptr inbounds %struct.BMwLoopWalker, ptr %73, i64 0, i32 6
  store i8 %11, ptr %76, align 8, !tbaa !84
  %77 = getelementptr inbounds %struct.BMwLoopWalker, ptr %73, i64 0, i32 7
  store i8 %13, ptr %77, align 1, !tbaa !90
  %78 = getelementptr inbounds %struct.BMwLoopWalker, ptr %73, i64 0, i32 5
  store ptr %9, ptr %78, align 8, !tbaa !92
  %79 = load ptr, ptr %60, align 8, !tbaa !45
  tail call void @BLI_gset_insert(ptr noundef %79, ptr noundef %32) #4
  br label %385

80:                                               ; preds = %1
  %81 = icmp eq ptr %15, null
  br i1 %81, label %82, label %149

82:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #4
  %83 = getelementptr inbounds %struct.BMEdge, ptr %5, i64 0, i32 3
  %84 = getelementptr inbounds %struct.BMEdge, ptr %5, i64 0, i32 2
  %85 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  %86 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  %87 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  %88 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 14
  %89 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 12
  %90 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  %91 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  br label %92

92:                                               ; preds = %82, %145
  %93 = phi i32 [ 0, %82 ], [ %146, %145 ]
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, ptr %84, ptr %83
  %96 = load ptr, ptr %95, align 8, !tbaa !68
  store i8 4, ptr %85, align 4, !tbaa !40
  store ptr @bmiter__edge_of_vert_begin, ptr %86, align 8, !tbaa !42
  store ptr @bmiter__edge_of_vert_step, ptr %87, align 8, !tbaa !43
  store ptr %96, ptr %2, align 8, !tbaa !44
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %2) #4
  %97 = load ptr, ptr %87, align 8, !tbaa !43
  %98 = call ptr %97(ptr noundef nonnull %2) #4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %145, label %100

100:                                              ; preds = %92, %141
  %101 = phi ptr [ %143, %141 ], [ %98, %92 ]
  %102 = getelementptr inbounds %struct.BMEdge, ptr %101, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !71
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %141

105:                                              ; preds = %100
  %106 = load i32, ptr %88, align 8, !tbaa !49
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.BMHeader, ptr %101, i64 0, i32 3
  %111 = load i8, ptr %110, align 1, !tbaa !50
  %112 = and i8 %111, 2
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %141

114:                                              ; preds = %109, %105
  %115 = load i16, ptr %89, align 2, !tbaa !51
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %129, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr %90, align 8, !tbaa !52
  %119 = getelementptr inbounds %struct.BMEdge, ptr %101, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !53
  %121 = getelementptr inbounds %struct.BMesh, ptr %118, i64 0, i32 22
  %122 = load i32, ptr %121, align 8, !tbaa !56
  %123 = sext i32 %122 to i64
  %124 = getelementptr %struct.BMFlagLayer, ptr %120, i64 %123
  %125 = getelementptr %struct.BMFlagLayer, ptr %124, i64 -1
  %126 = load i16, ptr %125, align 2, !tbaa !59
  %127 = and i16 %126, %115
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %141, label %129

129:                                              ; preds = %117, %114
  %130 = load ptr, ptr %91, align 8, !tbaa !45
  %131 = call zeroext i8 @BLI_gset_haskey(ptr noundef %130, ptr noundef nonnull %101) #4
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %129
  %134 = call ptr @BMW_state_add(ptr noundef %0) #4
  %135 = getelementptr inbounds %struct.BMwLoopWalker, ptr %134, i64 0, i32 1
  store ptr %101, ptr %135, align 8, !tbaa !81
  %136 = getelementptr inbounds %struct.BMwLoopWalker, ptr %134, i64 0, i32 3
  store ptr %96, ptr %136, align 8, !tbaa !83
  %137 = getelementptr inbounds %struct.BMwLoopWalker, ptr %134, i64 0, i32 6
  store i8 %11, ptr %137, align 8, !tbaa !84
  %138 = getelementptr inbounds %struct.BMwLoopWalker, ptr %134, i64 0, i32 7
  store i8 %13, ptr %138, align 1, !tbaa !90
  %139 = getelementptr inbounds %struct.BMwLoopWalker, ptr %134, i64 0, i32 5
  store ptr null, ptr %139, align 8, !tbaa !92
  %140 = load ptr, ptr %91, align 8, !tbaa !45
  call void @BLI_gset_insert(ptr noundef %140, ptr noundef nonnull %101) #4
  br label %141

141:                                              ; preds = %117, %109, %100, %129, %133
  %142 = load ptr, ptr %87, align 8, !tbaa !43
  %143 = call ptr %142(ptr noundef nonnull %2) #4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %100, !llvm.loop !99

145:                                              ; preds = %141, %92
  %146 = add nuw nsw i32 %93, 1
  %147 = icmp eq i32 %93, 0
  br i1 %147, label %92, label %148, !llvm.loop !100

148:                                              ; preds = %145
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #4
  br label %385

149:                                              ; preds = %80
  switch i8 %11, label %385 [
    i8 0, label %150
    i8 1, label %237
  ]

150:                                              ; preds = %149
  %151 = getelementptr inbounds %struct.BMEdge, ptr %5, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !77
  %153 = icmp eq ptr %152, %7
  %154 = getelementptr inbounds %struct.BMEdge, ptr %5, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !78
  %156 = icmp eq ptr %155, %7
  %157 = select i1 %156, ptr %152, ptr null
  %158 = select i1 %153, ptr %155, ptr %157
  %159 = tail call i32 @BM_vert_edge_count_nonwire(ptr noundef %158) #4
  switch i32 %159, label %188 [
    i32 4, label %160
    i32 2, label %160
  ]

160:                                              ; preds = %150, %150
  %161 = sdiv i32 %159, 2
  br label %162

162:                                              ; preds = %183, %160
  %163 = phi ptr [ %15, %160 ], [ %185, %183 ]
  %164 = phi i32 [ 0, %160 ], [ %186, %183 ]
  %165 = tail call ptr @BM_loop_other_edge_loop(ptr noundef %163, ptr noundef %158) #4
  %166 = getelementptr inbounds %struct.BMLoop, ptr %165, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !88
  %168 = getelementptr inbounds %struct.BMEdge, ptr %167, i64 0, i32 4
  %169 = load ptr, ptr %168, align 8, !tbaa !71
  %170 = icmp eq ptr %169, null
  br i1 %170, label %180, label %171

171:                                              ; preds = %162
  %172 = getelementptr inbounds %struct.BMLoop, ptr %169, i64 0, i32 4
  %173 = load ptr, ptr %172, align 8, !tbaa !75
  %174 = icmp eq ptr %173, %169
  br i1 %174, label %180, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.BMLoop, ptr %173, i64 0, i32 4
  %177 = load ptr, ptr %176, align 8, !tbaa !75
  %178 = icmp eq ptr %177, %169
  %179 = zext i1 %178 to i8
  br label %180

180:                                              ; preds = %162, %171, %175
  %181 = phi i8 [ 0, %171 ], [ 0, %162 ], [ %179, %175 ]
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.BMLoop, ptr %165, i64 0, i32 4
  %185 = load ptr, ptr %184, align 8, !tbaa !75
  %186 = add nuw nsw i32 %164, 1
  %187 = icmp eq i32 %186, %161
  br i1 %187, label %188, label %162, !llvm.loop !101

188:                                              ; preds = %183, %180, %150
  %189 = phi ptr [ null, %150 ], [ %185, %183 ], [ null, %180 ]
  %190 = icmp eq ptr %189, null
  br i1 %190, label %385, label %191

191:                                              ; preds = %188
  %192 = load ptr, ptr %14, align 8, !tbaa !71
  %193 = icmp eq ptr %189, %192
  br i1 %193, label %385, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.BMLoop, ptr %189, i64 0, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !88
  %197 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 14
  %198 = load i32, ptr %197, align 8, !tbaa !49
  %199 = and i32 %198, 1
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %206, label %201

201:                                              ; preds = %194
  %202 = getelementptr inbounds %struct.BMHeader, ptr %196, i64 0, i32 3
  %203 = load i8, ptr %202, align 1, !tbaa !50
  %204 = and i8 %203, 2
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %206, label %385

206:                                              ; preds = %201, %194
  %207 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 12
  %208 = load i16, ptr %207, align 2, !tbaa !51
  %209 = icmp eq i16 %208, 0
  br i1 %209, label %223, label %210

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  %212 = load ptr, ptr %211, align 8, !tbaa !52
  %213 = getelementptr inbounds %struct.BMEdge, ptr %196, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !53
  %215 = getelementptr inbounds %struct.BMesh, ptr %212, i64 0, i32 22
  %216 = load i32, ptr %215, align 8, !tbaa !56
  %217 = sext i32 %216 to i64
  %218 = getelementptr %struct.BMFlagLayer, ptr %214, i64 %217
  %219 = getelementptr %struct.BMFlagLayer, ptr %218, i64 -1
  %220 = load i16, ptr %219, align 2, !tbaa !59
  %221 = and i16 %220, %208
  %222 = icmp eq i16 %221, 0
  br i1 %222, label %385, label %223

223:                                              ; preds = %210, %206
  %224 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %225 = load ptr, ptr %224, align 8, !tbaa !45
  %226 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %225, ptr noundef %196) #4
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %228, label %385

228:                                              ; preds = %223
  %229 = tail call ptr @BMW_state_add(ptr noundef %0) #4
  %230 = load ptr, ptr %195, align 8, !tbaa !88
  %231 = getelementptr inbounds %struct.BMwLoopWalker, ptr %229, i64 0, i32 1
  store ptr %230, ptr %231, align 8, !tbaa !81
  %232 = getelementptr inbounds %struct.BMwLoopWalker, ptr %229, i64 0, i32 3
  store ptr %158, ptr %232, align 8, !tbaa !83
  %233 = getelementptr inbounds %struct.BMwLoopWalker, ptr %229, i64 0, i32 6
  store i8 %11, ptr %233, align 8, !tbaa !84
  %234 = getelementptr inbounds %struct.BMwLoopWalker, ptr %229, i64 0, i32 7
  store i8 %13, ptr %234, align 1, !tbaa !90
  %235 = getelementptr inbounds %struct.BMwLoopWalker, ptr %229, i64 0, i32 5
  store ptr null, ptr %235, align 8, !tbaa !92
  %236 = load ptr, ptr %224, align 8, !tbaa !45
  tail call void @BLI_gset_insert(ptr noundef %236, ptr noundef %230) #4
  br label %385

237:                                              ; preds = %149
  %238 = getelementptr inbounds %struct.BMEdge, ptr %5, i64 0, i32 2
  %239 = load ptr, ptr %238, align 8, !tbaa !77
  %240 = icmp eq ptr %239, %7
  %241 = getelementptr inbounds %struct.BMEdge, ptr %5, i64 0, i32 3
  %242 = load ptr, ptr %241, align 8, !tbaa !78
  %243 = icmp eq ptr %242, %7
  %244 = select i1 %243, ptr %239, ptr null
  %245 = select i1 %240, ptr %242, ptr %244
  %246 = tail call i32 @BM_vert_edge_count_nonwire(ptr noundef %245) #4
  %247 = icmp eq i8 %13, 0
  %248 = icmp sgt i32 %246, 2
  %249 = select i1 %247, i1 %248, i1 false
  br i1 %249, label %261, label %250

250:                                              ; preds = %237
  %251 = icmp eq i8 %13, 1
  %252 = icmp eq i32 %246, 2
  %253 = select i1 %251, i1 %252, i1 false
  br i1 %253, label %254, label %291

254:                                              ; preds = %250
  %255 = load ptr, ptr %14, align 8, !tbaa !71
  %256 = icmp eq ptr %255, null
  br i1 %256, label %291, label %257

257:                                              ; preds = %254
  %258 = getelementptr inbounds %struct.BMLoop, ptr %255, i64 0, i32 4
  %259 = load ptr, ptr %258, align 8, !tbaa !75
  %260 = icmp eq ptr %259, %255
  br i1 %260, label %261, label %291

261:                                              ; preds = %237, %257
  br label %262

262:                                              ; preds = %261, %282
  %263 = phi ptr [ %284, %282 ], [ %15, %261 ]
  %264 = tail call ptr @BM_loop_other_edge_loop(ptr noundef %263, ptr noundef %245) #4
  %265 = getelementptr inbounds %struct.BMLoop, ptr %264, i64 0, i32 2
  %266 = load ptr, ptr %265, align 8, !tbaa !88
  %267 = getelementptr inbounds %struct.BMEdge, ptr %266, i64 0, i32 4
  %268 = load ptr, ptr %267, align 8, !tbaa !71
  %269 = icmp eq ptr %268, null
  br i1 %269, label %279, label %270

270:                                              ; preds = %262
  %271 = getelementptr inbounds %struct.BMLoop, ptr %268, i64 0, i32 4
  %272 = load ptr, ptr %271, align 8, !tbaa !75
  %273 = icmp eq ptr %272, %268
  br i1 %273, label %279, label %274

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.BMLoop, ptr %272, i64 0, i32 4
  %276 = load ptr, ptr %275, align 8, !tbaa !75
  %277 = icmp eq ptr %276, %268
  %278 = zext i1 %277 to i8
  br label %279

279:                                              ; preds = %262, %270, %274
  %280 = phi i8 [ 0, %270 ], [ 0, %262 ], [ %278, %274 ]
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %279
  %283 = getelementptr inbounds %struct.BMLoop, ptr %264, i64 0, i32 4
  %284 = load ptr, ptr %283, align 8, !tbaa !75
  br label %262, !llvm.loop !102

285:                                              ; preds = %279
  br i1 %269, label %291, label %286

286:                                              ; preds = %285
  %287 = getelementptr inbounds %struct.BMLoop, ptr %268, i64 0, i32 4
  %288 = load ptr, ptr %287, align 8, !tbaa !75
  %289 = icmp eq ptr %288, %268
  %290 = select i1 %289, ptr %264, ptr null
  br label %291

291:                                              ; preds = %254, %286, %285, %257, %250
  %292 = phi ptr [ %15, %257 ], [ %15, %250 ], [ null, %285 ], [ %290, %286 ], [ %15, %254 ]
  %293 = icmp ne ptr %292, null
  %294 = select i1 %247, i1 %293, i1 false
  br i1 %294, label %295, label %336

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.BMLoop, ptr %292, i64 0, i32 2
  %297 = load ptr, ptr %296, align 8, !tbaa !88
  %298 = getelementptr inbounds %struct.BMEdge, ptr %297, i64 0, i32 4
  %299 = load ptr, ptr %298, align 8, !tbaa !71
  %300 = icmp eq ptr %299, null
  br i1 %300, label %336, label %301

301:                                              ; preds = %295
  %302 = getelementptr inbounds %struct.BMLoop, ptr %299, i64 0, i32 4
  %303 = load ptr, ptr %302, align 8, !tbaa !75
  %304 = icmp eq ptr %303, %299
  br i1 %304, label %305, label %336

305:                                              ; preds = %301
  %306 = getelementptr inbounds %struct.BMLoop, ptr %299, i64 0, i32 3
  %307 = load ptr, ptr %306, align 8, !tbaa !72
  %308 = getelementptr inbounds %struct.BMFace, ptr %307, i64 0, i32 3
  %309 = load i32, ptr %308, align 8, !tbaa !85
  %310 = icmp sgt i32 %309, 4
  br i1 %310, label %311, label %336

311:                                              ; preds = %305
  %312 = getelementptr inbounds %struct.BMLoop, ptr %299, i64 0, i32 6
  %313 = load ptr, ptr %312, align 8, !tbaa !87
  %314 = getelementptr inbounds %struct.BMLoop, ptr %313, i64 0, i32 2
  %315 = load ptr, ptr %314, align 8, !tbaa !88
  %316 = getelementptr inbounds %struct.BMEdge, ptr %315, i64 0, i32 4
  %317 = load ptr, ptr %316, align 8, !tbaa !71
  %318 = icmp eq ptr %317, null
  br i1 %318, label %323, label %319

319:                                              ; preds = %311
  %320 = getelementptr inbounds %struct.BMLoop, ptr %317, i64 0, i32 4
  %321 = load ptr, ptr %320, align 8, !tbaa !75
  %322 = icmp eq ptr %321, %317
  br i1 %322, label %336, label %323

323:                                              ; preds = %319, %311
  %324 = getelementptr inbounds %struct.BMLoop, ptr %299, i64 0, i32 7
  %325 = load ptr, ptr %324, align 8, !tbaa !89
  %326 = getelementptr inbounds %struct.BMLoop, ptr %325, i64 0, i32 2
  %327 = load ptr, ptr %326, align 8, !tbaa !88
  %328 = getelementptr inbounds %struct.BMEdge, ptr %327, i64 0, i32 4
  %329 = load ptr, ptr %328, align 8, !tbaa !71
  %330 = icmp eq ptr %329, null
  br i1 %330, label %336, label %331

331:                                              ; preds = %323
  %332 = getelementptr inbounds %struct.BMLoop, ptr %329, i64 0, i32 4
  %333 = load ptr, ptr %332, align 8, !tbaa !75
  %334 = icmp eq ptr %333, %329
  %335 = select i1 %334, ptr null, ptr %292
  br label %336

336:                                              ; preds = %331, %323, %319, %305, %301, %295, %291
  %337 = phi ptr [ %292, %291 ], [ %292, %305 ], [ %292, %301 ], [ null, %319 ], [ %292, %323 ], [ %335, %331 ], [ %292, %295 ]
  %338 = icmp eq ptr %337, null
  br i1 %338, label %385, label %339

339:                                              ; preds = %336
  %340 = load ptr, ptr %14, align 8, !tbaa !71
  %341 = icmp eq ptr %337, %340
  br i1 %341, label %385, label %342

342:                                              ; preds = %339
  %343 = getelementptr inbounds %struct.BMLoop, ptr %337, i64 0, i32 2
  %344 = load ptr, ptr %343, align 8, !tbaa !88
  %345 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 14
  %346 = load i32, ptr %345, align 8, !tbaa !49
  %347 = and i32 %346, 1
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %354, label %349

349:                                              ; preds = %342
  %350 = getelementptr inbounds %struct.BMHeader, ptr %344, i64 0, i32 3
  %351 = load i8, ptr %350, align 1, !tbaa !50
  %352 = and i8 %351, 2
  %353 = icmp eq i8 %352, 0
  br i1 %353, label %354, label %385

354:                                              ; preds = %349, %342
  %355 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 12
  %356 = load i16, ptr %355, align 2, !tbaa !51
  %357 = icmp eq i16 %356, 0
  br i1 %357, label %371, label %358

358:                                              ; preds = %354
  %359 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  %360 = load ptr, ptr %359, align 8, !tbaa !52
  %361 = getelementptr inbounds %struct.BMEdge, ptr %344, i64 0, i32 1
  %362 = load ptr, ptr %361, align 8, !tbaa !53
  %363 = getelementptr inbounds %struct.BMesh, ptr %360, i64 0, i32 22
  %364 = load i32, ptr %363, align 8, !tbaa !56
  %365 = sext i32 %364 to i64
  %366 = getelementptr %struct.BMFlagLayer, ptr %362, i64 %365
  %367 = getelementptr %struct.BMFlagLayer, ptr %366, i64 -1
  %368 = load i16, ptr %367, align 2, !tbaa !59
  %369 = and i16 %368, %356
  %370 = icmp eq i16 %369, 0
  br i1 %370, label %385, label %371

371:                                              ; preds = %358, %354
  %372 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %373 = load ptr, ptr %372, align 8, !tbaa !45
  %374 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %373, ptr noundef %344) #4
  %375 = icmp eq i8 %374, 0
  br i1 %375, label %376, label %385

376:                                              ; preds = %371
  %377 = tail call ptr @BMW_state_add(ptr noundef %0) #4
  %378 = load ptr, ptr %343, align 8, !tbaa !88
  %379 = getelementptr inbounds %struct.BMwLoopWalker, ptr %377, i64 0, i32 1
  store ptr %378, ptr %379, align 8, !tbaa !81
  %380 = getelementptr inbounds %struct.BMwLoopWalker, ptr %377, i64 0, i32 3
  store ptr %245, ptr %380, align 8, !tbaa !83
  %381 = getelementptr inbounds %struct.BMwLoopWalker, ptr %377, i64 0, i32 6
  store i8 %11, ptr %381, align 8, !tbaa !84
  %382 = getelementptr inbounds %struct.BMwLoopWalker, ptr %377, i64 0, i32 7
  store i8 %13, ptr %382, align 1, !tbaa !90
  %383 = getelementptr inbounds %struct.BMwLoopWalker, ptr %377, i64 0, i32 5
  store ptr null, ptr %383, align 8, !tbaa !92
  %384 = load ptr, ptr %372, align 8, !tbaa !45
  tail call void @BLI_gset_insert(ptr noundef %384, ptr noundef %378) #4
  br label %385

385:                                              ; preds = %358, %349, %210, %201, %46, %37, %336, %376, %371, %339, %149, %188, %228, %223, %191, %17, %72, %68, %59, %148
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define internal ptr @bmw_LoopWalker_yield(ptr noundef %0) #0 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #4
  %3 = getelementptr inbounds %struct.BMwLoopWalker, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !81
  ret ptr %4
}

declare i32 @BM_vert_edge_count_nonwire(ptr noundef) local_unnamed_addr #2

declare ptr @BMW_walk(ptr noundef) local_unnamed_addr #2

declare void @BLI_gset_clear(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_face_other_vert_loop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_loop_other_edge_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @bmw_FaceLoopWalker_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMwFaceLoopWalker, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3)
  %4 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = icmp eq ptr %5, null
  br i1 %6, label %98, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = icmp eq ptr %9, %5
  br i1 %10, label %11, label %56

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = getelementptr inbounds %struct.BMFace, ptr %13, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !85
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %17, label %98

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 14
  %19 = load i32, ptr %18, align 8, !tbaa !49
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.BMHeader, ptr %13, i64 0, i32 3
  %24 = load i8, ptr %23, align 1, !tbaa !50
  %25 = and i8 %24, 2
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %98

27:                                               ; preds = %22, %17
  %28 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 13
  %29 = load i16, ptr %28, align 4, !tbaa !103
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !52
  %34 = getelementptr inbounds %struct.BMFace, ptr %13, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !104
  %36 = getelementptr inbounds %struct.BMesh, ptr %33, i64 0, i32 22
  %37 = load i32, ptr %36, align 8, !tbaa !56
  %38 = sext i32 %37 to i64
  %39 = getelementptr %struct.BMFlagLayer, ptr %35, i64 %38
  %40 = getelementptr %struct.BMFlagLayer, ptr %39, i64 -1
  %41 = load i16, ptr %40, align 2, !tbaa !59
  %42 = and i16 %41, %29
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %98, label %44

44:                                               ; preds = %31, %27
  %45 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %46 = load ptr, ptr %45, align 8, !tbaa !45
  %47 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %46, ptr noundef %13) #4
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 16
  %51 = load ptr, ptr %50, align 8, !tbaa !105
  %52 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !88
  %54 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %51, ptr noundef %53) #4
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %98

56:                                               ; preds = %44, %49, %7
  %57 = load ptr, ptr %4, align 8, !tbaa !71
  %58 = icmp eq ptr %57, null
  br i1 %58, label %98, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.BMLoop, ptr %57, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !75
  %62 = icmp eq ptr %61, %57
  br i1 %62, label %98, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.BMLoop, ptr %61, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !75
  %66 = icmp eq ptr %65, %57
  br i1 %66, label %67, label %98

67:                                               ; preds = %63
  %68 = tail call ptr @BMW_state_add(ptr noundef %0) #4
  %69 = load ptr, ptr %4, align 8, !tbaa !71
  %70 = getelementptr inbounds %struct.BMwFaceLoopWalker, ptr %68, i64 0, i32 1
  store ptr %69, ptr %70, align 8, !tbaa !106
  %71 = getelementptr inbounds %struct.BMwFaceLoopWalker, ptr %68, i64 0, i32 2
  store i8 0, ptr %71, align 8, !tbaa !108
  %72 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %73 = load ptr, ptr %72, align 8, !tbaa !45
  %74 = getelementptr inbounds %struct.BMLoop, ptr %69, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !72
  tail call void @BLI_gset_insert(ptr noundef %73, ptr noundef %75) #4
  %76 = tail call ptr @BMW_current_state(ptr noundef %0) #4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %67, %78
  %79 = phi ptr [ %81, %78 ], [ %76, %67 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %79, i64 40, i1 false), !tbaa.struct !109
  %80 = tail call ptr @BMW_walk(ptr noundef %0) #4
  %81 = tail call ptr @BMW_current_state(ptr noundef %0) #4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %78, !llvm.loop !110

83:                                               ; preds = %78, %67
  %84 = tail call ptr @BMW_state_add(ptr noundef %0) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %84, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !109
  %85 = getelementptr inbounds %struct.BMwFaceLoopWalker, ptr %84, i64 0, i32 2
  store i8 0, ptr %85, align 8, !tbaa !108
  %86 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 16
  %87 = load ptr, ptr %86, align 8, !tbaa !105
  tail call void @BLI_gset_clear(ptr noundef %87, ptr noundef null) #4
  %88 = load ptr, ptr %86, align 8, !tbaa !105
  %89 = getelementptr inbounds %struct.BMwFaceLoopWalker, ptr %84, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !106
  %91 = getelementptr inbounds %struct.BMLoop, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !88
  tail call void @BLI_gset_insert(ptr noundef %88, ptr noundef %92) #4
  %93 = load ptr, ptr %72, align 8, !tbaa !45
  tail call void @BLI_gset_clear(ptr noundef %93, ptr noundef null) #4
  %94 = load ptr, ptr %72, align 8, !tbaa !45
  %95 = load ptr, ptr %89, align 8, !tbaa !106
  %96 = getelementptr inbounds %struct.BMLoop, ptr %95, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !72
  tail call void @BLI_gset_insert(ptr noundef %94, ptr noundef %97) #4
  br label %98

98:                                               ; preds = %49, %31, %22, %11, %2, %59, %56, %63, %83
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @bmw_FaceLoopWalker_step(ptr noundef %0) #0 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #4
  %3 = getelementptr inbounds i8, ptr %2, i64 24
  %4 = load ptr, ptr %3, align 1
  %5 = getelementptr inbounds i8, ptr %2, i64 32
  %6 = load i8, ptr %5, align 1
  tail call void @BMW_state_remove(ptr noundef %0) #4
  %7 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = icmp eq i8 %6, 0
  br i1 %9, label %10, label %150

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !75
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = getelementptr inbounds %struct.BMFace, ptr %14, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !85
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %18, label %57

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 14
  %20 = load i32, ptr %19, align 8, !tbaa !49
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.BMHeader, ptr %14, i64 0, i32 3
  %25 = load i8, ptr %24, align 1, !tbaa !50
  %26 = and i8 %25, 2
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %23, %18
  %29 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 13
  %30 = load i16, ptr %29, align 4, !tbaa !103
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !52
  %35 = getelementptr inbounds %struct.BMFace, ptr %14, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !104
  %37 = getelementptr inbounds %struct.BMesh, ptr %34, i64 0, i32 22
  %38 = load i32, ptr %37, align 8, !tbaa !56
  %39 = sext i32 %38 to i64
  %40 = getelementptr %struct.BMFlagLayer, ptr %36, i64 %39
  %41 = getelementptr %struct.BMFlagLayer, ptr %40, i64 -1
  %42 = load i16, ptr %41, align 2, !tbaa !59
  %43 = and i16 %42, %30
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %32, %28
  %46 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %47 = load ptr, ptr %46, align 8, !tbaa !45
  %48 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %47, ptr noundef %14) #4
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %84, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 16
  %52 = load ptr, ptr %51, align 8, !tbaa !105
  %53 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !88
  %55 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %52, ptr noundef %54) #4
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %84, label %57

57:                                               ; preds = %50, %32, %23, %10
  %58 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !87
  %60 = getelementptr inbounds %struct.BMLoop, ptr %59, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !87
  %62 = getelementptr inbounds %struct.BMLoop, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !88
  %64 = getelementptr inbounds %struct.BMEdge, ptr %63, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !71
  %66 = icmp eq ptr %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %57
  %68 = getelementptr inbounds %struct.BMLoop, ptr %65, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !75
  %70 = icmp eq ptr %69, %65
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.BMLoop, ptr %69, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !75
  %74 = icmp eq ptr %73, %65
  br i1 %74, label %80, label %75

75:                                               ; preds = %67, %57, %71
  %76 = getelementptr inbounds %struct.BMLoop, ptr %61, i64 0, i32 7
  %77 = load ptr, ptr %76, align 8, !tbaa !89
  %78 = getelementptr inbounds %struct.BMLoop, ptr %77, i64 0, i32 7
  %79 = load ptr, ptr %78, align 8, !tbaa !89
  br label %80

80:                                               ; preds = %75, %71
  %81 = phi ptr [ %61, %71 ], [ %79, %75 ]
  %82 = getelementptr inbounds %struct.BMLoop, ptr %81, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !75
  br label %84

84:                                               ; preds = %45, %50, %80
  %85 = phi ptr [ %83, %80 ], [ %12, %50 ], [ %12, %45 ]
  %86 = getelementptr inbounds %struct.BMLoop, ptr %85, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !72
  %88 = getelementptr inbounds %struct.BMFace, ptr %87, i64 0, i32 3
  %89 = load i32, ptr %88, align 8, !tbaa !85
  %90 = icmp eq i32 %89, 4
  br i1 %90, label %91, label %150

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 14
  %93 = load i32, ptr %92, align 8, !tbaa !49
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.BMHeader, ptr %87, i64 0, i32 3
  %98 = load i8, ptr %97, align 1, !tbaa !50
  %99 = and i8 %98, 2
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %150

101:                                              ; preds = %96, %91
  %102 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 13
  %103 = load i16, ptr %102, align 4, !tbaa !103
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  %107 = load ptr, ptr %106, align 8, !tbaa !52
  %108 = getelementptr inbounds %struct.BMFace, ptr %87, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !104
  %110 = getelementptr inbounds %struct.BMesh, ptr %107, i64 0, i32 22
  %111 = load i32, ptr %110, align 8, !tbaa !56
  %112 = sext i32 %111 to i64
  %113 = getelementptr %struct.BMFlagLayer, ptr %109, i64 %112
  %114 = getelementptr %struct.BMFlagLayer, ptr %113, i64 -1
  %115 = load i16, ptr %114, align 2, !tbaa !59
  %116 = and i16 %115, %103
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %150, label %118

118:                                              ; preds = %105, %101
  %119 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %120 = load ptr, ptr %119, align 8, !tbaa !45
  %121 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %120, ptr noundef %87) #4
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 16
  %125 = load ptr, ptr %124, align 8, !tbaa !105
  %126 = getelementptr inbounds %struct.BMLoop, ptr %85, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !88
  %128 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %125, ptr noundef %127) #4
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %150

130:                                              ; preds = %123, %118
  %131 = tail call ptr @BMW_state_add(ptr noundef %0) #4
  %132 = getelementptr inbounds %struct.BMwFaceLoopWalker, ptr %131, i64 0, i32 1
  store ptr %85, ptr %132, align 8, !tbaa !106
  %133 = load ptr, ptr %86, align 8, !tbaa !72
  %134 = getelementptr inbounds %struct.BMFace, ptr %133, i64 0, i32 3
  %135 = load i32, ptr %134, align 8, !tbaa !85
  %136 = icmp eq i32 %135, 4
  %137 = getelementptr inbounds %struct.BMwFaceLoopWalker, ptr %131, i64 0, i32 2
  br i1 %136, label %139, label %138

138:                                              ; preds = %130
  store i8 1, ptr %137, align 8, !tbaa !108
  store ptr %4, ptr %132, align 8, !tbaa !106
  br label %140

139:                                              ; preds = %130
  store i8 0, ptr %137, align 8, !tbaa !108
  br label %140

140:                                              ; preds = %139, %138
  %141 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 16
  %142 = load ptr, ptr %141, align 8, !tbaa !105
  %143 = getelementptr inbounds %struct.BMLoop, ptr %85, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !88
  %145 = tail call zeroext i8 @BLI_gset_add(ptr noundef %142, ptr noundef %144) #4
  %146 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %147 = load ptr, ptr %146, align 8, !tbaa !45
  %148 = load ptr, ptr %86, align 8, !tbaa !72
  %149 = tail call zeroext i8 @BLI_gset_add(ptr noundef %147, ptr noundef %148) #4
  br label %150

150:                                              ; preds = %123, %105, %96, %84, %140, %1
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal ptr @bmw_FaceLoopWalker_yield(ptr noundef %0) #0 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.BMwFaceLoopWalker, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi ptr [ %8, %4 ], [ null, %1 ]
  ret ptr %10
}

declare zeroext i8 @BLI_gset_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @bmw_EdgeringWalker_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMwEdgeringWalker, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3)
  %4 = tail call ptr @BMW_state_add(ptr noundef %0) #4
  %5 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = getelementptr inbounds %struct.BMwEdgeringWalker, ptr %4, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !111
  %8 = icmp eq ptr %6, null
  %9 = getelementptr inbounds %struct.BMwEdgeringWalker, ptr %4, i64 0, i32 2
  br i1 %8, label %10, label %11

10:                                               ; preds = %2
  store ptr %1, ptr %9, align 8, !tbaa !113
  br label %41

11:                                               ; preds = %2
  store ptr null, ptr %9, align 8, !tbaa !113
  %12 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  tail call void @BLI_gset_insert(ptr noundef %13, ptr noundef %15) #4
  %16 = tail call ptr @BMW_current_state(ptr noundef %0) #4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11, %18
  %19 = phi ptr [ %21, %18 ], [ %16, %11 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %19, i64 40, i1 false), !tbaa.struct !114
  %20 = tail call ptr @BMW_walk(ptr noundef %0) #4
  %21 = tail call ptr @BMW_current_state(ptr noundef %0) #4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %18, !llvm.loop !115

23:                                               ; preds = %18, %11
  %24 = tail call ptr @BMW_state_add(ptr noundef %0) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %24, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !114
  %25 = getelementptr inbounds %struct.BMwEdgeringWalker, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !111
  %27 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !72
  %29 = getelementptr inbounds %struct.BMFace, ptr %28, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !85
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !75
  store ptr %34, ptr %25, align 8, !tbaa !111
  br label %35

35:                                               ; preds = %32, %23
  %36 = load ptr, ptr %12, align 8, !tbaa !45
  tail call void @BLI_gset_clear(ptr noundef %36, ptr noundef null) #4
  %37 = load ptr, ptr %12, align 8, !tbaa !45
  %38 = load ptr, ptr %25, align 8, !tbaa !111
  %39 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !88
  tail call void @BLI_gset_insert(ptr noundef %37, ptr noundef %40) #4
  br label %41

41:                                               ; preds = %35, %10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @bmw_EdgeringWalker_step(ptr noundef %0) #0 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #4
  %3 = getelementptr inbounds i8, ptr %2, i64 24
  %4 = load ptr, ptr %3, align 1
  %5 = getelementptr inbounds i8, ptr %2, i64 32
  %6 = load ptr, ptr %5, align 1
  tail call void @BMW_state_remove(ptr noundef %0) #4
  %7 = icmp eq ptr %4, null
  br i1 %7, label %200, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !88
  %11 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 14
  %12 = load i32, ptr %11, align 8, !tbaa !49
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.BMHeader, ptr %10, i64 0, i32 3
  %17 = load i8, ptr %16, align 1, !tbaa !50
  %18 = and i8 %17, 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %200

20:                                               ; preds = %15, %8
  %21 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 12
  %22 = load i16, ptr %21, align 2, !tbaa !51
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !52
  %27 = getelementptr inbounds %struct.BMEdge, ptr %10, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !53
  %29 = getelementptr inbounds %struct.BMesh, ptr %26, i64 0, i32 22
  %30 = load i32, ptr %29, align 8, !tbaa !56
  %31 = sext i32 %30 to i64
  %32 = getelementptr %struct.BMFlagLayer, ptr %28, i64 %31
  %33 = getelementptr %struct.BMFlagLayer, ptr %32, i64 -1
  %34 = load i16, ptr %33, align 2, !tbaa !59
  %35 = and i16 %34, %22
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %200, label %37

37:                                               ; preds = %24, %20
  %38 = getelementptr inbounds %struct.BMEdge, ptr %10, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !71
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.BMLoop, ptr %39, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !75
  %44 = icmp eq ptr %43, %39
  %45 = zext i1 %44 to i8
  br label %46

46:                                               ; preds = %37, %41
  %47 = phi i8 [ 0, %37 ], [ %45, %41 ]
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  br i1 %40, label %200, label %50

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.BMLoop, ptr %39, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !75
  %53 = icmp eq ptr %52, %39
  br i1 %53, label %200, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.BMLoop, ptr %52, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !75
  %57 = icmp eq ptr %56, %39
  br i1 %57, label %58, label %200

58:                                               ; preds = %54, %46
  %59 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !75
  %61 = getelementptr inbounds %struct.BMLoop, ptr %60, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !87
  %63 = getelementptr inbounds %struct.BMLoop, ptr %62, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !87
  %65 = getelementptr inbounds %struct.BMLoop, ptr %64, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !72
  %67 = getelementptr inbounds %struct.BMFace, ptr %66, i64 0, i32 3
  %68 = load i32, ptr %67, align 8, !tbaa !85
  %69 = icmp eq i32 %68, 4
  br i1 %69, label %70, label %135

70:                                               ; preds = %58
  %71 = getelementptr inbounds %struct.BMLoop, ptr %64, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !88
  br i1 %14, label %78, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.BMHeader, ptr %72, i64 0, i32 3
  %75 = load i8, ptr %74, align 1, !tbaa !50
  %76 = and i8 %75, 2
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %135

78:                                               ; preds = %73, %70
  %79 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 12
  %80 = load i16, ptr %79, align 2, !tbaa !51
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %95, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  %84 = load ptr, ptr %83, align 8, !tbaa !52
  %85 = getelementptr inbounds %struct.BMEdge, ptr %72, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !53
  %87 = getelementptr inbounds %struct.BMesh, ptr %84, i64 0, i32 22
  %88 = load i32, ptr %87, align 8, !tbaa !56
  %89 = sext i32 %88 to i64
  %90 = getelementptr %struct.BMFlagLayer, ptr %86, i64 %89
  %91 = getelementptr %struct.BMFlagLayer, ptr %90, i64 -1
  %92 = load i16, ptr %91, align 2, !tbaa !59
  %93 = and i16 %92, %80
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %135, label %95

95:                                               ; preds = %82, %78
  %96 = getelementptr inbounds %struct.BMEdge, ptr %72, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !71
  %98 = icmp eq ptr %97, null
  br i1 %98, label %135, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.BMLoop, ptr %97, i64 0, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !75
  %102 = icmp eq ptr %101, %97
  br i1 %102, label %112, label %103

103:                                              ; preds = %99
  br i1 %98, label %135, label %104

104:                                              ; preds = %103
  %105 = getelementptr inbounds %struct.BMLoop, ptr %97, i64 0, i32 4
  %106 = load ptr, ptr %105, align 8, !tbaa !75
  %107 = icmp eq ptr %106, %97
  br i1 %107, label %135, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.BMLoop, ptr %106, i64 0, i32 4
  %110 = load ptr, ptr %109, align 8, !tbaa !75
  %111 = icmp eq ptr %110, %97
  br i1 %111, label %112, label %135

112:                                              ; preds = %108, %99
  br i1 %14, label %118, label %113

113:                                              ; preds = %112
  %114 = getelementptr inbounds %struct.BMHeader, ptr %66, i64 0, i32 3
  %115 = load i8, ptr %114, align 1, !tbaa !50
  %116 = and i8 %115, 2
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %113, %112
  %119 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 13
  %120 = load i16, ptr %119, align 4, !tbaa !103
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %140, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  %124 = load ptr, ptr %123, align 8, !tbaa !52
  %125 = getelementptr inbounds %struct.BMFace, ptr %66, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !104
  %127 = getelementptr inbounds %struct.BMesh, ptr %124, i64 0, i32 22
  %128 = load i32, ptr %127, align 8, !tbaa !56
  %129 = sext i32 %128 to i64
  %130 = getelementptr %struct.BMFlagLayer, ptr %126, i64 %129
  %131 = getelementptr %struct.BMFlagLayer, ptr %130, i64 -1
  %132 = load i16, ptr %131, align 2, !tbaa !59
  %133 = and i16 %132, %120
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %95, %104, %103, %122, %113, %82, %73, %108, %58
  %136 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 6
  %137 = load ptr, ptr %136, align 8, !tbaa !87
  %138 = getelementptr inbounds %struct.BMLoop, ptr %137, i64 0, i32 6
  %139 = load ptr, ptr %138, align 8, !tbaa !87
  br label %140

140:                                              ; preds = %118, %122, %135
  %141 = phi ptr [ %139, %135 ], [ %64, %122 ], [ %64, %118 ]
  %142 = getelementptr inbounds %struct.BMLoop, ptr %141, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !72
  %144 = getelementptr inbounds %struct.BMFace, ptr %143, i64 0, i32 3
  %145 = load i32, ptr %144, align 8, !tbaa !85
  %146 = icmp eq i32 %145, 4
  br i1 %146, label %147, label %200

147:                                              ; preds = %140
  %148 = getelementptr inbounds %struct.BMLoop, ptr %141, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !88
  br i1 %14, label %155, label %150

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.BMHeader, ptr %149, i64 0, i32 3
  %152 = load i8, ptr %151, align 1, !tbaa !50
  %153 = and i8 %152, 2
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %200

155:                                              ; preds = %150, %147
  %156 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 12
  %157 = load i16, ptr %156, align 2, !tbaa !51
  %158 = icmp eq i16 %157, 0
  br i1 %158, label %172, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  %161 = load ptr, ptr %160, align 8, !tbaa !52
  %162 = getelementptr inbounds %struct.BMEdge, ptr %149, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !53
  %164 = getelementptr inbounds %struct.BMesh, ptr %161, i64 0, i32 22
  %165 = load i32, ptr %164, align 8, !tbaa !56
  %166 = sext i32 %165 to i64
  %167 = getelementptr %struct.BMFlagLayer, ptr %163, i64 %166
  %168 = getelementptr %struct.BMFlagLayer, ptr %167, i64 -1
  %169 = load i16, ptr %168, align 2, !tbaa !59
  %170 = and i16 %169, %157
  %171 = icmp eq i16 %170, 0
  br i1 %171, label %200, label %172

172:                                              ; preds = %159, %155
  %173 = getelementptr inbounds %struct.BMEdge, ptr %149, i64 0, i32 4
  %174 = load ptr, ptr %173, align 8, !tbaa !71
  %175 = icmp eq ptr %174, null
  br i1 %175, label %200, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.BMLoop, ptr %174, i64 0, i32 4
  %178 = load ptr, ptr %177, align 8, !tbaa !75
  %179 = icmp eq ptr %178, %174
  br i1 %179, label %189, label %180

180:                                              ; preds = %176
  br i1 %175, label %200, label %181

181:                                              ; preds = %180
  %182 = getelementptr inbounds %struct.BMLoop, ptr %174, i64 0, i32 4
  %183 = load ptr, ptr %182, align 8, !tbaa !75
  %184 = icmp eq ptr %183, %174
  br i1 %184, label %200, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.BMLoop, ptr %183, i64 0, i32 4
  %187 = load ptr, ptr %186, align 8, !tbaa !75
  %188 = icmp eq ptr %187, %174
  br i1 %188, label %189, label %200

189:                                              ; preds = %185, %176
  %190 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %191 = load ptr, ptr %190, align 8, !tbaa !45
  %192 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %191, ptr noundef %149) #4
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %189
  %195 = tail call ptr @BMW_state_add(ptr noundef %0) #4
  %196 = getelementptr inbounds %struct.BMwEdgeringWalker, ptr %195, i64 0, i32 1
  store ptr %141, ptr %196, align 8, !tbaa !111
  %197 = getelementptr inbounds %struct.BMwEdgeringWalker, ptr %195, i64 0, i32 2
  store ptr null, ptr %197, align 8, !tbaa !113
  %198 = load ptr, ptr %190, align 8, !tbaa !45
  %199 = load ptr, ptr %148, align 8, !tbaa !88
  tail call void @BLI_gset_insert(ptr noundef %198, ptr noundef %199) #4
  br label %200

200:                                              ; preds = %50, %49, %172, %181, %180, %159, %150, %24, %15, %140, %185, %189, %194, %54, %1
  %201 = phi ptr [ %6, %1 ], [ %10, %54 ], [ %10, %194 ], [ %10, %189 ], [ %10, %185 ], [ %10, %140 ], [ %10, %15 ], [ %10, %24 ], [ %10, %150 ], [ %10, %159 ], [ %10, %180 ], [ %10, %181 ], [ %10, %172 ], [ %10, %49 ], [ %10, %50 ]
  ret ptr %201
}

; Function Attrs: nounwind uwtable
define internal ptr @bmw_EdgeringWalker_yield(ptr noundef %0) #0 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.BMwEdgeringWalker, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !111
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %struct.BMwEdgeringWalker, ptr %2, i64 0, i32 2
  %9 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 2
  %10 = select i1 %7, ptr %8, ptr %9
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  br label %12

12:                                               ; preds = %4, %1
  %13 = phi ptr [ null, %1 ], [ %11, %4 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal void @bmw_EdgeboundaryWalker_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %4, ptr noundef %1) #4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = tail call ptr @BMW_state_add(ptr noundef %0) #4
  %9 = getelementptr inbounds %struct.BMwEdgeboundaryWalker, ptr %8, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !116
  %10 = load ptr, ptr %3, align 8, !tbaa !45
  tail call void @BLI_gset_insert(ptr noundef %10, ptr noundef %1) #4
  br label %11

11:                                               ; preds = %2, %7
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @bmw_EdgeboundaryWalker_step(ptr noundef %0) #0 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #4
  %4 = tail call ptr @BMW_current_state(ptr noundef %0) #4
  %5 = getelementptr inbounds i8, ptr %4, i64 24
  %6 = load ptr, ptr %5, align 1
  tail call void @BMW_state_remove(ptr noundef %0) #4
  %7 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !49
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.BMHeader, ptr %6, i64 0, i32 3
  %13 = load i8, ptr %12, align 1, !tbaa !50
  %14 = and i8 %13, 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %107

16:                                               ; preds = %11, %1
  %17 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 12
  %18 = load i16, ptr %17, align 2, !tbaa !51
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !53
  %25 = getelementptr inbounds %struct.BMesh, ptr %22, i64 0, i32 22
  %26 = load i32, ptr %25, align 8, !tbaa !56
  %27 = sext i32 %26 to i64
  %28 = getelementptr %struct.BMFlagLayer, ptr %24, i64 %27
  %29 = getelementptr %struct.BMFlagLayer, ptr %28, i64 -1
  %30 = load i16, ptr %29, align 2, !tbaa !59
  %31 = and i16 %30, %18
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %107, label %33

33:                                               ; preds = %20, %16
  %34 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 7, ptr %34, align 4, !tbaa !40
  %35 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__vert_of_edge_begin, ptr %35, align 8, !tbaa !42
  %36 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__vert_of_edge_step, ptr %36, align 8, !tbaa !43
  store ptr %6, ptr %3, align 8, !tbaa !44
  call void @bmiter__vert_of_edge_begin(ptr noundef nonnull %3) #4
  %37 = load ptr, ptr %36, align 8, !tbaa !43
  %38 = call ptr %37(ptr noundef nonnull %3) #4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %107, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  %42 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  %43 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  %44 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %45 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 12
  %46 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  br label %47

47:                                               ; preds = %40, %103
  %48 = phi ptr [ %38, %40 ], [ %105, %103 ]
  store i8 4, ptr %41, align 4, !tbaa !40
  store ptr @bmiter__edge_of_vert_begin, ptr %42, align 8, !tbaa !42
  store ptr @bmiter__edge_of_vert_step, ptr %43, align 8, !tbaa !43
  store ptr %48, ptr %2, align 8, !tbaa !44
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %2) #4
  %49 = load ptr, ptr %43, align 8, !tbaa !43
  %50 = call ptr %49(ptr noundef nonnull %2) #4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %103, label %52

52:                                               ; preds = %47, %99
  %53 = phi ptr [ %101, %99 ], [ %50, %47 ]
  %54 = icmp eq ptr %6, %53
  br i1 %54, label %99, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.BMEdge, ptr %53, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !71
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.BMLoop, ptr %57, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !75
  %62 = icmp eq ptr %61, %57
  %63 = zext i1 %62 to i8
  br label %64

64:                                               ; preds = %55, %59
  %65 = phi i8 [ 0, %55 ], [ %63, %59 ]
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %99, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %44, align 8, !tbaa !45
  %69 = call zeroext i8 @BLI_gset_haskey(ptr noundef %68, ptr noundef nonnull %53) #4
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %99

71:                                               ; preds = %67
  %72 = load i32, ptr %7, align 8, !tbaa !49
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.BMHeader, ptr %53, i64 0, i32 3
  %77 = load i8, ptr %76, align 1, !tbaa !50
  %78 = and i8 %77, 2
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %75, %71
  %81 = load i16, ptr %45, align 2, !tbaa !51
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr %46, align 8, !tbaa !52
  %85 = getelementptr inbounds %struct.BMEdge, ptr %53, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !53
  %87 = getelementptr inbounds %struct.BMesh, ptr %84, i64 0, i32 22
  %88 = load i32, ptr %87, align 8, !tbaa !56
  %89 = sext i32 %88 to i64
  %90 = getelementptr %struct.BMFlagLayer, ptr %86, i64 %89
  %91 = getelementptr %struct.BMFlagLayer, ptr %90, i64 -1
  %92 = load i16, ptr %91, align 2, !tbaa !59
  %93 = and i16 %92, %81
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %83, %80
  %96 = call ptr @BMW_state_add(ptr noundef %0) #4
  %97 = load ptr, ptr %44, align 8, !tbaa !45
  call void @BLI_gset_insert(ptr noundef %97, ptr noundef nonnull %53) #4
  %98 = getelementptr inbounds %struct.BMwEdgeboundaryWalker, ptr %96, i64 0, i32 1
  store ptr %53, ptr %98, align 8, !tbaa !116
  br label %99

99:                                               ; preds = %83, %75, %52, %64, %95, %67
  %100 = load ptr, ptr %43, align 8, !tbaa !43
  %101 = call ptr %100(ptr noundef nonnull %2) #4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %52, !llvm.loop !118

103:                                              ; preds = %99, %47
  %104 = load ptr, ptr %36, align 8, !tbaa !43
  %105 = call ptr %104(ptr noundef nonnull %3) #4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %47, !llvm.loop !119

107:                                              ; preds = %103, %33, %20, %11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #4
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define internal ptr @bmw_EdgeboundaryWalker_yield(ptr noundef %0) #0 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.BMwEdgeboundaryWalker, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal void @bmw_UVEdgeWalker_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %4, ptr noundef %1) #4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = tail call ptr @BMW_state_add(ptr noundef %0) #4
  %9 = getelementptr inbounds %struct.BMwUVEdgeWalker, ptr %8, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !120
  %10 = load ptr, ptr %3, align 8, !tbaa !45
  tail call void @BLI_gset_insert(ptr noundef %10, ptr noundef %1) #4
  br label %11

11:                                               ; preds = %2, %7
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @bmw_UVEdgeWalker_step(ptr noundef %0) #0 {
  %2 = alloca %struct.BMIter, align 8
  %3 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 26
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !123
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %6, i64 %9
  %11 = load i32, ptr %10, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #4
  %12 = tail call ptr @BMW_current_state(ptr noundef %0) #4
  %13 = getelementptr inbounds i8, ptr %12, i64 24
  %14 = load ptr, ptr %13, align 1
  tail call void @BMW_state_remove(ptr noundef %0) #4
  %15 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !87
  %17 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !88
  %19 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 14
  %20 = load i32, ptr %19, align 8, !tbaa !49
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.BMHeader, ptr %18, i64 0, i32 3
  %25 = load i8, ptr %24, align 1, !tbaa !50
  %26 = and i8 %25, 2
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %141

28:                                               ; preds = %23, %1
  %29 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 12
  %30 = load i16, ptr %29, align 2, !tbaa !51
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %3, align 8, !tbaa !52
  %34 = getelementptr inbounds %struct.BMEdge, ptr %18, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !53
  %36 = getelementptr inbounds %struct.BMesh, ptr %33, i64 0, i32 22
  %37 = load i32, ptr %36, align 8, !tbaa !56
  %38 = sext i32 %37 to i64
  %39 = getelementptr %struct.BMFlagLayer, ptr %35, i64 %38
  %40 = getelementptr %struct.BMFlagLayer, ptr %39, i64 -1
  %41 = load i16, ptr %40, align 2, !tbaa !59
  %42 = and i16 %41, %30
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %141, label %44

44:                                               ; preds = %32, %28
  %45 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  %46 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  %47 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  %48 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %49 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 12
  br label %50

50:                                               ; preds = %44, %138
  %51 = phi i32 [ 0, %44 ], [ %139, %138 ]
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, ptr %14, ptr %16
  %54 = getelementptr inbounds %struct.BMLoop, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !98
  store i8 6, ptr %45, align 4, !tbaa !40
  store ptr @bmiter__loop_of_vert_begin, ptr %46, align 8, !tbaa !42
  store ptr @bmiter__loop_of_vert_step, ptr %47, align 8, !tbaa !43
  store ptr %55, ptr %2, align 8, !tbaa !44
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %2) #4
  %56 = load ptr, ptr %47, align 8, !tbaa !43
  %57 = call ptr %56(ptr noundef nonnull %2) #4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %138, label %59

59:                                               ; preds = %50, %134
  %60 = phi ptr [ %136, %134 ], [ %57, %50 ]
  %61 = load ptr, ptr %3, align 8, !tbaa !52
  %62 = getelementptr inbounds %struct.BMesh, ptr %61, i64 0, i32 26
  %63 = load ptr, ptr %53, align 8, !tbaa !126
  %64 = load i32, ptr %7, align 4, !tbaa !123
  %65 = call ptr @CustomData_bmesh_get_layer_n(ptr noundef nonnull %62, ptr noundef %63, i32 noundef %64) #4
  %66 = getelementptr inbounds %struct.BMLoop, ptr %60, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !88
  %68 = call i32 @BM_edge_face_count(ptr noundef %67) #4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %134

70:                                               ; preds = %59, %130
  %71 = phi i32 [ %132, %130 ], [ 0, %59 ]
  %72 = phi ptr [ %131, %130 ], [ %60, %59 ]
  %73 = load ptr, ptr %48, align 8, !tbaa !45
  %74 = call zeroext i8 @BLI_gset_haskey(ptr noundef %73, ptr noundef %72) #4
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %130

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.BMLoop, ptr %72, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !88
  %79 = load i32, ptr %19, align 8, !tbaa !49
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.BMHeader, ptr %78, i64 0, i32 3
  %84 = load i8, ptr %83, align 1, !tbaa !50
  %85 = and i8 %84, 2
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %82, %76
  %88 = load i16, ptr %49, align 2, !tbaa !51
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %107, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr %3, align 8, !tbaa !52
  %92 = getelementptr inbounds %struct.BMEdge, ptr %78, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !53
  %94 = getelementptr inbounds %struct.BMesh, ptr %91, i64 0, i32 22
  %95 = load i32, ptr %94, align 8, !tbaa !56
  %96 = sext i32 %95 to i64
  %97 = getelementptr %struct.BMFlagLayer, ptr %93, i64 %96
  %98 = getelementptr %struct.BMFlagLayer, ptr %97, i64 -1
  %99 = load i16, ptr %98, align 2, !tbaa !59
  %100 = and i16 %99, %88
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %90, %82
  %103 = getelementptr inbounds %struct.BMLoop, ptr %72, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !98
  %105 = load ptr, ptr %54, align 8, !tbaa !98
  %106 = icmp eq ptr %104, %105
  br i1 %106, label %107, label %130

107:                                              ; preds = %87, %90, %102
  %108 = getelementptr inbounds %struct.BMLoop, ptr %72, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !98
  %110 = load ptr, ptr %54, align 8, !tbaa !98
  %111 = icmp eq ptr %109, %110
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.BMLoop, ptr %72, i64 0, i32 6
  %114 = load ptr, ptr %113, align 8, !tbaa !87
  br label %115

115:                                              ; preds = %107, %112
  %116 = phi ptr [ %114, %112 ], [ %72, %107 ]
  %117 = load ptr, ptr %3, align 8, !tbaa !52
  %118 = getelementptr inbounds %struct.BMesh, ptr %117, i64 0, i32 26
  %119 = load ptr, ptr %116, align 8, !tbaa !126
  %120 = load i32, ptr %7, align 4, !tbaa !123
  %121 = call ptr @CustomData_bmesh_get_layer_n(ptr noundef nonnull %118, ptr noundef %119, i32 noundef %120) #4
  %122 = call zeroext i8 @CustomData_data_equals(i32 noundef %11, ptr noundef %65, ptr noundef %121) #4
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %115
  %125 = call ptr @BMW_state_add(ptr noundef %0) #4
  %126 = load ptr, ptr %48, align 8, !tbaa !45
  call void @BLI_gset_insert(ptr noundef %126, ptr noundef %72) #4
  %127 = getelementptr inbounds %struct.BMwUVEdgeWalker, ptr %125, i64 0, i32 1
  store ptr %72, ptr %127, align 8, !tbaa !120
  %128 = getelementptr inbounds %struct.BMLoop, ptr %72, i64 0, i32 4
  %129 = load ptr, ptr %128, align 8, !tbaa !75
  br label %130

130:                                              ; preds = %115, %102, %70, %124
  %131 = phi ptr [ %72, %70 ], [ %129, %124 ], [ %72, %115 ], [ %72, %102 ]
  %132 = add nuw nsw i32 %71, 1
  %133 = icmp eq i32 %132, %68
  br i1 %133, label %134, label %70, !llvm.loop !127

134:                                              ; preds = %130, %59
  %135 = load ptr, ptr %47, align 8, !tbaa !43
  %136 = call ptr %135(ptr noundef nonnull %2) #4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %59, !llvm.loop !128

138:                                              ; preds = %134, %50
  %139 = add nuw nsw i32 %51, 1
  %140 = icmp eq i32 %51, 0
  br i1 %140, label %50, label %141, !llvm.loop !129

141:                                              ; preds = %138, %32, %23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #4
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define internal ptr @bmw_UVEdgeWalker_yield(ptr noundef %0) #0 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.BMwUVEdgeWalker, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !120
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

declare ptr @CustomData_bmesh_get_layer_n(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BM_edge_face_count(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_data_equals(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @bmw_IslandboundWalker_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @BMW_state_add(ptr noundef %0) #4
  %4 = getelementptr inbounds %struct.BMwIslandboundWalker, ptr %3, i64 0, i32 3
  store ptr %1, ptr %4, align 8, !tbaa !130
  %5 = getelementptr inbounds %struct.BMwIslandboundWalker, ptr %3, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !132
  %6 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !98
  %8 = getelementptr inbounds %struct.BMwIslandboundWalker, ptr %3, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !133
  %9 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  tail call void @BLI_gset_insert(ptr noundef %10, ptr noundef %1) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @bmw_IslandboundWalker_step(ptr noundef %0) #0 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #4
  %3 = getelementptr inbounds i8, ptr %2, i64 24
  %4 = load ptr, ptr %3, align 1
  %5 = getelementptr inbounds i8, ptr %2, i64 32
  %6 = load ptr, ptr %5, align 1
  %7 = getelementptr inbounds i8, ptr %2, i64 40
  %8 = load ptr, ptr %7, align 1
  %9 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !88
  %11 = getelementptr inbounds %struct.BMEdge, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !77
  %13 = icmp eq ptr %12, %6
  %14 = getelementptr inbounds %struct.BMEdge, ptr %10, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !78
  %16 = icmp eq ptr %15, %6
  %17 = select i1 %16, ptr %12, ptr null
  %18 = select i1 %13, ptr %15, ptr %17
  %19 = tail call zeroext i8 @BM_vert_is_manifold(ptr noundef %18) #4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  tail call void @BMW_reset(ptr noundef %0) #4
  %22 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  tail call void @BMO_error_raise(ptr noundef %23, ptr noundef null, i32 noundef 4, ptr noundef nonnull @.str) #4
  br label %82

24:                                               ; preds = %1
  tail call void @BMW_state_remove(ptr noundef %0) #4
  %25 = tail call ptr @BM_loop_other_edge_loop(ptr noundef %8, ptr noundef %18) #4
  %26 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !75
  %28 = icmp eq ptr %25, %27
  br i1 %28, label %68, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 14
  %31 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 13
  %32 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  br label %33

33:                                               ; preds = %29, %60
  %34 = phi ptr [ %27, %29 ], [ %63, %60 ]
  %35 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !72
  %37 = load i32, ptr %30, align 8, !tbaa !49
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.BMHeader, ptr %36, i64 0, i32 3
  %42 = load i8, ptr %41, align 1, !tbaa !50
  %43 = and i8 %42, 2
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %40, %33
  %46 = load i16, ptr %31, align 4, !tbaa !103
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %32, align 8, !tbaa !52
  %50 = getelementptr inbounds %struct.BMFace, ptr %36, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !104
  %52 = getelementptr inbounds %struct.BMesh, ptr %49, i64 0, i32 22
  %53 = load i32, ptr %52, align 8, !tbaa !56
  %54 = sext i32 %53 to i64
  %55 = getelementptr %struct.BMFlagLayer, ptr %51, i64 %54
  %56 = getelementptr %struct.BMFlagLayer, ptr %55, i64 -1
  %57 = load i16, ptr %56, align 2, !tbaa !59
  %58 = and i16 %57, %46
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %48, %45
  %61 = tail call ptr @BM_loop_other_edge_loop(ptr noundef %34, ptr noundef %18) #4
  %62 = getelementptr inbounds %struct.BMLoop, ptr %61, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !75
  %64 = icmp eq ptr %61, %63
  br i1 %64, label %68, label %33

65:                                               ; preds = %48, %40
  %66 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !75
  br label %68

68:                                               ; preds = %60, %24, %65
  %69 = phi ptr [ %67, %65 ], [ %25, %24 ], [ %61, %60 ]
  %70 = icmp eq ptr %69, %8
  br i1 %70, label %82, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %73 = load ptr, ptr %72, align 8, !tbaa !45
  %74 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %73, ptr noundef %69) #4
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load ptr, ptr %72, align 8, !tbaa !45
  tail call void @BLI_gset_insert(ptr noundef %77, ptr noundef %69) #4
  %78 = tail call ptr @BMW_state_add(ptr noundef %0) #4
  %79 = getelementptr inbounds %struct.BMwIslandboundWalker, ptr %78, i64 0, i32 1
  store ptr %4, ptr %79, align 8, !tbaa !132
  %80 = getelementptr inbounds %struct.BMwIslandboundWalker, ptr %78, i64 0, i32 3
  store ptr %69, ptr %80, align 8, !tbaa !130
  %81 = getelementptr inbounds %struct.BMwIslandboundWalker, ptr %78, i64 0, i32 2
  store ptr %18, ptr %81, align 8, !tbaa !133
  br label %82

82:                                               ; preds = %71, %68, %76, %21
  %83 = phi ptr [ %8, %76 ], [ null, %21 ], [ null, %68 ], [ %8, %71 ]
  ret ptr %83
}

; Function Attrs: nounwind uwtable
define internal ptr @bmw_IslandboundWalker_yield(ptr noundef %0) #0 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #4
  %3 = getelementptr inbounds %struct.BMwIslandboundWalker, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !130
  ret ptr %4
}

declare zeroext i8 @BM_vert_is_manifold(ptr noundef) local_unnamed_addr #2

declare void @BMW_reset(ptr noundef) local_unnamed_addr #2

declare void @BMO_error_raise(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @bmw_IslandWalker_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 14
  %4 = load i32, ptr %3, align 8, !tbaa !49
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 3
  %9 = load i8, ptr %8, align 1, !tbaa !50
  %10 = and i8 %9, 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %7, %2
  %13 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 13
  %14 = load i16, ptr %13, align 4, !tbaa !103
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  %19 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !104
  %21 = getelementptr inbounds %struct.BMesh, ptr %18, i64 0, i32 22
  %22 = load i32, ptr %21, align 8, !tbaa !56
  %23 = sext i32 %22 to i64
  %24 = getelementptr %struct.BMFlagLayer, ptr %20, i64 %23
  %25 = getelementptr %struct.BMFlagLayer, ptr %24, i64 -1
  %26 = load i16, ptr %25, align 2, !tbaa !59
  %27 = and i16 %26, %14
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %16, %12
  %30 = tail call ptr @BMW_state_add(ptr noundef %0) #4
  %31 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %32 = load ptr, ptr %31, align 8, !tbaa !45
  tail call void @BLI_gset_insert(ptr noundef %32, ptr noundef %1) #4
  %33 = getelementptr inbounds %struct.BMwIslandWalker, ptr %30, i64 0, i32 1
  store ptr %1, ptr %33, align 8, !tbaa !134
  br label %34

34:                                               ; preds = %16, %7, %29
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @bmw_IslandWalker_step(ptr noundef %0) #0 {
  %2 = alloca %struct.BMwIslandWalker, align 8
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #4
  %5 = tail call ptr @BMW_current_state(ptr noundef %0) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(32) %5, i64 32, i1 false)
  tail call void @BMW_state_remove(ptr noundef %0) #4
  %6 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  %7 = getelementptr inbounds %struct.BMwIslandWalker, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !134
  %9 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 11, ptr %9, align 4, !tbaa !40
  %10 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %10, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %11, align 8, !tbaa !43
  store ptr %8, ptr %4, align 8, !tbaa !44
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #4
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = call ptr %12(ptr noundef nonnull %4) #4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %103, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 14
  %17 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 12
  %18 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  %19 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %20 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %21 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 13
  %22 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %23 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  br label %24

24:                                               ; preds = %15, %98
  %25 = phi ptr [ %13, %15 ], [ %101, %98 ]
  %26 = phi ptr [ %2, %15 ], [ %99, %98 ]
  %27 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !88
  %29 = load i32, ptr %16, align 8, !tbaa !49
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.BMHeader, ptr %28, i64 0, i32 3
  %34 = load i8, ptr %33, align 1, !tbaa !50
  %35 = and i8 %34, 2
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %98

37:                                               ; preds = %32, %24
  %38 = load i16, ptr %17, align 2, !tbaa !51
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %6, align 8, !tbaa !52
  %42 = getelementptr inbounds %struct.BMEdge, ptr %28, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !53
  %44 = getelementptr inbounds %struct.BMesh, ptr %41, i64 0, i32 22
  %45 = load i32, ptr %44, align 8, !tbaa !56
  %46 = sext i32 %45 to i64
  %47 = getelementptr %struct.BMFlagLayer, ptr %43, i64 %46
  %48 = getelementptr %struct.BMFlagLayer, ptr %47, i64 -1
  %49 = load i16, ptr %48, align 2, !tbaa !59
  %50 = and i16 %49, %38
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %98, label %52

52:                                               ; preds = %40, %37
  store i8 8, ptr %18, align 4, !tbaa !40
  store ptr @bmiter__face_of_edge_begin, ptr %19, align 8, !tbaa !42
  store ptr @bmiter__face_of_edge_step, ptr %20, align 8, !tbaa !43
  store ptr %28, ptr %3, align 8, !tbaa !44
  call void @bmiter__face_of_edge_begin(ptr noundef nonnull %3) #4
  %53 = load ptr, ptr %20, align 8, !tbaa !43
  %54 = call ptr %53(ptr noundef nonnull %3) #4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %98, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.BMwIslandWalker, ptr %26, i64 0, i32 1
  br label %58

58:                                               ; preds = %56, %94
  %59 = phi ptr [ %54, %56 ], [ %96, %94 ]
  %60 = load i32, ptr %16, align 8, !tbaa !49
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.BMHeader, ptr %59, i64 0, i32 3
  %65 = load i8, ptr %64, align 1, !tbaa !50
  %66 = and i8 %65, 2
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %94

68:                                               ; preds = %63, %58
  %69 = load i16, ptr %21, align 4, !tbaa !103
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %6, align 8, !tbaa !52
  %73 = getelementptr inbounds %struct.BMFace, ptr %59, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !104
  %75 = getelementptr inbounds %struct.BMesh, ptr %72, i64 0, i32 22
  %76 = load i32, ptr %75, align 8, !tbaa !56
  %77 = sext i32 %76 to i64
  %78 = getelementptr %struct.BMFlagLayer, ptr %74, i64 %77
  %79 = getelementptr %struct.BMFlagLayer, ptr %78, i64 -1
  %80 = load i16, ptr %79, align 2, !tbaa !59
  %81 = and i16 %80, %69
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %71, %68
  %84 = load ptr, ptr %57, align 8, !tbaa !134
  %85 = icmp eq ptr %59, %84
  br i1 %85, label %94, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %22, align 8, !tbaa !45
  %88 = call zeroext i8 @BLI_gset_haskey(ptr noundef %87, ptr noundef nonnull %59) #4
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = call ptr @BMW_state_add(ptr noundef %0) #4
  %92 = getelementptr inbounds %struct.BMwIslandWalker, ptr %91, i64 0, i32 1
  store ptr %59, ptr %92, align 8, !tbaa !134
  %93 = load ptr, ptr %23, align 8, !tbaa !45
  call void @BLI_gset_insert(ptr noundef %93, ptr noundef nonnull %59) #4
  br label %98

94:                                               ; preds = %71, %63, %86, %83
  %95 = load ptr, ptr %20, align 8, !tbaa !43
  %96 = call ptr %95(ptr noundef nonnull %3) #4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %58, !llvm.loop !136

98:                                               ; preds = %94, %52, %40, %32, %90
  %99 = phi ptr [ %91, %90 ], [ %26, %32 ], [ %26, %40 ], [ %26, %52 ], [ %26, %94 ]
  %100 = load ptr, ptr %11, align 8, !tbaa !43
  %101 = call ptr %100(ptr noundef nonnull %4) #4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %24, !llvm.loop !137

103:                                              ; preds = %98, %1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #4
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal ptr @bmw_IslandWalker_yield(ptr noundef %0) #0 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #4
  %3 = getelementptr inbounds %struct.BMwIslandWalker, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !134
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define internal void @bmw_ConnectedVertexWalker_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %4, ptr noundef %1) #4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %38

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 14
  %9 = load i32, ptr %8, align 8, !tbaa !49
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 3
  %14 = load i8, ptr %13, align 1, !tbaa !50
  %15 = and i8 %14, 2
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %12, %7
  %18 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 11
  %19 = load i16, ptr %18, align 8, !tbaa !138
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  %24 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !139
  %26 = getelementptr inbounds %struct.BMesh, ptr %23, i64 0, i32 22
  %27 = load i32, ptr %26, align 8, !tbaa !56
  %28 = sext i32 %27 to i64
  %29 = getelementptr %struct.BMFlagLayer, ptr %25, i64 %28
  %30 = getelementptr %struct.BMFlagLayer, ptr %29, i64 -1
  %31 = load i16, ptr %30, align 2, !tbaa !59
  %32 = and i16 %31, %19
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %21, %17
  %35 = tail call ptr @BMW_state_add(ptr noundef %0) #4
  %36 = getelementptr inbounds %struct.BMwConnectedVertexWalker, ptr %35, i64 0, i32 1
  store ptr %1, ptr %36, align 8, !tbaa !141
  %37 = load ptr, ptr %3, align 8, !tbaa !45
  tail call void @BLI_gset_insert(ptr noundef %37, ptr noundef %1) #4
  br label %38

38:                                               ; preds = %2, %12, %21, %34
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @bmw_ConnectedVertexWalker_step(ptr noundef %0) #0 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #4
  %3 = tail call ptr @BMW_current_state(ptr noundef %0) #4
  %4 = getelementptr inbounds i8, ptr %3, i64 24
  %5 = load ptr, ptr %4, align 1
  tail call void @BMW_state_remove(ptr noundef %0) #4
  %6 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  store i8 4, ptr %6, align 4, !tbaa !40
  %7 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %7, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %8, align 8, !tbaa !43
  store ptr %5, ptr %2, align 8, !tbaa !44
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %2) #4
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = call ptr %9(ptr noundef nonnull %2) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %66, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %14 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 14
  %15 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 11
  %16 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  br label %17

17:                                               ; preds = %12, %62
  %18 = phi ptr [ %10, %12 ], [ %64, %62 ]
  %19 = getelementptr inbounds %struct.BMEdge, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !77
  %21 = icmp eq ptr %20, %5
  %22 = getelementptr inbounds %struct.BMEdge, ptr %18, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !78
  %24 = icmp eq ptr %23, %5
  %25 = select i1 %24, ptr %20, ptr null
  %26 = select i1 %21, ptr %23, ptr %25
  %27 = load ptr, ptr %13, align 8, !tbaa !45
  %28 = call zeroext i8 @BLI_gset_haskey(ptr noundef %27, ptr noundef %26) #4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %17
  %31 = load ptr, ptr %13, align 8, !tbaa !45
  %32 = call zeroext i8 @BLI_gset_haskey(ptr noundef %31, ptr noundef %26) #4
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %30
  %35 = load i32, ptr %14, align 8, !tbaa !49
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.BMHeader, ptr %26, i64 0, i32 3
  %40 = load i8, ptr %39, align 1, !tbaa !50
  %41 = and i8 %40, 2
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %38, %34
  %44 = load i16, ptr %15, align 8, !tbaa !138
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %16, align 8, !tbaa !52
  %48 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !139
  %50 = getelementptr inbounds %struct.BMesh, ptr %47, i64 0, i32 22
  %51 = load i32, ptr %50, align 8, !tbaa !56
  %52 = sext i32 %51 to i64
  %53 = getelementptr %struct.BMFlagLayer, ptr %49, i64 %52
  %54 = getelementptr %struct.BMFlagLayer, ptr %53, i64 -1
  %55 = load i16, ptr %54, align 2, !tbaa !59
  %56 = and i16 %55, %44
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %46, %43
  %59 = call ptr @BMW_state_add(ptr noundef %0) #4
  %60 = getelementptr inbounds %struct.BMwConnectedVertexWalker, ptr %59, i64 0, i32 1
  store ptr %26, ptr %60, align 8, !tbaa !141
  %61 = load ptr, ptr %13, align 8, !tbaa !45
  call void @BLI_gset_insert(ptr noundef %61, ptr noundef %26) #4
  br label %62

62:                                               ; preds = %58, %46, %38, %30, %17
  %63 = load ptr, ptr %8, align 8, !tbaa !43
  %64 = call ptr %63(ptr noundef nonnull %2) #4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %17, !llvm.loop !143

66:                                               ; preds = %62, %1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #4
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define internal ptr @bmw_ConnectedVertexWalker_yield(ptr noundef %0) #0 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #4
  %3 = getelementptr inbounds %struct.BMwConnectedVertexWalker, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !141
  ret ptr %4
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

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
!34 = !{!35, !37, i64 12}
!35 = !{!"BMHeader", !36, i64 0, !39, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!41, !37, i64 60}
!41 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !39, i64 56, !37, i64 60}
!42 = !{!41, !36, i64 40}
!43 = !{!41, !36, i64 48}
!44 = !{!37, !37, i64 0}
!45 = !{!46, !36, i64 96}
!46 = !{!"BMWalker", !37, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !36, i64 48, !36, i64 56, !47, i64 64, !48, i64 80, !48, i64 82, !48, i64 84, !39, i64 88, !36, i64 96, !36, i64 104, !39, i64 112}
!47 = !{!"ListBase", !36, i64 0, !36, i64 8}
!48 = !{!"short", !37, i64 0}
!49 = !{!46, !39, i64 88}
!50 = !{!35, !37, i64 13}
!51 = !{!46, !48, i64 82}
!52 = !{!46, !36, i64 48}
!53 = !{!54, !36, i64 16}
!54 = !{!"BMEdge", !35, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !55, i64 48, !55, i64 64}
!55 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!56 = !{!57, !39, i64 128}
!57 = !{!"BMesh", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !39, i64 88, !39, i64 92, !39, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 136, !58, i64 144, !58, i64 344, !58, i64 544, !58, i64 744, !48, i64 944, !39, i64 948, !39, i64 952, !39, i64 956, !47, i64 960, !36, i64 976, !47, i64 984, !36, i64 1000}
!58 = !{!"CustomData", !36, i64 0, !37, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !36, i64 184, !36, i64 192}
!59 = !{!60, !48, i64 0}
!60 = !{!"BMFlagLayer", !48, i64 0}
!61 = !{!62, !36, i64 24}
!62 = !{!"BMwShellWalker", !63, i64 0, !36, i64 24}
!63 = !{!"BMwGenericWalker", !64, i64 0, !39, i64 16}
!64 = !{!"Link", !36, i64 0, !36, i64 8}
!65 = distinct !{!65, !66, !67}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!36, !36, i64 0}
!69 = distinct !{!69, !66, !67}
!70 = distinct !{!70, !66, !67}
!71 = !{!54, !36, i64 40}
!72 = !{!73, !36, i64 32}
!73 = !{!"BMLoop", !35, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!74 = distinct !{!74, !66, !67}
!75 = !{!73, !36, i64 40}
!76 = distinct !{!76, !66, !67}
!77 = !{!54, !36, i64 24}
!78 = !{!54, !36, i64 32}
!79 = !{!80, !36, i64 32}
!80 = !{!"BMwLoopWalker", !63, i64 0, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !37, i64 64, !37, i64 65}
!81 = !{!80, !36, i64 24}
!82 = !{!80, !36, i64 48}
!83 = !{!80, !36, i64 40}
!84 = !{!80, !37, i64 64}
!85 = !{!86, !39, i64 32}
!86 = !{!"BMFace", !35, i64 0, !36, i64 16, !36, i64 24, !39, i64 32, !37, i64 36, !48, i64 48}
!87 = !{!73, !36, i64 56}
!88 = !{!73, !36, i64 24}
!89 = !{!73, !36, i64 64}
!90 = !{!80, !37, i64 65}
!91 = distinct !{!91, !66, !67}
!92 = !{!80, !36, i64 56}
!93 = !{i64 0, i64 8, !68, i64 8, i64 8, !68, i64 16, i64 4, !94, i64 24, i64 8, !68, i64 32, i64 8, !68, i64 40, i64 8, !68, i64 48, i64 8, !68, i64 56, i64 8, !68, i64 64, i64 1, !44, i64 65, i64 1, !44}
!94 = !{!39, !39, i64 0}
!95 = !{i64 0, i64 8, !68, i64 8, i64 8, !68, i64 16, i64 8, !68, i64 24, i64 8, !68, i64 32, i64 8, !68, i64 40, i64 1, !44, i64 41, i64 1, !44}
!96 = !{i64 0, i64 8, !68, i64 8, i64 8, !68, i64 16, i64 8, !68, i64 24, i64 8, !68, i64 32, i64 1, !44, i64 33, i64 1, !44}
!97 = distinct !{!97, !66, !67}
!98 = !{!73, !36, i64 16}
!99 = distinct !{!99, !66, !67}
!100 = distinct !{!100, !66, !67}
!101 = distinct !{!101, !66, !67}
!102 = distinct !{!102, !67}
!103 = !{!46, !48, i64 84}
!104 = !{!86, !36, i64 16}
!105 = !{!46, !36, i64 104}
!106 = !{!107, !36, i64 24}
!107 = !{!"BMwFaceLoopWalker", !63, i64 0, !36, i64 24, !37, i64 32}
!108 = !{!107, !37, i64 32}
!109 = !{i64 0, i64 8, !68, i64 8, i64 8, !68, i64 16, i64 4, !94, i64 24, i64 8, !68, i64 32, i64 1, !44}
!110 = distinct !{!110, !66, !67}
!111 = !{!112, !36, i64 24}
!112 = !{!"BMwEdgeringWalker", !63, i64 0, !36, i64 24, !36, i64 32}
!113 = !{!112, !36, i64 32}
!114 = !{i64 0, i64 8, !68, i64 8, i64 8, !68, i64 16, i64 4, !94, i64 24, i64 8, !68, i64 32, i64 8, !68}
!115 = distinct !{!115, !66, !67}
!116 = !{!117, !36, i64 24}
!117 = !{!"BMwEdgeboundaryWalker", !63, i64 0, !36, i64 24}
!118 = distinct !{!118, !66, !67}
!119 = distinct !{!119, !66, !67}
!120 = !{!121, !36, i64 24}
!121 = !{!"BMwUVEdgeWalker", !63, i64 0, !36, i64 24}
!122 = !{!57, !36, i64 544}
!123 = !{!46, !39, i64 44}
!124 = !{!125, !39, i64 0}
!125 = !{!"CustomDataLayer", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !37, i64 32, !36, i64 96}
!126 = !{!73, !36, i64 0}
!127 = distinct !{!127, !66, !67}
!128 = distinct !{!128, !66, !67}
!129 = distinct !{!129, !66, !67}
!130 = !{!131, !36, i64 40}
!131 = !{!"BMwIslandboundWalker", !63, i64 0, !36, i64 24, !36, i64 32, !36, i64 40}
!132 = !{!131, !36, i64 24}
!133 = !{!131, !36, i64 32}
!134 = !{!135, !36, i64 24}
!135 = !{!"BMwIslandWalker", !63, i64 0, !36, i64 24}
!136 = distinct !{!136, !66, !67}
!137 = distinct !{!137, !66, !67}
!138 = !{!46, !48, i64 80}
!139 = !{!140, !36, i64 16}
!140 = !{!"BMVert", !35, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!141 = !{!142, !36, i64 24}
!142 = !{!"BMwConnectedVertexWalker", !63, i64 0, !36, i64 24}
!143 = distinct !{!143, !66, !67}
