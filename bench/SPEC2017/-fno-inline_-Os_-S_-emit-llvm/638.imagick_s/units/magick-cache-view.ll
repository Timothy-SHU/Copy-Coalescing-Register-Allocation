; ModuleID = 'magick/cache-view.c'
source_filename = "magick/cache-view.c"
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
%struct._CacheView = type { ptr, i32, i64, ptr, i32, i64 }
%struct._NexusInfo = type { i32, %struct._RectangleInfo, i64, ptr, ptr, i32, ptr, i64 }

@.str = private unnamed_addr constant [20 x i8] c"magick/cache-view.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"UnableToAcquireCacheView\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr poison) #9
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = tail call i32 @SyncImagePixelCache(ptr noundef %4, ptr noundef %1) #10
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @AcquireVirtualCacheView(ptr noundef %0, ptr nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 163, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #10
  br label %11

11:                                               ; preds = %8, %2
  %12 = tail call dereferenceable_or_null(48) ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef 48) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #12
  call void @GetExceptionInfo(ptr noundef nonnull %3) #10
  %15 = tail call ptr @__errno_location() #13
  %16 = load i32, ptr %15, align 4, !tbaa !27
  %17 = call ptr @GetExceptionMessage(i32 noundef %16) #10
  %18 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 168, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %17) #10
  %19 = call ptr @DestroyString(ptr noundef %17) #10
  call void @CatchException(ptr noundef nonnull %3) #10
  %20 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #10
  call void @MagickCoreTerminus() #10
  call void @_exit(i32 noundef 1) #14
  unreachable

21:                                               ; preds = %11
  %22 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %12, i32 noundef 0, i64 noundef 48) #10
  %23 = tail call ptr @ReferenceImage(ptr noundef nonnull %0) #10
  store ptr %23, ptr %12, align 8, !tbaa !6
  %24 = tail call fastcc i64 @GetOpenMPMaximumThreads() #9, !range !28
  %25 = getelementptr inbounds %struct._CacheView, ptr %12, i64 0, i32 2
  store i64 %24, ptr %25, align 8, !tbaa !29
  %26 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #10
  %27 = load i64, ptr %25, align 8, !tbaa !29
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #10
  store i64 %30, ptr %25, align 8, !tbaa !29
  br label %31

31:                                               ; preds = %29, %21
  %32 = phi i64 [ %30, %29 ], [ %27, %21 ]
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i64 1, ptr %25, align 8, !tbaa !29
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i64 [ 1, %34 ], [ %32, %31 ]
  %37 = tail call ptr @AcquirePixelCacheNexus(i64 noundef %36) #10
  %38 = getelementptr inbounds %struct._CacheView, ptr %12, i64 0, i32 3
  store ptr %37, ptr %38, align 8, !tbaa !30
  %39 = tail call i32 @GetImageVirtualPixelMethod(ptr noundef nonnull %0) #10
  %40 = getelementptr inbounds %struct._CacheView, ptr %12, i64 0, i32 1
  store i32 %39, ptr %40, align 8, !tbaa !31
  %41 = tail call i32 @IsEventLogging() #10
  %42 = getelementptr inbounds %struct._CacheView, ptr %12, i64 0, i32 4
  store i32 %41, ptr %42, align 8, !tbaa !32
  %43 = getelementptr inbounds %struct._CacheView, ptr %12, i64 0, i32 5
  store i64 2880220587, ptr %43, align 8, !tbaa !33
  %44 = load ptr, ptr %38, align 8, !tbaa !30
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #12
  call void @GetExceptionInfo(ptr noundef nonnull %4) #10
  %47 = tail call ptr @__errno_location() #13
  %48 = load i32, ptr %47, align 4, !tbaa !27
  %49 = call ptr @GetExceptionMessage(i32 noundef %48) #10
  %50 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 181, i32 noundef 745, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef %49) #10
  %51 = call ptr @DestroyString(ptr noundef %49) #10
  call void @CatchException(ptr noundef nonnull %4) #10
  %52 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #10
  call void @MagickCoreTerminus() #10
  call void @_exit(i32 noundef 46) #14
  unreachable

53:                                               ; preds = %35
  ret ptr %12
}

; Function Attrs: optsize
declare hidden i32 @SyncImagePixelCache(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @AcquireCacheView(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr nonnull poison) #9
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

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
declare void @_exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ReferenceImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @GetOpenMPMaximumThreads() unnamed_addr #0 {
  %1 = tail call i32 @omp_get_max_threads() #9
  %2 = sext i32 %1 to i64
  ret i64 %2
}

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquirePixelCacheNexus(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetImageVirtualPixelMethod(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsEventLogging() local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i32 @omp_get_max_threads() local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @CloneCacheView(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 215, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #10
  br label %10

10:                                               ; preds = %6, %1
  %11 = tail call dereferenceable_or_null(48) ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef 48) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #12
  call void @GetExceptionInfo(ptr noundef nonnull %2) #10
  %14 = tail call ptr @__errno_location() #13
  %15 = load i32, ptr %14, align 4, !tbaa !27
  %16 = call ptr @GetExceptionMessage(i32 noundef %15) #10
  %17 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 220, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %16) #10
  %18 = call ptr @DestroyString(ptr noundef %16) #10
  call void @CatchException(ptr noundef nonnull %2) #10
  %19 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #10
  call void @MagickCoreTerminus() #10
  call void @_exit(i32 noundef 1) #14
  unreachable

20:                                               ; preds = %10
  %21 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %11, i32 noundef 0, i64 noundef 48) #10
  %22 = load ptr, ptr %0, align 8, !tbaa !6
  %23 = tail call ptr @ReferenceImage(ptr noundef %22) #10
  store ptr %23, ptr %11, align 8, !tbaa !6
  %24 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !29
  %26 = getelementptr inbounds %struct._CacheView, ptr %11, i64 0, i32 2
  store i64 %25, ptr %26, align 8, !tbaa !29
  %27 = tail call ptr @AcquirePixelCacheNexus(i64 noundef %25) #10
  %28 = getelementptr inbounds %struct._CacheView, ptr %11, i64 0, i32 3
  store ptr %27, ptr %28, align 8, !tbaa !30
  %29 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !31
  %31 = getelementptr inbounds %struct._CacheView, ptr %11, i64 0, i32 1
  store i32 %30, ptr %31, align 8, !tbaa !31
  %32 = load i32, ptr %3, align 8, !tbaa !32
  %33 = getelementptr inbounds %struct._CacheView, ptr %11, i64 0, i32 4
  store i32 %32, ptr %33, align 8, !tbaa !32
  %34 = getelementptr inbounds %struct._CacheView, ptr %11, i64 0, i32 5
  store i64 2880220587, ptr %34, align 8, !tbaa !33
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyCacheView(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !32
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 259, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !30
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !29
  %16 = tail call ptr @DestroyPixelCacheNexus(ptr noundef nonnull %11, i64 noundef %15) #10
  store ptr %16, ptr %10, align 8, !tbaa !30
  br label %17

17:                                               ; preds = %13, %9
  %18 = load ptr, ptr %0, align 8, !tbaa !6
  %19 = tail call ptr @DestroyImage(ptr noundef %18) #10
  store ptr %19, ptr %0, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 5
  store i64 -2880220588, ptr %20, align 8, !tbaa !33
  %21 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %0) #10
  ret ptr %21
}

; Function Attrs: optsize
declare ptr @DestroyPixelCacheNexus(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishAlignedMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @GetCacheViewChannels(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !32
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 298, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %5, %1
  %10 = load ptr, ptr %0, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 49
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = tail call i64 @GetPixelCacheChannels(ptr noundef %12) #10
  ret i64 %13
}

; Function Attrs: optsize
declare i64 @GetPixelCacheChannels(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetCacheViewColorspace(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !32
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 331, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %5, %1
  %10 = load ptr, ptr %0, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 49
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = tail call i32 @GetPixelCacheColorspace(ptr noundef %12) #10
  ret i32 %13
}

; Function Attrs: optsize
declare i32 @GetPixelCacheColorspace(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @GetCacheViewException(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !32
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 364, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %5, %1
  %10 = load ptr, ptr %0, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 58
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @GetCacheViewExtent(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @GetOpenMPThreadId() #9
  %3 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 401, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #10
  br label %10

10:                                               ; preds = %6, %1
  %11 = load ptr, ptr %0, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 49
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !30
  %16 = sext i32 %2 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = tail call i64 @GetPixelCacheNexusExtent(ptr noundef %13, ptr noundef %18) #10
  ret i64 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @GetOpenMPThreadId() unnamed_addr #0 {
  %1 = tail call i32 @omp_get_thread_num() #9
  ret i32 %1
}

; Function Attrs: optsize
declare i64 @GetPixelCacheNexusExtent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i32 @omp_get_thread_num() local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetCacheViewStorageClass(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !32
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 437, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %5, %1
  %10 = load ptr, ptr %0, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 49
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = tail call i32 @GetPixelCacheStorageClass(ptr noundef %12) #10
  ret i32 %13
}

; Function Attrs: optsize
declare i32 @GetPixelCacheStorageClass(ptr noundef) local_unnamed_addr #2

; Function Attrs: hot noinline nounwind optsize uwtable
define dso_local ptr @GetCacheViewAuthenticPixels(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #7 {
  %7 = tail call fastcc i32 @GetOpenMPThreadId() #9
  %8 = load ptr, ptr %0, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !30
  %11 = sext i32 %7 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = tail call ptr @GetAuthenticPixelCacheNexus(ptr noundef %8, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %13, ptr noundef %5) #15
  ret ptr %14
}

; Function Attrs: hot optsize
declare ptr @GetAuthenticPixelCacheNexus(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GetOneCacheViewAuthenticPixel(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noalias nocapture noundef writeonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i32 @GetOpenMPThreadId() #9
  %7 = load ptr, ptr %0, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 12
  %9 = load i64, ptr %8, align 8
  store i64 %9, ptr %3, align 2
  %10 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !30
  %12 = sext i32 %6 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = tail call ptr @GetAuthenticPixelCacheNexus(ptr noundef %7, i64 noundef %1, i64 noundef %2, i64 noundef 1, i64 noundef 1, ptr noundef %14, ptr noundef %4) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %5
  %18 = load i64, ptr %15, align 2
  store i64 %18, ptr %3, align 2
  br label %19

19:                                               ; preds = %5, %17
  %20 = phi i32 [ 1, %17 ], [ 0, %5 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetCacheViewAuthenticIndexQueue(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @GetOpenMPThreadId() #9
  %3 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !30
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct._NexusInfo, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !36
  ret ptr %9
}

; Function Attrs: hot noinline nounwind optsize uwtable
define dso_local ptr @GetCacheViewAuthenticPixelQueue(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = tail call fastcc i32 @GetOpenMPThreadId() #9
  %3 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !30
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct._NexusInfo, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetCacheViewVirtualIndexQueue(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @GetOpenMPThreadId() #9
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct._Image, ptr %3, i64 0, i32 49
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !30
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = tail call ptr @GetVirtualIndexesFromNexus(ptr noundef %5, ptr noundef %10) #10
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @GetVirtualIndexesFromNexus(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot noinline nounwind optsize uwtable
define dso_local ptr @GetCacheViewVirtualPixelQueue(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = tail call fastcc i32 @GetOpenMPThreadId() #9
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct._Image, ptr %3, i64 0, i32 49
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !30
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = tail call ptr @GetVirtualPixelsNexus(ptr noundef %5, ptr noundef %10) #10
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @GetVirtualPixelsNexus(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot noinline nounwind optsize uwtable
define dso_local ptr @GetCacheViewVirtualPixels(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #7 {
  %7 = tail call fastcc i32 @GetOpenMPThreadId() #9
  %8 = load ptr, ptr %0, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !31
  %11 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !30
  %13 = sext i32 %7 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = tail call ptr @GetVirtualPixelsFromNexus(ptr noundef %8, i32 noundef %10, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %15, ptr noundef %5) #15
  ret ptr %16
}

; Function Attrs: hot optsize
declare ptr @GetVirtualPixelsFromNexus(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GetOneCacheViewVirtualPixel(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noalias nocapture noundef writeonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i32 @GetOpenMPThreadId() #9
  %7 = load ptr, ptr %0, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 12
  %9 = load i64, ptr %8, align 8
  store i64 %9, ptr %3, align 2
  %10 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !31
  %12 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !30
  %14 = sext i32 %6 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = tail call ptr @GetVirtualPixelsFromNexus(ptr noundef %7, i32 noundef %11, i64 noundef %1, i64 noundef %2, i64 noundef 1, i64 noundef 1, ptr noundef %16, ptr noundef %4) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %5
  %20 = load i64, ptr %17, align 2
  store i64 %20, ptr %3, align 2
  br label %21

21:                                               ; preds = %5, %19
  %22 = phi i32 [ 1, %19 ], [ 0, %5 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GetOneCacheViewVirtualMethodPixel(ptr nocapture noundef readonly %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef writeonly %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call fastcc i32 @GetOpenMPThreadId() #9
  %8 = load ptr, ptr %0, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct._Image, ptr %8, i64 0, i32 12
  %10 = load i64, ptr %9, align 8
  store i64 %10, ptr %4, align 2
  %11 = load ptr, ptr %0, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !30
  %14 = sext i32 %7 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = tail call ptr @GetVirtualPixelsFromNexus(ptr noundef %11, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef 1, i64 noundef 1, ptr noundef %16, ptr noundef %5) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %6
  %20 = load i64, ptr %17, align 2
  store i64 %20, ptr %4, align 2
  br label %21

21:                                               ; preds = %6, %19
  %22 = phi i32 [ 1, %19 ], [ 0, %6 ]
  ret i32 %22
}

; Function Attrs: hot noinline nounwind optsize uwtable
define dso_local ptr @QueueCacheViewAuthenticPixels(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #7 {
  %7 = tail call fastcc i32 @GetOpenMPThreadId() #9
  %8 = load ptr, ptr %0, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !30
  %11 = sext i32 %7 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = tail call ptr @QueueAuthenticPixelCacheNexus(ptr noundef %8, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef 0, ptr noundef %13, ptr noundef %5) #15
  ret ptr %14
}

; Function Attrs: hot optsize
declare ptr @QueueAuthenticPixelCacheNexus(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SetCacheViewStorageClass(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 927, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #10
  br label %10

10:                                               ; preds = %6, %2
  %11 = load ptr, ptr %0, align 8, !tbaa !6
  %12 = tail call i32 @SetImageStorageClass(ptr noundef %11, i32 noundef %1) #10
  ret i32 %12
}

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SetCacheViewVirtualPixelMethod(ptr noalias nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 964, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #10
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 1
  store i32 %1, ptr %11, align 8, !tbaa !31
  ret i32 1
}

; Function Attrs: hot noinline nounwind optsize uwtable
define dso_local i32 @SyncCacheViewAuthenticPixels(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #7 {
  %3 = tail call fastcc i32 @GetOpenMPThreadId() #9
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct._CacheView, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !30
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = tail call i32 @SyncAuthenticPixelCacheNexus(ptr noundef %4, ptr noundef %9, ptr noundef %1) #15
  ret i32 %10
}

; Function Attrs: hot optsize
declare i32 @SyncAuthenticPixelCacheNexus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { hot noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind optsize allocsize(0,1) }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize willreturn memory(none) }
attributes #14 = { noreturn nounwind optsize }
attributes #15 = { hot nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"_CacheView", !8, i64 0, !11, i64 8, !12, i64 16, !8, i64 24, !11, i64 32, !12, i64 40}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!14, !11, i64 12976}
!14 = !{!"_Image", !11, i64 0, !11, i64 4, !11, i64 8, !12, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !8, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !17, i64 104, !18, i64 112, !11, i64 208, !8, i64 216, !11, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !12, i64 256, !17, i64 264, !17, i64 272, !20, i64 280, !20, i64 312, !20, i64 344, !17, i64 376, !17, i64 384, !17, i64 392, !11, i64 400, !11, i64 404, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !8, i64 424, !12, i64 432, !12, i64 440, !12, i64 448, !12, i64 456, !12, i64 464, !12, i64 472, !21, i64 480, !22, i64 504, !8, i64 568, !8, i64 576, !8, i64 584, !8, i64 592, !8, i64 600, !8, i64 608, !9, i64 616, !9, i64 4712, !9, i64 8808, !12, i64 12904, !12, i64 12912, !24, i64 12920, !11, i64 12976, !12, i64 12984, !8, i64 12992, !25, i64 13000, !25, i64 13032, !8, i64 13064, !12, i64 13072, !12, i64 13080, !8, i64 13088, !8, i64 13096, !8, i64 13104, !11, i64 13112, !11, i64 13116, !15, i64 13120, !8, i64 13128, !20, i64 13136, !8, i64 13168, !8, i64 13176, !11, i64 13184, !11, i64 13188, !26, i64 13192, !11, i64 13200, !12, i64 13208, !12, i64 13216, !11, i64 13224, !12, i64 13232}
!15 = !{!"_PixelPacket", !16, i64 0, !16, i64 2, !16, i64 4, !16, i64 6}
!16 = !{!"short", !9, i64 0}
!17 = !{!"double", !9, i64 0}
!18 = !{!"_ChromaticityInfo", !19, i64 0, !19, i64 24, !19, i64 48, !19, i64 72}
!19 = !{!"_PrimaryInfo", !17, i64 0, !17, i64 8, !17, i64 16}
!20 = !{!"_RectangleInfo", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!21 = !{!"_ErrorInfo", !17, i64 0, !17, i64 8, !17, i64 16}
!22 = !{!"_TimerInfo", !23, i64 0, !23, i64 24, !11, i64 48, !12, i64 56}
!23 = !{!"_Timer", !17, i64 0, !17, i64 8, !17, i64 16}
!24 = !{!"_ExceptionInfo", !11, i64 0, !11, i64 4, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !8, i64 40, !12, i64 48}
!25 = !{!"_ProfileInfo", !8, i64 0, !12, i64 8, !8, i64 16, !12, i64 24}
!26 = !{!"long long", !9, i64 0}
!27 = !{!11, !11, i64 0}
!28 = !{i64 -2147483648, i64 2147483648}
!29 = !{!7, !12, i64 16}
!30 = !{!7, !8, i64 24}
!31 = !{!7, !11, i64 8}
!32 = !{!7, !11, i64 32}
!33 = !{!7, !12, i64 40}
!34 = !{!14, !8, i64 584}
!35 = !{!8, !8, i64 0}
!36 = !{!37, !8, i64 72}
!37 = !{!"_NexusInfo", !11, i64 0, !20, i64 8, !26, i64 40, !8, i64 48, !8, i64 56, !11, i64 64, !8, i64 72, !12, i64 80}
!38 = !{!37, !8, i64 56}
