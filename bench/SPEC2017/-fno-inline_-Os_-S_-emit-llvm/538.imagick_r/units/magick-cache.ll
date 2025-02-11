; ModuleID = 'magick/cache.c'
source_filename = "magick/cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._CacheInfo = type { i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, i32, %struct._MagickPixelPacket, i64, ptr, ptr, ptr, i32, i32, [4096 x i8], [4096 x i8], %struct._CacheMethods, ptr, i64, ptr, i32, i32, i32, i64, ptr, ptr, i64, i64 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._CacheMethods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._NexusInfo = type { i32, %struct._RectangleInfo, i64, ptr, ptr, i32, ptr, i64 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }

@.str = private unnamed_addr constant [15 x i8] c"magick/cache.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"MAGICK_SYNCHRONIZE\00", align 1
@cache_semaphore = internal global ptr null, align 8
@instantiate_cache = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"destroy %s\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"attach persistent cache\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Usurp resident persistent cache\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"PixelsAreNotAuthentic\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"PixelCacheIsNotOpen\00", align 1
@DitherMatrix = internal unnamed_addr constant [64 x i64] [i64 0, i64 48, i64 12, i64 60, i64 3, i64 51, i64 15, i64 63, i64 32, i64 16, i64 44, i64 28, i64 35, i64 19, i64 47, i64 31, i64 8, i64 56, i64 4, i64 52, i64 11, i64 59, i64 7, i64 55, i64 40, i64 24, i64 36, i64 20, i64 43, i64 27, i64 39, i64 23, i64 2, i64 50, i64 14, i64 62, i64 1, i64 49, i64 13, i64 61, i64 34, i64 18, i64 46, i64 30, i64 33, i64 17, i64 45, i64 29, i64 10, i64 58, i64 6, i64 54, i64 9, i64 57, i64 5, i64 53, i64 42, i64 26, i64 38, i64 22, i64 41, i64 25, i64 37, i64 21], align 16
@.str.12 = private unnamed_addr constant [23 x i8] c"NoPixelsDefinedInCache\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%s[%.20g]\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"PixelCacheAllocationFailed\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"open %s (%s %s, %.20gx%.20g %s)\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"Anonymous\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"Heap\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"UnableToOpenPixelCache\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"`%s': %s\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"open %s (%s[%d], %s, %.20gx%.20g %s)\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"CacheResourcesExhausted\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"UnableToExtendCache\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"extend %s (%s[%d], disk, %s)\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"UnableToExtendPixelCache\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"%s => %s\00", align 1
@GetImagePixelCache.cpu_throttle = internal unnamed_addr global i64 0, align 8
@GetImagePixelCache.cycles = internal unnamed_addr global i64 0, align 8
@GetImagePixelCache.time_limit = internal unnamed_addr global i64 0, align 8
@GetImagePixelCache.cache_timestamp = internal unnamed_addr global i64 0, align 8
@.str.27 = private unnamed_addr constant [18 x i8] c"TimeLimitExceeded\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"UnableToOpenFile\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"UnableToReadPixelCache\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"%s[%.20gx%.20g%+.20g%+.20g]\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"UnableToWritePixelCache\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @AcquirePixelCache(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call dereferenceable_or_null(8528) ptr @AcquireQuantumMemory(i64 noundef 1, i64 noundef 8528) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #23
  call void @GetExceptionInfo(ptr noundef nonnull %2) #24
  %6 = tail call ptr @__errno_location() #25
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = call ptr @GetExceptionMessage(i32 noundef %7) #24
  %9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 184, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %8) #24
  %10 = call ptr @DestroyString(ptr noundef %8) #24
  call void @CatchException(ptr noundef nonnull %2) #24
  %11 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #24
  call void @MagickCoreTerminus() #24
  call void @_exit(i32 noundef 1) #26
  unreachable

12:                                               ; preds = %1
  %13 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %3, i32 noundef 0, i64 noundef 8528) #24
  %14 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 3
  store i32 0, ptr %14, align 8, !tbaa !9
  %15 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 4
  store i32 2, ptr %15, align 4, !tbaa !18
  %16 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 1
  store i32 13, ptr %16, align 4, !tbaa !19
  %17 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 2
  store i64 4, ptr %17, align 8, !tbaa !20
  %18 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 17
  store i32 -1, ptr %18, align 4, !tbaa !21
  %19 = tail call fastcc i32 @GetMagickThreadId() #27
  %20 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 26
  store i32 %19, ptr %20, align 8, !tbaa !22
  %21 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 12
  %22 = tail call i64 @llvm.umax.i64(i64 %0, i64 1)
  store i64 %22, ptr %21, align 8
  %23 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #24
  %24 = load i64, ptr %21, align 8, !tbaa !23
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %12
  %27 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #24
  store i64 %27, ptr %21, align 8, !tbaa !23
  br label %28

28:                                               ; preds = %26, %12
  %29 = phi i64 [ %27, %26 ], [ %24, %12 ]
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i64 1, ptr %21, align 8, !tbaa !23
  br label %32

32:                                               ; preds = %31, %28
  %33 = phi i64 [ 1, %31 ], [ %29, %28 ]
  %34 = tail call ptr @AcquirePixelCacheNexus(i64 noundef %33) #27
  %35 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 13
  store ptr %34, ptr %35, align 8, !tbaa !24
  %36 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.4) #24
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = tail call i32 @IsStringTrue(ptr noundef nonnull %36) #24
  %40 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 24
  store i32 %39, ptr %40, align 8, !tbaa !25
  %41 = tail call ptr @DestroyString(ptr noundef nonnull %36) #24
  br label %42

42:                                               ; preds = %38, %32
  %43 = tail call ptr @AllocateSemaphoreInfo() #24
  %44 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 28
  store ptr %43, ptr %44, align 8, !tbaa !26
  %45 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 27
  store i64 1, ptr %45, align 8, !tbaa !27
  %46 = tail call ptr @AllocateSemaphoreInfo() #24
  %47 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 29
  store ptr %46, ptr %47, align 8, !tbaa !28
  %48 = tail call i32 @IsEventLogging() #24
  %49 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 25
  store i32 %48, ptr %49, align 4, !tbaa !29
  %50 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 31
  store i64 2880220587, ptr %50, align 8, !tbaa !30
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

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
declare void @_exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @GetMagickThreadId() unnamed_addr #0 {
  %1 = tail call i32 @getpid() #24
  ret i32 %1
}

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AcquirePixelCacheNexus(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = tail call ptr @AcquireAlignedMemory(i64 noundef %0, i64 noundef 8) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #23
  call void @GetExceptionInfo(ptr noundef nonnull %2) #24
  %7 = tail call ptr @__errno_location() #25
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = call ptr @GetExceptionMessage(i32 noundef %8) #24
  %10 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 249, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %9) #24
  %11 = call ptr @DestroyString(ptr noundef %9) #24
  call void @CatchException(ptr noundef nonnull %2) #24
  %12 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #24
  call void @MagickCoreTerminus() #24
  call void @_exit(i32 noundef 1) #26
  unreachable

13:                                               ; preds = %1
  %14 = tail call ptr @AcquireQuantumMemory(i64 noundef %0, i64 noundef 88) #22
  store ptr %14, ptr %4, align 8, !tbaa !31
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #23
  call void @GetExceptionInfo(ptr noundef nonnull %3) #24
  %17 = tail call ptr @__errno_location() #25
  %18 = load i32, ptr %17, align 4, !tbaa !5
  %19 = call ptr @GetExceptionMessage(i32 noundef %18) #24
  %20 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 253, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %19) #24
  %21 = call ptr @DestroyString(ptr noundef %19) #24
  call void @CatchException(ptr noundef nonnull %3) #24
  %22 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #24
  call void @MagickCoreTerminus() #24
  call void @_exit(i32 noundef 1) #26
  unreachable

23:                                               ; preds = %13
  %24 = mul i64 %0, 88
  %25 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %14, i32 noundef 0, i64 noundef %24) #24
  %26 = icmp sgt i64 %0, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23, %27
  %28 = phi i64 [ %33, %27 ], [ 0, %23 ]
  %29 = load ptr, ptr %4, align 8, !tbaa !31
  %30 = getelementptr inbounds %struct._NexusInfo, ptr %29, i64 %28
  %31 = getelementptr inbounds ptr, ptr %4, i64 %28
  store ptr %30, ptr %31, align 8, !tbaa !31
  %32 = getelementptr inbounds %struct._NexusInfo, ptr %29, i64 %28, i32 7
  store i64 2880220587, ptr %32, align 8, !tbaa !32
  %33 = add nuw nsw i64 %28, 1
  %34 = icmp eq i64 %33, %0
  br i1 %34, label %35, label %27, !llvm.loop !35

35:                                               ; preds = %27, %23
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @GetEnvironmentValue(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @IsStringTrue(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @IsEventLogging() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @AcquirePixelCachePixels(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %5 = load ptr, ptr %4, align 8, !tbaa !37
  store i64 0, ptr %1, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct._CacheInfo, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !9
  %8 = add i32 %7, -1
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %5, i64 0, i32 9
  %12 = load i64, ptr %11, align 8, !tbaa !49
  store i64 %12, ptr %1, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct._CacheInfo, ptr %5, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  br label %15

15:                                               ; preds = %3, %10
  %16 = phi ptr [ %14, %10 ], [ null, %3 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @CacheComponentGenesis() local_unnamed_addr #0 {
  %1 = load ptr, ptr @cache_semaphore, align 8, !tbaa !31
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @AllocateSemaphoreInfo() #24
  store ptr %4, ptr @cache_semaphore, align 8, !tbaa !31
  br label %5

5:                                                ; preds = %3, %0
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CacheComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @cache_semaphore, align 8, !tbaa !31
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @cache_semaphore) #24
  %4 = load ptr, ptr @cache_semaphore, align 8, !tbaa !31
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  tail call void @LockSemaphoreInfo(ptr noundef %6) #24
  store volatile i32 0, ptr @instantiate_cache, align 4, !tbaa !5
  %7 = load ptr, ptr @cache_semaphore, align 8, !tbaa !31
  tail call void @UnlockSemaphoreInfo(ptr noundef %7) #24
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @cache_semaphore) #24
  ret void
}

; Function Attrs: optsize
declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ClonePixelCache(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 25
  %3 = load i32, ptr %2, align 4, !tbaa !29
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 505, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #24
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 12
  %10 = load i64, ptr %9, align 8, !tbaa !23
  %11 = tail call ptr @AcquirePixelCache(i64 noundef %10) #27
  %12 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !51
  %14 = getelementptr inbounds %struct._CacheInfo, ptr %11, i64 0, i32 10
  store i32 %13, ptr %14, align 8, !tbaa !51
  ret ptr %11
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClonePixelCacheMethods(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 25
  %4 = load i32, ptr %3, align 4, !tbaa !29
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 549, ptr noundef nonnull @.str.5, ptr noundef nonnull %7) #24
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 20
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %10, ptr noundef nonnull align 8 dereferenceable(88) %11, i64 88, i1 false), !tbaa.struct !52
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DestroyImagePixels(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !53
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 835, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #24
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 20, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  tail call void %12(ptr noundef nonnull %0) #24
  br label %17

15:                                               ; preds = %8
  %16 = tail call ptr @DestroyPixelCache(ptr noundef nonnull %10) #27
  store ptr null, ptr %9, align 8, !tbaa !37
  br label %17

17:                                               ; preds = %15, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @DestroyPixelCache(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  %3 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 25
  %4 = load i32, ptr %3, align 4, !tbaa !29
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 945, ptr noundef nonnull @.str.5, ptr noundef nonnull %7) #24
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 28
  %11 = load ptr, ptr %10, align 8, !tbaa !26
  tail call void @LockSemaphoreInfo(ptr noundef %11) #24
  %12 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 27
  %13 = load i64, ptr %12, align 8, !tbaa !27
  %14 = add nsw i64 %13, -1
  store i64 %14, ptr %12, align 8, !tbaa !27
  %15 = icmp eq i64 %14, 0
  %16 = load ptr, ptr %10, align 8, !tbaa !26
  tail call void @UnlockSemaphoreInfo(ptr noundef %16) #24
  br i1 %15, label %17, label %56

17:                                               ; preds = %9
  %18 = load i32, ptr %3, align 4, !tbaa !29
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #23
  %21 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %22 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef nonnull %21) #24
  %23 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 962, ptr noundef nonnull @.str.5, ptr noundef nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #23
  br label %24

24:                                               ; preds = %20, %17
  call fastcc void @RelinquishPixelCachePixels(ptr noundef nonnull %0) #27
  %25 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 23
  %26 = load ptr, ptr %25, align 8, !tbaa !55
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = call ptr @DestroyDistributeCacheInfo(ptr noundef nonnull %26) #24
  store ptr %29, ptr %25, align 8, !tbaa !55
  br label %30

30:                                               ; preds = %28, %24
  %31 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 13
  %32 = load ptr, ptr %31, align 8, !tbaa !24
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 12
  %36 = load i64, ptr %35, align 8, !tbaa !23
  %37 = call ptr @DestroyPixelCacheNexus(ptr noundef nonnull %32, i64 noundef %36) #27
  store ptr %37, ptr %31, align 8, !tbaa !24
  br label %38

38:                                               ; preds = %34, %30
  %39 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 21
  %40 = load ptr, ptr %39, align 8, !tbaa !56
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = call ptr @DestroyRandomInfo(ptr noundef nonnull %40) #24
  store ptr %43, ptr %39, align 8, !tbaa !56
  br label %44

44:                                               ; preds = %42, %38
  %45 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 29
  %46 = load ptr, ptr %45, align 8, !tbaa !28
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  call void @DestroySemaphoreInfo(ptr noundef nonnull %45) #24
  br label %49

49:                                               ; preds = %48, %44
  %50 = load ptr, ptr %10, align 8, !tbaa !26
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  call void @DestroySemaphoreInfo(ptr noundef nonnull %10) #24
  br label %53

53:                                               ; preds = %52, %49
  %54 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 31
  store i64 -2880220588, ptr %54, align 8, !tbaa !30
  %55 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #24
  br label %56

56:                                               ; preds = %9, %53
  ret ptr null
}

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @RelinquishPixelCachePixels(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !9
  switch i32 %3, label %56 [
    i32 1, label %4
    i32 2, label %20
    i32 3, label %35
    i32 5, label %51
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !57
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  br i1 %7, label %10, label %12

10:                                               ; preds = %4
  %11 = tail call ptr @RelinquishAlignedMemory(ptr noundef %9) #24
  br label %16

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 9
  %14 = load i64, ptr %13, align 8, !tbaa !49
  %15 = tail call i32 @UnmapBlob(ptr noundef %9, i64 noundef %14) #24
  br label %16

16:                                               ; preds = %12, %10
  %17 = phi ptr [ null, %12 ], [ %11, %10 ]
  store ptr %17, ptr %8, align 8, !tbaa !50
  %18 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 9
  %19 = load i64, ptr %18, align 8, !tbaa !49
  tail call void @RelinquishMagickResource(i32 noundef 5, i64 noundef %19) #24
  br label %56

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 14
  %22 = load ptr, ptr %21, align 8, !tbaa !50
  %23 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 9
  %24 = load i64, ptr %23, align 8, !tbaa !49
  %25 = tail call i32 @UnmapBlob(ptr noundef %22, i64 noundef %24) #24
  store ptr null, ptr %21, align 8, !tbaa !50
  %26 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !18
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  %31 = tail call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %30) #24
  br label %32

32:                                               ; preds = %29, %20
  %33 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  store i8 0, ptr %33, align 8, !tbaa !58
  %34 = load i64, ptr %23, align 8, !tbaa !49
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %34) #24
  br label %35

35:                                               ; preds = %1, %32
  %36 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 17
  %37 = load i32, ptr %36, align 4, !tbaa !21
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call fastcc void @ClosePixelCacheOnDisk(ptr noundef nonnull %0) #27
  br label %40

40:                                               ; preds = %39, %35
  %41 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 4
  %42 = load i32, ptr %41, align 4, !tbaa !18
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  %46 = tail call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %45) #24
  br label %47

47:                                               ; preds = %44, %40
  %48 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  store i8 0, ptr %48, align 8, !tbaa !58
  %49 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 9
  %50 = load i64, ptr %49, align 8, !tbaa !49
  tail call void @RelinquishMagickResource(i32 noundef 2, i64 noundef %50) #24
  br label %56

51:                                               ; preds = %1
  %52 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  store i8 0, ptr %52, align 8, !tbaa !58
  %53 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 23
  %54 = load ptr, ptr %53, align 8, !tbaa !55
  %55 = tail call i32 @RelinquishDistributePixelCache(ptr noundef %54) #24
  br label %56

56:                                               ; preds = %1, %51, %47, %16
  store i32 0, ptr %2, align 8, !tbaa !9
  %57 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 5
  store i32 0, ptr %57, align 8, !tbaa !57
  %58 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 15
  store ptr null, ptr %58, align 8, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare hidden ptr @DestroyDistributeCacheInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyPixelCacheNexus(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i64 %1, 0
  br i1 %3, label %4, label %18

4:                                                ; preds = %2, %13
  %5 = phi i64 [ %16, %13 ], [ 0, %2 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !31
  %8 = getelementptr inbounds %struct._NexusInfo, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  tail call fastcc void @RelinquishCacheNexusPixels(ptr noundef nonnull %7) #27
  %12 = load ptr, ptr %6, align 8, !tbaa !31
  br label %13

13:                                               ; preds = %11, %4
  %14 = phi ptr [ %12, %11 ], [ %7, %4 ]
  %15 = getelementptr inbounds %struct._NexusInfo, ptr %14, i64 0, i32 7
  store i64 -2880220588, ptr %15, align 8, !tbaa !32
  %16 = add nuw nsw i64 %5, 1
  %17 = icmp eq i64 %16, %1
  br i1 %17, label %18, label %4, !llvm.loop !61

18:                                               ; preds = %13, %2
  %19 = load ptr, ptr %0, align 8, !tbaa !31
  %20 = tail call ptr @RelinquishMagickMemory(ptr noundef %19) #24
  store ptr %20, ptr %0, align 8, !tbaa !31
  %21 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %0) #24
  ret ptr %21
}

; Function Attrs: optsize
declare ptr @DestroyRandomInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @RelinquishCacheNexusPixels(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !62
  %3 = icmp eq i32 %2, 0
  %4 = getelementptr inbounds %struct._NexusInfo, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  br i1 %3, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call ptr @RelinquishAlignedMemory(ptr noundef %5) #24
  br label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct._NexusInfo, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !63
  %11 = tail call i32 @UnmapBlob(ptr noundef %5, i64 noundef %10) #24
  br label %12

12:                                               ; preds = %8, %6
  %13 = getelementptr inbounds %struct._NexusInfo, ptr %0, i64 0, i32 6
  store ptr null, ptr %13, align 8, !tbaa !64
  %14 = getelementptr inbounds %struct._NexusInfo, ptr %0, i64 0, i32 2
  store i32 0, ptr %0, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: optsize
declare ptr @RelinquishAlignedMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetAuthenticIndexQueue(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 20, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr %5(ptr noundef nonnull %0) #24
  br label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = load ptr, ptr %11, align 8, !tbaa !31
  %13 = getelementptr inbounds %struct._NexusInfo, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  br label %15

15:                                               ; preds = %9, %7
  %16 = phi ptr [ %8, %7 ], [ %14, %9 ]
  ret ptr %16
}

; Function Attrs: hot noinline nounwind optsize uwtable
define dso_local ptr @GetAuthenticPixelCacheNexus(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nocapture noundef %5, ptr noundef %6) local_unnamed_addr #8 {
  %8 = tail call ptr @QueueAuthenticPixelCacheNexus(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #28
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %12 = load ptr, ptr %11, align 8, !tbaa !37
  %13 = getelementptr inbounds %struct._NexusInfo, ptr %5, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !66
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = tail call fastcc i32 @ReadPixelCachePixels(ptr noundef %12, ptr noundef nonnull %5, ptr noundef %6) #27, !range !67
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct._CacheInfo, ptr %12, i64 0, i32 16
  %21 = load i32, ptr %20, align 8, !tbaa !68
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = tail call fastcc i32 @ReadPixelCacheIndexes(ptr noundef nonnull %12, ptr noundef nonnull %5, ptr noundef %6) #27, !range !67
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %19
  br label %27

27:                                               ; preds = %23, %16, %10, %7, %26
  %28 = phi ptr [ %8, %26 ], [ null, %7 ], [ %8, %10 ], [ null, %16 ], [ null, %23 ]
  ret ptr %28
}

; Function Attrs: hot noinline nounwind optsize uwtable
define dso_local ptr @QueueAuthenticPixelCacheNexus(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr nocapture noundef %6, ptr noundef %7) local_unnamed_addr #8 {
  %9 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #23
  %10 = tail call fastcc ptr @GetImagePixelCache(ptr noundef %0, i32 noundef %5, ptr noundef %7) #28
  %11 = icmp eq ptr %10, null
  br i1 %11, label %57, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 6
  %14 = load i64, ptr %13, align 8, !tbaa !69
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 7
  %18 = load i64, ptr %17, align 8, !tbaa !70
  %19 = icmp ne i64 %18, 0
  %20 = or i64 %2, %1
  %21 = icmp sgt i64 %20, -1
  %22 = and i1 %21, %19
  %23 = icmp sgt i64 %14, %1
  %24 = and i1 %23, %22
  %25 = icmp sgt i64 %18, %2
  %26 = and i1 %25, %24
  br i1 %26, label %30, label %27

27:                                               ; preds = %16, %12
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %29 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3984, i32 noundef 445, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, ptr noundef nonnull %28) #24
  br label %57

30:                                               ; preds = %16
  %31 = mul i64 %14, %2
  %32 = add i64 %31, %1
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %57, label %34

34:                                               ; preds = %30
  %35 = mul i64 %18, %14
  %36 = add i64 %4, -1
  %37 = mul i64 %14, %36
  %38 = add i64 %3, -1
  %39 = add i64 %38, %37
  %40 = add i64 %39, %32
  %41 = icmp ult i64 %40, %35
  br i1 %41, label %42, label %57

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 2
  store i64 %1, ptr %43, align 8, !tbaa !71
  %44 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 3
  store i64 %2, ptr %44, align 8, !tbaa !72
  store i64 %3, ptr %9, align 8, !tbaa !73
  %45 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 1
  store i64 %4, ptr %45, align 8, !tbaa !74
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 38
  %47 = load ptr, ptr %46, align 8, !tbaa !75
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 73
  %51 = load ptr, ptr %50, align 8, !tbaa !76
  %52 = icmp ne ptr %51, null
  %53 = zext i1 %52 to i32
  br label %54

54:                                               ; preds = %49, %42
  %55 = phi i32 [ 1, %42 ], [ %53, %49 ]
  %56 = call fastcc ptr @SetPixelCacheNexusPixels(ptr noundef nonnull %10, ptr noundef nonnull %9, i32 noundef %55, ptr noundef %6, ptr noundef %7) #28
  br label %57

57:                                               ; preds = %34, %30, %8, %54, %27
  %58 = phi ptr [ null, %27 ], [ %56, %54 ], [ null, %8 ], [ null, %30 ], [ null, %34 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #23
  ret ptr %58
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ReadPixelCachePixels(ptr noalias noundef %0, ptr noalias nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct._RectangleInfo, align 8
  %5 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !66
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %147

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1
  %10 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !77
  %12 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 6
  %13 = load i64, ptr %12, align 8, !tbaa !69
  %14 = mul i64 %13, %11
  %15 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !78
  %17 = add i64 %14, %16
  %18 = load i64, ptr %9, align 8, !tbaa !79
  %19 = shl i64 %18, 3
  %20 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !80
  %22 = mul i64 %19, %21
  %23 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !81
  %25 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !9
  switch i32 %26, label %120 [
    i32 1, label %27
    i32 2, label %27
    i32 3, label %44
    i32 5, label %89
  ]

27:                                               ; preds = %8, %8
  %28 = icmp eq i64 %13, %18
  %29 = select i1 %28, i64 %22, i64 %19
  %30 = select i1 %28, i64 1, i64 %21
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %120

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 14
  %34 = load ptr, ptr %33, align 8, !tbaa !50
  %35 = getelementptr inbounds %struct._PixelPacket, ptr %34, i64 %17
  br label %36

36:                                               ; preds = %32, %36
  %37 = phi ptr [ %40, %36 ], [ %35, %32 ]
  %38 = phi i64 [ %42, %36 ], [ 0, %32 ]
  %39 = phi ptr [ %41, %36 ], [ %24, %32 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %39, ptr align 2 %37, i64 %29, i1 false)
  %40 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 %13
  %41 = getelementptr inbounds %struct._PixelPacket, ptr %39, i64 %18
  %42 = add nuw nsw i64 %38, 1
  %43 = icmp eq i64 %42, %30
  br i1 %43, label %131, label %36, !llvm.loop !82

44:                                               ; preds = %8
  %45 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 29
  %46 = load ptr, ptr %45, align 8, !tbaa !28
  tail call void @LockSemaphoreInfo(ptr noundef %46) #24
  %47 = tail call fastcc i32 @OpenPixelCacheOnDisk(ptr noundef nonnull %0, i32 noundef 2) #27, !range !67
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = tail call ptr @__errno_location() #25
  %51 = load i32, ptr %50, align 4, !tbaa !5
  %52 = tail call ptr @GetExceptionMessage(i32 noundef %51) #24
  %53 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  %54 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4435, i32 noundef 430, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.19, ptr noundef nonnull %53, ptr noundef %52) #24
  %55 = tail call ptr @DestroyString(ptr noundef %52) #24
  %56 = load ptr, ptr %45, align 8, !tbaa !28
  tail call void @UnlockSemaphoreInfo(ptr noundef %56) #24
  br label %147

57:                                               ; preds = %44
  %58 = load i64, ptr %12, align 8, !tbaa !69
  %59 = icmp eq i64 %58, %18
  %60 = icmp ult i64 %22, 262143
  %61 = select i1 %59, i1 %60, i1 false
  %62 = select i1 %61, i64 %22, i64 %19
  %63 = select i1 %61, i64 1, i64 %21
  %64 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 8
  %65 = icmp sgt i64 %63, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %57, %75
  %67 = phi i64 [ %79, %75 ], [ 0, %57 ]
  %68 = phi ptr [ %78, %75 ], [ %24, %57 ]
  %69 = phi i64 [ %77, %75 ], [ %17, %57 ]
  %70 = load i64, ptr %64, align 8, !tbaa !83
  %71 = shl i64 %69, 3
  %72 = add i64 %70, %71
  %73 = tail call fastcc i64 @ReadPixelCacheRegion(ptr noundef nonnull %0, i64 noundef %72, i64 noundef %62, ptr noundef %68) #27
  %74 = icmp ult i64 %73, %62
  br i1 %74, label %81, label %75

75:                                               ; preds = %66
  %76 = load i64, ptr %12, align 8, !tbaa !69
  %77 = add i64 %76, %69
  %78 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 %18
  %79 = add nuw nsw i64 %67, 1
  %80 = icmp eq i64 %79, %63
  br i1 %80, label %81, label %66, !llvm.loop !84

81:                                               ; preds = %75, %66, %57
  %82 = phi i64 [ 0, %57 ], [ %67, %66 ], [ %63, %75 ]
  %83 = tail call i64 @GetMagickResource(i32 noundef 3) #24
  %84 = tail call i64 @GetMagickResourceLimit(i32 noundef 3) #24
  %85 = icmp ugt i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  tail call fastcc void @ClosePixelCacheOnDisk(ptr noundef nonnull %0) #27
  br label %87

87:                                               ; preds = %86, %81
  %88 = load ptr, ptr %45, align 8, !tbaa !28
  tail call void @UnlockSemaphoreInfo(ptr noundef %88) #24
  br label %120

89:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  %90 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 29
  %91 = load ptr, ptr %90, align 8, !tbaa !28
  tail call void @LockSemaphoreInfo(ptr noundef %91) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !85
  %92 = load i64, ptr %12, align 8, !tbaa !69
  %93 = icmp ne i64 %92, %18
  %94 = icmp ugt i64 %22, 262142
  %95 = select i1 %93, i1 true, i1 %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 1
  store i64 1, ptr %97, align 8, !tbaa !74
  %98 = icmp sgt i64 %21, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %89, %96
  %100 = phi i64 [ %21, %96 ], [ 1, %89 ]
  %101 = phi i64 [ %19, %96 ], [ %22, %89 ]
  %102 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 23
  %103 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 3
  br label %104

104:                                              ; preds = %99, %110
  %105 = phi i64 [ 0, %99 ], [ %114, %110 ]
  %106 = phi ptr [ %24, %99 ], [ %111, %110 ]
  %107 = load ptr, ptr %102, align 8, !tbaa !55
  %108 = call i64 @ReadDistributePixelCachePixels(ptr noundef %107, ptr noundef nonnull %4, i64 noundef %101, ptr noundef %106) #24
  %109 = icmp eq i64 %108, %101
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 %18
  %112 = load i64, ptr %103, align 8, !tbaa !72
  %113 = add nsw i64 %112, 1
  store i64 %113, ptr %103, align 8, !tbaa !72
  %114 = add nuw nsw i64 %105, 1
  %115 = icmp eq i64 %114, %100
  br i1 %115, label %116, label %104, !llvm.loop !87

116:                                              ; preds = %110, %104, %96
  %117 = phi i64 [ %21, %96 ], [ %100, %104 ], [ %100, %110 ]
  %118 = phi i64 [ 0, %96 ], [ %100, %110 ], [ %105, %104 ]
  %119 = load ptr, ptr %90, align 8, !tbaa !28
  call void @UnlockSemaphoreInfo(ptr noundef %119) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  br label %120

120:                                              ; preds = %27, %8, %116, %87
  %121 = phi i64 [ 0, %8 ], [ %118, %116 ], [ %82, %87 ], [ 0, %27 ]
  %122 = phi i64 [ %21, %8 ], [ %117, %116 ], [ %63, %87 ], [ %21, %27 ]
  %123 = icmp slt i64 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = tail call ptr @__errno_location() #25
  %126 = load i32, ptr %125, align 4, !tbaa !5
  %127 = call ptr @GetExceptionMessage(i32 noundef %126) #24
  %128 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  %129 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4495, i32 noundef 445, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.19, ptr noundef nonnull %128, ptr noundef %127) #24
  %130 = call ptr @DestroyString(ptr noundef %127) #24
  br label %147

131:                                              ; preds = %36, %120
  %132 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 25
  %133 = load i32, ptr %132, align 4, !tbaa !29
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %147, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 7
  %137 = load i64, ptr %136, align 8, !tbaa !70
  %138 = call fastcc i32 @QuantumTick(i64 noundef %11, i64 noundef %137) #27, !range !67
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %142 = uitofp i64 %18 to double
  %143 = uitofp i64 %21 to double
  %144 = sitofp i64 %16 to double
  %145 = sitofp i64 %11 to double
  %146 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4500, ptr noundef nonnull @.str.30, ptr noundef nonnull %141, double noundef %142, double noundef %143, double noundef %144, double noundef %145) #24
  br label %147

147:                                              ; preds = %131, %135, %140, %3, %124, %49
  %148 = phi i32 [ 0, %124 ], [ 0, %49 ], [ 1, %3 ], [ 1, %140 ], [ 1, %135 ], [ 1, %131 ]
  ret i32 %148
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ReadPixelCacheIndexes(ptr noalias noundef %0, ptr noalias nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct._RectangleInfo, align 8
  %5 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 16
  %6 = load i32, ptr %5, align 8, !tbaa !68
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %157, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !66
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %157

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !77
  %16 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 6
  %17 = load i64, ptr %16, align 8, !tbaa !69
  %18 = mul i64 %17, %15
  %19 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !78
  %21 = add i64 %18, %20
  %22 = load i64, ptr %13, align 8, !tbaa !79
  %23 = shl i64 %22, 1
  %24 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !80
  %26 = mul i64 %23, %25
  %27 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !64
  %29 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !9
  switch i32 %30, label %130 [
    i32 1, label %31
    i32 2, label %31
    i32 3, label %48
    i32 5, label %99
  ]

31:                                               ; preds = %12, %12
  %32 = icmp eq i64 %17, %22
  %33 = select i1 %32, i64 %26, i64 %23
  %34 = select i1 %32, i64 1, i64 %25
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %130

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 15
  %38 = load ptr, ptr %37, align 8, !tbaa !59
  %39 = getelementptr inbounds i16, ptr %38, i64 %21
  br label %40

40:                                               ; preds = %36, %40
  %41 = phi ptr [ %44, %40 ], [ %39, %36 ]
  %42 = phi i64 [ %46, %40 ], [ 0, %36 ]
  %43 = phi ptr [ %45, %40 ], [ %28, %36 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %43, ptr align 2 %41, i64 %33, i1 false)
  %44 = getelementptr inbounds i16, ptr %41, i64 %17
  %45 = getelementptr inbounds i16, ptr %43, i64 %22
  %46 = add nuw nsw i64 %42, 1
  %47 = icmp eq i64 %46, %34
  br i1 %47, label %141, label %40, !llvm.loop !88

48:                                               ; preds = %12
  %49 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 29
  %50 = load ptr, ptr %49, align 8, !tbaa !28
  tail call void @LockSemaphoreInfo(ptr noundef %50) #24
  %51 = tail call fastcc i32 @OpenPixelCacheOnDisk(ptr noundef nonnull %0, i32 noundef 2) #27, !range !67
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = tail call ptr @__errno_location() #25
  %55 = load i32, ptr %54, align 4, !tbaa !5
  %56 = tail call ptr @GetExceptionMessage(i32 noundef %55) #24
  %57 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  %58 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4270, i32 noundef 430, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.19, ptr noundef nonnull %57, ptr noundef %56) #24
  %59 = tail call ptr @DestroyString(ptr noundef %56) #24
  %60 = load ptr, ptr %49, align 8, !tbaa !28
  tail call void @UnlockSemaphoreInfo(ptr noundef %60) #24
  br label %157

61:                                               ; preds = %48
  %62 = load i64, ptr %16, align 8, !tbaa !69
  %63 = icmp eq i64 %62, %22
  %64 = icmp ult i64 %26, 262143
  %65 = select i1 %63, i1 %64, i1 false
  %66 = select i1 %65, i64 %26, i64 %23
  %67 = select i1 %65, i64 1, i64 %25
  %68 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 8
  %69 = icmp sgt i64 %67, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 7
  %72 = load i64, ptr %71, align 8, !tbaa !70
  %73 = shl i64 %62, 3
  %74 = mul i64 %73, %72
  br label %75

75:                                               ; preds = %70, %85
  %76 = phi i64 [ 0, %70 ], [ %89, %85 ]
  %77 = phi ptr [ %28, %70 ], [ %88, %85 ]
  %78 = phi i64 [ %21, %70 ], [ %87, %85 ]
  %79 = load i64, ptr %68, align 8, !tbaa !83
  %80 = shl i64 %78, 1
  %81 = add i64 %80, %74
  %82 = add i64 %81, %79
  %83 = tail call fastcc i64 @ReadPixelCacheRegion(ptr noundef nonnull %0, i64 noundef %82, i64 noundef %66, ptr noundef %77) #27
  %84 = icmp ult i64 %83, %66
  br i1 %84, label %91, label %85

85:                                               ; preds = %75
  %86 = load i64, ptr %16, align 8, !tbaa !69
  %87 = add i64 %86, %78
  %88 = getelementptr inbounds i16, ptr %77, i64 %22
  %89 = add nuw nsw i64 %76, 1
  %90 = icmp eq i64 %89, %67
  br i1 %90, label %91, label %75, !llvm.loop !89

91:                                               ; preds = %85, %75, %61
  %92 = phi i64 [ 0, %61 ], [ %76, %75 ], [ %67, %85 ]
  %93 = tail call i64 @GetMagickResource(i32 noundef 3) #24
  %94 = tail call i64 @GetMagickResourceLimit(i32 noundef 3) #24
  %95 = icmp ugt i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  tail call fastcc void @ClosePixelCacheOnDisk(ptr noundef nonnull %0) #27
  br label %97

97:                                               ; preds = %96, %91
  %98 = load ptr, ptr %49, align 8, !tbaa !28
  tail call void @UnlockSemaphoreInfo(ptr noundef %98) #24
  br label %130

99:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  %100 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 29
  %101 = load ptr, ptr %100, align 8, !tbaa !28
  tail call void @LockSemaphoreInfo(ptr noundef %101) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !85
  %102 = load i64, ptr %16, align 8, !tbaa !69
  %103 = icmp ne i64 %102, %22
  %104 = icmp ugt i64 %26, 262142
  %105 = select i1 %103, i1 true, i1 %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 1
  store i64 1, ptr %107, align 8, !tbaa !74
  %108 = icmp sgt i64 %25, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %99, %106
  %110 = phi i64 [ %25, %106 ], [ 1, %99 ]
  %111 = phi i64 [ %23, %106 ], [ %26, %99 ]
  %112 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 23
  %113 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 3
  br label %114

114:                                              ; preds = %109, %120
  %115 = phi i64 [ 0, %109 ], [ %124, %120 ]
  %116 = phi ptr [ %28, %109 ], [ %121, %120 ]
  %117 = load ptr, ptr %112, align 8, !tbaa !55
  %118 = call i64 @ReadDistributePixelCacheIndexes(ptr noundef %117, ptr noundef nonnull %4, i64 noundef %111, ptr noundef %116) #24
  %119 = icmp eq i64 %118, %111
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = getelementptr inbounds i16, ptr %116, i64 %22
  %122 = load i64, ptr %113, align 8, !tbaa !72
  %123 = add nsw i64 %122, 1
  store i64 %123, ptr %113, align 8, !tbaa !72
  %124 = add nuw nsw i64 %115, 1
  %125 = icmp eq i64 %124, %110
  br i1 %125, label %126, label %114, !llvm.loop !90

126:                                              ; preds = %120, %114, %106
  %127 = phi i64 [ %25, %106 ], [ %110, %114 ], [ %110, %120 ]
  %128 = phi i64 [ 0, %106 ], [ %110, %120 ], [ %115, %114 ]
  %129 = load ptr, ptr %100, align 8, !tbaa !28
  call void @UnlockSemaphoreInfo(ptr noundef %129) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  br label %130

130:                                              ; preds = %31, %12, %126, %97
  %131 = phi i64 [ 0, %12 ], [ %128, %126 ], [ %92, %97 ], [ 0, %31 ]
  %132 = phi i64 [ %25, %12 ], [ %127, %126 ], [ %67, %97 ], [ %25, %31 ]
  %133 = icmp slt i64 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %130
  %135 = tail call ptr @__errno_location() #25
  %136 = load i32, ptr %135, align 4, !tbaa !5
  %137 = call ptr @GetExceptionMessage(i32 noundef %136) #24
  %138 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  %139 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4331, i32 noundef 445, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.19, ptr noundef nonnull %138, ptr noundef %137) #24
  %140 = call ptr @DestroyString(ptr noundef %137) #24
  br label %157

141:                                              ; preds = %40, %130
  %142 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 25
  %143 = load i32, ptr %142, align 4, !tbaa !29
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %157, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 7
  %147 = load i64, ptr %146, align 8, !tbaa !70
  %148 = call fastcc i32 @QuantumTick(i64 noundef %15, i64 noundef %147) #27, !range !67
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %152 = uitofp i64 %22 to double
  %153 = uitofp i64 %25 to double
  %154 = sitofp i64 %20 to double
  %155 = sitofp i64 %15 to double
  %156 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4336, ptr noundef nonnull @.str.30, ptr noundef nonnull %151, double noundef %152, double noundef %153, double noundef %154, double noundef %155) #24
  br label %157

157:                                              ; preds = %141, %145, %150, %8, %3, %134, %53
  %158 = phi i32 [ 0, %134 ], [ 0, %53 ], [ 0, %3 ], [ 1, %8 ], [ 1, %150 ], [ 1, %145 ], [ 1, %141 ]
  ret i32 %158
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetAuthenticPixelQueue(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 20, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr %5(ptr noundef nonnull %0) #24
  br label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = load ptr, ptr %11, align 8, !tbaa !31
  %13 = getelementptr inbounds %struct._NexusInfo, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !81
  br label %15

15:                                               ; preds = %9, %7
  %16 = phi ptr [ %8, %7 ], [ %14, %9 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = getelementptr inbounds %struct._CacheInfo, ptr %8, i64 0, i32 20, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = tail call ptr %10(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #24
  br label %19

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct._CacheInfo, ptr %8, i64 0, i32 13
  %16 = load ptr, ptr %15, align 8, !tbaa !24
  %17 = load ptr, ptr %16, align 8, !tbaa !31
  %18 = tail call ptr @GetAuthenticPixelCacheNexus(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %17, ptr noundef %5) #28
  br label %19

19:                                               ; preds = %14, %12
  %20 = phi ptr [ %13, %12 ], [ %18, %14 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @GetImageExtent(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !53
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1431, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #24
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !24
  %13 = load ptr, ptr %12, align 8, !tbaa !31
  %14 = tail call i64 @GetPixelCacheNexusExtent(ptr noundef %10, ptr noundef %13) #27
  ret i64 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @GetPixelCacheNexusExtent(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !79
  %5 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !80
  %7 = mul i64 %6, %4
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 6
  %11 = load i64, ptr %10, align 8, !tbaa !69
  %12 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 7
  %13 = load i64, ptr %12, align 8, !tbaa !70
  %14 = mul i64 %13, %11
  br label %15

15:                                               ; preds = %2, %9
  %16 = phi i64 [ %14, %9 ], [ %7, %2 ]
  ret i64 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GetPixelCacheType(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = tail call i32 @GetImagePixelCacheType(ptr noundef %0) #27
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GetImagePixelCacheType(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !9
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetOneAuthenticPixel(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %9 = load i64, ptr %8, align 8
  store i64 %9, ptr %3, align 2
  %10 = getelementptr inbounds %struct._CacheInfo, ptr %7, i64 0, i32 20, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %5
  %14 = tail call i32 %11(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %3, ptr noundef %4) #24
  br label %20

15:                                               ; preds = %5
  %16 = tail call ptr @GetAuthenticPixelsCache(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i64 noundef 1, i64 noundef 1, ptr noundef %4) #27
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load i64, ptr %16, align 2
  store i64 %19, ptr %3, align 2
  br label %20

20:                                               ; preds = %15, %18, %13
  %21 = phi i32 [ %14, %13 ], [ 1, %18 ], [ 0, %15 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @GetAuthenticPixelsCache(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %8, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !24
  %13 = load ptr, ptr %12, align 8, !tbaa !31
  %14 = tail call ptr @GetAuthenticPixelCacheNexus(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %13, ptr noundef %5) #28
  br label %15

15:                                               ; preds = %6, %10
  %16 = phi ptr [ %14, %10 ], [ null, %6 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GetOneVirtualMagickPixel(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = tail call i32 @GetPixelCacheVirtualMethod(ptr noundef %0) #27
  %9 = getelementptr inbounds %struct._CacheInfo, ptr %7, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !24
  %11 = load ptr, ptr %10, align 8, !tbaa !31
  %12 = tail call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef %8, i64 noundef %1, i64 noundef %2, i64 noundef 1, i64 noundef 1, ptr noundef %11, ptr noundef %4) #28
  tail call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef %3) #24
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %5
  %15 = load ptr, ptr %9, align 8, !tbaa !24
  %16 = load ptr, ptr %15, align 8, !tbaa !31
  %17 = tail call ptr @GetVirtualIndexesFromNexus(ptr noundef nonnull %7, ptr noundef %16) #27
  tail call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %12, ptr noundef %17, ptr noundef %3) #27
  br label %18

18:                                               ; preds = %5, %14
  %19 = phi i32 [ 1, %14 ], [ 0, %5 ]
  ret i32 %19
}

; Function Attrs: hot noinline nounwind optsize uwtable
define dso_local ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nocapture noundef %6, ptr noundef %7) local_unnamed_addr #8 {
  %9 = alloca i16, align 2
  %10 = alloca %struct._PixelPacket, align 8
  %11 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #23
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %13 = load ptr, ptr %12, align 8, !tbaa !37
  %14 = getelementptr inbounds %struct._CacheInfo, ptr %13, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %284, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._RectangleInfo, ptr %11, i64 0, i32 2
  store i64 %2, ptr %18, align 8, !tbaa !71
  %19 = getelementptr inbounds %struct._RectangleInfo, ptr %11, i64 0, i32 3
  store i64 %3, ptr %19, align 8, !tbaa !72
  store i64 %4, ptr %11, align 8, !tbaa !73
  %20 = getelementptr inbounds %struct._RectangleInfo, ptr %11, i64 0, i32 1
  store i64 %5, ptr %20, align 8, !tbaa !74
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 38
  %22 = load ptr, ptr %21, align 8, !tbaa !75
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 73
  %26 = load ptr, ptr %25, align 8, !tbaa !76
  %27 = icmp ne ptr %26, null
  %28 = zext i1 %27 to i32
  br label %29

29:                                               ; preds = %24, %17
  %30 = phi i32 [ 1, %17 ], [ %28, %24 ]
  %31 = call fastcc ptr @SetPixelCacheNexusPixels(ptr noundef nonnull %13, ptr noundef nonnull %11, i32 noundef %30, ptr noundef %6, ptr noundef %7) #28
  %32 = icmp eq ptr %31, null
  br i1 %32, label %284, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct._NexusInfo, ptr %6, i64 0, i32 1, i32 3
  %35 = load i64, ptr %34, align 8, !tbaa !77
  %36 = getelementptr inbounds %struct._CacheInfo, ptr %13, i64 0, i32 6
  %37 = load i64, ptr %36, align 8, !tbaa !69
  %38 = mul i64 %37, %35
  %39 = getelementptr inbounds %struct._NexusInfo, ptr %6, i64 0, i32 1, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !78
  %41 = add i64 %38, %40
  %42 = getelementptr inbounds %struct._CacheInfo, ptr %13, i64 0, i32 7
  %43 = load i64, ptr %42, align 8, !tbaa !70
  %44 = icmp sgt i64 %41, -1
  br i1 %44, label %45, label %85

45:                                               ; preds = %33
  %46 = mul i64 %43, %37
  %47 = getelementptr inbounds %struct._NexusInfo, ptr %6, i64 0, i32 1, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !80
  %49 = add i64 %48, -1
  %50 = mul i64 %49, %37
  %51 = getelementptr inbounds %struct._NexusInfo, ptr %6, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !79
  %53 = add nsw i64 %41, -1
  %54 = add i64 %53, %52
  %55 = add i64 %54, %50
  %56 = icmp ult i64 %55, %46
  %57 = icmp sgt i64 %2, -1
  %58 = and i1 %57, %56
  br i1 %58, label %59, label %85

59:                                               ; preds = %45
  %60 = add i64 %4, %2
  %61 = icmp sgt i64 %60, %37
  %62 = icmp slt i64 %3, 0
  %63 = or i1 %62, %61
  %64 = add i64 %5, %3
  %65 = icmp sgt i64 %64, %43
  %66 = select i1 %63, i1 true, i1 %65
  br i1 %66, label %85, label %67

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct._NexusInfo, ptr %6, i64 0, i32 5
  %69 = load i32, ptr %68, align 8, !tbaa !66
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %284

71:                                               ; preds = %67
  %72 = tail call fastcc i32 @ReadPixelCachePixels(ptr noundef nonnull %13, ptr noundef nonnull %6, ptr noundef %7) #27, !range !67
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %284, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr %13, align 8, !tbaa !94
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct._CacheInfo, ptr %13, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !19
  %80 = icmp eq i32 %79, 12
  br i1 %80, label %81, label %84

81:                                               ; preds = %77, %74
  %82 = tail call fastcc i32 @ReadPixelCacheIndexes(ptr noundef nonnull %13, ptr noundef nonnull %6, ptr noundef %7) #27, !range !67
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %284, label %84

84:                                               ; preds = %81, %77
  br label %284

85:                                               ; preds = %59, %45, %33
  %86 = getelementptr inbounds %struct._NexusInfo, ptr %6, i64 0, i32 6
  %87 = load ptr, ptr %86, align 8, !tbaa !64
  %88 = tail call ptr @AcquirePixelCacheNexus(i64 noundef 1) #27
  switch i32 %1, label %93 [
    i32 10, label %89
    i32 11, label %90
    i32 8, label %91
    i32 9, label %92
    i32 12, label %92
  ]

89:                                               ; preds = %85
  store i64 0, ptr %10, align 8
  br label %96

90:                                               ; preds = %85
  store <4 x i16> <i16 32767, i16 32767, i16 32767, i16 0>, ptr %10, align 8, !tbaa !95
  br label %96

91:                                               ; preds = %85
  store <4 x i16> <i16 0, i16 0, i16 0, i16 -1>, ptr %10, align 8, !tbaa !95
  br label %96

92:                                               ; preds = %85, %85
  store <4 x i16> <i16 -1, i16 -1, i16 -1, i16 0>, ptr %10, align 8, !tbaa !95
  br label %96

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %95 = load i64, ptr %94, align 8
  store i64 %95, ptr %10, align 8
  br label %96

96:                                               ; preds = %93, %92, %91, %90, %89
  store i16 0, ptr %9, align 2, !tbaa !95
  %97 = icmp sgt i64 %5, 0
  br i1 %97, label %98, label %282

98:                                               ; preds = %96
  %99 = and i32 %1, -5
  %100 = icmp eq i32 %99, 0
  %101 = icmp sgt i64 %4, 0
  %102 = getelementptr inbounds %struct._CacheInfo, ptr %13, i64 0, i32 21
  br label %103

103:                                              ; preds = %98, %277
  %104 = phi ptr [ %87, %98 ], [ %279, %277 ]
  %105 = phi ptr [ %31, %98 ], [ %278, %277 ]
  %106 = phi i64 [ 0, %98 ], [ %280, %277 ]
  %107 = add nsw i64 %106, %3
  br i1 %100, label %108, label %111

108:                                              ; preds = %103
  %109 = load i64, ptr %42, align 8, !tbaa !70
  %110 = call fastcc i64 @EdgeY(i64 noundef %107, i64 noundef %109) #27
  br label %111

111:                                              ; preds = %103, %108
  %112 = phi i64 [ %110, %108 ], [ %107, %103 ]
  br i1 %101, label %113, label %277

113:                                              ; preds = %111
  %114 = icmp slt i64 %112, 0
  br label %115

115:                                              ; preds = %113, %271
  %116 = phi ptr [ %104, %113 ], [ %273, %271 ]
  %117 = phi ptr [ %105, %113 ], [ %272, %271 ]
  %118 = phi i64 [ 0, %113 ], [ %275, %271 ]
  %119 = add nsw i64 %118, %2
  %120 = load i64, ptr %36, align 8, !tbaa !69
  %121 = sub i64 %120, %119
  %122 = sub i64 %4, %118
  %123 = call fastcc i64 @MagickMin(i64 noundef %121, i64 noundef %122) #27
  %124 = icmp sgt i64 %119, -1
  %125 = xor i1 %124, true
  %126 = icmp sge i64 %119, %120
  %127 = or i1 %126, %125
  %128 = select i1 %127, i1 true, i1 %114
  br i1 %128, label %134, label %129

129:                                              ; preds = %115
  %130 = load i64, ptr %42, align 8, !tbaa !70
  %131 = icmp sge i64 %112, %130
  %132 = icmp eq i64 %123, 0
  %133 = or i1 %132, %131
  br i1 %133, label %134, label %256

134:                                              ; preds = %129, %115
  switch i32 %1, label %135 [
    i32 1, label %245
    i32 2, label %245
    i32 10, label %245
    i32 11, label %245
    i32 8, label %245
    i32 9, label %245
    i32 12, label %245
    i32 16, label %233
    i32 6, label %141
    i32 3, label %156
    i32 7, label %162
    i32 5, label %170
    i32 17, label %190
    i32 13, label %204
    i32 14, label %215
    i32 15, label %226
  ]

135:                                              ; preds = %134
  %136 = call fastcc i64 @EdgeX(i64 noundef %119, i64 noundef %120) #27
  %137 = load i64, ptr %42, align 8, !tbaa !70
  %138 = call fastcc i64 @EdgeY(i64 noundef %112, i64 noundef %137) #27
  %139 = load ptr, ptr %88, align 8, !tbaa !31
  %140 = call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef %1, i64 noundef %136, i64 noundef %138, i64 noundef 1, i64 noundef 1, ptr noundef %139, ptr noundef %7) #28
  br label %240

141:                                              ; preds = %134
  %142 = load ptr, ptr %102, align 8, !tbaa !56
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = call ptr @AcquireRandomInfo() #24
  store ptr %145, ptr %102, align 8, !tbaa !56
  %146 = load i64, ptr %36, align 8, !tbaa !69
  br label %147

147:                                              ; preds = %144, %141
  %148 = phi i64 [ %146, %144 ], [ %120, %141 ]
  %149 = phi ptr [ %145, %144 ], [ %142, %141 ]
  %150 = call fastcc i64 @RandomX(ptr noundef %149, i64 noundef %148) #27
  %151 = load ptr, ptr %102, align 8, !tbaa !56
  %152 = load i64, ptr %42, align 8, !tbaa !70
  %153 = call fastcc i64 @RandomY(ptr noundef %151, i64 noundef %152) #27
  %154 = load ptr, ptr %88, align 8, !tbaa !31
  %155 = call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef 6, i64 noundef %150, i64 noundef %153, i64 noundef 1, i64 noundef 1, ptr noundef %154, ptr noundef %7) #28
  br label %240

156:                                              ; preds = %134
  %157 = call fastcc i64 @DitherX(i64 noundef %119, i64 noundef %120) #27
  %158 = load i64, ptr %42, align 8, !tbaa !70
  %159 = call fastcc i64 @DitherY(i64 noundef %112, i64 noundef %158) #27
  %160 = load ptr, ptr %88, align 8, !tbaa !31
  %161 = call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef 3, i64 noundef %157, i64 noundef %159, i64 noundef 1, i64 noundef 1, ptr noundef %160, ptr noundef %7) #28
  br label %240

162:                                              ; preds = %134
  %163 = call fastcc { i64, i64 } @VirtualPixelModulo(i64 noundef %119, i64 noundef %120) #27
  %164 = extractvalue { i64, i64 } %163, 1
  %165 = load i64, ptr %42, align 8, !tbaa !70
  %166 = call fastcc { i64, i64 } @VirtualPixelModulo(i64 noundef %112, i64 noundef %165) #27
  %167 = extractvalue { i64, i64 } %166, 1
  %168 = load ptr, ptr %88, align 8, !tbaa !31
  %169 = call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef 7, i64 noundef %164, i64 noundef %167, i64 noundef 1, i64 noundef 1, ptr noundef %168, ptr noundef %7) #28
  br label %240

170:                                              ; preds = %134
  %171 = call fastcc { i64, i64 } @VirtualPixelModulo(i64 noundef %119, i64 noundef %120) #27
  %172 = extractvalue { i64, i64 } %171, 0
  %173 = extractvalue { i64, i64 } %171, 1
  %174 = and i64 %172, 1
  %175 = icmp eq i64 %174, 0
  %176 = xor i64 %173, -1
  %177 = add i64 %120, %176
  %178 = select i1 %175, i64 %173, i64 %177
  %179 = load i64, ptr %42, align 8, !tbaa !70
  %180 = call fastcc { i64, i64 } @VirtualPixelModulo(i64 noundef %112, i64 noundef %179) #27
  %181 = extractvalue { i64, i64 } %180, 0
  %182 = extractvalue { i64, i64 } %180, 1
  %183 = and i64 %181, 1
  %184 = icmp eq i64 %183, 0
  %185 = xor i64 %182, -1
  %186 = add i64 %179, %185
  %187 = select i1 %184, i64 %182, i64 %186
  %188 = load ptr, ptr %88, align 8, !tbaa !31
  %189 = call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef 5, i64 noundef %178, i64 noundef %187, i64 noundef 1, i64 noundef 1, ptr noundef %188, ptr noundef %7) #28
  br label %240

190:                                              ; preds = %134
  %191 = call fastcc { i64, i64 } @VirtualPixelModulo(i64 noundef %119, i64 noundef %120) #27
  %192 = extractvalue { i64, i64 } %191, 0
  %193 = load i64, ptr %42, align 8, !tbaa !70
  %194 = call fastcc { i64, i64 } @VirtualPixelModulo(i64 noundef %112, i64 noundef %193) #27
  %195 = extractvalue { i64, i64 } %194, 0
  %196 = xor i64 %195, %192
  %197 = and i64 %196, 1
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %245

199:                                              ; preds = %190
  %200 = extractvalue { i64, i64 } %194, 1
  %201 = extractvalue { i64, i64 } %191, 1
  %202 = load ptr, ptr %88, align 8, !tbaa !31
  %203 = call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef 17, i64 noundef %201, i64 noundef %200, i64 noundef 1, i64 noundef 1, ptr noundef %202, ptr noundef %7) #28
  br label %240

204:                                              ; preds = %134
  br i1 %114, label %245, label %205

205:                                              ; preds = %204
  %206 = load i64, ptr %42, align 8, !tbaa !70
  %207 = icmp slt i64 %112, %206
  br i1 %207, label %208, label %245

208:                                              ; preds = %205
  %209 = call fastcc { i64, i64 } @VirtualPixelModulo(i64 noundef %119, i64 noundef %120) #27
  %210 = extractvalue { i64, i64 } %209, 1
  %211 = call fastcc { i64, i64 } @VirtualPixelModulo(i64 noundef %112, i64 noundef %206) #27
  %212 = extractvalue { i64, i64 } %211, 1
  %213 = load ptr, ptr %88, align 8, !tbaa !31
  %214 = call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef 13, i64 noundef %210, i64 noundef %212, i64 noundef 1, i64 noundef 1, ptr noundef %213, ptr noundef %7) #28
  br label %240

215:                                              ; preds = %134
  %216 = icmp slt i64 %119, %120
  %217 = and i1 %124, %216
  br i1 %217, label %218, label %245

218:                                              ; preds = %215
  %219 = call fastcc { i64, i64 } @VirtualPixelModulo(i64 noundef %119, i64 noundef %120) #27
  %220 = extractvalue { i64, i64 } %219, 1
  %221 = load i64, ptr %42, align 8, !tbaa !70
  %222 = call fastcc { i64, i64 } @VirtualPixelModulo(i64 noundef %112, i64 noundef %221) #27
  %223 = extractvalue { i64, i64 } %222, 1
  %224 = load ptr, ptr %88, align 8, !tbaa !31
  %225 = call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef 14, i64 noundef %220, i64 noundef %223, i64 noundef 1, i64 noundef 1, ptr noundef %224, ptr noundef %7) #28
  br label %240

226:                                              ; preds = %134
  %227 = call fastcc { i64, i64 } @VirtualPixelModulo(i64 noundef %119, i64 noundef %120) #27
  %228 = extractvalue { i64, i64 } %227, 1
  %229 = load i64, ptr %42, align 8, !tbaa !70
  %230 = call fastcc i64 @EdgeY(i64 noundef %112, i64 noundef %229) #27
  %231 = load ptr, ptr %88, align 8, !tbaa !31
  %232 = call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef 15, i64 noundef %228, i64 noundef %230, i64 noundef 1, i64 noundef 1, ptr noundef %231, ptr noundef %7) #28
  br label %240

233:                                              ; preds = %134
  %234 = load i64, ptr %42, align 8, !tbaa !70
  %235 = call fastcc { i64, i64 } @VirtualPixelModulo(i64 noundef %112, i64 noundef %234) #27
  %236 = extractvalue { i64, i64 } %235, 1
  %237 = call fastcc i64 @EdgeX(i64 noundef %119, i64 noundef %120) #27
  %238 = load ptr, ptr %88, align 8, !tbaa !31
  %239 = call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef 16, i64 noundef %237, i64 noundef %236, i64 noundef 1, i64 noundef 1, ptr noundef %238, ptr noundef %7) #28
  br label %240

240:                                              ; preds = %233, %226, %218, %208, %199, %170, %162, %156, %147, %135
  %241 = phi ptr [ %140, %135 ], [ %232, %226 ], [ %225, %218 ], [ %214, %208 ], [ %203, %199 ], [ %189, %170 ], [ %169, %162 ], [ %161, %156 ], [ %155, %147 ], [ %239, %233 ]
  %242 = load ptr, ptr %88, align 8, !tbaa !31
  %243 = call ptr @GetVirtualIndexesFromNexus(ptr noundef nonnull %13, ptr noundef %242) #27
  %244 = icmp eq ptr %241, null
  br i1 %244, label %277, label %245

245:                                              ; preds = %215, %204, %205, %190, %134, %134, %134, %134, %134, %134, %134, %240
  %246 = phi ptr [ %243, %240 ], [ %9, %134 ], [ %9, %134 ], [ %9, %134 ], [ %9, %134 ], [ %9, %134 ], [ %9, %134 ], [ %9, %134 ], [ %9, %190 ], [ %9, %205 ], [ %9, %204 ], [ %9, %215 ]
  %247 = phi ptr [ %241, %240 ], [ %10, %134 ], [ %10, %134 ], [ %10, %134 ], [ %10, %134 ], [ %10, %134 ], [ %10, %134 ], [ %10, %134 ], [ %10, %190 ], [ %10, %205 ], [ %10, %204 ], [ %10, %215 ]
  %248 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 1
  %249 = load i64, ptr %247, align 2
  store i64 %249, ptr %117, align 2
  %250 = icmp ne ptr %116, null
  %251 = icmp ne ptr %246, null
  %252 = select i1 %250, i1 %251, i1 false
  br i1 %252, label %253, label %271

253:                                              ; preds = %245
  %254 = load i16, ptr %246, align 2, !tbaa !95
  %255 = getelementptr inbounds i16, ptr %116, i64 1
  store i16 %254, ptr %116, align 2, !tbaa !95
  br label %271

256:                                              ; preds = %129
  %257 = load ptr, ptr %88, align 8, !tbaa !31
  %258 = call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef %1, i64 noundef %119, i64 noundef %112, i64 noundef %123, i64 noundef 1, ptr noundef %257, ptr noundef %7) #28
  %259 = icmp eq ptr %258, null
  br i1 %259, label %277, label %260

260:                                              ; preds = %256
  %261 = load ptr, ptr %88, align 8, !tbaa !31
  %262 = call ptr @GetVirtualIndexesFromNexus(ptr noundef nonnull %13, ptr noundef %261) #27
  %263 = shl i64 %123, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %117, ptr nonnull align 2 %258, i64 %263, i1 false)
  %264 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 %123
  %265 = icmp ne ptr %116, null
  %266 = icmp ne ptr %262, null
  %267 = select i1 %265, i1 %266, i1 false
  br i1 %267, label %268, label %271

268:                                              ; preds = %260
  %269 = shl i64 %123, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %116, ptr nonnull align 2 %262, i64 %269, i1 false)
  %270 = getelementptr inbounds i16, ptr %116, i64 %123
  br label %271

271:                                              ; preds = %253, %245, %268, %260
  %272 = phi ptr [ %264, %260 ], [ %264, %268 ], [ %248, %245 ], [ %248, %253 ]
  %273 = phi ptr [ %116, %260 ], [ %270, %268 ], [ %116, %245 ], [ %255, %253 ]
  %274 = phi i64 [ %123, %260 ], [ %123, %268 ], [ 1, %245 ], [ 1, %253 ]
  %275 = add i64 %274, %118
  %276 = icmp slt i64 %275, %4
  br i1 %276, label %115, label %277, !llvm.loop !96

277:                                              ; preds = %271, %256, %240, %111
  %278 = phi ptr [ %105, %111 ], [ %117, %240 ], [ %117, %256 ], [ %272, %271 ]
  %279 = phi ptr [ %104, %111 ], [ %116, %240 ], [ %116, %256 ], [ %273, %271 ]
  %280 = add nuw nsw i64 %106, 1
  %281 = icmp eq i64 %280, %5
  br i1 %281, label %282, label %103, !llvm.loop !97

282:                                              ; preds = %277, %96
  %283 = call ptr @DestroyPixelCacheNexus(ptr noundef %88, i64 noundef 1) #27
  br label %284

284:                                              ; preds = %84, %67, %71, %81, %29, %8, %282
  %285 = phi ptr [ %31, %282 ], [ null, %8 ], [ null, %29 ], [ %31, %84 ], [ %31, %67 ], [ null, %71 ], [ null, %81 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #23
  ret ptr %285
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GetPixelCacheVirtualMethod(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !51
  ret i32 %5
}

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @GetVirtualIndexesFromNexus(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = load i32, ptr %0, align 8, !tbaa !94
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  br label %8

8:                                                ; preds = %2, %5
  %9 = phi ptr [ %7, %5 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #11 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !95
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %8, ptr %5, align 8, !tbaa !98
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !99
  %11 = icmp eq i32 %10, 12
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 2, !tbaa !95
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !100
  br label %18

18:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetOneVirtualMethodPixel(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %10 = load i64, ptr %9, align 8
  store i64 %10, ptr %4, align 2
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %8, i64 0, i32 20, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !101
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %6
  %15 = tail call i32 %12(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %4, ptr noundef %5) #24
  br label %24

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct._CacheInfo, ptr %8, i64 0, i32 13
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  %19 = load ptr, ptr %18, align 8, !tbaa !31
  %20 = tail call ptr @GetVirtualPixelsFromNexus(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef 1, i64 noundef 1, ptr noundef %19, ptr noundef %5) #28
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = load i64, ptr %20, align 2
  store i64 %23, ptr %4, align 2
  br label %24

24:                                               ; preds = %16, %22, %14
  %25 = phi i32 [ %15, %14 ], [ 1, %22 ], [ 0, %16 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetOneVirtualPixel(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %9 = load i64, ptr %8, align 8
  store i64 %9, ptr %3, align 2
  %10 = getelementptr inbounds %struct._CacheInfo, ptr %7, i64 0, i32 20, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  %12 = icmp eq ptr %11, null
  %13 = tail call i32 @GetPixelCacheVirtualMethod(ptr noundef nonnull %0) #27
  br i1 %12, label %16, label %14

14:                                               ; preds = %5
  %15 = tail call i32 %11(ptr noundef nonnull %0, i32 noundef %13, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %3, ptr noundef %4) #24
  br label %24

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct._CacheInfo, ptr %7, i64 0, i32 13
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  %19 = load ptr, ptr %18, align 8, !tbaa !31
  %20 = tail call ptr @GetVirtualPixelsFromNexus(ptr noundef nonnull %0, i32 noundef %13, i64 noundef %1, i64 noundef %2, i64 noundef 1, i64 noundef 1, ptr noundef %19, ptr noundef %4) #28
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = load i64, ptr %20, align 2
  store i64 %23, ptr %3, align 2
  br label %24

24:                                               ; preds = %16, %22, %14
  %25 = phi i32 [ %15, %14 ], [ 1, %22 ], [ 0, %16 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @GetPixelCacheChannels(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 25
  %3 = load i32, ptr %2, align 4, !tbaa !29
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2036, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #24
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !20
  ret i64 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetPixelCacheColorspace(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 25
  %3 = load i32, ptr %2, align 4, !tbaa !29
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2072, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #24
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !19
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GetPixelCacheMethods(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ResetMagickMemory(ptr noundef %0, i32 noundef 0, i64 noundef 88) #24
  store ptr @GetVirtualPixelCache, ptr %0, align 8, !tbaa !102
  %3 = getelementptr inbounds %struct._CacheMethods, ptr %0, i64 0, i32 1
  store ptr @GetVirtualPixelsCache, ptr %3, align 8, !tbaa !103
  %4 = getelementptr inbounds %struct._CacheMethods, ptr %0, i64 0, i32 2
  store ptr @GetVirtualIndexesFromCache, ptr %4, align 8, !tbaa !104
  %5 = getelementptr inbounds %struct._CacheMethods, ptr %0, i64 0, i32 3
  store ptr @GetOneVirtualPixelFromCache, ptr %5, align 8, !tbaa !105
  %6 = getelementptr inbounds %struct._CacheMethods, ptr %0, i64 0, i32 4
  store ptr @GetAuthenticPixelsCache, ptr %6, align 8, !tbaa !106
  %7 = getelementptr inbounds %struct._CacheMethods, ptr %0, i64 0, i32 5
  store ptr @GetAuthenticIndexesFromCache, ptr %7, align 8, !tbaa !107
  %8 = getelementptr inbounds %struct._CacheMethods, ptr %0, i64 0, i32 7
  store ptr @GetAuthenticPixelsFromCache, ptr %8, align 8, !tbaa !108
  %9 = getelementptr inbounds %struct._CacheMethods, ptr %0, i64 0, i32 6
  store ptr @GetOneAuthenticPixelFromCache, ptr %9, align 8, !tbaa !109
  %10 = getelementptr inbounds %struct._CacheMethods, ptr %0, i64 0, i32 8
  store ptr @QueueAuthenticPixelsCache, ptr %10, align 8, !tbaa !110
  %11 = getelementptr inbounds %struct._CacheMethods, ptr %0, i64 0, i32 9
  store ptr @SyncAuthenticPixelsCache, ptr %11, align 8, !tbaa !111
  %12 = getelementptr inbounds %struct._CacheMethods, ptr %0, i64 0, i32 10
  store ptr @DestroyImagePixelCache, ptr %12, align 8, !tbaa !112
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @GetVirtualPixelCache(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6) #0 {
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %9 = load ptr, ptr %8, align 8, !tbaa !37
  %10 = getelementptr inbounds %struct._CacheInfo, ptr %9, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = load ptr, ptr %11, align 8, !tbaa !31
  %13 = tail call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %12, ptr noundef %6) #28
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal ptr @GetVirtualPixelsCache(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = load ptr, ptr %5, align 8, !tbaa !31
  %7 = tail call ptr @GetVirtualPixelsNexus(ptr noundef %3, ptr noundef %6) #27
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal ptr @GetVirtualIndexesFromCache(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = load ptr, ptr %5, align 8, !tbaa !31
  %7 = tail call ptr @GetVirtualIndexesFromNexus(ptr noundef %3, ptr noundef %6) #27
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @GetOneVirtualPixelFromCache(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef writeonly %4, ptr noundef %5) #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %10 = load i64, ptr %9, align 8
  store i64 %10, ptr %4, align 2
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %8, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !24
  %13 = load ptr, ptr %12, align 8, !tbaa !31
  %14 = tail call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef 1, i64 noundef 1, ptr noundef %13, ptr noundef %5) #28
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %6
  %17 = load i64, ptr %14, align 2
  store i64 %17, ptr %4, align 2
  br label %18

18:                                               ; preds = %6, %16
  %19 = phi i32 [ 1, %16 ], [ 0, %6 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal ptr @GetAuthenticIndexesFromCache(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = load ptr, ptr %5, align 8, !tbaa !31
  %7 = getelementptr inbounds %struct._NexusInfo, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !64
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal ptr @GetAuthenticPixelsFromCache(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = load ptr, ptr %5, align 8, !tbaa !31
  %7 = getelementptr inbounds %struct._NexusInfo, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !81
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @GetOneAuthenticPixelFromCache(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %9 = load i64, ptr %8, align 8
  store i64 %9, ptr %3, align 2
  %10 = getelementptr inbounds %struct._CacheInfo, ptr %7, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = load ptr, ptr %11, align 8, !tbaa !31
  %13 = tail call ptr @GetAuthenticPixelCacheNexus(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef 1, i64 noundef 1, ptr noundef %12, ptr noundef %4) #28
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %5
  %16 = load i64, ptr %13, align 2
  store i64 %16, ptr %3, align 2
  br label %17

17:                                               ; preds = %5, %15
  %18 = phi i32 [ 1, %15 ], [ 0, %5 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @QueueAuthenticPixelsCache(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = getelementptr inbounds %struct._CacheInfo, ptr %8, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !24
  %11 = load ptr, ptr %10, align 8, !tbaa !31
  %12 = tail call ptr @QueueAuthenticPixelCacheNexus(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef 0, ptr noundef %11, ptr noundef %5) #28
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @SyncAuthenticPixelsCache(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  %5 = getelementptr inbounds %struct._CacheInfo, ptr %4, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  %7 = load ptr, ptr %6, align 8, !tbaa !31
  %8 = tail call i32 @SyncAuthenticPixelCacheNexus(ptr noundef %0, ptr noundef %7, ptr noundef %1) #28, !range !67
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @DestroyImagePixelCache(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !53
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 799, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #24
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @DestroyPixelCache(ptr noundef nonnull %10) #27
  store ptr null, ptr %9, align 8, !tbaa !37
  br label %14

14:                                               ; preds = %8, %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @GetPixelCachePixels(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %5 = load ptr, ptr %4, align 8, !tbaa !37
  store i64 0, ptr %1, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct._CacheInfo, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !9
  %8 = add i32 %7, -1
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %5, i64 0, i32 9
  %12 = load i64, ptr %11, align 8, !tbaa !49
  store i64 %12, ptr %1, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct._CacheInfo, ptr %5, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  br label %15

15:                                               ; preds = %3, %10
  %16 = phi ptr [ %14, %10 ], [ null, %3 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetPixelCacheStorageClass(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 25
  %3 = load i32, ptr %2, align 4, !tbaa !29
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2242, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #24
  br label %8

8:                                                ; preds = %5, %1
  %9 = load i32, ptr %0, align 8, !tbaa !94
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GetPixelCacheTileSize(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !53
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2280, ptr noundef nonnull @.str.5, ptr noundef nonnull %8) #24
  br label %10

10:                                               ; preds = %7, %3
  store i64 256, ptr %1, align 8, !tbaa !86
  %11 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #27
  %12 = icmp eq i32 %11, 3
  %13 = select i1 %12, i64 1024, i64 256
  store i64 %13, ptr %1, align 8
  store i64 %13, ptr %2, align 8, !tbaa !86
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetVirtualIndexQueue(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 20, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr %5(ptr noundef nonnull %0) #24
  br label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = load ptr, ptr %11, align 8, !tbaa !31
  %13 = tail call ptr @GetVirtualIndexesFromNexus(ptr noundef nonnull %3, ptr noundef %12) #27
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi ptr [ %8, %7 ], [ %13, %9 ]
  ret ptr %15
}

; Function Attrs: hot noinline nounwind optsize uwtable
define internal fastcc ptr @SetPixelCacheNexusPixels(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #8 {
  %6 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %104, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !85
  %11 = load i32, ptr %6, align 8, !tbaa !9
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %11, 2
  %15 = icmp eq i32 %2, 0
  %16 = and i1 %15, %14
  br i1 %16, label %19, label %67

17:                                               ; preds = %9
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %19, label %67

19:                                               ; preds = %13, %17
  %20 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 1, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !78
  %22 = load i64, ptr %10, align 8, !tbaa !79
  %23 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 1, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !77
  %25 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 1, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !80
  %27 = add nsw i64 %26, %24
  %28 = icmp sgt i64 %21, -1
  br i1 %28, label %29, label %67

29:                                               ; preds = %19
  %30 = add nsw i64 %22, %21
  %31 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 6
  %32 = load i64, ptr %31, align 8, !tbaa !69
  %33 = icmp sle i64 %30, %32
  %34 = icmp sgt i64 %24, -1
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %67

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 7
  %38 = load i64, ptr %37, align 8, !tbaa !70
  %39 = icmp sgt i64 %27, %38
  br i1 %39, label %67, label %40

40:                                               ; preds = %36
  %41 = icmp eq i64 %26, 1
  br i1 %41, label %49, label %42

42:                                               ; preds = %40
  %43 = icmp eq i64 %21, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %42
  %45 = icmp eq i64 %22, %32
  br i1 %45, label %49, label %46

46:                                               ; preds = %44
  %47 = urem i64 %22, %32
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %46, %44, %40
  %50 = mul i64 %32, %24
  %51 = add i64 %50, %21
  %52 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 14
  %53 = load ptr, ptr %52, align 8, !tbaa !50
  %54 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 %51
  %55 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 4
  store ptr %54, ptr %55, align 8, !tbaa !81
  %56 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 6
  store ptr null, ptr %56, align 8, !tbaa !64
  %57 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 16
  %58 = load i32, ptr %57, align 8, !tbaa !68
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %49
  %61 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 15
  %62 = load ptr, ptr %61, align 8, !tbaa !59
  %63 = getelementptr inbounds i16, ptr %62, i64 %51
  store ptr %63, ptr %56, align 8, !tbaa !64
  br label %64

64:                                               ; preds = %49, %60
  %65 = tail call fastcc i32 @IsAuthenticPixelCache(ptr noundef nonnull %0, ptr noundef nonnull %3) #27, !range !67
  %66 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 5
  store i32 %65, ptr %66, align 8, !tbaa !66
  br label %104

67:                                               ; preds = %19, %29, %36, %42, %46, %17, %13
  %68 = load i64, ptr %10, align 8, !tbaa !79
  %69 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 1, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !80
  %71 = mul i64 %70, %68
  %72 = shl i64 %71, 3
  %73 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 16
  %74 = load i32, ptr %73, align 8, !tbaa !68
  %75 = icmp eq i32 %74, 0
  %76 = mul i64 %71, 10
  %77 = select i1 %75, i64 %72, i64 %76
  %78 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !60
  %80 = icmp eq ptr %79, null
  %81 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 2
  br i1 %80, label %82, label %86

82:                                               ; preds = %67
  store i64 %77, ptr %81, align 8, !tbaa !63
  %83 = tail call fastcc i32 @AcquireCacheNexusPixels(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %4) #27, !range !67
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  store i64 0, ptr %81, align 8, !tbaa !63
  br label %104

86:                                               ; preds = %67
  %87 = load i64, ptr %81, align 8, !tbaa !63
  %88 = icmp ult i64 %87, %77
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  tail call fastcc void @RelinquishCacheNexusPixels(ptr noundef nonnull %3) #27
  store i64 %77, ptr %81, align 8, !tbaa !63
  %90 = tail call fastcc i32 @AcquireCacheNexusPixels(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %4) #27, !range !67
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i64 0, ptr %81, align 8, !tbaa !63
  br label %104

93:                                               ; preds = %86, %89, %82
  %94 = load ptr, ptr %78, align 8, !tbaa !60
  %95 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 4
  store ptr %94, ptr %95, align 8, !tbaa !81
  %96 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 6
  store ptr null, ptr %96, align 8, !tbaa !64
  %97 = load i32, ptr %73, align 8, !tbaa !68
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 %71
  store ptr %100, ptr %96, align 8, !tbaa !64
  br label %101

101:                                              ; preds = %99, %93
  %102 = tail call fastcc i32 @IsAuthenticPixelCache(ptr noundef nonnull %0, ptr noundef nonnull %3) #27, !range !67
  %103 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 5
  store i32 %102, ptr %103, align 8, !tbaa !66
  br label %104

104:                                              ; preds = %64, %5, %101, %92, %85
  %105 = phi ptr [ null, %85 ], [ %94, %101 ], [ null, %92 ], [ %54, %64 ], [ null, %5 ]
  ret ptr %105
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @EdgeY(i64 noundef %0, i64 noundef %1) unnamed_addr #12 {
  %3 = icmp slt i64 %0, 0
  %4 = icmp slt i64 %0, %1
  %5 = add i64 %1, -1
  %6 = select i1 %4, i64 %0, i64 %5
  %7 = select i1 %3, i64 0, i64 %6
  ret i64 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMin(i64 noundef %0, i64 noundef %1) unnamed_addr #12 {
  %3 = tail call i64 @llvm.umin.i64(i64 %0, i64 %1)
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @EdgeX(i64 noundef %0, i64 noundef %1) unnamed_addr #12 {
  %3 = icmp slt i64 %0, 0
  %4 = icmp slt i64 %0, %1
  %5 = add i64 %1, -1
  %6 = select i1 %4, i64 %0, i64 %5
  %7 = select i1 %3, i64 0, i64 %6
  ret i64 %7
}

; Function Attrs: optsize
declare ptr @AcquireRandomInfo() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @RandomX(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = uitofp i64 %1 to double
  %4 = tail call double @GetPseudoRandomValue(ptr noundef %0) #24
  %5 = fmul double %4, %3
  %6 = fptosi double %5 to i64
  ret i64 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @RandomY(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = uitofp i64 %1 to double
  %4 = tail call double @GetPseudoRandomValue(ptr noundef %0) #24
  %5 = fmul double %4, %3
  %6 = fptosi double %5 to i64
  ret i64 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @DitherX(i64 noundef %0, i64 noundef %1) unnamed_addr #12 {
  %3 = and i64 %0, 7
  %4 = getelementptr inbounds [64 x i64], ptr @DitherMatrix, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !86
  %6 = add nsw i64 %5, %0
  %7 = add nsw i64 %6, -32
  %8 = icmp slt i64 %6, 32
  %9 = icmp slt i64 %7, %1
  %10 = add nsw i64 %1, -1
  %11 = select i1 %9, i64 %7, i64 %10
  %12 = select i1 %8, i64 0, i64 %11
  ret i64 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @DitherY(i64 noundef %0, i64 noundef %1) unnamed_addr #12 {
  %3 = and i64 %0, 7
  %4 = getelementptr inbounds [64 x i64], ptr @DitherMatrix, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !86
  %6 = add nsw i64 %5, %0
  %7 = add nsw i64 %6, -32
  %8 = icmp slt i64 %6, 32
  %9 = icmp slt i64 %7, %1
  %10 = add nsw i64 %1, -1
  %11 = select i1 %9, i64 %7, i64 %10
  %12 = select i1 %8, i64 0, i64 %11
  ret i64 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc { i64, i64 } @VirtualPixelModulo(i64 noundef %0, i64 noundef %1) unnamed_addr #12 {
  %3 = sdiv i64 %0, %1
  %4 = ashr i64 %0, 63
  %5 = add nsw i64 %3, %4
  %6 = mul nsw i64 %5, %1
  %7 = sub nsw i64 %0, %6
  %8 = insertvalue { i64, i64 } poison, i64 %5, 0
  %9 = insertvalue { i64, i64 } %8, i64 %7, 1
  ret { i64, i64 } %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetVirtualPixelQueue(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 20, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !114
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr %5(ptr noundef nonnull %0) #24
  br label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = load ptr, ptr %11, align 8, !tbaa !31
  %13 = tail call ptr @GetVirtualPixelsNexus(ptr noundef nonnull %3, ptr noundef %12) #27
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi ptr [ %8, %7 ], [ %13, %9 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @GetVirtualPixelsNexus(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = load i32, ptr %0, align 8, !tbaa !94
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !81
  br label %8

8:                                                ; preds = %2, %5
  %9 = phi ptr [ %7, %5 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = getelementptr inbounds %struct._CacheInfo, ptr %8, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !115
  %11 = icmp eq ptr %10, null
  %12 = tail call i32 @GetPixelCacheVirtualMethod(ptr noundef nonnull %0) #27
  br i1 %11, label %15, label %13

13:                                               ; preds = %6
  %14 = tail call ptr %10(ptr noundef nonnull %0, i32 noundef %12, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #24
  br label %20

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct._CacheInfo, ptr %8, i64 0, i32 13
  %17 = load ptr, ptr %16, align 8, !tbaa !24
  %18 = load ptr, ptr %17, align 8, !tbaa !31
  %19 = tail call ptr @GetVirtualPixelsFromNexus(ptr noundef nonnull %0, i32 noundef %12, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %18, ptr noundef %5) #28
  br label %20

20:                                               ; preds = %15, %13
  %21 = phi ptr [ %14, %13 ], [ %19, %15 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PersistPixelCache(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr }, align 8
  %7 = alloca ptr, align 8
  %8 = alloca { ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }, align 8
  call void @llvm.lifetime.start.p0(i64 584, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 12648, ptr nonnull %8)
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %10 = load i32, ptr %9, align 8, !tbaa !53
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3831, ptr noundef nonnull @.str.5, ptr noundef nonnull %13) #24
  br label %15

15:                                               ; preds = %12, %5
  %16 = tail call i64 @GetMagickPageSize() #24
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %18 = load ptr, ptr %17, align 8, !tbaa !37
  %19 = icmp eq i32 %2, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %15
  %21 = load i32, ptr %9, align 8, !tbaa !53
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3844, ptr noundef nonnull @.str.8) #24
  br label %25

25:                                               ; preds = %23, %20
  %26 = getelementptr inbounds %struct._CacheInfo, ptr %18, i64 0, i32 19
  %27 = tail call i64 @CopyMagickString(ptr noundef nonnull %26, ptr noundef %1, i64 noundef 4096) #24
  %28 = getelementptr inbounds %struct._CacheInfo, ptr %18, i64 0, i32 3
  store i32 3, ptr %28, align 8, !tbaa !9
  %29 = load i64, ptr %3, align 8, !tbaa !48
  %30 = getelementptr inbounds %struct._CacheInfo, ptr %18, i64 0, i32 8
  store i64 %29, ptr %30, align 8, !tbaa !83
  %31 = tail call fastcc i32 @OpenPixelCache(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %4) #27, !range !67
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %111, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct._CacheInfo, ptr %18, i64 0, i32 9
  %35 = load i64, ptr %34, align 8, !tbaa !49
  %36 = add i64 %35, %16
  %37 = urem i64 %35, %16
  %38 = sub i64 %36, %37
  %39 = load i64, ptr %3, align 8, !tbaa !48
  %40 = add i64 %38, %39
  store i64 %40, ptr %3, align 8, !tbaa !48
  br label %111

41:                                               ; preds = %15
  %42 = getelementptr inbounds %struct._CacheInfo, ptr %18, i64 0, i32 4
  %43 = load i32, ptr %42, align 4, !tbaa !18
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %85, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct._CacheInfo, ptr %18, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !9
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %85, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct._CacheInfo, ptr %18, i64 0, i32 27
  %51 = load i64, ptr %50, align 8, !tbaa !27
  %52 = icmp eq i64 %51, 1
  br i1 %52, label %53, label %85

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct._CacheInfo, ptr %18, i64 0, i32 28
  %55 = load ptr, ptr %54, align 8, !tbaa !26
  tail call void @LockSemaphoreInfo(ptr noundef %55) #24
  %56 = load i32, ptr %42, align 4, !tbaa !18
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %83, label %58

58:                                               ; preds = %53
  %59 = load i32, ptr %46, align 8, !tbaa !9
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %83, label %61

61:                                               ; preds = %58
  %62 = load i64, ptr %50, align 8, !tbaa !27
  %63 = icmp eq i64 %62, 1
  br i1 %63, label %64, label %83

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct._CacheInfo, ptr %18, i64 0, i32 19
  %66 = tail call fastcc i32 @rename_utf8(ptr noundef nonnull %65, ptr noundef %1) #27
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %64
  %69 = tail call i64 @CopyMagickString(ptr noundef nonnull %65, ptr noundef %1, i64 noundef 4096) #24
  %70 = getelementptr inbounds %struct._CacheInfo, ptr %18, i64 0, i32 9
  %71 = load i64, ptr %70, align 8, !tbaa !49
  %72 = add i64 %71, %16
  %73 = urem i64 %71, %16
  %74 = sub i64 %72, %73
  %75 = load i64, ptr %3, align 8, !tbaa !48
  %76 = add i64 %74, %75
  store i64 %76, ptr %3, align 8, !tbaa !48
  %77 = load ptr, ptr %54, align 8, !tbaa !26
  tail call void @UnlockSemaphoreInfo(ptr noundef %77) #24
  %78 = tail call ptr @ReferencePixelCache(ptr noundef nonnull %18) #27
  %79 = load i32, ptr %9, align 8, !tbaa !53
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %111, label %81

81:                                               ; preds = %68
  %82 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3878, ptr noundef nonnull @.str.9) #24
  br label %111

83:                                               ; preds = %64, %61, %58, %53
  %84 = load ptr, ptr %54, align 8, !tbaa !26
  tail call void @UnlockSemaphoreInfo(ptr noundef %84) #24
  br label %85

85:                                               ; preds = %83, %49, %45, %41
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %6, ptr nonnull align 8 %0, i64 584, i1 true), !tbaa.struct !116
  %86 = load volatile ptr, ptr %17, align 8, !tbaa.struct !118
  store volatile ptr %86, ptr %7, align 8, !tbaa.struct !118
  %87 = getelementptr inbounds i8, ptr %0, i64 592
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %8, ptr nonnull align 8 %87, i64 12648, i1 true), !tbaa.struct !119
  %88 = tail call ptr @ClonePixelCache(ptr noundef nonnull %18) #27
  store ptr %88, ptr %17, align 8, !tbaa !37
  %89 = tail call ptr @ReferencePixelCache(ptr noundef %88) #27
  %90 = getelementptr inbounds %struct._CacheInfo, ptr %88, i64 0, i32 19
  %91 = tail call i64 @CopyMagickString(ptr noundef nonnull %90, ptr noundef %1, i64 noundef 4096) #24
  %92 = getelementptr inbounds %struct._CacheInfo, ptr %88, i64 0, i32 3
  store i32 3, ptr %92, align 8, !tbaa !9
  %93 = load i64, ptr %3, align 8, !tbaa !48
  %94 = getelementptr inbounds %struct._CacheInfo, ptr %88, i64 0, i32 8
  store i64 %93, ptr %94, align 8, !tbaa !83
  %95 = load ptr, ptr %17, align 8, !tbaa !37
  %96 = tail call fastcc i32 @OpenPixelCache(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %4) #27, !range !67
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %85
  %99 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %100 = tail call fastcc i32 @ClonePixelCacheRepository(ptr noundef %95, ptr noundef %86, ptr noundef nonnull %99) #27
  br label %101

101:                                              ; preds = %98, %85
  %102 = phi i32 [ %100, %98 ], [ 0, %85 ]
  %103 = getelementptr inbounds %struct._CacheInfo, ptr %95, i64 0, i32 9
  %104 = load i64, ptr %103, align 8, !tbaa !49
  %105 = add i64 %104, %16
  %106 = urem i64 %104, %16
  %107 = sub i64 %105, %106
  %108 = load i64, ptr %3, align 8, !tbaa !48
  %109 = add i64 %107, %108
  store i64 %109, ptr %3, align 8, !tbaa !48
  %110 = tail call ptr @DestroyPixelCache(ptr noundef %86) #27
  br label %111

111:                                              ; preds = %81, %68, %25, %101, %33
  %112 = phi i32 [ 1, %33 ], [ %102, %101 ], [ 0, %25 ], [ 1, %68 ], [ 1, %81 ]
  call void @llvm.lifetime.end.p0(i64 584, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 12648, ptr nonnull %8)
  ret i32 %112
}

; Function Attrs: optsize
declare i64 @GetMagickPageSize() local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @OpenPixelCache(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct._CacheInfo, align 8
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8528, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #23
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !53
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3530, ptr noundef nonnull @.str.5, ptr noundef nonnull %11) #24
  br label %13

13:                                               ; preds = %10, %3
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !120
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !121
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %13, %17
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %24 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3532, i32 noundef 445, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, ptr noundef nonnull %23) #24
  br label %302

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %27 = load ptr, ptr %26, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8528) %4, ptr noundef nonnull align 8 dereferenceable(8528) %27, i64 8528, i1 false), !tbaa.struct !122
  %28 = getelementptr inbounds %struct._CacheInfo, ptr %4, i64 0, i32 17
  store i32 -1, ptr %28, align 4, !tbaa !21
  %29 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 18
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %31 = tail call i64 @GetImageIndexInList(ptr noundef nonnull %0) #24
  %32 = sitofp i64 %31 to double
  %33 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %29, i64 noundef 4096, ptr noundef nonnull @.str.13, ptr noundef nonnull %30, double noundef %32) #24
  %34 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 4
  store i32 %1, ptr %34, align 4, !tbaa !18
  %35 = load i64, ptr %18, align 8, !tbaa !121
  %36 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 7
  store i64 %35, ptr %36, align 8, !tbaa !70
  %37 = load i64, ptr %14, align 8, !tbaa !120
  %38 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 6
  store i64 %37, ptr %38, align 8, !tbaa !69
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 81
  %40 = load i64, ptr %39, align 8, !tbaa !123
  %41 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 2
  store i64 %40, ptr %41, align 8, !tbaa !20
  %42 = load i32, ptr %0, align 8, !tbaa !124
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %48, label %44

44:                                               ; preds = %25
  %45 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !99
  %47 = icmp eq i32 %46, 12
  br label %48

48:                                               ; preds = %44, %25
  %49 = phi i1 [ true, %25 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  %51 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 16
  store i32 %50, ptr %51, align 8, !tbaa !68
  %52 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 80
  %53 = load i32, ptr %52, align 8, !tbaa !125
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  store i32 %42, ptr %27, align 8, !tbaa !94
  %56 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !99
  %58 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 1
  store i32 %57, ptr %58, align 4, !tbaa !19
  %59 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 3
  store i32 4, ptr %59, align 8, !tbaa !9
  %60 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 14
  %61 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 9
  store i64 0, ptr %61, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %60, i8 0, i64 16, i1 false)
  br label %302

62:                                               ; preds = %48
  %63 = mul i64 %37, %35
  %64 = select i1 %49, i64 10, i64 8
  %65 = mul i64 %64, %63
  %66 = udiv i64 %65, %35
  %67 = udiv i64 %66, %64
  %68 = icmp eq i64 %37, %67
  br i1 %68, label %72, label %69

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %71 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %70, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3563, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.3, ptr noundef nonnull %30) #24
  br label %302

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 9
  store i64 %65, ptr %73, align 8, !tbaa !49
  %74 = tail call i32 @AcquireMagickResource(i32 noundef 1, i64 noundef %65) #24
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %132, label %76

76:                                               ; preds = %72
  %77 = load i64, ptr %73, align 8, !tbaa !49
  %78 = tail call i32 @AcquireMagickResource(i32 noundef 5, i64 noundef %77) #24
  %79 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 3
  %80 = load i32, ptr %79, align 8, !tbaa !9
  %81 = icmp eq i32 %80, 0
  %82 = icmp ne i32 %78, 0
  %83 = select i1 %81, i1 %82, i1 false
  %84 = icmp eq i32 %80, 1
  %85 = or i1 %84, %83
  br i1 %85, label %86, label %130

86:                                               ; preds = %76
  tail call fastcc void @AllocatePixelCachePixels(ptr noundef nonnull %27) #27
  %87 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 14
  %88 = load ptr, ptr %87, align 8, !tbaa !50
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct._CacheInfo, ptr %4, i64 0, i32 14
  %92 = load ptr, ptr %91, align 8, !tbaa !50
  store ptr %92, ptr %87, align 8, !tbaa !50
  br label %130

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %95 = load i32, ptr %94, align 4, !tbaa !99
  %96 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 1
  store i32 %95, ptr %96, align 4, !tbaa !19
  store i32 1, ptr %79, align 8, !tbaa !9
  %97 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 15
  store ptr null, ptr %97, align 8, !tbaa !59
  %98 = load i32, ptr %51, align 8, !tbaa !68
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 %63
  store ptr %101, ptr %97, align 8, !tbaa !59
  br label %102

102:                                              ; preds = %100, %93
  %103 = load i32, ptr %4, align 8, !tbaa !94
  %104 = icmp ne i32 %103, 0
  %105 = icmp ne i32 %1, 0
  %106 = and i1 %105, %104
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = call fastcc i32 @ClonePixelCacheRepository(ptr noundef nonnull %27, ptr noundef nonnull %4, ptr noundef %2) #27
  call fastcc void @RelinquishPixelCachePixels(ptr noundef nonnull %4) #27
  br label %109

109:                                              ; preds = %107, %102
  %110 = load i32, ptr %7, align 8, !tbaa !53
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %128, label %112

112:                                              ; preds = %109
  %113 = load i64, ptr %73, align 8, !tbaa !49
  %114 = call i64 @FormatMagickSize(i64 noundef %113, i32 noundef 1, ptr noundef nonnull %5) #24
  %115 = load i32, ptr %79, align 8, !tbaa !9
  %116 = zext i32 %115 to i64
  %117 = call ptr @CommandOptionToMnemonic(i32 noundef 3, i64 noundef %116) #24
  %118 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 5
  %119 = load i32, ptr %118, align 8, !tbaa !57
  %120 = icmp eq i32 %119, 0
  %121 = select i1 %120, ptr @.str.17, ptr @.str.16
  %122 = load i64, ptr %38, align 8, !tbaa !69
  %123 = uitofp i64 %122 to double
  %124 = load i64, ptr %36, align 8, !tbaa !70
  %125 = uitofp i64 %124 to double
  %126 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.15, ptr noundef nonnull %29, ptr noundef nonnull %121, ptr noundef %117, double noundef %123, double noundef %125, ptr noundef nonnull %5) #24
  %127 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3604, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #24
  br label %128

128:                                              ; preds = %112, %109
  %129 = load i32, ptr %0, align 8, !tbaa !124
  store i32 %129, ptr %27, align 8, !tbaa !94
  br label %302

130:                                              ; preds = %76, %90
  %131 = load i64, ptr %73, align 8, !tbaa !49
  tail call void @RelinquishMagickResource(i32 noundef 5, i64 noundef %131) #24
  br label %132

132:                                              ; preds = %130, %72
  %133 = load i64, ptr %73, align 8, !tbaa !49
  %134 = tail call i32 @AcquireMagickResource(i32 noundef 2, i64 noundef %133) #24
  %135 = icmp eq i32 %134, 0
  %136 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 3
  %137 = load i32, ptr %136, align 8, !tbaa !9
  %138 = icmp eq i32 %137, 5
  br i1 %135, label %142, label %139

139:                                              ; preds = %132
  br i1 %138, label %140, label %196

140:                                              ; preds = %139
  %141 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 3
  br label %144

142:                                              ; preds = %132
  %143 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 3
  br i1 %138, label %144, label %147

144:                                              ; preds = %140, %142
  %145 = phi ptr [ %141, %140 ], [ %143, %142 ]
  %146 = load i64, ptr %73, align 8, !tbaa !49
  tail call void @RelinquishMagickResource(i32 noundef 2, i64 noundef %146) #24
  br label %147

147:                                              ; preds = %144, %142
  %148 = phi ptr [ %145, %144 ], [ %143, %142 ]
  %149 = tail call ptr @AcquireDistributeCacheInfo(ptr noundef %2) #24
  %150 = icmp eq ptr %149, null
  br i1 %150, label %193, label %151

151:                                              ; preds = %147
  %152 = tail call i32 @OpenDistributePixelCache(ptr noundef nonnull %149, ptr noundef nonnull %0) #24
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %151
  %155 = tail call ptr @__errno_location() #25
  %156 = load i32, ptr %155, align 4, !tbaa !5
  %157 = tail call ptr @GetExceptionMessage(i32 noundef %156) #24
  %158 = tail call ptr @GetDistributeCacheHostname(ptr noundef nonnull %149) #24
  %159 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3631, i32 noundef 445, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef %158, ptr noundef %157) #24
  %160 = tail call ptr @DestroyString(ptr noundef %157) #24
  %161 = tail call ptr @DestroyDistributeCacheInfo(ptr noundef nonnull %149) #24
  br label %193

162:                                              ; preds = %151
  store i32 5, ptr %148, align 8, !tbaa !9
  %163 = load <2 x i32>, ptr %0, align 8, !tbaa !5
  store <2 x i32> %163, ptr %27, align 8, !tbaa !5
  %164 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 23
  store ptr %149, ptr %164, align 8, !tbaa !55
  %165 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 19
  %166 = tail call ptr @GetDistributeCacheHostname(ptr noundef nonnull %149) #24
  %167 = load ptr, ptr %164, align 8, !tbaa !55
  %168 = tail call i32 @GetDistributeCachePort(ptr noundef %167) #24
  %169 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %165, i64 noundef 4096, ptr noundef nonnull @.str.20, ptr noundef %166, i32 noundef %168) #24
  %170 = load i32, ptr %4, align 8, !tbaa !94
  %171 = icmp ne i32 %170, 0
  %172 = icmp ne i32 %1, 0
  %173 = and i1 %172, %171
  br i1 %173, label %174, label %176

174:                                              ; preds = %162
  %175 = call fastcc i32 @ClonePixelCacheRepository(ptr noundef nonnull %27, ptr noundef nonnull %4, ptr noundef %2) #27
  call fastcc void @RelinquishPixelCachePixels(ptr noundef nonnull %4) #27
  br label %176

176:                                              ; preds = %174, %162
  %177 = load i32, ptr %7, align 8, !tbaa !53
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %302, label %179

179:                                              ; preds = %176
  %180 = load i64, ptr %73, align 8, !tbaa !49
  %181 = call i64 @FormatMagickSize(i64 noundef %180, i32 noundef 0, ptr noundef nonnull %5) #24
  %182 = load i32, ptr %148, align 8, !tbaa !9
  %183 = zext i32 %182 to i64
  %184 = call ptr @CommandOptionToMnemonic(i32 noundef 3, i64 noundef %183) #24
  %185 = load ptr, ptr %164, align 8, !tbaa !55
  %186 = call i32 @GetDistributeCacheFile(ptr noundef %185) #24
  %187 = load i64, ptr %38, align 8, !tbaa !69
  %188 = uitofp i64 %187 to double
  %189 = load i64, ptr %36, align 8, !tbaa !70
  %190 = uitofp i64 %189 to double
  %191 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.21, ptr noundef nonnull %29, ptr noundef nonnull %165, i32 noundef %186, ptr noundef %184, double noundef %188, double noundef %190, ptr noundef nonnull %5) #24
  %192 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3667, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #24
  br label %302

193:                                              ; preds = %154, %147
  %194 = load i64, ptr %73, align 8, !tbaa !49
  tail call void @RelinquishMagickResource(i32 noundef 2, i64 noundef %194) #24
  %195 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3674, i32 noundef 445, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.3, ptr noundef nonnull %30) #24
  br label %302

196:                                              ; preds = %139
  %197 = load i32, ptr %4, align 8, !tbaa !94
  %198 = icmp ne i32 %197, 0
  %199 = icmp ne i32 %1, 0
  %200 = and i1 %199, %198
  br i1 %200, label %201, label %203

201:                                              ; preds = %196
  tail call fastcc void @ClosePixelCacheOnDisk(ptr noundef nonnull %27) #27
  %202 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 19
  store i8 0, ptr %202, align 8, !tbaa !58
  br label %203

203:                                              ; preds = %201, %196
  %204 = tail call fastcc i32 @OpenPixelCacheOnDisk(ptr noundef nonnull %27, i32 noundef %1) #27, !range !67
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %203
  %207 = load i64, ptr %73, align 8, !tbaa !49
  tail call void @RelinquishMagickResource(i32 noundef 2, i64 noundef %207) #24
  %208 = tail call ptr @__errno_location() #25
  %209 = load i32, ptr %208, align 4, !tbaa !5
  %210 = tail call ptr @GetExceptionMessage(i32 noundef %209) #24
  %211 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3687, i32 noundef 445, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull %30, ptr noundef %210) #24
  %212 = tail call ptr @DestroyString(ptr noundef %210) #24
  br label %302

213:                                              ; preds = %203
  %214 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 8
  %215 = load i64, ptr %214, align 8, !tbaa !83
  %216 = load i64, ptr %73, align 8, !tbaa !49
  %217 = add i64 %216, %215
  %218 = tail call fastcc i32 @SetPixelCacheExtent(ptr noundef nonnull %0, i64 noundef %217) #27, !range !67
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %213
  %221 = tail call ptr @__errno_location() #25
  %222 = load i32, ptr %221, align 4, !tbaa !5
  %223 = tail call ptr @GetExceptionMessage(i32 noundef %222) #24
  %224 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3695, i32 noundef 445, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.19, ptr noundef nonnull %30, ptr noundef %223) #24
  %225 = tail call ptr @DestroyString(ptr noundef %223) #24
  br label %302

226:                                              ; preds = %213
  %227 = load <2 x i32>, ptr %0, align 8, !tbaa !5
  store <2 x i32> %227, ptr %27, align 8, !tbaa !5
  %228 = load i64, ptr %73, align 8, !tbaa !49
  %229 = tail call i32 @AcquireMagickResource(i32 noundef 4, i64 noundef %228) #24
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %226
  %232 = load i32, ptr %136, align 8, !tbaa !9
  %233 = add i32 %232, -1
  %234 = icmp ult i32 %233, 2
  br i1 %234, label %235, label %277

235:                                              ; preds = %231, %226
  %236 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 17
  %237 = load i32, ptr %236, align 4, !tbaa !21
  %238 = load i64, ptr %214, align 8, !tbaa !83
  %239 = load i64, ptr %73, align 8, !tbaa !49
  %240 = tail call ptr @MapBlob(i32 noundef %237, i32 noundef %1, i64 noundef %238, i64 noundef %239) #24
  %241 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 14
  store ptr %240, ptr %241, align 8, !tbaa !50
  %242 = icmp eq ptr %240, null
  br i1 %242, label %243, label %246

243:                                              ; preds = %235
  %244 = getelementptr inbounds %struct._CacheInfo, ptr %4, i64 0, i32 14
  %245 = load ptr, ptr %244, align 8, !tbaa !50
  store ptr %245, ptr %241, align 8, !tbaa !50
  br label %277

246:                                              ; preds = %235
  tail call fastcc void @ClosePixelCacheOnDisk(ptr noundef nonnull %27) #27
  store i32 2, ptr %136, align 8, !tbaa !9
  %247 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 5
  store i32 1, ptr %247, align 8, !tbaa !57
  %248 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 15
  store ptr null, ptr %248, align 8, !tbaa !59
  %249 = load i32, ptr %51, align 8, !tbaa !68
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %254, label %251

251:                                              ; preds = %246
  %252 = load ptr, ptr %241, align 8, !tbaa !50
  %253 = getelementptr inbounds %struct._PixelPacket, ptr %252, i64 %63
  store ptr %253, ptr %248, align 8, !tbaa !59
  br label %254

254:                                              ; preds = %251, %246
  %255 = load i32, ptr %4, align 8, !tbaa !94
  %256 = icmp ne i32 %255, 0
  %257 = and i1 %199, %256
  br i1 %257, label %258, label %260

258:                                              ; preds = %254
  %259 = call fastcc i32 @ClonePixelCacheRepository(ptr noundef nonnull %27, ptr noundef nonnull %4, ptr noundef %2) #27
  call fastcc void @RelinquishPixelCachePixels(ptr noundef nonnull %4) #27
  br label %260

260:                                              ; preds = %258, %254
  %261 = load i32, ptr %7, align 8, !tbaa !53
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %302, label %263

263:                                              ; preds = %260
  %264 = load i64, ptr %73, align 8, !tbaa !49
  %265 = call i64 @FormatMagickSize(i64 noundef %264, i32 noundef 1, ptr noundef nonnull %5) #24
  %266 = load i32, ptr %136, align 8, !tbaa !9
  %267 = zext i32 %266 to i64
  %268 = call ptr @CommandOptionToMnemonic(i32 noundef 3, i64 noundef %267) #24
  %269 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 19
  %270 = load i32, ptr %236, align 4, !tbaa !21
  %271 = load i64, ptr %38, align 8, !tbaa !69
  %272 = uitofp i64 %271 to double
  %273 = load i64, ptr %36, align 8, !tbaa !70
  %274 = uitofp i64 %273 to double
  %275 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.21, ptr noundef nonnull %29, ptr noundef nonnull %269, i32 noundef %270, ptr noundef %268, double noundef %272, double noundef %274, ptr noundef nonnull %5) #24
  %276 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3747, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #24
  br label %302

277:                                              ; preds = %231, %243
  store i32 3, ptr %136, align 8, !tbaa !9
  %278 = load i64, ptr %73, align 8, !tbaa !49
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %278) #24
  %279 = load i32, ptr %4, align 8, !tbaa !94
  %280 = icmp ne i32 %279, 0
  %281 = and i1 %199, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %277
  %283 = call fastcc i32 @ClonePixelCacheRepository(ptr noundef nonnull %27, ptr noundef nonnull %4, ptr noundef %2) #27
  call fastcc void @RelinquishPixelCachePixels(ptr noundef nonnull %4) #27
  br label %284

284:                                              ; preds = %282, %277
  %285 = load i32, ptr %7, align 8, !tbaa !53
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %302, label %287

287:                                              ; preds = %284
  %288 = load i64, ptr %73, align 8, !tbaa !49
  %289 = call i64 @FormatMagickSize(i64 noundef %288, i32 noundef 0, ptr noundef nonnull %5) #24
  %290 = load i32, ptr %136, align 8, !tbaa !9
  %291 = zext i32 %290 to i64
  %292 = call ptr @CommandOptionToMnemonic(i32 noundef 3, i64 noundef %291) #24
  %293 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 19
  %294 = getelementptr inbounds %struct._CacheInfo, ptr %27, i64 0, i32 17
  %295 = load i32, ptr %294, align 4, !tbaa !21
  %296 = load i64, ptr %38, align 8, !tbaa !69
  %297 = uitofp i64 %296 to double
  %298 = load i64, ptr %36, align 8, !tbaa !70
  %299 = uitofp i64 %298 to double
  %300 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.21, ptr noundef nonnull %29, ptr noundef nonnull %293, i32 noundef %295, ptr noundef %292, double noundef %297, double noundef %299, ptr noundef nonnull %5) #24
  %301 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3769, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #24
  br label %302

302:                                              ; preds = %284, %287, %260, %263, %193, %179, %176, %21, %220, %206, %128, %69, %55
  %303 = phi i32 [ 1, %55 ], [ 0, %69 ], [ 0, %206 ], [ 0, %220 ], [ 1, %128 ], [ 0, %21 ], [ 0, %193 ], [ 1, %179 ], [ 1, %176 ], [ 1, %263 ], [ 1, %260 ], [ 1, %287 ], [ 1, %284 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8528, ptr nonnull %4) #23
  ret i32 %303
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @rename_utf8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 {
  %3 = tail call i32 @rename(ptr noundef %0, ptr noundef %1) #24
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ReferencePixelCache(ptr noundef returned %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 28
  %3 = load ptr, ptr %2, align 8, !tbaa !26
  tail call void @LockSemaphoreInfo(ptr noundef %3) #24
  %4 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 27
  %5 = load i64, ptr %4, align 8, !tbaa !27
  %6 = add nsw i64 %5, 1
  store i64 %6, ptr %4, align 8, !tbaa !27
  %7 = load ptr, ptr %2, align 8, !tbaa !26
  tail call void @UnlockSemaphoreInfo(ptr noundef %7) #24
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ClonePixelCacheRepository(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct._RectangleInfo, align 8
  %5 = alloca %struct._RectangleInfo, align 8
  %6 = alloca [4096 x i8], align 16
  %7 = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !9
  switch i32 %8, label %46 [
    i32 4, label %178
    i32 1, label %9
    i32 2, label %9
  ]

9:                                                ; preds = %3, %3
  %10 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !9
  %12 = add i32 %11, -1
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %46

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 6
  %16 = load i64, ptr %15, align 8, !tbaa !69
  %17 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 6
  %18 = load i64, ptr %17, align 8, !tbaa !69
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %46

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 7
  %22 = load i64, ptr %21, align 8, !tbaa !70
  %23 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 7
  %24 = load i64, ptr %23, align 8, !tbaa !70
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 16
  %28 = load i32, ptr %27, align 8, !tbaa !68
  %29 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 16
  %30 = load i32, ptr %29, align 8, !tbaa !68
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 14
  %34 = load ptr, ptr %33, align 8, !tbaa !50
  %35 = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 14
  %36 = load ptr, ptr %35, align 8, !tbaa !50
  %37 = mul i64 %22, %16
  tail call fastcc void @CopyPixels(ptr noundef %34, ptr noundef %36, i64 noundef %37) #27
  %38 = icmp eq i32 %28, 0
  br i1 %38, label %178, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 15
  %41 = load ptr, ptr %40, align 8, !tbaa !59
  %42 = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 15
  %43 = load ptr, ptr %42, align 8, !tbaa !59
  %44 = shl i64 %16, 1
  %45 = mul i64 %44, %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %41, ptr align 2 %43, i64 %45, i1 false)
  br label %178

46:                                               ; preds = %9, %3, %26, %20, %14
  %47 = tail call ptr @AcquirePixelCacheNexus(i64 noundef 2) #27
  %48 = tail call ptr @AcquirePixelCacheNexus(i64 noundef 2) #27
  %49 = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 6
  %50 = load i64, ptr %49, align 8, !tbaa !69
  %51 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 6
  %52 = load i64, ptr %51, align 8, !tbaa !69
  %53 = tail call fastcc i64 @MagickMin(i64 noundef %50, i64 noundef %52) #27
  %54 = shl i64 %53, 3
  %55 = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 7
  %56 = load i64, ptr %55, align 8, !tbaa !70
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %106

58:                                               ; preds = %46
  %59 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 7
  %60 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 1
  %61 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 2
  %62 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 3
  br label %63

63:                                               ; preds = %58, %99
  %64 = phi i32 [ 1, %58 ], [ %100, %99 ]
  %65 = phi i64 [ 0, %58 ], [ %101, %99 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %99, label %67

67:                                               ; preds = %63
  %68 = load i64, ptr %59, align 8, !tbaa !70
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %70, label %99

70:                                               ; preds = %67
  %71 = load i64, ptr %49, align 8, !tbaa !69
  store i64 %71, ptr %4, align 8, !tbaa !73
  store i64 1, ptr %60, align 8, !tbaa !74
  store i64 0, ptr %61, align 8, !tbaa !71
  store i64 %65, ptr %62, align 8, !tbaa !72
  %72 = load ptr, ptr %47, align 8, !tbaa !31
  %73 = call fastcc ptr @SetPixelCacheNexusPixels(ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef 1, ptr noundef %72, ptr noundef %2) #28
  %74 = icmp eq ptr %73, null
  br i1 %74, label %99, label %75

75:                                               ; preds = %70
  %76 = load ptr, ptr %47, align 8, !tbaa !31
  %77 = tail call fastcc i32 @ReadPixelCachePixels(ptr noundef nonnull %1, ptr noundef %76, ptr noundef %2) #27, !range !67
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %99, label %79

79:                                               ; preds = %75
  %80 = load i64, ptr %51, align 8, !tbaa !69
  store i64 %80, ptr %4, align 8, !tbaa !73
  %81 = load ptr, ptr %48, align 8, !tbaa !31
  %82 = call fastcc ptr @SetPixelCacheNexusPixels(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 1, ptr noundef %81, ptr noundef %2) #28
  %83 = icmp eq ptr %82, null
  br i1 %83, label %99, label %84

84:                                               ; preds = %79
  %85 = load ptr, ptr %48, align 8, !tbaa !31
  %86 = getelementptr inbounds %struct._NexusInfo, ptr %85, i64 0, i32 4
  %87 = load ptr, ptr %86, align 8, !tbaa !81
  %88 = getelementptr inbounds %struct._NexusInfo, ptr %85, i64 0, i32 2
  %89 = load i64, ptr %88, align 8, !tbaa !63
  %90 = tail call ptr @ResetMagickMemory(ptr noundef %87, i32 noundef 0, i64 noundef %89) #24
  %91 = load ptr, ptr %48, align 8, !tbaa !31
  %92 = getelementptr inbounds %struct._NexusInfo, ptr %91, i64 0, i32 4
  %93 = load ptr, ptr %92, align 8, !tbaa !81
  %94 = load ptr, ptr %47, align 8, !tbaa !31
  %95 = getelementptr inbounds %struct._NexusInfo, ptr %94, i64 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !81
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %93, ptr align 2 %96, i64 %54, i1 false)
  %97 = load ptr, ptr %48, align 8, !tbaa !31
  %98 = tail call fastcc i32 @WritePixelCachePixels(ptr noundef nonnull %0, ptr noundef %97, ptr noundef %2) #27, !range !67
  br label %99

99:                                               ; preds = %79, %75, %70, %67, %63, %84
  %100 = phi i32 [ %98, %84 ], [ 0, %63 ], [ %64, %67 ], [ %64, %70 ], [ 0, %75 ], [ 1, %79 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  %101 = add nuw nsw i64 %65, 1
  %102 = load i64, ptr %55, align 8, !tbaa !70
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %63, label %104, !llvm.loop !126

104:                                              ; preds = %99
  %105 = icmp sgt i64 %102, 0
  br label %106

106:                                              ; preds = %104, %46
  %107 = phi i1 [ false, %46 ], [ %105, %104 ]
  %108 = phi i32 [ 1, %46 ], [ %100, %104 ]
  %109 = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 16
  %110 = load i32, ptr %109, align 8, !tbaa !68
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %161, label %112

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 16
  %114 = load i32, ptr %113, align 8, !tbaa !68
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %161, label %116

116:                                              ; preds = %112
  %117 = load i64, ptr %49, align 8, !tbaa !69
  %118 = load i64, ptr %51, align 8, !tbaa !69
  %119 = tail call fastcc i64 @MagickMin(i64 noundef %117, i64 noundef %118) #27
  %120 = shl i64 %119, 1
  br i1 %107, label %121, label %161

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 7
  %123 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 1
  %124 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 2
  %125 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 3
  br label %126

126:                                              ; preds = %121, %156
  %127 = phi i32 [ %108, %121 ], [ %157, %156 ]
  %128 = phi i64 [ 0, %121 ], [ %158, %156 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %129 = icmp eq i32 %127, 0
  br i1 %129, label %156, label %130

130:                                              ; preds = %126
  %131 = load i64, ptr %122, align 8, !tbaa !70
  %132 = icmp slt i64 %128, %131
  br i1 %132, label %133, label %156

133:                                              ; preds = %130
  %134 = load i64, ptr %49, align 8, !tbaa !69
  store i64 %134, ptr %5, align 8, !tbaa !73
  store i64 1, ptr %123, align 8, !tbaa !74
  store i64 0, ptr %124, align 8, !tbaa !71
  store i64 %128, ptr %125, align 8, !tbaa !72
  %135 = load ptr, ptr %47, align 8, !tbaa !31
  %136 = call fastcc ptr @SetPixelCacheNexusPixels(ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef 1, ptr noundef %135, ptr noundef %2) #28
  %137 = icmp eq ptr %136, null
  br i1 %137, label %156, label %138

138:                                              ; preds = %133
  %139 = load ptr, ptr %47, align 8, !tbaa !31
  %140 = tail call fastcc i32 @ReadPixelCacheIndexes(ptr noundef nonnull %1, ptr noundef %139, ptr noundef %2) #27, !range !67
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %156, label %142

142:                                              ; preds = %138
  %143 = load i64, ptr %51, align 8, !tbaa !69
  store i64 %143, ptr %5, align 8, !tbaa !73
  %144 = load ptr, ptr %48, align 8, !tbaa !31
  %145 = call fastcc ptr @SetPixelCacheNexusPixels(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 1, ptr noundef %144, ptr noundef %2) #28
  %146 = icmp eq ptr %145, null
  br i1 %146, label %156, label %147

147:                                              ; preds = %142
  %148 = load ptr, ptr %48, align 8, !tbaa !31
  %149 = getelementptr inbounds %struct._NexusInfo, ptr %148, i64 0, i32 6
  %150 = load ptr, ptr %149, align 8, !tbaa !64
  %151 = load ptr, ptr %47, align 8, !tbaa !31
  %152 = getelementptr inbounds %struct._NexusInfo, ptr %151, i64 0, i32 6
  %153 = load ptr, ptr %152, align 8, !tbaa !64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %150, ptr align 2 %153, i64 %120, i1 false)
  %154 = load ptr, ptr %48, align 8, !tbaa !31
  %155 = tail call fastcc i32 @WritePixelCacheIndexes(ptr noundef nonnull %0, ptr noundef %154, ptr noundef %2) #27, !range !67
  br label %156

156:                                              ; preds = %142, %138, %133, %130, %126, %147
  %157 = phi i32 [ %155, %147 ], [ 0, %126 ], [ %127, %130 ], [ %127, %133 ], [ 0, %138 ], [ 1, %142 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  %158 = add nuw nsw i64 %128, 1
  %159 = load i64, ptr %55, align 8, !tbaa !70
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %126, label %161, !llvm.loop !127

161:                                              ; preds = %156, %116, %112, %106
  %162 = phi i32 [ %108, %112 ], [ %108, %106 ], [ %108, %116 ], [ %157, %156 ]
  %163 = tail call ptr @DestroyPixelCacheNexus(ptr noundef %47, i64 noundef 2) #27
  %164 = tail call ptr @DestroyPixelCacheNexus(ptr noundef %48, i64 noundef 2) #27
  %165 = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 25
  %166 = load i32, ptr %165, align 4, !tbaa !29
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %178, label %168

168:                                              ; preds = %161
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #23
  %169 = load i32, ptr %7, align 8, !tbaa !9
  %170 = zext i32 %169 to i64
  %171 = tail call ptr @CommandOptionToMnemonic(i32 noundef 3, i64 noundef %170) #24
  %172 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 3
  %173 = load i32, ptr %172, align 8, !tbaa !9
  %174 = zext i32 %173 to i64
  %175 = tail call ptr @CommandOptionToMnemonic(i32 noundef 3, i64 noundef %174) #24
  %176 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.26, ptr noundef %171, ptr noundef %175) #24
  %177 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 767, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #23
  br label %178

178:                                              ; preds = %161, %168, %32, %39, %3
  %179 = phi i32 [ 1, %3 ], [ 1, %39 ], [ 1, %32 ], [ %162, %168 ], [ %162, %161 ]
  ret i32 %179
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @QueueAuthenticPixel(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr nocapture noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = tail call ptr @QueueAuthenticPixelCacheNexus(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) #28
  ret ptr %9
}

; Function Attrs: hot noinline nounwind optsize uwtable
define internal fastcc ptr @GetImagePixelCache(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #8 {
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = alloca %struct._Image, align 8
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 61
  %7 = load ptr, ptr %6, align 8, !tbaa !128
  tail call void @LockSemaphoreInfo(ptr noundef %7) #24
  %8 = load i64, ptr @GetImagePixelCache.cpu_throttle, align 8, !tbaa !48
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call i64 @GetMagickResourceLimit(i32 noundef 8) #24
  store i64 %11, ptr @GetImagePixelCache.cpu_throttle, align 8, !tbaa !48
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i64 [ %11, %10 ], [ %8, %3 ]
  %14 = icmp eq i64 %13, -1
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load i64, ptr @GetImagePixelCache.cycles, align 8, !tbaa !48
  %17 = add i64 %16, 1
  store i64 %17, ptr @GetImagePixelCache.cycles, align 8, !tbaa !48
  %18 = and i64 %16, 31
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  tail call void @MagickDelay(i64 noundef %13) #24
  br label %21

21:                                               ; preds = %20, %15, %12
  %22 = load i64, ptr @GetImagePixelCache.time_limit, align 8, !tbaa !48
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = tail call i64 @GetMagickResourceLimit(i32 noundef 7) #24
  store i64 %25, ptr @GetImagePixelCache.time_limit, align 8, !tbaa !48
  %26 = tail call i64 @time(ptr noundef null) #24
  store i64 %26, ptr @GetImagePixelCache.cache_timestamp, align 8, !tbaa !86
  %27 = load i64, ptr @GetImagePixelCache.time_limit, align 8, !tbaa !48
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i64 [ %27, %24 ], [ %22, %21 ]
  %30 = icmp eq i64 %29, -1
  br i1 %30, label %44, label %31

31:                                               ; preds = %28
  %32 = tail call i64 @time(ptr noundef null) #24
  %33 = load i64, ptr @GetImagePixelCache.cache_timestamp, align 8, !tbaa !86
  %34 = sub nsw i64 %32, %33
  %35 = load i64, ptr @GetImagePixelCache.time_limit, align 8, !tbaa !48
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %44, label %37

37:                                               ; preds = %31
  %38 = tail call ptr @__errno_location() #25
  store i32 125, ptr %38, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #23
  call void @GetExceptionInfo(ptr noundef nonnull %4) #24
  %39 = load i32, ptr %38, align 4, !tbaa !5
  %40 = call ptr @GetExceptionMessage(i32 noundef %39) #24
  %41 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1526, i32 noundef 700, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.3, ptr noundef %40) #24
  %42 = call ptr @DestroyString(ptr noundef %40) #24
  call void @CatchException(ptr noundef nonnull %4) #24
  %43 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #24
  call void @MagickCoreTerminus() #24
  call void @_exit(i32 noundef 1) #26
  unreachable

44:                                               ; preds = %31, %28
  %45 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %46 = load ptr, ptr %45, align 8, !tbaa !37
  %47 = getelementptr inbounds %struct._CacheInfo, ptr %46, i64 0, i32 27
  %48 = load i64, ptr %47, align 8, !tbaa !27
  %49 = icmp sgt i64 %48, 1
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct._CacheInfo, ptr %46, i64 0, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !18
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %90

54:                                               ; preds = %50, %44
  %55 = getelementptr inbounds %struct._CacheInfo, ptr %46, i64 0, i32 28
  %56 = load ptr, ptr %55, align 8, !tbaa !26
  tail call void @LockSemaphoreInfo(ptr noundef %56) #24
  %57 = load i64, ptr %47, align 8, !tbaa !27
  %58 = icmp sgt i64 %57, 1
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct._CacheInfo, ptr %46, i64 0, i32 4
  %61 = load i32, ptr %60, align 4, !tbaa !18
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %55, align 8, !tbaa !26
  tail call void @UnlockSemaphoreInfo(ptr noundef %64) #24
  br label %90

65:                                               ; preds = %59, %54
  call void @llvm.lifetime.start.p0(i64 13240, ptr nonnull %5) #23
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %5, ptr nonnull align 8 %0, i64 13240, i1 true), !tbaa.struct !116
  %66 = tail call ptr @AllocateSemaphoreInfo() #24
  %67 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 61
  store ptr %66, ptr %67, align 8, !tbaa !128
  %68 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 60
  store volatile i64 1, ptr %68, align 8, !tbaa !129
  %69 = tail call ptr @ClonePixelCache(ptr noundef nonnull %46) #27
  %70 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 49
  store ptr %69, ptr %70, align 8, !tbaa !37
  %71 = call fastcc i32 @OpenPixelCache(ptr noundef nonnull %5, i32 noundef 2, ptr noundef %2) #27, !range !67
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %87, label %73

73:                                               ; preds = %65
  %74 = icmp eq i32 %1, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %73
  %76 = call fastcc i32 @ClonePixelCacheRepository(ptr noundef %69, ptr noundef nonnull %46, ptr noundef %2) #27
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %73, %75
  %79 = load i64, ptr %47, align 8, !tbaa !27
  %80 = icmp eq i64 %79, 1
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct._CacheInfo, ptr %46, i64 0, i32 13
  store ptr null, ptr %82, align 8, !tbaa !24
  br label %83

83:                                               ; preds = %81, %78
  %84 = load ptr, ptr %70, align 8, !tbaa !37
  store ptr %84, ptr %45, align 8, !tbaa !37
  call void @DestroySemaphoreInfo(ptr noundef nonnull %67) #24
  call void @llvm.lifetime.end.p0(i64 13240, ptr nonnull %5) #23
  %85 = load ptr, ptr %55, align 8, !tbaa !26
  call void @UnlockSemaphoreInfo(ptr noundef %85) #24
  %86 = call ptr @DestroyPixelCache(ptr noundef nonnull %46) #27
  br label %90

87:                                               ; preds = %65, %75
  call void @DestroySemaphoreInfo(ptr noundef nonnull %67) #24
  call void @llvm.lifetime.end.p0(i64 13240, ptr nonnull %5) #23
  %88 = load ptr, ptr %55, align 8, !tbaa !26
  call void @UnlockSemaphoreInfo(ptr noundef %88) #24
  %89 = load ptr, ptr %6, align 8, !tbaa !128
  call void @UnlockSemaphoreInfo(ptr noundef %89) #24
  br label %109

90:                                               ; preds = %50, %83, %63
  %91 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 5
  store i32 1, ptr %91, align 4, !tbaa !130
  %92 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  store i32 0, ptr %92, align 8, !tbaa !131
  %93 = call fastcc i32 @ValidatePixelCacheMorphology(ptr noundef nonnull %0) #27, !range !67
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %90
  %96 = load ptr, ptr %6, align 8, !tbaa !128
  call void @UnlockSemaphoreInfo(ptr noundef %96) #24
  br label %107

97:                                               ; preds = %90
  %98 = call fastcc i32 @OpenPixelCache(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %2) #27, !range !67
  %99 = load ptr, ptr %45, align 8, !tbaa !37
  %100 = getelementptr inbounds %struct._CacheInfo, ptr %99, i64 0, i32 3
  %101 = load i32, ptr %100, align 8, !tbaa !9
  %102 = icmp eq i32 %101, 3
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  call fastcc void @ClosePixelCacheOnDisk(ptr noundef nonnull %99) #27
  br label %104

104:                                              ; preds = %103, %97
  %105 = load ptr, ptr %6, align 8, !tbaa !128
  call void @UnlockSemaphoreInfo(ptr noundef %105) #24
  %106 = icmp eq i32 %98, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %95, %104
  %108 = load ptr, ptr %45, align 8, !tbaa !37
  br label %109

109:                                              ; preds = %87, %104, %107
  %110 = phi ptr [ %108, %107 ], [ null, %104 ], [ null, %87 ]
  ret ptr %110
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @QueueAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = getelementptr inbounds %struct._CacheInfo, ptr %8, i64 0, i32 20, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !132
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = tail call ptr %10(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #24
  br label %19

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct._CacheInfo, ptr %8, i64 0, i32 13
  %16 = load ptr, ptr %15, align 8, !tbaa !24
  %17 = load ptr, ptr %16, align 8, !tbaa !31
  %18 = tail call ptr @QueueAuthenticPixelCacheNexus(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef 0, ptr noundef %17, ptr noundef %5) #28
  br label %19

19:                                               ; preds = %14, %12
  %20 = phi ptr [ %13, %12 ], [ %18, %14 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SetPixelCacheMethods(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 25
  %4 = load i32, ptr %3, align 4, !tbaa !29
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4587, ptr noundef nonnull @.str.5, ptr noundef nonnull %7) #24
  br label %9

9:                                                ; preds = %6, %2
  %10 = load ptr, ptr %1, align 8, !tbaa !102
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 20
  store ptr %10, ptr %13, align 8, !tbaa !115
  br label %14

14:                                               ; preds = %12, %9
  %15 = getelementptr inbounds %struct._CacheMethods, ptr %1, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !112
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 20, i32 10
  store ptr %16, ptr %19, align 8, !tbaa !54
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct._CacheMethods, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !104
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 20, i32 2
  store ptr %22, ptr %25, align 8, !tbaa !113
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct._CacheMethods, ptr %1, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !106
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 20, i32 4
  store ptr %28, ptr %31, align 8, !tbaa !92
  br label %32

32:                                               ; preds = %30, %26
  %33 = getelementptr inbounds %struct._CacheMethods, ptr %1, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !110
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 20, i32 8
  store ptr %34, ptr %37, align 8, !tbaa !132
  br label %38

38:                                               ; preds = %36, %32
  %39 = getelementptr inbounds %struct._CacheMethods, ptr %1, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !111
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 20, i32 9
  store ptr %40, ptr %43, align 8, !tbaa !133
  br label %44

44:                                               ; preds = %42, %38
  %45 = getelementptr inbounds %struct._CacheMethods, ptr %1, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !108
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 20, i32 7
  store ptr %46, ptr %49, align 8, !tbaa !91
  br label %50

50:                                               ; preds = %48, %44
  %51 = getelementptr inbounds %struct._CacheMethods, ptr %1, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !107
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 20, i32 5
  store ptr %52, ptr %55, align 8, !tbaa !65
  br label %56

56:                                               ; preds = %54, %50
  %57 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 20, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !101
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct._CacheMethods, ptr %1, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !105
  store ptr %62, ptr %57, align 8, !tbaa !101
  br label %63

63:                                               ; preds = %60, %56
  %64 = getelementptr inbounds %struct._CacheMethods, ptr %1, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !109
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 20, i32 6
  store ptr %65, ptr %68, align 8, !tbaa !93
  br label %69

69:                                               ; preds = %67, %63
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SetPixelCacheVirtualMethod(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !53
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4919, ptr noundef nonnull @.str.5, ptr noundef nonnull %7) #24
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %11 = load ptr, ptr %10, align 8, !tbaa !37
  %12 = getelementptr inbounds %struct._CacheInfo, ptr %11, i64 0, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !51
  store i32 %1, ptr %12, align 8, !tbaa !51
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !120
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %47, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !121
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %47, label %21

21:                                               ; preds = %17
  switch i32 %1, label %47 [
    i32 1, label %22
    i32 8, label %42
  ]

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 3
  %25 = load i16, ptr %24, align 2, !tbaa !134
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !135
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call fastcc void @SetCacheAlphaChannel(ptr noundef nonnull %0) #27
  br label %32

32:                                               ; preds = %31, %27, %22
  %33 = tail call fastcc i32 @IsPixelGray(ptr noundef nonnull %23) #27, !range !67
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !99
  %38 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %37) #27, !range !67
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %35
  %41 = tail call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #24
  br label %47

42:                                               ; preds = %21
  %43 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %44 = load i32, ptr %43, align 8, !tbaa !135
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  tail call fastcc void @SetCacheAlphaChannel(ptr noundef nonnull %0) #27
  br label %47

47:                                               ; preds = %40, %35, %32, %46, %42, %21, %17, %9
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @SetCacheAlphaChannel(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !53
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4868, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #24
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 1, ptr %9, align 8, !tbaa !135
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %11 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef nonnull %10) #24
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %13 = load i64, ptr %12, align 8, !tbaa !121
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  br label %17

17:                                               ; preds = %15, %37
  %18 = phi i64 [ 0, %15 ], [ %39, %37 ]
  %19 = phi i32 [ 1, %15 ], [ %38, %37 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %17
  %22 = load i64, ptr %16, align 8, !tbaa !120
  %23 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %11, i64 noundef 0, i64 noundef %18, i64 noundef %22, i64 noundef 1, ptr noundef nonnull %10) #29
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %21
  %26 = load i64, ptr %16, align 8, !tbaa !120
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25, %28
  %29 = phi i64 [ %33, %28 ], [ 0, %25 ]
  %30 = phi ptr [ %32, %28 ], [ %23, %25 ]
  %31 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 0, i32 3
  store i16 0, ptr %31, align 2, !tbaa !136
  %32 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 1
  %33 = add nuw nsw i64 %29, 1
  %34 = icmp eq i64 %33, %26
  br i1 %34, label %35, label %28, !llvm.loop !137

35:                                               ; preds = %28, %25
  %36 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %11, ptr noundef nonnull %10) #29
  br label %37

37:                                               ; preds = %21, %17, %35
  %38 = phi i32 [ %36, %35 ], [ 0, %17 ], [ 0, %21 ]
  %39 = add nuw nsw i64 %18, 1
  %40 = load i64, ptr %12, align 8, !tbaa !121
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %17, label %42, !llvm.loop !138

42:                                               ; preds = %37, %8
  %43 = tail call ptr @DestroyCacheView(ptr noundef %11) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @IsPixelGray(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %3 = load <2 x i16>, ptr %2, align 2, !tbaa !95
  %4 = uitofp <2 x i16> %3 to <2 x float>
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %6 = fsub <2 x float> %5, %4
  %7 = extractelement <2 x float> %6, i64 0
  %8 = tail call fastcc float @AbsolutePixelValue(float noundef %7) #27
  %9 = fpext float %8 to double
  %10 = fcmp olt double %9, 1.000000e-15
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = extractelement <2 x float> %4, i64 0
  %13 = load i16, ptr %0, align 2, !tbaa !139
  %14 = uitofp i16 %13 to float
  %15 = fsub float %12, %14
  %16 = tail call fastcc float @AbsolutePixelValue(float noundef %15) #27
  %17 = fpext float %16 to double
  %18 = fcmp olt double %17, 1.000000e-15
  br i1 %18, label %20, label %19

19:                                               ; preds = %11, %1
  br label %20

20:                                               ; preds = %11, %19
  %21 = phi i32 [ 0, %19 ], [ 1, %11 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @IsGrayColorspace(i32 noundef %0) unnamed_addr #12 {
  switch i32 %0, label %2 [
    i32 19, label %3
    i32 17, label %3
    i32 2, label %3
  ]

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %1, %1, %1, %2
  %4 = phi i32 [ 0, %2 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: hot noinline nounwind optsize uwtable
define dso_local noundef i32 @SyncAuthenticPixelCacheNexus(ptr noundef %0, ptr noalias nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %5 = load ptr, ptr %4, align 8, !tbaa !37
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4994, i32 noundef 445, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, ptr noundef nonnull %9) #24
  br label %42

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct._CacheInfo, ptr %5, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %42, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 38
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = tail call fastcc i32 @ClipPixelCacheNexus(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #27, !range !67
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %19, %15
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 73
  %24 = load ptr, ptr %23, align 8, !tbaa !76
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = tail call fastcc i32 @MaskPixelCacheNexus(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #27, !range !67
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %26, %22
  %30 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !66
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = tail call fastcc i32 @WritePixelCachePixels(ptr noundef nonnull %5, ptr noundef nonnull %1, ptr noundef %2) #27, !range !67
  %35 = getelementptr inbounds %struct._CacheInfo, ptr %5, i64 0, i32 16
  %36 = load i32, ptr %35, align 8, !tbaa !68
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = tail call fastcc i32 @WritePixelCacheIndexes(ptr noundef nonnull %5, ptr noundef nonnull %1, ptr noundef %2) #27, !range !67
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38, %33
  br label %42

42:                                               ; preds = %38, %29, %26, %19, %11, %7, %41
  %43 = phi i32 [ %34, %41 ], [ 0, %7 ], [ 0, %11 ], [ 0, %19 ], [ 0, %26 ], [ 1, %29 ], [ 0, %38 ]
  ret i32 %43
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ClipPixelCacheNexus(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !53
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 425, ptr noundef nonnull @.str.5, ptr noundef nonnull %8) #24
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 38
  %12 = load ptr, ptr %11, align 8, !tbaa !75
  %13 = icmp eq ptr %12, null
  br i1 %13, label %86, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %16 = load ptr, ptr %15, align 8, !tbaa !37
  %17 = icmp eq ptr %16, null
  br i1 %17, label %86, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @AcquirePixelCacheNexus(i64 noundef 1) #27
  %20 = tail call ptr @AcquirePixelCacheNexus(i64 noundef 1) #27
  %21 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1
  %22 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !78
  %24 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 3
  %25 = load i64, ptr %24, align 8, !tbaa !77
  %26 = load i64, ptr %21, align 8, !tbaa !79
  %27 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !80
  %29 = load ptr, ptr %19, align 8, !tbaa !31
  %30 = tail call ptr @GetAuthenticPixelCacheNexus(ptr noundef nonnull %0, i64 noundef %23, i64 noundef %25, i64 noundef %26, i64 noundef %28, ptr noundef %29, ptr noundef %2) #28
  %31 = load ptr, ptr %19, align 8, !tbaa !31
  %32 = getelementptr inbounds %struct._NexusInfo, ptr %31, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !64
  %34 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !81
  %36 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !64
  %38 = load ptr, ptr %11, align 8, !tbaa !75
  %39 = load i64, ptr %22, align 8, !tbaa !78
  %40 = load i64, ptr %24, align 8, !tbaa !77
  %41 = load i64, ptr %21, align 8, !tbaa !79
  %42 = load i64, ptr %27, align 8, !tbaa !80
  %43 = load ptr, ptr %20, align 8, !tbaa !31
  %44 = tail call ptr @GetVirtualPixelsFromNexus(ptr noundef %38, i32 noundef 9, i64 noundef %39, i64 noundef %40, i64 noundef %41, i64 noundef %42, ptr noundef %43, ptr noundef %2) #28
  %45 = load i64, ptr %21, align 8, !tbaa !79
  %46 = load i64, ptr %27, align 8, !tbaa !80
  %47 = mul i64 %46, %45
  %48 = icmp slt i64 %47, 1
  br i1 %48, label %82, label %49

49:                                               ; preds = %18
  %50 = getelementptr inbounds %struct._CacheInfo, ptr %16, i64 0, i32 16
  %51 = icmp eq ptr %37, null
  %52 = icmp eq ptr %33, null
  %53 = icmp eq ptr %30, null
  %54 = icmp eq ptr %44, null
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %82, label %60

56:                                               ; preds = %79
  %57 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 1
  %58 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 1
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %63, i64 1
  br label %60, !llvm.loop !140

60:                                               ; preds = %49, %56
  %61 = phi ptr [ %57, %56 ], [ %44, %49 ]
  %62 = phi ptr [ %58, %56 ], [ %30, %49 ]
  %63 = phi ptr [ %59, %56 ], [ %35, %49 ]
  %64 = phi i64 [ %80, %56 ], [ 0, %49 ]
  %65 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %61) #29
  %66 = fcmp ogt float %65, 3.276700e+04
  br i1 %66, label %67, label %79

67:                                               ; preds = %60
  %68 = load <4 x i16>, ptr %62, align 2, !tbaa !95
  store <4 x i16> %68, ptr %63, align 2, !tbaa !95
  %69 = load i32, ptr %50, align 8, !tbaa !68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds i16, ptr %37, i64 %64
  br i1 %51, label %79, label %73

73:                                               ; preds = %71
  br i1 %52, label %77, label %74

74:                                               ; preds = %73
  %75 = getelementptr inbounds i16, ptr %33, i64 %64
  %76 = load i16, ptr %75, align 2, !tbaa !95
  br label %77

77:                                               ; preds = %73, %74
  %78 = phi i16 [ %76, %74 ], [ 0, %73 ]
  store i16 %78, ptr %72, align 2, !tbaa !95
  br label %79

79:                                               ; preds = %67, %77, %71, %60
  %80 = add nuw nsw i64 %64, 1
  %81 = icmp eq i64 %80, %47
  br i1 %81, label %82, label %56, !llvm.loop !140

82:                                               ; preds = %79, %49, %18
  %83 = phi i32 [ 1, %18 ], [ 0, %49 ], [ 1, %79 ]
  %84 = tail call ptr @DestroyPixelCacheNexus(ptr noundef nonnull %20, i64 noundef 1) #27
  %85 = tail call ptr @DestroyPixelCacheNexus(ptr noundef nonnull %19, i64 noundef 1) #27
  br label %86

86:                                               ; preds = %82, %14, %10
  %87 = phi i32 [ 0, %10 ], [ 0, %14 ], [ %83, %82 ]
  ret i32 %87
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @MaskPixelCacheNexus(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct._MagickPixelPacket, align 8
  %5 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #23
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !53
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3263, ptr noundef nonnull @.str.5, ptr noundef nonnull %10) #24
  br label %12

12:                                               ; preds = %9, %3
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 73
  %14 = load ptr, ptr %13, align 8, !tbaa !76
  %15 = icmp eq ptr %14, null
  br i1 %15, label %103, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %18 = load ptr, ptr %17, align 8, !tbaa !37
  %19 = icmp eq ptr %18, null
  br i1 %19, label %103, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @AcquirePixelCacheNexus(i64 noundef 1) #27
  %22 = tail call ptr @AcquirePixelCacheNexus(i64 noundef 1) #27
  %23 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1
  %24 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !78
  %26 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 3
  %27 = load i64, ptr %26, align 8, !tbaa !77
  %28 = load i64, ptr %23, align 8, !tbaa !79
  %29 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !80
  %31 = load ptr, ptr %21, align 8, !tbaa !31
  %32 = tail call ptr @GetAuthenticPixelCacheNexus(ptr noundef nonnull %0, i64 noundef %25, i64 noundef %27, i64 noundef %28, i64 noundef %30, ptr noundef %31, ptr noundef %2) #28
  %33 = load ptr, ptr %21, align 8, !tbaa !31
  %34 = getelementptr inbounds %struct._NexusInfo, ptr %33, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !64
  %36 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !81
  %38 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !64
  %40 = load ptr, ptr %13, align 8, !tbaa !76
  %41 = load i64, ptr %24, align 8, !tbaa !78
  %42 = load i64, ptr %26, align 8, !tbaa !77
  %43 = load i64, ptr %23, align 8, !tbaa !79
  %44 = load i64, ptr %29, align 8, !tbaa !80
  %45 = load ptr, ptr %22, align 8, !tbaa !31
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %47 = tail call ptr @GetVirtualPixelsFromNexus(ptr noundef %40, i32 noundef 9, i64 noundef %41, i64 noundef %42, i64 noundef %43, i64 noundef %44, ptr noundef %45, ptr noundef nonnull %46) #28
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %4) #24
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %5) #24
  %48 = load i64, ptr %23, align 8, !tbaa !79
  %49 = load i64, ptr %29, align 8, !tbaa !80
  %50 = mul i64 %49, %48
  %51 = icmp slt i64 %50, 1
  br i1 %51, label %99, label %52

52:                                               ; preds = %20
  %53 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 8
  %54 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  %55 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 6
  %56 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  %57 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  %58 = getelementptr inbounds %struct._CacheInfo, ptr %18, i64 0, i32 16
  %59 = icmp eq ptr %39, null
  %60 = icmp eq ptr %35, null
  %61 = icmp eq ptr %32, null
  %62 = icmp eq ptr %47, null
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %99, label %68

64:                                               ; preds = %96
  %65 = getelementptr inbounds %struct._PixelPacket, ptr %69, i64 1
  %66 = getelementptr inbounds %struct._PixelPacket, ptr %70, i64 1
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 1
  br label %68, !llvm.loop !141

68:                                               ; preds = %52, %64
  %69 = phi ptr [ %65, %64 ], [ %47, %52 ]
  %70 = phi ptr [ %66, %64 ], [ %32, %52 ]
  %71 = phi ptr [ %67, %64 ], [ %37, %52 ]
  %72 = phi i64 [ %97, %64 ], [ 0, %52 ]
  %73 = getelementptr inbounds i16, ptr %35, i64 %72
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %70, ptr noundef %73, ptr noundef nonnull %4) #27
  %74 = getelementptr inbounds i16, ptr %39, i64 %72
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef %71, ptr noundef %74, ptr noundef nonnull %5) #27
  %75 = call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %69) #29
  %76 = load float, ptr %53, align 4, !tbaa !142
  call fastcc void @MagickPixelCompositeMask(ptr noundef nonnull %5, float noundef %75, ptr noundef nonnull %4, float noundef %76, ptr noundef nonnull %5) #27
  %77 = load float, ptr %54, align 8, !tbaa !143
  %78 = call fastcc zeroext i16 @ClampToQuantum(float noundef %77) #27
  %79 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 2
  store i16 %78, ptr %79, align 2, !tbaa !144
  %80 = load float, ptr %55, align 4, !tbaa !145
  %81 = call fastcc zeroext i16 @ClampToQuantum(float noundef %80) #27
  %82 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 1
  store i16 %81, ptr %82, align 2, !tbaa !146
  %83 = load float, ptr %56, align 8, !tbaa !147
  %84 = call fastcc zeroext i16 @ClampToQuantum(float noundef %83) #27
  store i16 %84, ptr %71, align 2, !tbaa !139
  %85 = load float, ptr %57, align 4, !tbaa !142
  %86 = call fastcc zeroext i16 @ClampToQuantum(float noundef %85) #27
  %87 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 3
  store i16 %86, ptr %87, align 2, !tbaa !136
  %88 = load i32, ptr %58, align 8, !tbaa !68
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, i1 true, i1 %59
  br i1 %90, label %96, label %91

91:                                               ; preds = %68
  br i1 %60, label %94, label %92

92:                                               ; preds = %91
  %93 = load i16, ptr %73, align 2, !tbaa !95
  br label %94

94:                                               ; preds = %91, %92
  %95 = phi i16 [ %93, %92 ], [ 0, %91 ]
  store i16 %95, ptr %74, align 2, !tbaa !95
  br label %96

96:                                               ; preds = %94, %68
  %97 = add nuw nsw i64 %72, 1
  %98 = icmp eq i64 %97, %50
  br i1 %98, label %99, label %64, !llvm.loop !141

99:                                               ; preds = %96, %52, %20
  %100 = phi i32 [ 1, %20 ], [ 0, %52 ], [ 1, %96 ]
  %101 = call ptr @DestroyPixelCacheNexus(ptr noundef nonnull %22, i64 noundef 1) #27
  %102 = call ptr @DestroyPixelCacheNexus(ptr noundef nonnull %21, i64 noundef 1) #27
  br label %103

103:                                              ; preds = %99, %16, %12
  %104 = phi i32 [ 0, %12 ], [ 0, %16 ], [ %100, %99 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #23
  ret i32 %104
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @WritePixelCachePixels(ptr noundef %0, ptr noalias nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct._RectangleInfo, align 8
  %5 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !66
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %148

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1
  %10 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !77
  %12 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 6
  %13 = load i64, ptr %12, align 8, !tbaa !69
  %14 = mul i64 %13, %11
  %15 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !78
  %17 = add i64 %14, %16
  %18 = load i64, ptr %9, align 8, !tbaa !79
  %19 = shl i64 %18, 3
  %20 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !80
  %22 = mul i64 %19, %21
  %23 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !81
  %25 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !9
  switch i32 %26, label %121 [
    i32 1, label %27
    i32 2, label %27
    i32 3, label %45
    i32 5, label %90
  ]

27:                                               ; preds = %8, %8
  %28 = icmp eq i64 %13, %18
  %29 = select i1 %28, i64 %22, i64 %19
  %30 = select i1 %28, i64 1, i64 %21
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %121

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 14
  %34 = load ptr, ptr %33, align 8, !tbaa !50
  %35 = getelementptr inbounds %struct._PixelPacket, ptr %34, i64 %17
  br label %36

36:                                               ; preds = %32, %36
  %37 = phi ptr [ %42, %36 ], [ %35, %32 ]
  %38 = phi i64 [ %43, %36 ], [ 0, %32 ]
  %39 = phi ptr [ %40, %36 ], [ %24, %32 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %37, ptr align 2 %39, i64 %29, i1 false)
  %40 = getelementptr inbounds %struct._PixelPacket, ptr %39, i64 %18
  %41 = load i64, ptr %12, align 8, !tbaa !69
  %42 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 %41
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %30
  br i1 %44, label %132, label %36, !llvm.loop !148

45:                                               ; preds = %8
  %46 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 29
  %47 = load ptr, ptr %46, align 8, !tbaa !28
  tail call void @LockSemaphoreInfo(ptr noundef %47) #24
  %48 = tail call fastcc i32 @OpenPixelCacheOnDisk(ptr noundef nonnull %0, i32 noundef 2) #27, !range !67
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = tail call ptr @__errno_location() #25
  %52 = load i32, ptr %51, align 4, !tbaa !5
  %53 = tail call ptr @GetExceptionMessage(i32 noundef %52) #24
  %54 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  %55 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5409, i32 noundef 430, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.19, ptr noundef nonnull %54, ptr noundef %53) #24
  %56 = tail call ptr @DestroyString(ptr noundef %53) #24
  %57 = load ptr, ptr %46, align 8, !tbaa !28
  tail call void @UnlockSemaphoreInfo(ptr noundef %57) #24
  br label %148

58:                                               ; preds = %45
  %59 = load i64, ptr %12, align 8, !tbaa !69
  %60 = icmp eq i64 %59, %18
  %61 = icmp ult i64 %22, 262143
  %62 = select i1 %60, i1 %61, i1 false
  %63 = select i1 %62, i64 %22, i64 %19
  %64 = select i1 %62, i64 1, i64 %21
  %65 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 8
  %66 = icmp sgt i64 %64, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %58, %76
  %68 = phi i64 [ %80, %76 ], [ 0, %58 ]
  %69 = phi ptr [ %77, %76 ], [ %24, %58 ]
  %70 = phi i64 [ %79, %76 ], [ %17, %58 ]
  %71 = load i64, ptr %65, align 8, !tbaa !83
  %72 = shl i64 %70, 3
  %73 = add i64 %71, %72
  %74 = tail call fastcc i64 @WritePixelCacheRegion(ptr noundef nonnull %0, i64 noundef %73, i64 noundef %63, ptr noundef %69) #27
  %75 = icmp ult i64 %74, %63
  br i1 %75, label %82, label %76

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct._PixelPacket, ptr %69, i64 %18
  %78 = load i64, ptr %12, align 8, !tbaa !69
  %79 = add i64 %78, %70
  %80 = add nuw nsw i64 %68, 1
  %81 = icmp eq i64 %80, %64
  br i1 %81, label %82, label %67, !llvm.loop !149

82:                                               ; preds = %76, %67, %58
  %83 = phi i64 [ 0, %58 ], [ %68, %67 ], [ %64, %76 ]
  %84 = tail call i64 @GetMagickResource(i32 noundef 3) #24
  %85 = tail call i64 @GetMagickResourceLimit(i32 noundef 3) #24
  %86 = icmp ugt i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  tail call fastcc void @ClosePixelCacheOnDisk(ptr noundef nonnull %0) #27
  br label %88

88:                                               ; preds = %87, %82
  %89 = load ptr, ptr %46, align 8, !tbaa !28
  tail call void @UnlockSemaphoreInfo(ptr noundef %89) #24
  br label %121

90:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  %91 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 29
  %92 = load ptr, ptr %91, align 8, !tbaa !28
  tail call void @LockSemaphoreInfo(ptr noundef %92) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !85
  %93 = load i64, ptr %12, align 8, !tbaa !69
  %94 = icmp ne i64 %93, %18
  %95 = icmp ugt i64 %22, 262142
  %96 = select i1 %94, i1 true, i1 %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 1
  store i64 1, ptr %98, align 8, !tbaa !74
  %99 = icmp sgt i64 %21, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %90, %97
  %101 = phi i64 [ %21, %97 ], [ 1, %90 ]
  %102 = phi i64 [ %19, %97 ], [ %22, %90 ]
  %103 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 23
  %104 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 3
  br label %105

105:                                              ; preds = %100, %111
  %106 = phi i64 [ 0, %100 ], [ %115, %111 ]
  %107 = phi ptr [ %24, %100 ], [ %112, %111 ]
  %108 = load ptr, ptr %103, align 8, !tbaa !55
  %109 = call i64 @WriteDistributePixelCachePixels(ptr noundef %108, ptr noundef nonnull %4, i64 noundef %102, ptr noundef %107) #24
  %110 = icmp eq i64 %109, %102
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 %18
  %113 = load i64, ptr %104, align 8, !tbaa !72
  %114 = add nsw i64 %113, 1
  store i64 %114, ptr %104, align 8, !tbaa !72
  %115 = add nuw nsw i64 %106, 1
  %116 = icmp eq i64 %115, %101
  br i1 %116, label %117, label %105, !llvm.loop !150

117:                                              ; preds = %111, %105, %97
  %118 = phi i64 [ %21, %97 ], [ %101, %105 ], [ %101, %111 ]
  %119 = phi i64 [ 0, %97 ], [ %101, %111 ], [ %106, %105 ]
  %120 = load ptr, ptr %91, align 8, !tbaa !28
  call void @UnlockSemaphoreInfo(ptr noundef %120) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  br label %121

121:                                              ; preds = %27, %8, %117, %88
  %122 = phi i64 [ 0, %8 ], [ %119, %117 ], [ %83, %88 ], [ 0, %27 ]
  %123 = phi i64 [ %21, %8 ], [ %118, %117 ], [ %64, %88 ], [ %21, %27 ]
  %124 = icmp slt i64 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = tail call ptr @__errno_location() #25
  %127 = load i32, ptr %126, align 4, !tbaa !5
  %128 = call ptr @GetExceptionMessage(i32 noundef %127) #24
  %129 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  %130 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5469, i32 noundef 445, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.19, ptr noundef nonnull %129, ptr noundef %128) #24
  %131 = call ptr @DestroyString(ptr noundef %128) #24
  br label %148

132:                                              ; preds = %36, %121
  %133 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 25
  %134 = load i32, ptr %133, align 4, !tbaa !29
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %148, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 7
  %138 = load i64, ptr %137, align 8, !tbaa !70
  %139 = call fastcc i32 @QuantumTick(i64 noundef %11, i64 noundef %138) #27, !range !67
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %143 = uitofp i64 %18 to double
  %144 = uitofp i64 %21 to double
  %145 = sitofp i64 %16 to double
  %146 = sitofp i64 %11 to double
  %147 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5474, ptr noundef nonnull @.str.30, ptr noundef nonnull %142, double noundef %143, double noundef %144, double noundef %145, double noundef %146) #24
  br label %148

148:                                              ; preds = %132, %136, %141, %3, %125, %50
  %149 = phi i32 [ 0, %125 ], [ 0, %50 ], [ 1, %3 ], [ 1, %141 ], [ 1, %136 ], [ 1, %132 ]
  ret i32 %149
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @WritePixelCacheIndexes(ptr noundef %0, ptr noalias nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct._RectangleInfo, align 8
  %5 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 16
  %6 = load i32, ptr %5, align 8, !tbaa !68
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %158, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !66
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %158

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !77
  %16 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 6
  %17 = load i64, ptr %16, align 8, !tbaa !69
  %18 = mul i64 %17, %15
  %19 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !78
  %21 = add i64 %18, %20
  %22 = load i64, ptr %13, align 8, !tbaa !79
  %23 = shl i64 %22, 1
  %24 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !80
  %26 = mul i64 %23, %25
  %27 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !64
  %29 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !9
  switch i32 %30, label %131 [
    i32 1, label %31
    i32 2, label %31
    i32 3, label %49
    i32 5, label %100
  ]

31:                                               ; preds = %12, %12
  %32 = icmp eq i64 %17, %22
  %33 = select i1 %32, i64 %26, i64 %23
  %34 = select i1 %32, i64 1, i64 %25
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %131

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 15
  %38 = load ptr, ptr %37, align 8, !tbaa !59
  %39 = getelementptr inbounds i16, ptr %38, i64 %21
  br label %40

40:                                               ; preds = %36, %40
  %41 = phi ptr [ %46, %40 ], [ %39, %36 ]
  %42 = phi i64 [ %47, %40 ], [ 0, %36 ]
  %43 = phi ptr [ %44, %40 ], [ %28, %36 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %41, ptr align 2 %43, i64 %33, i1 false)
  %44 = getelementptr inbounds i16, ptr %43, i64 %22
  %45 = load i64, ptr %16, align 8, !tbaa !69
  %46 = getelementptr inbounds i16, ptr %41, i64 %45
  %47 = add nuw nsw i64 %42, 1
  %48 = icmp eq i64 %47, %34
  br i1 %48, label %142, label %40, !llvm.loop !151

49:                                               ; preds = %12
  %50 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 29
  %51 = load ptr, ptr %50, align 8, !tbaa !28
  tail call void @LockSemaphoreInfo(ptr noundef %51) #24
  %52 = tail call fastcc i32 @OpenPixelCacheOnDisk(ptr noundef nonnull %0, i32 noundef 2) #27, !range !67
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = tail call ptr @__errno_location() #25
  %56 = load i32, ptr %55, align 4, !tbaa !5
  %57 = tail call ptr @GetExceptionMessage(i32 noundef %56) #24
  %58 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  %59 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5243, i32 noundef 430, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.19, ptr noundef nonnull %58, ptr noundef %57) #24
  %60 = tail call ptr @DestroyString(ptr noundef %57) #24
  %61 = load ptr, ptr %50, align 8, !tbaa !28
  tail call void @UnlockSemaphoreInfo(ptr noundef %61) #24
  br label %158

62:                                               ; preds = %49
  %63 = load i64, ptr %16, align 8, !tbaa !69
  %64 = icmp eq i64 %63, %22
  %65 = icmp ult i64 %26, 262143
  %66 = select i1 %64, i1 %65, i1 false
  %67 = select i1 %66, i64 %26, i64 %23
  %68 = select i1 %66, i64 1, i64 %25
  %69 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 8
  %70 = icmp sgt i64 %68, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 7
  %73 = load i64, ptr %72, align 8, !tbaa !70
  %74 = shl i64 %63, 3
  %75 = mul i64 %74, %73
  br label %76

76:                                               ; preds = %71, %86
  %77 = phi i64 [ 0, %71 ], [ %90, %86 ]
  %78 = phi ptr [ %28, %71 ], [ %87, %86 ]
  %79 = phi i64 [ %21, %71 ], [ %89, %86 ]
  %80 = load i64, ptr %69, align 8, !tbaa !83
  %81 = shl i64 %79, 1
  %82 = add i64 %81, %75
  %83 = add i64 %82, %80
  %84 = tail call fastcc i64 @WritePixelCacheRegion(ptr noundef nonnull %0, i64 noundef %83, i64 noundef %67, ptr noundef %78) #27
  %85 = icmp ult i64 %84, %67
  br i1 %85, label %92, label %86

86:                                               ; preds = %76
  %87 = getelementptr inbounds i16, ptr %78, i64 %22
  %88 = load i64, ptr %16, align 8, !tbaa !69
  %89 = add i64 %88, %79
  %90 = add nuw nsw i64 %77, 1
  %91 = icmp eq i64 %90, %68
  br i1 %91, label %92, label %76, !llvm.loop !152

92:                                               ; preds = %86, %76, %62
  %93 = phi i64 [ 0, %62 ], [ %77, %76 ], [ %68, %86 ]
  %94 = tail call i64 @GetMagickResource(i32 noundef 3) #24
  %95 = tail call i64 @GetMagickResourceLimit(i32 noundef 3) #24
  %96 = icmp ugt i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  tail call fastcc void @ClosePixelCacheOnDisk(ptr noundef nonnull %0) #27
  br label %98

98:                                               ; preds = %97, %92
  %99 = load ptr, ptr %50, align 8, !tbaa !28
  tail call void @UnlockSemaphoreInfo(ptr noundef %99) #24
  br label %131

100:                                              ; preds = %12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  %101 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 29
  %102 = load ptr, ptr %101, align 8, !tbaa !28
  tail call void @LockSemaphoreInfo(ptr noundef %102) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !85
  %103 = load i64, ptr %16, align 8, !tbaa !69
  %104 = icmp ne i64 %103, %22
  %105 = icmp ugt i64 %26, 262142
  %106 = select i1 %104, i1 true, i1 %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 1
  store i64 1, ptr %108, align 8, !tbaa !74
  %109 = icmp sgt i64 %25, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %100, %107
  %111 = phi i64 [ %25, %107 ], [ 1, %100 ]
  %112 = phi i64 [ %23, %107 ], [ %26, %100 ]
  %113 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 23
  %114 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 3
  br label %115

115:                                              ; preds = %110, %121
  %116 = phi i64 [ 0, %110 ], [ %125, %121 ]
  %117 = phi ptr [ %28, %110 ], [ %122, %121 ]
  %118 = load ptr, ptr %113, align 8, !tbaa !55
  %119 = call i64 @WriteDistributePixelCacheIndexes(ptr noundef %118, ptr noundef nonnull %4, i64 noundef %112, ptr noundef %117) #24
  %120 = icmp eq i64 %119, %112
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = getelementptr inbounds i16, ptr %117, i64 %22
  %123 = load i64, ptr %114, align 8, !tbaa !72
  %124 = add nsw i64 %123, 1
  store i64 %124, ptr %114, align 8, !tbaa !72
  %125 = add nuw nsw i64 %116, 1
  %126 = icmp eq i64 %125, %111
  br i1 %126, label %127, label %115, !llvm.loop !153

127:                                              ; preds = %121, %115, %107
  %128 = phi i64 [ %25, %107 ], [ %111, %115 ], [ %111, %121 ]
  %129 = phi i64 [ 0, %107 ], [ %111, %121 ], [ %116, %115 ]
  %130 = load ptr, ptr %101, align 8, !tbaa !28
  call void @UnlockSemaphoreInfo(ptr noundef %130) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  br label %131

131:                                              ; preds = %31, %12, %127, %98
  %132 = phi i64 [ 0, %12 ], [ %129, %127 ], [ %93, %98 ], [ 0, %31 ]
  %133 = phi i64 [ %25, %12 ], [ %128, %127 ], [ %68, %98 ], [ %25, %31 ]
  %134 = icmp slt i64 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %131
  %136 = tail call ptr @__errno_location() #25
  %137 = load i32, ptr %136, align 4, !tbaa !5
  %138 = call ptr @GetExceptionMessage(i32 noundef %137) #24
  %139 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  %140 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5305, i32 noundef 445, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.19, ptr noundef nonnull %139, ptr noundef %138) #24
  %141 = call ptr @DestroyString(ptr noundef %138) #24
  br label %158

142:                                              ; preds = %40, %131
  %143 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 25
  %144 = load i32, ptr %143, align 4, !tbaa !29
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %158, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 7
  %148 = load i64, ptr %147, align 8, !tbaa !70
  %149 = call fastcc i32 @QuantumTick(i64 noundef %15, i64 noundef %148) #27, !range !67
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %153 = uitofp i64 %22 to double
  %154 = uitofp i64 %25 to double
  %155 = sitofp i64 %20 to double
  %156 = sitofp i64 %15 to double
  %157 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5310, ptr noundef nonnull @.str.30, ptr noundef nonnull %152, double noundef %153, double noundef %154, double noundef %155, double noundef %156) #24
  br label %158

158:                                              ; preds = %142, %146, %151, %8, %3, %135, %54
  %159 = phi i32 [ 0, %135 ], [ 0, %54 ], [ 0, %3 ], [ 1, %8 ], [ 1, %151 ], [ 1, %146 ], [ 1, %142 ]
  ret i32 %159
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  %5 = getelementptr inbounds %struct._CacheInfo, ptr %4, i64 0, i32 20, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !133
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 %6(ptr noundef nonnull %0, ptr noundef %1) #24
  br label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %4, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !24
  %13 = load ptr, ptr %12, align 8, !tbaa !31
  %14 = tail call i32 @SyncAuthenticPixelCacheNexus(ptr noundef nonnull %0, ptr noundef %13, ptr noundef %1) #28, !range !67
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i32 [ %9, %8 ], [ %14, %10 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define hidden i32 @SyncImagePixelCache(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @GetImagePixelCache(ptr noundef %0, i32 noundef 1, ptr noundef %1) #28
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind optsize
declare i32 @getpid() local_unnamed_addr #14

; Function Attrs: optsize
declare i32 @UnmapBlob(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RelinquishMagickResource(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ClosePixelCacheOnDisk(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 17
  %3 = load i32, ptr %2, align 4, !tbaa !21
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @close(i32 noundef %3) #24
  store i32 -1, ptr %2, align 4, !tbaa !21
  tail call void @RelinquishMagickResource(i32 noundef 3, i64 noundef 1) #24
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare hidden i32 @RelinquishDistributePixelCache(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare double @GetPseudoRandomValue(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @GetImageIndexInList(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @AcquireMagickResource(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @AllocatePixelCachePixels(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 5
  store i32 0, ptr %2, align 8, !tbaa !57
  %3 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 9
  %4 = load i64, ptr %3, align 8, !tbaa !49
  %5 = tail call ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef %4) #22
  %6 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 14
  store ptr %5, ptr %6, align 8, !tbaa !50
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  store i32 1, ptr %2, align 8, !tbaa !57
  %9 = load i64, ptr %3, align 8, !tbaa !49
  %10 = tail call ptr @MapBlob(i32 noundef -1, i32 noundef 2, i64 noundef 0, i64 noundef %9) #24
  store ptr %10, ptr %6, align 8, !tbaa !50
  br label %11

11:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: optsize
declare i64 @FormatMagickSize(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare hidden ptr @AcquireDistributeCacheInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare hidden i32 @OpenDistributePixelCache(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare hidden ptr @GetDistributeCacheHostname(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare hidden i32 @GetDistributeCachePort(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare hidden i32 @GetDistributeCacheFile(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @OpenPixelCacheOnDisk(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 17
  %4 = load i32, ptr %3, align 4, !tbaa !21
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %32

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  %8 = load i8, ptr %7, align 8, !tbaa !58
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call i32 @AcquireUniqueFileResource(ptr noundef nonnull %7) #24
  br label %25

12:                                               ; preds = %6
  switch i32 %1, label %20 [
    i32 0, label %13
    i32 1, label %15
  ]

13:                                               ; preds = %12
  %14 = tail call fastcc i32 @open_utf8(ptr noundef nonnull %7, i32 noundef 0, i32 noundef 0) #27
  br label %25

15:                                               ; preds = %12
  %16 = tail call fastcc i32 @open_utf8(ptr noundef nonnull %7, i32 noundef 193, i32 noundef 384) #27
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = tail call fastcc i32 @open_utf8(ptr noundef nonnull %7, i32 noundef 1, i32 noundef 384) #27
  br label %25

20:                                               ; preds = %12
  %21 = tail call fastcc i32 @open_utf8(ptr noundef nonnull %7, i32 noundef 194, i32 noundef 384) #27
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = tail call fastcc i32 @open_utf8(ptr noundef nonnull %7, i32 noundef 2, i32 noundef 384) #27
  br label %25

25:                                               ; preds = %13, %18, %23, %10
  %26 = phi i32 [ %11, %10 ], [ %24, %23 ], [ %19, %18 ], [ %14, %13 ]
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %32, label %28

28:                                               ; preds = %15, %20, %25
  %29 = phi i32 [ %26, %25 ], [ %16, %15 ], [ %21, %20 ]
  %30 = tail call i32 @AcquireMagickResource(i32 noundef 3, i64 noundef 1) #24
  store i32 %29, ptr %3, align 4, !tbaa !21
  %31 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 4
  store i32 %1, ptr %31, align 4, !tbaa !18
  br label %32

32:                                               ; preds = %25, %2, %28
  %33 = phi i32 [ 1, %28 ], [ 1, %2 ], [ 0, %25 ]
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetPixelCacheExtent(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !53
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #23
  %11 = call i64 @FormatMagickSize(i64 noundef %1, i32 noundef 0, ptr noundef nonnull %3) #24
  %12 = getelementptr inbounds %struct._CacheInfo, ptr %6, i64 0, i32 18
  %13 = getelementptr inbounds %struct._CacheInfo, ptr %6, i64 0, i32 19
  %14 = getelementptr inbounds %struct._CacheInfo, ptr %6, i64 0, i32 17
  %15 = load i32, ptr %14, align 4, !tbaa !21
  %16 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.24, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef %15, ptr noundef nonnull %3) #24
  %17 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3473, ptr noundef nonnull @.str.5, ptr noundef nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #23
  br label %18

18:                                               ; preds = %2, %10
  %19 = getelementptr inbounds %struct._CacheInfo, ptr %6, i64 0, i32 17
  %20 = load i32, ptr %19, align 4, !tbaa !21
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 2) #24
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  %24 = icmp ult i64 %21, %1
  br i1 %24, label %25, label %31

25:                                               ; preds = %23
  %26 = add nsw i64 %1, -1
  %27 = call fastcc i64 @WritePixelCacheRegion(ptr noundef nonnull %6, i64 noundef %26, i64 noundef 1, ptr noundef nonnull @.str.1) #27
  %28 = call ptr @signal(i32 noundef 7, ptr noundef nonnull @CacheSignalHandler) #24
  %29 = icmp eq i64 %27, 1
  %30 = zext i1 %29 to i32
  br label %31

31:                                               ; preds = %23, %18, %25
  %32 = phi i32 [ %30, %25 ], [ 0, %18 ], [ 1, %23 ]
  ret i32 %32
}

; Function Attrs: optsize
declare ptr @MapBlob(i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @AcquireUniqueFileResource(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @open_utf8(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #13 {
  %4 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %1, i32 noundef %2) #24
  ret i32 %4
}

; Function Attrs: nofree optsize
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #15

; Function Attrs: nounwind optsize
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @WritePixelCacheRegion(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noalias nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 17
  %6 = load i32, ptr %5, align 4, !tbaa !21
  %7 = tail call i64 @lseek(i32 noundef %6, i64 noundef %1, i32 noundef 0) #24
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %4
  %10 = icmp sgt i64 %2, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %9, %22
  %12 = phi i64 [ %24, %22 ], [ 0, %9 ]
  %13 = getelementptr inbounds i8, ptr %3, i64 %12
  %14 = sub nsw i64 %2, %12
  %15 = tail call fastcc i64 @MagickMin(i64 noundef %14, i64 noundef 9223372036854775807) #27
  %16 = tail call i64 @write(i32 noundef %6, ptr noundef %13, i64 noundef %15) #24
  %17 = icmp slt i64 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = tail call ptr @__errno_location() #25
  %20 = load i32, ptr %19, align 4, !tbaa !5
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %22, label %26

22:                                               ; preds = %11, %18
  %23 = phi i64 [ 0, %18 ], [ %16, %11 ]
  %24 = add nuw nsw i64 %23, %12
  %25 = icmp slt i64 %24, %2
  br i1 %25, label %11, label %26, !llvm.loop !154

26:                                               ; preds = %18, %22, %9, %4
  %27 = phi i64 [ -1, %4 ], [ 0, %9 ], [ %12, %18 ], [ %24, %22 ]
  ret i64 %27
}

; Function Attrs: nounwind optsize
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: noinline noreturn nounwind optsize uwtable
define internal void @CacheSignalHandler(i32 %0) #16 {
  %2 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #23
  call void @GetExceptionInfo(ptr noundef nonnull %2) #24
  %3 = tail call ptr @__errno_location() #25
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = call ptr @GetExceptionMessage(i32 noundef %4) #24
  %6 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3363, i32 noundef 745, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.3, ptr noundef %5) #24
  %7 = call ptr @DestroyString(ptr noundef %5) #24
  call void @CatchException(ptr noundef nonnull %2) #24
  %8 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #24
  call void @MagickCoreTerminus() #24
  call void @_exit(i32 noundef 46) #26
  unreachable
}

; Function Attrs: nofree optsize
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind optsize
declare noundef i32 @rename(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CopyPixels(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #11 {
  %4 = shl i64 %2, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %0, ptr align 2 %1, i64 %4, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @MagickDelay(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare i64 @time(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @ValidatePixelCacheMorphology(ptr noalias nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = load i32, ptr %0, align 8, !tbaa !124
  %5 = load i32, ptr %3, align 8, !tbaa !94
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %36

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !99
  %10 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !19
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 81
  %15 = load i64, ptr %14, align 8, !tbaa !123
  %16 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !20
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !120
  %22 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 6
  %23 = load i64, ptr %22, align 8, !tbaa !69
  %24 = icmp eq i64 %21, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %27 = load i64, ptr %26, align 8, !tbaa !121
  %28 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 7
  %29 = load i64, ptr %28, align 8, !tbaa !70
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 13
  %33 = load ptr, ptr %32, align 8, !tbaa !24
  %34 = icmp ne ptr %33, null
  %35 = zext i1 %34 to i32
  br label %36

36:                                               ; preds = %31, %1, %7, %13, %19, %25
  %37 = phi i32 [ 0, %25 ], [ 0, %19 ], [ 0, %13 ], [ 0, %7 ], [ 0, %1 ], [ %35, %31 ]
  ret i32 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @ReadPixelCacheRegion(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noalias nocapture noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 17
  %6 = load i32, ptr %5, align 4, !tbaa !21
  %7 = tail call i64 @lseek(i32 noundef %6, i64 noundef %1, i32 noundef 0) #24
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %4
  %10 = icmp sgt i64 %2, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %9, %22
  %12 = phi i64 [ %24, %22 ], [ 0, %9 ]
  %13 = getelementptr inbounds i8, ptr %3, i64 %12
  %14 = sub nsw i64 %2, %12
  %15 = tail call fastcc i64 @MagickMin(i64 noundef %14, i64 noundef 9223372036854775807) #27
  %16 = tail call i64 @read(i32 noundef %6, ptr noundef %13, i64 noundef %15) #24
  %17 = icmp slt i64 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = tail call ptr @__errno_location() #25
  %20 = load i32, ptr %19, align 4, !tbaa !5
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %22, label %26

22:                                               ; preds = %11, %18
  %23 = phi i64 [ 0, %18 ], [ %16, %11 ]
  %24 = add nuw nsw i64 %23, %12
  %25 = icmp slt i64 %24, %2
  br i1 %25, label %11, label %26, !llvm.loop !155

26:                                               ; preds = %18, %22, %9, %4
  %27 = phi i64 [ -1, %4 ], [ 0, %9 ], [ %12, %18 ], [ %24, %22 ]
  ret i64 %27
}

; Function Attrs: optsize
declare i64 @GetMagickResource(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare hidden i64 @ReadDistributePixelCacheIndexes(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @QuantumTick(i64 noundef %0, i64 noundef %1) unnamed_addr #12 {
  %3 = icmp ult i64 %1, 101
  %4 = add i64 %1, -1
  %5 = icmp eq i64 %4, %0
  %6 = or i1 %3, %5
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = udiv i64 %1, 100
  %9 = urem i64 %0, %8
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i32 [ 1, %2 ], [ %11, %7 ]
  ret i32 %13
}

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare hidden i64 @ReadDistributePixelCachePixels(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @IsAuthenticPixelCache(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !9
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !77
  %9 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 6
  %10 = load i64, ptr %9, align 8, !tbaa !69
  %11 = mul i64 %10, %8
  %12 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !78
  %14 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !81
  %16 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 14
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = getelementptr %struct._PixelPacket, ptr %17, i64 %11
  %19 = getelementptr %struct._PixelPacket, ptr %18, i64 %13
  %20 = icmp eq ptr %15, %19
  %21 = zext i1 %20 to i32
  br label %22

22:                                               ; preds = %2, %6
  %23 = phi i32 [ %21, %6 ], [ 1, %2 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @AcquireCacheNexusPixels(ptr noalias noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 2
  store i32 0, ptr %1, align 8, !tbaa !62
  %5 = load i64, ptr %4, align 8, !tbaa !63
  %6 = tail call ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef %5) #22
  %7 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 3
  store ptr %6, ptr %7, align 8, !tbaa !60
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  store i32 1, ptr %1, align 8, !tbaa !62
  %10 = load i64, ptr %4, align 8, !tbaa !63
  %11 = tail call ptr @MapBlob(i32 noundef -1, i32 noundef 2, i64 noundef 0, i64 noundef %10) #24
  store ptr %11, ptr %7, align 8, !tbaa !60
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %15 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4688, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %14) #24
  br label %16

16:                                               ; preds = %3, %9, %13
  %17 = phi i32 [ 0, %13 ], [ 1, %9 ], [ 1, %3 ]
  ret i32 %17
}

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #18

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #18

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @AbsolutePixelValue(float noundef %0) unnamed_addr #12 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = fneg float %0
  %4 = select i1 %2, float %3, float %0
  ret float %4
}

; Function Attrs: hot optsize
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @MagickPixelCompositeMask(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, float noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #11 {
  %6 = fcmp oeq float %1, 6.553500e+04
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false), !tbaa.struct !156
  br label %60

8:                                                ; preds = %5
  %9 = fpext float %1 to double
  %10 = fpext float %3 to double
  %11 = fmul double %9, 0xBDF0002000300040
  %12 = tail call double @llvm.fmuladd.f64(double %11, double %10, double 1.000000e+00)
  %13 = fcmp olt double %12, 0.000000e+00
  %14 = select i1 %13, double 0.000000e+00, double %12
  %15 = tail call fastcc double @PerceptibleReciprocal(double noundef %14) #27
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %17 = load float, ptr %16, align 8, !tbaa !143
  %18 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %19 = load float, ptr %18, align 8, !tbaa !143
  %20 = tail call fastcc float @MagickOver_(float noundef %17, float noundef %1, float noundef %19, float noundef %3) #27
  %21 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %23 = load float, ptr %22, align 4, !tbaa !145
  %24 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 6
  %25 = load float, ptr %24, align 4, !tbaa !145
  %26 = tail call fastcc float @MagickOver_(float noundef %23, float noundef %1, float noundef %25, float noundef %3) #27
  %27 = insertelement <2 x float> poison, float %20, i64 0
  %28 = insertelement <2 x float> %27, float %26, i64 1
  %29 = fpext <2 x float> %28 to <2 x double>
  %30 = insertelement <2 x double> poison, double %15, i64 0
  %31 = shufflevector <2 x double> %30, <2 x double> poison, <2 x i32> zeroinitializer
  %32 = fmul <2 x double> %31, %29
  %33 = fptrunc <2 x double> %32 to <2 x float>
  store <2 x float> %33, ptr %21, align 8, !tbaa !98
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %35 = load float, ptr %34, align 8, !tbaa !147
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  %37 = load float, ptr %36, align 8, !tbaa !147
  %38 = tail call fastcc float @MagickOver_(float noundef %35, float noundef %1, float noundef %37, float noundef %3) #27
  %39 = fpext float %38 to double
  %40 = fmul double %15, %39
  %41 = fptrunc double %40 to float
  %42 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 7
  store float %41, ptr %42, align 8, !tbaa !147
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !157
  %45 = icmp eq i32 %44, 12
  br i1 %45, label %46, label %60

46:                                               ; preds = %8
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !157
  %49 = icmp eq i32 %48, 12
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %52 = load float, ptr %51, align 8, !tbaa !100
  %53 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  %54 = load float, ptr %53, align 8, !tbaa !100
  %55 = tail call fastcc float @MagickOver_(float noundef %52, float noundef %1, float noundef %54, float noundef %3) #27
  %56 = fpext float %55 to double
  %57 = fmul double %15, %56
  %58 = fptrunc double %57 to float
  %59 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 9
  store float %58, ptr %59, align 8, !tbaa !100
  br label %60

60:                                               ; preds = %8, %46, %50, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #12 {
  %2 = fcmp ugt float %0, 0.000000e+00
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 6.553500e+04
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = fadd float %0, 5.000000e-01
  %7 = fptoui float %6 to i16
  br label %8

8:                                                ; preds = %3, %1, %5
  %9 = phi i16 [ %7, %5 ], [ 0, %1 ], [ -1, %3 ]
  ret i16 %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #19

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @PerceptibleReciprocal(double noundef %0) unnamed_addr #12 {
  %2 = fcmp olt double %0, 0.000000e+00
  %3 = select i1 %2, double -1.000000e+00, double 1.000000e+00
  %4 = fmul double %3, %0
  %5 = fcmp ult double %4, 1.000000e-15
  %6 = fdiv double 1.000000e+00, %0
  %7 = fdiv double %3, 1.000000e-15
  %8 = select i1 %5, double %7, double %6
  ret double %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @MagickOver_(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #12 {
  %5 = fpext float %1 to double
  %6 = tail call double @llvm.fmuladd.f64(double %5, double 0xBEF0001000100010, double 1.000000e+00)
  %7 = fpext float %0 to double
  %8 = fpext float %3 to double
  %9 = tail call double @llvm.fmuladd.f64(double %8, double 0xBEF0001000100010, double 1.000000e+00)
  %10 = fpext float %2 to double
  %11 = fmul double %9, %10
  %12 = fmul double %11, 0x3EF0001000100010
  %13 = fmul double %12, %5
  %14 = tail call double @llvm.fmuladd.f64(double %6, double %7, double %13)
  %15 = fptrunc double %14 to float
  ret float %15
}

; Function Attrs: optsize
declare hidden i64 @WriteDistributePixelCacheIndexes(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare hidden i64 @WriteDistributePixelCachePixels(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { hot noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { nounwind optsize allocsize(0,1) }
attributes #23 = { nounwind }
attributes #24 = { nounwind optsize }
attributes #25 = { nounwind optsize willreturn memory(none) }
attributes #26 = { noreturn nounwind optsize }
attributes #27 = { optsize }
attributes #28 = { hot optsize }
attributes #29 = { hot nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 16}
!10 = !{!"_CacheInfo", !6, i64 0, !6, i64 4, !11, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !11, i64 32, !11, i64 40, !12, i64 48, !12, i64 56, !6, i64 64, !13, i64 72, !11, i64 128, !16, i64 136, !16, i64 144, !16, i64 152, !6, i64 160, !6, i64 164, !7, i64 168, !7, i64 4264, !17, i64 8360, !16, i64 8448, !11, i64 8456, !16, i64 8464, !6, i64 8472, !6, i64 8476, !6, i64 8480, !11, i64 8488, !16, i64 8496, !16, i64 8504, !11, i64 8512, !11, i64 8520}
!11 = !{!"long", !7, i64 0}
!12 = !{!"long long", !7, i64 0}
!13 = !{!"_MagickPixelPacket", !6, i64 0, !6, i64 4, !6, i64 8, !14, i64 16, !11, i64 24, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48}
!14 = !{!"double", !7, i64 0}
!15 = !{!"float", !7, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!"_CacheMethods", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80}
!18 = !{!10, !6, i64 20}
!19 = !{!10, !6, i64 4}
!20 = !{!10, !11, i64 8}
!21 = !{!10, !6, i64 164}
!22 = !{!10, !6, i64 8480}
!23 = !{!10, !11, i64 128}
!24 = !{!10, !16, i64 136}
!25 = !{!10, !6, i64 8472}
!26 = !{!10, !16, i64 8496}
!27 = !{!10, !11, i64 8488}
!28 = !{!10, !16, i64 8504}
!29 = !{!10, !6, i64 8476}
!30 = !{!10, !11, i64 8520}
!31 = !{!16, !16, i64 0}
!32 = !{!33, !11, i64 80}
!33 = !{!"_NexusInfo", !6, i64 0, !34, i64 8, !12, i64 40, !16, i64 48, !16, i64 56, !6, i64 64, !16, i64 72, !11, i64 80}
!34 = !{!"_RectangleInfo", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!38, !16, i64 584}
!38 = !{!"_Image", !6, i64 0, !6, i64 4, !6, i64 8, !11, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !16, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !14, i64 104, !41, i64 112, !6, i64 208, !16, i64 216, !6, i64 224, !16, i64 232, !16, i64 240, !16, i64 248, !11, i64 256, !14, i64 264, !14, i64 272, !34, i64 280, !34, i64 312, !34, i64 344, !14, i64 376, !14, i64 384, !14, i64 392, !6, i64 400, !6, i64 404, !6, i64 408, !6, i64 412, !6, i64 416, !6, i64 420, !16, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !43, i64 480, !44, i64 504, !16, i64 568, !16, i64 576, !16, i64 584, !16, i64 592, !16, i64 600, !16, i64 608, !7, i64 616, !7, i64 4712, !7, i64 8808, !11, i64 12904, !11, i64 12912, !46, i64 12920, !6, i64 12976, !11, i64 12984, !16, i64 12992, !47, i64 13000, !47, i64 13032, !16, i64 13064, !11, i64 13072, !11, i64 13080, !16, i64 13088, !16, i64 13096, !16, i64 13104, !6, i64 13112, !6, i64 13116, !39, i64 13120, !16, i64 13128, !34, i64 13136, !16, i64 13168, !16, i64 13176, !6, i64 13184, !6, i64 13188, !12, i64 13192, !6, i64 13200, !11, i64 13208, !11, i64 13216, !6, i64 13224, !11, i64 13232}
!39 = !{!"_PixelPacket", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6}
!40 = !{!"short", !7, i64 0}
!41 = !{!"_ChromaticityInfo", !42, i64 0, !42, i64 24, !42, i64 48, !42, i64 72}
!42 = !{!"_PrimaryInfo", !14, i64 0, !14, i64 8, !14, i64 16}
!43 = !{!"_ErrorInfo", !14, i64 0, !14, i64 8, !14, i64 16}
!44 = !{!"_TimerInfo", !45, i64 0, !45, i64 24, !6, i64 48, !11, i64 56}
!45 = !{!"_Timer", !14, i64 0, !14, i64 8, !14, i64 16}
!46 = !{!"_ExceptionInfo", !6, i64 0, !6, i64 4, !16, i64 8, !16, i64 16, !16, i64 24, !6, i64 32, !16, i64 40, !11, i64 48}
!47 = !{!"_ProfileInfo", !16, i64 0, !11, i64 8, !16, i64 16, !11, i64 24}
!48 = !{!12, !12, i64 0}
!49 = !{!10, !12, i64 56}
!50 = !{!10, !16, i64 144}
!51 = !{!10, !6, i64 64}
!52 = !{i64 0, i64 8, !31, i64 8, i64 8, !31, i64 16, i64 8, !31, i64 24, i64 8, !31, i64 32, i64 8, !31, i64 40, i64 8, !31, i64 48, i64 8, !31, i64 56, i64 8, !31, i64 64, i64 8, !31, i64 72, i64 8, !31, i64 80, i64 8, !31}
!53 = !{!38, !6, i64 12976}
!54 = !{!10, !16, i64 8440}
!55 = !{!10, !16, i64 8464}
!56 = !{!10, !16, i64 8448}
!57 = !{!10, !6, i64 24}
!58 = !{!7, !7, i64 0}
!59 = !{!10, !16, i64 152}
!60 = !{!33, !16, i64 48}
!61 = distinct !{!61, !36}
!62 = !{!33, !6, i64 0}
!63 = !{!33, !12, i64 40}
!64 = !{!33, !16, i64 72}
!65 = !{!10, !16, i64 8400}
!66 = !{!33, !6, i64 64}
!67 = !{i32 0, i32 2}
!68 = !{!10, !6, i64 160}
!69 = !{!10, !11, i64 32}
!70 = !{!10, !11, i64 40}
!71 = !{!34, !11, i64 16}
!72 = !{!34, !11, i64 24}
!73 = !{!34, !11, i64 0}
!74 = !{!34, !11, i64 8}
!75 = !{!38, !16, i64 424}
!76 = !{!38, !16, i64 13128}
!77 = !{!33, !11, i64 32}
!78 = !{!33, !11, i64 24}
!79 = !{!33, !11, i64 8}
!80 = !{!33, !11, i64 16}
!81 = !{!33, !16, i64 56}
!82 = distinct !{!82, !36}
!83 = !{!10, !12, i64 48}
!84 = distinct !{!84, !36}
!85 = !{i64 0, i64 8, !86, i64 8, i64 8, !86, i64 16, i64 8, !86, i64 24, i64 8, !86}
!86 = !{!11, !11, i64 0}
!87 = distinct !{!87, !36}
!88 = distinct !{!88, !36}
!89 = distinct !{!89, !36}
!90 = distinct !{!90, !36}
!91 = !{!10, !16, i64 8416}
!92 = !{!10, !16, i64 8392}
!93 = !{!10, !16, i64 8408}
!94 = !{!10, !6, i64 0}
!95 = !{!40, !40, i64 0}
!96 = distinct !{!96, !36}
!97 = distinct !{!97, !36}
!98 = !{!15, !15, i64 0}
!99 = !{!38, !6, i64 4}
!100 = !{!13, !15, i64 48}
!101 = !{!10, !16, i64 8384}
!102 = !{!17, !16, i64 0}
!103 = !{!17, !16, i64 8}
!104 = !{!17, !16, i64 16}
!105 = !{!17, !16, i64 24}
!106 = !{!17, !16, i64 32}
!107 = !{!17, !16, i64 40}
!108 = !{!17, !16, i64 56}
!109 = !{!17, !16, i64 48}
!110 = !{!17, !16, i64 64}
!111 = !{!17, !16, i64 72}
!112 = !{!17, !16, i64 80}
!113 = !{!10, !16, i64 8376}
!114 = !{!10, !16, i64 8368}
!115 = !{!10, !16, i64 8360}
!116 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 16, i64 8, !86, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 40, i64 8, !86, i64 48, i64 8, !86, i64 56, i64 8, !86, i64 64, i64 8, !86, i64 72, i64 8, !31, i64 80, i64 2, !95, i64 82, i64 2, !95, i64 84, i64 2, !95, i64 86, i64 2, !95, i64 88, i64 2, !95, i64 90, i64 2, !95, i64 92, i64 2, !95, i64 94, i64 2, !95, i64 96, i64 2, !95, i64 98, i64 2, !95, i64 100, i64 2, !95, i64 102, i64 2, !95, i64 104, i64 8, !117, i64 112, i64 8, !117, i64 120, i64 8, !117, i64 128, i64 8, !117, i64 136, i64 8, !117, i64 144, i64 8, !117, i64 152, i64 8, !117, i64 160, i64 8, !117, i64 168, i64 8, !117, i64 176, i64 8, !117, i64 184, i64 8, !117, i64 192, i64 8, !117, i64 200, i64 8, !117, i64 208, i64 4, !5, i64 216, i64 8, !31, i64 224, i64 4, !5, i64 232, i64 8, !31, i64 240, i64 8, !31, i64 248, i64 8, !31, i64 256, i64 8, !86, i64 264, i64 8, !117, i64 272, i64 8, !117, i64 280, i64 8, !86, i64 288, i64 8, !86, i64 296, i64 8, !86, i64 304, i64 8, !86, i64 312, i64 8, !86, i64 320, i64 8, !86, i64 328, i64 8, !86, i64 336, i64 8, !86, i64 344, i64 8, !86, i64 352, i64 8, !86, i64 360, i64 8, !86, i64 368, i64 8, !86, i64 376, i64 8, !117, i64 384, i64 8, !117, i64 392, i64 8, !117, i64 400, i64 4, !5, i64 404, i64 4, !5, i64 408, i64 4, !5, i64 412, i64 4, !5, i64 416, i64 4, !5, i64 420, i64 4, !5, i64 424, i64 8, !31, i64 432, i64 8, !86, i64 440, i64 8, !86, i64 448, i64 8, !86, i64 456, i64 8, !86, i64 464, i64 8, !86, i64 472, i64 8, !86, i64 480, i64 8, !117, i64 488, i64 8, !117, i64 496, i64 8, !117, i64 504, i64 8, !117, i64 512, i64 8, !117, i64 520, i64 8, !117, i64 528, i64 8, !117, i64 536, i64 8, !117, i64 544, i64 8, !117, i64 552, i64 4, !5, i64 560, i64 8, !86, i64 568, i64 8, !31, i64 576, i64 8, !31, i64 584, i64 8, !31, i64 592, i64 8, !31, i64 600, i64 8, !31, i64 608, i64 8, !31, i64 616, i64 4096, !58, i64 4712, i64 4096, !58, i64 8808, i64 4096, !58, i64 12904, i64 8, !86, i64 12912, i64 8, !86, i64 12920, i64 4, !5, i64 12924, i64 4, !5, i64 12928, i64 8, !31, i64 12936, i64 8, !31, i64 12944, i64 8, !31, i64 12952, i64 4, !5, i64 12960, i64 8, !31, i64 12968, i64 8, !86, i64 12976, i64 4, !5, i64 12984, i64 8, !86, i64 12992, i64 8, !31, i64 13000, i64 8, !31, i64 13008, i64 8, !86, i64 13016, i64 8, !31, i64 13024, i64 8, !86, i64 13032, i64 8, !31, i64 13040, i64 8, !86, i64 13048, i64 8, !31, i64 13056, i64 8, !86, i64 13064, i64 8, !31, i64 13072, i64 8, !86, i64 13080, i64 8, !86, i64 13088, i64 8, !31, i64 13096, i64 8, !31, i64 13104, i64 8, !31, i64 13112, i64 4, !5, i64 13116, i64 4, !5, i64 13120, i64 2, !95, i64 13122, i64 2, !95, i64 13124, i64 2, !95, i64 13126, i64 2, !95, i64 13128, i64 8, !31, i64 13136, i64 8, !86, i64 13144, i64 8, !86, i64 13152, i64 8, !86, i64 13160, i64 8, !86, i64 13168, i64 8, !31, i64 13176, i64 8, !31, i64 13184, i64 4, !5, i64 13188, i64 4, !5, i64 13192, i64 8, !48, i64 13200, i64 4, !5, i64 13208, i64 8, !86, i64 13216, i64 8, !86, i64 13224, i64 4, !5, i64 13232, i64 8, !86}
!117 = !{!14, !14, i64 0}
!118 = !{i64 0, i64 8, !31, i64 8, i64 8, !31, i64 16, i64 8, !31, i64 24, i64 8, !31, i64 32, i64 4096, !58, i64 4128, i64 4096, !58, i64 8224, i64 4096, !58, i64 12320, i64 8, !86, i64 12328, i64 8, !86, i64 12336, i64 4, !5, i64 12340, i64 4, !5, i64 12344, i64 8, !31, i64 12352, i64 8, !31, i64 12360, i64 8, !31, i64 12368, i64 4, !5, i64 12376, i64 8, !31, i64 12384, i64 8, !86, i64 12392, i64 4, !5, i64 12400, i64 8, !86, i64 12408, i64 8, !31, i64 12416, i64 8, !31, i64 12424, i64 8, !86, i64 12432, i64 8, !31, i64 12440, i64 8, !86, i64 12448, i64 8, !31, i64 12456, i64 8, !86, i64 12464, i64 8, !31, i64 12472, i64 8, !86, i64 12480, i64 8, !31, i64 12488, i64 8, !86, i64 12496, i64 8, !86, i64 12504, i64 8, !31, i64 12512, i64 8, !31, i64 12520, i64 8, !31, i64 12528, i64 4, !5, i64 12532, i64 4, !5, i64 12536, i64 2, !95, i64 12538, i64 2, !95, i64 12540, i64 2, !95, i64 12542, i64 2, !95, i64 12544, i64 8, !31, i64 12552, i64 8, !86, i64 12560, i64 8, !86, i64 12568, i64 8, !86, i64 12576, i64 8, !86, i64 12584, i64 8, !31, i64 12592, i64 8, !31, i64 12600, i64 4, !5, i64 12604, i64 4, !5, i64 12608, i64 8, !48, i64 12616, i64 4, !5, i64 12624, i64 8, !86, i64 12632, i64 8, !86, i64 12640, i64 4, !5, i64 12648, i64 8, !86}
!119 = !{i64 0, i64 8, !31, i64 8, i64 8, !31, i64 16, i64 8, !31, i64 24, i64 4096, !58, i64 4120, i64 4096, !58, i64 8216, i64 4096, !58, i64 12312, i64 8, !86, i64 12320, i64 8, !86, i64 12328, i64 4, !5, i64 12332, i64 4, !5, i64 12336, i64 8, !31, i64 12344, i64 8, !31, i64 12352, i64 8, !31, i64 12360, i64 4, !5, i64 12368, i64 8, !31, i64 12376, i64 8, !86, i64 12384, i64 4, !5, i64 12392, i64 8, !86, i64 12400, i64 8, !31, i64 12408, i64 8, !31, i64 12416, i64 8, !86, i64 12424, i64 8, !31, i64 12432, i64 8, !86, i64 12440, i64 8, !31, i64 12448, i64 8, !86, i64 12456, i64 8, !31, i64 12464, i64 8, !86, i64 12472, i64 8, !31, i64 12480, i64 8, !86, i64 12488, i64 8, !86, i64 12496, i64 8, !31, i64 12504, i64 8, !31, i64 12512, i64 8, !31, i64 12520, i64 4, !5, i64 12524, i64 4, !5, i64 12528, i64 2, !95, i64 12530, i64 2, !95, i64 12532, i64 2, !95, i64 12534, i64 2, !95, i64 12536, i64 8, !31, i64 12544, i64 8, !86, i64 12552, i64 8, !86, i64 12560, i64 8, !86, i64 12568, i64 8, !86, i64 12576, i64 8, !31, i64 12584, i64 8, !31, i64 12592, i64 4, !5, i64 12596, i64 4, !5, i64 12600, i64 8, !48, i64 12608, i64 4, !5, i64 12616, i64 8, !86, i64 12624, i64 8, !86, i64 12632, i64 4, !5, i64 12640, i64 8, !86}
!120 = !{!38, !11, i64 40}
!121 = !{!38, !11, i64 48}
!122 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 8, !86, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 32, i64 8, !86, i64 40, i64 8, !86, i64 48, i64 8, !48, i64 56, i64 8, !48, i64 64, i64 4, !5, i64 72, i64 4, !5, i64 76, i64 4, !5, i64 80, i64 4, !5, i64 88, i64 8, !117, i64 96, i64 8, !86, i64 104, i64 4, !98, i64 108, i64 4, !98, i64 112, i64 4, !98, i64 116, i64 4, !98, i64 120, i64 4, !98, i64 128, i64 8, !86, i64 136, i64 8, !31, i64 144, i64 8, !31, i64 152, i64 8, !31, i64 160, i64 4, !5, i64 164, i64 4, !5, i64 168, i64 4096, !58, i64 4264, i64 4096, !58, i64 8360, i64 8, !31, i64 8368, i64 8, !31, i64 8376, i64 8, !31, i64 8384, i64 8, !31, i64 8392, i64 8, !31, i64 8400, i64 8, !31, i64 8408, i64 8, !31, i64 8416, i64 8, !31, i64 8424, i64 8, !31, i64 8432, i64 8, !31, i64 8440, i64 8, !31, i64 8448, i64 8, !31, i64 8456, i64 8, !86, i64 8464, i64 8, !31, i64 8472, i64 4, !5, i64 8476, i64 4, !5, i64 8480, i64 4, !5, i64 8488, i64 8, !86, i64 8496, i64 8, !31, i64 8504, i64 8, !31, i64 8512, i64 8, !86, i64 8520, i64 8, !86}
!123 = !{!38, !11, i64 13208}
!124 = !{!38, !6, i64 0}
!125 = !{!38, !6, i64 13200}
!126 = distinct !{!126, !36}
!127 = distinct !{!127, !36}
!128 = !{!38, !16, i64 12992}
!129 = !{!38, !11, i64 12984}
!130 = !{!38, !6, i64 28}
!131 = !{!38, !6, i64 13184}
!132 = !{!10, !16, i64 8424}
!133 = !{!10, !16, i64 8432}
!134 = !{!38, !40, i64 86}
!135 = !{!38, !6, i64 32}
!136 = !{!39, !40, i64 6}
!137 = distinct !{!137, !36}
!138 = distinct !{!138, !36}
!139 = !{!39, !40, i64 0}
!140 = distinct !{!140, !36}
!141 = distinct !{!141, !36}
!142 = !{!13, !15, i64 44}
!143 = !{!13, !15, i64 32}
!144 = !{!39, !40, i64 4}
!145 = !{!13, !15, i64 36}
!146 = !{!39, !40, i64 2}
!147 = !{!13, !15, i64 40}
!148 = distinct !{!148, !36}
!149 = distinct !{!149, !36}
!150 = distinct !{!150, !36}
!151 = distinct !{!151, !36}
!152 = distinct !{!152, !36}
!153 = distinct !{!153, !36}
!154 = distinct !{!154, !36}
!155 = distinct !{!155, !36}
!156 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 16, i64 8, !117, i64 24, i64 8, !86, i64 32, i64 4, !98, i64 36, i64 4, !98, i64 40, i64 4, !98, i64 44, i64 4, !98, i64 48, i64 4, !98}
!157 = !{!13, !6, i64 4}
