; ModuleID = 'tree-iterator.c'
source_filename = "tree-iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_statement_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_stmt_iterator = type { ptr, ptr }
%struct.tree_statement_list_node = type { ptr, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }

@stmt_list_cache = internal global ptr null, align 8
@.str = private unnamed_addr constant [16 x i8] c"tree-iterator.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@gt_ggc_rd_gt_tree_iterator_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @stmt_list_cache, i64 1, i64 8, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @alloc_stmt_list() local_unnamed_addr #0 !prof !42 {
  %1 = load ptr, ptr @stmt_list_cache, align 8, !tbaa !43
  %2 = icmp eq ptr %1, null
  br i1 %2, label %10, label %3, !prof !47

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  store ptr %5, ptr @stmt_list_cache, align 8, !tbaa !43
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %7, label %8, !prof !49

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 42, ptr noundef nonnull @.str.1) #5
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 16, i1 false)
  store i64 147, ptr %1, align 8
  br label %12

10:                                               ; preds = %0
  %11 = tail call ptr @make_node_stat(i32 noundef 147) #5
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %1, %8 ], [ %11, %10 ]
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !43
  %15 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !48
  ret ptr %13
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_stmt_list(ptr noundef %0) local_unnamed_addr #0 !prof !50 {
  %2 = getelementptr inbounds %struct.tree_statement_list, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !51

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 55, ptr noundef nonnull @.str.1) #5
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.tree_statement_list, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !51

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 56, ptr noundef nonnull @.str.1) #5
  br label %11

11:                                               ; preds = %6, %10
  %12 = load ptr, ptr @stmt_list_cache, align 8, !tbaa !43
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %16, !prof !49

14:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 59, ptr noundef nonnull @.str.1) #5
  %15 = load ptr, ptr @stmt_list_cache, align 8, !tbaa !43
  br label %16

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ]
  %18 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  store ptr %17, ptr %18, align 8, !tbaa !48
  store ptr %0, ptr @stmt_list_cache, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tsi_link_before(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !52 {
  %4 = getelementptr inbounds %struct.tree_stmt_iterator, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 72, ptr noundef nonnull @.str.1) #5
  br label %8

8:                                                ; preds = %3, %7
  %9 = load i64, ptr %1, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 147
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_statement_list, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.tree_statement_list, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  tail call void @free_stmt_list(ptr noundef nonnull %1) #6
  %17 = icmp ne ptr %14, null
  %18 = icmp ne ptr %16, null
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %26, label %20

20:                                               ; preds = %12
  %21 = icmp eq ptr %14, %16
  br i1 %21, label %62, label %22

22:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 86, ptr noundef nonnull @.str.1) #5
  br label %62

23:                                               ; preds = %8
  %24 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #5
  %25 = getelementptr inbounds %struct.tree_statement_list_node, ptr %24, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  store ptr %1, ptr %25, align 8, !tbaa !55
  br label %26

26:                                               ; preds = %12, %23
  %27 = phi ptr [ %16, %12 ], [ %24, %23 ]
  %28 = phi ptr [ %14, %12 ], [ %24, %23 ]
  %29 = load ptr, ptr %4, align 8, !tbaa !53
  %30 = load i64, ptr %29, align 8
  %31 = or i64 %30, 65536
  store i64 %31, ptr %29, align 8
  %32 = load ptr, ptr %0, align 8, !tbaa !57
  %33 = icmp eq ptr %32, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %26
  %35 = load ptr, ptr %32, align 8, !tbaa !58
  store ptr %35, ptr %28, align 8, !tbaa !58
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.tree_statement_list_node, ptr %35, i64 0, i32 1
  br label %42

39:                                               ; preds = %34
  %40 = load ptr, ptr %4, align 8, !tbaa !53
  %41 = getelementptr inbounds %struct.tree_statement_list, ptr %40, i64 0, i32 1
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi ptr [ %41, %39 ], [ %38, %37 ]
  store ptr %28, ptr %43, align 8, !tbaa !48
  %44 = getelementptr inbounds %struct.tree_statement_list_node, ptr %27, i64 0, i32 1
  store ptr %32, ptr %44, align 8, !tbaa !59
  br label %58

45:                                               ; preds = %26
  %46 = load ptr, ptr %4, align 8, !tbaa !53
  %47 = getelementptr inbounds %struct.tree_statement_list, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !48
  store ptr %48, ptr %28, align 8, !tbaa !58
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.tree_statement_list_node, ptr %48, i64 0, i32 1
  store ptr %28, ptr %51, align 8, !tbaa !59
  br label %55

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.tree_statement_list, ptr %46, i64 0, i32 1
  store ptr %28, ptr %53, align 8, !tbaa !48
  %54 = load ptr, ptr %4, align 8, !tbaa !53
  br label %55

55:                                               ; preds = %52, %50
  %56 = phi ptr [ %54, %52 ], [ %46, %50 ]
  %57 = getelementptr inbounds %struct.tree_statement_list, ptr %56, i64 0, i32 2
  br label %58

58:                                               ; preds = %55, %42
  %59 = phi ptr [ %57, %55 ], [ %32, %42 ]
  store ptr %27, ptr %59, align 8, !tbaa !48
  switch i32 %2, label %62 [
    i32 0, label %60
    i32 4, label %60
    i32 2, label %60
    i32 3, label %61
  ]

60:                                               ; preds = %58, %58, %58
  store ptr %28, ptr %0, align 8, !tbaa !57
  br label %62

61:                                               ; preds = %58
  store ptr %27, ptr %0, align 8, !tbaa !57
  br label %62

62:                                               ; preds = %60, %61, %58, %22, %20
  ret void
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tsi_link_after(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !60 {
  %4 = getelementptr inbounds %struct.tree_stmt_iterator, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %7, label %8, !prof !61

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 148, ptr noundef nonnull @.str.1) #5
  br label %8

8:                                                ; preds = %3, %7
  %9 = load i64, ptr %1, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 147
  br i1 %11, label %12, label %23, !prof !62

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_statement_list, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.tree_statement_list, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  tail call void @free_stmt_list(ptr noundef nonnull %1) #6
  %17 = icmp ne ptr %14, null
  %18 = icmp ne ptr %16, null
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %26, label %20, !prof !63

20:                                               ; preds = %12
  %21 = icmp eq ptr %14, %16
  br i1 %21, label %61, label %22

22:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 162, ptr noundef nonnull @.str.1) #5
  br label %61

23:                                               ; preds = %8
  %24 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #5
  %25 = getelementptr inbounds %struct.tree_statement_list_node, ptr %24, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  store ptr %1, ptr %25, align 8, !tbaa !55
  br label %26

26:                                               ; preds = %12, %23
  %27 = phi ptr [ %16, %12 ], [ %24, %23 ]
  %28 = phi ptr [ %14, %12 ], [ %24, %23 ]
  %29 = load ptr, ptr %4, align 8, !tbaa !53
  %30 = load i64, ptr %29, align 8
  %31 = or i64 %30, 65536
  store i64 %31, ptr %29, align 8
  %32 = load ptr, ptr %0, align 8, !tbaa !57
  %33 = icmp eq ptr %32, null
  br i1 %33, label %44, label %34, !prof !64

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.tree_statement_list_node, ptr %32, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !59
  %37 = getelementptr inbounds %struct.tree_statement_list_node, ptr %27, i64 0, i32 1
  store ptr %36, ptr %37, align 8, !tbaa !59
  %38 = icmp eq ptr %36, null
  br i1 %38, label %39, label %42, !prof !65

39:                                               ; preds = %34
  %40 = load ptr, ptr %4, align 8, !tbaa !53
  %41 = getelementptr inbounds %struct.tree_statement_list, ptr %40, i64 0, i32 2
  br label %42

42:                                               ; preds = %34, %39
  %43 = phi ptr [ %41, %39 ], [ %36, %34 ]
  store ptr %27, ptr %43, align 8, !tbaa !48
  store ptr %32, ptr %28, align 8, !tbaa !58
  store ptr %28, ptr %35, align 8, !tbaa !59
  br label %56

44:                                               ; preds = %26
  %45 = load ptr, ptr %4, align 8, !tbaa !53
  %46 = getelementptr inbounds %struct.tree_statement_list, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !48
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49, !prof !66

49:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 192, ptr noundef nonnull @.str.1) #5
  %50 = load ptr, ptr %4, align 8, !tbaa !53
  br label %51

51:                                               ; preds = %44, %49
  %52 = phi ptr [ %45, %44 ], [ %50, %49 ]
  %53 = getelementptr inbounds %struct.tree_statement_list, ptr %52, i64 0, i32 1
  store ptr %28, ptr %53, align 8, !tbaa !48
  %54 = load ptr, ptr %4, align 8, !tbaa !53
  %55 = getelementptr inbounds %struct.tree_statement_list, ptr %54, i64 0, i32 2
  store ptr %27, ptr %55, align 8, !tbaa !48
  br label %56

56:                                               ; preds = %51, %42
  switch i32 %2, label %61 [
    i32 0, label %57
    i32 2, label %57
    i32 4, label %58
    i32 3, label %58
    i32 1, label %59
  ], !prof !67

57:                                               ; preds = %56, %56
  store ptr %28, ptr %0, align 8, !tbaa !57
  br label %61

58:                                               ; preds = %56, %56
  store ptr %27, ptr %0, align 8, !tbaa !57
  br label %61

59:                                               ; preds = %56
  br i1 %33, label %60, label %61

60:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 209, ptr noundef nonnull @.str.1) #5
  br label %61

61:                                               ; preds = %57, %58, %56, %59, %60, %22, %20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @tsi_delink(ptr nocapture noundef %0) local_unnamed_addr #3 !prof !68 {
  %2 = load ptr, ptr %0, align 8, !tbaa !57
  %3 = getelementptr inbounds %struct.tree_statement_list_node, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = load ptr, ptr %2, align 8, !tbaa !58
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12, !prof !69

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_stmt_iterator, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = getelementptr inbounds %struct.tree_statement_list, ptr %9, i64 0, i32 1
  store ptr %4, ptr %10, align 8, !tbaa !48
  %11 = icmp eq ptr %4, null
  br i1 %11, label %20, label %19, !prof !70

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.tree_statement_list_node, ptr %5, i64 0, i32 1
  store ptr %4, ptr %13, align 8, !tbaa !59
  %14 = icmp eq ptr %4, null
  br i1 %14, label %15, label %19, !prof !70

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tree_stmt_iterator, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !53
  %18 = getelementptr inbounds %struct.tree_statement_list, ptr %17, i64 0, i32 2
  store ptr %5, ptr %18, align 8, !tbaa !48
  br label %27

19:                                               ; preds = %12, %7
  store ptr %5, ptr %4, align 8, !tbaa !58
  br label %27

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.tree_stmt_iterator, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  %23 = getelementptr inbounds %struct.tree_statement_list, ptr %22, i64 0, i32 2
  store ptr %5, ptr %23, align 8, !tbaa !48
  %24 = load ptr, ptr %21, align 8, !tbaa !53
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, -65537
  store i64 %26, ptr %24, align 8
  br label %27

27:                                               ; preds = %15, %19, %20
  store ptr %4, ptr %0, align 8, !tbaa !57
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @expr_first(ptr noundef readonly %0) local_unnamed_addr #4 !prof !52 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %20 [
    i16 147, label %6
    i16 52, label %13
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.tree_statement_list, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_statement_list_node, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  br label %20

13:                                               ; preds = %3, %13
  %14 = phi ptr [ %16, %13 ], [ %0, %3 ]
  %15 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 52
  br i1 %19, label %13, label %20, !llvm.loop !71

20:                                               ; preds = %13, %3, %10, %6, %1
  %21 = phi ptr [ null, %1 ], [ %12, %10 ], [ null, %6 ], [ %0, %3 ], [ %16, %13 ]
  ret ptr %21
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @expr_last(ptr noundef readonly %0) local_unnamed_addr #4 !prof !73 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3, !prof !74

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %20 [
    i16 147, label %6
    i16 52, label %13
  ], !prof !75

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.tree_statement_list, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10, !prof !76

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_statement_list_node, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  br label %20

13:                                               ; preds = %3, %13
  %14 = phi ptr [ %16, %13 ], [ %0, %3 ]
  %15 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 52
  br i1 %19, label %13, label %20, !prof !77, !llvm.loop !78

20:                                               ; preds = %13, %3, %10, %6, %1
  %21 = phi ptr [ null, %1 ], [ %12, %10 ], [ null, %6 ], [ %0, %3 ], [ %16, %13 ]
  ret ptr %21
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!41}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40}
!35 = !{ptr @alloc_stmt_list, ptr @fancy_abort, i64 1}
!36 = !{ptr @alloc_stmt_list, ptr @make_node_stat, i64 38475}
!37 = !{ptr @free_stmt_list, ptr @fancy_abort, i64 3}
!38 = !{ptr @tsi_link_after, ptr @fancy_abort, i64 3}
!39 = !{ptr @tsi_link_after, ptr @free_stmt_list, i64 47448}
!40 = !{ptr @tsi_link_after, ptr @ggc_alloc_stat, i64 481075}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 252520}
!43 = !{!44, !44, i64 0}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !{!"branch_weights", i32 38475, i32 214047}
!48 = !{!45, !45, i64 0}
!49 = !{!"branch_weights", i32 1, i32 214047}
!50 = !{!"function_entry_count", i64 214046}
!51 = !{!"branch_weights", i32 214047, i32 1}
!52 = !{!"function_entry_count", i64 0}
!53 = !{!54, !44, i64 8}
!54 = !{!"", !44, i64 0, !44, i64 8}
!55 = !{!56, !44, i64 16}
!56 = !{!"tree_statement_list_node", !44, i64 0, !44, i64 8, !44, i64 16}
!57 = !{!54, !44, i64 0}
!58 = !{!56, !44, i64 0}
!59 = !{!56, !44, i64 8}
!60 = !{!"function_entry_count", i64 528523}
!61 = !{!"branch_weights", i32 1, i32 528524}
!62 = !{!"branch_weights", i32 47448, i32 481077}
!63 = !{!"branch_weights", i32 -2043654592, i32 94897}
!64 = !{!"branch_weights", i32 252521, i32 276004}
!65 = !{!"branch_weights", i32 276004, i32 1}
!66 = !{!"branch_weights", i32 252521, i32 1}
!67 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 528524, i32 1, i32 1}
!68 = !{!"function_entry_count", i64 479092}
!69 = !{!"branch_weights", i32 479093, i32 1}
!70 = !{!"branch_weights", i32 204589, i32 274505}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!"function_entry_count", i64 76055}
!74 = !{!"branch_weights", i32 1, i32 76056}
!75 = !{!"branch_weights", i32 -1419379930, i32 8342070, i32 37918}
!76 = !{!"branch_weights", i32 6, i32 215}
!77 = !{!"branch_weights", i32 0, i32 1}
!78 = distinct !{!78, !72}
