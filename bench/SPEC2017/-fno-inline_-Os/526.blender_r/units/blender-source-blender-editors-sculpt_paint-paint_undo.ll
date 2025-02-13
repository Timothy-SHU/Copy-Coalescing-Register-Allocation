; ModuleID = 'blender/source/blender/editors/sculpt_paint/paint_undo.c'
source_filename = "blender/source/blender/editors/sculpt_paint/paint_undo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UndoStack = type { i32, %struct.ListBase, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.UndoElem = type { ptr, ptr, [64 x i8], i64, %struct.ListBase, ptr, ptr, ptr }

@ImageUndoStack = internal global %struct.UndoStack zeroinitializer, align 8
@MeshUndoStack = internal global %struct.UndoStack { i32 1, %struct.ListBase zeroinitializer, ptr null }, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"undo file\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"%s: undo '%s'\0A\00", align 1
@__func__.undo_stack_step = private unnamed_addr constant [16 x i8] c"undo_stack_step\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%s: redo %s\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_undo_paint_push_begin(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  switch i32 %0, label %9 [
    i32 0, label %7
    i32 1, label %6
  ]

6:                                                ; preds = %5
  br label %7

7:                                                ; preds = %5, %6
  %8 = phi ptr [ @MeshUndoStack, %6 ], [ @ImageUndoStack, %5 ]
  tail call fastcc void @undo_stack_push_begin(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #9
  br label %9

9:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @undo_stack_push_begin(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !34 {
  %6 = getelementptr inbounds %struct.UndoStack, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.UndoStack, ptr %0, i64 0, i32 1, i32 1
  %8 = getelementptr inbounds %struct.UndoStack, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %7, align 8, !tbaa !35
  %10 = load ptr, ptr %8, align 8, !tbaa !42
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %9, %5 ]
  tail call fastcc void @undo_elem_free(ptr noundef %13) #9
  tail call void @BLI_freelinkN(ptr noundef nonnull %6, ptr noundef %13) #10
  %14 = load ptr, ptr %7, align 8, !tbaa !35
  %15 = load ptr, ptr %8, align 8, !tbaa !42
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %12, !llvm.loop !43

17:                                               ; preds = %12, %5
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %19 = tail call ptr %18(i64 noundef 128, ptr noundef nonnull @.str) #10
  store ptr %19, ptr %8, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct.UndoElem, ptr %19, i64 0, i32 5
  store ptr %2, ptr %20, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.UndoElem, ptr %19, i64 0, i32 6
  store ptr %3, ptr %21, align 8, !tbaa !49
  %22 = getelementptr inbounds %struct.UndoElem, ptr %19, i64 0, i32 7
  store ptr %4, ptr %22, align 8, !tbaa !50
  tail call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %19) #10
  %23 = getelementptr inbounds %struct.UndoElem, ptr %19, i64 0, i32 2
  %24 = tail call ptr @BLI_strncpy(ptr noundef nonnull %23, ptr noundef %1, i64 noundef 64) #10
  %25 = load ptr, ptr %7, align 8, !tbaa !45
  %26 = icmp eq ptr %25, null
  br i1 %26, label %46, label %27

27:                                               ; preds = %17
  %28 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 46), align 8, !tbaa !51
  %29 = sext i16 %28 to i32
  br label %30

30:                                               ; preds = %27, %38
  %31 = phi ptr [ %25, %27 ], [ %40, %38 ]
  %32 = phi i32 [ 0, %27 ], [ %33, %38 ]
  %33 = add nuw nsw i32 %32, 1
  %34 = icmp eq i32 %33, %29
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load ptr, ptr %6, align 8, !tbaa !57
  %37 = icmp eq ptr %36, %31
  br i1 %37, label %46, label %42

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.UndoElem, ptr %31, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !45
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %30, !llvm.loop !58

42:                                               ; preds = %35, %42
  %43 = phi ptr [ %44, %42 ], [ %36, %35 ]
  tail call fastcc void @undo_elem_free(ptr noundef %43) #9
  tail call void @BLI_freelinkN(ptr noundef nonnull %6, ptr noundef %43) #10
  %44 = load ptr, ptr %6, align 8, !tbaa !57
  %45 = icmp eq ptr %44, %31
  br i1 %45, label %46, label %42, !llvm.loop !59

46:                                               ; preds = %38, %42, %17, %35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @undo_paint_push_get_list(i32 noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = load ptr, ptr getelementptr inbounds (%struct.UndoStack, ptr @ImageUndoStack, i64 0, i32 2), align 8, !tbaa !42
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.UndoElem, ptr %4, i64 0, i32 4
  %7 = select i1 %5, ptr null, ptr %6
  br label %15

8:                                                ; preds = %1
  %9 = icmp eq i32 %0, 1
  %10 = load ptr, ptr getelementptr inbounds (%struct.UndoStack, ptr @MeshUndoStack, i64 0, i32 2), align 8
  %11 = icmp ne ptr %10, null
  %12 = select i1 %9, i1 %11, i1 false
  %13 = getelementptr inbounds %struct.UndoElem, ptr %10, i64 0, i32 4
  %14 = select i1 %12, ptr %13, ptr null
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi ptr [ %7, %3 ], [ %14, %8 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @undo_paint_push_count_alloc(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  switch i32 %0, label %11 [
    i32 0, label %4
    i32 1, label %3
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %2, %3
  %5 = phi ptr [ getelementptr inbounds (%struct.UndoStack, ptr @MeshUndoStack, i64 0, i32 2), %3 ], [ getelementptr inbounds (%struct.UndoStack, ptr @ImageUndoStack, i64 0, i32 2), %2 ]
  %6 = sext i32 %1 to i64
  %7 = load ptr, ptr %5, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.UndoElem, ptr %7, i64 0, i32 3
  %9 = load i64, ptr %8, align 8, !tbaa !60
  %10 = add i64 %9, %6
  store i64 %10, ptr %8, align 8, !tbaa !60
  br label %11

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_undo_paint_push_end(i32 noundef %0) local_unnamed_addr #0 {
  switch i32 %0, label %5 [
    i32 0, label %3
    i32 1, label %2
  ]

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %1, %2
  %4 = phi ptr [ @MeshUndoStack, %2 ], [ @ImageUndoStack, %1 ]
  tail call fastcc void @undo_stack_push_end(ptr noundef nonnull %4) #9
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @undo_stack_push_end(ptr noundef %0) unnamed_addr #0 !PGOFuncName !61 {
  %2 = getelementptr inbounds %struct.UndoStack, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.UndoStack, ptr %0, i64 0, i32 1, i32 1
  %4 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 46), align 8
  %5 = sext i16 %4 to i32
  %6 = load ptr, ptr %3, align 8, !tbaa !45
  %7 = icmp ne ptr %6, null
  %8 = icmp sgt i16 %4, 0
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %19

10:                                               ; preds = %1, %10
  %11 = phi ptr [ %15, %10 ], [ %6, %1 ]
  %12 = phi i32 [ %13, %10 ], [ 0, %1 ]
  %13 = add nuw nsw i32 %12, 1
  %14 = getelementptr inbounds %struct.UndoElem, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = icmp ne ptr %15, null
  %17 = icmp slt i32 %13, %5
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %10, label %19, !llvm.loop !62

19:                                               ; preds = %10, %1
  %20 = phi ptr [ %6, %1 ], [ %15, %10 ]
  %21 = phi i1 [ %7, %1 ], [ %16, %10 ]
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.UndoStack, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = icmp eq ptr %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store ptr null, ptr %23, align 8, !tbaa !42
  br label %27

27:                                               ; preds = %26, %22
  br label %28

28:                                               ; preds = %27, %28
  %29 = load ptr, ptr %2, align 8, !tbaa !57
  tail call fastcc void @undo_elem_free(ptr noundef %29) #9
  tail call void @BLI_freelinkN(ptr noundef nonnull %2, ptr noundef %29) #10
  %30 = icmp eq ptr %29, %20
  br i1 %30, label %31, label %28, !llvm.loop !63

31:                                               ; preds = %28, %19
  %32 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 47), align 2, !tbaa !64
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %57, label %34

34:                                               ; preds = %31
  %35 = sext i16 %32 to i64
  %36 = shl nsw i64 %35, 20
  %37 = load ptr, ptr %3, align 8, !tbaa !45
  %38 = icmp eq ptr %37, null
  br i1 %38, label %57, label %39

39:                                               ; preds = %34, %49
  %40 = phi ptr [ %51, %49 ], [ %37, %34 ]
  %41 = phi i64 [ %44, %49 ], [ 0, %34 ]
  %42 = getelementptr inbounds %struct.UndoElem, ptr %40, i64 0, i32 3
  %43 = load i64, ptr %42, align 8, !tbaa !60
  %44 = add i64 %43, %41
  %45 = icmp ugt i64 %44, %36
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load ptr, ptr %2, align 8, !tbaa !57
  %48 = icmp eq ptr %47, %40
  br i1 %48, label %57, label %53

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.UndoElem, ptr %40, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !45
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %39, !llvm.loop !65

53:                                               ; preds = %46, %53
  %54 = phi ptr [ %55, %53 ], [ %47, %46 ]
  tail call fastcc void @undo_elem_free(ptr noundef %54) #9
  tail call void @BLI_freelinkN(ptr noundef nonnull %2, ptr noundef %54) #10
  %55 = load ptr, ptr %2, align 8, !tbaa !57
  %56 = icmp eq ptr %55, %40
  br i1 %56, label %57, label %53, !llvm.loop !66

57:                                               ; preds = %49, %53, %34, %46, %31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_undo_paint_step(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  switch i32 %1, label %9 [
    i32 0, label %6
    i32 1, label %5
  ]

5:                                                ; preds = %4
  br label %6

6:                                                ; preds = %4, %5
  %7 = phi ptr [ @MeshUndoStack, %5 ], [ @ImageUndoStack, %4 ]
  %8 = tail call fastcc i32 @undo_stack_step(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %2, ptr noundef %3) #9, !range !67
  br label %9

9:                                                ; preds = %6, %4
  %10 = phi i32 [ 0, %4 ], [ %8, %6 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @undo_stack_step(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef readonly %3) unnamed_addr #0 !PGOFuncName !68 {
  tail call fastcc void @undo_stack_cleanup(ptr noundef %1, ptr noundef %0) #9
  switch i32 %2, label %59 [
    i32 1, label %5
    i32 -1, label %28
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.UndoStack, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %59, label %9

9:                                                ; preds = %5
  %10 = icmp eq ptr %3, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.UndoElem, ptr %7, i64 0, i32 2
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %3) #11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %59

15:                                               ; preds = %11, %9
  %16 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !69
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.UndoElem, ptr %7, i64 0, i32 2
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @__func__.undo_stack_step, ptr noundef nonnull %20) #9
  %22 = load ptr, ptr %6, align 8, !tbaa !42
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi ptr [ %22, %19 ], [ %7, %15 ]
  tail call fastcc void @undo_restore(ptr noundef %0, ptr noundef %24) #9
  %25 = load ptr, ptr %6, align 8, !tbaa !42
  %26 = getelementptr inbounds %struct.UndoElem, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !71
  store ptr %27, ptr %6, align 8, !tbaa !42
  br label %59

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.UndoStack, ptr %1, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !42
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %30, align 8, !tbaa !72
  %34 = icmp eq ptr %33, null
  br i1 %34, label %59, label %35

35:                                               ; preds = %32, %28
  %36 = getelementptr inbounds %struct.UndoStack, ptr %1, i64 0, i32 1
  %37 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %36) #9, !range !73
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %35
  %40 = icmp eq ptr %3, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.UndoElem, ptr %30, i64 0, i32 2
  %43 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) %3) #11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %41, %39
  br i1 %31, label %49, label %46

46:                                               ; preds = %45
  %47 = load ptr, ptr %30, align 8, !tbaa !72
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46, %45
  %50 = load ptr, ptr %36, align 8, !tbaa !57
  br label %51

51:                                               ; preds = %46, %49
  %52 = phi ptr [ %50, %49 ], [ %47, %46 ]
  tail call fastcc void @undo_restore(ptr noundef %0, ptr noundef %52) #9
  store ptr %52, ptr %29, align 8, !tbaa !42
  %53 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !69
  %54 = and i32 %53, 32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.UndoElem, ptr %52, i64 0, i32 2
  %58 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @__func__.undo_stack_step, ptr noundef nonnull %57) #9
  br label %59

59:                                               ; preds = %11, %5, %35, %32, %41, %4, %51, %56, %23
  %60 = phi i32 [ 1, %23 ], [ 1, %56 ], [ 1, %51 ], [ 0, %4 ], [ 0, %41 ], [ 0, %32 ], [ 0, %35 ], [ 0, %5 ], [ 0, %11 ]
  ret i32 %60
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_undo_paint_step_num(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  switch i32 %1, label %7 [
    i32 0, label %5
    i32 1, label %4
  ]

4:                                                ; preds = %3
  br label %5

5:                                                ; preds = %3, %4
  %6 = phi ptr [ @MeshUndoStack, %4 ], [ @ImageUndoStack, %3 ]
  tail call fastcc void @undo_step_num(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %2) #9
  br label %7

7:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @undo_step_num(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !74 {
  %4 = getelementptr inbounds %struct.UndoStack, ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %struct.UndoStack, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = tail call i32 @BLI_findindex(ptr noundef nonnull %4, ptr noundef %6) #10
  br label %8

8:                                                ; preds = %8, %3
  %9 = phi i32 [ 0, %3 ], [ %15, %8 ]
  %10 = phi ptr [ %4, %3 ], [ %11, %8 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  %13 = icmp eq i32 %9, %2
  %14 = select i1 %12, i1 true, i1 %13
  %15 = add nuw nsw i32 %9, 1
  br i1 %14, label %16, label %8, !llvm.loop !75

16:                                               ; preds = %8
  %17 = icmp sgt i32 %7, %9
  br i1 %17, label %18, label %23

18:                                               ; preds = %16, %18
  %19 = phi i32 [ %20, %18 ], [ %9, %16 ]
  %20 = add nuw nsw i32 %19, 1
  %21 = tail call fastcc i32 @undo_stack_step(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef null) #9, !range !67
  %22 = icmp eq i32 %20, %7
  br i1 %22, label %30, label %18, !llvm.loop !76

23:                                               ; preds = %16
  %24 = icmp slt i32 %7, %9
  br i1 %24, label %25, label %30

25:                                               ; preds = %23, %25
  %26 = phi i32 [ %27, %25 ], [ %9, %23 ]
  %27 = add nsw i32 %26, -1
  %28 = tail call fastcc i32 @undo_stack_step(ptr noundef %0, ptr noundef %1, i32 noundef -1, ptr noundef null) #9, !range !67
  %29 = icmp eq i32 %27, %7
  br i1 %29, label %30, label %25, !llvm.loop !77

30:                                               ; preds = %25, %18, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_undo_paint_get_name(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  switch i32 %1, label %9 [
    i32 0, label %6
    i32 1, label %5
  ]

5:                                                ; preds = %4
  br label %6

6:                                                ; preds = %4, %5
  %7 = phi ptr [ @MeshUndoStack, %5 ], [ @ImageUndoStack, %4 ]
  tail call fastcc void @undo_stack_cleanup(ptr noundef nonnull %7, ptr noundef %0) #9
  %8 = tail call fastcc ptr @undo_stack_get_name(ptr noundef nonnull %7, i32 noundef %2, ptr noundef %3) #9
  br label %9

9:                                                ; preds = %6, %4
  %10 = phi ptr [ null, %4 ], [ %8, %6 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @undo_stack_cleanup(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !78 {
  %3 = getelementptr inbounds %struct.UndoStack, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = icmp eq ptr %4, null
  br i1 %5, label %37, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.UndoStack, ptr %0, i64 0, i32 2
  br label %8

8:                                                ; preds = %6, %27
  %9 = phi ptr [ %4, %6 ], [ %29, %27 ]
  %10 = phi i8 [ 0, %6 ], [ %28, %27 ]
  %11 = getelementptr inbounds %struct.UndoElem, ptr %9, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.UndoElem, ptr %9, i64 0, i32 4
  %16 = tail call zeroext i8 %12(ptr noundef %1, ptr noundef nonnull %15) #10
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %9, align 8, !tbaa !72
  %20 = load ptr, ptr %7, align 8, !tbaa !42
  %21 = icmp eq ptr %20, %9
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store ptr null, ptr %7, align 8, !tbaa !42
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i8 [ 1, %22 ], [ %10, %18 ]
  tail call fastcc void @undo_elem_free(ptr noundef nonnull %9) #9
  tail call void @BLI_freelinkN(ptr noundef nonnull %3, ptr noundef nonnull %9) #10
  br label %27

25:                                               ; preds = %14, %8
  %26 = load ptr, ptr %9, align 8, !tbaa !72
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i8 [ %24, %23 ], [ %10, %25 ]
  %29 = phi ptr [ %19, %23 ], [ %26, %25 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %8, !llvm.loop !79

31:                                               ; preds = %27
  %32 = icmp eq i8 %28, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.UndoStack, ptr %0, i64 0, i32 1, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  %36 = getelementptr inbounds %struct.UndoStack, ptr %0, i64 0, i32 2
  store ptr %35, ptr %36, align 8, !tbaa !42
  br label %37

37:                                               ; preds = %2, %33, %31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @undo_stack_get_name(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) unnamed_addr #0 !PGOFuncName !80 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.UndoStack, ptr %0, i64 0, i32 1
  %7 = tail call ptr @BLI_findlink(ptr noundef nonnull %6, i32 noundef %1) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %18

9:                                                ; preds = %3
  store i32 0, ptr %2, align 4, !tbaa !81
  %10 = getelementptr inbounds %struct.UndoStack, ptr %0, i64 0, i32 1
  %11 = tail call ptr @BLI_findlink(ptr noundef nonnull %10, i32 noundef %1) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.UndoStack, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = icmp eq ptr %11, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 1, ptr %2, align 4, !tbaa !81
  br label %18

18:                                               ; preds = %5, %17, %13
  %19 = phi ptr [ %11, %17 ], [ %11, %13 ], [ %7, %5 ]
  %20 = getelementptr inbounds %struct.UndoElem, ptr %19, i64 0, i32 2
  br label %21

21:                                               ; preds = %9, %5, %18
  %22 = phi ptr [ %20, %18 ], [ null, %5 ], [ null, %9 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @ED_undo_paint_empty(i32 noundef %0) local_unnamed_addr #3 {
  switch i32 %0, label %9 [
    i32 0, label %3
    i32 1, label %2
  ]

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %1, %2
  %4 = phi ptr [ @MeshUndoStack, %2 ], [ @ImageUndoStack, %1 ]
  %5 = getelementptr inbounds %struct.UndoStack, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = icmp eq ptr %6, null
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi i8 [ 1, %1 ], [ %8, %3 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ED_undo_paint_valid(i32 noundef %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  switch i32 %0, label %22 [
    i32 0, label %4
    i32 1, label %3
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %2, %3
  %5 = phi ptr [ @MeshUndoStack, %3 ], [ @ImageUndoStack, %2 ]
  %6 = getelementptr inbounds %struct.UndoStack, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %4
  %10 = icmp eq ptr %1, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.UndoElem, ptr %7, i64 0, i32 2
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11, %9
  %16 = getelementptr inbounds %struct.UndoStack, ptr %5, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.UndoStack, ptr %5, i64 0, i32 1, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = icmp ne ptr %17, %19
  %21 = zext i1 %20 to i32
  br label %22

22:                                               ; preds = %4, %11, %2, %15
  %23 = phi i32 [ %21, %15 ], [ 0, %2 ], [ 1, %11 ], [ 0, %4 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_undo_paint_free() local_unnamed_addr #0 {
  tail call fastcc void @undo_stack_free(ptr noundef nonnull @ImageUndoStack) #9
  tail call fastcc void @undo_stack_free(ptr noundef nonnull @MeshUndoStack) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @undo_stack_free(ptr noundef %0) unnamed_addr #0 !PGOFuncName !82 {
  %2 = getelementptr inbounds %struct.UndoStack, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call fastcc void @undo_elem_free(ptr noundef nonnull %6) #9
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !83

9:                                                ; preds = %5, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #10
  %10 = getelementptr inbounds %struct.UndoStack, ptr %0, i64 0, i32 2
  store ptr null, ptr %10, align 8, !tbaa !42
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @undo_elem_free(ptr noundef %0) unnamed_addr #0 !PGOFuncName !84 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.UndoElem, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.UndoElem, ptr %0, i64 0, i32 4
  tail call void %5(ptr noundef nonnull %8) #10
  tail call void @BLI_freelistN(ptr noundef nonnull %8) #10
  br label %9

9:                                                ; preds = %7, %3, %1
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @undo_restore(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !85 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.UndoElem, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.UndoElem, ptr %1, i64 0, i32 4
  tail call void %6(ptr noundef %0, ptr noundef nonnull %9) #10
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !86 {
  %2 = load ptr, ptr %0, align 8, !tbaa !87
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!"paint_undo.c:undo_stack_push_begin"}
!35 = !{!36, !41, i64 16}
!36 = !{!"UndoStack", !37, i64 0, !40, i64 8, !41, i64 24}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"ListBase", !41, i64 0, !41, i64 8}
!41 = !{!"any pointer", !38, i64 0}
!42 = !{!36, !41, i64 24}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!41, !41, i64 0}
!46 = !{!47, !41, i64 104}
!47 = !{!"UndoElem", !41, i64 0, !41, i64 8, !38, i64 16, !48, i64 80, !40, i64 88, !41, i64 104, !41, i64 112, !41, i64 120}
!48 = !{!"long", !38, i64 0}
!49 = !{!47, !41, i64 112}
!50 = !{!47, !41, i64 120}
!51 = !{!52, !53, i64 8712}
!52 = !{!"UserDef", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !38, i64 20, !38, i64 788, !38, i64 1556, !38, i64 2580, !38, i64 3348, !38, i64 4116, !38, i64 4884, !38, i64 5652, !38, i64 6420, !38, i64 7444, !37, i64 8468, !53, i64 8472, !53, i64 8474, !53, i64 8476, !53, i64 8478, !53, i64 8480, !53, i64 8482, !37, i64 8484, !37, i64 8488, !37, i64 8492, !53, i64 8496, !53, i64 8498, !37, i64 8500, !37, i64 8504, !37, i64 8508, !37, i64 8512, !37, i64 8516, !37, i64 8520, !37, i64 8524, !53, i64 8528, !53, i64 8530, !53, i64 8532, !53, i64 8534, !40, i64 8536, !40, i64 8552, !40, i64 8568, !40, i64 8584, !40, i64 8600, !40, i64 8616, !40, i64 8632, !38, i64 8648, !53, i64 8712, !53, i64 8714, !53, i64 8716, !53, i64 8718, !53, i64 8720, !53, i64 8722, !53, i64 8724, !53, i64 8726, !38, i64 8728, !53, i64 8896, !53, i64 8898, !53, i64 8900, !53, i64 8902, !53, i64 8904, !53, i64 8906, !53, i64 8908, !53, i64 8910, !37, i64 8912, !37, i64 8916, !53, i64 8920, !53, i64 8922, !53, i64 8924, !53, i64 8926, !53, i64 8928, !53, i64 8930, !53, i64 8932, !53, i64 8934, !53, i64 8936, !53, i64 8938, !38, i64 8940, !38, i64 8941, !38, i64 8942, !38, i64 8943, !53, i64 8944, !53, i64 8946, !53, i64 8948, !53, i64 8950, !53, i64 8952, !53, i64 8954, !54, i64 8956, !54, i64 8960, !37, i64 8964, !53, i64 8968, !53, i64 8970, !54, i64 8972, !53, i64 8976, !53, i64 8978, !53, i64 8980, !53, i64 8982, !55, i64 8984, !38, i64 9760, !38, i64 9772, !53, i64 9788, !38, i64 9790, !38, i64 9791, !38, i64 9792, !38, i64 9872, !37, i64 10896, !37, i64 10900, !54, i64 10904, !54, i64 10908, !37, i64 10912, !53, i64 10916, !53, i64 10918, !53, i64 10920, !53, i64 10922, !53, i64 10924, !53, i64 10926, !56, i64 10928}
!53 = !{!"short", !38, i64 0}
!54 = !{!"float", !38, i64 0}
!55 = !{!"ColorBand", !53, i64 0, !53, i64 2, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !38, i64 8}
!56 = !{!"WalkNavigation", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !53, i64 24, !38, i64 26}
!57 = !{!36, !41, i64 8}
!58 = distinct !{!58, !44}
!59 = distinct !{!59, !44}
!60 = !{!47, !48, i64 80}
!61 = !{!"paint_undo.c:undo_stack_push_end"}
!62 = distinct !{!62, !44}
!63 = distinct !{!63, !44}
!64 = !{!52, !53, i64 8714}
!65 = distinct !{!65, !44}
!66 = distinct !{!66, !44}
!67 = !{i32 0, i32 2}
!68 = !{!"paint_undo.c:undo_stack_step"}
!69 = !{!70, !37, i64 2100}
!70 = !{!"Global", !41, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !40, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !53, i64 2084, !53, i64 2086, !53, i64 2088, !38, i64 2090, !53, i64 2092, !37, i64 2096, !37, i64 2100, !38, i64 2104, !37, i64 2108, !37, i64 2112, !38, i64 2116}
!71 = !{!47, !41, i64 8}
!72 = !{!47, !41, i64 0}
!73 = !{i8 0, i8 2}
!74 = !{!"paint_undo.c:undo_step_num"}
!75 = distinct !{!75, !44}
!76 = distinct !{!76, !44}
!77 = distinct !{!77, !44}
!78 = !{!"paint_undo.c:undo_stack_cleanup"}
!79 = distinct !{!79, !44}
!80 = !{!"paint_undo.c:undo_stack_get_name"}
!81 = !{!37, !37, i64 0}
!82 = !{!"paint_undo.c:undo_stack_free"}
!83 = distinct !{!83, !44}
!84 = !{!"paint_undo.c:undo_elem_free"}
!85 = !{!"paint_undo.c:undo_restore"}
!86 = !{!"paint_undo.c:BLI_listbase_is_empty"}
!87 = !{!40, !41, i64 0}
