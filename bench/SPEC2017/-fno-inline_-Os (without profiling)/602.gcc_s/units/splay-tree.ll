; ModuleID = 'splay-tree.c'
source_filename = "splay-tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.splay_tree_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.splay_tree_node_s = type { i64, i64, ptr, ptr }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @splay_tree_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @splay_tree_new_with_allocator(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @splay_tree_xmalloc_allocate, ptr noundef nonnull @splay_tree_xmalloc_deallocate, ptr noundef null) #8
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @splay_tree_new_with_allocator(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr %3(i32 noundef 56, ptr noundef %5) #9
  store ptr null, ptr %7, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.splay_tree_s, ptr %7, i64 0, i32 1
  store ptr %0, ptr %8, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.splay_tree_s, ptr %7, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !12
  %10 = getelementptr inbounds %struct.splay_tree_s, ptr %7, i64 0, i32 3
  store ptr %2, ptr %10, align 8, !tbaa !13
  %11 = getelementptr inbounds %struct.splay_tree_s, ptr %7, i64 0, i32 4
  store ptr %3, ptr %11, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct.splay_tree_s, ptr %7, i64 0, i32 5
  store ptr %4, ptr %12, align 8, !tbaa !15
  %13 = getelementptr inbounds %struct.splay_tree_s, ptr %7, i64 0, i32 6
  store ptr %5, ptr %13, align 8, !tbaa !16
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @splay_tree_xmalloc_allocate(i32 noundef %0, ptr nocapture readnone %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = tail call ptr @xmalloc(i64 noundef %3) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @splay_tree_xmalloc_deallocate(ptr nocapture noundef %0, ptr nocapture readnone %1) #1 {
  tail call void @free(ptr noundef %0) #8
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @splay_tree_delete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  tail call fastcc void @splay_tree_delete_helper(ptr noundef nonnull %0, ptr noundef %2) #8
  %3 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  tail call void %4(ptr noundef nonnull %0, ptr noundef %6) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @splay_tree_delete_helper(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %77, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load i64, ptr %1, align 8, !tbaa !17
  tail call void %6(i64 noundef %9) #9
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !20
  tail call void %12(i64 noundef %16) #9
  br label %17

17:                                               ; preds = %14, %10
  store i64 0, ptr %1, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 5
  %19 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 6
  br label %22

20:                                               ; preds = %67
  %21 = icmp eq ptr %68, null
  br i1 %21, label %77, label %74

22:                                               ; preds = %74, %17
  %23 = phi ptr [ null, %17 ], [ %75, %74 ]
  %24 = phi ptr [ %1, %17 ], [ %76, %74 ]
  %25 = getelementptr inbounds %struct.splay_tree_node_s, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !21
  %27 = icmp eq ptr %26, null
  br i1 %27, label %45, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr %5, align 8, !tbaa !12
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i64, ptr %26, align 8, !tbaa !17
  tail call void %29(i64 noundef %32) #9
  %33 = load ptr, ptr %25, align 8, !tbaa !21
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi ptr [ %33, %31 ], [ %26, %28 ]
  %36 = load ptr, ptr %11, align 8, !tbaa !13
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.splay_tree_node_s, ptr %35, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !20
  tail call void %36(i64 noundef %40) #9
  %41 = load ptr, ptr %25, align 8, !tbaa !21
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi ptr [ %41, %38 ], [ %35, %34 ]
  %44 = ptrtoint ptr %23 to i64
  store i64 %44, ptr %43, align 8, !tbaa !17
  br label %45

45:                                               ; preds = %42, %22
  %46 = phi ptr [ %43, %42 ], [ %23, %22 ]
  %47 = getelementptr inbounds %struct.splay_tree_node_s, ptr %24, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !22
  %49 = icmp eq ptr %48, null
  br i1 %49, label %67, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr %5, align 8, !tbaa !12
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i64, ptr %48, align 8, !tbaa !17
  tail call void %51(i64 noundef %54) #9
  %55 = load ptr, ptr %47, align 8, !tbaa !22
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi ptr [ %55, %53 ], [ %48, %50 ]
  %58 = load ptr, ptr %11, align 8, !tbaa !13
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.splay_tree_node_s, ptr %57, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !20
  tail call void %58(i64 noundef %62) #9
  %63 = load ptr, ptr %47, align 8, !tbaa !22
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi ptr [ %63, %60 ], [ %57, %56 ]
  %66 = ptrtoint ptr %46 to i64
  store i64 %66, ptr %65, align 8, !tbaa !17
  br label %67

67:                                               ; preds = %64, %45
  %68 = phi ptr [ %65, %64 ], [ %46, %45 ]
  %69 = load i64, ptr %24, align 8, !tbaa !17
  %70 = inttoptr i64 %69 to ptr
  %71 = load ptr, ptr %18, align 8, !tbaa !15
  %72 = load ptr, ptr %19, align 8, !tbaa !16
  tail call void %71(ptr noundef nonnull %24, ptr noundef %72) #9
  %73 = icmp eq i64 %69, 0
  br i1 %73, label %20, label %74

74:                                               ; preds = %67, %20
  %75 = phi ptr [ %68, %67 ], [ null, %20 ]
  %76 = phi ptr [ %70, %67 ], [ %68, %20 ]
  br label %22, !llvm.loop !23

77:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @splay_tree_insert(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @splay_tree_splay(ptr noundef %0, i64 noundef %1) #8
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = load i64, ptr %4, align 8, !tbaa !17
  %10 = tail call i32 %8(i64 noundef %9, i64 noundef %1) #9
  %11 = load ptr, ptr %0, align 8, !tbaa !6
  %12 = icmp ne ptr %11, null
  %13 = icmp eq i32 %10, 0
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %26

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.splay_tree_node_s, ptr %11, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !20
  tail call void %17(i64 noundef %21) #9
  %22 = load ptr, ptr %0, align 8, !tbaa !6
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi ptr [ %22, %19 ], [ %11, %15 ]
  %25 = getelementptr inbounds %struct.splay_tree_node_s, ptr %24, i64 0, i32 1
  store i64 %2, ptr %25, align 8, !tbaa !20
  br label %51

26:                                               ; preds = %3, %6
  %27 = phi i32 [ %10, %6 ], [ 0, %3 ]
  %28 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !14
  %30 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !16
  %32 = tail call ptr %29(i32 noundef 32, ptr noundef %31) #9
  store i64 %1, ptr %32, align 8, !tbaa !17
  %33 = getelementptr inbounds %struct.splay_tree_node_s, ptr %32, i64 0, i32 1
  store i64 %2, ptr %33, align 8, !tbaa !20
  %34 = load ptr, ptr %0, align 8, !tbaa !6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.splay_tree_node_s, ptr %32, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  br label %50

38:                                               ; preds = %26
  %39 = icmp slt i32 %27, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.splay_tree_node_s, ptr %32, i64 0, i32 2
  store ptr %34, ptr %41, align 8, !tbaa !21
  %42 = getelementptr inbounds %struct.splay_tree_node_s, ptr %34, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !22
  %44 = getelementptr inbounds %struct.splay_tree_node_s, ptr %32, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !22
  store ptr null, ptr %42, align 8, !tbaa !22
  br label %50

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.splay_tree_node_s, ptr %32, i64 0, i32 3
  store ptr %34, ptr %46, align 8, !tbaa !22
  %47 = getelementptr inbounds %struct.splay_tree_node_s, ptr %34, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !21
  %49 = getelementptr inbounds %struct.splay_tree_node_s, ptr %32, i64 0, i32 2
  store ptr %48, ptr %49, align 8, !tbaa !21
  store ptr null, ptr %47, align 8, !tbaa !21
  br label %50

50:                                               ; preds = %40, %45, %36
  store ptr %32, ptr %0, align 8, !tbaa !6
  br label %51

51:                                               ; preds = %50, %23
  %52 = phi ptr [ %32, %50 ], [ %24, %23 ]
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @splay_tree_splay(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %71, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  %8 = load i64, ptr %3, align 8, !tbaa !17
  %9 = tail call i32 %7(i64 noundef %1, i64 noundef %8) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %71, label %11

11:                                               ; preds = %5, %65
  %12 = phi i32 [ %69, %65 ], [ %9, %5 ]
  %13 = phi ptr [ %66, %65 ], [ %3, %5 ]
  %14 = icmp sgt i32 %12, -1
  %15 = getelementptr inbounds %struct.splay_tree_node_s, ptr %13, i64 0, i32 2
  %16 = getelementptr inbounds %struct.splay_tree_node_s, ptr %13, i64 0, i32 3
  %17 = select i1 %14, ptr %16, ptr %15
  %18 = load ptr, ptr %17, align 8, !tbaa !25
  %19 = icmp eq ptr %18, null
  br i1 %19, label %71, label %20

20:                                               ; preds = %11
  %21 = load ptr, ptr %6, align 8, !tbaa !11
  %22 = load i64, ptr %18, align 8, !tbaa !17
  %23 = tail call i32 %21(i64 noundef %1, i64 noundef %22) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = icmp slt i32 %23, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !21
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %38

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %27, %20
  br i1 %14, label %37, label %36

36:                                               ; preds = %35
  tail call fastcc void @rotate_left(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef nonnull %18) #8
  br label %71

37:                                               ; preds = %35
  tail call fastcc void @rotate_right(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef nonnull %18) #8
  br label %71

38:                                               ; preds = %27, %31
  %39 = and i32 %23, %12
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !21
  tail call fastcc void @rotate_left(ptr noundef nonnull %15, ptr noundef nonnull %18, ptr noundef %43) #8
  %44 = load ptr, ptr %15, align 8, !tbaa !21
  tail call fastcc void @rotate_left(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef %44) #8
  br label %65

45:                                               ; preds = %38
  %46 = xor i1 %26, true
  %47 = icmp sgt i32 %12, 0
  %48 = and i1 %47, %46
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !22
  tail call fastcc void @rotate_right(ptr noundef nonnull %16, ptr noundef nonnull %18, ptr noundef %51) #8
  %52 = load ptr, ptr %16, align 8, !tbaa !22
  tail call fastcc void @rotate_right(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef %52) #8
  br label %65

53:                                               ; preds = %45
  %54 = or i1 %14, %26
  br i1 %54, label %59, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !22
  tail call fastcc void @rotate_right(ptr noundef nonnull %15, ptr noundef nonnull %18, ptr noundef %57) #8
  %58 = load ptr, ptr %15, align 8, !tbaa !21
  tail call fastcc void @rotate_left(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef %58) #8
  br label %65

59:                                               ; preds = %53
  %60 = and i1 %47, %26
  br i1 %60, label %61, label %65

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !21
  tail call fastcc void @rotate_left(ptr noundef nonnull %16, ptr noundef nonnull %18, ptr noundef %63) #8
  %64 = load ptr, ptr %16, align 8, !tbaa !22
  tail call fastcc void @rotate_right(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef %64) #8
  br label %65

65:                                               ; preds = %41, %55, %61, %59, %49
  %66 = load ptr, ptr %0, align 8, !tbaa !6
  %67 = load ptr, ptr %6, align 8, !tbaa !11
  %68 = load i64, ptr %66, align 8, !tbaa !17
  %69 = tail call i32 %67(i64 noundef %1, i64 noundef %68) #9
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %11

71:                                               ; preds = %65, %11, %5, %36, %37, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @rotate_left(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.splay_tree_node_s, ptr %2, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  store ptr %1, ptr %4, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !21
  store ptr %2, ptr %0, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @rotate_right(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.splay_tree_node_s, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  store ptr %1, ptr %4, align 8, !tbaa !21
  %6 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 3
  store ptr %5, ptr %6, align 8, !tbaa !22
  store ptr %2, ptr %0, align 8, !tbaa !25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @splay_tree_remove(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @splay_tree_splay(ptr noundef %0, i64 noundef %1) #8
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %42, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  %8 = load i64, ptr %3, align 8, !tbaa !17
  %9 = tail call i32 %7(i64 noundef %8, i64 noundef %1) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.splay_tree_node_s, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !21
  %15 = getelementptr inbounds %struct.splay_tree_node_s, ptr %12, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.splay_tree_node_s, ptr %12, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !20
  tail call void %18(i64 noundef %22) #9
  %23 = load ptr, ptr %0, align 8, !tbaa !6
  br label %24

24:                                               ; preds = %20, %11
  %25 = phi ptr [ %23, %20 ], [ %12, %11 ]
  %26 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !15
  %28 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !16
  tail call void %27(ptr noundef %25, ptr noundef %29) #9
  %30 = icmp eq ptr %14, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %24
  store ptr %14, ptr %0, align 8, !tbaa !6
  %32 = icmp eq ptr %16, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %31, %33
  %34 = phi ptr [ %36, %33 ], [ %14, %31 ]
  %35 = getelementptr inbounds %struct.splay_tree_node_s, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !22
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %33, !llvm.loop !26

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.splay_tree_node_s, ptr %34, i64 0, i32 3
  br label %40

40:                                               ; preds = %24, %38
  %41 = phi ptr [ %39, %38 ], [ %0, %24 ]
  store ptr %16, ptr %41, align 8, !tbaa !25
  br label %42

42:                                               ; preds = %40, %31, %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @splay_tree_lookup(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @splay_tree_splay(ptr noundef %0, i64 noundef %1) #8
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  %8 = load i64, ptr %3, align 8, !tbaa !17
  %9 = tail call i32 %7(i64 noundef %8, i64 noundef %1) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 8, !tbaa !6
  br label %13

13:                                               ; preds = %2, %5, %11
  %14 = phi ptr [ %12, %11 ], [ null, %5 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @splay_tree_max(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.splay_tree_node_s, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !27

9:                                                ; preds = %4, %1
  %10 = phi ptr [ null, %1 ], [ %5, %4 ]
  ret ptr %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @splay_tree_min(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.splay_tree_node_s, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !28

9:                                                ; preds = %4, %1
  %10 = phi ptr [ null, %1 ], [ %5, %4 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @splay_tree_predecessor(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  tail call fastcc void @splay_tree_splay(ptr noundef nonnull %0, i64 noundef %1) #8
  %6 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  %8 = load ptr, ptr %0, align 8, !tbaa !6
  %9 = load i64, ptr %8, align 8, !tbaa !17
  %10 = tail call i32 %7(i64 noundef %9, i64 noundef %1) #9
  %11 = icmp slt i32 %10, 0
  %12 = load ptr, ptr %0, align 8, !tbaa !6
  br i1 %11, label %22, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.splay_tree_node_s, ptr %12, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %20, %17 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %17, !llvm.loop !29

22:                                               ; preds = %17, %5, %13, %2
  %23 = phi ptr [ null, %2 ], [ null, %13 ], [ %12, %5 ], [ %18, %17 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @splay_tree_successor(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  tail call fastcc void @splay_tree_splay(ptr noundef nonnull %0, i64 noundef %1) #8
  %6 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  %8 = load ptr, ptr %0, align 8, !tbaa !6
  %9 = load i64, ptr %8, align 8, !tbaa !17
  %10 = tail call i32 %7(i64 noundef %9, i64 noundef %1) #9
  %11 = icmp sgt i32 %10, 0
  %12 = load ptr, ptr %0, align 8, !tbaa !6
  br i1 %11, label %22, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.splay_tree_node_s, ptr %12, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !22
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %20, %17 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !21
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %17, !llvm.loop !30

22:                                               ; preds = %17, %5, %13, %2
  %23 = phi ptr [ null, %2 ], [ null, %13 ], [ %12, %5 ], [ %18, %17 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @splay_tree_foreach(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = tail call fastcc i32 @splay_tree_foreach_helper(ptr noundef %4, ptr noundef %1, ptr noundef %2) #8
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @splay_tree_foreach_helper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %3, %14
  %6 = phi ptr [ %16, %14 ], [ %0, %3 ]
  %7 = getelementptr inbounds %struct.splay_tree_node_s, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  %9 = tail call fastcc i32 @splay_tree_foreach_helper(ptr noundef %8, ptr noundef %1, ptr noundef %2) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %5
  %12 = tail call i32 %1(ptr noundef nonnull %6, ptr noundef %2) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.splay_tree_node_s, ptr %6, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %5

18:                                               ; preds = %14, %5, %11, %3
  %19 = phi i32 [ 0, %3 ], [ %12, %11 ], [ %9, %5 ], [ 0, %14 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @splay_tree_compare_ints(i64 noundef %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = trunc i64 %0 to i32
  %4 = trunc i64 %1 to i32
  %5 = icmp slt i32 %3, %4
  %6 = icmp sgt i32 %3, %4
  %7 = zext i1 %6 to i32
  %8 = select i1 %5, i32 -1, i32 %7
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @splay_tree_compare_pointers(i64 noundef %0, i64 noundef %1) local_unnamed_addr #6 {
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

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"splay_tree_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!7, !8, i64 8}
!12 = !{!7, !8, i64 16}
!13 = !{!7, !8, i64 24}
!14 = !{!7, !8, i64 32}
!15 = !{!7, !8, i64 40}
!16 = !{!7, !8, i64 48}
!17 = !{!18, !19, i64 0}
!18 = !{!"splay_tree_node_s", !19, i64 0, !19, i64 8, !8, i64 16, !8, i64 24}
!19 = !{!"long", !9, i64 0}
!20 = !{!18, !19, i64 8}
!21 = !{!18, !8, i64 16}
!22 = !{!18, !8, i64 24}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!8, !8, i64 0}
!26 = distinct !{!26, !24}
!27 = distinct !{!27, !24}
!28 = distinct !{!28, !24}
!29 = distinct !{!29, !24}
!30 = distinct !{!30, !24}
