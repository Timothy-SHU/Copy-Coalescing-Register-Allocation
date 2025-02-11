; ModuleID = 'magick/magick.c'
source_filename = "magick/magick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.omp_lock_t = type { ptr }
%struct._MagickInfo = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i64, ptr, ptr }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }

@.str = private unnamed_addr constant [16 x i8] c"magick/magick.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@magick_semaphore = internal global ptr null, align 8
@magick_list = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ephemeral\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"clipmask\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [30 x i8] c"   Format  Mode  Description\0A\00", align 1
@.str.10 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%9s%c \00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"%c%c%c \00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"           %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"\0A* native blob support\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"r read support\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"w write support\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"+ support for multiple images\0A\00", align 1
@instantiate_magickcore = internal global i32 0, align 4
@.str.21 = private unnamed_addr constant [13 x i8] c"MAGICK_DEBUG\00", align 1
@active_mutex = internal unnamed_addr global i1 false, align 4
@semaphore_mutex = internal global %struct.omp_lock_t zeroinitializer, align 8
@SetMagickPrecision.magick_precision = internal unnamed_addr global i32 0, align 4
@.str.22 = private unnamed_addr constant [17 x i8] c"MAGICK_PRECISION\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"precision\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetImageDecoder(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 150, ptr noundef nonnull @.str.2) #13
  %3 = getelementptr inbounds %struct._MagickInfo, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetImageEncoder(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 180, ptr noundef nonnull @.str.2) #13
  %3 = getelementptr inbounds %struct._MagickInfo, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GetImageMagick(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 227, ptr noundef nonnull @.str.2) #13
  %5 = tail call ptr @AcquireExceptionInfo() #13
  %6 = tail call ptr @GetMagickInfo(ptr noundef nonnull @.str.3, ptr poison) #14
  %7 = tail call ptr @DestroyExceptionInfo(ptr noundef %5) #13
  %8 = icmp eq ptr %6, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr @magick_semaphore, align 8, !tbaa !14
  tail call void @LockSemaphoreInfo(ptr noundef %10) #13
  %11 = load ptr, ptr @magick_list, align 8, !tbaa !14
  tail call void @ResetSplayTreeIterator(ptr noundef %11) #13
  %12 = load ptr, ptr @magick_list, align 8, !tbaa !14
  %13 = tail call ptr @GetNextValueInSplayTree(ptr noundef %12) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %9, %26
  %16 = phi ptr [ %28, %26 ], [ %13, %9 ]
  %17 = getelementptr inbounds %struct._MagickInfo, ptr %16, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = tail call i32 %18(ptr noundef %0, i64 noundef %1) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %16, align 8, !tbaa !16
  %25 = tail call i64 @CopyMagickString(ptr noundef %2, ptr noundef %24, i64 noundef 4096) #13
  br label %30

26:                                               ; preds = %20, %15
  %27 = load ptr, ptr @magick_list, align 8, !tbaa !14
  %28 = tail call ptr @GetNextValueInSplayTree(ptr noundef %27) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %15, !llvm.loop !17

30:                                               ; preds = %26, %9, %23
  %31 = phi i32 [ 1, %23 ], [ 0, %9 ], [ 0, %26 ]
  %32 = load ptr, ptr @magick_semaphore, align 8, !tbaa !14
  tail call void @UnlockSemaphoreInfo(ptr noundef %32) #13
  br label %33

33:                                               ; preds = %3, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %3 ]
  ret i32 %34
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @AcquireExceptionInfo() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetMagickInfo(ptr noundef %0, ptr nocapture readnone %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @IsMagickTreeInstantiated() #14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %32, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @magick_semaphore, align 8, !tbaa !14
  tail call void @LockSemaphoreInfo(ptr noundef %6) #13
  %7 = load ptr, ptr @magick_list, align 8, !tbaa !14
  tail call void @ResetSplayTreeIterator(ptr noundef %7) #13
  %8 = load ptr, ptr @magick_list, align 8, !tbaa !14
  %9 = tail call ptr @GetNextValueInSplayTree(ptr noundef %8) #13
  %10 = icmp eq ptr %0, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = tail call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = icmp eq ptr %9, null
  br i1 %15, label %29, label %20

16:                                               ; preds = %11, %5
  %17 = load ptr, ptr @magick_list, align 8, !tbaa !14
  tail call void @ResetSplayTreeIterator(ptr noundef %17) #13
  %18 = load ptr, ptr @magick_list, align 8, !tbaa !14
  %19 = tail call ptr @GetNextValueInSplayTree(ptr noundef %18) #13
  br label %29

20:                                               ; preds = %14, %25
  %21 = phi ptr [ %27, %25 ], [ %9, %14 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !16
  %23 = tail call i32 @LocaleCompare(ptr noundef %22, ptr noundef nonnull %0) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr @magick_list, align 8, !tbaa !14
  %27 = tail call ptr @GetNextValueInSplayTree(ptr noundef %26) #13
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %20, !llvm.loop !19

29:                                               ; preds = %20, %25, %14, %16
  %30 = phi ptr [ %19, %16 ], [ null, %14 ], [ %21, %20 ], [ null, %25 ]
  %31 = load ptr, ptr @magick_semaphore, align 8, !tbaa !14
  tail call void @UnlockSemaphoreInfo(ptr noundef %31) #13
  br label %32

32:                                               ; preds = %29, %2
  %33 = phi ptr [ null, %2 ], [ %30, %29 ]
  ret ptr %33
}

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ResetSplayTreeIterator(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetNextValueInSplayTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetMagickAdjoin(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 277, ptr noundef nonnull @.str.2) #13
  %3 = getelementptr inbounds %struct._MagickInfo, ptr %0, i64 0, i32 10
  %4 = load i32, ptr %3, align 8, !tbaa !20
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetMagickBlobSupport(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 308, ptr noundef nonnull @.str.2) #13
  %3 = getelementptr inbounds %struct._MagickInfo, ptr %0, i64 0, i32 13
  %4 = load i32, ptr %3, align 4, !tbaa !21
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetMagickDescription(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 338, ptr noundef nonnull @.str.2) #13
  %3 = getelementptr inbounds %struct._MagickInfo, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetMagickEndianSupport(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 370, ptr noundef nonnull @.str.2) #13
  %3 = getelementptr inbounds %struct._MagickInfo, ptr %0, i64 0, i32 12
  %4 = load i32, ptr %3, align 8, !tbaa !23
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @IsMagickTreeInstantiated() unnamed_addr #0 {
  %1 = alloca %struct._ExceptionInfo, align 8
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = load ptr, ptr @magick_list, align 8, !tbaa !14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %59

6:                                                ; preds = %0
  %7 = load ptr, ptr @magick_semaphore, align 8, !tbaa !14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @magick_semaphore) #13
  %10 = load ptr, ptr @magick_semaphore, align 8, !tbaa !14
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi ptr [ %10, %9 ], [ %7, %6 ]
  tail call void @LockSemaphoreInfo(ptr noundef %12) #13
  %13 = load ptr, ptr @magick_list, align 8, !tbaa !14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %54

15:                                               ; preds = %11
  %16 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef null, ptr noundef nonnull @DestroyMagickNode) #13
  store ptr %16, ptr @magick_list, align 8, !tbaa !14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #15
  call void @GetExceptionInfo(ptr noundef nonnull %1) #13
  %19 = tail call ptr @__errno_location() #16
  %20 = load i32, ptr %19, align 4, !tbaa !24
  %21 = call ptr @GetExceptionMessage(i32 noundef %20) #13
  %22 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 853, i32 noundef 700, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %21) #13
  %23 = call ptr @DestroyString(ptr noundef %21) #13
  call void @CatchException(ptr noundef nonnull %1) #13
  %24 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %1) #13
  call void @MagickCoreTerminus() #14
  call void @_exit(i32 noundef 1) #17
  unreachable

25:                                               ; preds = %15
  %26 = tail call ptr @SetMagickInfo(ptr noundef nonnull @.str.6) #14
  %27 = getelementptr inbounds %struct._MagickInfo, ptr %26, i64 0, i32 17
  store i32 1, ptr %27, align 4, !tbaa !25
  %28 = load ptr, ptr @magick_list, align 8, !tbaa !14
  %29 = load ptr, ptr %26, align 8, !tbaa !16
  %30 = tail call i32 @AddValueToSplayTree(ptr noundef %28, ptr noundef %29, ptr noundef nonnull %26) #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #15
  call void @GetExceptionInfo(ptr noundef nonnull %2) #13
  %33 = tail call ptr @__errno_location() #16
  %34 = load i32, ptr %33, align 4, !tbaa !24
  %35 = call ptr @GetExceptionMessage(i32 noundef %34) #13
  %36 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 859, i32 noundef 700, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %35) #13
  %37 = call ptr @DestroyString(ptr noundef %35) #13
  call void @CatchException(ptr noundef nonnull %2) #13
  %38 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #13
  call void @MagickCoreTerminus() #14
  call void @_exit(i32 noundef 1) #17
  unreachable

39:                                               ; preds = %25
  %40 = tail call ptr @SetMagickInfo(ptr noundef nonnull @.str.7) #14
  %41 = getelementptr inbounds %struct._MagickInfo, ptr %40, i64 0, i32 17
  store i32 1, ptr %41, align 4, !tbaa !25
  %42 = load ptr, ptr @magick_list, align 8, !tbaa !14
  %43 = load ptr, ptr %40, align 8, !tbaa !16
  %44 = tail call i32 @AddValueToSplayTree(ptr noundef %42, ptr noundef %43, ptr noundef nonnull %40) #13
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  call void @GetExceptionInfo(ptr noundef nonnull %3) #13
  %47 = tail call ptr @__errno_location() #16
  %48 = load i32, ptr %47, align 4, !tbaa !24
  %49 = call ptr @GetExceptionMessage(i32 noundef %48) #13
  %50 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 865, i32 noundef 700, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %49) #13
  %51 = call ptr @DestroyString(ptr noundef %49) #13
  call void @CatchException(ptr noundef nonnull %3) #13
  %52 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #13
  call void @MagickCoreTerminus() #14
  call void @_exit(i32 noundef 1) #17
  unreachable

53:                                               ; preds = %39
  tail call void @RegisterStaticModules() #13
  br label %54

54:                                               ; preds = %53, %11
  %55 = load ptr, ptr @magick_semaphore, align 8, !tbaa !14
  tail call void @UnlockSemaphoreInfo(ptr noundef %55) #13
  %56 = load ptr, ptr @magick_list, align 8, !tbaa !14
  %57 = icmp ne ptr %56, null
  %58 = zext i1 %57 to i32
  br label %59

59:                                               ; preds = %54, %0
  %60 = phi i32 [ %58, %54 ], [ 1, %0 ]
  ret i32 %60
}

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @DestroyMagickNode(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._MagickInfo, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !26
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @DestroyString(ptr noundef nonnull %3) #13
  store ptr %6, ptr %2, align 8, !tbaa !26
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._MagickInfo, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !27
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @DestroyString(ptr noundef nonnull %9) #13
  store ptr %12, ptr %8, align 8, !tbaa !27
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct._MagickInfo, ptr %0, i64 0, i32 21
  %15 = load ptr, ptr %14, align 8, !tbaa !28
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @DestroyString(ptr noundef nonnull %15) #13
  store ptr %18, ptr %14, align 8, !tbaa !28
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct._MagickInfo, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !29
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @DestroyString(ptr noundef nonnull %21) #13
  store ptr %24, ptr %20, align 8, !tbaa !29
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct._MagickInfo, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !22
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @DestroyString(ptr noundef nonnull %27) #13
  store ptr %30, ptr %26, align 8, !tbaa !22
  br label %31

31:                                               ; preds = %29, %25
  %32 = load ptr, ptr %0, align 8, !tbaa !16
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = tail call ptr @DestroyString(ptr noundef nonnull %32) #13
  store ptr %35, ptr %0, align 8, !tbaa !16
  br label %36

36:                                               ; preds = %34, %31
  %37 = getelementptr inbounds %struct._MagickInfo, ptr %0, i64 0, i32 22
  %38 = load ptr, ptr %37, align 8, !tbaa !30
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %37) #13
  br label %41

41:                                               ; preds = %40, %36
  %42 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #13
  ret ptr %42
}

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MagickCoreTerminus() local_unnamed_addr #0 {
  tail call fastcc void @InitializeMagickMutex() #14
  tail call fastcc void @LockMagickMutex() #14
  %1 = load volatile i32, ptr @instantiate_magickcore, align 4, !tbaa !24
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call fastcc void @UnlockMagickMutex() #14
  br label %5

4:                                                ; preds = %0
  tail call void @RegistryComponentTerminus() #13
  tail call void @AnnotateComponentTerminus() #13
  tail call void @MimeComponentTerminus() #13
  tail call void @TypeComponentTerminus() #13
  tail call void @ColorComponentTerminus() #13
  tail call void @MagicComponentTerminus() #13
  tail call void @DelegateComponentTerminus() #13
  tail call void @MagickComponentTerminus() #14
  tail call void @UnregisterStaticModules() #13
  tail call void @CoderComponentTerminus() #13
  tail call void @ResourceComponentTerminus() #13
  tail call void @CacheComponentTerminus() #13
  tail call void @PolicyComponentTerminus() #13
  tail call void @ConfigureComponentTerminus() #13
  tail call void @RandomComponentTerminus() #13
  tail call void @LocaleComponentTerminus() #13
  tail call void @LogComponentTerminus() #13
  tail call void @SemaphoreComponentTerminus() #13
  store volatile i32 0, ptr @instantiate_magickcore, align 4, !tbaa !24
  tail call fastcc void @UnlockMagickMutex() #14
  tail call fastcc void @DestroyMagickMutex() #14
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @SetMagickInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1490, ptr noundef nonnull @.str.8, ptr noundef %0) #13
  %4 = tail call dereferenceable_or_null(152) ptr @AcquireMagickMemory(i64 noundef 152) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #15
  call void @GetExceptionInfo(ptr noundef nonnull %2) #13
  %7 = tail call ptr @__errno_location() #16
  %8 = load i32, ptr %7, align 4, !tbaa !24
  %9 = call ptr @GetExceptionMessage(i32 noundef %8) #13
  %10 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1493, i32 noundef 700, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %9) #13
  %11 = call ptr @DestroyString(ptr noundef %9) #13
  call void @CatchException(ptr noundef nonnull %2) #13
  %12 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #13
  call void @MagickCoreTerminus() #14
  call void @_exit(i32 noundef 1) #17
  unreachable

13:                                               ; preds = %1
  %14 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 152) #13
  %15 = tail call ptr @ConstantString(ptr noundef %0) #13
  store ptr %15, ptr %4, align 8, !tbaa !16
  %16 = getelementptr inbounds %struct._MagickInfo, ptr %4, i64 0, i32 10
  store i32 1, ptr %16, align 8, !tbaa !20
  %17 = getelementptr inbounds %struct._MagickInfo, ptr %4, i64 0, i32 13
  store i32 1, ptr %17, align 4, !tbaa !21
  %18 = getelementptr inbounds %struct._MagickInfo, ptr %4, i64 0, i32 16
  store i32 3, ptr %18, align 8, !tbaa !31
  %19 = getelementptr inbounds %struct._MagickInfo, ptr %4, i64 0, i32 20
  store i64 2880220587, ptr %19, align 8, !tbaa !32
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RegisterStaticModules() local_unnamed_addr #1

; Function Attrs: optsize
declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetMagickInfoList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 517, ptr noundef nonnull @.str.8, ptr noundef %0) #13
  store i64 0, ptr %1, align 8, !tbaa !33
  %5 = tail call ptr @GetMagickInfo(ptr noundef nonnull @.str.3, ptr poison) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %41, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @magick_list, align 8, !tbaa !14
  %9 = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef %8) #13
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @magick_semaphore, align 8, !tbaa !14
  tail call void @LockSemaphoreInfo(ptr noundef %14) #13
  %15 = load ptr, ptr @magick_list, align 8, !tbaa !14
  tail call void @ResetSplayTreeIterator(ptr noundef %15) #13
  %16 = load ptr, ptr @magick_list, align 8, !tbaa !14
  %17 = tail call ptr @GetNextValueInSplayTree(ptr noundef %16) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %37, label %19

19:                                               ; preds = %13, %32
  %20 = phi i64 [ %33, %32 ], [ 0, %13 ]
  %21 = phi ptr [ %35, %32 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._MagickInfo, ptr %21, i64 0, i32 17
  %23 = load i32, ptr %22, align 4, !tbaa !25
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load ptr, ptr %21, align 8, !tbaa !16
  %27 = tail call i32 @GlobExpression(ptr noundef %26, ptr noundef %0, i32 noundef 0) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = add nsw i64 %20, 1
  %31 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %21, ptr %31, align 8, !tbaa !14
  br label %32

32:                                               ; preds = %29, %25, %19
  %33 = phi i64 [ %30, %29 ], [ %20, %25 ], [ %20, %19 ]
  %34 = load ptr, ptr @magick_list, align 8, !tbaa !14
  %35 = tail call ptr @GetNextValueInSplayTree(ptr noundef %34) #13
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %19, !llvm.loop !34

37:                                               ; preds = %32, %13
  %38 = phi i64 [ 0, %13 ], [ %33, %32 ]
  %39 = load ptr, ptr @magick_semaphore, align 8, !tbaa !14
  tail call void @UnlockSemaphoreInfo(ptr noundef %39) #13
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %38, i64 noundef 8, ptr noundef nonnull @MagickInfoCompare) #13
  %40 = getelementptr inbounds ptr, ptr %11, i64 %38
  store ptr null, ptr %40, align 8, !tbaa !14
  store i64 %38, ptr %1, align 8, !tbaa !33
  br label %41

41:                                               ; preds = %7, %3, %37
  %42 = phi ptr [ %11, %37 ], [ null, %3 ], [ null, %7 ]
  ret ptr %42
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i64 @GetNumberOfNodesInSplayTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @MagickInfoCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !14
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = load ptr, ptr %1, align 8, !tbaa !14
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = tail call i32 @LocaleCompare(ptr noundef %4, ptr noundef %6) #13
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetMagickList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 610, ptr noundef nonnull @.str.8, ptr noundef %0) #13
  store i64 0, ptr %1, align 8, !tbaa !33
  %5 = tail call ptr @GetMagickInfo(ptr noundef nonnull @.str.3, ptr poison) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @magick_list, align 8, !tbaa !14
  %9 = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef %8) #13
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @magick_semaphore, align 8, !tbaa !14
  tail call void @LockSemaphoreInfo(ptr noundef %14) #13
  %15 = load ptr, ptr @magick_list, align 8, !tbaa !14
  tail call void @ResetSplayTreeIterator(ptr noundef %15) #13
  %16 = load ptr, ptr @magick_list, align 8, !tbaa !14
  %17 = tail call ptr @GetNextValueInSplayTree(ptr noundef %16) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %39, label %19

19:                                               ; preds = %13, %34
  %20 = phi i64 [ %35, %34 ], [ 0, %13 ]
  %21 = phi ptr [ %37, %34 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._MagickInfo, ptr %21, i64 0, i32 17
  %23 = load i32, ptr %22, align 4, !tbaa !25
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load ptr, ptr %21, align 8, !tbaa !16
  %27 = tail call i32 @GlobExpression(ptr noundef %26, ptr noundef %0, i32 noundef 0) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %21, align 8, !tbaa !16
  %31 = tail call ptr @ConstantString(ptr noundef %30) #13
  %32 = add nsw i64 %20, 1
  %33 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %31, ptr %33, align 8, !tbaa !14
  br label %34

34:                                               ; preds = %29, %25, %19
  %35 = phi i64 [ %32, %29 ], [ %20, %25 ], [ %20, %19 ]
  %36 = load ptr, ptr @magick_list, align 8, !tbaa !14
  %37 = tail call ptr @GetNextValueInSplayTree(ptr noundef %36) #13
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %19, !llvm.loop !35

39:                                               ; preds = %34, %13
  %40 = phi i64 [ 0, %13 ], [ %35, %34 ]
  %41 = load ptr, ptr @magick_semaphore, align 8, !tbaa !14
  tail call void @UnlockSemaphoreInfo(ptr noundef %41) #13
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %40, i64 noundef 8, ptr noundef nonnull @MagickCompare) #13
  %42 = getelementptr inbounds ptr, ptr %11, i64 %40
  store ptr null, ptr %42, align 8, !tbaa !14
  store i64 %40, ptr %1, align 8, !tbaa !33
  br label %43

43:                                               ; preds = %7, %3, %39
  %44 = phi ptr [ %11, %39 ], [ null, %3 ], [ null, %7 ]
  ret ptr %44
}

; Function Attrs: optsize
declare ptr @ConstantString(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @MagickCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !14
  %4 = load ptr, ptr %1, align 8, !tbaa !14
  %5 = tail call i32 @LocaleCompare(ptr noundef %3, ptr noundef %4) #13
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetMagickMimeType(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 661, ptr noundef nonnull @.str.2) #13
  %3 = getelementptr inbounds %struct._MagickInfo, ptr %0, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !28
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetMagickPrecision() local_unnamed_addr #0 {
  %1 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 688, ptr noundef nonnull @.str.2) #13
  %2 = tail call i32 @SetMagickPrecision(i32 noundef 0) #14
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SetMagickPrecision(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1540, ptr noundef nonnull @.str.2) #13
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @SetMagickPrecision.magick_precision, align 4
  %6 = icmp eq i32 %5, 0
  br label %8

7:                                                ; preds = %1
  store i32 %0, ptr @SetMagickPrecision.magick_precision, align 4, !tbaa !24
  br label %8

8:                                                ; preds = %4, %7
  %9 = phi i1 [ %6, %4 ], [ false, %7 ]
  %10 = icmp slt i32 %0, 0
  %11 = select i1 %10, i1 true, i1 %9
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  store i32 6, ptr @SetMagickPrecision.magick_precision, align 4, !tbaa !24
  %13 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.22) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.23) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %12, %15
  %19 = phi ptr [ %16, %15 ], [ %13, %12 ]
  %20 = tail call fastcc i32 @StringToInteger(ptr noundef nonnull %19) #14
  store i32 %20, ptr @SetMagickPrecision.magick_precision, align 4, !tbaa !24
  %21 = tail call ptr @DestroyString(ptr noundef nonnull %19) #13
  br label %22

22:                                               ; preds = %15, %18, %8
  %23 = load i32, ptr @SetMagickPrecision.magick_precision, align 4, !tbaa !24
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetMagickRawSupport(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 717, ptr noundef nonnull @.str.2) #13
  %3 = getelementptr inbounds %struct._MagickInfo, ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 4, !tbaa !36
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetMagickSeekableStream(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 749, ptr noundef nonnull @.str.2) #13
  %3 = getelementptr inbounds %struct._MagickInfo, ptr %0, i64 0, i32 14
  %4 = load i32, ptr %3, align 8, !tbaa !37
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetMagickThreadSupport(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 780, ptr noundef nonnull @.str.2) #13
  %3 = getelementptr inbounds %struct._MagickInfo, ptr %0, i64 0, i32 16
  %4 = load i32, ptr %3, align 8, !tbaa !31
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @IsMagickConflict(ptr nocapture noundef readnone %0) local_unnamed_addr #7 {
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ListMagickInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = icmp eq ptr %0, null
  %5 = load ptr, ptr @stdout, align 8
  %6 = select i1 %4, ptr %5, ptr %0
  %7 = call ptr @GetMagickInfoList(ptr noundef nonnull @.str.3, ptr noundef nonnull %3, ptr poison) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %97, label %9

9:                                                ; preds = %2
  tail call void @ClearMagickException(ptr noundef %1) #13
  %10 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.9) #13
  %11 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.10) #13
  %12 = load i64, ptr %3, align 8, !tbaa !33
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %90

14:                                               ; preds = %9, %87
  %15 = phi i64 [ %88, %87 ], [ 0, %9 ]
  %16 = getelementptr inbounds ptr, ptr %7, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !14
  %18 = getelementptr inbounds %struct._MagickInfo, ptr %17, i64 0, i32 17
  %19 = load i32, ptr %18, align 4, !tbaa !25
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %87

21:                                               ; preds = %14
  %22 = load ptr, ptr %17, align 8, !tbaa !16
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, ptr @.str.1, ptr %22
  %25 = getelementptr inbounds %struct._MagickInfo, ptr %17, i64 0, i32 13
  %26 = load i32, ptr %25, align 4, !tbaa !21
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 32, i32 42
  %29 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.11, ptr noundef nonnull %24, i32 noundef %28) #13
  %30 = load ptr, ptr %16, align 8, !tbaa !14
  %31 = getelementptr inbounds %struct._MagickInfo, ptr %30, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = icmp eq ptr %32, null
  %34 = select i1 %33, i32 45, i32 114
  %35 = getelementptr inbounds %struct._MagickInfo, ptr %30, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !13
  %37 = icmp eq ptr %36, null
  %38 = select i1 %37, i32 45, i32 119
  br i1 %37, label %45, label %39

39:                                               ; preds = %21
  %40 = getelementptr inbounds %struct._MagickInfo, ptr %30, i64 0, i32 10
  %41 = load i32, ptr %40, align 8, !tbaa !20
  %42 = freeze i32 %41
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 45, i32 43
  br label %45

45:                                               ; preds = %39, %21
  %46 = phi i32 [ 45, %21 ], [ %44, %39 ]
  %47 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.12, i32 noundef %34, i32 noundef %38, i32 noundef %46) #13
  %48 = load ptr, ptr %16, align 8, !tbaa !14
  %49 = getelementptr inbounds %struct._MagickInfo, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !22
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.13, ptr noundef nonnull %50) #13
  %54 = load ptr, ptr %16, align 8, !tbaa !14
  br label %55

55:                                               ; preds = %52, %45
  %56 = phi ptr [ %54, %52 ], [ %48, %45 ]
  %57 = getelementptr inbounds %struct._MagickInfo, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !29
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.14, ptr noundef nonnull %58) #13
  br label %62

62:                                               ; preds = %60, %55
  %63 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.15) #13
  %64 = load ptr, ptr %16, align 8, !tbaa !14
  %65 = getelementptr inbounds %struct._MagickInfo, ptr %64, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !27
  %67 = icmp eq ptr %66, null
  br i1 %67, label %87, label %68

68:                                               ; preds = %62
  %69 = tail call ptr @StringToList(ptr noundef nonnull %66) #13
  %70 = icmp eq ptr %69, null
  br i1 %70, label %87, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %69, align 8, !tbaa !14
  %73 = icmp eq ptr %72, null
  br i1 %73, label %85, label %74

74:                                               ; preds = %71, %74
  %75 = phi ptr [ %83, %74 ], [ %72, %71 ]
  %76 = phi ptr [ %82, %74 ], [ %69, %71 ]
  %77 = phi i64 [ %81, %74 ], [ 0, %71 ]
  %78 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.16, ptr noundef nonnull %75) #13
  %79 = load ptr, ptr %76, align 8, !tbaa !14
  %80 = tail call ptr @DestroyString(ptr noundef %79) #13
  store ptr %80, ptr %76, align 8, !tbaa !14
  %81 = add nuw nsw i64 %77, 1
  %82 = getelementptr inbounds ptr, ptr %69, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !14
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %74, !llvm.loop !38

85:                                               ; preds = %74, %71
  %86 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %69) #13
  br label %87

87:                                               ; preds = %68, %85, %62, %14
  %88 = add nuw nsw i64 %15, 1
  %89 = icmp eq i64 %88, %12
  br i1 %89, label %90, label %14, !llvm.loop !39

90:                                               ; preds = %87, %9
  %91 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.17) #13
  %92 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.18) #13
  %93 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.19) #13
  %94 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.20) #13
  %95 = tail call i32 @fflush(ptr noundef %6) #14
  %96 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #13
  br label %97

97:                                               ; preds = %2, %90
  %98 = phi i32 [ 1, %90 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i32 %98
}

; Function Attrs: optsize
declare void @ClearMagickException(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @StringToList(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn memory(readwrite, argmem: none) uwtable
define dso_local i32 @IsMagickCoreInstantiated() local_unnamed_addr #9 {
  %1 = load volatile i32, ptr @instantiate_magickcore, align 4, !tbaa !24
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickComponentGenesis() local_unnamed_addr #0 {
  %1 = load ptr, ptr @magick_semaphore, align 8, !tbaa !14
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @AllocateSemaphoreInfo() #13
  store ptr %4, ptr @magick_semaphore, align 8, !tbaa !14
  br label %5

5:                                                ; preds = %3, %0
  ret i32 1
}

; Function Attrs: optsize
declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MagickComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @magick_semaphore, align 8, !tbaa !14
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @magick_semaphore) #13
  %4 = load ptr, ptr @magick_semaphore, align 8, !tbaa !14
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  tail call void @LockSemaphoreInfo(ptr noundef %6) #13
  %7 = load ptr, ptr @magick_list, align 8, !tbaa !14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @DestroySplayTree(ptr noundef nonnull %7) #13
  store ptr %10, ptr @magick_list, align 8, !tbaa !14
  br label %11

11:                                               ; preds = %9, %5
  %12 = load ptr, ptr @magick_semaphore, align 8, !tbaa !14
  tail call void @UnlockSemaphoreInfo(ptr noundef %12) #13
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @magick_semaphore) #13
  ret void
}

; Function Attrs: optsize
declare ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MagickCoreGenesis(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @InitializeMagickMutex() #14
  tail call fastcc void @LockMagickMutex() #14
  %3 = load volatile i32, ptr @instantiate_magickcore, align 4, !tbaa !24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %29

5:                                                ; preds = %2
  %6 = tail call i32 @SemaphoreComponentGenesis() #13
  %7 = tail call i32 @LogComponentGenesis() #13
  %8 = tail call i32 @LocaleComponentGenesis() #13
  %9 = tail call i32 @RandomComponentGenesis() #13
  %10 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.21) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = tail call i32 @SetLogEventMask(ptr noundef nonnull %10) #13
  %14 = tail call ptr @DestroyString(ptr noundef nonnull %10) #13
  br label %15

15:                                               ; preds = %12, %5
  %16 = tail call i32 @ConfigureComponentGenesis() #13
  %17 = tail call i32 @PolicyComponentGenesis() #13
  %18 = tail call i32 @CacheComponentGenesis() #13
  %19 = tail call i32 @ResourceComponentGenesis() #13
  %20 = tail call i32 @CoderComponentGenesis() #13
  %21 = tail call i32 @MagickComponentGenesis() #14
  %22 = tail call i32 @DelegateComponentGenesis() #13
  %23 = tail call i32 @MagicComponentGenesis() #13
  %24 = tail call i32 @ColorComponentGenesis() #13
  %25 = tail call i32 @TypeComponentGenesis() #13
  %26 = tail call i32 @MimeComponentGenesis() #13
  %27 = tail call i32 @AnnotateComponentGenesis() #13
  %28 = tail call i32 @RegistryComponentGenesis() #13
  store volatile i32 1, ptr @instantiate_magickcore, align 4, !tbaa !24
  br label %29

29:                                               ; preds = %2, %15
  tail call fastcc void @UnlockMagickMutex() #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @InitializeMagickMutex() unnamed_addr #0 {
  %1 = load i1, ptr @active_mutex, align 4
  br i1 %1, label %3, label %2

2:                                                ; preds = %0
  tail call void @omp_init_lock(ptr noundef nonnull @semaphore_mutex) #13
  br label %3

3:                                                ; preds = %2, %0
  store i1 true, ptr @active_mutex, align 4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @LockMagickMutex() unnamed_addr #0 {
  tail call void @omp_set_lock(ptr noundef nonnull @semaphore_mutex) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @UnlockMagickMutex() unnamed_addr #0 {
  tail call void @omp_unset_lock(ptr noundef nonnull @semaphore_mutex) #13
  ret void
}

; Function Attrs: optsize
declare i32 @SemaphoreComponentGenesis() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @LogComponentGenesis() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @LocaleComponentGenesis() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RandomComponentGenesis() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetEnvironmentValue(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @SetLogEventMask(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ConfigureComponentGenesis() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @PolicyComponentGenesis() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CacheComponentGenesis() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ResourceComponentGenesis() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CoderComponentGenesis() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @DelegateComponentGenesis() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @MagicComponentGenesis() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ColorComponentGenesis() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @TypeComponentGenesis() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @MimeComponentGenesis() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @AnnotateComponentGenesis() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RegistryComponentGenesis() local_unnamed_addr #1

; Function Attrs: optsize
declare void @omp_init_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @omp_set_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @omp_unset_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RegistryComponentTerminus() local_unnamed_addr #1

; Function Attrs: optsize
declare void @AnnotateComponentTerminus() local_unnamed_addr #1

; Function Attrs: optsize
declare void @MimeComponentTerminus() local_unnamed_addr #1

; Function Attrs: optsize
declare void @TypeComponentTerminus() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ColorComponentTerminus() local_unnamed_addr #1

; Function Attrs: optsize
declare void @MagicComponentTerminus() local_unnamed_addr #1

; Function Attrs: optsize
declare void @DelegateComponentTerminus() local_unnamed_addr #1

; Function Attrs: optsize
declare void @UnregisterStaticModules() local_unnamed_addr #1

; Function Attrs: optsize
declare void @CoderComponentTerminus() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ResourceComponentTerminus() local_unnamed_addr #1

; Function Attrs: optsize
declare void @CacheComponentTerminus() local_unnamed_addr #1

; Function Attrs: optsize
declare void @PolicyComponentTerminus() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ConfigureComponentTerminus() local_unnamed_addr #1

; Function Attrs: optsize
declare void @RandomComponentTerminus() local_unnamed_addr #1

; Function Attrs: optsize
declare void @LocaleComponentTerminus() local_unnamed_addr #1

; Function Attrs: optsize
declare void @LogComponentTerminus() local_unnamed_addr #1

; Function Attrs: optsize
declare void @SemaphoreComponentTerminus() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DestroyMagickMutex() unnamed_addr #0 {
  %1 = load i1, ptr @active_mutex, align 4
  br i1 %1, label %2, label %3

2:                                                ; preds = %0
  tail call void @omp_destroy_lock(ptr noundef nonnull @semaphore_mutex) #13
  br label %3

3:                                                ; preds = %2, %0
  store i1 false, ptr @active_mutex, align 4
  ret void
}

; Function Attrs: optsize
declare void @omp_destroy_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RegisterMagickInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !16
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1446, ptr noundef nonnull @.str.8, ptr noundef %3) #13
  %5 = load ptr, ptr @magick_list, align 8, !tbaa !14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._MagickInfo, ptr %0, i64 0, i32 16
  %9 = load i32, ptr %8, align 8, !tbaa !31
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = tail call ptr @AllocateSemaphoreInfo() #13
  %13 = getelementptr inbounds %struct._MagickInfo, ptr %0, i64 0, i32 22
  store ptr %12, ptr %13, align 8, !tbaa !30
  %14 = load ptr, ptr @magick_list, align 8, !tbaa !14
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi ptr [ %14, %11 ], [ %5, %7 ]
  %17 = load ptr, ptr %0, align 8, !tbaa !16
  %18 = tail call i32 @AddValueToSplayTree(ptr noundef %16, ptr noundef %17, ptr noundef nonnull %0) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #15
  call void @GetExceptionInfo(ptr noundef nonnull %2) #13
  %21 = tail call ptr @__errno_location() #16
  %22 = load i32, ptr %21, align 4, !tbaa !24
  %23 = call ptr @GetExceptionMessage(i32 noundef %22) #13
  %24 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1453, i32 noundef 700, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %23) #13
  %25 = call ptr @DestroyString(ptr noundef %23) #13
  call void @CatchException(ptr noundef nonnull %2) #13
  %26 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #13
  call void @MagickCoreTerminus() #14
  call void @_exit(i32 noundef 1) #17
  unreachable

27:                                               ; preds = %15, %1
  %28 = phi ptr [ null, %1 ], [ %0, %15 ]
  ret ptr %28
}

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetPolicyValue(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc i32 @StringToInteger(ptr noalias nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10) #13
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @UnregisterMagickInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @magick_list, align 8, !tbaa !14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %1
  %5 = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef nonnull %2) #13
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @magick_semaphore, align 8, !tbaa !14
  tail call void @LockSemaphoreInfo(ptr noundef %8) #13
  %9 = load ptr, ptr @magick_list, align 8, !tbaa !14
  tail call void @ResetSplayTreeIterator(ptr noundef %9) #13
  %10 = load ptr, ptr @magick_list, align 8, !tbaa !14
  %11 = tail call ptr @GetNextValueInSplayTree(ptr noundef %10) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %7, %18
  %14 = phi ptr [ %20, %18 ], [ %11, %7 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !16
  %16 = tail call i32 @LocaleCompare(ptr noundef %15, ptr noundef %0) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr @magick_list, align 8, !tbaa !14
  %20 = tail call ptr @GetNextValueInSplayTree(ptr noundef %19) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %13, !llvm.loop !40

22:                                               ; preds = %18, %13, %7
  %23 = phi ptr [ null, %7 ], [ %14, %13 ], [ null, %18 ]
  %24 = load ptr, ptr @magick_list, align 8, !tbaa !14
  %25 = tail call i32 @DeleteNodeByValueFromSplayTree(ptr noundef %24, ptr noundef %23) #13
  %26 = load ptr, ptr @magick_semaphore, align 8, !tbaa !14
  tail call void @UnlockSemaphoreInfo(ptr noundef %26) #13
  br label %27

27:                                               ; preds = %4, %1, %22
  %28 = phi i32 [ %25, %22 ], [ 0, %1 ], [ 0, %4 ]
  ret i32 %28
}

; Function Attrs: optsize
declare i32 @DeleteNodeByValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nounwind optsize willreturn memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize willreturn memory(none) }
attributes #17 = { noreturn nounwind optsize }
attributes #18 = { nounwind optsize allocsize(0) }
attributes #19 = { nounwind optsize allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 48}
!7 = !{!"_MagickInfo", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !8, i64 112, !8, i64 120, !12, i64 128, !8, i64 136, !8, i64 144}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!7, !8, i64 56}
!14 = !{!8, !8, i64 0}
!15 = !{!7, !8, i64 64}
!16 = !{!7, !8, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = !{!7, !11, i64 80}
!21 = !{!7, !11, i64 92}
!22 = !{!7, !8, i64 8}
!23 = !{!7, !11, i64 88}
!24 = !{!11, !11, i64 0}
!25 = !{!7, !11, i64 108}
!26 = !{!7, !8, i64 32}
!27 = !{!7, !8, i64 24}
!28 = !{!7, !8, i64 136}
!29 = !{!7, !8, i64 16}
!30 = !{!7, !8, i64 144}
!31 = !{!7, !11, i64 104}
!32 = !{!7, !12, i64 128}
!33 = !{!12, !12, i64 0}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !18}
!36 = !{!7, !11, i64 84}
!37 = !{!7, !11, i64 96}
!38 = distinct !{!38, !18}
!39 = distinct !{!39, !18}
!40 = distinct !{!40, !18}
