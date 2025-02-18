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

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @AppendValueToLinkedList(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !34
  %5 = load i64, ptr %0, align 8, !tbaa !40
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = tail call dereferenceable_or_null(16) ptr @AcquireMagickMemory(i64 noundef 16) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %7
  store ptr %1, ptr %8, align 8, !tbaa !41
  %11 = getelementptr inbounds %struct._ElementInfo, ptr %8, i64 0, i32 1
  store ptr null, ptr %11, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %13) #11
  %14 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store ptr %8, ptr %14, align 8, !tbaa !45
  br label %18

18:                                               ; preds = %17, %10
  %19 = load i64, ptr %3, align 8, !tbaa !34
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  br label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = getelementptr inbounds %struct._ElementInfo, ptr %25, i64 0, i32 1
  br label %27

27:                                               ; preds = %23, %21
  %28 = phi ptr [ %26, %23 ], [ %22, %21 ]
  store ptr %8, ptr %28, align 8, !tbaa !47
  %29 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 3
  store ptr %8, ptr %29, align 8, !tbaa !46
  %30 = add i64 %19, 1
  store i64 %30, ptr %3, align 8, !tbaa !34
  %31 = load ptr, ptr %12, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %31) #11
  br label %32

32:                                               ; preds = %7, %2, %27
  %33 = phi i32 [ 1, %27 ], [ 0, %2 ], [ 0, %7 ]
  ret i32 %33
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #2

declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ClearLinkedList(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = icmp eq ptr %1, null
  br label %10

10:                                               ; preds = %8, %15
  %11 = phi ptr [ %6, %8 ], [ %17, %15 ]
  br i1 %9, label %15, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr %11, align 8, !tbaa !41
  %14 = tail call ptr %1(ptr noundef %13) #11
  store ptr %14, ptr %11, align 8, !tbaa !41
  br label %15

15:                                               ; preds = %12, %10
  %16 = getelementptr inbounds %struct._ElementInfo, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  %18 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %11) #11
  %19 = icmp eq ptr %17, null
  br i1 %19, label %20, label %10, !llvm.loop !49

20:                                               ; preds = %15, %2
  %21 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %21, i8 0, i64 32, i1 false)
  %22 = load ptr, ptr %3, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %22) #11
  ret void
}

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @CompareHashmapString(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @LocaleCompare(ptr noundef %0, ptr noundef %1) #11
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @CompareHashmapStringInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @CompareStringInfo(ptr noundef %0, ptr noundef %1) #11
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

declare i32 @CompareStringInfo(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyHashmap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  tail call void @LockSemaphoreInfo(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !55
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %80

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 8
  %9 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 3
  br label %11

11:                                               ; preds = %7, %76
  %12 = phi i64 [ 0, %7 ], [ %77, %76 ]
  %13 = load ptr, ptr %8, align 8, !tbaa !56
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %15, null
  br i1 %16, label %76, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct._LinkedListInfo, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct._LinkedListInfo, ptr %15, i64 0, i32 4
  store ptr %19, ptr %20, align 8, !tbaa !45
  %21 = getelementptr inbounds %struct._LinkedListInfo, ptr %15, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %22) #11
  %23 = load ptr, ptr %20, align 8, !tbaa !45
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = load ptr, ptr %23, align 8, !tbaa !41
  %27 = getelementptr inbounds %struct._ElementInfo, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  store ptr %28, ptr %20, align 8, !tbaa !45
  br label %29

29:                                               ; preds = %17, %25
  %30 = phi ptr [ %26, %25 ], [ null, %17 ]
  %31 = load ptr, ptr %21, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %31) #11
  %32 = icmp eq ptr %30, null
  br i1 %32, label %60, label %33

33:                                               ; preds = %29, %56
  %34 = phi ptr [ %57, %56 ], [ %30, %29 ]
  %35 = load ptr, ptr %9, align 8, !tbaa !57
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct._EntryInfo, ptr %34, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !58
  %40 = tail call ptr %35(ptr noundef %39) #11
  store ptr %40, ptr %38, align 8, !tbaa !58
  br label %41

41:                                               ; preds = %37, %33
  %42 = load ptr, ptr %10, align 8, !tbaa !60
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct._EntryInfo, ptr %34, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !61
  %47 = tail call ptr %42(ptr noundef %46) #11
  store ptr %47, ptr %45, align 8, !tbaa !61
  br label %48

48:                                               ; preds = %44, %41
  %49 = load ptr, ptr %21, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %49) #11
  %50 = load ptr, ptr %20, align 8, !tbaa !45
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %50, align 8, !tbaa !41
  %54 = getelementptr inbounds %struct._ElementInfo, ptr %50, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !43
  store ptr %55, ptr %20, align 8, !tbaa !45
  br label %56

56:                                               ; preds = %48, %52
  %57 = phi ptr [ %53, %52 ], [ null, %48 ]
  %58 = load ptr, ptr %21, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %58) #11
  %59 = icmp eq ptr %57, null
  br i1 %59, label %60, label %33, !llvm.loop !62

60:                                               ; preds = %56, %29
  %61 = load ptr, ptr %21, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %61) #11
  %62 = load ptr, ptr %18, align 8, !tbaa !48
  %63 = icmp eq ptr %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %60, %64
  %65 = phi ptr [ %69, %64 ], [ %62, %60 ]
  %66 = load ptr, ptr %65, align 8, !tbaa !41
  %67 = tail call ptr @RelinquishMagickMemory(ptr noundef %66) #11
  store ptr %67, ptr %65, align 8, !tbaa !41
  %68 = getelementptr inbounds %struct._ElementInfo, ptr %65, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !43
  %70 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %65) #11
  %71 = icmp eq ptr %69, null
  br i1 %71, label %72, label %64, !llvm.loop !63

72:                                               ; preds = %64, %60
  %73 = getelementptr inbounds %struct._LinkedListInfo, ptr %15, i64 0, i32 6
  store i64 -2880220588, ptr %73, align 8, !tbaa !64
  %74 = load ptr, ptr %21, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %74) #11
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %21) #11
  %75 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %15) #11
  br label %76

76:                                               ; preds = %11, %72
  %77 = add nuw nsw i64 %12, 1
  %78 = load i64, ptr %4, align 8, !tbaa !55
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %11, label %80, !llvm.loop !65

80:                                               ; preds = %76, %1
  %81 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 8
  %82 = load ptr, ptr %81, align 8, !tbaa !56
  %83 = tail call ptr @RelinquishMagickMemory(ptr noundef %82) #11
  store ptr %83, ptr %81, align 8, !tbaa !56
  %84 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 10
  store i64 -2880220588, ptr %84, align 8, !tbaa !66
  %85 = load ptr, ptr %2, align 8, !tbaa !52
  tail call void @UnlockSemaphoreInfo(ptr noundef %85) #11
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %2) #11
  %86 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #11
  ret ptr %86
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetNextValueInLinkedList(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct._ElementInfo, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  store ptr %10, ptr %4, align 8, !tbaa !45
  br label %11

11:                                               ; preds = %1, %7
  %12 = phi ptr [ %8, %7 ], [ null, %1 ]
  %13 = load ptr, ptr %2, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %13) #11
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyLinkedList(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = icmp eq ptr %1, null
  br label %10

10:                                               ; preds = %8, %15
  %11 = phi ptr [ %6, %8 ], [ %17, %15 ]
  br i1 %9, label %15, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr %11, align 8, !tbaa !41
  %14 = tail call ptr %1(ptr noundef %13) #11
  store ptr %14, ptr %11, align 8, !tbaa !41
  br label %15

15:                                               ; preds = %12, %10
  %16 = getelementptr inbounds %struct._ElementInfo, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  %18 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %11) #11
  %19 = icmp eq ptr %17, null
  br i1 %19, label %20, label %10, !llvm.loop !63

20:                                               ; preds = %15, %2
  %21 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 6
  store i64 -2880220588, ptr %21, align 8, !tbaa !64
  %22 = load ptr, ptr %3, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %22) #11
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %3) #11
  %23 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #11
  ret ptr %23
}

declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @GetLastValueInLinkedList(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %7) #11
  %8 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = load ptr, ptr %6, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %11) #11
  br label %12

12:                                               ; preds = %1, %5
  %13 = phi ptr [ %10, %5 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetNextKeyInHashmap(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  tail call void @LockSemaphoreInfo(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 6
  %5 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 4
  %6 = load i64, ptr %4, align 8, !tbaa !67
  %7 = load i64, ptr %5, align 8, !tbaa !55
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %48

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 8
  %11 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 7
  br label %12

12:                                               ; preds = %9, %43
  %13 = phi i64 [ %6, %9 ], [ %45, %43 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !56
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %43, label %18

18:                                               ; preds = %12
  %19 = load i32, ptr %11, align 8, !tbaa !68
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._LinkedListInfo, ptr %16, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = getelementptr inbounds %struct._LinkedListInfo, ptr %16, i64 0, i32 4
  store ptr %23, ptr %24, align 8, !tbaa !45
  store i32 1, ptr %11, align 8, !tbaa !68
  br label %25

25:                                               ; preds = %21, %18
  %26 = getelementptr inbounds %struct._LinkedListInfo, ptr %16, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %27) #11
  %28 = getelementptr inbounds %struct._LinkedListInfo, ptr %16, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !45
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %29, align 8, !tbaa !41
  %33 = getelementptr inbounds %struct._ElementInfo, ptr %29, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !43
  store ptr %34, ptr %28, align 8, !tbaa !45
  br label %35

35:                                               ; preds = %25, %31
  %36 = phi ptr [ %32, %31 ], [ null, %25 ]
  %37 = load ptr, ptr %26, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %37) #11
  %38 = icmp eq ptr %36, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct._EntryInfo, ptr %36, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !58
  br label %48

42:                                               ; preds = %35
  store i32 0, ptr %11, align 8, !tbaa !68
  br label %43

43:                                               ; preds = %42, %12
  %44 = load i64, ptr %4, align 8, !tbaa !67
  %45 = add i64 %44, 1
  store i64 %45, ptr %4, align 8, !tbaa !67
  %46 = load i64, ptr %5, align 8, !tbaa !55
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %48, !llvm.loop !69

48:                                               ; preds = %43, %1, %39
  %49 = phi ptr [ %41, %39 ], [ null, %1 ], [ null, %43 ]
  %50 = load ptr, ptr %2, align 8, !tbaa !52
  tail call void @UnlockSemaphoreInfo(ptr noundef %50) #11
  ret ptr %49
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetNextValueInHashmap(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  tail call void @LockSemaphoreInfo(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 6
  %5 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 4
  %6 = load i64, ptr %4, align 8, !tbaa !67
  %7 = load i64, ptr %5, align 8, !tbaa !55
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %48

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 8
  %11 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 7
  br label %12

12:                                               ; preds = %9, %43
  %13 = phi i64 [ %6, %9 ], [ %45, %43 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !56
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %43, label %18

18:                                               ; preds = %12
  %19 = load i32, ptr %11, align 8, !tbaa !68
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._LinkedListInfo, ptr %16, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = getelementptr inbounds %struct._LinkedListInfo, ptr %16, i64 0, i32 4
  store ptr %23, ptr %24, align 8, !tbaa !45
  store i32 1, ptr %11, align 8, !tbaa !68
  br label %25

25:                                               ; preds = %21, %18
  %26 = getelementptr inbounds %struct._LinkedListInfo, ptr %16, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %27) #11
  %28 = getelementptr inbounds %struct._LinkedListInfo, ptr %16, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !45
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %29, align 8, !tbaa !41
  %33 = getelementptr inbounds %struct._ElementInfo, ptr %29, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !43
  store ptr %34, ptr %28, align 8, !tbaa !45
  br label %35

35:                                               ; preds = %25, %31
  %36 = phi ptr [ %32, %31 ], [ null, %25 ]
  %37 = load ptr, ptr %26, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %37) #11
  %38 = icmp eq ptr %36, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct._EntryInfo, ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !61
  br label %48

42:                                               ; preds = %35
  store i32 0, ptr %11, align 8, !tbaa !68
  br label %43

43:                                               ; preds = %42, %12
  %44 = load i64, ptr %4, align 8, !tbaa !67
  %45 = add i64 %44, 1
  store i64 %45, ptr %4, align 8, !tbaa !67
  %46 = load i64, ptr %5, align 8, !tbaa !55
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %48, !llvm.loop !70

48:                                               ; preds = %43, %1, %39
  %49 = phi ptr [ %41, %39 ], [ null, %1 ], [ null, %43 ]
  %50 = load ptr, ptr %2, align 8, !tbaa !52
  tail call void @UnlockSemaphoreInfo(ptr noundef %50) #11
  ret ptr %49
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @GetNumberOfEntriesInHashmap(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 5
  %3 = load i64, ptr %2, align 8, !tbaa !71
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @GetNumberOfElementsInLinkedList(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !34
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetValueFromHashmap(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %71, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  tail call void @LockSemaphoreInfo(ptr noundef %6) #11
  %7 = load ptr, ptr %0, align 8, !tbaa !72
  %8 = tail call i64 %7(ptr noundef nonnull %1) #11
  %9 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !55
  %13 = urem i64 %8, %12
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %15, null
  br i1 %16, label %69, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct._LinkedListInfo, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct._LinkedListInfo, ptr %15, i64 0, i32 4
  store ptr %19, ptr %20, align 8, !tbaa !45
  %21 = getelementptr inbounds %struct._LinkedListInfo, ptr %15, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %22) #11
  %23 = load ptr, ptr %20, align 8, !tbaa !45
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = load ptr, ptr %23, align 8, !tbaa !41
  %27 = getelementptr inbounds %struct._ElementInfo, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  store ptr %28, ptr %20, align 8, !tbaa !45
  br label %29

29:                                               ; preds = %17, %25
  %30 = phi ptr [ %26, %25 ], [ null, %17 ]
  %31 = load ptr, ptr %21, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %31) #11
  %32 = icmp eq ptr %30, null
  br i1 %32, label %69, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 1
  br label %35

35:                                               ; preds = %33, %65
  %36 = phi ptr [ undef, %33 ], [ %57, %65 ]
  %37 = phi ptr [ %30, %33 ], [ %66, %65 ]
  %38 = load i64, ptr %37, align 8, !tbaa !73
  %39 = icmp eq i64 %38, %8
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load ptr, ptr %34, align 8, !tbaa !74
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct._EntryInfo, ptr %37, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !58
  %46 = tail call i32 %41(ptr noundef nonnull %1, ptr noundef %45) #11
  br label %47

47:                                               ; preds = %43, %40
  %48 = phi i32 [ %46, %43 ], [ 1, %40 ]
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct._EntryInfo, ptr %37, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !61
  %53 = load ptr, ptr %5, align 8, !tbaa !52
  tail call void @UnlockSemaphoreInfo(ptr noundef %53) #11
  br label %54

54:                                               ; preds = %47, %50
  %55 = phi ptr [ %52, %50 ], [ %36, %47 ]
  br i1 %49, label %56, label %71

56:                                               ; preds = %54, %35
  %57 = phi ptr [ %55, %54 ], [ %36, %35 ]
  %58 = load ptr, ptr %21, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %58) #11
  %59 = load ptr, ptr %20, align 8, !tbaa !45
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load ptr, ptr %59, align 8, !tbaa !41
  %63 = getelementptr inbounds %struct._ElementInfo, ptr %59, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !43
  store ptr %64, ptr %20, align 8, !tbaa !45
  br label %65

65:                                               ; preds = %56, %61
  %66 = phi ptr [ %62, %61 ], [ null, %56 ]
  %67 = load ptr, ptr %21, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %67) #11
  %68 = icmp eq ptr %66, null
  br i1 %68, label %69, label %35, !llvm.loop !75

69:                                               ; preds = %65, %29, %4
  %70 = load ptr, ptr %5, align 8, !tbaa !52
  tail call void @UnlockSemaphoreInfo(ptr noundef %70) #11
  br label %71

71:                                               ; preds = %54, %2, %69
  %72 = phi ptr [ null, %69 ], [ null, %2 ], [ %55, %54 ]
  ret ptr %72
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetValueFromLinkedList(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !34
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %6, label %36

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %8) #11
  %9 = icmp eq i64 %1, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  br label %29

12:                                               ; preds = %6
  %13 = load i64, ptr %3, align 8, !tbaa !34
  %14 = add i64 %13, -1
  %15 = icmp eq i64 %14, %1
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 3
  br label %29

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = icmp sgt i64 %1, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %18, %22
  %23 = phi ptr [ %27, %22 ], [ %20, %18 ]
  %24 = phi i64 [ %26, %22 ], [ 0, %18 ]
  %25 = getelementptr inbounds %struct._ElementInfo, ptr %23, i64 0, i32 1
  %26 = add nuw nsw i64 %24, 1
  %27 = load ptr, ptr %25, align 8, !tbaa !47
  %28 = icmp eq i64 %26, %1
  br i1 %28, label %32, label %22, !llvm.loop !76

29:                                               ; preds = %16, %10
  %30 = phi ptr [ %11, %10 ], [ %17, %16 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !47
  br label %32

32:                                               ; preds = %22, %29, %18
  %33 = phi ptr [ %20, %18 ], [ %31, %29 ], [ %27, %22 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !41
  %35 = load ptr, ptr %7, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %35) #11
  br label %36

36:                                               ; preds = %32, %2
  %37 = phi ptr [ null, %2 ], [ %34, %32 ]
  ret ptr %37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
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

; Function Attrs: nounwind uwtable
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
  %10 = load i8, ptr %9, align 1, !tbaa !77
  %11 = zext i8 %10 to i64
  %12 = xor i64 %7, %11
  %13 = add nuw nsw i64 %8, 1
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %15, label %6, !llvm.loop !78

15:                                               ; preds = %6
  %16 = tail call ptr @DestroyStringInfo(ptr noundef %3) #11
  %17 = tail call ptr @DestroySignatureInfo(ptr noundef %2) #11
  ret i64 %12
}

declare ptr @AcquireSignatureInfo() local_unnamed_addr #3

declare ptr @StringToStringInfo(ptr noundef) local_unnamed_addr #3

declare void @UpdateSignature(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @FinalizeSignature(ptr noundef) local_unnamed_addr #3

declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #3

declare ptr @GetSignatureDigest(ptr noundef) local_unnamed_addr #3

declare ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #3

declare ptr @DestroySignatureInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
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
  %9 = load i8, ptr %8, align 1, !tbaa !77
  %10 = zext i8 %9 to i64
  %11 = xor i64 %6, %10
  %12 = add nuw nsw i64 %7, 1
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %14, label %5, !llvm.loop !79

14:                                               ; preds = %5
  %15 = tail call ptr @DestroySignatureInfo(ptr noundef %2) #11
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @InsertValueInLinkedList(ptr nocapture noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %78, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !34
  %8 = icmp ult i64 %7, %1
  br i1 %8, label %78, label %9

9:                                                ; preds = %5
  %10 = load i64, ptr %0, align 8, !tbaa !40
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %78, label %12

12:                                               ; preds = %9
  %13 = tail call dereferenceable_or_null(16) ptr @AcquireMagickMemory(i64 noundef 16) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %78, label %15

15:                                               ; preds = %12
  store ptr %2, ptr %13, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct._ElementInfo, ptr %13, i64 0, i32 1
  store ptr null, ptr %16, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %18) #11
  %19 = load i64, ptr %6, align 8, !tbaa !34
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store ptr %13, ptr %22, align 8, !tbaa !45
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  store ptr %13, ptr %27, align 8, !tbaa !48
  %28 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 3
  store ptr %13, ptr %28, align 8, !tbaa !46
  br label %75

29:                                               ; preds = %15
  %30 = icmp eq i64 %1, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !45
  %34 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !48
  %36 = icmp eq ptr %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store ptr %13, ptr %32, align 8, !tbaa !45
  br label %38

38:                                               ; preds = %37, %31
  store ptr %35, ptr %16, align 8, !tbaa !43
  store ptr %13, ptr %34, align 8, !tbaa !48
  br label %75

39:                                               ; preds = %29
  %40 = icmp eq i64 %19, %1
  br i1 %40, label %41, label %50

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !45
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store ptr %13, ptr %42, align 8, !tbaa !45
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = getelementptr inbounds %struct._ElementInfo, ptr %48, i64 0, i32 1
  store ptr %13, ptr %49, align 8, !tbaa !43
  store ptr %13, ptr %47, align 8, !tbaa !46
  br label %75

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !48
  %53 = getelementptr inbounds %struct._ElementInfo, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !43
  store ptr %54, ptr %16, align 8, !tbaa !43
  %55 = icmp sgt i64 %1, 1
  br i1 %55, label %56, label %65

56:                                               ; preds = %50, %56
  %57 = phi ptr [ %60, %56 ], [ %52, %50 ]
  %58 = phi i64 [ %63, %56 ], [ 1, %50 ]
  %59 = getelementptr inbounds %struct._ElementInfo, ptr %57, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !43
  %61 = getelementptr inbounds %struct._ElementInfo, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !43
  store ptr %62, ptr %16, align 8, !tbaa !43
  %63 = add nuw nsw i64 %58, 1
  %64 = icmp eq i64 %63, %1
  br i1 %64, label %65, label %56, !llvm.loop !80

65:                                               ; preds = %56, %50
  %66 = phi ptr [ %52, %50 ], [ %60, %56 ]
  %67 = load ptr, ptr %16, align 8, !tbaa !43
  %68 = getelementptr inbounds %struct._ElementInfo, ptr %66, i64 0, i32 1
  store ptr %67, ptr %68, align 8, !tbaa !43
  %69 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !45
  %71 = getelementptr inbounds %struct._ElementInfo, ptr %67, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !43
  %73 = icmp eq ptr %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  store ptr %67, ptr %69, align 8, !tbaa !45
  br label %75

75:                                               ; preds = %65, %74, %38, %46, %26
  %76 = add i64 %19, 1
  store i64 %76, ptr %6, align 8, !tbaa !34
  %77 = load ptr, ptr %17, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %77) #11
  br label %78

78:                                               ; preds = %12, %5, %9, %3, %75
  %79 = phi i32 [ 1, %75 ], [ 0, %3 ], [ 0, %9 ], [ 0, %5 ], [ 0, %12 ]
  ret i32 %79
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @InsertValueInSortedLinkedList(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  %6 = icmp eq ptr %3, null
  %7 = or i1 %5, %6
  br i1 %7, label %78, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !34
  %11 = load i64, ptr %0, align 8, !tbaa !40
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %78, label %13

13:                                               ; preds = %8
  %14 = tail call dereferenceable_or_null(16) ptr @AcquireMagickMemory(i64 noundef 16) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %78, label %16

16:                                               ; preds = %13
  store ptr %3, ptr %14, align 8, !tbaa !41
  %17 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %18) #11
  %19 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  %20 = getelementptr inbounds %struct._ElementInfo, ptr %14, i64 0, i32 1
  %21 = load ptr, ptr %19, align 8, !tbaa !47
  store ptr %21, ptr %20, align 8, !tbaa !43
  %22 = icmp eq ptr %21, null
  br i1 %22, label %65, label %23

23:                                               ; preds = %16
  %24 = icmp ne ptr %2, null
  %25 = load ptr, ptr %21, align 8, !tbaa !41
  %26 = tail call i32 %1(ptr noundef %3, ptr noundef %25) #11
  %27 = icmp slt i32 %26, 0
  %28 = icmp eq i32 %26, 0
  %29 = and i1 %24, %28
  %30 = or i1 %27, %29
  br i1 %30, label %38, label %60

31:                                               ; preds = %60
  %32 = load ptr, ptr %63, align 8, !tbaa !41
  %33 = tail call i32 %1(ptr noundef %3, ptr noundef %32) #11
  %34 = icmp slt i32 %33, 0
  %35 = icmp eq i32 %33, 0
  %36 = and i1 %24, %35
  %37 = or i1 %34, %36
  br i1 %37, label %38, label %60, !llvm.loop !81

38:                                               ; preds = %31, %23
  %39 = phi ptr [ null, %23 ], [ %61, %31 ]
  %40 = phi i32 [ %26, %23 ], [ %33, %31 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load ptr, ptr %20, align 8, !tbaa !43
  %44 = load ptr, ptr %43, align 8, !tbaa !41
  store ptr %44, ptr %2, align 8, !tbaa !47
  %45 = load ptr, ptr %20, align 8, !tbaa !43
  %46 = getelementptr inbounds %struct._ElementInfo, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !43
  store ptr %47, ptr %20, align 8, !tbaa !43
  %48 = icmp eq ptr %39, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct._ElementInfo, ptr %39, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !43
  %52 = tail call ptr @RelinquishMagickMemory(ptr noundef %51) #11
  store ptr %52, ptr %50, align 8, !tbaa !43
  br label %53

53:                                               ; preds = %49, %42
  %54 = load i64, ptr %9, align 8, !tbaa !34
  %55 = add i64 %54, -1
  store i64 %55, ptr %9, align 8, !tbaa !34
  br label %56

56:                                               ; preds = %53, %38
  %57 = icmp eq ptr %39, null
  %58 = getelementptr inbounds %struct._ElementInfo, ptr %39, i64 0, i32 1
  %59 = select i1 %57, ptr %19, ptr %58
  store ptr %14, ptr %59, align 8, !tbaa !47
  br label %65

60:                                               ; preds = %23, %31
  %61 = load ptr, ptr %20, align 8, !tbaa !43
  %62 = getelementptr inbounds %struct._ElementInfo, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !47
  store ptr %63, ptr %20, align 8, !tbaa !43
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %31, !llvm.loop !81

65:                                               ; preds = %60, %56, %16
  %66 = phi ptr [ null, %16 ], [ %39, %56 ], [ %61, %60 ]
  %67 = load ptr, ptr %20, align 8, !tbaa !43
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = icmp eq ptr %66, null
  %71 = getelementptr inbounds %struct._ElementInfo, ptr %66, i64 0, i32 1
  %72 = select i1 %70, ptr %19, ptr %71
  store ptr %14, ptr %72, align 8, !tbaa !47
  %73 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 3
  store ptr %14, ptr %73, align 8, !tbaa !46
  br label %74

74:                                               ; preds = %69, %65
  %75 = load i64, ptr %9, align 8, !tbaa !34
  %76 = add i64 %75, 1
  store i64 %76, ptr %9, align 8, !tbaa !34
  %77 = load ptr, ptr %17, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %77) #11
  br label %78

78:                                               ; preds = %13, %8, %4, %74
  %79 = phi i32 [ 1, %74 ], [ 0, %4 ], [ 0, %8 ], [ 0, %13 ]
  ret i32 %79
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @IsHashmapEmpty(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 5
  %3 = load i64, ptr %2, align 8, !tbaa !71
  %4 = icmp eq i64 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @IsLinkedListEmpty(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i64 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @LinkedListToArray(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %6) #11
  %7 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %17, %10 ], [ %8, %4 ]
  %12 = phi i64 [ %16, %10 ], [ 0, %4 ]
  %13 = load ptr, ptr %11, align 8, !tbaa !41
  %14 = getelementptr inbounds ptr, ptr %1, i64 %12
  store ptr %13, ptr %14, align 8, !tbaa !47
  %15 = getelementptr inbounds %struct._ElementInfo, ptr %11, i64 0, i32 1
  %16 = add nuw nsw i64 %12, 1
  %17 = load ptr, ptr %15, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %10, !llvm.loop !82

19:                                               ; preds = %10, %4
  %20 = load ptr, ptr %5, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %20) #11
  br label %21

21:                                               ; preds = %2, %19
  %22 = phi i32 [ 1, %19 ], [ 0, %2 ]
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @NewHashmap(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._ExceptionInfo, align 8
  %7 = alloca %struct._ExceptionInfo, align 8
  %8 = tail call dereferenceable_or_null(88) ptr @AcquireMagickMemory(i64 noundef 88) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #11
  call void @GetExceptionInfo(ptr noundef nonnull %6) #11
  %11 = tail call ptr @__errno_location() #12
  %12 = load i32, ptr %11, align 4, !tbaa !83
  %13 = call ptr @GetExceptionMessage(i32 noundef %12) #11
  %14 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1314, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %13) #11
  %15 = call ptr @DestroyString(ptr noundef %13) #11
  call void @CatchException(ptr noundef nonnull %6) #11
  %16 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %6) #11
  call void @MagickCoreTerminus() #11
  call void @_exit(i32 noundef 1) #13
  unreachable

17:                                               ; preds = %5
  %18 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %8, i32 noundef 0, i64 noundef 88) #11
  %19 = icmp eq ptr %1, null
  %20 = select i1 %19, ptr @HashPointerType, ptr %1
  store ptr %20, ptr %8, align 8, !tbaa !72
  %21 = getelementptr inbounds %struct._HashmapInfo, ptr %8, i64 0, i32 1
  store ptr %2, ptr %21, align 8, !tbaa !74
  %22 = getelementptr inbounds %struct._HashmapInfo, ptr %8, i64 0, i32 2
  store ptr %3, ptr %22, align 8, !tbaa !57
  %23 = getelementptr inbounds %struct._HashmapInfo, ptr %8, i64 0, i32 3
  store ptr %4, ptr %23, align 8, !tbaa !60
  %24 = getelementptr inbounds %struct._HashmapInfo, ptr %8, i64 0, i32 5
  store i64 0, ptr %24, align 8, !tbaa !71
  %25 = getelementptr inbounds %struct._HashmapInfo, ptr %8, i64 0, i32 4
  store i64 %0, ptr %25, align 8, !tbaa !55
  %26 = getelementptr inbounds %struct._HashmapInfo, ptr %8, i64 0, i32 8
  store ptr null, ptr %26, align 8, !tbaa !56
  %27 = icmp eq i64 %0, -1
  br i1 %27, label %31, label %28

28:                                               ; preds = %17
  %29 = add i64 %0, 1
  %30 = tail call ptr @AcquireQuantumMemory(i64 noundef %29, i64 noundef 8) #14
  store ptr %30, ptr %26, align 8, !tbaa !56
  br label %31

31:                                               ; preds = %28, %17
  %32 = load ptr, ptr %26, align 8, !tbaa !56
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #11
  call void @GetExceptionInfo(ptr noundef nonnull %7) #11
  %35 = tail call ptr @__errno_location() #12
  %36 = load i32, ptr %35, align 4, !tbaa !83
  %37 = call ptr @GetExceptionMessage(i32 noundef %36) #11
  %38 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1331, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %37) #11
  %39 = call ptr @DestroyString(ptr noundef %37) #11
  call void @CatchException(ptr noundef nonnull %7) #11
  %40 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %7) #11
  call void @MagickCoreTerminus() #11
  call void @_exit(i32 noundef 1) #13
  unreachable

41:                                               ; preds = %31
  %42 = shl i64 %0, 3
  %43 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %32, i32 noundef 0, i64 noundef %42) #11
  %44 = tail call ptr @AllocateSemaphoreInfo() #11
  %45 = getelementptr inbounds %struct._HashmapInfo, ptr %8, i64 0, i32 9
  store ptr %44, ptr %45, align 8, !tbaa !52
  %46 = getelementptr inbounds %struct._HashmapInfo, ptr %8, i64 0, i32 10
  store i64 2880220587, ptr %46, align 8, !tbaa !66
  ret ptr %8
}

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare void @CatchException(ptr noundef) local_unnamed_addr #3

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #7

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #8

declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @NewLinkedList(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call dereferenceable_or_null(56) ptr @AcquireMagickMemory(i64 noundef 56) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #11
  call void @GetExceptionInfo(ptr noundef nonnull %2) #11
  %6 = tail call ptr @__errno_location() #12
  %7 = load i32, ptr %6, align 4, !tbaa !83
  %8 = call ptr @GetExceptionMessage(i32 noundef %7) #11
  %9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1369, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %8) #11
  %10 = call ptr @DestroyString(ptr noundef %8) #11
  call void @CatchException(ptr noundef nonnull %2) #11
  %11 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #11
  call void @MagickCoreTerminus() #11
  call void @_exit(i32 noundef 1) #13
  unreachable

12:                                               ; preds = %1
  %13 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %3, i32 noundef 0, i64 noundef 56) #11
  %14 = icmp eq i64 %0, 0
  %15 = select i1 %14, i64 -1, i64 %0
  store i64 %15, ptr %3, align 8, !tbaa !40
  %16 = getelementptr inbounds %struct._LinkedListInfo, ptr %3, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, i8 0, i64 32, i1 false)
  %17 = tail call ptr @AllocateSemaphoreInfo() #11
  %18 = getelementptr inbounds %struct._LinkedListInfo, ptr %3, i64 0, i32 5
  store ptr %17, ptr %18, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct._LinkedListInfo, ptr %3, i64 0, i32 6
  store i64 2880220587, ptr %19, align 8, !tbaa !64
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @PutEntryInHashmap(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  %5 = icmp eq ptr %2, null
  %6 = or i1 %4, %5
  br i1 %6, label %215, label %7

7:                                                ; preds = %3
  %8 = tail call dereferenceable_or_null(24) ptr @AcquireMagickMemory(i64 noundef 24) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %215, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  tail call void @LockSemaphoreInfo(ptr noundef %12) #11
  %13 = load ptr, ptr %0, align 8, !tbaa !72
  %14 = tail call i64 %13(ptr noundef %1) #11
  store i64 %14, ptr %8, align 8, !tbaa !73
  %15 = getelementptr inbounds %struct._EntryInfo, ptr %8, i64 0, i32 1
  store ptr %1, ptr %15, align 8, !tbaa !58
  %16 = getelementptr inbounds %struct._EntryInfo, ptr %8, i64 0, i32 2
  store ptr %2, ptr %16, align 8, !tbaa !61
  %17 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  %19 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 4
  %20 = load i64, ptr %19, align 8, !tbaa !55
  %21 = urem i64 %14, %20
  %22 = getelementptr inbounds ptr, ptr %18, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %10
  %26 = tail call ptr @NewLinkedList(i64 noundef 0)
  %27 = load ptr, ptr %17, align 8, !tbaa !56
  %28 = load i64, ptr %8, align 8, !tbaa !73
  %29 = load i64, ptr %19, align 8, !tbaa !55
  %30 = urem i64 %28, %29
  %31 = getelementptr inbounds ptr, ptr %27, i64 %30
  store ptr %26, ptr %31, align 8, !tbaa !47
  br label %98

32:                                               ; preds = %10
  %33 = getelementptr inbounds %struct._LinkedListInfo, ptr %23, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  %35 = getelementptr inbounds %struct._LinkedListInfo, ptr %23, i64 0, i32 4
  store ptr %34, ptr %35, align 8, !tbaa !45
  %36 = getelementptr inbounds %struct._LinkedListInfo, ptr %23, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %37) #11
  %38 = load ptr, ptr %35, align 8, !tbaa !45
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = load ptr, ptr %38, align 8, !tbaa !41
  %42 = getelementptr inbounds %struct._ElementInfo, ptr %38, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !43
  store ptr %43, ptr %35, align 8, !tbaa !45
  br label %44

44:                                               ; preds = %32, %40
  %45 = phi ptr [ %41, %40 ], [ null, %32 ]
  %46 = load ptr, ptr %36, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %46) #11
  %47 = icmp eq ptr %45, null
  br i1 %47, label %98, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 1
  %50 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 2
  %51 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 3
  br label %52

52:                                               ; preds = %48, %93
  %53 = phi i64 [ 0, %48 ], [ %96, %93 ]
  %54 = phi ptr [ %45, %48 ], [ %94, %93 ]
  %55 = load i64, ptr %54, align 8, !tbaa !73
  %56 = load i64, ptr %8, align 8, !tbaa !73
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %85

58:                                               ; preds = %52
  %59 = load ptr, ptr %49, align 8, !tbaa !74
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct._EntryInfo, ptr %54, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !58
  %64 = tail call i32 %59(ptr noundef %1, ptr noundef %63) #11
  br label %65

65:                                               ; preds = %61, %58
  %66 = phi i32 [ %64, %61 ], [ 1, %58 ]
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %85, label %68

68:                                               ; preds = %65
  %69 = tail call ptr @RemoveElementFromLinkedList(ptr noundef nonnull %23, i64 noundef %53)
  %70 = load ptr, ptr %50, align 8, !tbaa !57
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct._EntryInfo, ptr %54, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !58
  %75 = tail call ptr %70(ptr noundef %74) #11
  store ptr %75, ptr %73, align 8, !tbaa !58
  br label %76

76:                                               ; preds = %72, %68
  %77 = load ptr, ptr %51, align 8, !tbaa !60
  %78 = icmp eq ptr %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct._EntryInfo, ptr %54, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !61
  %82 = tail call ptr %77(ptr noundef %81) #11
  store ptr %82, ptr %80, align 8, !tbaa !61
  br label %83

83:                                               ; preds = %79, %76
  %84 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %54) #11
  br i1 %67, label %85, label %98

85:                                               ; preds = %65, %83, %52
  %86 = load ptr, ptr %36, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %86) #11
  %87 = load ptr, ptr %35, align 8, !tbaa !45
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load ptr, ptr %87, align 8, !tbaa !41
  %91 = getelementptr inbounds %struct._ElementInfo, ptr %87, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !43
  store ptr %92, ptr %35, align 8, !tbaa !45
  br label %93

93:                                               ; preds = %85, %89
  %94 = phi ptr [ %90, %89 ], [ null, %85 ]
  %95 = load ptr, ptr %36, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %95) #11
  %96 = add i64 %53, 1
  %97 = icmp eq ptr %94, null
  br i1 %97, label %98, label %52, !llvm.loop !84

98:                                               ; preds = %83, %93, %44, %25
  %99 = phi ptr [ %26, %25 ], [ %23, %44 ], [ %23, %93 ], [ %23, %83 ]
  %100 = getelementptr inbounds %struct._LinkedListInfo, ptr %99, i64 0, i32 1
  %101 = load i64, ptr %100, align 8, !tbaa !34
  %102 = load i64, ptr %99, align 8, !tbaa !40
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %136, label %104

104:                                              ; preds = %98
  %105 = tail call dereferenceable_or_null(16) ptr @AcquireMagickMemory(i64 noundef 16) #10
  %106 = icmp eq ptr %105, null
  br i1 %106, label %136, label %107

107:                                              ; preds = %104
  store ptr %8, ptr %105, align 8, !tbaa !41
  %108 = getelementptr inbounds %struct._ElementInfo, ptr %105, i64 0, i32 1
  store ptr null, ptr %108, align 8, !tbaa !43
  %109 = getelementptr inbounds %struct._LinkedListInfo, ptr %99, i64 0, i32 5
  %110 = load ptr, ptr %109, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %110) #11
  %111 = load i64, ptr %100, align 8, !tbaa !34
  %112 = icmp eq i64 %111, 0
  %113 = getelementptr inbounds %struct._LinkedListInfo, ptr %99, i64 0, i32 4
  %114 = load ptr, ptr %113, align 8, !tbaa !45
  br i1 %112, label %115, label %121

115:                                              ; preds = %107
  %116 = icmp eq ptr %114, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %115
  store ptr %105, ptr %113, align 8, !tbaa !45
  br label %118

118:                                              ; preds = %117, %115
  %119 = getelementptr inbounds %struct._LinkedListInfo, ptr %99, i64 0, i32 2
  store ptr %105, ptr %119, align 8, !tbaa !48
  %120 = getelementptr inbounds %struct._LinkedListInfo, ptr %99, i64 0, i32 3
  br label %127

121:                                              ; preds = %107
  %122 = getelementptr inbounds %struct._LinkedListInfo, ptr %99, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !48
  %124 = icmp eq ptr %114, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  store ptr %105, ptr %113, align 8, !tbaa !45
  br label %126

126:                                              ; preds = %125, %121
  store ptr %123, ptr %108, align 8, !tbaa !43
  br label %127

127:                                              ; preds = %126, %118
  %128 = phi ptr [ %122, %126 ], [ %120, %118 ]
  store ptr %105, ptr %128, align 8, !tbaa !47
  %129 = add i64 %111, 1
  store i64 %129, ptr %100, align 8, !tbaa !34
  %130 = load ptr, ptr %109, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %130) #11
  %131 = getelementptr inbounds %struct._LinkedListInfo, ptr %99, i64 0, i32 1
  %132 = load i64, ptr %131, align 8, !tbaa !34
  %133 = load i64, ptr %19, align 8, !tbaa !55
  %134 = add i64 %133, -1
  %135 = icmp ult i64 %132, %134
  br i1 %135, label %208, label %138

136:                                              ; preds = %104, %98
  %137 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %8) #11
  br label %212

138:                                              ; preds = %127, %143
  %139 = phi i64 [ %144, %143 ], [ 0, %127 ]
  %140 = getelementptr inbounds [20 x i64], ptr @__const.IncreaseHashmapCapacity.capacities, i64 0, i64 %139
  %141 = load i64, ptr %140, align 8, !tbaa !85
  %142 = icmp ult i64 %133, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = add nuw nsw i64 %139, 1
  %145 = icmp eq i64 %144, 20
  br i1 %145, label %146, label %138, !llvm.loop !86

146:                                              ; preds = %138, %143
  %147 = phi i64 [ %139, %138 ], [ 20, %143 ]
  %148 = icmp ugt i64 %147, 18
  br i1 %148, label %212, label %149

149:                                              ; preds = %146
  %150 = add nuw nsw i64 %147, 1
  %151 = getelementptr inbounds [20 x i64], ptr @__const.IncreaseHashmapCapacity.capacities, i64 0, i64 %150
  %152 = load i64, ptr %151, align 8, !tbaa !85
  %153 = add i64 %152, 1
  %154 = tail call ptr @AcquireQuantumMemory(i64 noundef %153, i64 noundef 8) #14
  %155 = icmp eq ptr %154, null
  br i1 %155, label %212, label %156

156:                                              ; preds = %149
  %157 = shl i64 %152, 3
  %158 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %154, i32 noundef 0, i64 noundef %157) #11
  %159 = load i64, ptr %19, align 8, !tbaa !55
  %160 = icmp sgt i64 %159, 0
  br i1 %160, label %161, label %205

161:                                              ; preds = %156, %201
  %162 = phi i64 [ %202, %201 ], [ 0, %156 ]
  %163 = load ptr, ptr %17, align 8, !tbaa !56
  %164 = getelementptr inbounds ptr, ptr %163, i64 %162
  %165 = load ptr, ptr %164, align 8, !tbaa !47
  %166 = icmp eq ptr %165, null
  br i1 %166, label %201, label %167

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct._LinkedListInfo, ptr %165, i64 0, i32 5
  %169 = load ptr, ptr %168, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %169) #11
  %170 = getelementptr inbounds %struct._LinkedListInfo, ptr %165, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !48
  %172 = icmp eq ptr %171, null
  br i1 %172, label %197, label %173

173:                                              ; preds = %167, %188
  %174 = phi ptr [ %176, %188 ], [ %171, %167 ]
  %175 = getelementptr inbounds %struct._ElementInfo, ptr %174, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !43
  %177 = load ptr, ptr %174, align 8, !tbaa !41
  %178 = load i64, ptr %177, align 8, !tbaa !73
  %179 = urem i64 %178, %152
  %180 = getelementptr inbounds ptr, ptr %154, i64 %179
  %181 = load ptr, ptr %180, align 8, !tbaa !47
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %188

183:                                              ; preds = %173
  %184 = tail call ptr @NewLinkedList(i64 noundef 0)
  %185 = load i64, ptr %177, align 8, !tbaa !73
  %186 = urem i64 %185, %152
  %187 = getelementptr inbounds ptr, ptr %154, i64 %186
  store ptr %184, ptr %187, align 8, !tbaa !47
  br label %188

188:                                              ; preds = %183, %173
  %189 = phi ptr [ %184, %183 ], [ %181, %173 ]
  %190 = getelementptr inbounds %struct._LinkedListInfo, ptr %189, i64 0, i32 4
  store ptr %174, ptr %190, align 8, !tbaa !45
  %191 = getelementptr inbounds %struct._LinkedListInfo, ptr %189, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !48
  store ptr %192, ptr %175, align 8, !tbaa !43
  store ptr %174, ptr %191, align 8, !tbaa !48
  %193 = getelementptr inbounds %struct._LinkedListInfo, ptr %189, i64 0, i32 1
  %194 = load i64, ptr %193, align 8, !tbaa !34
  %195 = add i64 %194, 1
  store i64 %195, ptr %193, align 8, !tbaa !34
  %196 = icmp eq ptr %176, null
  br i1 %196, label %197, label %173, !llvm.loop !87

197:                                              ; preds = %188, %167
  %198 = getelementptr inbounds %struct._LinkedListInfo, ptr %165, i64 0, i32 6
  store i64 -2880220588, ptr %198, align 8, !tbaa !64
  %199 = load ptr, ptr %168, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %199) #11
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %168) #11
  %200 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %165) #11
  br label %201

201:                                              ; preds = %197, %161
  %202 = add nuw nsw i64 %162, 1
  %203 = load i64, ptr %19, align 8, !tbaa !55
  %204 = icmp slt i64 %202, %203
  br i1 %204, label %161, label %205, !llvm.loop !88

205:                                              ; preds = %201, %156
  %206 = load ptr, ptr %17, align 8, !tbaa !56
  %207 = tail call ptr @RelinquishMagickMemory(ptr noundef %206) #11
  store ptr %154, ptr %17, align 8, !tbaa !56
  store i64 %152, ptr %19, align 8, !tbaa !55
  br label %208

208:                                              ; preds = %205, %127
  %209 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 5
  %210 = load i64, ptr %209, align 8, !tbaa !71
  %211 = add i64 %210, 1
  store i64 %211, ptr %209, align 8, !tbaa !71
  br label %212

212:                                              ; preds = %146, %149, %136, %208
  %213 = phi i32 [ 1, %208 ], [ 0, %136 ], [ 0, %149 ], [ 0, %146 ]
  %214 = load ptr, ptr %11, align 8, !tbaa !52
  tail call void @UnlockSemaphoreInfo(ptr noundef %214) #11
  br label %215

215:                                              ; preds = %212, %7, %3
  %216 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %213, %212 ]
  ret i32 %216
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RemoveElementFromLinkedList(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !34
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %6, label %59

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %8) #11
  %9 = icmp eq i64 %1, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._ElementInfo, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !43
  store ptr %18, ptr %11, align 8, !tbaa !45
  br label %19

19:                                               ; preds = %16, %10
  %20 = load ptr, ptr %14, align 8, !tbaa !41
  %21 = getelementptr inbounds %struct._ElementInfo, ptr %14, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  store ptr %22, ptr %13, align 8, !tbaa !48
  br label %52

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  %26 = icmp sgt i64 %1, 1
  br i1 %26, label %27, label %34

27:                                               ; preds = %23, %27
  %28 = phi ptr [ %32, %27 ], [ %25, %23 ]
  %29 = phi i64 [ %31, %27 ], [ 1, %23 ]
  %30 = getelementptr inbounds %struct._ElementInfo, ptr %28, i64 0, i32 1
  %31 = add nuw nsw i64 %29, 1
  %32 = load ptr, ptr %30, align 8, !tbaa !47
  %33 = icmp eq i64 %31, %1
  br i1 %33, label %34, label %27, !llvm.loop !89

34:                                               ; preds = %27, %23
  %35 = phi ptr [ %25, %23 ], [ %32, %27 ]
  %36 = getelementptr inbounds %struct._ElementInfo, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !43
  %38 = getelementptr inbounds %struct._ElementInfo, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !43
  store ptr %39, ptr %36, align 8, !tbaa !43
  %40 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  %42 = icmp eq ptr %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store ptr %35, ptr %40, align 8, !tbaa !46
  br label %44

44:                                               ; preds = %43, %34
  %45 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !45
  %47 = icmp eq ptr %46, %37
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load ptr, ptr %38, align 8, !tbaa !43
  store ptr %49, ptr %45, align 8, !tbaa !45
  br label %50

50:                                               ; preds = %48, %44
  %51 = load ptr, ptr %37, align 8, !tbaa !41
  br label %52

52:                                               ; preds = %50, %19
  %53 = phi ptr [ %37, %50 ], [ %14, %19 ]
  %54 = phi ptr [ %51, %50 ], [ %20, %19 ]
  %55 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %53) #11
  %56 = load i64, ptr %3, align 8, !tbaa !34
  %57 = add i64 %56, -1
  store i64 %57, ptr %3, align 8, !tbaa !34
  %58 = load ptr, ptr %7, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %58) #11
  br label %59

59:                                               ; preds = %2, %52
  %60 = phi ptr [ %54, %52 ], [ null, %2 ]
  ret ptr %60
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @RemoveElementByValueFromLinkedList(ptr nocapture noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i64 %4, 0
  %6 = icmp eq ptr %1, null
  %7 = or i1 %6, %5
  br i1 %7, label %58, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %10) #11
  %11 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %26

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = icmp eq ptr %17, %12
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._ElementInfo, ptr %12, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  store ptr %21, ptr %16, align 8, !tbaa !45
  br label %22

22:                                               ; preds = %19, %15
  %23 = getelementptr inbounds %struct._ElementInfo, ptr %12, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  store ptr %24, ptr %11, align 8, !tbaa !48
  %25 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %12) #11
  br label %54

26:                                               ; preds = %8, %31
  %27 = phi ptr [ %29, %31 ], [ %12, %8 ]
  %28 = getelementptr inbounds %struct._ElementInfo, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !43
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr %29, align 8, !tbaa !41
  %33 = icmp eq ptr %32, %1
  br i1 %33, label %34, label %26, !llvm.loop !90

34:                                               ; preds = %31
  br i1 %30, label %35, label %37

35:                                               ; preds = %26, %34
  %36 = load ptr, ptr %9, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %36) #11
  br label %53

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct._ElementInfo, ptr %27, i64 0, i32 1
  %39 = getelementptr inbounds %struct._ElementInfo, ptr %29, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  store ptr %40, ptr %38, align 8, !tbaa !43
  %41 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  %43 = icmp eq ptr %29, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store ptr %27, ptr %41, align 8, !tbaa !46
  br label %45

45:                                               ; preds = %44, %37
  %46 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !45
  %48 = icmp eq ptr %47, %29
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load ptr, ptr %39, align 8, !tbaa !43
  store ptr %50, ptr %46, align 8, !tbaa !45
  br label %51

51:                                               ; preds = %49, %45
  %52 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %29) #11
  br label %53

53:                                               ; preds = %51, %35
  br i1 %30, label %58, label %54

54:                                               ; preds = %53, %22
  %55 = load i64, ptr %3, align 8, !tbaa !34
  %56 = add i64 %55, -1
  store i64 %56, ptr %3, align 8, !tbaa !34
  %57 = load ptr, ptr %9, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %57) #11
  br label %58

58:                                               ; preds = %2, %53, %54
  %59 = phi ptr [ %1, %54 ], [ null, %53 ], [ null, %2 ]
  ret ptr %59
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RemoveEntryFromHashmap(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %90, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  tail call void @LockSemaphoreInfo(ptr noundef %6) #11
  %7 = load ptr, ptr %0, align 8, !tbaa !72
  %8 = tail call i64 %7(ptr noundef nonnull %1) #11
  %9 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !55
  %13 = urem i64 %8, %12
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %15, null
  br i1 %16, label %88, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct._LinkedListInfo, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct._LinkedListInfo, ptr %15, i64 0, i32 4
  store ptr %19, ptr %20, align 8, !tbaa !45
  %21 = getelementptr inbounds %struct._LinkedListInfo, ptr %15, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %22) #11
  %23 = load ptr, ptr %20, align 8, !tbaa !45
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = load ptr, ptr %23, align 8, !tbaa !41
  %27 = getelementptr inbounds %struct._ElementInfo, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  store ptr %28, ptr %20, align 8, !tbaa !45
  br label %29

29:                                               ; preds = %17, %25
  %30 = phi ptr [ %26, %25 ], [ null, %17 ]
  %31 = load ptr, ptr %21, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %31) #11
  %32 = icmp eq ptr %30, null
  br i1 %32, label %88, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 1
  %35 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 2
  %36 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 5
  br label %37

37:                                               ; preds = %33, %83
  %38 = phi ptr [ undef, %33 ], [ %75, %83 ]
  %39 = phi ptr [ %30, %33 ], [ %84, %83 ]
  %40 = phi i64 [ 0, %33 ], [ %86, %83 ]
  %41 = load i64, ptr %39, align 8, !tbaa !73
  %42 = icmp eq i64 %41, %8
  br i1 %42, label %43, label %74

43:                                               ; preds = %37
  %44 = load ptr, ptr %34, align 8, !tbaa !74
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct._EntryInfo, ptr %39, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !58
  %49 = tail call i32 %44(ptr noundef nonnull %1, ptr noundef %48) #11
  br label %50

50:                                               ; preds = %46, %43
  %51 = phi i32 [ %49, %46 ], [ 1, %43 ]
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %72, label %53

53:                                               ; preds = %50
  %54 = tail call ptr @RemoveElementFromLinkedList(ptr noundef nonnull %15, i64 noundef %40)
  %55 = icmp eq ptr %54, null
  br i1 %55, label %69, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr %35, align 8, !tbaa !57
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct._EntryInfo, ptr %54, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !58
  %62 = tail call ptr %57(ptr noundef %61) #11
  store ptr %62, ptr %60, align 8, !tbaa !58
  br label %63

63:                                               ; preds = %59, %56
  %64 = getelementptr inbounds %struct._EntryInfo, ptr %54, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !61
  %66 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %54) #11
  %67 = load i64, ptr %36, align 8, !tbaa !71
  %68 = add i64 %67, -1
  store i64 %68, ptr %36, align 8, !tbaa !71
  br label %69

69:                                               ; preds = %53, %63
  %70 = phi ptr [ %65, %63 ], [ null, %53 ]
  %71 = load ptr, ptr %5, align 8, !tbaa !52
  tail call void @UnlockSemaphoreInfo(ptr noundef %71) #11
  br label %72

72:                                               ; preds = %69, %50
  %73 = phi ptr [ %38, %50 ], [ %70, %69 ]
  br i1 %52, label %74, label %90

74:                                               ; preds = %72, %37
  %75 = phi ptr [ %73, %72 ], [ %38, %37 ]
  %76 = load ptr, ptr %21, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %76) #11
  %77 = load ptr, ptr %20, align 8, !tbaa !45
  %78 = icmp eq ptr %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = load ptr, ptr %77, align 8, !tbaa !41
  %81 = getelementptr inbounds %struct._ElementInfo, ptr %77, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !43
  store ptr %82, ptr %20, align 8, !tbaa !45
  br label %83

83:                                               ; preds = %74, %79
  %84 = phi ptr [ %80, %79 ], [ null, %74 ]
  %85 = load ptr, ptr %21, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %85) #11
  %86 = add i64 %40, 1
  %87 = icmp eq ptr %84, null
  br i1 %87, label %88, label %37, !llvm.loop !91

88:                                               ; preds = %83, %29, %4
  %89 = load ptr, ptr %5, align 8, !tbaa !52
  tail call void @UnlockSemaphoreInfo(ptr noundef %89) #11
  br label %90

90:                                               ; preds = %72, %2, %88
  %91 = phi ptr [ null, %88 ], [ null, %2 ], [ %73, %72 ]
  ret ptr %91
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RemoveLastElementFromLinkedList(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %39, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %7) #11
  %8 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  store ptr null, ptr %8, align 8, !tbaa !45
  br label %14

14:                                               ; preds = %13, %5
  %15 = load i64, ptr %2, align 8, !tbaa !34
  %16 = icmp eq i64 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = load ptr, ptr %19, align 8, !tbaa !41
  store ptr null, ptr %18, align 8, !tbaa !48
  %21 = tail call ptr @RelinquishMagickMemory(ptr noundef %11) #11
  store ptr %21, ptr %10, align 8, !tbaa !46
  br label %34

22:                                               ; preds = %14
  %23 = load ptr, ptr %11, align 8, !tbaa !41
  %24 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  br label %26

26:                                               ; preds = %26, %22
  %27 = phi ptr [ %25, %22 ], [ %29, %26 ]
  %28 = getelementptr inbounds %struct._ElementInfo, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !43
  %30 = icmp eq ptr %29, %11
  br i1 %30, label %31, label %26, !llvm.loop !92

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct._ElementInfo, ptr %27, i64 0, i32 1
  %33 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %11) #11
  store ptr %27, ptr %10, align 8, !tbaa !46
  store ptr null, ptr %32, align 8, !tbaa !43
  br label %34

34:                                               ; preds = %31, %17
  %35 = phi ptr [ %20, %17 ], [ %23, %31 ]
  %36 = load i64, ptr %2, align 8, !tbaa !34
  %37 = add i64 %36, -1
  store i64 %37, ptr %2, align 8, !tbaa !34
  %38 = load ptr, ptr %6, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %38) #11
  br label %39

39:                                               ; preds = %1, %34
  %40 = phi ptr [ %35, %34 ], [ null, %1 ]
  ret ptr %40
}

; Function Attrs: nounwind uwtable
define dso_local void @ResetHashmapIterator(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  tail call void @LockSemaphoreInfo(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 6
  store i64 0, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct._HashmapInfo, ptr %0, i64 0, i32 7
  store i32 0, ptr %5, align 8, !tbaa !68
  %6 = load ptr, ptr %2, align 8, !tbaa !52
  tail call void @UnlockSemaphoreInfo(ptr noundef %6) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ResetLinkedListIterator(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct._LinkedListInfo, ptr %0, i64 0, i32 4
  store ptr %5, ptr %6, align 8, !tbaa !45
  %7 = load ptr, ptr %2, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %7) #11
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind allocsize(0,1) }

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
!34 = !{!35, !36, i64 8}
!35 = !{!"_LinkedListInfo", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !36, i64 48}
!36 = !{!"long", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!35, !36, i64 0}
!41 = !{!42, !39, i64 0}
!42 = !{!"_ElementInfo", !39, i64 0, !39, i64 8}
!43 = !{!42, !39, i64 8}
!44 = !{!35, !39, i64 40}
!45 = !{!35, !39, i64 32}
!46 = !{!35, !39, i64 24}
!47 = !{!39, !39, i64 0}
!48 = !{!35, !39, i64 16}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!53, !39, i64 72}
!53 = !{!"_HashmapInfo", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !54, i64 56, !39, i64 64, !39, i64 72, !36, i64 80}
!54 = !{!"int", !37, i64 0}
!55 = !{!53, !36, i64 32}
!56 = !{!53, !39, i64 64}
!57 = !{!53, !39, i64 16}
!58 = !{!59, !39, i64 8}
!59 = !{!"_EntryInfo", !36, i64 0, !39, i64 8, !39, i64 16}
!60 = !{!53, !39, i64 24}
!61 = !{!59, !39, i64 16}
!62 = distinct !{!62, !50, !51}
!63 = distinct !{!63, !50, !51}
!64 = !{!35, !36, i64 48}
!65 = distinct !{!65, !50, !51}
!66 = !{!53, !36, i64 80}
!67 = !{!53, !36, i64 48}
!68 = !{!53, !54, i64 56}
!69 = distinct !{!69, !50, !51}
!70 = distinct !{!70, !50, !51}
!71 = !{!53, !36, i64 40}
!72 = !{!53, !39, i64 0}
!73 = !{!59, !36, i64 0}
!74 = !{!53, !39, i64 8}
!75 = distinct !{!75, !50, !51}
!76 = distinct !{!76, !50, !51}
!77 = !{!37, !37, i64 0}
!78 = distinct !{!78, !50, !51}
!79 = distinct !{!79, !50, !51}
!80 = distinct !{!80, !50, !51}
!81 = distinct !{!81, !50, !51}
!82 = distinct !{!82, !50, !51}
!83 = !{!54, !54, i64 0}
!84 = distinct !{!84, !50, !51}
!85 = !{!36, !36, i64 0}
!86 = distinct !{!86, !50, !51}
!87 = distinct !{!87, !50, !51}
!88 = distinct !{!88, !50, !51}
!89 = distinct !{!89, !50, !51}
!90 = distinct !{!90, !50, !51}
!91 = distinct !{!91, !50, !51}
!92 = distinct !{!92, !50, !51}
