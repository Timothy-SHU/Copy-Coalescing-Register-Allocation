; ModuleID = 'magick/hashmap.c'
source_filename = "magick/hashmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._LinkedListInfo = type { i64, i64, ptr, ptr, ptr, ptr, i64 }
%struct._ElementInfo = type { ptr, ptr }
%struct._HashmapInfo = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, ptr, ptr, i64 }
%struct._EntryInfo = type { i64, ptr, ptr }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }

@.str = private unnamed_addr constant [17 x i8] c"magick/hashmap.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@__const.IncreaseHashmapCapacity.capacities = private unnamed_addr constant [20 x i64] [i64 17, i64 31, i64 61, i64 131, i64 257, i64 509, i64 1021, i64 2053, i64 4099, i64 8191, i64 16381, i64 32771, i64 65537, i64 131071, i64 262147, i64 524287, i64 1048573, i64 2097143, i64 4194301, i64 8388617], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @AppendValueToLinkedList(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !5
  %5 = load i64, ptr %0, align 8, !tbaa !11
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = tail call dereferenceable_or_null(16) ptr @AcquireMagickMemory(i64 noundef 16) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %7
  store ptr %1, ptr %8, align 8, !tbaa !12
  %11 = getelementptr inbounds %struct._ElementInfo, ptr %8, i64 0, i32 1
  store ptr null, ptr %11, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  tail call void @LockSemaphoreInfo(ptr noundef %13) #11
  %14 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store ptr %8, ptr %14, align 8, !tbaa !16
  br label %18

18:                                               ; preds = %17, %10
  %19 = load i64, ptr %3, align 8, !tbaa !5
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  br label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !17
  %26 = getelementptr inbounds %struct._ElementInfo, ptr %25, i64 0, i32 1
  br label %27

27:                                               ; preds = %23, %21
  %28 = phi ptr [ %26, %23 ], [ %22, %21 ]
  store ptr %8, ptr %28, align 8, !tbaa !18
  %29 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 3
  store ptr %8, ptr %29, align 8, !tbaa !17
  %30 = add i64 %19, 1
  store i64 %30, ptr %3, align 8, !tbaa !5
  %31 = load ptr, ptr %12, align 8, !tbaa !15
  tail call void @UnlockSemaphoreInfo(ptr noundef %31) #11
  br label %32

32:                                               ; preds = %7, %2, %27
  %33 = phi i32 [ 1, %27 ], [ 0, %2 ], [ 0, %7 ]
  ret i32 %33
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClearLinkedList(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !15
  tail call void @LockSemaphoreInfo(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = icmp eq ptr %1, null
  br label %10

10:                                               ; preds = %8, %15
  %11 = phi ptr [ %6, %8 ], [ %17, %15 ]
  br i1 %9, label %15, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr %11, align 8, !tbaa !12
  %14 = tail call ptr %1(ptr noundef %13) #11
  store ptr %14, ptr %11, align 8, !tbaa !12
  br label %15

15:                                               ; preds = %12, %10
  %16 = getelementptr inbounds %struct._ElementInfo, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !14
  %18 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %11) #11
  %19 = icmp eq ptr %17, null
  br i1 %19, label %20, label %10, !llvm.loop !20

20:                                               ; preds = %15, %2
  %21 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %21, i8 0, i64 32, i1 false)
  %22 = load ptr, ptr %3, align 8, !tbaa !15
  tail call void @UnlockSemaphoreInfo(ptr noundef %22) #11
  ret void
}

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @CompareHashmapString(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @LocaleCompare(ptr noundef %0, ptr noundef %1) #11
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @CompareHashmapStringInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @CompareStringInfo(ptr noundef %0, ptr noundef %1) #11
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare i32 @CompareStringInfo(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyHashmap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  tail call void @LockSemaphoreInfo(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !25
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %49

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 8
  %9 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 3
  br label %11

11:                                               ; preds = %7, %45
  %12 = phi i64 [ %5, %7 ], [ %46, %45 ]
  %13 = phi i64 [ 0, %7 ], [ %47, %45 ]
  %14 = load ptr, ptr %8, align 8, !tbaa !26
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %45, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct._LinkedListInfo, ptr %16, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !19
  %21 = getelementptr inbounds %struct._LinkedListInfo, ptr %16, i64 0, i32 4
  store ptr %20, ptr %21, align 8, !tbaa !16
  %22 = tail call ptr @GetNextValueInLinkedList(ptr noundef nonnull %16) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %18, %39
  %25 = phi ptr [ %40, %39 ], [ %22, %18 ]
  %26 = load ptr, ptr %9, align 8, !tbaa !27
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct._EntryInfo, ptr %25, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !28
  %31 = tail call ptr %26(ptr noundef %30) #11
  store ptr %31, ptr %29, align 8, !tbaa !28
  br label %32

32:                                               ; preds = %28, %24
  %33 = load ptr, ptr %10, align 8, !tbaa !30
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct._EntryInfo, ptr %25, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !31
  %38 = tail call ptr %33(ptr noundef %37) #11
  store ptr %38, ptr %36, align 8, !tbaa !31
  br label %39

39:                                               ; preds = %35, %32
  %40 = tail call ptr @GetNextValueInLinkedList(ptr noundef nonnull %16) #12
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %24, !llvm.loop !32

42:                                               ; preds = %39, %18
  %43 = tail call ptr @DestroyLinkedList(ptr noundef nonnull %16, ptr noundef nonnull @RelinquishMagickMemory) #12
  %44 = load i64, ptr %4, align 8, !tbaa !25
  br label %45

45:                                               ; preds = %11, %42
  %46 = phi i64 [ %12, %11 ], [ %44, %42 ]
  %47 = add nuw nsw i64 %13, 1
  %48 = icmp slt i64 %47, %46
  br i1 %48, label %11, label %49, !llvm.loop !33

49:                                               ; preds = %45, %1
  %50 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !26
  %52 = tail call ptr @RelinquishMagickMemory(ptr noundef %51) #11
  store ptr %52, ptr %50, align 8, !tbaa !26
  %53 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 10
  store i64 -2880220588, ptr %53, align 8, !tbaa !34
  %54 = load ptr, ptr %2, align 8, !tbaa !22
  tail call void @UnlockSemaphoreInfo(ptr noundef %54) #11
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %2) #11
  %55 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #11
  ret ptr %55
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetNextValueInLinkedList(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !15
  tail call void @LockSemaphoreInfo(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 8, !tbaa !12
  %9 = getelementptr inbounds %struct._ElementInfo, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  store ptr %10, ptr %4, align 8, !tbaa !16
  br label %11

11:                                               ; preds = %1, %7
  %12 = phi ptr [ %8, %7 ], [ null, %1 ]
  %13 = load ptr, ptr %2, align 8, !tbaa !15
  tail call void @UnlockSemaphoreInfo(ptr noundef %13) #11
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyLinkedList(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !15
  tail call void @LockSemaphoreInfo(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = icmp eq ptr %1, null
  br label %10

10:                                               ; preds = %8, %15
  %11 = phi ptr [ %6, %8 ], [ %17, %15 ]
  br i1 %9, label %15, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr %11, align 8, !tbaa !12
  %14 = tail call ptr %1(ptr noundef %13) #11
  store ptr %14, ptr %11, align 8, !tbaa !12
  br label %15

15:                                               ; preds = %12, %10
  %16 = getelementptr inbounds %struct._ElementInfo, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !14
  %18 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %11) #11
  %19 = icmp eq ptr %17, null
  br i1 %19, label %20, label %10, !llvm.loop !35

20:                                               ; preds = %15, %2
  %21 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 6
  store i64 -2880220588, ptr %21, align 8, !tbaa !36
  %22 = load ptr, ptr %3, align 8, !tbaa !15
  tail call void @UnlockSemaphoreInfo(ptr noundef %22) #11
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %3) #11
  %23 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #11
  ret ptr %23
}

; Function Attrs: optsize
declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetLastValueInLinkedList(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  tail call void @LockSemaphoreInfo(ptr noundef %7) #11
  %8 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = load ptr, ptr %6, align 8, !tbaa !15
  tail call void @UnlockSemaphoreInfo(ptr noundef %11) #11
  br label %12

12:                                               ; preds = %1, %5
  %13 = phi ptr [ %10, %5 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetNextKeyInHashmap(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  tail call void @LockSemaphoreInfo(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 6
  %5 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 4
  %6 = load i64, ptr %4, align 8, !tbaa !37
  %7 = load i64, ptr %5, align 8, !tbaa !25
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %40

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 8
  %11 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 7
  br label %12

12:                                               ; preds = %9, %35
  %13 = phi i64 [ %7, %9 ], [ %36, %35 ]
  %14 = phi i64 [ %6, %9 ], [ %38, %35 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !26
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %12
  %20 = load i32, ptr %11, align 8, !tbaa !38
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct._LinkedListInfo, ptr %17, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !19
  %25 = getelementptr inbounds %struct._LinkedListInfo, ptr %17, i64 0, i32 4
  store ptr %24, ptr %25, align 8, !tbaa !16
  store i32 1, ptr %11, align 8, !tbaa !38
  br label %26

26:                                               ; preds = %22, %19
  %27 = tail call ptr @GetNextValueInLinkedList(ptr noundef nonnull %17) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct._EntryInfo, ptr %27, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !28
  br label %40

32:                                               ; preds = %26
  store i32 0, ptr %11, align 8, !tbaa !38
  %33 = load i64, ptr %4, align 8, !tbaa !37
  %34 = load i64, ptr %5, align 8, !tbaa !25
  br label %35

35:                                               ; preds = %32, %12
  %36 = phi i64 [ %34, %32 ], [ %13, %12 ]
  %37 = phi i64 [ %33, %32 ], [ %14, %12 ]
  %38 = add i64 %37, 1
  store i64 %38, ptr %4, align 8, !tbaa !37
  %39 = icmp ult i64 %38, %36
  br i1 %39, label %12, label %40, !llvm.loop !39

40:                                               ; preds = %35, %1, %29
  %41 = phi ptr [ %31, %29 ], [ null, %1 ], [ null, %35 ]
  %42 = load ptr, ptr %2, align 8, !tbaa !22
  tail call void @UnlockSemaphoreInfo(ptr noundef %42) #11
  ret ptr %41
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetNextValueInHashmap(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  tail call void @LockSemaphoreInfo(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 6
  %5 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 4
  %6 = load i64, ptr %4, align 8, !tbaa !37
  %7 = load i64, ptr %5, align 8, !tbaa !25
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %40

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 8
  %11 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 7
  br label %12

12:                                               ; preds = %9, %35
  %13 = phi i64 [ %7, %9 ], [ %36, %35 ]
  %14 = phi i64 [ %6, %9 ], [ %38, %35 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !26
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %12
  %20 = load i32, ptr %11, align 8, !tbaa !38
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct._LinkedListInfo, ptr %17, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !19
  %25 = getelementptr inbounds %struct._LinkedListInfo, ptr %17, i64 0, i32 4
  store ptr %24, ptr %25, align 8, !tbaa !16
  store i32 1, ptr %11, align 8, !tbaa !38
  br label %26

26:                                               ; preds = %22, %19
  %27 = tail call ptr @GetNextValueInLinkedList(ptr noundef nonnull %17) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct._EntryInfo, ptr %27, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !31
  br label %40

32:                                               ; preds = %26
  store i32 0, ptr %11, align 8, !tbaa !38
  %33 = load i64, ptr %4, align 8, !tbaa !37
  %34 = load i64, ptr %5, align 8, !tbaa !25
  br label %35

35:                                               ; preds = %32, %12
  %36 = phi i64 [ %34, %32 ], [ %13, %12 ]
  %37 = phi i64 [ %33, %32 ], [ %14, %12 ]
  %38 = add i64 %37, 1
  store i64 %38, ptr %4, align 8, !tbaa !37
  %39 = icmp ult i64 %38, %36
  br i1 %39, label %12, label %40, !llvm.loop !40

40:                                               ; preds = %35, %1, %29
  %41 = phi ptr [ %31, %29 ], [ null, %1 ], [ null, %35 ]
  %42 = load ptr, ptr %2, align 8, !tbaa !22
  tail call void @UnlockSemaphoreInfo(ptr noundef %42) #11
  ret ptr %41
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @GetNumberOfEntriesInHashmap(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 5
  %3 = load i64, ptr %2, align 8, !tbaa !41
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @GetNumberOfElementsInLinkedList(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !5
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetValueFromHashmap(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %46, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  tail call void @LockSemaphoreInfo(ptr noundef %6) #11
  %7 = load ptr, ptr %0, align 8, !tbaa !42
  %8 = tail call i64 %7(ptr noundef nonnull %1) #11
  %9 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !26
  %11 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !25
  %13 = urem i64 %8, %12
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct._LinkedListInfo, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !19
  %20 = getelementptr inbounds %struct._LinkedListInfo, ptr %15, i64 0, i32 4
  store ptr %19, ptr %20, align 8, !tbaa !16
  %21 = tail call ptr @GetNextValueInLinkedList(ptr noundef nonnull %15) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 1
  br label %25

25:                                               ; preds = %23, %40
  %26 = phi ptr [ %21, %23 ], [ %41, %40 ]
  %27 = load i64, ptr %26, align 8, !tbaa !43
  %28 = icmp eq i64 %27, %8
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load ptr, ptr %24, align 8, !tbaa !44
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct._EntryInfo, ptr %26, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !28
  %35 = tail call i32 %30(ptr noundef nonnull %1, ptr noundef %34) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %29, %32
  %38 = getelementptr inbounds %struct._EntryInfo, ptr %26, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !31
  br label %43

40:                                               ; preds = %32, %25
  %41 = tail call ptr @GetNextValueInLinkedList(ptr noundef nonnull %15) #12
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %25, !llvm.loop !45

43:                                               ; preds = %40, %4, %17, %37
  %44 = phi ptr [ %39, %37 ], [ null, %17 ], [ null, %4 ], [ null, %40 ]
  %45 = load ptr, ptr %5, align 8, !tbaa !22
  tail call void @UnlockSemaphoreInfo(ptr noundef %45) #11
  br label %46

46:                                               ; preds = %43, %2
  %47 = phi ptr [ null, %2 ], [ %44, %43 ]
  ret ptr %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetValueFromLinkedList(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !5
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %6, label %36

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  tail call void @LockSemaphoreInfo(ptr noundef %8) #11
  %9 = icmp eq i64 %1, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  br label %29

12:                                               ; preds = %6
  %13 = load i64, ptr %3, align 8, !tbaa !5
  %14 = add i64 %13, -1
  %15 = icmp eq i64 %14, %1
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 3
  br label %29

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !18
  %21 = icmp sgt i64 %1, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %18, %22
  %23 = phi ptr [ %27, %22 ], [ %20, %18 ]
  %24 = phi i64 [ %26, %22 ], [ 0, %18 ]
  %25 = getelementptr inbounds %struct._ElementInfo, ptr %23, i64 0, i32 1
  %26 = add nuw nsw i64 %24, 1
  %27 = load ptr, ptr %25, align 8, !tbaa !18
  %28 = icmp eq i64 %26, %1
  br i1 %28, label %32, label %22, !llvm.loop !46

29:                                               ; preds = %16, %10
  %30 = phi ptr [ %11, %10 ], [ %17, %16 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !18
  br label %32

32:                                               ; preds = %22, %29, %18
  %33 = phi ptr [ %20, %18 ], [ %31, %29 ], [ %27, %22 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !12
  %35 = load ptr, ptr %7, align 8, !tbaa !15
  tail call void @UnlockSemaphoreInfo(ptr noundef %35) #11
  br label %36

36:                                               ; preds = %32, %2
  %37 = phi ptr [ null, %2 ], [ %34, %32 ]
  ret ptr %37
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i64 @HashPointerType(ptr noundef %0) #5 {
  %2 = ptrtoint ptr %0 to i64
  %3 = shl i64 %2, 9
  %4 = xor i64 %3, -1
  %5 = add i64 %4, %2
  %6 = lshr i64 %5, 14
  %7 = xor i64 %6, %5
  %8 = mul i64 %7, 17
  %9 = lshr i64 %8, 10
  %10 = xor i64 %9, %8
  ret i64 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @HashStringType(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @AcquireSignatureInfo() #11
  %3 = tail call ptr @StringToStringInfo(ptr noundef %0) #11
  tail call void @UpdateSignature(ptr noundef %2, ptr noundef %3) #11
  tail call void @FinalizeSignature(ptr noundef %2) #11
  %4 = tail call ptr @GetSignatureDigest(ptr noundef %2) #11
  %5 = tail call ptr @GetStringInfoDatum(ptr noundef %4) #11
  br label %6

6:                                                ; preds = %1, %6
  %7 = phi i64 [ 0, %1 ], [ %12, %6 ]
  %8 = phi i64 [ 0, %1 ], [ %13, %6 ]
  %9 = getelementptr inbounds i8, ptr %5, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !47
  %11 = zext i8 %10 to i64
  %12 = xor i64 %7, %11
  %13 = add nuw nsw i64 %8, 1
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %15, label %6, !llvm.loop !48

15:                                               ; preds = %6
  %16 = tail call ptr @DestroyStringInfo(ptr noundef %3) #11
  %17 = tail call ptr @DestroySignatureInfo(ptr noundef %2) #11
  ret i64 %12
}

; Function Attrs: optsize
declare ptr @AcquireSignatureInfo() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @StringToStringInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UpdateSignature(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @FinalizeSignature(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetSignatureDigest(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroySignatureInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @HashStringInfoType(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @AcquireSignatureInfo() #11
  tail call void @UpdateSignature(ptr noundef %2, ptr noundef %0) #11
  tail call void @FinalizeSignature(ptr noundef %2) #11
  %3 = tail call ptr @GetSignatureDigest(ptr noundef %2) #11
  %4 = tail call ptr @GetStringInfoDatum(ptr noundef %3) #11
  br label %5

5:                                                ; preds = %1, %5
  %6 = phi i64 [ 0, %1 ], [ %11, %5 ]
  %7 = phi i64 [ 0, %1 ], [ %12, %5 ]
  %8 = getelementptr inbounds i8, ptr %4, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !47
  %10 = zext i8 %9 to i64
  %11 = xor i64 %6, %10
  %12 = add nuw nsw i64 %7, 1
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %14, label %5, !llvm.loop !49

14:                                               ; preds = %5
  %15 = tail call ptr @DestroySignatureInfo(ptr noundef %2) #11
  ret i64 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @InsertValueInLinkedList(ptr nocapture noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %76, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !5
  %8 = icmp ult i64 %7, %1
  br i1 %8, label %76, label %9

9:                                                ; preds = %5
  %10 = load i64, ptr %0, align 8, !tbaa !11
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %76, label %12

12:                                               ; preds = %9
  %13 = tail call dereferenceable_or_null(16) ptr @AcquireMagickMemory(i64 noundef 16) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %76, label %15

15:                                               ; preds = %12
  store ptr %2, ptr %13, align 8, !tbaa !12
  %16 = getelementptr inbounds %struct._ElementInfo, ptr %13, i64 0, i32 1
  store ptr null, ptr %16, align 8, !tbaa !14
  %17 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  tail call void @LockSemaphoreInfo(ptr noundef %18) #11
  %19 = load i64, ptr %6, align 8, !tbaa !5
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store ptr %13, ptr %22, align 8, !tbaa !16
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  store ptr %13, ptr %27, align 8, !tbaa !19
  %28 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 3
  store ptr %13, ptr %28, align 8, !tbaa !17
  br label %73

29:                                               ; preds = %15
  %30 = icmp eq i64 %1, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !16
  %34 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !19
  %36 = icmp eq ptr %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store ptr %13, ptr %32, align 8, !tbaa !16
  br label %38

38:                                               ; preds = %37, %31
  store ptr %35, ptr %16, align 8, !tbaa !14
  store ptr %13, ptr %34, align 8, !tbaa !19
  br label %73

39:                                               ; preds = %29
  %40 = icmp eq i64 %19, %1
  br i1 %40, label %41, label %50

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !16
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store ptr %13, ptr %42, align 8, !tbaa !16
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !17
  %49 = getelementptr inbounds %struct._ElementInfo, ptr %48, i64 0, i32 1
  store ptr %13, ptr %49, align 8, !tbaa !14
  store ptr %13, ptr %47, align 8, !tbaa !17
  br label %73

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !19
  %53 = getelementptr inbounds %struct._ElementInfo, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !14
  store ptr %54, ptr %16, align 8, !tbaa !14
  %55 = icmp sgt i64 %1, 1
  br i1 %55, label %56, label %63

56:                                               ; preds = %50, %56
  %57 = phi ptr [ %60, %56 ], [ %54, %50 ]
  %58 = phi i64 [ %61, %56 ], [ 1, %50 ]
  %59 = getelementptr inbounds %struct._ElementInfo, ptr %57, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !14
  store ptr %60, ptr %16, align 8, !tbaa !14
  %61 = add nuw nsw i64 %58, 1
  %62 = icmp eq i64 %61, %1
  br i1 %62, label %63, label %56, !llvm.loop !50

63:                                               ; preds = %56, %50
  %64 = phi ptr [ %54, %50 ], [ %60, %56 ]
  %65 = phi ptr [ %52, %50 ], [ %57, %56 ]
  %66 = getelementptr inbounds %struct._ElementInfo, ptr %65, i64 0, i32 1
  store ptr %64, ptr %66, align 8, !tbaa !14
  %67 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !16
  %69 = getelementptr inbounds %struct._ElementInfo, ptr %64, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !14
  %71 = icmp eq ptr %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  store ptr %64, ptr %67, align 8, !tbaa !16
  br label %73

73:                                               ; preds = %63, %72, %38, %46, %26
  %74 = add i64 %19, 1
  store i64 %74, ptr %6, align 8, !tbaa !5
  %75 = load ptr, ptr %17, align 8, !tbaa !15
  tail call void @UnlockSemaphoreInfo(ptr noundef %75) #11
  br label %76

76:                                               ; preds = %12, %5, %9, %3, %73
  %77 = phi i32 [ 1, %73 ], [ 0, %3 ], [ 0, %9 ], [ 0, %5 ], [ 0, %12 ]
  ret i32 %77
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @InsertValueInSortedLinkedList(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  %6 = icmp eq ptr %3, null
  %7 = or i1 %5, %6
  br i1 %7, label %70, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !5
  %11 = load i64, ptr %0, align 8, !tbaa !11
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %70, label %13

13:                                               ; preds = %8
  %14 = tail call dereferenceable_or_null(16) ptr @AcquireMagickMemory(i64 noundef 16) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %70, label %16

16:                                               ; preds = %13
  store ptr %3, ptr %14, align 8, !tbaa !12
  %17 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  tail call void @LockSemaphoreInfo(ptr noundef %18) #11
  %19 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  %20 = getelementptr inbounds %struct._ElementInfo, ptr %14, i64 0, i32 1
  %21 = load ptr, ptr %19, align 8, !tbaa !18
  store ptr %21, ptr %20, align 8, !tbaa !14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %63, label %23

23:                                               ; preds = %16
  %24 = icmp ne ptr %2, null
  br label %25

25:                                               ; preds = %23, %54
  %26 = phi ptr [ %21, %23 ], [ %56, %54 ]
  %27 = phi ptr [ null, %23 ], [ %34, %54 ]
  %28 = load ptr, ptr %26, align 8, !tbaa !12
  %29 = tail call i32 %1(ptr noundef %3, ptr noundef %28) #11
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %25
  %32 = icmp eq i32 %29, 0
  %33 = and i1 %24, %32
  %34 = load ptr, ptr %20, align 8, !tbaa !14
  br i1 %33, label %35, label %54

35:                                               ; preds = %31
  %36 = load ptr, ptr %34, align 8, !tbaa !12
  store ptr %36, ptr %2, align 8, !tbaa !18
  %37 = load ptr, ptr %20, align 8, !tbaa !14
  %38 = getelementptr inbounds %struct._ElementInfo, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !14
  store ptr %39, ptr %20, align 8, !tbaa !14
  %40 = icmp eq ptr %27, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct._ElementInfo, ptr %27, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !14
  %44 = tail call ptr @RelinquishMagickMemory(ptr noundef %43) #11
  store ptr %44, ptr %42, align 8, !tbaa !14
  br label %45

45:                                               ; preds = %41, %35
  %46 = load i64, ptr %9, align 8, !tbaa !5
  %47 = add i64 %46, -1
  store i64 %47, ptr %9, align 8, !tbaa !5
  br label %48

48:                                               ; preds = %25, %45
  %49 = icmp eq ptr %27, null
  %50 = getelementptr inbounds %struct._ElementInfo, ptr %27, i64 0, i32 1
  %51 = select i1 %49, ptr %19, ptr %50
  store ptr %14, ptr %51, align 8, !tbaa !18
  %52 = load ptr, ptr %20, align 8, !tbaa !14
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %66

54:                                               ; preds = %31
  %55 = getelementptr inbounds %struct._ElementInfo, ptr %34, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !18
  store ptr %56, ptr %20, align 8, !tbaa !14
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %25, !llvm.loop !51

58:                                               ; preds = %48
  %59 = icmp eq ptr %27, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %54, %58
  %61 = phi ptr [ %27, %58 ], [ %34, %54 ]
  %62 = getelementptr inbounds %struct._ElementInfo, ptr %61, i64 0, i32 1
  br label %63

63:                                               ; preds = %58, %16, %60
  %64 = phi ptr [ %62, %60 ], [ %19, %16 ], [ %19, %58 ]
  store ptr %14, ptr %64, align 8, !tbaa !18
  %65 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 3
  store ptr %14, ptr %65, align 8, !tbaa !17
  br label %66

66:                                               ; preds = %63, %48
  %67 = load i64, ptr %9, align 8, !tbaa !5
  %68 = add i64 %67, 1
  store i64 %68, ptr %9, align 8, !tbaa !5
  %69 = load ptr, ptr %17, align 8, !tbaa !15
  tail call void @UnlockSemaphoreInfo(ptr noundef %69) #11
  br label %70

70:                                               ; preds = %13, %8, %4, %66
  %71 = phi i32 [ 1, %66 ], [ 0, %4 ], [ 0, %8 ], [ 0, %13 ]
  ret i32 %71
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @IsHashmapEmpty(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 5
  %3 = load i64, ptr %2, align 8, !tbaa !41
  %4 = icmp eq i64 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @IsLinkedListEmpty(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i64 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @LinkedListToArray(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  tail call void @LockSemaphoreInfo(ptr noundef %6) #11
  %7 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %17, %10 ], [ %8, %4 ]
  %12 = phi i64 [ %16, %10 ], [ 0, %4 ]
  %13 = load ptr, ptr %11, align 8, !tbaa !12
  %14 = getelementptr inbounds ptr, ptr %1, i64 %12
  store ptr %13, ptr %14, align 8, !tbaa !18
  %15 = getelementptr inbounds %struct._ElementInfo, ptr %11, i64 0, i32 1
  %16 = add nuw nsw i64 %12, 1
  %17 = load ptr, ptr %15, align 8, !tbaa !18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %10, !llvm.loop !52

19:                                               ; preds = %10, %4
  %20 = load ptr, ptr %5, align 8, !tbaa !15
  tail call void @UnlockSemaphoreInfo(ptr noundef %20) #11
  br label %21

21:                                               ; preds = %2, %19
  %22 = phi i32 [ 1, %19 ], [ 0, %2 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @NewHashmap(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._ExceptionInfo, align 8
  %7 = alloca %struct._ExceptionInfo, align 8
  %8 = tail call dereferenceable_or_null(88) ptr @AcquireMagickMemory(i64 noundef 88) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #13
  call void @GetExceptionInfo(ptr noundef nonnull %6) #11
  %11 = tail call ptr @__errno_location() #14
  %12 = load i32, ptr %11, align 4, !tbaa !53
  %13 = call ptr @GetExceptionMessage(i32 noundef %12) #11
  %14 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1314, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %13) #11
  %15 = call ptr @DestroyString(ptr noundef %13) #11
  call void @CatchException(ptr noundef nonnull %6) #11
  %16 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %6) #11
  call void @MagickCoreTerminus() #11
  call void @_exit(i32 noundef 1) #15
  unreachable

17:                                               ; preds = %5
  %18 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %8, i32 noundef 0, i64 noundef 88) #11
  %19 = icmp eq ptr %1, null
  %20 = select i1 %19, ptr @HashPointerType, ptr %1
  store ptr %20, ptr %8, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct._HashmapInfo, ptr %8, i64 0, i32 1
  store ptr %2, ptr %21, align 8, !tbaa !44
  %22 = getelementptr inbounds %struct._HashmapInfo, ptr %8, i64 0, i32 2
  store ptr %3, ptr %22, align 8, !tbaa !27
  %23 = getelementptr inbounds %struct._HashmapInfo, ptr %8, i64 0, i32 3
  store ptr %4, ptr %23, align 8, !tbaa !30
  %24 = getelementptr inbounds %struct._HashmapInfo, ptr %8, i64 0, i32 5
  store i64 0, ptr %24, align 8, !tbaa !41
  %25 = getelementptr inbounds %struct._HashmapInfo, ptr %8, i64 0, i32 4
  store i64 %0, ptr %25, align 8, !tbaa !25
  %26 = getelementptr inbounds %struct._HashmapInfo, ptr %8, i64 0, i32 8
  store ptr null, ptr %26, align 8, !tbaa !26
  %27 = icmp eq i64 %0, -1
  br i1 %27, label %32, label %28

28:                                               ; preds = %17
  %29 = add nuw i64 %0, 1
  %30 = tail call ptr @AcquireQuantumMemory(i64 noundef %29, i64 noundef 8) #16
  store ptr %30, ptr %26, align 8, !tbaa !26
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %17, %28
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #13
  call void @GetExceptionInfo(ptr noundef nonnull %7) #11
  %33 = tail call ptr @__errno_location() #14
  %34 = load i32, ptr %33, align 4, !tbaa !53
  %35 = call ptr @GetExceptionMessage(i32 noundef %34) #11
  %36 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1331, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %35) #11
  %37 = call ptr @DestroyString(ptr noundef %35) #11
  call void @CatchException(ptr noundef nonnull %7) #11
  %38 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %7) #11
  call void @MagickCoreTerminus() #11
  call void @_exit(i32 noundef 1) #15
  unreachable

39:                                               ; preds = %28
  %40 = shl i64 %0, 3
  %41 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %30, i32 noundef 0, i64 noundef %40) #11
  %42 = tail call ptr @AllocateSemaphoreInfo() #11
  %43 = getelementptr inbounds %struct._HashmapInfo, ptr %8, i64 0, i32 9
  store ptr %42, ptr %43, align 8, !tbaa !22
  %44 = getelementptr inbounds %struct._HashmapInfo, ptr %8, i64 0, i32 10
  store i64 2880220587, ptr %44, align 8, !tbaa !34
  ret ptr %8
}

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @NewLinkedList(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call dereferenceable_or_null(56) ptr @AcquireMagickMemory(i64 noundef 56) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #13
  call void @GetExceptionInfo(ptr noundef nonnull %2) #11
  %6 = tail call ptr @__errno_location() #14
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = call ptr @GetExceptionMessage(i32 noundef %7) #11
  %9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1369, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %8) #11
  %10 = call ptr @DestroyString(ptr noundef %8) #11
  call void @CatchException(ptr noundef nonnull %2) #11
  %11 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #11
  call void @MagickCoreTerminus() #11
  call void @_exit(i32 noundef 1) #15
  unreachable

12:                                               ; preds = %1
  %13 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %3, i32 noundef 0, i64 noundef 56) #11
  %14 = icmp eq i64 %0, 0
  %15 = select i1 %14, i64 -1, i64 %0
  store i64 %15, ptr %3, align 8, !tbaa !11
  %16 = getelementptr inbounds %struct._LinkedListInfo, ptr %3, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, i8 0, i64 32, i1 false)
  %17 = tail call ptr @AllocateSemaphoreInfo() #11
  %18 = getelementptr inbounds %struct._LinkedListInfo, ptr %3, i64 0, i32 5
  store ptr %17, ptr %18, align 8, !tbaa !15
  %19 = getelementptr inbounds %struct._LinkedListInfo, ptr %3, i64 0, i32 6
  store i64 2880220587, ptr %19, align 8, !tbaa !36
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PutEntryInHashmap(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  %5 = icmp eq ptr %2, null
  %6 = or i1 %4, %5
  br i1 %6, label %99, label %7

7:                                                ; preds = %3
  %8 = tail call dereferenceable_or_null(24) ptr @AcquireMagickMemory(i64 noundef 24) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %99, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  tail call void @LockSemaphoreInfo(ptr noundef %12) #11
  %13 = load ptr, ptr %0, align 8, !tbaa !42
  %14 = tail call i64 %13(ptr noundef nonnull %1) #11
  store i64 %14, ptr %8, align 8, !tbaa !43
  %15 = getelementptr inbounds %struct._EntryInfo, ptr %8, i64 0, i32 1
  store ptr %1, ptr %15, align 8, !tbaa !28
  %16 = getelementptr inbounds %struct._EntryInfo, ptr %8, i64 0, i32 2
  store ptr %2, ptr %16, align 8, !tbaa !31
  %17 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !26
  %19 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 4
  %20 = load i64, ptr %19, align 8, !tbaa !25
  %21 = urem i64 %14, %20
  %22 = getelementptr inbounds ptr, ptr %18, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !18
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %10
  %26 = tail call ptr @NewLinkedList(i64 noundef 0) #12
  %27 = load ptr, ptr %17, align 8, !tbaa !26
  %28 = load i64, ptr %8, align 8, !tbaa !43
  %29 = load i64, ptr %19, align 8, !tbaa !25
  %30 = urem i64 %28, %29
  %31 = getelementptr inbounds ptr, ptr %27, i64 %30
  store ptr %26, ptr %31, align 8, !tbaa !18
  br label %77

32:                                               ; preds = %10
  %33 = getelementptr inbounds %struct._LinkedListInfo, ptr %23, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !19
  %35 = getelementptr inbounds %struct._LinkedListInfo, ptr %23, i64 0, i32 4
  store ptr %34, ptr %35, align 8, !tbaa !16
  %36 = tail call ptr @GetNextValueInLinkedList(ptr noundef nonnull %23) #12
  %37 = icmp eq ptr %36, null
  br i1 %37, label %77, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 1
  br label %40

40:                                               ; preds = %38, %73
  %41 = phi i64 [ 0, %38 ], [ %75, %73 ]
  %42 = phi ptr [ %36, %38 ], [ %74, %73 ]
  %43 = load i64, ptr %42, align 8, !tbaa !43
  %44 = load i64, ptr %8, align 8, !tbaa !43
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %73

46:                                               ; preds = %40
  %47 = load ptr, ptr %39, align 8, !tbaa !44
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct._EntryInfo, ptr %42, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !28
  %52 = tail call i32 %47(ptr noundef %1, ptr noundef %51) #11
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %73, label %54

54:                                               ; preds = %46, %49
  %55 = tail call ptr @RemoveElementFromLinkedList(ptr noundef nonnull %23, i64 noundef %41) #12
  %56 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !27
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct._EntryInfo, ptr %42, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !28
  %62 = tail call ptr %57(ptr noundef %61) #11
  store ptr %62, ptr %60, align 8, !tbaa !28
  br label %63

63:                                               ; preds = %59, %54
  %64 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !30
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct._EntryInfo, ptr %42, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !31
  %70 = tail call ptr %65(ptr noundef %69) #11
  store ptr %70, ptr %68, align 8, !tbaa !31
  br label %71

71:                                               ; preds = %63, %67
  %72 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %42) #11
  br label %77

73:                                               ; preds = %49, %40
  %74 = tail call ptr @GetNextValueInLinkedList(ptr noundef nonnull %23) #12
  %75 = add i64 %41, 1
  %76 = icmp eq ptr %74, null
  br i1 %76, label %77, label %40, !llvm.loop !54

77:                                               ; preds = %73, %32, %71, %25
  %78 = phi ptr [ %26, %25 ], [ %23, %71 ], [ %23, %32 ], [ %23, %73 ]
  %79 = tail call i32 @InsertValueInLinkedList(ptr noundef %78, i64 noundef 0, ptr noundef nonnull %8) #12, !range !55
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %8) #11
  br label %96

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct._LinkedListInfo, ptr %78, i64 0, i32 1
  %85 = load i64, ptr %84, align 8, !tbaa !5
  %86 = load i64, ptr %19, align 8, !tbaa !25
  %87 = add i64 %86, -1
  %88 = icmp ult i64 %85, %87
  br i1 %88, label %92, label %89

89:                                               ; preds = %83
  %90 = tail call fastcc i32 @IncreaseHashmapCapacity(ptr noundef nonnull %0) #12, !range !55
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89, %83
  %93 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 5
  %94 = load i64, ptr %93, align 8, !tbaa !41
  %95 = add i64 %94, 1
  store i64 %95, ptr %93, align 8, !tbaa !41
  br label %96

96:                                               ; preds = %89, %81, %92
  %97 = phi i32 [ 1, %92 ], [ 0, %81 ], [ 0, %89 ]
  %98 = load ptr, ptr %11, align 8, !tbaa !22
  tail call void @UnlockSemaphoreInfo(ptr noundef %98) #11
  br label %99

99:                                               ; preds = %96, %7, %3
  %100 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %97, %96 ]
  ret i32 %100
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RemoveElementFromLinkedList(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !5
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %6, label %58

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  tail call void @LockSemaphoreInfo(ptr noundef %8) #11
  %9 = icmp eq i64 %1, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !16
  %13 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._ElementInfo, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !14
  store ptr %18, ptr %11, align 8, !tbaa !16
  br label %19

19:                                               ; preds = %16, %10
  %20 = load ptr, ptr %14, align 8, !tbaa !12
  %21 = getelementptr inbounds %struct._ElementInfo, ptr %14, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !14
  store ptr %22, ptr %13, align 8, !tbaa !19
  br label %51

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !18
  %26 = icmp sgt i64 %1, 1
  br i1 %26, label %27, label %34

27:                                               ; preds = %23, %27
  %28 = phi ptr [ %32, %27 ], [ %25, %23 ]
  %29 = phi i64 [ %31, %27 ], [ 1, %23 ]
  %30 = getelementptr inbounds %struct._ElementInfo, ptr %28, i64 0, i32 1
  %31 = add nuw nsw i64 %29, 1
  %32 = load ptr, ptr %30, align 8, !tbaa !18
  %33 = icmp eq i64 %31, %1
  br i1 %33, label %34, label %27, !llvm.loop !56

34:                                               ; preds = %27, %23
  %35 = phi ptr [ %25, %23 ], [ %32, %27 ]
  %36 = getelementptr inbounds %struct._ElementInfo, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !14
  %38 = getelementptr inbounds %struct._ElementInfo, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !14
  store ptr %39, ptr %36, align 8, !tbaa !14
  %40 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !17
  %42 = icmp eq ptr %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store ptr %35, ptr %40, align 8, !tbaa !17
  br label %44

44:                                               ; preds = %43, %34
  %45 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !16
  %47 = icmp eq ptr %46, %37
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store ptr %39, ptr %45, align 8, !tbaa !16
  br label %49

49:                                               ; preds = %48, %44
  %50 = load ptr, ptr %37, align 8, !tbaa !12
  br label %51

51:                                               ; preds = %49, %19
  %52 = phi ptr [ %37, %49 ], [ %14, %19 ]
  %53 = phi ptr [ %50, %49 ], [ %20, %19 ]
  %54 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %52) #11
  %55 = load i64, ptr %3, align 8, !tbaa !5
  %56 = add i64 %55, -1
  store i64 %56, ptr %3, align 8, !tbaa !5
  %57 = load ptr, ptr %7, align 8, !tbaa !15
  tail call void @UnlockSemaphoreInfo(ptr noundef %57) #11
  br label %58

58:                                               ; preds = %2, %51
  %59 = phi ptr [ %53, %51 ], [ null, %2 ]
  ret ptr %59
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @IncreaseHashmapCapacity(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !25
  br label %4

4:                                                ; preds = %1, %9
  %5 = phi i64 [ 0, %1 ], [ %10, %9 ]
  %6 = getelementptr inbounds [20 x i64], ptr @__const.IncreaseHashmapCapacity.capacities, i64 0, i64 %5
  %7 = load i64, ptr %6, align 8, !tbaa !57
  %8 = icmp ult i64 %3, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = add nuw nsw i64 %5, 1
  %11 = icmp eq i64 %10, 20
  br i1 %11, label %78, label %4, !llvm.loop !58

12:                                               ; preds = %4
  %13 = icmp eq i64 %5, 19
  br i1 %13, label %78, label %14

14:                                               ; preds = %12
  %15 = add nuw nsw i64 %5, 1
  %16 = getelementptr inbounds [20 x i64], ptr @__const.IncreaseHashmapCapacity.capacities, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !57
  %18 = add i64 %17, 1
  %19 = tail call ptr @AcquireQuantumMemory(i64 noundef %18, i64 noundef 8) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %78, label %21

21:                                               ; preds = %14
  %22 = shl i64 %17, 3
  %23 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %19, i32 noundef 0, i64 noundef %22) #11
  %24 = load i64, ptr %2, align 8, !tbaa !25
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %74

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 8
  br label %28

28:                                               ; preds = %26, %70
  %29 = phi i64 [ %24, %26 ], [ %71, %70 ]
  %30 = phi i64 [ 0, %26 ], [ %72, %70 ]
  %31 = load ptr, ptr %27, align 8, !tbaa !26
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !18
  %34 = icmp eq ptr %33, null
  br i1 %34, label %70, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct._LinkedListInfo, ptr %33, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !15
  tail call void @LockSemaphoreInfo(ptr noundef %37) #11
  %38 = getelementptr inbounds %struct._LinkedListInfo, ptr %33, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !19
  %40 = icmp eq ptr %39, null
  br i1 %40, label %65, label %41

41:                                               ; preds = %35, %56
  %42 = phi ptr [ %44, %56 ], [ %39, %35 ]
  %43 = getelementptr inbounds %struct._ElementInfo, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !14
  %45 = load ptr, ptr %42, align 8, !tbaa !12
  %46 = load i64, ptr %45, align 8, !tbaa !43
  %47 = urem i64 %46, %17
  %48 = getelementptr inbounds ptr, ptr %19, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !18
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = tail call ptr @NewLinkedList(i64 noundef 0) #12
  %53 = load i64, ptr %45, align 8, !tbaa !43
  %54 = urem i64 %53, %17
  %55 = getelementptr inbounds ptr, ptr %19, i64 %54
  store ptr %52, ptr %55, align 8, !tbaa !18
  br label %56

56:                                               ; preds = %51, %41
  %57 = phi ptr [ %52, %51 ], [ %49, %41 ]
  %58 = getelementptr inbounds %struct._LinkedListInfo, ptr %57, i64 0, i32 4
  store ptr %42, ptr %58, align 8, !tbaa !16
  %59 = getelementptr inbounds %struct._LinkedListInfo, ptr %57, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !19
  store ptr %60, ptr %43, align 8, !tbaa !14
  store ptr %42, ptr %59, align 8, !tbaa !19
  %61 = getelementptr inbounds %struct._LinkedListInfo, ptr %57, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !5
  %63 = add i64 %62, 1
  store i64 %63, ptr %61, align 8, !tbaa !5
  %64 = icmp eq ptr %44, null
  br i1 %64, label %65, label %41, !llvm.loop !59

65:                                               ; preds = %56, %35
  %66 = getelementptr inbounds %struct._LinkedListInfo, ptr %33, i64 0, i32 6
  store i64 -2880220588, ptr %66, align 8, !tbaa !36
  %67 = load ptr, ptr %36, align 8, !tbaa !15
  tail call void @UnlockSemaphoreInfo(ptr noundef %67) #11
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %36) #11
  %68 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %33) #11
  %69 = load i64, ptr %2, align 8, !tbaa !25
  br label %70

70:                                               ; preds = %28, %65
  %71 = phi i64 [ %29, %28 ], [ %69, %65 ]
  %72 = add nuw nsw i64 %30, 1
  %73 = icmp slt i64 %72, %71
  br i1 %73, label %28, label %74, !llvm.loop !60

74:                                               ; preds = %70, %21
  %75 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 8
  %76 = load ptr, ptr %75, align 8, !tbaa !26
  %77 = tail call ptr @RelinquishMagickMemory(ptr noundef %76) #11
  store ptr %19, ptr %75, align 8, !tbaa !26
  store i64 %17, ptr %2, align 8, !tbaa !25
  br label %78

78:                                               ; preds = %9, %14, %12, %74
  %79 = phi i32 [ 1, %74 ], [ 0, %12 ], [ 0, %14 ], [ 0, %9 ]
  ret i32 %79
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RemoveElementByValueFromLinkedList(ptr nocapture noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i64 %4, 0
  %6 = icmp eq ptr %1, null
  %7 = or i1 %6, %5
  br i1 %7, label %52, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !15
  tail call void @LockSemaphoreInfo(ptr noundef %10) #11
  %11 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  %13 = load ptr, ptr %12, align 8, !tbaa !12
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %23

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !16
  %18 = icmp eq ptr %17, %12
  %19 = getelementptr inbounds %struct._ElementInfo, ptr %12, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !14
  br i1 %18, label %21, label %22

21:                                               ; preds = %15
  store ptr %20, ptr %16, align 8, !tbaa !16
  br label %22

22:                                               ; preds = %15, %21
  store ptr %20, ptr %11, align 8, !tbaa !19
  br label %44

23:                                               ; preds = %8, %28
  %24 = phi ptr [ %26, %28 ], [ %12, %8 ]
  %25 = getelementptr inbounds %struct._ElementInfo, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !14
  %27 = icmp eq ptr %26, null
  br i1 %27, label %49, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr %26, align 8, !tbaa !12
  %30 = icmp eq ptr %29, %1
  br i1 %30, label %31, label %23, !llvm.loop !61

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct._ElementInfo, ptr %24, i64 0, i32 1
  %33 = getelementptr inbounds %struct._ElementInfo, ptr %26, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !14
  store ptr %34, ptr %32, align 8, !tbaa !14
  %35 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !17
  %37 = icmp eq ptr %26, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store ptr %24, ptr %35, align 8, !tbaa !17
  br label %39

39:                                               ; preds = %38, %31
  %40 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !16
  %42 = icmp eq ptr %41, %26
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store ptr %34, ptr %40, align 8, !tbaa !16
  br label %44

44:                                               ; preds = %43, %39, %22
  %45 = phi ptr [ %12, %22 ], [ %26, %39 ], [ %26, %43 ]
  %46 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %45) #11
  %47 = load i64, ptr %3, align 8, !tbaa !5
  %48 = add i64 %47, -1
  store i64 %48, ptr %3, align 8, !tbaa !5
  br label %49

49:                                               ; preds = %23, %44
  %50 = phi ptr [ %1, %44 ], [ null, %23 ]
  %51 = load ptr, ptr %9, align 8, !tbaa !15
  tail call void @UnlockSemaphoreInfo(ptr noundef %51) #11
  br label %52

52:                                               ; preds = %49, %2
  %53 = phi ptr [ null, %2 ], [ %50, %49 ]
  ret ptr %53
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RemoveEntryFromHashmap(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %63, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  tail call void @LockSemaphoreInfo(ptr noundef %6) #11
  %7 = load ptr, ptr %0, align 8, !tbaa !42
  %8 = tail call i64 %7(ptr noundef nonnull %1) #11
  %9 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !26
  %11 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !25
  %13 = urem i64 %8, %12
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %60, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct._LinkedListInfo, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !19
  %20 = getelementptr inbounds %struct._LinkedListInfo, ptr %15, i64 0, i32 4
  store ptr %19, ptr %20, align 8, !tbaa !16
  %21 = tail call ptr @GetNextValueInLinkedList(ptr noundef nonnull %15) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %60, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 1
  br label %25

25:                                               ; preds = %23, %56
  %26 = phi ptr [ %21, %23 ], [ %57, %56 ]
  %27 = phi i64 [ 0, %23 ], [ %58, %56 ]
  %28 = load i64, ptr %26, align 8, !tbaa !43
  %29 = icmp eq i64 %28, %8
  br i1 %29, label %30, label %56

30:                                               ; preds = %25
  %31 = load ptr, ptr %24, align 8, !tbaa !44
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct._EntryInfo, ptr %26, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !28
  %36 = tail call i32 %31(ptr noundef nonnull %1, ptr noundef %35) #11
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %30, %33
  %39 = tail call ptr @RemoveElementFromLinkedList(ptr noundef nonnull %15, i64 noundef %27) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %60, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !27
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct._EntryInfo, ptr %39, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !28
  %48 = tail call ptr %43(ptr noundef %47) #11
  store ptr %48, ptr %46, align 8, !tbaa !28
  br label %49

49:                                               ; preds = %45, %41
  %50 = getelementptr inbounds %struct._EntryInfo, ptr %39, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !31
  %52 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %39) #11
  %53 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 5
  %54 = load i64, ptr %53, align 8, !tbaa !41
  %55 = add i64 %54, -1
  store i64 %55, ptr %53, align 8, !tbaa !41
  br label %60

56:                                               ; preds = %33, %25
  %57 = tail call ptr @GetNextValueInLinkedList(ptr noundef nonnull %15) #12
  %58 = add i64 %27, 1
  %59 = icmp eq ptr %57, null
  br i1 %59, label %60, label %25, !llvm.loop !62

60:                                               ; preds = %56, %4, %17, %38, %49
  %61 = phi ptr [ %51, %49 ], [ null, %38 ], [ null, %17 ], [ null, %4 ], [ null, %56 ]
  %62 = load ptr, ptr %5, align 8, !tbaa !22
  tail call void @UnlockSemaphoreInfo(ptr noundef %62) #11
  br label %63

63:                                               ; preds = %60, %2
  %64 = phi ptr [ null, %2 ], [ %61, %60 ]
  ret ptr %64
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RemoveLastElementFromLinkedList(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %39, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  tail call void @LockSemaphoreInfo(ptr noundef %7) #11
  %8 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  store ptr null, ptr %8, align 8, !tbaa !16
  br label %14

14:                                               ; preds = %13, %5
  %15 = load i64, ptr %2, align 8, !tbaa !5
  %16 = icmp eq i64 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !19
  %20 = load ptr, ptr %19, align 8, !tbaa !12
  store ptr null, ptr %18, align 8, !tbaa !19
  %21 = tail call ptr @RelinquishMagickMemory(ptr noundef %11) #11
  store ptr %21, ptr %10, align 8, !tbaa !17
  br label %34

22:                                               ; preds = %14
  %23 = load ptr, ptr %11, align 8, !tbaa !12
  %24 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !19
  br label %26

26:                                               ; preds = %26, %22
  %27 = phi ptr [ %25, %22 ], [ %29, %26 ]
  %28 = getelementptr inbounds %struct._ElementInfo, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !14
  %30 = icmp eq ptr %29, %11
  br i1 %30, label %31, label %26, !llvm.loop !63

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct._ElementInfo, ptr %27, i64 0, i32 1
  %33 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %11) #11
  store ptr %27, ptr %10, align 8, !tbaa !17
  store ptr null, ptr %32, align 8, !tbaa !14
  br label %34

34:                                               ; preds = %31, %17
  %35 = phi ptr [ %20, %17 ], [ %23, %31 ]
  %36 = load i64, ptr %2, align 8, !tbaa !5
  %37 = add i64 %36, -1
  store i64 %37, ptr %2, align 8, !tbaa !5
  %38 = load ptr, ptr %6, align 8, !tbaa !15
  tail call void @UnlockSemaphoreInfo(ptr noundef %38) #11
  br label %39

39:                                               ; preds = %1, %34
  %40 = phi ptr [ %35, %34 ], [ null, %1 ]
  ret ptr %40
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ResetHashmapIterator(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  tail call void @LockSemaphoreInfo(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 6
  store i64 0, ptr %4, align 8, !tbaa !37
  %5 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 7
  store i32 0, ptr %5, align 8, !tbaa !38
  %6 = load ptr, ptr %2, align 8, !tbaa !22
  tail call void @UnlockSemaphoreInfo(ptr noundef %6) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ResetLinkedListIterator(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !15
  tail call void @LockSemaphoreInfo(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 4
  store ptr %5, ptr %6, align 8, !tbaa !16
  %7 = load ptr, ptr %2, align 8, !tbaa !15
  tail call void @UnlockSemaphoreInfo(ptr noundef %7) #11
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind optsize allocsize(0) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize willreturn memory(none) }
attributes #15 = { noreturn nounwind optsize }
attributes #16 = { nounwind optsize allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"_LinkedListInfo", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !7, i64 48}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !7, i64 0}
!12 = !{!13, !10, i64 0}
!13 = !{!"_ElementInfo", !10, i64 0, !10, i64 8}
!14 = !{!13, !10, i64 8}
!15 = !{!6, !10, i64 40}
!16 = !{!6, !10, i64 32}
!17 = !{!6, !10, i64 24}
!18 = !{!10, !10, i64 0}
!19 = !{!6, !10, i64 16}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !10, i64 72}
!23 = !{!"_HashmapInfo", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !24, i64 56, !10, i64 64, !10, i64 72, !7, i64 80}
!24 = !{!"int", !8, i64 0}
!25 = !{!23, !7, i64 32}
!26 = !{!23, !10, i64 64}
!27 = !{!23, !10, i64 16}
!28 = !{!29, !10, i64 8}
!29 = !{!"_EntryInfo", !7, i64 0, !10, i64 8, !10, i64 16}
!30 = !{!23, !10, i64 24}
!31 = !{!29, !10, i64 16}
!32 = distinct !{!32, !21}
!33 = distinct !{!33, !21}
!34 = !{!23, !7, i64 80}
!35 = distinct !{!35, !21}
!36 = !{!6, !7, i64 48}
!37 = !{!23, !7, i64 48}
!38 = !{!23, !24, i64 56}
!39 = distinct !{!39, !21}
!40 = distinct !{!40, !21}
!41 = !{!23, !7, i64 40}
!42 = !{!23, !10, i64 0}
!43 = !{!29, !7, i64 0}
!44 = !{!23, !10, i64 8}
!45 = distinct !{!45, !21}
!46 = distinct !{!46, !21}
!47 = !{!8, !8, i64 0}
!48 = distinct !{!48, !21}
!49 = distinct !{!49, !21}
!50 = distinct !{!50, !21}
!51 = distinct !{!51, !21}
!52 = distinct !{!52, !21}
!53 = !{!24, !24, i64 0}
!54 = distinct !{!54, !21}
!55 = !{i32 0, i32 2}
!56 = distinct !{!56, !21}
!57 = !{!7, !7, i64 0}
!58 = distinct !{!58, !21}
!59 = distinct !{!59, !21}
!60 = distinct !{!60, !21}
!61 = distinct !{!61, !21}
!62 = distinct !{!62, !21}
!63 = distinct !{!63, !21}
