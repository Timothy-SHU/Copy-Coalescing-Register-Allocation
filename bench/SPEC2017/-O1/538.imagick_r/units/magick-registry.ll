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

; Function Attrs: nounwind uwtable
define dso_local i32 @DefineImageRegistry(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #6
  %6 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef %1, i64 noundef 4096) #6
  br label %7

7:                                                ; preds = %10, %3
  %8 = phi ptr [ %4, %3 ], [ %11, %10 ]
  %9 = load i8, ptr %8, align 1, !tbaa !34
  switch i8 %9, label %10 [
    i8 0, label %12
    i8 61, label %12
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, ptr %8, i64 1
  br label %7, !llvm.loop !37

12:                                               ; preds = %7, %7
  store i8 0, ptr %5, align 16, !tbaa !34
  %13 = icmp eq i8 %9, 61
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = getelementptr inbounds i8, ptr %8, i64 1
  %16 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %15, i64 noundef 4096) #6
  br label %17

17:                                               ; preds = %14, %12
  store i8 0, ptr %8, align 1, !tbaa !34
  %18 = call i32 @SetImageRegistry(i32 noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %2)
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #6
  ret i32 %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageRegistry(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = tail call i32 @IsEventLogging() #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 467, ptr noundef nonnull @.str.2, ptr noundef %1) #6
  br label %10

10:                                               ; preds = %8, %4
  %11 = icmp eq ptr %2, null
  br i1 %11, label %70, label %12

12:                                               ; preds = %10
  switch i32 %0, label %13 [
    i32 2, label %25
    i32 1, label %15
  ]

13:                                               ; preds = %12
  %14 = tail call ptr @ConstantString(ptr noundef nonnull %2) #6
  br label %35

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 66
  %17 = load i64, ptr %16, align 8, !tbaa !40
  %18 = icmp eq i64 %17, 2880220587
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 491, i32 noundef 490, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, ptr noundef %1) #6
  br label %23

21:                                               ; preds = %15
  %22 = tail call ptr @CloneImageList(ptr noundef nonnull %2, ptr noundef %3) #6
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ null, %19 ], [ %22, %21 ]
  br i1 %18, label %35, label %70

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 57
  %27 = load i64, ptr %26, align 8, !tbaa !57
  %28 = icmp eq i64 %27, 2880220587
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 506, i32 noundef 490, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, ptr noundef %1) #6
  br label %33

31:                                               ; preds = %25
  %32 = tail call ptr @CloneImageInfo(ptr noundef nonnull %2) #6
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi ptr [ null, %29 ], [ %32, %31 ]
  br i1 %28, label %35, label %70

35:                                               ; preds = %23, %33, %13
  %36 = phi ptr [ %14, %13 ], [ %24, %23 ], [ %34, %33 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %70, label %38

38:                                               ; preds = %35
  %39 = tail call dereferenceable_or_null(24) ptr @AcquireMagickMemory(i64 noundef 24) #7
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #6
  call void @GetExceptionInfo(ptr noundef nonnull %5) #6
  %42 = tail call ptr @__errno_location() #8
  %43 = load i32, ptr %42, align 4, !tbaa !59
  %44 = call ptr @GetExceptionMessage(i32 noundef %43) #6
  %45 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 518, i32 noundef 700, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef %44) #6
  %46 = call ptr @DestroyString(ptr noundef %44) #6
  call void @CatchException(ptr noundef nonnull %5) #6
  %47 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #6
  call void @MagickCoreTerminus() #6
  call void @_exit(i32 noundef 1) #9
  unreachable

48:                                               ; preds = %38
  %49 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %39, i32 noundef 0, i64 noundef 24) #6
  store i32 %0, ptr %39, align 8, !tbaa !60
  %50 = getelementptr inbounds %struct._RegistryInfo, ptr %39, i64 0, i32 1
  store ptr %36, ptr %50, align 8, !tbaa !62
  %51 = getelementptr inbounds %struct._RegistryInfo, ptr %39, i64 0, i32 2
  store i64 2880220587, ptr %51, align 8, !tbaa !63
  %52 = load ptr, ptr @registry, align 8, !tbaa !64
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %48
  %55 = load ptr, ptr @registry_semaphore, align 8, !tbaa !64
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @registry_semaphore) #6
  br label %58

58:                                               ; preds = %57, %54
  %59 = load ptr, ptr @registry_semaphore, align 8, !tbaa !64
  tail call void @LockSemaphoreInfo(ptr noundef %59) #6
  %60 = load ptr, ptr @registry, align 8, !tbaa !64
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @RelinquishMagickMemory, ptr noundef nonnull @DestroyRegistryNode) #6
  store ptr %63, ptr @registry, align 8, !tbaa !64
  br label %64

64:                                               ; preds = %62, %58
  %65 = load ptr, ptr @registry_semaphore, align 8, !tbaa !64
  tail call void @UnlockSemaphoreInfo(ptr noundef %65) #6
  br label %66

66:                                               ; preds = %64, %48
  %67 = load ptr, ptr @registry, align 8, !tbaa !64
  %68 = tail call ptr @ConstantString(ptr noundef %1) #6
  %69 = tail call i32 @AddValueToSplayTree(ptr noundef %67, ptr noundef %68, ptr noundef nonnull %39) #6
  br label %70

70:                                               ; preds = %35, %10, %23, %33, %66
  %71 = phi i32 [ %69, %66 ], [ 0, %23 ], [ 0, %33 ], [ 0, %10 ], [ 0, %35 ]
  ret i32 %71
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @DeleteImageRegistry(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @IsEventLogging() #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 152, ptr noundef nonnull @.str.2, ptr noundef %0) #6
  br label %6

6:                                                ; preds = %4, %1
  %7 = load ptr, ptr @registry, align 8, !tbaa !64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @DeleteNodeFromSplayTree(ptr noundef nonnull %7, ptr noundef %0) #6
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i32 [ %10, %9 ], [ 0, %6 ]
  ret i32 %12
}

declare i32 @IsEventLogging() local_unnamed_addr #2

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @DeleteNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetImageRegistry(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @IsEventLogging() #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 195, ptr noundef nonnull @.str.2, ptr noundef %1) #6
  br label %8

8:                                                ; preds = %6, %3
  %9 = load ptr, ptr @registry, align 8, !tbaa !64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %47, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @GetValueFromSplayTree(ptr noundef nonnull %9, ptr noundef %1) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 201, i32 noundef 490, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %1) #6
  br label %47

16:                                               ; preds = %11
  switch i32 %0, label %47 [
    i32 1, label %17
    i32 2, label %24
    i32 3, label %31
  ]

17:                                               ; preds = %16
  %18 = load i32, ptr %12, align 8, !tbaa !60
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %47

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._RegistryInfo, ptr %12, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !62
  %23 = tail call ptr @CloneImageList(ptr noundef %22, ptr noundef %2) #6
  br label %47

24:                                               ; preds = %16
  %25 = load i32, ptr %12, align 8, !tbaa !60
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %47

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct._RegistryInfo, ptr %12, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !62
  %30 = tail call ptr @CloneImageInfo(ptr noundef %29) #6
  br label %47

31:                                               ; preds = %16
  %32 = load i32, ptr %12, align 8, !tbaa !60
  switch i32 %32, label %47 [
    i32 1, label %33
    i32 2, label %38
    i32 3, label %43
  ]

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct._RegistryInfo, ptr %12, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !62
  %36 = getelementptr inbounds %struct._Image, ptr %35, i64 0, i32 53
  %37 = tail call ptr @ConstantString(ptr noundef nonnull %36) #6
  br label %47

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct._RegistryInfo, ptr %12, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !62
  %41 = getelementptr inbounds %struct._ImageInfo, ptr %40, i64 0, i32 51
  %42 = tail call ptr @ConstantString(ptr noundef nonnull %41) #6
  br label %47

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct._RegistryInfo, ptr %12, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !62
  %46 = tail call ptr @ConstantString(ptr noundef %45) #6
  br label %47

47:                                               ; preds = %20, %17, %27, %24, %31, %43, %38, %33, %16, %8, %14
  %48 = phi ptr [ null, %14 ], [ null, %8 ], [ null, %16 ], [ null, %31 ], [ %46, %43 ], [ %42, %38 ], [ %37, %33 ], [ %30, %27 ], [ null, %24 ], [ %23, %20 ], [ null, %17 ]
  ret ptr %48
}

declare ptr @GetValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @CloneImageList(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CloneImageInfo(ptr noundef) local_unnamed_addr #2

declare ptr @ConstantString(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetNextImageRegistry() local_unnamed_addr #0 {
  %1 = tail call i32 @IsEventLogging() #6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 273, ptr noundef nonnull @.str.5) #6
  br label %5

5:                                                ; preds = %3, %0
  %6 = load ptr, ptr @registry, align 8, !tbaa !64
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @GetNextKeyInSplayTree(ptr noundef nonnull %6) #6
  br label %10

10:                                               ; preds = %5, %8
  %11 = phi ptr [ %9, %8 ], [ null, %5 ]
  ret ptr %11
}

declare ptr @GetNextKeyInSplayTree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @RegistryComponentGenesis() local_unnamed_addr #0 {
  %1 = load ptr, ptr @registry_semaphore, align 8, !tbaa !64
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @AllocateSemaphoreInfo() #6
  store ptr %4, ptr @registry_semaphore, align 8, !tbaa !64
  br label %5

5:                                                ; preds = %3, %0
  ret i32 1
}

declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @RegistryComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @registry_semaphore, align 8, !tbaa !64
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @registry_semaphore) #6
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @registry_semaphore, align 8, !tbaa !64
  tail call void @LockSemaphoreInfo(ptr noundef %5) #6
  %6 = tail call i32 @IsEventLogging() #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 328, ptr noundef nonnull @.str.5) #6
  br label %10

10:                                               ; preds = %8, %4
  %11 = load ptr, ptr @registry, align 8, !tbaa !64
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @DestroySplayTree(ptr noundef nonnull %11) #6
  store ptr %14, ptr @registry, align 8, !tbaa !64
  br label %15

15:                                               ; preds = %13, %10
  %16 = load ptr, ptr @registry_semaphore, align 8, !tbaa !64
  tail call void @UnlockSemaphoreInfo(ptr noundef %16) #6
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @registry_semaphore) #6
  ret void
}

declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #2

declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @RemoveImageRegistry(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @IsEventLogging() #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 361, ptr noundef nonnull @.str.2, ptr noundef %0) #6
  br label %6

6:                                                ; preds = %4, %1
  %7 = load ptr, ptr @registry, align 8, !tbaa !64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @RemoveNodeFromSplayTree(ptr noundef nonnull %7, ptr noundef %0) #6
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ]
  ret ptr %12
}

declare ptr @RemoveNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ResetImageRegistryIterator() local_unnamed_addr #0 {
  %1 = tail call i32 @IsEventLogging() #6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 390, ptr noundef nonnull @.str.5) #6
  br label %5

5:                                                ; preds = %3, %0
  %6 = load ptr, ptr @registry, align 8, !tbaa !64
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @ResetSplayTreeIterator(ptr noundef nonnull %6) #6
  br label %9

9:                                                ; preds = %5, %8
  ret void
}

declare void @ResetSplayTreeIterator(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #3

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

declare void @CatchException(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #5

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #2

declare ptr @RelinquishMagickMemory(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @DestroyRegistryNode(ptr noundef %0) #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct._RegistryInfo, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  switch i32 %2, label %5 [
    i32 2, label %9
    i32 1, label %7
  ]

5:                                                ; preds = %1
  %6 = tail call ptr @RelinquishMagickMemory(ptr noundef %4) #6
  br label %11

7:                                                ; preds = %1
  %8 = tail call ptr @DestroyImageList(ptr noundef %4) #6
  br label %11

9:                                                ; preds = %1
  %10 = tail call ptr @DestroyImageInfo(ptr noundef %4) #6
  br label %11

11:                                               ; preds = %9, %7, %5
  %12 = phi ptr [ %10, %9 ], [ %8, %7 ], [ %6, %5 ]
  store ptr %12, ptr %3, align 8, !tbaa !62
  %13 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #6
  ret ptr %13
}

declare i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DestroyImageList(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind willreturn memory(none) }
attributes #9 = { noreturn nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = distinct !{!37, !38, !39}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{!41, !43, i64 13080}
!41 = !{!"_Image", !42, i64 0, !42, i64 4, !42, i64 8, !43, i64 16, !42, i64 24, !42, i64 28, !42, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !44, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !47, i64 104, !48, i64 112, !42, i64 208, !44, i64 216, !42, i64 224, !44, i64 232, !44, i64 240, !44, i64 248, !43, i64 256, !47, i64 264, !47, i64 272, !50, i64 280, !50, i64 312, !50, i64 344, !47, i64 376, !47, i64 384, !47, i64 392, !42, i64 400, !42, i64 404, !42, i64 408, !42, i64 412, !42, i64 416, !42, i64 420, !44, i64 424, !43, i64 432, !43, i64 440, !43, i64 448, !43, i64 456, !43, i64 464, !43, i64 472, !51, i64 480, !52, i64 504, !44, i64 568, !44, i64 576, !44, i64 584, !44, i64 592, !44, i64 600, !44, i64 608, !35, i64 616, !35, i64 4712, !35, i64 8808, !43, i64 12904, !43, i64 12912, !54, i64 12920, !42, i64 12976, !43, i64 12984, !44, i64 12992, !55, i64 13000, !55, i64 13032, !44, i64 13064, !43, i64 13072, !43, i64 13080, !44, i64 13088, !44, i64 13096, !44, i64 13104, !42, i64 13112, !42, i64 13116, !45, i64 13120, !44, i64 13128, !50, i64 13136, !44, i64 13168, !44, i64 13176, !42, i64 13184, !42, i64 13188, !56, i64 13192, !42, i64 13200, !43, i64 13208, !43, i64 13216, !42, i64 13224, !43, i64 13232}
!42 = !{!"int", !35, i64 0}
!43 = !{!"long", !35, i64 0}
!44 = !{!"any pointer", !35, i64 0}
!45 = !{!"_PixelPacket", !46, i64 0, !46, i64 2, !46, i64 4, !46, i64 6}
!46 = !{!"short", !35, i64 0}
!47 = !{!"double", !35, i64 0}
!48 = !{!"_ChromaticityInfo", !49, i64 0, !49, i64 24, !49, i64 48, !49, i64 72}
!49 = !{!"_PrimaryInfo", !47, i64 0, !47, i64 8, !47, i64 16}
!50 = !{!"_RectangleInfo", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24}
!51 = !{!"_ErrorInfo", !47, i64 0, !47, i64 8, !47, i64 16}
!52 = !{!"_TimerInfo", !53, i64 0, !53, i64 24, !42, i64 48, !43, i64 56}
!53 = !{!"_Timer", !47, i64 0, !47, i64 8, !47, i64 16}
!54 = !{!"_ExceptionInfo", !42, i64 0, !42, i64 4, !44, i64 8, !44, i64 16, !44, i64 24, !42, i64 32, !44, i64 40, !43, i64 48}
!55 = !{!"_ProfileInfo", !44, i64 0, !43, i64 8, !44, i64 16, !43, i64 24}
!56 = !{!"long long", !35, i64 0}
!57 = !{!58, !43, i64 16752}
!58 = !{!"_ImageInfo", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !42, i64 80, !42, i64 84, !42, i64 88, !43, i64 96, !44, i64 104, !44, i64 112, !44, i64 120, !44, i64 128, !44, i64 136, !47, i64 144, !47, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !42, i64 184, !42, i64 188, !43, i64 192, !42, i64 200, !42, i64 204, !42, i64 208, !43, i64 216, !42, i64 224, !42, i64 228, !44, i64 232, !44, i64 240, !42, i64 248, !44, i64 256, !44, i64 264, !44, i64 272, !44, i64 280, !44, i64 288, !44, i64 296, !44, i64 304, !44, i64 312, !43, i64 320, !35, i64 328, !35, i64 4424, !35, i64 8520, !35, i64 12616, !42, i64 16712, !44, i64 16720, !43, i64 16728, !43, i64 16736, !45, i64 16744, !43, i64 16752, !42, i64 16760, !45, i64 16764, !44, i64 16776, !42, i64 16784}
!59 = !{!42, !42, i64 0}
!60 = !{!61, !42, i64 0}
!61 = !{!"_RegistryInfo", !42, i64 0, !44, i64 8, !43, i64 16}
!62 = !{!61, !44, i64 8}
!63 = !{!61, !43, i64 16}
!64 = !{!44, !44, i64 0}
