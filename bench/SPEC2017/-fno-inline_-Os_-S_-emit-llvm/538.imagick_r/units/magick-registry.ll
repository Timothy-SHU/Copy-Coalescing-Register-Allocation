; ModuleID = 'magick/registry.c'
source_filename = "magick/registry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._RegistryInfo = type { i32, ptr, i64 }

@.str = private unnamed_addr constant [18 x i8] c"magick/registry.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@registry = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"UnableToGetRegistryID\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@registry_semaphore = internal global ptr null, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"UnableToSetRegistry\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DefineImageRegistry(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #6
  %6 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef %1, i64 noundef 4096) #7
  br label %7

7:                                                ; preds = %10, %3
  %8 = phi ptr [ %4, %3 ], [ %11, %10 ]
  %9 = load i8, ptr %8, align 1, !tbaa !5
  switch i8 %9, label %10 [
    i8 0, label %12
    i8 61, label %12
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, ptr %8, i64 1
  br label %7, !llvm.loop !8

12:                                               ; preds = %7, %7
  store i8 0, ptr %5, align 16, !tbaa !5
  %13 = icmp eq i8 %9, 61
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = getelementptr inbounds i8, ptr %8, i64 1
  %16 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %15, i64 noundef 4096) #7
  br label %17

17:                                               ; preds = %14, %12
  store i8 0, ptr %8, align 1, !tbaa !5
  %18 = call i32 @SetImageRegistry(i32 noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %2) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #6
  ret i32 %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SetImageRegistry(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = tail call i32 @IsEventLogging() #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 467, ptr noundef nonnull @.str.2, ptr noundef %1) #7
  br label %10

10:                                               ; preds = %8, %4
  %11 = icmp eq ptr %2, null
  br i1 %11, label %68, label %12

12:                                               ; preds = %10
  switch i32 %0, label %13 [
    i32 2, label %23
    i32 1, label %15
  ]

13:                                               ; preds = %12
  %14 = tail call ptr @ConstantString(ptr noundef nonnull %2) #7
  br label %31

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 66
  %17 = load i64, ptr %16, align 8, !tbaa !10
  %18 = icmp eq i64 %17, 2880220587
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = tail call ptr @CloneImageList(ptr noundef nonnull %2, ptr noundef %3) #7
  br label %31

21:                                               ; preds = %15
  %22 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 491, i32 noundef 490, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, ptr noundef %1) #7
  br label %68

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 57
  %25 = load i64, ptr %24, align 8, !tbaa !27
  %26 = icmp eq i64 %25, 2880220587
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = tail call ptr @CloneImageInfo(ptr noundef nonnull %2) #7
  br label %31

29:                                               ; preds = %23
  %30 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 506, i32 noundef 490, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, ptr noundef %1) #7
  br label %68

31:                                               ; preds = %27, %19, %13
  %32 = phi ptr [ %14, %13 ], [ %20, %19 ], [ %28, %27 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %68, label %34

34:                                               ; preds = %31
  %35 = tail call dereferenceable_or_null(24) ptr @AcquireMagickMemory(i64 noundef 24) #9
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #6
  call void @GetExceptionInfo(ptr noundef nonnull %5) #7
  %38 = tail call ptr @__errno_location() #10
  %39 = load i32, ptr %38, align 4, !tbaa !29
  %40 = call ptr @GetExceptionMessage(i32 noundef %39) #7
  %41 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 518, i32 noundef 700, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef %40) #7
  %42 = call ptr @DestroyString(ptr noundef %40) #7
  call void @CatchException(ptr noundef nonnull %5) #7
  %43 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #7
  call void @MagickCoreTerminus() #7
  call void @_exit(i32 noundef 1) #11
  unreachable

44:                                               ; preds = %34
  %45 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %35, i32 noundef 0, i64 noundef 24) #7
  store i32 %0, ptr %35, align 8, !tbaa !30
  %46 = getelementptr inbounds %struct._RegistryInfo, ptr %35, i64 0, i32 1
  store ptr %32, ptr %46, align 8, !tbaa !32
  %47 = getelementptr inbounds %struct._RegistryInfo, ptr %35, i64 0, i32 2
  store i64 2880220587, ptr %47, align 8, !tbaa !33
  %48 = load ptr, ptr @registry, align 8, !tbaa !34
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %64

50:                                               ; preds = %44
  %51 = load ptr, ptr @registry_semaphore, align 8, !tbaa !34
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @registry_semaphore) #7
  %54 = load ptr, ptr @registry_semaphore, align 8, !tbaa !34
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi ptr [ %54, %53 ], [ %51, %50 ]
  tail call void @LockSemaphoreInfo(ptr noundef %56) #7
  %57 = load ptr, ptr @registry, align 8, !tbaa !34
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @RelinquishMagickMemory, ptr noundef nonnull @DestroyRegistryNode) #7
  store ptr %60, ptr @registry, align 8, !tbaa !34
  br label %61

61:                                               ; preds = %59, %55
  %62 = load ptr, ptr @registry_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %62) #7
  %63 = load ptr, ptr @registry, align 8, !tbaa !34
  br label %64

64:                                               ; preds = %61, %44
  %65 = phi ptr [ %63, %61 ], [ %48, %44 ]
  %66 = tail call ptr @ConstantString(ptr noundef %1) #7
  %67 = tail call i32 @AddValueToSplayTree(ptr noundef %65, ptr noundef %66, ptr noundef nonnull %35) #7
  br label %68

68:                                               ; preds = %29, %21, %31, %10, %64
  %69 = phi i32 [ %67, %64 ], [ 0, %21 ], [ 0, %29 ], [ 0, %10 ], [ 0, %31 ]
  ret i32 %69
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DeleteImageRegistry(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @IsEventLogging() #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 152, ptr noundef nonnull @.str.2, ptr noundef %0) #7
  br label %6

6:                                                ; preds = %4, %1
  %7 = load ptr, ptr @registry, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @DeleteNodeFromSplayTree(ptr noundef nonnull %7, ptr noundef %0) #7
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i32 [ %10, %9 ], [ 0, %6 ]
  ret i32 %12
}

; Function Attrs: optsize
declare i32 @IsEventLogging() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @DeleteNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetImageRegistry(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @IsEventLogging() #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 195, ptr noundef nonnull @.str.2, ptr noundef %1) #7
  br label %8

8:                                                ; preds = %6, %3
  %9 = load ptr, ptr @registry, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %47, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @GetValueFromSplayTree(ptr noundef nonnull %9, ptr noundef %1) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 201, i32 noundef 490, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %1) #7
  br label %47

16:                                               ; preds = %11
  switch i32 %0, label %47 [
    i32 1, label %17
    i32 2, label %24
    i32 3, label %31
  ]

17:                                               ; preds = %16
  %18 = load i32, ptr %12, align 8, !tbaa !30
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %47

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._RegistryInfo, ptr %12, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !32
  %23 = tail call ptr @CloneImageList(ptr noundef %22, ptr noundef %2) #7
  br label %47

24:                                               ; preds = %16
  %25 = load i32, ptr %12, align 8, !tbaa !30
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %47

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct._RegistryInfo, ptr %12, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !32
  %30 = tail call ptr @CloneImageInfo(ptr noundef %29) #7
  br label %47

31:                                               ; preds = %16
  %32 = load i32, ptr %12, align 8, !tbaa !30
  switch i32 %32, label %47 [
    i32 1, label %33
    i32 2, label %38
    i32 3, label %43
  ]

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct._RegistryInfo, ptr %12, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !32
  %36 = getelementptr inbounds %struct._Image, ptr %35, i64 0, i32 53
  %37 = tail call ptr @ConstantString(ptr noundef nonnull %36) #7
  br label %47

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct._RegistryInfo, ptr %12, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !32
  %41 = getelementptr inbounds %struct._ImageInfo, ptr %40, i64 0, i32 51
  %42 = tail call ptr @ConstantString(ptr noundef nonnull %41) #7
  br label %47

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct._RegistryInfo, ptr %12, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !32
  %46 = tail call ptr @ConstantString(ptr noundef %45) #7
  br label %47

47:                                               ; preds = %20, %17, %27, %24, %31, %43, %38, %33, %16, %8, %14
  %48 = phi ptr [ null, %14 ], [ null, %8 ], [ null, %16 ], [ null, %31 ], [ %46, %43 ], [ %42, %38 ], [ %37, %33 ], [ %30, %27 ], [ null, %24 ], [ %23, %20 ], [ null, %17 ]
  ret ptr %48
}

; Function Attrs: optsize
declare ptr @GetValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CloneImageList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CloneImageInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ConstantString(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetNextImageRegistry() local_unnamed_addr #0 {
  %1 = tail call i32 @IsEventLogging() #7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 273, ptr noundef nonnull @.str.5) #7
  br label %5

5:                                                ; preds = %3, %0
  %6 = load ptr, ptr @registry, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @GetNextKeyInSplayTree(ptr noundef nonnull %6) #7
  br label %10

10:                                               ; preds = %5, %8
  %11 = phi ptr [ %9, %8 ], [ null, %5 ]
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @GetNextKeyInSplayTree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @RegistryComponentGenesis() local_unnamed_addr #0 {
  %1 = load ptr, ptr @registry_semaphore, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @AllocateSemaphoreInfo() #7
  store ptr %4, ptr @registry_semaphore, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %3, %0
  ret i32 1
}

; Function Attrs: optsize
declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RegistryComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @registry_semaphore, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @registry_semaphore) #7
  %4 = load ptr, ptr @registry_semaphore, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  tail call void @LockSemaphoreInfo(ptr noundef %6) #7
  %7 = tail call i32 @IsEventLogging() #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 328, ptr noundef nonnull @.str.5) #7
  br label %11

11:                                               ; preds = %9, %5
  %12 = load ptr, ptr @registry, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @DestroySplayTree(ptr noundef nonnull %12) #7
  store ptr %15, ptr @registry, align 8, !tbaa !34
  br label %16

16:                                               ; preds = %14, %11
  %17 = load ptr, ptr @registry_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %17) #7
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @registry_semaphore) #7
  ret void
}

; Function Attrs: optsize
declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RemoveImageRegistry(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @IsEventLogging() #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 361, ptr noundef nonnull @.str.2, ptr noundef %0) #7
  br label %6

6:                                                ; preds = %4, %1
  %7 = load ptr, ptr @registry, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @RemoveNodeFromSplayTree(ptr noundef nonnull %7, ptr noundef %0) #7
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ]
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @RemoveNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ResetImageRegistryIterator() local_unnamed_addr #0 {
  %1 = tail call i32 @IsEventLogging() #7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 390, ptr noundef nonnull @.str.5) #7
  br label %5

5:                                                ; preds = %3, %0
  %6 = load ptr, ptr @registry, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @ResetSplayTreeIterator(ptr noundef nonnull %6) #7
  br label %9

9:                                                ; preds = %5, %8
  ret void
}

; Function Attrs: optsize
declare void @ResetSplayTreeIterator(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @DestroyRegistryNode(ptr noundef %0) #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !30
  %3 = getelementptr inbounds %struct._RegistryInfo, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !32
  switch i32 %2, label %5 [
    i32 2, label %9
    i32 1, label %7
  ]

5:                                                ; preds = %1
  %6 = tail call ptr @RelinquishMagickMemory(ptr noundef %4) #7
  br label %11

7:                                                ; preds = %1
  %8 = tail call ptr @DestroyImageList(ptr noundef %4) #7
  br label %11

9:                                                ; preds = %1
  %10 = tail call ptr @DestroyImageInfo(ptr noundef %4) #7
  br label %11

11:                                               ; preds = %9, %7, %5
  %12 = phi ptr [ %10, %9 ], [ %8, %7 ], [ %6, %5 ]
  store ptr %12, ptr %3, align 8, !tbaa !32
  %13 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #7
  ret ptr %13
}

; Function Attrs: optsize
declare i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImageList(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize allocsize(0) }
attributes #10 = { nounwind optsize willreturn memory(none) }
attributes #11 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !13, i64 13080}
!11 = !{!"_Image", !12, i64 0, !12, i64 4, !12, i64 8, !13, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !14, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !17, i64 104, !18, i64 112, !12, i64 208, !14, i64 216, !12, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !13, i64 256, !17, i64 264, !17, i64 272, !20, i64 280, !20, i64 312, !20, i64 344, !17, i64 376, !17, i64 384, !17, i64 392, !12, i64 400, !12, i64 404, !12, i64 408, !12, i64 412, !12, i64 416, !12, i64 420, !14, i64 424, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !21, i64 480, !22, i64 504, !14, i64 568, !14, i64 576, !14, i64 584, !14, i64 592, !14, i64 600, !14, i64 608, !6, i64 616, !6, i64 4712, !6, i64 8808, !13, i64 12904, !13, i64 12912, !24, i64 12920, !12, i64 12976, !13, i64 12984, !14, i64 12992, !25, i64 13000, !25, i64 13032, !14, i64 13064, !13, i64 13072, !13, i64 13080, !14, i64 13088, !14, i64 13096, !14, i64 13104, !12, i64 13112, !12, i64 13116, !15, i64 13120, !14, i64 13128, !20, i64 13136, !14, i64 13168, !14, i64 13176, !12, i64 13184, !12, i64 13188, !26, i64 13192, !12, i64 13200, !13, i64 13208, !13, i64 13216, !12, i64 13224, !13, i64 13232}
!12 = !{!"int", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"_PixelPacket", !16, i64 0, !16, i64 2, !16, i64 4, !16, i64 6}
!16 = !{!"short", !6, i64 0}
!17 = !{!"double", !6, i64 0}
!18 = !{!"_ChromaticityInfo", !19, i64 0, !19, i64 24, !19, i64 48, !19, i64 72}
!19 = !{!"_PrimaryInfo", !17, i64 0, !17, i64 8, !17, i64 16}
!20 = !{!"_RectangleInfo", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!21 = !{!"_ErrorInfo", !17, i64 0, !17, i64 8, !17, i64 16}
!22 = !{!"_TimerInfo", !23, i64 0, !23, i64 24, !12, i64 48, !13, i64 56}
!23 = !{!"_Timer", !17, i64 0, !17, i64 8, !17, i64 16}
!24 = !{!"_ExceptionInfo", !12, i64 0, !12, i64 4, !14, i64 8, !14, i64 16, !14, i64 24, !12, i64 32, !14, i64 40, !13, i64 48}
!25 = !{!"_ProfileInfo", !14, i64 0, !13, i64 8, !14, i64 16, !13, i64 24}
!26 = !{!"long long", !6, i64 0}
!27 = !{!28, !13, i64 16752}
!28 = !{!"_ImageInfo", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !12, i64 80, !12, i64 84, !12, i64 88, !13, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !17, i64 144, !17, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !12, i64 184, !12, i64 188, !13, i64 192, !12, i64 200, !12, i64 204, !12, i64 208, !13, i64 216, !12, i64 224, !12, i64 228, !14, i64 232, !14, i64 240, !12, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !13, i64 320, !6, i64 328, !6, i64 4424, !6, i64 8520, !6, i64 12616, !12, i64 16712, !14, i64 16720, !13, i64 16728, !13, i64 16736, !15, i64 16744, !13, i64 16752, !12, i64 16760, !15, i64 16764, !14, i64 16776, !12, i64 16784}
!29 = !{!12, !12, i64 0}
!30 = !{!31, !12, i64 0}
!31 = !{!"_RegistryInfo", !12, i64 0, !14, i64 8, !13, i64 16}
!32 = !{!31, !14, i64 8}
!33 = !{!31, !13, i64 16}
!34 = !{!14, !14, i64 0}
