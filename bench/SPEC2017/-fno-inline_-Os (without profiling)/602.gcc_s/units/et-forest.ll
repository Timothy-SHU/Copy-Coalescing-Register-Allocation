; ModuleID = 'et-forest.c'
source_filename = "et-forest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.et_node = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.et_occ = type { ptr, ptr, ptr, ptr, i32, i32, ptr }

@et_nodes = internal global ptr null, align 8
@.str = private unnamed_addr constant [13 x i8] c"et_node pool\00", align 1
@et_occurrences = internal global ptr null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"et_occ pool\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @et_new_tree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @et_nodes, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str, i64 noundef 64, i64 noundef 300) #8
  store ptr %5, ptr @et_nodes, align 8, !tbaa !6
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %5, %4 ], [ %2, %1 ]
  %8 = tail call ptr @pool_alloc(ptr noundef %7) #8
  store ptr %0, ptr %8, align 8, !tbaa !10
  %9 = getelementptr inbounds %struct.et_node, ptr %8, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  %10 = tail call fastcc ptr @et_new_occ(ptr noundef nonnull %8) #9
  %11 = getelementptr inbounds %struct.et_node, ptr %8, i64 0, i32 7
  store ptr %10, ptr %11, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.et_node, ptr %8, i64 0, i32 8
  store ptr null, ptr %12, align 8, !tbaa !14
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @et_new_occ(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @et_occurrences, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.1, i64 noundef 48, i64 noundef 300) #8
  store ptr %5, ptr @et_occurrences, align 8, !tbaa !6
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %5, %4 ], [ %2, %1 ]
  %8 = tail call ptr @pool_alloc(ptr noundef %7) #8
  store ptr %0, ptr %8, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.et_occ, ptr %8, i64 0, i32 1
  %10 = getelementptr inbounds %struct.et_occ, ptr %8, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %9, i8 0, i64 28, i1 false)
  store ptr %8, ptr %10, align 8, !tbaa !17
  %11 = getelementptr inbounds %struct.et_occ, ptr %8, i64 0, i32 5
  store i32 0, ptr %11, align 4, !tbaa !18
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @et_free_tree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call void @et_split(ptr noundef nonnull %6) #9
  %7 = load ptr, ptr %2, align 8, !tbaa !19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !20

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @et_split(ptr noundef nonnull %0) #9
  br label %14

14:                                               ; preds = %13, %9
  %15 = load ptr, ptr @et_occurrences, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !13
  tail call void @pool_free(ptr noundef %15, ptr noundef %17) #8
  %18 = load ptr, ptr @et_nodes, align 8, !tbaa !6
  tail call void @pool_free(ptr noundef %18, ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @et_split(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  tail call fastcc void @et_splay(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.et_occ, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !23
  br label %8

8:                                                ; preds = %8, %1
  %9 = phi ptr [ %7, %1 ], [ %11, %8 ]
  %10 = getelementptr inbounds %struct.et_occ, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !25

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.et_occ, ptr %9, i64 0, i32 2
  tail call fastcc void @et_splay(ptr noundef nonnull %9) #9
  %15 = load ptr, ptr %14, align 8, !tbaa !24
  %16 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 1
  store ptr null, ptr %16, align 8, !tbaa !26
  %17 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !14
  tail call fastcc void @et_splay(ptr noundef %18) #9
  store ptr null, ptr %17, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct.et_occ, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !24
  %21 = getelementptr inbounds %struct.et_occ, ptr %18, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !23
  %23 = getelementptr inbounds %struct.et_occ, ptr %22, i64 0, i32 1
  store ptr null, ptr %23, align 8, !tbaa !26
  tail call fastcc void @set_prev(ptr noundef nonnull %9, ptr noundef %20) #9
  tail call fastcc void @et_recomp_min(ptr noundef nonnull %9) #9
  tail call fastcc void @et_splay(ptr noundef %5) #9
  %24 = getelementptr inbounds %struct.et_occ, ptr %5, i64 0, i32 4
  store i32 0, ptr %24, align 8, !tbaa !27
  %25 = getelementptr inbounds %struct.et_occ, ptr %5, i64 0, i32 5
  store i32 0, ptr %25, align 4, !tbaa !18
  %26 = load ptr, ptr @et_occurrences, align 8, !tbaa !6
  tail call void @pool_free(ptr noundef %26, ptr noundef %18) #8
  %27 = getelementptr inbounds %struct.et_node, ptr %3, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !19
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %30, label %33

30:                                               ; preds = %13
  %31 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !28
  store ptr %32, ptr %27, align 8, !tbaa !19
  br label %33

33:                                               ; preds = %30, %13
  %34 = phi ptr [ %32, %30 ], [ %28, %13 ]
  %35 = icmp eq ptr %34, %0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store ptr null, ptr %27, align 8, !tbaa !19
  br label %44

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !28
  %40 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !29
  %42 = getelementptr inbounds %struct.et_node, ptr %41, i64 0, i32 6
  store ptr %39, ptr %42, align 8, !tbaa !28
  %43 = getelementptr inbounds %struct.et_node, ptr %39, i64 0, i32 5
  store ptr %41, ptr %43, align 8, !tbaa !29
  br label %44

44:                                               ; preds = %37, %36
  %45 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 5
  store ptr null, ptr %2, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @et_free_tree_force(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @et_occurrences, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  tail call void @pool_free(ptr noundef %2, ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @et_occurrences, align 8, !tbaa !6
  tail call void @pool_free(ptr noundef %9, ptr noundef nonnull %6) #8
  br label %10

10:                                               ; preds = %8, %1
  %11 = load ptr, ptr @et_nodes, align 8, !tbaa !6
  tail call void @pool_free(ptr noundef %11, ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @et_free_pools() local_unnamed_addr #0 {
  tail call void @free_alloc_pool_if_empty(ptr noundef nonnull @et_occurrences) #8
  tail call void @free_alloc_pool_if_empty(ptr noundef nonnull @et_nodes) #8
  ret void
}

; Function Attrs: optsize
declare void @free_alloc_pool_if_empty(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @et_set_father(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @et_new_occ(ptr noundef %1) #9
  %4 = getelementptr inbounds %struct.et_node, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  tail call fastcc void @et_splay(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.et_occ, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !24
  %8 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  tail call fastcc void @et_splay(ptr noundef %9) #9
  tail call fastcc void @set_prev(ptr noundef %3, ptr noundef %7) #9
  tail call fastcc void @set_next(ptr noundef %3, ptr noundef %9) #9
  %10 = getelementptr inbounds %struct.et_occ, ptr %9, i64 0, i32 4
  %11 = load <2 x i32>, ptr %10, align 8, !tbaa !30
  %12 = add nsw <2 x i32> %11, <i32 1, i32 1>
  store <2 x i32> %12, ptr %10, align 8, !tbaa !30
  tail call fastcc void @et_recomp_min(ptr noundef %3) #9
  tail call fastcc void @set_prev(ptr noundef %5, ptr noundef %3) #9
  %13 = getelementptr inbounds %struct.et_occ, ptr %3, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !18
  %15 = getelementptr inbounds %struct.et_occ, ptr %5, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !27
  %17 = add nsw i32 %16, %14
  %18 = getelementptr inbounds %struct.et_occ, ptr %5, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !18
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  store i32 %17, ptr %18, align 4, !tbaa !18
  %22 = getelementptr inbounds %struct.et_occ, ptr %3, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !17
  %24 = getelementptr inbounds %struct.et_occ, ptr %5, i64 0, i32 6
  store ptr %23, ptr %24, align 8, !tbaa !17
  br label %25

25:                                               ; preds = %21, %2
  %26 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 8
  store ptr %3, ptr %26, align 8, !tbaa !14
  %27 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 3
  store ptr %1, ptr %27, align 8, !tbaa !22
  %28 = getelementptr inbounds %struct.et_node, ptr %1, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !19
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.et_node, ptr %29, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !29
  br label %34

34:                                               ; preds = %25, %31
  %35 = phi ptr [ %29, %31 ], [ %0, %25 ]
  %36 = phi ptr [ %33, %31 ], [ %0, %25 ]
  %37 = getelementptr inbounds %struct.et_node, ptr %36, i64 0, i32 6
  store ptr %0, ptr %37, align 8, !tbaa !28
  %38 = getelementptr inbounds %struct.et_node, ptr %35, i64 0, i32 5
  store ptr %0, ptr %38, align 8, !tbaa !29
  %39 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 5
  store ptr %36, ptr %39, align 8, !tbaa !29
  %40 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 6
  store ptr %35, ptr %40, align 8, !tbaa !28
  store ptr %0, ptr %28, align 8, !tbaa !19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @et_splay(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !26
  %4 = icmp eq ptr %3, null
  br i1 %4, label %98, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 6
  %8 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 3
  br label %11

11:                                               ; preds = %5, %95
  %12 = phi ptr [ %3, %5 ], [ %96, %95 ]
  %13 = load i32, ptr %6, align 8, !tbaa !27
  %14 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !27
  %16 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !26
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %11
  tail call fastcc void @set_depth_add(ptr noundef nonnull %0, i32 noundef %15) #9
  %20 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !17
  store ptr %21, ptr %7, align 8, !tbaa !17
  %22 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !18
  store i32 %23, ptr %8, align 4, !tbaa !18
  %24 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !24
  %26 = icmp eq ptr %25, %0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load ptr, ptr %10, align 8, !tbaa !23
  tail call fastcc void @set_prev(ptr noundef nonnull %12, ptr noundef %28) #9
  tail call fastcc void @set_next(ptr noundef nonnull %0, ptr noundef nonnull %12) #9
  br label %32

29:                                               ; preds = %19
  %30 = load ptr, ptr %9, align 8, !tbaa !24
  tail call fastcc void @set_next(ptr noundef nonnull %12, ptr noundef %30) #9
  tail call fastcc void @set_prev(ptr noundef nonnull %0, ptr noundef nonnull %12) #9
  %31 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 3
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi ptr [ %31, %29 ], [ %24, %27 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  tail call fastcc void @set_depth_add(ptr noundef %34, i32 noundef %13) #9
  %35 = sub nsw i32 0, %13
  tail call fastcc void @set_depth(ptr noundef nonnull %12, i32 noundef %35) #9
  store ptr null, ptr %2, align 8, !tbaa !26
  tail call fastcc void @et_recomp_min(ptr noundef nonnull %12) #9
  br label %98

36:                                               ; preds = %11
  %37 = getelementptr inbounds %struct.et_occ, ptr %17, i64 0, i32 4
  %38 = load i32, ptr %37, align 8, !tbaa !27
  %39 = add nsw i32 %38, %15
  tail call fastcc void @set_depth_add(ptr noundef nonnull %0, i32 noundef %39) #9
  %40 = getelementptr inbounds %struct.et_occ, ptr %17, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !17
  store ptr %41, ptr %7, align 8, !tbaa !17
  %42 = getelementptr inbounds %struct.et_occ, ptr %17, i64 0, i32 5
  %43 = load i32, ptr %42, align 4, !tbaa !18
  store i32 %43, ptr %8, align 4, !tbaa !18
  %44 = getelementptr inbounds %struct.et_occ, ptr %17, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !26
  %46 = getelementptr inbounds %struct.et_occ, ptr %17, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !24
  %48 = icmp eq ptr %47, %12
  %49 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !24
  %51 = icmp eq ptr %50, %0
  br i1 %48, label %52, label %70

52:                                               ; preds = %36
  br i1 %51, label %53, label %61

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !23
  tail call fastcc void @set_prev(ptr noundef nonnull %17, ptr noundef %55) #9
  %56 = load ptr, ptr %10, align 8, !tbaa !23
  tail call fastcc void @set_prev(ptr noundef nonnull %12, ptr noundef %56) #9
  tail call fastcc void @set_next(ptr noundef nonnull %0, ptr noundef nonnull %12) #9
  tail call fastcc void @set_next(ptr noundef nonnull %12, ptr noundef nonnull %17) #9
  %57 = sub nsw i32 0, %13
  tail call fastcc void @set_depth(ptr noundef nonnull %12, i32 noundef %57) #9
  %58 = load ptr, ptr %49, align 8, !tbaa !24
  tail call fastcc void @set_depth_add(ptr noundef %58, i32 noundef %13) #9
  %59 = sub nsw i32 0, %15
  tail call fastcc void @set_depth(ptr noundef nonnull %17, i32 noundef %59) #9
  %60 = load ptr, ptr %46, align 8, !tbaa !24
  tail call fastcc void @set_depth_add(ptr noundef %60, i32 noundef %15) #9
  br label %87

61:                                               ; preds = %52
  %62 = load ptr, ptr %10, align 8, !tbaa !23
  tail call fastcc void @set_prev(ptr noundef nonnull %17, ptr noundef %62) #9
  %63 = load ptr, ptr %9, align 8, !tbaa !24
  tail call fastcc void @set_next(ptr noundef nonnull %12, ptr noundef %63) #9
  tail call fastcc void @set_prev(ptr noundef nonnull %0, ptr noundef nonnull %12) #9
  tail call fastcc void @set_next(ptr noundef nonnull %0, ptr noundef nonnull %17) #9
  %64 = sub nsw i32 0, %13
  tail call fastcc void @set_depth(ptr noundef nonnull %12, i32 noundef %64) #9
  %65 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !23
  tail call fastcc void @set_depth_add(ptr noundef %66, i32 noundef %13) #9
  %67 = sub nsw i32 %64, %15
  tail call fastcc void @set_depth(ptr noundef nonnull %17, i32 noundef %67) #9
  %68 = load ptr, ptr %46, align 8, !tbaa !24
  %69 = add nsw i32 %15, %13
  tail call fastcc void @set_depth_add(ptr noundef %68, i32 noundef %69) #9
  br label %87

70:                                               ; preds = %36
  %71 = getelementptr inbounds %struct.et_occ, ptr %17, i64 0, i32 3
  br i1 %51, label %72, label %80

72:                                               ; preds = %70
  %73 = load ptr, ptr %9, align 8, !tbaa !24
  tail call fastcc void @set_next(ptr noundef nonnull %17, ptr noundef %73) #9
  %74 = load ptr, ptr %10, align 8, !tbaa !23
  tail call fastcc void @set_prev(ptr noundef nonnull %12, ptr noundef %74) #9
  tail call fastcc void @set_prev(ptr noundef nonnull %0, ptr noundef nonnull %17) #9
  tail call fastcc void @set_next(ptr noundef nonnull %0, ptr noundef nonnull %12) #9
  %75 = sub nsw i32 0, %13
  tail call fastcc void @set_depth(ptr noundef nonnull %12, i32 noundef %75) #9
  %76 = load ptr, ptr %49, align 8, !tbaa !24
  tail call fastcc void @set_depth_add(ptr noundef %76, i32 noundef %13) #9
  %77 = sub nsw i32 %75, %15
  tail call fastcc void @set_depth(ptr noundef nonnull %17, i32 noundef %77) #9
  %78 = load ptr, ptr %71, align 8, !tbaa !23
  %79 = add nsw i32 %15, %13
  tail call fastcc void @set_depth_add(ptr noundef %78, i32 noundef %79) #9
  br label %87

80:                                               ; preds = %70
  tail call fastcc void @set_next(ptr noundef nonnull %17, ptr noundef %50) #9
  %81 = load ptr, ptr %9, align 8, !tbaa !24
  tail call fastcc void @set_next(ptr noundef nonnull %12, ptr noundef %81) #9
  tail call fastcc void @set_prev(ptr noundef nonnull %0, ptr noundef nonnull %12) #9
  tail call fastcc void @set_prev(ptr noundef nonnull %12, ptr noundef nonnull %17) #9
  %82 = sub nsw i32 0, %13
  tail call fastcc void @set_depth(ptr noundef nonnull %12, i32 noundef %82) #9
  %83 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !23
  tail call fastcc void @set_depth_add(ptr noundef %84, i32 noundef %13) #9
  %85 = sub nsw i32 0, %15
  tail call fastcc void @set_depth(ptr noundef nonnull %17, i32 noundef %85) #9
  %86 = load ptr, ptr %71, align 8, !tbaa !23
  tail call fastcc void @set_depth_add(ptr noundef %86, i32 noundef %15) #9
  br label %87

87:                                               ; preds = %72, %80, %53, %61
  store ptr %45, ptr %2, align 8, !tbaa !26
  %88 = icmp eq ptr %45, null
  br i1 %88, label %95, label %89

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.et_occ, ptr %45, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !24
  %92 = icmp eq ptr %91, %17
  %93 = getelementptr inbounds %struct.et_occ, ptr %45, i64 0, i32 3
  %94 = select i1 %92, ptr %90, ptr %93
  store ptr %0, ptr %94, align 8, !tbaa !6
  br label %95

95:                                               ; preds = %89, %87
  tail call fastcc void @et_recomp_min(ptr noundef nonnull %17) #9
  tail call fastcc void @et_recomp_min(ptr noundef nonnull %12) #9
  %96 = load ptr, ptr %2, align 8, !tbaa !26
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %11, !llvm.loop !31

98:                                               ; preds = %95, %1, %32
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @set_prev(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !24
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.et_occ, ptr %1, i64 0, i32 1
  store ptr %0, ptr %6, align 8, !tbaa !26
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @set_next(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !23
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.et_occ, ptr %1, i64 0, i32 1
  store ptr %0, ptr %6, align 8, !tbaa !26
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @et_recomp_min(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  %7 = icmp eq ptr %6, null
  br i1 %4, label %16, label %8

8:                                                ; preds = %1
  br i1 %7, label %17, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.et_occ, ptr %3, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !18
  %12 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !18
  %14 = icmp sgt i32 %11, %13
  %15 = select i1 %14, ptr %6, ptr %3
  br label %17

16:                                               ; preds = %1
  br i1 %7, label %29, label %17

17:                                               ; preds = %9, %8, %16
  %18 = phi ptr [ %6, %16 ], [ %3, %8 ], [ %15, %9 ]
  %19 = getelementptr inbounds %struct.et_occ, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !18
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !27
  %25 = add nsw i32 %24, %20
  %26 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 5
  store i32 %25, ptr %26, align 4, !tbaa !18
  %27 = getelementptr inbounds %struct.et_occ, ptr %18, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !17
  br label %33

29:                                               ; preds = %17, %16
  %30 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !27
  %32 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 5
  store i32 %31, ptr %32, align 4, !tbaa !18
  br label %33

33:                                               ; preds = %29, %22
  %34 = phi ptr [ %0, %29 ], [ %28, %22 ]
  %35 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 6
  store ptr %34, ptr %35, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @set_depth_add(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 4
  %6 = load <2 x i32>, ptr %5, align 8, !tbaa !30
  %7 = insertelement <2 x i32> poison, i32 %1, i64 0
  %8 = shufflevector <2 x i32> %7, <2 x i32> poison, <2 x i32> zeroinitializer
  %9 = add nsw <2 x i32> %6, %8
  store <2 x i32> %9, ptr %5, align 8, !tbaa !30
  br label %10

10:                                               ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @set_depth(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !27
  %5 = sub i32 %1, %4
  %6 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !18
  %8 = add nsw i32 %5, %7
  store i32 %8, ptr %6, align 4, !tbaa !18
  store i32 %1, ptr %3, align 8, !tbaa !27
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @et_nca(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = getelementptr inbounds %struct.et_node, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = icmp eq ptr %0, %1
  br i1 %7, label %61, label %8

8:                                                ; preds = %2
  tail call fastcc void @et_splay(ptr noundef %4) #9
  %9 = getelementptr inbounds %struct.et_occ, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !24
  %11 = getelementptr inbounds %struct.et_occ, ptr %4, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !23
  %13 = icmp eq ptr %10, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.et_occ, ptr %10, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !26
  br label %16

16:                                               ; preds = %14, %8
  %17 = icmp eq ptr %12, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 1
  store ptr null, ptr %19, align 8, !tbaa !26
  br label %20

20:                                               ; preds = %18, %16
  tail call fastcc void @et_splay(ptr noundef %6) #9
  %21 = icmp eq ptr %10, %6
  br i1 %21, label %30, label %22

22:                                               ; preds = %20
  br i1 %13, label %23, label %26

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !24
  tail call fastcc void @set_next(ptr noundef nonnull %4, ptr noundef %6) #9
  br label %38

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.et_occ, ptr %10, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !26
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26, %20
  %31 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !23
  tail call fastcc void @set_prev(ptr noundef nonnull %4, ptr noundef %6) #9
  br i1 %17, label %38, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 1
  store ptr %4, ptr %34, align 8, !tbaa !26
  br label %38

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !24
  tail call fastcc void @set_next(ptr noundef nonnull %4, ptr noundef %6) #9
  store ptr %4, ptr %27, align 8, !tbaa !26
  br label %38

38:                                               ; preds = %23, %35, %30, %33
  %39 = phi ptr [ %32, %33 ], [ %32, %30 ], [ %37, %35 ], [ %25, %23 ]
  %40 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 4
  %41 = load i32, ptr %40, align 8, !tbaa !27
  %42 = icmp sgt i32 %41, 0
  %43 = select i1 %42, ptr %4, ptr %6
  %44 = icmp eq ptr %39, null
  br i1 %44, label %58, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.et_occ, ptr %4, i64 0, i32 4
  %47 = load i32, ptr %46, align 8, !tbaa !27
  %48 = tail call i32 @llvm.smin.i32(i32 %41, i32 0)
  %49 = add nsw i32 %47, %48
  %50 = getelementptr inbounds %struct.et_occ, ptr %39, i64 0, i32 5
  %51 = load i32, ptr %50, align 4, !tbaa !18
  %52 = add i32 %51, %41
  %53 = add i32 %52, %47
  %54 = icmp slt i32 %53, %49
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.et_occ, ptr %39, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !17
  br label %58

58:                                               ; preds = %38, %45, %55
  %59 = phi ptr [ %57, %55 ], [ %43, %45 ], [ %43, %38 ]
  %60 = load ptr, ptr %59, align 8, !tbaa !15
  br label %61

61:                                               ; preds = %58, %2
  %62 = phi ptr [ %0, %2 ], [ %60, %58 ]
  ret ptr %62
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @et_below(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.et_node, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %48, label %8

8:                                                ; preds = %2
  tail call fastcc void @et_splay(ptr noundef %4) #9
  %9 = getelementptr inbounds %struct.et_occ, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !24
  %11 = getelementptr inbounds %struct.et_occ, ptr %4, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !23
  %13 = icmp eq ptr %10, null
  br i1 %13, label %48, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.et_occ, ptr %10, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !26
  %16 = icmp eq ptr %12, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 1
  store ptr null, ptr %18, align 8, !tbaa !26
  br label %19

19:                                               ; preds = %17, %14
  tail call fastcc void @et_splay(ptr noundef %6) #9
  %20 = icmp eq ptr %10, %6
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = load ptr, ptr %15, align 8, !tbaa !26
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %21, %19
  br i1 %16, label %27, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 1
  store ptr %4, ptr %26, align 8, !tbaa !26
  br label %27

27:                                               ; preds = %25, %24
  tail call fastcc void @set_prev(ptr noundef nonnull %4, ptr noundef %6) #9
  %28 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !27
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %48, label %38

31:                                               ; preds = %21
  store ptr %4, ptr %15, align 8, !tbaa !26
  br i1 %16, label %37, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !26
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call fastcc void @set_next(ptr noundef nonnull %4, ptr noundef %6) #9
  br label %48

37:                                               ; preds = %32, %31
  tail call fastcc void @set_next(ptr noundef nonnull %4, ptr noundef %12) #9
  br label %48

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !23
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.et_occ, ptr %40, i64 0, i32 5
  %44 = load i32, ptr %43, align 4, !tbaa !18
  %45 = add nsw i32 %44, %29
  %46 = icmp sgt i32 %45, -1
  %47 = zext i1 %46 to i8
  br label %48

48:                                               ; preds = %38, %42, %27, %36, %37, %8, %2
  %49 = phi i8 [ 1, %2 ], [ 0, %8 ], [ 0, %37 ], [ 0, %36 ], [ 0, %27 ], [ 1, %38 ], [ %47, %42 ]
  ret i8 %49
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @et_root(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !13
  tail call fastcc void @et_splay(ptr noundef %3) #9
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %3, %1 ], [ %7, %4 ]
  %6 = getelementptr inbounds %struct.et_occ, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !32

9:                                                ; preds = %4
  tail call fastcc void @et_splay(ptr noundef nonnull %5) #9
  %10 = load ptr, ptr %5, align 8, !tbaa !15
  ret ptr %10
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 0}
!11 = !{!"et_node", !7, i64 0, !12, i64 8, !12, i64 12, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56}
!12 = !{!"int", !8, i64 0}
!13 = !{!11, !7, i64 48}
!14 = !{!11, !7, i64 56}
!15 = !{!16, !7, i64 0}
!16 = !{!"et_occ", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !12, i64 32, !12, i64 36, !7, i64 40}
!17 = !{!16, !7, i64 40}
!18 = !{!16, !12, i64 36}
!19 = !{!11, !7, i64 24}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!11, !7, i64 16}
!23 = !{!16, !7, i64 24}
!24 = !{!16, !7, i64 16}
!25 = distinct !{!25, !21}
!26 = !{!16, !7, i64 8}
!27 = !{!16, !12, i64 32}
!28 = !{!11, !7, i64 40}
!29 = !{!11, !7, i64 32}
!30 = !{!12, !12, i64 0}
!31 = distinct !{!31, !21}
!32 = distinct !{!32, !21}
