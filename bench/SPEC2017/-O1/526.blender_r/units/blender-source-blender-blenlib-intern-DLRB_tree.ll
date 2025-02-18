; ModuleID = 'blender/source/blender/blenlib/intern/DLRB_tree.c'
source_filename = "blender/source/blender/blenlib/intern/DLRB_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.DLRBT_Tree = type { ptr, ptr, ptr }
%struct.DLRBT_Node = type { ptr, ptr, ptr, ptr, ptr, i8 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"DLRBT_Tree\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_dlrbTree_new() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 24, ptr noundef nonnull @.str) #5
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BLI_dlrbTree_init(ptr noundef writeonly %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %4

4:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_dlrbTree_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !38
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #5
  br label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.DLRBT_Tree, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  tail call fastcc void @recursive_tree_free_nodes(ptr noundef %9)
  br label %10

10:                                               ; preds = %7, %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %11

11:                                               ; preds = %1, %10
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @recursive_tree_free_nodes(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1, %4
  ret void

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.DLRBT_Node, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  tail call fastcc void @recursive_tree_free_nodes(ptr noundef %6)
  %7 = getelementptr inbounds %struct.DLRBT_Node, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  tail call fastcc void @recursive_tree_free_nodes(ptr noundef %8)
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %9(ptr noundef nonnull %0) #5
  br label %3
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_dlrbTree_linkedlist_sync(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.DLRBT_Tree, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  tail call fastcc void @linkedlist_sync_add_node(ptr noundef nonnull %0, ptr noundef %5)
  br label %6

6:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @linkedlist_sync_add_node(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %6, %2
  %4 = phi ptr [ %1, %2 ], [ %10, %6 ]
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.DLRBT_Node, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  tail call fastcc void @linkedlist_sync_add_node(ptr noundef %0, ptr noundef %8)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef nonnull %4) #5
  %9 = getelementptr inbounds %struct.DLRBT_Node, ptr %4, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  br label %3

11:                                               ; preds = %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_dlrbTree_search(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.DLRBT_Tree, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  br label %8

8:                                                ; preds = %3, %5
  %9 = phi ptr [ %7, %5 ], [ null, %3 ]
  %10 = icmp eq ptr %1, null
  br i1 %10, label %35, label %11

11:                                               ; preds = %8
  %12 = icmp eq ptr %9, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %11, %29
  %14 = phi i16 [ %31, %29 ], [ 0, %11 ]
  %15 = phi ptr [ %30, %29 ], [ %9, %11 ]
  %16 = tail call signext i16 %1(ptr noundef nonnull %15, ptr noundef %2) #5
  switch i16 %16, label %29 [
    i16 -1, label %17
    i16 1, label %23
  ]

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.DLRBT_Node, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !41
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr %15, ptr %19
  %22 = select i1 %20, i16 1, i16 %14
  br label %29

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.DLRBT_Node, ptr %15, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = icmp eq ptr %25, null
  %27 = select i1 %26, ptr %15, ptr %25
  %28 = select i1 %26, i16 1, i16 %14
  br label %29

29:                                               ; preds = %13, %23, %17
  %30 = phi ptr [ %21, %17 ], [ %27, %23 ], [ %15, %13 ]
  %31 = phi i16 [ %22, %17 ], [ %28, %23 ], [ 1, %13 ]
  %32 = icmp ne ptr %30, null
  %33 = icmp eq i16 %31, 0
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %13, label %35, !llvm.loop !44

35:                                               ; preds = %29, %11, %8
  %36 = phi ptr [ null, %8 ], [ %9, %11 ], [ %30, %29 ]
  ret ptr %36
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_dlrbTree_search_exact(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.DLRBT_Tree, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  br label %8

8:                                                ; preds = %3, %5
  %9 = phi ptr [ %7, %5 ], [ null, %3 ]
  %10 = icmp eq ptr %1, null
  %11 = icmp eq ptr %9, null
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %38, label %13

13:                                               ; preds = %8, %29
  %14 = phi i16 [ %31, %29 ], [ 0, %8 ]
  %15 = phi ptr [ %30, %29 ], [ %9, %8 ]
  %16 = tail call signext i16 %1(ptr noundef nonnull %15, ptr noundef %2) #5
  switch i16 %16, label %29 [
    i16 -1, label %17
    i16 1, label %23
  ]

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.DLRBT_Node, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !41
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr %15, ptr %19
  %22 = select i1 %20, i16 -1, i16 %14
  br label %29

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.DLRBT_Node, ptr %15, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = icmp eq ptr %25, null
  %27 = select i1 %26, ptr %15, ptr %25
  %28 = select i1 %26, i16 -1, i16 %14
  br label %29

29:                                               ; preds = %13, %23, %17
  %30 = phi ptr [ %21, %17 ], [ %27, %23 ], [ %15, %13 ]
  %31 = phi i16 [ %22, %17 ], [ %28, %23 ], [ 1, %13 ]
  %32 = icmp ne ptr %30, null
  %33 = icmp eq i16 %31, 0
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %13, label %35, !llvm.loop !47

35:                                               ; preds = %29
  %36 = icmp eq i16 %31, 1
  %37 = select i1 %36, ptr %30, ptr null
  br label %38

38:                                               ; preds = %35, %8
  %39 = phi ptr [ null, %8 ], [ %37, %35 ]
  ret ptr %39
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_dlrbTree_search_prev(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %44, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %0, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.DLRBT_Tree, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi ptr [ %9, %7 ], [ null, %5 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %10, %29
  %14 = phi i16 [ %31, %29 ], [ 0, %10 ]
  %15 = phi ptr [ %30, %29 ], [ %11, %10 ]
  %16 = tail call signext i16 %1(ptr noundef nonnull %15, ptr noundef %2) #5
  switch i16 %16, label %29 [
    i16 -1, label %17
    i16 1, label %23
  ]

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.DLRBT_Node, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !41
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr %15, ptr %19
  %22 = select i1 %20, i16 1, i16 %14
  br label %29

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.DLRBT_Node, ptr %15, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = icmp eq ptr %25, null
  %27 = select i1 %26, ptr %15, ptr %25
  %28 = select i1 %26, i16 1, i16 %14
  br label %29

29:                                               ; preds = %23, %17, %13
  %30 = phi ptr [ %21, %17 ], [ %27, %23 ], [ %15, %13 ]
  %31 = phi i16 [ %22, %17 ], [ %28, %23 ], [ 1, %13 ]
  %32 = icmp ne ptr %30, null
  %33 = icmp eq i16 %31, 0
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %13, label %35, !llvm.loop !44

35:                                               ; preds = %29, %10
  %36 = phi ptr [ %11, %10 ], [ %30, %29 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = tail call signext i16 %1(ptr noundef nonnull %36, ptr noundef %2) #5
  %40 = icmp sgt i16 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.DLRBT_Node, ptr %36, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  br label %44

44:                                               ; preds = %35, %38, %3, %41
  %45 = phi ptr [ %43, %41 ], [ null, %3 ], [ %36, %38 ], [ null, %35 ]
  ret ptr %45
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_dlrbTree_search_next(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %43, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %0, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.DLRBT_Tree, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi ptr [ %9, %7 ], [ null, %5 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %10, %29
  %14 = phi i16 [ %31, %29 ], [ 0, %10 ]
  %15 = phi ptr [ %30, %29 ], [ %11, %10 ]
  %16 = tail call signext i16 %1(ptr noundef nonnull %15, ptr noundef %2) #5
  switch i16 %16, label %29 [
    i16 -1, label %17
    i16 1, label %23
  ]

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.DLRBT_Node, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !41
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr %15, ptr %19
  %22 = select i1 %20, i16 1, i16 %14
  br label %29

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.DLRBT_Node, ptr %15, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = icmp eq ptr %25, null
  %27 = select i1 %26, ptr %15, ptr %25
  %28 = select i1 %26, i16 1, i16 %14
  br label %29

29:                                               ; preds = %23, %17, %13
  %30 = phi ptr [ %21, %17 ], [ %27, %23 ], [ %15, %13 ]
  %31 = phi i16 [ %22, %17 ], [ %28, %23 ], [ 1, %13 ]
  %32 = icmp ne ptr %30, null
  %33 = icmp eq i16 %31, 0
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %13, label %35, !llvm.loop !44

35:                                               ; preds = %29, %10
  %36 = phi ptr [ %11, %10 ], [ %30, %29 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = tail call signext i16 %1(ptr noundef nonnull %36, ptr noundef %2) #5
  %40 = icmp slt i16 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %36, align 8, !tbaa !49
  br label %43

43:                                               ; preds = %35, %38, %3, %41
  %44 = phi ptr [ %42, %41 ], [ null, %3 ], [ %36, %38 ], [ null, %35 ]
  ret ptr %44
}

; Function Attrs: nounwind uwtable
define dso_local signext i16 @BLI_dlrbTree_contains(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.DLRBT_Tree, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi ptr [ %7, %5 ], [ null, %3 ]
  %10 = icmp eq ptr %1, null
  %11 = icmp eq ptr %9, null
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %40, label %13

13:                                               ; preds = %8, %29
  %14 = phi i16 [ %31, %29 ], [ 0, %8 ]
  %15 = phi ptr [ %30, %29 ], [ %9, %8 ]
  %16 = tail call signext i16 %1(ptr noundef nonnull %15, ptr noundef %2) #5
  switch i16 %16, label %29 [
    i16 -1, label %17
    i16 1, label %23
  ]

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.DLRBT_Node, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !41
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr %15, ptr %19
  %22 = select i1 %20, i16 -1, i16 %14
  br label %29

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.DLRBT_Node, ptr %15, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = icmp eq ptr %25, null
  %27 = select i1 %26, ptr %15, ptr %25
  %28 = select i1 %26, i16 -1, i16 %14
  br label %29

29:                                               ; preds = %23, %17, %13
  %30 = phi ptr [ %21, %17 ], [ %27, %23 ], [ %15, %13 ]
  %31 = phi i16 [ %22, %17 ], [ %28, %23 ], [ 1, %13 ]
  %32 = icmp ne ptr %30, null
  %33 = icmp eq i16 %31, 0
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %13, label %35, !llvm.loop !47

35:                                               ; preds = %29
  %36 = icmp eq i16 %31, 1
  %37 = icmp ne ptr %30, null
  %38 = and i1 %37, %36
  %39 = zext i1 %38 to i16
  br label %40

40:                                               ; preds = %8, %35
  %41 = phi i16 [ 0, %8 ], [ %39, %35 ]
  ret i16 %41
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_dlrbTree_insert(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DLRBT_Node, ptr %1, i64 0, i32 5
  store i8 1, ptr %7, align 8, !tbaa !50
  tail call fastcc void @insert_check_1(ptr noundef %0, ptr noundef %1)
  br label %8

8:                                                ; preds = %2, %6
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @insert_check_1(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #3 {
  br label %3

3:                                                ; preds = %34, %2
  %4 = phi ptr [ %1, %2 ], [ %18, %34 ]
  %5 = icmp eq ptr %4, null
  br i1 %5, label %162, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.DLRBT_Node, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.DLRBT_Node, ptr %4, i64 0, i32 5
  store i8 0, ptr %11, align 8, !tbaa !50
  br label %162

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.DLRBT_Node, ptr %8, i64 0, i32 5
  %14 = load i8, ptr %13, align 8, !tbaa !50
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %162, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.DLRBT_Node, ptr %8, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.DLRBT_Node, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !41
  %23 = icmp eq ptr %22, %8
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.DLRBT_Node, ptr %18, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  br label %27

27:                                               ; preds = %16, %20, %24
  %28 = phi ptr [ %26, %24 ], [ %22, %20 ], [ null, %16 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.DLRBT_Node, ptr %28, i64 0, i32 5
  %32 = load i8, ptr %31, align 8, !tbaa !50
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  store i8 0, ptr %31, align 8, !tbaa !50
  store i8 0, ptr %13, align 8, !tbaa !50
  %35 = getelementptr inbounds %struct.DLRBT_Node, ptr %18, i64 0, i32 5
  store i8 1, ptr %35, align 8, !tbaa !50
  br label %3

36:                                               ; preds = %30, %27
  %37 = icmp eq ptr %18, null
  br i1 %37, label %162, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.DLRBT_Node, ptr %8, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  %41 = icmp eq ptr %40, %4
  br i1 %41, label %42, label %65

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.DLRBT_Node, ptr %18, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !41
  %45 = icmp eq ptr %8, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.DLRBT_Node, ptr %4, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !43
  %49 = icmp eq ptr %48, null
  br i1 %49, label %63, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.DLRBT_Node, ptr %8, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !41
  %53 = icmp eq ptr %52, %4
  %54 = select i1 %53, ptr %51, ptr %39
  %55 = getelementptr inbounds %struct.DLRBT_Node, ptr %48, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !41
  store ptr %56, ptr %47, align 8, !tbaa !43
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.DLRBT_Node, ptr %56, i64 0, i32 4
  store ptr %4, ptr %59, align 8, !tbaa !51
  br label %60

60:                                               ; preds = %58, %50
  store ptr %4, ptr %55, align 8, !tbaa !41
  %61 = load ptr, ptr %7, align 8, !tbaa !51
  %62 = getelementptr inbounds %struct.DLRBT_Node, ptr %48, i64 0, i32 4
  store ptr %61, ptr %62, align 8, !tbaa !51
  store ptr %48, ptr %7, align 8, !tbaa !51
  store ptr %48, ptr %54, align 8, !tbaa !34
  br label %63

63:                                               ; preds = %60, %46
  %64 = getelementptr inbounds %struct.DLRBT_Node, ptr %4, i64 0, i32 2
  br label %88

65:                                               ; preds = %42, %38
  %66 = getelementptr inbounds %struct.DLRBT_Node, ptr %8, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !41
  %68 = icmp eq ptr %67, %4
  br i1 %68, label %69, label %91

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.DLRBT_Node, ptr %18, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !43
  %72 = icmp eq ptr %8, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.DLRBT_Node, ptr %4, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !41
  %76 = icmp eq ptr %75, null
  br i1 %76, label %86, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.DLRBT_Node, ptr %75, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !43
  store ptr %79, ptr %74, align 8, !tbaa !41
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.DLRBT_Node, ptr %79, i64 0, i32 4
  store ptr %4, ptr %82, align 8, !tbaa !51
  br label %83

83:                                               ; preds = %81, %77
  store ptr %4, ptr %78, align 8, !tbaa !43
  %84 = load ptr, ptr %7, align 8, !tbaa !51
  %85 = getelementptr inbounds %struct.DLRBT_Node, ptr %75, i64 0, i32 4
  store ptr %84, ptr %85, align 8, !tbaa !51
  store ptr %75, ptr %7, align 8, !tbaa !51
  store ptr %75, ptr %66, align 8, !tbaa !34
  br label %86

86:                                               ; preds = %83, %73
  %87 = getelementptr inbounds %struct.DLRBT_Node, ptr %4, i64 0, i32 3
  br label %88

88:                                               ; preds = %63, %86
  %89 = phi ptr [ %87, %86 ], [ %64, %63 ]
  %90 = load ptr, ptr %89, align 8, !tbaa !34
  br label %91

91:                                               ; preds = %88, %69, %65
  %92 = phi ptr [ %4, %69 ], [ %4, %65 ], [ %90, %88 ]
  %93 = icmp eq ptr %92, null
  br i1 %93, label %162, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.DLRBT_Node, ptr %92, i64 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !51
  %97 = icmp eq ptr %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.DLRBT_Node, ptr %96, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !51
  br label %101

101:                                              ; preds = %98, %94
  %102 = phi ptr [ %100, %98 ], [ null, %94 ]
  %103 = getelementptr inbounds %struct.DLRBT_Node, ptr %96, i64 0, i32 5
  store i8 0, ptr %103, align 8, !tbaa !50
  %104 = getelementptr inbounds %struct.DLRBT_Node, ptr %102, i64 0, i32 5
  store i8 1, ptr %104, align 8, !tbaa !50
  %105 = getelementptr inbounds %struct.DLRBT_Node, ptr %96, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !41
  %107 = icmp eq ptr %92, %106
  br i1 %107, label %108, label %136

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.DLRBT_Node, ptr %102, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !41
  %111 = icmp eq ptr %96, %110
  br i1 %111, label %112, label %136

112:                                              ; preds = %108
  %113 = icmp eq ptr %110, null
  br i1 %113, label %162, label %114

114:                                              ; preds = %112
  %115 = getelementptr inbounds %struct.DLRBT_Node, ptr %102, i64 0, i32 4
  %116 = load ptr, ptr %115, align 8, !tbaa !51
  %117 = icmp eq ptr %116, null
  br i1 %117, label %124, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.DLRBT_Node, ptr %116, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !41
  %121 = icmp eq ptr %120, %102
  %122 = getelementptr inbounds %struct.DLRBT_Node, ptr %116, i64 0, i32 3
  %123 = select i1 %121, ptr %119, ptr %122
  br label %126

124:                                              ; preds = %114
  %125 = getelementptr inbounds %struct.DLRBT_Tree, ptr %0, i64 0, i32 2
  br label %126

126:                                              ; preds = %124, %118
  %127 = phi ptr [ %125, %124 ], [ %123, %118 ]
  %128 = getelementptr inbounds %struct.DLRBT_Node, ptr %110, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !43
  store ptr %129, ptr %109, align 8, !tbaa !41
  %130 = icmp eq ptr %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.DLRBT_Node, ptr %129, i64 0, i32 4
  store ptr %102, ptr %132, align 8, !tbaa !51
  br label %133

133:                                              ; preds = %131, %126
  store ptr %102, ptr %128, align 8, !tbaa !43
  %134 = load ptr, ptr %115, align 8, !tbaa !51
  %135 = getelementptr inbounds %struct.DLRBT_Node, ptr %110, i64 0, i32 4
  store ptr %134, ptr %135, align 8, !tbaa !51
  store ptr %110, ptr %115, align 8, !tbaa !51
  store ptr %110, ptr %127, align 8, !tbaa !34
  br label %162

136:                                              ; preds = %108, %101
  %137 = getelementptr inbounds %struct.DLRBT_Node, ptr %102, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !43
  %139 = icmp eq ptr %138, null
  br i1 %139, label %162, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.DLRBT_Node, ptr %102, i64 0, i32 4
  %142 = load ptr, ptr %141, align 8, !tbaa !51
  %143 = icmp eq ptr %142, null
  br i1 %143, label %150, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.DLRBT_Node, ptr %142, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !41
  %147 = icmp eq ptr %146, %102
  %148 = getelementptr inbounds %struct.DLRBT_Node, ptr %142, i64 0, i32 3
  %149 = select i1 %147, ptr %145, ptr %148
  br label %152

150:                                              ; preds = %140
  %151 = getelementptr inbounds %struct.DLRBT_Tree, ptr %0, i64 0, i32 2
  br label %152

152:                                              ; preds = %150, %144
  %153 = phi ptr [ %151, %150 ], [ %149, %144 ]
  %154 = getelementptr inbounds %struct.DLRBT_Node, ptr %138, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !41
  store ptr %155, ptr %137, align 8, !tbaa !43
  %156 = icmp eq ptr %155, null
  br i1 %156, label %159, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.DLRBT_Node, ptr %155, i64 0, i32 4
  store ptr %102, ptr %158, align 8, !tbaa !51
  br label %159

159:                                              ; preds = %157, %152
  store ptr %102, ptr %154, align 8, !tbaa !41
  %160 = load ptr, ptr %141, align 8, !tbaa !51
  %161 = getelementptr inbounds %struct.DLRBT_Node, ptr %138, i64 0, i32 4
  store ptr %160, ptr %161, align 8, !tbaa !51
  store ptr %138, ptr %141, align 8, !tbaa !51
  store ptr %138, ptr %153, align 8, !tbaa !34
  br label %162

162:                                              ; preds = %12, %36, %91, %112, %133, %136, %159, %10, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_dlrbTree_add(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %0, null
  %7 = icmp eq ptr %1, null
  %8 = or i1 %6, %7
  %9 = icmp eq ptr %2, null
  %10 = or i1 %8, %9
  br i1 %10, label %60, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.DLRBT_Tree, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %11, %31
  %16 = phi i16 [ %33, %31 ], [ 0, %11 ]
  %17 = phi ptr [ %32, %31 ], [ %13, %11 ]
  %18 = tail call signext i16 %1(ptr noundef nonnull %17, ptr noundef %4) #5
  switch i16 %18, label %31 [
    i16 -1, label %19
    i16 1, label %25
  ]

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.DLRBT_Node, ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !41
  %22 = icmp eq ptr %21, null
  %23 = select i1 %22, ptr %17, ptr %21
  %24 = select i1 %22, i16 1, i16 %16
  br label %31

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.DLRBT_Node, ptr %17, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, ptr %17, ptr %27
  %30 = select i1 %28, i16 1, i16 %16
  br label %31

31:                                               ; preds = %25, %19, %15
  %32 = phi ptr [ %23, %19 ], [ %29, %25 ], [ %17, %15 ]
  %33 = phi i16 [ %24, %19 ], [ %30, %25 ], [ 1, %15 ]
  %34 = icmp ne ptr %32, null
  %35 = icmp eq i16 %33, 0
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %15, label %37, !llvm.loop !44

37:                                               ; preds = %31, %11
  %38 = phi ptr [ %13, %11 ], [ %32, %31 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %53, label %40

40:                                               ; preds = %37
  %41 = tail call signext i16 %1(ptr noundef nonnull %38, ptr noundef %4) #5
  switch i16 %41, label %50 [
    i16 -1, label %42
    i16 1, label %46
  ]

42:                                               ; preds = %40
  %43 = tail call ptr %2(ptr noundef %4) #5
  %44 = getelementptr inbounds %struct.DLRBT_Node, ptr %38, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !41
  %45 = getelementptr inbounds %struct.DLRBT_Node, ptr %43, i64 0, i32 4
  store ptr %38, ptr %45, align 8, !tbaa !51
  br label %55

46:                                               ; preds = %40
  %47 = tail call ptr %2(ptr noundef %4) #5
  %48 = getelementptr inbounds %struct.DLRBT_Node, ptr %38, i64 0, i32 3
  store ptr %47, ptr %48, align 8, !tbaa !43
  %49 = getelementptr inbounds %struct.DLRBT_Node, ptr %47, i64 0, i32 4
  store ptr %38, ptr %49, align 8, !tbaa !51
  br label %55

50:                                               ; preds = %40
  %51 = icmp eq ptr %3, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %50
  tail call void %3(ptr noundef nonnull %38, ptr noundef %4) #5
  br label %55

53:                                               ; preds = %37
  %54 = tail call ptr %2(ptr noundef %4) #5
  store ptr %54, ptr %12, align 8, !tbaa !40
  br label %55

55:                                               ; preds = %42, %46, %52, %50, %53
  %56 = phi ptr [ null, %52 ], [ null, %50 ], [ %47, %46 ], [ %43, %42 ], [ %54, %53 ]
  %57 = phi i1 [ true, %52 ], [ true, %50 ], [ false, %46 ], [ false, %42 ], [ false, %53 ]
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.DLRBT_Node, ptr %56, i64 0, i32 5
  store i8 1, ptr %59, align 8, !tbaa !50
  tail call fastcc void @insert_check_1(ptr noundef nonnull %0, ptr noundef %56)
  br label %60

60:                                               ; preds = %55, %58, %5
  %61 = phi ptr [ null, %5 ], [ %56, %58 ], [ %56, %55 ]
  ret ptr %61
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

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
!39 = !{!"DLRBT_Tree", !35, i64 0, !35, i64 8, !35, i64 16}
!40 = !{!39, !35, i64 16}
!41 = !{!42, !35, i64 16}
!42 = !{!"DLRBT_Node", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40}
!43 = !{!42, !35, i64 24}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = distinct !{!47, !45, !46}
!48 = !{!42, !35, i64 8}
!49 = !{!42, !35, i64 0}
!50 = !{!42, !36, i64 40}
!51 = !{!42, !35, i64 32}
