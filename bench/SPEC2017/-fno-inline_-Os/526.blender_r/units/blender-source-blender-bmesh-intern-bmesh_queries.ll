; ModuleID = 'blender/source/blender/bmesh/intern/bmesh_queries.c'
source_filename = "blender/source/blender/bmesh/intern/bmesh_queries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.LinkNode = type { ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [43 x i8] c"BMESH_ASSERT failed: %s, %s(), %d at '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"blender/source/blender/bmesh/intern/bmesh_queries.c\00", align 1
@__func__.BM_face_exists_multi_edge = private unnamed_addr constant [26 x i8] c"BM_face_exists_multi_edge\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_mesh_calc_face_groups = private unnamed_addr constant [25 x i8] c"BM_mesh_calc_face_groups\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__func__.BM_mesh_calc_edge_groups = private unnamed_addr constant [25 x i8] c"BM_mesh_calc_edge_groups\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_face_other_edge_loop(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BM_face_edge_share_loop(ptr noundef %0, ptr noundef %1) #17
  %5 = tail call ptr @BM_loop_other_edge_loop(ptr noundef %4, ptr noundef %2) #17
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_face_edge_share_loop(ptr noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %10, %2
  %6 = phi ptr [ %4, %2 ], [ %12, %10 ]
  %7 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = icmp eq ptr %12, %4
  br i1 %13, label %14, label %5, !llvm.loop !45

14:                                               ; preds = %10, %5
  %15 = phi ptr [ %6, %5 ], [ null, %10 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_loop_other_edge_loop(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %7 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  %8 = select i1 %5, ptr %6, ptr %7
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  ret ptr %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_face_other_vert_loop(ptr noundef readnone %0, ptr noundef readnone %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  %5 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 6, ptr noundef %2) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %3, %12
  %8 = phi ptr [ %13, %12 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %7, !llvm.loop !49

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = icmp eq ptr %19, %1
  %21 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !51
  br i1 %20, label %28, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  %26 = icmp eq ptr %25, %1
  %27 = select i1 %26, ptr %17, ptr null
  br label %28

28:                                               ; preds = %12, %15, %3, %23
  %29 = phi ptr [ %27, %23 ], [ null, %3 ], [ %22, %15 ], [ null, %12 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 !PGOFuncName !52 {
  %5 = tail call fastcc zeroext i8 @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #17, !range !53
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #17
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi ptr [ %8, %7 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #3 !PGOFuncName !54 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call ptr %3(ptr noundef %0) #19
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_loop_other_vert_loop(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef %8, ptr noundef %1) #17
  %10 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = getelementptr inbounds %struct.BMLoop, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = icmp eq ptr %13, %9
  br i1 %14, label %15, label %32

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  br label %29

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = getelementptr inbounds %struct.BMLoop, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.BMLoop, ptr %19, i64 0, i32 7
  br label %29

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !51
  %28 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 6
  br label %29

29:                                               ; preds = %15, %23, %25
  %30 = phi ptr [ %28, %25 ], [ %24, %23 ], [ %16, %15 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  br label %32

32:                                               ; preds = %29, %6
  %33 = phi ptr [ %11, %6 ], [ %31, %29 ]
  ret ptr %33
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 !PGOFuncName !58 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BM_vert_pair_share_face_check(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #18
  %12 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 5, ptr noundef nonnull %0) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %19, %11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  br label %23

15:                                               ; preds = %11, %19
  %16 = phi ptr [ %20, %19 ], [ %12, %11 ]
  %17 = call zeroext i8 @BM_vert_in_face(ptr noundef nonnull %16, ptr noundef %1) #17, !range !53
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #17
  %21 = icmp eq ptr %20, null
  br i1 %21, label %14, label %15, !llvm.loop !63

22:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  br label %23

23:                                               ; preds = %2, %7, %14, %22
  %24 = phi i8 [ 1, %22 ], [ 0, %14 ], [ 0, %7 ], [ 0, %2 ]
  ret i8 %24
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_vert_in_face(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  br label %5

5:                                                ; preds = %10, %2
  %6 = phi ptr [ %4, %2 ], [ %12, %10 ]
  %7 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = icmp eq ptr %12, %4
  br i1 %13, label %14, label %5, !llvm.loop !67

14:                                               ; preds = %10, %5
  %15 = phi i8 [ 1, %5 ], [ 0, %10 ]
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_vert_pair_share_face_by_len(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i8 noundef zeroext %4) local_unnamed_addr #3 {
  %6 = alloca %struct.BMIter, align 8
  %7 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = icmp eq ptr %8, null
  br i1 %9, label %51, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !61
  %13 = icmp eq ptr %12, null
  br i1 %13, label %51, label %14

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #18
  %15 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 6, ptr noundef nonnull %0) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %47, label %17

17:                                               ; preds = %14
  %18 = icmp eq i8 %4, 0
  br label %19

19:                                               ; preds = %17, %41
  %20 = phi ptr [ null, %17 ], [ %44, %41 ]
  %21 = phi ptr [ %15, %17 ], [ %45, %41 ]
  %22 = phi ptr [ null, %17 ], [ %43, %41 ]
  %23 = phi ptr [ null, %17 ], [ %42, %41 ]
  %24 = icmp eq ptr %22, null
  %25 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  br i1 %24, label %33, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.BMFace, ptr %26, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !68
  %30 = getelementptr inbounds %struct.BMFace, ptr %22, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !68
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %19, %27
  %34 = call ptr @BM_face_vert_share_loop(ptr noundef %26, ptr noundef %1) #17
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  br i1 %18, label %37, label %40

37:                                               ; preds = %36
  %38 = call fastcc zeroext i8 @BM_loop_is_adjacent(ptr noundef nonnull %21, ptr noundef nonnull %34) #17, !range !53
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %36
  br label %41

41:                                               ; preds = %27, %40, %37, %33
  %42 = phi ptr [ %34, %40 ], [ %23, %37 ], [ %23, %33 ], [ %23, %27 ]
  %43 = phi ptr [ %26, %40 ], [ %22, %37 ], [ %22, %33 ], [ %22, %27 ]
  %44 = phi ptr [ %21, %40 ], [ %20, %37 ], [ %20, %33 ], [ %20, %27 ]
  %45 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #17
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %19, !llvm.loop !69

47:                                               ; preds = %41, %14
  %48 = phi ptr [ null, %14 ], [ %42, %41 ]
  %49 = phi ptr [ null, %14 ], [ %43, %41 ]
  %50 = phi ptr [ null, %14 ], [ %44, %41 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #18
  br label %51

51:                                               ; preds = %47, %10, %5
  %52 = phi ptr [ %48, %47 ], [ null, %10 ], [ null, %5 ]
  %53 = phi ptr [ %49, %47 ], [ null, %10 ], [ null, %5 ]
  %54 = phi ptr [ %50, %47 ], [ null, %10 ], [ null, %5 ]
  store ptr %54, ptr %2, align 8, !tbaa !48
  store ptr %52, ptr %3, align 8, !tbaa !48
  ret ptr %53
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_face_vert_share_loop(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  br label %5

5:                                                ; preds = %10, %2
  %6 = phi ptr [ %4, %2 ], [ %12, %10 ]
  %7 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = icmp eq ptr %12, %4
  br i1 %13, label %14, label %5, !llvm.loop !70

14:                                               ; preds = %10, %5
  %15 = phi ptr [ %6, %5 ], [ null, %10 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_loop_is_adjacent(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 !PGOFuncName !71 {
  %3 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = icmp eq ptr %8, %1
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 1, %2 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_vert_pair_share_face_by_angle(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i8 noundef zeroext %4) local_unnamed_addr #3 {
  %6 = alloca %struct.BMIter, align 8
  %7 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = icmp eq ptr %8, null
  br i1 %9, label %56, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !61
  %13 = icmp eq ptr %12, null
  br i1 %13, label %56, label %14

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #18
  %15 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 6, ptr noundef nonnull %0) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %52, label %17

17:                                               ; preds = %14
  %18 = icmp eq i8 %4, 0
  br label %19

19:                                               ; preds = %17, %45
  %20 = phi ptr [ null, %17 ], [ %49, %45 ]
  %21 = phi float [ -1.000000e+00, %17 ], [ %48, %45 ]
  %22 = phi ptr [ null, %17 ], [ %47, %45 ]
  %23 = phi ptr [ %15, %17 ], [ %50, %45 ]
  %24 = phi ptr [ null, %17 ], [ %46, %45 ]
  %25 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  %27 = call ptr @BM_face_vert_share_loop(ptr noundef %26, ptr noundef %1) #17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %45, label %29

29:                                               ; preds = %19
  br i1 %18, label %30, label %33

30:                                               ; preds = %29
  %31 = call fastcc zeroext i8 @BM_loop_is_adjacent(ptr noundef nonnull %23, ptr noundef nonnull %27) #17, !range !53
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %30, %29
  %34 = icmp eq ptr %24, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %33
  %36 = fcmp oeq float %21, -1.000000e+00
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  %38 = call fastcc float @bm_face_calc_split_dot(ptr noundef %20, ptr noundef %22) #17
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi float [ %38, %37 ], [ %21, %35 ]
  %41 = call fastcc float @bm_face_calc_split_dot(ptr noundef nonnull %23, ptr noundef nonnull %27) #17
  %42 = fcmp ogt float %41, %40
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load ptr, ptr %25, align 8, !tbaa !42
  br label %45

45:                                               ; preds = %33, %39, %43, %19, %30
  %46 = phi ptr [ %24, %30 ], [ %24, %19 ], [ %44, %43 ], [ %24, %39 ], [ %26, %33 ]
  %47 = phi ptr [ %22, %30 ], [ %22, %19 ], [ %27, %43 ], [ %22, %39 ], [ %27, %33 ]
  %48 = phi float [ %21, %30 ], [ %21, %19 ], [ %41, %43 ], [ %40, %39 ], [ %21, %33 ]
  %49 = phi ptr [ %20, %30 ], [ %20, %19 ], [ %23, %43 ], [ %20, %39 ], [ %23, %33 ]
  %50 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #17
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %19, !llvm.loop !72

52:                                               ; preds = %45, %14
  %53 = phi ptr [ null, %14 ], [ %46, %45 ]
  %54 = phi ptr [ null, %14 ], [ %47, %45 ]
  %55 = phi ptr [ null, %14 ], [ %49, %45 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #18
  br label %56

56:                                               ; preds = %52, %10, %5
  %57 = phi ptr [ %53, %52 ], [ null, %10 ], [ null, %5 ]
  %58 = phi ptr [ %54, %52 ], [ null, %10 ], [ null, %5 ]
  %59 = phi ptr [ %55, %52 ], [ null, %10 ], [ null, %5 ]
  store ptr %59, ptr %2, align 8, !tbaa !48
  store ptr %58, ptr %3, align 8, !tbaa !48
  ret ptr %57
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @bm_face_calc_split_dot(ptr noundef %0, ptr noundef %1) unnamed_addr #3 !PGOFuncName !73 {
  %3 = alloca [2 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  %4 = call float @BM_face_calc_normal_subset(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #19
  %5 = fcmp une float %4, 0.000000e+00
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x [3 x float]], ptr %3, i64 0, i64 1
  %8 = call float @BM_face_calc_normal_subset(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %7) #19
  %9 = fcmp une float %8, 0.000000e+00
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %7) #17
  br label %12

12:                                               ; preds = %2, %6, %10
  %13 = phi float [ %11, %10 ], [ -1.000000e+00, %6 ], [ -1.000000e+00, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret float %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_vert_find_first_loop(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @bmesh_disk_faceedge_find_first(ptr noundef nonnull %3, ptr noundef nonnull %0) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = tail call ptr @bmesh_radial_faceloop_find_first(ptr noundef %10, ptr noundef nonnull %0) #19
  br label %12

12:                                               ; preds = %5, %1, %8
  %13 = phi ptr [ %11, %8 ], [ null, %1 ], [ null, %5 ]
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @bmesh_disk_faceedge_find_first(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @bmesh_radial_faceloop_find_first(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @BM_verts_in_face_count(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %14, %7 ]
  %9 = getelementptr inbounds ptr, ptr %1, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.BMHeader, ptr %10, i64 0, i32 4
  %12 = load i8, ptr %11, align 2, !tbaa !74
  %13 = or i8 %12, 4
  store i8 %13, ptr %11, align 2, !tbaa !74
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %6
  br i1 %15, label %16, label %7, !llvm.loop !75

16:                                               ; preds = %7, %3
  %17 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !64
  br label %19

19:                                               ; preds = %19, %16
  %20 = phi ptr [ %18, %16 ], [ %31, %19 ]
  %21 = phi i32 [ 0, %16 ], [ %29, %19 ]
  %22 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = getelementptr inbounds %struct.BMHeader, ptr %23, i64 0, i32 4
  %25 = load i8, ptr %24, align 2, !tbaa !74
  %26 = lshr i8 %25, 2
  %27 = and i8 %26, 1
  %28 = zext nneg i8 %27 to i32
  %29 = add i32 %21, %28
  %30 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !51
  %32 = icmp eq ptr %31, %18
  br i1 %32, label %33, label %19, !llvm.loop !76

33:                                               ; preds = %19
  br i1 %4, label %34, label %45

34:                                               ; preds = %33
  %35 = zext nneg i32 %2 to i64
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi i64 [ 0, %34 ], [ %43, %36 ]
  %38 = getelementptr inbounds ptr, ptr %1, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !48
  %40 = getelementptr inbounds %struct.BMHeader, ptr %39, i64 0, i32 4
  %41 = load i8, ptr %40, align 2, !tbaa !74
  %42 = and i8 %41, -5
  store i8 %42, ptr %40, align 2, !tbaa !74
  %43 = add nuw nsw i64 %37, 1
  %44 = icmp eq i64 %43, %35
  br i1 %44, label %45, label %36, !llvm.loop !77

45:                                               ; preds = %36, %33
  ret i32 %29
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_verts_in_face(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !68
  %6 = icmp slt i32 %5, %2
  br i1 %6, label %48, label %7

7:                                                ; preds = %3
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %7
  %10 = zext nneg i32 %2 to i64
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %18, %11 ]
  %13 = getelementptr inbounds ptr, ptr %1, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.BMHeader, ptr %14, i64 0, i32 4
  %16 = load i8, ptr %15, align 2, !tbaa !74
  %17 = or i8 %16, 4
  store i8 %17, ptr %15, align 2, !tbaa !74
  %18 = add nuw nsw i64 %12, 1
  %19 = icmp eq i64 %18, %10
  br i1 %19, label %20, label %11, !llvm.loop !78

20:                                               ; preds = %11, %7
  %21 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !64
  br label %23

23:                                               ; preds = %31, %20
  %24 = phi ptr [ %22, %20 ], [ %33, %31 ]
  %25 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  %27 = getelementptr inbounds %struct.BMHeader, ptr %26, i64 0, i32 4
  %28 = load i8, ptr %27, align 2, !tbaa !74
  %29 = and i8 %28, 4
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !51
  %34 = icmp eq ptr %33, %22
  br i1 %34, label %35, label %23, !llvm.loop !79

35:                                               ; preds = %23, %31
  %36 = phi i8 [ 1, %31 ], [ 0, %23 ]
  br i1 %8, label %37, label %48

37:                                               ; preds = %35
  %38 = zext nneg i32 %2 to i64
  br label %39

39:                                               ; preds = %37, %39
  %40 = phi i64 [ 0, %37 ], [ %46, %39 ]
  %41 = getelementptr inbounds ptr, ptr %1, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !48
  %43 = getelementptr inbounds %struct.BMHeader, ptr %42, i64 0, i32 4
  %44 = load i8, ptr %43, align 2, !tbaa !74
  %45 = and i8 %44, -5
  store i8 %45, ptr %43, align 2, !tbaa !74
  %46 = add nuw nsw i64 %40, 1
  %47 = icmp eq i64 %46, %38
  br i1 %47, label %48, label %39, !llvm.loop !80

48:                                               ; preds = %39, %35, %3
  %49 = phi i8 [ 0, %3 ], [ %36, %35 ], [ %36, %39 ]
  ret i8 %49
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_edge_in_face(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2, %11
  %7 = phi ptr [ %13, %11 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = icmp eq ptr %13, %4
  br i1 %14, label %15, label %6, !llvm.loop !81

15:                                               ; preds = %11, %6, %2
  %16 = phi i8 [ 0, %2 ], [ 0, %11 ], [ 1, %6 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_edge_other_loop(ptr noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ %1, %2 ]
  %11 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  %21 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !47
  %23 = icmp eq ptr %22, %16
  %24 = select i1 %23, ptr %20, ptr %12
  br label %25

25:                                               ; preds = %18, %9
  %26 = phi ptr [ %12, %9 ], [ %24, %18 ]
  ret ptr %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BM_vert_step_fan_loop(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #7 {
  %3 = load ptr, ptr %1, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp eq ptr %5, %3
  %7 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  br i1 %6, label %13, label %11

11:                                               ; preds = %2
  %12 = icmp eq ptr %10, %3
  br i1 %12, label %13, label %19

13:                                               ; preds = %2, %11
  %14 = phi ptr [ %5, %11 ], [ %10, %2 ]
  %15 = tail call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef %14) #17, !range !53
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  store ptr %14, ptr %1, align 8, !tbaa !48
  %18 = tail call ptr @BM_edge_other_loop(ptr noundef %14, ptr noundef nonnull %0) #17
  br label %19

19:                                               ; preds = %13, %11, %17
  %20 = phi ptr [ %18, %17 ], [ null, %11 ], [ null, %13 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_manifold(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !82 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, %3
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %9, %5, %1
  %15 = phi i8 [ 0, %5 ], [ 0, %1 ], [ %13, %9 ]
  ret i8 %15
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_vert_other_disk_edge(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %23, %2
  %6 = phi ptr [ %4, %2 ], [ %25, %23 ]
  %7 = phi i32 [ 0, %2 ], [ %26, %23 ]
  %8 = tail call ptr @BM_loop_other_vert_loop(ptr noundef %6, ptr noundef %0) #17
  %9 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = tail call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef %10, ptr noundef %0) #17, !range !53
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  br label %18

18:                                               ; preds = %5, %13
  %19 = phi ptr [ %17, %13 ], [ %10, %5 ]
  %20 = phi ptr [ %15, %13 ], [ %8, %5 ]
  %21 = tail call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef %19) #17, !range !53
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %67, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  %26 = add nuw nsw i32 %7, 1
  %27 = icmp eq ptr %25, %4
  br i1 %27, label %28, label %5, !llvm.loop !83

28:                                               ; preds = %23
  %29 = lshr i32 %26, 1
  br label %30

30:                                               ; preds = %63, %28
  %31 = phi ptr [ %4, %28 ], [ %64, %63 ]
  %32 = phi i32 [ 0, %28 ], [ %65, %63 ]
  %33 = icmp eq i32 %32, %29
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !57
  %37 = tail call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef %36, ptr noundef %0) #17, !range !53
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !50
  %42 = getelementptr inbounds %struct.BMLoop, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !57
  br label %67

44:                                               ; preds = %30
  %45 = tail call ptr @BM_loop_other_vert_loop(ptr noundef %31, ptr noundef %0) #17
  %46 = getelementptr inbounds %struct.BMLoop, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !57
  %48 = tail call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef %47, ptr noundef %0) #17, !range !53
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.BMLoop, ptr %45, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !50
  %53 = getelementptr inbounds %struct.BMLoop, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !57
  br label %55

55:                                               ; preds = %44, %50
  %56 = phi ptr [ %54, %50 ], [ %47, %44 ]
  %57 = phi ptr [ %52, %50 ], [ %45, %44 ]
  %58 = tail call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef %56) #17, !range !53
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.BMLoop, ptr %57, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !44
  br label %63

63:                                               ; preds = %60, %55
  %64 = phi ptr [ %62, %60 ], [ %57, %55 ]
  %65 = add nuw nsw i32 %32, 1
  %66 = icmp eq ptr %64, %4
  br i1 %66, label %67, label %30, !llvm.loop !84

67:                                               ; preds = %18, %63, %39, %34
  %68 = phi ptr [ %43, %39 ], [ %36, %34 ], [ null, %63 ], [ null, %18 ]
  ret ptr %68
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_vert_in_edge(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 !PGOFuncName !85 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = icmp eq ptr %8, %1
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 1, %2 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local float @BM_edge_calc_length(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 2
  %5 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.BMVert, ptr %6, i64 0, i32 2
  %8 = tail call fastcc float @len_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %7) #17
  ret float %8
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !86 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #17
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local float @BM_edge_calc_length_squared(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 2
  %5 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.BMVert, ptr %6, i64 0, i32 2
  %8 = tail call fastcc float @len_squared_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %7) #17
  ret float %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !87 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #17
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_edge_face_pair(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  %11 = icmp eq ptr %5, %9
  %12 = or i1 %10, %11
  br i1 %12, label %22, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = icmp eq ptr %15, %5
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  store ptr %19, ptr %1, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  br label %23

22:                                               ; preds = %13, %7, %3
  store ptr null, ptr %1, align 8, !tbaa !48
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi ptr [ null, %22 ], [ %21, %17 ]
  %25 = phi i8 [ 0, %22 ], [ 1, %17 ]
  store ptr %24, ptr %2, align 8, !tbaa !48
  ret i8 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_edge_loop_pair(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  %11 = icmp eq ptr %5, %9
  %12 = or i1 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = icmp eq ptr %15, %5
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %7, %3
  br label %18

18:                                               ; preds = %13, %17
  %19 = phi ptr [ null, %17 ], [ %5, %13 ]
  %20 = phi ptr [ null, %17 ], [ %9, %13 ]
  %21 = phi i8 [ 0, %17 ], [ 1, %13 ]
  store ptr %19, ptr %1, align 8, !tbaa !48
  store ptr %20, ptr %2, align 8, !tbaa !48
  ret i8 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BM_vert_is_edge_pair(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @bmesh_disk_edge_link_from_vert(ptr noundef nonnull %3, ptr noundef nonnull %0) #17
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  %8 = getelementptr inbounds %struct.BMDiskLink, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  %10 = icmp eq ptr %7, %9
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %1, %5
  %13 = phi i8 [ %11, %5 ], [ 0, %1 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @bmesh_disk_edge_link_from_vert(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 !PGOFuncName !90 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 5
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = icmp eq ptr %5, %1
  %7 = zext i1 %6 to i64
  %8 = getelementptr inbounds %struct.BMDiskLink, ptr %3, i64 %7
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BM_vert_edge_count(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call i32 @bmesh_disk_count(ptr noundef %0) #19
  ret i32 %2
}

; Function Attrs: optsize
declare i32 @bmesh_disk_count(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BM_vert_edge_count_nonwire(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #18
  %3 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 4, ptr noundef %0) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %13, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %12, %5 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp ne ptr %9, null
  %11 = zext i1 %10 to i32
  %12 = add nuw nsw i32 %7, %11
  %13 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !91

15:                                               ; preds = %5, %1
  %16 = phi i32 [ 0, %1 ], [ %12, %5 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #18
  ret i32 %16
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BM_edge_face_count(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %10, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %8, %5 ], [ 0, %1 ]
  %8 = add nuw nsw i32 %7, 1
  %9 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = icmp eq ptr %10, %3
  br i1 %11, label %12, label %5, !llvm.loop !92

12:                                               ; preds = %5, %1
  %13 = phi i32 [ 0, %1 ], [ %8, %5 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BM_vert_face_count(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call i32 @bmesh_disk_facevert_count(ptr noundef %0) #19
  ret i32 %2
}

; Function Attrs: optsize
declare i32 @bmesh_disk_facevert_count(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_vert_is_wire(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1, %10
  %6 = phi ptr [ %11, %10 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = tail call fastcc ptr @bmesh_disk_edge_next(ptr noundef nonnull %6, ptr noundef %0) #17
  %12 = icmp eq ptr %11, %3
  br i1 %12, label %13, label %5, !llvm.loop !93

13:                                               ; preds = %5, %10, %1
  %14 = phi i8 [ 0, %1 ], [ 1, %10 ], [ 0, %5 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @bmesh_disk_edge_next(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 !PGOFuncName !94 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 5
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = icmp eq ptr %5, %1
  %7 = zext i1 %6 to i64
  %8 = getelementptr inbounds %struct.BMDiskLink, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BM_vert_is_manifold(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %61, label %5

5:                                                ; preds = %1, %14
  %6 = phi ptr [ %16, %14 ], [ %3, %1 ]
  %7 = phi i32 [ %15, %14 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %61, label %11

11:                                               ; preds = %5
  %12 = tail call i32 @bmesh_radial_length(ptr noundef nonnull %9) #19
  %13 = icmp sgt i32 %12, 2
  br i1 %13, label %61, label %14

14:                                               ; preds = %11
  %15 = add nuw nsw i32 %7, 1
  %16 = tail call fastcc ptr @bmesh_disk_edge_next(ptr noundef nonnull %6, ptr noundef %0) #17
  %17 = icmp eq ptr %16, %3
  br i1 %17, label %18, label %5, !llvm.loop !96

18:                                               ; preds = %14
  %19 = load ptr, ptr %2, align 8, !tbaa !61
  %20 = icmp eq ptr %19, null
  br i1 %20, label %57, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.BMEdge, ptr %19, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  br label %24

24:                                               ; preds = %21, %50
  %25 = phi i32 [ %55, %50 ], [ 1, %21 ]
  %26 = phi i32 [ %54, %50 ], [ 1, %21 ]
  %27 = phi ptr [ %53, %50 ], [ %23, %21 ]
  %28 = phi ptr [ %52, %50 ], [ %19, %21 ]
  %29 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !47
  %31 = icmp eq ptr %30, %0
  %32 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 7
  %33 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 6
  %34 = select i1 %31, ptr %32, ptr %33
  %35 = load ptr, ptr %34, align 8, !tbaa !48
  %36 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !57
  %38 = icmp ne i32 %25, 0
  %39 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !44
  %41 = icmp eq ptr %40, %35
  %42 = select i1 %38, i1 %41, i1 false
  br i1 %42, label %43, label %46

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.BMEdge, ptr %37, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  br label %50

46:                                               ; preds = %24
  %47 = add nsw i32 %26, 1
  %48 = icmp eq ptr %40, %35
  %49 = select i1 %48, ptr %28, ptr %37
  br label %50

50:                                               ; preds = %46, %43
  %51 = phi ptr [ null, %43 ], [ %49, %46 ]
  %52 = phi ptr [ %37, %43 ], [ %28, %46 ]
  %53 = phi ptr [ %45, %43 ], [ %40, %46 ]
  %54 = phi i32 [ 1, %43 ], [ %47, %46 ]
  %55 = phi i32 [ 0, %43 ], [ %25, %46 ]
  %56 = icmp eq ptr %51, %52
  br i1 %56, label %57, label %24, !llvm.loop !97

57:                                               ; preds = %50, %18
  %58 = phi i32 [ 1, %18 ], [ %54, %50 ]
  %59 = icmp sgt i32 %58, %7
  %60 = zext i1 %59 to i8
  br label %61

61:                                               ; preds = %5, %11, %57, %1
  %62 = phi i8 [ 0, %1 ], [ %60, %57 ], [ 0, %11 ], [ 0, %5 ]
  ret i8 %62
}

; Function Attrs: optsize
declare i32 @bmesh_radial_length(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BM_edge_is_convex(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = tail call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef %0) #17, !range !53
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds %struct.BMFace, ptr %12, i64 0, i32 4
  %14 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct.BMFace, ptr %15, i64 0, i32 4
  %17 = tail call fastcc zeroext i8 @equals_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %16) #17, !range !53
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %2, ptr noundef nonnull %13, ptr noundef nonnull %16) #17
  %20 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = getelementptr inbounds %struct.BMVert, ptr %23, i64 0, i32 2
  %25 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  %27 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %24, ptr noundef nonnull %27) #17
  %28 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %2) #17
  %29 = fcmp ogt float %28, 0.000000e+00
  %30 = zext i1 %29 to i8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #18
  br label %31

31:                                               ; preds = %6, %1, %19
  %32 = phi i8 [ %30, %19 ], [ 1, %1 ], [ 1, %6 ]
  ret i8 %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @equals_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !98 {
  %3 = load float, ptr %0, align 4, !tbaa !99
  %4 = load float, ptr %1, align 4, !tbaa !99
  %5 = fcmp oeq float %3, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !99
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !99
  %11 = fcmp oeq float %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !99
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !99
  %17 = fcmp oeq float %14, %16
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %12, %6, %2
  %20 = phi i8 [ 0, %6 ], [ 0, %2 ], [ %18, %12 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #11 !PGOFuncName !101 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !99
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !99
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !99
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !99
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !99
  %15 = load float, ptr %8, align 4, !tbaa !99
  %16 = load float, ptr %2, align 4, !tbaa !99
  %17 = load float, ptr %1, align 4, !tbaa !99
  %18 = load float, ptr %6, align 4, !tbaa !99
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !99
  %23 = load float, ptr %1, align 4, !tbaa !99
  %24 = load float, ptr %10, align 4, !tbaa !99
  %25 = load float, ptr %4, align 4, !tbaa !99
  %26 = load float, ptr %2, align 4, !tbaa !99
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #11 !PGOFuncName !102 {
  %4 = load float, ptr %1, align 4, !tbaa !99
  %5 = load float, ptr %2, align 4, !tbaa !99
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !99
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !99
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !99
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !99
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !99
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !99
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !103 {
  %3 = load float, ptr %0, align 4, !tbaa !99
  %4 = load float, ptr %1, align 4, !tbaa !99
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !99
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !99
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !99
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !99
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_vert_is_boundary(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1, %9
  %6 = phi ptr [ %10, %9 ], [ %3, %1 ]
  %7 = tail call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef %6) #17, !range !53
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @bmesh_disk_edge_next(ptr noundef %6, ptr noundef %0) #17
  %11 = icmp eq ptr %10, %3
  br i1 %11, label %12, label %5, !llvm.loop !104

12:                                               ; preds = %5, %9, %1
  %13 = phi i8 [ 0, %1 ], [ 0, %9 ], [ 1, %5 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_boundary(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !105 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = icmp eq ptr %7, %3
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %5 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BM_face_share_face_count(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #3 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  %5 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 10, ptr noundef %0) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %2, %26
  %8 = phi i32 [ %27, %26 ], [ 0, %2 ]
  %9 = phi ptr [ %28, %26 ], [ %5, %2 ]
  %10 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 8, ptr noundef nonnull %9) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %7, %22
  %13 = phi i32 [ %23, %22 ], [ %8, %7 ]
  %14 = phi ptr [ %24, %22 ], [ %10, %7 ]
  %15 = icmp eq ptr %14, %0
  %16 = icmp eq ptr %14, %1
  %17 = or i1 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = call zeroext i8 @BM_face_share_edge_check(ptr noundef nonnull %14, ptr noundef %1) #17, !range !53
  %20 = zext nneg i8 %19 to i32
  %21 = add nsw i32 %13, %20
  br label %22

22:                                               ; preds = %18, %12
  %23 = phi i32 [ %13, %12 ], [ %21, %18 ]
  %24 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #17
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %12, !llvm.loop !106

26:                                               ; preds = %22, %7
  %27 = phi i32 [ %8, %7 ], [ %23, %22 ]
  %28 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #17
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %7, !llvm.loop !107

30:                                               ; preds = %26, %2
  %31 = phi i32 [ 0, %2 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  ret i32 %31
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_face_share_edge_check(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  br label %5

5:                                                ; preds = %11, %2
  %6 = phi ptr [ %4, %2 ], [ %13, %11 ]
  %7 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = tail call zeroext i8 @BM_edge_in_face(ptr noundef %8, ptr noundef %1) #17, !range !53
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = icmp eq ptr %13, %4
  br i1 %14, label %15, label %5, !llvm.loop !108

15:                                               ; preds = %11, %5
  %16 = phi i8 [ 1, %5 ], [ 0, %11 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BM_face_share_face_check(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #3 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  %5 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 10, ptr noundef %0) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %2, %22
  %8 = phi ptr [ %23, %22 ], [ %5, %2 ]
  %9 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 8, ptr noundef nonnull %8) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7, %19
  %12 = phi ptr [ %20, %19 ], [ %9, %7 ]
  %13 = icmp eq ptr %12, %0
  %14 = icmp eq ptr %12, %1
  %15 = or i1 %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = call zeroext i8 @BM_face_share_edge_check(ptr noundef nonnull %12, ptr noundef %1) #17, !range !53
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %11, %16
  %20 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #17
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %11, !llvm.loop !109

22:                                               ; preds = %19, %7
  %23 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #17
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %7, !llvm.loop !110

25:                                               ; preds = %22, %16, %2
  %26 = phi i8 [ 0, %2 ], [ 1, %16 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  ret i8 %26
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BM_face_share_edge_count(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %4, %2 ], [ %14, %5 ]
  %7 = phi i32 [ 0, %2 ], [ %12, %5 ]
  %8 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = tail call zeroext i8 @BM_edge_in_face(ptr noundef %9, ptr noundef %1) #17, !range !53
  %11 = zext nneg i8 %10 to i32
  %12 = add nuw nsw i32 %7, %11
  %13 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = icmp eq ptr %14, %4
  br i1 %15, label %16, label %5, !llvm.loop !111

16:                                               ; preds = %5
  ret i32 %12
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_edge_share_face_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6, %16
  %11 = phi ptr [ %18, %16 ], [ %4, %6 ]
  %12 = getelementptr inbounds %struct.BMLoop, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = tail call zeroext i8 @BM_edge_in_face(ptr noundef %1, ptr noundef %13) #17, !range !53
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.BMLoop, ptr %11, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = icmp eq ptr %18, %4
  br i1 %19, label %20, label %10, !llvm.loop !112

20:                                               ; preds = %16, %10, %2, %6
  %21 = phi i8 [ 0, %6 ], [ 0, %2 ], [ 0, %16 ], [ 1, %10 ]
  ret i8 %21
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_edge_share_quad_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %6, %20
  %11 = phi ptr [ %22, %20 ], [ %4, %6 ]
  %12 = getelementptr inbounds %struct.BMLoop, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = getelementptr inbounds %struct.BMFace, ptr %13, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !68
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = tail call zeroext i8 @BM_edge_in_face(ptr noundef %1, ptr noundef nonnull %13) #17, !range !53
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17, %10
  %21 = getelementptr inbounds %struct.BMLoop, ptr %11, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  %23 = icmp eq ptr %22, %4
  br i1 %23, label %24, label %10, !llvm.loop !113

24:                                               ; preds = %20, %17, %2, %6
  %25 = phi i8 [ 0, %6 ], [ 0, %2 ], [ 0, %20 ], [ 1, %17 ]
  ret i8 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BM_edge_share_vert_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = icmp eq ptr %4, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = icmp eq ptr %14, %6
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = icmp eq ptr %14, %10
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %16, %12, %8, %2
  %20 = phi i8 [ 1, %12 ], [ 1, %8 ], [ 1, %2 ], [ %18, %16 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_edge_share_vert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = tail call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef %1, ptr noundef %4) #17, !range !53
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = tail call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef %1, ptr noundef %9) #17, !range !53
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, ptr null, ptr %9
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi ptr [ %4, %2 ], [ %12, %7 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @BM_edge_vert_share_loop(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ %0, %2 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BM_edge_ordered_verts_ex(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #7 {
  %5 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  store ptr %6, ptr %1, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  store ptr %10, ptr %2, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BM_edge_ordered_verts(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @BM_edge_ordered_verts_ex(ptr poison, ptr noundef %1, ptr noundef %2, ptr noundef %5) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BM_loop_is_convex(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  %5 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct.BMVert, ptr %11, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %2, ptr noundef nonnull %9, ptr noundef nonnull %12) #17
  %13 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %17, ptr noundef nonnull %12) #17
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %2) #17
  %18 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct.BMFace, ptr %19, i64 0, i32 4
  %21 = call fastcc float @dot_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %20) #17
  %22 = fcmp ogt float %21, 0.000000e+00
  %23 = zext i1 %22 to i8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #18
  ret i8 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BM_loop_calc_face_angle(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.BMVert, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = getelementptr inbounds %struct.BMLoop, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 2
  %15 = tail call float @angle_v3v3v3(ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %14) #19
  ret float %15
}

; Function Attrs: optsize
declare float @angle_v3v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_loop_calc_face_normal(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.BMVert, ptr %6, i64 0, i32 2
  %8 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2
  %11 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2
  %16 = tail call float @normal_tri_v3(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %10, ptr noundef nonnull %15) #19
  %17 = fcmp une float %16, 0.000000e+00
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %21) #17
  br label %22

22:                                               ; preds = %2, %18
  ret void
}

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !114 {
  %3 = load float, ptr %1, align 4, !tbaa !99
  store float %3, ptr %0, align 4, !tbaa !99
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !99
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !99
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !99
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BM_loop_calc_face_direction(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  %5 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.BMVert, ptr %6, i64 0, i32 2
  %8 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct.BMVert, ptr %11, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef nonnull %12) #17
  %13 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %17, ptr noundef nonnull %7) #17
  call fastcc void @normalize_v3(ptr noundef nonnull %3) #17
  call fastcc void @normalize_v3(ptr noundef nonnull %4) #17
  call fastcc void @add_v3_v3v3(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  tail call fastcc void @normalize_v3(ptr noundef %1) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #9 !PGOFuncName !115 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #11 !PGOFuncName !116 {
  %4 = load float, ptr %1, align 4, !tbaa !99
  %5 = load float, ptr %2, align 4, !tbaa !99
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !99
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !99
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !99
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !99
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !99
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !99
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BM_loop_calc_face_tangent(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  %7 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.BMVert, ptr %10, i64 0, i32 2
  %12 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %11, ptr noundef nonnull %14) #17
  %15 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !51
  %17 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = getelementptr inbounds %struct.BMVert, ptr %18, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %14, ptr noundef nonnull %19) #17
  call fastcc void @normalize_v3(ptr noundef nonnull %3) #17
  call fastcc void @normalize_v3(ptr noundef nonnull %4) #17
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %20 = call fastcc zeroext i8 @compare_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %23 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = getelementptr inbounds %struct.BMFace, ptr %24, i64 0, i32 4
  %26 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %25) #17
  %27 = fcmp olt float %26, 0.000000e+00
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  call fastcc void @negate_v3(ptr noundef nonnull %6) #17
  br label %29

29:                                               ; preds = %28, %22
  call fastcc void @cross_v3_v3v3(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  br label %34

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !42
  %33 = getelementptr inbounds %struct.BMFace, ptr %32, i64 0, i32 4
  call fastcc void @cross_v3_v3v3(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %33) #17
  br label %34

34:                                               ; preds = %30, %29
  tail call fastcc void @normalize_v3(ptr noundef %1) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @compare_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !117 {
  %3 = load float, ptr %0, align 4, !tbaa !99
  %4 = load float, ptr %1, align 4, !tbaa !99
  %5 = fsub float %3, %4
  %6 = tail call float @llvm.fabs.f32(float %5)
  %7 = fcmp ugt float %6, 0x3EB4000000000000
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !99
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !99
  %13 = fsub float %10, %12
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = fcmp ugt float %14, 0x3EB4000000000000
  br i1 %15, label %24, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds float, ptr %0, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !99
  %19 = getelementptr inbounds float, ptr %1, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !99
  %21 = fsub float %18, %20
  %22 = tail call float @llvm.fabs.f32(float %21)
  %23 = fcmp ugt float %22, 0x3EB4000000000000
  br i1 %23, label %24, label %25

24:                                               ; preds = %8, %16, %2
  br label %25

25:                                               ; preds = %16, %24
  %26 = phi i8 [ 0, %24 ], [ 1, %16 ]
  ret i8 %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #11 !PGOFuncName !118 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !99
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !99
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !99
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !99
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BM_edge_calc_face_angle_ex(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #3 {
  %3 = tail call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef %0) #17, !range !53
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = getelementptr inbounds %struct.BMFace, ptr %11, i64 0, i32 4
  %13 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct.BMFace, ptr %14, i64 0, i32 4
  %16 = tail call float @angle_normalized_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %15) #19
  br label %17

17:                                               ; preds = %2, %5
  %18 = phi float [ %16, %5 ], [ %1, %2 ]
  ret float %18
}

; Function Attrs: optsize
declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BM_edge_calc_face_angle(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = tail call float @BM_edge_calc_face_angle_ex(ptr noundef %0, float noundef 0x3FF921FB60000000) #17
  ret float %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BM_edge_calc_face_angle_signed_ex(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #3 {
  %3 = tail call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef %0) #17, !range !53
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = getelementptr inbounds %struct.BMFace, ptr %11, i64 0, i32 4
  %13 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct.BMFace, ptr %14, i64 0, i32 4
  %16 = tail call float @angle_normalized_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %15) #19
  %17 = tail call zeroext i8 @BM_edge_is_convex(ptr noundef %0) #17
  %18 = icmp eq i8 %17, 0
  %19 = fneg float %16
  %20 = select i1 %18, float %19, float %16
  br label %21

21:                                               ; preds = %2, %5
  %22 = phi float [ %20, %5 ], [ %1, %2 ]
  ret float %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BM_edge_calc_face_angle_signed(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = tail call float @BM_edge_calc_face_angle_signed_ex(ptr noundef %0, float noundef 0x3FF921FB60000000) #17
  ret float %2
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BM_edge_calc_face_tangent(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #8 {
  %4 = alloca [3 x float], align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @BM_edge_ordered_verts_ex(ptr poison, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %1) #17
  %7 = load ptr, ptr %5, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %6, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef nonnull %10) #17
  %11 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds %struct.BMFace, ptr %12, i64 0, i32 4
  call fastcc void @cross_v3_v3v3(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %13) #17
  tail call fastcc void @normalize_v3(ptr noundef %2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BM_vert_calc_edge_angle(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @bmesh_disk_edge_next(ptr noundef nonnull %3, ptr noundef nonnull %0) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %5
  %9 = tail call fastcc ptr @bmesh_disk_edge_next(ptr noundef nonnull %6, ptr noundef nonnull %0) #17
  %10 = icmp eq ptr %3, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %3, ptr noundef nonnull %0) #17
  %13 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %6, ptr noundef nonnull %0) #17
  %14 = getelementptr inbounds %struct.BMVert, ptr %12, i64 0, i32 2
  %15 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 2
  %17 = tail call float @angle_v3v3v3(ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16) #19
  %18 = fsub float 0x400921FB60000000, %17
  br label %19

19:                                               ; preds = %1, %5, %8, %11
  %20 = phi float [ %18, %11 ], [ 0x3FF921FB60000000, %8 ], [ 0x3FF921FB60000000, %5 ], [ 0x3FF921FB60000000, %1 ]
  ret float %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BM_vert_calc_shell_factor(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #18
  %3 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 6, ptr noundef %0) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 3
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi float [ 0.000000e+00, %5 ], [ %17, %7 ]
  %9 = phi float [ 0.000000e+00, %5 ], [ %16, %7 ]
  %10 = phi ptr [ %3, %5 ], [ %18, %7 ]
  %11 = call float @BM_loop_calc_face_angle(ptr noundef nonnull %10) #17
  %12 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = getelementptr inbounds %struct.BMFace, ptr %13, i64 0, i32 4
  %15 = call fastcc float @shell_v3v3_normalized_to_dist(ptr noundef nonnull %6, ptr noundef nonnull %14) #17
  %16 = call float @llvm.fmuladd.f32(float %15, float %11, float %9)
  %17 = fadd float %8, %11
  %18 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !llvm.loop !119

20:                                               ; preds = %7, %1
  %21 = phi float [ 0.000000e+00, %1 ], [ %16, %7 ]
  %22 = phi float [ 0.000000e+00, %1 ], [ %17, %7 ]
  %23 = fcmp une float %22, 0.000000e+00
  %24 = fdiv float %21, %22
  %25 = select i1 %23, float %24, float 1.000000e+00
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #18
  ret float %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @shell_v3v3_normalized_to_dist(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !120 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %1) #17
  %4 = tail call float @llvm.fabs.f32(float %3)
  %5 = fcmp olt float %4, 0x3E45798EE0000000
  %6 = fdiv float 1.000000e+00, %4
  %7 = select i1 %5, float 1.000000e+00, float %6
  ret float %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BM_vert_calc_shell_factor_ex(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #18
  %4 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 6, ptr noundef %0) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %39, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 3
  br label %8

8:                                                ; preds = %6, %25
  %9 = phi i32 [ 0, %6 ], [ %28, %25 ]
  %10 = phi float [ 0.000000e+00, %6 ], [ %27, %25 ]
  %11 = phi float [ 0.000000e+00, %6 ], [ %26, %25 ]
  %12 = phi ptr [ %4, %6 ], [ %29, %25 ]
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %14, i8 noundef zeroext %1) #17
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %8
  %18 = call float @BM_loop_calc_face_angle(ptr noundef nonnull %12) #17
  %19 = load ptr, ptr %13, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct.BMFace, ptr %19, i64 0, i32 4
  %21 = call fastcc float @shell_v3v3_normalized_to_dist(ptr noundef nonnull %7, ptr noundef nonnull %20) #17
  %22 = call float @llvm.fmuladd.f32(float %21, float %18, float %11)
  %23 = fadd float %10, %18
  %24 = add nsw i32 %9, 1
  br label %25

25:                                               ; preds = %17, %8
  %26 = phi float [ %22, %17 ], [ %11, %8 ]
  %27 = phi float [ %23, %17 ], [ %10, %8 ]
  %28 = phi i32 [ %24, %17 ], [ %9, %8 ]
  %29 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #17
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %8, !llvm.loop !121

31:                                               ; preds = %25
  %32 = fcmp une float %27, 0.000000e+00
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = fdiv float %26, %27
  br label %39

35:                                               ; preds = %31
  %36 = icmp eq i32 %28, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  %38 = call float @BM_vert_calc_shell_factor(ptr noundef %0) #17
  br label %39

39:                                               ; preds = %2, %35, %37, %33
  %40 = phi float [ %34, %33 ], [ %38, %37 ], [ 1.000000e+00, %35 ], [ 1.000000e+00, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  ret float %40
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #4 !PGOFuncName !122 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !123
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BM_vert_calc_mean_tagged_edge_length(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #18
  %3 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 4, ptr noundef %0) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1, %15
  %6 = phi float [ %16, %15 ], [ 0.000000e+00, %1 ]
  %7 = phi i32 [ %18, %15 ], [ 0, %1 ]
  %8 = phi ptr [ %17, %15 ], [ %3, %1 ]
  %9 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %8, ptr noundef %0) #17
  %10 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %9, i8 noundef zeroext 16) #17
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = call float @BM_edge_calc_length(ptr noundef nonnull %8) #17
  %14 = fadd float %6, %13
  br label %15

15:                                               ; preds = %12, %5
  %16 = phi float [ %14, %12 ], [ %6, %5 ]
  %17 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #17
  %18 = add nuw nsw i32 %7, 1
  %19 = icmp eq ptr %17, null
  br i1 %19, label %20, label %5, !llvm.loop !124

20:                                               ; preds = %15
  %21 = sitofp i32 %18 to float
  %22 = fdiv float %16, %21
  br label %23

23:                                               ; preds = %1, %20
  %24 = phi float [ %22, %20 ], [ 0.000000e+00, %1 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #18
  ret float %24
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BM_face_find_shortest_loop(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  br label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %5, %1 ], [ %15, %6 ]
  %8 = phi ptr [ %3, %1 ], [ %13, %6 ]
  %9 = phi float [ 0x47EFFFFFE0000000, %1 ], [ %19, %6 ]
  %10 = phi ptr [ null, %1 ], [ %20, %6 ]
  %11 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 2
  %12 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 2
  %17 = tail call fastcc float @len_squared_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %16) #17
  %18 = fcmp ugt float %17, %9
  %19 = select i1 %18, float %9, float %17
  %20 = select i1 %18, ptr %10, ptr %8
  %21 = icmp eq ptr %13, %3
  br i1 %21, label %22, label %6, !llvm.loop !125

22:                                               ; preds = %6
  ret ptr %20
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BM_face_find_longest_loop(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  br label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %5, %1 ], [ %15, %6 ]
  %8 = phi ptr [ %3, %1 ], [ %13, %6 ]
  %9 = phi float [ 0.000000e+00, %1 ], [ %19, %6 ]
  %10 = phi ptr [ null, %1 ], [ %20, %6 ]
  %11 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 2
  %12 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 2
  %17 = tail call fastcc float @len_squared_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %16) #17
  %18 = fcmp ult float %17, %9
  %19 = select i1 %18, float %9, float %17
  %20 = select i1 %18, ptr %10, ptr %8
  %21 = icmp eq ptr %13, %3
  br i1 %21, label %22, label %6, !llvm.loop !126

22:                                               ; preds = %6
  ret ptr %20
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_edge_exists(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %6, %21
  %11 = phi ptr [ %19, %21 ], [ %4, %6 ]
  %12 = phi ptr [ %22, %21 ], [ %8, %6 ]
  %13 = tail call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef %11, ptr noundef %1) #17, !range !53
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = tail call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef %12, ptr noundef %0) #17, !range !53
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = tail call fastcc ptr @bmesh_disk_edge_next(ptr noundef %11, ptr noundef %0) #17
  %20 = icmp eq ptr %19, %4
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = tail call fastcc ptr @bmesh_disk_edge_next(ptr noundef %12, ptr noundef %1) #17
  %23 = icmp eq ptr %22, %8
  br i1 %23, label %24, label %10, !llvm.loop !127

24:                                               ; preds = %21, %18, %10, %15, %2, %6
  %25 = phi ptr [ null, %6 ], [ null, %2 ], [ null, %21 ], [ null, %18 ], [ %12, %15 ], [ %11, %10 ]
  ret ptr %25
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_edge_find_double(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %0, %1 ], [ %8, %10 ]
  %8 = tail call fastcc ptr @bmesh_disk_edge_next(ptr noundef %7, ptr noundef %3) #17
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef %8, ptr noundef %5) #17, !range !53
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %6, label %13, !llvm.loop !128

13:                                               ; preds = %6, %10
  %14 = phi ptr [ %8, %10 ], [ null, %6 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BM_face_exists(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #3 {
  %4 = alloca %struct.BMIter, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  %6 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 6, ptr noundef %5) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %54, label %8

8:                                                ; preds = %3
  %9 = icmp slt i32 %1, 1
  %10 = zext nneg i32 %1 to i64
  br label %11

11:                                               ; preds = %8, %50
  %12 = phi i8 [ 0, %8 ], [ %51, %50 ]
  %13 = phi ptr [ %6, %8 ], [ %52, %50 ]
  %14 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct.BMFace, ptr %15, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !68
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %50

19:                                               ; preds = %11
  %20 = icmp ne i8 %12, 0
  %21 = or i1 %20, %9
  %22 = select i1 %20, i8 %12, i8 1
  br i1 %21, label %32, label %23

23:                                               ; preds = %19, %23
  %24 = phi i64 [ %30, %23 ], [ 0, %19 ]
  %25 = getelementptr inbounds ptr, ptr %0, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  %27 = getelementptr inbounds %struct.BMHeader, ptr %26, i64 0, i32 4
  %28 = load i8, ptr %27, align 2, !tbaa !74
  %29 = or i8 %28, 4
  store i8 %29, ptr %27, align 2, !tbaa !74
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %10
  br i1 %31, label %32, label %23, !llvm.loop !129

32:                                               ; preds = %23, %19
  %33 = phi i8 [ %22, %19 ], [ 1, %23 ]
  %34 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !51
  br label %36

36:                                               ; preds = %44, %32
  %37 = phi ptr [ %35, %32 ], [ %46, %44 ]
  %38 = getelementptr inbounds %struct.BMLoop, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !47
  %40 = getelementptr inbounds %struct.BMHeader, ptr %39, i64 0, i32 4
  %41 = load i8, ptr %40, align 2, !tbaa !74
  %42 = and i8 %41, 4
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.BMLoop, ptr %37, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !51
  %47 = icmp eq ptr %46, %13
  br i1 %47, label %48, label %36, !llvm.loop !130

48:                                               ; preds = %44
  %49 = icmp eq ptr %2, null
  br i1 %49, label %61, label %57

50:                                               ; preds = %36, %11
  %51 = phi i8 [ %12, %11 ], [ %33, %36 ]
  %52 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #17
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %11, !llvm.loop !131

54:                                               ; preds = %50, %3
  %55 = phi i8 [ 0, %3 ], [ %51, %50 ]
  %56 = icmp eq ptr %2, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %54, %48
  %58 = phi ptr [ %15, %48 ], [ null, %54 ]
  %59 = phi i8 [ 1, %48 ], [ 0, %54 ]
  %60 = phi i8 [ %33, %48 ], [ %55, %54 ]
  store ptr %58, ptr %2, align 8, !tbaa !48
  br label %61

61:                                               ; preds = %57, %48, %54
  %62 = phi i8 [ 0, %54 ], [ 1, %48 ], [ %59, %57 ]
  %63 = phi i8 [ %55, %54 ], [ %33, %48 ], [ %60, %57 ]
  %64 = icmp eq i8 %63, 1
  %65 = icmp sgt i32 %1, 0
  %66 = and i1 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = zext nneg i32 %1 to i64
  br label %69

69:                                               ; preds = %67, %69
  %70 = phi i64 [ 0, %67 ], [ %76, %69 ]
  %71 = getelementptr inbounds ptr, ptr %0, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !48
  %73 = getelementptr inbounds %struct.BMHeader, ptr %72, i64 0, i32 4
  %74 = load i8, ptr %73, align 2, !tbaa !74
  %75 = and i8 %74, -5
  store i8 %75, ptr %73, align 2, !tbaa !74
  %76 = add nuw nsw i64 %70, 1
  %77 = icmp eq i64 %76, %68
  br i1 %77, label %78, label %69, !llvm.loop !132

78:                                               ; preds = %69, %61
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  ret i8 %62
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BM_face_exists_multi(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #18
  %6 = icmp slt i32 %2, 1
  br i1 %6, label %131, label %7

7:                                                ; preds = %3
  %8 = zext nneg i32 %2 to i64
  br label %12

9:                                                ; preds = %38
  br i1 %6, label %131, label %10

10:                                               ; preds = %9
  %11 = zext nneg i32 %2 to i64
  br label %44

12:                                               ; preds = %7, %38
  %13 = phi i64 [ 0, %7 ], [ %39, %38 ]
  %14 = getelementptr inbounds ptr, ptr %1, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 8, ptr noundef %15) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %12, %26
  %19 = phi ptr [ %27, %26 ], [ %16, %12 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %19, i8 noundef zeroext -128) #17
  %20 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 9, ptr noundef nonnull %19) #17
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18, %22
  %23 = phi ptr [ %24, %22 ], [ %20, %18 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %23, i8 noundef zeroext -128) #17
  %24 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #17
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %22, !llvm.loop !133

26:                                               ; preds = %22, %18
  %27 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %18, !llvm.loop !134

29:                                               ; preds = %26, %12
  %30 = getelementptr inbounds ptr, ptr %0, i64 %13
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  %32 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 4, ptr noundef %31) #17
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %29, %34
  %35 = phi ptr [ %36, %34 ], [ %32, %29 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %35, i8 noundef zeroext -128) #17
  %36 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #17
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %34, !llvm.loop !135

38:                                               ; preds = %34, %29
  %39 = add nuw nsw i64 %13, 1
  %40 = icmp eq i64 %39, %8
  br i1 %40, label %9, label %12, !llvm.loop !136

41:                                               ; preds = %44
  br i1 %6, label %131, label %42

42:                                               ; preds = %41
  %43 = zext nneg i32 %2 to i64
  br label %52

44:                                               ; preds = %10, %44
  %45 = phi i64 [ 0, %10 ], [ %50, %44 ]
  %46 = getelementptr inbounds ptr, ptr %0, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !48
  call fastcc void @_bm_elem_flag_enable(ptr noundef %47, i8 noundef zeroext -128) #17
  %48 = getelementptr inbounds ptr, ptr %1, i64 %45
  %49 = load ptr, ptr %48, align 8, !tbaa !48
  call fastcc void @_bm_elem_flag_enable(ptr noundef %49, i8 noundef zeroext -128) #17
  %50 = add nuw nsw i64 %45, 1
  %51 = icmp eq i64 %50, %11
  br i1 %51, label %41, label %44, !llvm.loop !137

52:                                               ; preds = %42, %80
  %53 = phi i64 [ 0, %42 ], [ %82, %80 ]
  %54 = phi i32 [ 0, %42 ], [ %81, %80 ]
  %55 = getelementptr inbounds ptr, ptr %1, i64 %53
  %56 = load ptr, ptr %55, align 8, !tbaa !48
  %57 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 8, ptr noundef %56) #17
  %58 = icmp eq ptr %57, null
  br i1 %58, label %80, label %59

59:                                               ; preds = %52, %76
  %60 = phi i32 [ %77, %76 ], [ %54, %52 ]
  %61 = phi ptr [ %78, %76 ], [ %57, %52 ]
  %62 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %61, i8 noundef zeroext -128) #17
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %59
  %65 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 9, ptr noundef nonnull %61) #17
  %66 = icmp eq ptr %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %64, %71
  %68 = phi ptr [ %72, %71 ], [ %65, %64 ]
  %69 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %68, i8 noundef zeroext -128) #17
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #17
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %67, !llvm.loop !138

74:                                               ; preds = %71, %64
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %61, i8 noundef zeroext -128) #17
  %75 = add nsw i32 %60, 1
  br label %76

76:                                               ; preds = %67, %74, %59
  %77 = phi i32 [ %60, %59 ], [ %75, %74 ], [ %60, %67 ]
  %78 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #17
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %59, !llvm.loop !139

80:                                               ; preds = %76, %52
  %81 = phi i32 [ %54, %52 ], [ %77, %76 ]
  %82 = add nuw nsw i64 %53, 1
  %83 = icmp eq i64 %82, %43
  br i1 %83, label %84, label %52, !llvm.loop !140

84:                                               ; preds = %80
  %85 = icmp eq i32 %81, 0
  %86 = or i1 %85, %6
  %87 = xor i1 %85, true
  %88 = zext i1 %87 to i8
  br i1 %86, label %131, label %89

89:                                               ; preds = %84
  %90 = zext nneg i32 %2 to i64
  br label %94

91:                                               ; preds = %128, %94
  %92 = add nuw nsw i64 %95, 1
  %93 = icmp eq i64 %92, %90
  br i1 %93, label %131, label %94, !llvm.loop !141

94:                                               ; preds = %89, %91
  %95 = phi i64 [ 0, %89 ], [ %92, %91 ]
  %96 = getelementptr inbounds ptr, ptr %0, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !48
  %98 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 4, ptr noundef %97) #17
  %99 = icmp eq ptr %98, null
  br i1 %99, label %91, label %100

100:                                              ; preds = %94, %128
  %101 = phi ptr [ %129, %128 ], [ %98, %94 ]
  %102 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %101, i8 noundef zeroext -128) #17
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %128

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.BMEdge, ptr %101, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !59
  %107 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %106, i8 noundef zeroext -128) #17
  %108 = icmp eq i8 %107, 1
  br i1 %108, label %109, label %128

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.BMEdge, ptr %101, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !60
  %112 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %111, i8 noundef zeroext -128) #17
  %113 = icmp eq i8 %112, 1
  br i1 %113, label %114, label %128

114:                                              ; preds = %109
  %115 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 8, ptr noundef nonnull %101) #17
  %116 = icmp eq ptr %115, null
  br i1 %116, label %131, label %117

117:                                              ; preds = %114, %117
  %118 = phi i32 [ %123, %117 ], [ 0, %114 ]
  %119 = phi ptr [ %124, %117 ], [ %115, %114 ]
  %120 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %119, i8 noundef zeroext -128) #17
  %121 = icmp ne i8 %120, 0
  %122 = zext i1 %121 to i32
  %123 = add nuw nsw i32 %118, %122
  %124 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #17
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %117, !llvm.loop !142

126:                                              ; preds = %117
  %127 = icmp eq i32 %123, 2
  br i1 %127, label %128, label %131

128:                                              ; preds = %126, %100, %104, %109
  %129 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #17
  %130 = icmp eq ptr %129, null
  br i1 %130, label %91, label %100, !llvm.loop !143

131:                                              ; preds = %91, %114, %126, %84, %3, %9, %41
  %132 = phi i8 [ %88, %84 ], [ 0, %41 ], [ 0, %9 ], [ 0, %3 ], [ 0, %126 ], [ 0, %114 ], [ 1, %91 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  ret i8 %132
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #11 !PGOFuncName !144 {
  %3 = xor i8 %1, -1
  %4 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !123
  %6 = and i8 %5, %3
  store i8 %6, ptr %4, align 1, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #11 !PGOFuncName !145 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !123
  %5 = or i8 %4, %1
  store i8 %5, ptr %3, align 1, !tbaa !123
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BM_face_exists_multi_edge(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = sext i32 %1 to i64
  %4 = shl nsw i64 %3, 3
  %5 = alloca i8, i64 %4, align 16
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %2
  %8 = add nsw i32 %1, -1
  %9 = zext nneg i32 %1 to i64
  br label %14

10:                                               ; preds = %14
  %11 = add nuw nsw i64 %15, 1
  %12 = trunc i64 %15 to i32
  %13 = icmp eq i64 %11, %9
  br i1 %13, label %28, label %14, !llvm.loop !146

14:                                               ; preds = %7, %10
  %15 = phi i64 [ 0, %7 ], [ %11, %10 ]
  %16 = phi i32 [ %8, %7 ], [ %12, %10 ]
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds ptr, ptr %0, i64 %15
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = tail call ptr @BM_edge_share_vert(ptr noundef %19, ptr noundef %21) #17
  %23 = getelementptr inbounds ptr, ptr %5, i64 %17
  store ptr %22, ptr %23, align 8, !tbaa !48
  %24 = icmp eq ptr %22, null
  br i1 %24, label %25, label %10

25:                                               ; preds = %14
  %26 = load ptr, ptr @stderr, align 8, !tbaa !48
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.BM_face_exists_multi_edge, i32 noundef 1764, ptr noundef nonnull @.str.2) #20
  br label %30

28:                                               ; preds = %10, %2
  %29 = call zeroext i8 @BM_face_exists_multi(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %1) #17, !range !53
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i8 [ 0, %25 ], [ %29, %28 ]
  ret i8 %31
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BM_face_exists_overlap(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #3 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  store ptr null, ptr %5, align 8, !tbaa !48
  %6 = icmp eq ptr %2, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  store ptr null, ptr %2, align 8, !tbaa !48
  br label %8

8:                                                ; preds = %7, %3
  %9 = icmp sgt i32 %1, 0
  br i1 %9, label %10, label %53

10:                                               ; preds = %8
  %11 = zext nneg i32 %1 to i64
  br label %12

12:                                               ; preds = %10, %37
  %13 = phi i64 [ 0, %10 ], [ %39, %37 ]
  %14 = phi i8 [ 0, %10 ], [ %38, %37 ]
  %15 = getelementptr inbounds ptr, ptr %0, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  %17 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 5, ptr noundef %16) #17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %37, label %19

19:                                               ; preds = %12, %34
  %20 = phi ptr [ %35, %34 ], [ %17, %12 ]
  %21 = getelementptr inbounds %struct.BMHeader, ptr %20, i64 0, i32 4
  %22 = load i8, ptr %21, align 2, !tbaa !147
  %23 = and i8 %22, 4
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = call i32 @BM_verts_in_face_count(ptr noundef nonnull %20, ptr noundef %0, i32 noundef %1) #17
  %27 = icmp slt i32 %26, %1
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  br i1 %6, label %37, label %29

29:                                               ; preds = %28
  store ptr %20, ptr %2, align 8, !tbaa !48
  br label %37

30:                                               ; preds = %25
  %31 = load i8, ptr %21, align 2, !tbaa !147
  %32 = or i8 %31, 4
  store i8 %32, ptr %21, align 2, !tbaa !147
  %33 = alloca [16 x i8], align 16
  call void @BLI_linklist_prepend_nlink(ptr noundef nonnull %5, ptr noundef nonnull %20, ptr noundef nonnull %33) #19
  br label %34

34:                                               ; preds = %19, %30
  %35 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #17
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %19, !llvm.loop !148

37:                                               ; preds = %34, %12, %28, %29
  %38 = phi i8 [ 1, %29 ], [ 1, %28 ], [ %14, %12 ], [ %14, %34 ]
  %39 = add nuw nsw i64 %13, 1
  %40 = icmp eq i64 %39, %11
  br i1 %40, label %41, label %12, !llvm.loop !149

41:                                               ; preds = %37
  %42 = load ptr, ptr %5, align 8, !tbaa !48
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %41, %44
  %45 = phi ptr [ %51, %44 ], [ %42, %41 ]
  %46 = getelementptr inbounds %struct.LinkNode, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !150
  %48 = getelementptr inbounds %struct.BMHeader, ptr %47, i64 0, i32 4
  %49 = load i8, ptr %48, align 2, !tbaa !147
  %50 = and i8 %49, -5
  store i8 %50, ptr %48, align 2, !tbaa !147
  %51 = load ptr, ptr %45, align 8, !tbaa !152
  store ptr %51, ptr %5, align 8, !tbaa !48
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %44, !llvm.loop !153

53:                                               ; preds = %44, %8, %41
  %54 = phi i8 [ %38, %41 ], [ 0, %8 ], [ %38, %44 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  ret i8 %54
}

; Function Attrs: optsize
declare void @BLI_linklist_prepend_nlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BM_face_exists_overlap_subset(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  store ptr null, ptr %4, align 8, !tbaa !48
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %98

6:                                                ; preds = %2
  %7 = zext nneg i32 %1 to i64
  br label %8

8:                                                ; preds = %6, %66
  %9 = phi i8 [ 0, %6 ], [ %69, %66 ]
  %10 = phi i8 [ 0, %6 ], [ %68, %66 ]
  %11 = phi i32 [ 0, %6 ], [ %70, %66 ]
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 5, ptr noundef %14) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %66, label %17

17:                                               ; preds = %8, %60
  %18 = phi ptr [ %64, %60 ], [ %15, %8 ]
  %19 = phi i8 [ %63, %60 ], [ %9, %8 ]
  %20 = phi i8 [ %62, %60 ], [ %10, %8 ]
  %21 = phi i32 [ %61, %60 ], [ %11, %8 ]
  %22 = getelementptr inbounds %struct.BMFace, ptr %18, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !68
  %24 = icmp sgt i32 %23, %1
  br i1 %24, label %60, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.BMHeader, ptr %18, i64 0, i32 4
  %27 = load i8, ptr %26, align 2, !tbaa !147
  %28 = and i8 %27, 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %25
  %31 = icmp eq i8 %20, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %30, %32
  %33 = phi i64 [ %39, %32 ], [ 0, %30 ]
  %34 = getelementptr inbounds ptr, ptr %0, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !48
  %36 = getelementptr inbounds %struct.BMHeader, ptr %35, i64 0, i32 4
  %37 = load i8, ptr %36, align 2, !tbaa !74
  %38 = or i8 %37, 4
  store i8 %38, ptr %36, align 2, !tbaa !74
  %39 = add nuw nsw i64 %33, 1
  %40 = icmp eq i64 %39, %7
  br i1 %40, label %41, label %32, !llvm.loop !154

41:                                               ; preds = %32, %30
  %42 = phi i32 [ %21, %30 ], [ %1, %32 ]
  %43 = getelementptr inbounds %struct.BMFace, ptr %18, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !64
  br label %45

45:                                               ; preds = %53, %41
  %46 = phi ptr [ %44, %41 ], [ %55, %53 ]
  %47 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !47
  %49 = getelementptr inbounds %struct.BMHeader, ptr %48, i64 0, i32 4
  %50 = load i8, ptr %49, align 2, !tbaa !74
  %51 = and i8 %50, 4
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !51
  %56 = icmp eq ptr %55, %44
  br i1 %56, label %66, label %45, !llvm.loop !155

57:                                               ; preds = %45
  %58 = or disjoint i8 %27, 4
  store i8 %58, ptr %26, align 2, !tbaa !147
  %59 = alloca [16 x i8], align 16
  call void @BLI_linklist_prepend_nlink(ptr noundef nonnull %4, ptr noundef nonnull %18, ptr noundef nonnull %59) #19
  br label %60

60:                                               ; preds = %57, %17, %25
  %61 = phi i32 [ %21, %25 ], [ %21, %17 ], [ %42, %57 ]
  %62 = phi i8 [ %20, %25 ], [ %20, %17 ], [ 1, %57 ]
  %63 = phi i8 [ %19, %25 ], [ %19, %17 ], [ 0, %57 ]
  %64 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #17
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %17, !llvm.loop !156

66:                                               ; preds = %60, %53, %8
  %67 = phi i32 [ %11, %8 ], [ %42, %53 ], [ %61, %60 ]
  %68 = phi i8 [ %10, %8 ], [ 1, %53 ], [ %62, %60 ]
  %69 = phi i8 [ %9, %8 ], [ 1, %53 ], [ %63, %60 ]
  %70 = add nsw i32 %67, 1
  %71 = icmp slt i32 %70, %1
  br i1 %71, label %8, label %72, !llvm.loop !157

72:                                               ; preds = %66
  %73 = icmp eq i8 %68, 1
  %74 = and i1 %73, %5
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = zext nneg i32 %1 to i64
  br label %77

77:                                               ; preds = %75, %77
  %78 = phi i64 [ 0, %75 ], [ %84, %77 ]
  %79 = getelementptr inbounds ptr, ptr %0, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !48
  %81 = getelementptr inbounds %struct.BMHeader, ptr %80, i64 0, i32 4
  %82 = load i8, ptr %81, align 2, !tbaa !74
  %83 = and i8 %82, -5
  store i8 %83, ptr %81, align 2, !tbaa !74
  %84 = add nuw nsw i64 %78, 1
  %85 = icmp eq i64 %84, %76
  br i1 %85, label %86, label %77, !llvm.loop !158

86:                                               ; preds = %77, %72
  %87 = load ptr, ptr %4, align 8, !tbaa !48
  %88 = icmp eq ptr %87, null
  br i1 %88, label %98, label %89

89:                                               ; preds = %86, %89
  %90 = phi ptr [ %96, %89 ], [ %87, %86 ]
  %91 = getelementptr inbounds %struct.LinkNode, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !150
  %93 = getelementptr inbounds %struct.BMHeader, ptr %92, i64 0, i32 4
  %94 = load i8, ptr %93, align 2, !tbaa !147
  %95 = and i8 %94, -5
  store i8 %95, ptr %93, align 2, !tbaa !147
  %96 = load ptr, ptr %90, align 8, !tbaa !152
  store ptr %96, ptr %4, align 8, !tbaa !48
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %89, !llvm.loop !159

98:                                               ; preds = %89, %2, %86
  %99 = phi i8 [ %69, %86 ], [ 0, %2 ], [ %69, %89 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  ret i8 %99
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BM_vert_is_all_edge_flag_test(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  %9 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %0) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = icmp eq i8 %2, 0
  br label %14

13:                                               ; preds = %22, %8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  br label %26

14:                                               ; preds = %11, %22
  %15 = phi ptr [ %9, %11 ], [ %23, %22 ]
  br i1 %12, label %19, label %16

16:                                               ; preds = %14
  %17 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %15, i8 noundef zeroext 2) #17
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %14
  %20 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %15, i8 noundef zeroext %1) #17
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16, %19
  %23 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #17
  %24 = icmp eq ptr %23, null
  br i1 %24, label %13, label %14, !llvm.loop !160

25:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  br label %26

26:                                               ; preds = %3, %13, %25
  %27 = phi i8 [ 0, %25 ], [ 1, %13 ], [ 1, %3 ]
  ret i8 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BM_vert_is_all_face_flag_test(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  %9 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 5, ptr noundef nonnull %0) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = icmp eq i8 %2, 0
  br label %14

13:                                               ; preds = %22, %8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  br label %26

14:                                               ; preds = %11, %22
  %15 = phi ptr [ %9, %11 ], [ %23, %22 ]
  br i1 %12, label %19, label %16

16:                                               ; preds = %14
  %17 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %15, i8 noundef zeroext 2) #17
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %14
  %20 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %15, i8 noundef zeroext %1) #17
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16, %19
  %23 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #17
  %24 = icmp eq ptr %23, null
  br i1 %24, label %13, label %14, !llvm.loop !161

25:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  br label %26

26:                                               ; preds = %3, %13, %25
  %27 = phi i8 [ 0, %25 ], [ 1, %13 ], [ 1, %3 ]
  ret i8 %27
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_edge_is_all_face_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = icmp eq i8 %2, 0
  br label %9

9:                                                ; preds = %7, %19
  %10 = phi ptr [ %21, %19 ], [ %5, %7 ]
  %11 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  br i1 %8, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %12, i8 noundef zeroext 2) #17
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9, %13
  %17 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %12, i8 noundef zeroext %1) #17
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %13, %16
  %20 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = icmp eq ptr %21, %5
  br i1 %22, label %23, label %9, !llvm.loop !162

23:                                               ; preds = %19, %16, %3
  %24 = phi i8 [ 1, %3 ], [ 1, %19 ], [ 0, %16 ]
  ret i8 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BM_edge_is_any_vert_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %4, i8 noundef zeroext %1) #17
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %9, i8 noundef zeroext %1) #17
  %11 = icmp ne i8 %10, 0
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi i8 [ 1, %2 ], [ %12, %7 ]
  ret i8 %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_face_is_any_vert_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  br label %5

5:                                                ; preds = %11, %2
  %6 = phi ptr [ %4, %2 ], [ %13, %11 ]
  %7 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %8, i8 noundef zeroext %1) #17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = icmp eq ptr %13, %4
  br i1 %14, label %15, label %5, !llvm.loop !163

15:                                               ; preds = %11, %5
  %16 = phi i8 [ 1, %5 ], [ 0, %11 ]
  ret i8 %16
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_face_is_any_edge_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  br label %5

5:                                                ; preds = %11, %2
  %6 = phi ptr [ %4, %2 ], [ %13, %11 ]
  %7 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %8, i8 noundef zeroext %1) #17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = icmp eq ptr %13, %4
  br i1 %14, label %15, label %5, !llvm.loop !164

15:                                               ; preds = %11, %5
  %16 = phi i8 [ 1, %5 ], [ 0, %11 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BM_face_is_normal_valid(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #18
  %3 = call float @BM_face_calc_normal(ptr noundef %0, ptr noundef nonnull %2) #19
  %4 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 4
  %5 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %2, ptr noundef nonnull %4) #17
  %6 = fcmp olt float %5, 0x3E45798EC0000000
  %7 = zext i1 %6 to i8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #18
  ret i8 %7
}

; Function Attrs: optsize
declare float @BM_face_calc_normal(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BM_mesh_calc_volume(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = alloca float, align 4
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  store float 0.000000e+00, ptr %3, align 4, !tbaa !99
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  %5 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %2 ]
  call fastcc void @bm_mesh_calc_volume_face(ptr noundef nonnull %8, ptr noundef nonnull %3) #17
  %9 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7, !llvm.loop !165

11:                                               ; preds = %7
  %12 = load float, ptr %3, align 4, !tbaa !99
  br label %13

13:                                               ; preds = %11, %2
  %14 = phi float [ %12, %11 ], [ 0.000000e+00, %2 ]
  %15 = icmp eq i8 %1, 0
  %16 = call float @llvm.fabs.f32(float %14)
  %17 = select i1 %15, float %16, float %14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  ret float %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_mesh_calc_volume_face(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #3 !PGOFuncName !166 {
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !68
  %6 = add i32 %5, -2
  %7 = sext i32 %5 to i64
  %8 = shl nsw i64 %7, 3
  %9 = alloca i8, i64 %8, align 16
  %10 = sext i32 %6 to i64
  %11 = mul nsw i64 %10, 12
  %12 = alloca i8, i64 %11, align 16
  call void @BM_face_calc_tessellation(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %12) #19
  %13 = icmp sgt i32 %5, 2
  br i1 %13, label %14, label %48

14:                                               ; preds = %2
  %15 = load float, ptr %1, align 4, !tbaa !99
  %16 = zext nneg i32 %6 to i64
  br label %17

17:                                               ; preds = %14, %17
  %18 = phi i64 [ 0, %14 ], [ %46, %17 ]
  %19 = phi float [ %15, %14 ], [ %45, %17 ]
  %20 = getelementptr inbounds [3 x i32], ptr %12, i64 %18
  %21 = load i32, ptr %20, align 4, !tbaa !167
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %9, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  %27 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 2
  %28 = getelementptr inbounds [3 x i32], ptr %12, i64 %18, i64 1
  %29 = load i32, ptr %28, align 4, !tbaa !167
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %9, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !48
  %33 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !47
  %35 = getelementptr inbounds %struct.BMVert, ptr %34, i64 0, i32 2
  %36 = getelementptr inbounds [3 x i32], ptr %12, i64 %18, i64 2
  %37 = load i32, ptr %36, align 4, !tbaa !167
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %9, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !48
  %41 = getelementptr inbounds %struct.BMLoop, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !47
  %43 = getelementptr inbounds %struct.BMVert, ptr %42, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %35, ptr noundef nonnull %43) #17
  %44 = call fastcc float @dot_v3v3(ptr noundef nonnull %27, ptr noundef nonnull %3) #17
  %45 = call float @llvm.fmuladd.f32(float %44, float 0x3FC5555560000000, float %19)
  store float %45, ptr %1, align 4, !tbaa !99
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  %46 = add nuw nsw i64 %18, 1
  %47 = icmp eq i64 %46, %16
  br i1 %47, label %48, label %17, !llvm.loop !168

48:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BM_mesh_calc_face_groups(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr noundef readonly %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6) local_unnamed_addr #3 {
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca %struct.BMIter, align 8
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %11 = tail call ptr %10(i64 noundef 256, ptr noundef nonnull @__func__.BM_mesh_calc_face_groups) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #18
  %12 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %7
  %15 = icmp eq i8 %5, 0
  br label %16

16:                                               ; preds = %14, %26
  %17 = phi i32 [ 0, %14 ], [ %29, %26 ]
  %18 = phi ptr [ %12, %14 ], [ %28, %26 ]
  %19 = phi i32 [ 0, %14 ], [ %27, %26 ]
  br i1 %15, label %23, label %20

20:                                               ; preds = %16
  %21 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %18, i8 noundef zeroext %5) #17
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20, %16
  %24 = add i32 %19, 1
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %18, i8 noundef zeroext 16) #17
  br label %26

25:                                               ; preds = %20
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %18, i8 noundef zeroext 16) #17
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ %19, %25 ]
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %18, i32 noundef %17) #17
  %28 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #17
  %29 = add nuw nsw i32 %17, 1
  %30 = icmp eq ptr %28, null
  br i1 %30, label %31, label %16, !llvm.loop !169

31:                                               ; preds = %26, %7
  %32 = phi i32 [ 0, %7 ], [ %27, %26 ]
  %33 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %34 = load i8, ptr %33, align 4, !tbaa !170
  %35 = and i8 %34, -9
  store i8 %35, ptr %33, align 4, !tbaa !170
  %36 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %37 = zext i32 %32 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = call ptr %36(i64 noundef %38, ptr noundef nonnull @__func__.BM_mesh_calc_face_groups) #19
  %40 = icmp eq i32 %32, 0
  br i1 %40, label %181, label %41

41:                                               ; preds = %31
  %42 = zext i8 %6 to i32
  %43 = and i32 %42, 2
  %44 = icmp eq i32 %43, 0
  %45 = icmp eq ptr %3, null
  %46 = and i32 %42, 1
  %47 = icmp eq i32 %46, 0
  br label %48

48:                                               ; preds = %41, %174
  %49 = phi i64 [ 0, %41 ], [ %177, %174 ]
  %50 = phi i32 [ 32, %41 ], [ %77, %174 ]
  %51 = phi ptr [ %11, %41 ], [ %76, %174 ]
  %52 = phi i32 [ 0, %41 ], [ %176, %174 ]
  %53 = phi i32 [ 0, %41 ], [ %175, %174 ]
  %54 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #17
  %55 = icmp eq ptr %54, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %48, %61
  %57 = phi ptr [ %62, %61 ], [ %54, %48 ]
  %58 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %57, i8 noundef zeroext 16) #17
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %57, i8 noundef zeroext 16) #17
  store ptr %57, ptr %39, align 8, !tbaa !48
  br label %64

61:                                               ; preds = %56
  %62 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #17
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %56, !llvm.loop !174

64:                                               ; preds = %61, %48, %60
  %65 = phi i1 [ false, %60 ], [ true, %48 ], [ true, %61 ]
  %66 = phi i32 [ 1, %60 ], [ 0, %48 ], [ 0, %61 ]
  %67 = zext i32 %50 to i64
  %68 = icmp eq i64 %49, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = shl nsw i32 %50, 1
  %71 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !48
  %72 = sext i32 %70 to i64
  %73 = shl nsw i64 %72, 3
  %74 = call ptr %71(ptr noundef %51, i64 noundef %73, ptr noundef nonnull @__func__.BM_mesh_calc_face_groups) #19
  br label %75

75:                                               ; preds = %69, %64
  %76 = phi ptr [ %74, %69 ], [ %51, %64 ]
  %77 = phi i32 [ %70, %69 ], [ %50, %64 ]
  %78 = getelementptr inbounds [2 x i32], ptr %76, i64 %49
  store i32 %52, ptr %78, align 4, !tbaa !167
  %79 = getelementptr inbounds i32, ptr %78, i64 1
  store i32 0, ptr %79, align 4, !tbaa !167
  br i1 %65, label %174, label %80

80:                                               ; preds = %75, %171
  %81 = phi i32 [ %91, %171 ], [ %52, %75 ]
  %82 = phi i32 [ %172, %171 ], [ %66, %75 ]
  %83 = phi i32 [ %94, %171 ], [ %53, %75 ]
  %84 = add i32 %82, -1
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds ptr, ptr %39, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !48
  %88 = icmp eq ptr %87, null
  br i1 %88, label %174, label %89

89:                                               ; preds = %80
  %90 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %87) #17
  %91 = add i32 %81, 1
  %92 = zext i32 %81 to i64
  %93 = getelementptr inbounds i32, ptr %1, i64 %92
  store i32 %90, ptr %93, align 4, !tbaa !167
  %94 = add i32 %83, 1
  %95 = load i32, ptr %79, align 4, !tbaa !167
  %96 = add nsw i32 %95, 1
  store i32 %96, ptr %79, align 4, !tbaa !167
  br i1 %44, label %134, label %97

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.BMFace, ptr %87, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !64
  br label %100

100:                                              ; preds = %129, %97
  %101 = phi i32 [ %84, %97 ], [ %130, %129 ]
  %102 = phi ptr [ %99, %97 ], [ %132, %129 ]
  %103 = getelementptr inbounds %struct.BMLoop, ptr %102, i64 0, i32 4
  %104 = load ptr, ptr %103, align 8, !tbaa !44
  %105 = icmp eq ptr %104, %102
  br i1 %105, label %129, label %106

106:                                              ; preds = %100
  br i1 %45, label %112, label %107

107:                                              ; preds = %106
  %108 = getelementptr inbounds %struct.BMLoop, ptr %102, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !57
  %110 = call zeroext i8 %3(ptr noundef %109, ptr noundef %4) #19
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %129, label %112

112:                                              ; preds = %107, %106
  br label %113

113:                                              ; preds = %112, %124
  %114 = phi i32 [ %125, %124 ], [ %101, %112 ]
  %115 = phi ptr [ %127, %124 ], [ %104, %112 ]
  %116 = getelementptr inbounds %struct.BMLoop, ptr %115, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !42
  %118 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %117, i8 noundef zeroext 16) #17
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %113
  call fastcc void @_bm_elem_flag_enable(ptr noundef %117, i8 noundef zeroext 16) #17
  %121 = add i32 %114, 1
  %122 = zext i32 %114 to i64
  %123 = getelementptr inbounds ptr, ptr %39, i64 %122
  store ptr %117, ptr %123, align 8, !tbaa !48
  br label %124

124:                                              ; preds = %120, %113
  %125 = phi i32 [ %121, %120 ], [ %114, %113 ]
  %126 = getelementptr inbounds %struct.BMLoop, ptr %115, i64 0, i32 4
  %127 = load ptr, ptr %126, align 8, !tbaa !44
  %128 = icmp eq ptr %127, %102
  br i1 %128, label %129, label %113, !llvm.loop !175

129:                                              ; preds = %124, %107, %100
  %130 = phi i32 [ %101, %107 ], [ %101, %100 ], [ %125, %124 ]
  %131 = getelementptr inbounds %struct.BMLoop, ptr %102, i64 0, i32 6
  %132 = load ptr, ptr %131, align 8, !tbaa !51
  %133 = icmp eq ptr %132, %99
  br i1 %133, label %134, label %100, !llvm.loop !176

134:                                              ; preds = %129, %89
  %135 = phi i32 [ %84, %89 ], [ %130, %129 ]
  br i1 %47, label %171, label %136

136:                                              ; preds = %134
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #18
  %137 = getelementptr inbounds %struct.BMFace, ptr %87, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !64
  br label %139

139:                                              ; preds = %165, %136
  %140 = phi i32 [ %135, %136 ], [ %166, %165 ]
  %141 = phi ptr [ %138, %136 ], [ %168, %165 ]
  br i1 %45, label %147, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.BMLoop, ptr %141, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !47
  %145 = call zeroext i8 %3(ptr noundef %144, ptr noundef %4) #19
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %165, label %147

147:                                              ; preds = %142, %139
  %148 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %9, ptr noundef null, i8 noundef zeroext 13, ptr noundef %141) #17
  %149 = icmp eq ptr %148, null
  br i1 %149, label %165, label %150

150:                                              ; preds = %147, %161
  %151 = phi ptr [ %163, %161 ], [ %148, %147 ]
  %152 = phi i32 [ %162, %161 ], [ %140, %147 ]
  %153 = getelementptr inbounds %struct.BMLoop, ptr %151, i64 0, i32 3
  %154 = load ptr, ptr %153, align 8, !tbaa !42
  %155 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %154, i8 noundef zeroext 16) #17
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %150
  call fastcc void @_bm_elem_flag_enable(ptr noundef %154, i8 noundef zeroext 16) #17
  %158 = add i32 %152, 1
  %159 = zext i32 %152 to i64
  %160 = getelementptr inbounds ptr, ptr %39, i64 %159
  store ptr %154, ptr %160, align 8, !tbaa !48
  br label %161

161:                                              ; preds = %157, %150
  %162 = phi i32 [ %158, %157 ], [ %152, %150 ]
  %163 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %9) #17
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %150, !llvm.loop !177

165:                                              ; preds = %161, %147, %142
  %166 = phi i32 [ %140, %142 ], [ %140, %147 ], [ %162, %161 ]
  %167 = getelementptr inbounds %struct.BMLoop, ptr %141, i64 0, i32 6
  %168 = load ptr, ptr %167, align 8, !tbaa !51
  %169 = icmp eq ptr %168, %138
  br i1 %169, label %170, label %139, !llvm.loop !178

170:                                              ; preds = %165
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #18
  br label %171

171:                                              ; preds = %170, %134
  %172 = phi i32 [ %166, %170 ], [ %135, %134 ]
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %80, !llvm.loop !179

174:                                              ; preds = %80, %171, %75
  %175 = phi i32 [ %53, %75 ], [ %94, %171 ], [ %83, %80 ]
  %176 = phi i32 [ %52, %75 ], [ %91, %171 ], [ %81, %80 ]
  %177 = add nuw i64 %49, 1
  %178 = icmp eq i32 %175, %32
  br i1 %178, label %179, label %48, !llvm.loop !180

179:                                              ; preds = %174
  %180 = trunc i64 %177 to i32
  br label %181

181:                                              ; preds = %179, %31
  %182 = phi i32 [ 0, %31 ], [ %180, %179 ]
  %183 = phi ptr [ %11, %31 ], [ %76, %179 ]
  %184 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %184(ptr noundef %39) #19
  %185 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !48
  %186 = zext nneg i32 %182 to i64
  %187 = shl nuw nsw i64 %186, 3
  %188 = call ptr %185(ptr noundef %183, i64 noundef %187, ptr noundef nonnull @__func__.BM_mesh_calc_face_groups) #19
  store ptr %188, ptr %2, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #18
  ret i32 %182
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #14 !PGOFuncName !181 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !183 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !182
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BM_mesh_calc_edge_groups(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr noundef readonly %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #3 {
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca %struct.BMIter, align 8
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %11 = tail call ptr %10(i64 noundef 256, ptr noundef nonnull @__func__.BM_mesh_calc_edge_groups) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #18
  %12 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %6
  %15 = icmp eq i8 %5, 0
  br label %16

16:                                               ; preds = %14, %26
  %17 = phi i32 [ 0, %14 ], [ %29, %26 ]
  %18 = phi ptr [ %12, %14 ], [ %28, %26 ]
  %19 = phi i32 [ 0, %14 ], [ %27, %26 ]
  br i1 %15, label %23, label %20

20:                                               ; preds = %16
  %21 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %18, i8 noundef zeroext %5) #17
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20, %16
  %24 = add i32 %19, 1
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %18, i8 noundef zeroext 16) #17
  br label %26

25:                                               ; preds = %20
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %18, i8 noundef zeroext 16) #17
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ %19, %25 ]
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %18, i32 noundef %17) #17
  %28 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #17
  %29 = add nuw nsw i32 %17, 1
  %30 = icmp eq ptr %28, null
  br i1 %30, label %31, label %16, !llvm.loop !184

31:                                               ; preds = %26, %6
  %32 = phi i32 [ 0, %6 ], [ %27, %26 ]
  %33 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %34 = load i8, ptr %33, align 4, !tbaa !170
  %35 = and i8 %34, -3
  store i8 %35, ptr %33, align 4, !tbaa !170
  %36 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %37 = zext i32 %32 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = call ptr %36(i64 noundef %38, ptr noundef nonnull @__func__.BM_mesh_calc_edge_groups) #19
  %40 = icmp eq i32 %32, 0
  br i1 %40, label %130, label %41

41:                                               ; preds = %31
  %42 = icmp eq ptr %3, null
  br label %43

43:                                               ; preds = %41, %123
  %44 = phi i64 [ 0, %41 ], [ %126, %123 ]
  %45 = phi i32 [ 32, %41 ], [ %72, %123 ]
  %46 = phi ptr [ %11, %41 ], [ %71, %123 ]
  %47 = phi i32 [ 0, %41 ], [ %125, %123 ]
  %48 = phi i32 [ 0, %41 ], [ %124, %123 ]
  %49 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #17
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %43, %56
  %52 = phi ptr [ %57, %56 ], [ %49, %43 ]
  %53 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %52, i8 noundef zeroext 16) #17
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %52, i8 noundef zeroext 16) #17
  store ptr %52, ptr %39, align 8, !tbaa !48
  br label %59

56:                                               ; preds = %51
  %57 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #17
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %51, !llvm.loop !185

59:                                               ; preds = %56, %43, %55
  %60 = phi i1 [ false, %55 ], [ true, %43 ], [ true, %56 ]
  %61 = phi i32 [ 1, %55 ], [ 0, %43 ], [ 0, %56 ]
  %62 = zext i32 %45 to i64
  %63 = icmp eq i64 %44, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = shl nsw i32 %45, 1
  %66 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !48
  %67 = sext i32 %65 to i64
  %68 = shl nsw i64 %67, 3
  %69 = call ptr %66(ptr noundef %46, i64 noundef %68, ptr noundef nonnull @__func__.BM_mesh_calc_edge_groups) #19
  br label %70

70:                                               ; preds = %64, %59
  %71 = phi ptr [ %69, %64 ], [ %46, %59 ]
  %72 = phi i32 [ %65, %64 ], [ %45, %59 ]
  %73 = getelementptr inbounds [2 x i32], ptr %71, i64 %44
  store i32 %48, ptr %73, align 4, !tbaa !167
  %74 = getelementptr inbounds i32, ptr %73, i64 1
  store i32 0, ptr %74, align 4, !tbaa !167
  br i1 %60, label %123, label %75

75:                                               ; preds = %70, %120
  %76 = phi i32 [ %121, %120 ], [ %61, %70 ]
  %77 = phi i32 [ %89, %120 ], [ %47, %70 ]
  %78 = phi i32 [ %86, %120 ], [ %48, %70 ]
  %79 = add i32 %76, -1
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds ptr, ptr %39, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !48
  %83 = icmp eq ptr %82, null
  br i1 %83, label %123, label %84

84:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #18
  %85 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %82) #17
  %86 = add i32 %78, 1
  %87 = zext i32 %78 to i64
  %88 = getelementptr inbounds i32, ptr %1, i64 %87
  store i32 %85, ptr %88, align 4, !tbaa !167
  %89 = add i32 %77, 1
  %90 = load i32, ptr %74, align 4, !tbaa !167
  %91 = add nsw i32 %90, 1
  store i32 %91, ptr %74, align 4, !tbaa !167
  %92 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext 7, ptr noundef nonnull %82) #17
  %93 = icmp eq ptr %92, null
  br i1 %93, label %120, label %94

94:                                               ; preds = %84, %116
  %95 = phi ptr [ %118, %116 ], [ %92, %84 ]
  %96 = phi i32 [ %117, %116 ], [ %79, %84 ]
  br i1 %42, label %100, label %97

97:                                               ; preds = %94
  %98 = call zeroext i8 %3(ptr noundef nonnull %95, ptr noundef %4) #19
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %116, label %100

100:                                              ; preds = %97, %94
  %101 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %9, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %95) #17
  %102 = icmp eq ptr %101, null
  br i1 %102, label %116, label %103

103:                                              ; preds = %100, %112
  %104 = phi ptr [ %114, %112 ], [ %101, %100 ]
  %105 = phi i32 [ %113, %112 ], [ %96, %100 ]
  %106 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %104, i8 noundef zeroext 16) #17
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %104, i8 noundef zeroext 16) #17
  %109 = add i32 %105, 1
  %110 = zext i32 %105 to i64
  %111 = getelementptr inbounds ptr, ptr %39, i64 %110
  store ptr %104, ptr %111, align 8, !tbaa !48
  br label %112

112:                                              ; preds = %103, %108
  %113 = phi i32 [ %109, %108 ], [ %105, %103 ]
  %114 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %9) #17
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %103, !llvm.loop !186

116:                                              ; preds = %112, %100, %97
  %117 = phi i32 [ %96, %97 ], [ %96, %100 ], [ %113, %112 ]
  %118 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #17
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %94, !llvm.loop !187

120:                                              ; preds = %116, %84
  %121 = phi i32 [ %79, %84 ], [ %117, %116 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #18
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %75, !llvm.loop !188

123:                                              ; preds = %75, %120, %70
  %124 = phi i32 [ %48, %70 ], [ %86, %120 ], [ %78, %75 ]
  %125 = phi i32 [ %47, %70 ], [ %89, %120 ], [ %77, %75 ]
  %126 = add nuw i64 %44, 1
  %127 = icmp eq i32 %125, %32
  br i1 %127, label %128, label %43, !llvm.loop !189

128:                                              ; preds = %123
  %129 = trunc i64 %126 to i32
  br label %130

130:                                              ; preds = %128, %31
  %131 = phi i32 [ 0, %31 ], [ %129, %128 ]
  %132 = phi ptr [ %11, %31 ], [ %71, %128 ]
  %133 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %133(ptr noundef %39) #19
  %134 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !48
  %135 = zext nneg i32 %131 to i64
  %136 = shl nuw nsw i64 %135, 3
  %137 = call ptr %134(ptr noundef %132, i64 noundef %136, ptr noundef nonnull @__func__.BM_mesh_calc_edge_groups) #19
  store ptr %137, ptr %2, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #18
  ret i32 %131
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local float @bmesh_subd_falloff_calc(i32 noundef %0, float noundef %1) local_unnamed_addr #15 {
  switch i32 %0, label %18 [
    i32 0, label %3
    i32 1, label %9
    i32 2, label %14
    i32 3, label %16
  ]

3:                                                ; preds = %2
  %4 = fmul float %1, 3.000000e+00
  %5 = fmul float %1, -2.000000e+00
  %6 = fmul float %5, %1
  %7 = fmul float %6, %1
  %8 = tail call float @llvm.fmuladd.f32(float %4, float %1, float %7)
  br label %18

9:                                                ; preds = %2
  %10 = fneg float %1
  %11 = fmul float %10, %1
  %12 = tail call float @llvm.fmuladd.f32(float %1, float 2.000000e+00, float %11)
  %13 = tail call float @sqrtf(float noundef %12) #19
  br label %18

14:                                               ; preds = %2
  %15 = tail call float @sqrtf(float noundef %1) #19
  br label %18

16:                                               ; preds = %2
  %17 = fmul float %1, %1
  br label %18

18:                                               ; preds = %2, %16, %14, %9, %3
  %19 = phi float [ %1, %2 ], [ %17, %16 ], [ %15, %14 ], [ %13, %9 ], [ %8, %3 ]
  ret float %19
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #16

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 !PGOFuncName !190 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !191
  switch i8 %2, label %46 [
    i8 13, label %40
    i8 2, label %6
    i8 3, label %11
    i8 4, label %16
    i8 5, label %19
    i8 6, label %22
    i8 7, label %25
    i8 8, label %28
    i8 9, label %31
    i8 10, label %34
    i8 11, label %37
  ]

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %7, align 8, !tbaa !192
  %8 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %8, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !193
  br label %43

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %12, align 8, !tbaa !192
  %13 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %13, align 8, !tbaa !55
  %14 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !194
  br label %43

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %17, align 8, !tbaa !192
  %18 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %18, align 8, !tbaa !55
  br label %43

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__face_of_vert_begin, ptr %20, align 8, !tbaa !192
  %21 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__face_of_vert_step, ptr %21, align 8, !tbaa !55
  br label %43

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_vert_begin, ptr %23, align 8, !tbaa !192
  %24 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_vert_step, ptr %24, align 8, !tbaa !55
  br label %43

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__vert_of_edge_begin, ptr %26, align 8, !tbaa !192
  %27 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__vert_of_edge_step, ptr %27, align 8, !tbaa !55
  br label %43

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__face_of_edge_begin, ptr %29, align 8, !tbaa !192
  %30 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__face_of_edge_step, ptr %30, align 8, !tbaa !55
  br label %43

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__vert_of_face_begin, ptr %32, align 8, !tbaa !192
  %33 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__vert_of_face_step, ptr %33, align 8, !tbaa !55
  br label %43

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__edge_of_face_begin, ptr %35, align 8, !tbaa !192
  %36 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__edge_of_face_step, ptr %36, align 8, !tbaa !55
  br label %43

37:                                               ; preds = %4
  %38 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %38, align 8, !tbaa !192
  %39 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %39, align 8, !tbaa !55
  br label %43

40:                                               ; preds = %4
  %41 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_loop_begin, ptr %41, align 8, !tbaa !192
  %42 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_loop_step, ptr %42, align 8, !tbaa !55
  br label %43

43:                                               ; preds = %40, %37, %34, %31, %28, %25, %22, %19, %16, %11, %6
  %44 = phi ptr [ %3, %40 ], [ %3, %37 ], [ %3, %34 ], [ %3, %31 ], [ %3, %28 ], [ %3, %25 ], [ %3, %22 ], [ %3, %19 ], [ %3, %16 ], [ %15, %11 ], [ %10, %6 ]
  %45 = phi ptr [ @bmiter__loop_of_loop_begin, %40 ], [ @bmiter__loop_of_face_begin, %37 ], [ @bmiter__edge_of_face_begin, %34 ], [ @bmiter__vert_of_face_begin, %31 ], [ @bmiter__face_of_edge_begin, %28 ], [ @bmiter__vert_of_edge_begin, %25 ], [ @bmiter__loop_of_vert_begin, %22 ], [ @bmiter__face_of_vert_begin, %19 ], [ @bmiter__edge_of_vert_begin, %16 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %6 ]
  store ptr %44, ptr %0, align 8, !tbaa !195
  tail call void %45(ptr noundef nonnull %0) #19
  br label %46

46:                                               ; preds = %4, %43
  %47 = phi i8 [ 1, %43 ], [ 0, %4 ]
  ret i8 %47
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #5

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #5

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #5

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #5

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #5

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #5

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #5

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #5

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #5

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #5

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #5

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #5

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #5

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #5

; Function Attrs: optsize
declare void @bmiter__edge_of_face_begin(ptr noundef) #5

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #5

; Function Attrs: optsize
declare void @bmiter__loop_of_face_begin(ptr noundef) #5

; Function Attrs: optsize
declare ptr @bmiter__loop_of_face_step(ptr noundef) #5

; Function Attrs: optsize
declare void @bmiter__loop_of_loop_begin(ptr noundef) #5

; Function Attrs: optsize
declare ptr @bmiter__loop_of_loop_step(ptr noundef) #5

; Function Attrs: optsize
declare float @BM_face_calc_normal_subset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !196 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #17
  %3 = tail call float @sqrtf(float noundef %2) #19
  ret float %3
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !197 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #17
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #19
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #17
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #17
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #11 !PGOFuncName !198 {
  %4 = load float, ptr %1, align 4, !tbaa !99
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !99
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !99
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !99
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !99
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #14 !PGOFuncName !199 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !99
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !99
  ret void
}

; Function Attrs: optsize
declare void @BM_face_calc_tessellation(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { optsize }
attributes #18 = { nounwind }
attributes #19 = { nounwind optsize }
attributes #20 = { cold optsize }

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
!34 = !{!35, !37, i64 40}
!35 = !{!"BMEdge", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !41, i64 48, !41, i64 64}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!42 = !{!43, !37, i64 32}
!43 = !{!"BMLoop", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!44 = !{!43, !37, i64 40}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!43, !37, i64 16}
!48 = !{!37, !37, i64 0}
!49 = distinct !{!49, !46}
!50 = !{!43, !37, i64 64}
!51 = !{!43, !37, i64 56}
!52 = !{!"bmesh_queries.c:BM_iter_new"}
!53 = !{i8 0, i8 2}
!54 = !{!"bmesh_queries.c:BM_iter_step"}
!55 = !{!56, !37, i64 48}
!56 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!57 = !{!43, !37, i64 24}
!58 = !{!"bmesh_queries.c:BM_edge_other_vert"}
!59 = !{!35, !37, i64 24}
!60 = !{!35, !37, i64 32}
!61 = !{!62, !37, i64 48}
!62 = !{!"BMVert", !36, i64 0, !37, i64 16, !38, i64 24, !38, i64 36, !37, i64 48}
!63 = distinct !{!63, !46}
!64 = !{!65, !37, i64 24}
!65 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !66, i64 48}
!66 = !{!"short", !38, i64 0}
!67 = distinct !{!67, !46}
!68 = !{!65, !40, i64 32}
!69 = distinct !{!69, !46}
!70 = distinct !{!70, !46}
!71 = !{!"bmesh_queries.c:BM_loop_is_adjacent"}
!72 = distinct !{!72, !46}
!73 = !{!"bmesh_queries.c:bm_face_calc_split_dot"}
!74 = !{!62, !38, i64 14}
!75 = distinct !{!75, !46}
!76 = distinct !{!76, !46}
!77 = distinct !{!77, !46}
!78 = distinct !{!78, !46}
!79 = distinct !{!79, !46}
!80 = distinct !{!80, !46}
!81 = distinct !{!81, !46}
!82 = !{!"bmesh_queries.c:BM_edge_is_manifold"}
!83 = distinct !{!83, !46}
!84 = distinct !{!84, !46}
!85 = !{!"bmesh_queries.c:BM_vert_in_edge"}
!86 = !{!"bmesh_queries.c:len_v3v3"}
!87 = !{!"bmesh_queries.c:len_squared_v3v3"}
!88 = !{!41, !37, i64 0}
!89 = !{!41, !37, i64 8}
!90 = !{!"bmesh_queries.c:bmesh_disk_edge_link_from_vert"}
!91 = distinct !{!91, !46}
!92 = distinct !{!92, !46}
!93 = distinct !{!93, !46}
!94 = !{!"bmesh_queries.c:bmesh_disk_edge_next"}
!95 = !{!35, !37, i64 48}
!96 = distinct !{!96, !46}
!97 = distinct !{!97, !46}
!98 = !{!"bmesh_queries.c:equals_v3v3"}
!99 = !{!100, !100, i64 0}
!100 = !{!"float", !38, i64 0}
!101 = !{!"bmesh_queries.c:cross_v3_v3v3"}
!102 = !{!"bmesh_queries.c:sub_v3_v3v3"}
!103 = !{!"bmesh_queries.c:dot_v3v3"}
!104 = distinct !{!104, !46}
!105 = !{!"bmesh_queries.c:BM_edge_is_boundary"}
!106 = distinct !{!106, !46}
!107 = distinct !{!107, !46}
!108 = distinct !{!108, !46}
!109 = distinct !{!109, !46}
!110 = distinct !{!110, !46}
!111 = distinct !{!111, !46}
!112 = distinct !{!112, !46}
!113 = distinct !{!113, !46}
!114 = !{!"bmesh_queries.c:copy_v3_v3"}
!115 = !{!"bmesh_queries.c:normalize_v3"}
!116 = !{!"bmesh_queries.c:add_v3_v3v3"}
!117 = !{!"bmesh_queries.c:compare_v3v3"}
!118 = !{!"bmesh_queries.c:negate_v3"}
!119 = distinct !{!119, !46}
!120 = !{!"bmesh_queries.c:shell_v3v3_normalized_to_dist"}
!121 = distinct !{!121, !46}
!122 = !{!"bmesh_queries.c:_bm_elem_flag_test"}
!123 = !{!36, !38, i64 13}
!124 = distinct !{!124, !46}
!125 = distinct !{!125, !46}
!126 = distinct !{!126, !46}
!127 = distinct !{!127, !46}
!128 = distinct !{!128, !46}
!129 = distinct !{!129, !46}
!130 = distinct !{!130, !46}
!131 = distinct !{!131, !46}
!132 = distinct !{!132, !46}
!133 = distinct !{!133, !46}
!134 = distinct !{!134, !46}
!135 = distinct !{!135, !46}
!136 = distinct !{!136, !46}
!137 = distinct !{!137, !46}
!138 = distinct !{!138, !46}
!139 = distinct !{!139, !46}
!140 = distinct !{!140, !46}
!141 = distinct !{!141, !46}
!142 = distinct !{!142, !46}
!143 = distinct !{!143, !46}
!144 = !{!"bmesh_queries.c:_bm_elem_flag_disable"}
!145 = !{!"bmesh_queries.c:_bm_elem_flag_enable"}
!146 = distinct !{!146, !46}
!147 = !{!65, !38, i64 14}
!148 = distinct !{!148, !46}
!149 = distinct !{!149, !46}
!150 = !{!151, !37, i64 8}
!151 = !{!"LinkNode", !37, i64 0, !37, i64 8}
!152 = !{!151, !37, i64 0}
!153 = distinct !{!153, !46}
!154 = distinct !{!154, !46}
!155 = distinct !{!155, !46}
!156 = distinct !{!156, !46}
!157 = distinct !{!157, !46}
!158 = distinct !{!158, !46}
!159 = distinct !{!159, !46}
!160 = distinct !{!160, !46}
!161 = distinct !{!161, !46}
!162 = distinct !{!162, !46}
!163 = distinct !{!163, !46}
!164 = distinct !{!164, !46}
!165 = distinct !{!165, !46}
!166 = !{!"bmesh_queries.c:bm_mesh_calc_volume_face"}
!167 = !{!40, !40, i64 0}
!168 = distinct !{!168, !46}
!169 = distinct !{!169, !46}
!170 = !{!171, !38, i64 28}
!171 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !172, i64 144, !172, i64 344, !172, i64 544, !172, i64 744, !66, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !173, i64 960, !37, i64 976, !173, i64 984, !37, i64 1000}
!172 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!173 = !{!"ListBase", !37, i64 0, !37, i64 8}
!174 = distinct !{!174, !46}
!175 = distinct !{!175, !46}
!176 = distinct !{!176, !46}
!177 = distinct !{!177, !46}
!178 = distinct !{!178, !46}
!179 = distinct !{!179, !46}
!180 = distinct !{!180, !46}
!181 = !{!"bmesh_queries.c:_bm_elem_index_set"}
!182 = !{!36, !40, i64 8}
!183 = !{!"bmesh_queries.c:_bm_elem_index_get"}
!184 = distinct !{!184, !46}
!185 = distinct !{!185, !46}
!186 = distinct !{!186, !46}
!187 = distinct !{!187, !46}
!188 = distinct !{!188, !46}
!189 = distinct !{!189, !46}
!190 = !{!"bmesh_queries.c:BM_iter_init"}
!191 = !{!56, !38, i64 60}
!192 = !{!56, !37, i64 40}
!193 = !{!171, !37, i64 40}
!194 = !{!171, !37, i64 56}
!195 = !{!38, !38, i64 0}
!196 = !{!"bmesh_queries.c:len_v3"}
!197 = !{!"bmesh_queries.c:normalize_v3_v3"}
!198 = !{!"bmesh_queries.c:mul_v3_v3fl"}
!199 = !{!"bmesh_queries.c:zero_v3"}
