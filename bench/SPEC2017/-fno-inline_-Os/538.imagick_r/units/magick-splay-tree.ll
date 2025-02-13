; ModuleID = 'magick/splay-tree.c'
source_filename = "magick/splay-tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._SplayTreeInfo = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i32, ptr, i64 }
%struct._NodeInfo = type { ptr, ptr, ptr, ptr }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }

@.str = private unnamed_addr constant [20 x i8] c"magick/splay-tree.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @AddValueToSplayTree(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %5) #11
  tail call fastcc void @SplaySplayTree(ptr noundef %0, ptr noundef %1) #12
  %6 = load ptr, ptr %0, align 8, !tbaa !41
  %7 = icmp eq ptr %6, null
  br i1 %7, label %49, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = icmp eq ptr %10, null
  %12 = load ptr, ptr %6, align 8, !tbaa !43
  br i1 %11, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call i32 %10(ptr noundef %12, ptr noundef %1) #11
  br label %19

15:                                               ; preds = %8
  %16 = icmp ugt ptr %12, %1
  %17 = icmp ult ptr %12, %1
  %18 = sext i1 %17 to i32
  br i1 %16, label %49, label %19

19:                                               ; preds = %15, %13
  %20 = phi i32 [ %14, %13 ], [ %18, %15 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = icmp eq ptr %24, null
  %26 = load ptr, ptr %0, align 8, !tbaa !41
  br i1 %25, label %35, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct._NodeInfo, ptr %26, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = tail call ptr %24(ptr noundef nonnull %29) #11
  %33 = load ptr, ptr %0, align 8, !tbaa !41
  %34 = getelementptr inbounds %struct._NodeInfo, ptr %33, i64 0, i32 1
  store ptr %32, ptr %34, align 8, !tbaa !46
  br label %35

35:                                               ; preds = %31, %27, %22
  %36 = phi ptr [ %33, %31 ], [ %26, %27 ], [ %26, %22 ]
  %37 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !47
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr %36, align 8, !tbaa !43
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = tail call ptr %38(ptr noundef nonnull %41) #11
  %45 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr %44, ptr %45, align 8, !tbaa !43
  br label %46

46:                                               ; preds = %43, %40, %35
  %47 = phi ptr [ %45, %43 ], [ %36, %40 ], [ %36, %35 ]
  store ptr %1, ptr %47, align 8, !tbaa !43
  %48 = getelementptr inbounds %struct._NodeInfo, ptr %47, i64 0, i32 1
  store ptr %2, ptr %48, align 8, !tbaa !46
  br label %76

49:                                               ; preds = %15, %19, %3
  %50 = phi i32 [ %20, %19 ], [ 0, %3 ], [ 1, %15 ]
  %51 = tail call dereferenceable_or_null(32) ptr @AcquireMagickMemory(i64 noundef 32) #13
  %52 = icmp eq ptr %51, null
  br i1 %52, label %76, label %53

53:                                               ; preds = %49
  store ptr %1, ptr %51, align 8, !tbaa !43
  %54 = getelementptr inbounds %struct._NodeInfo, ptr %51, i64 0, i32 1
  store ptr %2, ptr %54, align 8, !tbaa !46
  %55 = load ptr, ptr %0, align 8, !tbaa !41
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct._NodeInfo, ptr %51, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, i8 0, i64 16, i1 false)
  br label %71

59:                                               ; preds = %53
  %60 = icmp slt i32 %50, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct._NodeInfo, ptr %51, i64 0, i32 2
  store ptr %55, ptr %62, align 8, !tbaa !48
  %63 = getelementptr inbounds %struct._NodeInfo, ptr %55, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !49
  %65 = getelementptr inbounds %struct._NodeInfo, ptr %51, i64 0, i32 3
  store ptr %64, ptr %65, align 8, !tbaa !49
  store ptr null, ptr %63, align 8, !tbaa !49
  br label %71

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct._NodeInfo, ptr %51, i64 0, i32 3
  store ptr %55, ptr %67, align 8, !tbaa !49
  %68 = getelementptr inbounds %struct._NodeInfo, ptr %55, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !48
  %70 = getelementptr inbounds %struct._NodeInfo, ptr %51, i64 0, i32 2
  store ptr %69, ptr %70, align 8, !tbaa !48
  store ptr null, ptr %68, align 8, !tbaa !48
  br label %71

71:                                               ; preds = %61, %66, %57
  store ptr %51, ptr %0, align 8, !tbaa !41
  %72 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 5
  store ptr null, ptr %72, align 8, !tbaa !50
  %73 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 7
  %74 = load i64, ptr %73, align 8, !tbaa !51
  %75 = add i64 %74, 1
  store i64 %75, ptr %73, align 8, !tbaa !51
  br label %76

76:                                               ; preds = %49, %71, %46
  %77 = phi i32 [ 1, %46 ], [ 1, %71 ], [ 0, %49 ]
  %78 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %78) #11
  ret i32 %77
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @SplaySplayTree(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !52 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !41
  %5 = icmp eq ptr %4, null
  br i1 %5, label %41, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 8, !tbaa !43
  %16 = tail call i32 %12(ptr noundef %15, ptr noundef %1) #11
  br label %21

17:                                               ; preds = %10
  %18 = icmp ugt ptr %8, %1
  %19 = icmp ult ptr %8, %1
  %20 = sext i1 %19 to i32
  br i1 %18, label %24, label %21

21:                                               ; preds = %17, %14
  %22 = phi i32 [ %16, %14 ], [ %20, %17 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %17, %21, %6
  %25 = tail call fastcc ptr @Splay(ptr noundef nonnull %0, i64 noundef 0, ptr noundef %1, ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #12
  %26 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !53
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %24
  tail call fastcc void @BalanceSplayTree(ptr noundef nonnull %0) #12
  %30 = tail call fastcc ptr @Splay(ptr noundef nonnull %0, i64 noundef 0, ptr noundef %1, ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #12
  %31 = load i32, ptr %26, align 8, !tbaa !53
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #14
  call void @GetExceptionInfo(ptr noundef nonnull %3) #11
  %34 = tail call ptr @__errno_location() #15
  %35 = load i32, ptr %34, align 4, !tbaa !54
  %36 = call ptr @GetExceptionMessage(i32 noundef %35) #11
  %37 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1590, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %36) #11
  %38 = call ptr @DestroyString(ptr noundef %36) #11
  call void @CatchException(ptr noundef nonnull %3) #11
  %39 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #11
  call void @MagickCoreTerminus() #11
  call void @_exit(i32 noundef 1) #16
  unreachable

40:                                               ; preds = %29, %24
  store ptr %1, ptr %7, align 8, !tbaa !50
  br label %41

41:                                               ; preds = %21, %2, %40
  ret void
}

; Function Attrs: optsize
declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @CloneSplayTree(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !55
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 357, ptr noundef nonnull @.str.2) #11
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = tail call ptr @NewSplayTree(ptr noundef %11, ptr noundef %13, ptr noundef %15) #12
  %17 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %18) #11
  %19 = load ptr, ptr %0, align 8, !tbaa !41
  %20 = icmp eq ptr %19, null
  br i1 %20, label %46, label %21

21:                                               ; preds = %9
  %22 = tail call fastcc ptr @GetFirstSplayTreeNode(ptr noundef nonnull %0) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %21, %43
  %25 = phi ptr [ %44, %43 ], [ %22, %21 ]
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %0, ptr noundef nonnull %25) #12
  %26 = load ptr, ptr %0, align 8, !tbaa !41
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = tail call ptr %1(ptr noundef %27) #11
  %29 = load ptr, ptr %0, align 8, !tbaa !41
  %30 = getelementptr inbounds %struct._NodeInfo, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = tail call ptr %2(ptr noundef %31) #11
  %33 = tail call i32 @AddValueToSplayTree(ptr noundef %16, ptr noundef %28, ptr noundef %32) #12, !range !56
  %34 = load ptr, ptr %0, align 8, !tbaa !41
  %35 = getelementptr inbounds %struct._NodeInfo, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !49
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %24, %38
  %39 = phi ptr [ %41, %38 ], [ %36, %24 ]
  %40 = getelementptr inbounds %struct._NodeInfo, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !48
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %38, !llvm.loop !57

43:                                               ; preds = %38
  %44 = load ptr, ptr %39, align 8, !tbaa !43
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %24, !llvm.loop !59

46:                                               ; preds = %43, %24, %21, %9
  %47 = load ptr, ptr %17, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %47) #11
  ret ptr %16
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @NewSplayTree(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = tail call dereferenceable_or_null(88) ptr @AcquireMagickMemory(i64 noundef 88) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #14
  call void @GetExceptionInfo(ptr noundef nonnull %4) #11
  %8 = tail call ptr @__errno_location() #15
  %9 = load i32, ptr %8, align 4, !tbaa !54
  %10 = call ptr @GetExceptionMessage(i32 noundef %9) #11
  %11 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1107, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %10) #11
  %12 = call ptr @DestroyString(ptr noundef %10) #11
  call void @CatchException(ptr noundef nonnull %4) #11
  %13 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #11
  call void @MagickCoreTerminus() #11
  call void @_exit(i32 noundef 1) #16
  unreachable

14:                                               ; preds = %3
  %15 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %5, i32 noundef 0, i64 noundef 88) #11
  store ptr null, ptr %5, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct._SplayTreeInfo, ptr %5, i64 0, i32 1
  store ptr %0, ptr %16, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._SplayTreeInfo, ptr %5, i64 0, i32 2
  store ptr %1, ptr %17, align 8, !tbaa !47
  %18 = getelementptr inbounds %struct._SplayTreeInfo, ptr %5, i64 0, i32 3
  store ptr %2, ptr %18, align 8, !tbaa !45
  %19 = getelementptr inbounds %struct._SplayTreeInfo, ptr %5, i64 0, i32 4
  store i32 0, ptr %19, align 8, !tbaa !53
  %20 = getelementptr inbounds %struct._SplayTreeInfo, ptr %5, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  %21 = tail call i32 @IsEventLogging() #11
  %22 = getelementptr inbounds %struct._SplayTreeInfo, ptr %5, i64 0, i32 8
  store i32 %21, ptr %22, align 8, !tbaa !55
  %23 = tail call ptr @AllocateSemaphoreInfo() #11
  %24 = getelementptr inbounds %struct._SplayTreeInfo, ptr %5, i64 0, i32 9
  store ptr %23, ptr %24, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct._SplayTreeInfo, ptr %5, i64 0, i32 10
  store i64 2880220587, ptr %25, align 8, !tbaa !60
  ret ptr %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @GetFirstSplayTreeNode(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !61 {
  %2 = load ptr, ptr %0, align 8, !tbaa !41
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct._NodeInfo, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !62

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 8, !tbaa !43
  br label %11

11:                                               ; preds = %1, %9
  %12 = phi ptr [ %10, %9 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @CompareSplayTreeString(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @LocaleCompare(ptr noundef %0, ptr noundef %1) #11
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @CompareSplayTreeStringInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @CompareStringInfo(ptr noundef %0, ptr noundef %1) #11
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @CompareStringInfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @DeleteNodeByValueFromSplayTree(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !55
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 494, ptr noundef nonnull @.str.2) #11
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %10) #11
  %11 = load ptr, ptr %0, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %98, label %13

13:                                               ; preds = %8
  %14 = tail call fastcc ptr @GetFirstSplayTreeNode(ptr noundef nonnull %0) #12
  br label %15

15:                                               ; preds = %30, %13
  %16 = phi ptr [ %14, %13 ], [ %31, %30 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %98, label %18

18:                                               ; preds = %15
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %0, ptr noundef nonnull %16) #12
  %19 = load ptr, ptr %0, align 8, !tbaa !41
  %20 = getelementptr inbounds %struct._NodeInfo, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !49
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %18, %23
  %24 = phi ptr [ %26, %23 ], [ %21, %18 ]
  %25 = getelementptr inbounds %struct._NodeInfo, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %23, !llvm.loop !63

28:                                               ; preds = %23
  %29 = load ptr, ptr %24, align 8, !tbaa !43
  br label %30

30:                                               ; preds = %28, %18
  %31 = phi ptr [ %29, %28 ], [ null, %18 ]
  %32 = getelementptr inbounds %struct._NodeInfo, ptr %19, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  %34 = icmp eq ptr %33, %1
  br i1 %34, label %35, label %15, !llvm.loop !64

35:                                               ; preds = %30
  %36 = load ptr, ptr %19, align 8, !tbaa !43
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %0, ptr noundef %36) #12
  %37 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 5
  store ptr null, ptr %37, align 8, !tbaa !50
  %38 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !42
  %40 = icmp eq ptr %39, null
  %41 = load ptr, ptr %0, align 8, !tbaa !41
  %42 = load ptr, ptr %41, align 8, !tbaa !43
  br i1 %40, label %45, label %43

43:                                               ; preds = %35
  %44 = tail call i32 %39(ptr noundef %42, ptr noundef %36) #11
  br label %49

45:                                               ; preds = %35
  %46 = icmp ugt ptr %42, %36
  %47 = icmp ult ptr %42, %36
  %48 = sext i1 %47 to i32
  br i1 %46, label %98, label %49

49:                                               ; preds = %45, %43
  %50 = phi i32 [ %44, %43 ], [ %48, %45 ]
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %98

52:                                               ; preds = %49
  %53 = load ptr, ptr %0, align 8, !tbaa !41
  %54 = getelementptr inbounds %struct._NodeInfo, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !48
  %56 = getelementptr inbounds %struct._NodeInfo, ptr %53, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !49
  %58 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !45
  %60 = icmp eq ptr %59, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct._NodeInfo, ptr %53, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !46
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = tail call ptr %59(ptr noundef nonnull %63) #11
  %67 = load ptr, ptr %0, align 8, !tbaa !41
  %68 = getelementptr inbounds %struct._NodeInfo, ptr %67, i64 0, i32 1
  store ptr %66, ptr %68, align 8, !tbaa !46
  br label %69

69:                                               ; preds = %65, %61, %52
  %70 = phi ptr [ %67, %65 ], [ %53, %61 ], [ %53, %52 ]
  %71 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !47
  %73 = icmp eq ptr %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %69
  %75 = load ptr, ptr %70, align 8, !tbaa !43
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = tail call ptr %72(ptr noundef nonnull %75) #11
  %79 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr %78, ptr %79, align 8, !tbaa !43
  br label %80

80:                                               ; preds = %77, %74, %69
  %81 = phi ptr [ %79, %77 ], [ %70, %74 ], [ %70, %69 ]
  %82 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %81) #11
  %83 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 7
  %84 = load i64, ptr %83, align 8, !tbaa !51
  %85 = add i64 %84, -1
  store i64 %85, ptr %83, align 8, !tbaa !51
  %86 = icmp eq ptr %55, null
  br i1 %86, label %96, label %87

87:                                               ; preds = %80
  store ptr %55, ptr %0, align 8, !tbaa !41
  %88 = icmp eq ptr %57, null
  br i1 %88, label %98, label %89

89:                                               ; preds = %87, %89
  %90 = phi ptr [ %92, %89 ], [ %55, %87 ]
  %91 = getelementptr inbounds %struct._NodeInfo, ptr %90, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !49
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %89, !llvm.loop !65

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct._NodeInfo, ptr %90, i64 0, i32 3
  br label %96

96:                                               ; preds = %80, %94
  %97 = phi ptr [ %95, %94 ], [ %0, %80 ]
  store ptr %57, ptr %97, align 8, !tbaa !66
  br label %98

98:                                               ; preds = %15, %96, %87, %49, %45, %8
  %99 = phi i32 [ 0, %8 ], [ 0, %45 ], [ 0, %49 ], [ 1, %87 ], [ 1, %96 ], [ 0, %15 ]
  %100 = load ptr, ptr %9, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %100) #11
  ret i32 %99
}

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @DeleteNodeFromSplayTree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !55
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 614, ptr noundef nonnull @.str.2) #11
  br label %8

8:                                                ; preds = %6, %2
  %9 = load ptr, ptr %0, align 8, !tbaa !41
  %10 = icmp eq ptr %9, null
  br i1 %10, label %78, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %13) #11
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %0, ptr noundef %1) #12
  %14 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 5
  store ptr null, ptr %14, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = icmp eq ptr %16, null
  %18 = load ptr, ptr %0, align 8, !tbaa !41
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  br i1 %17, label %22, label %20

20:                                               ; preds = %11
  %21 = tail call i32 %16(ptr noundef %19, ptr noundef %1) #11
  br label %26

22:                                               ; preds = %11
  %23 = icmp ugt ptr %19, %1
  %24 = icmp ult ptr %19, %1
  %25 = sext i1 %24 to i32
  br i1 %23, label %75, label %26

26:                                               ; preds = %22, %20
  %27 = phi i32 [ %21, %20 ], [ %25, %22 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %75

29:                                               ; preds = %26
  %30 = load ptr, ptr %0, align 8, !tbaa !41
  %31 = getelementptr inbounds %struct._NodeInfo, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !48
  %33 = getelementptr inbounds %struct._NodeInfo, ptr %30, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !49
  %35 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !45
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct._NodeInfo, ptr %30, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = tail call ptr %36(ptr noundef nonnull %40) #11
  %44 = load ptr, ptr %0, align 8, !tbaa !41
  %45 = getelementptr inbounds %struct._NodeInfo, ptr %44, i64 0, i32 1
  store ptr %43, ptr %45, align 8, !tbaa !46
  br label %46

46:                                               ; preds = %42, %38, %29
  %47 = phi ptr [ %44, %42 ], [ %30, %38 ], [ %30, %29 ]
  %48 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !47
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr %47, align 8, !tbaa !43
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = tail call ptr %49(ptr noundef nonnull %52) #11
  %56 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr %55, ptr %56, align 8, !tbaa !43
  br label %57

57:                                               ; preds = %54, %51, %46
  %58 = phi ptr [ %56, %54 ], [ %47, %51 ], [ %47, %46 ]
  %59 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %58) #11
  %60 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 7
  %61 = load i64, ptr %60, align 8, !tbaa !51
  %62 = add i64 %61, -1
  store i64 %62, ptr %60, align 8, !tbaa !51
  %63 = icmp eq ptr %32, null
  br i1 %63, label %73, label %64

64:                                               ; preds = %57
  store ptr %32, ptr %0, align 8, !tbaa !41
  %65 = icmp eq ptr %34, null
  br i1 %65, label %75, label %66

66:                                               ; preds = %64, %66
  %67 = phi ptr [ %69, %66 ], [ %32, %64 ]
  %68 = getelementptr inbounds %struct._NodeInfo, ptr %67, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !49
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %66, !llvm.loop !67

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct._NodeInfo, ptr %67, i64 0, i32 3
  br label %73

73:                                               ; preds = %57, %71
  %74 = phi ptr [ %72, %71 ], [ %0, %57 ]
  store ptr %34, ptr %74, align 8, !tbaa !66
  br label %75

75:                                               ; preds = %73, %64, %26, %22
  %76 = phi i32 [ 0, %22 ], [ 0, %26 ], [ 1, %64 ], [ 1, %73 ]
  %77 = load ptr, ptr %12, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %77) #11
  br label %78

78:                                               ; preds = %75, %8
  %79 = phi i32 [ 0, %8 ], [ %76, %75 ]
  ret i32 %79
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroySplayTree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %3) #11
  %4 = load ptr, ptr %0, align 8, !tbaa !41
  %5 = icmp eq ptr %4, null
  br i1 %5, label %98, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._NodeInfo, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = tail call ptr %8(ptr noundef nonnull %12) #11
  %16 = load ptr, ptr %0, align 8, !tbaa !41
  %17 = getelementptr inbounds %struct._NodeInfo, ptr %16, i64 0, i32 1
  store ptr %15, ptr %17, align 8, !tbaa !46
  br label %18

18:                                               ; preds = %14, %10, %6
  %19 = phi ptr [ %16, %14 ], [ %4, %10 ], [ %4, %6 ]
  %20 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %19, align 8, !tbaa !43
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = tail call ptr %21(ptr noundef nonnull %24) #11
  %28 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr %27, ptr %28, align 8, !tbaa !43
  br label %29

29:                                               ; preds = %26, %23, %18
  %30 = phi ptr [ %28, %26 ], [ %19, %23 ], [ %19, %18 ]
  store ptr null, ptr %30, align 8, !tbaa !43
  br label %33

31:                                               ; preds = %90
  %32 = icmp eq ptr %91, null
  br i1 %32, label %98, label %95

33:                                               ; preds = %95, %29
  %34 = phi ptr [ null, %29 ], [ %96, %95 ]
  %35 = phi ptr [ %30, %29 ], [ %97, %95 ]
  %36 = getelementptr inbounds %struct._NodeInfo, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !48
  %38 = icmp eq ptr %37, null
  br i1 %38, label %62, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr %7, align 8, !tbaa !45
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct._NodeInfo, ptr %37, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = tail call ptr %40(ptr noundef nonnull %44) #11
  %48 = load ptr, ptr %36, align 8, !tbaa !48
  %49 = getelementptr inbounds %struct._NodeInfo, ptr %48, i64 0, i32 1
  store ptr %47, ptr %49, align 8, !tbaa !46
  br label %50

50:                                               ; preds = %46, %42, %39
  %51 = phi ptr [ %48, %46 ], [ %37, %42 ], [ %37, %39 ]
  %52 = load ptr, ptr %20, align 8, !tbaa !47
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %51, align 8, !tbaa !43
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = tail call ptr %52(ptr noundef nonnull %55) #11
  %59 = load ptr, ptr %36, align 8, !tbaa !48
  store ptr %58, ptr %59, align 8, !tbaa !43
  br label %60

60:                                               ; preds = %57, %54, %50
  %61 = phi ptr [ %59, %57 ], [ %51, %54 ], [ %51, %50 ]
  store ptr %34, ptr %61, align 8, !tbaa !43
  br label %62

62:                                               ; preds = %60, %33
  %63 = phi ptr [ %61, %60 ], [ %34, %33 ]
  %64 = getelementptr inbounds %struct._NodeInfo, ptr %35, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !49
  %66 = icmp eq ptr %65, null
  br i1 %66, label %90, label %67

67:                                               ; preds = %62
  %68 = load ptr, ptr %7, align 8, !tbaa !45
  %69 = icmp eq ptr %68, null
  br i1 %69, label %78, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct._NodeInfo, ptr %65, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !46
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = tail call ptr %68(ptr noundef nonnull %72) #11
  %76 = load ptr, ptr %64, align 8, !tbaa !49
  %77 = getelementptr inbounds %struct._NodeInfo, ptr %76, i64 0, i32 1
  store ptr %75, ptr %77, align 8, !tbaa !46
  br label %78

78:                                               ; preds = %74, %70, %67
  %79 = phi ptr [ %76, %74 ], [ %65, %70 ], [ %65, %67 ]
  %80 = load ptr, ptr %20, align 8, !tbaa !47
  %81 = icmp eq ptr %80, null
  br i1 %81, label %88, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %79, align 8, !tbaa !43
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = tail call ptr %80(ptr noundef nonnull %83) #11
  %87 = load ptr, ptr %64, align 8, !tbaa !49
  store ptr %86, ptr %87, align 8, !tbaa !43
  br label %88

88:                                               ; preds = %85, %82, %78
  %89 = phi ptr [ %87, %85 ], [ %79, %82 ], [ %79, %78 ]
  store ptr %63, ptr %89, align 8, !tbaa !43
  br label %90

90:                                               ; preds = %88, %62
  %91 = phi ptr [ %89, %88 ], [ %63, %62 ]
  %92 = load ptr, ptr %35, align 8, !tbaa !43
  %93 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %35) #11
  %94 = icmp eq ptr %92, null
  br i1 %94, label %31, label %95

95:                                               ; preds = %90, %31
  %96 = phi ptr [ %91, %90 ], [ null, %31 ]
  %97 = phi ptr [ %92, %90 ], [ %91, %31 ]
  br label %33, !llvm.loop !68

98:                                               ; preds = %31, %1
  %99 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 10
  store i64 -2880220588, ptr %99, align 8, !tbaa !60
  %100 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %100) #11
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %2) #11
  %101 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #11
  ret ptr %101
}

; Function Attrs: optsize
declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetNextKeyInSplayTree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !55
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 778, ptr noundef nonnull @.str.2) #11
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr %0, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !69
  %13 = icmp eq ptr %12, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %16) #11
  %17 = load ptr, ptr %11, align 8, !tbaa !69
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %0, ptr noundef %17) #12
  store ptr null, ptr %11, align 8, !tbaa !69
  %18 = load ptr, ptr %0, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct._NodeInfo, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %14, %22
  %23 = phi ptr [ %25, %22 ], [ %20, %14 ]
  %24 = getelementptr inbounds %struct._NodeInfo, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %22, !llvm.loop !70

27:                                               ; preds = %22
  %28 = load ptr, ptr %23, align 8, !tbaa !43
  store ptr %28, ptr %11, align 8, !tbaa !69
  br label %29

29:                                               ; preds = %27, %14
  %30 = load ptr, ptr %18, align 8, !tbaa !43
  %31 = load ptr, ptr %15, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %31) #11
  br label %32

32:                                               ; preds = %7, %10, %29
  %33 = phi ptr [ %30, %29 ], [ null, %10 ], [ null, %7 ]
  ret ptr %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetNextValueInSplayTree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !55
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 832, ptr noundef nonnull @.str.2) #11
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr %0, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  br i1 %9, label %33, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !69
  %13 = icmp eq ptr %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %16) #11
  %17 = load ptr, ptr %11, align 8, !tbaa !69
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %0, ptr noundef %17) #12
  store ptr null, ptr %11, align 8, !tbaa !69
  %18 = load ptr, ptr %0, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct._NodeInfo, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %14, %22
  %23 = phi ptr [ %25, %22 ], [ %20, %14 ]
  %24 = getelementptr inbounds %struct._NodeInfo, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %22, !llvm.loop !71

27:                                               ; preds = %22
  %28 = load ptr, ptr %23, align 8, !tbaa !43
  store ptr %28, ptr %11, align 8, !tbaa !69
  br label %29

29:                                               ; preds = %27, %14
  %30 = getelementptr inbounds %struct._NodeInfo, ptr %18, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = load ptr, ptr %15, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %32) #11
  br label %33

33:                                               ; preds = %7, %10, %29
  %34 = phi ptr [ %31, %29 ], [ null, %10 ], [ null, %7 ]
  ret ptr %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetValueFromSplayTree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !55
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 890, ptr noundef nonnull @.str.2) #11
  br label %8

8:                                                ; preds = %6, %2
  %9 = load ptr, ptr %0, align 8, !tbaa !41
  %10 = icmp eq ptr %9, null
  br i1 %10, label %35, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %13) #11
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %0, ptr noundef %1) #12
  %14 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = icmp eq ptr %15, null
  %17 = load ptr, ptr %0, align 8, !tbaa !41
  %18 = load ptr, ptr %17, align 8, !tbaa !43
  br i1 %16, label %21, label %19

19:                                               ; preds = %11
  %20 = tail call i32 %15(ptr noundef %18, ptr noundef %1) #11
  br label %25

21:                                               ; preds = %11
  %22 = icmp ugt ptr %18, %1
  %23 = icmp ult ptr %18, %1
  %24 = sext i1 %23 to i32
  br i1 %22, label %32, label %25

25:                                               ; preds = %21, %19
  %26 = phi i32 [ %20, %19 ], [ %24, %21 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load ptr, ptr %0, align 8, !tbaa !41
  %30 = getelementptr inbounds %struct._NodeInfo, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  br label %32

32:                                               ; preds = %25, %21, %28
  %33 = phi ptr [ %31, %28 ], [ null, %21 ], [ null, %25 ]
  %34 = load ptr, ptr %12, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %34) #11
  br label %35

35:                                               ; preds = %32, %8
  %36 = phi ptr [ null, %8 ], [ %33, %32 ]
  ret ptr %36
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @GetNumberOfNodesInSplayTree(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !55
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 939, ptr noundef nonnull @.str.2) #11
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 7
  %9 = load i64, ptr %8, align 8, !tbaa !51
  ret i64 %9
}

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsEventLogging() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RemoveNodeByValueFromSplayTree(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !55
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1162, ptr noundef nonnull @.str.2) #11
  br label %8

8:                                                ; preds = %6, %2
  %9 = load ptr, ptr %0, align 8, !tbaa !41
  %10 = icmp eq ptr %9, null
  br i1 %10, label %90, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %13) #11
  %14 = tail call fastcc ptr @GetFirstSplayTreeNode(ptr noundef nonnull %0) #12
  br label %15

15:                                               ; preds = %30, %11
  %16 = phi ptr [ %14, %11 ], [ %31, %30 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %87, label %18

18:                                               ; preds = %15
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %0, ptr noundef nonnull %16) #12
  %19 = load ptr, ptr %0, align 8, !tbaa !41
  %20 = getelementptr inbounds %struct._NodeInfo, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !49
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %18, %23
  %24 = phi ptr [ %26, %23 ], [ %21, %18 ]
  %25 = getelementptr inbounds %struct._NodeInfo, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %23, !llvm.loop !72

28:                                               ; preds = %23
  %29 = load ptr, ptr %24, align 8, !tbaa !43
  br label %30

30:                                               ; preds = %28, %18
  %31 = phi ptr [ %29, %28 ], [ null, %18 ]
  %32 = getelementptr inbounds %struct._NodeInfo, ptr %19, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  %34 = icmp eq ptr %33, %1
  br i1 %34, label %35, label %15, !llvm.loop !73

35:                                               ; preds = %30
  %36 = load ptr, ptr %19, align 8, !tbaa !43
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %0, ptr noundef %36) #12
  %37 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 5
  store ptr null, ptr %37, align 8, !tbaa !50
  %38 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !42
  %40 = icmp eq ptr %39, null
  %41 = load ptr, ptr %0, align 8, !tbaa !41
  %42 = load ptr, ptr %41, align 8, !tbaa !43
  br i1 %40, label %45, label %43

43:                                               ; preds = %35
  %44 = tail call i32 %39(ptr noundef %42, ptr noundef %36) #11
  br label %49

45:                                               ; preds = %35
  %46 = icmp ugt ptr %42, %36
  %47 = icmp ult ptr %42, %36
  %48 = sext i1 %47 to i32
  br i1 %46, label %87, label %49

49:                                               ; preds = %45, %43
  %50 = phi i32 [ %44, %43 ], [ %48, %45 ]
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %87

52:                                               ; preds = %49
  %53 = load ptr, ptr %0, align 8, !tbaa !41
  %54 = getelementptr inbounds %struct._NodeInfo, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !48
  %56 = getelementptr inbounds %struct._NodeInfo, ptr %53, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !49
  %58 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !45
  %60 = icmp eq ptr %59, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct._NodeInfo, ptr %53, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !46
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = tail call ptr %59(ptr noundef nonnull %63) #11
  %67 = load ptr, ptr %0, align 8, !tbaa !41
  %68 = getelementptr inbounds %struct._NodeInfo, ptr %67, i64 0, i32 1
  store ptr %66, ptr %68, align 8, !tbaa !46
  br label %69

69:                                               ; preds = %65, %61, %52
  %70 = phi ptr [ %67, %65 ], [ %53, %61 ], [ %53, %52 ]
  %71 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %70) #11
  %72 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 7
  %73 = load i64, ptr %72, align 8, !tbaa !51
  %74 = add i64 %73, -1
  store i64 %74, ptr %72, align 8, !tbaa !51
  %75 = icmp eq ptr %55, null
  br i1 %75, label %85, label %76

76:                                               ; preds = %69
  store ptr %55, ptr %0, align 8, !tbaa !41
  %77 = icmp eq ptr %57, null
  br i1 %77, label %87, label %78

78:                                               ; preds = %76, %78
  %79 = phi ptr [ %81, %78 ], [ %55, %76 ]
  %80 = getelementptr inbounds %struct._NodeInfo, ptr %79, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !49
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %78, !llvm.loop !74

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct._NodeInfo, ptr %79, i64 0, i32 3
  br label %85

85:                                               ; preds = %69, %83
  %86 = phi ptr [ %84, %83 ], [ %0, %69 ]
  store ptr %57, ptr %86, align 8, !tbaa !66
  br label %87

87:                                               ; preds = %15, %85, %76, %49, %45
  %88 = phi ptr [ %36, %45 ], [ %36, %49 ], [ %36, %76 ], [ %36, %85 ], [ null, %15 ]
  %89 = load ptr, ptr %12, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %89) #11
  br label %90

90:                                               ; preds = %87, %8
  %91 = phi ptr [ null, %8 ], [ %88, %87 ]
  ret ptr %91
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RemoveNodeFromSplayTree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !55
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1274, ptr noundef nonnull @.str.2) #11
  br label %8

8:                                                ; preds = %6, %2
  %9 = load ptr, ptr %0, align 8, !tbaa !41
  %10 = icmp eq ptr %9, null
  br i1 %10, label %67, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %13) #11
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %0, ptr noundef %1) #12
  %14 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 5
  store ptr null, ptr %14, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = icmp eq ptr %16, null
  %18 = load ptr, ptr %0, align 8, !tbaa !41
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  br i1 %17, label %22, label %20

20:                                               ; preds = %11
  %21 = tail call i32 %16(ptr noundef %19, ptr noundef %1) #11
  br label %26

22:                                               ; preds = %11
  %23 = icmp ugt ptr %19, %1
  %24 = icmp ult ptr %19, %1
  %25 = sext i1 %24 to i32
  br i1 %23, label %64, label %26

26:                                               ; preds = %22, %20
  %27 = phi i32 [ %21, %20 ], [ %25, %22 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %26
  %30 = load ptr, ptr %0, align 8, !tbaa !41
  %31 = getelementptr inbounds %struct._NodeInfo, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !48
  %33 = getelementptr inbounds %struct._NodeInfo, ptr %30, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !49
  %35 = getelementptr inbounds %struct._NodeInfo, ptr %30, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !47
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %29
  %41 = load ptr, ptr %30, align 8, !tbaa !43
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = tail call ptr %38(ptr noundef nonnull %41) #11
  %45 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr %44, ptr %45, align 8, !tbaa !43
  br label %46

46:                                               ; preds = %43, %40, %29
  %47 = phi ptr [ %45, %43 ], [ %30, %40 ], [ %30, %29 ]
  %48 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %47) #11
  %49 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 7
  %50 = load i64, ptr %49, align 8, !tbaa !51
  %51 = add i64 %50, -1
  store i64 %51, ptr %49, align 8, !tbaa !51
  %52 = icmp eq ptr %32, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %46
  store ptr %32, ptr %0, align 8, !tbaa !41
  %54 = icmp eq ptr %34, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %53, %55
  %56 = phi ptr [ %58, %55 ], [ %32, %53 ]
  %57 = getelementptr inbounds %struct._NodeInfo, ptr %56, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !49
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %55, !llvm.loop !75

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct._NodeInfo, ptr %56, i64 0, i32 3
  br label %62

62:                                               ; preds = %46, %60
  %63 = phi ptr [ %61, %60 ], [ %0, %46 ]
  store ptr %34, ptr %63, align 8, !tbaa !66
  br label %64

64:                                               ; preds = %62, %53, %26, %22
  %65 = phi ptr [ null, %22 ], [ null, %26 ], [ %36, %53 ], [ %36, %62 ]
  %66 = load ptr, ptr %12, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %66) #11
  br label %67

67:                                               ; preds = %64, %8
  %68 = phi ptr [ null, %8 ], [ %65, %64 ]
  ret ptr %68
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ResetSplayTree(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !55
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1351, ptr noundef nonnull @.str.2) #11
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %9) #11
  %10 = load ptr, ptr %0, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %104, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._NodeInfo, ptr %10, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = tail call ptr %14(ptr noundef nonnull %18) #11
  %22 = load ptr, ptr %0, align 8, !tbaa !41
  %23 = getelementptr inbounds %struct._NodeInfo, ptr %22, i64 0, i32 1
  store ptr %21, ptr %23, align 8, !tbaa !46
  br label %24

24:                                               ; preds = %20, %16, %12
  %25 = phi ptr [ %22, %20 ], [ %10, %16 ], [ %10, %12 ]
  %26 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %25, align 8, !tbaa !43
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = tail call ptr %27(ptr noundef nonnull %30) #11
  %34 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr %33, ptr %34, align 8, !tbaa !43
  br label %35

35:                                               ; preds = %32, %29, %24
  %36 = phi ptr [ %34, %32 ], [ %25, %29 ], [ %25, %24 ]
  store ptr null, ptr %36, align 8, !tbaa !43
  br label %39

37:                                               ; preds = %96
  %38 = icmp eq ptr %97, null
  br i1 %38, label %104, label %101

39:                                               ; preds = %101, %35
  %40 = phi ptr [ null, %35 ], [ %102, %101 ]
  %41 = phi ptr [ %36, %35 ], [ %103, %101 ]
  %42 = getelementptr inbounds %struct._NodeInfo, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  %44 = icmp eq ptr %43, null
  br i1 %44, label %68, label %45

45:                                               ; preds = %39
  %46 = load ptr, ptr %13, align 8, !tbaa !45
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct._NodeInfo, ptr %43, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = tail call ptr %46(ptr noundef nonnull %50) #11
  %54 = load ptr, ptr %42, align 8, !tbaa !48
  %55 = getelementptr inbounds %struct._NodeInfo, ptr %54, i64 0, i32 1
  store ptr %53, ptr %55, align 8, !tbaa !46
  br label %56

56:                                               ; preds = %52, %48, %45
  %57 = phi ptr [ %54, %52 ], [ %43, %48 ], [ %43, %45 ]
  %58 = load ptr, ptr %26, align 8, !tbaa !47
  %59 = icmp eq ptr %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %57, align 8, !tbaa !43
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = tail call ptr %58(ptr noundef nonnull %61) #11
  %65 = load ptr, ptr %42, align 8, !tbaa !48
  store ptr %64, ptr %65, align 8, !tbaa !43
  br label %66

66:                                               ; preds = %63, %60, %56
  %67 = phi ptr [ %65, %63 ], [ %57, %60 ], [ %57, %56 ]
  store ptr %40, ptr %67, align 8, !tbaa !43
  br label %68

68:                                               ; preds = %66, %39
  %69 = phi ptr [ %67, %66 ], [ %40, %39 ]
  %70 = getelementptr inbounds %struct._NodeInfo, ptr %41, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !49
  %72 = icmp eq ptr %71, null
  br i1 %72, label %96, label %73

73:                                               ; preds = %68
  %74 = load ptr, ptr %13, align 8, !tbaa !45
  %75 = icmp eq ptr %74, null
  br i1 %75, label %84, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct._NodeInfo, ptr %71, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !46
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = tail call ptr %74(ptr noundef nonnull %78) #11
  %82 = load ptr, ptr %70, align 8, !tbaa !49
  %83 = getelementptr inbounds %struct._NodeInfo, ptr %82, i64 0, i32 1
  store ptr %81, ptr %83, align 8, !tbaa !46
  br label %84

84:                                               ; preds = %80, %76, %73
  %85 = phi ptr [ %82, %80 ], [ %71, %76 ], [ %71, %73 ]
  %86 = load ptr, ptr %26, align 8, !tbaa !47
  %87 = icmp eq ptr %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %85, align 8, !tbaa !43
  %90 = icmp eq ptr %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = tail call ptr %86(ptr noundef nonnull %89) #11
  %93 = load ptr, ptr %70, align 8, !tbaa !49
  store ptr %92, ptr %93, align 8, !tbaa !43
  br label %94

94:                                               ; preds = %91, %88, %84
  %95 = phi ptr [ %93, %91 ], [ %85, %88 ], [ %85, %84 ]
  store ptr %69, ptr %95, align 8, !tbaa !43
  br label %96

96:                                               ; preds = %94, %68
  %97 = phi ptr [ %95, %94 ], [ %69, %68 ]
  %98 = load ptr, ptr %41, align 8, !tbaa !43
  %99 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %41) #11
  %100 = icmp eq ptr %98, null
  br i1 %100, label %37, label %101

101:                                              ; preds = %96, %37
  %102 = phi ptr [ %97, %96 ], [ null, %37 ]
  %103 = phi ptr [ %98, %96 ], [ %97, %37 ]
  br label %39, !llvm.loop !76

104:                                              ; preds = %37, %7
  store ptr null, ptr %0, align 8, !tbaa !41
  %105 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 5
  %106 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 4
  store i32 0, ptr %106, align 8, !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %105, i8 0, i64 24, i1 false)
  %107 = load ptr, ptr %8, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %107) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ResetSplayTreeIterator(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !55
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1436, ptr noundef nonnull @.str.2) #11
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %9) #11
  %10 = tail call fastcc ptr @GetFirstSplayTreeNode(ptr noundef nonnull %0) #12
  %11 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 6
  store ptr %10, ptr %11, align 8, !tbaa !69
  %12 = load ptr, ptr %8, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %12) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @Splay(ptr nocapture noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !77 {
  %7 = load ptr, ptr %3, align 8, !tbaa !66
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = load ptr, ptr %4, align 8, !tbaa !66
  br label %104

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = icmp eq ptr %13, null
  %15 = load ptr, ptr %7, align 8, !tbaa !43
  br i1 %14, label %18, label %16

16:                                               ; preds = %11
  %17 = tail call i32 %13(ptr noundef %15, ptr noundef %2) #11
  br label %23

18:                                               ; preds = %11
  %19 = icmp ugt ptr %15, %2
  %20 = icmp ult ptr %15, %2
  %21 = sext i1 %20 to i32
  %22 = select i1 %19, i32 1, i32 %21
  br label %23

23:                                               ; preds = %18, %16
  %24 = phi i32 [ %17, %16 ], [ %22, %18 ]
  %25 = icmp sgt i32 %24, 0
  %26 = getelementptr inbounds %struct._NodeInfo, ptr %7, i64 0, i32 2
  %27 = icmp slt i32 %24, 0
  %28 = getelementptr inbounds %struct._NodeInfo, ptr %7, i64 0, i32 3
  %29 = select i1 %27, ptr %28, ptr null
  %30 = select i1 %25, ptr %26, ptr %29
  %31 = icmp eq ptr %30, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %23
  %33 = icmp ugt i64 %1, 1023
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 4
  store i32 1, ptr %35, align 8, !tbaa !53
  br label %104

36:                                               ; preds = %32
  %37 = add nuw nsw i64 %1, 1
  %38 = tail call fastcc ptr @Splay(ptr noundef nonnull %0, i64 noundef %37, ptr noundef %2, ptr noundef nonnull %30, ptr noundef nonnull %3, ptr noundef %4) #12
  %39 = load ptr, ptr %3, align 8, !tbaa !66
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %41, label %104

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 4
  %43 = load i32, ptr %42, align 8, !tbaa !53
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %104

45:                                               ; preds = %41, %23
  %46 = phi ptr [ %38, %41 ], [ %7, %23 ]
  %47 = icmp eq ptr %4, null
  br i1 %47, label %104, label %48

48:                                               ; preds = %45
  %49 = icmp eq ptr %5, null
  %50 = load ptr, ptr %4, align 8, !tbaa !66
  %51 = getelementptr inbounds %struct._NodeInfo, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !48
  %53 = icmp eq ptr %46, %52
  br i1 %49, label %54, label %60

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct._NodeInfo, ptr %46, i64 0, i32 2
  %56 = getelementptr inbounds %struct._NodeInfo, ptr %46, i64 0, i32 3
  %57 = select i1 %53, ptr %56, ptr %55
  %58 = load ptr, ptr %57, align 8, !tbaa !66
  store ptr %58, ptr %3, align 8, !tbaa !66
  %59 = load ptr, ptr %4, align 8, !tbaa !66
  store ptr %59, ptr %57, align 8, !tbaa !66
  store ptr %46, ptr %4, align 8, !tbaa !66
  br label %104

60:                                               ; preds = %48
  br i1 %53, label %61, label %72

61:                                               ; preds = %60
  %62 = load ptr, ptr %5, align 8, !tbaa !66
  %63 = getelementptr inbounds %struct._NodeInfo, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !48
  %65 = icmp eq ptr %50, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct._NodeInfo, ptr %50, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !49
  store ptr %68, ptr %63, align 8, !tbaa !48
  %69 = load ptr, ptr %5, align 8, !tbaa !66
  store ptr %69, ptr %67, align 8, !tbaa !49
  %70 = getelementptr inbounds %struct._NodeInfo, ptr %46, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !49
  store ptr %71, ptr %51, align 8, !tbaa !48
  store ptr %50, ptr %70, align 8, !tbaa !49
  store ptr %46, ptr %5, align 8, !tbaa !66
  br label %104

72:                                               ; preds = %61, %60
  %73 = getelementptr inbounds %struct._NodeInfo, ptr %50, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !49
  %75 = icmp eq ptr %46, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = load ptr, ptr %5, align 8, !tbaa !66
  %78 = getelementptr inbounds %struct._NodeInfo, ptr %77, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !49
  %80 = icmp eq ptr %50, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  store ptr %52, ptr %78, align 8, !tbaa !49
  %82 = load ptr, ptr %5, align 8, !tbaa !66
  store ptr %82, ptr %51, align 8, !tbaa !48
  %83 = getelementptr inbounds %struct._NodeInfo, ptr %46, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !48
  store ptr %84, ptr %73, align 8, !tbaa !49
  store ptr %50, ptr %83, align 8, !tbaa !48
  store ptr %46, ptr %5, align 8, !tbaa !66
  br label %104

85:                                               ; preds = %76, %72
  br i1 %53, label %86, label %95

86:                                               ; preds = %85
  %87 = getelementptr inbounds %struct._NodeInfo, ptr %46, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !49
  store ptr %88, ptr %51, align 8, !tbaa !48
  %89 = load ptr, ptr %4, align 8, !tbaa !66
  store ptr %89, ptr %87, align 8, !tbaa !49
  %90 = getelementptr inbounds %struct._NodeInfo, ptr %46, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !48
  %92 = load ptr, ptr %5, align 8, !tbaa !66
  %93 = getelementptr inbounds %struct._NodeInfo, ptr %92, i64 0, i32 3
  store ptr %91, ptr %93, align 8, !tbaa !49
  %94 = load ptr, ptr %5, align 8, !tbaa !66
  store ptr %94, ptr %90, align 8, !tbaa !48
  store ptr %46, ptr %5, align 8, !tbaa !66
  br label %104

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct._NodeInfo, ptr %46, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !48
  store ptr %97, ptr %73, align 8, !tbaa !49
  %98 = load ptr, ptr %4, align 8, !tbaa !66
  store ptr %98, ptr %96, align 8, !tbaa !48
  %99 = getelementptr inbounds %struct._NodeInfo, ptr %46, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !49
  %101 = load ptr, ptr %5, align 8, !tbaa !66
  %102 = getelementptr inbounds %struct._NodeInfo, ptr %101, i64 0, i32 2
  store ptr %100, ptr %102, align 8, !tbaa !48
  %103 = load ptr, ptr %5, align 8, !tbaa !66
  store ptr %103, ptr %99, align 8, !tbaa !49
  store ptr %46, ptr %5, align 8, !tbaa !66
  br label %104

104:                                              ; preds = %45, %36, %41, %95, %86, %81, %66, %54, %34, %9
  %105 = phi ptr [ %10, %9 ], [ %7, %34 ], [ %46, %54 ], [ %46, %66 ], [ %46, %81 ], [ %46, %86 ], [ %46, %95 ], [ %38, %41 ], [ %38, %36 ], [ %46, %45 ]
  ret ptr %105
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BalanceSplayTree(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !78 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %4 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 7
  %5 = load i64, ptr %4, align 8, !tbaa !51
  %6 = icmp ult i64 %5, 3
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 8, !tbaa !53
  br label %25

9:                                                ; preds = %1
  %10 = tail call ptr @AcquireQuantumMemory(i64 noundef %5, i64 noundef 8) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #14
  call void @GetExceptionInfo(ptr noundef nonnull %3) #11
  %13 = tail call ptr @__errno_location() #15
  %14 = load i32, ptr %13, align 4, !tbaa !54
  %15 = call ptr @GetExceptionMessage(i32 noundef %14) #11
  %16 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 292, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %15) #11
  %17 = call ptr @DestroyString(ptr noundef %15) #11
  call void @CatchException(ptr noundef nonnull %3) #11
  %18 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #11
  call void @MagickCoreTerminus() #11
  call void @_exit(i32 noundef 1) #16
  unreachable

19:                                               ; preds = %9
  store ptr %10, ptr %2, align 8, !tbaa !66
  call fastcc void @IterateOverSplayTree(ptr noundef nonnull %0, ptr noundef nonnull %2) #12
  %20 = load i64, ptr %4, align 8, !tbaa !51
  %21 = add i64 %20, -1
  %22 = tail call fastcc ptr @LinkSplayTreeNodes(ptr noundef nonnull %10, i64 noundef 0, i64 noundef %21) #12
  store ptr %22, ptr %0, align 8, !tbaa !41
  %23 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 4
  store i32 0, ptr %23, align 8, !tbaa !53
  %24 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %10) #11
  br label %25

25:                                               ; preds = %19, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret void
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @IterateOverSplayTree(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !79 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !41
  %5 = icmp eq ptr %4, null
  br i1 %5, label %57, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 7
  %8 = load i64, ptr %7, align 8, !tbaa !51
  %9 = tail call ptr @AcquireQuantumMemory(i64 noundef %8, i64 noundef 8) #17
  %10 = load i64, ptr %7, align 8, !tbaa !51
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 1) #17
  %12 = icmp eq ptr %9, null
  %13 = icmp eq ptr %11, null
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #14
  call void @GetExceptionInfo(ptr noundef nonnull %3) #11
  %16 = tail call ptr @__errno_location() #15
  %17 = load i32, ptr %16, align 4, !tbaa !54
  %18 = call ptr @GetExceptionMessage(i32 noundef %17) #11
  %19 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1009, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %18) #11
  %20 = call ptr @DestroyString(ptr noundef %18) #11
  call void @CatchException(ptr noundef nonnull %3) #11
  %21 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #11
  call void @MagickCoreTerminus() #11
  call void @_exit(i32 noundef 1) #16
  unreachable

22:                                               ; preds = %6
  %23 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr %23, ptr %9, align 8, !tbaa !66
  br label %24

24:                                               ; preds = %22, %43
  %25 = phi ptr [ %47, %43 ], [ %11, %22 ]
  %26 = phi i64 [ %45, %43 ], [ 0, %22 ]
  store i8 0, ptr %25, align 1, !tbaa !80
  br label %27

27:                                               ; preds = %24, %51
  %28 = phi i64 [ %53, %51 ], [ %26, %24 ]
  %29 = getelementptr inbounds ptr, ptr %9, i64 %28
  %30 = getelementptr inbounds i8, ptr %11, i64 %28
  br label %31

31:                                               ; preds = %38, %27
  %32 = load ptr, ptr %29, align 8, !tbaa !66
  %33 = load i8, ptr %30, align 1, !tbaa !80
  switch i8 %33, label %48 [
    i8 0, label %34
    i8 1, label %39
    i8 3, label %51
  ]

34:                                               ; preds = %31
  store i8 2, ptr %30, align 1, !tbaa !80
  %35 = getelementptr inbounds %struct._NodeInfo, ptr %32, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !48
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %34, %39, %48
  br label %31, !llvm.loop !81

39:                                               ; preds = %31
  store i8 3, ptr %30, align 1, !tbaa !80
  %40 = getelementptr inbounds %struct._NodeInfo, ptr %32, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !49
  %42 = icmp eq ptr %41, null
  br i1 %42, label %38, label %43

43:                                               ; preds = %39, %34
  %44 = phi ptr [ %36, %34 ], [ %41, %39 ]
  %45 = add nsw i64 %28, 1
  %46 = getelementptr inbounds ptr, ptr %9, i64 %45
  store ptr %44, ptr %46, align 8, !tbaa !66
  %47 = getelementptr inbounds i8, ptr %11, i64 %45
  br label %24, !llvm.loop !81

48:                                               ; preds = %31
  store i8 1, ptr %30, align 1, !tbaa !80
  %49 = tail call fastcc i32 @SplayTreeToNodeArray(ptr noundef %32, ptr noundef %1) #12
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %38, label %54

51:                                               ; preds = %31
  %52 = icmp eq i64 %28, 0
  %53 = add i64 %28, -1
  br i1 %52, label %54, label %27, !llvm.loop !81

54:                                               ; preds = %51, %48
  %55 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %9) #11
  %56 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %11) #11
  br label %57

57:                                               ; preds = %2, %54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @SplayTreeToNodeArray(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !PGOFuncName !82 {
  %3 = load ptr, ptr %1, align 8, !tbaa !66
  store ptr %0, ptr %3, align 8, !tbaa !66
  %4 = load ptr, ptr %1, align 8, !tbaa !66
  %5 = getelementptr inbounds ptr, ptr %4, i64 1
  store ptr %5, ptr %1, align 8, !tbaa !66
  ret i32 0
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @LinkSplayTreeNodes(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #9 !PGOFuncName !83 {
  %4 = sub i64 %2, %1
  %5 = lshr i64 %4, 1
  %6 = add i64 %5, %1
  %7 = getelementptr inbounds ptr, ptr %0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = add i64 %1, 1
  %10 = icmp ugt i64 %9, %6
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = add i64 %6, -1
  %13 = tail call fastcc ptr @LinkSplayTreeNodes(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %12) #12
  br label %14

14:                                               ; preds = %3, %11
  %15 = phi ptr [ %13, %11 ], [ null, %3 ]
  %16 = getelementptr inbounds %struct._NodeInfo, ptr %8, i64 0, i32 2
  store ptr %15, ptr %16, align 8
  %17 = add i64 %6, 1
  %18 = icmp ugt i64 %17, %2
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %22
  %20 = phi ptr [ %23, %22 ], [ null, %14 ]
  %21 = getelementptr inbounds %struct._NodeInfo, ptr %8, i64 0, i32 3
  store ptr %20, ptr %21, align 8
  ret ptr %8

22:                                               ; preds = %14
  %23 = tail call fastcc ptr @LinkSplayTreeNodes(ptr noundef nonnull %0, i64 noundef %17, i64 noundef %2) #12
  br label %19
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize allocsize(0) }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize willreturn memory(none) }
attributes #16 = { noreturn nounwind optsize }
attributes #17 = { nounwind optsize allocsize(0,1) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 11498625}
!4 = !{!"MaxCount", i64 3247920}
!5 = !{!"MaxInternalCount", i64 3247920}
!6 = !{!"MaxFunctionCount", i64 51090}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3247920, i32 3}
!14 = !{i32 100000, i64 3247920, i32 3}
!15 = !{i32 200000, i64 3247920, i32 3}
!16 = !{i32 300000, i64 3247920, i32 3}
!17 = !{i32 400000, i64 3247920, i32 3}
!18 = !{i32 500000, i64 3247920, i32 3}
!19 = !{i32 600000, i64 3247920, i32 3}
!20 = !{i32 700000, i64 3247920, i32 3}
!21 = !{i32 800000, i64 3247920, i32 3}
!22 = !{i32 900000, i64 1623960, i32 4}
!23 = !{i32 950000, i64 1623960, i32 4}
!24 = !{i32 990000, i64 51090, i32 6}
!25 = !{i32 999000, i64 25545, i32 7}
!26 = !{i32 999900, i64 3120, i32 8}
!27 = !{i32 999990, i64 3120, i32 8}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 72}
!35 = !{!"_SplayTreeInfo", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !36, i64 48, !40, i64 56, !39, i64 64, !36, i64 72, !40, i64 80}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"long", !37, i64 0}
!41 = !{!35, !36, i64 0}
!42 = !{!35, !36, i64 8}
!43 = !{!44, !36, i64 0}
!44 = !{!"_NodeInfo", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!45 = !{!35, !36, i64 24}
!46 = !{!44, !36, i64 8}
!47 = !{!35, !36, i64 16}
!48 = !{!44, !36, i64 16}
!49 = !{!44, !36, i64 24}
!50 = !{!35, !36, i64 40}
!51 = !{!35, !40, i64 56}
!52 = !{!"splay-tree.c:SplaySplayTree"}
!53 = !{!35, !39, i64 32}
!54 = !{!39, !39, i64 0}
!55 = !{!35, !39, i64 64}
!56 = !{i32 0, i32 2}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.mustprogress"}
!59 = distinct !{!59, !58}
!60 = !{!35, !40, i64 80}
!61 = !{!"splay-tree.c:GetFirstSplayTreeNode"}
!62 = distinct !{!62, !58}
!63 = distinct !{!63, !58}
!64 = distinct !{!64, !58}
!65 = distinct !{!65, !58}
!66 = !{!36, !36, i64 0}
!67 = distinct !{!67, !58}
!68 = distinct !{!68, !58}
!69 = !{!35, !36, i64 48}
!70 = distinct !{!70, !58}
!71 = distinct !{!71, !58}
!72 = distinct !{!72, !58}
!73 = distinct !{!73, !58}
!74 = distinct !{!74, !58}
!75 = distinct !{!75, !58}
!76 = distinct !{!76, !58}
!77 = !{!"splay-tree.c:Splay"}
!78 = !{!"splay-tree.c:BalanceSplayTree"}
!79 = !{!"splay-tree.c:IterateOverSplayTree"}
!80 = !{!37, !37, i64 0}
!81 = distinct !{!81, !58}
!82 = !{!"splay-tree.c:SplayTreeToNodeArray"}
!83 = !{!"splay-tree.c:LinkSplayTreeNodes"}
