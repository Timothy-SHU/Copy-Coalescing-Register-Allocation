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
%struct.BMwShellWalker = type { %struct.BMwGenericWalker, ptr }
%struct.BMwGenericWalker = type { %struct.Link, i32 }
%struct.Link = type { ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMFlagLayer = type { i16 }
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
%struct.BMwConnectedVertexWalker = type { %struct.BMwGenericWalker, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }

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
@switch.table.BM_iter_init = private unnamed_addr constant [8 x ptr] [ptr @bmiter__edge_of_vert_begin, ptr @bmiter__face_of_vert_begin, ptr @bmiter__loop_of_vert_begin, ptr @bmiter__vert_of_edge_begin, ptr @bmiter__face_of_edge_begin, ptr @bmiter__vert_of_face_begin, ptr @bmiter__edge_of_face_begin, ptr @bmiter__loop_of_face_begin], align 8
@switch.table.BM_iter_init.1 = private unnamed_addr constant [8 x ptr] [ptr @bmiter__edge_of_vert_step, ptr @bmiter__face_of_vert_step, ptr @bmiter__loop_of_vert_step, ptr @bmiter__vert_of_edge_step, ptr @bmiter__face_of_edge_step, ptr @bmiter__vert_of_face_step, ptr @bmiter__edge_of_face_step, ptr @bmiter__loop_of_face_step], align 8

; Function Attrs: noinline nounwind optsize uwtable
define internal void @bmw_VertShellWalker_begin(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %4 = icmp eq ptr %1, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 2
  %7 = load i8, ptr %6, align 4, !tbaa !35
  switch i8 %7, label %16 [
    i8 1, label %8
    i8 2, label %15
  ]

8:                                                ; preds = %5
  %9 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, i8 noundef zeroext 4, ptr noundef nonnull %1) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %8, %11
  %12 = phi ptr [ %13, %11 ], [ %9, %8 ]
  call fastcc void @bmw_VertShellWalker_visitEdge(ptr noundef %0, ptr noundef nonnull %12) #7
  %13 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %11, !llvm.loop !41

15:                                               ; preds = %5
  tail call fastcc void @bmw_VertShellWalker_visitEdge(ptr noundef %0, ptr noundef nonnull %1) #7
  br label %16

16:                                               ; preds = %11, %8, %15, %5, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @bmw_VertShellWalker_step(ptr noundef %0) #0 !PGOFuncName !43 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #6
  %3 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  %4 = getelementptr inbounds i8, ptr %3, i64 24
  %5 = load ptr, ptr %4, align 1
  tail call void @BMW_state_remove(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.BMEdge, ptr %5, i64 0, i32 3
  %7 = getelementptr inbounds %struct.BMEdge, ptr %5, i64 0, i32 2
  br label %8

8:                                                ; preds = %1, %18
  %9 = phi i1 [ true, %1 ], [ false, %18 ]
  %10 = select i1 %9, ptr %7, ptr %6
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, i8 noundef zeroext 4, ptr noundef %11) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %8, %14
  %15 = phi ptr [ %16, %14 ], [ %12, %8 ]
  call fastcc void @bmw_VertShellWalker_visitEdge(ptr noundef %0, ptr noundef nonnull %15) #7
  %16 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %14, !llvm.loop !45

18:                                               ; preds = %14, %8
  br i1 %9, label %8, label %19, !llvm.loop !46

19:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #6
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @bmw_VertShellWalker_yield(ptr noundef %0) #0 !PGOFuncName !47 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.BMwShellWalker, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !52 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) #7
  %4 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #7
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bmw_VertShellWalker_visitEdge(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !53 {
  %3 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %4, ptr noundef %1) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @bmw_mask_check_edge(ptr noundef nonnull %0, ptr noundef %1) #7, !range !58
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @BMW_state_add(ptr noundef nonnull %0) #8
  %12 = getelementptr inbounds %struct.BMwShellWalker, ptr %11, i64 0, i32 1
  store ptr %1, ptr %12, align 8, !tbaa !48
  %13 = load ptr, ptr %3, align 8, !tbaa !54
  tail call void @BLI_gset_insert(ptr noundef %13, ptr noundef %1) #8
  br label %14

14:                                               ; preds = %7, %2, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !59 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = tail call ptr %3(ptr noundef %0) #8
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !62 {
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %1, ptr %4, align 4, !tbaa !63
  %5 = add nsw i8 %1, -4
  %6 = sext i8 %5 to i64
  %7 = getelementptr inbounds [8 x ptr], ptr @switch.table.BM_iter_init, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8
  %9 = sext i8 %5 to i64
  %10 = getelementptr inbounds [8 x ptr], ptr @switch.table.BM_iter_init.1, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %13 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr %8, ptr %13, align 8, !tbaa !64
  store ptr %11, ptr %12, align 8, !tbaa !60
  store ptr %2, ptr %0, align 8, !tbaa !65
  tail call void %8(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare zeroext i8 @BLI_gset_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmw_mask_check_edge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !66 {
  %3 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 14
  %4 = load i32, ptr %3, align 8, !tbaa !67
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %1) #7
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 12
  %12 = load i16, ptr %11, align 2, !tbaa !68
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !69
  %17 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  %19 = tail call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %16, ptr noundef %18, i16 noundef signext %12) #7
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14, %10
  br label %22

22:                                               ; preds = %14, %7, %21
  %23 = phi i8 [ 1, %21 ], [ 0, %7 ], [ 0, %14 ]
  ret i8 %23
}

; Function Attrs: optsize
declare ptr @BMW_state_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_gset_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !73 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !74
  %4 = and i8 %3, 2
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc signext i16 @_bmo_elem_flag_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) unnamed_addr #4 !PGOFuncName !75 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !76
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !79
  %10 = and i16 %9, %2
  ret i16 %10
}

; Function Attrs: optsize
declare ptr @BMW_current_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @BMW_state_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @bmw_FaceShellWalker_begin(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !81 {
  tail call fastcc void @bmw_FaceShellWalker_visitEdge(ptr noundef %0, ptr noundef %1) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @bmw_FaceShellWalker_step(ptr noundef %0) #0 !PGOFuncName !82 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #6
  %3 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  %4 = getelementptr inbounds i8, ptr %3, i64 24
  %5 = load ptr, ptr %4, align 1
  tail call void @BMW_state_remove(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.BMEdge, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %1, %22
  %10 = phi ptr [ %24, %22 ], [ %7, %1 ]
  %11 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !84
  %13 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, i8 noundef zeroext 10, ptr noundef %12) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %9, %19
  %16 = phi ptr [ %20, %19 ], [ %13, %9 ]
  %17 = icmp eq ptr %16, %5
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  call fastcc void @bmw_FaceShellWalker_visitEdge(ptr noundef %0, ptr noundef nonnull %16) #7
  br label %19

19:                                               ; preds = %15, %18
  %20 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %15, !llvm.loop !86

22:                                               ; preds = %19, %9
  %23 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !87
  %25 = icmp eq ptr %24, %7
  br i1 %25, label %26, label %9, !llvm.loop !88

26:                                               ; preds = %22, %1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #6
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @bmw_FaceShellWalker_yield(ptr noundef %0) #0 !PGOFuncName !89 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.BMwShellWalker, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bmw_FaceShellWalker_visitEdge(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !90 {
  %3 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %4, ptr noundef %1) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @bmw_mask_check_edge(ptr noundef nonnull %0, ptr noundef %1) #7, !range !58
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @BMW_state_add(ptr noundef nonnull %0) #8
  %12 = getelementptr inbounds %struct.BMwShellWalker, ptr %11, i64 0, i32 1
  store ptr %1, ptr %12, align 8, !tbaa !48
  %13 = load ptr, ptr %3, align 8, !tbaa !54
  tail call void @BLI_gset_insert(ptr noundef %13, ptr noundef %1) #8
  br label %14

14:                                               ; preds = %7, %2, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @bmw_LoopWalker_begin(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !91 {
  %3 = alloca %struct.BMwGenericWalker, align 8
  %4 = alloca { ptr, ptr, ptr, ptr, i8, i8 }, align 8
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4)
  %6 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !92
  %8 = tail call i32 @BM_vert_edge_count_nonwire(ptr noundef %7) #8
  %9 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !93
  %11 = tail call i32 @BM_vert_edge_count_nonwire(ptr noundef %10) #8
  %12 = load ptr, ptr %6, align 8, !tbaa !92
  %13 = tail call ptr @BMW_state_add(ptr noundef %0) #8
  %14 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  tail call void @BLI_gset_insert(ptr noundef %15, ptr noundef %1) #8
  %16 = getelementptr inbounds %struct.BMwLoopWalker, ptr %13, i64 0, i32 2
  store ptr %1, ptr %16, align 8, !tbaa !94
  %17 = getelementptr inbounds %struct.BMwLoopWalker, ptr %13, i64 0, i32 1
  store ptr %1, ptr %17, align 8, !tbaa !96
  %18 = getelementptr inbounds %struct.BMwLoopWalker, ptr %13, i64 0, i32 4
  store ptr %12, ptr %18, align 8, !tbaa !97
  %19 = getelementptr inbounds %struct.BMwLoopWalker, ptr %13, i64 0, i32 3
  store ptr %12, ptr %19, align 8, !tbaa !98
  %20 = tail call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef %1) #7, !range !58
  %21 = getelementptr inbounds %struct.BMwLoopWalker, ptr %13, i64 0, i32 6
  store i8 %20, ptr %21, align 8, !tbaa !99
  %22 = icmp eq i8 %20, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = tail call fastcc zeroext i8 @bm_edge_is_single(ptr noundef nonnull %1) #7, !range !58
  %25 = getelementptr inbounds %struct.BMwLoopWalker, ptr %13, i64 0, i32 7
  store i8 %24, ptr %25, align 1, !tbaa !100
  br label %57

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.BMwLoopWalker, ptr %13, i64 0, i32 7
  store i8 0, ptr %27, align 1, !tbaa !100
  %28 = icmp eq i32 %8, 3
  %29 = icmp eq i32 %11, 3
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  %32 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, i8 noundef zeroext 8, ptr noundef nonnull %1) #7
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %31, %45
  %35 = phi ptr [ %46, %45 ], [ null, %31 ]
  %36 = phi ptr [ %47, %45 ], [ %32, %31 ]
  %37 = icmp eq ptr %35, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.BMFace, ptr %35, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !101
  %41 = getelementptr inbounds %struct.BMFace, ptr %36, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !101
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %34
  br label %45

45:                                               ; preds = %38, %44
  %46 = phi ptr [ %36, %44 ], [ %35, %38 ]
  %47 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #7
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %34, !llvm.loop !103

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.BMFace, ptr %46, i64 0, i32 3
  %51 = load i32, ptr %50, align 8, !tbaa !101
  %52 = icmp sgt i32 %51, 4
  %53 = select i1 %52, ptr %46, ptr null
  br label %54

54:                                               ; preds = %31, %49
  %55 = phi ptr [ %53, %49 ], [ null, %31 ]
  %56 = getelementptr inbounds %struct.BMwLoopWalker, ptr %13, i64 0, i32 5
  store ptr %55, ptr %56, align 8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  br label %59

57:                                               ; preds = %23, %26
  %58 = getelementptr inbounds %struct.BMwLoopWalker, ptr %13, i64 0, i32 5
  store ptr null, ptr %58, align 8, !tbaa !104
  br label %59

59:                                               ; preds = %57, %54
  %60 = call ptr @BMW_current_state(ptr noundef %0) #8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %70, label %62

62:                                               ; preds = %59, %62
  %63 = phi ptr [ %68, %62 ], [ %60, %59 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %63, i64 24, i1 false), !tbaa.struct !105
  %64 = getelementptr inbounds i8, ptr %63, i64 24
  %65 = load ptr, ptr %64, align 8, !tbaa.struct !107
  %66 = getelementptr inbounds i8, ptr %63, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %66, i64 40, i1 false), !tbaa.struct !108
  %67 = call ptr @BMW_walk(ptr noundef %0) #8
  %68 = call ptr @BMW_current_state(ptr noundef %0) #8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %62, !llvm.loop !109

70:                                               ; preds = %62, %59
  %71 = phi ptr [ undef, %59 ], [ %65, %62 ]
  %72 = call ptr @BMW_state_add(ptr noundef %0) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %72, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !105
  %73 = getelementptr inbounds i8, ptr %72, i64 24
  store ptr %71, ptr %73, align 8, !tbaa.struct !107
  %74 = getelementptr inbounds i8, ptr %72, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %74, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !108
  %75 = getelementptr inbounds %struct.BMwLoopWalker, ptr %72, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !98
  %77 = call fastcc ptr @BM_edge_other_vert(ptr noundef %71, ptr noundef %76) #7
  %78 = getelementptr inbounds %struct.BMwLoopWalker, ptr %72, i64 0, i32 4
  store ptr %77, ptr %78, align 8, !tbaa !97
  store ptr %77, ptr %75, align 8, !tbaa !98
  %79 = load ptr, ptr %14, align 8, !tbaa !54
  call void @BLI_gset_clear(ptr noundef %79, ptr noundef null) #8
  %80 = load ptr, ptr %14, align 8, !tbaa !54
  call void @BLI_gset_insert(ptr noundef %80, ptr noundef %71) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @bmw_LoopWalker_step(ptr noundef %0) #0 !PGOFuncName !110 {
  %2 = alloca %struct.BMIter, align 8
  %3 = tail call ptr @BMW_current_state(ptr noundef %0) #8
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
  tail call void @BMW_state_remove(ptr noundef %0) #8
  %14 = getelementptr inbounds %struct.BMEdge, ptr %5, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !83
  %16 = icmp eq ptr %9, null
  br i1 %16, label %44, label %17

17:                                               ; preds = %1
  %18 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %5, ptr noundef %7) #7
  %19 = tail call i32 @BM_vert_edge_count_nonwire(ptr noundef %18) #8
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %192

21:                                               ; preds = %17
  %22 = tail call ptr @BM_face_other_vert_loop(ptr noundef nonnull %9, ptr noundef %7, ptr noundef %18) #8
  %23 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !111
  %25 = tail call ptr @BM_edge_exists(ptr noundef %18, ptr noundef %24) #8
  %26 = tail call fastcc zeroext i8 @bmw_mask_check_edge(ptr noundef %0, ptr noundef %25) #7, !range !58
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %192, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  %31 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %30, ptr noundef %25) #8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %192

33:                                               ; preds = %28
  %34 = tail call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef %25) #7, !range !58
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %192

36:                                               ; preds = %33
  %37 = tail call ptr @BMW_state_add(ptr noundef nonnull %0) #8
  %38 = getelementptr inbounds %struct.BMwLoopWalker, ptr %37, i64 0, i32 1
  store ptr %25, ptr %38, align 8, !tbaa !96
  %39 = getelementptr inbounds %struct.BMwLoopWalker, ptr %37, i64 0, i32 3
  store ptr %18, ptr %39, align 8, !tbaa !98
  %40 = getelementptr inbounds %struct.BMwLoopWalker, ptr %37, i64 0, i32 6
  store i8 %11, ptr %40, align 8, !tbaa !99
  %41 = getelementptr inbounds %struct.BMwLoopWalker, ptr %37, i64 0, i32 7
  store i8 %13, ptr %41, align 1, !tbaa !100
  %42 = getelementptr inbounds %struct.BMwLoopWalker, ptr %37, i64 0, i32 5
  store ptr %9, ptr %42, align 8, !tbaa !104
  %43 = load ptr, ptr %29, align 8, !tbaa !54
  tail call void @BLI_gset_insert(ptr noundef %43, ptr noundef %25) #8
  br label %192

44:                                               ; preds = %1
  %45 = icmp eq ptr %15, null
  br i1 %45, label %46, label %81

46:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #6
  %47 = getelementptr inbounds %struct.BMEdge, ptr %5, i64 0, i32 3
  %48 = getelementptr inbounds %struct.BMEdge, ptr %5, i64 0, i32 2
  %49 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  br label %50

50:                                               ; preds = %46, %79
  %51 = phi i1 [ true, %46 ], [ false, %79 ]
  %52 = select i1 %51, ptr %48, ptr %47
  %53 = load ptr, ptr %52, align 8, !tbaa !44
  %54 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, i8 noundef zeroext 4, ptr noundef %53) #7
  %55 = icmp eq ptr %54, null
  br i1 %55, label %79, label %56

56:                                               ; preds = %50, %76
  %57 = phi ptr [ %77, %76 ], [ %54, %50 ]
  %58 = getelementptr inbounds %struct.BMEdge, ptr %57, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !83
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %56
  %62 = call fastcc zeroext i8 @bmw_mask_check_edge(ptr noundef %0, ptr noundef nonnull %57) #7, !range !58
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %49, align 8, !tbaa !54
  %66 = call zeroext i8 @BLI_gset_haskey(ptr noundef %65, ptr noundef nonnull %57) #8
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = call ptr @BMW_state_add(ptr noundef nonnull %0) #8
  %70 = getelementptr inbounds %struct.BMwLoopWalker, ptr %69, i64 0, i32 1
  store ptr %57, ptr %70, align 8, !tbaa !96
  %71 = getelementptr inbounds %struct.BMwLoopWalker, ptr %69, i64 0, i32 3
  store ptr %53, ptr %71, align 8, !tbaa !98
  %72 = getelementptr inbounds %struct.BMwLoopWalker, ptr %69, i64 0, i32 6
  store i8 %11, ptr %72, align 8, !tbaa !99
  %73 = getelementptr inbounds %struct.BMwLoopWalker, ptr %69, i64 0, i32 7
  store i8 %13, ptr %73, align 1, !tbaa !100
  %74 = getelementptr inbounds %struct.BMwLoopWalker, ptr %69, i64 0, i32 5
  store ptr null, ptr %74, align 8, !tbaa !104
  %75 = load ptr, ptr %49, align 8, !tbaa !54
  call void @BLI_gset_insert(ptr noundef %75, ptr noundef nonnull %57) #8
  br label %76

76:                                               ; preds = %56, %61, %64, %68
  %77 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #7
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %56, !llvm.loop !112

79:                                               ; preds = %76, %50
  br i1 %51, label %50, label %80, !llvm.loop !113

80:                                               ; preds = %79
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #6
  br label %192

81:                                               ; preds = %44
  switch i8 %11, label %192 [
    i8 0, label %82
    i8 1, label %124
  ]

82:                                               ; preds = %81
  %83 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %5, ptr noundef %7) #7
  %84 = tail call i32 @BM_vert_edge_count_nonwire(ptr noundef %83) #8
  switch i32 %84, label %192 [
    i32 4, label %85
    i32 2, label %85
  ]

85:                                               ; preds = %82, %82
  %86 = lshr i32 %84, 1
  br label %87

87:                                               ; preds = %95, %85
  %88 = phi ptr [ %15, %85 ], [ %97, %95 ]
  %89 = phi i32 [ 0, %85 ], [ %98, %95 ]
  %90 = tail call ptr @BM_loop_other_edge_loop(ptr noundef %88, ptr noundef %83) #8
  %91 = getelementptr inbounds %struct.BMLoop, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !114
  %93 = tail call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef %92) #7, !range !58
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %192, label %95

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.BMLoop, ptr %90, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !87
  %98 = add nuw nsw i32 %89, 1
  %99 = icmp eq i32 %98, %86
  br i1 %99, label %100, label %87, !llvm.loop !115

100:                                              ; preds = %95
  %101 = icmp eq ptr %97, null
  br i1 %101, label %192, label %102

102:                                              ; preds = %100
  %103 = load ptr, ptr %14, align 8, !tbaa !83
  %104 = icmp eq ptr %97, %103
  br i1 %104, label %192, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.BMLoop, ptr %97, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !114
  %108 = tail call fastcc zeroext i8 @bmw_mask_check_edge(ptr noundef %0, ptr noundef %107) #7, !range !58
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %192, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %112 = load ptr, ptr %111, align 8, !tbaa !54
  %113 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %112, ptr noundef %107) #8
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %192

115:                                              ; preds = %110
  %116 = tail call ptr @BMW_state_add(ptr noundef nonnull %0) #8
  %117 = load ptr, ptr %106, align 8, !tbaa !114
  %118 = getelementptr inbounds %struct.BMwLoopWalker, ptr %116, i64 0, i32 1
  store ptr %117, ptr %118, align 8, !tbaa !96
  %119 = getelementptr inbounds %struct.BMwLoopWalker, ptr %116, i64 0, i32 3
  store ptr %83, ptr %119, align 8, !tbaa !98
  %120 = getelementptr inbounds %struct.BMwLoopWalker, ptr %116, i64 0, i32 6
  store i8 0, ptr %120, align 8, !tbaa !99
  %121 = getelementptr inbounds %struct.BMwLoopWalker, ptr %116, i64 0, i32 7
  store i8 %13, ptr %121, align 1, !tbaa !100
  %122 = getelementptr inbounds %struct.BMwLoopWalker, ptr %116, i64 0, i32 5
  store ptr null, ptr %122, align 8, !tbaa !104
  %123 = load ptr, ptr %111, align 8, !tbaa !54
  tail call void @BLI_gset_insert(ptr noundef %123, ptr noundef %117) #8
  br label %192

124:                                              ; preds = %81
  %125 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %5, ptr noundef %7) #7
  %126 = tail call i32 @BM_vert_edge_count_nonwire(ptr noundef %125) #8
  %127 = icmp eq i8 %13, 0
  %128 = icmp sgt i32 %126, 2
  %129 = select i1 %127, i1 %128, i1 false
  br i1 %129, label %137, label %130

130:                                              ; preds = %124
  %131 = icmp eq i8 %13, 1
  %132 = icmp eq i32 %126, 2
  %133 = select i1 %131, i1 %132, i1 false
  br i1 %133, label %134, label %158

134:                                              ; preds = %130
  %135 = tail call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef nonnull %5) #7, !range !58
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %169, label %137

137:                                              ; preds = %124, %134
  %138 = tail call ptr @BM_loop_other_edge_loop(ptr noundef nonnull %15, ptr noundef %125) #8
  %139 = getelementptr inbounds %struct.BMLoop, ptr %138, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !114
  %141 = tail call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef %140) #7, !range !58
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %152, label %143

143:                                              ; preds = %137, %143
  %144 = phi ptr [ %147, %143 ], [ %138, %137 ]
  %145 = getelementptr inbounds %struct.BMLoop, ptr %144, i64 0, i32 4
  %146 = load ptr, ptr %145, align 8, !tbaa !87
  %147 = tail call ptr @BM_loop_other_edge_loop(ptr noundef %146, ptr noundef %125) #8
  %148 = getelementptr inbounds %struct.BMLoop, ptr %147, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !114
  %150 = tail call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef %149) #7, !range !58
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %143

152:                                              ; preds = %143, %137
  %153 = phi ptr [ %138, %137 ], [ %147, %143 ]
  %154 = phi ptr [ %140, %137 ], [ %149, %143 ]
  %155 = tail call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef %154) #7, !range !58
  %156 = icmp eq i8 %155, 0
  %157 = select i1 %156, ptr null, ptr %153
  br label %158

158:                                              ; preds = %152, %130
  %159 = phi ptr [ %15, %130 ], [ %157, %152 ]
  %160 = icmp ne ptr %159, null
  %161 = select i1 %127, i1 %160, i1 false
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.BMLoop, ptr %159, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !114
  %165 = tail call fastcc zeroext i8 @bm_edge_is_single(ptr noundef %164) #7, !range !58
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %169, label %192

167:                                              ; preds = %158
  %168 = icmp eq ptr %159, null
  br i1 %168, label %192, label %169

169:                                              ; preds = %162, %134, %167
  %170 = phi ptr [ %159, %167 ], [ %15, %134 ], [ %159, %162 ]
  %171 = load ptr, ptr %14, align 8, !tbaa !83
  %172 = icmp eq ptr %170, %171
  br i1 %172, label %192, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.BMLoop, ptr %170, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !114
  %176 = tail call fastcc zeroext i8 @bmw_mask_check_edge(ptr noundef %0, ptr noundef %175) #7, !range !58
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %192, label %178

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %180 = load ptr, ptr %179, align 8, !tbaa !54
  %181 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %180, ptr noundef %175) #8
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %178
  %184 = tail call ptr @BMW_state_add(ptr noundef nonnull %0) #8
  %185 = load ptr, ptr %174, align 8, !tbaa !114
  %186 = getelementptr inbounds %struct.BMwLoopWalker, ptr %184, i64 0, i32 1
  store ptr %185, ptr %186, align 8, !tbaa !96
  %187 = getelementptr inbounds %struct.BMwLoopWalker, ptr %184, i64 0, i32 3
  store ptr %125, ptr %187, align 8, !tbaa !98
  %188 = getelementptr inbounds %struct.BMwLoopWalker, ptr %184, i64 0, i32 6
  store i8 1, ptr %188, align 8, !tbaa !99
  %189 = getelementptr inbounds %struct.BMwLoopWalker, ptr %184, i64 0, i32 7
  store i8 %13, ptr %189, align 1, !tbaa !100
  %190 = getelementptr inbounds %struct.BMwLoopWalker, ptr %184, i64 0, i32 5
  store ptr null, ptr %190, align 8, !tbaa !104
  %191 = load ptr, ptr %179, align 8, !tbaa !54
  tail call void @BLI_gset_insert(ptr noundef %191, ptr noundef %185) #8
  br label %192

192:                                              ; preds = %87, %162, %82, %167, %183, %178, %173, %169, %81, %100, %115, %110, %105, %102, %17, %36, %33, %28, %21, %80
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @bmw_LoopWalker_yield(ptr noundef %0) #0 !PGOFuncName !116 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.BMwLoopWalker, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @BM_vert_edge_count_nonwire(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_boundary(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !117 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  %8 = icmp eq ptr %7, %3
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %5 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @bm_edge_is_single(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !118 {
  %2 = tail call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef %0) #7, !range !58
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %25, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !84
  %9 = getelementptr inbounds %struct.BMFace, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !101
  %11 = icmp sgt i32 %10, 4
  br i1 %11, label %12, label %25

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !119
  %15 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !114
  %17 = tail call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef %16) #7, !range !58
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !120
  %22 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !114
  %24 = tail call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef %23) #7, !range !58
  br label %25

25:                                               ; preds = %12, %19, %4, %1
  %26 = phi i8 [ 0, %4 ], [ 0, %1 ], [ 1, %12 ], [ %24, %19 ]
  ret i8 %26
}

; Function Attrs: optsize
declare ptr @BMW_walk(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 !PGOFuncName !121 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !92
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: optsize
declare void @BLI_gset_clear(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_other_vert_loop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_loop_other_edge_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_manifold(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !122 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !87
  %12 = icmp eq ptr %11, %3
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %9, %5, %1
  %15 = phi i8 [ 0, %5 ], [ 0, %1 ], [ %13, %9 ]
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @bmw_FaceLoopWalker_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !123 {
  %3 = alloca %struct.BMwFaceLoopWalker, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3)
  %4 = tail call fastcc zeroext i8 @bmw_FaceLoopWalker_edge_begins_loop(ptr noundef %0, ptr noundef %1) #7, !range !58
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %38, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @BMW_state_add(ptr noundef %0) #8
  %8 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = getelementptr inbounds %struct.BMwFaceLoopWalker, ptr %7, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !124
  %11 = getelementptr inbounds %struct.BMwFaceLoopWalker, ptr %7, i64 0, i32 2
  store i8 0, ptr %11, align 8, !tbaa !126
  %12 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !84
  tail call void @BLI_gset_insert(ptr noundef %13, ptr noundef %15) #8
  %16 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %6, %18
  %19 = phi ptr [ %21, %18 ], [ %16, %6 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %19, i64 40, i1 false), !tbaa.struct !127
  %20 = tail call ptr @BMW_walk(ptr noundef %0) #8
  %21 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %18, !llvm.loop !128

23:                                               ; preds = %18, %6
  %24 = tail call ptr @BMW_state_add(ptr noundef %0) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %24, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !127
  %25 = getelementptr inbounds %struct.BMwFaceLoopWalker, ptr %24, i64 0, i32 2
  store i8 0, ptr %25, align 8, !tbaa !126
  %26 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 16
  %27 = load ptr, ptr %26, align 8, !tbaa !129
  tail call void @BLI_gset_clear(ptr noundef %27, ptr noundef null) #8
  %28 = load ptr, ptr %26, align 8, !tbaa !129
  %29 = getelementptr inbounds %struct.BMwFaceLoopWalker, ptr %24, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !124
  %31 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !114
  tail call void @BLI_gset_insert(ptr noundef %28, ptr noundef %32) #8
  %33 = load ptr, ptr %12, align 8, !tbaa !54
  tail call void @BLI_gset_clear(ptr noundef %33, ptr noundef null) #8
  %34 = load ptr, ptr %12, align 8, !tbaa !54
  %35 = load ptr, ptr %29, align 8, !tbaa !124
  %36 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !84
  tail call void @BLI_gset_insert(ptr noundef %34, ptr noundef %37) #8
  br label %38

38:                                               ; preds = %2, %23
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @bmw_FaceLoopWalker_step(ptr noundef %0) #0 !PGOFuncName !130 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  %3 = getelementptr inbounds i8, ptr %2, i64 24
  %4 = load ptr, ptr %3, align 1
  %5 = getelementptr inbounds i8, ptr %2, i64 32
  %6 = load i8, ptr %5, align 1
  tail call void @BMW_state_remove(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !84
  %9 = icmp eq i8 %6, 0
  br i1 %9, label %10, label %57

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !87
  %13 = tail call fastcc zeroext i8 @bmw_FaceLoopWalker_include_face(ptr noundef %0, ptr noundef %12) #7, !range !58
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !119
  %18 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !119
  %20 = getelementptr inbounds %struct.BMLoop, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !114
  %22 = tail call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef %21) #7, !range !58
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.BMLoop, ptr %19, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !120
  %27 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !120
  br label %29

29:                                               ; preds = %24, %15
  %30 = phi ptr [ %19, %15 ], [ %28, %24 ]
  %31 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !87
  br label %33

33:                                               ; preds = %29, %10
  %34 = phi ptr [ %12, %10 ], [ %32, %29 ]
  %35 = tail call fastcc zeroext i8 @bmw_FaceLoopWalker_include_face(ptr noundef %0, ptr noundef %34) #7, !range !58
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %57, label %37

37:                                               ; preds = %33
  %38 = tail call ptr @BMW_state_add(ptr noundef %0) #8
  %39 = getelementptr inbounds %struct.BMwFaceLoopWalker, ptr %38, i64 0, i32 1
  store ptr %34, ptr %39, align 8, !tbaa !124
  %40 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !84
  %42 = getelementptr inbounds %struct.BMFace, ptr %41, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !101
  %44 = icmp ne i32 %43, 4
  %45 = select i1 %44, ptr %4, ptr %34
  store ptr %45, ptr %39, align 8
  %46 = zext i1 %44 to i8
  %47 = getelementptr inbounds %struct.BMwFaceLoopWalker, ptr %38, i64 0, i32 2
  store i8 %46, ptr %47, align 8
  %48 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 16
  %49 = load ptr, ptr %48, align 8, !tbaa !129
  %50 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !114
  %52 = tail call zeroext i8 @BLI_gset_add(ptr noundef %49, ptr noundef %51) #8
  %53 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %54 = load ptr, ptr %53, align 8, !tbaa !54
  %55 = load ptr, ptr %40, align 8, !tbaa !84
  %56 = tail call zeroext i8 @BLI_gset_add(ptr noundef %54, ptr noundef %55) #8
  br label %57

57:                                               ; preds = %33, %37, %1
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @bmw_FaceLoopWalker_yield(ptr noundef %0) #0 !PGOFuncName !131 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.BMwFaceLoopWalker, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  %7 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !84
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi ptr [ %8, %4 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @bmw_FaceLoopWalker_edge_begins_loop(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !132 {
  %3 = tail call fastcc zeroext i8 @BM_edge_is_wire(ptr noundef %1) #7, !range !58
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef %1) #7, !range !58
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !83
  %11 = tail call fastcc zeroext i8 @bmw_FaceLoopWalker_include_face(ptr noundef %0, ptr noundef %10) #7, !range !58
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8, %5
  %14 = tail call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef %1) #7, !range !58
  br label %15

15:                                               ; preds = %13, %8, %2
  %16 = phi i8 [ 0, %2 ], [ 0, %8 ], [ %14, %13 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_edge_is_wire(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !133 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bmw_FaceLoopWalker_include_face(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !134 {
  %3 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !84
  %5 = getelementptr inbounds %struct.BMFace, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !101
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = tail call fastcc zeroext i8 @bmw_mask_check_face(ptr noundef %0, ptr noundef nonnull %4) #7, !range !58
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %13, ptr noundef nonnull %4) #8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 16
  %18 = load ptr, ptr %17, align 8, !tbaa !129
  %19 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !114
  %21 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %18, ptr noundef %20) #8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16, %11
  br label %24

24:                                               ; preds = %16, %8, %2, %23
  %25 = phi i8 [ 1, %23 ], [ 0, %2 ], [ 0, %8 ], [ 0, %16 ]
  ret i8 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmw_mask_check_face(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !135 {
  %3 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 14
  %4 = load i32, ptr %3, align 8, !tbaa !67
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %1) #7
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 13
  %12 = load i16, ptr %11, align 4, !tbaa !136
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !69
  %17 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !137
  %19 = tail call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %16, ptr noundef %18, i16 noundef signext %12) #7
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14, %10
  br label %22

22:                                               ; preds = %14, %7, %21
  %23 = phi i8 [ 1, %21 ], [ 0, %7 ], [ 0, %14 ]
  ret i8 %23
}

; Function Attrs: optsize
declare zeroext i8 @BLI_gset_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @bmw_EdgeringWalker_begin(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !138 {
  %3 = alloca %struct.BMwEdgeringWalker, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3)
  %4 = tail call ptr @BMW_state_add(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = getelementptr inbounds %struct.BMwEdgeringWalker, ptr %4, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !139
  %8 = icmp eq ptr %6, null
  %9 = getelementptr inbounds %struct.BMwEdgeringWalker, ptr %4, i64 0, i32 2
  br i1 %8, label %10, label %11

10:                                               ; preds = %2
  store ptr %1, ptr %9, align 8, !tbaa !141
  br label %41

11:                                               ; preds = %2
  store ptr null, ptr %9, align 8, !tbaa !141
  %12 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !114
  tail call void @BLI_gset_insert(ptr noundef %13, ptr noundef %15) #8
  %16 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11, %18
  %19 = phi ptr [ %21, %18 ], [ %16, %11 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %19, i64 40, i1 false), !tbaa.struct !142
  %20 = tail call ptr @BMW_walk(ptr noundef %0) #8
  %21 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %18, !llvm.loop !143

23:                                               ; preds = %18, %11
  %24 = tail call ptr @BMW_state_add(ptr noundef %0) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %24, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !142
  %25 = getelementptr inbounds %struct.BMwEdgeringWalker, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !139
  %27 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !84
  %29 = getelementptr inbounds %struct.BMFace, ptr %28, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !101
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !87
  store ptr %34, ptr %25, align 8, !tbaa !139
  br label %35

35:                                               ; preds = %32, %23
  %36 = load ptr, ptr %12, align 8, !tbaa !54
  tail call void @BLI_gset_clear(ptr noundef %36, ptr noundef null) #8
  %37 = load ptr, ptr %12, align 8, !tbaa !54
  %38 = load ptr, ptr %25, align 8, !tbaa !139
  %39 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !114
  tail call void @BLI_gset_insert(ptr noundef %37, ptr noundef %40) #8
  br label %41

41:                                               ; preds = %35, %10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @bmw_EdgeringWalker_step(ptr noundef %0) #0 !PGOFuncName !144 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  %3 = getelementptr inbounds i8, ptr %2, i64 24
  %4 = load ptr, ptr %3, align 1
  %5 = getelementptr inbounds i8, ptr %2, i64 32
  %6 = load ptr, ptr %5, align 1
  tail call void @BMW_state_remove(ptr noundef %0) #8
  %7 = icmp eq ptr %4, null
  br i1 %7, label %78, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !114
  %11 = tail call fastcc zeroext i8 @bmw_mask_check_edge(ptr noundef %0, ptr noundef %10) #7, !range !58
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %78, label %13

13:                                               ; preds = %8
  %14 = tail call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef %10) #7, !range !58
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = tail call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef %10) #7, !range !58
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %78, label %19

19:                                               ; preds = %16, %13
  %20 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !87
  %22 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !119
  %24 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !119
  %26 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !84
  %28 = getelementptr inbounds %struct.BMFace, ptr %27, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !101
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %31, label %45

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !114
  %34 = tail call fastcc zeroext i8 @bmw_mask_check_edge(ptr noundef %0, ptr noundef %33) #7, !range !58
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %31
  %37 = tail call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef %33) #7, !range !58
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = tail call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef %33) #7, !range !58
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39, %36
  %43 = tail call fastcc zeroext i8 @bmw_mask_check_face(ptr noundef %0, ptr noundef nonnull %27) #7, !range !58
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %19, %31, %39, %42
  %46 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !119
  %48 = getelementptr inbounds %struct.BMLoop, ptr %47, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !119
  %50 = getelementptr inbounds %struct.BMLoop, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !84
  %52 = getelementptr inbounds %struct.BMFace, ptr %51, i64 0, i32 3
  %53 = load i32, ptr %52, align 8, !tbaa !101
  %54 = icmp eq i32 %53, 4
  br i1 %54, label %55, label %78

55:                                               ; preds = %42, %45
  %56 = phi ptr [ %49, %45 ], [ %25, %42 ]
  %57 = getelementptr inbounds %struct.BMLoop, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !114
  %59 = tail call fastcc zeroext i8 @bmw_mask_check_edge(ptr noundef %0, ptr noundef %58) #7, !range !58
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %78, label %61

61:                                               ; preds = %55
  %62 = tail call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef %58) #7, !range !58
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = tail call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef %58) #7, !range !58
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %64, %61
  %68 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %69 = load ptr, ptr %68, align 8, !tbaa !54
  %70 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %69, ptr noundef %58) #8
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = tail call ptr @BMW_state_add(ptr noundef nonnull %0) #8
  %74 = getelementptr inbounds %struct.BMwEdgeringWalker, ptr %73, i64 0, i32 1
  store ptr %56, ptr %74, align 8, !tbaa !139
  %75 = getelementptr inbounds %struct.BMwEdgeringWalker, ptr %73, i64 0, i32 2
  store ptr null, ptr %75, align 8, !tbaa !141
  %76 = load ptr, ptr %68, align 8, !tbaa !54
  %77 = load ptr, ptr %57, align 8, !tbaa !114
  tail call void @BLI_gset_insert(ptr noundef %76, ptr noundef %77) #8
  br label %78

78:                                               ; preds = %45, %55, %64, %67, %72, %8, %16, %1
  %79 = phi ptr [ %6, %1 ], [ %10, %16 ], [ %10, %8 ], [ %10, %72 ], [ %10, %67 ], [ %10, %64 ], [ %10, %55 ], [ %10, %45 ]
  ret ptr %79
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @bmw_EdgeringWalker_yield(ptr noundef %0) #0 !PGOFuncName !145 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.BMwEdgeringWalker, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !139
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %struct.BMwEdgeringWalker, ptr %2, i64 0, i32 2
  %9 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 2
  %10 = select i1 %7, ptr %8, ptr %9
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  br label %12

12:                                               ; preds = %4, %1
  %13 = phi ptr [ null, %1 ], [ %11, %4 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @bmw_EdgeboundaryWalker_begin(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !146 {
  %3 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %4, ptr noundef %1) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = tail call ptr @BMW_state_add(ptr noundef nonnull %0) #8
  %9 = getelementptr inbounds %struct.BMwEdgeboundaryWalker, ptr %8, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !147
  %10 = load ptr, ptr %3, align 8, !tbaa !54
  tail call void @BLI_gset_insert(ptr noundef %10, ptr noundef %1) #8
  br label %11

11:                                               ; preds = %2, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @bmw_EdgeboundaryWalker_step(ptr noundef %0) #0 !PGOFuncName !149 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %4 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  %5 = getelementptr inbounds i8, ptr %4, i64 24
  %6 = load ptr, ptr %5, align 1
  tail call void @BMW_state_remove(ptr noundef %0) #8
  %7 = tail call fastcc zeroext i8 @bmw_mask_check_edge(ptr noundef %0, ptr noundef %6) #7, !range !58
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %1
  %10 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, i8 noundef zeroext 7, ptr noundef %6) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %41, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  br label %14

14:                                               ; preds = %12, %38
  %15 = phi ptr [ %10, %12 ], [ %39, %38 ]
  %16 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, i8 noundef zeroext 4, ptr noundef nonnull %15) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %38, label %18

18:                                               ; preds = %14, %35
  %19 = phi ptr [ %36, %35 ], [ %16, %14 ]
  %20 = icmp eq ptr %6, %19
  br i1 %20, label %35, label %21

21:                                               ; preds = %18
  %22 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef nonnull %19) #7, !range !58
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %13, align 8, !tbaa !54
  %26 = call zeroext i8 @BLI_gset_haskey(ptr noundef %25, ptr noundef nonnull %19) #8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = call fastcc zeroext i8 @bmw_mask_check_edge(ptr noundef nonnull %0, ptr noundef nonnull %19) #7, !range !58
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = call ptr @BMW_state_add(ptr noundef nonnull %0) #8
  %33 = load ptr, ptr %13, align 8, !tbaa !54
  call void @BLI_gset_insert(ptr noundef %33, ptr noundef nonnull %19) #8
  %34 = getelementptr inbounds %struct.BMwEdgeboundaryWalker, ptr %32, i64 0, i32 1
  store ptr %19, ptr %34, align 8, !tbaa !147
  br label %35

35:                                               ; preds = %18, %21, %31, %28, %24
  %36 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #7
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %18, !llvm.loop !150

38:                                               ; preds = %35, %14
  %39 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #7
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %14, !llvm.loop !151

41:                                               ; preds = %38, %9, %1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #6
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @bmw_EdgeboundaryWalker_yield(ptr noundef %0) #0 !PGOFuncName !152 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.BMwEdgeboundaryWalker, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !147
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @bmw_UVEdgeWalker_begin(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !153 {
  %3 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %4, ptr noundef %1) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = tail call ptr @BMW_state_add(ptr noundef nonnull %0) #8
  %9 = getelementptr inbounds %struct.BMwUVEdgeWalker, ptr %8, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !154
  %10 = load ptr, ptr %3, align 8, !tbaa !54
  tail call void @BLI_gset_insert(ptr noundef %10, ptr noundef %1) #8
  br label %11

11:                                               ; preds = %2, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @bmw_UVEdgeWalker_step(ptr noundef %0) #0 !PGOFuncName !156 {
  %2 = alloca %struct.BMIter, align 8
  %3 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 26
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !158
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %6, i64 %9
  %11 = load i32, ptr %10, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #6
  %12 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  %13 = getelementptr inbounds i8, ptr %12, i64 24
  %14 = load ptr, ptr %13, align 1
  tail call void @BMW_state_remove(ptr noundef %0) #8
  %15 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !119
  %17 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !114
  %19 = tail call fastcc zeroext i8 @bmw_mask_check_edge(ptr noundef %0, ptr noundef %18) #7, !range !58
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %84, label %21

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  br label %23

23:                                               ; preds = %21, %83
  %24 = phi i1 [ true, %21 ], [ false, %83 ]
  %25 = select i1 %24, ptr %14, ptr %16
  %26 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !111
  %28 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, i8 noundef zeroext 6, ptr noundef %27) #7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %83, label %30

30:                                               ; preds = %23, %80
  %31 = phi ptr [ %81, %80 ], [ %28, %23 ]
  %32 = load ptr, ptr %3, align 8, !tbaa !69
  %33 = getelementptr inbounds %struct.BMesh, ptr %32, i64 0, i32 26
  %34 = load ptr, ptr %25, align 8, !tbaa !161
  %35 = load i32, ptr %7, align 4, !tbaa !158
  %36 = call ptr @CustomData_bmesh_get_layer_n(ptr noundef nonnull %33, ptr noundef %34, i32 noundef %35) #8
  %37 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !114
  %39 = call i32 @BM_edge_face_count(ptr noundef %38) #8
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %80

41:                                               ; preds = %30, %76
  %42 = phi i32 [ %78, %76 ], [ 0, %30 ]
  %43 = phi ptr [ %77, %76 ], [ %31, %30 ]
  %44 = load ptr, ptr %22, align 8, !tbaa !54
  %45 = call zeroext i8 @BLI_gset_haskey(ptr noundef %44, ptr noundef %43) #8
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %76

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.BMLoop, ptr %43, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !114
  %50 = call fastcc zeroext i8 @bmw_mask_check_edge(ptr noundef nonnull %0, ptr noundef %49) #7, !range !58
  %51 = icmp eq i8 %50, 0
  %52 = getelementptr inbounds %struct.BMLoop, ptr %43, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !111
  %54 = load ptr, ptr %26, align 8, !tbaa !111
  %55 = icmp eq ptr %53, %54
  br i1 %51, label %56, label %57

56:                                               ; preds = %47
  br i1 %55, label %61, label %76

57:                                               ; preds = %47
  br i1 %55, label %61, label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.BMLoop, ptr %43, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !119
  br label %61

61:                                               ; preds = %56, %57, %58
  %62 = phi ptr [ %60, %58 ], [ %43, %57 ], [ %43, %56 ]
  %63 = load ptr, ptr %3, align 8, !tbaa !69
  %64 = getelementptr inbounds %struct.BMesh, ptr %63, i64 0, i32 26
  %65 = load ptr, ptr %62, align 8, !tbaa !161
  %66 = load i32, ptr %7, align 4, !tbaa !158
  %67 = call ptr @CustomData_bmesh_get_layer_n(ptr noundef nonnull %64, ptr noundef %65, i32 noundef %66) #8
  %68 = call zeroext i8 @CustomData_data_equals(i32 noundef %11, ptr noundef %36, ptr noundef %67) #8
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %61
  %71 = call ptr @BMW_state_add(ptr noundef nonnull %0) #8
  %72 = load ptr, ptr %22, align 8, !tbaa !54
  call void @BLI_gset_insert(ptr noundef %72, ptr noundef nonnull %43) #8
  %73 = getelementptr inbounds %struct.BMwUVEdgeWalker, ptr %71, i64 0, i32 1
  store ptr %43, ptr %73, align 8, !tbaa !154
  %74 = getelementptr inbounds %struct.BMLoop, ptr %43, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !87
  br label %76

76:                                               ; preds = %61, %56, %41, %70
  %77 = phi ptr [ %43, %41 ], [ %75, %70 ], [ %43, %61 ], [ %43, %56 ]
  %78 = add nuw nsw i32 %42, 1
  %79 = icmp eq i32 %78, %39
  br i1 %79, label %80, label %41, !llvm.loop !162

80:                                               ; preds = %76, %30
  %81 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #7
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %30, !llvm.loop !163

83:                                               ; preds = %80, %23
  br i1 %24, label %23, label %84, !llvm.loop !164

84:                                               ; preds = %83, %1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #6
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @bmw_UVEdgeWalker_yield(ptr noundef %0) #0 !PGOFuncName !165 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.BMwUVEdgeWalker, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !154
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get_layer_n(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BM_edge_face_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CustomData_data_equals(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @bmw_IslandboundWalker_begin(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !166 {
  %3 = tail call ptr @BMW_state_add(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.BMwIslandboundWalker, ptr %3, i64 0, i32 3
  store ptr %1, ptr %4, align 8, !tbaa !167
  %5 = getelementptr inbounds %struct.BMwIslandboundWalker, ptr %3, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !169
  %6 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  %8 = getelementptr inbounds %struct.BMwIslandboundWalker, ptr %3, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !170
  %9 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  tail call void @BLI_gset_insert(ptr noundef %10, ptr noundef %1) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @bmw_IslandboundWalker_step(ptr noundef %0) #0 !PGOFuncName !171 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  %3 = getelementptr inbounds i8, ptr %2, i64 24
  %4 = load ptr, ptr %3, align 1
  %5 = getelementptr inbounds i8, ptr %2, i64 32
  %6 = load ptr, ptr %5, align 1
  %7 = getelementptr inbounds i8, ptr %2, i64 40
  %8 = load ptr, ptr %7, align 1
  %9 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !114
  %11 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef %10, ptr noundef %6) #7
  %12 = tail call zeroext i8 @BM_vert_is_manifold(ptr noundef %11) #8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  tail call void @BMW_reset(ptr noundef %0) #8
  %15 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !69
  tail call void @BMO_error_raise(ptr noundef %16, ptr noundef null, i32 noundef 4, ptr noundef nonnull @.str) #8
  br label %46

17:                                               ; preds = %1
  tail call void @BMW_state_remove(ptr noundef %0) #8
  br label %18

18:                                               ; preds = %24, %17
  %19 = phi ptr [ %8, %17 ], [ %22, %24 ]
  %20 = tail call ptr @BM_loop_other_edge_loop(ptr noundef nonnull %19, ptr noundef %11) #8
  %21 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !87
  %23 = icmp eq ptr %20, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !84
  %27 = tail call fastcc zeroext i8 @bmw_mask_check_face(ptr noundef %0, ptr noundef %26) #7, !range !58
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %18

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !87
  br label %32

32:                                               ; preds = %18, %29
  %33 = phi ptr [ %31, %29 ], [ %20, %18 ]
  %34 = icmp eq ptr %33, %8
  br i1 %34, label %46, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %37 = load ptr, ptr %36, align 8, !tbaa !54
  %38 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %37, ptr noundef %33) #8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load ptr, ptr %36, align 8, !tbaa !54
  tail call void @BLI_gset_insert(ptr noundef %41, ptr noundef %33) #8
  %42 = tail call ptr @BMW_state_add(ptr noundef nonnull %0) #8
  %43 = getelementptr inbounds %struct.BMwIslandboundWalker, ptr %42, i64 0, i32 1
  store ptr %4, ptr %43, align 8, !tbaa !169
  %44 = getelementptr inbounds %struct.BMwIslandboundWalker, ptr %42, i64 0, i32 3
  store ptr %33, ptr %44, align 8, !tbaa !167
  %45 = getelementptr inbounds %struct.BMwIslandboundWalker, ptr %42, i64 0, i32 2
  store ptr %11, ptr %45, align 8, !tbaa !170
  br label %46

46:                                               ; preds = %35, %32, %40, %14
  %47 = phi ptr [ %8, %40 ], [ null, %14 ], [ null, %32 ], [ %8, %35 ]
  ret ptr %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @bmw_IslandboundWalker_yield(ptr noundef %0) #0 !PGOFuncName !172 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.BMwIslandboundWalker, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !167
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @BM_vert_is_manifold(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMW_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_error_raise(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @bmw_IslandWalker_begin(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !173 {
  %3 = tail call fastcc zeroext i8 @bmw_mask_check_face(ptr noundef %0, ptr noundef %1) #7, !range !58
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @BMW_state_add(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  tail call void @BLI_gset_insert(ptr noundef %8, ptr noundef %1) #8
  %9 = getelementptr inbounds %struct.BMwIslandWalker, ptr %6, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !174
  br label %10

10:                                               ; preds = %2, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @bmw_IslandWalker_step(ptr noundef %0) #0 !PGOFuncName !176 {
  %2 = alloca %struct.BMwIslandWalker, align 8
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  %5 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(32) %5, i64 32, i1 false)
  tail call void @BMW_state_remove(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.BMwIslandWalker, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !174
  %8 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, i8 noundef zeroext 11, ptr noundef %7) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %46, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  br label %12

12:                                               ; preds = %10, %42
  %13 = phi ptr [ %8, %10 ], [ %44, %42 ]
  %14 = phi ptr [ %2, %10 ], [ %43, %42 ]
  %15 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !114
  %17 = call fastcc zeroext i8 @bmw_mask_check_edge(ptr noundef %0, ptr noundef %16) #7, !range !58
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %42, label %19

19:                                               ; preds = %12
  %20 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, i8 noundef zeroext 8, ptr noundef %16) #7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.BMwIslandWalker, ptr %14, i64 0, i32 1
  br label %24

24:                                               ; preds = %22, %39
  %25 = phi ptr [ %20, %22 ], [ %40, %39 ]
  %26 = call fastcc zeroext i8 @bmw_mask_check_face(ptr noundef %0, ptr noundef nonnull %25) #7, !range !58
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %23, align 8, !tbaa !174
  %30 = icmp eq ptr %25, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %11, align 8, !tbaa !54
  %33 = call zeroext i8 @BLI_gset_haskey(ptr noundef %32, ptr noundef nonnull %25) #8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = call ptr @BMW_state_add(ptr noundef nonnull %0) #8
  %37 = getelementptr inbounds %struct.BMwIslandWalker, ptr %36, i64 0, i32 1
  store ptr %25, ptr %37, align 8, !tbaa !174
  %38 = load ptr, ptr %11, align 8, !tbaa !54
  call void @BLI_gset_insert(ptr noundef %38, ptr noundef nonnull %25) #8
  br label %42

39:                                               ; preds = %31, %28, %24
  %40 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #7
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %24, !llvm.loop !177

42:                                               ; preds = %39, %19, %35, %12
  %43 = phi ptr [ %36, %35 ], [ %14, %12 ], [ %14, %19 ], [ %14, %39 ]
  %44 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #7
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %12, !llvm.loop !178

46:                                               ; preds = %42, %1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #6
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @bmw_IslandWalker_yield(ptr noundef %0) #0 !PGOFuncName !179 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.BMwIslandWalker, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !174
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @bmw_ConnectedVertexWalker_begin(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !180 {
  tail call fastcc void @bmw_ConnectedVertexWalker_visitVertex(ptr noundef %0, ptr noundef %1) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @bmw_ConnectedVertexWalker_step(ptr noundef %0) #0 !PGOFuncName !181 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #6
  %3 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  %4 = getelementptr inbounds i8, ptr %3, i64 24
  %5 = load ptr, ptr %4, align 1
  tail call void @BMW_state_remove(ptr noundef %0) #8
  %6 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, i8 noundef zeroext 4, ptr noundef %5) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  br label %10

10:                                               ; preds = %8, %17
  %11 = phi ptr [ %6, %8 ], [ %18, %17 ]
  %12 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %11, ptr noundef %5) #7
  %13 = load ptr, ptr %9, align 8, !tbaa !54
  %14 = call zeroext i8 @BLI_gset_haskey(ptr noundef %13, ptr noundef %12) #8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  call fastcc void @bmw_ConnectedVertexWalker_visitVertex(ptr noundef nonnull %0, ptr noundef %12) #7
  br label %17

17:                                               ; preds = %10, %16
  %18 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %10, !llvm.loop !182

20:                                               ; preds = %17, %1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #6
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @bmw_ConnectedVertexWalker_yield(ptr noundef %0) #0 !PGOFuncName !183 {
  %2 = tail call ptr @BMW_current_state(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.BMwConnectedVertexWalker, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !184
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bmw_ConnectedVertexWalker_visitVertex(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !186 {
  %3 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %4, ptr noundef %1) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @bmw_mask_check_vert(ptr noundef nonnull %0, ptr noundef %1) #7, !range !58
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @BMW_state_add(ptr noundef nonnull %0) #8
  %12 = getelementptr inbounds %struct.BMwConnectedVertexWalker, ptr %11, i64 0, i32 1
  store ptr %1, ptr %12, align 8, !tbaa !184
  %13 = load ptr, ptr %3, align 8, !tbaa !54
  tail call void @BLI_gset_insert(ptr noundef %13, ptr noundef %1) #8
  br label %14

14:                                               ; preds = %7, %2, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmw_mask_check_vert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !187 {
  %3 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 14
  %4 = load i32, ptr %3, align 8, !tbaa !67
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %1) #7
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 11
  %12 = load i16, ptr %11, align 8, !tbaa !188
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.BMWalker, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !69
  %17 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !189
  %19 = tail call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %16, ptr noundef %18, i16 noundef signext %12) #7
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14, %10
  br label %22

22:                                               ; preds = %14, %7, %21
  %23 = phi i8 [ 1, %21 ], [ 0, %7 ], [ 0, %14 ]
  ret i8 %23
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }

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
!34 = !{!"bmesh_walkers_impl.c:bmw_VertShellWalker_begin"}
!35 = !{!36, !38, i64 12}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"bmesh_walkers_impl.c:bmw_VertShellWalker_step"}
!44 = !{!37, !37, i64 0}
!45 = distinct !{!45, !42}
!46 = distinct !{!46, !42}
!47 = !{!"bmesh_walkers_impl.c:bmw_VertShellWalker_yield"}
!48 = !{!49, !37, i64 24}
!49 = !{!"BMwShellWalker", !50, i64 0, !37, i64 24}
!50 = !{!"BMwGenericWalker", !51, i64 0, !40, i64 16}
!51 = !{!"Link", !37, i64 0, !37, i64 8}
!52 = !{!"bmesh_walkers_impl.c:BM_iter_new"}
!53 = !{!"bmesh_walkers_impl.c:bmw_VertShellWalker_visitEdge"}
!54 = !{!55, !37, i64 96}
!55 = !{!"BMWalker", !38, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !37, i64 48, !37, i64 56, !56, i64 64, !57, i64 80, !57, i64 82, !57, i64 84, !40, i64 88, !37, i64 96, !37, i64 104, !40, i64 112}
!56 = !{!"ListBase", !37, i64 0, !37, i64 8}
!57 = !{!"short", !38, i64 0}
!58 = !{i8 0, i8 2}
!59 = !{!"bmesh_walkers_impl.c:BM_iter_step"}
!60 = !{!61, !37, i64 48}
!61 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!62 = !{!"bmesh_walkers_impl.c:BM_iter_init"}
!63 = !{!61, !38, i64 60}
!64 = !{!61, !37, i64 40}
!65 = !{!38, !38, i64 0}
!66 = !{!"bmesh_walkers_impl.c:bmw_mask_check_edge"}
!67 = !{!55, !40, i64 88}
!68 = !{!55, !57, i64 82}
!69 = !{!55, !37, i64 48}
!70 = !{!71, !37, i64 16}
!71 = !{!"BMEdge", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !72, i64 48, !72, i64 64}
!72 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!73 = !{!"bmesh_walkers_impl.c:_bm_elem_flag_test"}
!74 = !{!36, !38, i64 13}
!75 = !{!"bmesh_walkers_impl.c:_bmo_elem_flag_test"}
!76 = !{!77, !40, i64 128}
!77 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !78, i64 144, !78, i64 344, !78, i64 544, !78, i64 744, !57, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !56, i64 960, !37, i64 976, !56, i64 984, !37, i64 1000}
!78 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!79 = !{!80, !57, i64 0}
!80 = !{!"BMFlagLayer", !57, i64 0}
!81 = !{!"bmesh_walkers_impl.c:bmw_FaceShellWalker_begin"}
!82 = !{!"bmesh_walkers_impl.c:bmw_FaceShellWalker_step"}
!83 = !{!71, !37, i64 40}
!84 = !{!85, !37, i64 32}
!85 = !{!"BMLoop", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!86 = distinct !{!86, !42}
!87 = !{!85, !37, i64 40}
!88 = distinct !{!88, !42}
!89 = !{!"bmesh_walkers_impl.c:bmw_FaceShellWalker_yield"}
!90 = !{!"bmesh_walkers_impl.c:bmw_FaceShellWalker_visitEdge"}
!91 = !{!"bmesh_walkers_impl.c:bmw_LoopWalker_begin"}
!92 = !{!71, !37, i64 24}
!93 = !{!71, !37, i64 32}
!94 = !{!95, !37, i64 32}
!95 = !{!"BMwLoopWalker", !50, i64 0, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !38, i64 64, !38, i64 65}
!96 = !{!95, !37, i64 24}
!97 = !{!95, !37, i64 48}
!98 = !{!95, !37, i64 40}
!99 = !{!95, !38, i64 64}
!100 = !{!95, !38, i64 65}
!101 = !{!102, !40, i64 32}
!102 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !57, i64 48}
!103 = distinct !{!103, !42}
!104 = !{!95, !37, i64 56}
!105 = !{i64 0, i64 8, !44, i64 8, i64 8, !44, i64 16, i64 4, !106, i64 24, i64 8, !44, i64 32, i64 8, !44, i64 40, i64 8, !44, i64 48, i64 8, !44, i64 56, i64 8, !44, i64 64, i64 1, !65, i64 65, i64 1, !65}
!106 = !{!40, !40, i64 0}
!107 = !{i64 0, i64 8, !44, i64 8, i64 8, !44, i64 16, i64 8, !44, i64 24, i64 8, !44, i64 32, i64 8, !44, i64 40, i64 1, !65, i64 41, i64 1, !65}
!108 = !{i64 0, i64 8, !44, i64 8, i64 8, !44, i64 16, i64 8, !44, i64 24, i64 8, !44, i64 32, i64 1, !65, i64 33, i64 1, !65}
!109 = distinct !{!109, !42}
!110 = !{!"bmesh_walkers_impl.c:bmw_LoopWalker_step"}
!111 = !{!85, !37, i64 16}
!112 = distinct !{!112, !42}
!113 = distinct !{!113, !42}
!114 = !{!85, !37, i64 24}
!115 = distinct !{!115, !42}
!116 = !{!"bmesh_walkers_impl.c:bmw_LoopWalker_yield"}
!117 = !{!"bmesh_walkers_impl.c:BM_edge_is_boundary"}
!118 = !{!"bmesh_walkers_impl.c:bm_edge_is_single"}
!119 = !{!85, !37, i64 56}
!120 = !{!85, !37, i64 64}
!121 = !{!"bmesh_walkers_impl.c:BM_edge_other_vert"}
!122 = !{!"bmesh_walkers_impl.c:BM_edge_is_manifold"}
!123 = !{!"bmesh_walkers_impl.c:bmw_FaceLoopWalker_begin"}
!124 = !{!125, !37, i64 24}
!125 = !{!"BMwFaceLoopWalker", !50, i64 0, !37, i64 24, !38, i64 32}
!126 = !{!125, !38, i64 32}
!127 = !{i64 0, i64 8, !44, i64 8, i64 8, !44, i64 16, i64 4, !106, i64 24, i64 8, !44, i64 32, i64 1, !65}
!128 = distinct !{!128, !42}
!129 = !{!55, !37, i64 104}
!130 = !{!"bmesh_walkers_impl.c:bmw_FaceLoopWalker_step"}
!131 = !{!"bmesh_walkers_impl.c:bmw_FaceLoopWalker_yield"}
!132 = !{!"bmesh_walkers_impl.c:bmw_FaceLoopWalker_edge_begins_loop"}
!133 = !{!"bmesh_walkers_impl.c:BM_edge_is_wire"}
!134 = !{!"bmesh_walkers_impl.c:bmw_FaceLoopWalker_include_face"}
!135 = !{!"bmesh_walkers_impl.c:bmw_mask_check_face"}
!136 = !{!55, !57, i64 84}
!137 = !{!102, !37, i64 16}
!138 = !{!"bmesh_walkers_impl.c:bmw_EdgeringWalker_begin"}
!139 = !{!140, !37, i64 24}
!140 = !{!"BMwEdgeringWalker", !50, i64 0, !37, i64 24, !37, i64 32}
!141 = !{!140, !37, i64 32}
!142 = !{i64 0, i64 8, !44, i64 8, i64 8, !44, i64 16, i64 4, !106, i64 24, i64 8, !44, i64 32, i64 8, !44}
!143 = distinct !{!143, !42}
!144 = !{!"bmesh_walkers_impl.c:bmw_EdgeringWalker_step"}
!145 = !{!"bmesh_walkers_impl.c:bmw_EdgeringWalker_yield"}
!146 = !{!"bmesh_walkers_impl.c:bmw_EdgeboundaryWalker_begin"}
!147 = !{!148, !37, i64 24}
!148 = !{!"BMwEdgeboundaryWalker", !50, i64 0, !37, i64 24}
!149 = !{!"bmesh_walkers_impl.c:bmw_EdgeboundaryWalker_step"}
!150 = distinct !{!150, !42}
!151 = distinct !{!151, !42}
!152 = !{!"bmesh_walkers_impl.c:bmw_EdgeboundaryWalker_yield"}
!153 = !{!"bmesh_walkers_impl.c:bmw_UVEdgeWalker_begin"}
!154 = !{!155, !37, i64 24}
!155 = !{!"BMwUVEdgeWalker", !50, i64 0, !37, i64 24}
!156 = !{!"bmesh_walkers_impl.c:bmw_UVEdgeWalker_step"}
!157 = !{!77, !37, i64 544}
!158 = !{!55, !40, i64 44}
!159 = !{!160, !40, i64 0}
!160 = !{!"CustomDataLayer", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96}
!161 = !{!85, !37, i64 0}
!162 = distinct !{!162, !42}
!163 = distinct !{!163, !42}
!164 = distinct !{!164, !42}
!165 = !{!"bmesh_walkers_impl.c:bmw_UVEdgeWalker_yield"}
!166 = !{!"bmesh_walkers_impl.c:bmw_IslandboundWalker_begin"}
!167 = !{!168, !37, i64 40}
!168 = !{!"BMwIslandboundWalker", !50, i64 0, !37, i64 24, !37, i64 32, !37, i64 40}
!169 = !{!168, !37, i64 24}
!170 = !{!168, !37, i64 32}
!171 = !{!"bmesh_walkers_impl.c:bmw_IslandboundWalker_step"}
!172 = !{!"bmesh_walkers_impl.c:bmw_IslandboundWalker_yield"}
!173 = !{!"bmesh_walkers_impl.c:bmw_IslandWalker_begin"}
!174 = !{!175, !37, i64 24}
!175 = !{!"BMwIslandWalker", !50, i64 0, !37, i64 24}
!176 = !{!"bmesh_walkers_impl.c:bmw_IslandWalker_step"}
!177 = distinct !{!177, !42}
!178 = distinct !{!178, !42}
!179 = !{!"bmesh_walkers_impl.c:bmw_IslandWalker_yield"}
!180 = !{!"bmesh_walkers_impl.c:bmw_ConnectedVertexWalker_begin"}
!181 = !{!"bmesh_walkers_impl.c:bmw_ConnectedVertexWalker_step"}
!182 = distinct !{!182, !42}
!183 = !{!"bmesh_walkers_impl.c:bmw_ConnectedVertexWalker_yield"}
!184 = !{!185, !37, i64 24}
!185 = !{!"BMwConnectedVertexWalker", !50, i64 0, !37, i64 24}
!186 = !{!"bmesh_walkers_impl.c:bmw_ConnectedVertexWalker_visitVertex"}
!187 = !{!"bmesh_walkers_impl.c:bmw_mask_check_vert"}
!188 = !{!55, !57, i64 80}
!189 = !{!190, !37, i64 16}
!190 = !{!"BMVert", !36, i64 0, !37, i64 16, !38, i64 24, !38, i64 36, !37, i64 48}
