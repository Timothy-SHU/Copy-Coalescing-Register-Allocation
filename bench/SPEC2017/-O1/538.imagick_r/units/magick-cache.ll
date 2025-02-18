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

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @AcquirePixelCache(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call dereferenceable_or_null(8528) ptr @AcquireQuantumMemory(i64 noundef 1, i64 noundef 8528) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #22
  call void @GetExceptionInfo(ptr noundef nonnull %2) #22
  %6 = tail call ptr @__errno_location() #23
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = call ptr @GetExceptionMessage(i32 noundef %7) #22
  %9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 184, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %8) #22
  %10 = call ptr @DestroyString(ptr noundef %8) #22
  call void @CatchException(ptr noundef nonnull %2) #22
  %11 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #22
  call void @MagickCoreTerminus() #22
  call void @_exit(i32 noundef 1) #24
  unreachable

12:                                               ; preds = %1
  %13 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %3, i32 noundef 0, i64 noundef 8528) #22
  %14 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 3
  store i32 0, ptr %14, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 4
  store i32 2, ptr %15, align 4, !tbaa !47
  %16 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 1
  store i32 13, ptr %16, align 4, !tbaa !48
  %17 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 2
  store i64 4, ptr %17, align 8, !tbaa !49
  %18 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 17
  store i32 -1, ptr %18, align 4, !tbaa !50
  %19 = tail call i32 @getpid() #22
  %20 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 26
  store i32 %19, ptr %20, align 8, !tbaa !51
  %21 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 12
  %22 = tail call i64 @llvm.umax.i64(i64 %0, i64 1)
  store i64 %22, ptr %21, align 8
  %23 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #22
  %24 = load i64, ptr %21, align 8, !tbaa !52
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %12
  %27 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #22
  store i64 %27, ptr %21, align 8, !tbaa !52
  br label %28

28:                                               ; preds = %26, %12
  %29 = load i64, ptr %21, align 8, !tbaa !52
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i64 1, ptr %21, align 8, !tbaa !52
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i64, ptr %21, align 8, !tbaa !52
  %34 = tail call ptr @AcquirePixelCacheNexus(i64 noundef %33)
  %35 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 13
  store ptr %34, ptr %35, align 8, !tbaa !53
  %36 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.4) #22
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = tail call i32 @IsStringTrue(ptr noundef nonnull %36) #22
  %40 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 24
  store i32 %39, ptr %40, align 8, !tbaa !54
  %41 = tail call ptr @DestroyString(ptr noundef nonnull %36) #22
  br label %42

42:                                               ; preds = %38, %32
  %43 = tail call ptr @AllocateSemaphoreInfo() #22
  %44 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 28
  store ptr %43, ptr %44, align 8, !tbaa !55
  %45 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 27
  store i64 1, ptr %45, align 8, !tbaa !56
  %46 = tail call ptr @AllocateSemaphoreInfo() #22
  %47 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 29
  store ptr %46, ptr %47, align 8, !tbaa !57
  %48 = tail call i32 @IsEventLogging() #22
  %49 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 25
  store i32 %48, ptr %49, align 4, !tbaa !58
  %50 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 31
  store i64 2880220587, ptr %50, align 8, !tbaa !59
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare void @CatchException(ptr noundef) local_unnamed_addr #3

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #5

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquirePixelCacheNexus(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = tail call ptr @AcquireAlignedMemory(i64 noundef %0, i64 noundef 8) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #22
  call void @GetExceptionInfo(ptr noundef nonnull %2) #22
  %7 = tail call ptr @__errno_location() #23
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = call ptr @GetExceptionMessage(i32 noundef %8) #22
  %10 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 249, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %9) #22
  %11 = call ptr @DestroyString(ptr noundef %9) #22
  call void @CatchException(ptr noundef nonnull %2) #22
  %12 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #22
  call void @MagickCoreTerminus() #22
  call void @_exit(i32 noundef 1) #24
  unreachable

13:                                               ; preds = %1
  %14 = tail call ptr @AcquireQuantumMemory(i64 noundef %0, i64 noundef 88) #21
  store ptr %14, ptr %4, align 8, !tbaa !60
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #22
  call void @GetExceptionInfo(ptr noundef nonnull %3) #22
  %17 = tail call ptr @__errno_location() #23
  %18 = load i32, ptr %17, align 4, !tbaa !34
  %19 = call ptr @GetExceptionMessage(i32 noundef %18) #22
  %20 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 253, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %19) #22
  %21 = call ptr @DestroyString(ptr noundef %19) #22
  call void @CatchException(ptr noundef nonnull %3) #22
  %22 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #22
  call void @MagickCoreTerminus() #22
  call void @_exit(i32 noundef 1) #24
  unreachable

23:                                               ; preds = %13
  %24 = mul i64 %0, 88
  %25 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %14, i32 noundef 0, i64 noundef %24) #22
  %26 = icmp sgt i64 %0, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23, %27
  %28 = phi i64 [ %33, %27 ], [ 0, %23 ]
  %29 = load ptr, ptr %4, align 8, !tbaa !60
  %30 = getelementptr inbounds %struct._NexusInfo, ptr %29, i64 %28
  %31 = getelementptr inbounds ptr, ptr %4, i64 %28
  store ptr %30, ptr %31, align 8, !tbaa !60
  %32 = getelementptr inbounds %struct._NexusInfo, ptr %29, i64 %28, i32 7
  store i64 2880220587, ptr %32, align 8, !tbaa !61
  %33 = add nuw nsw i64 %28, 1
  %34 = icmp eq i64 %33, %0
  br i1 %34, label %35, label %27, !llvm.loop !64

35:                                               ; preds = %27, %23
  ret ptr %4
}

declare ptr @GetEnvironmentValue(ptr noundef) local_unnamed_addr #3

declare i32 @IsStringTrue(ptr noundef) local_unnamed_addr #3

declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #3

declare i32 @IsEventLogging() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: allocsize(0,1)
declare ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @AcquirePixelCachePixels(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i64 0, ptr %1, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct._CacheInfo, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !38
  %8 = add i32 %7, -1
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %5, i64 0, i32 9
  %12 = load i64, ptr %11, align 8, !tbaa !79
  store i64 %12, ptr %1, align 8, !tbaa !78
  %13 = getelementptr inbounds %struct._CacheInfo, ptr %5, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !80
  br label %15

15:                                               ; preds = %3, %10
  %16 = phi ptr [ %14, %10 ], [ null, %3 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @CacheComponentGenesis() local_unnamed_addr #0 {
  %1 = load ptr, ptr @cache_semaphore, align 8, !tbaa !60
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @AllocateSemaphoreInfo() #22
  store ptr %4, ptr @cache_semaphore, align 8, !tbaa !60
  br label %5

5:                                                ; preds = %3, %0
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local void @CacheComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @cache_semaphore, align 8, !tbaa !60
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @cache_semaphore) #22
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @cache_semaphore, align 8, !tbaa !60
  tail call void @LockSemaphoreInfo(ptr noundef %5) #22
  store volatile i32 0, ptr @instantiate_cache, align 4, !tbaa !34
  %6 = load ptr, ptr @cache_semaphore, align 8, !tbaa !60
  tail call void @UnlockSemaphoreInfo(ptr noundef %6) #22
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @cache_semaphore) #22
  ret void
}

declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ClonePixelCache(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 25
  %3 = load i32, ptr %2, align 4, !tbaa !58
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 505, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 12
  %10 = load i64, ptr %9, align 8, !tbaa !52
  %11 = tail call ptr @AcquirePixelCache(i64 noundef %10)
  %12 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !81
  %14 = getelementptr inbounds %struct._CacheInfo, ptr %11, i64 0, i32 10
  store i32 %13, ptr %14, align 8, !tbaa !81
  ret ptr %11
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ClonePixelCacheMethods(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 25
  %4 = load i32, ptr %3, align 4, !tbaa !58
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 549, ptr noundef nonnull @.str.5, ptr noundef nonnull %7) #22
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 20
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %10, ptr noundef nonnull align 8 dereferenceable(88) %11, i64 88, i1 false), !tbaa.struct !82
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local void @DestroyImagePixels(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !83
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 835, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 20, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !84
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  tail call void %12(ptr noundef %0) #22
  br label %17

15:                                               ; preds = %8
  %16 = tail call ptr @DestroyPixelCache(ptr noundef %10)
  store ptr null, ptr %9, align 8, !tbaa !67
  br label %17

17:                                               ; preds = %15, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @DestroyPixelCache(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  %3 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 25
  %4 = load i32, ptr %3, align 4, !tbaa !58
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 945, ptr noundef nonnull @.str.5, ptr noundef nonnull %7) #22
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 28
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  tail call void @LockSemaphoreInfo(ptr noundef %11) #22
  %12 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 27
  %13 = load i64, ptr %12, align 8, !tbaa !56
  %14 = add nsw i64 %13, -1
  store i64 %14, ptr %12, align 8, !tbaa !56
  %15 = icmp eq i64 %14, 0
  %16 = load ptr, ptr %10, align 8, !tbaa !55
  tail call void @UnlockSemaphoreInfo(ptr noundef %16) #22
  br i1 %15, label %17, label %84

17:                                               ; preds = %9
  %18 = load i32, ptr %3, align 4, !tbaa !58
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #22
  %21 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %22 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef nonnull %21) #22
  %23 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 962, ptr noundef nonnull @.str.5, ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #22
  br label %24

24:                                               ; preds = %20, %17
  call fastcc void @RelinquishPixelCachePixels(ptr noundef %0)
  %25 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 23
  %26 = load ptr, ptr %25, align 8, !tbaa !85
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = call ptr @DestroyDistributeCacheInfo(ptr noundef nonnull %26) #22
  store ptr %29, ptr %25, align 8, !tbaa !85
  br label %30

30:                                               ; preds = %28, %24
  %31 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 13
  %32 = load ptr, ptr %31, align 8, !tbaa !53
  %33 = icmp eq ptr %32, null
  br i1 %33, label %66, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 12
  %36 = load i64, ptr %35, align 8, !tbaa !52
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %34, %57
  %39 = phi i64 [ %60, %57 ], [ 0, %34 ]
  %40 = getelementptr inbounds ptr, ptr %32, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !60
  %42 = getelementptr inbounds %struct._NexusInfo, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !86
  %44 = icmp eq ptr %43, null
  br i1 %44, label %57, label %45

45:                                               ; preds = %38
  %46 = load i32, ptr %41, align 8, !tbaa !87
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %43) #22
  br label %54

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct._NexusInfo, ptr %41, i64 0, i32 2
  %52 = load i64, ptr %51, align 8, !tbaa !88
  %53 = call i32 @UnmapBlob(ptr noundef nonnull %43, i64 noundef %52) #22
  br label %54

54:                                               ; preds = %50, %48
  %55 = getelementptr inbounds %struct._NexusInfo, ptr %41, i64 0, i32 6
  store ptr null, ptr %55, align 8, !tbaa !89
  %56 = getelementptr inbounds %struct._NexusInfo, ptr %41, i64 0, i32 2
  store i32 0, ptr %41, align 8, !tbaa !87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %56, i8 0, i64 24, i1 false)
  br label %57

57:                                               ; preds = %54, %38
  %58 = load ptr, ptr %40, align 8, !tbaa !60
  %59 = getelementptr inbounds %struct._NexusInfo, ptr %58, i64 0, i32 7
  store i64 -2880220588, ptr %59, align 8, !tbaa !61
  %60 = add nuw nsw i64 %39, 1
  %61 = icmp eq i64 %60, %36
  br i1 %61, label %62, label %38, !llvm.loop !90

62:                                               ; preds = %57, %34
  %63 = load ptr, ptr %32, align 8, !tbaa !60
  %64 = call ptr @RelinquishMagickMemory(ptr noundef %63) #22
  store ptr %64, ptr %32, align 8, !tbaa !60
  %65 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %32) #22
  store ptr %65, ptr %31, align 8, !tbaa !53
  br label %66

66:                                               ; preds = %62, %30
  %67 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 21
  %68 = load ptr, ptr %67, align 8, !tbaa !91
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = call ptr @DestroyRandomInfo(ptr noundef nonnull %68) #22
  store ptr %71, ptr %67, align 8, !tbaa !91
  br label %72

72:                                               ; preds = %70, %66
  %73 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 29
  %74 = load ptr, ptr %73, align 8, !tbaa !57
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  call void @DestroySemaphoreInfo(ptr noundef nonnull %73) #22
  br label %77

77:                                               ; preds = %76, %72
  %78 = load ptr, ptr %10, align 8, !tbaa !55
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  call void @DestroySemaphoreInfo(ptr noundef nonnull %10) #22
  br label %81

81:                                               ; preds = %80, %77
  %82 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 31
  store i64 -2880220588, ptr %82, align 8, !tbaa !59
  %83 = call ptr @RelinquishMagickMemory(ptr noundef %0) #22
  br label %84

84:                                               ; preds = %9, %81
  ret ptr null
}

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @RelinquishPixelCachePixels(ptr noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !38
  switch i32 %3, label %57 [
    i32 1, label %4
    i32 2, label %20
    i32 3, label %35
    i32 5, label %52
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !92
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  br i1 %7, label %10, label %12

10:                                               ; preds = %4
  %11 = tail call ptr @RelinquishAlignedMemory(ptr noundef %9) #22
  br label %16

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 9
  %14 = load i64, ptr %13, align 8, !tbaa !79
  %15 = tail call i32 @UnmapBlob(ptr noundef %9, i64 noundef %14) #22
  br label %16

16:                                               ; preds = %12, %10
  %17 = phi ptr [ null, %12 ], [ %11, %10 ]
  store ptr %17, ptr %8, align 8, !tbaa !80
  %18 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 9
  %19 = load i64, ptr %18, align 8, !tbaa !79
  tail call void @RelinquishMagickResource(i32 noundef 5, i64 noundef %19) #22
  br label %57

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 14
  %22 = load ptr, ptr %21, align 8, !tbaa !80
  %23 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 9
  %24 = load i64, ptr %23, align 8, !tbaa !79
  %25 = tail call i32 @UnmapBlob(ptr noundef %22, i64 noundef %24) #22
  store ptr null, ptr %21, align 8, !tbaa !80
  %26 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !47
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  %31 = tail call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %30) #22
  br label %32

32:                                               ; preds = %29, %20
  %33 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  store i8 0, ptr %33, align 8, !tbaa !93
  %34 = load i64, ptr %23, align 8, !tbaa !79
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %34) #22
  br label %35

35:                                               ; preds = %1, %32
  %36 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 17
  %37 = load i32, ptr %36, align 4, !tbaa !50
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = tail call i32 @close(i32 noundef %37) #22
  store i32 -1, ptr %36, align 4, !tbaa !50
  tail call void @RelinquishMagickResource(i32 noundef 3, i64 noundef 1) #22
  br label %41

41:                                               ; preds = %39, %35
  %42 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 4
  %43 = load i32, ptr %42, align 4, !tbaa !47
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  %47 = tail call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %46) #22
  br label %48

48:                                               ; preds = %45, %41
  %49 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  store i8 0, ptr %49, align 8, !tbaa !93
  %50 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 9
  %51 = load i64, ptr %50, align 8, !tbaa !79
  tail call void @RelinquishMagickResource(i32 noundef 2, i64 noundef %51) #22
  br label %57

52:                                               ; preds = %1
  %53 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  store i8 0, ptr %53, align 8, !tbaa !93
  %54 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 23
  %55 = load ptr, ptr %54, align 8, !tbaa !85
  %56 = tail call i32 @RelinquishDistributePixelCache(ptr noundef %55) #22
  br label %57

57:                                               ; preds = %1, %52, %48, %16
  store i32 0, ptr %2, align 8, !tbaa !38
  %58 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 5
  store i32 0, ptr %58, align 8, !tbaa !92
  %59 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 15
  store ptr null, ptr %59, align 8, !tbaa !94
  ret void
}

declare hidden ptr @DestroyDistributeCacheInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyPixelCacheNexus(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i64 %1, 0
  br i1 %3, label %4, label %28

4:                                                ; preds = %2, %23
  %5 = phi i64 [ %26, %23 ], [ 0, %2 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = getelementptr inbounds %struct._NexusInfo, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %4
  %12 = load i32, ptr %7, align 8, !tbaa !87
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %9) #22
  br label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct._NexusInfo, ptr %7, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !88
  %19 = tail call i32 @UnmapBlob(ptr noundef nonnull %9, i64 noundef %18) #22
  br label %20

20:                                               ; preds = %14, %16
  %21 = getelementptr inbounds %struct._NexusInfo, ptr %7, i64 0, i32 6
  store ptr null, ptr %21, align 8, !tbaa !89
  %22 = getelementptr inbounds %struct._NexusInfo, ptr %7, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !87
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  br label %23

23:                                               ; preds = %20, %4
  %24 = load ptr, ptr %6, align 8, !tbaa !60
  %25 = getelementptr inbounds %struct._NexusInfo, ptr %24, i64 0, i32 7
  store i64 -2880220588, ptr %25, align 8, !tbaa !61
  %26 = add nuw nsw i64 %5, 1
  %27 = icmp eq i64 %26, %1
  br i1 %27, label %28, label %4, !llvm.loop !90

28:                                               ; preds = %23, %2
  %29 = load ptr, ptr %0, align 8, !tbaa !60
  %30 = tail call ptr @RelinquishMagickMemory(ptr noundef %29) #22
  store ptr %30, ptr %0, align 8, !tbaa !60
  %31 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %0) #22
  ret ptr %31
}

declare ptr @DestroyRandomInfo(ptr noundef) local_unnamed_addr #3

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

declare ptr @RelinquishAlignedMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @GetAuthenticIndexQueue(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 20, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr %5(ptr noundef %0) #22
  br label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !53
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = getelementptr inbounds %struct._NexusInfo, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !89
  br label %15

15:                                               ; preds = %9, %7
  %16 = phi ptr [ %8, %7 ], [ %14, %9 ]
  ret ptr %16
}

; Function Attrs: hot nounwind uwtable
define dso_local ptr @GetAuthenticPixelCacheNexus(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nocapture noundef %5, ptr noundef %6) local_unnamed_addr #9 {
  %8 = tail call ptr @QueueAuthenticPixelCacheNexus(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #25
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = getelementptr inbounds %struct._NexusInfo, ptr %5, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !96
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = tail call fastcc i32 @ReadPixelCachePixels(ptr noundef %12, ptr noundef %5, ptr noundef %6), !range !97
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct._CacheInfo, ptr %12, i64 0, i32 16
  %21 = load i32, ptr %20, align 8, !tbaa !98
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = tail call fastcc i32 @ReadPixelCacheIndexes(ptr noundef %12, ptr noundef %5, ptr noundef %6), !range !97
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %19
  br label %27

27:                                               ; preds = %23, %16, %10, %7, %26
  %28 = phi ptr [ %8, %26 ], [ null, %7 ], [ %8, %10 ], [ null, %16 ], [ null, %23 ]
  ret ptr %28
}

; Function Attrs: hot nounwind uwtable
define dso_local ptr @QueueAuthenticPixelCacheNexus(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr nocapture noundef %6, ptr noundef %7) local_unnamed_addr #9 {
  %9 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #22
  %10 = tail call fastcc ptr @GetImagePixelCache(ptr noundef %0, i32 noundef %5, ptr noundef %7) #25
  %11 = icmp eq ptr %10, null
  br i1 %11, label %57, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 6
  %14 = load i64, ptr %13, align 8, !tbaa !99
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 7
  %18 = load i64, ptr %17, align 8, !tbaa !100
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
  %29 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3984, i32 noundef 445, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, ptr noundef nonnull %28) #22
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
  store i64 %1, ptr %43, align 8, !tbaa !101
  %44 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 3
  store i64 %2, ptr %44, align 8, !tbaa !102
  store i64 %3, ptr %9, align 8, !tbaa !103
  %45 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 1
  store i64 %4, ptr %45, align 8, !tbaa !104
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 38
  %47 = load ptr, ptr %46, align 8, !tbaa !105
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 73
  %51 = load ptr, ptr %50, align 8, !tbaa !106
  %52 = icmp ne ptr %51, null
  %53 = zext i1 %52 to i32
  br label %54

54:                                               ; preds = %49, %42
  %55 = phi i32 [ 1, %42 ], [ %53, %49 ]
  %56 = call fastcc ptr @SetPixelCacheNexusPixels(ptr noundef nonnull %10, ptr noundef nonnull %9, i32 noundef %55, ptr noundef %6, ptr noundef %7) #25
  br label %57

57:                                               ; preds = %34, %30, %8, %54, %27
  %58 = phi ptr [ null, %27 ], [ %56, %54 ], [ null, %8 ], [ null, %30 ], [ null, %34 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #22
  ret ptr %58
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @ReadPixelCachePixels(ptr noalias noundef %0, ptr noalias nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct._RectangleInfo, align 8
  %5 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !96
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %199

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1
  %10 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !107
  %12 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 6
  %13 = load i64, ptr %12, align 8, !tbaa !99
  %14 = mul i64 %13, %11
  %15 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !108
  %17 = add i64 %14, %16
  %18 = load i64, ptr %9, align 8, !tbaa !109
  %19 = shl i64 %18, 3
  %20 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !110
  %22 = mul i64 %19, %21
  %23 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !111
  %25 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !38
  switch i32 %26, label %166 [
    i32 1, label %27
    i32 2, label %27
    i32 3, label %45
    i32 5, label %135
  ]

27:                                               ; preds = %8, %8
  %28 = icmp eq i64 %13, %18
  %29 = select i1 %28, i64 %22, i64 %19
  %30 = select i1 %28, i64 1, i64 %21
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %166

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 14
  %34 = load ptr, ptr %33, align 8, !tbaa !80
  %35 = getelementptr inbounds %struct._PixelPacket, ptr %34, i64 %17
  br label %36

36:                                               ; preds = %32, %36
  %37 = phi ptr [ %41, %36 ], [ %35, %32 ]
  %38 = phi i64 [ %43, %36 ], [ 0, %32 ]
  %39 = phi ptr [ %42, %36 ], [ %24, %32 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %39, ptr align 2 %37, i64 %29, i1 false)
  %40 = load i64, ptr %12, align 8, !tbaa !99
  %41 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 %40
  %42 = getelementptr inbounds %struct._PixelPacket, ptr %39, i64 %18
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %30
  br i1 %44, label %166, label %36, !llvm.loop !112

45:                                               ; preds = %8
  %46 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 29
  %47 = load ptr, ptr %46, align 8, !tbaa !57
  tail call void @LockSemaphoreInfo(ptr noundef %47) #22
  %48 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 17
  %49 = load i32, ptr %48, align 4, !tbaa !50
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %76

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  %53 = load i8, ptr %52, align 8, !tbaa !93
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = tail call i32 @AcquireUniqueFileResource(ptr noundef nonnull %52) #22
  br label %62

57:                                               ; preds = %51
  %58 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %52, i32 noundef 194, i32 noundef 384) #22
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %52, i32 noundef 2, i32 noundef 384) #22
  br label %62

62:                                               ; preds = %60, %57, %55
  %63 = phi i32 [ %56, %55 ], [ %61, %60 ], [ %58, %57 ]
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = tail call i32 @AcquireMagickResource(i32 noundef 3, i64 noundef 1) #22
  store i32 %63, ptr %48, align 4, !tbaa !50
  %67 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 4
  store i32 2, ptr %67, align 4, !tbaa !47
  br label %76

68:                                               ; preds = %62
  %69 = tail call ptr @__errno_location() #23
  %70 = load i32, ptr %69, align 4, !tbaa !34
  %71 = tail call ptr @GetExceptionMessage(i32 noundef %70) #22
  %72 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  %73 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4435, i32 noundef 430, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.19, ptr noundef nonnull %72, ptr noundef %71) #22
  %74 = tail call ptr @DestroyString(ptr noundef %71) #22
  %75 = load ptr, ptr %46, align 8, !tbaa !57
  tail call void @UnlockSemaphoreInfo(ptr noundef %75) #22
  br label %199

76:                                               ; preds = %65, %45
  %77 = load i64, ptr %12, align 8, !tbaa !99
  %78 = icmp eq i64 %77, %18
  %79 = icmp ult i64 %22, 262143
  %80 = select i1 %78, i1 %79, i1 false
  %81 = select i1 %80, i64 %22, i64 %19
  %82 = select i1 %80, i64 1, i64 %21
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %123

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 8
  %86 = load i32, ptr %48, align 4, !tbaa !50, !alias.scope !113, !noalias !116
  %87 = icmp slt i64 %81, 1
  br label %88

88:                                               ; preds = %84, %117
  %89 = phi i64 [ 0, %84 ], [ %121, %117 ]
  %90 = phi ptr [ %24, %84 ], [ %120, %117 ]
  %91 = phi i64 [ %17, %84 ], [ %119, %117 ]
  %92 = load i64, ptr %85, align 8, !tbaa !118
  %93 = shl i64 %91, 3
  %94 = add i64 %92, %93
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %95 = tail call i64 @lseek(i32 noundef %86, i64 noundef %94, i32 noundef 0) #22, !noalias !119
  %96 = icmp slt i64 %95, 0
  %97 = select i1 %96, i1 true, i1 %87
  %98 = ashr i64 %95, 63
  br i1 %97, label %114, label %99

99:                                               ; preds = %88, %110
  %100 = phi i64 [ %112, %110 ], [ 0, %88 ]
  %101 = getelementptr inbounds i8, ptr %90, i64 %100
  %102 = sub i64 %81, %100
  %103 = tail call i64 @llvm.umin.i64(i64 %102, i64 9223372036854775807)
  %104 = tail call i64 @read(i32 noundef %86, ptr noundef %101, i64 noundef %103) #22, !noalias !113
  %105 = icmp slt i64 %104, 1
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = tail call ptr @__errno_location() #23
  %108 = load i32, ptr %107, align 4, !tbaa !34, !noalias !119
  %109 = icmp eq i32 %108, 4
  br i1 %109, label %110, label %114

110:                                              ; preds = %106, %99
  %111 = phi i64 [ 0, %106 ], [ %104, %99 ]
  %112 = add nuw nsw i64 %111, %100
  %113 = icmp slt i64 %112, %81
  br i1 %113, label %99, label %114, !llvm.loop !120

114:                                              ; preds = %106, %110, %88
  %115 = phi i64 [ %98, %88 ], [ %112, %110 ], [ %100, %106 ]
  %116 = icmp ult i64 %115, %81
  br i1 %116, label %123, label %117

117:                                              ; preds = %114
  %118 = load i64, ptr %12, align 8, !tbaa !99
  %119 = add i64 %118, %91
  %120 = getelementptr inbounds %struct._PixelPacket, ptr %90, i64 %18
  %121 = add nuw nsw i64 %89, 1
  %122 = icmp eq i64 %121, %82
  br i1 %122, label %123, label %88, !llvm.loop !121

123:                                              ; preds = %117, %114, %76
  %124 = phi i64 [ 0, %76 ], [ %82, %117 ], [ %89, %114 ]
  %125 = tail call i64 @GetMagickResource(i32 noundef 3) #22
  %126 = tail call i64 @GetMagickResourceLimit(i32 noundef 3) #22
  %127 = icmp ugt i64 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load i32, ptr %48, align 4, !tbaa !50
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %133, label %131

131:                                              ; preds = %128
  %132 = tail call i32 @close(i32 noundef %129) #22
  store i32 -1, ptr %48, align 4, !tbaa !50
  tail call void @RelinquishMagickResource(i32 noundef 3, i64 noundef 1) #22
  br label %133

133:                                              ; preds = %131, %128, %123
  %134 = load ptr, ptr %46, align 8, !tbaa !57
  tail call void @UnlockSemaphoreInfo(ptr noundef %134) #22
  br label %166

135:                                              ; preds = %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  %136 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 29
  %137 = load ptr, ptr %136, align 8, !tbaa !57
  tail call void @LockSemaphoreInfo(ptr noundef %137) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !122
  %138 = load i64, ptr %12, align 8, !tbaa !99
  %139 = icmp ne i64 %138, %18
  %140 = icmp ugt i64 %22, 262142
  %141 = select i1 %139, i1 true, i1 %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 1
  store i64 1, ptr %143, align 8, !tbaa !104
  br label %144

144:                                              ; preds = %135, %142
  %145 = phi i64 [ %19, %142 ], [ %22, %135 ]
  %146 = phi i64 [ %21, %142 ], [ 1, %135 ]
  %147 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 23
  %148 = icmp sgt i64 %146, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 3
  br label %151

151:                                              ; preds = %149, %157
  %152 = phi i64 [ 0, %149 ], [ %161, %157 ]
  %153 = phi ptr [ %24, %149 ], [ %158, %157 ]
  %154 = load ptr, ptr %147, align 8, !tbaa !85
  %155 = call i64 @ReadDistributePixelCachePixels(ptr noundef %154, ptr noundef nonnull %4, i64 noundef %145, ptr noundef %153) #22
  %156 = icmp eq i64 %155, %145
  br i1 %156, label %157, label %163

157:                                              ; preds = %151
  %158 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 %18
  %159 = load i64, ptr %150, align 8, !tbaa !102
  %160 = add nsw i64 %159, 1
  store i64 %160, ptr %150, align 8, !tbaa !102
  %161 = add nuw nsw i64 %152, 1
  %162 = icmp eq i64 %161, %146
  br i1 %162, label %163, label %151, !llvm.loop !124

163:                                              ; preds = %157, %151, %144
  %164 = phi i64 [ 0, %144 ], [ %146, %157 ], [ %152, %151 ]
  %165 = load ptr, ptr %136, align 8, !tbaa !57
  call void @UnlockSemaphoreInfo(ptr noundef %165) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  br label %166

166:                                              ; preds = %36, %27, %8, %163, %133
  %167 = phi i64 [ 0, %8 ], [ %164, %163 ], [ %124, %133 ], [ 0, %27 ], [ %30, %36 ]
  %168 = phi i64 [ %21, %8 ], [ %146, %163 ], [ %82, %133 ], [ %30, %27 ], [ %30, %36 ]
  %169 = icmp slt i64 %167, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %166
  %171 = tail call ptr @__errno_location() #23
  %172 = load i32, ptr %171, align 4, !tbaa !34
  %173 = call ptr @GetExceptionMessage(i32 noundef %172) #22
  %174 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  %175 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4495, i32 noundef 445, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.19, ptr noundef nonnull %174, ptr noundef %173) #22
  %176 = call ptr @DestroyString(ptr noundef %173) #22
  br label %199

177:                                              ; preds = %166
  %178 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 25
  %179 = load i32, ptr %178, align 4, !tbaa !58
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %199, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 7
  %183 = load i64, ptr %182, align 8, !tbaa !100
  %184 = icmp ult i64 %183, 101
  %185 = add i64 %183, -1
  %186 = icmp eq i64 %185, %11
  %187 = or i1 %184, %186
  br i1 %187, label %192, label %188

188:                                              ; preds = %181
  %189 = udiv i64 %183, 100
  %190 = urem i64 %11, %189
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %181, %188
  %193 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %194 = uitofp i64 %18 to double
  %195 = uitofp i64 %21 to double
  %196 = sitofp i64 %16 to double
  %197 = sitofp i64 %11 to double
  %198 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4500, ptr noundef nonnull @.str.30, ptr noundef nonnull %193, double noundef %194, double noundef %195, double noundef %196, double noundef %197) #22
  br label %199

199:                                              ; preds = %177, %188, %192, %3, %170, %68
  %200 = phi i32 [ 0, %170 ], [ 0, %68 ], [ 1, %3 ], [ 1, %192 ], [ 1, %188 ], [ 1, %177 ]
  ret i32 %200
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @ReadPixelCacheIndexes(ptr noalias noundef %0, ptr noalias nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct._RectangleInfo, align 8
  %5 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 16
  %6 = load i32, ptr %5, align 8, !tbaa !98
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %208, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !96
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %208

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !107
  %16 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 6
  %17 = load i64, ptr %16, align 8, !tbaa !99
  %18 = mul i64 %17, %15
  %19 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !108
  %21 = add i64 %18, %20
  %22 = load i64, ptr %13, align 8, !tbaa !109
  %23 = shl i64 %22, 1
  %24 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !110
  %26 = mul i64 %23, %25
  %27 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !89
  %29 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !38
  switch i32 %30, label %175 [
    i32 1, label %31
    i32 2, label %31
    i32 3, label %49
    i32 5, label %144
  ]

31:                                               ; preds = %12, %12
  %32 = icmp eq i64 %17, %22
  %33 = select i1 %32, i64 %26, i64 %23
  %34 = select i1 %32, i64 1, i64 %25
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %175

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 15
  %38 = load ptr, ptr %37, align 8, !tbaa !94
  %39 = getelementptr inbounds i16, ptr %38, i64 %21
  br label %40

40:                                               ; preds = %36, %40
  %41 = phi ptr [ %45, %40 ], [ %39, %36 ]
  %42 = phi i64 [ %47, %40 ], [ 0, %36 ]
  %43 = phi ptr [ %46, %40 ], [ %28, %36 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %43, ptr align 2 %41, i64 %33, i1 false)
  %44 = load i64, ptr %16, align 8, !tbaa !99
  %45 = getelementptr inbounds i16, ptr %41, i64 %44
  %46 = getelementptr inbounds i16, ptr %43, i64 %22
  %47 = add nuw nsw i64 %42, 1
  %48 = icmp eq i64 %47, %34
  br i1 %48, label %175, label %40, !llvm.loop !125

49:                                               ; preds = %12
  %50 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 29
  %51 = load ptr, ptr %50, align 8, !tbaa !57
  tail call void @LockSemaphoreInfo(ptr noundef %51) #22
  %52 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 17
  %53 = load i32, ptr %52, align 4, !tbaa !50
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %80

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  %57 = load i8, ptr %56, align 8, !tbaa !93
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = tail call i32 @AcquireUniqueFileResource(ptr noundef nonnull %56) #22
  br label %66

61:                                               ; preds = %55
  %62 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %56, i32 noundef 194, i32 noundef 384) #22
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %56, i32 noundef 2, i32 noundef 384) #22
  br label %66

66:                                               ; preds = %64, %61, %59
  %67 = phi i32 [ %60, %59 ], [ %65, %64 ], [ %62, %61 ]
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = tail call i32 @AcquireMagickResource(i32 noundef 3, i64 noundef 1) #22
  store i32 %67, ptr %52, align 4, !tbaa !50
  %71 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 4
  store i32 2, ptr %71, align 4, !tbaa !47
  br label %80

72:                                               ; preds = %66
  %73 = tail call ptr @__errno_location() #23
  %74 = load i32, ptr %73, align 4, !tbaa !34
  %75 = tail call ptr @GetExceptionMessage(i32 noundef %74) #22
  %76 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  %77 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4270, i32 noundef 430, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.19, ptr noundef nonnull %76, ptr noundef %75) #22
  %78 = tail call ptr @DestroyString(ptr noundef %75) #22
  %79 = load ptr, ptr %50, align 8, !tbaa !57
  tail call void @UnlockSemaphoreInfo(ptr noundef %79) #22
  br label %208

80:                                               ; preds = %69, %49
  %81 = load i64, ptr %16, align 8, !tbaa !99
  %82 = icmp eq i64 %81, %22
  %83 = icmp ult i64 %26, 262143
  %84 = select i1 %82, i1 %83, i1 false
  %85 = select i1 %84, i64 %26, i64 %23
  %86 = select i1 %84, i64 1, i64 %25
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %132

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 7
  %90 = load i64, ptr %89, align 8, !tbaa !100
  %91 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 8
  %92 = shl i64 %81, 3
  %93 = mul i64 %92, %90
  %94 = load i32, ptr %52, align 4, !tbaa !50, !alias.scope !126, !noalias !129
  %95 = icmp slt i64 %85, 1
  br label %96

96:                                               ; preds = %88, %126
  %97 = phi i64 [ 0, %88 ], [ %130, %126 ]
  %98 = phi ptr [ %28, %88 ], [ %129, %126 ]
  %99 = phi i64 [ %21, %88 ], [ %128, %126 ]
  %100 = load i64, ptr %91, align 8, !tbaa !118
  %101 = shl i64 %99, 1
  %102 = add i64 %101, %93
  %103 = add i64 %102, %100
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %104 = tail call i64 @lseek(i32 noundef %94, i64 noundef %103, i32 noundef 0) #22, !noalias !131
  %105 = icmp slt i64 %104, 0
  %106 = select i1 %105, i1 true, i1 %95
  %107 = ashr i64 %104, 63
  br i1 %106, label %123, label %108

108:                                              ; preds = %96, %119
  %109 = phi i64 [ %121, %119 ], [ 0, %96 ]
  %110 = getelementptr inbounds i8, ptr %98, i64 %109
  %111 = sub i64 %85, %109
  %112 = tail call i64 @llvm.umin.i64(i64 %111, i64 9223372036854775807)
  %113 = tail call i64 @read(i32 noundef %94, ptr noundef %110, i64 noundef %112) #22, !noalias !126
  %114 = icmp slt i64 %113, 1
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = tail call ptr @__errno_location() #23
  %117 = load i32, ptr %116, align 4, !tbaa !34, !noalias !131
  %118 = icmp eq i32 %117, 4
  br i1 %118, label %119, label %123

119:                                              ; preds = %115, %108
  %120 = phi i64 [ 0, %115 ], [ %113, %108 ]
  %121 = add nuw nsw i64 %120, %109
  %122 = icmp slt i64 %121, %85
  br i1 %122, label %108, label %123, !llvm.loop !120

123:                                              ; preds = %115, %119, %96
  %124 = phi i64 [ %107, %96 ], [ %121, %119 ], [ %109, %115 ]
  %125 = icmp ult i64 %124, %85
  br i1 %125, label %132, label %126

126:                                              ; preds = %123
  %127 = load i64, ptr %16, align 8, !tbaa !99
  %128 = add i64 %127, %99
  %129 = getelementptr inbounds i16, ptr %98, i64 %22
  %130 = add nuw nsw i64 %97, 1
  %131 = icmp eq i64 %130, %86
  br i1 %131, label %132, label %96, !llvm.loop !132

132:                                              ; preds = %126, %123, %80
  %133 = phi i64 [ 0, %80 ], [ %86, %126 ], [ %97, %123 ]
  %134 = tail call i64 @GetMagickResource(i32 noundef 3) #22
  %135 = tail call i64 @GetMagickResourceLimit(i32 noundef 3) #22
  %136 = icmp ugt i64 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load i32, ptr %52, align 4, !tbaa !50
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %142, label %140

140:                                              ; preds = %137
  %141 = tail call i32 @close(i32 noundef %138) #22
  store i32 -1, ptr %52, align 4, !tbaa !50
  tail call void @RelinquishMagickResource(i32 noundef 3, i64 noundef 1) #22
  br label %142

142:                                              ; preds = %140, %137, %132
  %143 = load ptr, ptr %50, align 8, !tbaa !57
  tail call void @UnlockSemaphoreInfo(ptr noundef %143) #22
  br label %175

144:                                              ; preds = %12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  %145 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 29
  %146 = load ptr, ptr %145, align 8, !tbaa !57
  tail call void @LockSemaphoreInfo(ptr noundef %146) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !122
  %147 = load i64, ptr %16, align 8, !tbaa !99
  %148 = icmp ne i64 %147, %22
  %149 = icmp ugt i64 %26, 262142
  %150 = select i1 %148, i1 true, i1 %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %144
  %152 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 1
  store i64 1, ptr %152, align 8, !tbaa !104
  br label %153

153:                                              ; preds = %144, %151
  %154 = phi i64 [ %23, %151 ], [ %26, %144 ]
  %155 = phi i64 [ %25, %151 ], [ 1, %144 ]
  %156 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 23
  %157 = icmp sgt i64 %155, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 3
  br label %160

160:                                              ; preds = %158, %166
  %161 = phi i64 [ 0, %158 ], [ %170, %166 ]
  %162 = phi ptr [ %28, %158 ], [ %167, %166 ]
  %163 = load ptr, ptr %156, align 8, !tbaa !85
  %164 = call i64 @ReadDistributePixelCacheIndexes(ptr noundef %163, ptr noundef nonnull %4, i64 noundef %154, ptr noundef %162) #22
  %165 = icmp eq i64 %164, %154
  br i1 %165, label %166, label %172

166:                                              ; preds = %160
  %167 = getelementptr inbounds i16, ptr %162, i64 %22
  %168 = load i64, ptr %159, align 8, !tbaa !102
  %169 = add nsw i64 %168, 1
  store i64 %169, ptr %159, align 8, !tbaa !102
  %170 = add nuw nsw i64 %161, 1
  %171 = icmp eq i64 %170, %155
  br i1 %171, label %172, label %160, !llvm.loop !133

172:                                              ; preds = %166, %160, %153
  %173 = phi i64 [ 0, %153 ], [ %155, %166 ], [ %161, %160 ]
  %174 = load ptr, ptr %145, align 8, !tbaa !57
  call void @UnlockSemaphoreInfo(ptr noundef %174) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  br label %175

175:                                              ; preds = %40, %31, %12, %172, %142
  %176 = phi i64 [ 0, %12 ], [ %173, %172 ], [ %133, %142 ], [ 0, %31 ], [ %34, %40 ]
  %177 = phi i64 [ %25, %12 ], [ %155, %172 ], [ %86, %142 ], [ %34, %31 ], [ %34, %40 ]
  %178 = icmp slt i64 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %175
  %180 = tail call ptr @__errno_location() #23
  %181 = load i32, ptr %180, align 4, !tbaa !34
  %182 = call ptr @GetExceptionMessage(i32 noundef %181) #22
  %183 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  %184 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4331, i32 noundef 445, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.19, ptr noundef nonnull %183, ptr noundef %182) #22
  %185 = call ptr @DestroyString(ptr noundef %182) #22
  br label %208

186:                                              ; preds = %175
  %187 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 25
  %188 = load i32, ptr %187, align 4, !tbaa !58
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %208, label %190

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 7
  %192 = load i64, ptr %191, align 8, !tbaa !100
  %193 = icmp ult i64 %192, 101
  %194 = add i64 %192, -1
  %195 = icmp eq i64 %194, %15
  %196 = or i1 %193, %195
  br i1 %196, label %201, label %197

197:                                              ; preds = %190
  %198 = udiv i64 %192, 100
  %199 = urem i64 %15, %198
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %190, %197
  %202 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %203 = uitofp i64 %22 to double
  %204 = uitofp i64 %25 to double
  %205 = sitofp i64 %20 to double
  %206 = sitofp i64 %15 to double
  %207 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4336, ptr noundef nonnull @.str.30, ptr noundef nonnull %202, double noundef %203, double noundef %204, double noundef %205, double noundef %206) #22
  br label %208

208:                                              ; preds = %186, %197, %201, %8, %3, %179, %72
  %209 = phi i32 [ 0, %179 ], [ 0, %72 ], [ 0, %3 ], [ 1, %8 ], [ 1, %201 ], [ 1, %197 ], [ 1, %186 ]
  ret i32 %209
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetAuthenticPixelQueue(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 20, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr %5(ptr noundef %0) #22
  br label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !53
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = getelementptr inbounds %struct._NexusInfo, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !111
  br label %15

15:                                               ; preds = %9, %7
  %16 = phi ptr [ %8, %7 ], [ %14, %9 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct._CacheInfo, ptr %8, i64 0, i32 20, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !135
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = tail call ptr %10(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #22
  br label %36

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct._CacheInfo, ptr %8, i64 0, i32 13
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  %18 = tail call ptr @QueueAuthenticPixelCacheNexus(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef 1, ptr noundef %17, ptr noundef %5) #25
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %7, align 8, !tbaa !67
  %22 = getelementptr inbounds %struct._NexusInfo, ptr %17, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !96
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = tail call fastcc i32 @ReadPixelCachePixels(ptr noundef %21, ptr noundef %17, ptr noundef %5), !range !97
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct._CacheInfo, ptr %21, i64 0, i32 16
  %30 = load i32, ptr %29, align 8, !tbaa !98
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = tail call fastcc i32 @ReadPixelCacheIndexes(ptr noundef %21, ptr noundef %17, ptr noundef %5), !range !97
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32, %28
  br label %36

36:                                               ; preds = %35, %32, %25, %20, %14, %12
  %37 = phi ptr [ %13, %12 ], [ %18, %35 ], [ null, %14 ], [ %18, %20 ], [ null, %25 ], [ null, %32 ]
  ret ptr %37
}

; Function Attrs: nounwind uwtable
define dso_local i64 @GetImageExtent(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !83
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1431, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = getelementptr inbounds %struct._NexusInfo, ptr %13, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !109
  %16 = getelementptr inbounds %struct._NexusInfo, ptr %13, i64 0, i32 1, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !110
  %18 = mul i64 %17, %15
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 6
  %22 = load i64, ptr %21, align 8, !tbaa !99
  %23 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 7
  %24 = load i64, ptr %23, align 8, !tbaa !100
  %25 = mul i64 %24, %22
  br label %26

26:                                               ; preds = %8, %20
  %27 = phi i64 [ %25, %20 ], [ %18, %8 ]
  ret i64 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @GetPixelCacheNexusExtent(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !110
  %7 = mul i64 %6, %4
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 6
  %11 = load i64, ptr %10, align 8, !tbaa !99
  %12 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 7
  %13 = load i64, ptr %12, align 8, !tbaa !100
  %14 = mul i64 %13, %11
  br label %15

15:                                               ; preds = %2, %9
  %16 = phi i64 [ %14, %9 ], [ %7, %2 ]
  ret i64 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GetPixelCacheType(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !38
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GetImagePixelCacheType(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !38
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetOneAuthenticPixel(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %9 = load i64, ptr %8, align 8
  store i64 %9, ptr %3, align 2
  %10 = getelementptr inbounds %struct._CacheInfo, ptr %7, i64 0, i32 20, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !136
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %5
  %14 = tail call i32 %11(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %3, ptr noundef %4) #22
  br label %45

15:                                               ; preds = %5
  %16 = load ptr, ptr %6, align 8, !tbaa !67
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct._CacheInfo, ptr %16, i64 0, i32 13
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = load ptr, ptr %20, align 8, !tbaa !60
  %22 = tail call ptr @QueueAuthenticPixelCacheNexus(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef 1, i64 noundef 1, i32 noundef 1, ptr noundef %21, ptr noundef %4) #25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr %6, align 8, !tbaa !67
  %26 = getelementptr inbounds %struct._NexusInfo, ptr %21, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !96
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = tail call fastcc i32 @ReadPixelCachePixels(ptr noundef %25, ptr noundef %21, ptr noundef %4), !range !97
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct._CacheInfo, ptr %25, i64 0, i32 16
  %34 = load i32, ptr %33, align 8, !tbaa !98
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = tail call fastcc i32 @ReadPixelCacheIndexes(ptr noundef %25, ptr noundef %21, ptr noundef %4), !range !97
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36, %32
  br label %40

40:                                               ; preds = %39, %36, %29, %24, %18, %15
  %41 = phi ptr [ null, %15 ], [ %22, %39 ], [ null, %18 ], [ %22, %24 ], [ null, %29 ], [ null, %36 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = load i64, ptr %41, align 2
  store i64 %44, ptr %3, align 2
  br label %45

45:                                               ; preds = %40, %43, %13
  %46 = phi i32 [ %14, %13 ], [ 1, %43 ], [ 0, %40 ]
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal ptr @GetAuthenticPixelsCache(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %8, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = tail call ptr @QueueAuthenticPixelCacheNexus(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef 1, ptr noundef %13, ptr noundef %5) #25
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %7, align 8, !tbaa !67
  %18 = getelementptr inbounds %struct._NexusInfo, ptr %13, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !96
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = tail call fastcc i32 @ReadPixelCachePixels(ptr noundef %17, ptr noundef %13, ptr noundef %5), !range !97
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct._CacheInfo, ptr %17, i64 0, i32 16
  %26 = load i32, ptr %25, align 8, !tbaa !98
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = tail call fastcc i32 @ReadPixelCacheIndexes(ptr noundef %17, ptr noundef %13, ptr noundef %5), !range !97
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %24
  br label %32

32:                                               ; preds = %31, %28, %21, %16, %10, %6
  %33 = phi ptr [ null, %6 ], [ %14, %31 ], [ null, %10 ], [ %14, %16 ], [ null, %21 ], [ null, %28 ]
  ret ptr %33
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @GetOneVirtualMagickPixel(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct._CacheInfo, ptr %7, i64 0, i32 10
  %9 = load i32, ptr %8, align 8, !tbaa !81
  %10 = getelementptr inbounds %struct._CacheInfo, ptr %7, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !53
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = tail call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef %9, i64 noundef %1, i64 noundef %2, i64 noundef 1, i64 noundef 1, ptr noundef %12, ptr noundef %4) #25
  tail call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef %3) #22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %49, label %15

15:                                               ; preds = %5
  %16 = load i32, ptr %7, align 8, !tbaa !137
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %10, align 8, !tbaa !53
  %20 = load ptr, ptr %19, align 8, !tbaa !60
  %21 = getelementptr inbounds %struct._NexusInfo, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !89
  br label %23

23:                                               ; preds = %15, %18
  %24 = phi ptr [ %22, %18 ], [ null, %15 ]
  %25 = getelementptr inbounds %struct._PixelPacket, ptr %13, i64 0, i32 2
  %26 = load i16, ptr %25, align 2, !tbaa !138
  %27 = uitofp i16 %26 to float
  %28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %27, ptr %28, align 8, !tbaa !139
  %29 = getelementptr inbounds %struct._PixelPacket, ptr %13, i64 0, i32 1
  %30 = load i16, ptr %29, align 2, !tbaa !140
  %31 = uitofp i16 %30 to float
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %31, ptr %32, align 4, !tbaa !141
  %33 = load i16, ptr %13, align 2, !tbaa !142
  %34 = uitofp i16 %33 to float
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %34, ptr %35, align 8, !tbaa !143
  %36 = getelementptr inbounds %struct._PixelPacket, ptr %13, i64 0, i32 3
  %37 = load i16, ptr %36, align 2, !tbaa !144
  %38 = uitofp i16 %37 to float
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %38, ptr %39, align 4, !tbaa !145
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !146
  %42 = icmp eq i32 %41, 12
  %43 = icmp ne ptr %24, null
  %44 = and i1 %43, %42
  br i1 %44, label %45, label %49

45:                                               ; preds = %23
  %46 = load i16, ptr %24, align 2, !tbaa !147
  %47 = uitofp i16 %46 to float
  %48 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %47, ptr %48, align 8, !tbaa !148
  br label %49

49:                                               ; preds = %45, %23, %5
  %50 = phi i32 [ 0, %5 ], [ 1, %23 ], [ 1, %45 ]
  ret i32 %50
}

; Function Attrs: hot nounwind uwtable
define dso_local ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nocapture noundef %6, ptr noundef %7) local_unnamed_addr #9 {
  %9 = alloca i16, align 2
  %10 = alloca %struct._PixelPacket, align 8
  %11 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #22
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct._CacheInfo, ptr %13, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !38
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %411, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._RectangleInfo, ptr %11, i64 0, i32 2
  store i64 %2, ptr %18, align 8, !tbaa !101
  %19 = getelementptr inbounds %struct._RectangleInfo, ptr %11, i64 0, i32 3
  store i64 %3, ptr %19, align 8, !tbaa !102
  store i64 %4, ptr %11, align 8, !tbaa !103
  %20 = getelementptr inbounds %struct._RectangleInfo, ptr %11, i64 0, i32 1
  store i64 %5, ptr %20, align 8, !tbaa !104
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 38
  %22 = load ptr, ptr %21, align 8, !tbaa !105
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 73
  %26 = load ptr, ptr %25, align 8, !tbaa !106
  %27 = icmp ne ptr %26, null
  %28 = zext i1 %27 to i32
  br label %29

29:                                               ; preds = %24, %17
  %30 = phi i32 [ 1, %17 ], [ %28, %24 ]
  %31 = call fastcc ptr @SetPixelCacheNexusPixels(ptr noundef %13, ptr noundef nonnull %11, i32 noundef %30, ptr noundef %6, ptr noundef %7) #25
  %32 = icmp eq ptr %31, null
  br i1 %32, label %411, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct._NexusInfo, ptr %6, i64 0, i32 1, i32 3
  %35 = load i64, ptr %34, align 8, !tbaa !107
  %36 = getelementptr inbounds %struct._CacheInfo, ptr %13, i64 0, i32 6
  %37 = load i64, ptr %36, align 8, !tbaa !99
  %38 = mul i64 %37, %35
  %39 = getelementptr inbounds %struct._NexusInfo, ptr %6, i64 0, i32 1, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !108
  %41 = add i64 %38, %40
  %42 = getelementptr inbounds %struct._CacheInfo, ptr %13, i64 0, i32 7
  %43 = load i64, ptr %42, align 8, !tbaa !100
  %44 = icmp sgt i64 %41, -1
  br i1 %44, label %45, label %85

45:                                               ; preds = %33
  %46 = mul i64 %43, %37
  %47 = getelementptr inbounds %struct._NexusInfo, ptr %6, i64 0, i32 1, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !110
  %49 = add i64 %48, -1
  %50 = mul i64 %49, %37
  %51 = getelementptr inbounds %struct._NexusInfo, ptr %6, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !109
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
  %69 = load i32, ptr %68, align 8, !tbaa !96
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %411

71:                                               ; preds = %67
  %72 = tail call fastcc i32 @ReadPixelCachePixels(ptr noundef %13, ptr noundef %6, ptr noundef %7), !range !97
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %411, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr %13, align 8, !tbaa !137
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct._CacheInfo, ptr %13, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !48
  %80 = icmp eq i32 %79, 12
  br i1 %80, label %81, label %84

81:                                               ; preds = %77, %74
  %82 = tail call fastcc i32 @ReadPixelCacheIndexes(ptr noundef nonnull %13, ptr noundef %6, ptr noundef %7), !range !97
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %411, label %84

84:                                               ; preds = %81, %77
  br label %411

85:                                               ; preds = %59, %45, %33
  %86 = getelementptr inbounds %struct._NexusInfo, ptr %6, i64 0, i32 6
  %87 = load ptr, ptr %86, align 8, !tbaa !89
  %88 = tail call ptr @AcquirePixelCacheNexus(i64 noundef 1)
  switch i32 %1, label %102 [
    i32 10, label %89
    i32 11, label %90
    i32 8, label %94
    i32 9, label %98
    i32 12, label %98
  ]

89:                                               ; preds = %85
  store i64 0, ptr %10, align 8
  br label %105

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 0, i32 2
  store i16 32767, ptr %91, align 4, !tbaa !138
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 0, i32 1
  store i16 32767, ptr %92, align 2, !tbaa !140
  store i16 32767, ptr %10, align 8, !tbaa !142
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 0, i32 3
  store i16 0, ptr %93, align 2, !tbaa !144
  br label %105

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 0, i32 2
  store i16 0, ptr %95, align 4, !tbaa !138
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 0, i32 1
  store i16 0, ptr %96, align 2, !tbaa !140
  store i16 0, ptr %10, align 8, !tbaa !142
  %97 = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 0, i32 3
  store i16 -1, ptr %97, align 2, !tbaa !144
  br label %105

98:                                               ; preds = %85, %85
  %99 = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 0, i32 2
  store i16 -1, ptr %99, align 4, !tbaa !138
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 0, i32 1
  store i16 -1, ptr %100, align 2, !tbaa !140
  store i16 -1, ptr %10, align 8, !tbaa !142
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 0, i32 3
  store i16 0, ptr %101, align 2, !tbaa !144
  br label %105

102:                                              ; preds = %85
  %103 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %104 = load i64, ptr %103, align 8
  store i64 %104, ptr %10, align 8
  br label %105

105:                                              ; preds = %102, %98, %94, %90, %89
  store i16 0, ptr %9, align 2, !tbaa !147
  %106 = icmp sgt i64 %5, 0
  br i1 %106, label %107, label %389

107:                                              ; preds = %105
  %108 = and i32 %1, -5
  %109 = icmp eq i32 %108, 0
  %110 = icmp sgt i64 %4, 0
  %111 = getelementptr inbounds %struct._CacheInfo, ptr %13, i64 0, i32 21
  br label %112

112:                                              ; preds = %107, %384
  %113 = phi ptr [ %87, %107 ], [ %386, %384 ]
  %114 = phi ptr [ %31, %107 ], [ %385, %384 ]
  %115 = phi i64 [ 0, %107 ], [ %387, %384 ]
  %116 = add nsw i64 %115, %3
  br i1 %109, label %117, label %124

117:                                              ; preds = %112
  %118 = load i64, ptr %42, align 8, !tbaa !100
  %119 = icmp slt i64 %116, 0
  %120 = icmp slt i64 %116, %118
  %121 = add i64 %118, -1
  %122 = select i1 %120, i64 %116, i64 %121
  %123 = select i1 %119, i64 0, i64 %122
  br label %124

124:                                              ; preds = %112, %117
  %125 = phi i64 [ %123, %117 ], [ %116, %112 ]
  %126 = freeze i64 %125
  br i1 %110, label %127, label %384

127:                                              ; preds = %124
  %128 = icmp slt i64 %126, 0
  %129 = icmp slt i64 %126, 0
  %130 = ashr i64 %126, 63
  %131 = icmp slt i64 %126, 0
  %132 = ashr i64 %126, 63
  %133 = ashr i64 %126, 63
  %134 = ashr i64 %126, 63
  %135 = and i64 %126, 7
  %136 = getelementptr inbounds [64 x i64], ptr @DitherMatrix, i64 0, i64 %135
  %137 = ashr i64 %126, 63
  %138 = icmp slt i64 %126, 0
  br label %139

139:                                              ; preds = %375, %127
  %140 = phi i64 [ 0, %127 ], [ %381, %375 ]
  %141 = phi ptr [ %113, %127 ], [ %378, %375 ]
  %142 = phi ptr [ %114, %127 ], [ %377, %375 ]
  %143 = add i64 %140, %2
  %144 = load i64, ptr %36, align 8, !tbaa !99
  %145 = sub i64 %144, %143
  %146 = sub i64 %4, %140
  %147 = call i64 @llvm.umin.i64(i64 %145, i64 %146)
  %148 = icmp sgt i64 %143, -1
  %149 = xor i1 %148, true
  %150 = icmp sge i64 %143, %144
  %151 = or i1 %128, %150
  %152 = select i1 %149, i1 true, i1 %151
  br i1 %152, label %158, label %153

153:                                              ; preds = %139
  %154 = load i64, ptr %42, align 8, !tbaa !100
  %155 = icmp sge i64 %126, %154
  %156 = icmp eq i64 %147, 0
  %157 = select i1 %155, i1 true, i1 %156
  br i1 %157, label %158, label %354

158:                                              ; preds = %153, %139
  switch i32 %1, label %159 [
    i32 1, label %341
    i32 2, label %341
    i32 10, label %341
    i32 11, label %341
    i32 8, label %341
    i32 9, label %341
    i32 12, label %341
    i32 16, label %322
    i32 6, label %173
    i32 3, label %195
    i32 7, label %219
    i32 5, label %234
    i32 17, label %259
    i32 13, label %278
    i32 14, label %293
    i32 15, label %307
  ]

159:                                              ; preds = %158
  %160 = icmp slt i64 %143, %144
  %161 = add i64 %144, -1
  %162 = select i1 %160, i64 %143, i64 %161
  %163 = select i1 %148, i64 %162, i64 0
  %164 = load i64, ptr %42, align 8, !tbaa !100
  %165 = icmp slt i64 %126, %164
  %166 = add i64 %164, -1
  %167 = select i1 %165, i64 %126, i64 %166
  %168 = select i1 %138, i64 0, i64 %167
  %169 = load ptr, ptr %88, align 8, !tbaa !60
  %170 = call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef %1, i64 noundef %163, i64 noundef %168, i64 noundef 1, i64 noundef 1, ptr noundef %169, ptr noundef %7) #25
  %171 = load i32, ptr %13, align 8, !tbaa !137
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %341, label %336

173:                                              ; preds = %158
  %174 = load ptr, ptr %111, align 8, !tbaa !91
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  %177 = call ptr @AcquireRandomInfo() #22
  store ptr %177, ptr %111, align 8, !tbaa !91
  br label %178

178:                                              ; preds = %176, %173
  %179 = load ptr, ptr %111, align 8, !tbaa !91
  %180 = load i64, ptr %36, align 8, !tbaa !99
  %181 = uitofp i64 %180 to double
  %182 = call double @GetPseudoRandomValue(ptr noundef %179) #22
  %183 = fmul double %182, %181
  %184 = fptosi double %183 to i64
  %185 = load ptr, ptr %111, align 8, !tbaa !91
  %186 = load i64, ptr %42, align 8, !tbaa !100
  %187 = uitofp i64 %186 to double
  %188 = call double @GetPseudoRandomValue(ptr noundef %185) #22
  %189 = fmul double %188, %187
  %190 = fptosi double %189 to i64
  %191 = load ptr, ptr %88, align 8, !tbaa !60
  %192 = call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef 6, i64 noundef %184, i64 noundef %190, i64 noundef 1, i64 noundef 1, ptr noundef %191, ptr noundef %7) #25
  %193 = load i32, ptr %13, align 8, !tbaa !137
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %341, label %336

195:                                              ; preds = %158
  %196 = and i64 %143, 7
  %197 = getelementptr inbounds [64 x i64], ptr @DitherMatrix, i64 0, i64 %196
  %198 = load i64, ptr %197, align 8, !tbaa !123
  %199 = add nsw i64 %198, %143
  %200 = add nsw i64 %199, -32
  %201 = icmp slt i64 %199, 32
  %202 = icmp slt i64 %200, %144
  %203 = add nsw i64 %144, -1
  %204 = select i1 %202, i64 %200, i64 %203
  %205 = select i1 %201, i64 0, i64 %204
  %206 = load i64, ptr %42, align 8, !tbaa !100
  %207 = load i64, ptr %136, align 8, !tbaa !123
  %208 = add nsw i64 %207, %126
  %209 = add nsw i64 %208, -32
  %210 = icmp slt i64 %208, 32
  %211 = icmp slt i64 %209, %206
  %212 = add nsw i64 %206, -1
  %213 = select i1 %211, i64 %209, i64 %212
  %214 = select i1 %210, i64 0, i64 %213
  %215 = load ptr, ptr %88, align 8, !tbaa !60
  %216 = call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef 3, i64 noundef %205, i64 noundef %214, i64 noundef 1, i64 noundef 1, ptr noundef %215, ptr noundef %7) #25
  %217 = load i32, ptr %13, align 8, !tbaa !137
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %341, label %336

219:                                              ; preds = %158
  %220 = sdiv i64 %143, %144
  %221 = ashr i64 %143, 63
  %222 = add nsw i64 %220, %221
  %223 = mul nsw i64 %222, %144
  %224 = sub nsw i64 %143, %223
  %225 = load i64, ptr %42, align 8, !tbaa !100
  %226 = sdiv i64 %126, %225
  %227 = add nsw i64 %226, %134
  %228 = mul nsw i64 %227, %225
  %229 = sub nsw i64 %126, %228
  %230 = load ptr, ptr %88, align 8, !tbaa !60
  %231 = call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef 7, i64 noundef %224, i64 noundef %229, i64 noundef 1, i64 noundef 1, ptr noundef %230, ptr noundef %7) #25
  %232 = load i32, ptr %13, align 8, !tbaa !137
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %341, label %336

234:                                              ; preds = %158
  %235 = sdiv i64 %143, %144
  %236 = ashr i64 %143, 63
  %237 = add nsw i64 %235, %236
  %238 = mul nsw i64 %237, %144
  %239 = sub nsw i64 %143, %238
  %240 = and i64 %237, 1
  %241 = icmp eq i64 %240, 0
  %242 = xor i64 %239, -1
  %243 = add i64 %144, %242
  %244 = select i1 %241, i64 %239, i64 %243
  %245 = load i64, ptr %42, align 8, !tbaa !100
  %246 = sdiv i64 %126, %245
  %247 = add nsw i64 %246, %133
  %248 = mul nsw i64 %247, %245
  %249 = sub nsw i64 %126, %248
  %250 = and i64 %247, 1
  %251 = icmp eq i64 %250, 0
  %252 = xor i64 %249, -1
  %253 = add i64 %245, %252
  %254 = select i1 %251, i64 %249, i64 %253
  %255 = load ptr, ptr %88, align 8, !tbaa !60
  %256 = call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef 5, i64 noundef %244, i64 noundef %254, i64 noundef 1, i64 noundef 1, ptr noundef %255, ptr noundef %7) #25
  %257 = load i32, ptr %13, align 8, !tbaa !137
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %341, label %336

259:                                              ; preds = %158
  %260 = sdiv i64 %143, %144
  %261 = ashr i64 %143, 63
  %262 = add nsw i64 %260, %261
  %263 = load i64, ptr %42, align 8, !tbaa !100
  %264 = sdiv i64 %126, %263
  %265 = add nsw i64 %264, %132
  %266 = xor i64 %265, %262
  %267 = and i64 %266, 1
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %341

269:                                              ; preds = %259
  %270 = mul nsw i64 %265, %263
  %271 = sub nsw i64 %126, %270
  %272 = mul nsw i64 %262, %144
  %273 = sub nsw i64 %143, %272
  %274 = load ptr, ptr %88, align 8, !tbaa !60
  %275 = call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef 17, i64 noundef %273, i64 noundef %271, i64 noundef 1, i64 noundef 1, ptr noundef %274, ptr noundef %7) #25
  %276 = load i32, ptr %13, align 8, !tbaa !137
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %341, label %336

278:                                              ; preds = %158
  br i1 %131, label %341, label %279

279:                                              ; preds = %278
  %280 = load i64, ptr %42, align 8, !tbaa !100
  %281 = icmp slt i64 %126, %280
  br i1 %281, label %282, label %341

282:                                              ; preds = %279
  %283 = sdiv i64 %143, %144
  %284 = ashr i64 %143, 63
  %285 = add nsw i64 %283, %284
  %286 = mul nsw i64 %285, %144
  %287 = sub nsw i64 %143, %286
  %288 = srem i64 %126, %280
  %289 = load ptr, ptr %88, align 8, !tbaa !60
  %290 = call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef 13, i64 noundef %287, i64 noundef %288, i64 noundef 1, i64 noundef 1, ptr noundef %289, ptr noundef %7) #25
  %291 = load i32, ptr %13, align 8, !tbaa !137
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %341, label %336

293:                                              ; preds = %158
  %294 = icmp slt i64 %143, %144
  %295 = select i1 %148, i1 %294, i1 false
  br i1 %295, label %296, label %341

296:                                              ; preds = %293
  %297 = srem i64 %143, %144
  %298 = load i64, ptr %42, align 8, !tbaa !100
  %299 = sdiv i64 %126, %298
  %300 = add nsw i64 %299, %130
  %301 = mul nsw i64 %300, %298
  %302 = sub nsw i64 %126, %301
  %303 = load ptr, ptr %88, align 8, !tbaa !60
  %304 = call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef 14, i64 noundef %297, i64 noundef %302, i64 noundef 1, i64 noundef 1, ptr noundef %303, ptr noundef %7) #25
  %305 = load i32, ptr %13, align 8, !tbaa !137
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %341, label %336

307:                                              ; preds = %158
  %308 = sdiv i64 %143, %144
  %309 = ashr i64 %143, 63
  %310 = add nsw i64 %308, %309
  %311 = mul nsw i64 %310, %144
  %312 = sub nsw i64 %143, %311
  %313 = load i64, ptr %42, align 8, !tbaa !100
  %314 = icmp slt i64 %126, %313
  %315 = add i64 %313, -1
  %316 = select i1 %314, i64 %126, i64 %315
  %317 = select i1 %129, i64 0, i64 %316
  %318 = load ptr, ptr %88, align 8, !tbaa !60
  %319 = call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef 15, i64 noundef %312, i64 noundef %317, i64 noundef 1, i64 noundef 1, ptr noundef %318, ptr noundef %7) #25
  %320 = load i32, ptr %13, align 8, !tbaa !137
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %341, label %336

322:                                              ; preds = %158
  %323 = load i64, ptr %42, align 8, !tbaa !100
  %324 = sdiv i64 %126, %323
  %325 = add nsw i64 %324, %137
  %326 = mul nsw i64 %325, %323
  %327 = sub nsw i64 %126, %326
  %328 = icmp slt i64 %143, %144
  %329 = add i64 %144, -1
  %330 = select i1 %328, i64 %143, i64 %329
  %331 = select i1 %148, i64 %330, i64 0
  %332 = load ptr, ptr %88, align 8, !tbaa !60
  %333 = call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef 16, i64 noundef %331, i64 noundef %327, i64 noundef 1, i64 noundef 1, ptr noundef %332, ptr noundef %7) #25
  %334 = load i32, ptr %13, align 8, !tbaa !137
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %341, label %336

336:                                              ; preds = %322, %307, %296, %282, %269, %234, %219, %195, %178, %159
  %337 = phi ptr [ %170, %159 ], [ %192, %178 ], [ %216, %195 ], [ %231, %219 ], [ %256, %234 ], [ %275, %269 ], [ %290, %282 ], [ %304, %296 ], [ %319, %307 ], [ %333, %322 ]
  %338 = load ptr, ptr %88, align 8, !tbaa !60
  %339 = getelementptr inbounds %struct._NexusInfo, ptr %338, i64 0, i32 6
  %340 = load ptr, ptr %339, align 8, !tbaa !89
  br label %341

341:                                              ; preds = %336, %322, %307, %296, %282, %269, %234, %219, %195, %178, %159, %293, %278, %279, %259, %158, %158, %158, %158, %158, %158, %158
  %342 = phi ptr [ %10, %158 ], [ %10, %158 ], [ %10, %158 ], [ %10, %158 ], [ %10, %158 ], [ %10, %158 ], [ %10, %158 ], [ %10, %259 ], [ %10, %279 ], [ %10, %278 ], [ %10, %293 ], [ %170, %159 ], [ %192, %178 ], [ %216, %195 ], [ %231, %219 ], [ %256, %234 ], [ %275, %269 ], [ %290, %282 ], [ %304, %296 ], [ %319, %307 ], [ %333, %322 ], [ %337, %336 ]
  %343 = phi ptr [ %9, %158 ], [ %9, %158 ], [ %9, %158 ], [ %9, %158 ], [ %9, %158 ], [ %9, %158 ], [ %9, %158 ], [ %9, %259 ], [ %9, %279 ], [ %9, %278 ], [ %9, %293 ], [ null, %159 ], [ null, %178 ], [ null, %195 ], [ null, %219 ], [ null, %234 ], [ null, %269 ], [ null, %282 ], [ null, %296 ], [ null, %307 ], [ null, %322 ], [ %340, %336 ]
  %344 = icmp eq ptr %342, null
  br i1 %344, label %375, label %345

345:                                              ; preds = %341
  %346 = getelementptr inbounds %struct._PixelPacket, ptr %142, i64 1
  %347 = load i64, ptr %342, align 2
  store i64 %347, ptr %142, align 2
  %348 = icmp ne ptr %141, null
  %349 = icmp ne ptr %343, null
  %350 = select i1 %348, i1 %349, i1 false
  br i1 %350, label %351, label %375

351:                                              ; preds = %345
  %352 = load i16, ptr %343, align 2, !tbaa !147
  %353 = getelementptr inbounds i16, ptr %141, i64 1
  store i16 %352, ptr %141, align 2, !tbaa !147
  br label %375

354:                                              ; preds = %153
  %355 = load ptr, ptr %88, align 8, !tbaa !60
  %356 = call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef %1, i64 noundef %143, i64 noundef %126, i64 noundef %147, i64 noundef 1, ptr noundef %355, ptr noundef %7) #25
  %357 = icmp eq ptr %356, null
  br i1 %357, label %375, label %358

358:                                              ; preds = %354
  %359 = load i32, ptr %13, align 8, !tbaa !137
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %365, label %361

361:                                              ; preds = %358
  %362 = load ptr, ptr %88, align 8, !tbaa !60
  %363 = getelementptr inbounds %struct._NexusInfo, ptr %362, i64 0, i32 6
  %364 = load ptr, ptr %363, align 8, !tbaa !89
  br label %365

365:                                              ; preds = %358, %361
  %366 = phi ptr [ %364, %361 ], [ null, %358 ]
  %367 = shl i64 %147, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %142, ptr nonnull align 2 %356, i64 %367, i1 false)
  %368 = getelementptr inbounds %struct._PixelPacket, ptr %142, i64 %147
  %369 = icmp ne ptr %141, null
  %370 = icmp ne ptr %366, null
  %371 = select i1 %369, i1 %370, i1 false
  br i1 %371, label %372, label %375

372:                                              ; preds = %365
  %373 = shl i64 %147, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %141, ptr nonnull align 2 %366, i64 %373, i1 false)
  %374 = getelementptr inbounds i16, ptr %141, i64 %147
  br label %375

375:                                              ; preds = %365, %372, %354, %341, %351, %345
  %376 = phi i1 [ false, %341 ], [ true, %351 ], [ true, %345 ], [ false, %354 ], [ true, %372 ], [ true, %365 ]
  %377 = phi ptr [ %142, %341 ], [ %346, %351 ], [ %346, %345 ], [ %142, %354 ], [ %368, %372 ], [ %368, %365 ]
  %378 = phi ptr [ %141, %341 ], [ %353, %351 ], [ %141, %345 ], [ %141, %354 ], [ %374, %372 ], [ %141, %365 ]
  %379 = phi i64 [ 1, %341 ], [ 1, %351 ], [ 1, %345 ], [ %147, %354 ], [ %147, %372 ], [ %147, %365 ]
  %380 = freeze i64 %379
  %381 = add i64 %380, %140
  %382 = icmp slt i64 %381, %4
  %383 = and i1 %376, %382
  br i1 %383, label %139, label %384, !llvm.loop !149

384:                                              ; preds = %375, %124
  %385 = phi ptr [ %114, %124 ], [ %377, %375 ]
  %386 = phi ptr [ %113, %124 ], [ %378, %375 ]
  %387 = add nuw nsw i64 %115, 1
  %388 = icmp eq i64 %387, %5
  br i1 %388, label %389, label %112, !llvm.loop !150

389:                                              ; preds = %384, %105
  %390 = load ptr, ptr %88, align 8, !tbaa !60
  %391 = getelementptr inbounds %struct._NexusInfo, ptr %390, i64 0, i32 3
  %392 = load ptr, ptr %391, align 8, !tbaa !86
  %393 = icmp eq ptr %392, null
  br i1 %393, label %406, label %394

394:                                              ; preds = %389
  %395 = load i32, ptr %390, align 8, !tbaa !87
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %399

397:                                              ; preds = %394
  %398 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %392) #22
  br label %403

399:                                              ; preds = %394
  %400 = getelementptr inbounds %struct._NexusInfo, ptr %390, i64 0, i32 2
  %401 = load i64, ptr %400, align 8, !tbaa !88
  %402 = call i32 @UnmapBlob(ptr noundef nonnull %392, i64 noundef %401) #22
  br label %403

403:                                              ; preds = %399, %397
  %404 = getelementptr inbounds %struct._NexusInfo, ptr %390, i64 0, i32 6
  store ptr null, ptr %404, align 8, !tbaa !89
  %405 = getelementptr inbounds %struct._NexusInfo, ptr %390, i64 0, i32 2
  store i32 0, ptr %390, align 8, !tbaa !87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %405, i8 0, i64 24, i1 false)
  br label %406

406:                                              ; preds = %403, %389
  %407 = load ptr, ptr %88, align 8, !tbaa !60
  %408 = getelementptr inbounds %struct._NexusInfo, ptr %407, i64 0, i32 7
  store i64 -2880220588, ptr %408, align 8, !tbaa !61
  %409 = call ptr @RelinquishMagickMemory(ptr noundef %407) #22
  store ptr %409, ptr %88, align 8, !tbaa !60
  %410 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %88) #22
  br label %411

411:                                              ; preds = %84, %67, %71, %81, %29, %8, %406
  %412 = phi ptr [ %31, %406 ], [ null, %8 ], [ null, %29 ], [ %31, %84 ], [ %31, %67 ], [ null, %71 ], [ null, %81 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #22
  ret ptr %412
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GetPixelCacheVirtualMethod(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !81
  ret i32 %5
}

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @GetVirtualIndexesFromNexus(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 {
  %3 = load i32, ptr %0, align 8, !tbaa !137
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !89
  br label %8

8:                                                ; preds = %2, %5
  %9 = phi ptr [ %7, %5 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetOneVirtualMethodPixel(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %10 = load i64, ptr %9, align 8
  store i64 %10, ptr %4, align 2
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %8, i64 0, i32 20, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !151
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %6
  %15 = tail call i32 %12(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %4, ptr noundef %5) #22
  br label %24

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct._CacheInfo, ptr %8, i64 0, i32 13
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  %19 = load ptr, ptr %18, align 8, !tbaa !60
  %20 = tail call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef 1, i64 noundef 1, ptr noundef %19, ptr noundef %5) #25
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

; Function Attrs: nounwind uwtable
define dso_local i32 @GetOneVirtualPixel(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %9 = load i64, ptr %8, align 8
  store i64 %9, ptr %3, align 2
  %10 = getelementptr inbounds %struct._CacheInfo, ptr %7, i64 0, i32 20, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !151
  %12 = icmp eq ptr %11, null
  %13 = load ptr, ptr %6, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct._CacheInfo, ptr %13, i64 0, i32 10
  %15 = load i32, ptr %14, align 8, !tbaa !81
  br i1 %12, label %18, label %16

16:                                               ; preds = %5
  %17 = tail call i32 %11(ptr noundef %0, i32 noundef %15, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %3, ptr noundef %4) #22
  br label %26

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct._CacheInfo, ptr %7, i64 0, i32 13
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = load ptr, ptr %20, align 8, !tbaa !60
  %22 = tail call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef %15, i64 noundef %1, i64 noundef %2, i64 noundef 1, i64 noundef 1, ptr noundef %21, ptr noundef %4) #25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = load i64, ptr %22, align 2
  store i64 %25, ptr %3, align 2
  br label %26

26:                                               ; preds = %18, %24, %16
  %27 = phi i32 [ %17, %16 ], [ 1, %24 ], [ 0, %18 ]
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define dso_local i64 @GetPixelCacheChannels(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 25
  %3 = load i32, ptr %2, align 4, !tbaa !58
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2036, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !49
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetPixelCacheColorspace(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 25
  %3 = load i32, ptr %2, align 4, !tbaa !58
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2072, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !48
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local void @GetPixelCacheMethods(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ResetMagickMemory(ptr noundef %0, i32 noundef 0, i64 noundef 88) #22
  store ptr @GetVirtualPixelCache, ptr %0, align 8, !tbaa !152
  %3 = getelementptr inbounds %struct._CacheMethods, ptr %0, i64 0, i32 1
  store ptr @GetVirtualPixelsCache, ptr %3, align 8, !tbaa !153
  %4 = getelementptr inbounds %struct._CacheMethods, ptr %0, i64 0, i32 2
  store ptr @GetVirtualIndexesFromCache, ptr %4, align 8, !tbaa !154
  %5 = getelementptr inbounds %struct._CacheMethods, ptr %0, i64 0, i32 3
  store ptr @GetOneVirtualPixelFromCache, ptr %5, align 8, !tbaa !155
  %6 = getelementptr inbounds %struct._CacheMethods, ptr %0, i64 0, i32 4
  store ptr @GetAuthenticPixelsCache, ptr %6, align 8, !tbaa !156
  %7 = getelementptr inbounds %struct._CacheMethods, ptr %0, i64 0, i32 5
  store ptr @GetAuthenticIndexesFromCache, ptr %7, align 8, !tbaa !157
  %8 = getelementptr inbounds %struct._CacheMethods, ptr %0, i64 0, i32 7
  store ptr @GetAuthenticPixelsFromCache, ptr %8, align 8, !tbaa !158
  %9 = getelementptr inbounds %struct._CacheMethods, ptr %0, i64 0, i32 6
  store ptr @GetOneAuthenticPixelFromCache, ptr %9, align 8, !tbaa !159
  %10 = getelementptr inbounds %struct._CacheMethods, ptr %0, i64 0, i32 8
  store ptr @QueueAuthenticPixelsCache, ptr %10, align 8, !tbaa !160
  %11 = getelementptr inbounds %struct._CacheMethods, ptr %0, i64 0, i32 9
  store ptr @SyncAuthenticPixelsCache, ptr %11, align 8, !tbaa !161
  %12 = getelementptr inbounds %struct._CacheMethods, ptr %0, i64 0, i32 10
  store ptr @DestroyImagePixelCache, ptr %12, align 8, !tbaa !162
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @GetVirtualPixelCache(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6) #0 {
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct._CacheInfo, ptr %9, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !53
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = tail call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %12, ptr noundef %6) #25
  ret ptr %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal ptr @GetVirtualPixelsCache(ptr nocapture noundef readonly %0) #11 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = load i32, ptr %3, align 8, !tbaa !137
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 13
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = getelementptr inbounds %struct._NexusInfo, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !111
  br label %12

12:                                               ; preds = %1, %6
  %13 = phi ptr [ %11, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal ptr @GetVirtualIndexesFromCache(ptr nocapture noundef readonly %0) #11 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = load i32, ptr %3, align 8, !tbaa !137
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 13
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = getelementptr inbounds %struct._NexusInfo, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !89
  br label %12

12:                                               ; preds = %1, %6
  %13 = phi ptr [ %11, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @GetOneVirtualPixelFromCache(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef writeonly %4, ptr noundef %5) #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %10 = load i64, ptr %9, align 8
  store i64 %10, ptr %4, align 2
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %8, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = tail call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef 1, i64 noundef 1, ptr noundef %13, ptr noundef %5) #25
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal ptr @GetAuthenticIndexesFromCache(ptr nocapture noundef readonly %0) #11 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct._NexusInfo, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !89
  ret ptr %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal ptr @GetAuthenticPixelsFromCache(ptr nocapture noundef readonly %0) #11 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct._NexusInfo, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !111
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @GetOneAuthenticPixelFromCache(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %9 = load i64, ptr %8, align 8
  store i64 %9, ptr %3, align 2
  %10 = getelementptr inbounds %struct._CacheInfo, ptr %7, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !53
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = tail call ptr @QueueAuthenticPixelCacheNexus(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef 1, i64 noundef 1, i32 noundef 1, ptr noundef %12, ptr noundef %4) #25
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %5
  %16 = load ptr, ptr %6, align 8, !tbaa !67
  %17 = getelementptr inbounds %struct._NexusInfo, ptr %12, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !96
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = tail call fastcc i32 @ReadPixelCachePixels(ptr noundef %16, ptr noundef %12, ptr noundef %4), !range !97
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct._CacheInfo, ptr %16, i64 0, i32 16
  %25 = load i32, ptr %24, align 8, !tbaa !98
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = tail call fastcc i32 @ReadPixelCacheIndexes(ptr noundef %16, ptr noundef %12, ptr noundef %4), !range !97
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27, %23
  br label %31

31:                                               ; preds = %5, %15, %20, %27, %30
  %32 = phi ptr [ %13, %30 ], [ null, %5 ], [ %13, %15 ], [ null, %20 ], [ null, %27 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load i64, ptr %32, align 2
  store i64 %35, ptr %3, align 2
  br label %36

36:                                               ; preds = %31, %34
  %37 = phi i32 [ 1, %34 ], [ 0, %31 ]
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal ptr @QueueAuthenticPixelsCache(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct._CacheInfo, ptr %8, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = tail call ptr @QueueAuthenticPixelCacheNexus(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef 0, ptr noundef %11, ptr noundef %5) #25
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @SyncAuthenticPixelsCache(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct._CacheInfo, ptr %4, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = tail call i32 @SyncAuthenticPixelCacheNexus(ptr noundef %0, ptr noundef %7, ptr noundef %1) #25, !range !97
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal void @DestroyImagePixelCache(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !83
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 799, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @DestroyPixelCache(ptr noundef nonnull %10)
  store ptr null, ptr %9, align 8, !tbaa !67
  br label %14

14:                                               ; preds = %8, %12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @GetPixelCachePixels(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i64 0, ptr %1, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct._CacheInfo, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !38
  %8 = add i32 %7, -1
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %5, i64 0, i32 9
  %12 = load i64, ptr %11, align 8, !tbaa !79
  store i64 %12, ptr %1, align 8, !tbaa !78
  %13 = getelementptr inbounds %struct._CacheInfo, ptr %5, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !80
  br label %15

15:                                               ; preds = %3, %10
  %16 = phi ptr [ %14, %10 ], [ null, %3 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetPixelCacheStorageClass(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 25
  %3 = load i32, ptr %2, align 4, !tbaa !58
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2242, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = load i32, ptr %0, align 8, !tbaa !137
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define dso_local void @GetPixelCacheTileSize(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !83
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2280, ptr noundef nonnull @.str.5, ptr noundef nonnull %8) #22
  br label %10

10:                                               ; preds = %7, %3
  store i64 256, ptr %1, align 8, !tbaa !123
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = getelementptr inbounds %struct._CacheInfo, ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !38
  %15 = icmp eq i32 %14, 3
  %16 = select i1 %15, i64 1024, i64 256
  store i64 %16, ptr %1, align 8
  store i64 %16, ptr %2, align 8, !tbaa !123
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetVirtualIndexQueue(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 20, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !163
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr %5(ptr noundef %0) #22
  br label %18

9:                                                ; preds = %1
  %10 = load i32, ptr %3, align 8, !tbaa !137
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 13
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  %15 = load ptr, ptr %14, align 8, !tbaa !60
  %16 = getelementptr inbounds %struct._NexusInfo, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !89
  br label %18

18:                                               ; preds = %12, %9, %7
  %19 = phi ptr [ %8, %7 ], [ %17, %12 ], [ null, %9 ]
  ret ptr %19
}

; Function Attrs: hot nounwind uwtable
define internal fastcc ptr @SetPixelCacheNexusPixels(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #9 {
  %6 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !38
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %153, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !122
  %11 = load i32, ptr %6, align 8, !tbaa !38
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %11, 2
  %15 = icmp eq i32 %2, 0
  %16 = and i1 %15, %14
  br i1 %16, label %19, label %75

17:                                               ; preds = %9
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %19, label %75

19:                                               ; preds = %13, %17
  %20 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 1, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !108
  %22 = load i64, ptr %10, align 8, !tbaa !109
  %23 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 1, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !107
  %25 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 1, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !110
  %27 = add nsw i64 %26, %24
  %28 = icmp sgt i64 %21, -1
  br i1 %28, label %29, label %72

29:                                               ; preds = %19
  %30 = add nsw i64 %22, %21
  %31 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 6
  %32 = load i64, ptr %31, align 8, !tbaa !99
  %33 = icmp sle i64 %30, %32
  %34 = icmp sgt i64 %24, -1
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %72

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 7
  %38 = load i64, ptr %37, align 8, !tbaa !100
  %39 = icmp sgt i64 %27, %38
  br i1 %39, label %72, label %40

40:                                               ; preds = %36
  %41 = icmp eq i64 %26, 1
  br i1 %41, label %49, label %42

42:                                               ; preds = %40
  %43 = icmp eq i64 %21, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %42
  %45 = icmp eq i64 %22, %32
  br i1 %45, label %49, label %46

46:                                               ; preds = %44
  %47 = urem i64 %22, %32
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %46, %44, %40
  %50 = mul i64 %32, %24
  %51 = add i64 %50, %21
  %52 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 14
  %53 = load ptr, ptr %52, align 8, !tbaa !80
  %54 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 %51
  %55 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 4
  store ptr %54, ptr %55, align 8, !tbaa !111
  %56 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 6
  store ptr null, ptr %56, align 8, !tbaa !89
  %57 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 16
  %58 = load i32, ptr %57, align 8, !tbaa !98
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %49
  %61 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 15
  %62 = load ptr, ptr %61, align 8, !tbaa !94
  %63 = getelementptr inbounds i16, ptr %62, i64 %51
  store ptr %63, ptr %56, align 8, !tbaa !89
  br label %64

64:                                               ; preds = %60, %49
  %65 = icmp eq i32 %11, 4
  %66 = getelementptr %struct._PixelPacket, ptr %53, i64 %50
  %67 = getelementptr %struct._PixelPacket, ptr %66, i64 %21
  %68 = icmp eq ptr %54, %67
  %69 = select i1 %65, i1 true, i1 %68
  %70 = zext i1 %69 to i32
  %71 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 5
  store i32 %70, ptr %71, align 8, !tbaa !96
  br label %72

72:                                               ; preds = %19, %29, %36, %42, %46, %64
  %73 = phi i1 [ false, %64 ], [ true, %46 ], [ true, %42 ], [ true, %36 ], [ true, %29 ], [ true, %19 ]
  %74 = phi ptr [ %54, %64 ], [ undef, %46 ], [ undef, %42 ], [ undef, %36 ], [ undef, %29 ], [ undef, %19 ]
  br i1 %73, label %75, label %153

75:                                               ; preds = %72, %17, %13
  %76 = load i64, ptr %10, align 8, !tbaa !109
  %77 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 1, i32 1
  %78 = load i64, ptr %77, align 8, !tbaa !110
  %79 = mul i64 %78, %76
  %80 = shl i64 %79, 3
  %81 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 16
  %82 = load i32, ptr %81, align 8, !tbaa !98
  %83 = icmp eq i32 %82, 0
  %84 = mul i64 %79, 10
  %85 = select i1 %83, i64 %80, i64 %84
  %86 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !86
  %88 = icmp eq ptr %87, null
  %89 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 2
  br i1 %88, label %90, label %102

90:                                               ; preds = %75
  store i64 %85, ptr %89, align 8, !tbaa !88
  store i32 0, ptr %3, align 8, !tbaa !87, !noalias !164
  %91 = tail call ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef %85) #21, !noalias !164
  store ptr %91, ptr %86, align 8, !tbaa !86, !noalias !164
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  store i32 1, ptr %3, align 8, !tbaa !87, !noalias !164
  %94 = load i64, ptr %89, align 8, !tbaa !88, !noalias !164
  %95 = tail call ptr @MapBlob(i32 noundef -1, i32 noundef 2, i64 noundef 0, i64 noundef %94) #22, !noalias !164
  store ptr %95, ptr %86, align 8, !tbaa !86, !noalias !164
  br label %96

96:                                               ; preds = %93, %90
  %97 = load ptr, ptr %86, align 8, !tbaa !86, !noalias !164
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %125

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %101 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4688, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %100) #22
  store i64 0, ptr %89, align 8, !tbaa !88
  br label %153

102:                                              ; preds = %75
  %103 = load i64, ptr %89, align 8, !tbaa !88
  %104 = icmp ult i64 %103, %85
  br i1 %104, label %105, label %125

105:                                              ; preds = %102
  %106 = load i32, ptr %3, align 8, !tbaa !87
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %87) #22
  br label %112

110:                                              ; preds = %105
  %111 = tail call i32 @UnmapBlob(ptr noundef nonnull %87, i64 noundef %103) #22
  br label %112

112:                                              ; preds = %108, %110
  %113 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 6
  store ptr null, ptr %113, align 8, !tbaa !89
  store i32 0, ptr %3, align 8, !tbaa !87
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %89, i8 0, i64 24, i1 false)
  store i64 %85, ptr %89, align 8, !tbaa !88
  store i32 0, ptr %3, align 8, !tbaa !87, !noalias !167
  %114 = tail call ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef %85) #21, !noalias !167
  store ptr %114, ptr %86, align 8, !tbaa !86, !noalias !167
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  store i32 1, ptr %3, align 8, !tbaa !87, !noalias !167
  %117 = load i64, ptr %89, align 8, !tbaa !88, !noalias !167
  %118 = tail call ptr @MapBlob(i32 noundef -1, i32 noundef 2, i64 noundef 0, i64 noundef %117) #22, !noalias !167
  store ptr %118, ptr %86, align 8, !tbaa !86, !noalias !167
  br label %119

119:                                              ; preds = %116, %112
  %120 = load ptr, ptr %86, align 8, !tbaa !86, !noalias !167
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %124 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4688, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %123) #22
  store i64 0, ptr %89, align 8, !tbaa !88
  br label %153

125:                                              ; preds = %119, %96, %102
  %126 = load ptr, ptr %86, align 8, !tbaa !86
  %127 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 4
  store ptr %126, ptr %127, align 8, !tbaa !111
  %128 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 6
  store ptr null, ptr %128, align 8, !tbaa !89
  %129 = load i32, ptr %81, align 8, !tbaa !98
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct._PixelPacket, ptr %126, i64 %79
  store ptr %132, ptr %128, align 8, !tbaa !89
  br label %133

133:                                              ; preds = %131, %125
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %134 = load i32, ptr %6, align 8, !tbaa !38, !alias.scope !170, !noalias !173
  %135 = icmp eq i32 %134, 4
  br i1 %135, label %150, label %136

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 1, i32 3
  %138 = load i64, ptr %137, align 8, !tbaa !107, !alias.scope !173, !noalias !170
  %139 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 6
  %140 = load i64, ptr %139, align 8, !tbaa !99, !alias.scope !170, !noalias !173
  %141 = mul i64 %140, %138
  %142 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 1, i32 2
  %143 = load i64, ptr %142, align 8, !tbaa !108, !alias.scope !173, !noalias !170
  %144 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 14
  %145 = load ptr, ptr %144, align 8, !tbaa !80, !alias.scope !170, !noalias !173
  %146 = getelementptr %struct._PixelPacket, ptr %145, i64 %141
  %147 = getelementptr %struct._PixelPacket, ptr %146, i64 %143
  %148 = icmp eq ptr %126, %147
  %149 = zext i1 %148 to i32
  br label %150

150:                                              ; preds = %133, %136
  %151 = phi i32 [ %149, %136 ], [ 1, %133 ]
  %152 = getelementptr inbounds %struct._NexusInfo, ptr %3, i64 0, i32 5
  store i32 %151, ptr %152, align 8, !tbaa !96
  br label %153

153:                                              ; preds = %5, %72, %150, %122, %99
  %154 = phi ptr [ null, %99 ], [ %126, %150 ], [ null, %122 ], [ %74, %72 ], [ null, %5 ]
  ret ptr %154
}

declare ptr @AcquireRandomInfo() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @GetVirtualPixelQueue(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 20, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !175
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr %5(ptr noundef %0) #22
  br label %18

9:                                                ; preds = %1
  %10 = load i32, ptr %3, align 8, !tbaa !137
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 13
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  %15 = load ptr, ptr %14, align 8, !tbaa !60
  %16 = getelementptr inbounds %struct._NexusInfo, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !111
  br label %18

18:                                               ; preds = %12, %9, %7
  %19 = phi ptr [ %8, %7 ], [ %17, %12 ], [ null, %9 ]
  ret ptr %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @GetVirtualPixelsNexus(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 {
  %3 = load i32, ptr %0, align 8, !tbaa !137
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  br label %8

8:                                                ; preds = %2, %5
  %9 = phi ptr [ %7, %5 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct._CacheInfo, ptr %8, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !176
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct._CacheInfo, ptr %8, i64 0, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !81
  br i1 %11, label %16, label %14

14:                                               ; preds = %6
  %15 = tail call ptr %10(ptr noundef %0, i32 noundef %13, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #22
  br label %21

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct._CacheInfo, ptr %8, i64 0, i32 13
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  %19 = load ptr, ptr %18, align 8, !tbaa !60
  %20 = tail call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef %13, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %19, ptr noundef %5) #25
  br label %21

21:                                               ; preds = %16, %14
  %22 = phi ptr [ %15, %14 ], [ %20, %16 ]
  ret ptr %22
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PersistPixelCache(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr }, align 8
  %7 = alloca ptr, align 8
  %8 = alloca { ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }, align 8
  call void @llvm.lifetime.start.p0(i64 584, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 12648, ptr nonnull %8)
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %10 = load i32, ptr %9, align 8, !tbaa !83
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3831, ptr noundef nonnull @.str.5, ptr noundef nonnull %13) #22
  br label %15

15:                                               ; preds = %12, %5
  %16 = tail call i64 @GetMagickPageSize() #22
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  %19 = icmp eq i32 %2, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %15
  %21 = load i32, ptr %9, align 8, !tbaa !83
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3844, ptr noundef nonnull @.str.8) #22
  br label %25

25:                                               ; preds = %23, %20
  %26 = getelementptr inbounds %struct._CacheInfo, ptr %18, i64 0, i32 19
  %27 = tail call i64 @CopyMagickString(ptr noundef nonnull %26, ptr noundef %1, i64 noundef 4096) #22
  %28 = getelementptr inbounds %struct._CacheInfo, ptr %18, i64 0, i32 3
  store i32 3, ptr %28, align 8, !tbaa !38
  %29 = load i64, ptr %3, align 8, !tbaa !78
  %30 = getelementptr inbounds %struct._CacheInfo, ptr %18, i64 0, i32 8
  store i64 %29, ptr %30, align 8, !tbaa !118
  %31 = tail call fastcc i32 @OpenPixelCache(ptr noundef %0, i32 noundef 0, ptr noundef %4), !range !97
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %131, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct._CacheInfo, ptr %18, i64 0, i32 9
  %35 = load i64, ptr %34, align 8, !tbaa !79
  %36 = add i64 %35, %16
  %37 = urem i64 %35, %16
  %38 = sub i64 %36, %37
  %39 = load i64, ptr %3, align 8, !tbaa !78
  %40 = add i64 %38, %39
  store i64 %40, ptr %3, align 8, !tbaa !78
  br label %131

41:                                               ; preds = %15
  %42 = getelementptr inbounds %struct._CacheInfo, ptr %18, i64 0, i32 4
  %43 = load i32, ptr %42, align 4, !tbaa !47
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %88, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct._CacheInfo, ptr %18, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !38
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %88, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct._CacheInfo, ptr %18, i64 0, i32 27
  %51 = load i64, ptr %50, align 8, !tbaa !56
  %52 = icmp eq i64 %51, 1
  br i1 %52, label %53, label %88

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct._CacheInfo, ptr %18, i64 0, i32 28
  %55 = load ptr, ptr %54, align 8, !tbaa !55
  tail call void @LockSemaphoreInfo(ptr noundef %55) #22
  %56 = load i32, ptr %42, align 4, !tbaa !47
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %86, label %58

58:                                               ; preds = %53
  %59 = load i32, ptr %46, align 8, !tbaa !38
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %86, label %61

61:                                               ; preds = %58
  %62 = load i64, ptr %50, align 8, !tbaa !56
  %63 = icmp eq i64 %62, 1
  br i1 %63, label %64, label %86

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct._CacheInfo, ptr %18, i64 0, i32 19
  %66 = tail call i32 @rename(ptr noundef nonnull %65, ptr noundef %1) #22
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %64
  %69 = tail call i64 @CopyMagickString(ptr noundef nonnull %65, ptr noundef %1, i64 noundef 4096) #22
  %70 = getelementptr inbounds %struct._CacheInfo, ptr %18, i64 0, i32 9
  %71 = load i64, ptr %70, align 8, !tbaa !79
  %72 = add i64 %71, %16
  %73 = urem i64 %71, %16
  %74 = sub i64 %72, %73
  %75 = load i64, ptr %3, align 8, !tbaa !78
  %76 = add i64 %74, %75
  store i64 %76, ptr %3, align 8, !tbaa !78
  %77 = load ptr, ptr %54, align 8, !tbaa !55
  tail call void @UnlockSemaphoreInfo(ptr noundef %77) #22
  %78 = load ptr, ptr %54, align 8, !tbaa !55
  tail call void @LockSemaphoreInfo(ptr noundef %78) #22
  %79 = load i64, ptr %50, align 8, !tbaa !56
  %80 = add nsw i64 %79, 1
  store i64 %80, ptr %50, align 8, !tbaa !56
  %81 = load ptr, ptr %54, align 8, !tbaa !55
  tail call void @UnlockSemaphoreInfo(ptr noundef %81) #22
  %82 = load i32, ptr %9, align 8, !tbaa !83
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %131, label %84

84:                                               ; preds = %68
  %85 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3878, ptr noundef nonnull @.str.9) #22
  br label %131

86:                                               ; preds = %64, %61, %58, %53
  %87 = load ptr, ptr %54, align 8, !tbaa !55
  tail call void @UnlockSemaphoreInfo(ptr noundef %87) #22
  br label %88

88:                                               ; preds = %86, %49, %45, %41
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %0, i64 584, i1 true), !tbaa.struct !177
  %89 = load volatile ptr, ptr %17, align 8, !tbaa.struct !179
  store volatile ptr %89, ptr %7, align 8, !tbaa.struct !179
  %90 = getelementptr inbounds i8, ptr %0, i64 592
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %90, i64 12648, i1 true), !tbaa.struct !180
  %91 = getelementptr inbounds %struct._CacheInfo, ptr %18, i64 0, i32 25
  %92 = load i32, ptr %91, align 4, !tbaa !58
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct._CacheInfo, ptr %18, i64 0, i32 18
  %96 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 505, ptr noundef nonnull @.str.5, ptr noundef nonnull %95) #22
  br label %97

97:                                               ; preds = %88, %94
  %98 = getelementptr inbounds %struct._CacheInfo, ptr %18, i64 0, i32 12
  %99 = load i64, ptr %98, align 8, !tbaa !52
  %100 = tail call noundef ptr @AcquirePixelCache(i64 noundef %99)
  %101 = getelementptr inbounds %struct._CacheInfo, ptr %18, i64 0, i32 10
  %102 = load i32, ptr %101, align 8, !tbaa !81
  %103 = getelementptr inbounds %struct._CacheInfo, ptr %100, i64 0, i32 10
  store i32 %102, ptr %103, align 8, !tbaa !81
  store ptr %100, ptr %17, align 8, !tbaa !67
  %104 = getelementptr inbounds %struct._CacheInfo, ptr %100, i64 0, i32 28
  %105 = load ptr, ptr %104, align 8, !tbaa !55
  tail call void @LockSemaphoreInfo(ptr noundef %105) #22
  %106 = getelementptr inbounds %struct._CacheInfo, ptr %100, i64 0, i32 27
  %107 = load i64, ptr %106, align 8, !tbaa !56
  %108 = add nsw i64 %107, 1
  store i64 %108, ptr %106, align 8, !tbaa !56
  %109 = load ptr, ptr %104, align 8, !tbaa !55
  tail call void @UnlockSemaphoreInfo(ptr noundef %109) #22
  %110 = getelementptr inbounds %struct._CacheInfo, ptr %100, i64 0, i32 19
  %111 = tail call i64 @CopyMagickString(ptr noundef nonnull %110, ptr noundef %1, i64 noundef 4096) #22
  %112 = getelementptr inbounds %struct._CacheInfo, ptr %100, i64 0, i32 3
  store i32 3, ptr %112, align 8, !tbaa !38
  %113 = load i64, ptr %3, align 8, !tbaa !78
  %114 = getelementptr inbounds %struct._CacheInfo, ptr %100, i64 0, i32 8
  store i64 %113, ptr %114, align 8, !tbaa !118
  %115 = load ptr, ptr %17, align 8, !tbaa !67
  %116 = tail call fastcc i32 @OpenPixelCache(ptr noundef %0, i32 noundef 2, ptr noundef %4), !range !97
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %97
  %119 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %120 = tail call fastcc i32 @ClonePixelCacheRepository(ptr noundef %115, ptr noundef %89, ptr noundef nonnull %119)
  br label %121

121:                                              ; preds = %118, %97
  %122 = phi i32 [ %120, %118 ], [ 0, %97 ]
  %123 = getelementptr inbounds %struct._CacheInfo, ptr %115, i64 0, i32 9
  %124 = load i64, ptr %123, align 8, !tbaa !79
  %125 = add i64 %124, %16
  %126 = urem i64 %124, %16
  %127 = sub i64 %125, %126
  %128 = load i64, ptr %3, align 8, !tbaa !78
  %129 = add i64 %127, %128
  store i64 %129, ptr %3, align 8, !tbaa !78
  %130 = tail call ptr @DestroyPixelCache(ptr noundef %89)
  br label %131

131:                                              ; preds = %84, %68, %25, %121, %33
  %132 = phi i32 [ 1, %33 ], [ %122, %121 ], [ 0, %25 ], [ 1, %68 ], [ 1, %84 ]
  call void @llvm.lifetime.end.p0(i64 584, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 12648, ptr nonnull %8)
  ret i32 %132
}

declare i64 @GetMagickPageSize() local_unnamed_addr #3

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @OpenPixelCache(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  %6 = alloca %struct._CacheInfo, align 8
  %7 = alloca [4096 x i8], align 16
  %8 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8528, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #22
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %10 = load i32, ptr %9, align 8, !tbaa !83
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3530, ptr noundef nonnull @.str.5, ptr noundef nonnull %13) #22
  br label %15

15:                                               ; preds = %12, %3
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %17 = load i64, ptr %16, align 8, !tbaa !181
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !182
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19, %15
  %24 = icmp eq ptr %0, null
  br i1 %24, label %390, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %28 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3532, i32 noundef 445, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, ptr noundef nonnull %27) #22
  br label %390

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %31 = load ptr, ptr %30, align 8, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8528) %6, ptr noundef nonnull align 8 dereferenceable(8528) %31, i64 8528, i1 false), !tbaa.struct !183
  %32 = getelementptr inbounds %struct._CacheInfo, ptr %6, i64 0, i32 17
  store i32 -1, ptr %32, align 4, !tbaa !50
  %33 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 18
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %35 = tail call i64 @GetImageIndexInList(ptr noundef %0) #22
  %36 = sitofp i64 %35 to double
  %37 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %33, i64 noundef 4096, ptr noundef nonnull @.str.13, ptr noundef nonnull %34, double noundef %36) #22
  %38 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 4
  store i32 %1, ptr %38, align 4, !tbaa !47
  %39 = load i64, ptr %20, align 8, !tbaa !182
  %40 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 7
  store i64 %39, ptr %40, align 8, !tbaa !100
  %41 = load i64, ptr %16, align 8, !tbaa !181
  %42 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 6
  store i64 %41, ptr %42, align 8, !tbaa !99
  %43 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 81
  %44 = load i64, ptr %43, align 8, !tbaa !185
  %45 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 2
  store i64 %44, ptr %45, align 8, !tbaa !49
  %46 = load i32, ptr %0, align 8, !tbaa !186
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %52, label %48

48:                                               ; preds = %29
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !146
  %51 = icmp eq i32 %50, 12
  br label %52

52:                                               ; preds = %48, %29
  %53 = phi i1 [ true, %29 ], [ %51, %48 ]
  %54 = zext i1 %53 to i32
  %55 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 16
  store i32 %54, ptr %55, align 8, !tbaa !98
  %56 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 80
  %57 = load i32, ptr %56, align 8, !tbaa !187
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %52
  store i32 %46, ptr %31, align 8, !tbaa !137
  %60 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !146
  %62 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 1
  store i32 %61, ptr %62, align 4, !tbaa !48
  %63 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 3
  store i32 4, ptr %63, align 8, !tbaa !38
  %64 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 14
  %65 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 9
  store i64 0, ptr %65, align 8, !tbaa !79
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %64, i8 0, i64 16, i1 false)
  br label %390

66:                                               ; preds = %52
  %67 = mul i64 %41, %39
  %68 = select i1 %53, i64 10, i64 8
  %69 = mul i64 %68, %67
  %70 = udiv i64 %69, %39
  %71 = udiv i64 %70, %68
  %72 = icmp eq i64 %41, %71
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %75 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %74, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3563, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.3, ptr noundef nonnull %34) #22
  br label %390

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 9
  store i64 %69, ptr %77, align 8, !tbaa !79
  %78 = tail call i32 @AcquireMagickResource(i32 noundef 1, i64 noundef %69) #22
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %143, label %80

80:                                               ; preds = %76
  %81 = load i64, ptr %77, align 8, !tbaa !79
  %82 = tail call i32 @AcquireMagickResource(i32 noundef 5, i64 noundef %81) #22
  %83 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 3
  %84 = load i32, ptr %83, align 8, !tbaa !38
  %85 = icmp eq i32 %84, 0
  %86 = icmp ne i32 %82, 0
  %87 = select i1 %85, i1 %86, i1 false
  %88 = icmp eq i32 %84, 1
  %89 = or i1 %88, %87
  br i1 %89, label %90, label %141

90:                                               ; preds = %80
  %91 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 5
  store i32 0, ptr %91, align 8, !tbaa !92
  %92 = load i64, ptr %77, align 8, !tbaa !79
  %93 = tail call ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef %92) #21
  %94 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 14
  store ptr %93, ptr %94, align 8, !tbaa !80
  %95 = icmp eq ptr %93, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  store i32 1, ptr %91, align 8, !tbaa !92
  %97 = load i64, ptr %77, align 8, !tbaa !79
  %98 = tail call ptr @MapBlob(i32 noundef -1, i32 noundef 2, i64 noundef 0, i64 noundef %97) #22
  store ptr %98, ptr %94, align 8, !tbaa !80
  br label %99

99:                                               ; preds = %90, %96
  %100 = load ptr, ptr %94, align 8, !tbaa !80
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct._CacheInfo, ptr %6, i64 0, i32 14
  %104 = load ptr, ptr %103, align 8, !tbaa !80
  store ptr %104, ptr %94, align 8, !tbaa !80
  br label %141

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %107 = load i32, ptr %106, align 4, !tbaa !146
  %108 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 1
  store i32 %107, ptr %108, align 4, !tbaa !48
  store i32 1, ptr %83, align 8, !tbaa !38
  %109 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 15
  store ptr null, ptr %109, align 8, !tbaa !94
  %110 = load i32, ptr %55, align 8, !tbaa !98
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 %67
  store ptr %113, ptr %109, align 8, !tbaa !94
  br label %114

114:                                              ; preds = %112, %105
  %115 = load i32, ptr %6, align 8, !tbaa !137
  %116 = icmp ne i32 %115, 0
  %117 = icmp ne i32 %1, 0
  %118 = and i1 %117, %116
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = call fastcc i32 @ClonePixelCacheRepository(ptr noundef %31, ptr noundef nonnull %6, ptr noundef %2)
  call fastcc void @RelinquishPixelCachePixels(ptr noundef nonnull %6)
  br label %121

121:                                              ; preds = %119, %114
  %122 = load i32, ptr %9, align 8, !tbaa !83
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %139, label %124

124:                                              ; preds = %121
  %125 = load i64, ptr %77, align 8, !tbaa !79
  %126 = call i64 @FormatMagickSize(i64 noundef %125, i32 noundef 1, ptr noundef nonnull %7) #22
  %127 = load i32, ptr %83, align 8, !tbaa !38
  %128 = zext i32 %127 to i64
  %129 = call ptr @CommandOptionToMnemonic(i32 noundef 3, i64 noundef %128) #22
  %130 = load i32, ptr %91, align 8, !tbaa !92
  %131 = icmp eq i32 %130, 0
  %132 = select i1 %131, ptr @.str.17, ptr @.str.16
  %133 = load i64, ptr %42, align 8, !tbaa !99
  %134 = uitofp i64 %133 to double
  %135 = load i64, ptr %40, align 8, !tbaa !100
  %136 = uitofp i64 %135 to double
  %137 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.15, ptr noundef nonnull %33, ptr noundef nonnull %132, ptr noundef %129, double noundef %134, double noundef %136, ptr noundef nonnull %7) #22
  %138 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3604, ptr noundef nonnull @.str.5, ptr noundef nonnull %8) #22
  br label %139

139:                                              ; preds = %124, %121
  %140 = load i32, ptr %0, align 8, !tbaa !186
  store i32 %140, ptr %31, align 8, !tbaa !137
  br label %390

141:                                              ; preds = %80, %102
  %142 = load i64, ptr %77, align 8, !tbaa !79
  tail call void @RelinquishMagickResource(i32 noundef 5, i64 noundef %142) #22
  br label %143

143:                                              ; preds = %141, %76
  %144 = load i64, ptr %77, align 8, !tbaa !79
  %145 = tail call i32 @AcquireMagickResource(i32 noundef 2, i64 noundef %144) #22
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 3
  %149 = load i32, ptr %148, align 8, !tbaa !38
  %150 = icmp eq i32 %149, 5
  br i1 %150, label %151, label %208

151:                                              ; preds = %147, %143
  %152 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 3
  %153 = load i32, ptr %152, align 8, !tbaa !38
  %154 = icmp eq i32 %153, 5
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i64, ptr %77, align 8, !tbaa !79
  tail call void @RelinquishMagickResource(i32 noundef 2, i64 noundef %156) #22
  br label %157

157:                                              ; preds = %155, %151
  %158 = tail call ptr @AcquireDistributeCacheInfo(ptr noundef %2) #22
  %159 = icmp eq ptr %158, null
  br i1 %159, label %205, label %160

160:                                              ; preds = %157
  %161 = tail call i32 @OpenDistributePixelCache(ptr noundef nonnull %158, ptr noundef nonnull %0) #22
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %160
  %164 = tail call ptr @__errno_location() #23
  %165 = load i32, ptr %164, align 4, !tbaa !34
  %166 = tail call ptr @GetExceptionMessage(i32 noundef %165) #22
  %167 = tail call ptr @GetDistributeCacheHostname(ptr noundef nonnull %158) #22
  %168 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3631, i32 noundef 445, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef %167, ptr noundef %166) #22
  %169 = tail call ptr @DestroyString(ptr noundef %166) #22
  %170 = tail call ptr @DestroyDistributeCacheInfo(ptr noundef nonnull %158) #22
  br label %205

171:                                              ; preds = %160
  store i32 5, ptr %152, align 8, !tbaa !38
  %172 = load i32, ptr %0, align 8, !tbaa !186
  store i32 %172, ptr %31, align 8, !tbaa !137
  %173 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %174 = load i32, ptr %173, align 4, !tbaa !146
  %175 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 1
  store i32 %174, ptr %175, align 4, !tbaa !48
  %176 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 23
  store ptr %158, ptr %176, align 8, !tbaa !85
  %177 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 19
  %178 = tail call ptr @GetDistributeCacheHostname(ptr noundef nonnull %158) #22
  %179 = load ptr, ptr %176, align 8, !tbaa !85
  %180 = tail call i32 @GetDistributeCachePort(ptr noundef %179) #22
  %181 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %177, i64 noundef 4096, ptr noundef nonnull @.str.20, ptr noundef %178, i32 noundef %180) #22
  %182 = load i32, ptr %6, align 8, !tbaa !137
  %183 = icmp ne i32 %182, 0
  %184 = icmp ne i32 %1, 0
  %185 = and i1 %184, %183
  br i1 %185, label %186, label %188

186:                                              ; preds = %171
  %187 = call fastcc i32 @ClonePixelCacheRepository(ptr noundef nonnull %31, ptr noundef nonnull %6, ptr noundef %2)
  call fastcc void @RelinquishPixelCachePixels(ptr noundef nonnull %6)
  br label %188

188:                                              ; preds = %186, %171
  %189 = load i32, ptr %9, align 8, !tbaa !83
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %390, label %191

191:                                              ; preds = %188
  %192 = load i64, ptr %77, align 8, !tbaa !79
  %193 = call i64 @FormatMagickSize(i64 noundef %192, i32 noundef 0, ptr noundef nonnull %7) #22
  %194 = load i32, ptr %152, align 8, !tbaa !38
  %195 = zext i32 %194 to i64
  %196 = call ptr @CommandOptionToMnemonic(i32 noundef 3, i64 noundef %195) #22
  %197 = load ptr, ptr %176, align 8, !tbaa !85
  %198 = call i32 @GetDistributeCacheFile(ptr noundef %197) #22
  %199 = load i64, ptr %42, align 8, !tbaa !99
  %200 = uitofp i64 %199 to double
  %201 = load i64, ptr %40, align 8, !tbaa !100
  %202 = uitofp i64 %201 to double
  %203 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.21, ptr noundef nonnull %33, ptr noundef nonnull %177, i32 noundef %198, ptr noundef %196, double noundef %200, double noundef %202, ptr noundef nonnull %7) #22
  %204 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3667, ptr noundef nonnull @.str.5, ptr noundef nonnull %8) #22
  br label %390

205:                                              ; preds = %163, %157
  %206 = load i64, ptr %77, align 8, !tbaa !79
  tail call void @RelinquishMagickResource(i32 noundef 2, i64 noundef %206) #22
  %207 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3674, i32 noundef 445, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.3, ptr noundef nonnull %34) #22
  br label %390

208:                                              ; preds = %147
  %209 = load i32, ptr %6, align 8, !tbaa !137
  %210 = icmp ne i32 %209, 0
  %211 = icmp ne i32 %1, 0
  %212 = and i1 %211, %210
  br i1 %212, label %213, label %221

213:                                              ; preds = %208
  %214 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 17
  %215 = load i32, ptr %214, align 4, !tbaa !50
  %216 = icmp eq i32 %215, -1
  br i1 %216, label %219, label %217

217:                                              ; preds = %213
  %218 = tail call i32 @close(i32 noundef %215) #22
  store i32 -1, ptr %214, align 4, !tbaa !50
  tail call void @RelinquishMagickResource(i32 noundef 3, i64 noundef 1) #22
  br label %219

219:                                              ; preds = %213, %217
  %220 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 19
  store i8 0, ptr %220, align 8, !tbaa !93
  br label %221

221:                                              ; preds = %219, %208
  %222 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 17
  %223 = load i32, ptr %222, align 4, !tbaa !50
  %224 = icmp eq i32 %223, -1
  br i1 %224, label %225, label %256

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 19
  %227 = load i8, ptr %226, align 8, !tbaa !93
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %225
  %230 = tail call i32 @AcquireUniqueFileResource(ptr noundef nonnull %226) #22
  br label %244

231:                                              ; preds = %225
  switch i32 %1, label %239 [
    i32 0, label %232
    i32 1, label %234
  ]

232:                                              ; preds = %231
  %233 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %226, i32 noundef 0, i32 noundef 0) #22
  br label %244

234:                                              ; preds = %231
  %235 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %226, i32 noundef 193, i32 noundef 384) #22
  %236 = icmp eq i32 %235, -1
  br i1 %236, label %237, label %244

237:                                              ; preds = %234
  %238 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %226, i32 noundef 1, i32 noundef 384) #22
  br label %244

239:                                              ; preds = %231
  %240 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %226, i32 noundef 194, i32 noundef 384) #22
  %241 = icmp eq i32 %240, -1
  br i1 %241, label %242, label %244

242:                                              ; preds = %239
  %243 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %226, i32 noundef 2, i32 noundef 384) #22
  br label %244

244:                                              ; preds = %242, %239, %237, %234, %232, %229
  %245 = phi i32 [ %230, %229 ], [ %243, %242 ], [ %240, %239 ], [ %238, %237 ], [ %235, %234 ], [ %233, %232 ]
  %246 = icmp eq i32 %245, -1
  br i1 %246, label %249, label %247

247:                                              ; preds = %244
  %248 = tail call i32 @AcquireMagickResource(i32 noundef 3, i64 noundef 1) #22
  store i32 %245, ptr %222, align 4, !tbaa !50
  store i32 %1, ptr %38, align 4, !tbaa !47
  br label %256

249:                                              ; preds = %244
  %250 = load i64, ptr %77, align 8, !tbaa !79
  tail call void @RelinquishMagickResource(i32 noundef 2, i64 noundef %250) #22
  %251 = tail call ptr @__errno_location() #23
  %252 = load i32, ptr %251, align 4, !tbaa !34
  %253 = tail call ptr @GetExceptionMessage(i32 noundef %252) #22
  %254 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3687, i32 noundef 445, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull %34, ptr noundef %253) #22
  %255 = tail call ptr @DestroyString(ptr noundef %253) #22
  br label %390

256:                                              ; preds = %247, %221
  %257 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 8
  %258 = load i64, ptr %257, align 8, !tbaa !118
  %259 = load i64, ptr %77, align 8, !tbaa !79
  %260 = add i64 %259, %258
  %261 = load ptr, ptr %30, align 8, !tbaa !67
  %262 = load i32, ptr %9, align 8, !tbaa !83
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %272, label %264

264:                                              ; preds = %256
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #22
  %265 = call i64 @FormatMagickSize(i64 noundef %260, i32 noundef 0, ptr noundef nonnull %4) #22
  %266 = getelementptr inbounds %struct._CacheInfo, ptr %261, i64 0, i32 18
  %267 = getelementptr inbounds %struct._CacheInfo, ptr %261, i64 0, i32 19
  %268 = getelementptr inbounds %struct._CacheInfo, ptr %261, i64 0, i32 17
  %269 = load i32, ptr %268, align 4, !tbaa !50
  %270 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.24, ptr noundef nonnull %266, ptr noundef nonnull %267, i32 noundef %269, ptr noundef nonnull %4) #22
  %271 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3473, ptr noundef nonnull @.str.5, ptr noundef nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #22
  br label %272

272:                                              ; preds = %264, %256
  %273 = getelementptr inbounds %struct._CacheInfo, ptr %261, i64 0, i32 17
  %274 = load i32, ptr %273, align 4, !tbaa !50
  %275 = call i64 @lseek(i32 noundef %274, i64 noundef 0, i32 noundef 2) #22
  %276 = icmp slt i64 %275, 0
  br i1 %276, label %302, label %277

277:                                              ; preds = %272
  %278 = icmp ult i64 %275, %260
  br i1 %278, label %279, label %308

279:                                              ; preds = %277
  %280 = add nsw i64 %260, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %281 = load i32, ptr %273, align 4, !tbaa !50, !alias.scope !188, !noalias !191
  %282 = call i64 @lseek(i32 noundef %281, i64 noundef %280, i32 noundef 0) #22, !noalias !193
  %283 = icmp slt i64 %282, 0
  br i1 %283, label %300, label %284

284:                                              ; preds = %279, %293
  %285 = phi i64 [ %294, %293 ], [ 0, %279 ]
  %286 = getelementptr inbounds i8, ptr @.str.1, i64 %285
  %287 = call i64 @write(i32 noundef %281, ptr noundef nonnull %286, i64 noundef 1) #22, !noalias !188
  %288 = icmp slt i64 %287, 1
  br i1 %288, label %289, label %293

289:                                              ; preds = %284
  %290 = tail call ptr @__errno_location() #23
  %291 = load i32, ptr %290, align 4, !tbaa !34, !noalias !193
  %292 = icmp eq i32 %291, 4
  br i1 %292, label %293, label %296

293:                                              ; preds = %289, %284
  %294 = phi i64 [ 0, %289 ], [ %287, %284 ]
  %295 = icmp eq i64 %294, 0
  br i1 %295, label %284, label %296, !llvm.loop !194

296:                                              ; preds = %293, %289
  %297 = phi i64 [ %294, %293 ], [ %285, %289 ]
  %298 = icmp eq i64 %297, 1
  %299 = call ptr @signal(i32 noundef 7, ptr noundef nonnull @CacheSignalHandler) #22
  br i1 %298, label %308, label %302

300:                                              ; preds = %279
  %301 = call ptr @signal(i32 noundef 7, ptr noundef nonnull @CacheSignalHandler) #22
  br label %302

302:                                              ; preds = %272, %300, %296
  %303 = tail call ptr @__errno_location() #23
  %304 = load i32, ptr %303, align 4, !tbaa !34
  %305 = call ptr @GetExceptionMessage(i32 noundef %304) #22
  %306 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3695, i32 noundef 445, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.19, ptr noundef nonnull %34, ptr noundef %305) #22
  %307 = call ptr @DestroyString(ptr noundef %305) #22
  br label %390

308:                                              ; preds = %277, %296
  %309 = load i32, ptr %0, align 8, !tbaa !186
  store i32 %309, ptr %31, align 8, !tbaa !137
  %310 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %311 = load i32, ptr %310, align 4, !tbaa !146
  %312 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 1
  store i32 %311, ptr %312, align 4, !tbaa !48
  %313 = load i64, ptr %77, align 8, !tbaa !79
  %314 = call i32 @AcquireMagickResource(i32 noundef 4, i64 noundef %313) #22
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %320

316:                                              ; preds = %308
  %317 = load i32, ptr %148, align 8, !tbaa !38
  %318 = add i32 %317, -1
  %319 = icmp ult i32 %318, 2
  br i1 %319, label %320, label %366

320:                                              ; preds = %316, %308
  %321 = load i32, ptr %222, align 4, !tbaa !50
  %322 = load i64, ptr %257, align 8, !tbaa !118
  %323 = load i64, ptr %77, align 8, !tbaa !79
  %324 = call ptr @MapBlob(i32 noundef %321, i32 noundef %1, i64 noundef %322, i64 noundef %323) #22
  %325 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 14
  store ptr %324, ptr %325, align 8, !tbaa !80
  %326 = icmp eq ptr %324, null
  br i1 %326, label %327, label %330

327:                                              ; preds = %320
  %328 = getelementptr inbounds %struct._CacheInfo, ptr %6, i64 0, i32 14
  %329 = load ptr, ptr %328, align 8, !tbaa !80
  store ptr %329, ptr %325, align 8, !tbaa !80
  br label %366

330:                                              ; preds = %320
  %331 = load i32, ptr %222, align 4, !tbaa !50
  %332 = icmp eq i32 %331, -1
  br i1 %332, label %335, label %333

333:                                              ; preds = %330
  %334 = call i32 @close(i32 noundef %331) #22
  store i32 -1, ptr %222, align 4, !tbaa !50
  call void @RelinquishMagickResource(i32 noundef 3, i64 noundef 1) #22
  br label %335

335:                                              ; preds = %330, %333
  store i32 2, ptr %148, align 8, !tbaa !38
  %336 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 5
  store i32 1, ptr %336, align 8, !tbaa !92
  %337 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 15
  store ptr null, ptr %337, align 8, !tbaa !94
  %338 = load i32, ptr %55, align 8, !tbaa !98
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %343, label %340

340:                                              ; preds = %335
  %341 = load ptr, ptr %325, align 8, !tbaa !80
  %342 = getelementptr inbounds %struct._PixelPacket, ptr %341, i64 %67
  store ptr %342, ptr %337, align 8, !tbaa !94
  br label %343

343:                                              ; preds = %340, %335
  %344 = load i32, ptr %6, align 8, !tbaa !137
  %345 = icmp ne i32 %344, 0
  %346 = and i1 %211, %345
  br i1 %346, label %347, label %349

347:                                              ; preds = %343
  %348 = call fastcc i32 @ClonePixelCacheRepository(ptr noundef nonnull %31, ptr noundef nonnull %6, ptr noundef %2)
  call fastcc void @RelinquishPixelCachePixels(ptr noundef nonnull %6)
  br label %349

349:                                              ; preds = %347, %343
  %350 = load i32, ptr %9, align 8, !tbaa !83
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %390, label %352

352:                                              ; preds = %349
  %353 = load i64, ptr %77, align 8, !tbaa !79
  %354 = call i64 @FormatMagickSize(i64 noundef %353, i32 noundef 1, ptr noundef nonnull %7) #22
  %355 = load i32, ptr %148, align 8, !tbaa !38
  %356 = zext i32 %355 to i64
  %357 = call ptr @CommandOptionToMnemonic(i32 noundef 3, i64 noundef %356) #22
  %358 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 19
  %359 = load i32, ptr %222, align 4, !tbaa !50
  %360 = load i64, ptr %42, align 8, !tbaa !99
  %361 = uitofp i64 %360 to double
  %362 = load i64, ptr %40, align 8, !tbaa !100
  %363 = uitofp i64 %362 to double
  %364 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.21, ptr noundef nonnull %33, ptr noundef nonnull %358, i32 noundef %359, ptr noundef %357, double noundef %361, double noundef %363, ptr noundef nonnull %7) #22
  %365 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3747, ptr noundef nonnull @.str.5, ptr noundef nonnull %8) #22
  br label %390

366:                                              ; preds = %316, %327
  store i32 3, ptr %148, align 8, !tbaa !38
  %367 = load i64, ptr %77, align 8, !tbaa !79
  call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %367) #22
  %368 = load i32, ptr %6, align 8, !tbaa !137
  %369 = icmp ne i32 %368, 0
  %370 = and i1 %211, %369
  br i1 %370, label %371, label %373

371:                                              ; preds = %366
  %372 = call fastcc i32 @ClonePixelCacheRepository(ptr noundef nonnull %31, ptr noundef nonnull %6, ptr noundef %2)
  call fastcc void @RelinquishPixelCachePixels(ptr noundef nonnull %6)
  br label %373

373:                                              ; preds = %371, %366
  %374 = load i32, ptr %9, align 8, !tbaa !83
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %390, label %376

376:                                              ; preds = %373
  %377 = load i64, ptr %77, align 8, !tbaa !79
  %378 = call i64 @FormatMagickSize(i64 noundef %377, i32 noundef 0, ptr noundef nonnull %7) #22
  %379 = load i32, ptr %148, align 8, !tbaa !38
  %380 = zext i32 %379 to i64
  %381 = call ptr @CommandOptionToMnemonic(i32 noundef 3, i64 noundef %380) #22
  %382 = getelementptr inbounds %struct._CacheInfo, ptr %31, i64 0, i32 19
  %383 = load i32, ptr %222, align 4, !tbaa !50
  %384 = load i64, ptr %42, align 8, !tbaa !99
  %385 = uitofp i64 %384 to double
  %386 = load i64, ptr %40, align 8, !tbaa !100
  %387 = uitofp i64 %386 to double
  %388 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.21, ptr noundef nonnull %33, ptr noundef nonnull %382, i32 noundef %383, ptr noundef %381, double noundef %385, double noundef %387, ptr noundef nonnull %7) #22
  %389 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3769, ptr noundef nonnull @.str.5, ptr noundef nonnull %8) #22
  br label %390

390:                                              ; preds = %373, %376, %349, %352, %205, %191, %188, %23, %25, %302, %249, %139, %73, %59
  %391 = phi i32 [ 1, %59 ], [ 0, %73 ], [ 0, %249 ], [ 0, %302 ], [ 1, %139 ], [ 0, %25 ], [ 0, %23 ], [ 0, %205 ], [ 1, %191 ], [ 1, %188 ], [ 1, %352 ], [ 1, %349 ], [ 1, %376 ], [ 1, %373 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8528, ptr nonnull %6) #22
  ret i32 %391
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ReferencePixelCache(ptr noundef returned %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 28
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  tail call void @LockSemaphoreInfo(ptr noundef %3) #22
  %4 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 27
  %5 = load i64, ptr %4, align 8, !tbaa !56
  %6 = add nsw i64 %5, 1
  store i64 %6, ptr %4, align 8, !tbaa !56
  %7 = load ptr, ptr %2, align 8, !tbaa !55
  tail call void @UnlockSemaphoreInfo(ptr noundef %7) #22
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ClonePixelCacheRepository(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct._RectangleInfo, align 8
  %5 = alloca %struct._RectangleInfo, align 8
  %6 = alloca [4096 x i8], align 16
  %7 = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !38
  switch i32 %8, label %50 [
    i32 4, label %236
    i32 1, label %9
    i32 2, label %9
  ]

9:                                                ; preds = %3, %3
  %10 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !38
  %12 = add i32 %11, -1
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %50

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 6
  %16 = load i64, ptr %15, align 8, !tbaa !99
  %17 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 6
  %18 = load i64, ptr %17, align 8, !tbaa !99
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 7
  %22 = load i64, ptr %21, align 8, !tbaa !100
  %23 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 7
  %24 = load i64, ptr %23, align 8, !tbaa !100
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 16
  %28 = load i32, ptr %27, align 8, !tbaa !98
  %29 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 16
  %30 = load i32, ptr %29, align 8, !tbaa !98
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 14
  %34 = load ptr, ptr %33, align 8, !tbaa !80
  %35 = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 14
  %36 = load ptr, ptr %35, align 8, !tbaa !80
  %37 = shl i64 %16, 3
  %38 = mul i64 %37, %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %34, ptr align 2 %36, i64 %38, i1 false)
  %39 = load i32, ptr %27, align 8, !tbaa !98
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %236, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 15
  %43 = load ptr, ptr %42, align 8, !tbaa !94
  %44 = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 15
  %45 = load ptr, ptr %44, align 8, !tbaa !94
  %46 = load i64, ptr %15, align 8, !tbaa !99
  %47 = load i64, ptr %21, align 8, !tbaa !100
  %48 = shl i64 %46, 1
  %49 = mul i64 %48, %47
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %43, ptr align 2 %45, i64 %49, i1 false)
  br label %236

50:                                               ; preds = %9, %3, %26, %20, %14
  %51 = tail call ptr @AcquirePixelCacheNexus(i64 noundef 2)
  %52 = tail call ptr @AcquirePixelCacheNexus(i64 noundef 2)
  %53 = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 6
  %54 = load i64, ptr %53, align 8, !tbaa !99
  %55 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 6
  %56 = load i64, ptr %55, align 8, !tbaa !99
  %57 = tail call i64 @llvm.umin.i64(i64 %54, i64 %56)
  %58 = shl i64 %57, 3
  %59 = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 7
  %60 = load i64, ptr %59, align 8, !tbaa !100
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %108

62:                                               ; preds = %50
  %63 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 7
  %64 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 1
  %65 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 2
  %66 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 3
  br label %67

67:                                               ; preds = %62, %103
  %68 = phi i32 [ 1, %62 ], [ %104, %103 ]
  %69 = phi i64 [ 0, %62 ], [ %105, %103 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  %70 = icmp eq i32 %68, 0
  br i1 %70, label %103, label %71

71:                                               ; preds = %67
  %72 = load i64, ptr %63, align 8, !tbaa !100
  %73 = icmp slt i64 %69, %72
  br i1 %73, label %74, label %103

74:                                               ; preds = %71
  %75 = load i64, ptr %53, align 8, !tbaa !99
  store i64 %75, ptr %4, align 8, !tbaa !103
  store i64 1, ptr %64, align 8, !tbaa !104
  store i64 0, ptr %65, align 8, !tbaa !101
  store i64 %69, ptr %66, align 8, !tbaa !102
  %76 = load ptr, ptr %51, align 8, !tbaa !60
  %77 = call fastcc ptr @SetPixelCacheNexusPixels(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 1, ptr noundef %76, ptr noundef %2) #25
  %78 = icmp eq ptr %77, null
  br i1 %78, label %103, label %79

79:                                               ; preds = %74
  %80 = load ptr, ptr %51, align 8, !tbaa !60
  %81 = tail call fastcc i32 @ReadPixelCachePixels(ptr noundef %1, ptr noundef %80, ptr noundef %2), !range !97
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %103, label %83

83:                                               ; preds = %79
  %84 = load i64, ptr %55, align 8, !tbaa !99
  store i64 %84, ptr %4, align 8, !tbaa !103
  %85 = load ptr, ptr %52, align 8, !tbaa !60
  %86 = call fastcc ptr @SetPixelCacheNexusPixels(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 1, ptr noundef %85, ptr noundef %2) #25
  %87 = icmp eq ptr %86, null
  br i1 %87, label %103, label %88

88:                                               ; preds = %83
  %89 = load ptr, ptr %52, align 8, !tbaa !60
  %90 = getelementptr inbounds %struct._NexusInfo, ptr %89, i64 0, i32 4
  %91 = load ptr, ptr %90, align 8, !tbaa !111
  %92 = getelementptr inbounds %struct._NexusInfo, ptr %89, i64 0, i32 2
  %93 = load i64, ptr %92, align 8, !tbaa !88
  %94 = tail call ptr @ResetMagickMemory(ptr noundef %91, i32 noundef 0, i64 noundef %93) #22
  %95 = load ptr, ptr %52, align 8, !tbaa !60
  %96 = getelementptr inbounds %struct._NexusInfo, ptr %95, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !111
  %98 = load ptr, ptr %51, align 8, !tbaa !60
  %99 = getelementptr inbounds %struct._NexusInfo, ptr %98, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !111
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %97, ptr align 2 %100, i64 %58, i1 false)
  %101 = load ptr, ptr %52, align 8, !tbaa !60
  %102 = tail call fastcc i32 @WritePixelCachePixels(ptr noundef %0, ptr noundef %101, ptr noundef %2), !range !97
  br label %103

103:                                              ; preds = %83, %79, %74, %71, %67, %88
  %104 = phi i32 [ %102, %88 ], [ 0, %67 ], [ %68, %71 ], [ %68, %74 ], [ 0, %79 ], [ %81, %83 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  %105 = add nuw nsw i64 %69, 1
  %106 = load i64, ptr %59, align 8, !tbaa !100
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %67, label %108, !llvm.loop !195

108:                                              ; preds = %103, %50
  %109 = phi i32 [ 1, %50 ], [ %104, %103 ]
  %110 = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 7
  %111 = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 16
  %112 = load i32, ptr %111, align 8, !tbaa !98
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %165, label %114

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 16
  %116 = load i32, ptr %115, align 8, !tbaa !98
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %165, label %118

118:                                              ; preds = %114
  %119 = load i64, ptr %53, align 8, !tbaa !99
  %120 = load i64, ptr %55, align 8, !tbaa !99
  %121 = tail call i64 @llvm.umin.i64(i64 %119, i64 %120)
  %122 = shl i64 %121, 1
  %123 = load i64, ptr %110, align 8, !tbaa !100
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %125, label %165

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 7
  %127 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 1
  %128 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 2
  %129 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 3
  br label %130

130:                                              ; preds = %125, %160
  %131 = phi i32 [ %109, %125 ], [ %161, %160 ]
  %132 = phi i64 [ 0, %125 ], [ %162, %160 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #22
  %133 = icmp eq i32 %131, 0
  br i1 %133, label %160, label %134

134:                                              ; preds = %130
  %135 = load i64, ptr %126, align 8, !tbaa !100
  %136 = icmp slt i64 %132, %135
  br i1 %136, label %137, label %160

137:                                              ; preds = %134
  %138 = load i64, ptr %53, align 8, !tbaa !99
  store i64 %138, ptr %5, align 8, !tbaa !103
  store i64 1, ptr %127, align 8, !tbaa !104
  store i64 0, ptr %128, align 8, !tbaa !101
  store i64 %132, ptr %129, align 8, !tbaa !102
  %139 = load ptr, ptr %51, align 8, !tbaa !60
  %140 = call fastcc ptr @SetPixelCacheNexusPixels(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 1, ptr noundef %139, ptr noundef %2) #25
  %141 = icmp eq ptr %140, null
  br i1 %141, label %160, label %142

142:                                              ; preds = %137
  %143 = load ptr, ptr %51, align 8, !tbaa !60
  %144 = tail call fastcc i32 @ReadPixelCacheIndexes(ptr noundef %1, ptr noundef %143, ptr noundef %2), !range !97
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %160, label %146

146:                                              ; preds = %142
  %147 = load i64, ptr %55, align 8, !tbaa !99
  store i64 %147, ptr %5, align 8, !tbaa !103
  %148 = load ptr, ptr %52, align 8, !tbaa !60
  %149 = call fastcc ptr @SetPixelCacheNexusPixels(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 1, ptr noundef %148, ptr noundef %2) #25
  %150 = icmp eq ptr %149, null
  br i1 %150, label %160, label %151

151:                                              ; preds = %146
  %152 = load ptr, ptr %52, align 8, !tbaa !60
  %153 = getelementptr inbounds %struct._NexusInfo, ptr %152, i64 0, i32 6
  %154 = load ptr, ptr %153, align 8, !tbaa !89
  %155 = load ptr, ptr %51, align 8, !tbaa !60
  %156 = getelementptr inbounds %struct._NexusInfo, ptr %155, i64 0, i32 6
  %157 = load ptr, ptr %156, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %154, ptr align 2 %157, i64 %122, i1 false)
  %158 = load ptr, ptr %52, align 8, !tbaa !60
  %159 = tail call fastcc i32 @WritePixelCacheIndexes(ptr noundef %0, ptr noundef %158, ptr noundef %2), !range !97
  br label %160

160:                                              ; preds = %146, %142, %137, %134, %130, %151
  %161 = phi i32 [ %159, %151 ], [ 0, %130 ], [ %131, %134 ], [ %131, %137 ], [ 0, %142 ], [ %144, %146 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  %162 = add nuw nsw i64 %132, 1
  %163 = load i64, ptr %110, align 8, !tbaa !100
  %164 = icmp slt i64 %162, %163
  br i1 %164, label %130, label %165, !llvm.loop !196

165:                                              ; preds = %160, %118, %114, %108
  %166 = phi i32 [ %109, %114 ], [ %109, %108 ], [ %109, %118 ], [ %161, %160 ]
  br label %167

167:                                              ; preds = %186, %165
  %168 = phi i64 [ %189, %186 ], [ 0, %165 ]
  %169 = getelementptr inbounds ptr, ptr %51, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !60
  %171 = getelementptr inbounds %struct._NexusInfo, ptr %170, i64 0, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !86
  %173 = icmp eq ptr %172, null
  br i1 %173, label %186, label %174

174:                                              ; preds = %167
  %175 = load i32, ptr %170, align 8, !tbaa !87
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %174
  %178 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %172) #22
  br label %183

179:                                              ; preds = %174
  %180 = getelementptr inbounds %struct._NexusInfo, ptr %170, i64 0, i32 2
  %181 = load i64, ptr %180, align 8, !tbaa !88
  %182 = tail call i32 @UnmapBlob(ptr noundef nonnull %172, i64 noundef %181) #22
  br label %183

183:                                              ; preds = %179, %177
  %184 = getelementptr inbounds %struct._NexusInfo, ptr %170, i64 0, i32 6
  store ptr null, ptr %184, align 8, !tbaa !89
  %185 = getelementptr inbounds %struct._NexusInfo, ptr %170, i64 0, i32 2
  store i32 0, ptr %170, align 8, !tbaa !87
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %185, i8 0, i64 24, i1 false)
  br label %186

186:                                              ; preds = %183, %167
  %187 = load ptr, ptr %169, align 8, !tbaa !60
  %188 = getelementptr inbounds %struct._NexusInfo, ptr %187, i64 0, i32 7
  store i64 -2880220588, ptr %188, align 8, !tbaa !61
  %189 = add nuw nsw i64 %168, 1
  %190 = icmp eq i64 %189, 2
  br i1 %190, label %191, label %167, !llvm.loop !90

191:                                              ; preds = %186
  %192 = load ptr, ptr %51, align 8, !tbaa !60
  %193 = tail call ptr @RelinquishMagickMemory(ptr noundef %192) #22
  store ptr %193, ptr %51, align 8, !tbaa !60
  %194 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %51) #22
  br label %195

195:                                              ; preds = %214, %191
  %196 = phi i64 [ %217, %214 ], [ 0, %191 ]
  %197 = getelementptr inbounds ptr, ptr %52, i64 %196
  %198 = load ptr, ptr %197, align 8, !tbaa !60
  %199 = getelementptr inbounds %struct._NexusInfo, ptr %198, i64 0, i32 3
  %200 = load ptr, ptr %199, align 8, !tbaa !86
  %201 = icmp eq ptr %200, null
  br i1 %201, label %214, label %202

202:                                              ; preds = %195
  %203 = load i32, ptr %198, align 8, !tbaa !87
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  %206 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %200) #22
  br label %211

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct._NexusInfo, ptr %198, i64 0, i32 2
  %209 = load i64, ptr %208, align 8, !tbaa !88
  %210 = tail call i32 @UnmapBlob(ptr noundef nonnull %200, i64 noundef %209) #22
  br label %211

211:                                              ; preds = %207, %205
  %212 = getelementptr inbounds %struct._NexusInfo, ptr %198, i64 0, i32 6
  store ptr null, ptr %212, align 8, !tbaa !89
  %213 = getelementptr inbounds %struct._NexusInfo, ptr %198, i64 0, i32 2
  store i32 0, ptr %198, align 8, !tbaa !87
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %213, i8 0, i64 24, i1 false)
  br label %214

214:                                              ; preds = %211, %195
  %215 = load ptr, ptr %197, align 8, !tbaa !60
  %216 = getelementptr inbounds %struct._NexusInfo, ptr %215, i64 0, i32 7
  store i64 -2880220588, ptr %216, align 8, !tbaa !61
  %217 = add nuw nsw i64 %196, 1
  %218 = icmp eq i64 %217, 2
  br i1 %218, label %219, label %195, !llvm.loop !90

219:                                              ; preds = %214
  %220 = load ptr, ptr %52, align 8, !tbaa !60
  %221 = tail call ptr @RelinquishMagickMemory(ptr noundef %220) #22
  store ptr %221, ptr %52, align 8, !tbaa !60
  %222 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %52) #22
  %223 = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 25
  %224 = load i32, ptr %223, align 4, !tbaa !58
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %236, label %226

226:                                              ; preds = %219
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #22
  %227 = load i32, ptr %7, align 8, !tbaa !38
  %228 = zext i32 %227 to i64
  %229 = tail call ptr @CommandOptionToMnemonic(i32 noundef 3, i64 noundef %228) #22
  %230 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 3
  %231 = load i32, ptr %230, align 8, !tbaa !38
  %232 = zext i32 %231 to i64
  %233 = tail call ptr @CommandOptionToMnemonic(i32 noundef 3, i64 noundef %232) #22
  %234 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.26, ptr noundef %229, ptr noundef %233) #22
  %235 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 767, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #22
  br label %236

236:                                              ; preds = %219, %226, %32, %41, %3
  %237 = phi i32 [ 1, %3 ], [ 1, %41 ], [ 1, %32 ], [ %166, %226 ], [ %166, %219 ]
  ret i32 %237
}

; Function Attrs: nounwind uwtable
define dso_local ptr @QueueAuthenticPixel(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr nocapture noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = tail call ptr @QueueAuthenticPixelCacheNexus(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) #25
  ret ptr %9
}

; Function Attrs: hot nounwind uwtable
define internal fastcc ptr @GetImagePixelCache(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #9 {
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = alloca %struct._Image, align 8
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 61
  %7 = load ptr, ptr %6, align 8, !tbaa !197
  tail call void @LockSemaphoreInfo(ptr noundef %7) #22
  %8 = load i64, ptr @GetImagePixelCache.cpu_throttle, align 8, !tbaa !78
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call i64 @GetMagickResourceLimit(i32 noundef 8) #22
  store i64 %11, ptr @GetImagePixelCache.cpu_throttle, align 8, !tbaa !78
  br label %12

12:                                               ; preds = %10, %3
  %13 = load i64, ptr @GetImagePixelCache.cpu_throttle, align 8, !tbaa !78
  %14 = icmp eq i64 %13, -1
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load i64, ptr @GetImagePixelCache.cycles, align 8, !tbaa !78
  %17 = add i64 %16, 1
  store i64 %17, ptr @GetImagePixelCache.cycles, align 8, !tbaa !78
  %18 = and i64 %16, 31
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  tail call void @MagickDelay(i64 noundef %13) #22
  br label %21

21:                                               ; preds = %20, %15, %12
  %22 = load i64, ptr @GetImagePixelCache.time_limit, align 8, !tbaa !78
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = tail call i64 @GetMagickResourceLimit(i32 noundef 7) #22
  store i64 %25, ptr @GetImagePixelCache.time_limit, align 8, !tbaa !78
  %26 = tail call i64 @time(ptr noundef null) #22
  store i64 %26, ptr @GetImagePixelCache.cache_timestamp, align 8, !tbaa !123
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i64, ptr @GetImagePixelCache.time_limit, align 8, !tbaa !78
  %29 = icmp eq i64 %28, -1
  br i1 %29, label %43, label %30

30:                                               ; preds = %27
  %31 = tail call i64 @time(ptr noundef null) #22
  %32 = load i64, ptr @GetImagePixelCache.cache_timestamp, align 8, !tbaa !123
  %33 = sub nsw i64 %31, %32
  %34 = load i64, ptr @GetImagePixelCache.time_limit, align 8, !tbaa !78
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %30
  %37 = tail call ptr @__errno_location() #23
  store i32 125, ptr %37, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #22
  call void @GetExceptionInfo(ptr noundef nonnull %4) #22
  %38 = load i32, ptr %37, align 4, !tbaa !34
  %39 = call ptr @GetExceptionMessage(i32 noundef %38) #22
  %40 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1526, i32 noundef 700, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.3, ptr noundef %39) #22
  %41 = call ptr @DestroyString(ptr noundef %39) #22
  call void @CatchException(ptr noundef nonnull %4) #22
  %42 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #22
  call void @MagickCoreTerminus() #22
  call void @_exit(i32 noundef 1) #24
  unreachable

43:                                               ; preds = %30, %27
  %44 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %45 = load ptr, ptr %44, align 8, !tbaa !67
  %46 = getelementptr inbounds %struct._CacheInfo, ptr %45, i64 0, i32 27
  %47 = load i64, ptr %46, align 8, !tbaa !56
  %48 = icmp sgt i64 %47, 1
  br i1 %48, label %53, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct._CacheInfo, ptr %45, i64 0, i32 4
  %51 = load i32, ptr %50, align 4, !tbaa !47
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %100

53:                                               ; preds = %49, %43
  %54 = getelementptr inbounds %struct._CacheInfo, ptr %45, i64 0, i32 28
  %55 = load ptr, ptr %54, align 8, !tbaa !55
  tail call void @LockSemaphoreInfo(ptr noundef %55) #22
  %56 = load i64, ptr %46, align 8, !tbaa !56
  %57 = icmp sgt i64 %56, 1
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct._CacheInfo, ptr %45, i64 0, i32 4
  %60 = load i32, ptr %59, align 4, !tbaa !47
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %96

62:                                               ; preds = %58, %53
  call void @llvm.lifetime.start.p0(i64 13240, ptr nonnull %5) #22
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 13240, i1 true), !tbaa.struct !177
  %63 = tail call ptr @AllocateSemaphoreInfo() #22
  %64 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 61
  store ptr %63, ptr %64, align 8, !tbaa !197
  %65 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 60
  store volatile i64 1, ptr %65, align 8, !tbaa !198
  %66 = getelementptr inbounds %struct._CacheInfo, ptr %45, i64 0, i32 25
  %67 = load i32, ptr %66, align 4, !tbaa !58
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct._CacheInfo, ptr %45, i64 0, i32 18
  %71 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 505, ptr noundef nonnull @.str.5, ptr noundef nonnull %70) #22
  br label %72

72:                                               ; preds = %62, %69
  %73 = getelementptr inbounds %struct._CacheInfo, ptr %45, i64 0, i32 12
  %74 = load i64, ptr %73, align 8, !tbaa !52
  %75 = tail call noundef ptr @AcquirePixelCache(i64 noundef %74)
  %76 = getelementptr inbounds %struct._CacheInfo, ptr %45, i64 0, i32 10
  %77 = load i32, ptr %76, align 8, !tbaa !81
  %78 = getelementptr inbounds %struct._CacheInfo, ptr %75, i64 0, i32 10
  store i32 %77, ptr %78, align 8, !tbaa !81
  %79 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 49
  store ptr %75, ptr %79, align 8, !tbaa !67
  %80 = call fastcc i32 @OpenPixelCache(ptr noundef nonnull %5, i32 noundef 2, ptr noundef %2), !range !97
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %72
  %83 = icmp eq i32 %1, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %82
  %85 = call fastcc i32 @ClonePixelCacheRepository(ptr noundef %75, ptr noundef %45, ptr noundef %2)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %82, %84
  %88 = load i64, ptr %46, align 8, !tbaa !56
  %89 = icmp eq i64 %88, 1
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct._CacheInfo, ptr %45, i64 0, i32 13
  store ptr null, ptr %91, align 8, !tbaa !53
  br label %92

92:                                               ; preds = %90, %87
  %93 = load ptr, ptr %79, align 8, !tbaa !67
  store ptr %93, ptr %44, align 8, !tbaa !67
  br label %94

94:                                               ; preds = %84, %92, %72
  %95 = phi i1 [ false, %92 ], [ true, %84 ], [ true, %72 ]
  call void @DestroySemaphoreInfo(ptr noundef nonnull %64) #22
  call void @llvm.lifetime.end.p0(i64 13240, ptr nonnull %5) #22
  br label %96

96:                                               ; preds = %94, %58
  %97 = phi i1 [ %95, %94 ], [ true, %58 ]
  %98 = phi i1 [ %95, %94 ], [ false, %58 ]
  %99 = load ptr, ptr %54, align 8, !tbaa !55
  call void @UnlockSemaphoreInfo(ptr noundef %99) #22
  br label %100

100:                                              ; preds = %96, %49
  %101 = phi i1 [ %97, %96 ], [ true, %49 ]
  %102 = phi i1 [ %98, %96 ], [ false, %49 ]
  br i1 %101, label %105, label %103

103:                                              ; preds = %100
  %104 = call ptr @DestroyPixelCache(ptr noundef %45)
  br label %105

105:                                              ; preds = %103, %100
  br i1 %102, label %153, label %106

106:                                              ; preds = %105
  %107 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 5
  store i32 1, ptr %107, align 4, !tbaa !199
  %108 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  store i32 0, ptr %108, align 8, !tbaa !200
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %109 = load ptr, ptr %44, align 8, !tbaa !67, !alias.scope !201
  %110 = load i32, ptr %0, align 8, !tbaa !186, !alias.scope !201
  %111 = load i32, ptr %109, align 8, !tbaa !137, !noalias !201
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %141

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %115 = load i32, ptr %114, align 4, !tbaa !146, !alias.scope !201
  %116 = getelementptr inbounds %struct._CacheInfo, ptr %109, i64 0, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !48, !noalias !201
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %141

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 81
  %121 = load i64, ptr %120, align 8, !tbaa !185, !alias.scope !201
  %122 = getelementptr inbounds %struct._CacheInfo, ptr %109, i64 0, i32 2
  %123 = load i64, ptr %122, align 8, !tbaa !49, !noalias !201
  %124 = icmp eq i64 %121, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %127 = load i64, ptr %126, align 8, !tbaa !181, !alias.scope !201
  %128 = getelementptr inbounds %struct._CacheInfo, ptr %109, i64 0, i32 6
  %129 = load i64, ptr %128, align 8, !tbaa !99, !noalias !201
  %130 = icmp eq i64 %127, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %133 = load i64, ptr %132, align 8, !tbaa !182, !alias.scope !201
  %134 = getelementptr inbounds %struct._CacheInfo, ptr %109, i64 0, i32 7
  %135 = load i64, ptr %134, align 8, !tbaa !100, !noalias !201
  %136 = icmp eq i64 %133, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct._CacheInfo, ptr %109, i64 0, i32 13
  %139 = load ptr, ptr %138, align 8, !tbaa !53, !noalias !201
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %153

141:                                              ; preds = %131, %125, %119, %113, %106, %137
  %142 = call fastcc i32 @OpenPixelCache(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %2), !range !97
  %143 = load ptr, ptr %44, align 8, !tbaa !67
  %144 = getelementptr inbounds %struct._CacheInfo, ptr %143, i64 0, i32 3
  %145 = load i32, ptr %144, align 8, !tbaa !38
  %146 = icmp eq i32 %145, 3
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct._CacheInfo, ptr %143, i64 0, i32 17
  %149 = load i32, ptr %148, align 4, !tbaa !50
  %150 = icmp eq i32 %149, -1
  br i1 %150, label %153, label %151

151:                                              ; preds = %147
  %152 = call i32 @close(i32 noundef %149) #22
  store i32 -1, ptr %148, align 4, !tbaa !50
  call void @RelinquishMagickResource(i32 noundef 3, i64 noundef 1) #22
  br label %153

153:                                              ; preds = %151, %147, %137, %141, %105
  %154 = phi i32 [ %142, %141 ], [ 1, %137 ], [ 0, %105 ], [ %142, %147 ], [ %142, %151 ]
  %155 = load ptr, ptr %6, align 8, !tbaa !197
  call void @UnlockSemaphoreInfo(ptr noundef %155) #22
  %156 = icmp eq i32 %154, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr %44, align 8, !tbaa !67
  br label %159

159:                                              ; preds = %153, %157
  %160 = phi ptr [ %158, %157 ], [ null, %153 ]
  ret ptr %160
}

; Function Attrs: nounwind uwtable
define dso_local ptr @QueueAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct._CacheInfo, ptr %8, i64 0, i32 20, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !204
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = tail call ptr %10(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #22
  br label %19

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct._CacheInfo, ptr %8, i64 0, i32 13
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  %18 = tail call ptr @QueueAuthenticPixelCacheNexus(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef 0, ptr noundef %17, ptr noundef %5) #25
  br label %19

19:                                               ; preds = %14, %12
  %20 = phi ptr [ %13, %12 ], [ %18, %14 ]
  ret ptr %20
}

; Function Attrs: nounwind uwtable
define dso_local void @SetPixelCacheMethods(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 25
  %4 = load i32, ptr %3, align 4, !tbaa !58
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4587, ptr noundef nonnull @.str.5, ptr noundef nonnull %7) #22
  br label %9

9:                                                ; preds = %6, %2
  %10 = load ptr, ptr %1, align 8, !tbaa !152
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 20
  store ptr %10, ptr %13, align 8, !tbaa !176
  br label %14

14:                                               ; preds = %12, %9
  %15 = getelementptr inbounds %struct._CacheMethods, ptr %1, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !162
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 20, i32 10
  store ptr %16, ptr %19, align 8, !tbaa !84
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct._CacheMethods, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !154
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 20, i32 2
  store ptr %22, ptr %25, align 8, !tbaa !163
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct._CacheMethods, ptr %1, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !156
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 20, i32 4
  store ptr %28, ptr %31, align 8, !tbaa !135
  br label %32

32:                                               ; preds = %30, %26
  %33 = getelementptr inbounds %struct._CacheMethods, ptr %1, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !160
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 20, i32 8
  store ptr %34, ptr %37, align 8, !tbaa !204
  br label %38

38:                                               ; preds = %36, %32
  %39 = getelementptr inbounds %struct._CacheMethods, ptr %1, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !161
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 20, i32 9
  store ptr %40, ptr %43, align 8, !tbaa !205
  br label %44

44:                                               ; preds = %42, %38
  %45 = getelementptr inbounds %struct._CacheMethods, ptr %1, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !158
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 20, i32 7
  store ptr %46, ptr %49, align 8, !tbaa !134
  br label %50

50:                                               ; preds = %48, %44
  %51 = getelementptr inbounds %struct._CacheMethods, ptr %1, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !157
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 20, i32 5
  store ptr %52, ptr %55, align 8, !tbaa !95
  br label %56

56:                                               ; preds = %54, %50
  %57 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 20, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !151
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct._CacheMethods, ptr %1, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !155
  store ptr %62, ptr %57, align 8, !tbaa !151
  br label %63

63:                                               ; preds = %60, %56
  %64 = getelementptr inbounds %struct._CacheMethods, ptr %1, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !159
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 20, i32 6
  store ptr %65, ptr %68, align 8, !tbaa !136
  br label %69

69:                                               ; preds = %67, %63
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SetPixelCacheVirtualMethod(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !83
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4919, ptr noundef nonnull @.str.5, ptr noundef nonnull %7) #22
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = getelementptr inbounds %struct._CacheInfo, ptr %11, i64 0, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !81
  store i32 %1, ptr %12, align 8, !tbaa !81
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !181
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %64, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !182
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %64, label %21

21:                                               ; preds = %17
  switch i32 %1, label %64 [
    i32 1, label %22
    i32 8, label %59
  ]

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 3
  %25 = load i16, ptr %24, align 2, !tbaa !206
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !207
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call fastcc void @SetCacheAlphaChannel(ptr noundef %0)
  br label %32

32:                                               ; preds = %31, %27, %22
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 2
  %34 = load i16, ptr %33, align 2, !tbaa !138
  %35 = uitofp i16 %34 to float
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 1
  %37 = load i16, ptr %36, align 2, !tbaa !140
  %38 = uitofp i16 %37 to float
  %39 = fsub float %35, %38
  %40 = fcmp olt float %39, 0.000000e+00
  %41 = fneg float %39
  %42 = select i1 %40, float %41, float %39
  %43 = fpext float %42 to double
  %44 = fcmp olt double %43, 1.000000e-15
  br i1 %44, label %45, label %54

45:                                               ; preds = %32
  %46 = load i16, ptr %23, align 2, !tbaa !142
  %47 = uitofp i16 %46 to float
  %48 = fsub float %38, %47
  %49 = fcmp olt float %48, 0.000000e+00
  %50 = fneg float %48
  %51 = select i1 %49, float %50, float %48
  %52 = fpext float %51 to double
  %53 = fcmp olt double %52, 1.000000e-15
  br i1 %53, label %64, label %54

54:                                               ; preds = %45, %32
  %55 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !146
  switch i32 %56, label %64 [
    i32 19, label %57
    i32 17, label %57
    i32 2, label %57
  ]

57:                                               ; preds = %54, %54, %54
  %58 = tail call i32 @SetImageColorspace(ptr noundef %0, i32 noundef 13) #22
  br label %64

59:                                               ; preds = %21
  %60 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %61 = load i32, ptr %60, align 8, !tbaa !207
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  tail call fastcc void @SetCacheAlphaChannel(ptr noundef %0)
  br label %64

64:                                               ; preds = %54, %45, %57, %63, %59, %21, %17, %9
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal fastcc void @SetCacheAlphaChannel(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !83
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4868, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 1, ptr %9, align 8, !tbaa !207
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %11 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef nonnull %10) #22
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %13 = load i64, ptr %12, align 8, !tbaa !182
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
  %22 = load i64, ptr %16, align 8, !tbaa !181
  %23 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %11, i64 noundef 0, i64 noundef %18, i64 noundef %22, i64 noundef 1, ptr noundef nonnull %10) #26
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %21
  %26 = load i64, ptr %16, align 8, !tbaa !181
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25, %28
  %29 = phi i64 [ %33, %28 ], [ 0, %25 ]
  %30 = phi ptr [ %32, %28 ], [ %23, %25 ]
  %31 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 0, i32 3
  store i16 0, ptr %31, align 2, !tbaa !144
  %32 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 1
  %33 = add nuw nsw i64 %29, 1
  %34 = icmp eq i64 %33, %26
  br i1 %34, label %35, label %28, !llvm.loop !208

35:                                               ; preds = %28, %25
  %36 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %11, ptr noundef nonnull %10) #26
  br label %37

37:                                               ; preds = %21, %17, %35
  %38 = phi i32 [ %36, %35 ], [ 0, %17 ], [ 0, %21 ]
  %39 = add nuw nsw i64 %18, 1
  %40 = load i64, ptr %12, align 8, !tbaa !182
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %17, label %42, !llvm.loop !209

42:                                               ; preds = %37, %8
  %43 = tail call ptr @DestroyCacheView(ptr noundef %11) #22
  ret void
}

declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: hot nounwind uwtable
define dso_local noundef i32 @SyncAuthenticPixelCacheNexus(ptr noundef %0, ptr noalias nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #9 {
  %4 = alloca %struct._MagickPixelPacket, align 8
  %5 = alloca %struct._MagickPixelPacket, align 8
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = icmp eq ptr %0, null
  br i1 %10, label %477, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %12, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4994, i32 noundef 445, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, ptr noundef nonnull %13) #22
  br label %477

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct._CacheInfo, ptr %7, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !38
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %477, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 38
  %21 = load ptr, ptr %20, align 8, !tbaa !105
  %22 = icmp eq ptr %21, null
  br i1 %22, label %170, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %25 = load i32, ptr %24, align 8, !tbaa !83
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %29 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 425, ptr noundef nonnull @.str.5, ptr noundef nonnull %28) #22
  br label %30

30:                                               ; preds = %27, %23
  %31 = load ptr, ptr %20, align 8, !tbaa !105
  %32 = icmp eq ptr %31, null
  br i1 %32, label %167, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %6, align 8, !tbaa !67
  %35 = icmp eq ptr %34, null
  br i1 %35, label %167, label %36

36:                                               ; preds = %33
  %37 = tail call ptr @AcquirePixelCacheNexus(i64 noundef 1)
  %38 = tail call ptr @AcquirePixelCacheNexus(i64 noundef 1)
  %39 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1
  %40 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 2
  %41 = load i64, ptr %40, align 8, !tbaa !108
  %42 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 3
  %43 = load i64, ptr %42, align 8, !tbaa !107
  %44 = load i64, ptr %39, align 8, !tbaa !109
  %45 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !110
  %47 = load ptr, ptr %37, align 8, !tbaa !60
  %48 = tail call ptr @QueueAuthenticPixelCacheNexus(ptr noundef %0, i64 noundef %41, i64 noundef %43, i64 noundef %44, i64 noundef %46, i32 noundef 1, ptr noundef %47, ptr noundef %2) #25
  %49 = icmp eq ptr %48, null
  br i1 %49, label %66, label %50

50:                                               ; preds = %36
  %51 = load ptr, ptr %6, align 8, !tbaa !67
  %52 = getelementptr inbounds %struct._NexusInfo, ptr %47, i64 0, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !96
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = tail call fastcc i32 @ReadPixelCachePixels(ptr noundef %51, ptr noundef %47, ptr noundef %2), !range !97
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct._CacheInfo, ptr %51, i64 0, i32 16
  %60 = load i32, ptr %59, align 8, !tbaa !98
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = tail call fastcc i32 @ReadPixelCacheIndexes(ptr noundef %51, ptr noundef %47, ptr noundef %2), !range !97
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62, %58
  br label %66

66:                                               ; preds = %36, %50, %55, %62, %65
  %67 = phi ptr [ %48, %65 ], [ null, %36 ], [ %48, %50 ], [ null, %55 ], [ null, %62 ]
  %68 = load ptr, ptr %37, align 8, !tbaa !60
  %69 = getelementptr inbounds %struct._NexusInfo, ptr %68, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !89
  %71 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !111
  %73 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 6
  %74 = load ptr, ptr %73, align 8, !tbaa !89
  %75 = load ptr, ptr %20, align 8, !tbaa !105
  %76 = load ptr, ptr %38, align 8, !tbaa !60
  %77 = tail call ptr @GetVirtualPixelsFromNexus(ptr noundef %75, i32 noundef 9, i64 noundef %41, i64 noundef %43, i64 noundef %44, i64 noundef %46, ptr noundef %76, ptr noundef %2) #25
  %78 = mul i64 %46, %44
  %79 = icmp slt i64 %78, 1
  br i1 %79, label %122, label %80

80:                                               ; preds = %66
  %81 = getelementptr inbounds %struct._CacheInfo, ptr %34, i64 0, i32 16
  %82 = icmp eq ptr %74, null
  %83 = icmp eq ptr %70, null
  %84 = icmp eq ptr %67, null
  %85 = icmp eq ptr %77, null
  %86 = select i1 %84, i1 true, i1 %85
  br i1 %86, label %122, label %91

87:                                               ; preds = %119
  %88 = getelementptr inbounds %struct._PixelPacket, ptr %92, i64 1
  %89 = getelementptr inbounds %struct._PixelPacket, ptr %93, i64 1
  %90 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 1
  br label %91, !llvm.loop !210

91:                                               ; preds = %80, %87
  %92 = phi ptr [ %88, %87 ], [ %77, %80 ]
  %93 = phi ptr [ %89, %87 ], [ %67, %80 ]
  %94 = phi ptr [ %90, %87 ], [ %72, %80 ]
  %95 = phi i64 [ %120, %87 ], [ 0, %80 ]
  %96 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef %92) #26
  %97 = fcmp ogt float %96, 3.276700e+04
  br i1 %97, label %98, label %119

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct._PixelPacket, ptr %93, i64 0, i32 2
  %100 = load i16, ptr %99, align 2, !tbaa !138
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 0, i32 2
  store i16 %100, ptr %101, align 2, !tbaa !138
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %93, i64 0, i32 1
  %103 = load i16, ptr %102, align 2, !tbaa !140
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 0, i32 1
  store i16 %103, ptr %104, align 2, !tbaa !140
  %105 = load i16, ptr %93, align 2, !tbaa !142
  store i16 %105, ptr %94, align 2, !tbaa !142
  %106 = getelementptr inbounds %struct._PixelPacket, ptr %93, i64 0, i32 3
  %107 = load i16, ptr %106, align 2, !tbaa !144
  %108 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 0, i32 3
  store i16 %107, ptr %108, align 2, !tbaa !144
  %109 = load i32, ptr %81, align 8, !tbaa !98
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %98
  %112 = getelementptr inbounds i16, ptr %74, i64 %95
  br i1 %82, label %119, label %113

113:                                              ; preds = %111
  br i1 %83, label %117, label %114

114:                                              ; preds = %113
  %115 = getelementptr inbounds i16, ptr %70, i64 %95
  %116 = load i16, ptr %115, align 2, !tbaa !147
  br label %117

117:                                              ; preds = %114, %113
  %118 = phi i16 [ %116, %114 ], [ 0, %113 ]
  store i16 %118, ptr %112, align 2, !tbaa !147
  br label %119

119:                                              ; preds = %117, %111, %98, %91
  %120 = add nuw nsw i64 %95, 1
  %121 = icmp eq i64 %120, %78
  br i1 %121, label %122, label %87, !llvm.loop !210

122:                                              ; preds = %119, %80, %66
  %123 = phi i1 [ %79, %66 ], [ %79, %80 ], [ true, %119 ]
  %124 = load ptr, ptr %38, align 8, !tbaa !60
  %125 = getelementptr inbounds %struct._NexusInfo, ptr %124, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !86
  %127 = icmp eq ptr %126, null
  br i1 %127, label %140, label %128

128:                                              ; preds = %122
  %129 = load i32, ptr %124, align 8, !tbaa !87
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %126) #22
  br label %137

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct._NexusInfo, ptr %124, i64 0, i32 2
  %135 = load i64, ptr %134, align 8, !tbaa !88
  %136 = tail call i32 @UnmapBlob(ptr noundef nonnull %126, i64 noundef %135) #22
  br label %137

137:                                              ; preds = %133, %131
  %138 = getelementptr inbounds %struct._NexusInfo, ptr %124, i64 0, i32 6
  store ptr null, ptr %138, align 8, !tbaa !89
  %139 = getelementptr inbounds %struct._NexusInfo, ptr %124, i64 0, i32 2
  store i32 0, ptr %124, align 8, !tbaa !87
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %139, i8 0, i64 24, i1 false)
  br label %140

140:                                              ; preds = %137, %122
  %141 = load ptr, ptr %38, align 8, !tbaa !60
  %142 = getelementptr inbounds %struct._NexusInfo, ptr %141, i64 0, i32 7
  store i64 -2880220588, ptr %142, align 8, !tbaa !61
  %143 = tail call ptr @RelinquishMagickMemory(ptr noundef %141) #22
  store ptr %143, ptr %38, align 8, !tbaa !60
  %144 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %38) #22
  %145 = load ptr, ptr %37, align 8, !tbaa !60
  %146 = getelementptr inbounds %struct._NexusInfo, ptr %145, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !86
  %148 = icmp eq ptr %147, null
  br i1 %148, label %161, label %149

149:                                              ; preds = %140
  %150 = load i32, ptr %145, align 8, !tbaa !87
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %147) #22
  br label %158

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct._NexusInfo, ptr %145, i64 0, i32 2
  %156 = load i64, ptr %155, align 8, !tbaa !88
  %157 = tail call i32 @UnmapBlob(ptr noundef nonnull %147, i64 noundef %156) #22
  br label %158

158:                                              ; preds = %154, %152
  %159 = getelementptr inbounds %struct._NexusInfo, ptr %145, i64 0, i32 6
  store ptr null, ptr %159, align 8, !tbaa !89
  %160 = getelementptr inbounds %struct._NexusInfo, ptr %145, i64 0, i32 2
  store i32 0, ptr %145, align 8, !tbaa !87
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %160, i8 0, i64 24, i1 false)
  br label %161

161:                                              ; preds = %158, %140
  %162 = load ptr, ptr %37, align 8, !tbaa !60
  %163 = getelementptr inbounds %struct._NexusInfo, ptr %162, i64 0, i32 7
  store i64 -2880220588, ptr %163, align 8, !tbaa !61
  %164 = tail call ptr @RelinquishMagickMemory(ptr noundef %162) #22
  store ptr %164, ptr %37, align 8, !tbaa !60
  %165 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %37) #22
  %166 = zext i1 %123 to i32
  br label %167

167:                                              ; preds = %30, %33, %161
  %168 = phi i32 [ 0, %30 ], [ 0, %33 ], [ %166, %161 ]
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %477, label %170

170:                                              ; preds = %167, %19
  %171 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 73
  %172 = load ptr, ptr %171, align 8, !tbaa !106
  %173 = icmp eq ptr %172, null
  br i1 %173, label %463, label %174

174:                                              ; preds = %170
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #22
  %175 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %176 = load i32, ptr %175, align 8, !tbaa !83
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %180 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3263, ptr noundef nonnull @.str.5, ptr noundef nonnull %179) #22
  br label %181

181:                                              ; preds = %178, %174
  %182 = load ptr, ptr %171, align 8, !tbaa !106
  %183 = icmp eq ptr %182, null
  br i1 %183, label %476, label %184

184:                                              ; preds = %181
  %185 = load ptr, ptr %6, align 8, !tbaa !67
  %186 = icmp eq ptr %185, null
  br i1 %186, label %476, label %187

187:                                              ; preds = %184
  %188 = tail call ptr @AcquirePixelCacheNexus(i64 noundef 1)
  %189 = tail call ptr @AcquirePixelCacheNexus(i64 noundef 1)
  %190 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1
  %191 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 2
  %192 = load i64, ptr %191, align 8, !tbaa !108
  %193 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 3
  %194 = load i64, ptr %193, align 8, !tbaa !107
  %195 = load i64, ptr %190, align 8, !tbaa !109
  %196 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 1
  %197 = load i64, ptr %196, align 8, !tbaa !110
  %198 = load ptr, ptr %188, align 8, !tbaa !60
  %199 = tail call ptr @QueueAuthenticPixelCacheNexus(ptr noundef %0, i64 noundef %192, i64 noundef %194, i64 noundef %195, i64 noundef %197, i32 noundef 1, ptr noundef %198, ptr noundef %2) #25
  %200 = icmp eq ptr %199, null
  br i1 %200, label %217, label %201

201:                                              ; preds = %187
  %202 = load ptr, ptr %6, align 8, !tbaa !67
  %203 = getelementptr inbounds %struct._NexusInfo, ptr %198, i64 0, i32 5
  %204 = load i32, ptr %203, align 8, !tbaa !96
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %217

206:                                              ; preds = %201
  %207 = tail call fastcc i32 @ReadPixelCachePixels(ptr noundef %202, ptr noundef %198, ptr noundef %2), !range !97
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %217, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct._CacheInfo, ptr %202, i64 0, i32 16
  %211 = load i32, ptr %210, align 8, !tbaa !98
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %209
  %214 = tail call fastcc i32 @ReadPixelCacheIndexes(ptr noundef %202, ptr noundef %198, ptr noundef %2), !range !97
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %213, %209
  br label %217

217:                                              ; preds = %187, %201, %206, %213, %216
  %218 = phi ptr [ %199, %216 ], [ null, %187 ], [ %199, %201 ], [ null, %206 ], [ null, %213 ]
  %219 = load ptr, ptr %188, align 8, !tbaa !60
  %220 = getelementptr inbounds %struct._NexusInfo, ptr %219, i64 0, i32 6
  %221 = load ptr, ptr %220, align 8, !tbaa !89
  %222 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 4
  %223 = load ptr, ptr %222, align 8, !tbaa !111
  %224 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 6
  %225 = load ptr, ptr %224, align 8, !tbaa !89
  %226 = load ptr, ptr %171, align 8, !tbaa !106
  %227 = load ptr, ptr %189, align 8, !tbaa !60
  %228 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %229 = tail call ptr @GetVirtualPixelsFromNexus(ptr noundef %226, i32 noundef 9, i64 noundef %192, i64 noundef %194, i64 noundef %195, i64 noundef %197, ptr noundef %227, ptr noundef nonnull %228) #25
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %4) #22
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %5) #22
  %230 = mul i64 %197, %195
  %231 = icmp sgt i64 %230, 0
  br i1 %231, label %232, label %419

232:                                              ; preds = %217
  %233 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  %234 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 6
  %235 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 7
  %236 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 8
  %237 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %238 = icmp ne ptr %221, null
  %239 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 9
  %240 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  %241 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 6
  %242 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  %243 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  %244 = icmp ne ptr %225, null
  %245 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  %246 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 1
  %247 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 1
  %248 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  %249 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 9
  %250 = getelementptr inbounds %struct._CacheInfo, ptr %185, i64 0, i32 16
  %251 = icmp eq ptr %225, null
  %252 = icmp eq ptr %221, null
  %253 = icmp eq ptr %218, null
  %254 = icmp eq ptr %229, null
  %255 = select i1 %253, i1 true, i1 %254
  br i1 %255, label %419, label %260

256:                                              ; preds = %416
  %257 = getelementptr inbounds %struct._PixelPacket, ptr %261, i64 1
  %258 = getelementptr inbounds %struct._PixelPacket, ptr %262, i64 1
  %259 = getelementptr inbounds %struct._PixelPacket, ptr %263, i64 1
  br label %260, !llvm.loop !211

260:                                              ; preds = %232, %256
  %261 = phi ptr [ %257, %256 ], [ %229, %232 ]
  %262 = phi ptr [ %258, %256 ], [ %218, %232 ]
  %263 = phi ptr [ %259, %256 ], [ %223, %232 ]
  %264 = phi i64 [ %417, %256 ], [ 0, %232 ]
  %265 = getelementptr inbounds i16, ptr %221, i64 %264
  %266 = getelementptr inbounds %struct._PixelPacket, ptr %262, i64 0, i32 2
  %267 = load i16, ptr %266, align 2, !tbaa !138
  %268 = uitofp i16 %267 to float
  store float %268, ptr %233, align 8, !tbaa !139
  %269 = getelementptr inbounds %struct._PixelPacket, ptr %262, i64 0, i32 1
  %270 = load i16, ptr %269, align 2, !tbaa !140
  %271 = uitofp i16 %270 to float
  store float %271, ptr %234, align 4, !tbaa !141
  %272 = load i16, ptr %262, align 2, !tbaa !142
  %273 = uitofp i16 %272 to float
  store float %273, ptr %235, align 8, !tbaa !143
  %274 = getelementptr inbounds %struct._PixelPacket, ptr %262, i64 0, i32 3
  %275 = load i16, ptr %274, align 2, !tbaa !144
  %276 = uitofp i16 %275 to float
  store float %276, ptr %236, align 4, !tbaa !145
  %277 = load i32, ptr %237, align 4, !tbaa !146
  %278 = icmp eq i32 %277, 12
  %279 = and i1 %238, %278
  br i1 %279, label %280, label %283

280:                                              ; preds = %260
  %281 = load i16, ptr %265, align 2, !tbaa !147
  %282 = uitofp i16 %281 to float
  store float %282, ptr %239, align 8, !tbaa !148
  br label %283

283:                                              ; preds = %280, %260
  %284 = getelementptr inbounds i16, ptr %225, i64 %264
  %285 = getelementptr inbounds %struct._PixelPacket, ptr %263, i64 0, i32 2
  %286 = load i16, ptr %285, align 2, !tbaa !138
  %287 = uitofp i16 %286 to float
  store float %287, ptr %240, align 8, !tbaa !139
  %288 = getelementptr inbounds %struct._PixelPacket, ptr %263, i64 0, i32 1
  %289 = load i16, ptr %288, align 2, !tbaa !140
  %290 = uitofp i16 %289 to float
  store float %290, ptr %241, align 4, !tbaa !141
  %291 = load i16, ptr %263, align 2, !tbaa !142
  %292 = uitofp i16 %291 to float
  store float %292, ptr %242, align 8, !tbaa !143
  %293 = getelementptr inbounds %struct._PixelPacket, ptr %263, i64 0, i32 3
  %294 = load i16, ptr %293, align 2, !tbaa !144
  %295 = uitofp i16 %294 to float
  store float %295, ptr %243, align 4, !tbaa !145
  %296 = and i1 %244, %278
  br i1 %296, label %297, label %300

297:                                              ; preds = %283
  %298 = load i16, ptr %284, align 2, !tbaa !147
  %299 = uitofp i16 %298 to float
  store float %299, ptr %245, align 8, !tbaa !148
  br label %300

300:                                              ; preds = %297, %283
  %301 = call float @GetPixelIntensity(ptr noundef %0, ptr noundef %261) #26
  %302 = fcmp oeq float %301, 6.553500e+04
  br i1 %302, label %303, label %304

303:                                              ; preds = %300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 56, i1 false), !tbaa.struct !212
  br label %371

304:                                              ; preds = %300
  %305 = load float, ptr %236, align 4, !tbaa !145
  %306 = fpext float %301 to double
  %307 = fpext float %305 to double
  %308 = fmul double %306, 0xBDF0002000300040
  %309 = call double @llvm.fmuladd.f64(double %308, double %307, double 1.000000e+00)
  %310 = fcmp olt double %309, 0.000000e+00
  %311 = select i1 %310, double 0.000000e+00, double %309
  %312 = fcmp ult double %311, 1.000000e-15
  %313 = fdiv double 1.000000e+00, %311
  %314 = select i1 %312, double 0x430C6BF52633FFFF, double %313
  %315 = load float, ptr %240, align 8, !tbaa !139
  %316 = load float, ptr %233, align 8, !tbaa !139
  %317 = call double @llvm.fmuladd.f64(double %306, double 0xBEF0001000100010, double 1.000000e+00)
  %318 = fpext float %315 to double
  %319 = call double @llvm.fmuladd.f64(double %307, double 0xBEF0001000100010, double 1.000000e+00)
  %320 = fpext float %316 to double
  %321 = fmul double %319, %320
  %322 = fmul double %321, 0x3EF0001000100010
  %323 = fmul double %322, %306
  %324 = call double @llvm.fmuladd.f64(double %317, double %318, double %323)
  %325 = fptrunc double %324 to float
  %326 = fpext float %325 to double
  %327 = fmul double %314, %326
  %328 = fptrunc double %327 to float
  store float %328, ptr %240, align 8, !tbaa !139
  %329 = load float, ptr %241, align 4, !tbaa !141
  %330 = load float, ptr %234, align 4, !tbaa !141
  %331 = fpext float %329 to double
  %332 = fpext float %330 to double
  %333 = fmul double %319, %332
  %334 = fmul double %333, 0x3EF0001000100010
  %335 = fmul double %334, %306
  %336 = call double @llvm.fmuladd.f64(double %317, double %331, double %335)
  %337 = fptrunc double %336 to float
  %338 = fpext float %337 to double
  %339 = fmul double %314, %338
  %340 = fptrunc double %339 to float
  store float %340, ptr %241, align 4, !tbaa !141
  %341 = load float, ptr %242, align 8, !tbaa !143
  %342 = load float, ptr %235, align 8, !tbaa !143
  %343 = fpext float %341 to double
  %344 = fpext float %342 to double
  %345 = fmul double %319, %344
  %346 = fmul double %345, 0x3EF0001000100010
  %347 = fmul double %346, %306
  %348 = call double @llvm.fmuladd.f64(double %317, double %343, double %347)
  %349 = fptrunc double %348 to float
  %350 = fpext float %349 to double
  %351 = fmul double %314, %350
  %352 = fptrunc double %351 to float
  store float %352, ptr %242, align 8, !tbaa !143
  %353 = load i32, ptr %246, align 4, !tbaa !213
  %354 = icmp eq i32 %353, 12
  %355 = load i32, ptr %247, align 4
  %356 = icmp eq i32 %355, 12
  %357 = select i1 %354, i1 %356, i1 false
  br i1 %357, label %358, label %371

358:                                              ; preds = %304
  %359 = load float, ptr %248, align 8, !tbaa !148
  %360 = load float, ptr %249, align 8, !tbaa !148
  %361 = fpext float %359 to double
  %362 = fpext float %360 to double
  %363 = fmul double %319, %362
  %364 = fmul double %363, 0x3EF0001000100010
  %365 = fmul double %364, %306
  %366 = call double @llvm.fmuladd.f64(double %317, double %361, double %365)
  %367 = fptrunc double %366 to float
  %368 = fpext float %367 to double
  %369 = fmul double %314, %368
  %370 = fptrunc double %369 to float
  store float %370, ptr %248, align 8, !tbaa !148
  br label %371

371:                                              ; preds = %358, %304, %303
  %372 = load float, ptr %240, align 8, !tbaa !139
  %373 = fcmp ugt float %372, 0.000000e+00
  br i1 %373, label %374, label %379

374:                                              ; preds = %371
  %375 = fcmp ult float %372, 6.553500e+04
  br i1 %375, label %376, label %379

376:                                              ; preds = %374
  %377 = fadd float %372, 5.000000e-01
  %378 = fptoui float %377 to i16
  br label %379

379:                                              ; preds = %376, %374, %371
  %380 = phi i16 [ %378, %376 ], [ 0, %371 ], [ -1, %374 ]
  store i16 %380, ptr %285, align 2, !tbaa !138
  %381 = load float, ptr %241, align 4, !tbaa !141
  %382 = fcmp ugt float %381, 0.000000e+00
  br i1 %382, label %383, label %388

383:                                              ; preds = %379
  %384 = fcmp ult float %381, 6.553500e+04
  br i1 %384, label %385, label %388

385:                                              ; preds = %383
  %386 = fadd float %381, 5.000000e-01
  %387 = fptoui float %386 to i16
  br label %388

388:                                              ; preds = %385, %383, %379
  %389 = phi i16 [ %387, %385 ], [ 0, %379 ], [ -1, %383 ]
  store i16 %389, ptr %288, align 2, !tbaa !140
  %390 = load float, ptr %242, align 8, !tbaa !143
  %391 = fcmp ugt float %390, 0.000000e+00
  br i1 %391, label %392, label %397

392:                                              ; preds = %388
  %393 = fcmp ult float %390, 6.553500e+04
  br i1 %393, label %394, label %397

394:                                              ; preds = %392
  %395 = fadd float %390, 5.000000e-01
  %396 = fptoui float %395 to i16
  br label %397

397:                                              ; preds = %394, %392, %388
  %398 = phi i16 [ %396, %394 ], [ 0, %388 ], [ -1, %392 ]
  store i16 %398, ptr %263, align 2, !tbaa !142
  %399 = load float, ptr %243, align 4, !tbaa !145
  %400 = fcmp ugt float %399, 0.000000e+00
  br i1 %400, label %401, label %406

401:                                              ; preds = %397
  %402 = fcmp ult float %399, 6.553500e+04
  br i1 %402, label %403, label %406

403:                                              ; preds = %401
  %404 = fadd float %399, 5.000000e-01
  %405 = fptoui float %404 to i16
  br label %406

406:                                              ; preds = %403, %401, %397
  %407 = phi i16 [ %405, %403 ], [ 0, %397 ], [ -1, %401 ]
  store i16 %407, ptr %293, align 2, !tbaa !144
  %408 = load i32, ptr %250, align 8, !tbaa !98
  %409 = icmp eq i32 %408, 0
  %410 = select i1 %409, i1 true, i1 %251
  br i1 %410, label %416, label %411

411:                                              ; preds = %406
  br i1 %252, label %414, label %412

412:                                              ; preds = %411
  %413 = load i16, ptr %265, align 2, !tbaa !147
  br label %414

414:                                              ; preds = %412, %411
  %415 = phi i16 [ %413, %412 ], [ 0, %411 ]
  store i16 %415, ptr %284, align 2, !tbaa !147
  br label %416

416:                                              ; preds = %414, %406
  %417 = add nuw nsw i64 %264, 1
  %418 = icmp eq i64 %417, %230
  br i1 %418, label %419, label %256, !llvm.loop !211

419:                                              ; preds = %416, %232, %217
  %420 = phi i1 [ %231, %217 ], [ %231, %232 ], [ false, %416 ]
  %421 = load ptr, ptr %189, align 8, !tbaa !60
  %422 = getelementptr inbounds %struct._NexusInfo, ptr %421, i64 0, i32 3
  %423 = load ptr, ptr %422, align 8, !tbaa !86
  %424 = icmp eq ptr %423, null
  br i1 %424, label %437, label %425

425:                                              ; preds = %419
  %426 = load i32, ptr %421, align 8, !tbaa !87
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %430

428:                                              ; preds = %425
  %429 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %423) #22
  br label %434

430:                                              ; preds = %425
  %431 = getelementptr inbounds %struct._NexusInfo, ptr %421, i64 0, i32 2
  %432 = load i64, ptr %431, align 8, !tbaa !88
  %433 = call i32 @UnmapBlob(ptr noundef nonnull %423, i64 noundef %432) #22
  br label %434

434:                                              ; preds = %430, %428
  %435 = getelementptr inbounds %struct._NexusInfo, ptr %421, i64 0, i32 6
  store ptr null, ptr %435, align 8, !tbaa !89
  %436 = getelementptr inbounds %struct._NexusInfo, ptr %421, i64 0, i32 2
  store i32 0, ptr %421, align 8, !tbaa !87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %436, i8 0, i64 24, i1 false)
  br label %437

437:                                              ; preds = %434, %419
  %438 = load ptr, ptr %189, align 8, !tbaa !60
  %439 = getelementptr inbounds %struct._NexusInfo, ptr %438, i64 0, i32 7
  store i64 -2880220588, ptr %439, align 8, !tbaa !61
  %440 = call ptr @RelinquishMagickMemory(ptr noundef %438) #22
  store ptr %440, ptr %189, align 8, !tbaa !60
  %441 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %189) #22
  %442 = load ptr, ptr %188, align 8, !tbaa !60
  %443 = getelementptr inbounds %struct._NexusInfo, ptr %442, i64 0, i32 3
  %444 = load ptr, ptr %443, align 8, !tbaa !86
  %445 = icmp eq ptr %444, null
  br i1 %445, label %458, label %446

446:                                              ; preds = %437
  %447 = load i32, ptr %442, align 8, !tbaa !87
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %451

449:                                              ; preds = %446
  %450 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %444) #22
  br label %455

451:                                              ; preds = %446
  %452 = getelementptr inbounds %struct._NexusInfo, ptr %442, i64 0, i32 2
  %453 = load i64, ptr %452, align 8, !tbaa !88
  %454 = call i32 @UnmapBlob(ptr noundef nonnull %444, i64 noundef %453) #22
  br label %455

455:                                              ; preds = %451, %449
  %456 = getelementptr inbounds %struct._NexusInfo, ptr %442, i64 0, i32 6
  store ptr null, ptr %456, align 8, !tbaa !89
  %457 = getelementptr inbounds %struct._NexusInfo, ptr %442, i64 0, i32 2
  store i32 0, ptr %442, align 8, !tbaa !87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %457, i8 0, i64 24, i1 false)
  br label %458

458:                                              ; preds = %455, %437
  %459 = load ptr, ptr %188, align 8, !tbaa !60
  %460 = getelementptr inbounds %struct._NexusInfo, ptr %459, i64 0, i32 7
  store i64 -2880220588, ptr %460, align 8, !tbaa !61
  %461 = call ptr @RelinquishMagickMemory(ptr noundef %459) #22
  store ptr %461, ptr %188, align 8, !tbaa !60
  %462 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %188) #22
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #22
  br i1 %420, label %477, label %463

463:                                              ; preds = %458, %170
  %464 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 5
  %465 = load i32, ptr %464, align 8, !tbaa !96
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %467, label %477

467:                                              ; preds = %463
  %468 = call fastcc i32 @WritePixelCachePixels(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2), !range !97
  %469 = getelementptr inbounds %struct._CacheInfo, ptr %7, i64 0, i32 16
  %470 = load i32, ptr %469, align 8, !tbaa !98
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %475, label %472

472:                                              ; preds = %467
  %473 = call fastcc i32 @WritePixelCacheIndexes(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2), !range !97
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %477, label %475

475:                                              ; preds = %472, %467
  br label %477

476:                                              ; preds = %184, %181
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #22
  br label %477

477:                                              ; preds = %476, %472, %463, %458, %167, %15, %9, %11, %475
  %478 = phi i32 [ %468, %475 ], [ 0, %11 ], [ 0, %9 ], [ 0, %15 ], [ 0, %167 ], [ 0, %458 ], [ 1, %463 ], [ 0, %472 ], [ 0, %476 ]
  ret i32 %478
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @WritePixelCachePixels(ptr noundef %0, ptr noalias nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct._RectangleInfo, align 8
  %5 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !96
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %199

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1
  %10 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !107
  %12 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 6
  %13 = load i64, ptr %12, align 8, !tbaa !99
  %14 = mul i64 %13, %11
  %15 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !108
  %17 = add i64 %14, %16
  %18 = load i64, ptr %9, align 8, !tbaa !109
  %19 = shl i64 %18, 3
  %20 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !110
  %22 = mul i64 %19, %21
  %23 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !111
  %25 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !38
  switch i32 %26, label %166 [
    i32 1, label %27
    i32 2, label %27
    i32 3, label %45
    i32 5, label %135
  ]

27:                                               ; preds = %8, %8
  %28 = icmp eq i64 %13, %18
  %29 = select i1 %28, i64 %22, i64 %19
  %30 = select i1 %28, i64 1, i64 %21
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %166

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 14
  %34 = load ptr, ptr %33, align 8, !tbaa !80
  %35 = getelementptr inbounds %struct._PixelPacket, ptr %34, i64 %17
  br label %36

36:                                               ; preds = %32, %36
  %37 = phi ptr [ %42, %36 ], [ %35, %32 ]
  %38 = phi i64 [ %43, %36 ], [ 0, %32 ]
  %39 = phi ptr [ %40, %36 ], [ %24, %32 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %37, ptr align 2 %39, i64 %29, i1 false)
  %40 = getelementptr inbounds %struct._PixelPacket, ptr %39, i64 %18
  %41 = load i64, ptr %12, align 8, !tbaa !99
  %42 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 %41
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %30
  br i1 %44, label %166, label %36, !llvm.loop !214

45:                                               ; preds = %8
  %46 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 29
  %47 = load ptr, ptr %46, align 8, !tbaa !57
  tail call void @LockSemaphoreInfo(ptr noundef %47) #22
  %48 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 17
  %49 = load i32, ptr %48, align 4, !tbaa !50
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %76

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  %53 = load i8, ptr %52, align 8, !tbaa !93
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = tail call i32 @AcquireUniqueFileResource(ptr noundef nonnull %52) #22
  br label %62

57:                                               ; preds = %51
  %58 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %52, i32 noundef 194, i32 noundef 384) #22
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %52, i32 noundef 2, i32 noundef 384) #22
  br label %62

62:                                               ; preds = %60, %57, %55
  %63 = phi i32 [ %56, %55 ], [ %61, %60 ], [ %58, %57 ]
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = tail call i32 @AcquireMagickResource(i32 noundef 3, i64 noundef 1) #22
  store i32 %63, ptr %48, align 4, !tbaa !50
  %67 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 4
  store i32 2, ptr %67, align 4, !tbaa !47
  br label %76

68:                                               ; preds = %62
  %69 = tail call ptr @__errno_location() #23
  %70 = load i32, ptr %69, align 4, !tbaa !34
  %71 = tail call ptr @GetExceptionMessage(i32 noundef %70) #22
  %72 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  %73 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5409, i32 noundef 430, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.19, ptr noundef nonnull %72, ptr noundef %71) #22
  %74 = tail call ptr @DestroyString(ptr noundef %71) #22
  %75 = load ptr, ptr %46, align 8, !tbaa !57
  tail call void @UnlockSemaphoreInfo(ptr noundef %75) #22
  br label %199

76:                                               ; preds = %65, %45
  %77 = load i64, ptr %12, align 8, !tbaa !99
  %78 = icmp eq i64 %77, %18
  %79 = icmp ult i64 %22, 262143
  %80 = select i1 %78, i1 %79, i1 false
  %81 = select i1 %80, i64 %22, i64 %19
  %82 = select i1 %80, i64 1, i64 %21
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %123

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 8
  %86 = load i32, ptr %48, align 4, !tbaa !50, !alias.scope !215, !noalias !218
  %87 = icmp slt i64 %81, 1
  br label %88

88:                                               ; preds = %84, %117
  %89 = phi i64 [ 0, %84 ], [ %121, %117 ]
  %90 = phi ptr [ %24, %84 ], [ %118, %117 ]
  %91 = phi i64 [ %17, %84 ], [ %120, %117 ]
  %92 = load i64, ptr %85, align 8, !tbaa !118
  %93 = shl i64 %91, 3
  %94 = add i64 %92, %93
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %95 = tail call i64 @lseek(i32 noundef %86, i64 noundef %94, i32 noundef 0) #22, !noalias !220
  %96 = icmp slt i64 %95, 0
  %97 = select i1 %96, i1 true, i1 %87
  %98 = ashr i64 %95, 63
  br i1 %97, label %114, label %99

99:                                               ; preds = %88, %110
  %100 = phi i64 [ %112, %110 ], [ 0, %88 ]
  %101 = getelementptr inbounds i8, ptr %90, i64 %100
  %102 = sub i64 %81, %100
  %103 = tail call i64 @llvm.umin.i64(i64 %102, i64 9223372036854775807)
  %104 = tail call i64 @write(i32 noundef %86, ptr noundef %101, i64 noundef %103) #22, !noalias !215
  %105 = icmp slt i64 %104, 1
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = tail call ptr @__errno_location() #23
  %108 = load i32, ptr %107, align 4, !tbaa !34, !noalias !220
  %109 = icmp eq i32 %108, 4
  br i1 %109, label %110, label %114

110:                                              ; preds = %106, %99
  %111 = phi i64 [ 0, %106 ], [ %104, %99 ]
  %112 = add nuw nsw i64 %111, %100
  %113 = icmp slt i64 %112, %81
  br i1 %113, label %99, label %114, !llvm.loop !194

114:                                              ; preds = %106, %110, %88
  %115 = phi i64 [ %98, %88 ], [ %112, %110 ], [ %100, %106 ]
  %116 = icmp ult i64 %115, %81
  br i1 %116, label %123, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct._PixelPacket, ptr %90, i64 %18
  %119 = load i64, ptr %12, align 8, !tbaa !99
  %120 = add i64 %119, %91
  %121 = add nuw nsw i64 %89, 1
  %122 = icmp eq i64 %121, %82
  br i1 %122, label %123, label %88, !llvm.loop !221

123:                                              ; preds = %117, %114, %76
  %124 = phi i64 [ 0, %76 ], [ %82, %117 ], [ %89, %114 ]
  %125 = tail call i64 @GetMagickResource(i32 noundef 3) #22
  %126 = tail call i64 @GetMagickResourceLimit(i32 noundef 3) #22
  %127 = icmp ugt i64 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load i32, ptr %48, align 4, !tbaa !50
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %133, label %131

131:                                              ; preds = %128
  %132 = tail call i32 @close(i32 noundef %129) #22
  store i32 -1, ptr %48, align 4, !tbaa !50
  tail call void @RelinquishMagickResource(i32 noundef 3, i64 noundef 1) #22
  br label %133

133:                                              ; preds = %131, %128, %123
  %134 = load ptr, ptr %46, align 8, !tbaa !57
  tail call void @UnlockSemaphoreInfo(ptr noundef %134) #22
  br label %166

135:                                              ; preds = %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  %136 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 29
  %137 = load ptr, ptr %136, align 8, !tbaa !57
  tail call void @LockSemaphoreInfo(ptr noundef %137) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !122
  %138 = load i64, ptr %12, align 8, !tbaa !99
  %139 = icmp ne i64 %138, %18
  %140 = icmp ugt i64 %22, 262142
  %141 = select i1 %139, i1 true, i1 %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 1
  store i64 1, ptr %143, align 8, !tbaa !104
  br label %144

144:                                              ; preds = %135, %142
  %145 = phi i64 [ %19, %142 ], [ %22, %135 ]
  %146 = phi i64 [ %21, %142 ], [ 1, %135 ]
  %147 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 23
  %148 = icmp sgt i64 %146, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 3
  br label %151

151:                                              ; preds = %149, %157
  %152 = phi i64 [ 0, %149 ], [ %161, %157 ]
  %153 = phi ptr [ %24, %149 ], [ %158, %157 ]
  %154 = load ptr, ptr %147, align 8, !tbaa !85
  %155 = call i64 @WriteDistributePixelCachePixels(ptr noundef %154, ptr noundef nonnull %4, i64 noundef %145, ptr noundef %153) #22
  %156 = icmp eq i64 %155, %145
  br i1 %156, label %157, label %163

157:                                              ; preds = %151
  %158 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 %18
  %159 = load i64, ptr %150, align 8, !tbaa !102
  %160 = add nsw i64 %159, 1
  store i64 %160, ptr %150, align 8, !tbaa !102
  %161 = add nuw nsw i64 %152, 1
  %162 = icmp eq i64 %161, %146
  br i1 %162, label %163, label %151, !llvm.loop !222

163:                                              ; preds = %157, %151, %144
  %164 = phi i64 [ 0, %144 ], [ %146, %157 ], [ %152, %151 ]
  %165 = load ptr, ptr %136, align 8, !tbaa !57
  call void @UnlockSemaphoreInfo(ptr noundef %165) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  br label %166

166:                                              ; preds = %36, %27, %8, %163, %133
  %167 = phi i64 [ 0, %8 ], [ %164, %163 ], [ %124, %133 ], [ 0, %27 ], [ %30, %36 ]
  %168 = phi i64 [ %21, %8 ], [ %146, %163 ], [ %82, %133 ], [ %30, %27 ], [ %30, %36 ]
  %169 = icmp slt i64 %167, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %166
  %171 = tail call ptr @__errno_location() #23
  %172 = load i32, ptr %171, align 4, !tbaa !34
  %173 = call ptr @GetExceptionMessage(i32 noundef %172) #22
  %174 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  %175 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5469, i32 noundef 445, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.19, ptr noundef nonnull %174, ptr noundef %173) #22
  %176 = call ptr @DestroyString(ptr noundef %173) #22
  br label %199

177:                                              ; preds = %166
  %178 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 25
  %179 = load i32, ptr %178, align 4, !tbaa !58
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %199, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 7
  %183 = load i64, ptr %182, align 8, !tbaa !100
  %184 = icmp ult i64 %183, 101
  %185 = add i64 %183, -1
  %186 = icmp eq i64 %185, %11
  %187 = or i1 %184, %186
  br i1 %187, label %192, label %188

188:                                              ; preds = %181
  %189 = udiv i64 %183, 100
  %190 = urem i64 %11, %189
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %181, %188
  %193 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %194 = uitofp i64 %18 to double
  %195 = uitofp i64 %21 to double
  %196 = sitofp i64 %16 to double
  %197 = sitofp i64 %11 to double
  %198 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5474, ptr noundef nonnull @.str.30, ptr noundef nonnull %193, double noundef %194, double noundef %195, double noundef %196, double noundef %197) #22
  br label %199

199:                                              ; preds = %177, %188, %192, %3, %170, %68
  %200 = phi i32 [ 0, %170 ], [ 0, %68 ], [ 1, %3 ], [ 1, %192 ], [ 1, %188 ], [ 1, %177 ]
  ret i32 %200
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @WritePixelCacheIndexes(ptr noundef %0, ptr noalias nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct._RectangleInfo, align 8
  %5 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 16
  %6 = load i32, ptr %5, align 8, !tbaa !98
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %208, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !96
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %208

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !107
  %16 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 6
  %17 = load i64, ptr %16, align 8, !tbaa !99
  %18 = mul i64 %17, %15
  %19 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !108
  %21 = add i64 %18, %20
  %22 = load i64, ptr %13, align 8, !tbaa !109
  %23 = shl i64 %22, 1
  %24 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 1, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !110
  %26 = mul i64 %23, %25
  %27 = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !89
  %29 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !38
  switch i32 %30, label %175 [
    i32 1, label %31
    i32 2, label %31
    i32 3, label %49
    i32 5, label %144
  ]

31:                                               ; preds = %12, %12
  %32 = icmp eq i64 %17, %22
  %33 = select i1 %32, i64 %26, i64 %23
  %34 = select i1 %32, i64 1, i64 %25
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %175

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 15
  %38 = load ptr, ptr %37, align 8, !tbaa !94
  %39 = getelementptr inbounds i16, ptr %38, i64 %21
  br label %40

40:                                               ; preds = %36, %40
  %41 = phi ptr [ %46, %40 ], [ %39, %36 ]
  %42 = phi i64 [ %47, %40 ], [ 0, %36 ]
  %43 = phi ptr [ %44, %40 ], [ %28, %36 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %41, ptr align 2 %43, i64 %33, i1 false)
  %44 = getelementptr inbounds i16, ptr %43, i64 %22
  %45 = load i64, ptr %16, align 8, !tbaa !99
  %46 = getelementptr inbounds i16, ptr %41, i64 %45
  %47 = add nuw nsw i64 %42, 1
  %48 = icmp eq i64 %47, %34
  br i1 %48, label %175, label %40, !llvm.loop !223

49:                                               ; preds = %12
  %50 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 29
  %51 = load ptr, ptr %50, align 8, !tbaa !57
  tail call void @LockSemaphoreInfo(ptr noundef %51) #22
  %52 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 17
  %53 = load i32, ptr %52, align 4, !tbaa !50
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %80

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  %57 = load i8, ptr %56, align 8, !tbaa !93
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = tail call i32 @AcquireUniqueFileResource(ptr noundef nonnull %56) #22
  br label %66

61:                                               ; preds = %55
  %62 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %56, i32 noundef 194, i32 noundef 384) #22
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %56, i32 noundef 2, i32 noundef 384) #22
  br label %66

66:                                               ; preds = %64, %61, %59
  %67 = phi i32 [ %60, %59 ], [ %65, %64 ], [ %62, %61 ]
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = tail call i32 @AcquireMagickResource(i32 noundef 3, i64 noundef 1) #22
  store i32 %67, ptr %52, align 4, !tbaa !50
  %71 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 4
  store i32 2, ptr %71, align 4, !tbaa !47
  br label %80

72:                                               ; preds = %66
  %73 = tail call ptr @__errno_location() #23
  %74 = load i32, ptr %73, align 4, !tbaa !34
  %75 = tail call ptr @GetExceptionMessage(i32 noundef %74) #22
  %76 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  %77 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5243, i32 noundef 430, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.19, ptr noundef nonnull %76, ptr noundef %75) #22
  %78 = tail call ptr @DestroyString(ptr noundef %75) #22
  %79 = load ptr, ptr %50, align 8, !tbaa !57
  tail call void @UnlockSemaphoreInfo(ptr noundef %79) #22
  br label %208

80:                                               ; preds = %69, %49
  %81 = load i64, ptr %16, align 8, !tbaa !99
  %82 = icmp eq i64 %81, %22
  %83 = icmp ult i64 %26, 262143
  %84 = select i1 %82, i1 %83, i1 false
  %85 = select i1 %84, i64 %26, i64 %23
  %86 = select i1 %84, i64 1, i64 %25
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %132

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 7
  %90 = load i64, ptr %89, align 8, !tbaa !100
  %91 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 8
  %92 = shl i64 %81, 3
  %93 = mul i64 %92, %90
  %94 = load i32, ptr %52, align 4, !tbaa !50, !alias.scope !224, !noalias !227
  %95 = icmp slt i64 %85, 1
  br label %96

96:                                               ; preds = %88, %126
  %97 = phi i64 [ 0, %88 ], [ %130, %126 ]
  %98 = phi ptr [ %28, %88 ], [ %127, %126 ]
  %99 = phi i64 [ %21, %88 ], [ %129, %126 ]
  %100 = load i64, ptr %91, align 8, !tbaa !118
  %101 = shl i64 %99, 1
  %102 = add i64 %101, %93
  %103 = add i64 %102, %100
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %104 = tail call i64 @lseek(i32 noundef %94, i64 noundef %103, i32 noundef 0) #22, !noalias !229
  %105 = icmp slt i64 %104, 0
  %106 = select i1 %105, i1 true, i1 %95
  %107 = ashr i64 %104, 63
  br i1 %106, label %123, label %108

108:                                              ; preds = %96, %119
  %109 = phi i64 [ %121, %119 ], [ 0, %96 ]
  %110 = getelementptr inbounds i8, ptr %98, i64 %109
  %111 = sub i64 %85, %109
  %112 = tail call i64 @llvm.umin.i64(i64 %111, i64 9223372036854775807)
  %113 = tail call i64 @write(i32 noundef %94, ptr noundef %110, i64 noundef %112) #22, !noalias !224
  %114 = icmp slt i64 %113, 1
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = tail call ptr @__errno_location() #23
  %117 = load i32, ptr %116, align 4, !tbaa !34, !noalias !229
  %118 = icmp eq i32 %117, 4
  br i1 %118, label %119, label %123

119:                                              ; preds = %115, %108
  %120 = phi i64 [ 0, %115 ], [ %113, %108 ]
  %121 = add nuw nsw i64 %120, %109
  %122 = icmp slt i64 %121, %85
  br i1 %122, label %108, label %123, !llvm.loop !194

123:                                              ; preds = %115, %119, %96
  %124 = phi i64 [ %107, %96 ], [ %121, %119 ], [ %109, %115 ]
  %125 = icmp ult i64 %124, %85
  br i1 %125, label %132, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds i16, ptr %98, i64 %22
  %128 = load i64, ptr %16, align 8, !tbaa !99
  %129 = add i64 %128, %99
  %130 = add nuw nsw i64 %97, 1
  %131 = icmp eq i64 %130, %86
  br i1 %131, label %132, label %96, !llvm.loop !230

132:                                              ; preds = %126, %123, %80
  %133 = phi i64 [ 0, %80 ], [ %86, %126 ], [ %97, %123 ]
  %134 = tail call i64 @GetMagickResource(i32 noundef 3) #22
  %135 = tail call i64 @GetMagickResourceLimit(i32 noundef 3) #22
  %136 = icmp ugt i64 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load i32, ptr %52, align 4, !tbaa !50
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %142, label %140

140:                                              ; preds = %137
  %141 = tail call i32 @close(i32 noundef %138) #22
  store i32 -1, ptr %52, align 4, !tbaa !50
  tail call void @RelinquishMagickResource(i32 noundef 3, i64 noundef 1) #22
  br label %142

142:                                              ; preds = %140, %137, %132
  %143 = load ptr, ptr %50, align 8, !tbaa !57
  tail call void @UnlockSemaphoreInfo(ptr noundef %143) #22
  br label %175

144:                                              ; preds = %12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  %145 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 29
  %146 = load ptr, ptr %145, align 8, !tbaa !57
  tail call void @LockSemaphoreInfo(ptr noundef %146) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !122
  %147 = load i64, ptr %16, align 8, !tbaa !99
  %148 = icmp ne i64 %147, %22
  %149 = icmp ugt i64 %26, 262142
  %150 = select i1 %148, i1 true, i1 %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %144
  %152 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 1
  store i64 1, ptr %152, align 8, !tbaa !104
  br label %153

153:                                              ; preds = %144, %151
  %154 = phi i64 [ %23, %151 ], [ %26, %144 ]
  %155 = phi i64 [ %25, %151 ], [ 1, %144 ]
  %156 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 23
  %157 = icmp sgt i64 %155, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 3
  br label %160

160:                                              ; preds = %158, %166
  %161 = phi i64 [ 0, %158 ], [ %170, %166 ]
  %162 = phi ptr [ %28, %158 ], [ %167, %166 ]
  %163 = load ptr, ptr %156, align 8, !tbaa !85
  %164 = call i64 @WriteDistributePixelCacheIndexes(ptr noundef %163, ptr noundef nonnull %4, i64 noundef %154, ptr noundef %162) #22
  %165 = icmp eq i64 %164, %154
  br i1 %165, label %166, label %172

166:                                              ; preds = %160
  %167 = getelementptr inbounds i16, ptr %162, i64 %22
  %168 = load i64, ptr %159, align 8, !tbaa !102
  %169 = add nsw i64 %168, 1
  store i64 %169, ptr %159, align 8, !tbaa !102
  %170 = add nuw nsw i64 %161, 1
  %171 = icmp eq i64 %170, %155
  br i1 %171, label %172, label %160, !llvm.loop !231

172:                                              ; preds = %166, %160, %153
  %173 = phi i64 [ 0, %153 ], [ %155, %166 ], [ %161, %160 ]
  %174 = load ptr, ptr %145, align 8, !tbaa !57
  call void @UnlockSemaphoreInfo(ptr noundef %174) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  br label %175

175:                                              ; preds = %40, %31, %12, %172, %142
  %176 = phi i64 [ 0, %12 ], [ %173, %172 ], [ %133, %142 ], [ 0, %31 ], [ %34, %40 ]
  %177 = phi i64 [ %25, %12 ], [ %155, %172 ], [ %86, %142 ], [ %34, %31 ], [ %34, %40 ]
  %178 = icmp slt i64 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %175
  %180 = tail call ptr @__errno_location() #23
  %181 = load i32, ptr %180, align 4, !tbaa !34
  %182 = call ptr @GetExceptionMessage(i32 noundef %181) #22
  %183 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 19
  %184 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5305, i32 noundef 445, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.19, ptr noundef nonnull %183, ptr noundef %182) #22
  %185 = call ptr @DestroyString(ptr noundef %182) #22
  br label %208

186:                                              ; preds = %175
  %187 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 25
  %188 = load i32, ptr %187, align 4, !tbaa !58
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %208, label %190

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 7
  %192 = load i64, ptr %191, align 8, !tbaa !100
  %193 = icmp ult i64 %192, 101
  %194 = add i64 %192, -1
  %195 = icmp eq i64 %194, %15
  %196 = or i1 %193, %195
  br i1 %196, label %201, label %197

197:                                              ; preds = %190
  %198 = udiv i64 %192, 100
  %199 = urem i64 %15, %198
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %190, %197
  %202 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %203 = uitofp i64 %22 to double
  %204 = uitofp i64 %25 to double
  %205 = sitofp i64 %20 to double
  %206 = sitofp i64 %15 to double
  %207 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5310, ptr noundef nonnull @.str.30, ptr noundef nonnull %202, double noundef %203, double noundef %204, double noundef %205, double noundef %206) #22
  br label %208

208:                                              ; preds = %186, %197, %201, %8, %3, %179, %72
  %209 = phi i32 [ 0, %179 ], [ 0, %72 ], [ 0, %3 ], [ 1, %8 ], [ 1, %201 ], [ 1, %197 ], [ 1, %186 ]
  ret i32 %209
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct._CacheInfo, ptr %4, i64 0, i32 20, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !205
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 %6(ptr noundef %0, ptr noundef %1) #22
  br label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %4, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = tail call i32 @SyncAuthenticPixelCacheNexus(ptr noundef %0, ptr noundef %13, ptr noundef %1) #25, !range !97
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i32 [ %9, %8 ], [ %14, %10 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define hidden i32 @SyncImagePixelCache(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @GetImagePixelCache(ptr noundef %0, i32 noundef 1, ptr noundef %1) #25
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #12

declare i32 @UnmapBlob(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @RelinquishMagickResource(i32 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #3

declare hidden i32 @RelinquishDistributePixelCache(ptr noundef) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #3

declare double @GetPseudoRandomValue(ptr noundef) local_unnamed_addr #3

declare i64 @GetImageIndexInList(ptr noundef) local_unnamed_addr #3

declare i32 @AcquireMagickResource(i32 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @FormatMagickSize(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #3

declare hidden ptr @AcquireDistributeCacheInfo(ptr noundef) local_unnamed_addr #3

declare hidden i32 @OpenDistributePixelCache(ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden ptr @GetDistributeCacheHostname(ptr noundef) local_unnamed_addr #3

declare hidden i32 @GetDistributeCachePort(ptr noundef) local_unnamed_addr #3

declare hidden i32 @GetDistributeCacheFile(ptr noundef) local_unnamed_addr #3

declare ptr @MapBlob(i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @AcquireUniqueFileResource(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: noreturn nounwind uwtable
define internal void @CacheSignalHandler(i32 %0) #14 {
  %2 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #22
  call void @GetExceptionInfo(ptr noundef nonnull %2) #22
  %3 = tail call ptr @__errno_location() #23
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = call ptr @GetExceptionMessage(i32 noundef %4) #22
  %6 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3363, i32 noundef 745, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.3, ptr noundef %5) #22
  %7 = call ptr @DestroyString(ptr noundef %5) #22
  call void @CatchException(ptr noundef nonnull %2) #22
  %8 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #22
  call void @MagickCoreTerminus() #22
  call void @_exit(i32 noundef 46) #24
  unreachable
}

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #15

declare void @MagickDelay(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #12

declare i64 @GetMagickResource(i32 noundef) local_unnamed_addr #3

declare hidden i64 @ReadDistributePixelCacheIndexes(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #13

declare hidden i64 @ReadDistributePixelCachePixels(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #16

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #17

declare hidden i64 @WriteDistributePixelCacheIndexes(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare hidden i64 @WriteDistributePixelCachePixels(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { hot nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { nounwind allocsize(0,1) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(none) }
attributes #24 = { noreturn nounwind }
attributes #25 = { hot }
attributes #26 = { hot nounwind }

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
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 16}
!39 = !{!"_CacheInfo", !35, i64 0, !35, i64 4, !40, i64 8, !35, i64 16, !35, i64 20, !35, i64 24, !40, i64 32, !40, i64 40, !41, i64 48, !41, i64 56, !35, i64 64, !42, i64 72, !40, i64 128, !45, i64 136, !45, i64 144, !45, i64 152, !35, i64 160, !35, i64 164, !36, i64 168, !36, i64 4264, !46, i64 8360, !45, i64 8448, !40, i64 8456, !45, i64 8464, !35, i64 8472, !35, i64 8476, !35, i64 8480, !40, i64 8488, !45, i64 8496, !45, i64 8504, !40, i64 8512, !40, i64 8520}
!40 = !{!"long", !36, i64 0}
!41 = !{!"long long", !36, i64 0}
!42 = !{!"_MagickPixelPacket", !35, i64 0, !35, i64 4, !35, i64 8, !43, i64 16, !40, i64 24, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48}
!43 = !{!"double", !36, i64 0}
!44 = !{!"float", !36, i64 0}
!45 = !{!"any pointer", !36, i64 0}
!46 = !{!"_CacheMethods", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80}
!47 = !{!39, !35, i64 20}
!48 = !{!39, !35, i64 4}
!49 = !{!39, !40, i64 8}
!50 = !{!39, !35, i64 164}
!51 = !{!39, !35, i64 8480}
!52 = !{!39, !40, i64 128}
!53 = !{!39, !45, i64 136}
!54 = !{!39, !35, i64 8472}
!55 = !{!39, !45, i64 8496}
!56 = !{!39, !40, i64 8488}
!57 = !{!39, !45, i64 8504}
!58 = !{!39, !35, i64 8476}
!59 = !{!39, !40, i64 8520}
!60 = !{!45, !45, i64 0}
!61 = !{!62, !40, i64 80}
!62 = !{!"_NexusInfo", !35, i64 0, !63, i64 8, !41, i64 40, !45, i64 48, !45, i64 56, !35, i64 64, !45, i64 72, !40, i64 80}
!63 = !{!"_RectangleInfo", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24}
!64 = distinct !{!64, !65, !66}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!68, !45, i64 584}
!68 = !{!"_Image", !35, i64 0, !35, i64 4, !35, i64 8, !40, i64 16, !35, i64 24, !35, i64 28, !35, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !45, i64 72, !69, i64 80, !69, i64 88, !69, i64 96, !43, i64 104, !71, i64 112, !35, i64 208, !45, i64 216, !35, i64 224, !45, i64 232, !45, i64 240, !45, i64 248, !40, i64 256, !43, i64 264, !43, i64 272, !63, i64 280, !63, i64 312, !63, i64 344, !43, i64 376, !43, i64 384, !43, i64 392, !35, i64 400, !35, i64 404, !35, i64 408, !35, i64 412, !35, i64 416, !35, i64 420, !45, i64 424, !40, i64 432, !40, i64 440, !40, i64 448, !40, i64 456, !40, i64 464, !40, i64 472, !73, i64 480, !74, i64 504, !45, i64 568, !45, i64 576, !45, i64 584, !45, i64 592, !45, i64 600, !45, i64 608, !36, i64 616, !36, i64 4712, !36, i64 8808, !40, i64 12904, !40, i64 12912, !76, i64 12920, !35, i64 12976, !40, i64 12984, !45, i64 12992, !77, i64 13000, !77, i64 13032, !45, i64 13064, !40, i64 13072, !40, i64 13080, !45, i64 13088, !45, i64 13096, !45, i64 13104, !35, i64 13112, !35, i64 13116, !69, i64 13120, !45, i64 13128, !63, i64 13136, !45, i64 13168, !45, i64 13176, !35, i64 13184, !35, i64 13188, !41, i64 13192, !35, i64 13200, !40, i64 13208, !40, i64 13216, !35, i64 13224, !40, i64 13232}
!69 = !{!"_PixelPacket", !70, i64 0, !70, i64 2, !70, i64 4, !70, i64 6}
!70 = !{!"short", !36, i64 0}
!71 = !{!"_ChromaticityInfo", !72, i64 0, !72, i64 24, !72, i64 48, !72, i64 72}
!72 = !{!"_PrimaryInfo", !43, i64 0, !43, i64 8, !43, i64 16}
!73 = !{!"_ErrorInfo", !43, i64 0, !43, i64 8, !43, i64 16}
!74 = !{!"_TimerInfo", !75, i64 0, !75, i64 24, !35, i64 48, !40, i64 56}
!75 = !{!"_Timer", !43, i64 0, !43, i64 8, !43, i64 16}
!76 = !{!"_ExceptionInfo", !35, i64 0, !35, i64 4, !45, i64 8, !45, i64 16, !45, i64 24, !35, i64 32, !45, i64 40, !40, i64 48}
!77 = !{!"_ProfileInfo", !45, i64 0, !40, i64 8, !45, i64 16, !40, i64 24}
!78 = !{!41, !41, i64 0}
!79 = !{!39, !41, i64 56}
!80 = !{!39, !45, i64 144}
!81 = !{!39, !35, i64 64}
!82 = !{i64 0, i64 8, !60, i64 8, i64 8, !60, i64 16, i64 8, !60, i64 24, i64 8, !60, i64 32, i64 8, !60, i64 40, i64 8, !60, i64 48, i64 8, !60, i64 56, i64 8, !60, i64 64, i64 8, !60, i64 72, i64 8, !60, i64 80, i64 8, !60}
!83 = !{!68, !35, i64 12976}
!84 = !{!39, !45, i64 8440}
!85 = !{!39, !45, i64 8464}
!86 = !{!62, !45, i64 48}
!87 = !{!62, !35, i64 0}
!88 = !{!62, !41, i64 40}
!89 = !{!62, !45, i64 72}
!90 = distinct !{!90, !65, !66}
!91 = !{!39, !45, i64 8448}
!92 = !{!39, !35, i64 24}
!93 = !{!36, !36, i64 0}
!94 = !{!39, !45, i64 152}
!95 = !{!39, !45, i64 8400}
!96 = !{!62, !35, i64 64}
!97 = !{i32 0, i32 2}
!98 = !{!39, !35, i64 160}
!99 = !{!39, !40, i64 32}
!100 = !{!39, !40, i64 40}
!101 = !{!63, !40, i64 16}
!102 = !{!63, !40, i64 24}
!103 = !{!63, !40, i64 0}
!104 = !{!63, !40, i64 8}
!105 = !{!68, !45, i64 424}
!106 = !{!68, !45, i64 13128}
!107 = !{!62, !40, i64 32}
!108 = !{!62, !40, i64 24}
!109 = !{!62, !40, i64 8}
!110 = !{!62, !40, i64 16}
!111 = !{!62, !45, i64 56}
!112 = distinct !{!112, !65, !66}
!113 = !{!114}
!114 = distinct !{!114, !115, !"ReadPixelCacheRegion: argument 0"}
!115 = distinct !{!115, !"ReadPixelCacheRegion"}
!116 = !{!117}
!117 = distinct !{!117, !115, !"ReadPixelCacheRegion: argument 1"}
!118 = !{!39, !41, i64 48}
!119 = !{!114, !117}
!120 = distinct !{!120, !65, !66}
!121 = distinct !{!121, !65, !66}
!122 = !{i64 0, i64 8, !123, i64 8, i64 8, !123, i64 16, i64 8, !123, i64 24, i64 8, !123}
!123 = !{!40, !40, i64 0}
!124 = distinct !{!124, !65, !66}
!125 = distinct !{!125, !65, !66}
!126 = !{!127}
!127 = distinct !{!127, !128, !"ReadPixelCacheRegion: argument 0"}
!128 = distinct !{!128, !"ReadPixelCacheRegion"}
!129 = !{!130}
!130 = distinct !{!130, !128, !"ReadPixelCacheRegion: argument 1"}
!131 = !{!127, !130}
!132 = distinct !{!132, !65, !66}
!133 = distinct !{!133, !65, !66}
!134 = !{!39, !45, i64 8416}
!135 = !{!39, !45, i64 8392}
!136 = !{!39, !45, i64 8408}
!137 = !{!39, !35, i64 0}
!138 = !{!69, !70, i64 4}
!139 = !{!42, !44, i64 32}
!140 = !{!69, !70, i64 2}
!141 = !{!42, !44, i64 36}
!142 = !{!69, !70, i64 0}
!143 = !{!42, !44, i64 40}
!144 = !{!69, !70, i64 6}
!145 = !{!42, !44, i64 44}
!146 = !{!68, !35, i64 4}
!147 = !{!70, !70, i64 0}
!148 = !{!42, !44, i64 48}
!149 = distinct !{!149, !65, !66}
!150 = distinct !{!150, !65, !66}
!151 = !{!39, !45, i64 8384}
!152 = !{!46, !45, i64 0}
!153 = !{!46, !45, i64 8}
!154 = !{!46, !45, i64 16}
!155 = !{!46, !45, i64 24}
!156 = !{!46, !45, i64 32}
!157 = !{!46, !45, i64 40}
!158 = !{!46, !45, i64 56}
!159 = !{!46, !45, i64 48}
!160 = !{!46, !45, i64 64}
!161 = !{!46, !45, i64 72}
!162 = !{!46, !45, i64 80}
!163 = !{!39, !45, i64 8376}
!164 = !{!165}
!165 = distinct !{!165, !166, !"AcquireCacheNexusPixels: argument 0"}
!166 = distinct !{!166, !"AcquireCacheNexusPixels"}
!167 = !{!168}
!168 = distinct !{!168, !169, !"AcquireCacheNexusPixels: argument 0"}
!169 = distinct !{!169, !"AcquireCacheNexusPixels"}
!170 = !{!171}
!171 = distinct !{!171, !172, !"IsAuthenticPixelCache: argument 0"}
!172 = distinct !{!172, !"IsAuthenticPixelCache"}
!173 = !{!174}
!174 = distinct !{!174, !172, !"IsAuthenticPixelCache: argument 1"}
!175 = !{!39, !45, i64 8368}
!176 = !{!39, !45, i64 8360}
!177 = !{i64 0, i64 4, !34, i64 4, i64 4, !34, i64 8, i64 4, !34, i64 16, i64 8, !123, i64 24, i64 4, !34, i64 28, i64 4, !34, i64 32, i64 4, !34, i64 40, i64 8, !123, i64 48, i64 8, !123, i64 56, i64 8, !123, i64 64, i64 8, !123, i64 72, i64 8, !60, i64 80, i64 2, !147, i64 82, i64 2, !147, i64 84, i64 2, !147, i64 86, i64 2, !147, i64 88, i64 2, !147, i64 90, i64 2, !147, i64 92, i64 2, !147, i64 94, i64 2, !147, i64 96, i64 2, !147, i64 98, i64 2, !147, i64 100, i64 2, !147, i64 102, i64 2, !147, i64 104, i64 8, !178, i64 112, i64 8, !178, i64 120, i64 8, !178, i64 128, i64 8, !178, i64 136, i64 8, !178, i64 144, i64 8, !178, i64 152, i64 8, !178, i64 160, i64 8, !178, i64 168, i64 8, !178, i64 176, i64 8, !178, i64 184, i64 8, !178, i64 192, i64 8, !178, i64 200, i64 8, !178, i64 208, i64 4, !34, i64 216, i64 8, !60, i64 224, i64 4, !34, i64 232, i64 8, !60, i64 240, i64 8, !60, i64 248, i64 8, !60, i64 256, i64 8, !123, i64 264, i64 8, !178, i64 272, i64 8, !178, i64 280, i64 8, !123, i64 288, i64 8, !123, i64 296, i64 8, !123, i64 304, i64 8, !123, i64 312, i64 8, !123, i64 320, i64 8, !123, i64 328, i64 8, !123, i64 336, i64 8, !123, i64 344, i64 8, !123, i64 352, i64 8, !123, i64 360, i64 8, !123, i64 368, i64 8, !123, i64 376, i64 8, !178, i64 384, i64 8, !178, i64 392, i64 8, !178, i64 400, i64 4, !34, i64 404, i64 4, !34, i64 408, i64 4, !34, i64 412, i64 4, !34, i64 416, i64 4, !34, i64 420, i64 4, !34, i64 424, i64 8, !60, i64 432, i64 8, !123, i64 440, i64 8, !123, i64 448, i64 8, !123, i64 456, i64 8, !123, i64 464, i64 8, !123, i64 472, i64 8, !123, i64 480, i64 8, !178, i64 488, i64 8, !178, i64 496, i64 8, !178, i64 504, i64 8, !178, i64 512, i64 8, !178, i64 520, i64 8, !178, i64 528, i64 8, !178, i64 536, i64 8, !178, i64 544, i64 8, !178, i64 552, i64 4, !34, i64 560, i64 8, !123, i64 568, i64 8, !60, i64 576, i64 8, !60, i64 584, i64 8, !60, i64 592, i64 8, !60, i64 600, i64 8, !60, i64 608, i64 8, !60, i64 616, i64 4096, !93, i64 4712, i64 4096, !93, i64 8808, i64 4096, !93, i64 12904, i64 8, !123, i64 12912, i64 8, !123, i64 12920, i64 4, !34, i64 12924, i64 4, !34, i64 12928, i64 8, !60, i64 12936, i64 8, !60, i64 12944, i64 8, !60, i64 12952, i64 4, !34, i64 12960, i64 8, !60, i64 12968, i64 8, !123, i64 12976, i64 4, !34, i64 12984, i64 8, !123, i64 12992, i64 8, !60, i64 13000, i64 8, !60, i64 13008, i64 8, !123, i64 13016, i64 8, !60, i64 13024, i64 8, !123, i64 13032, i64 8, !60, i64 13040, i64 8, !123, i64 13048, i64 8, !60, i64 13056, i64 8, !123, i64 13064, i64 8, !60, i64 13072, i64 8, !123, i64 13080, i64 8, !123, i64 13088, i64 8, !60, i64 13096, i64 8, !60, i64 13104, i64 8, !60, i64 13112, i64 4, !34, i64 13116, i64 4, !34, i64 13120, i64 2, !147, i64 13122, i64 2, !147, i64 13124, i64 2, !147, i64 13126, i64 2, !147, i64 13128, i64 8, !60, i64 13136, i64 8, !123, i64 13144, i64 8, !123, i64 13152, i64 8, !123, i64 13160, i64 8, !123, i64 13168, i64 8, !60, i64 13176, i64 8, !60, i64 13184, i64 4, !34, i64 13188, i64 4, !34, i64 13192, i64 8, !78, i64 13200, i64 4, !34, i64 13208, i64 8, !123, i64 13216, i64 8, !123, i64 13224, i64 4, !34, i64 13232, i64 8, !123}
!178 = !{!43, !43, i64 0}
!179 = !{i64 0, i64 8, !60, i64 8, i64 8, !60, i64 16, i64 8, !60, i64 24, i64 8, !60, i64 32, i64 4096, !93, i64 4128, i64 4096, !93, i64 8224, i64 4096, !93, i64 12320, i64 8, !123, i64 12328, i64 8, !123, i64 12336, i64 4, !34, i64 12340, i64 4, !34, i64 12344, i64 8, !60, i64 12352, i64 8, !60, i64 12360, i64 8, !60, i64 12368, i64 4, !34, i64 12376, i64 8, !60, i64 12384, i64 8, !123, i64 12392, i64 4, !34, i64 12400, i64 8, !123, i64 12408, i64 8, !60, i64 12416, i64 8, !60, i64 12424, i64 8, !123, i64 12432, i64 8, !60, i64 12440, i64 8, !123, i64 12448, i64 8, !60, i64 12456, i64 8, !123, i64 12464, i64 8, !60, i64 12472, i64 8, !123, i64 12480, i64 8, !60, i64 12488, i64 8, !123, i64 12496, i64 8, !123, i64 12504, i64 8, !60, i64 12512, i64 8, !60, i64 12520, i64 8, !60, i64 12528, i64 4, !34, i64 12532, i64 4, !34, i64 12536, i64 2, !147, i64 12538, i64 2, !147, i64 12540, i64 2, !147, i64 12542, i64 2, !147, i64 12544, i64 8, !60, i64 12552, i64 8, !123, i64 12560, i64 8, !123, i64 12568, i64 8, !123, i64 12576, i64 8, !123, i64 12584, i64 8, !60, i64 12592, i64 8, !60, i64 12600, i64 4, !34, i64 12604, i64 4, !34, i64 12608, i64 8, !78, i64 12616, i64 4, !34, i64 12624, i64 8, !123, i64 12632, i64 8, !123, i64 12640, i64 4, !34, i64 12648, i64 8, !123}
!180 = !{i64 0, i64 8, !60, i64 8, i64 8, !60, i64 16, i64 8, !60, i64 24, i64 4096, !93, i64 4120, i64 4096, !93, i64 8216, i64 4096, !93, i64 12312, i64 8, !123, i64 12320, i64 8, !123, i64 12328, i64 4, !34, i64 12332, i64 4, !34, i64 12336, i64 8, !60, i64 12344, i64 8, !60, i64 12352, i64 8, !60, i64 12360, i64 4, !34, i64 12368, i64 8, !60, i64 12376, i64 8, !123, i64 12384, i64 4, !34, i64 12392, i64 8, !123, i64 12400, i64 8, !60, i64 12408, i64 8, !60, i64 12416, i64 8, !123, i64 12424, i64 8, !60, i64 12432, i64 8, !123, i64 12440, i64 8, !60, i64 12448, i64 8, !123, i64 12456, i64 8, !60, i64 12464, i64 8, !123, i64 12472, i64 8, !60, i64 12480, i64 8, !123, i64 12488, i64 8, !123, i64 12496, i64 8, !60, i64 12504, i64 8, !60, i64 12512, i64 8, !60, i64 12520, i64 4, !34, i64 12524, i64 4, !34, i64 12528, i64 2, !147, i64 12530, i64 2, !147, i64 12532, i64 2, !147, i64 12534, i64 2, !147, i64 12536, i64 8, !60, i64 12544, i64 8, !123, i64 12552, i64 8, !123, i64 12560, i64 8, !123, i64 12568, i64 8, !123, i64 12576, i64 8, !60, i64 12584, i64 8, !60, i64 12592, i64 4, !34, i64 12596, i64 4, !34, i64 12600, i64 8, !78, i64 12608, i64 4, !34, i64 12616, i64 8, !123, i64 12624, i64 8, !123, i64 12632, i64 4, !34, i64 12640, i64 8, !123}
!181 = !{!68, !40, i64 40}
!182 = !{!68, !40, i64 48}
!183 = !{i64 0, i64 4, !34, i64 4, i64 4, !34, i64 8, i64 8, !123, i64 16, i64 4, !34, i64 20, i64 4, !34, i64 24, i64 4, !34, i64 32, i64 8, !123, i64 40, i64 8, !123, i64 48, i64 8, !78, i64 56, i64 8, !78, i64 64, i64 4, !34, i64 72, i64 4, !34, i64 76, i64 4, !34, i64 80, i64 4, !34, i64 88, i64 8, !178, i64 96, i64 8, !123, i64 104, i64 4, !184, i64 108, i64 4, !184, i64 112, i64 4, !184, i64 116, i64 4, !184, i64 120, i64 4, !184, i64 128, i64 8, !123, i64 136, i64 8, !60, i64 144, i64 8, !60, i64 152, i64 8, !60, i64 160, i64 4, !34, i64 164, i64 4, !34, i64 168, i64 4096, !93, i64 4264, i64 4096, !93, i64 8360, i64 8, !60, i64 8368, i64 8, !60, i64 8376, i64 8, !60, i64 8384, i64 8, !60, i64 8392, i64 8, !60, i64 8400, i64 8, !60, i64 8408, i64 8, !60, i64 8416, i64 8, !60, i64 8424, i64 8, !60, i64 8432, i64 8, !60, i64 8440, i64 8, !60, i64 8448, i64 8, !60, i64 8456, i64 8, !123, i64 8464, i64 8, !60, i64 8472, i64 4, !34, i64 8476, i64 4, !34, i64 8480, i64 4, !34, i64 8488, i64 8, !123, i64 8496, i64 8, !60, i64 8504, i64 8, !60, i64 8512, i64 8, !123, i64 8520, i64 8, !123}
!184 = !{!44, !44, i64 0}
!185 = !{!68, !40, i64 13208}
!186 = !{!68, !35, i64 0}
!187 = !{!68, !35, i64 13200}
!188 = !{!189}
!189 = distinct !{!189, !190, !"WritePixelCacheRegion: argument 0"}
!190 = distinct !{!190, !"WritePixelCacheRegion"}
!191 = !{!192}
!192 = distinct !{!192, !190, !"WritePixelCacheRegion: argument 1"}
!193 = !{!189, !192}
!194 = distinct !{!194, !65, !66}
!195 = distinct !{!195, !65, !66}
!196 = distinct !{!196, !65, !66}
!197 = !{!68, !45, i64 12992}
!198 = !{!68, !40, i64 12984}
!199 = !{!68, !35, i64 28}
!200 = !{!68, !35, i64 13184}
!201 = !{!202}
!202 = distinct !{!202, !203, !"ValidatePixelCacheMorphology: argument 0"}
!203 = distinct !{!203, !"ValidatePixelCacheMorphology"}
!204 = !{!39, !45, i64 8424}
!205 = !{!39, !45, i64 8432}
!206 = !{!68, !70, i64 86}
!207 = !{!68, !35, i64 32}
!208 = distinct !{!208, !65, !66}
!209 = distinct !{!209, !65, !66}
!210 = distinct !{!210, !65, !66}
!211 = distinct !{!211, !65, !66}
!212 = !{i64 0, i64 4, !34, i64 4, i64 4, !34, i64 8, i64 4, !34, i64 16, i64 8, !178, i64 24, i64 8, !123, i64 32, i64 4, !184, i64 36, i64 4, !184, i64 40, i64 4, !184, i64 44, i64 4, !184, i64 48, i64 4, !184}
!213 = !{!42, !35, i64 4}
!214 = distinct !{!214, !65, !66}
!215 = !{!216}
!216 = distinct !{!216, !217, !"WritePixelCacheRegion: argument 0"}
!217 = distinct !{!217, !"WritePixelCacheRegion"}
!218 = !{!219}
!219 = distinct !{!219, !217, !"WritePixelCacheRegion: argument 1"}
!220 = !{!216, !219}
!221 = distinct !{!221, !65, !66}
!222 = distinct !{!222, !65, !66}
!223 = distinct !{!223, !65, !66}
!224 = !{!225}
!225 = distinct !{!225, !226, !"WritePixelCacheRegion: argument 0"}
!226 = distinct !{!226, !"WritePixelCacheRegion"}
!227 = !{!228}
!228 = distinct !{!228, !226, !"WritePixelCacheRegion: argument 1"}
!229 = !{!225, !228}
!230 = distinct !{!230, !65, !66}
!231 = distinct !{!231, !65, !66}
