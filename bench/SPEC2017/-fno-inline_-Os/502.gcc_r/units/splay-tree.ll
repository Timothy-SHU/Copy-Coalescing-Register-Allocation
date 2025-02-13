; ModuleID = 'splay-tree.c'
source_filename = "splay-tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.splay_tree_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.splay_tree_node_s = type { i64, i64, ptr, ptr }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @splay_tree_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !49 {
  %4 = tail call ptr @splay_tree_new_with_allocator(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @splay_tree_xmalloc_allocate, ptr noundef nonnull @splay_tree_xmalloc_deallocate, ptr noundef null) #8
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @splay_tree_new_with_allocator(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 !prof !50 {
  %7 = tail call ptr %3(i32 noundef 56, ptr noundef %5) #9
  store ptr null, ptr %7, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.splay_tree_s, ptr %7, i64 0, i32 1
  store ptr %0, ptr %8, align 8, !tbaa !56
  %9 = getelementptr inbounds %struct.splay_tree_s, ptr %7, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !57
  %10 = getelementptr inbounds %struct.splay_tree_s, ptr %7, i64 0, i32 3
  store ptr %2, ptr %10, align 8, !tbaa !58
  %11 = getelementptr inbounds %struct.splay_tree_s, ptr %7, i64 0, i32 4
  store ptr %3, ptr %11, align 8, !tbaa !59
  %12 = getelementptr inbounds %struct.splay_tree_s, ptr %7, i64 0, i32 5
  store ptr %4, ptr %12, align 8, !tbaa !60
  %13 = getelementptr inbounds %struct.splay_tree_s, ptr %7, i64 0, i32 6
  store ptr %5, ptr %13, align 8, !tbaa !61
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @splay_tree_xmalloc_allocate(i32 noundef %0, ptr nocapture readnone %1) #0 !prof !62 !PGOFuncName !63 {
  %3 = sext i32 %0 to i64
  %4 = tail call ptr @xmalloc(i64 noundef %3) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @splay_tree_xmalloc_deallocate(ptr nocapture noundef %0, ptr nocapture readnone %1) #1 !prof !64 !PGOFuncName !65 {
  tail call void @free(ptr noundef %0) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @splay_tree_delete(ptr noundef %0) local_unnamed_addr #0 !prof !66 {
  %2 = load ptr, ptr %0, align 8, !tbaa !51
  tail call fastcc void @splay_tree_delete_helper(ptr noundef nonnull %0, ptr noundef %2) #8
  %3 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  tail call void %4(ptr noundef nonnull %0, ptr noundef %6) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @splay_tree_delete_helper(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !66 !PGOFuncName !67 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %77, label %4, !prof !68

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !69

8:                                                ; preds = %4
  %9 = load i64, ptr %1, align 8, !tbaa !70
  tail call void %6(i64 noundef %9) #9
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !69

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !73
  tail call void %12(i64 noundef %16) #9
  br label %17

17:                                               ; preds = %14, %10
  store i64 0, ptr %1, align 8, !tbaa !70
  %18 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 5
  %19 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 6
  br label %22

20:                                               ; preds = %67
  %21 = icmp eq ptr %68, null
  br i1 %21, label %77, label %74, !prof !74

22:                                               ; preds = %74, %17
  %23 = phi ptr [ null, %17 ], [ %75, %74 ]
  %24 = phi ptr [ %1, %17 ], [ %76, %74 ]
  %25 = getelementptr inbounds %struct.splay_tree_node_s, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  %27 = icmp eq ptr %26, null
  br i1 %27, label %45, label %28, !prof !76

28:                                               ; preds = %22
  %29 = load ptr, ptr %5, align 8, !tbaa !57
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31, !prof !77

31:                                               ; preds = %28
  %32 = load i64, ptr %26, align 8, !tbaa !70
  tail call void %29(i64 noundef %32) #9
  %33 = load ptr, ptr %25, align 8, !tbaa !75
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi ptr [ %33, %31 ], [ %26, %28 ]
  %36 = load ptr, ptr %11, align 8, !tbaa !58
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38, !prof !77

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.splay_tree_node_s, ptr %35, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !73
  tail call void %36(i64 noundef %40) #9
  %41 = load ptr, ptr %25, align 8, !tbaa !75
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi ptr [ %41, %38 ], [ %35, %34 ]
  %44 = ptrtoint ptr %23 to i64
  store i64 %44, ptr %43, align 8, !tbaa !70
  br label %45

45:                                               ; preds = %42, %22
  %46 = phi ptr [ %43, %42 ], [ %23, %22 ]
  %47 = getelementptr inbounds %struct.splay_tree_node_s, ptr %24, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !78
  %49 = icmp eq ptr %48, null
  br i1 %49, label %67, label %50, !prof !79

50:                                               ; preds = %45
  %51 = load ptr, ptr %5, align 8, !tbaa !57
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53, !prof !80

53:                                               ; preds = %50
  %54 = load i64, ptr %48, align 8, !tbaa !70
  tail call void %51(i64 noundef %54) #9
  %55 = load ptr, ptr %47, align 8, !tbaa !78
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi ptr [ %55, %53 ], [ %48, %50 ]
  %58 = load ptr, ptr %11, align 8, !tbaa !58
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60, !prof !80

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.splay_tree_node_s, ptr %57, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !73
  tail call void %58(i64 noundef %62) #9
  %63 = load ptr, ptr %47, align 8, !tbaa !78
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi ptr [ %63, %60 ], [ %57, %56 ]
  %66 = ptrtoint ptr %46 to i64
  store i64 %66, ptr %65, align 8, !tbaa !70
  br label %67

67:                                               ; preds = %64, %45
  %68 = phi ptr [ %65, %64 ], [ %46, %45 ]
  %69 = load i64, ptr %24, align 8, !tbaa !70
  %70 = inttoptr i64 %69 to ptr
  %71 = load ptr, ptr %18, align 8, !tbaa !60
  %72 = load ptr, ptr %19, align 8, !tbaa !61
  tail call void %71(ptr noundef nonnull %24, ptr noundef %72) #9
  %73 = icmp eq i64 %69, 0
  br i1 %73, label %20, label %74, !prof !81

74:                                               ; preds = %67, %20
  %75 = phi ptr [ %68, %67 ], [ null, %20 ]
  %76 = phi ptr [ %70, %67 ], [ %68, %20 ]
  br label %22, !llvm.loop !82

77:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @splay_tree_insert(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 !prof !84 {
  tail call fastcc void @splay_tree_splay(ptr noundef %0, i64 noundef %1) #8
  %4 = load ptr, ptr %0, align 8, !tbaa !51
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6, !prof !85

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = load i64, ptr %4, align 8, !tbaa !70
  %10 = tail call i32 %8(i64 noundef %9, i64 noundef %1) #9
  %11 = load ptr, ptr %0, align 8, !tbaa !51
  %12 = icmp ne ptr %11, null
  %13 = icmp eq i32 %10, 0
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %26, !prof !86

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !58
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19, !prof !87

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.splay_tree_node_s, ptr %11, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !73
  tail call void %17(i64 noundef %21) #9
  %22 = load ptr, ptr %0, align 8, !tbaa !51
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi ptr [ %22, %19 ], [ %11, %15 ]
  %25 = getelementptr inbounds %struct.splay_tree_node_s, ptr %24, i64 0, i32 1
  store i64 %2, ptr %25, align 8, !tbaa !73
  br label %51

26:                                               ; preds = %3, %6
  %27 = phi i32 [ %10, %6 ], [ 0, %3 ]
  %28 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !59
  %30 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !61
  %32 = tail call ptr %29(i32 noundef 32, ptr noundef %31) #9
  store i64 %1, ptr %32, align 8, !tbaa !70
  %33 = getelementptr inbounds %struct.splay_tree_node_s, ptr %32, i64 0, i32 1
  store i64 %2, ptr %33, align 8, !tbaa !73
  %34 = load ptr, ptr %0, align 8, !tbaa !51
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38, !prof !88

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.splay_tree_node_s, ptr %32, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  br label %50

38:                                               ; preds = %26
  %39 = icmp slt i32 %27, 0
  br i1 %39, label %40, label %45, !prof !89

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.splay_tree_node_s, ptr %32, i64 0, i32 2
  store ptr %34, ptr %41, align 8, !tbaa !75
  %42 = getelementptr inbounds %struct.splay_tree_node_s, ptr %34, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !78
  %44 = getelementptr inbounds %struct.splay_tree_node_s, ptr %32, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !78
  store ptr null, ptr %42, align 8, !tbaa !78
  br label %50

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.splay_tree_node_s, ptr %32, i64 0, i32 3
  store ptr %34, ptr %46, align 8, !tbaa !78
  %47 = getelementptr inbounds %struct.splay_tree_node_s, ptr %34, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !75
  %49 = getelementptr inbounds %struct.splay_tree_node_s, ptr %32, i64 0, i32 2
  store ptr %48, ptr %49, align 8, !tbaa !75
  store ptr null, ptr %47, align 8, !tbaa !75
  br label %50

50:                                               ; preds = %40, %45, %36
  store ptr %32, ptr %0, align 8, !tbaa !51
  br label %51

51:                                               ; preds = %50, %23
  %52 = phi ptr [ %32, %50 ], [ %24, %23 ]
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @splay_tree_splay(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #0 !prof !90 !PGOFuncName !91 {
  %3 = load ptr, ptr %0, align 8, !tbaa !51
  %4 = icmp eq ptr %3, null
  br i1 %4, label %71, label %5, !prof !92

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = load i64, ptr %3, align 8, !tbaa !70
  %9 = tail call i32 %7(i64 noundef %1, i64 noundef %8) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %71, label %11, !prof !93

11:                                               ; preds = %5, %65
  %12 = phi i32 [ %69, %65 ], [ %9, %5 ]
  %13 = phi ptr [ %66, %65 ], [ %3, %5 ]
  %14 = icmp sgt i32 %12, -1
  %15 = getelementptr inbounds %struct.splay_tree_node_s, ptr %13, i64 0, i32 2
  %16 = getelementptr inbounds %struct.splay_tree_node_s, ptr %13, i64 0, i32 3
  %17 = select i1 %14, ptr %16, ptr %15, !prof !94
  %18 = load ptr, ptr %17, align 8, !tbaa !95
  %19 = icmp eq ptr %18, null
  br i1 %19, label %71, label %20, !prof !96

20:                                               ; preds = %11
  %21 = load ptr, ptr %6, align 8, !tbaa !56
  %22 = load i64, ptr %18, align 8, !tbaa !70
  %23 = tail call i32 %21(i64 noundef %1, i64 noundef %22) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25, !prof !97

25:                                               ; preds = %20
  %26 = icmp slt i32 %23, 0
  br i1 %26, label %27, label %31, !prof !98

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !75
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %38, !prof !99

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !78
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38, !prof !100

35:                                               ; preds = %31, %27, %20
  br i1 %14, label %37, label %36, !prof !101

36:                                               ; preds = %35
  tail call fastcc void @rotate_left(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef nonnull %18) #8
  br label %71

37:                                               ; preds = %35
  tail call fastcc void @rotate_right(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef nonnull %18) #8
  br label %71

38:                                               ; preds = %27, %31
  %39 = and i32 %23, %12
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %45, label %41, !prof !102

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !75
  tail call fastcc void @rotate_left(ptr noundef nonnull %15, ptr noundef nonnull %18, ptr noundef %43) #8
  %44 = load ptr, ptr %15, align 8, !tbaa !75
  tail call fastcc void @rotate_left(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef %44) #8
  br label %65

45:                                               ; preds = %38
  %46 = xor i1 %26, true
  %47 = icmp sgt i32 %12, 0
  %48 = and i1 %47, %46
  br i1 %48, label %49, label %53, !prof !103

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !78
  tail call fastcc void @rotate_right(ptr noundef nonnull %16, ptr noundef nonnull %18, ptr noundef %51) #8
  %52 = load ptr, ptr %16, align 8, !tbaa !78
  tail call fastcc void @rotate_right(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef %52) #8
  br label %65

53:                                               ; preds = %45
  %54 = or i1 %14, %26
  br i1 %54, label %59, label %55, !prof !104

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !78
  tail call fastcc void @rotate_right(ptr noundef nonnull %15, ptr noundef nonnull %18, ptr noundef %57) #8
  %58 = load ptr, ptr %15, align 8, !tbaa !75
  tail call fastcc void @rotate_left(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef %58) #8
  br label %65

59:                                               ; preds = %53
  %60 = and i1 %47, %26
  br i1 %60, label %61, label %65, !prof !105

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !75
  tail call fastcc void @rotate_left(ptr noundef nonnull %16, ptr noundef nonnull %18, ptr noundef %63) #8
  %64 = load ptr, ptr %16, align 8, !tbaa !78
  tail call fastcc void @rotate_right(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef %64) #8
  br label %65

65:                                               ; preds = %41, %55, %61, %59, %49
  %66 = load ptr, ptr %0, align 8, !tbaa !51
  %67 = load ptr, ptr %6, align 8, !tbaa !56
  %68 = load i64, ptr %66, align 8, !tbaa !70
  %69 = tail call i32 %67(i64 noundef %1, i64 noundef %68) #9
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %11, !prof !106

71:                                               ; preds = %65, %11, %5, %36, %37, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @splay_tree_remove(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !107 {
  tail call fastcc void @splay_tree_splay(ptr noundef %0, i64 noundef %1) #8
  %3 = load ptr, ptr %0, align 8, !tbaa !51
  %4 = icmp eq ptr %3, null
  br i1 %4, label %42, label %5, !prof !108

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = load i64, ptr %3, align 8, !tbaa !70
  %9 = tail call i32 %7(i64 noundef %8, i64 noundef %1) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %42, !prof !109

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.splay_tree_node_s, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !75
  %15 = getelementptr inbounds %struct.splay_tree_node_s, ptr %12, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !78
  %17 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !58
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20, !prof !109

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.splay_tree_node_s, ptr %12, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !73
  tail call void %18(i64 noundef %22) #9
  %23 = load ptr, ptr %0, align 8, !tbaa !51
  br label %24

24:                                               ; preds = %20, %11
  %25 = phi ptr [ %23, %20 ], [ %12, %11 ]
  %26 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !60
  %28 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !61
  tail call void %27(ptr noundef %25, ptr noundef %29) #9
  %30 = icmp eq ptr %14, null
  br i1 %30, label %40, label %31, !prof !110

31:                                               ; preds = %24
  store ptr %14, ptr %0, align 8, !tbaa !51
  %32 = icmp eq ptr %16, null
  br i1 %32, label %42, label %33, !prof !111

33:                                               ; preds = %31, %33
  %34 = phi ptr [ %36, %33 ], [ %14, %31 ]
  %35 = getelementptr inbounds %struct.splay_tree_node_s, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !78
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %33, !prof !112, !llvm.loop !113

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.splay_tree_node_s, ptr %34, i64 0, i32 3
  br label %40

40:                                               ; preds = %24, %38
  %41 = phi ptr [ %39, %38 ], [ %0, %24 ]
  store ptr %16, ptr %41, align 8, !tbaa !95
  br label %42

42:                                               ; preds = %40, %31, %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @splay_tree_lookup(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !114 {
  tail call fastcc void @splay_tree_splay(ptr noundef %0, i64 noundef %1) #8
  %3 = load ptr, ptr %0, align 8, !tbaa !51
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5, !prof !115

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = load i64, ptr %3, align 8, !tbaa !70
  %9 = tail call i32 %7(i64 noundef %8, i64 noundef %1) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !116

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 8, !tbaa !51
  br label %13

13:                                               ; preds = %2, %5, %11
  %14 = phi ptr [ %12, %11 ], [ null, %5 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @splay_tree_max(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !117 {
  %2 = load ptr, ptr %0, align 8, !tbaa !51
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.splay_tree_node_s, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !118

9:                                                ; preds = %4, %1
  %10 = phi ptr [ null, %1 ], [ %5, %4 ]
  ret ptr %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @splay_tree_min(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !119 {
  %2 = load ptr, ptr %0, align 8, !tbaa !51
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4, !prof !120

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.splay_tree_node_s, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !prof !121, !llvm.loop !122

9:                                                ; preds = %4, %1
  %10 = phi ptr [ null, %1 ], [ %5, %4 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @splay_tree_predecessor(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !123 {
  %3 = load ptr, ptr %0, align 8, !tbaa !51
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5, !prof !124

5:                                                ; preds = %2
  tail call fastcc void @splay_tree_splay(ptr noundef nonnull %0, i64 noundef %1) #8
  %6 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = load ptr, ptr %0, align 8, !tbaa !51
  %9 = load i64, ptr %8, align 8, !tbaa !70
  %10 = tail call i32 %7(i64 noundef %9, i64 noundef %1) #9
  %11 = icmp slt i32 %10, 0
  %12 = load ptr, ptr %0, align 8, !tbaa !51
  br i1 %11, label %22, label %13, !prof !125

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.splay_tree_node_s, ptr %12, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !75
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17, !prof !126

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %20, %17 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !78
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %17, !prof !127, !llvm.loop !128

22:                                               ; preds = %17, %5, %13, %2
  %23 = phi ptr [ null, %2 ], [ null, %13 ], [ %12, %5 ], [ %18, %17 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @splay_tree_successor(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !123 {
  %3 = load ptr, ptr %0, align 8, !tbaa !51
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5, !prof !124

5:                                                ; preds = %2
  tail call fastcc void @splay_tree_splay(ptr noundef nonnull %0, i64 noundef %1) #8
  %6 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = load ptr, ptr %0, align 8, !tbaa !51
  %9 = load i64, ptr %8, align 8, !tbaa !70
  %10 = tail call i32 %7(i64 noundef %9, i64 noundef %1) #9
  %11 = icmp sgt i32 %10, 0
  %12 = load ptr, ptr %0, align 8, !tbaa !51
  br i1 %11, label %22, label %13, !prof !129

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.splay_tree_node_s, ptr %12, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !78
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17, !prof !130

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %20, %17 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !75
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %17, !prof !127, !llvm.loop !131

22:                                               ; preds = %17, %5, %13, %2
  %23 = phi ptr [ null, %2 ], [ null, %13 ], [ %12, %5 ], [ %18, %17 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @splay_tree_foreach(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !prof !132 {
  %4 = load ptr, ptr %0, align 8, !tbaa !51
  %5 = tail call fastcc i32 @splay_tree_foreach_helper(ptr noundef %4, ptr noundef %1, ptr noundef %2) #8
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @splay_tree_foreach_helper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !133 !PGOFuncName !134 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %18, label %5, !prof !135

5:                                                ; preds = %3, %14
  %6 = phi ptr [ %16, %14 ], [ %0, %3 ]
  %7 = getelementptr inbounds %struct.splay_tree_node_s, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = tail call fastcc i32 @splay_tree_foreach_helper(ptr noundef %8, ptr noundef %1, ptr noundef %2) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18, !prof !136

11:                                               ; preds = %5
  %12 = tail call i32 %1(ptr noundef nonnull %6, ptr noundef %2) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18, !prof !136

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.splay_tree_node_s, ptr %6, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !78
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %5, !prof !137

18:                                               ; preds = %14, %5, %11, %3
  %19 = phi i32 [ 0, %3 ], [ %12, %11 ], [ %9, %5 ], [ 0, %14 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @splay_tree_compare_ints(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 !prof !138 {
  %3 = trunc i64 %0 to i32
  %4 = trunc i64 %1 to i32
  %5 = icmp slt i32 %3, %4
  %6 = icmp sgt i32 %3, %4
  %7 = zext i1 %6 to i32
  %8 = select i1 %5, i32 -1, i32 %7, !prof !139
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @splay_tree_compare_pointers(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 !prof !117 {
  %3 = inttoptr i64 %0 to ptr
  %4 = inttoptr i64 %1 to ptr
  %5 = icmp ult ptr %3, %4
  %6 = icmp ugt ptr %3, %4
  %7 = zext i1 %6 to i32
  %8 = select i1 %5, i32 -1, i32 %7
  ret i32 %8
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @rotate_left(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 !prof !140 !PGOFuncName !141 {
  %4 = getelementptr inbounds %struct.splay_tree_node_s, ptr %2, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !78
  store ptr %1, ptr %4, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !75
  store ptr %2, ptr %0, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @rotate_right(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 !prof !142 !PGOFuncName !143 {
  %4 = getelementptr inbounds %struct.splay_tree_node_s, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  store ptr %1, ptr %4, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 3
  store ptr %5, ptr %6, align 8, !tbaa !78
  store ptr %2, ptr %0, align 8, !tbaa !95
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!48}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!35 = !{ptr @splay_tree_new, ptr @splay_tree_new_with_allocator, i64 45}
!36 = !{ptr @splay_tree_xmalloc_allocate, ptr @xmalloc, i64 26063}
!37 = !{ptr @splay_tree_xmalloc_deallocate, ptr @free, i64 26061}
!38 = !{ptr @splay_tree_delete, ptr @splay_tree_delete_helper, i64 44}
!39 = !{ptr @splay_tree_insert, ptr @splay_tree_splay, i64 26163}
!40 = !{ptr @splay_tree_splay, ptr @rotate_left, i64 77757}
!41 = !{ptr @splay_tree_splay, ptr @rotate_right, i64 82919}
!42 = !{ptr @splay_tree_remove, ptr @splay_tree_splay, i64 358}
!43 = !{ptr @splay_tree_lookup, ptr @splay_tree_splay, i64 25781}
!44 = !{ptr @splay_tree_predecessor, ptr @splay_tree_splay, i64 25616}
!45 = !{ptr @splay_tree_successor, ptr @splay_tree_splay, i64 25616}
!46 = !{ptr @splay_tree_foreach, ptr @splay_tree_foreach_helper, i64 8}
!47 = !{ptr @splay_tree_foreach_helper, ptr @splay_tree_foreach_helper, i64 129}
!48 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!49 = !{!"function_entry_count", i64 45}
!50 = !{!"function_entry_count", i64 56}
!51 = !{!52, !53, i64 0}
!52 = !{!"splay_tree_s", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48}
!53 = !{!"any pointer", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}
!56 = !{!52, !53, i64 8}
!57 = !{!52, !53, i64 16}
!58 = !{!52, !53, i64 24}
!59 = !{!52, !53, i64 32}
!60 = !{!52, !53, i64 40}
!61 = !{!52, !53, i64 48}
!62 = !{!"function_entry_count", i64 26063}
!63 = !{!"splay-tree.c:splay_tree_xmalloc_allocate"}
!64 = !{!"function_entry_count", i64 26061}
!65 = !{!"splay-tree.c:splay_tree_xmalloc_deallocate"}
!66 = !{!"function_entry_count", i64 44}
!67 = !{!"splay-tree.c:splay_tree_delete_helper"}
!68 = !{!"branch_weights", i32 5, i32 41}
!69 = !{!"branch_weights", i32 41, i32 1}
!70 = !{!71, !72, i64 0}
!71 = !{!"splay_tree_node_s", !72, i64 0, !72, i64 8, !53, i64 16, !53, i64 24}
!72 = !{!"long", !54, i64 0}
!73 = !{!71, !72, i64 8}
!74 = !{!"branch_weights", i32 41, i32 5788}
!75 = !{!71, !53, i64 16}
!76 = !{!"branch_weights", i32 14198, i32 11501}
!77 = !{!"branch_weights", i32 11501, i32 1}
!78 = !{!71, !53, i64 24}
!79 = !{!"branch_weights", i32 11541, i32 14158}
!80 = !{!"branch_weights", i32 14158, i32 1}
!81 = !{!"branch_weights", i32 5829, i32 19869}
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!"function_entry_count", i64 26163}
!85 = !{!"branch_weights", i32 57, i32 26108}
!86 = !{!"branch_weights", i32 2056267, i32 2145427381}
!87 = !{!"branch_weights", i32 25, i32 1}
!88 = !{!"branch_weights", i32 57, i32 26084}
!89 = !{!"branch_weights", i32 6290, i32 19795}
!90 = !{!"function_entry_count", i64 103536}
!91 = !{!"splay-tree.c:splay_tree_splay"}
!92 = !{!"branch_weights", i32 98, i32 103440}
!93 = !{!"branch_weights", i32 1, i32 289}
!94 = !{!"branch_weights", i32 62106, i32 82816}
!95 = !{!53, !53, i64 0}
!96 = !{!"branch_weights", i32 25774, i32 119148}
!97 = !{!"branch_weights", i32 129, i32 119020}
!98 = !{!"branch_weights", i32 58222, i32 60799}
!99 = !{!"branch_weights", i32 38840, i32 19383}
!100 = !{!"branch_weights", i32 38411, i32 22389}
!101 = !{!"branch_weights", i32 38284, i32 39095}
!102 = !{!"branch_weights", i32 538840620, i32 271494408}
!103 = !{!"branch_weights", i32 380067138, i32 241443237}
!104 = !{!"branch_weights", i32 29122155, i32 29192409}
!105 = !{!"branch_weights", i32 29030544, i32 10777}
!106 = !{!"branch_weights", i32 289, i32 144632}
!107 = !{!"function_entry_count", i64 358}
!108 = !{!"branch_weights", i32 1, i32 359}
!109 = !{!"branch_weights", i32 359, i32 1}
!110 = !{!"branch_weights", i32 293, i32 67}
!111 = !{!"branch_weights", i32 1, i32 67}
!112 = !{!"branch_weights", i32 67, i32 40}
!113 = distinct !{!113, !83}
!114 = !{!"function_entry_count", i64 25781}
!115 = !{!"branch_weights", i32 42, i32 25741}
!116 = !{!"branch_weights", i32 36, i32 25706}
!117 = !{!"function_entry_count", i64 0}
!118 = distinct !{!118, !83}
!119 = !{!"function_entry_count", i64 252}
!120 = !{!"branch_weights", i32 5, i32 249}
!121 = !{!"branch_weights", i32 249, i32 276}
!122 = distinct !{!122, !83}
!123 = !{!"function_entry_count", i64 25657}
!124 = !{!"branch_weights", i32 41, i32 25618}
!125 = !{!"branch_weights", i32 6063, i32 19556}
!126 = !{!"branch_weights", i32 6156, i32 13401}
!127 = !{!"branch_weights", i32 13401, i32 1}
!128 = distinct !{!128, !83}
!129 = !{!"branch_weights", i32 11867, i32 13752}
!130 = !{!"branch_weights", i32 352, i32 13401}
!131 = distinct !{!131, !83}
!132 = !{!"function_entry_count", i64 8}
!133 = !{!"function_entry_count", i64 144}
!134 = !{!"splay-tree.c:splay_tree_foreach_helper"}
!135 = !{!"branch_weights", i32 8, i32 69}
!136 = !{!"branch_weights", i32 69, i32 1}
!137 = !{!"branch_weights", i32 69, i32 0}
!138 = !{!"function_entry_count", i64 2899}
!139 = !{!"branch_weights", i32 1137, i32 1764}
!140 = !{!"function_entry_count", i64 77873}
!141 = !{!"splay-tree.c:rotate_left"}
!142 = !{!"function_entry_count", i64 83044}
!143 = !{!"splay-tree.c:rotate_right"}
