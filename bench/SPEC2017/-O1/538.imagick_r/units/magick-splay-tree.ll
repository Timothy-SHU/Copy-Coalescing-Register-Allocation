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

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @AddValueToSplayTree(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %5) #11
  tail call fastcc void @SplaySplayTree(ptr noundef %0, ptr noundef %1)
  %6 = load ptr, ptr %0, align 8, !tbaa !41
  %7 = icmp eq ptr %6, null
  br i1 %7, label %50, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = icmp eq ptr %10, null
  %12 = load ptr, ptr %6, align 8, !tbaa !43
  br i1 %11, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call i32 %10(ptr noundef %12, ptr noundef %1) #11
  br label %20

15:                                               ; preds = %8
  %16 = icmp ugt ptr %12, %1
  %17 = icmp ult ptr %12, %1
  %18 = sext i1 %17 to i32
  %19 = select i1 %16, i32 1, i32 %18
  br label %20

20:                                               ; preds = %15, %13
  %21 = phi i32 [ %14, %13 ], [ %19, %15 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !45
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %0, align 8, !tbaa !41
  %29 = getelementptr inbounds %struct._NodeInfo, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = tail call ptr %25(ptr noundef nonnull %30) #11
  %34 = load ptr, ptr %0, align 8, !tbaa !41
  %35 = getelementptr inbounds %struct._NodeInfo, ptr %34, i64 0, i32 1
  store ptr %33, ptr %35, align 8, !tbaa !46
  br label %36

36:                                               ; preds = %32, %27, %23
  %37 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !47
  %39 = icmp eq ptr %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %0, align 8, !tbaa !41
  %42 = load ptr, ptr %41, align 8, !tbaa !43
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = tail call ptr %38(ptr noundef nonnull %42) #11
  %46 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr %45, ptr %46, align 8, !tbaa !43
  br label %47

47:                                               ; preds = %44, %40, %36
  %48 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr %1, ptr %48, align 8, !tbaa !43
  %49 = getelementptr inbounds %struct._NodeInfo, ptr %48, i64 0, i32 1
  store ptr %2, ptr %49, align 8, !tbaa !46
  br label %77

50:                                               ; preds = %20, %3
  %51 = phi i32 [ %21, %20 ], [ 0, %3 ]
  %52 = tail call dereferenceable_or_null(32) ptr @AcquireMagickMemory(i64 noundef 32) #12
  %53 = icmp eq ptr %52, null
  br i1 %53, label %77, label %54

54:                                               ; preds = %50
  store ptr %1, ptr %52, align 8, !tbaa !43
  %55 = getelementptr inbounds %struct._NodeInfo, ptr %52, i64 0, i32 1
  store ptr %2, ptr %55, align 8, !tbaa !46
  %56 = load ptr, ptr %0, align 8, !tbaa !41
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct._NodeInfo, ptr %52, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %59, i8 0, i64 16, i1 false)
  br label %72

60:                                               ; preds = %54
  %61 = icmp slt i32 %51, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct._NodeInfo, ptr %52, i64 0, i32 2
  store ptr %56, ptr %63, align 8, !tbaa !48
  %64 = getelementptr inbounds %struct._NodeInfo, ptr %56, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !49
  %66 = getelementptr inbounds %struct._NodeInfo, ptr %52, i64 0, i32 3
  store ptr %65, ptr %66, align 8, !tbaa !49
  store ptr null, ptr %64, align 8, !tbaa !49
  br label %72

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct._NodeInfo, ptr %52, i64 0, i32 3
  store ptr %56, ptr %68, align 8, !tbaa !49
  %69 = getelementptr inbounds %struct._NodeInfo, ptr %56, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !48
  %71 = getelementptr inbounds %struct._NodeInfo, ptr %52, i64 0, i32 2
  store ptr %70, ptr %71, align 8, !tbaa !48
  store ptr null, ptr %69, align 8, !tbaa !48
  br label %72

72:                                               ; preds = %62, %67, %58
  store ptr %52, ptr %0, align 8, !tbaa !41
  %73 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 5
  store ptr null, ptr %73, align 8, !tbaa !50
  %74 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 7
  %75 = load i64, ptr %74, align 8, !tbaa !51
  %76 = add i64 %75, 1
  store i64 %76, ptr %74, align 8, !tbaa !51
  br label %77

77:                                               ; preds = %50, %72, %47
  %78 = phi i32 [ 1, %47 ], [ 1, %72 ], [ 0, %50 ]
  %79 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %79) #11
  ret i32 %78
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @SplaySplayTree(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !41
  %7 = icmp eq ptr %6, null
  br i1 %7, label %121, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %6, align 8, !tbaa !43
  %18 = tail call i32 %14(ptr noundef %17, ptr noundef %1) #11
  br label %24

19:                                               ; preds = %12
  %20 = icmp ugt ptr %10, %1
  %21 = icmp ult ptr %10, %1
  %22 = sext i1 %21 to i32
  %23 = select i1 %20, i32 1, i32 %22
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i32 [ %18, %16 ], [ %23, %19 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %121, label %27

27:                                               ; preds = %24, %8
  %28 = tail call fastcc ptr @Splay(ptr noundef nonnull %0, i64 noundef 0, ptr noundef %1, ptr noundef nonnull %0, ptr noundef null, ptr noundef null)
  %29 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !52
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %120, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 7
  %34 = load i64, ptr %33, align 8, !tbaa !51
  %35 = icmp ult i64 %34, 3
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, ptr %29, align 8, !tbaa !52
  br label %109

37:                                               ; preds = %32
  %38 = tail call ptr @AcquireQuantumMemory(i64 noundef %34, i64 noundef 8) #13
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #11
  call void @GetExceptionInfo(ptr noundef nonnull %4) #11
  %41 = tail call ptr @__errno_location() #14
  %42 = load i32, ptr %41, align 4, !tbaa !53
  %43 = call ptr @GetExceptionMessage(i32 noundef %42) #11
  %44 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 292, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %43) #11
  %45 = call ptr @DestroyString(ptr noundef %43) #11
  call void @CatchException(ptr noundef nonnull %4) #11
  %46 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #11
  call void @MagickCoreTerminus() #11
  call void @_exit(i32 noundef 1) #15
  unreachable

47:                                               ; preds = %37
  %48 = load ptr, ptr %0, align 8, !tbaa !41
  %49 = icmp eq ptr %48, null
  br i1 %49, label %104, label %50

50:                                               ; preds = %47
  %51 = load i64, ptr %33, align 8, !tbaa !51
  %52 = tail call ptr @AcquireQuantumMemory(i64 noundef %51, i64 noundef 8) #13
  %53 = load i64, ptr %33, align 8, !tbaa !51
  %54 = tail call ptr @AcquireQuantumMemory(i64 noundef %53, i64 noundef 1) #13
  %55 = icmp eq ptr %52, null
  %56 = icmp eq ptr %54, null
  %57 = select i1 %55, i1 true, i1 %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #11
  call void @GetExceptionInfo(ptr noundef nonnull %3) #11
  %59 = tail call ptr @__errno_location() #14
  %60 = load i32, ptr %59, align 4, !tbaa !53
  %61 = call ptr @GetExceptionMessage(i32 noundef %60) #11
  %62 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1009, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %61) #11
  %63 = call ptr @DestroyString(ptr noundef %61) #11
  call void @CatchException(ptr noundef nonnull %3) #11
  %64 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #11
  call void @MagickCoreTerminus() #11
  call void @_exit(i32 noundef 1) #15
  unreachable

65:                                               ; preds = %50
  %66 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr %66, ptr %52, align 8, !tbaa !54
  store i8 0, ptr %54, align 1, !tbaa !55
  br label %67

67:                                               ; preds = %65, %96
  %68 = phi i64 [ 0, %65 ], [ %98, %96 ]
  %69 = phi ptr [ %38, %65 ], [ %97, %96 ]
  %70 = getelementptr inbounds ptr, ptr %52, i64 %68
  %71 = load ptr, ptr %70, align 8, !tbaa !54
  %72 = getelementptr inbounds i8, ptr %54, i64 %68
  %73 = load i8, ptr %72, align 1, !tbaa !55
  switch i8 %73, label %90 [
    i8 0, label %74
    i8 1, label %82
    i8 3, label %92
  ]

74:                                               ; preds = %67
  store i8 2, ptr %72, align 1, !tbaa !55
  %75 = getelementptr inbounds %struct._NodeInfo, ptr %71, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !48
  %77 = icmp eq ptr %76, null
  br i1 %77, label %96, label %78

78:                                               ; preds = %74
  %79 = add nsw i64 %68, 1
  %80 = getelementptr inbounds ptr, ptr %52, i64 %79
  store ptr %76, ptr %80, align 8, !tbaa !54
  %81 = getelementptr inbounds i8, ptr %54, i64 %79
  store i8 0, ptr %81, align 1, !tbaa !55
  br label %96

82:                                               ; preds = %67
  store i8 3, ptr %72, align 1, !tbaa !55
  %83 = getelementptr inbounds %struct._NodeInfo, ptr %71, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !49
  %85 = icmp eq ptr %84, null
  br i1 %85, label %96, label %86

86:                                               ; preds = %82
  %87 = add nsw i64 %68, 1
  %88 = getelementptr inbounds ptr, ptr %52, i64 %87
  store ptr %84, ptr %88, align 8, !tbaa !54
  %89 = getelementptr inbounds i8, ptr %54, i64 %87
  store i8 0, ptr %89, align 1, !tbaa !55
  br label %96

90:                                               ; preds = %67
  store i8 1, ptr %72, align 1, !tbaa !55
  store ptr %71, ptr %69, align 8, !tbaa !54
  %91 = getelementptr inbounds ptr, ptr %69, i64 1
  br label %96

92:                                               ; preds = %67
  %93 = icmp eq i64 %68, 0
  %94 = tail call i64 @llvm.usub.sat.i64(i64 %68, i64 1)
  %95 = zext i1 %93 to i32
  br label %96

96:                                               ; preds = %92, %90, %86, %82, %78, %74
  %97 = phi ptr [ %91, %90 ], [ %69, %92 ], [ %69, %82 ], [ %69, %86 ], [ %69, %74 ], [ %69, %78 ]
  %98 = phi i64 [ %68, %90 ], [ %94, %92 ], [ %68, %82 ], [ %87, %86 ], [ %68, %74 ], [ %79, %78 ]
  %99 = phi i32 [ 0, %90 ], [ %95, %92 ], [ 0, %82 ], [ 0, %86 ], [ 0, %74 ], [ 0, %78 ]
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %67, label %101, !llvm.loop !56

101:                                              ; preds = %96
  %102 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %52) #11
  %103 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %54) #11
  br label %104

104:                                              ; preds = %101, %47
  %105 = load i64, ptr %33, align 8, !tbaa !51
  %106 = add i64 %105, -1
  %107 = tail call fastcc ptr @LinkSplayTreeNodes(ptr noundef nonnull %38, i64 noundef 0, i64 noundef %106)
  store ptr %107, ptr %0, align 8, !tbaa !41
  store i32 0, ptr %29, align 8, !tbaa !52
  %108 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %38) #11
  br label %109

109:                                              ; preds = %36, %104
  %110 = tail call fastcc ptr @Splay(ptr noundef nonnull %0, i64 noundef 0, ptr noundef %1, ptr noundef nonnull %0, ptr noundef null, ptr noundef null)
  %111 = load i32, ptr %29, align 8, !tbaa !52
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #11
  call void @GetExceptionInfo(ptr noundef nonnull %5) #11
  %114 = tail call ptr @__errno_location() #14
  %115 = load i32, ptr %114, align 4, !tbaa !53
  %116 = call ptr @GetExceptionMessage(i32 noundef %115) #11
  %117 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1590, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %116) #11
  %118 = call ptr @DestroyString(ptr noundef %116) #11
  call void @CatchException(ptr noundef nonnull %5) #11
  %119 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #11
  call void @MagickCoreTerminus() #11
  call void @_exit(i32 noundef 1) #15
  unreachable

120:                                              ; preds = %109, %27
  store ptr %1, ptr %9, align 8, !tbaa !50
  br label %121

121:                                              ; preds = %24, %2, %120
  ret void
}

declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @CloneSplayTree(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !59
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
  %16 = tail call ptr @NewSplayTree(ptr noundef %11, ptr noundef %13, ptr noundef %15)
  %17 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %18) #11
  %19 = load ptr, ptr %0, align 8, !tbaa !41
  %20 = icmp eq ptr %19, null
  br i1 %20, label %53, label %21

21:                                               ; preds = %9, %21
  %22 = phi ptr [ %24, %21 ], [ %19, %9 ]
  %23 = getelementptr inbounds %struct._NodeInfo, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %21, !llvm.loop !60

26:                                               ; preds = %21
  %27 = load ptr, ptr %22, align 8, !tbaa !43
  %28 = icmp eq ptr %27, null
  br i1 %28, label %53, label %29

29:                                               ; preds = %26, %50
  %30 = phi ptr [ %51, %50 ], [ %27, %26 ]
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %0, ptr noundef nonnull %30)
  %31 = load ptr, ptr %0, align 8, !tbaa !41
  %32 = load ptr, ptr %31, align 8, !tbaa !43
  %33 = tail call ptr %1(ptr noundef %32) #11
  %34 = load ptr, ptr %0, align 8, !tbaa !41
  %35 = getelementptr inbounds %struct._NodeInfo, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = tail call ptr %2(ptr noundef %36) #11
  %38 = tail call i32 @AddValueToSplayTree(ptr noundef %16, ptr noundef %33, ptr noundef %37), !range !61
  %39 = load ptr, ptr %0, align 8, !tbaa !41
  %40 = getelementptr inbounds %struct._NodeInfo, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !49
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %29, %43
  %44 = phi ptr [ %46, %43 ], [ %41, %29 ]
  %45 = getelementptr inbounds %struct._NodeInfo, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !48
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %43, !llvm.loop !62

48:                                               ; preds = %43
  %49 = load ptr, ptr %44, align 8, !tbaa !43
  br label %50

50:                                               ; preds = %48, %29
  %51 = phi ptr [ %49, %48 ], [ null, %29 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %29, !llvm.loop !63

53:                                               ; preds = %50, %26, %9
  %54 = load ptr, ptr %17, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %54) #11
  ret ptr %16
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @NewSplayTree(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = tail call dereferenceable_or_null(88) ptr @AcquireMagickMemory(i64 noundef 88) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #11
  call void @GetExceptionInfo(ptr noundef nonnull %4) #11
  %8 = tail call ptr @__errno_location() #14
  %9 = load i32, ptr %8, align 4, !tbaa !53
  %10 = call ptr @GetExceptionMessage(i32 noundef %9) #11
  %11 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1107, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %10) #11
  %12 = call ptr @DestroyString(ptr noundef %10) #11
  call void @CatchException(ptr noundef nonnull %4) #11
  %13 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #11
  call void @MagickCoreTerminus() #11
  call void @_exit(i32 noundef 1) #15
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
  store i32 0, ptr %19, align 8, !tbaa !52
  %20 = getelementptr inbounds %struct._SplayTreeInfo, ptr %5, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  %21 = tail call i32 @IsEventLogging() #11
  %22 = getelementptr inbounds %struct._SplayTreeInfo, ptr %5, i64 0, i32 8
  store i32 %21, ptr %22, align 8, !tbaa !59
  %23 = tail call ptr @AllocateSemaphoreInfo() #11
  %24 = getelementptr inbounds %struct._SplayTreeInfo, ptr %5, i64 0, i32 9
  store ptr %23, ptr %24, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct._SplayTreeInfo, ptr %5, i64 0, i32 10
  store i64 2880220587, ptr %25, align 8, !tbaa !64
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local i32 @CompareSplayTreeString(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @LocaleCompare(ptr noundef %0, ptr noundef %1) #11
  ret i32 %3
}

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @CompareSplayTreeStringInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @CompareStringInfo(ptr noundef %0, ptr noundef %1) #11
  ret i32 %3
}

declare i32 @CompareStringInfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @DeleteNodeByValueFromSplayTree(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !59
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
  br i1 %12, label %104, label %13

13:                                               ; preds = %8, %13
  %14 = phi ptr [ %16, %13 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct._NodeInfo, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %13, !llvm.loop !60

18:                                               ; preds = %13
  %19 = load ptr, ptr %14, align 8, !tbaa !43
  br label %20

20:                                               ; preds = %35, %18
  %21 = phi ptr [ %19, %18 ], [ %36, %35 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %104, label %23

23:                                               ; preds = %20
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %0, ptr noundef nonnull %21)
  %24 = load ptr, ptr %0, align 8, !tbaa !41
  %25 = getelementptr inbounds %struct._NodeInfo, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !49
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %23, %28
  %29 = phi ptr [ %31, %28 ], [ %26, %23 ]
  %30 = getelementptr inbounds %struct._NodeInfo, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %28, !llvm.loop !65

33:                                               ; preds = %28
  %34 = load ptr, ptr %29, align 8, !tbaa !43
  br label %35

35:                                               ; preds = %33, %23
  %36 = phi ptr [ %34, %33 ], [ null, %23 ]
  %37 = getelementptr inbounds %struct._NodeInfo, ptr %24, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = icmp eq ptr %38, %1
  br i1 %39, label %40, label %20, !llvm.loop !66

40:                                               ; preds = %35
  %41 = load ptr, ptr %24, align 8, !tbaa !43
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %0, ptr noundef %41)
  %42 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 5
  store ptr null, ptr %42, align 8, !tbaa !50
  %43 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !42
  %45 = icmp eq ptr %44, null
  %46 = load ptr, ptr %0, align 8, !tbaa !41
  %47 = load ptr, ptr %46, align 8, !tbaa !43
  br i1 %45, label %50, label %48

48:                                               ; preds = %40
  %49 = tail call i32 %44(ptr noundef %47, ptr noundef %41) #11
  br label %55

50:                                               ; preds = %40
  %51 = icmp ugt ptr %47, %41
  %52 = icmp ult ptr %47, %41
  %53 = sext i1 %52 to i32
  %54 = select i1 %51, i32 1, i32 %53
  br label %55

55:                                               ; preds = %50, %48
  %56 = phi i32 [ %49, %48 ], [ %54, %50 ]
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %104

58:                                               ; preds = %55
  %59 = load ptr, ptr %0, align 8, !tbaa !41
  %60 = getelementptr inbounds %struct._NodeInfo, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !48
  %62 = getelementptr inbounds %struct._NodeInfo, ptr %59, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !49
  %64 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !45
  %66 = icmp eq ptr %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct._NodeInfo, ptr %59, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !46
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = tail call ptr %65(ptr noundef nonnull %69) #11
  %73 = load ptr, ptr %0, align 8, !tbaa !41
  %74 = getelementptr inbounds %struct._NodeInfo, ptr %73, i64 0, i32 1
  store ptr %72, ptr %74, align 8, !tbaa !46
  br label %75

75:                                               ; preds = %71, %67, %58
  %76 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !47
  %78 = icmp eq ptr %77, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr %0, align 8, !tbaa !41
  %81 = load ptr, ptr %80, align 8, !tbaa !43
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = tail call ptr %77(ptr noundef nonnull %81) #11
  %85 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr %84, ptr %85, align 8, !tbaa !43
  br label %86

86:                                               ; preds = %83, %79, %75
  %87 = load ptr, ptr %0, align 8, !tbaa !41
  %88 = tail call ptr @RelinquishMagickMemory(ptr noundef %87) #11
  store ptr %88, ptr %0, align 8, !tbaa !41
  %89 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 7
  %90 = load i64, ptr %89, align 8, !tbaa !51
  %91 = add i64 %90, -1
  store i64 %91, ptr %89, align 8, !tbaa !51
  %92 = icmp eq ptr %61, null
  br i1 %92, label %102, label %93

93:                                               ; preds = %86
  store ptr %61, ptr %0, align 8, !tbaa !41
  %94 = icmp eq ptr %63, null
  br i1 %94, label %104, label %95

95:                                               ; preds = %93, %95
  %96 = phi ptr [ %98, %95 ], [ %61, %93 ]
  %97 = getelementptr inbounds %struct._NodeInfo, ptr %96, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !49
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %95, !llvm.loop !67

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct._NodeInfo, ptr %96, i64 0, i32 3
  br label %102

102:                                              ; preds = %86, %100
  %103 = phi ptr [ %101, %100 ], [ %0, %86 ]
  store ptr %63, ptr %103, align 8, !tbaa !54
  br label %104

104:                                              ; preds = %20, %102, %93, %55, %8
  %105 = phi i32 [ 0, %8 ], [ 0, %55 ], [ 1, %93 ], [ 1, %102 ], [ 0, %20 ]
  %106 = load ptr, ptr %9, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %106) #11
  ret i32 %105
}

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @DeleteNodeFromSplayTree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 614, ptr noundef nonnull @.str.2) #11
  br label %8

8:                                                ; preds = %6, %2
  %9 = load ptr, ptr %0, align 8, !tbaa !41
  %10 = icmp eq ptr %9, null
  br i1 %10, label %79, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %13) #11
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %0, ptr noundef %1)
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
  br label %27

22:                                               ; preds = %11
  %23 = icmp ugt ptr %19, %1
  %24 = icmp ult ptr %19, %1
  %25 = sext i1 %24 to i32
  %26 = select i1 %23, i32 1, i32 %25
  br label %27

27:                                               ; preds = %22, %20
  %28 = phi i32 [ %21, %20 ], [ %26, %22 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %76

30:                                               ; preds = %27
  %31 = load ptr, ptr %0, align 8, !tbaa !41
  %32 = getelementptr inbounds %struct._NodeInfo, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  %34 = getelementptr inbounds %struct._NodeInfo, ptr %31, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !49
  %36 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !45
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct._NodeInfo, ptr %31, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = tail call ptr %37(ptr noundef nonnull %41) #11
  %45 = load ptr, ptr %0, align 8, !tbaa !41
  %46 = getelementptr inbounds %struct._NodeInfo, ptr %45, i64 0, i32 1
  store ptr %44, ptr %46, align 8, !tbaa !46
  br label %47

47:                                               ; preds = %43, %39, %30
  %48 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !47
  %50 = icmp eq ptr %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %0, align 8, !tbaa !41
  %53 = load ptr, ptr %52, align 8, !tbaa !43
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = tail call ptr %49(ptr noundef nonnull %53) #11
  %57 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr %56, ptr %57, align 8, !tbaa !43
  br label %58

58:                                               ; preds = %55, %51, %47
  %59 = load ptr, ptr %0, align 8, !tbaa !41
  %60 = tail call ptr @RelinquishMagickMemory(ptr noundef %59) #11
  store ptr %60, ptr %0, align 8, !tbaa !41
  %61 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 7
  %62 = load i64, ptr %61, align 8, !tbaa !51
  %63 = add i64 %62, -1
  store i64 %63, ptr %61, align 8, !tbaa !51
  %64 = icmp eq ptr %33, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %58
  store ptr %33, ptr %0, align 8, !tbaa !41
  %66 = icmp eq ptr %35, null
  br i1 %66, label %76, label %67

67:                                               ; preds = %65, %67
  %68 = phi ptr [ %70, %67 ], [ %33, %65 ]
  %69 = getelementptr inbounds %struct._NodeInfo, ptr %68, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !49
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %67, !llvm.loop !68

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct._NodeInfo, ptr %68, i64 0, i32 3
  br label %74

74:                                               ; preds = %58, %72
  %75 = phi ptr [ %73, %72 ], [ %0, %58 ]
  store ptr %35, ptr %75, align 8, !tbaa !54
  br label %76

76:                                               ; preds = %74, %65, %27
  %77 = phi i32 [ 0, %27 ], [ 1, %65 ], [ 1, %74 ]
  %78 = load ptr, ptr %12, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %78) #11
  br label %79

79:                                               ; preds = %76, %8
  %80 = phi i32 [ 0, %8 ], [ %77, %76 ]
  ret i32 %80
}

; Function Attrs: nounwind uwtable
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
  %19 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 8, !tbaa !41
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = tail call ptr %20(ptr noundef nonnull %24) #11
  %28 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr %27, ptr %28, align 8, !tbaa !43
  br label %29

29:                                               ; preds = %26, %22, %18
  %30 = load ptr, ptr %0, align 8, !tbaa !41
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
  %51 = load ptr, ptr %19, align 8, !tbaa !47
  %52 = icmp eq ptr %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %36, align 8, !tbaa !48
  %55 = load ptr, ptr %54, align 8, !tbaa !43
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = tail call ptr %51(ptr noundef nonnull %55) #11
  %59 = load ptr, ptr %36, align 8, !tbaa !48
  store ptr %58, ptr %59, align 8, !tbaa !43
  br label %60

60:                                               ; preds = %57, %53, %50
  %61 = load ptr, ptr %36, align 8, !tbaa !48
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
  %79 = load ptr, ptr %19, align 8, !tbaa !47
  %80 = icmp eq ptr %79, null
  br i1 %80, label %88, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %64, align 8, !tbaa !49
  %83 = load ptr, ptr %82, align 8, !tbaa !43
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = tail call ptr %79(ptr noundef nonnull %83) #11
  %87 = load ptr, ptr %64, align 8, !tbaa !49
  store ptr %86, ptr %87, align 8, !tbaa !43
  br label %88

88:                                               ; preds = %85, %81, %78
  %89 = load ptr, ptr %64, align 8, !tbaa !49
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
  br label %33, !llvm.loop !69

98:                                               ; preds = %31, %1
  %99 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 10
  store i64 -2880220588, ptr %99, align 8, !tbaa !64
  %100 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %100) #11
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %2) #11
  %101 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #11
  ret ptr %101
}

declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetNextKeyInSplayTree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !59
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
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = icmp eq ptr %12, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %16) #11
  %17 = load ptr, ptr %11, align 8, !tbaa !70
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %0, ptr noundef %17)
  store ptr null, ptr %11, align 8, !tbaa !70
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
  store ptr %28, ptr %11, align 8, !tbaa !70
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

; Function Attrs: nounwind uwtable
define dso_local ptr @GetNextValueInSplayTree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !59
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
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = icmp eq ptr %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %16) #11
  %17 = load ptr, ptr %11, align 8, !tbaa !70
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %0, ptr noundef %17)
  store ptr null, ptr %11, align 8, !tbaa !70
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
  br i1 %26, label %27, label %22, !llvm.loop !72

27:                                               ; preds = %22
  %28 = load ptr, ptr %23, align 8, !tbaa !43
  store ptr %28, ptr %11, align 8, !tbaa !70
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

; Function Attrs: nounwind uwtable
define dso_local ptr @GetValueFromSplayTree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 890, ptr noundef nonnull @.str.2) #11
  br label %8

8:                                                ; preds = %6, %2
  %9 = load ptr, ptr %0, align 8, !tbaa !41
  %10 = icmp eq ptr %9, null
  br i1 %10, label %36, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %13) #11
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %0, ptr noundef %1)
  %14 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = icmp eq ptr %15, null
  %17 = load ptr, ptr %0, align 8, !tbaa !41
  %18 = load ptr, ptr %17, align 8, !tbaa !43
  br i1 %16, label %21, label %19

19:                                               ; preds = %11
  %20 = tail call i32 %15(ptr noundef %18, ptr noundef %1) #11
  br label %26

21:                                               ; preds = %11
  %22 = icmp ugt ptr %18, %1
  %23 = icmp ult ptr %18, %1
  %24 = sext i1 %23 to i32
  %25 = select i1 %22, i32 1, i32 %24
  br label %26

26:                                               ; preds = %21, %19
  %27 = phi i32 [ %20, %19 ], [ %25, %21 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load ptr, ptr %0, align 8, !tbaa !41
  %31 = getelementptr inbounds %struct._NodeInfo, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  br label %33

33:                                               ; preds = %26, %29
  %34 = phi ptr [ %32, %29 ], [ null, %26 ]
  %35 = load ptr, ptr %12, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %35) #11
  br label %36

36:                                               ; preds = %33, %8
  %37 = phi ptr [ null, %8 ], [ %34, %33 ]
  ret ptr %37
}

; Function Attrs: nounwind uwtable
define dso_local i64 @GetNumberOfNodesInSplayTree(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !59
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

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

declare void @CatchException(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #5

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @IsEventLogging() local_unnamed_addr #2

declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @RemoveNodeByValueFromSplayTree(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1162, ptr noundef nonnull @.str.2) #11
  br label %8

8:                                                ; preds = %6, %2
  %9 = load ptr, ptr %0, align 8, !tbaa !41
  %10 = icmp eq ptr %9, null
  br i1 %10, label %101, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %13) #11
  %14 = load ptr, ptr %0, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %11, %16
  %17 = phi ptr [ %19, %16 ], [ %14, %11 ]
  %18 = getelementptr inbounds %struct._NodeInfo, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %16, !llvm.loop !60

21:                                               ; preds = %16
  %22 = load ptr, ptr %17, align 8, !tbaa !43
  br label %23

23:                                               ; preds = %11, %21
  %24 = phi ptr [ null, %11 ], [ %22, %21 ]
  br label %25

25:                                               ; preds = %23, %40
  %26 = phi ptr [ %41, %40 ], [ %24, %23 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %98, label %28

28:                                               ; preds = %25
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %0, ptr noundef nonnull %26)
  %29 = load ptr, ptr %0, align 8, !tbaa !41
  %30 = getelementptr inbounds %struct._NodeInfo, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !49
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %28, %33
  %34 = phi ptr [ %36, %33 ], [ %31, %28 ]
  %35 = getelementptr inbounds %struct._NodeInfo, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !48
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %33, !llvm.loop !73

38:                                               ; preds = %33
  %39 = load ptr, ptr %34, align 8, !tbaa !43
  br label %40

40:                                               ; preds = %38, %28
  %41 = phi ptr [ %39, %38 ], [ null, %28 ]
  %42 = getelementptr inbounds %struct._NodeInfo, ptr %29, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  %44 = icmp eq ptr %43, %1
  br i1 %44, label %45, label %25, !llvm.loop !74

45:                                               ; preds = %40
  %46 = load ptr, ptr %29, align 8, !tbaa !43
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %0, ptr noundef %46)
  %47 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 5
  store ptr null, ptr %47, align 8, !tbaa !50
  %48 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !42
  %50 = icmp eq ptr %49, null
  %51 = load ptr, ptr %0, align 8, !tbaa !41
  %52 = load ptr, ptr %51, align 8, !tbaa !43
  br i1 %50, label %55, label %53

53:                                               ; preds = %45
  %54 = tail call i32 %49(ptr noundef %52, ptr noundef %46) #11
  br label %60

55:                                               ; preds = %45
  %56 = icmp ugt ptr %52, %46
  %57 = icmp ult ptr %52, %46
  %58 = sext i1 %57 to i32
  %59 = select i1 %56, i32 1, i32 %58
  br label %60

60:                                               ; preds = %55, %53
  %61 = phi i32 [ %54, %53 ], [ %59, %55 ]
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %98

63:                                               ; preds = %60
  %64 = load ptr, ptr %0, align 8, !tbaa !41
  %65 = getelementptr inbounds %struct._NodeInfo, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !48
  %67 = getelementptr inbounds %struct._NodeInfo, ptr %64, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !49
  %69 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !45
  %71 = icmp eq ptr %70, null
  br i1 %71, label %80, label %72

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct._NodeInfo, ptr %64, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !46
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = tail call ptr %70(ptr noundef nonnull %74) #11
  %78 = load ptr, ptr %0, align 8, !tbaa !41
  %79 = getelementptr inbounds %struct._NodeInfo, ptr %78, i64 0, i32 1
  store ptr %77, ptr %79, align 8, !tbaa !46
  br label %80

80:                                               ; preds = %76, %72, %63
  %81 = load ptr, ptr %0, align 8, !tbaa !41
  %82 = tail call ptr @RelinquishMagickMemory(ptr noundef %81) #11
  store ptr %82, ptr %0, align 8, !tbaa !41
  %83 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 7
  %84 = load i64, ptr %83, align 8, !tbaa !51
  %85 = add i64 %84, -1
  store i64 %85, ptr %83, align 8, !tbaa !51
  %86 = icmp eq ptr %66, null
  br i1 %86, label %96, label %87

87:                                               ; preds = %80
  store ptr %66, ptr %0, align 8, !tbaa !41
  %88 = icmp eq ptr %68, null
  br i1 %88, label %98, label %89

89:                                               ; preds = %87, %89
  %90 = phi ptr [ %92, %89 ], [ %66, %87 ]
  %91 = getelementptr inbounds %struct._NodeInfo, ptr %90, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !49
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %89, !llvm.loop !75

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct._NodeInfo, ptr %90, i64 0, i32 3
  br label %96

96:                                               ; preds = %80, %94
  %97 = phi ptr [ %95, %94 ], [ %0, %80 ]
  store ptr %68, ptr %97, align 8, !tbaa !54
  br label %98

98:                                               ; preds = %25, %96, %87, %60
  %99 = phi ptr [ %46, %60 ], [ %46, %87 ], [ %46, %96 ], [ null, %25 ]
  %100 = load ptr, ptr %12, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %100) #11
  br label %101

101:                                              ; preds = %98, %8
  %102 = phi ptr [ null, %8 ], [ %99, %98 ]
  ret ptr %102
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RemoveNodeFromSplayTree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1274, ptr noundef nonnull @.str.2) #11
  br label %8

8:                                                ; preds = %6, %2
  %9 = load ptr, ptr %0, align 8, !tbaa !41
  %10 = icmp eq ptr %9, null
  br i1 %10, label %68, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %13) #11
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %0, ptr noundef %1)
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
  br label %27

22:                                               ; preds = %11
  %23 = icmp ugt ptr %19, %1
  %24 = icmp ult ptr %19, %1
  %25 = sext i1 %24 to i32
  %26 = select i1 %23, i32 1, i32 %25
  br label %27

27:                                               ; preds = %22, %20
  %28 = phi i32 [ %21, %20 ], [ %26, %22 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %27
  %31 = load ptr, ptr %0, align 8, !tbaa !41
  %32 = getelementptr inbounds %struct._NodeInfo, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  %34 = getelementptr inbounds %struct._NodeInfo, ptr %31, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !49
  %36 = getelementptr inbounds %struct._NodeInfo, ptr %31, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !47
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %30
  %42 = load ptr, ptr %31, align 8, !tbaa !43
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = tail call ptr %39(ptr noundef nonnull %42) #11
  %46 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr %45, ptr %46, align 8, !tbaa !43
  br label %47

47:                                               ; preds = %44, %41, %30
  %48 = load ptr, ptr %0, align 8, !tbaa !41
  %49 = tail call ptr @RelinquishMagickMemory(ptr noundef %48) #11
  store ptr %49, ptr %0, align 8, !tbaa !41
  %50 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 7
  %51 = load i64, ptr %50, align 8, !tbaa !51
  %52 = add i64 %51, -1
  store i64 %52, ptr %50, align 8, !tbaa !51
  %53 = icmp eq ptr %33, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %47
  store ptr %33, ptr %0, align 8, !tbaa !41
  %55 = icmp eq ptr %35, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %54, %56
  %57 = phi ptr [ %59, %56 ], [ %33, %54 ]
  %58 = getelementptr inbounds %struct._NodeInfo, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !49
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %56, !llvm.loop !76

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct._NodeInfo, ptr %57, i64 0, i32 3
  br label %63

63:                                               ; preds = %47, %61
  %64 = phi ptr [ %62, %61 ], [ %0, %47 ]
  store ptr %35, ptr %64, align 8, !tbaa !54
  br label %65

65:                                               ; preds = %63, %54, %27
  %66 = phi ptr [ null, %27 ], [ %37, %54 ], [ %37, %63 ]
  %67 = load ptr, ptr %12, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %67) #11
  br label %68

68:                                               ; preds = %65, %8
  %69 = phi ptr [ null, %8 ], [ %66, %65 ]
  ret ptr %69
}

; Function Attrs: nounwind uwtable
define dso_local void @ResetSplayTree(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !59
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
  %25 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %0, align 8, !tbaa !41
  %30 = load ptr, ptr %29, align 8, !tbaa !43
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = tail call ptr %26(ptr noundef nonnull %30) #11
  %34 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr %33, ptr %34, align 8, !tbaa !43
  br label %35

35:                                               ; preds = %32, %28, %24
  %36 = load ptr, ptr %0, align 8, !tbaa !41
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
  %57 = load ptr, ptr %25, align 8, !tbaa !47
  %58 = icmp eq ptr %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %42, align 8, !tbaa !48
  %61 = load ptr, ptr %60, align 8, !tbaa !43
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = tail call ptr %57(ptr noundef nonnull %61) #11
  %65 = load ptr, ptr %42, align 8, !tbaa !48
  store ptr %64, ptr %65, align 8, !tbaa !43
  br label %66

66:                                               ; preds = %63, %59, %56
  %67 = load ptr, ptr %42, align 8, !tbaa !48
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
  %85 = load ptr, ptr %25, align 8, !tbaa !47
  %86 = icmp eq ptr %85, null
  br i1 %86, label %94, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %70, align 8, !tbaa !49
  %89 = load ptr, ptr %88, align 8, !tbaa !43
  %90 = icmp eq ptr %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = tail call ptr %85(ptr noundef nonnull %89) #11
  %93 = load ptr, ptr %70, align 8, !tbaa !49
  store ptr %92, ptr %93, align 8, !tbaa !43
  br label %94

94:                                               ; preds = %91, %87, %84
  %95 = load ptr, ptr %70, align 8, !tbaa !49
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
  br label %39, !llvm.loop !77

104:                                              ; preds = %37, %7
  store ptr null, ptr %0, align 8, !tbaa !41
  %105 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 5
  %106 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 4
  store i32 0, ptr %106, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %105, i8 0, i64 24, i1 false)
  %107 = load ptr, ptr %8, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %107) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ResetSplayTreeIterator(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !59
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1436, ptr noundef nonnull @.str.2) #11
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %9) #11
  %10 = load ptr, ptr %0, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %7, %12
  %13 = phi ptr [ %15, %12 ], [ %10, %7 ]
  %14 = getelementptr inbounds %struct._NodeInfo, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %12, !llvm.loop !60

17:                                               ; preds = %12
  %18 = load ptr, ptr %13, align 8, !tbaa !43
  br label %19

19:                                               ; preds = %7, %17
  %20 = phi ptr [ %18, %17 ], [ null, %7 ]
  %21 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 6
  store ptr %20, ptr %21, align 8, !tbaa !70
  %22 = load ptr, ptr %8, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %22) #11
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @Splay(ptr nocapture noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #6 {
  %7 = load ptr, ptr %3, align 8, !tbaa !54
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = load ptr, ptr %4, align 8, !tbaa !54
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
  store i32 1, ptr %35, align 8, !tbaa !52
  br label %104

36:                                               ; preds = %32
  %37 = add nuw nsw i64 %1, 1
  %38 = tail call fastcc ptr @Splay(ptr noundef %0, i64 noundef %37, ptr noundef %2, ptr noundef nonnull %30, ptr noundef nonnull %3, ptr noundef %4)
  %39 = load ptr, ptr %3, align 8, !tbaa !54
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %41, label %104

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct._SplayTreeInfo, ptr %0, i64 0, i32 4
  %43 = load i32, ptr %42, align 8, !tbaa !52
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %104

45:                                               ; preds = %41, %23
  %46 = phi ptr [ %38, %41 ], [ %7, %23 ]
  %47 = icmp eq ptr %4, null
  br i1 %47, label %104, label %48

48:                                               ; preds = %45
  %49 = icmp eq ptr %5, null
  %50 = load ptr, ptr %4, align 8, !tbaa !54
  %51 = getelementptr inbounds %struct._NodeInfo, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !48
  %53 = icmp eq ptr %46, %52
  br i1 %49, label %54, label %60

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct._NodeInfo, ptr %46, i64 0, i32 2
  %56 = getelementptr inbounds %struct._NodeInfo, ptr %46, i64 0, i32 3
  %57 = select i1 %53, ptr %56, ptr %55
  %58 = load ptr, ptr %57, align 8, !tbaa !54
  store ptr %58, ptr %3, align 8, !tbaa !54
  %59 = load ptr, ptr %4, align 8, !tbaa !54
  store ptr %59, ptr %57, align 8, !tbaa !54
  store ptr %46, ptr %4, align 8, !tbaa !54
  br label %104

60:                                               ; preds = %48
  br i1 %53, label %61, label %72

61:                                               ; preds = %60
  %62 = load ptr, ptr %5, align 8, !tbaa !54
  %63 = getelementptr inbounds %struct._NodeInfo, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !48
  %65 = icmp eq ptr %50, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct._NodeInfo, ptr %50, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !49
  store ptr %68, ptr %63, align 8, !tbaa !48
  %69 = load ptr, ptr %5, align 8, !tbaa !54
  store ptr %69, ptr %67, align 8, !tbaa !49
  %70 = getelementptr inbounds %struct._NodeInfo, ptr %46, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !49
  store ptr %71, ptr %51, align 8, !tbaa !48
  store ptr %50, ptr %70, align 8, !tbaa !49
  store ptr %46, ptr %5, align 8, !tbaa !54
  br label %104

72:                                               ; preds = %61, %60
  %73 = getelementptr inbounds %struct._NodeInfo, ptr %50, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !49
  %75 = icmp eq ptr %46, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = load ptr, ptr %5, align 8, !tbaa !54
  %78 = getelementptr inbounds %struct._NodeInfo, ptr %77, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !49
  %80 = icmp eq ptr %50, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  store ptr %52, ptr %78, align 8, !tbaa !49
  %82 = load ptr, ptr %5, align 8, !tbaa !54
  store ptr %82, ptr %51, align 8, !tbaa !48
  %83 = getelementptr inbounds %struct._NodeInfo, ptr %46, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !48
  store ptr %84, ptr %73, align 8, !tbaa !49
  store ptr %50, ptr %83, align 8, !tbaa !48
  store ptr %46, ptr %5, align 8, !tbaa !54
  br label %104

85:                                               ; preds = %76, %72
  br i1 %53, label %86, label %95

86:                                               ; preds = %85
  %87 = getelementptr inbounds %struct._NodeInfo, ptr %46, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !49
  store ptr %88, ptr %51, align 8, !tbaa !48
  %89 = load ptr, ptr %4, align 8, !tbaa !54
  store ptr %89, ptr %87, align 8, !tbaa !49
  %90 = getelementptr inbounds %struct._NodeInfo, ptr %46, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !48
  %92 = load ptr, ptr %5, align 8, !tbaa !54
  %93 = getelementptr inbounds %struct._NodeInfo, ptr %92, i64 0, i32 3
  store ptr %91, ptr %93, align 8, !tbaa !49
  %94 = load ptr, ptr %5, align 8, !tbaa !54
  store ptr %94, ptr %90, align 8, !tbaa !48
  store ptr %46, ptr %5, align 8, !tbaa !54
  br label %104

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct._NodeInfo, ptr %46, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !48
  store ptr %97, ptr %73, align 8, !tbaa !49
  %98 = load ptr, ptr %4, align 8, !tbaa !54
  store ptr %98, ptr %96, align 8, !tbaa !48
  %99 = getelementptr inbounds %struct._NodeInfo, ptr %46, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !49
  %101 = load ptr, ptr %5, align 8, !tbaa !54
  %102 = getelementptr inbounds %struct._NodeInfo, ptr %101, i64 0, i32 2
  store ptr %100, ptr %102, align 8, !tbaa !48
  %103 = load ptr, ptr %5, align 8, !tbaa !54
  store ptr %103, ptr %99, align 8, !tbaa !49
  store ptr %46, ptr %5, align 8, !tbaa !54
  br label %104

104:                                              ; preds = %45, %36, %41, %95, %86, %81, %66, %54, %34, %9
  %105 = phi ptr [ %10, %9 ], [ %7, %34 ], [ %46, %54 ], [ %46, %66 ], [ %46, %81 ], [ %46, %86 ], [ %46, %95 ], [ %38, %41 ], [ %38, %36 ], [ %46, %45 ]
  ret ptr %105
}

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nofree nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @LinkSplayTreeNodes(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #8 {
  %4 = sub i64 %2, %1
  %5 = lshr i64 %4, 1
  %6 = add i64 %5, %1
  %7 = getelementptr inbounds ptr, ptr %0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = add i64 %1, 1
  %10 = icmp ugt i64 %9, %6
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = add i64 %6, -1
  %13 = tail call fastcc ptr @LinkSplayTreeNodes(ptr noundef %0, i64 noundef %1, i64 noundef %12)
  br label %14

14:                                               ; preds = %3, %11
  %15 = phi ptr [ %13, %11 ], [ null, %3 ]
  %16 = getelementptr inbounds %struct._NodeInfo, ptr %8, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !48
  %17 = add i64 %6, 1
  %18 = icmp ugt i64 %17, %2
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = tail call fastcc ptr @LinkSplayTreeNodes(ptr noundef %0, i64 noundef %17, i64 noundef %2)
  br label %21

21:                                               ; preds = %14, %19
  %22 = phi ptr [ %20, %19 ], [ null, %14 ]
  %23 = getelementptr inbounds %struct._NodeInfo, ptr %8, i64 0, i32 3
  store ptr %22, ptr %23, align 8, !tbaa !49
  ret ptr %8
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nofree nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 13301818}
!8 = !{!"MaxCount", i64 3247920}
!9 = !{!"MaxInternalCount", i64 3247920}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 3247920, i32 1}
!18 = !{i32 100000, i64 3247920, i32 1}
!19 = !{i32 200000, i64 3247920, i32 1}
!20 = !{i32 300000, i64 1623960, i32 7}
!21 = !{i32 400000, i64 1623960, i32 7}
!22 = !{i32 500000, i64 1623960, i32 7}
!23 = !{i32 600000, i64 1623960, i32 7}
!24 = !{i32 700000, i64 1623960, i32 7}
!25 = !{i32 800000, i64 1623960, i32 7}
!26 = !{i32 900000, i64 1623960, i32 7}
!27 = !{i32 950000, i64 1623960, i32 7}
!28 = !{i32 990000, i64 204360, i32 8}
!29 = !{i32 999000, i64 25545, i32 12}
!30 = !{i32 999900, i64 3120, i32 13}
!31 = !{i32 999990, i64 195, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
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
!52 = !{!35, !39, i64 32}
!53 = !{!39, !39, i64 0}
!54 = !{!36, !36, i64 0}
!55 = !{!37, !37, i64 0}
!56 = distinct !{!56, !57, !58}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!35, !39, i64 64}
!60 = distinct !{!60, !57, !58}
!61 = !{i32 0, i32 2}
!62 = distinct !{!62, !57, !58}
!63 = distinct !{!63, !57, !58}
!64 = !{!35, !40, i64 80}
!65 = distinct !{!65, !57, !58}
!66 = distinct !{!66, !57, !58}
!67 = distinct !{!67, !57, !58}
!68 = distinct !{!68, !57, !58}
!69 = distinct !{!69, !57, !58}
!70 = !{!35, !36, i64 48}
!71 = distinct !{!71, !57, !58}
!72 = distinct !{!72, !57, !58}
!73 = distinct !{!73, !57, !58}
!74 = distinct !{!74, !57, !58}
!75 = distinct !{!75, !57, !58}
!76 = distinct !{!76, !57, !58}
!77 = distinct !{!77, !57, !58}
