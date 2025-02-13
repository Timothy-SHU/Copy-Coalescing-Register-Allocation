; ModuleID = 'blender/source/blender/blenlib/intern/DLRB_tree.c'
source_filename = "blender/source/blender/blenlib/intern/DLRB_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.DLRBT_Tree = type { ptr, ptr, ptr }
%struct.DLRBT_Node = type { ptr, ptr, ptr, ptr, ptr, i8 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"DLRBT_Tree\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_dlrbTree_new() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 24, ptr noundef nonnull @.str) #7
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BLI_dlrbTree_init(ptr noundef writeonly %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %4

4:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_dlrbTree_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !38
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #7
  br label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.DLRBT_Tree, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  tail call fastcc void @recursive_tree_free_nodes(ptr noundef %9) #8
  br label %10

10:                                               ; preds = %7, %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %11

11:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @recursive_tree_free_nodes(ptr noundef %0) unnamed_addr #0 !PGOFuncName !41 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1, %4
  ret void

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.DLRBT_Node, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  tail call fastcc void @recursive_tree_free_nodes(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.DLRBT_Node, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  tail call fastcc void @recursive_tree_free_nodes(ptr noundef %8) #8
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %9(ptr noundef nonnull %0) #7
  br label %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_dlrbTree_linkedlist_sync(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.DLRBT_Tree, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  tail call fastcc void @linkedlist_sync_add_node(ptr noundef nonnull %0, ptr noundef %5) #8
  br label %6

6:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @linkedlist_sync_add_node(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !45 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %9, %4 ], [ %1, %2 ]
  %6 = getelementptr inbounds %struct.DLRBT_Node, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  tail call fastcc void @linkedlist_sync_add_node(ptr noundef %0, ptr noundef %7) #8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef nonnull %5) #7
  %8 = getelementptr inbounds %struct.DLRBT_Node, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_dlrbTree_search(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.DLRBT_Tree, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = icmp eq ptr %1, null
  %9 = icmp eq ptr %7, null
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %29, label %11

11:                                               ; preds = %5, %24
  %12 = phi ptr [ %25, %24 ], [ %7, %5 ]
  %13 = tail call signext i16 %1(ptr noundef nonnull %12, ptr noundef %2) #7
  switch i16 %13, label %29 [
    i16 -1, label %14
    i16 1, label %19
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.DLRBT_Node, ptr %12, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, ptr %12, ptr %16
  br label %24

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.DLRBT_Node, ptr %12, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = icmp eq ptr %21, null
  %23 = select i1 %22, ptr %12, ptr %21
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi ptr [ %18, %14 ], [ %23, %19 ]
  %26 = phi i1 [ %17, %14 ], [ %22, %19 ]
  %27 = icmp eq ptr %25, null
  %28 = select i1 %27, i1 true, i1 %26
  br i1 %28, label %29, label %11, !llvm.loop !46

29:                                               ; preds = %11, %24, %3, %5
  %30 = phi ptr [ null, %5 ], [ null, %3 ], [ %12, %11 ], [ %25, %24 ]
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_dlrbTree_search_exact(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.DLRBT_Tree, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = icmp eq ptr %1, null
  %9 = icmp eq ptr %7, null
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %29, label %11

11:                                               ; preds = %5, %24
  %12 = phi ptr [ %26, %24 ], [ %7, %5 ]
  %13 = tail call signext i16 %1(ptr noundef nonnull %12, ptr noundef %2) #7
  switch i16 %13, label %29 [
    i16 -1, label %14
    i16 1, label %19
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.DLRBT_Node, ptr %12, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, ptr %12, ptr %16
  br label %24

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.DLRBT_Node, ptr %12, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = icmp eq ptr %21, null
  %23 = select i1 %22, ptr %12, ptr %21
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i1 [ %22, %19 ], [ %17, %14 ]
  %26 = phi ptr [ %23, %19 ], [ %18, %14 ]
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, i1 true, i1 %25
  br i1 %28, label %29, label %11, !llvm.loop !48

29:                                               ; preds = %11, %24, %3, %5
  %30 = phi ptr [ null, %5 ], [ null, %3 ], [ %12, %11 ], [ null, %24 ]
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_dlrbTree_search_prev(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @BLI_dlrbTree_search(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  %9 = tail call signext i16 %1(ptr noundef nonnull %6, ptr noundef %2) #7
  %10 = icmp sgt i16 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.DLRBT_Node, ptr %6, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  br label %14

14:                                               ; preds = %5, %8, %3, %11
  %15 = phi ptr [ %13, %11 ], [ null, %3 ], [ %6, %8 ], [ null, %5 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_dlrbTree_search_next(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @BLI_dlrbTree_search(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = tail call signext i16 %1(ptr noundef nonnull %6, ptr noundef %2) #7
  %10 = icmp slt i16 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %6, align 8, !tbaa !50
  br label %13

13:                                               ; preds = %5, %8, %3, %11
  %14 = phi ptr [ %12, %11 ], [ null, %3 ], [ %6, %8 ], [ null, %5 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef signext i16 @BLI_dlrbTree_contains(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BLI_dlrbTree_search_exact(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8
  %5 = icmp ne ptr %4, null
  %6 = zext i1 %5 to i16
  ret i16 %6
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_dlrbTree_insert(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DLRBT_Node, ptr %1, i64 0, i32 5
  store i8 1, ptr %7, align 8, !tbaa !51
  tail call fastcc void @insert_check_1(ptr noundef nonnull %0, ptr noundef nonnull %1) #8
  br label %8

8:                                                ; preds = %2, %6
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @insert_check_1(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #3 !PGOFuncName !52 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.DLRBT_Node, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.DLRBT_Node, ptr %1, i64 0, i32 5
  store i8 0, ptr %9, align 8, !tbaa !51
  br label %11

10:                                               ; preds = %4
  tail call fastcc void @insert_check_2(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %11

11:                                               ; preds = %8, %10, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_dlrbTree_add(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %0, null
  %7 = icmp eq ptr %1, null
  %8 = or i1 %6, %7
  %9 = icmp eq ptr %2, null
  %10 = or i1 %8, %9
  br i1 %10, label %33, label %11

11:                                               ; preds = %5
  %12 = tail call ptr @BLI_dlrbTree_search(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %4) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %11
  %15 = tail call signext i16 %1(ptr noundef nonnull %12, ptr noundef %4) #7
  switch i16 %15, label %24 [
    i16 -1, label %16
    i16 1, label %20
  ]

16:                                               ; preds = %14
  %17 = tail call ptr %2(ptr noundef %4) #7
  %18 = getelementptr inbounds %struct.DLRBT_Node, ptr %12, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct.DLRBT_Node, ptr %17, i64 0, i32 4
  store ptr %12, ptr %19, align 8, !tbaa !53
  br label %30

20:                                               ; preds = %14
  %21 = tail call ptr %2(ptr noundef %4) #7
  %22 = getelementptr inbounds %struct.DLRBT_Node, ptr %12, i64 0, i32 3
  store ptr %21, ptr %22, align 8, !tbaa !44
  %23 = getelementptr inbounds %struct.DLRBT_Node, ptr %21, i64 0, i32 4
  store ptr %12, ptr %23, align 8, !tbaa !53
  br label %30

24:                                               ; preds = %14
  %25 = icmp eq ptr %3, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %24
  tail call void %3(ptr noundef nonnull %12, ptr noundef %4) #7
  br label %33

27:                                               ; preds = %11
  %28 = tail call ptr %2(ptr noundef %4) #7
  %29 = getelementptr inbounds %struct.DLRBT_Tree, ptr %0, i64 0, i32 2
  store ptr %28, ptr %29, align 8, !tbaa !40
  br label %30

30:                                               ; preds = %20, %16, %27
  %31 = phi ptr [ %28, %27 ], [ %17, %16 ], [ %21, %20 ]
  %32 = getelementptr inbounds %struct.DLRBT_Node, ptr %31, i64 0, i32 5
  store i8 1, ptr %32, align 8, !tbaa !51
  tail call fastcc void @insert_check_1(ptr noundef nonnull %0, ptr noundef %31) #8
  br label %33

33:                                               ; preds = %24, %26, %30, %5
  %34 = phi ptr [ null, %5 ], [ %31, %30 ], [ null, %26 ], [ null, %24 ]
  ret ptr %34
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @insert_check_2(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #3 !PGOFuncName !54 {
  %3 = getelementptr inbounds %struct.DLRBT_Node, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DLRBT_Node, ptr %4, i64 0, i32 5
  %8 = load i8, ptr %7, align 8, !tbaa !51
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc ptr @get_uncle(ptr noundef nonnull %1) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.DLRBT_Node, ptr %11, i64 0, i32 5
  %15 = load i8, ptr %14, align 8, !tbaa !51
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = tail call fastcc ptr @get_grandparent(ptr noundef nonnull %1) #8
  store i8 0, ptr %14, align 8, !tbaa !51
  store i8 0, ptr %7, align 8, !tbaa !51
  %19 = getelementptr inbounds %struct.DLRBT_Node, ptr %18, i64 0, i32 5
  store i8 1, ptr %19, align 8, !tbaa !51
  tail call fastcc void @insert_check_1(ptr noundef %0, ptr noundef %18) #8
  br label %21

20:                                               ; preds = %13, %10
  tail call fastcc void @insert_check_3(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %21

21:                                               ; preds = %17, %20, %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_uncle(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !55 {
  %2 = getelementptr inbounds %struct.DLRBT_Node, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = tail call fastcc ptr @get_sibling(ptr noundef %3) #8
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_grandparent(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !56 {
  %2 = getelementptr inbounds %struct.DLRBT_Node, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DLRBT_Node, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @insert_check_3(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !PGOFuncName !57 {
  %3 = tail call fastcc ptr @get_grandparent(ptr noundef %1) #8
  %4 = getelementptr inbounds %struct.DLRBT_Node, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp ne ptr %5, null
  %7 = icmp ne ptr %3, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.DLRBT_Node, ptr %5, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.DLRBT_Node, ptr %3, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = icmp eq ptr %5, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  tail call fastcc void @rotate_left(ptr noundef %0, ptr noundef nonnull %1) #8
  %18 = getelementptr inbounds %struct.DLRBT_Node, ptr %1, i64 0, i32 2
  br label %29

19:                                               ; preds = %13, %9
  %20 = getelementptr inbounds %struct.DLRBT_Node, ptr %5, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.DLRBT_Node, ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  %26 = icmp eq ptr %5, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  tail call fastcc void @rotate_right(ptr noundef %0, ptr noundef nonnull %1) #8
  %28 = getelementptr inbounds %struct.DLRBT_Node, ptr %1, i64 0, i32 3
  br label %29

29:                                               ; preds = %27, %17
  %30 = phi ptr [ %18, %17 ], [ %28, %27 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %52, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.DLRBT_Node, ptr %31, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !53
  %36 = getelementptr inbounds %struct.DLRBT_Node, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !42
  br label %38

38:                                               ; preds = %33, %19, %23
  %39 = phi ptr [ %37, %33 ], [ %1, %23 ], [ %21, %19 ]
  %40 = phi ptr [ %35, %33 ], [ %5, %23 ], [ %5, %19 ]
  %41 = phi ptr [ %31, %33 ], [ %1, %23 ], [ %1, %19 ]
  %42 = tail call fastcc ptr @get_grandparent(ptr noundef nonnull %41) #8
  %43 = getelementptr inbounds %struct.DLRBT_Node, ptr %40, i64 0, i32 5
  store i8 0, ptr %43, align 8, !tbaa !51
  %44 = getelementptr inbounds %struct.DLRBT_Node, ptr %42, i64 0, i32 5
  store i8 1, ptr %44, align 8, !tbaa !51
  %45 = icmp eq ptr %41, %39
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.DLRBT_Node, ptr %42, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !42
  %49 = icmp eq ptr %40, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call fastcc void @rotate_right(ptr noundef %0, ptr noundef nonnull %42) #8
  br label %52

51:                                               ; preds = %46, %38
  tail call fastcc void @rotate_left(ptr noundef %0, ptr noundef nonnull %42) #8
  br label %52

52:                                               ; preds = %29, %51, %50, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_sibling(ptr noundef readonly %0) unnamed_addr #4 !PGOFuncName !58 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.DLRBT_Node, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.DLRBT_Node, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.DLRBT_Node, ptr %5, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  br label %14

14:                                               ; preds = %1, %3, %7, %11
  %15 = phi ptr [ %13, %11 ], [ %9, %7 ], [ null, %3 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rotate_left(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !PGOFuncName !59 {
  %3 = getelementptr inbounds %struct.DLRBT_Node, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DLRBT_Node, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.DLRBT_Node, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = icmp eq ptr %12, %1
  %14 = getelementptr inbounds %struct.DLRBT_Node, ptr %8, i64 0, i32 3
  %15 = select i1 %13, ptr %11, ptr %14
  br label %18

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.DLRBT_Tree, ptr %0, i64 0, i32 2
  br label %18

18:                                               ; preds = %10, %16
  %19 = phi ptr [ %17, %16 ], [ %15, %10 ]
  %20 = getelementptr inbounds %struct.DLRBT_Node, ptr %4, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  store ptr %21, ptr %3, align 8, !tbaa !44
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.DLRBT_Node, ptr %21, i64 0, i32 4
  store ptr %1, ptr %24, align 8, !tbaa !53
  %25 = load ptr, ptr %7, align 8, !tbaa !53
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi ptr [ %25, %23 ], [ %8, %18 ]
  store ptr %1, ptr %20, align 8, !tbaa !42
  %28 = getelementptr inbounds %struct.DLRBT_Node, ptr %4, i64 0, i32 4
  store ptr %27, ptr %28, align 8, !tbaa !53
  store ptr %4, ptr %7, align 8, !tbaa !53
  store ptr %4, ptr %19, align 8, !tbaa !34
  br label %29

29:                                               ; preds = %2, %26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rotate_right(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !PGOFuncName !60 {
  %3 = getelementptr inbounds %struct.DLRBT_Node, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DLRBT_Node, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.DLRBT_Node, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = icmp eq ptr %12, %1
  %14 = getelementptr inbounds %struct.DLRBT_Node, ptr %8, i64 0, i32 3
  %15 = select i1 %13, ptr %11, ptr %14
  br label %18

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.DLRBT_Tree, ptr %0, i64 0, i32 2
  br label %18

18:                                               ; preds = %10, %16
  %19 = phi ptr [ %17, %16 ], [ %15, %10 ]
  %20 = getelementptr inbounds %struct.DLRBT_Node, ptr %4, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  store ptr %21, ptr %3, align 8, !tbaa !42
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.DLRBT_Node, ptr %21, i64 0, i32 4
  store ptr %1, ptr %24, align 8, !tbaa !53
  %25 = load ptr, ptr %7, align 8, !tbaa !53
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi ptr [ %25, %23 ], [ %8, %18 ]
  store ptr %1, ptr %20, align 8, !tbaa !44
  %28 = getelementptr inbounds %struct.DLRBT_Node, ptr %4, i64 0, i32 4
  store ptr %27, ptr %28, align 8, !tbaa !53
  store ptr %4, ptr %7, align 8, !tbaa !53
  store ptr %4, ptr %19, align 8, !tbaa !34
  br label %29

29:                                               ; preds = %2, %26
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

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
!39 = !{!"DLRBT_Tree", !35, i64 0, !35, i64 8, !35, i64 16}
!40 = !{!39, !35, i64 16}
!41 = !{!"DLRB_tree.c:recursive_tree_free_nodes"}
!42 = !{!43, !35, i64 16}
!43 = !{!"DLRBT_Node", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40}
!44 = !{!43, !35, i64 24}
!45 = !{!"DLRB_tree.c:linkedlist_sync_add_node"}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = distinct !{!48, !47}
!49 = !{!43, !35, i64 8}
!50 = !{!43, !35, i64 0}
!51 = !{!43, !36, i64 40}
!52 = !{!"DLRB_tree.c:insert_check_1"}
!53 = !{!43, !35, i64 32}
!54 = !{!"DLRB_tree.c:insert_check_2"}
!55 = !{!"DLRB_tree.c:get_uncle"}
!56 = !{!"DLRB_tree.c:get_grandparent"}
!57 = !{!"DLRB_tree.c:insert_check_3"}
!58 = !{!"DLRB_tree.c:get_sibling"}
!59 = !{!"DLRB_tree.c:rotate_left"}
!60 = !{!"DLRB_tree.c:rotate_right"}
