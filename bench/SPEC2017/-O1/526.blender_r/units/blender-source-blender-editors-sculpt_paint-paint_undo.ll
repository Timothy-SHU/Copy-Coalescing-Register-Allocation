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

; Function Attrs: nounwind uwtable
define dso_local void @ED_undo_paint_push_begin(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  switch i32 %0, label %9 [
    i32 0, label %7
    i32 1, label %6
  ]

6:                                                ; preds = %5
  br label %7

7:                                                ; preds = %5, %6
  %8 = phi ptr [ @MeshUndoStack, %6 ], [ @ImageUndoStack, %5 ]
  tail call fastcc void @undo_stack_push_begin(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %9

9:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @undo_stack_push_begin(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.UndoStack, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.UndoStack, ptr %0, i64 0, i32 1, i32 1
  %8 = getelementptr inbounds %struct.UndoStack, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %7, align 8, !tbaa !34
  %10 = load ptr, ptr %8, align 8, !tbaa !41
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %25, label %12

12:                                               ; preds = %5, %21
  %13 = phi ptr [ %22, %21 ], [ %9, %5 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.UndoElem, ptr %13, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.UndoElem, ptr %13, i64 0, i32 4
  tail call void %17(ptr noundef nonnull %20) #8
  tail call void @BLI_freelistN(ptr noundef nonnull %20) #8
  br label %21

21:                                               ; preds = %12, %15, %19
  tail call void @BLI_freelinkN(ptr noundef nonnull %6, ptr noundef %13) #8
  %22 = load ptr, ptr %7, align 8, !tbaa !34
  %23 = load ptr, ptr %8, align 8, !tbaa !41
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %25, label %12, !llvm.loop !45

25:                                               ; preds = %21, %5
  %26 = getelementptr inbounds %struct.UndoStack, ptr %0, i64 0, i32 1, i32 1
  %27 = getelementptr inbounds %struct.UndoStack, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %29 = tail call ptr %28(i64 noundef 128, ptr noundef nonnull @.str) #8
  store ptr %29, ptr %27, align 8, !tbaa !41
  %30 = getelementptr inbounds %struct.UndoElem, ptr %29, i64 0, i32 5
  store ptr %2, ptr %30, align 8, !tbaa !49
  %31 = getelementptr inbounds %struct.UndoElem, ptr %29, i64 0, i32 6
  store ptr %3, ptr %31, align 8, !tbaa !42
  %32 = getelementptr inbounds %struct.UndoElem, ptr %29, i64 0, i32 7
  store ptr %4, ptr %32, align 8, !tbaa !50
  tail call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %29) #8
  %33 = getelementptr inbounds %struct.UndoElem, ptr %29, i64 0, i32 2
  %34 = tail call ptr @BLI_strncpy(ptr noundef nonnull %33, ptr noundef %1, i64 noundef 64) #8
  %35 = load ptr, ptr %26, align 8, !tbaa !48
  %36 = icmp eq ptr %35, null
  br i1 %36, label %64, label %37

37:                                               ; preds = %25
  %38 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 46), align 8, !tbaa !51
  %39 = sext i16 %38 to i32
  br label %40

40:                                               ; preds = %37, %48
  %41 = phi ptr [ %35, %37 ], [ %50, %48 ]
  %42 = phi i32 [ 0, %37 ], [ %43, %48 ]
  %43 = add nuw nsw i32 %42, 1
  %44 = icmp eq i32 %43, %39
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load ptr, ptr %6, align 8, !tbaa !57
  %47 = icmp eq ptr %46, %41
  br i1 %47, label %64, label %52

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.UndoElem, ptr %41, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !48
  %51 = icmp eq ptr %50, null
  br i1 %51, label %64, label %40, !llvm.loop !58

52:                                               ; preds = %45, %61
  %53 = phi ptr [ %62, %61 ], [ %46, %45 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.UndoElem, ptr %53, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !42
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.UndoElem, ptr %53, i64 0, i32 4
  tail call void %57(ptr noundef nonnull %60) #8
  tail call void @BLI_freelistN(ptr noundef nonnull %60) #8
  br label %61

61:                                               ; preds = %52, %55, %59
  tail call void @BLI_freelinkN(ptr noundef nonnull %6, ptr noundef %53) #8
  %62 = load ptr, ptr %6, align 8, !tbaa !57
  %63 = icmp eq ptr %62, %41
  br i1 %63, label %64, label %52, !llvm.loop !59

64:                                               ; preds = %48, %61, %25, %45
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @undo_paint_push_get_list(i32 noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = load ptr, ptr getelementptr inbounds (%struct.UndoStack, ptr @ImageUndoStack, i64 0, i32 2), align 8, !tbaa !41
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
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
  %7 = load ptr, ptr %5, align 8, !tbaa !41
  %8 = getelementptr inbounds %struct.UndoElem, ptr %7, i64 0, i32 3
  %9 = load i64, ptr %8, align 8, !tbaa !60
  %10 = add i64 %9, %6
  store i64 %10, ptr %8, align 8, !tbaa !60
  br label %11

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_undo_paint_push_end(i32 noundef %0) local_unnamed_addr #0 {
  switch i32 %0, label %5 [
    i32 0, label %3
    i32 1, label %2
  ]

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %1, %2
  %4 = phi ptr [ @MeshUndoStack, %2 ], [ @ImageUndoStack, %1 ]
  tail call fastcc void @undo_stack_push_end(ptr noundef nonnull %4)
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @undo_stack_push_end(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.UndoStack, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.UndoStack, ptr %0, i64 0, i32 1, i32 1
  %4 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 46), align 8
  %5 = sext i16 %4 to i32
  %6 = load ptr, ptr %3, align 8, !tbaa !48
  %7 = icmp ne ptr %6, null
  %8 = icmp sgt i16 %4, 0
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %19

10:                                               ; preds = %1, %10
  %11 = phi ptr [ %15, %10 ], [ %6, %1 ]
  %12 = phi i32 [ %13, %10 ], [ 0, %1 ]
  %13 = add nuw nsw i32 %12, 1
  %14 = getelementptr inbounds %struct.UndoElem, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = icmp ne ptr %15, null
  %17 = icmp slt i32 %13, %5
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %10, label %19, !llvm.loop !61

19:                                               ; preds = %10, %1
  %20 = phi ptr [ %6, %1 ], [ %15, %10 ]
  %21 = phi i1 [ %7, %1 ], [ %16, %10 ]
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.UndoStack, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !41
  %25 = icmp eq ptr %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store ptr null, ptr %23, align 8, !tbaa !41
  br label %27

27:                                               ; preds = %26, %22
  br label %28

28:                                               ; preds = %27, %37
  %29 = load ptr, ptr %2, align 8, !tbaa !57
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.UndoElem, ptr %29, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !42
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.UndoElem, ptr %29, i64 0, i32 4
  tail call void %33(ptr noundef nonnull %36) #8
  tail call void @BLI_freelistN(ptr noundef nonnull %36) #8
  br label %37

37:                                               ; preds = %28, %31, %35
  tail call void @BLI_freelinkN(ptr noundef nonnull %2, ptr noundef %29) #8
  %38 = icmp eq ptr %29, %20
  br i1 %38, label %39, label %28, !llvm.loop !62

39:                                               ; preds = %37, %19
  %40 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 47), align 2, !tbaa !63
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %73, label %42

42:                                               ; preds = %39
  %43 = sext i16 %40 to i64
  %44 = shl nsw i64 %43, 20
  %45 = load ptr, ptr %3, align 8, !tbaa !48
  %46 = icmp eq ptr %45, null
  br i1 %46, label %73, label %47

47:                                               ; preds = %42, %57
  %48 = phi ptr [ %59, %57 ], [ %45, %42 ]
  %49 = phi i64 [ %52, %57 ], [ 0, %42 ]
  %50 = getelementptr inbounds %struct.UndoElem, ptr %48, i64 0, i32 3
  %51 = load i64, ptr %50, align 8, !tbaa !60
  %52 = add i64 %51, %49
  %53 = icmp ugt i64 %52, %44
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load ptr, ptr %2, align 8, !tbaa !57
  %56 = icmp eq ptr %55, %48
  br i1 %56, label %73, label %61

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.UndoElem, ptr %48, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !48
  %60 = icmp eq ptr %59, null
  br i1 %60, label %73, label %47, !llvm.loop !64

61:                                               ; preds = %54, %70
  %62 = phi ptr [ %71, %70 ], [ %55, %54 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.UndoElem, ptr %62, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !42
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.UndoElem, ptr %62, i64 0, i32 4
  tail call void %66(ptr noundef nonnull %69) #8
  tail call void @BLI_freelistN(ptr noundef nonnull %69) #8
  br label %70

70:                                               ; preds = %61, %64, %68
  tail call void @BLI_freelinkN(ptr noundef nonnull %2, ptr noundef %62) #8
  %71 = load ptr, ptr %2, align 8, !tbaa !57
  %72 = icmp eq ptr %71, %48
  br i1 %72, label %73, label %61, !llvm.loop !65

73:                                               ; preds = %57, %70, %42, %54, %39
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_undo_paint_step(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  switch i32 %1, label %9 [
    i32 0, label %6
    i32 1, label %5
  ]

5:                                                ; preds = %4
  br label %6

6:                                                ; preds = %4, %5
  %7 = phi ptr [ @MeshUndoStack, %5 ], [ @ImageUndoStack, %4 ]
  %8 = tail call fastcc i32 @undo_stack_step(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %2, ptr noundef %3), !range !66
  br label %9

9:                                                ; preds = %6, %4
  %10 = phi i32 [ 0, %4 ], [ %8, %6 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @undo_stack_step(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.UndoStack, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp eq ptr %6, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.UndoStack, ptr %1, i64 0, i32 2
  br label %10

10:                                               ; preds = %34, %8
  %11 = phi ptr [ %6, %8 ], [ %36, %34 ]
  %12 = phi i8 [ 0, %8 ], [ %35, %34 ]
  %13 = getelementptr inbounds %struct.UndoElem, ptr %11, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.UndoElem, ptr %11, i64 0, i32 4
  %18 = tail call zeroext i8 %14(ptr noundef %0, ptr noundef nonnull %17) #8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %11, align 8, !tbaa !67
  %22 = load ptr, ptr %9, align 8, !tbaa !41
  %23 = icmp eq ptr %22, %11
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store ptr null, ptr %9, align 8, !tbaa !41
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i8 [ 1, %24 ], [ %12, %20 ]
  %27 = getelementptr inbounds %struct.UndoElem, ptr %11, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !42
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  tail call void %28(ptr noundef nonnull %17) #8
  tail call void @BLI_freelistN(ptr noundef nonnull %17) #8
  br label %31

31:                                               ; preds = %30, %25
  tail call void @BLI_freelinkN(ptr noundef nonnull %5, ptr noundef nonnull %11) #8
  br label %34

32:                                               ; preds = %16, %10
  %33 = load ptr, ptr %11, align 8, !tbaa !67
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi i8 [ %26, %31 ], [ %12, %32 ]
  %36 = phi ptr [ %21, %31 ], [ %33, %32 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %10, !llvm.loop !68

38:                                               ; preds = %34
  %39 = icmp eq i8 %35, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.UndoStack, ptr %1, i64 0, i32 1, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !34
  store ptr %42, ptr %9, align 8, !tbaa !41
  br label %43

43:                                               ; preds = %4, %38, %40
  switch i32 %2, label %109 [
    i32 1, label %44
    i32 -1, label %74
  ]

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.UndoStack, ptr %1, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !41
  %47 = icmp eq ptr %46, null
  br i1 %47, label %109, label %48

48:                                               ; preds = %44
  %49 = icmp eq ptr %3, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.UndoElem, ptr %46, i64 0, i32 2
  %52 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %51, ptr noundef nonnull dereferenceable(1) %3) #9
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %109

54:                                               ; preds = %50, %48
  %55 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !69
  %56 = and i32 %55, 32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.UndoElem, ptr %46, i64 0, i32 2
  %60 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @__func__.undo_stack_step, ptr noundef nonnull %59)
  br label %61

61:                                               ; preds = %58, %54
  %62 = load ptr, ptr %45, align 8, !tbaa !41
  %63 = icmp eq ptr %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.UndoElem, ptr %62, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !49
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.UndoElem, ptr %62, i64 0, i32 4
  tail call void %66(ptr noundef %0, ptr noundef nonnull %69) #8
  br label %70

70:                                               ; preds = %61, %64, %68
  %71 = load ptr, ptr %45, align 8, !tbaa !41
  %72 = getelementptr inbounds %struct.UndoElem, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !71
  store ptr %73, ptr %45, align 8, !tbaa !41
  br label %109

74:                                               ; preds = %43
  %75 = getelementptr inbounds %struct.UndoStack, ptr %1, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !41
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %76, align 8, !tbaa !67
  %80 = icmp eq ptr %79, null
  br i1 %80, label %109, label %81

81:                                               ; preds = %78, %74
  %82 = load ptr, ptr %5, align 8, !tbaa !72
  %83 = icmp eq ptr %82, null
  br i1 %83, label %109, label %84

84:                                               ; preds = %81
  %85 = icmp eq ptr %3, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.UndoElem, ptr %76, i64 0, i32 2
  %88 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %87, ptr noundef nonnull dereferenceable(1) %3) #9
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %86, %84
  br i1 %77, label %94, label %91

91:                                               ; preds = %90
  %92 = load ptr, ptr %76, align 8, !tbaa !67
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %91, %90
  br label %95

95:                                               ; preds = %94, %91
  %96 = phi ptr [ %82, %94 ], [ %92, %91 ]
  %97 = getelementptr inbounds %struct.UndoElem, ptr %96, i64 0, i32 5
  %98 = load ptr, ptr %97, align 8, !tbaa !49
  %99 = icmp eq ptr %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.UndoElem, ptr %96, i64 0, i32 4
  tail call void %98(ptr noundef %0, ptr noundef nonnull %101) #8
  br label %102

102:                                              ; preds = %95, %100
  store ptr %96, ptr %75, align 8, !tbaa !41
  %103 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !69
  %104 = and i32 %103, 32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.UndoElem, ptr %96, i64 0, i32 2
  %108 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @__func__.undo_stack_step, ptr noundef nonnull %107)
  br label %109

109:                                              ; preds = %50, %44, %81, %78, %86, %43, %102, %106, %70
  %110 = phi i32 [ 1, %70 ], [ 1, %106 ], [ 1, %102 ], [ 0, %43 ], [ 0, %86 ], [ 0, %78 ], [ 0, %81 ], [ 0, %44 ], [ 0, %50 ]
  ret i32 %110
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_undo_paint_step_num(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  switch i32 %1, label %54 [
    i32 0, label %4
    i32 1, label %29
  ]

4:                                                ; preds = %3
  %5 = load ptr, ptr getelementptr inbounds (%struct.UndoStack, ptr @ImageUndoStack, i64 0, i32 2), align 8, !tbaa !41
  %6 = tail call i32 @BLI_findindex(ptr noundef nonnull getelementptr inbounds (%struct.UndoStack, ptr @ImageUndoStack, i64 0, i32 1), ptr noundef %5) #8
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi i32 [ 0, %4 ], [ %14, %7 ]
  %9 = phi ptr [ getelementptr inbounds (%struct.UndoStack, ptr @ImageUndoStack, i64 0, i32 1), %4 ], [ %10, %7 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = icmp eq ptr %10, null
  %12 = icmp eq i32 %8, %2
  %13 = select i1 %11, i1 true, i1 %12
  %14 = add nuw nsw i32 %8, 1
  br i1 %13, label %15, label %7, !llvm.loop !73

15:                                               ; preds = %7
  %16 = icmp sgt i32 %6, %8
  br i1 %16, label %17, label %22

17:                                               ; preds = %15, %17
  %18 = phi i32 [ %19, %17 ], [ %8, %15 ]
  %19 = add nuw nsw i32 %18, 1
  %20 = tail call fastcc i32 @undo_stack_step(ptr noundef %0, ptr noundef nonnull @ImageUndoStack, i32 noundef 1, ptr noundef null), !range !66
  %21 = icmp eq i32 %19, %6
  br i1 %21, label %54, label %17, !llvm.loop !74

22:                                               ; preds = %15
  %23 = icmp slt i32 %6, %8
  br i1 %23, label %24, label %54

24:                                               ; preds = %22, %24
  %25 = phi i32 [ %26, %24 ], [ %8, %22 ]
  %26 = add nsw i32 %25, -1
  %27 = tail call fastcc i32 @undo_stack_step(ptr noundef %0, ptr noundef nonnull @ImageUndoStack, i32 noundef -1, ptr noundef null), !range !66
  %28 = icmp eq i32 %26, %6
  br i1 %28, label %54, label %24, !llvm.loop !75

29:                                               ; preds = %3
  %30 = load ptr, ptr getelementptr inbounds (%struct.UndoStack, ptr @MeshUndoStack, i64 0, i32 2), align 8, !tbaa !41
  %31 = tail call i32 @BLI_findindex(ptr noundef nonnull getelementptr inbounds (%struct.UndoStack, ptr @MeshUndoStack, i64 0, i32 1), ptr noundef %30) #8
  br label %32

32:                                               ; preds = %32, %29
  %33 = phi i32 [ 0, %29 ], [ %39, %32 ]
  %34 = phi ptr [ getelementptr inbounds (%struct.UndoStack, ptr @MeshUndoStack, i64 0, i32 1), %29 ], [ %35, %32 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !48
  %36 = icmp eq ptr %35, null
  %37 = icmp eq i32 %33, %2
  %38 = select i1 %36, i1 true, i1 %37
  %39 = add nuw nsw i32 %33, 1
  br i1 %38, label %40, label %32, !llvm.loop !73

40:                                               ; preds = %32
  %41 = icmp sgt i32 %31, %33
  br i1 %41, label %42, label %47

42:                                               ; preds = %40, %42
  %43 = phi i32 [ %44, %42 ], [ %33, %40 ]
  %44 = add nuw nsw i32 %43, 1
  %45 = tail call fastcc i32 @undo_stack_step(ptr noundef %0, ptr noundef nonnull @MeshUndoStack, i32 noundef 1, ptr noundef null), !range !66
  %46 = icmp eq i32 %44, %31
  br i1 %46, label %54, label %42, !llvm.loop !74

47:                                               ; preds = %40
  %48 = icmp slt i32 %31, %33
  br i1 %48, label %49, label %54

49:                                               ; preds = %47, %49
  %50 = phi i32 [ %51, %49 ], [ %33, %47 ]
  %51 = add nsw i32 %50, -1
  %52 = tail call fastcc i32 @undo_stack_step(ptr noundef %0, ptr noundef nonnull @MeshUndoStack, i32 noundef -1, ptr noundef null), !range !66
  %53 = icmp eq i32 %51, %31
  br i1 %53, label %54, label %49, !llvm.loop !75

54:                                               ; preds = %49, %42, %24, %17, %47, %22, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_undo_paint_get_name(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  switch i32 %1, label %101 [
    i32 0, label %5
    i32 1, label %53
  ]

5:                                                ; preds = %4
  %6 = load ptr, ptr getelementptr inbounds (%struct.UndoStack, ptr @ImageUndoStack, i64 0, i32 1), align 8, !tbaa !57
  %7 = icmp eq ptr %6, null
  br i1 %7, label %40, label %8

8:                                                ; preds = %5, %32
  %9 = phi ptr [ %34, %32 ], [ %6, %5 ]
  %10 = phi i8 [ %33, %32 ], [ 0, %5 ]
  %11 = getelementptr inbounds %struct.UndoElem, ptr %9, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.UndoElem, ptr %9, i64 0, i32 4
  %16 = tail call zeroext i8 %12(ptr noundef %0, ptr noundef nonnull %15) #8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %9, align 8, !tbaa !67
  %20 = load ptr, ptr getelementptr inbounds (%struct.UndoStack, ptr @ImageUndoStack, i64 0, i32 2), align 8, !tbaa !41
  %21 = icmp eq ptr %20, %9
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store ptr null, ptr getelementptr inbounds (%struct.UndoStack, ptr @ImageUndoStack, i64 0, i32 2), align 8, !tbaa !41
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i8 [ 1, %22 ], [ %10, %18 ]
  %25 = getelementptr inbounds %struct.UndoElem, ptr %9, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void %26(ptr noundef nonnull %15) #8
  tail call void @BLI_freelistN(ptr noundef nonnull %15) #8
  br label %29

29:                                               ; preds = %28, %23
  tail call void @BLI_freelinkN(ptr noundef nonnull getelementptr inbounds (%struct.UndoStack, ptr @ImageUndoStack, i64 0, i32 1), ptr noundef nonnull %9) #8
  br label %32

30:                                               ; preds = %14, %8
  %31 = load ptr, ptr %9, align 8, !tbaa !67
  br label %32

32:                                               ; preds = %30, %29
  %33 = phi i8 [ %24, %29 ], [ %10, %30 ]
  %34 = phi ptr [ %19, %29 ], [ %31, %30 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %8, !llvm.loop !68

36:                                               ; preds = %32
  %37 = icmp eq i8 %33, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %36
  %39 = load ptr, ptr getelementptr inbounds (%struct.UndoStack, ptr @ImageUndoStack, i64 0, i32 1, i32 1), align 8, !tbaa !34
  store ptr %39, ptr getelementptr inbounds (%struct.UndoStack, ptr @ImageUndoStack, i64 0, i32 2), align 8, !tbaa !41
  br label %40

40:                                               ; preds = %5, %36, %38
  %41 = icmp ne ptr %3, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  store i32 0, ptr %3, align 4, !tbaa !76
  br label %43

43:                                               ; preds = %42, %40
  %44 = tail call ptr @BLI_findlink(ptr noundef nonnull getelementptr inbounds (%struct.UndoStack, ptr @ImageUndoStack, i64 0, i32 1), i32 noundef %2) #8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %101, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr getelementptr inbounds (%struct.UndoStack, ptr @ImageUndoStack, i64 0, i32 2), align 8
  %48 = icmp eq ptr %44, %47
  %49 = select i1 %41, i1 %48, i1 false
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 1, ptr %3, align 4, !tbaa !76
  br label %51

51:                                               ; preds = %50, %46
  %52 = getelementptr inbounds %struct.UndoElem, ptr %44, i64 0, i32 2
  br label %101

53:                                               ; preds = %4
  %54 = load ptr, ptr getelementptr inbounds (%struct.UndoStack, ptr @MeshUndoStack, i64 0, i32 1), align 8, !tbaa !57
  %55 = icmp eq ptr %54, null
  br i1 %55, label %88, label %56

56:                                               ; preds = %53, %80
  %57 = phi ptr [ %82, %80 ], [ %54, %53 ]
  %58 = phi i8 [ %81, %80 ], [ 0, %53 ]
  %59 = getelementptr inbounds %struct.UndoElem, ptr %57, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !50
  %61 = icmp eq ptr %60, null
  br i1 %61, label %78, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.UndoElem, ptr %57, i64 0, i32 4
  %64 = tail call zeroext i8 %60(ptr noundef %0, ptr noundef nonnull %63) #8
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %57, align 8, !tbaa !67
  %68 = load ptr, ptr getelementptr inbounds (%struct.UndoStack, ptr @MeshUndoStack, i64 0, i32 2), align 8, !tbaa !41
  %69 = icmp eq ptr %68, %57
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store ptr null, ptr getelementptr inbounds (%struct.UndoStack, ptr @MeshUndoStack, i64 0, i32 2), align 8, !tbaa !41
  br label %71

71:                                               ; preds = %70, %66
  %72 = phi i8 [ 1, %70 ], [ %58, %66 ]
  %73 = getelementptr inbounds %struct.UndoElem, ptr %57, i64 0, i32 6
  %74 = load ptr, ptr %73, align 8, !tbaa !42
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  tail call void %74(ptr noundef nonnull %63) #8
  tail call void @BLI_freelistN(ptr noundef nonnull %63) #8
  br label %77

77:                                               ; preds = %76, %71
  tail call void @BLI_freelinkN(ptr noundef nonnull getelementptr inbounds (%struct.UndoStack, ptr @MeshUndoStack, i64 0, i32 1), ptr noundef nonnull %57) #8
  br label %80

78:                                               ; preds = %62, %56
  %79 = load ptr, ptr %57, align 8, !tbaa !67
  br label %80

80:                                               ; preds = %78, %77
  %81 = phi i8 [ %72, %77 ], [ %58, %78 ]
  %82 = phi ptr [ %67, %77 ], [ %79, %78 ]
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %56, !llvm.loop !68

84:                                               ; preds = %80
  %85 = icmp eq i8 %81, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %84
  %87 = load ptr, ptr getelementptr inbounds (%struct.UndoStack, ptr @MeshUndoStack, i64 0, i32 1, i32 1), align 8, !tbaa !34
  store ptr %87, ptr getelementptr inbounds (%struct.UndoStack, ptr @MeshUndoStack, i64 0, i32 2), align 8, !tbaa !41
  br label %88

88:                                               ; preds = %53, %84, %86
  %89 = icmp ne ptr %3, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %88
  store i32 0, ptr %3, align 4, !tbaa !76
  br label %91

91:                                               ; preds = %90, %88
  %92 = tail call ptr @BLI_findlink(ptr noundef nonnull getelementptr inbounds (%struct.UndoStack, ptr @MeshUndoStack, i64 0, i32 1), i32 noundef %2) #8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %101, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr getelementptr inbounds (%struct.UndoStack, ptr @MeshUndoStack, i64 0, i32 2), align 8
  %96 = icmp eq ptr %92, %95
  %97 = select i1 %89, i1 %96, i1 false
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 1, ptr %3, align 4, !tbaa !76
  br label %99

99:                                               ; preds = %98, %94
  %100 = getelementptr inbounds %struct.UndoElem, ptr %92, i64 0, i32 2
  br label %101

101:                                              ; preds = %99, %91, %51, %43, %4
  %102 = phi ptr [ null, %4 ], [ %52, %51 ], [ null, %43 ], [ %100, %99 ], [ null, %91 ]
  ret ptr %102
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
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
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = icmp eq ptr %6, null
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi i8 [ 1, %1 ], [ %8, %3 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
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
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %4
  %10 = icmp eq ptr %1, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.UndoElem, ptr %7, i64 0, i32 2
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11, %9
  %16 = getelementptr inbounds %struct.UndoStack, ptr %5, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.UndoStack, ptr %5, i64 0, i32 1, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp ne ptr %17, %19
  %21 = zext i1 %20 to i32
  br label %22

22:                                               ; preds = %4, %11, %2, %15
  %23 = phi i32 [ %21, %15 ], [ 0, %2 ], [ 1, %11 ], [ 0, %4 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @ED_undo_paint_free() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.UndoStack, ptr @ImageUndoStack, i64 0, i32 1), align 8, !tbaa !48
  %2 = icmp eq ptr %1, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %0, %10
  %4 = phi ptr [ %11, %10 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.UndoElem, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.UndoElem, ptr %4, i64 0, i32 4
  tail call void %6(ptr noundef nonnull %9) #8
  tail call void @BLI_freelistN(ptr noundef nonnull %9) #8
  br label %10

10:                                               ; preds = %8, %3
  %11 = load ptr, ptr %4, align 8, !tbaa !48
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %3, !llvm.loop !77

13:                                               ; preds = %10, %0
  tail call void @BLI_freelistN(ptr noundef nonnull getelementptr inbounds (%struct.UndoStack, ptr @ImageUndoStack, i64 0, i32 1)) #8
  store ptr null, ptr getelementptr inbounds (%struct.UndoStack, ptr @ImageUndoStack, i64 0, i32 2), align 8, !tbaa !41
  %14 = load ptr, ptr getelementptr inbounds (%struct.UndoStack, ptr @MeshUndoStack, i64 0, i32 1), align 8, !tbaa !48
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %13, %23
  %17 = phi ptr [ %24, %23 ], [ %14, %13 ]
  %18 = getelementptr inbounds %struct.UndoElem, ptr %17, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.UndoElem, ptr %17, i64 0, i32 4
  tail call void %19(ptr noundef nonnull %22) #8
  tail call void @BLI_freelistN(ptr noundef nonnull %22) #8
  br label %23

23:                                               ; preds = %21, %16
  %24 = load ptr, ptr %17, align 8, !tbaa !48
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %16, !llvm.loop !77

26:                                               ; preds = %23, %13
  tail call void @BLI_freelistN(ptr noundef nonnull getelementptr inbounds (%struct.UndoStack, ptr @MeshUndoStack, i64 0, i32 1)) #8
  store ptr null, ptr getelementptr inbounds (%struct.UndoStack, ptr @MeshUndoStack, i64 0, i32 2), align 8, !tbaa !41
  ret void
}

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !40, i64 16}
!35 = !{!"UndoStack", !36, i64 0, !39, i64 8, !40, i64 24}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !40, i64 0, !40, i64 8}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!35, !40, i64 24}
!42 = !{!43, !40, i64 112}
!43 = !{!"UndoElem", !40, i64 0, !40, i64 8, !37, i64 16, !44, i64 80, !39, i64 88, !40, i64 104, !40, i64 112, !40, i64 120}
!44 = !{!"long", !37, i64 0}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!40, !40, i64 0}
!49 = !{!43, !40, i64 104}
!50 = !{!43, !40, i64 120}
!51 = !{!52, !53, i64 8712}
!52 = !{!"UserDef", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !36, i64 8468, !53, i64 8472, !53, i64 8474, !53, i64 8476, !53, i64 8478, !53, i64 8480, !53, i64 8482, !36, i64 8484, !36, i64 8488, !36, i64 8492, !53, i64 8496, !53, i64 8498, !36, i64 8500, !36, i64 8504, !36, i64 8508, !36, i64 8512, !36, i64 8516, !36, i64 8520, !36, i64 8524, !53, i64 8528, !53, i64 8530, !53, i64 8532, !53, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !53, i64 8712, !53, i64 8714, !53, i64 8716, !53, i64 8718, !53, i64 8720, !53, i64 8722, !53, i64 8724, !53, i64 8726, !37, i64 8728, !53, i64 8896, !53, i64 8898, !53, i64 8900, !53, i64 8902, !53, i64 8904, !53, i64 8906, !53, i64 8908, !53, i64 8910, !36, i64 8912, !36, i64 8916, !53, i64 8920, !53, i64 8922, !53, i64 8924, !53, i64 8926, !53, i64 8928, !53, i64 8930, !53, i64 8932, !53, i64 8934, !53, i64 8936, !53, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !53, i64 8944, !53, i64 8946, !53, i64 8948, !53, i64 8950, !53, i64 8952, !53, i64 8954, !54, i64 8956, !54, i64 8960, !36, i64 8964, !53, i64 8968, !53, i64 8970, !54, i64 8972, !53, i64 8976, !53, i64 8978, !53, i64 8980, !53, i64 8982, !55, i64 8984, !37, i64 9760, !37, i64 9772, !53, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !36, i64 10896, !36, i64 10900, !54, i64 10904, !54, i64 10908, !36, i64 10912, !53, i64 10916, !53, i64 10918, !53, i64 10920, !53, i64 10922, !53, i64 10924, !53, i64 10926, !56, i64 10928}
!53 = !{!"short", !37, i64 0}
!54 = !{!"float", !37, i64 0}
!55 = !{!"ColorBand", !53, i64 0, !53, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!56 = !{!"WalkNavigation", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !53, i64 24, !37, i64 26}
!57 = !{!35, !40, i64 8}
!58 = distinct !{!58, !46, !47}
!59 = distinct !{!59, !46, !47}
!60 = !{!43, !44, i64 80}
!61 = distinct !{!61, !46, !47}
!62 = distinct !{!62, !46, !47}
!63 = !{!52, !53, i64 8714}
!64 = distinct !{!64, !46, !47}
!65 = distinct !{!65, !46, !47}
!66 = !{i32 0, i32 2}
!67 = !{!43, !40, i64 0}
!68 = distinct !{!68, !46, !47}
!69 = !{!70, !36, i64 2100}
!70 = !{!"Global", !40, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !53, i64 2084, !53, i64 2086, !53, i64 2088, !37, i64 2090, !53, i64 2092, !36, i64 2096, !36, i64 2100, !37, i64 2104, !36, i64 2108, !36, i64 2112, !37, i64 2116}
!71 = !{!43, !40, i64 8}
!72 = !{!39, !40, i64 0}
!73 = distinct !{!73, !46, !47}
!74 = distinct !{!74, !46, !47}
!75 = distinct !{!75, !46, !47}
!76 = !{!36, !36, i64 0}
!77 = distinct !{!77, !46, !47}
