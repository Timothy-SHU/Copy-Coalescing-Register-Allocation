; ModuleID = 'splay-tree.c'
source_filename = "splay-tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.splay_tree_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.splay_tree_node_s = type { i64, i64, ptr, ptr }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @splay_tree_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !50 {
  %4 = tail call ptr @splay_tree_new_with_allocator(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @splay_tree_xmalloc_allocate, ptr noundef nonnull @splay_tree_xmalloc_deallocate, ptr noundef null) #8
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @splay_tree_new_with_allocator(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 !prof !51 {
  %7 = tail call ptr %3(i32 noundef 56, ptr noundef %5) #9
  store ptr null, ptr %7, align 8, !tbaa !52
  %8 = getelementptr inbounds %struct.splay_tree_s, ptr %7, i64 0, i32 1
  store ptr %0, ptr %8, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.splay_tree_s, ptr %7, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !58
  %10 = getelementptr inbounds %struct.splay_tree_s, ptr %7, i64 0, i32 3
  store ptr %2, ptr %10, align 8, !tbaa !59
  %11 = getelementptr inbounds %struct.splay_tree_s, ptr %7, i64 0, i32 4
  store ptr %3, ptr %11, align 8, !tbaa !60
  %12 = getelementptr inbounds %struct.splay_tree_s, ptr %7, i64 0, i32 5
  store ptr %4, ptr %12, align 8, !tbaa !61
  %13 = getelementptr inbounds %struct.splay_tree_s, ptr %7, i64 0, i32 6
  store ptr %5, ptr %13, align 8, !tbaa !62
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @splay_tree_xmalloc_allocate(i32 noundef %0, ptr nocapture readnone %1) #0 !prof !63 !PGOFuncName !64 {
  %3 = sext i32 %0 to i64
  %4 = tail call ptr @xmalloc(i64 noundef %3) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @splay_tree_xmalloc_deallocate(ptr nocapture noundef %0, ptr nocapture readnone %1) #1 !prof !65 !PGOFuncName !66 {
  tail call void @free(ptr noundef %0) #8
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @splay_tree_delete(ptr noundef %0) local_unnamed_addr #0 !prof !67 {
  %2 = load ptr, ptr %0, align 8, !tbaa !52
  tail call fastcc void @splay_tree_delete_helper(ptr noundef nonnull %0, ptr noundef %2) #8
  %3 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  tail call void %4(ptr noundef nonnull %0, ptr noundef %6) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @splay_tree_delete_helper(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !67 !PGOFuncName !68 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %77, label %4, !prof !69

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !70

8:                                                ; preds = %4
  %9 = load i64, ptr %1, align 8, !tbaa !71
  tail call void %6(i64 noundef %9) #9
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !70

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !74
  tail call void %12(i64 noundef %16) #9
  br label %17

17:                                               ; preds = %14, %10
  store i64 0, ptr %1, align 8, !tbaa !71
  %18 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 5
  %19 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 6
  br label %22

20:                                               ; preds = %67
  %21 = icmp eq ptr %68, null
  br i1 %21, label %77, label %74, !prof !75

22:                                               ; preds = %74, %17
  %23 = phi ptr [ null, %17 ], [ %75, %74 ]
  %24 = phi ptr [ %1, %17 ], [ %76, %74 ]
  %25 = getelementptr inbounds %struct.splay_tree_node_s, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !76
  %27 = icmp eq ptr %26, null
  br i1 %27, label %45, label %28, !prof !77

28:                                               ; preds = %22
  %29 = load ptr, ptr %5, align 8, !tbaa !58
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31, !prof !78

31:                                               ; preds = %28
  %32 = load i64, ptr %26, align 8, !tbaa !71
  tail call void %29(i64 noundef %32) #9
  %33 = load ptr, ptr %25, align 8, !tbaa !76
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi ptr [ %33, %31 ], [ %26, %28 ]
  %36 = load ptr, ptr %11, align 8, !tbaa !59
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38, !prof !78

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.splay_tree_node_s, ptr %35, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !74
  tail call void %36(i64 noundef %40) #9
  %41 = load ptr, ptr %25, align 8, !tbaa !76
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi ptr [ %41, %38 ], [ %35, %34 ]
  %44 = ptrtoint ptr %23 to i64
  store i64 %44, ptr %43, align 8, !tbaa !71
  br label %45

45:                                               ; preds = %42, %22
  %46 = phi ptr [ %43, %42 ], [ %23, %22 ]
  %47 = getelementptr inbounds %struct.splay_tree_node_s, ptr %24, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !79
  %49 = icmp eq ptr %48, null
  br i1 %49, label %67, label %50, !prof !80

50:                                               ; preds = %45
  %51 = load ptr, ptr %5, align 8, !tbaa !58
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53, !prof !81

53:                                               ; preds = %50
  %54 = load i64, ptr %48, align 8, !tbaa !71
  tail call void %51(i64 noundef %54) #9
  %55 = load ptr, ptr %47, align 8, !tbaa !79
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi ptr [ %55, %53 ], [ %48, %50 ]
  %58 = load ptr, ptr %11, align 8, !tbaa !59
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60, !prof !81

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.splay_tree_node_s, ptr %57, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !74
  tail call void %58(i64 noundef %62) #9
  %63 = load ptr, ptr %47, align 8, !tbaa !79
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi ptr [ %63, %60 ], [ %57, %56 ]
  %66 = ptrtoint ptr %46 to i64
  store i64 %66, ptr %65, align 8, !tbaa !71
  br label %67

67:                                               ; preds = %64, %45
  %68 = phi ptr [ %65, %64 ], [ %46, %45 ]
  %69 = load i64, ptr %24, align 8, !tbaa !71
  %70 = inttoptr i64 %69 to ptr
  %71 = load ptr, ptr %18, align 8, !tbaa !61
  %72 = load ptr, ptr %19, align 8, !tbaa !62
  tail call void %71(ptr noundef nonnull %24, ptr noundef %72) #9
  %73 = icmp eq i64 %69, 0
  br i1 %73, label %20, label %74, !prof !82

74:                                               ; preds = %67, %20
  %75 = phi ptr [ %68, %67 ], [ null, %20 ]
  %76 = phi ptr [ %70, %67 ], [ %68, %20 ]
  br label %22, !llvm.loop !83

77:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @splay_tree_insert(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 !prof !85 {
  tail call fastcc void @splay_tree_splay(ptr noundef %0, i64 noundef %1) #8
  %4 = load ptr, ptr %0, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6, !prof !86

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = load i64, ptr %4, align 8, !tbaa !71
  %10 = tail call i32 %8(i64 noundef %9, i64 noundef %1) #9
  %11 = load ptr, ptr %0, align 8, !tbaa !52
  %12 = icmp ne ptr %11, null
  %13 = icmp eq i32 %10, 0
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %26, !prof !87

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19, !prof !88

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.splay_tree_node_s, ptr %11, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !74
  tail call void %17(i64 noundef %21) #9
  %22 = load ptr, ptr %0, align 8, !tbaa !52
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi ptr [ %22, %19 ], [ %11, %15 ]
  %25 = getelementptr inbounds %struct.splay_tree_node_s, ptr %24, i64 0, i32 1
  store i64 %2, ptr %25, align 8, !tbaa !74
  br label %51

26:                                               ; preds = %3, %6
  %27 = phi i32 [ %10, %6 ], [ 0, %3 ]
  %28 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !60
  %30 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !62
  %32 = tail call ptr %29(i32 noundef 32, ptr noundef %31) #9
  store i64 %1, ptr %32, align 8, !tbaa !71
  %33 = getelementptr inbounds %struct.splay_tree_node_s, ptr %32, i64 0, i32 1
  store i64 %2, ptr %33, align 8, !tbaa !74
  %34 = load ptr, ptr %0, align 8, !tbaa !52
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38, !prof !89

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.splay_tree_node_s, ptr %32, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  br label %50

38:                                               ; preds = %26
  %39 = icmp slt i32 %27, 0
  br i1 %39, label %40, label %45, !prof !90

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.splay_tree_node_s, ptr %32, i64 0, i32 2
  store ptr %34, ptr %41, align 8, !tbaa !76
  %42 = getelementptr inbounds %struct.splay_tree_node_s, ptr %34, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !79
  %44 = getelementptr inbounds %struct.splay_tree_node_s, ptr %32, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !79
  store ptr null, ptr %42, align 8, !tbaa !79
  br label %50

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.splay_tree_node_s, ptr %32, i64 0, i32 3
  store ptr %34, ptr %46, align 8, !tbaa !79
  %47 = getelementptr inbounds %struct.splay_tree_node_s, ptr %34, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !76
  %49 = getelementptr inbounds %struct.splay_tree_node_s, ptr %32, i64 0, i32 2
  store ptr %48, ptr %49, align 8, !tbaa !76
  store ptr null, ptr %47, align 8, !tbaa !76
  br label %50

50:                                               ; preds = %40, %45, %36
  store ptr %32, ptr %0, align 8, !tbaa !52
  br label %51

51:                                               ; preds = %50, %23
  %52 = phi ptr [ %32, %50 ], [ %24, %23 ]
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @splay_tree_splay(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #0 !prof !91 !PGOFuncName !92 {
  %3 = load ptr, ptr %0, align 8, !tbaa !52
  %4 = icmp eq ptr %3, null
  br i1 %4, label %71, label %5, !prof !93

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = load i64, ptr %3, align 8, !tbaa !71
  %9 = tail call i32 %7(i64 noundef %1, i64 noundef %8) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %71, label %11, !prof !94

11:                                               ; preds = %5, %65
  %12 = phi i32 [ %69, %65 ], [ %9, %5 ]
  %13 = phi ptr [ %66, %65 ], [ %3, %5 ]
  %14 = icmp sgt i32 %12, -1
  %15 = getelementptr inbounds %struct.splay_tree_node_s, ptr %13, i64 0, i32 2
  %16 = getelementptr inbounds %struct.splay_tree_node_s, ptr %13, i64 0, i32 3
  %17 = select i1 %14, ptr %16, ptr %15, !prof !95
  %18 = load ptr, ptr %17, align 8, !tbaa !96
  %19 = icmp eq ptr %18, null
  br i1 %19, label %71, label %20, !prof !97

20:                                               ; preds = %11
  %21 = load ptr, ptr %6, align 8, !tbaa !57
  %22 = load i64, ptr %18, align 8, !tbaa !71
  %23 = tail call i32 %21(i64 noundef %1, i64 noundef %22) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25, !prof !98

25:                                               ; preds = %20
  %26 = icmp slt i32 %23, 0
  br i1 %26, label %27, label %31, !prof !99

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !76
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %38, !prof !100

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !79
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38, !prof !101

35:                                               ; preds = %31, %27, %20
  br i1 %14, label %37, label %36, !prof !102

36:                                               ; preds = %35
  tail call fastcc void @rotate_left(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef nonnull %18) #8
  br label %71

37:                                               ; preds = %35
  tail call fastcc void @rotate_right(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef nonnull %18) #8
  br label %71

38:                                               ; preds = %27, %31
  %39 = and i32 %23, %12
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %45, label %41, !prof !103

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !76
  tail call fastcc void @rotate_left(ptr noundef nonnull %15, ptr noundef nonnull %18, ptr noundef %43) #8
  %44 = load ptr, ptr %15, align 8, !tbaa !76
  tail call fastcc void @rotate_left(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef %44) #8
  br label %65

45:                                               ; preds = %38
  %46 = xor i1 %26, true
  %47 = icmp sgt i32 %12, 0
  %48 = and i1 %47, %46
  br i1 %48, label %49, label %53, !prof !104

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !79
  tail call fastcc void @rotate_right(ptr noundef nonnull %16, ptr noundef nonnull %18, ptr noundef %51) #8
  %52 = load ptr, ptr %16, align 8, !tbaa !79
  tail call fastcc void @rotate_right(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef %52) #8
  br label %65

53:                                               ; preds = %45
  %54 = or i1 %14, %26
  br i1 %54, label %59, label %55, !prof !105

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !79
  tail call fastcc void @rotate_right(ptr noundef nonnull %15, ptr noundef nonnull %18, ptr noundef %57) #8
  %58 = load ptr, ptr %15, align 8, !tbaa !76
  tail call fastcc void @rotate_left(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef %58) #8
  br label %65

59:                                               ; preds = %53
  %60 = and i1 %47, %26
  br i1 %60, label %61, label %65, !prof !106

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !76
  tail call fastcc void @rotate_left(ptr noundef nonnull %16, ptr noundef nonnull %18, ptr noundef %63) #8
  %64 = load ptr, ptr %16, align 8, !tbaa !79
  tail call fastcc void @rotate_right(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef %64) #8
  br label %65

65:                                               ; preds = %41, %55, %61, %59, %49
  %66 = load ptr, ptr %0, align 8, !tbaa !52
  %67 = load ptr, ptr %6, align 8, !tbaa !57
  %68 = load i64, ptr %66, align 8, !tbaa !71
  %69 = tail call i32 %67(i64 noundef %1, i64 noundef %68) #9
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %11, !prof !107

71:                                               ; preds = %65, %11, %5, %36, %37, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @rotate_left(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 !prof !108 !PGOFuncName !109 {
  %4 = getelementptr inbounds %struct.splay_tree_node_s, ptr %2, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  store ptr %1, ptr %4, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !76
  store ptr %2, ptr %0, align 8, !tbaa !96
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @rotate_right(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 !prof !110 !PGOFuncName !111 {
  %4 = getelementptr inbounds %struct.splay_tree_node_s, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  store ptr %1, ptr %4, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 3
  store ptr %5, ptr %6, align 8, !tbaa !79
  store ptr %2, ptr %0, align 8, !tbaa !96
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @splay_tree_remove(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !112 {
  tail call fastcc void @splay_tree_splay(ptr noundef %0, i64 noundef %1) #8
  %3 = load ptr, ptr %0, align 8, !tbaa !52
  %4 = icmp eq ptr %3, null
  br i1 %4, label %42, label %5, !prof !113

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = load i64, ptr %3, align 8, !tbaa !71
  %9 = tail call i32 %7(i64 noundef %8, i64 noundef %1) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %42, !prof !114

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 8, !tbaa !52
  %13 = getelementptr inbounds %struct.splay_tree_node_s, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !76
  %15 = getelementptr inbounds %struct.splay_tree_node_s, ptr %12, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !79
  %17 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20, !prof !114

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.splay_tree_node_s, ptr %12, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !74
  tail call void %18(i64 noundef %22) #9
  %23 = load ptr, ptr %0, align 8, !tbaa !52
  br label %24

24:                                               ; preds = %20, %11
  %25 = phi ptr [ %23, %20 ], [ %12, %11 ]
  %26 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !61
  %28 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !62
  tail call void %27(ptr noundef %25, ptr noundef %29) #9
  %30 = icmp eq ptr %14, null
  br i1 %30, label %40, label %31, !prof !115

31:                                               ; preds = %24
  store ptr %14, ptr %0, align 8, !tbaa !52
  %32 = icmp eq ptr %16, null
  br i1 %32, label %42, label %33, !prof !116

33:                                               ; preds = %31, %33
  %34 = phi ptr [ %36, %33 ], [ %14, %31 ]
  %35 = getelementptr inbounds %struct.splay_tree_node_s, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !79
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %33, !prof !117, !llvm.loop !118

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.splay_tree_node_s, ptr %34, i64 0, i32 3
  br label %40

40:                                               ; preds = %24, %38
  %41 = phi ptr [ %39, %38 ], [ %0, %24 ]
  store ptr %16, ptr %41, align 8, !tbaa !96
  br label %42

42:                                               ; preds = %40, %31, %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @splay_tree_lookup(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !119 {
  tail call fastcc void @splay_tree_splay(ptr noundef %0, i64 noundef %1) #8
  %3 = load ptr, ptr %0, align 8, !tbaa !52
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5, !prof !120

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = load i64, ptr %3, align 8, !tbaa !71
  %9 = tail call i32 %7(i64 noundef %8, i64 noundef %1) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !121

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 8, !tbaa !52
  br label %13

13:                                               ; preds = %2, %5, %11
  %14 = phi ptr [ %12, %11 ], [ null, %5 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @splay_tree_max(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !122 {
  %2 = load ptr, ptr %0, align 8, !tbaa !52
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.splay_tree_node_s, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !123

9:                                                ; preds = %4, %1
  %10 = phi ptr [ null, %1 ], [ %5, %4 ]
  ret ptr %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @splay_tree_min(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !124 {
  %2 = load ptr, ptr %0, align 8, !tbaa !52
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4, !prof !125

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.splay_tree_node_s, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !prof !126, !llvm.loop !127

9:                                                ; preds = %4, %1
  %10 = phi ptr [ null, %1 ], [ %5, %4 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @splay_tree_predecessor(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !128 {
  %3 = load ptr, ptr %0, align 8, !tbaa !52
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5, !prof !129

5:                                                ; preds = %2
  tail call fastcc void @splay_tree_splay(ptr noundef nonnull %0, i64 noundef %1) #8
  %6 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = load ptr, ptr %0, align 8, !tbaa !52
  %9 = load i64, ptr %8, align 8, !tbaa !71
  %10 = tail call i32 %7(i64 noundef %9, i64 noundef %1) #9
  %11 = icmp slt i32 %10, 0
  %12 = load ptr, ptr %0, align 8, !tbaa !52
  br i1 %11, label %22, label %13, !prof !130

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.splay_tree_node_s, ptr %12, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !76
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17, !prof !131

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %20, %17 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !79
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %17, !prof !132, !llvm.loop !133

22:                                               ; preds = %17, %5, %13, %2
  %23 = phi ptr [ null, %2 ], [ null, %13 ], [ %12, %5 ], [ %18, %17 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @splay_tree_successor(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !128 {
  %3 = load ptr, ptr %0, align 8, !tbaa !52
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5, !prof !129

5:                                                ; preds = %2
  tail call fastcc void @splay_tree_splay(ptr noundef nonnull %0, i64 noundef %1) #8
  %6 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = load ptr, ptr %0, align 8, !tbaa !52
  %9 = load i64, ptr %8, align 8, !tbaa !71
  %10 = tail call i32 %7(i64 noundef %9, i64 noundef %1) #9
  %11 = icmp sgt i32 %10, 0
  %12 = load ptr, ptr %0, align 8, !tbaa !52
  br i1 %11, label %22, label %13, !prof !134

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.splay_tree_node_s, ptr %12, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !79
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17, !prof !135

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %20, %17 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %17, !prof !132, !llvm.loop !136

22:                                               ; preds = %17, %5, %13, %2
  %23 = phi ptr [ null, %2 ], [ null, %13 ], [ %12, %5 ], [ %18, %17 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @splay_tree_foreach(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !prof !137 {
  %4 = load ptr, ptr %0, align 8, !tbaa !52
  %5 = tail call fastcc i32 @splay_tree_foreach_helper(ptr noundef %4, ptr noundef %1, ptr noundef %2) #8
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @splay_tree_foreach_helper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !138 !PGOFuncName !139 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %18, label %5, !prof !140

5:                                                ; preds = %3, %14
  %6 = phi ptr [ %16, %14 ], [ %0, %3 ]
  %7 = getelementptr inbounds %struct.splay_tree_node_s, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !76
  %9 = tail call fastcc i32 @splay_tree_foreach_helper(ptr noundef %8, ptr noundef %1, ptr noundef %2) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18, !prof !141

11:                                               ; preds = %5
  %12 = tail call i32 %1(ptr noundef nonnull %6, ptr noundef %2) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18, !prof !141

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.splay_tree_node_s, ptr %6, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !79
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %5, !prof !142

18:                                               ; preds = %14, %5, %11, %3
  %19 = phi i32 [ 0, %3 ], [ %12, %11 ], [ %9, %5 ], [ 0, %14 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @splay_tree_compare_ints(i64 noundef %0, i64 noundef %1) local_unnamed_addr #6 !prof !143 {
  %3 = trunc i64 %0 to i32
  %4 = trunc i64 %1 to i32
  %5 = icmp slt i32 %3, %4
  %6 = icmp sgt i32 %3, %4
  %7 = zext i1 %6 to i32
  %8 = select i1 %5, i32 -1, i32 %7, !prof !144
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @splay_tree_compare_pointers(i64 noundef %0, i64 noundef %1) local_unnamed_addr #6 !prof !122 {
  %3 = inttoptr i64 %0 to ptr
  %4 = inttoptr i64 %1 to ptr
  %5 = icmp ult ptr %3, %4
  %6 = icmp ugt ptr %3, %4
  %7 = zext i1 %6 to i32
  %8 = select i1 %5, i32 -1, i32 %7
  ret i32 %8
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!49}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!36 = !{ptr @splay_tree_new, ptr @splay_tree_new_with_allocator, i64 1570}
!37 = !{ptr @splay_tree_xmalloc_allocate, ptr @xmalloc, i64 134368}
!38 = !{ptr @splay_tree_xmalloc_deallocate, ptr @free, i64 134366}
!39 = !{ptr @splay_tree_delete, ptr @splay_tree_delete_helper, i64 1569}
!40 = !{ptr @splay_tree_insert, ptr @splay_tree_splay, i64 139024}
!41 = !{ptr @splay_tree_splay, ptr @rotate_left, i64 8489535}
!42 = !{ptr @splay_tree_splay, ptr @rotate_right, i64 8519980}
!43 = !{ptr @splay_tree_remove, ptr @splay_tree_splay, i64 107500}
!44 = !{ptr @splay_tree_lookup, ptr @splay_tree_splay, i64 15407435}
!45 = !{ptr @splay_tree_predecessor, ptr @splay_tree_splay, i64 23306}
!46 = !{ptr @splay_tree_successor, ptr @splay_tree_splay, i64 23306}
!47 = !{ptr @splay_tree_foreach, ptr @splay_tree_foreach_helper, i64 235}
!48 = !{ptr @splay_tree_foreach_helper, ptr @splay_tree_foreach_helper, i64 1499}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!50 = !{!"function_entry_count", i64 1570}
!51 = !{!"function_entry_count", i64 2221}
!52 = !{!53, !54, i64 0}
!53 = !{!"splay_tree_s", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48}
!54 = !{!"any pointer", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !{!53, !54, i64 8}
!58 = !{!53, !54, i64 16}
!59 = !{!53, !54, i64 24}
!60 = !{!53, !54, i64 32}
!61 = !{!53, !54, i64 40}
!62 = !{!53, !54, i64 48}
!63 = !{!"function_entry_count", i64 134368}
!64 = !{!"splay-tree.c:splay_tree_xmalloc_allocate"}
!65 = !{!"function_entry_count", i64 134366}
!66 = !{!"splay-tree.c:splay_tree_xmalloc_deallocate"}
!67 = !{!"function_entry_count", i64 1569}
!68 = !{!"splay-tree.c:splay_tree_delete_helper"}
!69 = !{!"branch_weights", i32 5, i32 1566}
!70 = !{!"branch_weights", i32 1566, i32 1}
!71 = !{!72, !73, i64 0}
!72 = !{!"splay_tree_node_s", !73, i64 0, !73, i64 8, !54, i64 16, !54, i64 24}
!73 = !{!"long", !55, i64 0}
!74 = !{!72, !73, i64 8}
!75 = !{!"branch_weights", i32 1566, i32 13046}
!76 = !{!72, !54, i64 16}
!77 = !{!"branch_weights", i32 17059, i32 9284}
!78 = !{!"branch_weights", i32 9284, i32 1}
!79 = !{!72, !54, i64 24}
!80 = !{!"branch_weights", i32 10849, i32 15494}
!81 = !{!"branch_weights", i32 15494, i32 1}
!82 = !{!"branch_weights", i32 14612, i32 11730}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!"function_entry_count", i64 139024}
!86 = !{!"branch_weights", i32 2218, i32 136808}
!87 = !{!"branch_weights", i32 27124325, i32 2120359323}
!88 = !{!"branch_weights", i32 1728, i32 1}
!89 = !{!"branch_weights", i32 2218, i32 135081}
!90 = !{!"branch_weights", i32 51332, i32 83750}
!91 = !{!"function_entry_count", i64 15700573}
!92 = !{!"splay-tree.c:splay_tree_splay"}
!93 = !{!"branch_weights", i32 3784, i32 15696791}
!94 = !{!"branch_weights", i32 1, i32 1870724}
!95 = !{!"branch_weights", i32 7860589, i32 7092083}
!96 = !{!54, !54, i64 0}
!97 = !{!"branch_weights", i32 944186, i32 14008486}
!98 = !{!"branch_weights", i32 243864, i32 13764623}
!99 = !{!"branch_weights", i32 6811022, i32 6953602}
!100 = !{!"branch_weights", i32 6249413, i32 561610}
!101 = !{!"branch_weights", i32 6388607, i32 564996}
!102 = !{!"branch_weights", i32 6442619, i32 6439264}
!103 = !{!"branch_weights", i32 -700661433, i32 1274128330}
!104 = !{!"branch_weights", i32 1374167379, i32 -1942602947}
!105 = !{!"branch_weights", i32 -2141806945, i32 2084690877}
!106 = !{!"branch_weights", i32 -2071122556, i32 16672}
!107 = !{!"branch_weights", i32 1870724, i32 13081947}
!108 = !{!"function_entry_count", i64 7554000}
!109 = !{!"splay-tree.c:rotate_left"}
!110 = !{!"function_entry_count", i64 7581089}
!111 = !{!"splay-tree.c:rotate_right"}
!112 = !{!"function_entry_count", i64 107500}
!113 = !{!"branch_weights", i32 1, i32 107501}
!114 = !{!"branch_weights", i32 107501, i32 1}
!115 = !{!"branch_weights", i32 42045, i32 65457}
!116 = !{!"branch_weights", i32 37, i32 65421}
!117 = !{!"branch_weights", i32 65421, i32 33960}
!118 = distinct !{!118, !84}
!119 = !{!"function_entry_count", i64 15407435}
!120 = !{!"branch_weights", i32 1567, i32 15405870}
!121 = !{!"branch_weights", i32 2005361, i32 13400510}
!122 = !{!"function_entry_count", i64 0}
!123 = distinct !{!123, !84}
!124 = !{!"function_entry_count", i64 41828}
!125 = !{!"branch_weights", i32 5, i32 41825}
!126 = !{!"branch_weights", i32 41825, i32 98373}
!127 = distinct !{!127, !84}
!128 = !{!"function_entry_count", i64 24847}
!129 = !{!"branch_weights", i32 1541, i32 23308}
!130 = !{!"branch_weights", i32 11594, i32 11715}
!131 = !{!"branch_weights", i32 3802, i32 7914}
!132 = !{!"branch_weights", i32 7914, i32 1}
!133 = distinct !{!133, !84}
!134 = !{!"branch_weights", i32 10237, i32 13072}
!135 = !{!"branch_weights", i32 5159, i32 7914}
!136 = distinct !{!136, !84}
!137 = !{!"function_entry_count", i64 235}
!138 = !{!"function_entry_count", i64 1917}
!139 = !{!"splay-tree.c:splay_tree_foreach_helper"}
!140 = !{!"branch_weights", i32 235, i32 842}
!141 = !{!"branch_weights", i32 842, i32 1}
!142 = !{!"branch_weights", i32 842, i32 0}
!143 = !{!"function_entry_count", i64 46225291}
!144 = !{!"branch_weights", i32 20981543, i32 25243750}
