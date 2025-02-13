; ModuleID = 'magick/list.c'
source_filename = "magick/list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"magick/list.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @AppendImageToList(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 88, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #12
  br label %11

11:                                               ; preds = %8, %4
  %12 = load ptr, ptr %0, align 8, !tbaa !24
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store ptr %1, ptr %0, align 8, !tbaa !24
  br label %20

15:                                               ; preds = %11
  %16 = tail call ptr @GetLastImageInList(ptr noundef nonnull %12) #13
  %17 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %1) #13
  %18 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 69
  store ptr %17, ptr %18, align 8, !tbaa !25
  %19 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 67
  store ptr %16, ptr %19, align 8, !tbaa !26
  br label %20

20:                                               ; preds = %2, %15, %14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @GetLastImageInList(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %6, %3 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 69
  %6 = load ptr, ptr %5, align 8, !tbaa !25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !llvm.loop !27

8:                                                ; preds = %3, %1
  %9 = phi ptr [ null, %1 ], [ %4, %3 ]
  ret ptr %9
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @GetFirstImageInList(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %6, %3 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 67
  %6 = load ptr, ptr %5, align 8, !tbaa !26
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !llvm.loop !29

8:                                                ; preds = %3, %1
  %9 = phi ptr [ null, %1 ], [ %4, %3 ]
  ret ptr %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CloneImageList(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 67
  %7 = load ptr, ptr %6, align 8, !tbaa !26
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !30

9:                                                ; preds = %4, %23
  %10 = phi ptr [ %13, %23 ], [ null, %4 ]
  %11 = phi ptr [ %24, %23 ], [ null, %4 ]
  %12 = phi ptr [ %26, %23 ], [ %5, %4 ]
  %13 = tail call ptr @CloneImage(ptr noundef nonnull %12, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %1) #12
  %14 = icmp eq ptr %13, null
  %15 = icmp eq ptr %11, null
  br i1 %14, label %16, label %19

16:                                               ; preds = %9
  br i1 %15, label %28, label %17

17:                                               ; preds = %16
  %18 = tail call ptr @DestroyImageList(ptr noundef nonnull %11) #13
  br label %28

19:                                               ; preds = %9
  br i1 %15, label %23, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 69
  store ptr %13, ptr %21, align 8, !tbaa !25
  %22 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 67
  store ptr %10, ptr %22, align 8, !tbaa !26
  br label %23

23:                                               ; preds = %19, %20
  %24 = phi ptr [ %11, %20 ], [ %13, %19 ]
  %25 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 69
  %26 = load ptr, ptr %25, align 8, !tbaa !25
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %9, !llvm.loop !31

28:                                               ; preds = %23, %16, %17, %2
  %29 = phi ptr [ null, %2 ], [ null, %17 ], [ null, %16 ], [ %24, %23 ]
  ret ptr %29
}

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @DestroyImageList(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !24
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 449, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #12
  br label %11

11:                                               ; preds = %4, %8
  br label %12

12:                                               ; preds = %11, %12
  call void @DeleteImageFromList(ptr noundef nonnull %2) #13
  %13 = load ptr, ptr %2, align 8, !tbaa !24
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %12, !llvm.loop !32

15:                                               ; preds = %12, %1
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CloneImages(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 227, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #12
  br label %12

12:                                               ; preds = %9, %3
  store ptr null, ptr %5, align 8, !tbaa !24
  %13 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %0) #13
  %14 = tail call i64 @GetImageListLength(ptr noundef %13) #13
  %15 = load i8, ptr %1, align 1, !tbaa !33
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %86, label %17

17:                                               ; preds = %12
  %18 = tail call ptr @__ctype_b_loc() #15
  %19 = icmp eq ptr %13, null
  br label %24

20:                                               ; preds = %81, %61
  %21 = load ptr, ptr %4, align 8, !tbaa !24
  %22 = load i8, ptr %21, align 1, !tbaa !33
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %84, label %24, !llvm.loop !34

24:                                               ; preds = %17, %20
  %25 = phi ptr [ %1, %17 ], [ %21, %20 ]
  %26 = load ptr, ptr %18, align 8, !tbaa !24
  br label %27

27:                                               ; preds = %27, %24
  %28 = phi ptr [ %25, %24 ], [ %37, %27 ]
  %29 = load i8, ptr %28, align 1, !tbaa !33
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds i16, ptr %26, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !35
  %33 = and i16 %32, 8192
  %34 = icmp ne i16 %33, 0
  %35 = icmp eq i8 %29, 44
  %36 = or i1 %35, %34
  %37 = getelementptr inbounds i8, ptr %28, i64 1
  br i1 %36, label %27, label %38, !llvm.loop !36

38:                                               ; preds = %27
  store ptr %28, ptr %4, align 8, !tbaa !24
  %39 = call i64 @strtol(ptr noundef nonnull %28, ptr noundef nonnull %4, i32 noundef 10) #12
  %40 = icmp slt i64 %39, 0
  %41 = select i1 %40, i64 %14, i64 0
  %42 = load ptr, ptr %18, align 8, !tbaa !24
  %43 = load ptr, ptr %4, align 8, !tbaa !24
  br label %44

44:                                               ; preds = %44, %38
  %45 = phi ptr [ %52, %44 ], [ %43, %38 ]
  %46 = load i8, ptr %45, align 1, !tbaa !33
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds i16, ptr %42, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !35
  %50 = and i16 %49, 8192
  %51 = icmp eq i16 %50, 0
  %52 = getelementptr inbounds i8, ptr %45, i64 1
  br i1 %51, label %53, label %44, !llvm.loop !37

53:                                               ; preds = %44
  %54 = add nsw i64 %41, %39
  store ptr %45, ptr %4, align 8, !tbaa !24
  %55 = icmp eq i8 %46, 45
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = call i64 @strtol(ptr noundef nonnull %52, ptr noundef nonnull %4, i32 noundef 10) #12
  %58 = icmp slt i64 %57, 0
  %59 = select i1 %58, i64 %14, i64 0
  %60 = add nsw i64 %59, %57
  br label %61

61:                                               ; preds = %56, %53
  %62 = phi i64 [ %54, %53 ], [ %60, %56 ]
  %63 = icmp sgt i64 %54, %62
  %64 = select i1 %63, i64 -1, i64 1
  %65 = add nsw i64 %64, %62
  %66 = icmp eq i64 %54, %65
  br i1 %66, label %20, label %67

67:                                               ; preds = %61, %81
  %68 = phi i64 [ %82, %81 ], [ %54, %61 ]
  br i1 %19, label %81, label %69

69:                                               ; preds = %67, %77
  %70 = phi i64 [ %78, %77 ], [ 0, %67 ]
  %71 = phi ptr [ %79, %77 ], [ %13, %67 ]
  %72 = icmp eq i64 %70, %68
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = tail call ptr @CloneImage(ptr noundef nonnull %71, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #12
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  call void @AppendImageToList(ptr noundef nonnull %5, ptr noundef nonnull %74) #13
  br label %77

77:                                               ; preds = %76, %69
  %78 = add nuw nsw i64 %70, 1
  %79 = tail call ptr @GetNextImageInList(ptr noundef nonnull %71) #13
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %69, !llvm.loop !38

81:                                               ; preds = %73, %77, %67
  %82 = add nsw i64 %68, %64
  %83 = icmp eq i64 %68, %62
  br i1 %83, label %20, label %67, !llvm.loop !39

84:                                               ; preds = %20
  %85 = load ptr, ptr %5, align 8, !tbaa !24
  br label %86

86:                                               ; preds = %84, %12
  %87 = phi ptr [ %85, %84 ], [ null, %12 ]
  %88 = tail call ptr @GetFirstImageInList(ptr noundef %87) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret ptr %88
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @NewImageList() local_unnamed_addr #4 {
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @GetImageListLength(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 691, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #12
  br label %10

10:                                               ; preds = %7, %3
  %11 = tail call ptr @GetLastImageInList(ptr noundef nonnull %0) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %10, %13
  %14 = phi i64 [ %16, %13 ], [ 0, %10 ]
  %15 = phi ptr [ %18, %13 ], [ %11, %10 ]
  %16 = add nuw nsw i64 %14, 1
  %17 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 67
  %18 = load ptr, ptr %17, align 8, !tbaa !26
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %13, !llvm.loop !40

20:                                               ; preds = %13, %10, %1
  %21 = phi i64 [ 0, %1 ], [ 0, %10 ], [ %16, %13 ]
  ret i64 %21
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetNextImageInList(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 760, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #12
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 69
  %12 = load ptr, ptr %11, align 8, !tbaa !25
  br label %13

13:                                               ; preds = %1, %10
  %14 = phi ptr [ %12, %10 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DeleteImageFromList(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @RemoveImageFromList(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @DestroyImage(ptr noundef nonnull %2) #12
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RemoveImageFromList(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %37, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 988, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #12
  %11 = load ptr, ptr %0, align 8, !tbaa !24
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi ptr [ %11, %8 ], [ %2, %4 ]
  %14 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 67
  %15 = load ptr, ptr %14, align 8, !tbaa !26
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 69
  %18 = load ptr, ptr %17, align 8, !tbaa !25
  br i1 %16, label %19, label %23

19:                                               ; preds = %12
  %20 = icmp eq ptr %18, null
  br i1 %20, label %35, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 69
  br label %28

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 69
  store ptr %18, ptr %24, align 8, !tbaa !25
  store ptr %15, ptr %0, align 8, !tbaa !24
  %25 = load ptr, ptr %17, align 8, !tbaa !25
  %26 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 69
  %27 = icmp eq ptr %25, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %21, %23
  %29 = phi ptr [ %22, %21 ], [ %26, %23 ]
  %30 = phi ptr [ %18, %21 ], [ %25, %23 ]
  %31 = load ptr, ptr %14, align 8, !tbaa !26
  %32 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 67
  store ptr %31, ptr %32, align 8, !tbaa !26
  store ptr %30, ptr %0, align 8, !tbaa !24
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi ptr [ %29, %28 ], [ %26, %23 ]
  store ptr null, ptr %14, align 8, !tbaa !26
  br label %35

35:                                               ; preds = %19, %33
  %36 = phi ptr [ %34, %33 ], [ %0, %19 ]
  store ptr null, ptr %36, align 8, !tbaa !24
  br label %37

37:                                               ; preds = %35, %1
  %38 = phi ptr [ null, %1 ], [ %13, %35 ]
  ret ptr %38
}

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DeleteImages(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = load ptr, ptr %0, align 8, !tbaa !24
  %6 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 363, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #12
  %12 = load ptr, ptr %0, align 8, !tbaa !24
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi ptr [ %12, %9 ], [ %5, %3 ]
  %15 = tail call ptr @GetFirstImageInList(ptr noundef %14) #13
  store ptr %15, ptr %0, align 8, !tbaa !24
  %16 = tail call i64 @GetImageListLength(ptr noundef %15) #13
  %17 = tail call ptr @AcquireQuantumMemory(i64 noundef %16, i64 noundef 4) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = icmp sgt i64 %16, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %19
  %22 = shl nuw i64 %16, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %17, i8 0, i64 %22, i1 false), !tbaa !41
  br label %27

23:                                               ; preds = %13
  %24 = load ptr, ptr %0, align 8, !tbaa !24
  %25 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 53
  %26 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 373, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %25) #12
  br label %104

27:                                               ; preds = %21, %19
  %28 = load i8, ptr %1, align 1, !tbaa !33
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %86, label %30

30:                                               ; preds = %27
  %31 = tail call ptr @__ctype_b_loc() #15
  br label %32

32:                                               ; preds = %30, %72
  %33 = phi ptr [ %1, %30 ], [ %73, %72 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !24
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi ptr [ %33, %32 ], [ %45, %35 ]
  %37 = load i8, ptr %36, align 1, !tbaa !33
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds i16, ptr %34, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !35
  %41 = and i16 %40, 8192
  %42 = icmp ne i16 %41, 0
  %43 = icmp eq i8 %37, 44
  %44 = or i1 %43, %42
  %45 = getelementptr inbounds i8, ptr %36, i64 1
  br i1 %44, label %35, label %46, !llvm.loop !42

46:                                               ; preds = %35
  store ptr %36, ptr %4, align 8, !tbaa !24
  %47 = call i64 @strtol(ptr noundef nonnull %36, ptr noundef nonnull %4, i32 noundef 10) #12
  %48 = icmp slt i64 %47, 0
  %49 = select i1 %48, i64 %16, i64 0
  %50 = load ptr, ptr %31, align 8, !tbaa !24
  %51 = load ptr, ptr %4, align 8, !tbaa !24
  br label %52

52:                                               ; preds = %52, %46
  %53 = phi ptr [ %60, %52 ], [ %51, %46 ]
  %54 = load i8, ptr %53, align 1, !tbaa !33
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds i16, ptr %50, i64 %55
  %57 = load i16, ptr %56, align 2, !tbaa !35
  %58 = and i16 %57, 8192
  %59 = icmp eq i16 %58, 0
  %60 = getelementptr inbounds i8, ptr %53, i64 1
  br i1 %59, label %61, label %52, !llvm.loop !43

61:                                               ; preds = %52
  %62 = add nsw i64 %49, %47
  store ptr %53, ptr %4, align 8, !tbaa !24
  %63 = icmp eq i8 %54, 45
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = call i64 @strtol(ptr noundef nonnull %60, ptr noundef nonnull %4, i32 noundef 10) #12
  %66 = icmp slt i64 %65, 0
  %67 = select i1 %66, i64 %16, i64 0
  %68 = add nsw i64 %67, %65
  %69 = icmp sgt i64 %62, %68
  br i1 %69, label %72, label %70

70:                                               ; preds = %61, %64
  %71 = phi i64 [ %68, %64 ], [ %62, %61 ]
  br label %76

72:                                               ; preds = %83, %64
  %73 = load ptr, ptr %4, align 8, !tbaa !24
  %74 = load i8, ptr %73, align 1, !tbaa !33
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %86, label %32, !llvm.loop !44

76:                                               ; preds = %70, %83
  %77 = phi i64 [ %84, %83 ], [ %62, %70 ]
  %78 = icmp sgt i64 %77, -1
  %79 = icmp slt i64 %77, %16
  %80 = and i1 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = getelementptr inbounds i32, ptr %17, i64 %77
  store i32 1, ptr %82, align 4, !tbaa !41
  br label %83

83:                                               ; preds = %76, %81
  %84 = add i64 %77, 1
  %85 = icmp eq i64 %77, %71
  br i1 %85, label %72, label %76, !llvm.loop !45

86:                                               ; preds = %72, %27
  br i1 %20, label %87, label %100

87:                                               ; preds = %86
  %88 = load ptr, ptr %0, align 8, !tbaa !24
  br label %89

89:                                               ; preds = %87, %97
  %90 = phi ptr [ %92, %97 ], [ %88, %87 ]
  %91 = phi i64 [ %98, %97 ], [ 0, %87 ]
  store ptr %90, ptr %0, align 8, !tbaa !24
  %92 = tail call ptr @GetNextImageInList(ptr noundef %90) #13
  %93 = getelementptr inbounds i32, ptr %17, i64 %91
  %94 = load i32, ptr %93, align 4, !tbaa !41
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %89
  tail call void @DeleteImageFromList(ptr noundef nonnull %0) #13
  br label %97

97:                                               ; preds = %89, %96
  %98 = add nuw nsw i64 %91, 1
  %99 = icmp eq i64 %98, %16
  br i1 %99, label %100, label %89, !llvm.loop !46

100:                                              ; preds = %97, %86
  %101 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %17) #12
  %102 = load ptr, ptr %0, align 8, !tbaa !24
  %103 = tail call ptr @GetFirstImageInList(ptr noundef %102) #13
  store ptr %103, ptr %0, align 8, !tbaa !24
  br label %104

104:                                              ; preds = %100, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret void
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DuplicateImages(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 508, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #12
  br label %12

12:                                               ; preds = %9, %4
  store ptr null, ptr %5, align 8, !tbaa !24
  %13 = icmp sgt i64 %1, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %12, %14
  %15 = phi i64 [ %17, %14 ], [ 0, %12 ]
  %16 = tail call ptr @CloneImages(ptr noundef %0, ptr noundef %2, ptr noundef %3) #13
  call void @AppendImageToList(ptr noundef nonnull %5, ptr noundef %16) #13
  %17 = add nuw nsw i64 %15, 1
  %18 = icmp eq i64 %17, %1
  br i1 %18, label %19, label %14, !llvm.loop !47

19:                                               ; preds = %14
  %20 = load ptr, ptr %5, align 8, !tbaa !24
  br label %21

21:                                               ; preds = %19, %12
  %22 = phi ptr [ %20, %19 ], [ null, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetImageFromList(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %37, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 598, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #12
  br label %11

11:                                               ; preds = %8, %4
  %12 = icmp slt i64 %1, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %11
  %14 = tail call ptr @GetLastImageInList(ptr noundef nonnull %0) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %13, %20
  %17 = phi i64 [ %21, %20 ], [ -1, %13 ]
  %18 = phi ptr [ %23, %20 ], [ %14, %13 ]
  %19 = icmp eq i64 %17, %1
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  %21 = add nsw i64 %17, -1
  %22 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 67
  %23 = load ptr, ptr %22, align 8, !tbaa !26
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %16, !llvm.loop !48

25:                                               ; preds = %11
  %26 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %0) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %25, %32
  %29 = phi i64 [ %33, %32 ], [ 0, %25 ]
  %30 = phi ptr [ %35, %32 ], [ %26, %25 ]
  %31 = icmp eq i64 %29, %1
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = add nuw nsw i64 %29, 1
  %34 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 69
  %35 = load ptr, ptr %34, align 8, !tbaa !25
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %28, !llvm.loop !49

37:                                               ; preds = %32, %28, %20, %16, %25, %13, %2
  %38 = phi ptr [ null, %2 ], [ null, %13 ], [ null, %25 ], [ null, %20 ], [ %18, %16 ], [ null, %32 ], [ %30, %28 ]
  ret ptr %38
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @GetImageIndexInList(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %7, %3 ], [ %0, %1 ]
  %5 = phi i64 [ %9, %3 ], [ 0, %1 ]
  %6 = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 67
  %7 = load ptr, ptr %6, align 8, !tbaa !26
  %8 = icmp eq ptr %7, null
  %9 = add nuw nsw i64 %5, 1
  br i1 %8, label %10, label %3, !llvm.loop !50

10:                                               ; preds = %3, %1
  %11 = phi i64 [ -1, %1 ], [ %5, %3 ]
  ret i64 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @GetPreviousImageInList(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 67
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ImageListToArray(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %33, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 840, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #12
  br label %11

11:                                               ; preds = %8, %4
  %12 = tail call i64 @GetImageListLength(ptr noundef nonnull %0) #13
  %13 = add i64 %12, 1
  %14 = tail call ptr @AcquireQuantumMemory(i64 noundef %13, i64 noundef 8) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 845, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #12
  br label %33

19:                                               ; preds = %11
  %20 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %0) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %19, %22
  %23 = phi i64 [ %25, %22 ], [ 0, %19 ]
  %24 = phi ptr [ %28, %22 ], [ %20, %19 ]
  %25 = add nuw nsw i64 %23, 1
  %26 = getelementptr inbounds ptr, ptr %14, i64 %23
  store ptr %24, ptr %26, align 8, !tbaa !24
  %27 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 69
  %28 = load ptr, ptr %27, align 8, !tbaa !25
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %22, !llvm.loop !51

30:                                               ; preds = %22, %19
  %31 = phi i64 [ 0, %19 ], [ %25, %22 ]
  %32 = getelementptr inbounds ptr, ptr %14, i64 %31
  store ptr null, ptr %32, align 8, !tbaa !24
  br label %33

33:                                               ; preds = %2, %30, %16
  %34 = phi ptr [ null, %16 ], [ %14, %30 ], [ null, %2 ]
  ret ptr %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @InsertImageInList(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 891, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #12
  br label %9

9:                                                ; preds = %6, %2
  %10 = load ptr, ptr %0, align 8, !tbaa !24
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @SplitImageList(ptr noundef nonnull %10) #13
  tail call void @AppendImageToList(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  tail call void @AppendImageToList(ptr noundef nonnull %0, ptr noundef %13) #13
  br label %14

14:                                               ; preds = %9, %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @SplitImageList(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 69
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 67
  %9 = load ptr, ptr %8, align 8, !tbaa !26
  %10 = getelementptr inbounds %struct._Image, ptr %9, i64 0, i32 69
  store ptr null, ptr %10, align 8, !tbaa !25
  store ptr null, ptr %8, align 8, !tbaa !26
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi ptr [ %5, %7 ], [ null, %3 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PrependImageToList(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !24
  %4 = load ptr, ptr %0, align 8, !tbaa !24
  call void @AppendImageToList(ptr noundef nonnull %3, ptr noundef %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RemoveFirstImageFromList(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %33, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1047, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #12
  %11 = load ptr, ptr %0, align 8, !tbaa !24
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi ptr [ %11, %8 ], [ %2, %4 ]
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi ptr [ %13, %12 ], [ %17, %14 ]
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 67
  %17 = load ptr, ptr %16, align 8, !tbaa !26
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !llvm.loop !52

19:                                               ; preds = %14
  %20 = icmp eq ptr %15, %13
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 69
  %23 = load ptr, ptr %22, align 8, !tbaa !25
  br label %27

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 69
  %26 = load ptr, ptr %25, align 8, !tbaa !25
  store ptr %26, ptr %0, align 8, !tbaa !24
  br label %27

27:                                               ; preds = %21, %24
  %28 = phi ptr [ %23, %21 ], [ %26, %24 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 69
  %32 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 67
  store ptr null, ptr %32, align 8, !tbaa !26
  store ptr null, ptr %31, align 8, !tbaa !25
  br label %33

33:                                               ; preds = %27, %30, %1
  %34 = phi ptr [ null, %1 ], [ %15, %30 ], [ %15, %27 ]
  ret ptr %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RemoveLastImageFromList(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %33, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1098, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #12
  %11 = load ptr, ptr %0, align 8, !tbaa !24
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi ptr [ %11, %8 ], [ %2, %4 ]
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi ptr [ %13, %12 ], [ %17, %14 ]
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 69
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !llvm.loop !53

19:                                               ; preds = %14
  %20 = icmp eq ptr %15, %13
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 67
  %23 = load ptr, ptr %22, align 8, !tbaa !26
  br label %27

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 67
  %26 = load ptr, ptr %25, align 8, !tbaa !26
  store ptr %26, ptr %0, align 8, !tbaa !24
  br label %27

27:                                               ; preds = %21, %24
  %28 = phi ptr [ %23, %21 ], [ %26, %24 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 67
  %32 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 69
  store ptr null, ptr %32, align 8, !tbaa !25
  store ptr null, ptr %31, align 8, !tbaa !26
  br label %33

33:                                               ; preds = %27, %30, %1
  %34 = phi ptr [ null, %1 ], [ %15, %30 ], [ %15, %27 ]
  ret ptr %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ReplaceImageInList(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1147, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #12
  br label %9

9:                                                ; preds = %6, %2
  %10 = load ptr, ptr %0, align 8, !tbaa !24
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @GetLastImageInList(ptr noundef nonnull %1) #13
  %14 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 69
  %15 = load ptr, ptr %14, align 8, !tbaa !25
  %16 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 69
  store ptr %15, ptr %16, align 8, !tbaa !25
  %17 = icmp eq ptr %15, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 67
  store ptr %13, ptr %19, align 8, !tbaa !26
  br label %20

20:                                               ; preds = %18, %12
  %21 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %13) #13
  %22 = load ptr, ptr %0, align 8, !tbaa !24
  %23 = getelementptr inbounds %struct._Image, ptr %22, i64 0, i32 67
  %24 = load ptr, ptr %23, align 8, !tbaa !26
  %25 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 67
  store ptr %24, ptr %25, align 8, !tbaa !26
  %26 = icmp eq ptr %24, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 69
  store ptr %21, ptr %28, align 8, !tbaa !25
  br label %29

29:                                               ; preds = %27, %20
  %30 = load ptr, ptr %0, align 8, !tbaa !24
  %31 = tail call ptr @DestroyImage(ptr noundef %30) #12
  store ptr %21, ptr %0, align 8, !tbaa !24
  br label %32

32:                                               ; preds = %9, %29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ReplaceImageInListReturnLast(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1205, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #12
  br label %9

9:                                                ; preds = %6, %2
  %10 = load ptr, ptr %0, align 8, !tbaa !24
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %1) #13
  %14 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 67
  %15 = load ptr, ptr %14, align 8, !tbaa !26
  %16 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 67
  store ptr %15, ptr %16, align 8, !tbaa !26
  %17 = icmp eq ptr %15, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 69
  store ptr %13, ptr %19, align 8, !tbaa !25
  br label %20

20:                                               ; preds = %18, %12
  %21 = tail call ptr @GetLastImageInList(ptr noundef nonnull %13) #13
  %22 = load ptr, ptr %0, align 8, !tbaa !24
  %23 = getelementptr inbounds %struct._Image, ptr %22, i64 0, i32 69
  %24 = load ptr, ptr %23, align 8, !tbaa !25
  %25 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 69
  store ptr %24, ptr %25, align 8, !tbaa !25
  %26 = icmp eq ptr %24, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 67
  store ptr %21, ptr %28, align 8, !tbaa !26
  br label %29

29:                                               ; preds = %27, %20
  %30 = load ptr, ptr %0, align 8, !tbaa !24
  %31 = tail call ptr @DestroyImage(ptr noundef %30) #12
  store ptr %21, ptr %0, align 8, !tbaa !24
  br label %32

32:                                               ; preds = %9, %29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ReverseImageList(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1263, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #12
  %11 = load ptr, ptr %0, align 8, !tbaa !24
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi ptr [ %2, %4 ], [ %11, %8 ]
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi ptr [ %17, %14 ], [ %13, %12 ]
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 69
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !llvm.loop !54

19:                                               ; preds = %14
  store ptr %15, ptr %0, align 8, !tbaa !24
  br label %20

20:                                               ; preds = %19, %20
  %21 = phi ptr [ %25, %20 ], [ %15, %19 ]
  %22 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 69
  %23 = load ptr, ptr %22, align 8, !tbaa !25
  %24 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 67
  %25 = load ptr, ptr %24, align 8, !tbaa !26
  store ptr %25, ptr %22, align 8, !tbaa !25
  store ptr %23, ptr %24, align 8, !tbaa !26
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %20, !llvm.loop !55

27:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SpliceImageIntoList(ptr nocapture noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %6 = load ptr, ptr %0, align 8, !tbaa !24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %35, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 59
  %10 = load i32, ptr %9, align 8, !tbaa !5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 53
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1320, ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #12
  %15 = load ptr, ptr %0, align 8, !tbaa !24
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi ptr [ %15, %12 ], [ %6, %8 ]
  %18 = tail call ptr @SplitImageList(ptr noundef %17) #13
  store ptr %18, ptr %5, align 8, !tbaa !24
  tail call void @AppendImageToList(ptr noundef nonnull %0, ptr noundef %2) #13
  store ptr null, ptr %4, align 8, !tbaa !24
  %19 = icmp ne i64 %1, 0
  %20 = icmp ne ptr %18, null
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %32

22:                                               ; preds = %16, %22
  %23 = phi i64 [ %25, %22 ], [ 0, %16 ]
  %24 = call ptr @RemoveImageFromList(ptr noundef nonnull %5) #13
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef %24) #13
  %25 = add nuw i64 %23, 1
  %26 = icmp ult i64 %25, %1
  %27 = load ptr, ptr %5, align 8
  %28 = icmp ne ptr %27, null
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %22, label %30, !llvm.loop !56

30:                                               ; preds = %22
  %31 = load ptr, ptr %4, align 8, !tbaa !24
  br label %32

32:                                               ; preds = %30, %16
  %33 = phi ptr [ null, %16 ], [ %31, %30 ]
  %34 = phi ptr [ %18, %16 ], [ %27, %30 ]
  tail call void @AppendImageToList(ptr noundef nonnull %0, ptr noundef %34) #13
  br label %35

35:                                               ; preds = %3, %32
  %36 = phi ptr [ %33, %32 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret ptr %36
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SyncImageList(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %36, label %3

3:                                                ; preds = %1, %24
  %4 = phi ptr [ %6, %24 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 69
  %6 = load ptr, ptr %5, align 8, !tbaa !25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 39
  %10 = load i64, ptr %9, align 8, !tbaa !57
  br label %15

11:                                               ; preds = %15
  %12 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 69
  %13 = load ptr, ptr %12, align 8, !tbaa !25
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15, !llvm.loop !58

15:                                               ; preds = %8, %11
  %16 = phi ptr [ %6, %8 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 39
  %18 = load i64, ptr %17, align 8, !tbaa !57
  %19 = icmp eq i64 %10, %18
  br i1 %19, label %20, label %11

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 69
  %22 = load ptr, ptr %21, align 8, !tbaa !25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %25

24:                                               ; preds = %11
  br i1 %7, label %36, label %3, !llvm.loop !59

25:                                               ; preds = %20, %25
  %26 = phi ptr [ %34, %25 ], [ %22, %20 ]
  %27 = getelementptr inbounds %struct._Image, ptr %26, i64 0, i32 67
  %28 = load ptr, ptr %27, align 8, !tbaa !26
  %29 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 39
  %30 = load i64, ptr %29, align 8, !tbaa !57
  %31 = add i64 %30, 1
  %32 = getelementptr inbounds %struct._Image, ptr %26, i64 0, i32 39
  store i64 %31, ptr %32, align 8, !tbaa !57
  %33 = getelementptr inbounds %struct._Image, ptr %26, i64 0, i32 69
  %34 = load ptr, ptr %33, align 8, !tbaa !25
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %25, !llvm.loop !60

36:                                               ; preds = %3, %24, %25, %20, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SyncNextImageInList(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %26, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 69
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 52
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  tail call void @DestroyBlob(ptr noundef nonnull %5) #12
  %14 = load ptr, ptr %8, align 8, !tbaa !61
  %15 = tail call ptr @ReferenceBlob(ptr noundef %14) #12
  %16 = load ptr, ptr %4, align 8, !tbaa !25
  %17 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 52
  store ptr %15, ptr %17, align 8, !tbaa !61
  br label %18

18:                                               ; preds = %13, %7
  %19 = phi ptr [ %16, %13 ], [ %5, %7 ]
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !62
  %22 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 2
  store i32 %21, ptr %22, align 8, !tbaa !62
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 34
  %24 = load i32, ptr %23, align 8, !tbaa !63
  %25 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 34
  store i32 %24, ptr %25, align 8, !tbaa !63
  br label %26

26:                                               ; preds = %3, %1, %18
  %27 = phi ptr [ %19, %18 ], [ null, %1 ], [ null, %3 ]
  ret ptr %27
}

; Function Attrs: optsize
declare void @DestroyBlob(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ReferenceBlob(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize willreturn memory(none) }
attributes #16 = { nounwind optsize allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 12976}
!6 = !{!"_Image", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !11, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !14, i64 104, !15, i64 112, !7, i64 208, !11, i64 216, !7, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !10, i64 256, !14, i64 264, !14, i64 272, !17, i64 280, !17, i64 312, !17, i64 344, !14, i64 376, !14, i64 384, !14, i64 392, !7, i64 400, !7, i64 404, !7, i64 408, !7, i64 412, !7, i64 416, !7, i64 420, !11, i64 424, !10, i64 432, !10, i64 440, !10, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !18, i64 480, !19, i64 504, !11, i64 568, !11, i64 576, !11, i64 584, !11, i64 592, !11, i64 600, !11, i64 608, !8, i64 616, !8, i64 4712, !8, i64 8808, !10, i64 12904, !10, i64 12912, !21, i64 12920, !7, i64 12976, !10, i64 12984, !11, i64 12992, !22, i64 13000, !22, i64 13032, !11, i64 13064, !10, i64 13072, !10, i64 13080, !11, i64 13088, !11, i64 13096, !11, i64 13104, !7, i64 13112, !7, i64 13116, !12, i64 13120, !11, i64 13128, !17, i64 13136, !11, i64 13168, !11, i64 13176, !7, i64 13184, !7, i64 13188, !23, i64 13192, !7, i64 13200, !10, i64 13208, !10, i64 13216, !7, i64 13224, !10, i64 13232}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"_PixelPacket", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6}
!13 = !{!"short", !8, i64 0}
!14 = !{!"double", !8, i64 0}
!15 = !{!"_ChromaticityInfo", !16, i64 0, !16, i64 24, !16, i64 48, !16, i64 72}
!16 = !{!"_PrimaryInfo", !14, i64 0, !14, i64 8, !14, i64 16}
!17 = !{!"_RectangleInfo", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!18 = !{!"_ErrorInfo", !14, i64 0, !14, i64 8, !14, i64 16}
!19 = !{!"_TimerInfo", !20, i64 0, !20, i64 24, !7, i64 48, !10, i64 56}
!20 = !{!"_Timer", !14, i64 0, !14, i64 8, !14, i64 16}
!21 = !{!"_ExceptionInfo", !7, i64 0, !7, i64 4, !11, i64 8, !11, i64 16, !11, i64 24, !7, i64 32, !11, i64 40, !10, i64 48}
!22 = !{!"_ProfileInfo", !11, i64 0, !10, i64 8, !11, i64 16, !10, i64 24}
!23 = !{!"long long", !8, i64 0}
!24 = !{!11, !11, i64 0}
!25 = !{!6, !11, i64 13104}
!26 = !{!6, !11, i64 13088}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !28}
!32 = distinct !{!32, !28}
!33 = !{!8, !8, i64 0}
!34 = distinct !{!34, !28}
!35 = !{!13, !13, i64 0}
!36 = distinct !{!36, !28}
!37 = distinct !{!37, !28}
!38 = distinct !{!38, !28}
!39 = distinct !{!39, !28}
!40 = distinct !{!40, !28}
!41 = !{!7, !7, i64 0}
!42 = distinct !{!42, !28}
!43 = distinct !{!43, !28}
!44 = distinct !{!44, !28}
!45 = distinct !{!45, !28}
!46 = distinct !{!46, !28}
!47 = distinct !{!47, !28}
!48 = distinct !{!48, !28}
!49 = distinct !{!49, !28}
!50 = distinct !{!50, !28}
!51 = distinct !{!51, !28}
!52 = distinct !{!52, !28}
!53 = distinct !{!53, !28}
!54 = distinct !{!54, !28}
!55 = distinct !{!55, !28}
!56 = distinct !{!56, !28}
!57 = !{!6, !10, i64 432}
!58 = distinct !{!58, !28}
!59 = distinct !{!59, !28}
!60 = distinct !{!60, !28}
!61 = !{!6, !11, i64 608}
!62 = !{!6, !7, i64 8}
!63 = !{!6, !7, i64 408}
