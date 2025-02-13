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
define dso_local noundef ptr @et_new_tree(ptr noundef %0) local_unnamed_addr #0 !prof !66 {
  %2 = load ptr, ptr @et_nodes, align 8, !tbaa !67
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6, !prof !71

4:                                                ; preds = %1
  %5 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str, i64 noundef 64, i64 noundef 300) #8
  store ptr %5, ptr @et_nodes, align 8, !tbaa !67
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %5, %4 ], [ %2, %1 ]
  %8 = tail call ptr @pool_alloc(ptr noundef %7) #8
  store ptr %0, ptr %8, align 8, !tbaa !72
  %9 = getelementptr inbounds %struct.et_node, ptr %8, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  %10 = tail call fastcc ptr @et_new_occ(ptr noundef nonnull %8) #9
  %11 = getelementptr inbounds %struct.et_node, ptr %8, i64 0, i32 7
  store ptr %10, ptr %11, align 8, !tbaa !75
  %12 = getelementptr inbounds %struct.et_node, ptr %8, i64 0, i32 8
  store ptr null, ptr %12, align 8, !tbaa !76
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @et_new_occ(ptr noundef %0) unnamed_addr #0 !prof !77 !PGOFuncName !78 {
  %2 = load ptr, ptr @et_occurrences, align 8, !tbaa !67
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6, !prof !79

4:                                                ; preds = %1
  %5 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.1, i64 noundef 48, i64 noundef 300) #8
  store ptr %5, ptr @et_occurrences, align 8, !tbaa !67
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %5, %4 ], [ %2, %1 ]
  %8 = tail call ptr @pool_alloc(ptr noundef %7) #8
  store ptr %0, ptr %8, align 8, !tbaa !80
  %9 = getelementptr inbounds %struct.et_occ, ptr %8, i64 0, i32 1
  %10 = getelementptr inbounds %struct.et_occ, ptr %8, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %9, i8 0, i64 28, i1 false)
  store ptr %8, ptr %10, align 8, !tbaa !82
  %11 = getelementptr inbounds %struct.et_occ, ptr %8, i64 0, i32 5
  store i32 0, ptr %11, align 4, !tbaa !83
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @et_free_tree(ptr noundef %0) local_unnamed_addr #0 !prof !84 {
  %2 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !86

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call void @et_split(ptr noundef nonnull %6) #9
  %7 = load ptr, ptr %2, align 8, !tbaa !85
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !prof !87, !llvm.loop !88

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !90
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !91

13:                                               ; preds = %9
  tail call void @et_split(ptr noundef nonnull %0) #9
  br label %14

14:                                               ; preds = %13, %9
  %15 = load ptr, ptr @et_occurrences, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  tail call void @pool_free(ptr noundef %15, ptr noundef %17) #8
  %18 = load ptr, ptr @et_nodes, align 8, !tbaa !67
  tail call void @pool_free(ptr noundef %18, ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @et_split(ptr noundef %0) local_unnamed_addr #0 !prof !92 {
  %2 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  tail call fastcc void @et_splay(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.et_occ, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  br label %8

8:                                                ; preds = %8, %1
  %9 = phi ptr [ %7, %1 ], [ %11, %8 ]
  %10 = getelementptr inbounds %struct.et_occ, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !94
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !prof !95, !llvm.loop !96

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.et_occ, ptr %9, i64 0, i32 2
  tail call fastcc void @et_splay(ptr noundef nonnull %9) #9
  %15 = load ptr, ptr %14, align 8, !tbaa !94
  %16 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 1
  store ptr null, ptr %16, align 8, !tbaa !97
  %17 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !76
  tail call fastcc void @et_splay(ptr noundef %18) #9
  store ptr null, ptr %17, align 8, !tbaa !76
  %19 = getelementptr inbounds %struct.et_occ, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !94
  %21 = getelementptr inbounds %struct.et_occ, ptr %18, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !93
  %23 = getelementptr inbounds %struct.et_occ, ptr %22, i64 0, i32 1
  store ptr null, ptr %23, align 8, !tbaa !97
  tail call fastcc void @set_prev(ptr noundef nonnull %9, ptr noundef %20) #9
  tail call fastcc void @et_recomp_min(ptr noundef nonnull %9) #9
  tail call fastcc void @et_splay(ptr noundef %5) #9
  %24 = getelementptr inbounds %struct.et_occ, ptr %5, i64 0, i32 4
  store i32 0, ptr %24, align 8, !tbaa !98
  %25 = getelementptr inbounds %struct.et_occ, ptr %5, i64 0, i32 5
  store i32 0, ptr %25, align 4, !tbaa !83
  %26 = load ptr, ptr @et_occurrences, align 8, !tbaa !67
  tail call void @pool_free(ptr noundef %26, ptr noundef %18) #8
  %27 = getelementptr inbounds %struct.et_node, ptr %3, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !85
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %30, label %33, !prof !99

30:                                               ; preds = %13
  %31 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !100
  store ptr %32, ptr %27, align 8, !tbaa !85
  br label %33

33:                                               ; preds = %30, %13
  %34 = phi ptr [ %32, %30 ], [ %28, %13 ]
  %35 = icmp eq ptr %34, %0
  br i1 %35, label %36, label %37, !prof !101

36:                                               ; preds = %33
  store ptr null, ptr %27, align 8, !tbaa !85
  br label %44

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !100
  %40 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !102
  %42 = getelementptr inbounds %struct.et_node, ptr %41, i64 0, i32 6
  store ptr %39, ptr %42, align 8, !tbaa !100
  %43 = getelementptr inbounds %struct.et_node, ptr %39, i64 0, i32 5
  store ptr %41, ptr %43, align 8, !tbaa !102
  br label %44

44:                                               ; preds = %37, %36
  %45 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 5
  store ptr null, ptr %2, align 8, !tbaa !90
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @et_free_tree_force(ptr noundef %0) local_unnamed_addr #0 !prof !103 {
  %2 = load ptr, ptr @et_occurrences, align 8, !tbaa !67
  %3 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  tail call void @pool_free(ptr noundef %2, ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !104

8:                                                ; preds = %1
  %9 = load ptr, ptr @et_occurrences, align 8, !tbaa !67
  tail call void @pool_free(ptr noundef %9, ptr noundef nonnull %6) #8
  br label %10

10:                                               ; preds = %8, %1
  %11 = load ptr, ptr @et_nodes, align 8, !tbaa !67
  tail call void @pool_free(ptr noundef %11, ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @et_free_pools() local_unnamed_addr #0 !prof !105 {
  tail call void @free_alloc_pool_if_empty(ptr noundef nonnull @et_occurrences) #8
  tail call void @free_alloc_pool_if_empty(ptr noundef nonnull @et_nodes) #8
  ret void
}

; Function Attrs: optsize
declare void @free_alloc_pool_if_empty(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @et_set_father(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !106 {
  %3 = tail call fastcc ptr @et_new_occ(ptr noundef %1) #9
  %4 = getelementptr inbounds %struct.et_node, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  tail call fastcc void @et_splay(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.et_occ, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !94
  %8 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  tail call fastcc void @et_splay(ptr noundef %9) #9
  tail call fastcc void @set_prev(ptr noundef %3, ptr noundef %7) #9
  tail call fastcc void @set_next(ptr noundef %3, ptr noundef %9) #9
  %10 = getelementptr inbounds %struct.et_occ, ptr %9, i64 0, i32 4
  %11 = load <2 x i32>, ptr %10, align 8, !tbaa !107
  %12 = add nsw <2 x i32> %11, <i32 1, i32 1>
  store <2 x i32> %12, ptr %10, align 8, !tbaa !107
  tail call fastcc void @et_recomp_min(ptr noundef %3) #9
  tail call fastcc void @set_prev(ptr noundef %5, ptr noundef %3) #9
  %13 = getelementptr inbounds %struct.et_occ, ptr %3, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !83
  %15 = getelementptr inbounds %struct.et_occ, ptr %5, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !98
  %17 = add nsw i32 %16, %14
  %18 = getelementptr inbounds %struct.et_occ, ptr %5, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !83
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %25, !prof !108

21:                                               ; preds = %2
  store i32 %17, ptr %18, align 4, !tbaa !83
  %22 = getelementptr inbounds %struct.et_occ, ptr %3, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !82
  %24 = getelementptr inbounds %struct.et_occ, ptr %5, i64 0, i32 6
  store ptr %23, ptr %24, align 8, !tbaa !82
  br label %25

25:                                               ; preds = %21, %2
  %26 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 8
  store ptr %3, ptr %26, align 8, !tbaa !76
  %27 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 3
  store ptr %1, ptr %27, align 8, !tbaa !90
  %28 = getelementptr inbounds %struct.et_node, ptr %1, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !85
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31, !prof !109

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.et_node, ptr %29, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !102
  br label %34

34:                                               ; preds = %25, %31
  %35 = phi ptr [ %29, %31 ], [ %0, %25 ]
  %36 = phi ptr [ %33, %31 ], [ %0, %25 ]
  %37 = getelementptr inbounds %struct.et_node, ptr %36, i64 0, i32 6
  store ptr %0, ptr %37, align 8, !tbaa !100
  %38 = getelementptr inbounds %struct.et_node, ptr %35, i64 0, i32 5
  store ptr %0, ptr %38, align 8, !tbaa !102
  %39 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 5
  store ptr %36, ptr %39, align 8, !tbaa !102
  %40 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 6
  store ptr %35, ptr %40, align 8, !tbaa !100
  store ptr %0, ptr %28, align 8, !tbaa !85
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @et_splay(ptr noundef %0) unnamed_addr #2 !prof !110 !PGOFuncName !111 {
  %2 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  %4 = icmp eq ptr %3, null
  br i1 %4, label %98, label %5, !prof !112

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 6
  %8 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 3
  br label %11

11:                                               ; preds = %5, %95
  %12 = phi ptr [ %3, %5 ], [ %96, %95 ]
  %13 = load i32, ptr %6, align 8, !tbaa !98
  %14 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !98
  %16 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !97
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %36, !prof !113

19:                                               ; preds = %11
  tail call fastcc void @set_depth_add(ptr noundef nonnull %0, i32 noundef %15) #9
  %20 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !82
  store ptr %21, ptr %7, align 8, !tbaa !82
  %22 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !83
  store i32 %23, ptr %8, align 4, !tbaa !83
  %24 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !94
  %26 = icmp eq ptr %25, %0
  br i1 %26, label %27, label %29, !prof !114

27:                                               ; preds = %19
  %28 = load ptr, ptr %10, align 8, !tbaa !93
  tail call fastcc void @set_prev(ptr noundef nonnull %12, ptr noundef %28) #9
  tail call fastcc void @set_next(ptr noundef nonnull %0, ptr noundef nonnull %12) #9
  br label %32

29:                                               ; preds = %19
  %30 = load ptr, ptr %9, align 8, !tbaa !94
  tail call fastcc void @set_next(ptr noundef nonnull %12, ptr noundef %30) #9
  tail call fastcc void @set_prev(ptr noundef nonnull %0, ptr noundef nonnull %12) #9
  %31 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 3
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi ptr [ %31, %29 ], [ %24, %27 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !67
  tail call fastcc void @set_depth_add(ptr noundef %34, i32 noundef %13) #9
  %35 = sub nsw i32 0, %13
  tail call fastcc void @set_depth(ptr noundef nonnull %12, i32 noundef %35) #9
  store ptr null, ptr %2, align 8, !tbaa !97
  tail call fastcc void @et_recomp_min(ptr noundef nonnull %12) #9
  br label %98

36:                                               ; preds = %11
  %37 = getelementptr inbounds %struct.et_occ, ptr %17, i64 0, i32 4
  %38 = load i32, ptr %37, align 8, !tbaa !98
  %39 = add nsw i32 %38, %15
  tail call fastcc void @set_depth_add(ptr noundef nonnull %0, i32 noundef %39) #9
  %40 = getelementptr inbounds %struct.et_occ, ptr %17, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !82
  store ptr %41, ptr %7, align 8, !tbaa !82
  %42 = getelementptr inbounds %struct.et_occ, ptr %17, i64 0, i32 5
  %43 = load i32, ptr %42, align 4, !tbaa !83
  store i32 %43, ptr %8, align 4, !tbaa !83
  %44 = getelementptr inbounds %struct.et_occ, ptr %17, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !97
  %46 = getelementptr inbounds %struct.et_occ, ptr %17, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !94
  %48 = icmp eq ptr %47, %12
  %49 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !94
  %51 = icmp eq ptr %50, %0
  br i1 %48, label %52, label %70, !prof !115

52:                                               ; preds = %36
  br i1 %51, label %53, label %61, !prof !116

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !93
  tail call fastcc void @set_prev(ptr noundef nonnull %17, ptr noundef %55) #9
  %56 = load ptr, ptr %10, align 8, !tbaa !93
  tail call fastcc void @set_prev(ptr noundef nonnull %12, ptr noundef %56) #9
  tail call fastcc void @set_next(ptr noundef nonnull %0, ptr noundef nonnull %12) #9
  tail call fastcc void @set_next(ptr noundef nonnull %12, ptr noundef nonnull %17) #9
  %57 = sub nsw i32 0, %13
  tail call fastcc void @set_depth(ptr noundef nonnull %12, i32 noundef %57) #9
  %58 = load ptr, ptr %49, align 8, !tbaa !94
  tail call fastcc void @set_depth_add(ptr noundef %58, i32 noundef %13) #9
  %59 = sub nsw i32 0, %15
  tail call fastcc void @set_depth(ptr noundef nonnull %17, i32 noundef %59) #9
  %60 = load ptr, ptr %46, align 8, !tbaa !94
  tail call fastcc void @set_depth_add(ptr noundef %60, i32 noundef %15) #9
  br label %87

61:                                               ; preds = %52
  %62 = load ptr, ptr %10, align 8, !tbaa !93
  tail call fastcc void @set_prev(ptr noundef nonnull %17, ptr noundef %62) #9
  %63 = load ptr, ptr %9, align 8, !tbaa !94
  tail call fastcc void @set_next(ptr noundef nonnull %12, ptr noundef %63) #9
  tail call fastcc void @set_prev(ptr noundef nonnull %0, ptr noundef nonnull %12) #9
  tail call fastcc void @set_next(ptr noundef nonnull %0, ptr noundef nonnull %17) #9
  %64 = sub nsw i32 0, %13
  tail call fastcc void @set_depth(ptr noundef nonnull %12, i32 noundef %64) #9
  %65 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !93
  tail call fastcc void @set_depth_add(ptr noundef %66, i32 noundef %13) #9
  %67 = sub nsw i32 %64, %15
  tail call fastcc void @set_depth(ptr noundef nonnull %17, i32 noundef %67) #9
  %68 = load ptr, ptr %46, align 8, !tbaa !94
  %69 = add nsw i32 %15, %13
  tail call fastcc void @set_depth_add(ptr noundef %68, i32 noundef %69) #9
  br label %87

70:                                               ; preds = %36
  %71 = getelementptr inbounds %struct.et_occ, ptr %17, i64 0, i32 3
  br i1 %51, label %72, label %80, !prof !117

72:                                               ; preds = %70
  %73 = load ptr, ptr %9, align 8, !tbaa !94
  tail call fastcc void @set_next(ptr noundef nonnull %17, ptr noundef %73) #9
  %74 = load ptr, ptr %10, align 8, !tbaa !93
  tail call fastcc void @set_prev(ptr noundef nonnull %12, ptr noundef %74) #9
  tail call fastcc void @set_prev(ptr noundef nonnull %0, ptr noundef nonnull %17) #9
  tail call fastcc void @set_next(ptr noundef nonnull %0, ptr noundef nonnull %12) #9
  %75 = sub nsw i32 0, %13
  tail call fastcc void @set_depth(ptr noundef nonnull %12, i32 noundef %75) #9
  %76 = load ptr, ptr %49, align 8, !tbaa !94
  tail call fastcc void @set_depth_add(ptr noundef %76, i32 noundef %13) #9
  %77 = sub nsw i32 %75, %15
  tail call fastcc void @set_depth(ptr noundef nonnull %17, i32 noundef %77) #9
  %78 = load ptr, ptr %71, align 8, !tbaa !93
  %79 = add nsw i32 %15, %13
  tail call fastcc void @set_depth_add(ptr noundef %78, i32 noundef %79) #9
  br label %87

80:                                               ; preds = %70
  tail call fastcc void @set_next(ptr noundef nonnull %17, ptr noundef %50) #9
  %81 = load ptr, ptr %9, align 8, !tbaa !94
  tail call fastcc void @set_next(ptr noundef nonnull %12, ptr noundef %81) #9
  tail call fastcc void @set_prev(ptr noundef nonnull %0, ptr noundef nonnull %12) #9
  tail call fastcc void @set_prev(ptr noundef nonnull %12, ptr noundef nonnull %17) #9
  %82 = sub nsw i32 0, %13
  tail call fastcc void @set_depth(ptr noundef nonnull %12, i32 noundef %82) #9
  %83 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !93
  tail call fastcc void @set_depth_add(ptr noundef %84, i32 noundef %13) #9
  %85 = sub nsw i32 0, %15
  tail call fastcc void @set_depth(ptr noundef nonnull %17, i32 noundef %85) #9
  %86 = load ptr, ptr %71, align 8, !tbaa !93
  tail call fastcc void @set_depth_add(ptr noundef %86, i32 noundef %15) #9
  br label %87

87:                                               ; preds = %72, %80, %53, %61
  store ptr %45, ptr %2, align 8, !tbaa !97
  %88 = icmp eq ptr %45, null
  br i1 %88, label %95, label %89, !prof !118

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.et_occ, ptr %45, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !94
  %92 = icmp eq ptr %91, %17
  %93 = getelementptr inbounds %struct.et_occ, ptr %45, i64 0, i32 3
  %94 = select i1 %92, ptr %90, ptr %93, !prof !119
  store ptr %0, ptr %94, align 8, !tbaa !67
  br label %95

95:                                               ; preds = %89, %87
  tail call fastcc void @et_recomp_min(ptr noundef nonnull %17) #9
  tail call fastcc void @et_recomp_min(ptr noundef nonnull %12) #9
  %96 = load ptr, ptr %2, align 8, !tbaa !97
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %11, !prof !120, !llvm.loop !121

98:                                               ; preds = %95, %1, %32
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @set_prev(ptr noundef %0, ptr noundef %1) unnamed_addr #3 !prof !122 !PGOFuncName !123 {
  %3 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !94
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5, !prof !124

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.et_occ, ptr %1, i64 0, i32 1
  store ptr %0, ptr %6, align 8, !tbaa !97
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @set_next(ptr noundef %0, ptr noundef %1) unnamed_addr #3 !prof !125 !PGOFuncName !126 {
  %3 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !93
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5, !prof !127

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.et_occ, ptr %1, i64 0, i32 1
  store ptr %0, ptr %6, align 8, !tbaa !97
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @et_recomp_min(ptr noundef %0) unnamed_addr #4 !prof !128 !PGOFuncName !129 {
  %2 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !94
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = icmp eq ptr %6, null
  br i1 %4, label %16, label %8, !prof !130

8:                                                ; preds = %1
  br i1 %7, label %17, label %9, !prof !131

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.et_occ, ptr %3, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !83
  %12 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !83
  %14 = icmp sgt i32 %11, %13
  %15 = select i1 %14, ptr %6, ptr %3, !prof !132
  br label %17

16:                                               ; preds = %1
  br i1 %7, label %29, label %17, !prof !133

17:                                               ; preds = %9, %8, %16
  %18 = phi ptr [ %6, %16 ], [ %3, %8 ], [ %15, %9 ]
  %19 = getelementptr inbounds %struct.et_occ, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !83
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %29, !prof !134

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !98
  %25 = add nsw i32 %24, %20
  %26 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 5
  store i32 %25, ptr %26, align 4, !tbaa !83
  %27 = getelementptr inbounds %struct.et_occ, ptr %18, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !82
  br label %33

29:                                               ; preds = %17, %16
  %30 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !98
  %32 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 5
  store i32 %31, ptr %32, align 4, !tbaa !83
  br label %33

33:                                               ; preds = %29, %22
  %34 = phi ptr [ %0, %29 ], [ %28, %22 ]
  %35 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 6
  store ptr %34, ptr %35, align 8, !tbaa !82
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @et_nca(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #2 !prof !135 {
  %3 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.et_node, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp eq ptr %0, %1
  br i1 %7, label %61, label %8, !prof !136

8:                                                ; preds = %2
  tail call fastcc void @et_splay(ptr noundef %4) #9
  %9 = getelementptr inbounds %struct.et_occ, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !94
  %11 = getelementptr inbounds %struct.et_occ, ptr %4, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  %13 = icmp eq ptr %10, null
  br i1 %13, label %16, label %14, !prof !137

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.et_occ, ptr %10, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !97
  br label %16

16:                                               ; preds = %14, %8
  %17 = icmp eq ptr %12, null
  br i1 %17, label %20, label %18, !prof !138

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 1
  store ptr null, ptr %19, align 8, !tbaa !97
  br label %20

20:                                               ; preds = %18, %16
  tail call fastcc void @et_splay(ptr noundef %6) #9
  %21 = icmp eq ptr %10, %6
  br i1 %21, label %30, label %22, !prof !139

22:                                               ; preds = %20
  br i1 %13, label %23, label %26, !prof !140

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !94
  tail call fastcc void @set_next(ptr noundef nonnull %4, ptr noundef %6) #9
  br label %38

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.et_occ, ptr %10, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !97
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30, !prof !141

30:                                               ; preds = %26, %20
  %31 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !93
  tail call fastcc void @set_prev(ptr noundef nonnull %4, ptr noundef %6) #9
  br i1 %17, label %38, label %33, !prof !142

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 1
  store ptr %4, ptr %34, align 8, !tbaa !97
  br label %38

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !94
  tail call fastcc void @set_next(ptr noundef nonnull %4, ptr noundef %6) #9
  store ptr %4, ptr %27, align 8, !tbaa !97
  br label %38

38:                                               ; preds = %23, %35, %30, %33
  %39 = phi ptr [ %32, %33 ], [ %32, %30 ], [ %37, %35 ], [ %25, %23 ]
  %40 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 4
  %41 = load i32, ptr %40, align 8, !tbaa !98
  %42 = icmp sgt i32 %41, 0
  %43 = select i1 %42, ptr %4, ptr %6, !prof !143
  %44 = icmp eq ptr %39, null
  br i1 %44, label %58, label %45, !prof !144

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.et_occ, ptr %4, i64 0, i32 4
  %47 = load i32, ptr %46, align 8, !tbaa !98
  %48 = tail call i32 @llvm.smin.i32(i32 %41, i32 0)
  %49 = add nsw i32 %47, %48
  %50 = getelementptr inbounds %struct.et_occ, ptr %39, i64 0, i32 5
  %51 = load i32, ptr %50, align 4, !tbaa !83
  %52 = add i32 %51, %41
  %53 = add i32 %52, %47
  %54 = icmp slt i32 %53, %49
  br i1 %54, label %55, label %58, !prof !145

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.et_occ, ptr %39, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !82
  br label %58

58:                                               ; preds = %38, %45, %55
  %59 = phi ptr [ %57, %55 ], [ %43, %45 ], [ %43, %38 ]
  %60 = load ptr, ptr %59, align 8, !tbaa !80
  br label %61

61:                                               ; preds = %58, %2
  %62 = phi ptr [ %0, %2 ], [ %60, %58 ]
  ret ptr %62
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @et_below(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #2 !prof !146 {
  %3 = getelementptr inbounds %struct.et_node, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %48, label %8, !prof !147

8:                                                ; preds = %2
  tail call fastcc void @et_splay(ptr noundef %4) #9
  %9 = getelementptr inbounds %struct.et_occ, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !94
  %11 = getelementptr inbounds %struct.et_occ, ptr %4, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  %13 = icmp eq ptr %10, null
  br i1 %13, label %48, label %14, !prof !148

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.et_occ, ptr %10, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !97
  %16 = icmp eq ptr %12, null
  br i1 %16, label %19, label %17, !prof !149

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 1
  store ptr null, ptr %18, align 8, !tbaa !97
  br label %19

19:                                               ; preds = %17, %14
  tail call fastcc void @et_splay(ptr noundef %6) #9
  %20 = icmp eq ptr %10, %6
  br i1 %20, label %24, label %21, !prof !150

21:                                               ; preds = %19
  %22 = load ptr, ptr %15, align 8, !tbaa !97
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24, !prof !151

24:                                               ; preds = %21, %19
  br i1 %16, label %27, label %25, !prof !152

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 1
  store ptr %4, ptr %26, align 8, !tbaa !97
  br label %27

27:                                               ; preds = %25, %24
  tail call fastcc void @set_prev(ptr noundef nonnull %4, ptr noundef %6) #9
  %28 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !98
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %48, label %38, !prof !153

31:                                               ; preds = %21
  store ptr %4, ptr %15, align 8, !tbaa !97
  br i1 %16, label %37, label %32, !prof !154

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !97
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36, !prof !155

36:                                               ; preds = %32
  tail call fastcc void @set_next(ptr noundef nonnull %4, ptr noundef %6) #9
  br label %48

37:                                               ; preds = %32, %31
  tail call fastcc void @set_next(ptr noundef nonnull %4, ptr noundef %12) #9
  br label %48

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !93
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42, !prof !156

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.et_occ, ptr %40, i64 0, i32 5
  %44 = load i32, ptr %43, align 4, !tbaa !83
  %45 = add nsw i32 %44, %29
  %46 = icmp sgt i32 %45, -1
  %47 = zext i1 %46 to i8
  br label %48

48:                                               ; preds = %38, %42, %27, %36, %37, %8, %2
  %49 = phi i8 [ 1, %2 ], [ 0, %8 ], [ 0, %37 ], [ 0, %36 ], [ 0, %27 ], [ 1, %38 ], [ %47, %42 ]
  ret i8 %49
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @et_root(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !157 {
  %2 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  tail call fastcc void @et_splay(ptr noundef %3) #9
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %3, %1 ], [ %7, %4 ]
  %6 = getelementptr inbounds %struct.et_occ, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !prof !158, !llvm.loop !159

9:                                                ; preds = %4
  tail call fastcc void @et_splay(ptr noundef nonnull %5) #9
  %10 = load ptr, ptr %5, align 8, !tbaa !80
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @set_depth_add(ptr noundef %0, i32 noundef %1) unnamed_addr #5 !prof !160 !PGOFuncName !161 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !162

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 4
  %6 = load <2 x i32>, ptr %5, align 8, !tbaa !107
  %7 = insertelement <2 x i32> poison, i32 %1, i64 0
  %8 = shufflevector <2 x i32> %7, <2 x i32> poison, <2 x i32> zeroinitializer
  %9 = add nsw <2 x i32> %6, %8
  store <2 x i32> %9, ptr %5, align 8, !tbaa !107
  br label %10

10:                                               ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @set_depth(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 !prof !163 !PGOFuncName !164 {
  %3 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !98
  %5 = sub i32 %1, %4
  %6 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !83
  %8 = add nsw i32 %5, %7
  store i32 %8, ptr %6, align 4, !tbaa !83
  store i32 %1, ptr %3, align 8, !tbaa !98
  ret void
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!65}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!35 = !{ptr @et_new_tree, ptr @create_alloc_pool, i64 643}
!36 = !{ptr @et_new_tree, ptr @pool_alloc, i64 5538627}
!37 = !{ptr @et_new_tree, ptr @et_new_occ, i64 5538627}
!38 = !{ptr @et_new_occ, ptr @create_alloc_pool, i64 643}
!39 = !{ptr @et_new_occ, ptr @pool_alloc, i64 11082800}
!40 = !{ptr @et_free_tree, ptr @et_split, i64 332707}
!41 = !{ptr @et_free_tree, ptr @pool_free, i64 665414}
!42 = !{ptr @et_split, ptr @et_splay, i64 1368904}
!43 = !{ptr @et_split, ptr @set_prev, i64 342226}
!44 = !{ptr @et_split, ptr @et_recomp_min, i64 342226}
!45 = !{ptr @et_split, ptr @pool_free, i64 342226}
!46 = !{ptr @et_free_tree_force, ptr @pool_free, i64 15613786}
!47 = !{ptr @et_free_pools, ptr @free_alloc_pool_if_empty, i64 2052}
!48 = !{ptr @et_set_father, ptr @et_new_occ, i64 5544173}
!49 = !{ptr @et_set_father, ptr @et_splay, i64 11088346}
!50 = !{ptr @et_set_father, ptr @set_prev, i64 11088346}
!51 = !{ptr @et_set_father, ptr @set_next, i64 5544173}
!52 = !{ptr @et_set_father, ptr @et_recomp_min, i64 5544173}
!53 = !{ptr @et_splay, ptr @set_depth_add, i64 105784850}
!54 = !{ptr @et_splay, ptr @set_prev, i64 67763305}
!55 = !{ptr @et_splay, ptr @set_next, i64 67763305}
!56 = !{ptr @et_splay, ptr @set_depth, i64 67763304}
!57 = !{ptr @et_splay, ptr @et_recomp_min, i64 67763304}
!58 = !{ptr @et_nca, ptr @et_splay, i64 5655336}
!59 = !{ptr @et_nca, ptr @set_next, i64 54900}
!60 = !{ptr @et_nca, ptr @set_prev, i64 2772768}
!61 = !{ptr @et_below, ptr @et_splay, i64 3143129}
!62 = !{ptr @et_below, ptr @set_prev, i64 1570704}
!63 = !{ptr @et_below, ptr @set_next, i64 860}
!64 = !{ptr @et_root, ptr @et_splay, i64 2228460}
!65 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!66 = !{!"function_entry_count", i64 5538627}
!67 = !{!68, !68, i64 0}
!68 = !{!"any pointer", !69, i64 0}
!69 = !{!"omnipotent char", !70, i64 0}
!70 = !{!"Simple C/C++ TBAA"}
!71 = !{!"branch_weights", i32 643, i32 5537986}
!72 = !{!73, !68, i64 0}
!73 = !{!"et_node", !68, i64 0, !74, i64 8, !74, i64 12, !68, i64 16, !68, i64 24, !68, i64 32, !68, i64 40, !68, i64 48, !68, i64 56}
!74 = !{!"int", !69, i64 0}
!75 = !{!73, !68, i64 48}
!76 = !{!73, !68, i64 56}
!77 = !{!"function_entry_count", i64 11082800}
!78 = !{!"et-forest.c:et_new_occ"}
!79 = !{!"branch_weights", i32 643, i32 11082159}
!80 = !{!81, !68, i64 0}
!81 = !{!"et_occ", !68, i64 0, !68, i64 8, !68, i64 16, !68, i64 24, !74, i64 32, !74, i64 36, !68, i64 40}
!82 = !{!81, !68, i64 40}
!83 = !{!81, !74, i64 36}
!84 = !{!"function_entry_count", i64 332707}
!85 = !{!73, !68, i64 24}
!86 = !{!"branch_weights", i32 332707, i32 1}
!87 = !{!"branch_weights", i32 1, i32 0}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.mustprogress"}
!90 = !{!73, !68, i64 16}
!91 = !{!"branch_weights", i32 1, i32 332708}
!92 = !{!"function_entry_count", i64 342226}
!93 = !{!81, !68, i64 24}
!94 = !{!81, !68, i64 16}
!95 = !{!"branch_weights", i32 342227, i32 778919}
!96 = distinct !{!96, !89}
!97 = !{!81, !68, i64 8}
!98 = !{!81, !74, i64 32}
!99 = !{!"branch_weights", i32 132940, i32 209288}
!100 = !{!73, !68, i64 40}
!101 = !{!"branch_weights", i32 88161, i32 254067}
!102 = !{!73, !68, i64 32}
!103 = !{!"function_entry_count", i64 5205920}
!104 = !{!"branch_weights", i32 3974, i32 5201948}
!105 = !{!"function_entry_count", i64 1026}
!106 = !{!"function_entry_count", i64 5544173}
!107 = !{!74, !74, i64 0}
!108 = !{!"branch_weights", i32 1, i32 5544174}
!109 = !{!"branch_weights", i32 2082903, i32 3461272}
!110 = !{!"function_entry_count", i64 23484180}
!111 = !{!"et-forest.c:et_splay"}
!112 = !{!"branch_weights", i32 1, i32 16468825}
!113 = !{!"branch_weights", i32 7015356, i32 25199801}
!114 = !{!"branch_weights", i32 3294681, i32 3720676}
!115 = !{!"branch_weights", i32 17981302, i32 7218500}
!116 = !{!"branch_weights", i32 11697648, i32 6283655}
!117 = !{!"branch_weights", i32 3021987, i32 4196514}
!118 = !{!"branch_weights", i32 6603255, i32 18596547}
!119 = !{!"branch_weights", i32 13320021, i32 5276527}
!120 = !{!"branch_weights", i32 16468825, i32 15746331}
!121 = distinct !{!121, !89}
!122 = !{!"function_entry_count", i64 73189005}
!123 = !{!"et-forest.c:set_prev"}
!124 = !{!"branch_weights", i32 7114962, i32 66074045}
!125 = !{!"function_entry_count", i64 63014885}
!126 = !{!"et-forest.c:set_next"}
!127 = !{!"branch_weights", i32 7026387, i32 55988500}
!128 = !{!"function_entry_count", i64 63301354}
!129 = !{!"et-forest.c:et_recomp_min"}
!130 = !{!"branch_weights", i32 8659397, i32 54641959}
!131 = !{!"branch_weights", i32 9705825, i32 44936135}
!132 = !{!"branch_weights", i32 9986954, i32 34949182}
!133 = !{!"branch_weights", i32 535088762, i32 1612394886}
!134 = !{!"branch_weights", i32 50563556, i32 10580138}
!135 = !{!"function_entry_count", i64 2879378}
!136 = !{!"branch_weights", i32 51710, i32 2827670}
!137 = !{!"branch_weights", i32 1, i32 2827670}
!138 = !{!"branch_weights", i32 8, i32 2827663}
!139 = !{!"branch_weights", i32 599145, i32 2228526}
!140 = !{!"branch_weights", i32 1, i32 2228526}
!141 = !{!"branch_weights", i32 54899, i32 2173628}
!142 = !{!"branch_weights", i32 8, i32 2772765}
!143 = !{!"branch_weights", i32 2759497, i32 68174}
!144 = !{!"branch_weights", i32 995, i32 2826676}
!145 = !{!"branch_weights", i32 97476, i32 2729201}
!146 = !{!"function_entry_count", i64 1609017}
!147 = !{!"branch_weights", i32 37452, i32 1571567}
!148 = !{!"branch_weights", i32 1, i32 1571567}
!149 = !{!"branch_weights", i32 15, i32 1571553}
!150 = !{!"branch_weights", i32 209, i32 1571359}
!151 = !{!"branch_weights", i32 860, i32 1570500}
!152 = !{!"branch_weights", i32 1, i32 1570708}
!153 = !{!"branch_weights", i32 16116, i32 1554593}
!154 = !{!"branch_weights", i32 15, i32 846}
!155 = !{!"branch_weights", i32 126, i32 721}
!156 = !{!"branch_weights", i32 4, i32 1554590}
!157 = !{!"function_entry_count", i64 1114230}
!158 = !{!"branch_weights", i32 1114231, i32 1811167}
!159 = distinct !{!159, !89}
!160 = !{!"function_entry_count", i64 89630110}
!161 = !{!"et-forest.c:set_depth_add"}
!162 = !{!"branch_weights", i32 13983768, i32 75646344}
!163 = !{!"function_entry_count", i64 57414955}
!164 = !{!"et-forest.c:set_depth"}
